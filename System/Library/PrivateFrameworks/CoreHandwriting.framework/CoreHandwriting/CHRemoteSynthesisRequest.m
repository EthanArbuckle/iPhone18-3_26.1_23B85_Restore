@interface CHRemoteSynthesisRequest
- (CHRemoteSynthesisRequest)initWithCoder:(id)a3;
- (CHRemoteSynthesisRequest)initWithString:(id)a3 drawing:(id)a4 options:(id)a5 requestType:(int64_t)a6 priority:(int64_t)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHRemoteSynthesisRequest

- (CHRemoteSynthesisRequest)initWithString:(id)a3 drawing:(id)a4 options:(id)a5 requestType:(int64_t)a6 priority:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v38.receiver = self;
  v38.super_class = CHRemoteSynthesisRequest;
  v20 = [(CHRemoteSynthesisRequest *)&v38 init];
  if (v20)
  {
    v21 = objc_msgSend_copy(v12, v15, v16, v17, v18, v19);
    string = v20->_string;
    v20->_string = v21;

    v28 = objc_msgSend_copy(v13, v23, v24, v25, v26, v27);
    drawing = v20->_drawing;
    v20->_drawing = v28;

    v35 = objc_msgSend_copy(v14, v30, v31, v32, v33, v34);
    options = v20->_options;
    v20->_options = v35;

    v20->_requestType = a6;
    v20->_priority = a7;
  }

  return v20;
}

- (CHRemoteSynthesisRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"string", v7, v8);
  v10 = objc_opt_class();
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"drawing", v12, v13);
  v15 = objc_opt_class();
  v19 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"options", v17, v18);
  v24 = objc_msgSend_decodeIntegerForKey_(v4, v20, @"requestType", v21, v22, v23);
  v29 = objc_msgSend_decodeIntegerForKey_(v4, v25, @"priority", v26, v27, v28);

  v31 = objc_msgSend_initWithString_drawing_options_requestType_priority_(self, v30, v9, v14, v19, v24, v29);
  return v31;
}

- (void)encodeWithCoder:(id)a3
{
  string = self->_string;
  v20 = a3;
  objc_msgSend_encodeObject_forKey_(v20, v5, string, @"string", v6, v7);
  objc_msgSend_encodeObject_forKey_(v20, v8, self->_drawing, @"drawing", v9, v10);
  objc_msgSend_encodeObject_forKey_(v20, v11, self->_options, @"options", v12, v13);
  objc_msgSend_encodeInteger_forKey_(v20, v14, self->_requestType, @"requestType", v15, v16);
  objc_msgSend_encodeInteger_forKey_(v20, v17, self->_priority, @"priority", v18, v19);
}

@end