@interface MSCMSAppleHashAgilityAttribute
- (MSCMSAppleHashAgilityAttribute)initWithAttribute:(id)a3 error:(id *)a4;
- (MSCMSAppleHashAgilityAttribute)initWithHashAgilityValue:(id)a3;
- (id)encodeAttributeWithError:(id *)a3;
@end

@implementation MSCMSAppleHashAgilityAttribute

- (MSCMSAppleHashAgilityAttribute)initWithAttribute:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = MSCMSAppleHashAgilityAttribute;
  v7 = [(MSCMSAppleHashAgilityAttribute *)&v20 init];
  v8 = [v6 attributeValues];
  v9 = [v8 count];

  if (v9 != 1)
  {
    if (a4)
    {
      v13 = MSErrorCMSDomain[0];
      v15 = *a4;
      v16 = @"Apple Hash Agility Attribute should only have one value";
      v14 = -50;
      goto LABEL_7;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_13;
  }

  v10 = [v6 attributeValues];
  v11 = [v10 objectAtIndex:0];
  v12 = nsheim_decode_AppleHashAgilityValue(v11);

  if (v12)
  {
    if (a4)
    {
      v13 = MSErrorASN1Domain[0];
      v14 = v12;
      v15 = *a4;
      v16 = @"unable to decode Apple Hash Agility Attribute";
LABEL_7:
      [MSError MSErrorWithDomain:v13 code:v14 underlyingError:v15 description:v16];
      *a4 = v17 = 0;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v18 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
  if (v18)
  {
    free_AppleHashAgilityValue();
    v7 = [(MSCMSAppleHashAgilityAttribute *)v7 initWithHashAgilityValue:v18];
    v17 = v7;
  }

  else
  {
    v17 = 0;
  }

LABEL_13:
  return v17;
}

- (MSCMSAppleHashAgilityAttribute)initWithHashAgilityValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MSCMSAppleHashAgilityAttribute;
  v6 = [(MSCMSAppleHashAgilityAttribute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hashAgilityValue, a3);
  }

  return v7;
}

- (id)encodeAttributeWithError:(id *)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v22[0] = [(NSData *)self->_hashAgilityValue length];
  v22[1] = [(NSData *)self->_hashAgilityValue bytes];
  v21 = 0;
  v5 = length_AppleHashAgilityValue(v22);
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
  v8 = encode_AppleHashAgilityValue([v6 mutableBytes] + v5 - 1, v5, v22, &v21);
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
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"Failed encoding type AppleHashAgilityValue";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:{1, v21}];
    *a3 = [v11 errorWithDomain:@"com.apple.HeimASN1" code:v10 userInfo:v12];

    goto LABEL_5;
  }

  if (v5 != v21)
  {
    v19 = asn1_abort();
    return [(MSCMSAppleHashAgilityV2Attribute *)v19 attributeType];
  }

LABEL_9:
  if ([v7 length])
  {
    v13 = [MSCMSAttribute alloc];
    v14 = [MSOID OIDWithString:@"1.2.840.113635.100.9.1" error:a3];
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

@end