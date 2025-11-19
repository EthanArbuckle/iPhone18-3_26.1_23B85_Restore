@interface ECCMSDecoder
+ (id)decoderForEncodedData:(id)a3 detachedContentData:(id)a4 outError:(id *)a5;
+ (id)decoderForEncodedData:(id)a3 outError:(id *)a4;
- (BOOL)isEncrypted;
- (BOOL)isSigned;
- (ECCMSDecoder)initWithContentInfo:(id)a3 detachedContentData:(id)a4;
- (NSData)decryptedContentData;
- (id)extractSignatureInfoAndSignedData:(id *)a3 outError:(id *)a4;
@end

@implementation ECCMSDecoder

- (ECCMSDecoder)initWithContentInfo:(id)a3 detachedContentData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ECCMSDecoder;
  v9 = [(ECCMSDecoder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentInfo, a3);
    objc_storeStrong(&v10->_detachedContentData, a4);
  }

  return v10;
}

+ (id)decoderForEncodedData:(id)a3 detachedContentData:(id)a4 outError:(id *)a5
{
  v8 = a4;
  v9 = [MEMORY[0x277D285F8] decodeMessageSecurityObject:a3 options:0 error:a5];
  if (v9)
  {
    v10 = [[a1 alloc] initWithContentInfo:v9 detachedContentData:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)decoderForEncodedData:(id)a3 outError:(id *)a4
{
  v4 = [a1 decoderForEncodedData:a3 detachedContentData:0 outError:a4];

  return v4;
}

- (BOOL)isEncrypted
{
  v2 = [(MSCMSContentInfo *)self->_contentInfo contentType];
  if ([v2 isEqualToString:*MEMORY[0x277D28580]])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:*MEMORY[0x277D28578]];
  }

  return v3;
}

- (BOOL)isSigned
{
  v2 = [(MSCMSContentInfo *)self->_contentInfo contentType];
  v3 = [v2 isEqualToString:*MEMORY[0x277D28588]];

  return v3;
}

- (NSData)decryptedContentData
{
  if ([(ECCMSDecoder *)self isEncrypted])
  {
    v3 = [(MSCMSContentInfo *)self->_contentInfo embeddedContent];
    v4 = [v3 dataContent];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)extractSignatureInfoAndSignedData:(id *)a3 outError:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  if (![(ECCMSDecoder *)self isSigned])
  {
    v10 = 0;
    goto LABEL_23;
  }

  v7 = [(MSCMSContentInfo *)self->_contentInfo embeddedContent];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_5;
  }

  if (!self->_detachedContentData)
  {
    v11 = [v7 dataContent];
LABEL_9:
    v27 = v11;
    [v8 signers];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v12 = v32 = 0u;
    v13 = 0;
    v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = *v32;
LABEL_11:
      v16 = 0;
      v17 = v13;
      while (1)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v31 + 1) + 8 * v16);
        v30 = v17;
        v19 = [v18 verifySignature:&v30];
        v13 = v30;

        if ((v19 & 1) == 0)
        {
          break;
        }

        ++v16;
        v17 = v13;
        if (v14 == v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v14)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }

    v20 = [v8 certificates];
    v21 = [v20 allObjects];

    if (a3)
    {
      v22 = v27;
      *a3 = v27;
    }

    if (a4)
    {
      v23 = v13;
      *a4 = v13;
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __59__ECCMSDecoder_extractSignatureInfoAndSignedData_outError___block_invoke;
    v28[3] = &unk_27874B668;
    v29 = v21;
    v24 = v21;
    v10 = [v12 ef_map:v28];

    goto LABEL_22;
  }

  v9 = [v7 dataContent];

  if (!v9)
  {
    v11 = self->_detachedContentData;
    [v8 setDataContent:self->_detachedContentData];
    goto LABEL_9;
  }

LABEL_5:
  v10 = 0;
LABEL_22:

LABEL_23:
  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

ECSignatureInfo *__59__ECCMSDecoder_extractSignatureInfoAndSignedData_outError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ECSignatureInfo alloc] initWithSignerInfo:v3 certificates:*(a1 + 32)];

  return v4;
}

@end