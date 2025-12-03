@interface DUDocumentUIElementObjC
- (CGPoint)absoluteOriginOnScreen;
- (CGRect)frameInWindow;
- (DUDocumentUIElementObjC)init;
- (void)setClassDescriptor:(id)descriptor;
- (void)setSuperviewClassNames:(id)names;
- (void)setText:(id)text;
- (void)setVersion:(id)version;
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

- (void)setSuperviewClassNames:(id)names
{
  v9 = objc_msgSend_copy(names, a2, names, v3, v4);
  objc_msgSend_setSuperviewClassNames_(self->_underlyingElement, v6, v9, v7, v8);
}

- (void)setClassDescriptor:(id)descriptor
{
  v9 = objc_msgSend_copy(descriptor, a2, descriptor, v3, v4);
  objc_msgSend_setClassDescriptor_(self->_underlyingElement, v6, v9, v7, v8);
}

- (void)setVersion:(id)version
{
  v9 = objc_msgSend_copy(version, a2, version, v3, v4);
  objc_msgSend_setVersion_(self->_underlyingElement, v6, v9, v7, v8);
}

- (void)setText:(id)text
{
  v9 = objc_msgSend_copy(text, a2, text, v3, v4);
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