@interface HUViewControllerDismissalRequest
+ (id)requestWithViewController:(id)a3;
- (HUViewControllerDismissalRequest)initWithViewController:(id)a3;
@end

@implementation HUViewControllerDismissalRequest

+ (id)requestWithViewController:(id)a3
{
  v3 = a3;
  v4 = [[HUViewControllerDismissalRequest alloc] initWithViewController:v3];

  return v4;
}

- (HUViewControllerDismissalRequest)initWithViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUViewControllerDismissalRequest;
  v6 = [(HUViewControllerDismissalRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, a3);
    v7->_animated = 1;
  }

  return v7;
}

@end