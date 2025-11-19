@interface _DOCSidebarAXIdentifier
+ (id)headerWithTitle:(id)a3;
+ (id)itemWithTitle:(id)a3;
@end

@implementation _DOCSidebarAXIdentifier

+ (id)headerWithTitle:(id)a3
{
  v4 = a3;
  v5 = [a1 idBase];
  v6 = composedID(@"header", v4);

  v7 = composedID(v5, v6);

  return v7;
}

+ (id)itemWithTitle:(id)a3
{
  v4 = a3;
  v5 = [a1 idBase];
  v6 = composedID(@"item", v4);

  v7 = composedID(v5, v6);

  return v7;
}

@end