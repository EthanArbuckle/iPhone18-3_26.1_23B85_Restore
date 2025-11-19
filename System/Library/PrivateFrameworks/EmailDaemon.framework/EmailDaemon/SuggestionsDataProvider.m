@interface SuggestionsDataProvider
- (SuggestionsDataProvider)initWithLibrary:(id)a3;
- (id)_libraryMessagesForSGMailMessageKeys:(id)a3;
- (void)_processBackgroundDownload;
- (void)_registerXpcActivity;
- (void)_scheduleBackgroundDownload;
- (void)dealloc;
- (void)refreshLostMessagesUntilDeferred:(id)a3;
- (void)resume;
- (void)suspend;
@end

@implementation SuggestionsDataProvider

- (void)dealloc
{
  [(SuggestionsDataProvider *)self _unregisterXpcActivity];
  notify_cancel(self->_fullDownloadToken);
  v3.receiver = self;
  v3.super_class = SuggestionsDataProvider;
  [(SuggestionsDataProvider *)&v3 dealloc];
}

- (SuggestionsDataProvider)initWithLibrary:(id)a3
{
  v5 = a3;
  v30.receiver = self;
  v30.super_class = SuggestionsDataProvider;
  v6 = [(SuggestionsDataProvider *)&v30 init];
  if (v6)
  {
    v7 = dispatch_semaphore_create(1);
    v8 = *(v6 + 6);
    *(v6 + 6) = v7;

    v9 = *(v6 + 7);
    *(v6 + 7) = 0;

    v10 = [NSString stringWithFormat:@"com.apple.mobilemail.%@.%p", objc_opt_class(), v6];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create([v10 UTF8String], v11);
    v13 = *(v6 + 1);
    *(v6 + 1) = v12;

    v14 = [v10 stringByAppendingString:@".suggestions"];
    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_BACKGROUND, 0);
    v17 = dispatch_queue_create(v15, v16);
    v18 = *(v6 + 2);
    *(v6 + 2) = v17;

    objc_storeStrong(v6 + 3, a3);
    v19 = +[SGSuggestionsService serviceForMail];
    v20 = *(v6 + 4);
    *(v6 + 4) = v19;

    v21 = objc_alloc_init(NSCache);
    v22 = *(v6 + 5);
    *(v6 + 5) = v21;

    [*(v6 + 5) setCountLimit:100];
    *(v6 + 64) = 0;
    if (([v6 _protectedDataAvailable] & 1) == 0)
    {
      *(v6 + 64) = 1;
      dispatch_suspend(*(v6 + 2));
    }

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v6 selector:"_libraryFinishedReconciliation:" name:MailMessageLibraryDidFinishReconciliation object:*(v6 + 3)];
    [v23 addObserver:v6 selector:"_libraryWillBecomeUnavailable:" name:MailMessageLibraryWillBecomeUnavailable object:*(v6 + 3)];
    [v6 _registerXpcActivity];
    v24 = *(v6 + 1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000B9598;
    handler[3] = &unk_10015A950;
    v25 = v6;
    v29 = v25;
    notify_register_dispatch("com.apple.suggestions.fulldownloadrequested", v6 + 17, v24, handler);
    v26 = v25;
  }

  return v6;
}

- (id)_libraryMessagesForSGMailMessageKeys:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v6 = +[NSMutableSet set];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000B9814;
  v18[3] = &unk_10015A978;
  v7 = v5;
  v19 = v7;
  v8 = v6;
  v20 = v8;
  v9 = [v4 ef_compactMap:v18];
  v10 = [MFMessageCriterion orCompoundCriterionWithCriteria:v9];
  v11 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  if (v10)
  {
    library = self->_library;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000B9A24;
    v14[3] = &unk_10015A9A0;
    v15 = v8;
    v16 = v7;
    v17 = v11;
    [(MFMailMessageLibrary *)library iterateMessagesMatchingCriterion:v10 options:6297663 handler:v14];
  }

  return v11;
}

- (void)_scheduleBackgroundDownload
{
  if (!dispatch_semaphore_wait(self->_scheduledDownloadSemaphore, 0))
  {
    objc_initWeak(&location, self);
    suggestionsQueue = self->_suggestionsQueue;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000B9C00;
    v4[3] = &unk_1001567F0;
    objc_copyWeak(&v5, &location);
    dispatch_async(suggestionsQueue, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_processBackgroundDownload
{
  dispatch_semaphore_signal(self->_scheduledDownloadSemaphore);
  v23 = +[EFPromise promise];
  harvesterService = self->_harvesterService;
  v4 = [v23 completionHandlerAdapter];
  [(SGSuggestionsServiceMailProtocol *)harvesterService fullDownloadRequestBatch:5 withCompletion:v4];

  v5 = [v23 future];
  v6 = [v5 resultWithTimeout:0 error:5.0];

  v25 = v6;
  v24 = [(SuggestionsDataProvider *)self _libraryMessagesForSGMailMessageKeys:v6];
  v7 = [v24 count];
  if (v7 < [v6 count])
  {
    v8 = self->_harvesterService;
    v9 = [v24 allKeys];
    v10 = [v25 arrayByExcludingObjectsInArray:v9];
    [(SGSuggestionsServiceMailProtocol *)v8 resolveFullDownloadRequests:v10 withCompletion:&stru_10015A9C0];
  }

  if ([v24 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = v24;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v12)
    {
      v26 = *v28;
      do
      {
        v13 = 0;
        do
        {
          if (*v28 != v26)
          {
            objc_enumerationMutation(v11);
          }

          v14 = *(*(&v27 + 1) + 8 * v13);
          v15 = dispatch_semaphore_create(0);
          v16 = [v11 objectForKeyedSubscript:v14];
          v17 = [[_SuggestionsMessageBodyLoaderClient alloc] initWithLibrary:self->_library message:v16 semaphore:v15];
          v18 = [v16 account];
          v19 = [MessageBodyLoader loaderForAccount:v18];
          [v19 addSingleMessageClient:v17];

          v20 = dispatch_time(0, 10000000000);
          dispatch_semaphore_wait(v15, v20);
          v21 = self->_harvesterService;
          v31 = v14;
          v22 = [NSArray arrayWithObjects:&v31 count:1];
          [(SGSuggestionsServiceMailProtocol *)v21 resolveFullDownloadRequests:v22 withCompletion:&stru_10015A9C0];

          v13 = v13 + 1;
        }

        while (v12 != v13);
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }
  }

  if ([v25 count])
  {
    [(SuggestionsDataProvider *)self _scheduleBackgroundDownload];
  }
}

- (void)_registerXpcActivity
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BA1B0;
  v3[3] = &unk_100156748;
  objc_copyWeak(&v4, &location);
  v2 = objc_retainBlock(v3);
  ef_xpc_activity_register();

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)suspend
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BA310;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)resume
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BA3C8;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)refreshLostMessagesUntilDeferred:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BA4AC;
  v7[3] = &unk_100157668;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

@end