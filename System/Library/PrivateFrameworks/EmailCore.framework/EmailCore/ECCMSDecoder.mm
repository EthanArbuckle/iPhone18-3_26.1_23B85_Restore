@interface ECCMSDecoder
+ (id)decoderForEncodedData:(id)data detachedContentData:(id)contentData outError:(id *)error;
+ (id)decoderForEncodedData:(id)data outError:(id *)error;
- (BOOL)isEncrypted;
- (BOOL)isSigned;
- (ECCMSDecoder)initWithContentInfo:(id)info detachedContentData:(id)data;
- (NSData)decryptedContentData;
- (id)extractSignatureInfoAndSignedData:(id *)data outError:(id *)error;
@end

@implementation ECCMSDecoder

- (ECCMSDecoder)initWithContentInfo:(id)info detachedContentData:(id)data
{
  infoCopy = info;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = ECCMSDecoder;
  v9 = [(ECCMSDecoder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentInfo, info);
    objc_storeStrong(&v10->_detachedContentData, data);
  }

  return v10;
}

+ (id)decoderForEncodedData:(id)data detachedContentData:(id)contentData outError:(id *)error
{
  contentDataCopy = contentData;
  v9 = [MEMORY[0x277D285F8] decodeMessageSecurityObject:data options:0 error:error];
  if (v9)
  {
    v10 = [[self alloc] initWithContentInfo:v9 detachedContentData:contentDataCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)decoderForEncodedData:(id)data outError:(id *)error
{
  v4 = [self decoderForEncodedData:data detachedContentData:0 outError:error];

  return v4;
}

- (BOOL)isEncrypted
{
  contentType = [(MSCMSContentInfo *)self->_contentInfo contentType];
  if ([contentType isEqualToString:*MEMORY[0x277D28580]])
  {
    v3 = 1;
  }

  else
  {
    v3 = [contentType isEqualToString:*MEMORY[0x277D28578]];
  }

  return v3;
}

- (BOOL)isSigned
{
  contentType = [(MSCMSContentInfo *)self->_contentInfo contentType];
  v3 = [contentType isEqualToString:*MEMORY[0x277D28588]];

  return v3;
}

- (NSData)decryptedContentData
{
  if ([(ECCMSDecoder *)self isEncrypted])
  {
    embeddedContent = [(MSCMSContentInfo *)self->_contentInfo embeddedContent];
    dataContent = [embeddedContent dataContent];
  }

  else
  {
    dataContent = 0;
  }

  return dataContent;
}

- (id)extractSignatureInfoAndSignedData:(id *)data outError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  if (![(ECCMSDecoder *)self isSigned])
  {
    v10 = 0;
    goto LABEL_23;
  }

  embeddedContent = [(MSCMSContentInfo *)self->_contentInfo embeddedContent];
  v8 = embeddedContent;
  if (!embeddedContent)
  {
    goto LABEL_5;
  }

  if (!self->_detachedContentData)
  {
    dataContent = [embeddedContent dataContent];
LABEL_9:
    v27 = dataContent;
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

    certificates = [v8 certificates];
    allObjects = [certificates allObjects];

    if (data)
    {
      v22 = v27;
      *data = v27;
    }

    if (error)
    {
      v23 = v13;
      *error = v13;
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __59__ECCMSDecoder_extractSignatureInfoAndSignedData_outError___block_invoke;
    v28[3] = &unk_27874B668;
    v29 = allObjects;
    v24 = allObjects;
    v10 = [v12 ef_map:v28];

    goto LABEL_22;
  }

  dataContent2 = [embeddedContent dataContent];

  if (!dataContent2)
  {
    dataContent = self->_detachedContentData;
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