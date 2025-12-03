@interface XRSchemaErrorReplacementElement
- (XRSchemaErrorReplacementElement)initWithName:(id)name key:(id)key replacementString:(id)string;
@end

@implementation XRSchemaErrorReplacementElement

- (XRSchemaErrorReplacementElement)initWithName:(id)name key:(id)key replacementString:(id)string
{
  nameCopy = name;
  keyCopy = key;
  stringCopy = string;
  v23.receiver = self;
  v23.super_class = XRSchemaErrorReplacementElement;
  v11 = [(XRSchemaErrorReplacementElement *)&v23 init];
  v15 = v11;
  if (v11)
  {
    objc_msgSend_setName_(v11, v12, nameCopy, v13, v14);
    objc_msgSend_setKey_(v15, v16, keyCopy, v17, v18);
    objc_msgSend_setReplacementString_(v15, v19, stringCopy, v20, v21);
  }

  return v15;
}

@end