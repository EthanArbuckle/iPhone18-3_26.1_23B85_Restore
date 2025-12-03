@interface IATextInputActionsSessionKBMenuDismissAction
- (IATextInputActionsSessionKBMenuDismissAction)initWithCoder:(id)coder;
- (id)initFromDictionary:(id)dictionary;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IATextInputActionsSessionKBMenuDismissAction

- (IATextInputActionsSessionKBMenuDismissAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = IATextInputActionsSessionKBMenuDismissAction;
  v5 = [(IATextInputActionsSessionAction *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"KBMenuDismissSource");
    v5->_KBMenuDismissSource = objc_msgSend_unsignedLongValue(v8, v9, v10);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = IATextInputActionsSessionKBMenuDismissAction;
  coderCopy = coder;
  [(IATextInputActionsSessionAction *)&v8 encodeWithCoder:coderCopy];
  v6 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, self->_KBMenuDismissSource, v8.receiver, v8.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"KBMenuDismissSource");
}

- (id)initFromDictionary:(id)dictionary
{
  v10.receiver = self;
  v10.super_class = IATextInputActionsSessionKBMenuDismissAction;
  dictionaryCopy = dictionary;
  v4 = [(IATextInputActionsSessionAction *)&v10 initFromDictionary:dictionaryCopy];
  v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"KBMenuDismissSource", v10.receiver, v10.super_class);

  v4[23] = objc_msgSend_unsignedLongValue(v6, v7, v8);
  return v4;
}

- (id)toDictionary
{
  v8.receiver = self;
  v8.super_class = IATextInputActionsSessionKBMenuDismissAction;
  toDictionary = [(IATextInputActionsSessionAction *)&v8 toDictionary];
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, self->_KBMenuDismissSource);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v6, v5, @"KBMenuDismissSource");

  return toDictionary;
}

@end