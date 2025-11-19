@interface IATextInputActionsSessionKBMenuInteractionAction
- (IATextInputActionsSessionKBMenuInteractionAction)initWithCoder:(id)a3;
- (id)initFromDictionary:(id)a3;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IATextInputActionsSessionKBMenuInteractionAction

- (IATextInputActionsSessionKBMenuInteractionAction)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = IATextInputActionsSessionKBMenuInteractionAction;
  v5 = [(IATextInputActionsSessionAction *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"KBMenuInteractionSource");
    v5->_KBMenuInteractionSource = objc_msgSend_unsignedLongValue(v8, v9, v10);

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"KBMenuSelectedAction");
    v5->_KBMenuSelectedAction = objc_msgSend_unsignedLongValue(v13, v14, v15);

    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v17, v16, @"updatedInputMode");
    updatedInputMode = v5->_updatedInputMode;
    v5->_updatedInputMode = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = IATextInputActionsSessionKBMenuInteractionAction;
  v4 = a3;
  [(IATextInputActionsSessionAction *)&v12 encodeWithCoder:v4];
  v6 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, self->_KBMenuInteractionSource, v12.receiver, v12.super_class);
  objc_msgSend_encodeObject_forKey_(v4, v7, v6, @"KBMenuInteractionSource");

  v9 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v8, self->_KBMenuSelectedAction);
  objc_msgSend_encodeObject_forKey_(v4, v10, v9, @"KBMenuSelectedAction");

  objc_msgSend_encodeObject_forKey_(v4, v11, self->_updatedInputMode, @"updatedInputMode");
}

- (id)initFromDictionary:(id)a3
{
  v17.receiver = self;
  v17.super_class = IATextInputActionsSessionKBMenuInteractionAction;
  v3 = a3;
  v4 = [(IATextInputActionsSessionAction *)&v17 initFromDictionary:v3];
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, @"KBMenuInteractionSource", v17.receiver, v17.super_class);
  v4[23] = objc_msgSend_unsignedLongValue(v6, v7, v8);

  v10 = objc_msgSend_objectForKeyedSubscript_(v3, v9, @"KBMenuSelectedAction");
  v4[24] = objc_msgSend_unsignedLongValue(v10, v11, v12);

  v14 = objc_msgSend_objectForKeyedSubscript_(v3, v13, @"updatedInputMode");

  v15 = v4[25];
  v4[25] = v14;

  return v4;
}

- (id)toDictionary
{
  v12.receiver = self;
  v12.super_class = IATextInputActionsSessionKBMenuInteractionAction;
  v3 = [(IATextInputActionsSessionAction *)&v12 toDictionary];
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, self->_KBMenuInteractionSource);
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v6, v5, @"KBMenuInteractionSource");

  v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v7, self->_KBMenuSelectedAction);
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v9, v8, @"KBMenuSelectedAction");

  objc_msgSend_setObjectIfNotNil_forKey_(v3, v10, self->_updatedInputMode, @"updatedInputMode");

  return v3;
}

@end