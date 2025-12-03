@interface CAMPendingRemotePersistenceWrapper
- (CAMPendingRemotePersistenceWrapper)initWithRequest:(id)request creationDate:(id)date job:(id)job loggingIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation CAMPendingRemotePersistenceWrapper

- (CAMPendingRemotePersistenceWrapper)initWithRequest:(id)request creationDate:(id)date job:(id)job loggingIdentifier:(id)identifier completionHandler:(id)handler
{
  requestCopy = request;
  dateCopy = date;
  jobCopy = job;
  identifierCopy = identifier;
  handlerCopy = handler;
  v26.receiver = self;
  v26.super_class = CAMPendingRemotePersistenceWrapper;
  v18 = [(CAMPendingRemotePersistenceWrapper *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_request, request);
    objc_storeStrong(&v19->_creationDate, date);
    objc_storeStrong(&v19->_job, job);
    v20 = [identifierCopy copy];
    loggingIdentifier = v19->_loggingIdentifier;
    v19->_loggingIdentifier = v20;

    v22 = [handlerCopy copy];
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v22;

    v24 = v19;
  }

  return v19;
}

@end