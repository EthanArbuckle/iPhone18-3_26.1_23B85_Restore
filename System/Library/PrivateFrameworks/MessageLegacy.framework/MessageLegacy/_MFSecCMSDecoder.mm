@interface _MFSecCMSDecoder
- (_MFSecCMSDecoder)initWithPartData:(id)data error:(id *)error;
- (id)data;
- (id)signedData;
- (id)verifyAgainstSenders:(id)senders signingError:(id *)error;
- (int64_t)appendData:(id)data;
- (void)dealloc;
- (void)done;
@end

@implementation _MFSecCMSDecoder

- (_MFSecCMSDecoder)initWithPartData:(id)data error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v21.receiver = self;
  v21.super_class = _MFSecCMSDecoder;
  v6 = [(_MFSecCMSDecoder *)&v21 init];
  if (v6)
  {
    v20 = 0;
    v7 = SecCmsDecoderCreate();
    *(v6 + 2) = v7;
    if (v7)
    {
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_MFSecCMSDecoder initWithPartData:? error:?];
      }
    }

    else
    {
      [data bytes];
      [data length];
      v9 = SecCmsDecoderUpdate();
      *(v6 + 2) = v9;
      if (v9)
      {
        v10 = MFLogGeneral();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [_MFSecCMSDecoder initWithPartData:data error:?];
        }
      }

      else
      {
        v12 = SecCmsDecoderFinish();
        *(v6 + 2) = v12;
        v20 = 0;
        if (*(v6 + 2))
        {
          v13 = *(v6 + 2);
          *(v6 + 56) = SecCmsMessageIsEncrypted() != 0;
          v12 = *(v6 + 2);
        }

        if (v12)
        {
          v14 = MFLogGeneral();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [_MFSecCMSDecoder initWithPartData:? error:?];
          }
        }

        *(v6 + 6) = _ExtractContentWithTag(*(v6 + 2), 27);
        ContentWithTag = _ExtractContentWithTag(*(v6 + 2), 26);
        *(v6 + 5) = ContentWithTag;
        if (ContentWithTag)
        {
          if (!SecCmsSignedDataHasDigests())
          {
            v16 = *(v6 + 5);
            SecCmsSignedDataGetDigestAlgs();
            started = SecCmsDigestContextStartMultiple();
            *(v6 + 3) = started;
            if (!started)
            {

              v18 = MFLogGeneral();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                *v19 = 0;
                _os_log_impl(&dword_258BDA000, v18, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCmsDigestContextStartMultiple failed", v19, 2u);
              }

              v6 = 0;
              if (error)
              {
                *error = [MFError errorWithDomain:*MEMORY[0x277CCA5B8] code:12 userInfo:0];
              }
            }
          }
        }
      }
    }

    if (v20)
    {
      SecCmsDecoderDestroy();
    }

    if (v6 && error && *(v6 + 2))
    {
      *error = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
    }
  }

  return v6;
}

- (void)dealloc
{
  digest = self->_digest;
  if (digest)
  {
    MEMORY[0x259C96CD0](digest, a2);
  }

  if (self->_message)
  {
    SecCmsMessageDestroy();
  }

  v4.receiver = self;
  v4.super_class = _MFSecCMSDecoder;
  [(_MFSecCMSDecoder *)&v4 dealloc];
}

- (int64_t)appendData:(id)data
{
  if (self->_SecCMSError)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(_MFSecCMSDecoder *)v3 appendData:v4, v5, v6, v7, v8, v9, v10];
    }

    return -1;
  }

  if (self->_signedData)
  {
    v11 = [data length];
    if (self->_digest)
    {
      [data bytes];
      SecCmsDigestContextUpdate();
    }

    return v11;
  }

  if (!self->_envelopedData)
  {
    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_258BDA000, v15, OS_LOG_TYPE_INFO, "#SMIMEErrors -appendData: called on _MFSecCMSDecoder with no signed or enveloped data!", v16, 2u);
    }

    return -1;
  }

  return [data length];
}

