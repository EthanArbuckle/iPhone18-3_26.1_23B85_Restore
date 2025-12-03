@interface _MFSecCMSEncoder
- (id)data;
- (id)initForEncryptionWithCompositionSpecification:(id)specification error:(id *)error;
- (id)initForSigningWithSender:(id)sender compositionSpecification:(id)specification error:(id *)error;
- (int64_t)appendData:(id)data;
- (void)_appendBytes:(const void *)bytes length:(unint64_t)length;
- (void)dealloc;
- (void)done;
@end

@implementation _MFSecCMSEncoder

- (id)initForSigningWithSender:(id)sender compositionSpecification:(id)specification error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = _MFSecCMSEncoder;
  v8 = [(MFBufferedDataConsumer *)&v35 init];
  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = [specification objectForKey:@"SigningIdentity"];
  if (!v9)
  {
    v15 = MFLogGeneral();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    *&buf[4] = sender;
    v16 = "#SMIMEErrors Found no identity for %@";
    v17 = v15;
    v18 = 12;
LABEL_12:
    _os_log_impl(&dword_258BDA000, v17, OS_LOG_TYPE_INFO, v16, buf, v18);
    goto LABEL_20;
  }

  v10 = v9;
  v11 = SecCmsMessageCreate();
  if (!v11)
  {
    v19 = MFLogGeneral();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v16 = "#SMIMEErrors SecCmsMessageCreate for signing failed";
    v17 = v19;
    v18 = 2;
    goto LABEL_12;
  }

  v12 = v11;
  if (!SecCmsSignedDataCreate())
  {
    v20 = MFLogGeneral();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
LABEL_19:
      SecCmsMessageDestroy();
      goto LABEL_20;
    }

    *buf = 0;
    v21 = "#SMIMEErrors SecCmsSignedDataCreate failed";
LABEL_15:
    _os_log_impl(&dword_258BDA000, v20, OS_LOG_TYPE_INFO, v21, buf, 2u);
    goto LABEL_19;
  }

  SecCmsMessageGetContentInfo();
  v13 = SecCmsContentInfoSetContentSignedData();
  v8->_SecCMSError = v13;
  if (v13)
  {
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForSigningWithSender:? compositionSpecification:? error:?];
    }

    goto LABEL_19;
  }

  SecCmsSignedDataGetContentInfo();
  v22 = SecCmsContentInfoSetContentData();
  v8->_SecCMSError = v22;
  if (v22)
  {
    v23 = MFLogGeneral();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForSigningWithSender:? compositionSpecification:? error:?];
    }

    goto LABEL_19;
  }

  v26 = SecCmsSignerInfoCreate();
  if (!v26)
  {
    v20 = MFLogGeneral();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v21 = "#SMIMEErrors SecCmsSignerInfoCreate failed";
    goto LABEL_15;
  }

  v27 = v26;
  v28 = SecCmsSignerInfoIncludeCerts();
  v8->_SecCMSError = v28;
  if (v28)
  {
    v29 = MFLogGeneral();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForSigningWithSender:? compositionSpecification:? error:?];
    }

    goto LABEL_19;
  }

  *buf = 0;
  v30 = [specification objectForKey:@"EncryptionIdentity"];
  if (v30)
  {
    SecIdentityCopyCertificate(v30, buf);
  }

  certificateRef = 0;
  SecIdentityCopyCertificate(v10, &certificateRef);
  if (*buf)
  {
    v31 = *buf;
  }

  else
  {
    v31 = certificateRef;
  }

  MEMORY[0x259C96E60](v27, v31, 0);
  if (*buf)
  {
    v32 = *buf;
  }

  else
  {
    v32 = certificateRef;
  }

  MEMORY[0x259C96E50](v27, v32, 0);
  if (*buf && !CFEqual(*buf, certificateRef))
  {
    v8->_SecCMSError = SecCmsSignedDataAddCertChain();
  }

  if (certificateRef)
  {
    CFRelease(certificateRef);
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  if (v8->_SecCMSError)
  {
    v33 = MFLogGeneral();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForSigningWithSender:? compositionSpecification:? error:?];
    }

    goto LABEL_19;
  }

  CFAbsoluteTimeGetCurrent();
  SecCmsSignerInfoAddSigningTime();
  v8->_message = v12;
