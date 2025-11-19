@interface DDPreviewExtensionViewController
- (void)addViewController:(id)a3;
- (void)prepareViewControllerWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation DDPreviewExtensionViewController

- (void)prepareViewControllerWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 actionClass];
  v9 = NSClassFromString(v8);

  if (v9)
  {
    v10 = [(DDPreviewExtensionViewController *)self _hostApplicationBundleIdentifier];
    [v6 setHostApplicationIdentifier:v10];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003470;
    block[3] = &unk_100008490;
    v13 = [[v9 alloc] initWithContext:v6];
    v14 = self;
    v15 = v7;
    v11 = v13;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0.0, 0.0);
  }
}

- (void)addViewController:(id)a3
{
  v4 = a3;
  [(DDPreviewExtensionViewController *)self addChildViewController:v4];
  v5 = [(DDPreviewExtensionViewController *)self view];
  v6 = [v4 view];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:v6];
  v10 = @"v";
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[v]|" options:0 metrics:0 views:v7];
  [v5 addConstraints:v8];

  v9 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[v]|" options:0 metrics:0 views:v7];
  [v5 addConstraints:v9];
}

@end