@interface MSCMSTimestampAttribute
- (BOOL)verifyTimestamps:(id)a3 error:(id *)a4;
- (MSCMSTimestampAttribute)initWithAttribute:(id)a3 error:(id *)a4;
- (MSCMSTimestampAttribute)initWithServerURL:(id)a3 chainRequested:(BOOL)a4;
- (MSCMSTimestampAttribute)initWithTimestampToken:(id)a3;
- (NSDate)timestampTime;
- (id)encodeAttributeWithError:(id *)a3;
@end

@implementation MSCMSTimestampAttribute

- (MSCMSTimestampAttribute)initWithAttribute:(id)a3 error:(id *)a4
{
  v11.receiver = self;
  v11.super_class = MSCMSTimestampAttribute;
  v5 = a3;
  v6 = [(MSCMSTimestampAttribute *)&v11 init];
  v7 = [MSCMSTimestampAttributeInternal alloc];
  v8 = [(MSCMSTimestampAttributeInternal *)v7 initWithAttribute:v5 error:a4, v11.receiver, v11.super_class];

  [(MSCMSTimestampAttribute *)v6 setTimestampAttribute:v8];
  v9 = [(MSCMSTimestampAttribute *)v6 timestampAttribute];

  if (v9)
  {
    v9 = v6;
  }

  return v9;
}

- (MSCMSTimestampAttribute)initWithServerURL:(id)a3 chainRequested:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MSCMSTimestampAttribute;
  v8 = [(MSCMSTimestampAttribute *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serverURL, a3);
    v9->_certChainRequested = a4;
  }

  return v9;
}

- (MSCMSTimestampAttribute)initWithTimestampToken:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = MSCMSTimestampAttribute;
  v3 = a3;
  v4 = [(MSCMSTimestampAttribute *)&v13 init];
  v12 = 0;
  v5 = [[MSCMSTimestampAttributeInternal alloc] initWithTimestampToken:v3 error:&v12];

  v6 = v12;
  [(MSCMSTimestampAttribute *)v4 setTimestampAttribute:v5];

  v7 = [(MSCMSTimestampAttribute *)v4 timestampAttribute];

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      [MSCMSTimestampAttribute initWithTimestampToken:];
    }

    v9 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[MSCMSTimestampAttribute initWithTimestampToken:]";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_258C80000, v9, OS_LOG_TYPE_ERROR, "%s failed with %@", buf, 0x16u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __50__MSCMSTimestampAttribute_initWithTimestampToken___block_invoke()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

- (BOOL)verifyTimestamps:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MSCMSTimestampAttribute *)self timestampAttribute];
  LOBYTE(a4) = [v7 verifyTimestamp:v6 error:a4];

  return a4;
}

- (id)encodeAttributeWithError:(id *)a3
{
  v4 = [(MSCMSTimestampAttribute *)self timestampAttribute];
  v5 = [v4 encodeAttributeWithError:a3];

  return v5;
}

- (NSDate)timestampTime
{
  v2 = [(MSCMSTimestampAttribute *)self timestampAttribute];
  v3 = [v2 timestampToken];

  return v3;
}

@end