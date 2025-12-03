@interface DUDebugInfoObjC
- (DUDebugInfoObjC)init;
- (void)setDebugString:(id)string;
@end

@implementation DUDebugInfoObjC

- (void)setDebugString:(id)string
{
  v9 = objc_msgSend_copy(string, a2, string, v3, v4);
  objc_msgSend_setDebugString_(self->_underlying, v6, v9, v7, v8);
}

- (DUDebugInfoObjC)init
{
  v7.receiver = self;
  v7.super_class = DUDebugInfoObjC;
  v2 = [(DUDebugInfoObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding11DUDebugInfo);
    underlying = v2->_underlying;
    v2->_underlying = v3;

    v5 = v2;
  }

  return v2;
}

@end