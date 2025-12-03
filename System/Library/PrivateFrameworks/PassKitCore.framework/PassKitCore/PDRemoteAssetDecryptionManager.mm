@interface PDRemoteAssetDecryptionManager
- (BOOL)decryptAsset:(id)asset forPass:(id)pass;
- (PDRemoteAssetDecryptionManager)init;
- (id)_decryptKMLData:(id)data ephemeralPublicKey:(id)key pass:(id)pass;
- (id)_decryptSESDDict:(id)dict pass:(id)pass;
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

- (BOOL)decryptAsset:(id)asset forPass:(id)pass
{
  assetCopy = asset;
  passCopy = pass;
  encryptedContentsLocalURL = [assetCopy encryptedContentsLocalURL];
  localURL = [assetCopy localURL];
  uniqueID = [passCopy uniqueID];
  if (encryptedContentsLocalURL)
  {
    if (localURL)
    {
      v11 = [[NSData alloc] initWithContentsOfURL:encryptedContentsLocalURL];
      v12 = PKLogFacilityTypeGetObject();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (!v11)
      {
        if (v13)
        {
          *buf = 138412290;
          v43 = uniqueID;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No encrypted file contents to decrypted data to on pass: %@", buf, 0xCu);
        }

        v28 = 0;
        v16 = v12;
        goto LABEL_38;
      }

      if (v13)
      {
        *buf = 138412290;
        v43 = uniqueID;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Decrypting data on pass: %@", buf, 0xCu);
      }

      encryptionSource = [assetCopy encryptionSource];
      v15 = [NSJSONSerialization JSONObjectWithData:v11 options:0 error:0];
      v16 = v15;
      if (v15)
      {
        v39 = encryptedContentsLocalURL;
        v17 = passCopy;
        v18 = localURL;
        v19 = uniqueID;
        v20 = v12;
        selfCopy = self;
        v22 = v15;
        v23 = [v15 PKStringForKey:@"encryptionSource"];
        if (v23)
        {
          encryptionSource = PKRemoteAssetManifestItemEncryptionSourceFromString();
        }

        v16 = v22;
        self = selfCopy;
        v12 = v20;
        uniqueID = v19;
        localURL = v18;
        passCopy = v17;
        encryptedContentsLocalURL = v39;
      }

      if (encryptionSource < 2)
      {
        v28 = 0;
LABEL_38:

        goto LABEL_39;
      }

      if (encryptionSource == 3)
      {
        v27 = [(PDRemoteAssetDecryptionManager *)self _decryptSESDDict:v16 pass:passCopy];
        if (!v27)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (encryptionSource != 2)
        {
LABEL_15:
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v43 = uniqueID;
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
          pk_decodeURLBase64 = [v24 pk_decodeURLBase64];

          v25 = [v37 PKStringForKey:@"ephemeralPublicKey"];
          pk_decodeURLBase642 = [v25 pk_decodeURLBase64];

          v16 = v37;
          v27 = [(PDRemoteAssetDecryptionManager *)self _decryptKMLData:pk_decodeURLBase64 ephemeralPublicKey:pk_decodeURLBase642 pass:passCopy];

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

          ephemeralPublicKey = [assetCopy ephemeralPublicKey];
          pk_decodeHexadecimal = [ephemeralPublicKey pk_decodeHexadecimal];

          v27 = [(PDRemoteAssetDecryptionManager *)self _decryptKMLData:v41 ephemeralPublicKey:pk_decodeHexadecimal pass:passCopy];

          v16 = 0;
          if (!v27)
          {
            goto LABEL_15;
          }
        }
      }

      v30 = [v27 writeToURL:localURL atomically:{1, v16}];
      v31 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v30)
      {
        if (v31)
        {
          *buf = 138412546;
          v43 = uniqueID;
          v44 = 2112;
          v45 = localURL;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Wrote decrypted data from pass (%@) to: %@", buf, 0x16u);
        }

        v28 = 1;
      }

      else
      {
        if (v31)
        {
          *buf = 138412546;
          v43 = uniqueID;
          v44 = 2112;
          v45 = localURL;
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
      v43 = uniqueID;
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
      v43 = uniqueID;
      v29 = "No URL to decrypt from on pass: %@";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);
    }
  }

  v28 = 0;
LABEL_39:

  return v28;
}

- (id)_decryptKMLData:(id)data ephemeralPublicKey:(id)key pass:(id)pass
{
  dataCopy = data;
  keyCopy = key;
  passCopy = pass;
  v11 = passCopy;
  if (dataCopy)
  {
    devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
    subcredentials = [devicePrimaryPaymentApplication subcredentials];
    anyObject = [subcredentials anyObject];

    if (anyObject)
    {
      v15 = [(PKDAManager *)self->_daManager decryptData:dataCopy withCredential:anyObject ephemeralPublicKey:keyCopy];
    }

    else
    {
      v16 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v11 description];
        devicePrimaryPaymentApplication2 = [v11 devicePrimaryPaymentApplication];
        v20 = 138412546;
        v21 = v17;
        v22 = 2112;
        v23 = devicePrimaryPaymentApplication2;
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

- (id)_decryptSESDDict:(id)dict pass:(id)pass
{
  dictCopy = dict;
  passCopy = pass;
  v8 = passCopy;
  if (dictCopy)
  {
    longTermPrivacyKeyGroupIdentifier = [passCopy longTermPrivacyKeyGroupIdentifier];
    if (longTermPrivacyKeyGroupIdentifier)
    {
      daManager = self->_daManager;
      v17 = 0;
      v11 = [(PKDAManager *)daManager decryptPayload:dictCopy groupIdentifier:longTermPrivacyKeyGroupIdentifier outError:&v17];
      v12 = v17;
      if (v12)
      {
        v13 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID = [v8 uniqueID];
          *buf = 138412546;
          v19 = uniqueID;
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
        uniqueID2 = [v8 uniqueID];
        *buf = 138412290;
        v19 = uniqueID2;
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