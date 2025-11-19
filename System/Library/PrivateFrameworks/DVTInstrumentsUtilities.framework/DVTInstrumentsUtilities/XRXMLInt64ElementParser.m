@interface XRXMLInt64ElementParser
- (void)_handleCompletion;
@end

@implementation XRXMLInt64ElementParser

- (void)_handleCompletion
{
  v23 = 0;
  v6 = objc_msgSend_stringValue(self, a2, v2, v3, v4);
  LongLong = objc_msgSend_xr_getLongLong_(v6, v7, &v23, v8, v9);

  if (LongLong)
  {
    parent = self->super.super.parent;
    v15 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v11, v23, v12, v13);
    v20 = objc_msgSend_elementName(self, v16, v17, v18, v19);
    objc_msgSend_setValue_forElementName_(parent, v21, v15, v20, v22);
  }
}

@end