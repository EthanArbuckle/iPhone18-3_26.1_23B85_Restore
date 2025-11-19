@interface CAMPendingRemotePersistenceWrapper
- (CAMPendingRemotePersistenceWrapper)initWithRequest:(id)a3 creationDate:(id)a4 job:(id)a5 loggingIdentifier:(id)a6 completionHandler:(id)a7;
@end

@implementation CAMPendingRemotePersistenceWrapper

- (CAMPendingRemotePersistenceWrapper)initWithRequest:(id)a3 creationDate:(id)a4 job:(id)a5 loggingIdentifier:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v26.receiver = self;
  v26.super_class = CAMPendingRemotePersistenceWrapper;
  v18 = [(CAMPendingRemotePersistenceWrapper *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_request, a3);
    objc_storeStrong(&v19->_creationDate, a4);
    objc_storeStrong(&v19->_job, a5);
    v20 = [v16 copy];
    loggingIdentifier = v19->_loggingIdentifier;
    v19->_loggingIdentifier = v20;

    v22 = [v17 copy];
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v22;

    v24 = v19;
  }

  return v19;
}

@end