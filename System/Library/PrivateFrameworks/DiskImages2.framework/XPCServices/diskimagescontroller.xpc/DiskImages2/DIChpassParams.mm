@interface DIChpassParams
- (BOOL)changePassWithXpcHandler:(id)handler error:(id *)error;
- (BOOL)chpassWithError:(id *)error;
- (BOOL)prepareImageWithXpcHandler:(id)handler fileMode:(int64_t)mode encChpass:(id)chpass error:(id *)error;
- (DIChpassParams)initWithURL:(id)l error:(id *)error;
@end

@implementation DIChpassParams

- (DIChpassParams)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = DIChpassParams;
  v7 = [(DIBaseParams *)&v12 initWithURL:lCopy error:error];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  if (![(DIChpassParams *)v7 openExistingImageWithError:error])
  {
    v10 = 0;
    goto LABEL_7;
  }

  if (!*[(DIBaseParams *)v8 cryptoHeader])
  {
    v9 = [DIError nilWithPOSIXCode:22 description:@"Cannot change passphrase of unencrypted image" error:error];
  }

  else
  {
LABEL_4:
    v9 = v8;
  }

  v10 = v9;
LABEL_7:

  return v10;
}

- (BOOL)prepareImageWithXpcHandler:(id)handler fileMode:(int64_t)mode encChpass:(id)chpass error:(id *)error
{
  handlerCopy = handler;
  chpassCopy = chpass;
  if (-[DIBaseParams hasUnlockedBackend](self, "hasUnlockedBackend") || !*-[DIBaseParams cryptoHeader](self, "cryptoHeader") || ([chpassCopy unlockWithXpcHandler:handlerCopy error:error] & 1) != 0)
  {
    shadowChain = [(DIBaseParams *)self shadowChain];
    isEmpty = [shadowChain isEmpty];

    if (isEmpty)
    {
      shadowChain2 = [(DIBaseParams *)self shadowChain];
      diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
      [diskImageParamsXPC setShadowChain:shadowChain2];
    }

    else
    {
      if (mode != 2)
      {
        shadowChain3 = [(DIBaseParams *)self shadowChain];
        [shadowChain3 openWritable:1 createNonExisting:mode != 3];

        shadowChain4 = [(DIBaseParams *)self shadowChain];
        diskImageParamsXPC2 = [(DIBaseParams *)self diskImageParamsXPC];
        [diskImageParamsXPC2 setShadowChain:shadowChain4];
      }

      diskImageParamsXPC3 = [(DIBaseParams *)self diskImageParamsXPC];
      shadowChain5 = [diskImageParamsXPC3 shadowChain];
      v21 = shadowChain5 == 0;

      if (v21)
      {
        shadowChain6 = [(DIBaseParams *)self shadowChain];
        [shadowChain6 openWritable:0 createNonExisting:0];

        shadowChain7 = [(DIBaseParams *)self shadowChain];
        diskImageParamsXPC4 = [(DIBaseParams *)self diskImageParamsXPC];
        [diskImageParamsXPC4 setShadowChain:shadowChain7];
      }
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

- (BOOL)changePassWithXpcHandler:(id)handler error:(id *)error
{
  handlerCopy = handler;
  v7 = [[DIEncryptionChpass alloc] initWithParams:self];
  if ([(DIChpassParams *)self prepareImageWithXpcHandler:handlerCopy fileMode:1 encChpass:v7 error:error])
  {
    v8 = [(DIEncryptionChpass *)v7 replacePassWithXpcHandler:handlerCopy params:self error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)chpassWithError:(id *)error
{
  v5 = objc_alloc_init(DIClient2Controller_XPCHandler);
  if ([(DIClient2Controller_XPCHandler *)v5 connectWithError:error])
  {
    v6 = [(DIChpassParams *)self changePassWithXpcHandler:v5 error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end