@interface HUHomeHubsAndBridgesHelper
+ (id)serviceDetailVCWithItem:(id)a3;
@end

@implementation HUHomeHubsAndBridgesHelper

+ (id)serviceDetailVCWithItem:(id)a3
{
  v3 = a3;
  v4 = +[HUViewControllerRegistry sharedInstance];
  v5 = [objc_alloc(objc_msgSend(v4 viewControllerClassForIdentifier:{@"serviceLikeItemDetails", "initWithServiceLikeItem:", v3}];

  return v5;
}

@end