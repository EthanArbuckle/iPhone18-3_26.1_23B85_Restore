@interface ODDChoose
- (ODDChoose)init;
- (id)description;
@end

@implementation ODDChoose

- (ODDChoose)init
{
  v6.receiver = self;
  v6.super_class = ODDChoose;
  v2 = [(ODDChoose *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mWhens = v2->mWhens;
    v2->mWhens = v3;
  }

  return v2;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = ODDChoose;
  v2 = [(ODDLayoutObject *)&v4 description];

  return v2;
}

@end