@interface XRXMLBooleanElementParser
- (void)_handleCompletion;
@end

@implementation XRXMLBooleanElementParser

- (void)_handleCompletion
{
  v5 = objc_msgSend_rangeOfString_(self->super.accumulator, a2, @"false", v2, v3) == 0x7FFFFFFFFFFFFFFFLL;
  parent = self->super.super.parent;
  v17 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, v5, v8, v9);
  v14 = objc_msgSend_elementName(self, v10, v11, v12, v13);
  objc_msgSend_setValue_forElementName_(parent, v15, v17, v14, v16);
}

@end