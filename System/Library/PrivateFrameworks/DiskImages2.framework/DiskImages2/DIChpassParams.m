@interface DIChpassParams
- (BOOL)changePassWithXpcHandler:(id)a3 error:(id *)a4;
- (BOOL)chpassWithError:(id *)a3;
- (BOOL)prepareImageWithXpcHandler:(id)a3 fileMode:(int64_t)a4 encChpass:(id)a5 error:(id *)a6;
- (DIChpassParams)initWithURL:(id)a3 error:(id *)a4;
@end

@implementation DIChpassParams

- (DIChpassParams)initWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = DIChpassParams;
  v7 = [(DIBaseParams *)&v12 initWithURL:v6 error:a4];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  if (![(DIChpassParams *)v7 openExistingImageWithError:a4])
  {
    v10 = 0;
    goto LABEL_7;
  }

  if (!*[(DIBaseParams *)v8 cryptoHeader])
  {
    v9 = [DIError nilWithPOSIXCode:22 description:@"Cannot change passphrase of unencrypted image" error:a4];
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

- (BOOL)prepareImageWithXpcHandler:(id)a3 fileMode:(int64_t)a4 encChpass:(id)a5 error:(id *)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  if (-[DIBaseParams hasUnlockedBackend](self, "hasUnlockedBackend") || !*-[DIBaseParams cryptoHeader](self, "cryptoHeader") || ([v11 unlockWithXpcHandler:v10 error:a6] & 1) != 0)
  {
    v12 = [(DIBaseParams *)self shadowChain];
    v13 = [v12 isEmpty];

    if (v13)
    {
      v14 = [(DIBaseParams *)self shadowChain];
      v15 = [(DIBaseParams *)self diskImageParamsXPC];
      [v15 setShadowChain:v14];
    }

    else
    {
      if (a4 != 2)
      {
        v16 = [(DIBaseParams *)self shadowChain];
        [v16 openWritable:1 createNonExisting:a4 != 3];

        v17 = [(DIBaseParams *)self shadowChain];
        v18 = [(DIBaseParams *)self diskImageParamsXPC];
        [v18 setShadowChain:v17];
      }

      v19 = [(DIBaseParams *)self diskImageParamsXPC];
      v20 = [v19 shadowChain];
      v21 = v20 == 0;

      if (v21)
      {
        v22 = [(DIBaseParams *)self shadowChain];
        [v22 openWritable:0 createNonExisting:0];

        v23 = [(DIBaseParams *)self shadowChain];
        v24 = [(DIBaseParams *)self diskImageParamsXPC];
        [v24 setShadowChain:v23];
      }
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25 & 1;
}

- (BOOL)changePassWithXpcHandler:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[DIEncryptionChpass alloc] initWithParams:self];
  v8 = [(DIChpassParams *)self prepareImageWithXpcHandler:v6 fileMode:1 encChpass:v7 error:a4]&& [(DIEncryptionChpass *)v7 replacePassWithXpcHandler:v6 params:self error:a4];

  return v8;
}

- (BOOL)chpassWithError:(id *)a3
{
  v5 = objc_alloc_init(DIClient2Controller_XPCHandler);
  v6 = [(DIClient2Controller_XPCHandler *)v5 connectWithError:a3]&& [(DIChpassParams *)self changePassWithXpcHandler:v5 error:a3];

  return v6;
}

@end