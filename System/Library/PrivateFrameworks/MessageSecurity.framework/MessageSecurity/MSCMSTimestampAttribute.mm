@interface MSCMSTimestampAttribute
- (BOOL)verifyTimestamps:(id)timestamps error:(id *)error;
- (MSCMSTimestampAttribute)initWithAttribute:(id)attribute error:(id *)error;
- (MSCMSTimestampAttribute)initWithServerURL:(id)l chainRequested:(BOOL)requested;
- (MSCMSTimestampAttribute)initWithTimestampToken:(id)token;
- (NSDate)timestampTime;
- (id)encodeAttributeWithError:(id *)error;
@end

@implementation MSCMSTimestampAttribute

- (MSCMSTimestampAttribute)initWithAttribute:(id)attribute error:(id *)error
{
  v11.receiver = self;
  v11.super_class = MSCMSTimestampAttribute;
  attributeCopy = attribute;
  v6 = [(MSCMSTimestampAttribute *)&v11 init];
  v7 = [MSCMSTimestampAttributeInternal alloc];
  v8 = [(MSCMSTimestampAttributeInternal *)v7 initWithAttribute:attributeCopy error:error, v11.receiver, v11.super_class];

  [(MSCMSTimestampAttribute *)v6 setTimestampAttribute:v8];
  timestampAttribute = [(MSCMSTimestampAttribute *)v6 timestampAttribute];

  if (timestampAttribute)
  {
    timestampAttribute = v6;
  }

  return timestampAttribute;
}

- (MSCMSTimestampAttribute)initWithServerURL:(id)l chainRequested:(BOOL)requested
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = MSCMSTimestampAttribute;
  v8 = [(MSCMSTimestampAttribute *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serverURL, l);
    v9->_certChainRequested = requested;
  }

  return v9;
}

- (MSCMSTimestampAttribute)initWithTimestampToken:(id)token
{
  v18 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = MSCMSTimestampAttribute;
  tokenCopy = token;
  v4 = [(MSCMSTimestampAttribute *)&v13 init];
  v12 = 0;
  v5 = [[MSCMSTimestampAttributeInternal alloc] initWithTimestampToken:tokenCopy error:&v12];

  v6 = v12;
  [(MSCMSTimestampAttribute *)v4 setTimestampAttribute:v5];

  timestampAttribute = [(MSCMSTimestampAttribute *)v4 timestampAttribute];

  if (timestampAttribute)
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

- (BOOL)verifyTimestamps:(id)timestamps error:(id *)error
{
  timestampsCopy = timestamps;
  timestampAttribute = [(MSCMSTimestampAttribute *)self timestampAttribute];
  LOBYTE(error) = [timestampAttribute verifyTimestamp:timestampsCopy error:error];

  return error;
}

- (id)encodeAttributeWithError:(id *)error
{
  timestampAttribute = [(MSCMSTimestampAttribute *)self timestampAttribute];
  v5 = [timestampAttribute encodeAttributeWithError:error];

  return v5;
}

- (NSDate)timestampTime
{
  timestampAttribute = [(MSCMSTimestampAttribute *)self timestampAttribute];
  timestampToken = [timestampAttribute timestampToken];

  return timestampToken;
}

@end