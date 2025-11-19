@interface MFMimePart(SMIMEEncoding)
- (id)_encryptedDataForContentData:()SMIMEEncoding compositionSpecification:contentType:error:;
- (id)_encryptedDataUsingMessageSecurity:()SMIMEEncoding compositionSpecification:contentType:error:;
- (id)_encryptedDataUsingSecCMS:()SMIMEEncoding compositionSpecification:error:;
- (id)_signatureDataForContentData:()SMIMEEncoding forSender:compositionSpecification:outError:;
- (id)_signatureDataUsingMessageSecurity:()SMIMEEncoding forSender:compositionSpecification:outError:;
- (id)_signatureDataUsingSecCMSWithData:()SMIMEEncoding forSender:compositionSpecification:outError:;
- (id)newEncryptedPartWithData:()SMIMEEncoding compositionSpecification:encryptedData:;
- (id)newSignedPartWithData:()SMIMEEncoding sender:compositionSpecification:signatureData:;
@end

@implementation MFMimePart(SMIMEEncoding)

- (id)newSignedPartWithData:()SMIMEEncoding sender:compositionSpecification:signatureData:
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v27 = 0;
  v13 = [a1 _signatureDataForContentData:v10 forSender:v11 compositionSpecification:v12 outError:&v27];
  v14 = v27;
  v15 = v14;
  if (v14)
  {
    v16 = [v14 mf_shortDescription];
    v17 = v16 == 0;

    if (v17)
    {
      v18 = MFLookupLocalizedString(@"SMIME_CANT_SIGN_TITLE", @"Unable to Sign", @"Delayed");
      [v15 setShortDescription:v18];
    }

    [(MFMimePart *)a1 _setSMIMEError:v15];
    v19 = +[MFActivityMonitor currentMonitor];
    [v19 setError:v15];

    v20 = [MEMORY[0x1E69AD720] log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [v15 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [MFMimePart(SMIMEEncoding) newSignedPartWithData:sender:compositionSpecification:signatureData:];
    }

    v21 = 0;
  }

  else
  {
    v21 = objc_alloc_init(objc_opt_class());
    if ([MEMORY[0x1E699ACE8] preferenceEnabled:23] && objc_msgSend(MEMORY[0x1E699ACE8], "preferenceEnabled:", 25))
    {
      [v21 setType:@"application"];
      [v21 setSubtype:@"pkcs7-mime"];
      [v21 setDisposition:@"attachment"];
      [v21 setDispositionParameter:@"smime.p7m" forKey:@"filename"];
      [v21 setBodyParameter:@"signed-data" forKey:@"smime-type"];
      [v21 setBodyParameter:@"smime.p7m" forKey:@"name"];
      v22 = [MEMORY[0x1E69AD720] log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "[S/MIME] Signing as application/pkcs7-mime.", buf, 2u);
      }
    }

    else
    {
      [v21 setType:@"multipart"];
      [v21 setSubtype:@"signed"];
      [v21 setBodyParameter:@"application/pkcs7-signature" forKey:@"protocol"];
      [v21 setBodyParameter:@"sha-256" forKey:@"micalg"];
      [v21 addSubpart:a1];
      v22 = objc_alloc_init(objc_opt_class());
      [v22 setType:@"application"];
      [v22 setSubtype:@"pkcs7-signature"];
      [v22 setDisposition:@"attachment"];
      [v22 setDispositionParameter:@"smime.p7s" forKey:@"filename"];
      [v22 setBodyParameter:@"smime.p7s" forKey:@"name"];
      [v21 addSubpart:v22];
      v23 = [MEMORY[0x1E69AD720] log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_DEFAULT, "[S/MIME] Signing as multipart/signed.", buf, 2u);
      }
    }

    if (a6)
    {
      v24 = v13;
      *a6 = v13;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)_signatureDataForContentData:()SMIMEEncoding forSender:compositionSpecification:outError:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([MEMORY[0x1E699ACE8] preferenceEnabled:23])
  {
    [a1 _signatureDataUsingMessageSecurity:v10 forSender:v11 compositionSpecification:v12 outError:a6];
  }

  else
  {
    [a1 _signatureDataUsingSecCMSWithData:v10 forSender:v11 compositionSpecification:v12 outError:a6];
  }
  v13 = ;

  return v13;
}

