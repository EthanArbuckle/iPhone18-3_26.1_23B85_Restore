@interface _DOCNavigationButtonAXIdentifier
+ (NSString)backInHistory;
+ (NSString)forwardInHistory;
@end

@implementation _DOCNavigationButtonAXIdentifier

+ (NSString)backInHistory
{
  idBase = [self idBase];
  v3 = composedID(idBase, @"backInHistory");

  return v3;
}

+ (NSString)forwardInHistory
{
  idBase = [self idBase];
  v3 = composedID(idBase, @"forwardInHistory");

  return v3;
}

@end