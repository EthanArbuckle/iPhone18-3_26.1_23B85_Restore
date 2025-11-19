@interface IATextInputActionsSessionKBMenuAppearAction
- (IATextInputActionsSessionKBMenuAppearAction)initWithCoder:(id)a3;
- (id)initFromDictionary:(id)a3;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IATextInputActionsSessionKBMenuAppearAction

- (IATextInputActionsSessionKBMenuAppearAction)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IATextInputActionsSessionKBMenuAppearAction;
  v5 = [(IATextInputActionsSessionAction *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"glomojiType");
    v5->_glomojiType = objc_msgSend_unsignedLongValue(v8, v9, v10);

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"originalInputMode");
    originalInputMode = v5->_originalInputMode;
    v5->_originalInputMode = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = IATextInputActionsSessionKBMenuAppearAction;
  v4 = a3;
  [(IATextInputActionsSessionAction *)&v9 encodeWithCoder:v4];
  v6 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, self->_glomojiType, v9.receiver, v9.super_class);
  objc_msgSend_encodeObject_forKey_(v4, v7, v6, @"glomojiType");

  objc_msgSend_encodeObject_forKey_(v4, v8, self->_originalInputMode, @"originalInputMode");
}

- (id)initFromDictionary:(id)a3
{
  v13.receiver = self;
  v13.super_class = IATextInputActionsSessionKBMenuAppearAction;
  v3 = a3;
  v4 = [(IATextInputActionsSessionAction *)&v13 initFromDictionary:v3];
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, @"glomojiType", v13.receiver, v13.super_class);
  v4[23] = objc_msgSend_unsignedLongValue(v6, v7, v8);

  v10 = objc_msgSend_objectForKeyedSubscript_(v3, v9, @"originalInputMode");

  v11 = v4[24];
  v4[24] = v10;

  return v4;
}

- (id)toDictionary
{
  v9.receiver = self;
  v9.super_class = IATextInputActionsSessionKBMenuAppearAction;
  v3 = [(IATextInputActionsSessionAction *)&v9 toDictionary];
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, self->_glomojiType);
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v6, v5, @"glomojiType");

  objc_msgSend_setObjectIfNotNil_forKey_(v3, v7, self->_originalInputMode, @"originalInputMode");

  return v3;
}

@end