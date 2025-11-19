@interface XRXMLCollapsedStringElementParser
- (void)_handleCompletion;
@end

@implementation XRXMLCollapsedStringElementParser

- (void)_handleCompletion
{
  parent = self->super.super.parent;
  v14 = objc_msgSend_collapsedStringValue(self, a2, v2, v3, v4);
  v11 = objc_msgSend_elementName(self, v7, v8, v9, v10);
  objc_msgSend_setValue_forElementName_(parent, v12, v14, v11, v13);
}

@end