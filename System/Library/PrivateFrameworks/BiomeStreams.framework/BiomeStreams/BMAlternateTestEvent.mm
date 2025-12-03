@interface BMAlternateTestEvent
- (BMAlternateTestEvent)initWithAlternateContent:(unsigned int)content dataVersion:(unsigned int)version;
- (BMAlternateTestEvent)initWithCoder:(id)coder;
- (BMAlternateTestEvent)initWithData:(id)data dataVersion:(unsigned int)version;
- (BOOL)checkAndReportDecodingFailureIfNeededForuint32_t:(unsigned int)foruint32_t key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMAlternateTestEvent

- (BMAlternateTestEvent)initWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = BMAlternateTestEvent;
  v7 = [(BMEventBase *)&v10 init];
  if (!v7 || [dataCopy length] == 8 && (objc_msgSend(dataCopy, "getBytes:length:", &v7->_data, 8), v7->_data.dataVersion == version))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BMAlternateTestEvent)initWithAlternateContent:(unsigned int)content dataVersion:(unsigned int)version
{
  v7.receiver = self;
  v7.super_class = BMAlternateTestEvent;
  result = [(BMEventBase *)&v7 init];
  if (result)
  {
    result->_data.dataVersion = version;
    result->_data.content = content;
  }

  return result;
}

- (id)serialize
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&self->_data length:8];

  return v2;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForuint32_t:(unsigned int)foruint32_t key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!foruint32_t)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode key %@", keyCopy, *MEMORY[0x1E696A578]];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 errorWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  p_data = &self->_data;
  dataVersion = self->_data.dataVersion;
  coderCopy = coder;
  [coderCopy encodeInt32:dataVersion forKey:@"dataVersion"];
  [coderCopy encodeInt32:p_data->content forKey:@"alternateContent"];
}

- (BMAlternateTestEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [coderCopy decodeInt32ForKey:@"dataVersion"];
  if (-[BMAlternateTestEvent checkAndReportDecodingFailureIfNeededForuint32_t:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForuint32_t:key:coder:errorDomain:errorCode:", v7, @"dataVersion", coderCopy, v6, -1) || (v8 = [coderCopy decodeInt32ForKey:@"alternateContent"], -[BMAlternateTestEvent checkAndReportDecodingFailureIfNeededForuint32_t:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForuint32_t:key:coder:errorDomain:errorCode:", v8, @"alternateContent", coderCopy, v6, -1)))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(BMAlternateTestEvent *)self initWithAlternateContent:v8 dataVersion:v7];
    selfCopy = self;
  }

  return selfCopy;
}

@end