LABEL_20:
  if (!v8->_encoder && !v8->_message || v8->_SecCMSError)
  {
    if (error)
    {
      *error = +[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"MFMessageErrorDomain", 1036, [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"SMIME_CANT_SIGN_MESSAGE", @"An error occurred while trying to sign this message with a certificate from “%@”. Verify that your certificate for this address is correct, and that its private key is in your keychain.", @"Delayed", sender]);
    }

    v8 = 0;
  }

LABEL_26:
  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)initForEncryptionWithCompositionSpecification:(id)specification error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = _MFSecCMSEncoder;
  v6 = [(MFBufferedDataConsumer *)&v40 init];
  if (!v6)
  {
    goto LABEL_39;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [specification objectForKey:@"RecipientCertificates"];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addObjectsFromArray:{objc_msgSend(v8, "objectForKey:", *(*(&v36 + 1) + 8 * i))}];
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  v13 = [specification objectForKey:@"EncryptionIdentity"];
  if (v13 || (v13 = [specification objectForKey:@"SigningIdentity"]) != 0)
  {
    certificateRef = 0;
    SecIdentityCopyCertificate(v13, &certificateRef);
    if (certificateRef)
    {
      [v7 addObject:?];
      CFRelease(certificateRef);
    }
  }

  v14 = [v7 count];
  MEMORY[0x28223BE20]();
  v17 = &buf[-v16];
  if (v15 >= 0x200)
  {
    v18 = 512;
  }

  else
  {
    v18 = v15;
  }

  bzero(&buf[-v16], v18);
  v17[v14] = 0;
  v43.location = 0;
  v43.length = v14;
  CFArrayGetValues(v7, v43, v17);
  LODWORD(certificateRef) = 128;
  v34 = 184;
  v19 = SecSMIMEFindBulkAlgForRecipients();
  v6->_SecCMSError = v19;
  if (v19)
  {
    v20 = MFLogGeneral();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForEncryptionWithCompositionSpecification:? error:?];
    }

    goto LABEL_33;
  }

  v21 = SecCmsMessageCreate();
  if (!v21)
  {
    v25 = MFLogGeneral();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258BDA000, v25, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCmsMessageCreate for encryption failed", buf, 2u);
    }

    goto LABEL_33;
  }

  v22 = v21;
  if (!SecCmsEnvelopedDataCreate())
  {
    v26 = MFLogGeneral();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
LABEL_32:
      SecCmsMessageDestroy();
      goto LABEL_33;
    }

    *buf = 0;
    v27 = "#SMIMEErrors SecCmsEnvelopedDataCreate failed";
LABEL_28:
    _os_log_impl(&dword_258BDA000, v26, OS_LOG_TYPE_INFO, v27, buf, 2u);
    goto LABEL_32;
  }

  SecCmsMessageGetContentInfo();
  v23 = SecCmsContentInfoSetContentEnvelopedData();
  v6->_SecCMSError = v23;
  if (v23)
  {
    v24 = MFLogGeneral();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForEncryptionWithCompositionSpecification:? error:?];
    }

    goto LABEL_32;
  }

  SecCmsEnvelopedDataGetContentInfo();
  v28 = SecCmsContentInfoSetContentData();
  v6->_SecCMSError = v28;
  if (v28)
  {
    v29 = MFLogGeneral();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForEncryptionWithCompositionSpecification:? error:?];
    }

    goto LABEL_32;
  }

  if (v14)
  {
    do
    {
      v32 = *v17;
      if (!SecCmsRecipientInfoCreate())
      {
        break;
      }

      if (!--v14)
      {
        goto LABEL_46;
      }

      ++v17;
    }

    while (!v6->_SecCMSError);
    v26 = MFLogGeneral();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v27 = "#SMIMEErrors Failed to create all the required recipients";
    goto LABEL_28;
  }

