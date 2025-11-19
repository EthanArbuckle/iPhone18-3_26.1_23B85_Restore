@interface DUFoundInEventClassificationResultObjC
- (DUFoundInEventClassificationResultObjC)init;
@end

@implementation DUFoundInEventClassificationResultObjC

- (DUFoundInEventClassificationResultObjC)init
{
  v7.receiver = self;
  v7.super_class = DUFoundInEventClassificationResultObjC;
  v2 = [(DUFoundInEventClassificationResultObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding34DUFoundInEventClassificationResult);
    underlying = v2->_underlying;
    v2->_underlying = v3;

    v5 = v2;
  }

  return v2;
}

@end