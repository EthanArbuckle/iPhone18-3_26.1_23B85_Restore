@interface _DOCNavigationButtonAXIdentifier
+ (NSString)backInHistory;
+ (NSString)forwardInHistory;
@end

@implementation _DOCNavigationButtonAXIdentifier

+ (NSString)backInHistory
{
  v2 = [a1 idBase];
  v3 = composedID(v2, @"backInHistory");

  return v3;
}

+ (NSString)forwardInHistory
{
  v2 = [a1 idBase];
  v3 = composedID(v2, @"forwardInHistory");

  return v3;
}

@end