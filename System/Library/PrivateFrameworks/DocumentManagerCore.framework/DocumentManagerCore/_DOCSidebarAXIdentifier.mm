@interface _DOCSidebarAXIdentifier
+ (id)headerWithTitle:(id)title;
+ (id)itemWithTitle:(id)title;
@end

@implementation _DOCSidebarAXIdentifier

+ (id)headerWithTitle:(id)title
{
  titleCopy = title;
  idBase = [self idBase];
  v6 = composedID(@"header", titleCopy);

  v7 = composedID(idBase, v6);

  return v7;
}

+ (id)itemWithTitle:(id)title
{
  titleCopy = title;
  idBase = [self idBase];
  v6 = composedID(@"item", titleCopy);

  v7 = composedID(idBase, v6);

  return v7;
}

@end