@interface IMMockURLResponse
+ (id)objectFromPlist:(id)plist;
- (IMMockURLResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMMockURLResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_response(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"mockResponse");

  v11 = objc_msgSend_data(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"mockData");

  v15 = objc_msgSend_requestBodyKeyPath(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"requestBodyKeyPath");

  v20 = objc_msgSend_mockID(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, v20, @"mockID");
}

- (IMMockURLResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = IMMockURLResponse;
  v6 = [(IMMockURLResponse *)&v22 init];
  if (v6)
  {
    v7 = objc_msgSend_decodeObjectForKey_(coderCopy, v5, @"mockResponse");
    objc_msgSend_setResponse_(v6, v8, v7);

    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v10, v9, @"mockData");
    objc_msgSend_setData_(v6, v12, v11);

    v13 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v14, v13, @"requestBodyKeyPath");
    objc_msgSend_setRequestBodyKeyPath_(v6, v16, v15);

    v17 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v18, v17, @"mockID");
    objc_msgSend_setMockID_(v6, v20, v19);
  }

  return v6;
}

+ (id)objectFromPlist:(id)plist
{
  plistCopy = plist;
  v5 = objc_msgSend_objectForKey_(plistCopy, v4, @"status");
  v8 = objc_msgSend_intValue(v5, v6, v7);

  v10 = objc_msgSend_objectForKey_(plistCopy, v9, @"headers");
  v12 = objc_msgSend_objectForKey_(plistCopy, v11, @"requestBodyForKeyPath");
  v14 = objc_msgSend_objectForKey_(plistCopy, v13, @"mockID");
  v15 = objc_alloc(MEMORY[0x1E695DFF8]);
  v17 = objc_msgSend_objectForKey_(plistCopy, v16, @"url");
  v19 = objc_msgSend_initWithString_(v15, v18, v17);

  v20 = objc_alloc(MEMORY[0x1E696AC68]);
  v22 = objc_msgSend_initWithURL_statusCode_HTTPVersion_headerFields_(v20, v21, v19, v8, @"http 1.1", v10);
  v23 = objc_alloc_init(IMMockURLResponse);
  v25 = objc_msgSend_objectForKey_(plistCopy, v24, @"body");

  v33 = 0;
  v28 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], v26, v25, 100, 0, &v33);
  if (v33)
  {
    NSLog(&cfstr_SErrorSerializ.isa, "+[IMMockURLResponse objectFromPlist:]", v33);
  }

  objc_msgSend_setData_(v23, v27, v28);
  objc_msgSend_setResponse_(v23, v29, v22);
  objc_msgSend_setRequestBodyKeyPath_(v23, v30, v12);
  objc_msgSend_setMockID_(v23, v31, v14);

  return v23;
}

@end