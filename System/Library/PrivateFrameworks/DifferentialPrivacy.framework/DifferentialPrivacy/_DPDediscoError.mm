@interface _DPDediscoError
+ (id)errorWithCode:(int64_t)a3 description:(id)a4;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5;
- (BOOL)logAndStoreInError:(id *)a3;
- (_DPDediscoError)initWithCode:(int64_t)a3 description:(id)a4;
- (_DPDediscoError)initWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5;
@end

@implementation _DPDediscoError

- (_DPDediscoError)initWithCode:(int64_t)a3 description:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = _DPDediscoError;
  v9 = [(_DPDediscoError *)&v12 initWithDomain:@"com.apple.DPDedisco" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (_DPDediscoError)initWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5
{
  v29[2] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA450];
  if (a4)
  {
    v10 = *MEMORY[0x277CCA7E8];
    v28[0] = *MEMORY[0x277CCA450];
    v28[1] = v10;
    v29[0] = a5;
    v29[1] = a4;
    v11 = MEMORY[0x277CBEAC0];
    v12 = a5;
    v13 = a4;
    v14 = v29;
    v15 = v28;
    v16 = v11;
    v17 = 2;
  }

  else
  {
    v26 = *MEMORY[0x277CCA450];
    v27 = a5;
    v18 = MEMORY[0x277CBEAC0];
    v19 = a5;
    v20 = 0;
    v14 = &v27;
    v15 = &v26;
    v16 = v18;
    v17 = 1;
  }

  v21 = [v16 dictionaryWithObjects:v14 forKeys:v15 count:v17];
  v25.receiver = self;
  v25.super_class = _DPDediscoError;
  v22 = [(_DPDediscoError *)&v25 initWithDomain:@"com.apple.DPDedisco" code:a3 userInfo:v21];

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)errorWithCode:(int64_t)a3 description:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(objc_opt_class()) initWithCode:a3 description:v5];

  return v6;
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [objc_alloc(objc_opt_class()) initWithCode:a3 underlyingError:v8 description:v7];

  return v9;
}

- (BOOL)logAndStoreInError:(id *)a3
{
  v5 = +[_DPLog service];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_DPSemanticVersion initWithString:v5 error:?];
  }

  if (a3)
  {
    v6 = self;
    *a3 = self;
  }

  return 1;
}

@end