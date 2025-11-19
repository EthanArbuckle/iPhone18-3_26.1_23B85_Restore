@interface MFDMessageBodyLoader
- (void)_loadMessages:(id)a3 completion:(id)a4;
- (void)loadBodiesOfMessagesContainingSubject:(id)a3 completion:(id)a4;
- (void)loadBodyOfMessageWithID:(id)a3 completion:(id)a4;
@end

@implementation MFDMessageBodyLoader

- (void)loadBodyOfMessageWithID:(id)a3 completion:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (pthread_main_np())
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MFDMessageBodyLoader.m" lineNumber:25 description:@"Current thread is main"];
  }

  v8 = +[MFMailMessageLibrary defaultInstance];
  v9 = [v8 messagesWithMessageIDHeader:v11];

  [(MFDMessageBodyLoader *)self _loadMessages:v9 completion:v7];
}

- (void)loadBodiesOfMessagesContainingSubject:(id)a3 completion:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (pthread_main_np())
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MFDMessageBodyLoader.m" lineNumber:32 description:@"Current thread is main"];
  }

  v8 = [[MFMessageCriterion alloc] initWithType:1 qualifier:0 expression:v12];
  [v8 setCriterionIdentifier:ECMessageHeaderKeySubject];
  v9 = +[MFMailMessageLibrary defaultInstance];
  v10 = [v9 messagesMatchingCriterion:v8 options:6297663];

  [(MFDMessageBodyLoader *)self _loadMessages:v10 completion:v7];
}

- (void)_loadMessages:(id)a3 completion:(id)a4
{
  v18 = a3;
  v19 = a4;
  if (![v18 count])
  {
    v26 = NSLocalizedDescriptionKey;
    v27 = @"No matching message found in library";
    obj = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v5 = [NSError errorWithDomain:MSDMessageBodyLoaderErrorDomain code:404 userInfo:?];
LABEL_12:
    v7 = 0;

    goto LABEL_14;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v18;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = 0;
  v7 = 0;
  v8 = *v23;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v22 + 1) + 8 * i);
      v11 = [MFMessageLoadingContext alloc];
      v12 = sub_100027C70();
      v13 = [v12 defaultAttachmentManager];
      v14 = [v11 initWithMessage:v10 attachmentManager:v13];

      v15 = +[EFScheduler immediateScheduler];
      [v14 load:1 scheduler:v15];

      LODWORD(v15) = [v14 hasLoadedSomeContent];
      v6 += v15 ^ 1;
      v7 += v15;
    }

    v5 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  }

  while (v5);

  if (v6)
  {
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Could not load %lu of %lu messages from network", v6, [obj count]);
    v28 = NSLocalizedDescriptionKey;
    v29 = v16;
    obja = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v5 = [NSError errorWithDomain:MSDMessageBodyLoaderErrorDomain code:503 userInfo:v17];
  }

  else
  {
    v5 = 0;
  }

LABEL_14:
  v19[2](v19, v7, v5);
}

@end