- (id)_signatureDataUsingMessageSecurity:()SMIMEEncoding forSender:compositionSpecification:outError:
{
  v9 = a4;
  v10 = a5;
  v11 = [a3 mf_dataByConvertingUnixNewlinesToNetwork];
  v12 = [v10 objectForKey:@"SigningIdentity"];
  if (v12)
  {
    v13 = [v10 objectForKey:@"EncryptionIdentity"];
    certificateRef = 0;
    if (v13)
    {
      SecIdentityCopyCertificate(v13, &certificateRef);
    }

    else
    {
      SecIdentityCopyCertificate(v12, &certificateRef);
      if ((SecCertificateGetKeyUsage() & 0x14) == 0)
      {
        v18 = [MEMORY[0x1E69AD720] log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [MFMimePart(SMIMEEncoding) _signatureDataUsingMessageSecurity:forSender:compositionSpecification:outError:];
        }

        CFRelease(certificateRef);
        certificateRef = 0;
      }
    }

    v21 = 0;
    [MEMORY[0x1E699AE68] encryptionLevelForSender:v9 forAdvertisement:1 useGCM:&v21 + 1 encryptSubject:&v21];
    v19 = [MEMORY[0x1E699B220] oidsForEncryptWithGCM:HIBYTE(v21) encryptSubject:v21];
    if ([MEMORY[0x1E699ACE8] preferenceEnabled:25])
    {
      [MEMORY[0x1E699B220] signedDataFromNetworkContentData:v11 forSender:v9 identity:v12 encryptionCertificate:certificateRef capabilities:v19 outError:a6];
    }

    else
    {
      [MEMORY[0x1E699B220] signatureDataFromNetworkContentData:v11 forSender:v9 identity:v12 encryptionCertificate:certificateRef capabilities:v19 outError:a6];
    }
    v17 = ;
    if (certificateRef)
    {
      CFRelease(certificateRef);
    }
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = MFLookupLocalizedString(@"SMIME_CANT_SIGN_MESSAGE", @"An error occurred while trying to sign this message with a certificate from “%@”. Verify that your certificate for this address is correct, and that its private key is in your keychain.", @"Delayed");
    v16 = [v14 stringWithFormat:v15, v9];
    *a6 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v16];

    v17 = 0;
  }

  return v17;
}

- (id)_signatureDataUsingSecCMSWithData:()SMIMEEncoding forSender:compositionSpecification:outError:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [[_MFSecCMSEncoder alloc] initForSigningWithSender:v10 compositionSpecification:v11 error:a6];
  if (!*a6)
  {
    v13 = [v9 mf_dataByConvertingUnixNewlinesToNetwork];
    v14 = MFDataConsumerConsumeCompleteData();

    if (v14 < 0)
    {
      if (v12 && (v15 = v12[10], v15))
      {
        v16 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = [v16 initWithDomain:*MEMORY[0x1E696A768] code:v15 userInfo:0];
        v18 = objc_alloc(MEMORY[0x1E695DF20]);
        v19 = [v18 initWithObjectsAndKeys:{v17, *MEMORY[0x1E696AA08], 0}];
      }

      else
      {
        v19 = 0;
      }

      v20 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 userInfo:v19];
      *a6 = v20;
      v21 = MEMORY[0x1E696AEC0];
      v22 = MFLookupLocalizedString(@"SMIME_CANT_SIGN_MESSAGE", @"An error occurred while trying to sign this message with a certificate from “%@”. Verify that your certificate for this address is correct, and that its private key is in your keychain.", @"Delayed");
      v23 = [v21 stringWithFormat:v22, v10];
      [v20 setLocalizedDescription:v23];
    }
  }

  [v12 done];
  v24 = [v12 data];

  return v24;
}

