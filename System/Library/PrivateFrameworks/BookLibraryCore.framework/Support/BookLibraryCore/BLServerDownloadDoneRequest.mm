@interface BLServerDownloadDoneRequest
+ (void)notifyDownloadCancelledWithAccountID:(id)d downloadID:(id)iD storeID:(id)storeID transactionID:(id)transactionID cancelDownloadURL:(id)l completion:(id)completion;
+ (void)notifyDownloadDoneWithAccountID:(id)d downloadID:(id)iD storeID:(id)storeID transactionID:(id)transactionID completion:(id)completion;
- (BLServerDownloadDoneRequest)initWithAccountID:(id)d downloadID:(id)iD storeID:(id)storeID transactionID:(id)transactionID cancelDownloadURL:(id)l;
- (BLServerDownloadDoneRequest)initWithAccountID:(id)d downloadID:(id)iD storeID:(id)storeID transactionID:(id)transactionID finishURL:(id)l isCancel:(BOOL)cancel;
- (id)_requestPromiseForDownloadDoneForAccountIdentifier:(id)identifier storeID:(id)d transactionID:(id)iD finishURL:(id)l;
- (void)start;
@end

@implementation BLServerDownloadDoneRequest

- (BLServerDownloadDoneRequest)initWithAccountID:(id)d downloadID:(id)iD storeID:(id)storeID transactionID:(id)transactionID cancelDownloadURL:(id)l
{
  iDCopy = iD;
  lCopy = l;
  transactionIDCopy = transactionID;
  storeIDCopy = storeID;
  dCopy = d;
  if ([lCopy length])
  {
    v17 = [NSURL URLWithString:lCopy];
  }

  else
  {
    v18 = BLServiceLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543362;
      v22 = iDCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "(dID=%{public}@) No cancel-download-url", &v21, 0xCu);
    }

    v17 = 0;
  }

  v19 = [(BLServerDownloadDoneRequest *)self initWithAccountID:dCopy downloadID:iDCopy storeID:storeIDCopy transactionID:transactionIDCopy finishURL:v17 isCancel:1];

  return v19;
}

- (BLServerDownloadDoneRequest)initWithAccountID:(id)d downloadID:(id)iD storeID:(id)storeID transactionID:(id)transactionID finishURL:(id)l isCancel:(BOOL)cancel
{
  dCopy = d;
  iDCopy = iD;
  storeIDCopy = storeID;
  transactionIDCopy = transactionID;
  lCopy = l;
  v23.receiver = self;
  v23.super_class = BLServerDownloadDoneRequest;
  v18 = [(BLServerDownloadDoneRequest *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accountID, d);
    objc_storeStrong(&v19->_downloadID, iD);
    objc_storeStrong(&v19->_storeID, storeID);
    objc_storeStrong(&v19->_transactionID, transactionID);
    objc_storeStrong(&v19->_finishURL, l);
    v19->_isCancel = cancel;
  }

  return v19;
}

- (void)start
{
  downloadID = [(BLServerDownloadDoneRequest *)self downloadID];
  accountID = [(BLServerDownloadDoneRequest *)self accountID];
  storeID = [(BLServerDownloadDoneRequest *)self storeID];
  transactionID = [(BLServerDownloadDoneRequest *)self transactionID];
  finishURL = [(BLServerDownloadDoneRequest *)self finishURL];
  v8 = [(BLServerDownloadDoneRequest *)self _requestPromiseForDownloadDoneForAccountIdentifier:accountID storeID:storeID transactionID:transactionID finishURL:finishURL];

  if (v8)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000C8BFC;
    v12[3] = &unk_10011F068;
    v12[4] = self;
    v13 = downloadID;
    [v8 addFinishBlock:v12];
  }

  else
  {
    v9 = sub_1000A8F44(0, 0, @"Error building URL requestPromise for marking downloadID as done for server.");
    completion = [(BLServerDownloadDoneRequest *)self completion];
    v11 = completion;
    if (completion)
    {
      (*(completion + 16))(completion, 0, v9);
    }
  }
}

- (id)_requestPromiseForDownloadDoneForAccountIdentifier:(id)identifier storeID:(id)d transactionID:(id)iD finishURL:(id)l
{
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  lCopy = l;
  v13 = +[BUBag defaultBag];
  v14 = [[AMSURLRequestEncoder alloc] initWithBag:v13];
  v15 = identifierCopy;
  if (v15)
  {
    v16 = [ACAccount bu_storeAccountWithDSID:v15];
    [v14 setAccount:v16];
  }

  [v14 setDialogOptions:1];
  v17 = objc_alloc_init(NSMutableDictionary);
  if (lCopy)
  {
    v39 = iDCopy;
    v18 = [NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    v19 = v18;
    if (v18)
    {
      v36 = v13;
      v37 = lCopy;
      v38 = dCopy;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      queryItems = [v18 queryItems];
      v21 = [queryItems countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v41;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v41 != v23)
            {
              objc_enumerationMutation(queryItems);
            }

            v25 = *(*(&v40 + 1) + 8 * i);
            value = [v25 value];
            name = [v25 name];
            [v17 setObject:value forKeyedSubscript:name];
          }

          v22 = [queryItems countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v22);
      }

      [v19 setQueryItems:0];
      lCopy = v37;
      dCopy = v38;
      v13 = v36;
    }

    v28 = [v19 URL];
    if (v28)
    {
      v29 = [v14 requestWithMethod:2 URL:v28 parameters:v17];
    }

    else
    {
      v29 = 0;
    }

    iDCopy = v39;
  }

  else
  {
    stringValue = [dCopy stringValue];

    v29 = 0;
    if (iDCopy && stringValue)
    {
      v31 = objc_alloc_init(NSMutableDictionary);
      [dCopy stringValue];
      v33 = v32 = v13;
      [v31 setObject:v33 forKeyedSubscript:@"songId"];

      [v31 setObject:iDCopy forKeyedSubscript:@"download-id"];
      songDownloadDone = [v32 songDownloadDone];
      v29 = [v14 requestWithMethod:2 bagURL:songDownloadDone parameters:v31];

      v13 = v32;
    }
  }

  return v29;
}

+ (void)notifyDownloadCancelledWithAccountID:(id)d downloadID:(id)iD storeID:(id)storeID transactionID:(id)transactionID cancelDownloadURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  transactionIDCopy = transactionID;
  storeIDCopy = storeID;
  iDCopy = iD;
  dCopy = d;
  v19 = [[BLServerDownloadDoneRequest alloc] initWithAccountID:dCopy downloadID:iDCopy storeID:storeIDCopy transactionID:transactionIDCopy cancelDownloadURL:lCopy];

  [(BLServerDownloadDoneRequest *)v19 setCompletion:completionCopy];
  [(BLServerDownloadDoneRequest *)v19 start];
}

+ (void)notifyDownloadDoneWithAccountID:(id)d downloadID:(id)iD storeID:(id)storeID transactionID:(id)transactionID completion:(id)completion
{
  completionCopy = completion;
  transactionIDCopy = transactionID;
  storeIDCopy = storeID;
  iDCopy = iD;
  dCopy = d;
  v16 = [[BLServerDownloadDoneRequest alloc] initWithAccountID:dCopy downloadID:iDCopy storeID:storeIDCopy transactionID:transactionIDCopy];

  [(BLServerDownloadDoneRequest *)v16 setCompletion:completionCopy];
  [(BLServerDownloadDoneRequest *)v16 start];
}

@end