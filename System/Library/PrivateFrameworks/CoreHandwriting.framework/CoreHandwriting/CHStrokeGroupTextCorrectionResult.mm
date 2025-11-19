@interface CHStrokeGroupTextCorrectionResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStrokeGroupTextCorrectionResult:(id)a3;
- (CHStrokeGroupTextCorrectionResult)init;
- (CHStrokeGroupTextCorrectionResult)initWithCoder:(id)a3;
- (CHStrokeGroupTextCorrectionResult)initWithTextCorrectionResult:(id)a3 inputStrokeIdentifiers:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHStrokeGroupTextCorrectionResult

- (CHStrokeGroupTextCorrectionResult)init
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_ERROR, "Use the designated initializer instead", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v4 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v6 = 0;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_FAULT, "Use the designated initializer instead", v6, 2u);
  }

LABEL_8:

  return 0;
}

- (CHStrokeGroupTextCorrectionResult)initWithTextCorrectionResult:(id)a3 inputStrokeIdentifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CHStrokeGroupTextCorrectionResult;
  v9 = [(CHStrokeGroupTextCorrectionResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textCorrectionResult, a3);
    objc_storeStrong(&v10->_inputStrokeIdentifiers, a4);
  }

  return v10;
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = CHStrokeGroupTextCorrectionResult;
  v3 = [(CHStrokeGroupTextCorrectionResult *)&v16 description];
  v9 = objc_msgSend_textCorrectionResult(self, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_stringByAppendingFormat_(v3, v10, @" %@", v11, v12, v13, v9);

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  objc_msgSend_encodeObject_forKey_(v10, v4, self->_textCorrectionResult, @"textCorrectionResult", v5, v6);
  objc_msgSend_encodeObject_forKey_(v10, v7, self->_inputStrokeIdentifiers, @"inputStrokeIdentifiers", v8, v9);
}

- (CHStrokeGroupTextCorrectionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"textCorrectionResult", v7, v8);
  v10 = objc_opt_class();
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"inputStrokeIdentifiers", v12, v13);
  v18 = objc_msgSend_initWithTextCorrectionResult_inputStrokeIdentifiers_(self, v15, v9, v14, v16, v17);

  return v18;
}

- (BOOL)isEqualToStrokeGroupTextCorrectionResult:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self == v4)
  {
    v30 = 1;
    goto LABEL_11;
  }

  textCorrectionResult = self->_textCorrectionResult;
  v12 = objc_msgSend_textCorrectionResult(v4, v5, v6, v7, v8, v9);
  v18 = v12;
  if (textCorrectionResult == v12)
  {
  }

  else
  {
    v19 = objc_msgSend_textCorrectionResult(v10, v13, v14, v15, v16, v17);
    isEqual = objc_msgSend_isEqual_(v19, v20, self->_textCorrectionResult, v21, v22, v23);

    if (!isEqual)
    {
      v30 = 0;
      goto LABEL_11;
    }
  }

  inputStrokeIdentifiers = self->_inputStrokeIdentifiers;
  v37 = objc_msgSend_inputStrokeIdentifiers(v10, v25, v26, v27, v28, v29);
  if (inputStrokeIdentifiers == v37)
  {
    v30 = 1;
  }

  else
  {
    v38 = objc_msgSend_inputStrokeIdentifiers(v10, v32, v33, v34, v35, v36);
    v30 = objc_msgSend_isEqual_(v38, v39, self->_inputStrokeIdentifiers, v40, v41, v42);
  }

LABEL_11:
  return v30;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToStrokeGroupTextCorrectionResult = objc_msgSend_isEqualToStrokeGroupTextCorrectionResult_(self, v5, v4, v6, v7, v8);

    return isEqualToStrokeGroupTextCorrectionResult;
  }

  else
  {

    return 0;
  }
}

@end