- (id)newEncryptedPartWithData:()SMIMEEncoding compositionSpecification:encryptedData:
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = 0;
  v10 = [a1 _encryptedDataForContentData:v8 compositionSpecification:v9 contentType:&v19 error:&v18];
  v11 = v19;
  v12 = v18;
  if (v12)
  {
    v13 = [MEMORY[0x1E69AD720] log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v12 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [MFMimePart(SMIMEEncoding) newEncryptedPartWithData:compositionSpecification:encryptedData:];
    }

    v14 = 0;
  }

  else
  {
    v14 = objc_alloc_init(objc_opt_class());
    [v14 setType:@"application"];
    [v14 setSubtype:@"pkcs7-mime"];
    [v14 setDisposition:@"attachment"];
    [v14 setDispositionParameter:@"smime.p7m" forKey:@"filename"];
    [v14 setBodyParameter:v11 forKey:@"smime-type"];
    [v14 setBodyParameter:@"smime.p7m" forKey:@"name"];
    if (a5)
    {
      v15 = v10;
      *a5 = v10;
    }

    v13 = [MEMORY[0x1E69AD720] log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "[S/MIME] Encrypted as multipart/pkcs7-mime (smime-type=%{public}@).", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)_encryptedDataForContentData:()SMIMEEncoding compositionSpecification:contentType:error:
{
  v10 = a3;
  v11 = a4;
  if ([MEMORY[0x1E699ACE8] preferenceEnabled:23])
  {
    v12 = [a1 _encryptedDataUsingMessageSecurity:v10 compositionSpecification:v11 contentType:a5 error:a6];
  }

  else
  {
    v12 = [a1 _encryptedDataUsingSecCMS:v10 compositionSpecification:v11 error:a6];
    if (a5)
    {
      *a5 = @"enveloped-data";
    }
  }

  return v12;
}

- (id)_encryptedDataUsingSecCMS:()SMIMEEncoding compositionSpecification:error:
{
  v32[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = MFLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [MFMimePart(SMIMEEncoding) _encryptedDataUsingSecCMS:compositionSpecification:error:];
  }

  v32[0] = 0;
  v11 = [[_MFSecCMSEncoder alloc] initForEncryptionWithCompositionSpecification:v9 error:v32];
  v12 = v32[0];
  if (v12)
  {
    goto LABEL_4;
  }

  v21 = [v8 mf_dataByConvertingUnixNewlinesToNetwork];
  v22 = MFDataConsumerConsumeCompleteData();

  if (v22 >= 0)
  {
    goto LABEL_12;
  }

  if (v11 && (v26 = v11[10], v26))
  {
    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = [v27 initWithDomain:*MEMORY[0x1E696A768] code:v26 userInfo:0];
    v29 = objc_alloc(MEMORY[0x1E695DF20]);
    v30 = [v29 initWithObjectsAndKeys:{v28, *MEMORY[0x1E696AA08], 0}];
  }

  else
  {
    v30 = 0;
  }

  v12 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 userInfo:v30];
  v31 = MFLookupLocalizedString(@"SMIME_CANT_ENCRYPT_MESSAGE", @"An error occurred while trying to encrypt your message. Verify that you have valid certificates in your keychain for all of the recipients.", @"Delayed");
  [v12 setLocalizedDescription:v31];

  if (v12)
  {
LABEL_4:
    v13 = [v12 mf_shortDescription];
    v14 = v13 == 0;

    if (v14)
    {
      v15 = MFLookupLocalizedString(@"SMIME_CANT_ENCRYPT_TITLE", @"Unable to Encrypt", @"Delayed");
      [v12 setShortDescription:v15];
    }

    [(MFMimePart *)a1 _setSMIMEError:v12];
    v16 = +[MFActivityMonitor currentMonitor];
    [v16 setError:v12];

    v17 = MFLogGeneral();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [v12 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [MFMimePart(SMIMEEncoding) _encryptedDataUsingSecCMS:compositionSpecification:error:];
    }

    v18 = 0;
    v19 = v12;
    if (a5)
    {
LABEL_13:
      v23 = v19;
      *a5 = v19;
      if (!v18)
      {
        goto LABEL_14;
      }

LABEL_10:
      [v11 done];
      v20 = [v11 data];
      goto LABEL_15;
    }
  }

  else
  {
LABEL_12:
    v19 = 0;
    v18 = 1;
    if (a5)
    {
      goto LABEL_13;
    }
  }

  if (v18)
  {
    goto LABEL_10;
  }

LABEL_14:
  v20 = 0;
LABEL_15:

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_encryptedDataUsingMessageSecurity:()SMIMEEncoding compositionSpecification:contentType:error:
{
  v9 = a3;
  v10 = a4;
  v11 = MFLogGeneral();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [MFMimePart(SMIMEEncoding) _encryptedDataUsingMessageSecurity:compositionSpecification:contentType:error:];
  }

  certificateRef = 0;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [v10 objectForKey:@"AddressMetadata"];
  v14 = [v10 objectForKey:@"EncryptionIdentity"];
  if (v14 || (v14 = [v10 objectForKey:@"SigningIdentity"]) != 0)
  {
    SecIdentityCopyCertificate(v14, &certificateRef);
    if (certificateRef)
    {
      v15 = [MEMORY[0x1E699ACE8] preferenceEnabled:29];
      v16 = v15;
      if (v15)
      {
        v17 = [MEMORY[0x1E699B220] oidStringsForAuthenticatedEncryption];
        v18 = [v17 firstObject];
      }

      else
      {
        v18 = 0;
      }

      v21 = [v10 objectForKey:@"RecipientCertificates"];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __107__MFMimePart_SMIMEEncoding___encryptedDataUsingMessageSecurity_compositionSpecification_contentType_error___block_invoke;
      v31[3] = &unk_1E7AA7C88;
      v35 = v16;
      v32 = v13;
      v33 = v18;
      v22 = v12;
      v34 = v22;
      v23 = v18;
      [v21 enumerateKeysAndObjectsUsingBlock:v31];

      buf[0] = 0;
      v30 = 0;
      [MEMORY[0x1E699AE68] encryptionLevelForSender:0 forAdvertisement:0 useGCM:buf encryptSubject:&v30];
      v24 = [MEMORY[0x1E699B220] oidsForEncryptWithGCM:buf[0] encryptSubject:v30];
      v29 = 0;
      v25 = [MEMORY[0x1E699B220] encryptedDataFromContentData:v9 senderCertificate:certificateRef senderCapabilities:v24 recipients:v22 outIsAuthenticated:&v29 outError:a6];
      CFRelease(certificateRef);
      if (a5)
      {
        if (v29)
        {
          v26 = @"authEnveloped-data";
        }

        else
        {
          v26 = @"enveloped-data";
        }

        *a5 = v26;
      }

      goto LABEL_23;
    }

    v19 = MFLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v20 = "#SMIMEErrors Failed to obtain sender certificate for encryption";
LABEL_19:
      _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_INFO, v20, buf, 2u);
    }
  }

  else
  {
    v19 = MFLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v20 = "#SMIMEErrors sender SecIdentityRef for encryption is nil";
      goto LABEL_19;
    }
  }

  if (a6)
  {
    v27 = MFLookupLocalizedString(@"SMIME_CANT_ENCRYPT_MESSAGE", @"An error occurred while trying to encrypt your message. Verify that you have valid certificates in your keychain for all of the recipients.", @"Delayed");
    *a6 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v27];
  }

  v25 = 0;
LABEL_23:

  return v25;
}

- (void)newSignedPartWithData:()SMIMEEncoding sender:compositionSpecification:signatureData:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "[S/MIME] Signing failed with error: %{public}@", v5);
}

- (void)_signatureDataUsingMessageSecurity:()SMIMEEncoding forSender:compositionSpecification:outError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)newEncryptedPartWithData:()SMIMEEncoding compositionSpecification:encryptedData:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "[S/MIME] Encryption failed with error: %{public}@", v5);
}

- (void)_encryptedDataUsingSecCMS:()SMIMEEncoding compositionSpecification:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "#SMIMEErrors newEncryptedPart... failed with %{public}@", v5);
}

@end