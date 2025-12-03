@interface MFMimePart(SMIMEEncoding)
- (id)newEncryptedPartWithData:()SMIMEEncoding compositionSpecification:encryptedData:;
- (id)newSignedPartWithData:()SMIMEEncoding sender:compositionSpecification:signatureData:;
@end

@implementation MFMimePart(SMIMEEncoding)

- (id)newSignedPartWithData:()SMIMEEncoding sender:compositionSpecification:signatureData:
{
  v22 = 0;
  v10 = [[_MFSecCMSEncoder alloc] initForSigningWithSender:a4 compositionSpecification:a5 error:&v22];
  if (v22)
  {
    goto LABEL_8;
  }

  [a3 mf_dataByConvertingUnixNewlinesToNetwork];
  if (MFDataConsumerConsumeCompleteData() < 0)
  {
    lastSecCMSError = [v10 lastSecCMSError];
    if (lastSecCMSError)
    {
      v12 = lastSecCMSError;
      v13 = objc_alloc(MEMORY[0x277CCA9B8]);
      v14 = [v13 initWithDomain:*MEMORY[0x277CCA590] code:v12 userInfo:0];
      v15 = objc_alloc(MEMORY[0x277CBEAC0]);
      v16 = [v15 initWithObjectsAndKeys:{v14, *MEMORY[0x277CCA7E8], 0}];
    }

    else
    {
      v16 = 0;
    }

    v22 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 userInfo:v16];
    -[MFError setLocalizedDescription:](v22, "setLocalizedDescription:", [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"SMIME_CANT_SIGN_MESSAGE", @"An error occurred while trying to sign this message with a certificate from “%@”. Verify that your certificate for this address is correct, and that its private key is in your keychain.", @"Delayed", a4]);
  }

  if (v22)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    v17 = objc_alloc_init(objc_opt_class());
    [v17 setType:@"multipart"];
    [v17 setSubtype:@"signed"];
    [v17 setBodyParameter:@"application/pkcs7-signature" forKey:@"protocol"];
    [v17 setBodyParameter:@"sha1" forKey:@"micalg"];
    [v17 addSubpart:self];
    v21 = objc_alloc_init(objc_opt_class());
    [v21 setType:@"application"];
    [v21 setSubtype:@"pkcs7-signature"];
    [v21 setDisposition:@"attachment"];
    [v21 setDispositionParameter:@"smime.p7s" forKey:@"filename"];
    [v21 setBodyParameter:@"smime.p7s" forKey:@"name"];
    [v17 addSubpart:v21];

    if (a6)
    {
      [v10 done];
      *a6 = [v10 data];
    }
  }

  if (v22)
  {
    if (![(MFError *)v22 mf_shortDescription])
    {
      [(MFError *)v22 setShortDescription:MFLookupLocalizedString(@"SMIME_CANT_SIGN_TITLE", @"Unable to Sign", @"Delayed")];
    }

    [self _setSMIMEError:v22];
    v18 = +[MFActivityMonitor currentMonitor];
    [v18 setError:v22];
    v19 = MFLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MFMimePart(SMIMEEncoding) newSignedPartWithData:? sender:? compositionSpecification:? signatureData:?];
    }
  }

  return v17;
}

- (id)newEncryptedPartWithData:()SMIMEEncoding compositionSpecification:encryptedData:
{
  v19 = 0;
  v8 = [[_MFSecCMSEncoder alloc] initForEncryptionWithCompositionSpecification:a4 error:&v19];
  if (v19)
  {
    goto LABEL_8;
  }

  [a3 mf_dataByConvertingUnixNewlinesToNetwork];
  if (MFDataConsumerConsumeCompleteData() < 0)
  {
    lastSecCMSError = [v8 lastSecCMSError];
    if (lastSecCMSError)
    {
      v10 = lastSecCMSError;
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v11 initWithDomain:*MEMORY[0x277CCA590] code:v10 userInfo:0];
      v13 = objc_alloc(MEMORY[0x277CBEAC0]);
      v14 = [v13 initWithObjectsAndKeys:{v12, *MEMORY[0x277CCA7E8], 0}];
    }

    else
    {
      v14 = 0;
    }

    v19 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 userInfo:v14];
    [(MFError *)v19 setLocalizedDescription:MFLookupLocalizedString(@"SMIME_CANT_ENCRYPT_MESSAGE", @"An error occurred while trying to encrypt your message. Verify that you have valid certificates in your keychain for all of the recipients.", @"Delayed")];
  }

  if (v19)
  {
LABEL_8:
    v15 = 0;
  }

  else
  {
    v15 = objc_alloc_init(objc_opt_class());
    [v15 setType:@"application"];
    [v15 setSubtype:@"pkcs7-mime"];
    [v15 setDisposition:@"attachment"];
    [v15 setDispositionParameter:@"smime.p7m" forKey:@"filename"];
    [v15 setBodyParameter:@"enveloped-data" forKey:@"smime-type"];
    [v15 setBodyParameter:@"smime.p7m" forKey:@"name"];
    if (a5)
    {
      [v8 done];
      *a5 = [v8 data];
    }
  }

  if (v19)
  {
    if (![(MFError *)v19 mf_shortDescription])
    {
      [(MFError *)v19 setShortDescription:MFLookupLocalizedString(@"SMIME_CANT_ENCRYPT_TITLE", @"Unable to Encrypt", @"Delayed")];
    }

    [self _setSMIMEError:v19];
    v16 = +[MFActivityMonitor currentMonitor];
    [v16 setError:v19];
    v17 = MFLogGeneral();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MFMimePart(SMIMEEncoding) newEncryptedPartWithData:? compositionSpecification:? encryptedData:?];
    }
  }

  return v15;
}

- (void)newSignedPartWithData:()SMIMEEncoding sender:compositionSpecification:signatureData:.cold.1(void **a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)newEncryptedPartWithData:()SMIMEEncoding compositionSpecification:encryptedData:.cold.1(void **a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

@end