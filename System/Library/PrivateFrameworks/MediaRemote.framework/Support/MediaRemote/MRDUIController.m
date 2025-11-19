@interface MRDUIController
- (MRDUIController)initWithClientObject:(id)a3;
- (MRDUIController)initWithDelegate:(id)a3;
- (id)delegate;
- (id)server;
- (void)bannerDismissed;
- (void)bannerWithIdentifier:(id)a3 postedEvent:(id)a4;
- (void)dealloc;
- (void)dismissAllBanners;
- (void)dismissBannerWithIdentifier:(id)a3;
- (void)invalidate;
- (void)postBannerRequest:(id)a3;
- (void)presentVolumeHUDWithRequest:(id)a3;
@end

@implementation MRDUIController

- (MRDUIController)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(MRDUIController *)self initWithClientObject:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (MRDUIController)initWithClientObject:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MRDUIController;
  v5 = [(MRDUIController *)&v14 init];
  if (v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> Initializing direct controller.", buf, 0xCu);
    }

    objc_initWeak(buf, v5);
    v7 = [MRDUIControllerConnection alloc];
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v5;
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001A66C8;
    v12[3] = &unk_1004B8280;
    objc_copyWeak(&v13, buf);
    v9 = [(MRDUIControllerConnection *)v7 initWithClientObject:v8 invalidationHandler:v12];
    connection = v5->_connection;
    v5->_connection = v9;

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  return v5;
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> Dealloc.", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MRDUIController;
  [(MRDUIController *)&v4 dealloc];
}

- (id)server
{
  v2 = [(MRDUIController *)self connection];
  v3 = [v2 server];

  return v3;
}

- (void)postBannerRequest:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> IPC postBannerWithConfiguration", buf, 0xCu);
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 requestIdentifier];
  v9 = [NSString stringWithFormat:@"%@/%@", v7, v8];

  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v4 description];
    *buf = 134218498;
    v15 = self;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> IPC postBannerWithConfiguration reason: %@\n%@", buf, 0x20u);
  }

  v12 = [(MRDUIController *)self server];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001A6A1C;
  v13[3] = &unk_1004B6FC0;
  v13[4] = self;
  [v12 connectForBannerPresentation:v4 reason:v9 reply:v13];
}

- (void)dismissBannerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> IPC dismissBannerWithIdentifier:%@", buf, 0x16u);
  }

  v6 = [(MRDUIController *)self server];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A6BB8;
  v7[3] = &unk_1004B6FC0;
  v7[4] = self;
  [v6 revokeBannerWithIdentifier:v4 withReply:v7];
}

- (void)dismissAllBanners
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> IPC dismissAllBanners", buf, 0xCu);
  }

  v4 = [(MRDUIController *)self server];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A6D30;
  v5[3] = &unk_1004B6FC0;
  v5[4] = self;
  [v4 revokeAllBannersWithReply:v5];
}

- (void)bannerWithIdentifier:(id)a3 postedEvent:(id)a4
{
  v6 = a3;
  v7 = [a4 unsignedIntValue];
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MRBannerEventDescription();
    v11 = 134218498;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> [MRDRRC] IPC Back bannerWithIdentifier: %@ postedEvent: %@", &v11, 0x20u);
  }

  v10 = [(MRDUIController *)self delegate];
  [v10 bannerWithIdentifier:v6 postedEvent:v7];
}

- (void)invalidate
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> [MRDRRC] IPC invalidated", &v5, 0xCu);
  }

  v4 = [(MRDUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 invalidated];
  }
}

- (void)bannerDismissed
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] Banner dismissed", v3, 2u);
  }
}

- (void)presentVolumeHUDWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(MRDUIController *)self server];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A70A8;
  v7[3] = &unk_1004B6FC0;
  v8 = v4;
  v6 = v4;
  [v5 requestVolumeHUDPresentation:v6 reply:v7];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end