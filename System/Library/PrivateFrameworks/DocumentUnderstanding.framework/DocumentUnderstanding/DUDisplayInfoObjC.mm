@interface DUDisplayInfoObjC
- (CGPoint)absoluteOriginOnScreen;
- (CGRect)frameInWindow;
- (DUDisplayInfoObjC)init;
@end

@implementation DUDisplayInfoObjC

- (CGPoint)absoluteOriginOnScreen
{
  objc_msgSend_absoluteOriginOnScreen(self->_underlying, a2, v2, v3, v4);
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGRect)frameInWindow
{
  objc_msgSend_frameInWindow(self->_underlying, a2, v2, v3, v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (DUDisplayInfoObjC)init
{
  v7.receiver = self;
  v7.super_class = DUDisplayInfoObjC;
  v2 = [(DUDisplayInfoObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding13DUDisplayInfo);
    underlying = v2->_underlying;
    v2->_underlying = v3;

    v5 = v2;
  }

  return v2;
}

@end