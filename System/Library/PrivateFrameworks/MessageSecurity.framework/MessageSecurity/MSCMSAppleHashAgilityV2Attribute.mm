@interface MSCMSAppleHashAgilityV2Attribute
- (MSCMSAppleHashAgilityV2Attribute)initWithAttribute:(id)attribute error:(id *)error;
- (MSCMSAppleHashAgilityV2Attribute)initWithHashAgilityValues:(id)values;
- (id)encodeAttributeWithError:(id *)error;
@end

@implementation MSCMSAppleHashAgilityV2Attribute

- (MSCMSAppleHashAgilityV2Attribute)initWithAttribute:(id)attribute error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  attributeCopy = attribute;
  v34.receiver = self;
  v34.super_class = MSCMSAppleHashAgilityV2Attribute;
  v7 = [(MSCMSAppleHashAgilityV2Attribute *)&v34 init];
  attributeValues = [attributeCopy attributeValues];
  v9 = [attributeValues count];

  if (v9)
  {
    v10 = MEMORY[0x277CBEB38];
    attributeValues2 = [attributeCopy attributeValues];
    v12 = [v10 dictionaryWithCapacity:{objc_msgSend(attributeValues2, "count")}];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    attributeValues3 = [attributeCopy attributeValues];
    v14 = [attributeValues3 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      v27 = v7;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(attributeValues3);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v19 = nsheim_decode_AppleAgileHash(v18);
          if (v19)
          {
            v7 = v27;
            if (error)
            {
              *error = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:v19 underlyingError:*error description:@"unable to decode Apple Hash Agility V2 Agile Hash"];
            }

            goto LABEL_20;
          }

          v20 = [MEMORY[0x277CBEA90] dataWithBytes:*(&v29 + 1) length:v29];
          v21 = [MSOID OIDWithAsn1OID:&v28 error:error];
          oIDString = [v21 OIDString];

          if (oIDString)
          {
            v23 = v20 == 0;
          }

          else
          {
            v23 = 1;
          }

          if (v23)
          {
            free_AppleAgileHash();

            v7 = v27;
LABEL_20:

            v24 = 0;
            goto LABEL_21;
          }

          [v12 setObject:v20 forKeyedSubscript:oIDString];
          free_AppleAgileHash();
        }

        v15 = [attributeValues3 countByEnumeratingWithState:&v30 objects:v35 count:16];
        v7 = v27;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v7 = [(MSCMSAppleHashAgilityV2Attribute *)v7 initWithHashAgilityValues:v12];
    v24 = v7;
LABEL_21:
  }

  else if (error)
  {
    [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:*error description:@"Apple Hash Agility V2 Attribute must have one value"];
    *error = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (MSCMSAppleHashAgilityV2Attribute)initWithHashAgilityValues:(id)values
{
  valuesCopy = values;
  v9.receiver = self;
  v9.super_class = MSCMSAppleHashAgilityV2Attribute;
  v6 = [(MSCMSAppleHashAgilityV2Attribute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hashAgilityValues, values);
  }

  return v7;
}

- (id)encodeAttributeWithError:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  hashAgilityValues = [(MSCMSAppleHashAgilityV2Attribute *)self hashAgilityValues];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(hashAgilityValues, "count")}];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  hashAgilityValues2 = [(MSCMSAppleHashAgilityV2Attribute *)self hashAgilityValues];
  v9 = [hashAgilityValues2 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    obj = hashAgilityValues2;
    v34 = *v39;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v39 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v38 + 1) + 8 * v11);
      hashAgilityValues3 = [(MSCMSAppleHashAgilityV2Attribute *)self hashAgilityValues];
      v14 = [hashAgilityValues3 objectForKeyedSubscript:v12];

      v15 = [MSOID OIDWithString:v12 error:error];
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = v15;
      errorCopy = error;
      v18 = v7;
      v36 = 0u;
      v37 = 0u;
      *&v36 = [v15 Asn1OID];
      *(&v36 + 1) = v19;
      *(&v37 + 1) = [v14 bytes];
      *&v37 = [v14 length];
      v35 = 0;
      v20 = length_AppleAgileHash(&v36);
      v21 = [MEMORY[0x277CBEB28] dataWithLength:v20];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v23 = encode_AppleAgileHash([v21 mutableBytes] + v20 - 1, v20, &v36, &v35);
      if (v23)
      {
        v28 = v23;

        v27 = v28;
        goto LABEL_15;
      }

      if (v20 != v35)
      {
        asn1_abort();
      }

      v7 = v18;
      [v18 addObject:v22];

      ++v11;
      error = errorCopy;
      if (v10 == v11)
      {
        hashAgilityValues2 = obj;
        v10 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v27 = 12;
LABEL_15:
    v7 = v18;
    if (errorCopy)
    {
      v29 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      v43 = @"Failed encoding type AppleAgileHash";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *errorCopy = [v29 errorWithDomain:@"com.apple.HeimASN1" code:v27 userInfo:v30];
    }

LABEL_18:
    v26 = 0;
    v25 = obj;
    goto LABEL_19;
  }

LABEL_12:

  v24 = [MSCMSAttribute alloc];
  v25 = [MSOID OIDWithString:@"1.2.840.113635.100.9.2" error:error];
  v26 = [(MSCMSAttribute *)v24 initWithAttributeType:v25 values:v7];
LABEL_19:

  v31 = *MEMORY[0x277D85DE8];

  return v26;
}

@end