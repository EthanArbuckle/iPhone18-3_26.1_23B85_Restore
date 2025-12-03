@interface MSCMSMessageDigestAttribute
+ (id)messageDigestAttributeWithDigest:(id)digest;
- (MSCMSMessageDigestAttribute)initWithAttribute:(id)attribute error:(id *)error;
- (MSCMSMessageDigestAttribute)initWithDigest:(id)digest;
- (id)encodeAttributeWithError:(id *)error;
@end

@implementation MSCMSMessageDigestAttribute

- (MSCMSMessageDigestAttribute)initWithAttribute:(id)attribute error:(id *)error
{
  attributeCopy = attribute;
  attributeType = [attributeCopy attributeType];
  v8 = [attributeType isEqualToString:@"1.2.840.113549.1.9.4"];

  if ((v8 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v14 = MSErrorCMSDomain[0];
    v16 = *error;
    v17 = @"Not a MessageDigest attribute according to AttributeType";
LABEL_10:
    v15 = -26275;
    goto LABEL_11;
  }

  attributeValues = [attributeCopy attributeValues];
  v10 = [attributeValues count];

  if (v10 != 1)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v14 = MSErrorCMSDomain[0];
    v16 = *error;
    v17 = @"MessageDigest attribute contains more than one value";
    goto LABEL_10;
  }

  attributeValues2 = [attributeCopy attributeValues];
  v12 = [attributeValues2 objectAtIndex:0];
  v13 = nsheim_decode_MessageDigest(v12);

  if (v13)
  {
    if (error)
    {
      v14 = MSErrorASN1Domain[0];
      v15 = v13;
      v16 = *error;
      v17 = @"unable to decode MessageDigest";
LABEL_11:
      [MSError MSErrorWithDomain:v14 code:v15 underlyingError:v16 description:v17];
      *error = selfCopy = 0;
      goto LABEL_17;
    }

LABEL_12:
    selfCopy = 0;
    goto LABEL_17;
  }

  v19 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
  if (v19)
  {
    free_MessageDigest();
    self = [(MSCMSMessageDigestAttribute *)self initWithDigest:v19];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_17:
  return selfCopy;
}

- (id)encodeAttributeWithError:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  v23[0] = [(NSData *)self->_messageDigest length];
  v23[1] = [(NSData *)self->_messageDigest bytes];
  v22 = 0;
  v5 = length_MessageDigest(v23);
  v6 = [MEMORY[0x277CBEB28] dataWithLength:v5];
  if (!v6)
  {
    v10 = 12;
    if (!error)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v7 = v6;
  v8 = encode_MessageDigest([v6 mutableBytes] + v5 - 1, v5, v23, &v22);
  if (v8)
  {
    v9 = v8;

    v10 = v9;
    if (!error)
    {
LABEL_5:
      v7 = 0;
      goto LABEL_9;
    }

LABEL_4:
    v11 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"Failed encoding type MessageDigest";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:{1, v22}];
    *error = [v11 errorWithDomain:@"com.apple.HeimASN1" code:v10 userInfo:v12];

    goto LABEL_5;
  }

  if (v5 != v22)
  {
    v19 = asn1_abort();
    return [(MSCMSMessageDigestAttribute *)v19 initWithDigest:v20, v21];
  }

LABEL_9:
  if ([v7 length])
  {
    v13 = [MSCMSAttribute alloc];
    v14 = [MSOID OIDWithString:@"1.2.840.113549.1.9.4" error:error];
    v15 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
    v16 = [(MSCMSAttribute *)v13 initWithAttributeType:v14 values:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (MSCMSMessageDigestAttribute)initWithDigest:(id)digest
{
  v15 = *MEMORY[0x277D85DE8];
  digestCopy = digest;
  if ([digestCopy length] == 16 || objc_msgSend(digestCopy, "length") == 20 || objc_msgSend(digestCopy, "length") == 28 || objc_msgSend(digestCopy, "length") == 32 || objc_msgSend(digestCopy, "length") == 48 || objc_msgSend(digestCopy, "length") == 64)
  {
    v12.receiver = self;
    v12.super_class = MSCMSMessageDigestAttribute;
    v5 = [(MSCMSMessageDigestAttribute *)&v12 init];
    v6 = v5;
    if (v5)
    {
      [(MSCMSMessageDigestAttribute *)v5 setMessageDigest:digestCopy];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      [MSCMSMessageDigestAttribute initWithDigest:];
    }

    v10 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      *buf = 134217984;
      v14 = [digestCopy length];
      _os_log_impl(&dword_258C80000, v11, OS_LOG_TYPE_ERROR, "Digest length %lu is not a supported length", buf, 0xCu);
    }

    selfCopy = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

uint64_t __46__MSCMSMessageDigestAttribute_initWithDigest___block_invoke()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

+ (id)messageDigestAttributeWithDigest:(id)digest
{
  digestCopy = digest;
  v5 = [[self alloc] initWithDigest:digestCopy];

  return v5;
}

@end