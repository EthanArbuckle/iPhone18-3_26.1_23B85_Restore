@interface _DPDediscoError
+ (id)errorWithCode:(int64_t)code description:(id)description;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description;
- (BOOL)logAndStoreInError:(id *)error;
- (_DPDediscoError)initWithCode:(int64_t)code description:(id)description;
- (_DPDediscoError)initWithCode:(int64_t)code underlyingError:(id)error description:(id)description;
@end

@implementation _DPDediscoError

- (_DPDediscoError)initWithCode:(int64_t)code description:(id)description
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = description;
  v6 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = _DPDediscoError;
  v9 = [(_DPDediscoError *)&v12 initWithDomain:@"com.apple.DPDedisco" code:code userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (_DPDediscoError)initWithCode:(int64_t)code underlyingError:(id)error description:(id)description
{
  v29[2] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA450];
  if (error)
  {
    v10 = *MEMORY[0x277CCA7E8];
    v28[0] = *MEMORY[0x277CCA450];
    v28[1] = v10;
    v29[0] = description;
    v29[1] = error;
    v11 = MEMORY[0x277CBEAC0];
    descriptionCopy = description;
    errorCopy = error;
    v14 = v29;
    v15 = v28;
    v16 = v11;
    v17 = 2;
  }

  else
  {
    v26 = *MEMORY[0x277CCA450];
    descriptionCopy2 = description;
    v18 = MEMORY[0x277CBEAC0];
    descriptionCopy3 = description;
    v20 = 0;
    v14 = &descriptionCopy2;
    v15 = &v26;
    v16 = v18;
    v17 = 1;
  }

  v21 = [v16 dictionaryWithObjects:v14 forKeys:v15 count:v17];
  v25.receiver = self;
  v25.super_class = _DPDediscoError;
  v22 = [(_DPDediscoError *)&v25 initWithDomain:@"com.apple.DPDedisco" code:code userInfo:v21];

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)errorWithCode:(int64_t)code description:(id)description
{
  descriptionCopy = description;
  v6 = [objc_alloc(objc_opt_class()) initWithCode:code description:descriptionCopy];

  return v6;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description
{
  descriptionCopy = description;
  errorCopy = error;
  v9 = [objc_alloc(objc_opt_class()) initWithCode:code underlyingError:errorCopy description:descriptionCopy];

  return v9;
}

- (BOOL)logAndStoreInError:(id *)error
{
  v5 = +[_DPLog service];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_DPSemanticVersion initWithString:v5 error:?];
  }

  if (error)
  {
    selfCopy = self;
    *error = self;
  }

  return 1;
}

@end