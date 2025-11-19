@interface DUDocumentUIElementObjC
- (CGPoint)absoluteOriginOnScreen;
- (CGRect)frameInWindow;
- (DUDocumentUIElementObjC)init;
- (void)setClassDescriptor:(id)a3;
- (void)setSuperviewClassNames:(id)a3;
- (void)setText:(id)a3;
- (void)setVersion:(id)a3;
@end

@implementation DUDocumentUIElementObjC

- (CGPoint)absoluteOriginOnScreen
{
  objc_msgSend_absoluteOriginOnScreen(self->_underlyingElement, a2, v2, v3, v4);
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGRect)frameInWindow
{
  objc_msgSend_frameInWindow(self->_underlyingElement, a2, v2, v3, v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)setSuperviewClassNames:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setSuperviewClassNames_(self->_underlyingElement, v6, v9, v7, v8);
}

- (void)setClassDescriptor:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setClassDescriptor_(self->_underlyingElement, v6, v9, v7, v8);
}

- (void)setVersion:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setVersion_(self->_underlyingElement, v6, v9, v7, v8);
}

- (void)setText:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setText_(self->_underlyingElement, v6, v9, v7, v8);
}

- (DUDocumentUIElementObjC)init
{
  v7.receiver = self;
  v7.super_class = DUDocumentUIElementObjC;
  v2 = [(DUDocumentUIElementObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding19DUDocumentUIElement);
    underlyingElement = v2->_underlyingElement;
    v2->_underlyingElement = v3;

    v5 = v2;
  }

  return v2;
}

@end