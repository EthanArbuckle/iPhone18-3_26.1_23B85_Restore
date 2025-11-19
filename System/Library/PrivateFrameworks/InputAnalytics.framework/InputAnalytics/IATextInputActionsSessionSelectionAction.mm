@interface IATextInputActionsSessionSelectionAction
- (IATextInputActionsSessionSelectionAction)initWithCoder:(id)a3;
- (_NSRange)rangeAfter;
- (id)description;
- (id)initFromDictionary:(id)a3;
- (id)toDictionary;
- (int64_t)mergeActionIfPossible:(id)a3;
- (int64_t)textInputActionsType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IATextInputActionsSessionSelectionAction

- (int64_t)mergeActionIfPossible:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_source(self, v5, v6);
  if (v7 == objc_msgSend_source(v4, v8, v9) && (v12 = objc_msgSend_flagOptions(self, v10, v11), v12 == objc_msgSend_flagOptions(v4, v13, v14)))
  {
    v19 = objc_msgSend_asSelection(v4, v15, v16);
    if (v19 && ((objc_msgSend_rangeAfter(self, v17, v18), !v20) && (objc_msgSend_relativeRangeBefore(self, 0, v21), !v20) && (objc_msgSend_rangeAfter(v19, 0, v21), !v20) || (objc_msgSend_rangeAfter(self, v20, v21), v22) && (objc_msgSend_relativeRangeBefore(self, v22, v23), v24) && (objc_msgSend_rangeAfter(v19, v24, v25), v20)))
    {
      v26 = objc_msgSend_rangeAfter(v19, v20, v21);
      objc_msgSend_setRangeAfter_(self, v27, v26, v27);
      v30 = objc_msgSend_inputActionCount(v19, v28, v29);
      v33 = objc_msgSend_inputActionCountFromMergedActions(self, v31, v32);
      objc_msgSend_setInputActionCountFromMergedActions_(self, v34, v33 + v30);
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
  v19.receiver = self;
  v19.super_class = IATextInputActionsSessionSelectionAction;
  v3 = [(IATextInputActionsSessionAction *)&v19 description];
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5);
  v7 = MEMORY[0x1E696AEC0];
  v21.location = objc_msgSend_rangeAfter(self, v8, v9);
  v10 = NSStringFromRange(v21);
  v12 = objc_msgSend_stringWithFormat_(v7, v11, @"rangeAfter=%@", v10);
  objc_msgSend_addObject_(v6, v13, v12);

  v15 = objc_msgSend_componentsJoinedByString_(v6, v14, @", ");
  v17 = objc_msgSend_stringByAppendingFormat_(v3, v16, @", %@", v15);

  return v17;
}

- (int64_t)textInputActionsType
{
  objc_msgSend_rangeAfter(self, a2, v2);
  if (v3)
  {
    return 9;
  }

  else
  {
    return 8;
  }
}

- (_NSRange)rangeAfter
{
  p_rangeAfter = &self->_rangeAfter;
  location = self->_rangeAfter.location;
  length = p_rangeAfter->length;
  result.length = length;
  result.location = location;
  return result;
}

- (IATextInputActionsSessionSelectionAction)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = IATextInputActionsSessionSelectionAction;
  v5 = [(IATextInputActionsSessionAction *)&v21 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    p_rangeAfter = &v5->_rangeAfter;
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v9, v8, @"rangeAfter_location");
    v13 = objc_msgSend_unsignedLongValue(v10, v11, v12);
    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v14, @"rangeAfter_length");
    v19 = objc_msgSend_unsignedLongValue(v16, v17, v18);
    p_rangeAfter->location = v13;
    v6->_rangeAfter.length = v19;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = IATextInputActionsSessionSelectionAction;
  v4 = a3;
  [(IATextInputActionsSessionAction *)&v12 encodeWithCoder:v4];
  p_rangeAfter = &self->_rangeAfter;
  v7 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v6, self->_rangeAfter.location, v12.receiver, v12.super_class);
  objc_msgSend_encodeObject_forKey_(v4, v8, v7, @"rangeAfter_location");

  v10 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v9, p_rangeAfter->length);
  objc_msgSend_encodeObject_forKey_(v4, v11, v10, @"rangeAfter_length");
}

- (id)initFromDictionary:(id)a3
{
  v16.receiver = self;
  v16.super_class = IATextInputActionsSessionSelectionAction;
  v3 = a3;
  v4 = [(IATextInputActionsSessionAction *)&v16 initFromDictionary:v3];
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, @"rangeAfter_location", v16.receiver, v16.super_class);
  v9 = objc_msgSend_unsignedLongValue(v6, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v3, v10, @"rangeAfter_length");

  v14 = objc_msgSend_unsignedLongValue(v11, v12, v13);
  v4[23] = v9;
  v4[24] = v14;

  return v4;
}

- (id)toDictionary
{
  v12.receiver = self;
  v12.super_class = IATextInputActionsSessionSelectionAction;
  v3 = [(IATextInputActionsSessionAction *)&v12 toDictionary];
  p_rangeAfter = &self->_rangeAfter;
  v6 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v5, self->_rangeAfter.location);
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v7, v6, @"rangeAfter_location");

  v9 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v8, p_rangeAfter->length);
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v10, v9, @"rangeAfter_length");

  return v3;
}

@end