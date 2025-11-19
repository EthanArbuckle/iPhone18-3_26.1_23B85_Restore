@interface CHRemoteRecognitionMathRequest
+ (id)loadFromFile:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRemoteRecognitionMathRequest:(id)a3;
- (CHRemoteRecognitionMathRequest)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDeclaredVariables:(id)a3;
@end

@implementation CHRemoteRecognitionMathRequest

- (CHRemoteRecognitionMathRequest)initWithCoder:(id)a3
{
  v39[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = CHRemoteRecognitionMathRequest;
  v5 = [(CHRemoteRecognitionRequest *)&v37 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v39, 2, v8, v9);
    v15 = objc_msgSend_setWithArray_(v6, v11, v10, v12, v13, v14);
    v19 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v16, v15, @"declaredVariables", v17, v18);
    declaredVariables = v5->_declaredVariables;
    v5->_declaredVariables = v19;

    v21 = MEMORY[0x1E695DFD8];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v22, v38, 2, v23, v24);
    v30 = objc_msgSend_setWithArray_(v21, v26, v25, v27, v28, v29);
    v34 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v31, v30, @"locales", v32, v33);
    locales = v5->_locales;
    v5->_locales = v34;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CHRemoteRecognitionMathRequest;
  [(CHRemoteRecognitionRequest *)&v11 encodeWithCoder:v4];
  objc_msgSend_encodeObject_forKey_(v4, v5, self->_declaredVariables, @"declaredVariables", v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v8, self->_locales, @"locales", v9, v10);
}

+ (id)loadFromFile:(id)a3
{
  v6 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], a2, a3, v3, v4, v5);
  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();
  v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v7, v9, v8, v6, 0, v10);

  return v11;
}

- (void)setDeclaredVariables:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasBeenSubmitted(self, v5, v6, v7, v8, v9))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v15 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_ERROR, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", buf, 2u);
    }
  }

  if (objc_msgSend_hasBeenSubmitted(self, v10, v11, v12, v13, v14))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v21 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_18366B000, v21, OS_LOG_TYPE_FAULT, "The CHRemoteRecognitionTextRequest cannot be mutated after being submitted", v24, 2u);
    }
  }

  if (self->_declaredVariables != v4)
  {
    v22 = objc_msgSend_copy(v4, v16, v17, v18, v19, v20);
    declaredVariables = self->_declaredVariables;
    self->_declaredVariables = v22;
  }
}

- (BOOL)isEqualToRemoteRecognitionMathRequest:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqualToSet = 1;
  }

  else
  {
    v35.receiver = self;
    v35.super_class = CHRemoteRecognitionMathRequest;
    if ([(CHRemoteRecognitionRequest *)&v35 isEqualToRemoteRecognitionRequest:v4])
    {
      v10 = objc_msgSend_declaredVariables(self, v5, v6, v7, v8, v9);
      v21 = objc_msgSend_declaredVariables(v4, v11, v12, v13, v14, v15);
      if (v10 == v21)
      {
        isEqualToSet = 1;
      }

      else
      {
        v22 = objc_msgSend_declaredVariables(self, v16, v17, v18, v19, v20);
        v28 = objc_msgSend_declaredVariables(v4, v23, v24, v25, v26, v27);
        isEqualToSet = objc_msgSend_isEqualToSet_(v22, v29, v28, v30, v31, v32);
      }
    }

    else
    {
      isEqualToSet = 0;
    }
  }

  return isEqualToSet;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToRemoteRecognitionMathRequest = objc_msgSend_isEqualToRemoteRecognitionMathRequest_(self, v5, v4, v6, v7, v8);

    return isEqualToRemoteRecognitionMathRequest;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = objc_msgSend_declaredVariables(self, a2, v2, v3, v4, v5);
  v10 = 0;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16, v9);
  if (v16)
  {
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v10 ^= objc_msgSend_hash(*(*(&v21 + 1) + 8 * v18++), v11, v12, v13, v14, v15);
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v11, &v21, v25, 16, v15);
    }

    while (v16);
  }

  v20.receiver = self;
  v20.super_class = CHRemoteRecognitionMathRequest;
  return [(CHRemoteRecognitionRequest *)&v20 hash]^ v10;
}

- (id)description
{
  v36.receiver = self;
  v36.super_class = CHRemoteRecognitionMathRequest;
  v3 = [(CHRemoteRecognitionRequest *)&v36 description];
  v35.receiver = self;
  v35.super_class = CHRemoteRecognitionMathRequest;
  v4 = [(CHRemoteRecognitionRequest *)&v35 description];
  v10 = objc_msgSend_length(v4, v5, v6, v7, v8, v9);
  v15 = objc_msgSend_substringToIndex_(v3, v11, v10 - 1, v12, v13, v14);

  v16 = MEMORY[0x1E696AEC0];
  v22 = objc_msgSend_declaredVariables(self, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_count(v22, v23, v24, v25, v26, v27);
  v33 = objc_msgSend_stringWithFormat_(v16, v29, @"%@, declared variables count=%lu"), v30, v31, v32, v15, v28);

  return v33;
}

@end