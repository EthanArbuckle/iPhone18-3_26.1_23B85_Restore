@interface PKAccountAttestationRequest
+ (id)_keychainItemWrapper;
+ (id)createAnonymizationSalt;
+ (id)defaultAnonymizationSaltWithError:(id *)a3;
+ (id)keychainDataWithError:(id *)a3;
+ (id)setDefaultAnonymizationSalt:(id)a3;
+ (void)removeAccountAttesationData;
+ (void)removeLocalAccountAttesationData;
- (PKAccountAttestationRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountAttestationRequest

+ (id)createAnonymizationSalt
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%08X", arc4random_uniform(0xFFFFFFFF)];
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Account Attestation: Generating salt: '%@'", buf, 0xCu);
  }

  return v2;
}

+ (id)keychainDataWithError:(id *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [a1 _keychainItemWrapper];
  v5 = [v4 objectForKey:*MEMORY[0x1E697B3C0]];
  v6 = v5;
  if (a3)
  {
    *a3 = 0;
  }

  if (v5)
  {
    v24 = 0;
    v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:&v24];
    v8 = v24;
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
      v17 = *MEMORY[0x1E696A508];
      v23 = 0;
      v18 = [v7 decodeTopLevelObjectOfClasses:v16 forKey:v17 error:&v23];
      v10 = v23;

      [v7 finishDecoding];
      if (v18)
      {
        v19 = v10 == 0;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        v13 = v18;
      }

      else
      {
        v20 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v10;
          _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Account Attestation: Could not parse keychain data: %@", buf, 0xCu);
        }

        if (a3)
        {
          v21 = v10;
          v13 = 0;
          *a3 = v10;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v10 = v8;
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v10;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Account Attestation: Could not initialize unarchiver with keychain data: %@", buf, 0xCu);
      }

      if (a3)
      {
        v12 = v10;
        v13 = 0;
        *a3 = v10;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)defaultAnonymizationSaltWithError:(id *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [a1 keychainDataWithError:a3];
  v4 = v3;
  if (!v3)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v8 = "Account Attestation: No keychain data found";
LABEL_9:
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, v8, &v10, 2u);
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = [v3 objectForKey:@"DefaultSalt"];
  v6 = PKLogFacilityTypeGetObject(7uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v7)
    {
      LOWORD(v10) = 0;
      v8 = "Account Attestation: Missing default salt value";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v7)
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Account Attestation: Found default salt: '%@'", &v10, 0xCu);
  }

LABEL_11:

  return v5;
}

+ (id)setDefaultAnonymizationSalt:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0;
  v5 = [a1 keychainDataWithError:&v22];
  v6 = v22;
  v7 = [v5 mutableCopy];

  if (v6)
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Account Attestation: Failed to load key chain data to set: %@", buf, 0xCu);
    }

    v9 = v6;
LABEL_23:

    goto LABEL_24;
  }

  if (v7)
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (!v4)
    {
      if (v11)
      {
        *buf = 138412290;
        v24 = 0;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Account Attestation: Clearing default salt: '%@'", buf, 0xCu);
      }

      [v7 removeObjectForKey:@"DefaultSalt"];
      goto LABEL_18;
    }

    if (v11)
    {
      *buf = 138412290;
      v24 = v4;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Account Attestation: Updating default salt: '%@'", buf, 0xCu);
    }

    v12 = v7;
LABEL_14:
    [v12 setObject:v4 forKey:@"DefaultSalt"];
LABEL_18:
    v14 = MEMORY[0x1E696ACC8];
    v15 = [v7 copy];
    v21 = 0;
    v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v21];
    v17 = v21;

    v18 = [a1 _keychainItemWrapper];
    [v18 setObject:v16 forKey:*MEMORY[0x1E697B3C0]];

    if (v17)
    {
      v19 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v17;
        _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Account Attestation: Error writing information to keychain: %@", buf, 0xCu);
      }
    }

    v9 = v17;

    goto LABEL_23;
  }

  if (v4)
  {
    v13 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v4;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Account Attestation: Creating new keychain data with salt: '%@'", buf, 0xCu);
    }

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = v12;
    goto LABEL_14;
  }

  v9 = 0;
LABEL_24:

  return v9;
}

+ (void)removeAccountAttesationData
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Account Attestation: Removing data...", v5, 2u);
  }

  v4 = [a1 _keychainItemWrapper];
  [v4 resetKeychainItem];
}

+ (void)removeLocalAccountAttesationData
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Account Attestation: Removing local data...", v5, 2u);
  }

  v4 = [a1 _keychainItemWrapper];
  [v4 resetLocalKeychainItem];
}

+ (id)_keychainItemWrapper
{
  v2 = [[PKKeychainItemWrapper alloc] initWithIdentifier:@"PKAnonymizationSaltKeychainKey" accessGroup:@"com.apple.passd" serviceName:@"com.apple.passd.account-attestation" type:1 invisible:1 accessibility:1];

  return v2;
}

- (PKAccountAttestationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountAttestationRequest;
  v5 = [(PKAccountAttestationRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"casdCertificate"];
    casdCertificate = v5->_casdCertificate;
    v5->_casdCertificate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anonymizationSalt"];
    anonymizationSalt = v5->_anonymizationSalt;
    v5->_anonymizationSalt = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  casdCertificate = self->_casdCertificate;
  v5 = a3;
  [v5 encodeObject:casdCertificate forKey:@"casdCertificate"];
  [v5 encodeObject:self->_anonymizationSalt forKey:@"anonymizationSalt"];
}

@end