LABEL_46:
  v6->_message = v22;
LABEL_33:

  if (!v6->_encoder && !v6->_message || v6->_SecCMSError)
  {
    if (error)
    {
      *error = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:MFLookupLocalizedString(@"SMIME_CANT_ENCRYPT_MESSAGE", @"An error occurred while trying to encrypt your message. Verify that you have valid certificates in your keychain for all of the recipients.", @"Delayed")];
    }

    v6 = 0;
  }

LABEL_39:
  v30 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  if (self->_encoder)
  {
    SecCmsEncoderDestroy();
  }

  if (self->_message)
  {
    SecCmsMessageDestroy();
  }

  v3.receiver = self;
  v3.super_class = _MFSecCMSEncoder;
  [(MFBufferedDataConsumer *)&v3 dealloc];
}

- (int64_t)appendData:(id)data
{
  if (self->_SecCMSError)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(_MFSecCMSEncoder *)v3 appendData:v4, v5, v6, v7, v8, v9, v10];
    }

    return -1;
  }

  if (!self->_message)
  {
    v19 = MFLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20[0]) = 0;
      _os_log_impl(&dword_258BDA000, v19, OS_LOG_TYPE_INFO, "#SMIMEErrors -appendData: called twice _MFSecCMSEncoder (only once is allowed for now)!", v20, 2u);
    }

    return -1;
  }

  v11 = [data length];
  v20[1] = [data bytes];
  self->_singleShot = objc_alloc_init(MEMORY[0x277D24F70]);
  message = self->_message;
  v15 = SecCmsMessageEncode();
  self->_SecCMSError = v15;
  if (v15)
  {
    v16 = MFLogGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder appendData:?];
    }

    v11 = -1;
  }

  v17 = self->_message;
  SecCmsMessageDestroy();
  self->_message = 0;
  return v11;
}

- (void)done
{
  OUTLINED_FUNCTION_2_1(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v1, v2, "#SMIMEErrors SecCmsEncoderFinish on -done returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_appendBytes:(const void *)bytes length:(unint64_t)length
{
  v5 = [objc_alloc(MEMORY[0x277D24F00]) initWithBytesNoCopy:bytes length:length freeWhenDone:0];
  v6.receiver = self;
  v6.super_class = _MFSecCMSEncoder;
  [(MFBufferedDataConsumer *)&v6 appendData:v5];
}

- (id)data
{
  singleShot = self->_singleShot;
  if (!singleShot)
  {
    v4.receiver = self;
    v4.super_class = _MFSecCMSEncoder;
    return [(MFBufferedDataConsumer *)&v4 data];
  }

  return singleShot;
}

- (void)initForSigningWithSender:(int *)a1 compositionSpecification:error:.cold.1(int *a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v1, v2, "#SMIMEErrors SecCmsContentInfoSetContentSignedData returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initForSigningWithSender:(int *)a1 compositionSpecification:error:.cold.2(int *a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v1, v2, "#SMIMEErrors SecCmsContentInfoSetContentData for signing returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initForSigningWithSender:(int *)a1 compositionSpecification:error:.cold.3(int *a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v1, v2, "#SMIMEErrors SecCmsSignerInfoIncludeCerts returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initForSigningWithSender:(int *)a1 compositionSpecification:error:.cold.4(int *a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v1, v2, "#SMIMEErrors SecCmsSignedDataAddCertChain returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initForEncryptionWithCompositionSpecification:(int *)a1 error:.cold.1(int *a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v1, v2, "#SMIMEErrors SecSMIMEFindBulkAlgForRecipients returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initForEncryptionWithCompositionSpecification:(int *)a1 error:.cold.2(int *a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v1, v2, "#SMIMEErrors SecCmsContentInfoSetContentEnvelopedData returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initForEncryptionWithCompositionSpecification:(int *)a1 error:.cold.3(int *a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v1, v2, "#SMIMEErrors SecCmsContentInfoSetContentData for encryption returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)appendData:(int *)a1 .cold.2(int *a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v1, v2, "#SMIMEErrors SecCmsMessageEncode returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end