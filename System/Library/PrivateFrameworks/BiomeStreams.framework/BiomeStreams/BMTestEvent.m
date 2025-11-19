@interface BMTestEvent
- (BMTestEvent)initWithCoder:(id)a3;
- (BMTestEvent)initWithContent:(unsigned int)a3 dataVersion:(unsigned int)a4;
- (BMTestEvent)initWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BOOL)checkAndReportDecodingFailureIfNeededForuint32_t:(unsigned int)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMTestEvent

- (BMTestEvent)initWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = BMTestEvent;
  v7 = [(BMEventBase *)&v10 init];
  if (!v7 || [v6 length] == 8 && (objc_msgSend(v6, "getBytes:length:", &v7->_data, 8), v7->_data.dataVersion == a4))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BMTestEvent)initWithContent:(unsigned int)a3 dataVersion:(unsigned int)a4
{
  v7.receiver = self;
  v7.super_class = BMTestEvent;
  result = [(BMEventBase *)&v7 init];
  if (result)
  {
    result->_data.dataVersion = a4;
    result->_data.content = a3;
  }

  return result;
}

- (id)serialize
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&self->_data length:8];

  return v2;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForuint32_t:(unsigned int)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode key %@", v11, *MEMORY[0x1E696A578]];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 errorWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  p_data = &self->_data;
  dataVersion = self->_data.dataVersion;
  v5 = a3;
  [v5 encodeInt32:dataVersion forKey:@"dataVersion"];
  [v5 encodeInt32:p_data->content forKey:@"content"];
}

- (BMTestEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 decodeInt32ForKey:@"dataVersion"];
  if (-[BMTestEvent checkAndReportDecodingFailureIfNeededForuint32_t:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForuint32_t:key:coder:errorDomain:errorCode:", v7, @"dataVersion", v4, v6, -1) || (v8 = [v4 decodeInt32ForKey:@"content"], -[BMTestEvent checkAndReportDecodingFailureIfNeededForuint32_t:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForuint32_t:key:coder:errorDomain:errorCode:", v8, @"content", v4, v6, -1)))
  {
    v9 = 0;
  }

  else
  {
    self = [(BMTestEvent *)self initWithContent:v8 dataVersion:v7];
    v9 = self;
  }

  return v9;
}

@end