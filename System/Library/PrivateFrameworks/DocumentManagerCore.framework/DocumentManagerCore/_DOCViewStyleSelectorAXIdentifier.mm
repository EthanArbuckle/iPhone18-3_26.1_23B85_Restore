@interface _DOCViewStyleSelectorAXIdentifier
+ (NSString)column;
+ (NSString)grid;
+ (NSString)list;
@end

@implementation _DOCViewStyleSelectorAXIdentifier

+ (NSString)grid
{
  idBase = [self idBase];
  v3 = composedID(idBase, @"grid");

  return v3;
}

+ (NSString)list
{
  idBase = [self idBase];
  v3 = composedID(idBase, @"list");

  return v3;
}

+ (NSString)column
{
  idBase = [self idBase];
  v3 = composedID(idBase, @"column");

  return v3;
}

@end