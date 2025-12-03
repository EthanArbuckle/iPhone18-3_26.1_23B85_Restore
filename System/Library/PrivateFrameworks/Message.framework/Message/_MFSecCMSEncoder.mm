@interface _MFSecCMSEncoder
- (id)data;
- (id)initForEncryptionWithCompositionSpecification:(void *)specification error:;
- (id)initForSigningWithSender:(void *)sender compositionSpecification:(void *)specification error:;
- (int64_t)appendData:(id)data;
- (void)dealloc;
- (void)done;
@end

@implementation _MFSecCMSEncoder

- (id)initForSigningWithSender:(void *)sender compositionSpecification:(void *)specification error:
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  senderCopy = sender;
  if (!self)
  {
    goto LABEL_30;
  }

  v24.receiver = self;
  v24.super_class = _MFSecCMSEncoder;
  self = objc_msgSendSuper2(&v24, sel_init);
  if (!self)
  {
    goto LABEL_30;
  }

  v9 = [senderCopy objectForKey:@"SigningIdentity"];
  if (!v9)
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_INFO, "#SMIMEErrors Found no identity for %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v10 = SecCmsMessageCreate();
  if (!v10)
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCmsMessageCreate for signing failed", buf, 2u);
    }

LABEL_12:

    goto LABEL_24;
  }

  if (!SecCmsSignedDataCreate())
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCmsSignedDataCreate failed", buf, 2u);
    }

    goto LABEL_22;
  }

  SecCmsMessageGetContentInfo();
  *(self + 10) = SecCmsContentInfoSetContentSignedData();
  if (*(self + 10))
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForSigningWithSender:self compositionSpecification:? error:?];
    }

LABEL_22:

LABEL_23:
    SecCmsMessageDestroy();
    goto LABEL_24;
  }

  SecCmsSignedDataGetContentInfo();
  *(self + 10) = SecCmsContentInfoSetContentData();
  if (*(self + 10))
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForSigningWithSender:self compositionSpecification:? error:?];
    }

    goto LABEL_22;
  }

  v18 = SecCmsSignerInfoCreate();
  if (!v18)
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCmsSignerInfoCreate failed", buf, 2u);
    }

    goto LABEL_22;
  }

  *(self + 10) = SecCmsSignerInfoIncludeCerts();
  if (*(self + 10))
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForSigningWithSender:self compositionSpecification:? error:?];
    }

    goto LABEL_22;
  }

  *buf = 0;
  v19 = [senderCopy objectForKey:@"EncryptionIdentity"];
  if (v19)
  {
    SecIdentityCopyCertificate(v19, buf);
  }

  certificateRef = 0;
  SecIdentityCopyCertificate(v9, &certificateRef);
  if (*buf)
  {
    v20 = *buf;
  }

  else
  {
    v20 = certificateRef;
  }

  MEMORY[0x1B272A3C0](v18, v20, 0);
  if (*buf)
  {
    v21 = *buf;
  }

  else
  {
    v21 = certificateRef;
  }

  MEMORY[0x1B272A3B0](v18, v21, 0);
  if (*buf && !CFEqual(*buf, certificateRef))
  {
    *(self + 10) = SecCmsSignedDataAddCertChain();
  }

  if (certificateRef)
  {
    CFRelease(certificateRef);
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  if (*(self + 10))
  {
    v22 = MFLogGeneral();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForSigningWithSender:self compositionSpecification:? error:?];
    }

    goto LABEL_23;
  }

  CFAbsoluteTimeGetCurrent();
  SecCmsSignerInfoAddSigningTime();
  *(self + 7) = v10;
LABEL_24:
  if (!*(self + 6) && !*(self + 7) || *(self + 10))
  {
    if (specification)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = MFLookupLocalizedString(@"SMIME_CANT_SIGN_MESSAGE", @"An error occurred while trying to sign this message with a certificate from “%@”. Verify that your certificate for this address is correct, and that its private key is in your keychain.", @"Delayed");
      v15 = [v13 stringWithFormat:v14, v7];
      *specification = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v15];
    }

    self = 0;
  }

LABEL_30:

  v16 = *MEMORY[0x1E69E9840];
  return self;
}

