@interface MSCMSAppleHashAgilityV2Attribute
- (MSCMSAppleHashAgilityV2Attribute)initWithAttribute:(id)a3 error:(id *)a4;
- (MSCMSAppleHashAgilityV2Attribute)initWithHashAgilityValues:(id)a3;
- (id)encodeAttributeWithError:(id *)a3;
@end

@implementation MSCMSAppleHashAgilityV2Attribute

- (MSCMSAppleHashAgilityV2Attribute)initWithAttribute:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v34.receiver = self;
  v34.super_class = MSCMSAppleHashAgilityV2Attribute;
  v7 = [(MSCMSAppleHashAgilityV2Attribute *)&v34 init];
  v8 = [v6 attributeValues];
  v9 = [v8 count];

  if (v9)
  {
    v10 = MEMORY[0x277CBEB38];
    v11 = [v6 attributeValues];
    v12 = [v10 dictionaryWithCapacity:{objc_msgSend(v11, "count")}];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = [v6 attributeValues];
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v19 = nsheim_decode_AppleAgileHash(v18);
          if (v19)
          {
            v7 = v27;
            if (a4)
            {
              *a4 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:v19 underlyingError:*a4 description:@"unable to decode Apple Hash Agility V2 Agile Hash"];
            }

            goto LABEL_20;
          }

          v20 = [MEMORY[0x277CBEA90] dataWithBytes:*(&v29 + 1) length:v29];
          v21 = [MSOID OIDWithAsn1OID:&v28 error:a4];
          v22 = [v21 OIDString];

          if (v22)
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

          [v12 setObject:v20 forKeyedSubscript:v22];
          free_AppleAgileHash();
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
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

  else if (a4)
  {
    [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:*a4 description:@"Apple Hash Agility V2 Attribute must have one value"];
    *a4 = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (MSCMSAppleHashAgilityV2Attribute)initWithHashAgilityValues:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MSCMSAppleHashAgilityV2Attribute;
  v6 = [(MSCMSAppleHashAgilityV2Attribute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hashAgilityValues, a3);
  }

  return v7;
}

- (id)encodeAttributeWithError:(id *)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  v6 = [(MSCMSAppleHashAgilityV2Attribute *)self hashAgilityValues];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [(MSCMSAppleHashAgilityV2Attribute *)self hashAgilityValues];
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    obj = v8;
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
      v13 = [(MSCMSAppleHashAgilityV2Attribute *)self hashAgilityValues];
      v14 = [v13 objectForKeyedSubscript:v12];

      v15 = [MSOID OIDWithString:v12 error:a3];
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = v15;
      v17 = a3;
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
      a3 = v17;
      if (v10 == v11)
      {
        v8 = obj;
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
    if (v17)
    {
      v29 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      v43 = @"Failed encoding type AppleAgileHash";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *v17 = [v29 errorWithDomain:@"com.apple.HeimASN1" code:v27 userInfo:v30];
    }

LABEL_18:
    v26 = 0;
    v25 = obj;
    goto LABEL_19;
  }

LABEL_12:

  v24 = [MSCMSAttribute alloc];
  v25 = [MSOID OIDWithString:@"1.2.840.113635.100.9.2" error:a3];
  v26 = [(MSCMSAttribute *)v24 initWithAttributeType:v25 values:v7];
LABEL_19:

  v31 = *MEMORY[0x277D85DE8];

  return v26;
}

@end