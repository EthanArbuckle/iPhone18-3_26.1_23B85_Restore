@interface IATextInputActionsSessionKeyboardDockItemButtonPressAction
- (CGPoint)touchDownPoint;
- (CGPoint)touchUpPoint;
- (CGSize)buttonSize;
- (IATextInputActionsSessionKeyboardDockItemButtonPressAction)initWithCoder:(id)coder;
- (id)description;
- (id)initFromDictionary:(id)dictionary;
- (id)toDictionary;
- (int64_t)inputActionCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IATextInputActionsSessionKeyboardDockItemButtonPressAction

- (id)description
{
  v37.receiver = self;
  v37.super_class = IATextInputActionsSessionKeyboardDockItemButtonPressAction;
  v3 = [(IATextInputActionsSessionAction *)&v37 description];
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5);
  v7 = MEMORY[0x1E696AEC0];
  v10 = objc_msgSend_buttonType(self, v8, v9);
  v12 = objc_msgSend_stringForKeyboardDockItemButtonType_(IATextInputActionsUtils, v11, v10);
  v14 = objc_msgSend_stringWithFormat_(v7, v13, @"buttonType=%@", v12);
  objc_msgSend_addObject_(v6, v15, v14);

  v16 = MEMORY[0x1E696AEC0];
  v19 = objc_msgSend_buttonPressResult(self, v17, v18);
  v21 = objc_msgSend_stringForKeyboardDockItemButtonPressResult_(IATextInputActionsUtils, v20, v19);
  v23 = objc_msgSend_stringWithFormat_(v16, v22, @"buttonPressResult=%@", v21);
  objc_msgSend_addObject_(v6, v24, v23);

  v25 = MEMORY[0x1E696AEC0];
  v28 = objc_msgSend_uiOrientation(self, v26, v27);
  v30 = objc_msgSend_stringWithFormat_(v25, v29, @"uiOrientation=%lu", v28);
  objc_msgSend_addObject_(v6, v31, v30);

  v33 = objc_msgSend_componentsJoinedByString_(v6, v32, @", ");
  v35 = objc_msgSend_stringByAppendingFormat_(v3, v34, @", %@", v33);

  return v35;
}

- (int64_t)inputActionCount
{
  v4 = objc_msgSend_buttonPressResult(self, a2, v2);
  result = objc_msgSend_inputActionCountFromMergedActions(self, v5, v6);
  if (v4 != 2)
  {
    ++result;
  }

  return result;
}

- (CGSize)buttonSize
{
  width = self->_buttonSize.width;
  height = self->_buttonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)touchDownPoint
{
  x = self->_touchDownPoint.x;
  y = self->_touchDownPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)touchUpPoint
{
  x = self->_touchUpPoint.x;
  y = self->_touchUpPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (IATextInputActionsSessionKeyboardDockItemButtonPressAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v67.receiver = self;
  v67.super_class = IATextInputActionsSessionKeyboardDockItemButtonPressAction;
  v5 = [(IATextInputActionsSessionAction *)&v67 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"buttonPressResult");
    v5->_buttonPressResult = objc_msgSend_unsignedLongValue(v8, v9, v10);

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"buttonType");
    v5->_buttonType = objc_msgSend_unsignedLongValue(v13, v14, v15);

    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"uiOrientation");
    v5->_uiOrientation = objc_msgSend_longValue(v18, v19, v20);

    v21 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v22, v21, @"buttonSize_width");
    objc_msgSend_doubleValue(v23, v24, v25);
    v27 = v26;
    v28 = objc_opt_class();
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v29, v28, @"buttonSize_height");
    objc_msgSend_doubleValue(v30, v31, v32);
    v5->_buttonSize.width = v27;
    v5->_buttonSize.height = v33;

    v34 = objc_opt_class();
    v36 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v35, v34, @"touchDownPoint_x");
    objc_msgSend_doubleValue(v36, v37, v38);
    v40 = v39;
    v41 = objc_opt_class();
    v43 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v42, v41, @"touchDownPoint_y");
    objc_msgSend_doubleValue(v43, v44, v45);
    v5->_touchDownPoint.x = v40;
    v5->_touchDownPoint.y = v46;

    v47 = objc_opt_class();
    v49 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v48, v47, @"touchUpPoint_x");
    objc_msgSend_doubleValue(v49, v50, v51);
    v53 = v52;
    v54 = objc_opt_class();
    v56 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v55, v54, @"touchUpPoint_y");
    objc_msgSend_doubleValue(v56, v57, v58);
    v5->_touchUpPoint.x = v53;
    v5->_touchUpPoint.y = v59;

    v60 = objc_opt_class();
    v62 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v61, v60, @"touchDuration");
    objc_msgSend_doubleValue(v62, v63, v64);
    v5->_touchDuration = v65;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v42.receiver = self;
  v42.super_class = IATextInputActionsSessionKeyboardDockItemButtonPressAction;
  coderCopy = coder;
  [(IATextInputActionsSessionAction *)&v42 encodeWithCoder:coderCopy];
  v6 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v5, self->_buttonPressResult, v42.receiver, v42.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"buttonPressResult");

  v9 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v8, self->_buttonType);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, v9, @"buttonType");

  v12 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v11, self->_uiOrientation);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, v12, @"uiOrientation");

  v16 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v14, v15, self->_buttonSize.width);
  objc_msgSend_encodeObject_forKey_(coderCopy, v17, v16, @"buttonSize_width");

  v20 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v18, v19, self->_buttonSize.height);
  objc_msgSend_encodeObject_forKey_(coderCopy, v21, v20, @"buttonSize_height");

  v24 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v22, v23, self->_touchDownPoint.x);
  objc_msgSend_encodeObject_forKey_(coderCopy, v25, v24, @"touchDownPoint_x");

  v28 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v26, v27, self->_touchDownPoint.y);
  objc_msgSend_encodeObject_forKey_(coderCopy, v29, v28, @"touchDownPoint_y");

  v32 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v30, v31, self->_touchUpPoint.x);
  objc_msgSend_encodeObject_forKey_(coderCopy, v33, v32, @"touchUpPoint_x");

  v36 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v34, v35, self->_touchUpPoint.y);
  objc_msgSend_encodeObject_forKey_(coderCopy, v37, v36, @"touchUpPoint_y");

  v40 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v38, v39, self->_touchDuration);
  objc_msgSend_encodeObject_forKey_(coderCopy, v41, v40, @"touchDuration");
}

