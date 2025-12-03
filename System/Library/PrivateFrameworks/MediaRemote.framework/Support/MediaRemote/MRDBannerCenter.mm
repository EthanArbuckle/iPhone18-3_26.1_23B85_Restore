@interface MRDBannerCenter
- (MRBannerDelegate)delegate;
- (MRBannerRequestRepresentable)activeRequest;
- (MRDBannerCenter)initWithDelegate:(id)delegate;
- (void)bannerWithIdentifier:(id)identifier postedEvent:(unint64_t)event;
- (void)dismissAllBannerRequests;
- (void)dismissBannerWithIdentifier:(id)identifier;
- (void)postBannerRequest:(id)request;
- (void)setActiveRequest:(id)request;
@end

@implementation MRDBannerCenter

- (MRDBannerCenter)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MRDBannerCenter;
  v5 = [(MRDBannerCenter *)&v8 init];
  if (v5)
  {
    v6 = [MRDUIControllerProvider bannerUIControllerWithDelegate:v5];
    [(MRDBannerCenter *)v5 setBannerControllable:v6];

    [(MRDBannerCenter *)v5 setDelegate:delegateCopy];
  }

  return v5;
}

- (MRBannerRequestRepresentable)activeRequest
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activeRequest;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setActiveRequest:(id)request
{
  requestCopy = request;
  obj = self;
  objc_sync_enter(obj);
  activeRequest = obj->_activeRequest;
  obj->_activeRequest = requestCopy;

  objc_sync_exit(obj);
}

- (void)postBannerRequest:(id)request
{
  requestCopy = request;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    requestIdentifier = [requestCopy requestIdentifier];
    v10 = 134218242;
    selfCopy2 = self;
    v12 = 2112;
    v13 = requestIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].BC <%p> postBannerRequest: %@", &v10, 0x16u);
  }

  activeRequest = [(MRDBannerCenter *)self activeRequest];

  if (activeRequest)
  {
    bannerControllable = _MRLogForCategory();
    if (os_log_type_enabled(bannerControllable, OS_LOG_TYPE_DEFAULT))
    {
      activeRequest2 = [(MRDBannerCenter *)self activeRequest];
      v10 = 134218242;
      selfCopy2 = self;
      v12 = 2112;
      v13 = activeRequest2;
      _os_log_impl(&_mh_execute_header, bannerControllable, OS_LOG_TYPE_DEFAULT, "[MRDRRC].BC <%p> already presenting %@, bailing out", &v10, 0x16u);
    }
  }

  else
  {
    [(MRDBannerCenter *)self setActiveRequest:requestCopy];
    bannerControllable = [(MRDBannerCenter *)self bannerControllable];
    [bannerControllable postBannerRequest:requestCopy];
  }
}

- (void)dismissBannerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    selfCopy = self;
    v9 = 2112;
    v10 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].BC <%p> dismissBannerWithIdentifier: %@", &v7, 0x16u);
  }

  bannerControllable = [(MRDBannerCenter *)self bannerControllable];
  [bannerControllable dismissBannerWithIdentifier:identifierCopy];
}

- (void)dismissAllBannerRequests
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRRC].BC <%p> dismissAllBannerRequests", &v5, 0xCu);
  }

  bannerControllable = [(MRDBannerCenter *)self bannerControllable];
  [bannerControllable dismissAllBanners];
}

- (void)bannerWithIdentifier:(id)identifier postedEvent:(unint64_t)event
{
  identifierCopy = identifier;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MRBannerEventDescription();
    v10 = 134218498;
    selfCopy = self;
    v12 = 2112;
    v13 = identifierCopy;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC].BC <%p> bannerWithIdentifier: %@ postedEvent: %@", &v10, 0x20u);
  }

  if (!event)
  {
    [(MRDBannerCenter *)self setActiveRequest:0];
  }

  delegate = [(MRDBannerCenter *)self delegate];
  [delegate bannerWithRequestIdentifier:identifierCopy didReceiveEvent:event];
}

- (MRBannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end