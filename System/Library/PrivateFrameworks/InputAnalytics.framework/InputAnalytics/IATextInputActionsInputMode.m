@interface IATextInputActionsInputMode
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (IATextInputActionsInputMode)initWithCoder:(id)a3;
- (IATextInputActionsInputMode)initWithLanguage:(id)a3 region:(id)a4 keyboardVariant:(id)a5 keyboardLayout:(id)a6 keyboardType:(id)a7 inputModeIdentifier:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromDictionary:(id)a3;
- (id)inputModeUniqueString;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IATextInputActionsInputMode

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v4, self->_language, @"language");
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v5, self->_region, @"region");
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v6, self->_keyboardVariant, @"keyboardVariant");
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v7, self->_keyboardLayout, @"keyboardLayout");
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v8, self->_keyboardType, @"keyboardType");
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v9, self->_inputModeIdentifier, @"inputModeIdentifier");

  return v3;
}

- (BOOL)isEmpty
{
  v6 = objc_msgSend_language(self, a2, v2);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v10 = objc_msgSend_region(self, v4, v5);
    if (v10)
    {
      v7 = 0;
    }

    else
    {
      v13 = objc_msgSend_keyboardVariant(self, v8, v9);
      if (v13)
      {
        v7 = 0;
      }

      else
      {
        v16 = objc_msgSend_keyboardLayout(self, v11, v12);
        if (v16)
        {
          v7 = 0;
        }

        else
        {
          v19 = objc_msgSend_keyboardType(self, v14, v15);
          if (v19)
          {
            v7 = 0;
          }

          else
          {
            v20 = objc_msgSend_inputModeIdentifier(self, v17, v18);
            v7 = v20 == 0;
          }
        }
      }
    }
  }

  return v7;
}

- (id)inputModeUniqueString
{
  v37 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_language(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = @"None";
  }

  v36 = v8;
  v9 = objc_msgSend_region(self, v5, v6);
  v12 = v9;
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = @"None";
  }

  v35 = v13;
  v14 = objc_msgSend_keyboardVariant(self, v10, v11);
  v17 = v14;
  if (v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = @"None";
  }

  v19 = objc_msgSend_keyboardLayout(self, v15, v16);
  v22 = v19;
  if (v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = @"None";
  }

  v24 = objc_msgSend_keyboardType(self, v20, v21);
  v27 = v24;
  if (v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = @"None";
  }

  v29 = objc_msgSend_inputModeIdentifier(self, v25, v26);
  v31 = v29;
  if (v29)
  {
    v32 = v29;
  }

  else
  {
    v32 = @"None";
  }

  v33 = objc_msgSend_stringWithFormat_(v37, v30, @"%@%@%@%@%@%@%@%@%@%@%@", v36, @"≡", v35, @"≡", v18, @"≡", v23, @"≡", v28, @"≡", v32);

  return v33;
}

