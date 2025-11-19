@interface DUDocumentHTMLDataObjC
- (DUDocumentEmailDataObjC)documentEmailData;
- (DUDocumentHTMLDataObjC)init;
- (void)setDocumentEmailData:(id)a3;
- (void)setHtmlString:(id)a3;
@end

@implementation DUDocumentHTMLDataObjC

- (void)setDocumentEmailData:(id)a3
{
  v9 = objc_msgSend_emailDataForObjCEmailData_(DUObjCCompatibilityUtils, a2, a3, v3, v4);
  objc_msgSend_setDocumentEmailData_(self->_underlyingElement, v6, v9, v7, v8);
}

- (DUDocumentEmailDataObjC)documentEmailData
{
  v6 = objc_msgSend_documentEmailData(self->_underlyingElement, a2, v2, v3, v4);

  if (v6)
  {
    v11 = objc_msgSend_documentEmailData(self->_underlyingElement, v7, v8, v9, v10);
    v15 = objc_msgSend_objCEmailDataForEmailData_(DUObjCCompatibilityUtils, v12, v11, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setHtmlString:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setHtmlString_(self->_underlyingElement, v6, v9, v7, v8);
}

- (DUDocumentHTMLDataObjC)init
{
  v7.receiver = self;
  v7.super_class = DUDocumentHTMLDataObjC;
  v2 = [(DUDocumentHTMLDataObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding18DUDocumentHTMLData);
    underlyingElement = v2->_underlyingElement;
    v2->_underlyingElement = v3;

    v5 = v2;
  }

  return v2;
}

@end