- (id)initFromDictionary:(id)dictionary
{
  v56.receiver = self;
  v56.super_class = IATextInputActionsSessionKeyboardDockItemButtonPressAction;
  dictionaryCopy = dictionary;
  v4 = [(IATextInputActionsSessionAction *)&v56 initFromDictionary:dictionaryCopy];
  v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"buttonPressResult", v56.receiver, v56.super_class);
  v4[23] = objc_msgSend_unsignedLongValue(v6, v7, v8);

  v10 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v9, @"buttonType");
  v4[24] = objc_msgSend_unsignedLongValue(v10, v11, v12);

  v14 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v13, @"uiOrientation");
  v4[25] = objc_msgSend_longValue(v14, v15, v16);

  v18 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v17, @"touchDuration");
  objc_msgSend_doubleValue(v18, v19, v20);
  v4[26] = v21;

  v23 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v22, @"buttonSize_width");
  objc_msgSend_doubleValue(v23, v24, v25);
  v27 = v26;
  v29 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v28, @"buttonSize_height");
  objc_msgSend_doubleValue(v29, v30, v31);
  v4[27] = v27;
  v4[28] = v32;

  v34 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v33, @"touchDownPoint_x");
  objc_msgSend_doubleValue(v34, v35, v36);
  v38 = v37;
  v40 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v39, @"touchDownPoint_y");
  objc_msgSend_doubleValue(v40, v41, v42);
  v4[29] = v38;
  v4[30] = v43;

  v45 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v44, @"touchUpPoint_x");
  objc_msgSend_doubleValue(v45, v46, v47);
  v49 = v48;
  v51 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v50, @"touchUpPoint_y");

  objc_msgSend_doubleValue(v51, v52, v53);
  v4[31] = v49;
  v4[32] = v54;

  return v4;
}

- (id)toDictionary
{
  v43.receiver = self;
  v43.super_class = IATextInputActionsSessionKeyboardDockItemButtonPressAction;
  toDictionary = [(IATextInputActionsSessionAction *)&v43 toDictionary];
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, self->_buttonPressResult);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v6, v5, @"buttonPressResult");

  v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v7, self->_buttonType);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v9, v8, @"buttonType");

  v11 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v10, self->_uiOrientation);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v12, v11, @"uiOrientation");

  v15 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v13, v14, self->_touchDuration);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v16, v15, @"touchDuration");

  v19 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v17, v18, self->_buttonSize.width);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v20, v19, @"buttonSize_width");

  v23 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v21, v22, self->_buttonSize.height);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v24, v23, @"buttonSize_height");

  v27 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v25, v26, self->_touchDownPoint.x);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v28, v27, @"touchDownPoint_x");

  v31 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v29, v30, self->_touchDownPoint.y);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v32, v31, @"touchDownPoint_y");

  p_touchUpPoint = &self->_touchUpPoint;
  v36 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v34, v35, self->_touchUpPoint.x);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v37, v36, @"touchUpPoint_x");

  v40 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v38, v39, p_touchUpPoint->y);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v41, v40, @"touchUpPoint_y");

  return toDictionary;
}

@end