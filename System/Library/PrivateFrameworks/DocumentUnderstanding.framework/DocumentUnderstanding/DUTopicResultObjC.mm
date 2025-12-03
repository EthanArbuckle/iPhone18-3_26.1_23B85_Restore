@interface DUTopicResultObjC
- (DUGlobalTopicSetIdentifierObjC)topicSet;
- (DUTopicResultObjC)init;
- (void)setTopicSet:(id)set;
@end

@implementation DUTopicResultObjC

- (void)setTopicSet:(id)set
{
  v9 = objc_msgSend_globalTopicSetIdentifierForObjCGlobalTopicSetIdentifier_(DUObjCCompatibilityUtils, a2, set, v3, v4);
  objc_msgSend_setTopicSet_(self->_underlying, v6, v9, v7, v8);
}

- (DUGlobalTopicSetIdentifierObjC)topicSet
{
  v5 = objc_msgSend_topicSet(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objCGlobalTopicSetIdentifierForGlobalTopicSetIdentifier_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (DUTopicResultObjC)init
{
  v7.receiver = self;
  v7.super_class = DUTopicResultObjC;
  v2 = [(DUTopicResultObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding13DUTopicResult);
    underlying = v2->_underlying;
    v2->_underlying = v3;

    v5 = v2;
  }

  return v2;
}

@end