@interface IATextInputActionsSessionKBMenuAppearAction
- (IATextInputActionsSessionKBMenuAppearAction)initWithCoder:(id)coder;
- (id)initFromDictionary:(id)dictionary;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IATextInputActionsSessionKBMenuAppearAction

- (IATextInputActionsSessionKBMenuAppearAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = IATextInputActionsSessionKBMenuAppearAction;
  v5 = [(IATextInputActionsSessionAction *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"glomojiType");
    v5->_glomojiType = objc_msgSend_unsignedLongValue(v8, v9, v10);

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"originalInputMode");
    originalInputMode = v5->_originalInputMode;
    v5->_originalInputMode = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = IATextInputActionsSessionKBMenuAppearAction;
  coderCopy = coder;
  [(IATextInputActionsSessionAction *)&v9 encodeWithCoder:coderCopy];
  v6 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, self->_glomojiType, v9.receiver, v9.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"glomojiType");

  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_originalInputMode, @"originalInputMode");
}

- (id)initFromDictionary:(id)dictionary
{
  v13.receiver = self;
  v13.super_class = IATextInputActionsSessionKBMenuAppearAction;
  dictionaryCopy = dictionary;
  v4 = [(IATextInputActionsSessionAction *)&v13 initFromDictionary:dictionaryCopy];
  v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"glomojiType", v13.receiver, v13.super_class);
  v4[23] = objc_msgSend_unsignedLongValue(v6, v7, v8);

  v10 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v9, @"originalInputMode");

  v11 = v4[24];
  v4[24] = v10;

  return v4;
}

- (id)toDictionary
{
  v9.receiver = self;
  v9.super_class = IATextInputActionsSessionKBMenuAppearAction;
  toDictionary = [(IATextInputActionsSessionAction *)&v9 toDictionary];
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, self->_glomojiType);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v6, v5, @"glomojiType");

  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v7, self->_originalInputMode, @"originalInputMode");

  return toDictionary;
}

@end