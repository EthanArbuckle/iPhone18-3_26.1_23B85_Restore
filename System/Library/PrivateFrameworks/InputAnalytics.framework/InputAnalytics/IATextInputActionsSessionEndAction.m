@interface IATextInputActionsSessionEndAction
- (IATextInputActionsSessionEndAction)initWithCoder:(id)a3;
- (id)description;
- (id)initFromDictionary:(id)a3;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IATextInputActionsSessionEndAction

- (id)description
{
  v22.receiver = self;
  v22.super_class = IATextInputActionsSessionEndAction;
  v3 = [(IATextInputActionsSessionAction *)&v22 description];
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5);
  v9 = objc_msgSend_keyboardTrialParameters(self, v7, v8);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_1D4623B10;
  v20 = &unk_1E848A860;
  v21 = v6;
  v10 = v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v11, &v17);

  v13 = objc_msgSend_componentsJoinedByString_(v10, v12, @", ");
  v15 = objc_msgSend_stringByAppendingFormat_(v3, v14, @", %@", v13, v17, v18, v19, v20);

  return v15;
}

- (IATextInputActionsSessionEndAction)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IATextInputActionsSessionEndAction;
  v5 = [(IATextInputActionsSessionAction *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeDictionaryWithKeysOfClass_objectsOfClass_forKey_(v4, v8, v6, v7, @"keyboardTrialParameters");
    keyboardTrialParameters = v5->_keyboardTrialParameters;
    v5->_keyboardTrialParameters = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = IATextInputActionsSessionEndAction;
  v4 = a3;
  [(IATextInputActionsSessionAction *)&v6 encodeWithCoder:v4];
  objc_msgSend_encodeObject_forKey_(v4, v5, self->_keyboardTrialParameters, @"keyboardTrialParameters", v6.receiver, v6.super_class);
}

- (id)initFromDictionary:(id)a3
{
  v9.receiver = self;
  v9.super_class = IATextInputActionsSessionEndAction;
  v3 = a3;
  v4 = [(IATextInputActionsSessionAction *)&v9 initFromDictionary:v3];
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, @"keyboardTrialParameters", v9.receiver, v9.super_class);

  v7 = v4[23];
  v4[23] = v6;

  return v4;
}

- (id)toDictionary
{
  v6.receiver = self;
  v6.super_class = IATextInputActionsSessionEndAction;
  v3 = [(IATextInputActionsSessionAction *)&v6 toDictionary];
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v4, self->_keyboardTrialParameters, @"keyboardTrialParameters");

  return v3;
}

@end