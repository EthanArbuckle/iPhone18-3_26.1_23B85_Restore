@interface CHRemotePowerLoggingInferenceRequest
- (CHRemotePowerLoggingInferenceRequest)initWithCoder:(id)a3;
- (CHRemotePowerLoggingInferenceRequest)initWithModel:(unint64_t)a3 startTime:(double)a4 endTime:(double)a5 data:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHRemotePowerLoggingInferenceRequest

- (CHRemotePowerLoggingInferenceRequest)initWithModel:(unint64_t)a3 startTime:(double)a4 endTime:(double)a5 data:(id)a6
{
  v10 = a6;
  v21.receiver = self;
  v21.super_class = CHRemotePowerLoggingInferenceRequest;
  v11 = [(CHRemotePowerLoggingRequest *)&v21 initWithModel:a3];
  v17 = v11;
  if (v11)
  {
    v11->_start = a4;
    v11->_end = a5;
    v18 = objc_msgSend_copy(v10, v12, v13, v14, v15, v16);
    data = v17->_data;
    v17->_data = v18;
  }

  return v17;
}

- (CHRemotePowerLoggingInferenceRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = CHRemotePowerLoggingInferenceRequest;
  v9 = [(CHRemotePowerLoggingRequest *)&v35 initWithCoder:v4];
  if (v9)
  {
    objc_msgSend_decodeDoubleForKey_(v4, v5, @"start", v6, v7, v8);
    v9->_start = v10;
    objc_msgSend_decodeDoubleForKey_(v4, v11, @"end", v12, v13, v14);
    v9->_end = v15;
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v22 = objc_msgSend_setWithObject_(v16, v18, v17, v19, v20, v21);
    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v29 = objc_msgSend_setWithObject_(v23, v25, v24, v26, v27, v28);
    v32 = objc_msgSend_decodeDictionaryWithKeysOfClasses_objectsOfClasses_forKey_(v4, v30, v22, v29, @"data", v31);
    data = v9->_data;
    v9->_data = v32;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CHRemotePowerLoggingInferenceRequest;
  [(CHRemotePowerLoggingRequest *)&v26 encodeWithCoder:v4];
  v10 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v5, v6, v7, v8, v9, self->_start);
  objc_msgSend_encodeObject_forKey_(v4, v11, v10, @"start", v12, v13);

  v19 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v14, v15, v16, v17, v18, self->_end);
  objc_msgSend_encodeObject_forKey_(v4, v20, v19, @"end", v21, v22);

  objc_msgSend_encodeObject_forKey_(v4, v23, self->_data, @"data", v24, v25);
}

@end