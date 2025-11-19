@interface XRXMLTextElementParser
- (void)_handleCompletion;
@end

@implementation XRXMLTextElementParser

- (void)_handleCompletion
{
  parent = self->super.super.parent;
  v9 = objc_msgSend_elementName(self, a2, v2, v3, v4);
  objc_msgSend_setValue_forElementName_(parent, v7, self, v9, v8);
}

@end