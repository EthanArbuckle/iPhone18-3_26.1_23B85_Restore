@interface CalSpotlightQueryController
+ (id)searchWithString:(id)string clientBundleID:(id)d completionHandler:(id)handler;
@end

@implementation CalSpotlightQueryController

+ (id)searchWithString:(id)string clientBundleID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  stringCopy = string;
  v10 = [[CalSpotlightPendingSearch alloc] initWithString:stringCopy clientBundleID:dCopy completionHandler:handlerCopy];

  return v10;
}

@end