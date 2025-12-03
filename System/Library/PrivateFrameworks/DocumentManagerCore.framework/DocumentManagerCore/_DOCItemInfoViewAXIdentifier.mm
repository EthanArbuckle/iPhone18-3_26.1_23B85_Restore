@interface _DOCItemInfoViewAXIdentifier
+ (NSString)actionsContainer;
+ (NSString)infoContainer;
+ (NSString)levelOfDetailButton;
+ (id)metadataRowWithLabel:(id)label;
@end

@implementation _DOCItemInfoViewAXIdentifier

+ (NSString)infoContainer
{
  idBase = [self idBase];
  v3 = composedID(idBase, @"infoContainer");

  return v3;
}

+ (NSString)actionsContainer
{
  idBase = [self idBase];
  v3 = composedID(idBase, @"actionsContainer");

  return v3;
}

+ (NSString)levelOfDetailButton
{
  idBase = [self idBase];
  v3 = composedID(idBase, @"levelOfDetailButton");

  return v3;
}

+ (id)metadataRowWithLabel:(id)label
{
  labelCopy = label;
  idBase = [self idBase];
  v6 = composedID(@"metadata", labelCopy);

  v7 = composedID(idBase, v6);

  return v7;
}

@end