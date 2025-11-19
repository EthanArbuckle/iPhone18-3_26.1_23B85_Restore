@interface BDSICloudIdentityTokenTracker
- (BDSICloudIdentityTokenTracker)initWithContainerURL:(id)a3 trackingLiverpool:(BOOL)a4;
- (BOOL)didUnacknowledgediCloudLogoutOccur;
- (void)acknowledgeiCloudIdentity;
- (void)fetchCurrentToken;
- (void)forceUpdateTokenWithString:(id)a3;
@end

@implementation BDSICloudIdentityTokenTracker

- (void)fetchCurrentToken
{
  if ([(BDSICloudIdentityTokenTracker *)self trackLiverpool])
  {
    v3 = +[BDSICloudIdentityToken tokenForCurrentIdentityIfCloudKitEnabled];
  }

  else
  {
    v3 = [[BDSICloudIdentityToken alloc] initWithCurrentIdentity];
  }

  v4 = v3;
  [(BDSICloudIdentityTokenTracker *)self setCurrentToken:v3];
}

- (BOOL)didUnacknowledgediCloudLogoutOccur
{
  v2 = self;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, self);
  v3 = [(BDSICloudIdentityTokenTracker *)v2 dispatchQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E45E35EC;
  v5[3] = &unk_1E875A150;
  objc_copyWeak(&v6, &location);
  v5[4] = v2;
  v5[5] = &v8;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return v2;
}

- (void)acknowledgeiCloudIdentity
{
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_DEFAULT, "acknowledgeiCloudIdentity", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [(BDSICloudIdentityTokenTracker *)self dispatchQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E45E3898;
  v5[3] = &unk_1E875A178;
  objc_copyWeak(&v6, buf);
  v5[4] = self;
  dispatch_sync(v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (BDSICloudIdentityTokenTracker)initWithContainerURL:(id)a3 trackingLiverpool:(BOOL)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = BDSICloudIdentityTokenTracker;
  v7 = [(BDSICloudIdentityTokenTracker *)&v21 init];
  v8 = v7;
  if (v7)
  {
    v7->_trackLiverpool = a4;
    v9 = [v6 URLByAppendingPathComponent:@"BDSICloudIdentityToken.plist"];
    plistURL = v8->_plistURL;
    v8->_plistURL = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_DEFAULT, 0);
    v13 = dispatch_queue_create("com.apple.iBooks.BDSICloudStatusMonitor.dispatchQueue", v12);
    dispatchQueue = v8->_dispatchQueue;
    v8->_dispatchQueue = v13;

    v15 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v8->_plistURL];
    v16 = [v15 mutableCopy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = objc_opt_new();
    }

    plistContents = v8->_plistContents;
    v8->_plistContents = v18;
  }

  return v8;
}

- (void)forceUpdateTokenWithString:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = [[BDSICloudIdentityToken alloc] initWithToken:v5];
    [(BDSICloudIdentityTokenTracker *)self setCurrentToken:v4];
  }

  else
  {
    [(BDSICloudIdentityTokenTracker *)self setCurrentToken:0];
  }
}

@end