@interface MSCMSContentInfo
+ (id)decodeMessageSecurityObject:(id)a3 options:(id)a4 error:(id *)a5;
- (MSCMSContentInfo)initWithDataContent:(id)a3;
- (MSCMSContentInfo)initWithEmbeddedContent:(id)a3;
- (id)encodeMessageSecurityObject:(id *)a3;
@end

@implementation MSCMSContentInfo

- (id)encodeMessageSecurityObject:(id *)a3
{
  v45[1] = *MEMORY[0x277D85DE8];
  if (a3 && *a3)
  {
    v5 = [*a3 copy];
  }

  else
  {
    v5 = 0;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v37 = 0;
  v38 = 0;
  contentType = self->_contentType;
  if (!contentType)
  {
    goto LABEL_38;
  }

  embeddedContent = self->_embeddedContent;
  p_content = &self->_content;
  if (!self->_content)
  {
    if (embeddedContent)
    {
      v39 = 0;
      v40 = 0;
      v41 = &v37;
      goto LABEL_14;
    }

LABEL_38:
    [(MSCMSContentInfo *)v5 encodeMessageSecurityObject:v35];
    v15 = 0;
    v22 = 0;
    v16 = v35[0];
    goto LABEL_32;
  }

  v39 = 0;
  v40 = 0;
  v41 = &v37;
  if (!embeddedContent)
  {
    if (![(MSOID *)contentType isEqualToString:@"1.2.840.113549.1.7.1"])
    {
      v15 = *p_content;
LABEL_24:
      v16 = v5;
      goto LABEL_25;
    }

    v35[0] = [(NSData *)*p_content length];
    v35[1] = [(NSData *)*p_content bytes];
    v34 = 0;
    v9 = length_DataContent(v35);
    v10 = [MEMORY[0x277CBEB28] dataWithLength:v9];
    if (v10)
    {
      v11 = v10;
      v12 = encode_DataContent([v10 mutableBytes] + v9 - 1, v9, v35, &v34);
      if (!v12)
      {
        if (v9 != v34)
        {
          goto LABEL_41;
        }

        goto LABEL_22;
      }

      v13 = v12;

      v14 = v13;
    }

    else
    {
      v14 = 12;
    }

    if (a3)
    {
      v17 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      v45[0] = @"Failed encoding type DataContent";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      *a3 = [v17 errorWithDomain:@"com.apple.HeimASN1" code:v14 userInfo:v18];
    }

    v11 = 0;
LABEL_22:
    if (![v11 length])
    {

      v15 = 0;
      goto LABEL_30;
    }

    v15 = [MEMORY[0x277CBEA90] dataWithData:v11];

    goto LABEL_24;
  }

LABEL_14:
  v36 = v5;
  v15 = [(MSCMSMessage *)embeddedContent encodeMessageSecurityObject:&v36];
  v16 = v36;

  if (!v15)
  {
    v22 = 0;
    goto LABEL_32;
  }

  objc_storeStrong(&self->_content, v15);
LABEL_25:
  v38 = [(NSData *)v15 bytes];
  v37 = [(NSData *)v15 length];
  v39 = [(MSOID *)self->_contentType Asn1OID];
  v40 = v19;
  v35[0] = 0;
  v20 = length_ContentInfo(&v39);
  v21 = [MEMORY[0x277CBEB28] dataWithLength:v20];
  if (!v21)
  {
    v25 = 12;
    goto LABEL_29;
  }

  v22 = v21;
  v23 = encode_ContentInfo([v21 mutableBytes] + v20 - 1, v20, &v39, v35);
  if (v23)
  {
    v24 = v23;

    v25 = v24;
LABEL_29:
    v26 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    v43 = @"Failed encoding type ContentInfo";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v5 = [v26 errorWithDomain:@"com.apple.HeimASN1" code:v25 userInfo:v27];

LABEL_30:
    v22 = 0;
    v16 = v5;
    goto LABEL_32;
  }

  if (v20 != v35[0])
  {
LABEL_41:
    v31 = asn1_abort();
    return [(MSCMSContentInfo *)v31 initWithEmbeddedContent:v32, v33];
  }

LABEL_32:
  if (a3 && v16)
  {
    v28 = v16;
    *a3 = v16;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v22;
}

- (MSCMSContentInfo)initWithEmbeddedContent:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MSCMSContentInfo;
  v6 = [(MSCMSContentInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_embeddedContent, a3);
    v8 = [v5 type];
    contentType = v7->_contentType;
    v7->_contentType = v8;
  }

  return v7;
}

- (MSCMSContentInfo)initWithDataContent:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MSCMSContentInfo;
  v6 = [(MSCMSContentInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_content, a3);
    v8 = [MSOID OIDWithString:@"1.2.840.113549.1.7.1" error:0];
    contentType = v7->_contentType;
    v7->_contentType = v8;
  }

  return v7;
}

+ (id)decodeMessageSecurityObject:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (a5 && *a5)
  {
    v9 = [*a5 copy];
  }

  else
  {
    v9 = 0;
  }

  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  v10 = nsheim_decode_ContentInfo(v7);
  if (v10)
  {
    v11 = MSErrorASN1Domain[0];
    v12 = v10;
    if (v7)
    {
      v13 = [v7 length];
    }

    else
    {
      v13 = -1;
    }

    v18 = [MSError MSErrorWithDomain:v11 code:v12 underlyingError:v9 description:@"unable to decode content info (%ld bytes)", v13];

    dumpNSData("ContentInfo", v7);
    v19 = 0;
    v14 = 0;
    v16 = 0;
LABEL_14:
    v20 = 0;
    if (!a5)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v26 = v9;
  v14 = [MSOID OIDWithAsn1OID:v27 error:&v26];
  v15 = v26;

  v16 = NSDataFromAny(v28);
  if (v16)
  {
    if ([v14 isEqualToString:@"1.2.840.113549.1.7.1"])
    {
      v17 = nsheim_decode_DataContent(v16);
      if (v17)
      {
        v18 = +[MSError MSErrorWithDomain:code:underlyingError:description:](MSError, "MSErrorWithDomain:code:underlyingError:description:", MSErrorASN1Domain[0], v17, v15, @"unable to decode data content (%ld bytes)", [v16 length]);

        dumpNSData("DataContent", v16);
        v19 = 0;
        goto LABEL_14;
      }

      v21 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];

      free_DataContent();
      v20 = 0;
      v16 = v21;
    }

    else
    {
      v25 = v15;
      v20 = decodeEmbeddedCMSContent(v14, v16, v8, &v25);
      v18 = v25;

      if (!v20)
      {
        v19 = 0;
        if (!a5)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v15 = v18;
    }
  }

  else
  {
    v20 = 0;
  }

  v19 = [MSCMSContentInfo alloc];
  [(MSCMSContentInfo *)v19 setContentType:v14];
  [(MSCMSContentInfo *)v19 setContent:v16];
  if (v20)
  {
    [(MSCMSContentInfo *)v19 setEmbeddedContent:v20];
  }

  v18 = v15;
  if (a5)
  {
LABEL_23:
    if (v18)
    {
      v22 = v18;
      *a5 = v18;
    }
  }

LABEL_25:
  free_ContentInfo();
  v23 = v19;

  return v23;
}

- (void)encodeMessageSecurityObject:(void *)a1 .cold.1(void *a1, uint64_t *a2)
{
  *a2 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:a1 description:@"Unable to encode content info: missing content type or content"];
}

@end