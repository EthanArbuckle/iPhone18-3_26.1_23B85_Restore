@interface BDSICloudIdentityTokenTracker
- (BDSICloudIdentityTokenTracker)initWithContainerURL:(id)l trackingLiverpool:(BOOL)liverpool;
- (BOOL)didUnacknowledgediCloudLogoutOccur;
- (void)acknowledgeiCloudIdentity;
- (void)fetchCurrentToken;
- (void)forceUpdateTokenWithString:(id)string;
@end

@implementation BDSICloudIdentityTokenTracker

- (void)fetchCurrentToken
{
  if ([(BDSICloudIdentityTokenTracker *)self trackLiverpool])
  {
    initWithCurrentIdentity = +[BDSICloudIdentityToken tokenForCurrentIdentityIfCloudKitEnabled];
  }

  else
  {
    initWithCurrentIdentity = [[BDSICloudIdentityToken alloc] initWithCurrentIdentity];
  }

  v4 = initWithCurrentIdentity;
  [(BDSICloudIdentityTokenTracker *)self setCurrentToken:initWithCurrentIdentity];
}

- (BOOL)didUnacknowledgediCloudLogoutOccur
{
  selfCopy = self;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, self);
  dispatchQueue = [(BDSICloudIdentityTokenTracker *)selfCopy dispatchQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000027D0;
  v5[3] = &unk_10023FC68;
  objc_copyWeak(&v6, &location);
  v5[4] = selfCopy;
  v5[5] = &v8;
  dispatch_sync(dispatchQueue, v5);

  LOBYTE(selfCopy) = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return selfCopy;
}

- (void)acknowledgeiCloudIdentity
{
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "acknowledgeiCloudIdentity", buf, 2u);
  }

  objc_initWeak(buf, self);
  dispatchQueue = [(BDSICloudIdentityTokenTracker *)self dispatchQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002E44;
  v5[3] = &unk_10023F9A8;
  objc_copyWeak(&v6, buf);
  v5[4] = self;
  dispatch_sync(dispatchQueue, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (BDSICloudIdentityTokenTracker)initWithContainerURL:(id)l trackingLiverpool:(BOOL)liverpool
{
  lCopy = l;
  v21.receiver = self;
  v21.super_class = BDSICloudIdentityTokenTracker;
  v7 = [(BDSICloudIdentityTokenTracker *)&v21 init];
  v8 = v7;
  if (v7)
  {
    v7->_trackLiverpool = liverpool;
    v9 = [lCopy URLByAppendingPathComponent:@"BDSICloudIdentityToken.plist"];
    plistURL = v8->_plistURL;
    v8->_plistURL = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_DEFAULT, 0);
    v13 = dispatch_queue_create("com.apple.iBooks.BDSICloudStatusMonitor.dispatchQueue", v12);
    dispatchQueue = v8->_dispatchQueue;
    v8->_dispatchQueue = v13;

    v15 = [NSDictionary dictionaryWithContentsOfURL:v8->_plistURL];
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

- (void)forceUpdateTokenWithString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v4 = [[BDSICloudIdentityToken alloc] initWithToken:stringCopy];
    [(BDSICloudIdentityTokenTracker *)self setCurrentToken:v4];
  }

  else
  {
    [(BDSICloudIdentityTokenTracker *)self setCurrentToken:0];
  }
}

@end