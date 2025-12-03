@interface HUViewControllerPresentationRequest
+ (id)requestWithViewController:(id)controller;
- (HUViewControllerPresentationRequest)initWithViewController:(id)controller;
- (id)asGeneric;
@end

@implementation HUViewControllerPresentationRequest

- (id)asGeneric
{
  sub_20CFA7E00();
  v2 = HUViewControllerPresentationRequest.asGeneric()();

  return v2;
}

+ (id)requestWithViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [[HUViewControllerPresentationRequest alloc] initWithViewController:controllerCopy];

  return v4;
}

- (HUViewControllerPresentationRequest)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = HUViewControllerPresentationRequest;
  v6 = [(HUViewControllerPresentationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, controller);
    v7->_animated = 1;
  }

  return v7;
}

@end