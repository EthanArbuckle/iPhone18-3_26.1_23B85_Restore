@interface DIEncryptionCreator
+ (id)getPublicKeyWithCertificate:(id)a3 error:(id *)a4;
- (BOOL)addPublicKeyEntryWithXpcHandler:(id)a3 error:(id *)a4;
- (BOOL)addSymmetricKeyEntryWithError:(id *)a3;
- (BOOL)createWithXpcHandler:(id)a3 error:(id *)a4;
@end

@implementation DIEncryptionCreator

- (BOOL)addSymmetricKeyEntryWithError:(id *)a3
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
    v7 = [(DIEncryptionCreator *)self createParams];
    v8 = [v7 mutableSymmetricKey];
    LODWORD(v22) = 8;
    sub_100181A78(v8, v6, &v22, v17, &v26);

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
        if (v25 & 1) != 0 || (LOBYTE(v10) = [DIError failWithUnexpected:v22 verboseInfo:v23 error:@"Failed to add symmetric key entry to auth table", a3], (v25))
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
              LOBYTE(v10) = [DIError failWithUnexpected:v22 verboseInfo:v23 error:@"Failed to update crypto header", a3];
            }

            LOBYTE(v10) = v12 | v10;
          }
        }
      }

      else
      {
        LOBYTE(v10) = [DIError failWithUnexpected:*&v15[0] verboseInfo:*(&v15[0] + 1) error:@"Failed to serialize symmetric key to crypto header", a3];
      }

      if (v16 == 1)
      {
        sub_100036B7C(v15);
      }

      goto LABEL_19;
    }

    v13 = [DIError failWithUnexpected:v26 verboseInfo:v27 error:@"Failed to create passphrase auth entry", a3];
  }

  else
  {
    v13 = [DIError failWithUnexpected:v17[0] verboseInfo:v17[1] error:@"Failed to create crypto serializer", a3];
  }

  LOBYTE(v10) = v13;
LABEL_19:
  if (v18 == 1)
  {
    (*(v17[0] + 7))(v17);
  }

  return v10 & 1;
}

+ (id)getPublicKeyWithCertificate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = SecCertificateCreateWithData(kCFAllocatorDefault, v5);
  v7 = v6;
  if (v6)
  {
    v8 = SecCertificateCopyKey(v6);
    CFRelease(v7);
    if (v8)
    {
      goto LABEL_6;
    }

    v9 = [DIError nilWithPOSIXCode:22 description:@"public key has an encoding issue or uses an unsupported algorithm" error:a4];
  }

  else
  {
    v9 = [DIError nilWithPOSIXCode:22 description:@"not a valid DER-encoded X.509 certificate" error:a4];
  }

  v8 = v9;
LABEL_6:

  return v8;
}

- (BOOL)addPublicKeyEntryWithXpcHandler:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DIEncryptionCreator *)self createParams];
  v8 = [v7 certificate];

  if (v8)
  {
    v9 = [(DIEncryptionCreator *)self createParams];
    v10 = [v9 certificate];
    v11 = [(DIEncryptionFrontend *)self getCertificateWithCertificatePath:v10 error:a4];

    if (v11)
    {
      v12 = [objc_opt_class() getPublicKeyWithCertificate:v11 error:a4];
      if (!v12 || (v13 = [(DIEncryptionFrontend *)self generateAuthTableWithError:a4]) == 0)
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
            if (v32 & 1) != 0 || (LOBYTE(self) = [DIError failWithUnexpected:v29 verboseInfo:v30 error:@"Failed to add public key entry to auth table", a4], (v32))
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
                  LOBYTE(self) = [DIError failWithUnexpected:v29 verboseInfo:v30 error:@"Failed to update crypto header", a4];
                }

                LOBYTE(self) = v16 | self;
              }
            }
          }

          else
          {
            LOBYTE(self) = [DIError failWithUnexpected:*&v22[0] verboseInfo:*(&v22[0] + 1) error:@"Failed to serialize public key entry to crypto header", a4];
          }

          if (v23 == 1)
          {
            sub_100036B7C(v22);
          }

          goto LABEL_25;
        }

        v20 = [DIError failWithUnexpected:v33 verboseInfo:v34 error:@"Failed to create public key auth entry", a4];
      }

      else
      {
        v20 = [DIError failWithUnexpected:v24[0] verboseInfo:v24[1] error:@"Failed to create crypto serializer", a4];
      }

      LOBYTE(self) = v20;
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
    v17 = [(DIEncryptionCreator *)self createParams];
    v18 = [v17 publicKey];

    if (v18)
    {
      v29 = 0;
      [(DIEncryptionCreator *)self createParams];
      [objc_claimAutoreleasedReturnValue() publicKey];
      v19 = [objc_claimAutoreleasedReturnValue() UTF8String];
      sub_10019DD7C(v19, &v29);
    }
  }

  LOBYTE(self) = 0;
LABEL_28:

  return self & 1;
}

- (BOOL)createWithXpcHandler:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DIEncryptionCreator *)self createParams];
  v8 = [v7 systemKeychainAccount];

  if (!v8)
  {
    v12 = [(DIEncryptionCreator *)self createParams];
    v13 = [v12 mutableSymmetricKey];

    if (v13)
    {
      v11 = [(DIEncryptionCreator *)self addSymmetricKeyEntryWithError:a4];
      goto LABEL_21;
    }

    v14 = [(DIEncryptionFrontend *)self flags];
    v15 = [(DIEncryptionCreator *)self createParams];
    v16 = [v15 temporaryPassphrase];

    if (v16)
    {
      v17 = [(DIEncryptionCreator *)self createParams];
      v18 = [v17 temporaryPassphrase];
      v19 = -[DIEncryptionFrontend setPassphrase:error:](self, "setPassphrase:error:", [v18 buf], a4);

      if ((v19 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    v20 = [(DIEncryptionCreator *)self createParams];
    if ([v20 passphrase])
    {

      goto LABEL_10;
    }

    v21 = [(DIEncryptionCreator *)self createParams];
    v22 = [v21 publicKey];
    if (v22)
    {
    }

    else
    {
      v23 = [(DIEncryptionCreator *)self createParams];
      v24 = [v23 certificate];

      if (!v24)
      {
LABEL_10:
        if (![(DIEncryptionFrontend *)self addPassphraseEntryWithXpcHandler:v6 flags:v14 usage:1 error:a4])
        {
          goto LABEL_20;
        }
      }
    }

LABEL_15:
    v25 = [(DIEncryptionCreator *)self createParams];
    v26 = [v25 publicKey];
    if (v26)
    {
    }

    else
    {
      v27 = [(DIEncryptionCreator *)self createParams];
      v28 = [v27 certificate];

      if (!v28)
      {
LABEL_19:
        v11 = 1;
        goto LABEL_21;
      }
    }

    if ([(DIEncryptionCreator *)self addPublicKeyEntryWithXpcHandler:v6 error:a4])
    {
      goto LABEL_19;
    }

LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  v9 = [(DIEncryptionCreator *)self createParams];
  v10 = [v9 systemKeychainAccount];
  v11 = [v6 createAndStoreInSystemKeychainWithCreator:self account:v10 error:a4];

LABEL_21:
  return v11;
}

@end