@interface ODDShape
- (ODDShape)init;
- (id)description;
@end

@implementation ODDShape

- (ODDShape)init
{
  v6.receiver = self;
  v6.super_class = ODDShape;
  v2 = [(ODDShape *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mAdjustments = v2->mAdjustments;
    v2->mAdjustments = v3;
  }

  return v2;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = ODDShape;
  v2 = [(ODDLayoutObject *)&v4 description];

  return v2;
}

@end