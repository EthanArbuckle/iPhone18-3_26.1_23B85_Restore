@interface CalSpotlightQueryController
+ (id)searchWithString:(id)a3 clientBundleID:(id)a4 completionHandler:(id)a5;
@end

@implementation CalSpotlightQueryController

+ (id)searchWithString:(id)a3 clientBundleID:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CalSpotlightPendingSearch alloc] initWithString:v9 clientBundleID:v8 completionHandler:v7];

  return v10;
}

@end