@interface CPSWebRequest
- (BOOL)isEqual:(id)a3;
- (CPSWebRequest)initWithCoder:(id)a3;
- (CPSWebRequest)initWithURL:(id)a3 callback:(id)a4 additionalHeaderFields:(id)a5;
- (CPSWebRequest)initWithURL:(id)a3 callbackScheme:(id)a4 additionalHeaderFields:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSWebRequest

- (CPSWebRequest)initWithURL:(id)a3 callbackScheme:(id)a4 additionalHeaderFields:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    [CPSWebRequest initWithURL:a2 callbackScheme:? additionalHeaderFields:?];
  }

  if (!v11)
  {
    [CPSWebRequest initWithURL:a2 callbackScheme:? additionalHeaderFields:?];
  }

  v13 = v12;
  v21.receiver = self;
  v21.super_class = CPSWebRequest;
  v14 = [(CPSWebRequest *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_URL, a3);
    v16 = [v11 copy];
    callbackScheme = v15->_callbackScheme;
    v15->_callbackScheme = v16;

    v18 = [v13 copy];
    additionalHeaderFields = v15->_additionalHeaderFields;
    v15->_additionalHeaderFields = v18;
  }

  return v15;
}

- (CPSWebRequest)initWithURL:(id)a3 callback:(id)a4 additionalHeaderFields:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    [CPSWebRequest initWithURL:a2 callback:? additionalHeaderFields:?];
  }

  if (!v11)
  {
    [CPSWebRequest initWithURL:a2 callback:? additionalHeaderFields:?];
  }

  v13 = v12;
  v19.receiver = self;
  v19.super_class = CPSWebRequest;
  v14 = [(CPSWebRequest *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_URL, a3);
    objc_storeStrong(&v15->_callback, a4);
    v16 = [v13 copy];
    additionalHeaderFields = v15->_additionalHeaderFields;
    v15->_additionalHeaderFields = v16;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CF0C20];
  v6 = objc_opt_self();
  v7 = [v5 builderWithObject:v4 ofExpectedClass:v6];

  URL = self->_URL;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __25__CPSWebRequest_isEqual___block_invoke;
  v29[3] = &unk_278DF1800;
  v9 = v4;
  v30 = v9;
  v10 = [v7 appendObject:URL counterpart:v29];
  callback = self->_callback;
  if (callback)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __25__CPSWebRequest_isEqual___block_invoke_2;
    v27[3] = &unk_278DF1828;
    v12 = &v28;
    v28 = v9;
    v13 = [v7 appendObject:callback counterpart:v27];
  }

  else
  {
    callbackScheme = self->_callbackScheme;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __25__CPSWebRequest_isEqual___block_invoke_3;
    v25[3] = &unk_278DF1420;
    v12 = &v26;
    v26 = v9;
    v15 = [v7 appendString:callbackScheme counterpart:v25];
  }

  additionalHeaderFields = self->_additionalHeaderFields;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __25__CPSWebRequest_isEqual___block_invoke_4;
  v23 = &unk_278DF1850;
  v24 = v9;
  v17 = v9;
  v18 = [v7 appendObject:additionalHeaderFields counterpart:&v20];
  LOBYTE(additionalHeaderFields) = [v7 isEqual];

  return additionalHeaderFields;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_URL];
  if (self->_callback)
  {
    v5 = [v3 appendObject:?];
  }

  else
  {
    v6 = [v3 appendString:self->_callbackScheme];
  }

  v7 = [v3 appendObject:self->_additionalHeaderFields];
  v8 = [v3 hash];

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  URL = self->_URL;
  v5 = CUPrintNSObjectMasked();
  [v3 appendString:v5 withName:@"URL"];

  callback = self->_callback;
  if (callback)
  {
    v7 = [v3 appendObject:callback withName:@"callback"];
  }

  else
  {
    [v3 appendString:self->_callbackScheme withName:@"callbackScheme"];
  }

  additionalHeaderFields = self->_additionalHeaderFields;
  v9 = CUPrintNSObjectMasked();
  v10 = [v3 appendObject:v9 withName:@"additionalHeaderFields" skipIfNil:1];

  v11 = [v3 build];

  return v11;
}

- (CPSWebRequest)initWithCoder:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"URL"];

  if (!v6)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA050];
    v24 = *MEMORY[0x277CCA470];
    v25[0] = @"Failed to decode CPSWebRequest: missing URL value";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v9 = [v14 errorWithDomain:v15 code:4865 userInfo:v7];
    [v4 failWithError:v9];
    goto LABEL_5;
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callback"];
  v8 = objc_opt_self();
  v9 = [v4 decodeObjectOfClass:v8 forKey:@"callbackScheme"];

  if (!(v7 | v9))
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA050];
    v22 = *MEMORY[0x277CCA470];
    v23 = @"Failed to decode CPSWebRequest: missing callback value";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v13 = [v10 errorWithDomain:v11 code:4865 userInfo:v12];
    [v4 failWithError:v13];

LABEL_5:
    v16 = 0;
    goto LABEL_10;
  }

  v17 = objc_opt_class();
  v18 = [v4 decodeDictionaryWithKeysOfClass:v17 objectsOfClass:objc_opt_class() forKey:@"additionalHeaderFields"];
  if (v7)
  {
    v19 = [(CPSWebRequest *)self initWithURL:v6 callback:v7 additionalHeaderFields:v18];
  }

  else
  {
    v19 = [(CPSWebRequest *)self initWithURL:v6 callbackScheme:v9 additionalHeaderFields:v18];
  }

  self = v19;

  v16 = self;
LABEL_10:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  URL = self->_URL;
  v7 = a3;
  [v7 encodeObject:URL forKey:@"URL"];
  callback = self->_callback;
  if (callback)
  {
    v6 = @"callback";
  }

  else
  {
    callback = self->_callbackScheme;
    v6 = @"callbackScheme";
  }

  [v7 encodeObject:callback forKey:v6];
  [v7 encodeObject:self->_additionalHeaderFields forKey:@"additionalHeaderFields"];
}

- (void)initWithURL:(char *)a1 callbackScheme:additionalHeaderFields:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_243D1C000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"callbackScheme != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithURL:(char *)a1 callbackScheme:additionalHeaderFields:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_243D1C000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"URL != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithURL:(char *)a1 callback:additionalHeaderFields:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_243D1C000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"callback != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithURL:(char *)a1 callback:additionalHeaderFields:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_243D1C000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"URL != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end