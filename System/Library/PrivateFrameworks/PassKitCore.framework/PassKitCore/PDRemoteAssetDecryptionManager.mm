@interface PDRemoteAssetDecryptionManager
- (BOOL)decryptAsset:(id)a3 forPass:(id)a4;
- (PDRemoteAssetDecryptionManager)init;
- (id)_decryptKMLData:(id)a3 ephemeralPublicKey:(id)a4 pass:(id)a5;
- (id)_decryptSESDDict:(id)a3 pass:(id)a4;
@end

@implementation PDRemoteAssetDecryptionManager

- (PDRemoteAssetDecryptionManager)init
{
  v6.receiver = self;
  v6.super_class = PDRemoteAssetDecryptionManager;
  v2 = [(PDRemoteAssetDecryptionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PKDAManager);
    daManager = v2->_daManager;
    v2->_daManager = v3;
  }

  return v2;
}

- (BOOL)decryptAsset:(id)a3 forPass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 encryptedContentsLocalURL];
  v9 = [v6 localURL];
  v10 = [v7 uniqueID];
  if (v8)
  {
    if (v9)
    {
      v11 = [[NSData alloc] initWithContentsOfURL:v8];
      v12 = PKLogFacilityTypeGetObject();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (!v11)
      {
        if (v13)
        {
          *buf = 138412290;
          v43 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No encrypted file contents to decrypted data to on pass: %@", buf, 0xCu);
        }

        v28 = 0;
        v16 = v12;
        goto LABEL_38;
      }

      if (v13)
      {
        *buf = 138412290;
        v43 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Decrypting data on pass: %@", buf, 0xCu);
      }

      v14 = [v6 encryptionSource];
      v15 = [NSJSONSerialization JSONObjectWithData:v11 options:0 error:0];
      v16 = v15;
      if (v15)
      {
        v39 = v8;
        v17 = v7;
        v18 = v9;
        v19 = v10;
        v20 = v12;
        v21 = self;
        v22 = v15;
        v23 = [v15 PKStringForKey:@"encryptionSource"];
        if (v23)
        {
          v14 = PKRemoteAssetManifestItemEncryptionSourceFromString();
        }

        v16 = v22;
        self = v21;
        v12 = v20;
        v10 = v19;
        v9 = v18;
        v7 = v17;
        v8 = v39;
      }

      if (v14 < 2)
      {
        v28 = 0;
LABEL_38:

        goto LABEL_39;
      }

      if (v14 == 3)
      {
        v27 = [(PDRemoteAssetDecryptionManager *)self _decryptSESDDict:v16 pass:v7];
        if (!v27)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v14 != 2)
        {
LABEL_15:
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v43 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to decrypt data for pass: %@", buf, 0xCu);
          }

          v28 = 0;
          v27 = v12;
LABEL_37:

          goto LABEL_38;
        }

        v37 = v16;
        if (v16)
        {
          v24 = [v16 PKStringForKey:@"data"];
          v40 = [v24 pk_decodeURLBase64];

          v25 = [v37 PKStringForKey:@"ephemeralPublicKey"];
          v26 = [v25 pk_decodeURLBase64];

          v16 = v37;
          v27 = [(PDRemoteAssetDecryptionManager *)self _decryptKMLData:v40 ephemeralPublicKey:v26 pass:v7];

          if (!v27)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v33 = [NSData alloc];
          v34 = [[NSString alloc] initWithData:v11 encoding:4];
          v41 = [v33 initWithBase64EncodedString:v34 options:0];

          v35 = [v6 ephemeralPublicKey];
          v36 = [v35 pk_decodeHexadecimal];

          v27 = [(PDRemoteAssetDecryptionManager *)self _decryptKMLData:v41 ephemeralPublicKey:v36 pass:v7];

          v16 = 0;
          if (!v27)
          {
            goto LABEL_15;
          }
        }
      }

      v30 = [v27 writeToURL:v9 atomically:{1, v16}];
      v31 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v30)
      {
        if (v31)
        {
          *buf = 138412546;
          v43 = v10;
          v44 = 2112;
          v45 = v9;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Wrote decrypted data from pass (%@) to: %@", buf, 0x16u);
        }

        v28 = 1;
      }

      else
      {
        if (v31)
        {
          *buf = 138412546;
          v43 = v10;
          v44 = 2112;
          v45 = v9;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to write decrypted data from pass (%@) to: %@", buf, 0x16u);
        }

        v28 = 0;
      }

      v16 = v38;
      goto LABEL_37;
    }

    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v10;
      v29 = "No URL to save decrypted data to on pass: %@";
      goto LABEL_22;
    }
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v10;
      v29 = "No URL to decrypt from on pass: %@";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);
    }
  }

  v28 = 0;
LABEL_39:

  return v28;
}

- (id)_decryptKMLData:(id)a3 ephemeralPublicKey:(id)a4 pass:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = [v10 devicePrimaryPaymentApplication];
    v13 = [v12 subcredentials];
    v14 = [v13 anyObject];

    if (v14)
    {
      v15 = [(PKDAManager *)self->_daManager decryptData:v8 withCredential:v14 ephemeralPublicKey:v9];
    }

    else
    {
      v16 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v11 description];
        v18 = [v11 devicePrimaryPaymentApplication];
        v20 = 138412546;
        v21 = v17;
        v22 = 2112;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No credential to decrypt from on pass: %@, paymentApplication: %@", &v20, 0x16u);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_decryptSESDDict:(id)a3 pass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [v7 longTermPrivacyKeyGroupIdentifier];
    if (v9)
    {
      daManager = self->_daManager;
      v17 = 0;
      v11 = [(PKDAManager *)daManager decryptPayload:v6 groupIdentifier:v9 outError:&v17];
      v12 = v17;
      if (v12)
      {
        v13 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v8 uniqueID];
          *buf = 138412546;
          v19 = v14;
          v20 = 2112;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to decrypt pass %@. %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v8 uniqueID];
        *buf = 138412290;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Decryption Error: pass %@ missing groupIdentifier", buf, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end