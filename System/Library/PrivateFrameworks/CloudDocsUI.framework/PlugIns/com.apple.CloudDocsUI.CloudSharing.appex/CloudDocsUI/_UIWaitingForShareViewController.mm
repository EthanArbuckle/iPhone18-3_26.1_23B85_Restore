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
  v5 = [(_UIWaitingForShareViewController *)self view];
  [v5 addSubview:v3];

  v6 = [v3 centerXAnchor];
  v7 = [(_UIWaitingForShareViewController *)self view];
  v8 = [v7 centerXAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v16[0] = v9;
  v10 = [v3 centerYAnchor];
  v11 = [(_UIWaitingForShareViewController *)self view];
  v12 = [v11 centerYAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v16[1] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:2];
  [NSLayoutConstraint activateConstraints:v14];
}

@end