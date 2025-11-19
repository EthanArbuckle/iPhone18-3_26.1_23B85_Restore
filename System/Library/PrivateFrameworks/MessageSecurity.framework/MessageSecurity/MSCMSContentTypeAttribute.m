@interface MSCMSContentTypeAttribute
+ (id)contentTypeAttributeWithOID:(id)a3;
- (MSCMSContentTypeAttribute)initWithAttribute:(id)a3 error:(id *)a4;
- (MSCMSContentTypeAttribute)initWithOID:(id)a3;
- (id)encodeAttributeWithError:(id *)a3;
@end

@implementation MSCMSContentTypeAttribute

- (MSCMSContentTypeAttribute)initWithAttribute:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 attributeType];
  v8 = [v7 isEqualToString:@"1.2.840.113549.1.9.3"];

  if ((v8 & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    v14 = MSErrorCMSDomain[0];
    v16 = *a4;
    v17 = @"Not a ContentType attribute according to AttributeType";
LABEL_10:
    v15 = -26275;
    goto LABEL_11;
  }

  v9 = [v6 attributeValues];
  v10 = [v9 count];

  if (v10 != 1)
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    v14 = MSErrorCMSDomain[0];
    v16 = *a4;
    v17 = @"ContentType attribute contains more than one value";
    goto LABEL_10;
  }

  v24[0] = 0;
  v24[1] = 0;
  v11 = [v6 attributeValues];
  v12 = [v11 objectAtIndex:0];
  v13 = nsheim_decode_ContentType(v12);

  if (v13)
  {
    if (a4)
    {
      v14 = MSErrorASN1Domain[0];
      v15 = v13;
      v16 = *a4;
      v17 = @"unable to decode ContentType";
LABEL_11:
      [MSError MSErrorWithDomain:v14 code:v15 underlyingError:v16 description:v17];
      *a4 = v18 = 0;
      goto LABEL_19;
    }

LABEL_12:
    v18 = 0;
    goto LABEL_19;
  }

  v19 = [MSOID OIDWithAsn1OID:v24 error:a4];
  if (v19)
  {
    free_ContentType();
    v23.receiver = self;
    v23.super_class = MSCMSContentTypeAttribute;
    v20 = [(MSCMSContentTypeAttribute *)&v23 init];
    v21 = v20;
    if (v20)
    {
      [(MSCMSContentTypeAttribute *)v20 setContentType:v19];
    }

    self = v21;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

LABEL_19:
  return v18;
}

- (id)encodeAttributeWithError:(id *)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v23[0] = [(MSOID *)self->_contentType Asn1OID];
  v23[1] = v4;
  v22 = 0;
  v5 = length_ContentType(v23);
  v6 = [MEMORY[0x277CBEB28] dataWithLength:v5];
  if (!v6)
  {
    v10 = 12;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v7 = v6;
  v8 = encode_ContentType([v6 mutableBytes] + v5 - 1, v5, v23, &v22);
  if (v8)
  {
    v9 = v8;

    v10 = v9;
    if (!a3)
    {
LABEL_5:
      v7 = 0;
      goto LABEL_9;
    }

LABEL_4:
    v11 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"Failed encoding type ContentType";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:{1, v22}];
    *a3 = [v11 errorWithDomain:@"com.apple.HeimASN1" code:v10 userInfo:v12];

    goto LABEL_5;
  }

  if (v5 != v22)
  {
    v19 = asn1_abort();
    return [(MSCMSContentTypeAttribute *)v19 initWithOID:v20, v21];
  }

LABEL_9:
  if ([v7 length])
  {
    v13 = [MSCMSAttribute alloc];
    v14 = [MSOID OIDWithString:@"1.2.840.113549.1.9.3" error:a3];
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

- (MSCMSContentTypeAttribute)initWithOID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (initWithOID__onceToken != -1)
  {
    [MSCMSContentTypeAttribute initWithOID:];
  }

  v5 = initWithOID__sKnownContentTypes;
  v6 = [v4 OIDString];
  LOBYTE(v5) = [v5 containsObject:v6];

  if (v5)
  {
    v15.receiver = self;
    v15.super_class = MSCMSContentTypeAttribute;
    v7 = [(MSCMSContentTypeAttribute *)&v15 init];
    v8 = v7;
    if (v7)
    {
      [(MSCMSContentTypeAttribute *)v7 setContentType:v4];
    }

    self = v8;
    v9 = self;
  }

  else
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      [MSCMSContentTypeAttribute initWithOID:];
    }

    v10 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = [v4 OIDString];
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_258C80000, v11, OS_LOG_TYPE_ERROR, "Found unknown content type: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

void __41__MSCMSContentTypeAttribute_initWithOID___block_invoke()
{
  v5[9] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"1.2.840.113549.1.7.1";
  v5[1] = @"1.2.840.113549.1.7.2";
  v5[2] = @"1.2.840.113549.1.7.3";
  v5[3] = @"1.2.840.113549.1.7.5";
  v5[4] = @"1.2.840.113549.1.7.6";
  v5[5] = @"1.2.840.113549.1.9.16.1.2";
  v5[6] = @"1.2.840.113549.1.9.16.1.23";
  v5[7] = @"1.2.840.113549.1.9.16.1.9";
  v5[8] = @"1.2.840.113549.1.9.16.1.4";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:9];
  v2 = [v0 setWithArray:v1];
  v3 = initWithOID__sKnownContentTypes;
  initWithOID__sKnownContentTypes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __41__MSCMSContentTypeAttribute_initWithOID___block_invoke_2()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

+ (id)contentTypeAttributeWithOID:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithOID:v4];

  return v5;
}

@end