- (IATextInputActionsInputMode)initWithLanguage:(id)a3 region:(id)a4 keyboardVariant:(id)a5 keyboardLayout:(id)a6 keyboardType:(id)a7 inputModeIdentifier:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v29.receiver = self;
  v29.super_class = IATextInputActionsInputMode;
  v20 = [(IATextInputActionsInputMode *)&v29 init];
  v22 = v20;
  if (v20)
  {
    objc_msgSend_setLanguage_(v20, v21, v14);
    objc_msgSend_setRegion_(v22, v23, v15);
    objc_msgSend_setKeyboardVariant_(v22, v24, v16);
    objc_msgSend_setKeyboardLayout_(v22, v25, v17);
    objc_msgSend_setKeyboardType_(v22, v26, v18);
    objc_msgSend_setInputModeIdentifier_(v22, v27, v19);
  }

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(IATextInputActionsInputMode);
  v7 = objc_msgSend_language(self, v5, v6);
  objc_msgSend_setLanguage_(v4, v8, v7);

  v11 = objc_msgSend_region(self, v9, v10);
  objc_msgSend_setRegion_(v4, v12, v11);

  v15 = objc_msgSend_keyboardVariant(self, v13, v14);
  objc_msgSend_setKeyboardVariant_(v4, v16, v15);

  v19 = objc_msgSend_keyboardLayout(self, v17, v18);
  objc_msgSend_setKeyboardLayout_(v4, v20, v19);

  v23 = objc_msgSend_keyboardType(self, v21, v22);
  objc_msgSend_setKeyboardType_(v4, v24, v23);

  v27 = objc_msgSend_inputModeIdentifier(self, v25, v26);
  objc_msgSend_setInputModeIdentifier_(v4, v28, v27);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    isEqualToString = 0;
    if (v4 && (isKindOfClass & 1) != 0)
    {
      v7 = v4;
      v10 = objc_msgSend_inputModeUniqueString(self, v8, v9);
      v13 = objc_msgSend_inputModeUniqueString(v7, v11, v12);

      isEqualToString = objc_msgSend_isEqualToString_(v10, v14, v13);
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (IATextInputActionsInputMode)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = IATextInputActionsInputMode;
  v5 = [(IATextInputActionsInputMode *)&v31 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"language");
    language = v5->_language;
    v5->_language = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"region");
    region = v5->_region;
    v5->_region = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v14, @"keyboardVariant");
    keyboardVariant = v5->_keyboardVariant;
    v5->_keyboardVariant = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v19, v18, @"keyboardLayout");
    keyboardLayout = v5->_keyboardLayout;
    v5->_keyboardLayout = v20;

    v22 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v23, v22, @"keyboardType");
    keyboardType = v5->_keyboardType;
    v5->_keyboardType = v24;

    v26 = objc_opt_class();
    v28 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v27, v26, @"inputModeIdentifier");
    inputModeIdentifier = v5->_inputModeIdentifier;
    v5->_inputModeIdentifier = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  language = self->_language;
  v11 = a3;
  objc_msgSend_encodeObject_forKey_(v11, v5, language, @"language");
  objc_msgSend_encodeObject_forKey_(v11, v6, self->_region, @"region");
  objc_msgSend_encodeObject_forKey_(v11, v7, self->_keyboardVariant, @"keyboardVariant");
  objc_msgSend_encodeObject_forKey_(v11, v8, self->_keyboardLayout, @"keyboardLayout");
  objc_msgSend_encodeObject_forKey_(v11, v9, self->_keyboardType, @"keyboardType");
  objc_msgSend_encodeObject_forKey_(v11, v10, self->_inputModeIdentifier, @"inputModeIdentifier");
}

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = IATextInputActionsInputMode;
  v6 = [(IATextInputActionsInputMode *)&v26 init];
  if (v6)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"language");
    language = v6->_language;
    v6->_language = v7;

    v10 = objc_msgSend_objectForKeyedSubscript_(v4, v9, @"region");
    region = v6->_region;
    v6->_region = v10;

    v13 = objc_msgSend_objectForKeyedSubscript_(v4, v12, @"keyboardVariant");
    keyboardVariant = v6->_keyboardVariant;
    v6->_keyboardVariant = v13;

    v16 = objc_msgSend_objectForKeyedSubscript_(v4, v15, @"keyboardLayout");
    keyboardLayout = v6->_keyboardLayout;
    v6->_keyboardLayout = v16;

    v19 = objc_msgSend_objectForKeyedSubscript_(v4, v18, @"keyboardType");
    keyboardType = v6->_keyboardType;
    v6->_keyboardType = v19;

    v22 = objc_msgSend_objectForKeyedSubscript_(v4, v21, @"inputModeIdentifier");
    inputModeIdentifier = v6->_inputModeIdentifier;
    v6->_inputModeIdentifier = v22;

    v24 = v6;
  }

  return v6;
}

@end