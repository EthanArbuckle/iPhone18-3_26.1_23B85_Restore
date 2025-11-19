@interface IATextInputActionsSessionGlomojiTapAction
- (IATextInputActionsSessionGlomojiTapAction)init;
- (IATextInputActionsSessionGlomojiTapAction)initWithCoder:(id)a3;
- (id)initFromDictionary:(id)a3;
- (id)toDictionary;
- (int64_t)mergeActionIfPossible:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IATextInputActionsSessionGlomojiTapAction

- (IATextInputActionsSessionGlomojiTapAction)init
{
  v6.receiver = self;
  v6.super_class = IATextInputActionsSessionGlomojiTapAction;
  v2 = [(IAXPCObject *)&v6 init];
  v4 = v2;
  if (v2)
  {
    objc_msgSend_setMergedActionsCount_(v2, v3, 1);
  }

  return v4;
}

- (int64_t)mergeActionIfPossible:(id)a3
{
  v6 = objc_msgSend_asGlomojiTap(a3, a2, a3);
  if (v6 && (objc_msgSend_updatedInputMode(self, v4, v5), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_originalInputMode(v6, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v7, v11, v10), v10, v7, isEqualToString))
  {
    v15 = objc_msgSend_updatedInputMode(v6, v13, v14);
    objc_msgSend_setUpdatedInputMode_(self, v16, v15);

    v19 = objc_msgSend_mergedActionsCount(v6, v17, v18);
    v22 = objc_msgSend_mergedActionsCount(self, v20, v21);
    objc_msgSend_setMergedActionsCount_(self, v23, v22 + v19);
    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (IATextInputActionsSessionGlomojiTapAction)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = IATextInputActionsSessionGlomojiTapAction;
  v5 = [(IATextInputActionsSessionAction *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"glomojiType");
    v5->_glomojiType = objc_msgSend_unsignedLongValue(v8, v9, v10);

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"originalInputMode");
    originalInputMode = v5->_originalInputMode;
    v5->_originalInputMode = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"updatedInputMode");
    updatedInputMode = v5->_updatedInputMode;
    v5->_updatedInputMode = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"mergedActionsCount");
    v5->_mergedActionsCount = objc_msgSend_unsignedLongValue(v21, v22, v23);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = IATextInputActionsSessionGlomojiTapAction;
  v4 = a3;
  [(IATextInputActionsSessionAction *)&v13 encodeWithCoder:v4];
  v6 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, self->_glomojiType, v13.receiver, v13.super_class);
  objc_msgSend_encodeObject_forKey_(v4, v7, v6, @"glomojiType");

  objc_msgSend_encodeObject_forKey_(v4, v8, self->_originalInputMode, @"originalInputMode");
  objc_msgSend_encodeObject_forKey_(v4, v9, self->_updatedInputMode, @"updatedInputMode");
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v10, self->_mergedActionsCount);
  objc_msgSend_encodeObject_forKey_(v4, v12, v11, @"mergedActionsCount");
}

- (id)initFromDictionary:(id)a3
{
  v20.receiver = self;
  v20.super_class = IATextInputActionsSessionGlomojiTapAction;
  v3 = a3;
  v4 = [(IATextInputActionsSessionAction *)&v20 initFromDictionary:v3];
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, @"glomojiType", v20.receiver, v20.super_class);
  v4[23] = objc_msgSend_unsignedLongValue(v6, v7, v8);

  v10 = objc_msgSend_objectForKeyedSubscript_(v3, v9, @"mergedActionsCount");
  v4[26] = objc_msgSend_unsignedLongValue(v10, v11, v12);

  v14 = objc_msgSend_objectForKeyedSubscript_(v3, v13, @"originalInputMode");
  v15 = v4[24];
  v4[24] = v14;

  v17 = objc_msgSend_objectForKeyedSubscript_(v3, v16, @"updatedInputMode");

  v18 = v4[25];
  v4[25] = v17;

  return v4;
}

- (id)toDictionary
{
  v13.receiver = self;
  v13.super_class = IATextInputActionsSessionGlomojiTapAction;
  v3 = [(IATextInputActionsSessionAction *)&v13 toDictionary];
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, self->_glomojiType);
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v6, v5, @"glomojiType");

  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v7, self->_mergedActionsCount);
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v9, v8, @"mergedActionsCount");

  objc_msgSend_setObjectIfNotNil_forKey_(v3, v10, self->_originalInputMode, @"originalInputMode");
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v11, self->_updatedInputMode, @"updatedInputMode");

  return v3;
}

@end