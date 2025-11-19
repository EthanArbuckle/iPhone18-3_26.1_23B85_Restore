@interface IATextInputActionsSessionDictationBeganAction
- (IATextInputActionsSessionDictationBeganAction)initWithCoder:(id)a3;
- (id)description;
- (id)initFromDictionary:(id)a3;
- (id)toDictionary;
- (int64_t)mergeActionIfPossible:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IATextInputActionsSessionDictationBeganAction

- (int64_t)mergeActionIfPossible:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_source(self, v5, v6);
  if (v7 == objc_msgSend_source(v4, v8, v9))
  {
    v12 = objc_msgSend_asDictationBegan(v4, v10, v11);
    v15 = v12;
    if (v12)
    {
      v16 = objc_msgSend_dictationBeganCount(v12, v13, v14);
      v19 = objc_msgSend_dictationBeganCount(self, v17, v18);
      objc_msgSend_setDictationBeganCount_(self, v20, v19 + v16);
      v23 = objc_msgSend_modelessUsedAtLeastOnceCount(v15, v21, v22);
      v26 = objc_msgSend_modelessUsedAtLeastOnceCount(self, v24, v25);
      objc_msgSend_setModelessUsedAtLeastOnceCount_(self, v27, v26 + v23);
      v30 = objc_msgSend_multiModalDictationBeganCount(v15, v28, v29);
      v33 = objc_msgSend_multiModalDictationBeganCount(self, v31, v32);
      objc_msgSend_setMultiModalDictationBeganCount_(self, v34, v33 + v30);
      v35 = 1;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)description
{
  v33.receiver = self;
  v33.super_class = IATextInputActionsSessionDictationBeganAction;
  v3 = [(IATextInputActionsSessionAction *)&v33 description];
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5);
  v7 = MEMORY[0x1E696AEC0];
  v10 = objc_msgSend_dictationBeganCount(self, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v7, v11, @"dictationBeganCount=%lu", v10);
  objc_msgSend_addObject_(v6, v13, v12);

  v14 = MEMORY[0x1E696AEC0];
  v17 = objc_msgSend_modelessUsedAtLeastOnceCount(self, v15, v16);
  v19 = objc_msgSend_stringWithFormat_(v14, v18, @"modelessUsedAtLeastOnceCount=%lu", v17);
  objc_msgSend_addObject_(v6, v20, v19);

  v21 = MEMORY[0x1E696AEC0];
  v24 = objc_msgSend_multiModalDictationBeganCount(self, v22, v23);
  v26 = objc_msgSend_stringWithFormat_(v21, v25, @"multiModalDictationBeganCount=%lu", v24);
  objc_msgSend_addObject_(v6, v27, v26);

  v29 = objc_msgSend_componentsJoinedByString_(v6, v28, @", ");
  v31 = objc_msgSend_stringByAppendingFormat_(v3, v30, @", %@", v29);

  return v31;
}

- (IATextInputActionsSessionDictationBeganAction)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = IATextInputActionsSessionDictationBeganAction;
  v5 = [(IATextInputActionsSessionAction *)&v22 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"dictationBeganCount");
    v5->_dictationBeganCount = objc_msgSend_unsignedLongValue(v8, v9, v10);

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"modelessUsedAtLeastOnceCount");
    v5->_modelessUsedAtLeastOnceCount = objc_msgSend_unsignedLongValue(v13, v14, v15);

    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v17, v16, @"multiModalDictationBeganCount");
    v5->_multiModalDictationBeganCount = objc_msgSend_unsignedLongValue(v18, v19, v20);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = IATextInputActionsSessionDictationBeganAction;
  v4 = a3;
  [(IATextInputActionsSessionAction *)&v14 encodeWithCoder:v4];
  v6 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, self->_dictationBeganCount, v14.receiver, v14.super_class);
  objc_msgSend_encodeObject_forKey_(v4, v7, v6, @"dictationBeganCount");

  v9 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v8, self->_modelessUsedAtLeastOnceCount);
  objc_msgSend_encodeObject_forKey_(v4, v10, v9, @"modelessUsedAtLeastOnceCount");

  v12 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v11, self->_multiModalDictationBeganCount);
  objc_msgSend_encodeObject_forKey_(v4, v13, v12, @"multiModalDictationBeganCount");
}

- (id)initFromDictionary:(id)a3
{
  v18.receiver = self;
  v18.super_class = IATextInputActionsSessionDictationBeganAction;
  v3 = a3;
  v4 = [(IATextInputActionsSessionAction *)&v18 initFromDictionary:v3];
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, @"dictationBeganCount", v18.receiver, v18.super_class);
  v4[23] = objc_msgSend_unsignedLongValue(v6, v7, v8);

  v10 = objc_msgSend_objectForKeyedSubscript_(v3, v9, @"modelessUsedAtLeastOnceCount");
  v4[24] = objc_msgSend_unsignedLongValue(v10, v11, v12);

  v14 = objc_msgSend_objectForKeyedSubscript_(v3, v13, @"multiModalDictationBeganCount");

  v4[25] = objc_msgSend_unsignedLongValue(v14, v15, v16);
  return v4;
}

- (id)toDictionary
{
  v14.receiver = self;
  v14.super_class = IATextInputActionsSessionDictationBeganAction;
  v3 = [(IATextInputActionsSessionAction *)&v14 toDictionary];
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, self->_dictationBeganCount);
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v6, v5, @"dictationBeganCount");

  v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v7, self->_modelessUsedAtLeastOnceCount);
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v9, v8, @"modelessUsedAtLeastOnceCount");

  v11 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v10, self->_multiModalDictationBeganCount);
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v12, v11, @"multiModalDictationBeganCount");

  return v3;
}

@end