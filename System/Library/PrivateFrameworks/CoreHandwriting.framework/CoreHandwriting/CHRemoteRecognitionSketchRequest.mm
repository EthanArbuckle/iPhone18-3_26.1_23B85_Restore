@interface CHRemoteRecognitionSketchRequest
+ (id)loadFromFile:(id)file;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRemoteRecognitionSketchRequest:(id)request;
- (CHRemoteRecognitionSketchRequest)initWithCoder:(id)coder;
- (CHRemoteRecognitionSketchRequest)initWithDrawing:(id)drawing options:(id)options priority:(int64_t)priority;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHRemoteRecognitionSketchRequest

- (CHRemoteRecognitionSketchRequest)initWithDrawing:(id)drawing options:(id)options priority:(int64_t)priority
{
  v6.receiver = self;
  v6.super_class = CHRemoteRecognitionSketchRequest;
  return [(CHRemoteRecognitionRequest *)&v6 initWithDrawing:drawing options:options priority:priority];
}

- (CHRemoteRecognitionSketchRequest)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CHRemoteRecognitionSketchRequest;
  result = [(CHRemoteRecognitionRequest *)&v6 initWithCoder:coder];
  if (!result)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v4 = qword_1EA84DC70;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "CHRemoteRecognitionSketchRequest decoding failed. Locale is required to be non-null.", v5, 2u);
    }

    return 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CHRemoteRecognitionSketchRequest;
  [(CHRemoteRecognitionRequest *)&v3 encodeWithCoder:coder];
}

+ (id)loadFromFile:(id)file
{
  v6 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], a2, file, v3, v4, v5);
  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();
  v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v7, v9, v8, v6, 0, v10);

  return v11;
}

- (BOOL)isEqualToRemoteRecognitionSketchRequest:(id)request
{
  if (self == request)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = CHRemoteRecognitionSketchRequest;
  return [(CHRemoteRecognitionRequest *)&v6 isEqualToRemoteRecognitionRequest:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToRemoteRecognitionSketchRequest = objc_msgSend_isEqualToRemoteRecognitionSketchRequest_(self, v5, equalCopy, v6, v7, v8);

    return isEqualToRemoteRecognitionSketchRequest;
  }

  else
  {

    return 0;
  }
}

@end