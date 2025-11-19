@interface DUGlobalTopicSetIdentifierObjC
- (DUGlobalTopicSetIdentifierObjC)init;
@end

@implementation DUGlobalTopicSetIdentifierObjC

- (DUGlobalTopicSetIdentifierObjC)init
{
  v7.receiver = self;
  v7.super_class = DUGlobalTopicSetIdentifierObjC;
  v2 = [(DUGlobalTopicSetIdentifierObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier);
    underlying = v2->_underlying;
    v2->_underlying = v3;

    v5 = v2;
  }

  return v2;
}

@end