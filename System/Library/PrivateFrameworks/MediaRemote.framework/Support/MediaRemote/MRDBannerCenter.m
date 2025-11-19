@interface MRDBannerCenter
- (MRBannerDelegate)delegate;
- (MRBannerRequestRepresentable)activeRequest;
- (MRDBannerCenter)initWithDelegate:(id)a3;
- (void)bannerWithIdentifier:(id)a3 postedEvent:(unint64_t)a4;
- (void)dismissAllBannerRequests;
- (void)dismissBannerWithIdentifier:(id)a3;
- (void)postBannerRequest:(id)a3;
- (void)setActiveRequest:(id)a3;
@end

@implementation MRDBannerCenter

- (MRDBannerCenter)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MRDBannerCenter;
  v5 = [(MRDBannerCenter *)&v8 init];
  if (v5)
  {
    v6 = [MRDUIControllerProvider bannerUIControllerWithDelegate:v5];
    [(MRDBannerCenter *)v5 setBannerControllable:v6];

    [(MRDBannerCenter *)v5 setDelegate:v4];
  }

  return v5;
}

- (MRBannerRequestRepresentable)activeRequest
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activeRequest;
  objc_sync_exit(v2);

  return v3;
}

- (void)setActiveRequest:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  activeRequest = obj->_activeRequest;
  obj->_activeRequest = v4;

  objc_sync_exit(obj);
}

- (void)postBannerRequest:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 requestIdentifier];
    v10 = 134218242;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].BC <%p> postBannerRequest: %@", &v10, 0x16u);
  }

  v7 = [(MRDBannerCenter *)self activeRequest];

  if (v7)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(MRDBannerCenter *)self activeRequest];
      v10 = 134218242;
      v11 = self;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC].BC <%p> already presenting %@, bailing out", &v10, 0x16u);
    }
  }

  else
  {
    [(MRDBannerCenter *)self setActiveRequest:v4];
    v8 = [(MRDBannerCenter *)self bannerControllable];
    [v8 postBannerRequest:v4];
  }
}

- (void)dismissBannerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].BC <%p> dismissBannerWithIdentifier: %@", &v7, 0x16u);
  }

  v6 = [(MRDBannerCenter *)self bannerControllable];
  [v6 dismissBannerWithIdentifier:v4];
}

- (void)dismissAllBannerRequests
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRRC].BC <%p> dismissAllBannerRequests", &v5, 0xCu);
  }

  v4 = [(MRDBannerCenter *)self bannerControllable];
  [v4 dismissAllBanners];
}

- (void)bannerWithIdentifier:(id)a3 postedEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MRBannerEventDescription();
    v10 = 134218498;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC].BC <%p> bannerWithIdentifier: %@ postedEvent: %@", &v10, 0x20u);
  }

  if (!a4)
  {
    [(MRDBannerCenter *)self setActiveRequest:0];
  }

  v9 = [(MRDBannerCenter *)self delegate];
  [v9 bannerWithRequestIdentifier:v6 didReceiveEvent:a4];
}

- (MRBannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end