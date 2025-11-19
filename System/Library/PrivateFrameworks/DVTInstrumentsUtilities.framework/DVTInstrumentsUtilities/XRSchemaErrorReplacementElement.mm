@interface XRSchemaErrorReplacementElement
- (XRSchemaErrorReplacementElement)initWithName:(id)a3 key:(id)a4 replacementString:(id)a5;
@end

@implementation XRSchemaErrorReplacementElement

- (XRSchemaErrorReplacementElement)initWithName:(id)a3 key:(id)a4 replacementString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = XRSchemaErrorReplacementElement;
  v11 = [(XRSchemaErrorReplacementElement *)&v23 init];
  v15 = v11;
  if (v11)
  {
    objc_msgSend_setName_(v11, v12, v8, v13, v14);
    objc_msgSend_setKey_(v15, v16, v9, v17, v18);
    objc_msgSend_setReplacementString_(v15, v19, v10, v20, v21);
  }

  return v15;
}

@end