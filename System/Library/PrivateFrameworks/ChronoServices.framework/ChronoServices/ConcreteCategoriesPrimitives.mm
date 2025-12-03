@interface ConcreteCategoriesPrimitives
- (id)resolveBundleIdentifier:(id)identifier from:(int64_t)from to:(int64_t)to;
@end

@implementation ConcreteCategoriesPrimitives

- (id)resolveBundleIdentifier:(id)identifier from:(int64_t)from to:(int64_t)to
{
  v7 = sub_195FA08B8();
  v9 = v8;

  sub_195EC3F78(v7, v9, from, to);
  v11 = v10;

  if (v11)
  {
    v12 = sub_195FA0888();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end