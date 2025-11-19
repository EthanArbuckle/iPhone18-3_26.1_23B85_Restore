@interface ConcreteCategoriesPrimitives
- (id)resolveBundleIdentifier:(id)a3 from:(int64_t)a4 to:(int64_t)a5;
@end

@implementation ConcreteCategoriesPrimitives

- (id)resolveBundleIdentifier:(id)a3 from:(int64_t)a4 to:(int64_t)a5
{
  v7 = sub_195FA08B8();
  v9 = v8;

  sub_195EC3F78(v7, v9, a4, a5);
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