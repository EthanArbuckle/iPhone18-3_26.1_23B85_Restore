@interface CHRecognitionSessionVersion
- (CHRecognitionSessionVersion)initWithCoder:(id)coder;
- (CHRecognitionSessionVersion)initWithSessionVersion:(int64_t)version sessionResultVersion:(int64_t)resultVersion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHRecognitionSessionVersion

- (CHRecognitionSessionVersion)initWithSessionVersion:(int64_t)version sessionResultVersion:(int64_t)resultVersion
{
  v7.receiver = self;
  v7.super_class = CHRecognitionSessionVersion;
  result = [(CHRecognitionSessionVersion *)&v7 init];
  if (result)
  {
    result->_sessionVersion = version;
    result->_sessionResultVersion = resultVersion;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v4, self->_sessionVersion, @"sessionVersion", v5, v6);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v7, self->_sessionResultVersion, @"sessionResultVersion", v8, v9);
}

- (CHRecognitionSessionVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9 = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"sessionVersion", v6, v7, v8);
  v14 = objc_msgSend_decodeIntegerForKey_(coderCopy, v10, @"sessionResultVersion", v11, v12, v13);
  v18 = objc_msgSend_initWithSessionVersion_sessionResultVersion_(self, v15, v9, v14, v16, v17);

  return v18;
}

@end