@interface CHRecognitionSessionVersion
- (CHRecognitionSessionVersion)initWithCoder:(id)a3;
- (CHRecognitionSessionVersion)initWithSessionVersion:(int64_t)a3 sessionResultVersion:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHRecognitionSessionVersion

- (CHRecognitionSessionVersion)initWithSessionVersion:(int64_t)a3 sessionResultVersion:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = CHRecognitionSessionVersion;
  result = [(CHRecognitionSessionVersion *)&v7 init];
  if (result)
  {
    result->_sessionVersion = a3;
    result->_sessionResultVersion = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  objc_msgSend_encodeInteger_forKey_(v10, v4, self->_sessionVersion, @"sessionVersion", v5, v6);
  objc_msgSend_encodeInteger_forKey_(v10, v7, self->_sessionResultVersion, @"sessionResultVersion", v8, v9);
}

- (CHRecognitionSessionVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_decodeIntegerForKey_(v4, v5, @"sessionVersion", v6, v7, v8);
  v14 = objc_msgSend_decodeIntegerForKey_(v4, v10, @"sessionResultVersion", v11, v12, v13);
  v18 = objc_msgSend_initWithSessionVersion_sessionResultVersion_(self, v15, v9, v14, v16, v17);

  return v18;
}

@end