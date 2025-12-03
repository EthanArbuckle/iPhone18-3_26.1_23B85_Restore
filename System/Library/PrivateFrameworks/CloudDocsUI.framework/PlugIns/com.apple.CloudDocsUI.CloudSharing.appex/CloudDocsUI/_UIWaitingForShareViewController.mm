@interface _UIWaitingForShareViewController
- (void)viewDidLoad;
@end

@implementation _UIWaitingForShareViewController

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = _UIWaitingForShareViewController;
  [(_UIWaitingForShareViewController *)&v15 viewDidLoad];
  v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  v4 = +[UIColor secondaryLabelColor];
  [v3 setColor:v4];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 startAnimating];
  view = [(_UIWaitingForShareViewController *)self view];
  [view addSubview:v3];

  centerXAnchor = [v3 centerXAnchor];
  view2 = [(_UIWaitingForShareViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v16[0] = v9;
  centerYAnchor = [v3 centerYAnchor];
  view3 = [(_UIWaitingForShareViewController *)self view];
  centerYAnchor2 = [view3 centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v16[1] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:2];
  [NSLayoutConstraint activateConstraints:v14];
}

@end