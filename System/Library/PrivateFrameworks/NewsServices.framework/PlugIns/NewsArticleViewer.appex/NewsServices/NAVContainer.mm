@interface NAVContainer
+ (id)createContainerWithExtensionContext:(id)context hostViewController:(id)controller;
+ (id)sharedContainerForExtension:(id)extension hostViewController:(id)controller;
- (NAVContainer)initWithExtensionContext:(id)context hostViewController:(id)controller;
- (UIViewController)hostViewController;
@end

@implementation NAVContainer

+ (id)sharedContainerForExtension:(id)extension hostViewController:(id)controller
{
  extensionCopy = extension;
  controllerCopy = controller;
  FCSetupLogging();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000129C;
  block[3] = &unk_100004130;
  v16 = controllerCopy;
  selfCopy = self;
  v15 = extensionCopy;
  v8 = qword_100008930;
  v9 = controllerCopy;
  v10 = extensionCopy;
  if (v8 != -1)
  {
    dispatch_once(&qword_100008930, block);
  }

  [qword_100008928 setExtensionContext:v10];
  [qword_100008928 setHostViewController:v9];
  v11 = qword_100008928;
  v12 = qword_100008928;

  return v11;
}

+ (id)createContainerWithExtensionContext:(id)context hostViewController:(id)controller
{
  controllerCopy = controller;
  contextCopy = context;
  v7 = [[NAVContainer alloc] initWithExtensionContext:contextCopy hostViewController:controllerCopy];

  v8 = [TFContainer alloc];
  v9 = [[NUExtensionFrameworkAssembly alloc] initWithExtensionContextProvider:v7];
  v14 = v9;
  v10 = [NSArray arrayWithObjects:&v14 count:1];
  v11 = [v8 initWithBundleAssemblies:v10 assemblies:&__NSArray0__struct];

  [(NAVContainer *)v7 setContainer:v11];
  resolver = [v11 resolver];
  [(NAVContainer *)v7 setResolver:resolver];

  return v7;
}

- (NAVContainer)initWithExtensionContext:(id)context hostViewController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = NAVContainer;
  v9 = [(NAVContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extensionContext, context);
    objc_storeWeak(&v10->_hostViewController, controllerCopy);
  }

  return v10;
}

- (UIViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

@end