- (id)initForEncryptionWithCompositionSpecification:(void *)specification error:
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!self)
  {
    goto LABEL_45;
  }

  v33.receiver = self;
  v33.super_class = _MFSecCMSEncoder;
  self = objc_msgSendSuper2(&v33, sel_init);
  if (!self)
  {
    goto LABEL_45;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  specificationCopy = specification;
  [v5 objectForKey:@"RecipientCertificates"];
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v7 = v29 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [v7 objectForKey:*(*(&v29 + 1) + 8 * i)];
        [v6 addObjectsFromArray:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  v12 = [v5 objectForKey:@"EncryptionIdentity"];
  if (v12 || (v12 = [v5 objectForKey:@"SigningIdentity"]) != 0)
  {
    certificateRef[0] = 0;
    SecIdentityCopyCertificate(v12, certificateRef);
    if (certificateRef[0])
    {
      [v6 addObject:?];
      CFRelease(certificateRef[0]);
    }
  }

  v13 = [v6 count];
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((v16 & 1) == 0)
  {
    memset(v15, 170, 8 * v13 + 8);
  }

  v15[v13] = 0;
  v36.location = 0;
  v36.length = v13;
  CFArrayGetValues(v6, v36, v15);
  v17 = SecCmsMessageCreate();
  if (!v17)
  {
    v19 = MFLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(certificateRef[0]) = 0;
      _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCmsMessageCreate for encryption failed", certificateRef, 2u);
    }

    goto LABEL_38;
  }

  if (!SecCmsEnvelopedDataCreate())
  {
    v18 = MFLogGeneral();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
LABEL_37:

      SecCmsMessageDestroy();
      goto LABEL_38;
    }

    LOWORD(certificateRef[0]) = 0;
    v20 = "#SMIMEErrors SecCmsEnvelopedDataCreate failed";
LABEL_26:
    _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_INFO, v20, certificateRef, 2u);
    goto LABEL_37;
  }

  SecCmsMessageGetContentInfo();
  *(self + 10) = SecCmsContentInfoSetContentEnvelopedData();
  if (*(self + 10))
  {
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForEncryptionWithCompositionSpecification:self error:?];
    }

    goto LABEL_37;
  }

  SecCmsEnvelopedDataGetContentInfo();
  *(self + 10) = SecCmsContentInfoSetContentData();
  if (*(self + 10))
  {
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForEncryptionWithCompositionSpecification:self error:?];
    }

    goto LABEL_37;
  }

  if (v13)
  {
    while (!*(self + 10))
    {
      v21 = *v15;
      if (!SecCmsRecipientInfoCreate())
      {
        break;
      }

      ++v15;
      if (!--v13)
      {
        goto LABEL_34;
      }
    }

    v18 = MFLogGeneral();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      goto LABEL_37;
    }

    LOWORD(certificateRef[0]) = 0;
    v20 = "#SMIMEErrors Failed to create all the required recipients";
    goto LABEL_26;
  }

LABEL_34:
  *(self + 7) = v17;
LABEL_38:
  if (!*(self + 6) && !*(self + 7) || *(self + 10))
  {
    if (specificationCopy)
    {
      v22 = MFLookupLocalizedString(@"SMIME_CANT_ENCRYPT_MESSAGE", @"An error occurred while trying to encrypt your message. Verify that you have valid certificates in your keychain for all of the recipients.", @"Delayed");
      v23 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v22];
      *specificationCopy = v23;
    }

    self = 0;
  }

LABEL_45:
  v24 = *MEMORY[0x1E69E9840];
  return self;
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
  dataCopy = data;
  v5 = dataCopy;
  if (self->_SecCMSError)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder appendData:];
    }

LABEL_4:

    v7 = -1;
    goto LABEL_11;
  }

  if (!self->_message)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "#SMIMEErrors -appendData: called twice _MFSecCMSEncoder (only once is allowed for now)!", v16, 2u);
    }

    goto LABEL_4;
  }

  v7 = [dataCopy length];
  v16[1] = [v5 bytes];
  v8 = objc_alloc_init(MEMORY[0x1E69AD730]);
  singleShot = self->_singleShot;
  self->_singleShot = v8;

  message = self->_message;
  v11 = self->_singleShot;
  v12 = SecCmsMessageEncode();
  self->_SecCMSError = v12;
  if (v12)
  {
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder appendData:?];
    }

    v7 = -1;
  }

  v14 = self->_message;
  SecCmsMessageDestroy();
  self->_message = 0;
LABEL_11:

  return v7;
}

- (void)done
{
  OUTLINED_FUNCTION_7_0(self, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v1, v2, "#SMIMEErrors SecCmsEncoderFinish on -done returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (id)data
{
  data = self->_singleShot;
  if (!data)
  {
    v5.receiver = self;
    v5.super_class = _MFSecCMSEncoder;
    data = [(MFBufferedDataConsumer *)&v5 data];
  }

  return data;
}

- (void)initForSigningWithSender:(uint64_t)a1 compositionSpecification:error:.cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v2, v3, "#SMIMEErrors SecCmsContentInfoSetContentSignedData returned %ld", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initForSigningWithSender:(uint64_t)a1 compositionSpecification:error:.cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v2, v3, "#SMIMEErrors SecCmsContentInfoSetContentData for signing returned %ld", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initForSigningWithSender:(uint64_t)a1 compositionSpecification:error:.cold.3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v2, v3, "#SMIMEErrors SecCmsSignerInfoIncludeCerts returned %ld", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initForSigningWithSender:(uint64_t)a1 compositionSpecification:error:.cold.4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v2, v3, "#SMIMEErrors SecCmsSignedDataAddCertChain returned %ld", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initForEncryptionWithCompositionSpecification:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v2, v3, "#SMIMEErrors SecCmsContentInfoSetContentEnvelopedData returned %ld", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initForEncryptionWithCompositionSpecification:(uint64_t)a1 error:.cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v2, v3, "#SMIMEErrors SecCmsContentInfoSetContentData for encryption returned %ld", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)appendData:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)appendData:(int *)a1 .cold.2(int *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v1, v2, "#SMIMEErrors SecCmsMessageEncode returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end