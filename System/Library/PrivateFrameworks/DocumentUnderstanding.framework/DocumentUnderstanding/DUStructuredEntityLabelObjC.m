@interface DUStructuredEntityLabelObjC
- (DUStructuredEntityLabelObjC)init;
@end

@implementation DUStructuredEntityLabelObjC

- (DUStructuredEntityLabelObjC)init
{
  v7.receiver = self;
  v7.super_class = DUStructuredEntityLabelObjC;
  v2 = [(DUStructuredEntityLabelObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding27DUStructuredExtractionLabel);
    underlying = v2->_underlying;
    v2->_underlying = v3;

    v5 = v2;
  }

  return v2;
}

@end