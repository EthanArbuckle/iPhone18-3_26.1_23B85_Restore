@interface DIEncryptionCreator
+ (id)getPublicKeyWithCertificate:(id)a3 error:(id *)a4;
- (BOOL)addPublicKeyEntryWithXpcHandler:(id)a3 error:(id *)a4;
- (BOOL)addSymmetricKeyEntryWithError:(id *)a3;
- (BOOL)createWithXpcHandler:(id)a3 error:(id *)a4;
@end

@implementation DIEncryptionCreator

- (BOOL)addSymmetricKeyEntryWithError:(id *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [(DIEncryptionFrontend *)self generateAuthTableWithError:?];
  if (!v5)
  {
    LOBYTE(v10) = 0;
    goto LABEL_21;
  }

  v6 = v5;
  [(DIEncryptionFrontend *)self getSerializerWithAuthTable:v5];
  if (v19)
  {
    v7 = [(DIEncryptionCreator *)self createParams];
    v8 = [v7 mutableSymmetricKey];
    LODWORD(v23) = 8;
    crypto::auth_entry_ns::symmetric_key::create(v8, v6, &v23, v18, &v27);

    if (v29)
    {
      (*(v18[0] + 3))(v16, v18, &v28 + 4);
      if (v17)
      {
        v9 = *(v6 + 8);
        v20[0] = v6;
        v20[1] = v9;
        v10 = v20;
        v21[0] = 0;
        v22 = 0;
        crypto::auth_table::replace(v6, v16, v20, &v23);
        if (v22 == 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v21);
        }

        v11 = v26;
        if (v26 & 1) != 0 || (LOBYTE(v10) = [DIError failWithUnexpected:v23 verboseInfo:v24 error:@"Failed to add symmetric key entry to auth table", a3], (v26))
        {
          if (v25[640] == 1)
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v25);
          }

          if (v11)
          {
            (*(v18[0] + 4))(&v23, v18, v6);
            v12 = v25[0];
            if ((v25[0] & 1) == 0)
            {
              LOBYTE(v10) = [DIError failWithUnexpected:v23 verboseInfo:v24 error:@"Failed to update crypto header", a3];
            }

            LOBYTE(v10) = v12 | v10;
          }
        }
      }

      else
      {
        LOBYTE(v10) = [DIError failWithUnexpected:*&v16[0] verboseInfo:*(&v16[0] + 1) error:@"Failed to serialize symmetric key to crypto header", a3];
      }

      if (v17 == 1)
      {
        crypto::descriptor_handle_t::~descriptor_handle_t(v16);
      }

      goto LABEL_19;
    }

    v13 = [DIError failWithUnexpected:v27 verboseInfo:v28 error:@"Failed to create passphrase auth entry", a3];
  }

  else
  {
    v13 = [DIError failWithUnexpected:v18[0] verboseInfo:v18[1] error:@"Failed to create crypto serializer", a3];
  }

  LOBYTE(v10) = v13;
LABEL_19:
  if (v19 == 1)
  {
    (*(v18[0] + 7))(v18);
  }

LABEL_21:
  v14 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

+ (id)getPublicKeyWithCertificate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], v5);
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
  v37 = *MEMORY[0x277D85DE8];
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
      if (v26)
      {
        LODWORD(v30) = 8;
        crypto::auth_entry_ns::public_key::create(v13, v12, &v30, v25, &v34);
        if (v36)
        {
          (*(v25[0] + 2))(v23, v25, &v35 + 4);
          if (v24)
          {
            v14 = v13[1];
            v27[0] = v13;
            v27[1] = v14;
            v28[0] = 0;
            v29 = 0;
            crypto::auth_table::replace(v13, v23, v27, &v30);
            if (v29 == 1)
            {
              std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v28);
            }

            v15 = v33;
            if (v33 & 1) != 0 || (LOBYTE(self) = [DIError failWithUnexpected:v30 verboseInfo:v31 error:@"Failed to add public key entry to auth table", a4], (v33))
            {
              if (v32[640] == 1)
              {
                std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v32);
              }

              if (v15)
              {
                (*(v25[0] + 4))(&v30, v25, v13);
                v16 = v32[0];
                if ((v32[0] & 1) == 0)
                {
                  LOBYTE(self) = [DIError failWithUnexpected:v30 verboseInfo:v31 error:@"Failed to update crypto header", a4];
                }

                LOBYTE(self) = v16 | self;
              }
            }
          }

          else
          {
            LOBYTE(self) = [DIError failWithUnexpected:*&v23[0] verboseInfo:*(&v23[0] + 1) error:@"Failed to serialize public key entry to crypto header", a4];
          }

          if (v24 == 1)
          {
            crypto::descriptor_handle_t::~descriptor_handle_t(v23);
          }

          goto LABEL_25;
        }

        v20 = [DIError failWithUnexpected:v34 verboseInfo:v35 error:@"Failed to create public key auth entry", a4];
      }

      else
      {
        v20 = [DIError failWithUnexpected:v25[0] verboseInfo:v25[1] error:@"Failed to create crypto serializer", a4];
      }

      LOBYTE(self) = v20;
LABEL_25:
      if (v26 == 1)
      {
        (*(v25[0] + 7))(v25);
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
      v30 = 0;
      [(DIEncryptionCreator *)self createParams];
      [objc_claimAutoreleasedReturnValue() publicKey];
      v19 = [objc_claimAutoreleasedReturnValue() UTF8String];
      convertHexToBytes(v19, &v30);
    }
  }

  LOBYTE(self) = 0;
LABEL_28:

  v21 = *MEMORY[0x277D85DE8];
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

      if (!v19)
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