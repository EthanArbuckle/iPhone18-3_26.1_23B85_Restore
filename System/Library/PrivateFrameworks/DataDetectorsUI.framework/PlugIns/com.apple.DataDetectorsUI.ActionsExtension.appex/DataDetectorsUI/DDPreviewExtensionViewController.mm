@interface DDPreviewExtensionViewController
- (void)addViewController:(id)controller;
- (void)prepareViewControllerWithContext:(id)context completionHandler:(id)handler;
@end

@implementation DDPreviewExtensionViewController

- (void)prepareViewControllerWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  actionClass = [contextCopy actionClass];
  v9 = NSClassFromString(actionClass);

  if (v9)
  {
    _hostApplicationBundleIdentifier = [(DDPreviewExtensionViewController *)self _hostApplicationBundleIdentifier];
    [contextCopy setHostApplicationIdentifier:_hostApplicationBundleIdentifier];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003470;
    block[3] = &unk_100008490;
    v13 = [[v9 alloc] initWithContext:contextCopy];
    selfCopy = self;
    v15 = handlerCopy;
    v11 = v13;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0.0, 0.0);
  }
}

- (void)addViewController:(id)controller
{
  controllerCopy = controller;
  [(DDPreviewExtensionViewController *)self addChildViewController:controllerCopy];
  view = [(DDPreviewExtensionViewController *)self view];
  view2 = [controllerCopy view];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:view2];
  v10 = @"v";
  v11 = view2;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[v]|" options:0 metrics:0 views:v7];
  [view addConstraints:v8];

  v9 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[v]|" options:0 metrics:0 views:v7];
  [view addConstraints:v9];
}

@end