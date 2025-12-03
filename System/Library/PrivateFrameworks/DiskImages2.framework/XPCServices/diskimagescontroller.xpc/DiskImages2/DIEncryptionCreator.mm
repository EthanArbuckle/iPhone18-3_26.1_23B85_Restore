@interface DIEncryptionCreator
+ (id)getPublicKeyWithCertificate:(id)certificate error:(id *)error;
- (BOOL)addPublicKeyEntryWithXpcHandler:(id)handler error:(id *)error;
- (BOOL)addSymmetricKeyEntryWithError:(id *)error;
- (BOOL)createWithXpcHandler:(id)handler error:(id *)error;
@end

@implementation DIEncryptionCreator

- (BOOL)addSymmetricKeyEntryWithError:(id *)error
{
  v5 = [(DIEncryptionFrontend *)self generateAuthTableWithError:?];
  if (!v5)
  {
    LOBYTE(v10) = 0;
    return v10 & 1;
  }

  v6 = v5;
  [(DIEncryptionFrontend *)self getSerializerWithAuthTable:v5];
  if (v18)
  {
    createParams = [(DIEncryptionCreator *)self createParams];
    mutableSymmetricKey = [createParams mutableSymmetricKey];
    LODWORD(v22) = 8;
    sub_100181A78(mutableSymmetricKey, v6, &v22, v17, &v26);

    if (v28)
    {
      (*(v17[0] + 3))(v15, v17, &v27 + 4);
      if (v16)
      {
        v9 = *(v6 + 8);
        v19[0] = v6;
        v19[1] = v9;
        v10 = v19;
        v20[0] = 0;
        v21 = 0;
        sub_10017FA9C(v6, v15, v19, &v22);
        if (v21 == 1)
        {
          sub_100035E5C(v20);
        }

        v11 = v25;
        if (v25 & 1) != 0 || (LOBYTE(v10) = [DIError failWithUnexpected:v22 verboseInfo:v23 error:@"Failed to add symmetric key entry to auth table", error], (v25))
        {
          if (v24[640] == 1)
          {
            sub_100035E5C(v24);
          }

          if (v11)
          {
            (*(v17[0] + 4))(&v22, v17, v6);
            v12 = v24[0];
            if ((v24[0] & 1) == 0)
            {
              LOBYTE(v10) = [DIError failWithUnexpected:v22 verboseInfo:v23 error:@"Failed to update crypto header", error];
            }

            LOBYTE(v10) = v12 | v10;
          }
        }
      }

      else
      {
        LOBYTE(v10) = [DIError failWithUnexpected:*&v15[0] verboseInfo:*(&v15[0] + 1) error:@"Failed to serialize symmetric key to crypto header", error];
      }

      if (v16 == 1)
      {
        sub_100036B7C(v15);
      }

      goto LABEL_19;
    }

    error = [DIError failWithUnexpected:v26 verboseInfo:v27 error:@"Failed to create passphrase auth entry", error];
  }

  else
  {
    error = [DIError failWithUnexpected:v17[0] verboseInfo:v17[1] error:@"Failed to create crypto serializer", error];
  }

  LOBYTE(v10) = error;
LABEL_19:
  if (v18 == 1)
  {
    (*(v17[0] + 7))(v17);
  }

  return v10 & 1;
}

+ (id)getPublicKeyWithCertificate:(id)certificate error:(id *)error
{
  certificateCopy = certificate;
  v6 = SecCertificateCreateWithData(kCFAllocatorDefault, certificateCopy);
  v7 = v6;
  if (v6)
  {
    v8 = SecCertificateCopyKey(v6);
    CFRelease(v7);
    if (v8)
    {
      goto LABEL_6;
    }

    v9 = [DIError nilWithPOSIXCode:22 description:@"public key has an encoding issue or uses an unsupported algorithm" error:error];
  }

  else
  {
    v9 = [DIError nilWithPOSIXCode:22 description:@"not a valid DER-encoded X.509 certificate" error:error];
  }

  v8 = v9;
LABEL_6:

  return v8;
}

