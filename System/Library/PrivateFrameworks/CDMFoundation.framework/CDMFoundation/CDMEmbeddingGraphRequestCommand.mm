@interface CDMEmbeddingGraphRequestCommand
- (CDMEmbeddingGraphRequestCommand)initWithCoder:(id)a3;
- (CDMEmbeddingGraphRequestCommand)initWithText:(id)a3 requestId:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDMEmbeddingGraphRequestCommand

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CDMEmbeddingGraphRequestCommand;
  v4 = a3;
  [(CDMServiceGraphCommand *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_text forKey:{@"text", v6.receiver, v6.super_class}];
  v5 = [(SIRINLUEXTERNALRequestID *)self->_requestId data];
  [v4 encodeObject:v5 forKey:@"requestId"];
}

- (CDMEmbeddingGraphRequestCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CDMEmbeddingGraphRequestCommand;
  v5 = [(CDMServiceGraphCommand *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
    v9 = [objc_alloc(MEMORY[0x1E69D11C0]) initWithData:v8];
    requestId = v5->_requestId;
    v5->_requestId = v9;
  }

  return v5;
}

- (CDMEmbeddingGraphRequestCommand)initWithText:(id)a3 requestId:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = CDMEmbeddingGraphRequestCommand;
  v9 = [(CDMBaseCommand *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_text, a3);
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69D11C0]);
      v11 = MEMORY[0x1E696AEC0];
      v12 = [MEMORY[0x1E696AFB0] UUID];
      v13 = [v12 UUIDString];
      v14 = [v11 stringWithFormat:@"%@:0", v13];
      [v8 setIdA:v14];

      v15 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v8 idA];
        *buf = 136315394;
        v21 = "[CDMEmbeddingGraphRequestCommand initWithText:requestId:]";
        v22 = 2112;
        v23 = v18;
        _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Request ID not set, generated request id with UUID: %@", buf, 0x16u);
      }
    }

    objc_storeStrong(&v10->_requestId, v8);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

@end