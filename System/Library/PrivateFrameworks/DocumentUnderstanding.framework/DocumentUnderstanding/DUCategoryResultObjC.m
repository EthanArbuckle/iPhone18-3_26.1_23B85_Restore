@interface DUCategoryResultObjC
- (DUCategoryResultObjC)init;
@end

@implementation DUCategoryResultObjC

- (DUCategoryResultObjC)init
{
  v7.receiver = self;
  v7.super_class = DUCategoryResultObjC;
  v2 = [(DUCategoryResultObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding16DUCategoryResult);
    underlying = v2->_underlying;
    v2->_underlying = v3;

    v5 = v2;
  }

  return v2;
}

@end