@interface MediaConversionQueueEntry
- (BOOL)allRequestsAreBackground;
- (BOOL)allRequestsAreOptional;
- (BOOL)allRequestsHaveRequestPriority:(int64_t)a3;
- (BOOL)clientRequestIsDuplicate:(id)a3 identicalDestination:(BOOL *)a4;
- (MediaConversionQueueEntry)initWithIdentifier:(id)a3 initialConversionOptions:(id)a4;
- (NSArray)clientRequestsSnapshot;
- (id)anyDestinationURLCollection;
- (id)clientRequestForIdentifier:(id)a3;
- (id)description;
- (id)removeAndReturnClientRequestWithIdentifier:(id)a3 remainingRequestCount:(int64_t *)a4;
- (id)requestIdentifiersForConnectionIdentifier:(id)a3;
- (int64_t)compareProcessingOrderToEntry:(id)a3;
- (void)addClientRequest:(id)a3;
- (void)dealloc;
- (void)videoConversionTask:(id)a3 didUpdateFractionCompleted:(double)a4;
- (void)withLockEnumerateClientRequests:(id)a3;
@end

@implementation MediaConversionQueueEntry

- (BOOL)allRequestsAreBackground
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008A98;
  v4[3] = &unk_10003D008;
  v4[4] = &v5;
  [(MediaConversionQueueEntry *)self withLockEnumerateClientRequests:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)allRequestsAreOptional
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008BC8;
  v4[3] = &unk_10003D008;
  v4[4] = &v5;
  [(MediaConversionQueueEntry *)self withLockEnumerateClientRequests:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)allRequestsHaveRequestPriority:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008CF0;
  v5[3] = &unk_10003D098;
  v5[4] = &v6;
  v5[5] = a3;
  [(MediaConversionQueueEntry *)self withLockEnumerateClientRequests:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)compareProcessingOrderToEntry:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:300 description:{@"Invalid parameter not satisfying: %@", @"otherEntry"}];
  }

  v6 = [(MediaConversionQueueEntry *)self clientRequestsSnapshot];
  v7 = [v6 sortedArrayUsingComparator:&stru_10003D070];

  v8 = [v5 clientRequestsSnapshot];
  v9 = [v8 sortedArrayUsingComparator:&stru_10003D070];

  v10 = [v7 firstObject];
  v11 = [v9 firstObject];
  v12 = v11;
  v13 = 0;
  if (v10 && v11)
  {
    v14 = [v10 requestTracker];
    v15 = [v12 requestTracker];
    v13 = [v14 compare:v15];
  }

  return v13;
}

- (NSArray)clientRequestsSnapshot
{
  os_unfair_lock_lock(&self->_queueEntryStateLock);
  v3 = [(NSMutableArray *)self->_clientRequests copy];
  os_unfair_lock_unlock(&self->_queueEntryStateLock);

  return v3;
}

- (void)videoConversionTask:(id)a3 didUpdateFractionCompleted:(double)a4
{
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(MediaConversionQueueEntry *)self clientRequestsSnapshot];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) videoConversionTask:v6 didUpdateFractionCompleted:a4];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)requestIdentifiersForConnectionIdentifier:(id)a3
{
  v4 = a3;
  +[NSMutableArray array];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100009178;
  v10[3] = &unk_10003D030;
  v5 = v11 = v4;
  v12 = v5;
  v6 = v4;
  [(MediaConversionQueueEntry *)self withLockEnumerateClientRequests:v10];
  v7 = v12;
  v8 = v5;

  return v5;
}

- (id)anyDestinationURLCollection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100009318;
  v9 = sub_100009328;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009330;
  v4[3] = &unk_10003D008;
  v4[4] = &v5;
  [(MediaConversionQueueEntry *)self withLockEnumerateClientRequests:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)clientRequestForIdentifier:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100009318;
  v14 = sub_100009328;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000094CC;
  v7[3] = &unk_10003CFE0;
  v4 = a3;
  v8 = v4;
  v9 = &v10;
  [(MediaConversionQueueEntry *)self withLockEnumerateClientRequests:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)removeAndReturnClientRequestWithIdentifier:(id)a3 remainingRequestCount:(int64_t *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_queueEntryStateLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_clientRequests;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 identifier];
        v14 = [v13 isEqualToString:v6];

        if (v14)
        {
          v15 = v12;

          if (v15)
          {
            [(NSMutableArray *)self->_clientRequests removeObject:v15];
            *a4 = [(NSMutableArray *)self->_clientRequests count];
          }

          goto LABEL_12;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:
  os_unfair_lock_unlock(&self->_queueEntryStateLock);

  return v15;
}

- (BOOL)clientRequestIsDuplicate:(id)a3 identicalDestination:(BOOL *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_queueEntryStateLock);
  v7 = [(NSMutableArray *)self->_clientRequests firstObject];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 requestTracker];
    v10 = [v6 requestTracker];
    v11 = [v9 isDuplicateOfRequestWithRequestTracker:v10 identicalDestinationURL:a4];
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock(&self->_queueEntryStateLock);

  return v11;
}

- (void)withLockEnumerateClientRequests:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_queueEntryStateLock);
  clientRequests = self->_clientRequests;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000989C;
  v7[3] = &unk_10003CF78;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)clientRequests enumerateObjectsUsingBlock:v7];
  os_unfair_lock_unlock(&self->_queueEntryStateLock);
}

- (void)addClientRequest:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"clientRequest"}];
  }

  os_unfair_lock_lock(&self->_queueEntryStateLock);
  [(NSMutableArray *)self->_clientRequests addObject:v6];
  [v6 setRequestQueueEntry:self];
  os_unfair_lock_unlock(&self->_queueEntryStateLock);
}

- (id)description
{
  os_unfair_lock_lock(&self->_queueEntryStateLock);
  identifier = self->_identifier;
  v4 = [(NSMutableArray *)self->_clientRequests valueForKey:@"description"];
  v5 = [v4 componentsJoinedByString:@" "];
  v6 = [NSString stringWithFormat:@"<MediaConversionQueueEntry %@ (%p) for requests [%@]>", identifier, self, v5];

  os_unfair_lock_unlock(&self->_queueEntryStateLock);

  return v6;
}

- (void)dealloc
{
  if (self->_temporaryFilesParentDirectoryURL)
  {
    v3 = +[NSFileManager defaultManager];
    temporaryFilesParentDirectoryURL = self->_temporaryFilesParentDirectoryURL;
    v9 = 0;
    v5 = [v3 removeItemAtURL:temporaryFilesParentDirectoryURL error:&v9];
    v6 = v9;
    if ((v5 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = self->_temporaryFilesParentDirectoryURL;
      *buf = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to delete temporary files directory %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v8.receiver = self;
  v8.super_class = MediaConversionQueueEntry;
  [(MediaConversionQueueEntry *)&v8 dealloc];
}

- (MediaConversionQueueEntry)initWithIdentifier:(id)a3 initialConversionOptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MediaConversionQueueEntry;
  v9 = [(MediaConversionQueueEntry *)&v16 init];
  if (v9)
  {
    v10 = +[NSMutableArray array];
    clientRequests = v9->_clientRequests;
    v9->_clientRequests = v10;

    v9->_queueEntryStateLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v9->_initialRequestConversionOptions, a4);
    v12 = [NSString stringWithFormat:@"com.apple.photos.media-conversion.queue-entry-%@", v7];
    [v12 UTF8String];
    v13 = os_transaction_create();
    transaction = v9->_transaction;
    v9->_transaction = v13;
  }

  return v9;
}

@end