@interface AppManager
- (AppManager)initWithAppLinkResolver:(id)a3 appInstaller:(id)a4;
- (id)_appForBundleID:(id)a3 createIfNeeded:(BOOL)a4;
- (void)_installAppWithBundleID:(id)a3 applicationIconFileURL:(id)a4 completionHandler:(id)a5;
- (void)downloadAppWithBundleID:(id)a3 completionHandler:(id)a4;
- (void)installAppWithBundleID:(id)a3 session:(id)a4 completionHandler:(id)a5;
@end

@implementation AppManager

- (AppManager)initWithAppLinkResolver:(id)a3 appInstaller:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = AppManager;
  v9 = [(AppManager *)&v18 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.ClipServices.clipserviced.app-manager", 0);
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_appInstaller, a4);
    objc_storeStrong(&v9->_appLinkResolver, a3);
    v12 = +[NSMutableSet set];
    apps = v9->_apps;
    v9->_apps = v12;

    v14 = +[NSMapTable mapTableWithStrongToWeakObjects];
    appsByBundleID = v9->_appsByBundleID;
    v9->_appsByBundleID = v14;

    v16 = v9;
  }

  return v9;
}

- (void)downloadAppWithBundleID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002D44;
  v11[3] = &unk_1000145F8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)installAppWithBundleID:(id)a3 session:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 applicationIconFileURL];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003240;
  v12[3] = &unk_100014620;
  v13 = v8;
  v11 = v8;
  [(AppManager *)self _installAppWithBundleID:v9 applicationIconFileURL:v10 completionHandler:v12];
}

- (void)_installAppWithBundleID:(id)a3 applicationIconFileURL:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003370;
  block[3] = &unk_100014698;
  objc_copyWeak(&v19, &location);
  v17 = v9;
  v18 = v10;
  v16 = v8;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (id)_appForBundleID:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSMapTable *)self->_appsByBundleID objectForKey:v6];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    v7 = [[App alloc] initWithBundleID:v6];
    v9 = [(AppLinkResolving *)self->_appLinkResolver ipaLinkForClipBundleIdentifier:v6];
    v10 = [NSURL URLWithString:v9];
    [(App *)v7 setIpaLink:v10];

    [(NSMapTable *)self->_appsByBundleID setObject:v7 forKey:v6];
    [(NSMutableSet *)self->_apps addObject:v7];
  }

  return v7;
}

@end