- (BOOL)addPublicKeyEntryWithXpcHandler:(id)handler error:(id *)error
{
  handlerCopy = handler;
  createParams = [(DIEncryptionCreator *)self createParams];
  certificate = [createParams certificate];

  if (certificate)
  {
    createParams2 = [(DIEncryptionCreator *)self createParams];
    certificate2 = [createParams2 certificate];
    v11 = [(DIEncryptionFrontend *)self getCertificateWithCertificatePath:certificate2 error:error];

    if (v11)
    {
      v12 = [objc_opt_class() getPublicKeyWithCertificate:v11 error:error];
      if (!v12 || (v13 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error]) == 0)
      {
        LOBYTE(self) = 0;
LABEL_27:

        goto LABEL_28;
      }

      [(DIEncryptionFrontend *)self getSerializerWithAuthTable:v13];
      if (v25)
      {
        LODWORD(v29) = 8;
        sub_100180AB4(v13, v12, &v29, v24, &v33);
        if (v35)
        {
          (*(v24[0] + 2))(v22, v24, &v34 + 4);
          if (v23)
          {
            v14 = v13[1];
            v26[0] = v13;
            v26[1] = v14;
            v27[0] = 0;
            v28 = 0;
            sub_10017FA9C(v13, v22, v26, &v29);
            if (v28 == 1)
            {
              sub_100035E5C(v27);
            }

            v15 = v32;
            if (v32 & 1) != 0 || (LOBYTE(self) = [DIError failWithUnexpected:v29 verboseInfo:v30 error:@"Failed to add public key entry to auth table", error], (v32))
            {
              if (v31[640] == 1)
              {
                sub_100035E5C(v31);
              }

              if (v15)
              {
                (*(v24[0] + 4))(&v29, v24, v13);
                v16 = v31[0];
                if ((v31[0] & 1) == 0)
                {
                  LOBYTE(self) = [DIError failWithUnexpected:v29 verboseInfo:v30 error:@"Failed to update crypto header", error];
                }

                LOBYTE(self) = v16 | self;
              }
            }
          }

          else
          {
            LOBYTE(self) = [DIError failWithUnexpected:*&v22[0] verboseInfo:*(&v22[0] + 1) error:@"Failed to serialize public key entry to crypto header", error];
          }

          if (v23 == 1)
          {
            sub_100036B7C(v22);
          }

          goto LABEL_25;
        }

        error = [DIError failWithUnexpected:v33 verboseInfo:v34 error:@"Failed to create public key auth entry", error];
      }

      else
      {
        error = [DIError failWithUnexpected:v24[0] verboseInfo:v24[1] error:@"Failed to create crypto serializer", error];
      }

      LOBYTE(self) = error;
LABEL_25:
      if (v25 == 1)
      {
        (*(v24[0] + 7))(v24);
      }

      goto LABEL_27;
    }
  }

  else
  {
    createParams3 = [(DIEncryptionCreator *)self createParams];
    publicKey = [createParams3 publicKey];

    if (publicKey)
    {
      v29 = 0;
      [(DIEncryptionCreator *)self createParams];
      [objc_claimAutoreleasedReturnValue() publicKey];
      uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
      sub_10019DD7C(uTF8String, &v29);
    }
  }

  LOBYTE(self) = 0;
LABEL_28:

  return self & 1;
}

- (BOOL)createWithXpcHandler:(id)handler error:(id *)error
{
  handlerCopy = handler;
  createParams = [(DIEncryptionCreator *)self createParams];
  systemKeychainAccount = [createParams systemKeychainAccount];

  if (!systemKeychainAccount)
  {
    createParams2 = [(DIEncryptionCreator *)self createParams];
    mutableSymmetricKey = [createParams2 mutableSymmetricKey];

    if (mutableSymmetricKey)
    {
      v11 = [(DIEncryptionCreator *)self addSymmetricKeyEntryWithError:error];
      goto LABEL_21;
    }

    flags = [(DIEncryptionFrontend *)self flags];
    createParams3 = [(DIEncryptionCreator *)self createParams];
    temporaryPassphrase = [createParams3 temporaryPassphrase];

    if (temporaryPassphrase)
    {
      createParams4 = [(DIEncryptionCreator *)self createParams];
      temporaryPassphrase2 = [createParams4 temporaryPassphrase];
      v19 = -[DIEncryptionFrontend setPassphrase:error:](self, "setPassphrase:error:", [temporaryPassphrase2 buf], error);

      if ((v19 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    createParams5 = [(DIEncryptionCreator *)self createParams];
    if ([createParams5 passphrase])
    {

      goto LABEL_10;
    }

    createParams6 = [(DIEncryptionCreator *)self createParams];
    publicKey = [createParams6 publicKey];
    if (publicKey)
    {
    }

    else
    {
      createParams7 = [(DIEncryptionCreator *)self createParams];
      certificate = [createParams7 certificate];

      if (!certificate)
      {
LABEL_10:
        if (![(DIEncryptionFrontend *)self addPassphraseEntryWithXpcHandler:handlerCopy flags:flags usage:1 error:error])
        {
          goto LABEL_20;
        }
      }
    }

LABEL_15:
    createParams8 = [(DIEncryptionCreator *)self createParams];
    publicKey2 = [createParams8 publicKey];
    if (publicKey2)
    {
    }

    else
    {
      createParams9 = [(DIEncryptionCreator *)self createParams];
      certificate2 = [createParams9 certificate];

      if (!certificate2)
      {
LABEL_19:
        v11 = 1;
        goto LABEL_21;
      }
    }

    if ([(DIEncryptionCreator *)self addPublicKeyEntryWithXpcHandler:handlerCopy error:error])
    {
      goto LABEL_19;
    }

LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  createParams10 = [(DIEncryptionCreator *)self createParams];
  systemKeychainAccount2 = [createParams10 systemKeychainAccount];
  v11 = [handlerCopy createAndStoreInSystemKeychainWithCreator:self account:systemKeychainAccount2 error:error];

LABEL_21:
  return v11;
}

@end