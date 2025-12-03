@interface MSCMSSMIMECapabilitiesAttribute
- (MSCMSSMIMECapabilitiesAttribute)init;
- (MSCMSSMIMECapabilitiesAttribute)initWithAttribute:(id)attribute error:(id *)error;
- (MSCMSSMIMECapabilitiesAttribute)initWithCapabilities:(id)capabilities;
- (id)copyAttributeData:(id *)data;
- (id)encodeAttributeWithError:(id *)error;
@end

@implementation MSCMSSMIMECapabilitiesAttribute

- (MSCMSSMIMECapabilitiesAttribute)initWithAttribute:(id)attribute error:(id *)error
{
  attributeCopy = attribute;
  v24.receiver = self;
  v24.super_class = MSCMSSMIMECapabilitiesAttribute;
  v7 = [(MSCMSSMIMECapabilitiesAttribute *)&v24 init];
  attributeType = [attributeCopy attributeType];
  v9 = [attributeType isEqualToString:@"1.2.840.113549.1.9.15"];

  if ((v9 & 1) == 0)
  {
    if (error)
    {
      v15 = MSErrorCMSDomain[0];
      v17 = *error;
      v18 = @"Not an SMIMECapabilities attribute according to AttributeType";
      v16 = -26275;
      goto LABEL_10;
    }

LABEL_11:
    v19 = 0;
    goto LABEL_13;
  }

  attributeValues = [attributeCopy attributeValues];
  v11 = [attributeValues count];

  if (v11 != 1)
  {
    if (error)
    {
      v15 = MSErrorCMSDomain[0];
      v17 = *error;
      v18 = @"SMIME Capabilities Attribute should only have one value";
      v16 = -50;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v22 = 0;
  v23 = 0;
  attributeValues2 = [attributeCopy attributeValues];
  v13 = [attributeValues2 objectAtIndex:0];
  v14 = nsheim_decode_SMIMECapabilities(v13);

  if (!v14)
  {
    v20 = [MEMORY[0x277CBEB58] set];
    objc_storeStrong(&v7->_capabilities, v20);
    free_SMIMECapabilities();
    v19 = v7;

    goto LABEL_13;
  }

  if (!error)
  {
    goto LABEL_11;
  }

  asn1ErrorToNSError(v14, error);
  v15 = MSErrorASN1Domain[0];
  v16 = v14;
  v17 = *error;
  v18 = @"unable to decode SMIME Capabilities Attribute";
LABEL_10:
  [MSError MSErrorWithDomain:v15 code:v16 underlyingError:v17 description:v18];
  *error = v19 = 0;
LABEL_13:

  return v19;
}

- (MSCMSSMIMECapabilitiesAttribute)init
{
  v12.receiver = self;
  v12.super_class = MSCMSSMIMECapabilitiesAttribute;
  v2 = [(MSCMSSMIMECapabilitiesAttribute *)&v12 init];
  v3 = [MEMORY[0x277CBEB58] set];
  for (i = 0; i != 56; i += 8)
  {
    v5 = [MSOID alloc];
    v6 = *(&off_2798BE438 + i);
    v11 = 0;
    v7 = [(MSOID *)v5 initWithAsn1OID:v6 error:&v11];
    v8 = v11;
    [(NSSet *)v3 addObject:v7];
  }

  capabilities = v2->_capabilities;
  v2->_capabilities = v3;

  return v2;
}

- (MSCMSSMIMECapabilitiesAttribute)initWithCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v8.receiver = self;
  v8.super_class = MSCMSSMIMECapabilitiesAttribute;
  v5 = [(MSCMSSMIMECapabilitiesAttribute *)&v8 init];
  capabilities = v5->_capabilities;
  v5->_capabilities = capabilitiesCopy;

  return v5;
}

- (id)copyAttributeData:(id *)data
{
  v25[1] = *MEMORY[0x277D85DE8];
  capabilities = self->_capabilities;
  if (!capabilities)
  {
    v14 = 0;
LABEL_12:
    v17 = *MEMORY[0x277D85DE8];
    return v14;
  }

  v23 = 0;
  v22 = [(NSSet *)capabilities count];
  v6 = malloc_type_malloc(24 * v22, 0x10300406712BA52uLL);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v7 = self->_capabilities;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__MSCMSSMIMECapabilitiesAttribute_copyAttributeData___block_invoke;
  v20[3] = &unk_2798BE478;
  v20[4] = v21;
  v20[5] = v6;
  [(NSSet *)v7 enumerateObjectsUsingBlock:v20];
  v23 = v6;
  v19 = 0;
  v8 = length_SMIMECapabilities(&v22);
  v9 = [MEMORY[0x277CBEB28] dataWithLength:v8];
  v10 = v9;
  if (!v9)
  {
    v13 = 12;
    if (!data)
    {
LABEL_9:
      v10 = 0;
LABEL_11:
      free(v6);
      v23 = 0;
      v14 = v10;
      _Block_object_dispose(v21, 8);

      goto LABEL_12;
    }

LABEL_8:
    v15 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"Failed encoding type SMIMECapabilities";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:{1, v19}];
    *data = [v15 errorWithDomain:@"com.apple.HeimASN1" code:v13 userInfo:v16];

    goto LABEL_9;
  }

  v11 = v9;
  v12 = encode_SMIMECapabilities([v10 mutableBytes] + v8 - 1, v8, &v22, &v19);
  if (v12)
  {

    v13 = v12;
    if (!data)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v8 == v19)
  {
    goto LABEL_11;
  }

  result = asn1_abort();
  __break(1u);
  return result;
}

uint64_t __53__MSCMSSMIMECapabilitiesAttribute_copyAttributeData___block_invoke(uint64_t a1, void *a2)
{
  v3 = (*(a1 + 40) + 24 * *(*(*(a1 + 32) + 8) + 24));
  result = [a2 Asn1OID];
  *v3 = result;
  v3[1] = v5;
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (id)encodeAttributeWithError:(id *)error
{
  v4 = [(MSCMSSMIMECapabilitiesAttribute *)self copyAttributeData:?];
  if (v4)
  {
    v5 = [MSCMSAttribute alloc];
    v6 = [MSOID OIDWithString:@"1.2.840.113549.1.9.15" error:error];
    v7 = [MEMORY[0x277CBEA60] arrayWithObject:v4];
    v8 = [(MSCMSAttribute *)v5 initWithAttributeType:v6 values:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end