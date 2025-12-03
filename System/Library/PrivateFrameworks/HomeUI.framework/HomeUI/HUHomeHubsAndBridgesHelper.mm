@interface HUHomeHubsAndBridgesHelper
+ (id)serviceDetailVCWithItem:(id)item;
@end

@implementation HUHomeHubsAndBridgesHelper

+ (id)serviceDetailVCWithItem:(id)item
{
  itemCopy = item;
  v4 = +[HUViewControllerRegistry sharedInstance];
  v5 = [objc_alloc(objc_msgSend(v4 viewControllerClassForIdentifier:{@"serviceLikeItemDetails", "initWithServiceLikeItem:", itemCopy}];

  return v5;
}

@end