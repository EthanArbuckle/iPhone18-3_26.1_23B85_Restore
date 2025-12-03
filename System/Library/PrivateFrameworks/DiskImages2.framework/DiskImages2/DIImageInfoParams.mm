@interface DIImageInfoParams
+ (BOOL)isDiskImageWithURL:(id)l;
- (BOOL)retrieveWithError:(id *)error;
- (DIImageInfoParams)initWithExistingParams:(id)params error:(id *)error;
- (DIImageInfoParams)initWithURL:(id)l error:(id *)error;
@end

@implementation DIImageInfoParams

- (DIImageInfoParams)initWithURL:(id)l error:(id *)error
{
  v5.receiver = self;
  v5.super_class = DIImageInfoParams;
  return [(DIBaseParams *)&v5 initWithURL:l error:error];
}

- (DIImageInfoParams)initWithExistingParams:(id)params error:(id *)error
{
  paramsCopy = params;
  inputURL = [paramsCopy inputURL];
  v16.receiver = self;
  v16.super_class = DIImageInfoParams;
  v8 = [(DIBaseParams *)&v16 initWithURL:inputURL error:error];

  if (!v8)
  {
    goto LABEL_3;
  }

  diskImageParamsXPC = [paramsCopy diskImageParamsXPC];
  [(DIBaseParams *)v8 setDiskImageParamsXPC:diskImageParamsXPC];

  shadowChain = [(DIBaseParams *)v8 shadowChain];
  shadowChain2 = [paramsCopy shadowChain];
  nodes = [shadowChain2 nodes];
  v13 = [shadowChain addShadowNodes:nodes wrapReadOnly:1 error:error];

  if ((v13 & 1) == 0)
  {
    v14 = 0;
  }

  else
  {
LABEL_3:
    v14 = v8;
  }

  return v14;
}

- (BOOL)retrieveWithError:(id *)error
{
  if ([(DIBaseParams *)self openExistingImageWithError:?])
  {
    v27 = 0;
    if ([(DIImageInfoParams *)self encryptionInfoOnly])
    {
      v20 = &unk_285BD9A98;
      v21 = &unk_285BD9AC8;
      v15 = &unk_285BD9768;
      v16 = &unk_285BD97B0;
      v17 = &unk_285BD97F8;
      v18 = &unk_285BD9840;
      v19 = &unk_285BD9888;
      *(&v15 + unk_285BD9730) = &unk_285BD98D0;
      *(&v15 + *(v15 - 8)) = &unk_285BD9918;
      v15 = &unk_285BD9420;
      v16 = &unk_285BD9468;
      v17 = &unk_285BD94B0;
      v18 = &unk_285BD94F8;
      *(&v15 + unk_285BD93F0) = &unk_285BD9540;
      *(&v15 + *(v15 - 7)) = &unk_285BD9588;
      *(&v15 + *(v15 - 8)) = &unk_285BD95D0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v15 = &unk_285BD9180;
      v16 = &unk_285BD91C8;
      v17 = &unk_285BD9210;
      v18 = &unk_285BD9258;
      v19 = &unk_285BD92A0;
      v20 = &unk_285BD92E8;
      v21 = &unk_285BD9330;
      v22 = &unk_285BD9390;
      v23 = 0;
      if (*[(DIBaseParams *)self cryptoHeader])
      {
        cryptoHeader = [(DIBaseParams *)self cryptoHeader];
        crypto::header::populate_crypto_header_info(*cryptoHeader, (&v15 + *(v15 - 13)));
      }

      DiskImageEncryptionOnly::serialize_to_dict(&v15, &v14);
      if (v27)
      {
        CFRelease(v27);
      }

      v27 = v14;
      v14 = 0;
      CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v14);
      v22 = &unk_285BD9978;
      v18 = &unk_285BD99D0;
      CFAutoRelease<__CFString const*>::~CFAutoRelease(&v26);
    }

    else
    {
      v9 = objc_alloc_init(DIClient2Controller_XPCHandler);
      if (![(DIClient2Controller_XPCHandler *)v9 connectWithError:error]|| ![(DIBaseParams *)self prepareImageWithXpcHandler:v9 fileMode:2 error:error])
      {
        goto LABEL_21;
      }

      diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
      extraInfo = [(DIImageInfoParams *)self extraInfo];
      if (diskImageParamsXPC)
      {
        [diskImageParamsXPC getImageInfoWithExtra:extraInfo error:error];
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
LABEL_21:

        v8 = 0;
        goto LABEL_22;
      }

      (*(*(v15 + *(*v15 - 96)) + 16))(&v14);
      if (v27)
      {
        CFRelease(v27);
      }

      v27 = v14;
      v14 = 0;
      CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v14);
      v12 = v15;
      v15 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

    v6 = CFRetain(v27);
    imageInfo = self->_imageInfo;
    self->_imageInfo = v6;

    v8 = 1;
LABEL_22:
    CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v27);
    return v8;
  }

  return 0;
}

+ (BOOL)isDiskImageWithURL:(id)l
{
  lCopy = l;
  if (![lCopy isFileURL])
  {
    goto LABEL_5;
  }

  v10 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v6 = [defaultManager fileExistsAtPath:path isDirectory:&v10];

  if (!v6 || v10 == 1 && ![SparseBundleBackendXPC isSparseBundleWithURL:lCopy])
  {
    v8 = 0;
  }

  else
  {
LABEL_5:
    v7 = [[DIImageInfoParams alloc] initWithURL:lCopy error:0];
    v8 = v7 != 0;
  }

  return v8;
}

@end