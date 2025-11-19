@interface EMBiomeEvent
+ (OS_os_log)log;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (EMBiomeEvent)initWithCoder:(id)a3;
- (EMBiomeEvent)initWithEventName:(id)a3 messageId:(id)a4 payload:(id)a5;
- (id)json;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
- (void)json;
- (void)serialize;
@end

@implementation EMBiomeEvent

- (id)serialize
{
  v13 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v13];
  v3 = v13;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = +[EMBiomeEvent log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(EMBiomeEvent *)v3 serialize:v5];
    }
  }

  return v2;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__EMBiomeEvent_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_3 != -1)
  {
    dispatch_once(&log_onceToken_3, block);
  }

  v2 = log_log_3;

  return v2;
}

void __19__EMBiomeEvent_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_3;
  log_log_3 = v1;
}

- (EMBiomeEvent)initWithEventName:(id)a3 messageId:(id)a4 payload:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = EMBiomeEvent;
  v11 = [(EMBiomeEvent *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    eventName = v11->_eventName;
    v11->_eventName = v12;

    v14 = [v9 copy];
    messageId = v11->_messageId;
    v11->_messageId = v14;

    v16 = [v10 copy];
    payload = v11->_payload;
    v11->_payload = v16;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(EMBiomeEvent *)self eventName];
  [v7 encodeObject:v4 forKey:@"EFPropertyKey_eventName"];

  v5 = [(EMBiomeEvent *)self messageId];
  [v7 encodeObject:v5 forKey:@"EFPropertyKey_messageId"];

  v6 = [(EMBiomeEvent *)self payload];
  [v7 encodeObject:v6 forKey:@"EFPropertyKey_payload"];
}

- (EMBiomeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = EMBiomeEvent;
  v5 = [(EMBiomeEvent *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_eventName"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_messageId"];
    messageId = v5->_messageId;
    v5->_messageId = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"EFPropertyKey_payload"];
    payload = v5->_payload;
    v5->_payload = v15;
  }

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v4 = a3;
  v16 = 0;
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v16];
  v6 = v16;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = +[EMBiomeEvent log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(EMBiomeEvent *)v6 eventWithData:v8 dataVersion:v9, v10, v11, v12, v13, v14];
    }
  }

  return v5;
}

- (id)json
{
  v23[3] = *MEMORY[0x1E69E9840];
  v22[0] = @"eventName";
  v3 = [(EMBiomeEvent *)self eventName];
  v23[0] = v3;
  v22[1] = @"messageId";
  v4 = [(EMBiomeEvent *)self messageId];
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v5;
  v22[2] = @"payload";
  v6 = [(EMBiomeEvent *)self payload];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  if (!v6)
  {
  }

  if (!v4)
  {
  }

  v21 = 0;
  v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v8 options:1 error:&v21];
  v10 = v21;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = +[EMBiomeEvent log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(EMBiomeEvent *)v10 json:v12];
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (void)eventWithData:(uint64_t)a3 dataVersion:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C6655000, a2, a3, "ERROR unarchiving Biome event: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)serialize
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C6655000, a2, a3, "ERROR serializing Biome event: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)json
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C6655000, a2, a3, "ERROR extracting json: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end