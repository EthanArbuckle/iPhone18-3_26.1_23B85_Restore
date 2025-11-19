@interface HUViewControllerPresentationRequest
+ (id)requestWithViewController:(id)a3;
- (HUViewControllerPresentationRequest)initWithViewController:(id)a3;
- (id)asGeneric;
@end

@implementation HUViewControllerPresentationRequest

- (id)asGeneric
{
  sub_20CFA7E00();
  v2 = HUViewControllerPresentationRequest.asGeneric()();

  return v2;
}

+ (id)requestWithViewController:(id)a3
{
  v3 = a3;
  v4 = [[HUViewControllerPresentationRequest alloc] initWithViewController:v3];

  return v4;
}

- (HUViewControllerPresentationRequest)initWithViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUViewControllerPresentationRequest;
  v6 = [(HUViewControllerPresentationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, a3);
    v7->_animated = 1;
  }

  return v7;
}

@end