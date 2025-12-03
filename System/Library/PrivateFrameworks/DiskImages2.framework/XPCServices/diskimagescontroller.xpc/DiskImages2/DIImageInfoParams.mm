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
    v24 = 0;
    if ([(DIImageInfoParams *)self encryptionInfoOnly])
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v14[0] = off_100224230;
      v14[1] = off_100224278;
      v14[2] = off_1002242C0;
      v15 = off_100224308;
      v16 = off_100224350;
      v17 = off_100224398;
      v18 = off_1002243E0;
      v19 = off_100224440;
      v20 = 0;
      if (*[(DIBaseParams *)self cryptoHeader])
      {
        sub_100188274(*[(DIBaseParams *)self cryptoHeader], v14 + *(v14[0] - 104));
      }

      sub_100123000(v14, &v13);
      if (v24)
      {
        CFRelease(v24);
      }

      v24 = v13;
      v13 = 0;
      sub_10000C8E0(&v13);
      v19 = off_100224908;
      v15 = off_100224960;
      sub_100023024(&v23);
    }

    else
    {
      v8 = objc_alloc_init(DIClient2Controller_XPCHandler);
      if (![(DIClient2Controller_XPCHandler *)v8 connectWithError:error]|| ![(DIBaseParams *)self prepareImageWithXpcHandler:v8 fileMode:2 error:error])
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
        v14[0] = 0;
      }

      if (!v14[0])
      {
LABEL_21:

        v7 = 0;
        goto LABEL_22;
      }

      (*(*(v14[0] + *(*v14[0] - 96)) + 16))(&v13);
      if (v24)
      {
        CFRelease(v24);
      }

      v24 = v13;
      v13 = 0;
      sub_10000C8E0(&v13);
      v11 = v14[0];
      v14[0] = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    v5 = CFRetain(v24);
    imageInfo = self->_imageInfo;
    self->_imageInfo = v5;

    v7 = 1;
LABEL_22:
    sub_10000C8E0(&v24);
    return v7;
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
  v4 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v6 = [v4 fileExistsAtPath:path isDirectory:&v10];

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