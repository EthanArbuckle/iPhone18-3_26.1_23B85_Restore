@interface _DOCViewStyleSelectorAXIdentifier
+ (NSString)column;
+ (NSString)grid;
+ (NSString)list;
@end

@implementation _DOCViewStyleSelectorAXIdentifier

+ (NSString)grid
{
  v2 = [a1 idBase];
  v3 = composedID(v2, @"grid");

  return v3;
}

+ (NSString)list
{
  v2 = [a1 idBase];
  v3 = composedID(v2, @"list");

  return v3;
}

+ (NSString)column
{
  v2 = [a1 idBase];
  v3 = composedID(v2, @"column");

  return v3;
}

@end