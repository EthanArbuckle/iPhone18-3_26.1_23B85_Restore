@interface AppManager
- (AppManager)initWithAppLinkResolver:(id)resolver appInstaller:(id)installer;
- (id)_appForBundleID:(id)d createIfNeeded:(BOOL)needed;
- (void)_installAppWithBundleID:(id)d applicationIconFileURL:(id)l completionHandler:(id)handler;
- (void)downloadAppWithBundleID:(id)d completionHandler:(id)handler;
- (void)installAppWithBundleID:(id)d session:(id)session completionHandler:(id)handler;
@end

@implementation AppManager

- (AppManager)initWithAppLinkResolver:(id)resolver appInstaller:(id)installer
{
  resolverCopy = resolver;
  installerCopy = installer;
  v18.receiver = self;
  v18.super_class = AppManager;
  v9 = [(AppManager *)&v18 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.ClipServices.clipserviced.app-manager", 0);
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_appInstaller, installer);
    objc_storeStrong(&v9->_appLinkResolver, resolver);
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

- (void)downloadAppWithBundleID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002D44;
  v11[3] = &unk_1000145F8;
  objc_copyWeak(&v14, &location);
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)installAppWithBundleID:(id)d session:(id)session completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  applicationIconFileURL = [session applicationIconFileURL];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003240;
  v12[3] = &unk_100014620;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(AppManager *)self _installAppWithBundleID:dCopy applicationIconFileURL:applicationIconFileURL completionHandler:v12];
}

- (void)_installAppWithBundleID:(id)d applicationIconFileURL:(id)l completionHandler:(id)handler
{
  dCopy = d;
  lCopy = l;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003370;
  block[3] = &unk_100014698;
  objc_copyWeak(&v19, &location);
  v17 = lCopy;
  v18 = handlerCopy;
  v16 = dCopy;
  v12 = lCopy;
  v13 = handlerCopy;
  v14 = dCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (id)_appForBundleID:(id)d createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  dCopy = d;
  v7 = [(NSMapTable *)self->_appsByBundleID objectForKey:dCopy];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !neededCopy;
  }

  if (!v8)
  {
    v7 = [[App alloc] initWithBundleID:dCopy];
    v9 = [(AppLinkResolving *)self->_appLinkResolver ipaLinkForClipBundleIdentifier:dCopy];
    v10 = [NSURL URLWithString:v9];
    [(App *)v7 setIpaLink:v10];

    [(NSMapTable *)self->_appsByBundleID setObject:v7 forKey:dCopy];
    [(NSMutableSet *)self->_apps addObject:v7];
  }

  return v7;
}

@end