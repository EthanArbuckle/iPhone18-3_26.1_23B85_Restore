@interface CDMEmbeddingGraphRequestCommand
- (CDMEmbeddingGraphRequestCommand)initWithCoder:(id)coder;
- (CDMEmbeddingGraphRequestCommand)initWithText:(id)text requestId:(id)id;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDMEmbeddingGraphRequestCommand

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CDMEmbeddingGraphRequestCommand;
  coderCopy = coder;
  [(CDMServiceGraphCommand *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_text forKey:{@"text", v6.receiver, v6.super_class}];
  data = [(SIRINLUEXTERNALRequestID *)self->_requestId data];
  [coderCopy encodeObject:data forKey:@"requestId"];
}

- (CDMEmbeddingGraphRequestCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CDMEmbeddingGraphRequestCommand;
  v5 = [(CDMServiceGraphCommand *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
    v9 = [objc_alloc(MEMORY[0x1E69D11C0]) initWithData:v8];
    requestId = v5->_requestId;
    v5->_requestId = v9;
  }

  return v5;
}

- (CDMEmbeddingGraphRequestCommand)initWithText:(id)text requestId:(id)id
{
  v24 = *MEMORY[0x1E69E9840];
  textCopy = text;
  idCopy = id;
  v19.receiver = self;
  v19.super_class = CDMEmbeddingGraphRequestCommand;
  v9 = [(CDMBaseCommand *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_text, text);
    if (!idCopy)
    {
      idCopy = objc_alloc_init(MEMORY[0x1E69D11C0]);
      v11 = MEMORY[0x1E696AEC0];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v14 = [v11 stringWithFormat:@"%@:0", uUIDString];
      [idCopy setIdA:v14];

      v15 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v18 = [idCopy idA];
        *buf = 136315394;
        v21 = "[CDMEmbeddingGraphRequestCommand initWithText:requestId:]";
        v22 = 2112;
        v23 = v18;
        _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Request ID not set, generated request id with UUID: %@", buf, 0x16u);
      }
    }

    objc_storeStrong(&v10->_requestId, idCopy);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

@end