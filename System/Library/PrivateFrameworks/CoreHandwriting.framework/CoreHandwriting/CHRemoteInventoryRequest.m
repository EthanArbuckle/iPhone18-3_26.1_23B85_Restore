@interface CHRemoteInventoryRequest
- (CHRemoteInventoryRequest)initWithCoder:(id)a3;
- (CHRemoteInventoryRequest)initWithTokenizedResult:(id)a3 drawing:(id)a4 strokeIdentifiers:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHRemoteInventoryRequest

- (CHRemoteInventoryRequest)initWithTokenizedResult:(id)a3 drawing:(id)a4 strokeIdentifiers:(id)a5
{
  v8 = a5;
  v9 = a4;
  if (!a3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v12 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_ERROR, "Tokenized result must be nonnull", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v13 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        v10 = self;
        v11 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v13 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    *v16 = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_FAULT, "Tokenized result must be nonnull", v16, 2u);
    goto LABEL_10;
  }

  v10 = self;
  v11 = a3;
LABEL_11:
  v14 = sub_1837BBA00(v10, v11, v9, v8, 0, 0);

  return v14;
}

- (CHRemoteInventoryRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"tokenizedResult", v7, v8);
  tokenizedResult = self->_tokenizedResult;
  self->_tokenizedResult = v9;

  v11 = objc_opt_class();
  v15 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"drawing", v13, v14);
  drawing = self->_drawing;
  self->_drawing = v15;

  v17 = objc_opt_class();
  v21 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(v4, v18, v17, @"strokeIdentifiers", v19, v20);
  strokeIdentifiers = self->_strokeIdentifiers;
  self->_strokeIdentifiers = v21;

  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v30 = objc_msgSend_setWithObjects_(v23, v26, v24, v27, v28, v29, v25, 0);
  v34 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v31, v30, @"removedStrokeIdentifiers", v32, v33);
  removedStrokeIdentifiers = self->_removedStrokeIdentifiers;
  self->_removedStrokeIdentifiers = v34;

  LOBYTE(v24) = objc_msgSend_decodeBoolForKey_(v4, v36, @"shouldResetInventory", v37, v38, v39);
  self->_shouldResetInventory = v24;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  tokenizedResult = self->_tokenizedResult;
  v20 = a3;
  objc_msgSend_encodeObject_forKey_(v20, v5, tokenizedResult, @"tokenizedResult", v6, v7);
  objc_msgSend_encodeObject_forKey_(v20, v8, self->_drawing, @"drawing", v9, v10);
  objc_msgSend_encodeObject_forKey_(v20, v11, self->_strokeIdentifiers, @"strokeIdentifiers", v12, v13);
  objc_msgSend_encodeObject_forKey_(v20, v14, self->_removedStrokeIdentifiers, @"removedStrokeIdentifiers", v15, v16);
  objc_msgSend_encodeBool_forKey_(v20, v17, self->_shouldResetInventory, @"shouldResetInventory", v18, v19);
}

@end