- (void)done
{
  OUTLINED_FUNCTION_2_1(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v1, v2, "#SMIMEErrors SecCmsSignedDataSetDigestContext on -done returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (id)data
{
  envelopedData = self->_envelopedData;
  if (envelopedData)
  {
    SecCmsEnvelopedDataGetContentInfo();
    envelopedData = SecCmsContentInfoGetInnerContent();
    if (envelopedData)
    {
      envelopedData = [objc_alloc(MEMORY[0x277D24F70]) initWithBytesNoCopy:envelopedData[1] length:*envelopedData freeWhenDone:0];
    }

    v2 = vars8;
  }

  return envelopedData;
}

- (id)verifyAgainstSenders:(id)senders signingError:(id *)error
{
  v57 = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
  }

  p_SecCMSError = &self->_SecCMSError;
  if (!self->_SecCMSError)
  {
    if ([senders count])
    {
      v12 = [senders objectAtIndex:0];
    }

    else
    {
      v12 = 0;
    }

    signedData = self->_signedData;
    if (SecCmsSignedDataHasDigests())
    {
      if (v12)
      {
        v14 = self->_signedData;
        v15 = SecCmsSignedDataSignerInfoCount();
        v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v15];
        if (v15)
        {
          v17 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:v12];
          v19 = v17;
          v44 = v15;
          if (v15 >= 1)
          {
            v8 = 0;
            v20 = 0;
            *&v18 = 67109120;
            v43 = v18;
            v21 = v44;
            v45 = v17;
            while (1)
            {
              v22 = self->_signedData;
              SignerInfo = SecCmsSignedDataGetSignerInfo();
              v24 = self->_signedData;
              v25 = SecCmsSignedDataVerifySignerInfo();
              self->_SecCMSError = v25;
              if (!v25)
              {
                if (SignerInfo)
                {
                  VerificationStatus = SecCmsSignerInfoGetVerificationStatus();
                  SignerInfo = SecCmsSignerInfoCopyCertFromEncryptionKeyPreference();
                  if (SignerInfo)
                  {
LABEL_22:
                    v29 = v16;
                    v30 = v12;
                    v31 = [MFMessageKeychainManager copySMIMEEncryptionPolicyForAddress:v12, v43];
                    *trust = 0;
                    v32 = SecTrustCreateWithCertificates(SignerInfo, v31, trust);
                    CFRelease(v31);
                    CFRelease(SignerInfo);
                    if (v32)
                    {
                      v33 = MFLogGeneral();
                      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                      {
                        *buf = v43;
                        v56 = v32;
                        _os_log_error_impl(&dword_258BDA000, v33, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecTrustCreateWithCertificates returned %d", buf, 8u);
                      }

                      SignerInfo = 0;
                      v12 = v30;
                      v16 = v29;
                      v21 = v44;
                    }

                    else
                    {
                      SignerInfo = *trust;
                      v12 = v30;
                      v16 = v29;
                      v21 = v44;
                      if (!*trust)
                      {
                        v35 = MFLogGeneral();
                        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                        {
                          [(_MFSecCMSDecoder *)&v46 verifyAgainstSenders:v47 signingError:v35];
                        }

                        SignerInfo = 0;
                      }
                    }
                  }

                  else
                  {
                    CertificateAtIndex = SecTrustGetCertificateAtIndex(0, 0);
                    if ((SecCertificateGetKeyUsage() & 4) != 0)
                    {
                      SignerInfo = CFRetain(CertificateAtIndex);
                      goto LABEL_22;
                    }
                  }
                }

                else
                {
                  VerificationStatus = 2;
                }

                v36 = [[MFMessageSigner alloc] initWithSender:v12 signingTrust:0 encryptionTrust:SignerInfo verification:VerificationStatus];
                if (SignerInfo)
                {
                  CFRelease(SignerInfo);
                }

                if (error)
                {
                  error = [(MFMessageSigner *)v36 error];
                  *error = error;
                  if (error)
                  {
                    v38 = MFLogGeneral();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      [(_MFSecCMSDecoder *)v48 verifyAgainstSenders:error signingError:&v49, v38];
                    }
                  }
                }

                [(NSArray *)v16 addObject:v36, v43];

                v19 = v45;
                goto LABEL_42;
              }

              v8 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
              v26 = SignerInfo ? SecCmsSignerInfoGetSignerEmailAddress() : 0;
              v34 = MFLogGeneral();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                break;
              }

              if (v26)
              {
                goto LABEL_29;
              }

LABEL_42:
              if (v21 == ++v20)
              {
                goto LABEL_55;
              }
            }

            SecCMSError = self->_SecCMSError;
            v40 = @"(Unknown)";
            if (!v26)
            {
              v40 = 0;
            }

            *trust = 134218498;
            *&trust[4] = SecCMSError;
            v51 = 1024;
            v52 = v20;
            v53 = 2112;
            v54 = v40;
            _os_log_error_impl(&dword_258BDA000, v34, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecCmsSignedDataVerifySignerInfo returned %ld for #%d:%@", trust, 0x1Cu);
            if (!v26)
            {
              goto LABEL_42;
            }

LABEL_29:
            CFRelease(v26);
            goto LABEL_42;
          }

          v8 = 0;
LABEL_55:
          if (v19)
          {
            CFRelease(v19);
          }
        }

        else
        {
          v8 = 0;
        }

        self->_signers = v16;
        goto LABEL_6;
      }

      v8 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
      v41 = MFLogGeneral();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }

      *trust = 0;
      v42 = "#SMIMEErrors The message sender is missing";
    }

    else
    {
      v8 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
      v41 = MFLogGeneral();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }

      *trust = 0;
      v42 = "#SMIMEErrors There were no digests in the message";
    }

    _os_log_impl(&dword_258BDA000, v41, OS_LOG_TYPE_INFO, v42, trust, 2u);
    goto LABEL_6;
  }

  v8 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
  v9 = MFLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [_MFSecCMSDecoder verifyAgainstSenders:? signingError:?];
  }

LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)signedData
{
  signedData = self->_signedData;
  if (signedData)
  {
    SecCmsSignedDataGetContentInfo();
    signedData = SecCmsContentInfoGetInnerContent();
    if (signedData)
    {
      signedData = [objc_alloc(MEMORY[0x277D24F70]) initWithBytesNoCopy:signedData[1] length:*signedData freeWhenDone:0];
    }

    v2 = vars8;
  }

  return signedData;
}

- (void)initWithPartData:(int *)a1 error:.cold.1(int *a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v1, v2, "#SMIMEErrors SecCmsDecoderCreate returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithPartData:(int *)a1 error:(void *)a2 .cold.2(int *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  [a2 length];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithPartData:(int *)a1 error:.cold.3(int *a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v1, v2, "#SMIMEErrors SecCmsDecoderFinish returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)verifyAgainstSenders:(int *)a1 signingError:.cold.1(int *a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v1, v2, "#SMIMEErrors _MFSecCMSDecoder asked to verify with pending error (%ld)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)verifyAgainstSenders:(os_log_t)log signingError:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_258BDA000, log, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecTrustCreateWithCertificates returned a null SecTrustRef", buf, 2u);
}

- (void)verifyAgainstSenders:(uint64_t *)a3 signingError:(NSObject *)a4 .cold.3(uint8_t *a1, id *a2, uint64_t *a3, NSObject *a4)
{
  v7 = [*a2 ef_publicDescription];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_258BDA000, a4, OS_LOG_TYPE_ERROR, "#SMIMEErrors There was a signing error %{public}@", a1, 0xCu);
}

@end