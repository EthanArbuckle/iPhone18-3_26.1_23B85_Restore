@interface ODDLayoutObjectList
- (ODDLayoutObjectList)init;
@end

@implementation ODDLayoutObjectList

- (ODDLayoutObjectList)init
{
  v6.receiver = self;
  v6.super_class = ODDLayoutObjectList;
  v2 = [(ODDLayoutObjectList *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mChildren = v2->mChildren;
    v2->mChildren = v3;
  }

  return v2;
}

@end