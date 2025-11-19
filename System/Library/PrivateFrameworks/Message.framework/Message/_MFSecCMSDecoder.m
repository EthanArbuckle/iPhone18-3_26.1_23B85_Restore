@interface _MFSecCMSDecoder
- (char)initWithPartData:(void *)a3 error:;
- (id)data;
- (id)verifyAgainstSenders:(id *)a3 signingError:;
- (int64_t)appendData:(id)a3;
- (void)dealloc;
- (void)done;
- (void)signedData;
@end

@implementation _MFSecCMSDecoder

- (char)initWithPartData:(void *)a3 error:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v21.receiver = a1;
    v21.super_class = _MFSecCMSDecoder;
    a1 = objc_msgSendSuper2(&v21, sel_init);
    if (a1)
    {
      v6 = SecCmsDecoderCreate();
      *(a1 + 2) = v6;
      v7 = (a1 + 8);
      if (v6)
      {
        v8 = MFLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [_MFSecCMSDecoder initWithPartData:? error:?];
        }
      }

      else
      {
        v9 = v5;
        [v5 bytes];
        [v5 length];
        v10 = SecCmsDecoderUpdate();
        *v7 = v10;
        if (!v10)
        {
          v14 = SecCmsDecoderFinish();
          *v7 = v14;
          if (*(a1 + 2))
          {
            v15 = *(a1 + 2);
            a1[56] = SecCmsMessageIsEncrypted() != 0;
            v14 = *(a1 + 2);
          }

          if (v14)
          {
            v16 = MFLogGeneral();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [_MFSecCMSDecoder initWithPartData:? error:?];
            }
          }

          *(a1 + 6) = _ExtractContentWithTag(*(a1 + 2), 27);
          ContentWithTag = _ExtractContentWithTag(*(a1 + 2), 26);
          *(a1 + 5) = ContentWithTag;
          if (ContentWithTag)
          {
            if (!SecCmsSignedDataHasDigests())
            {
              v18 = *(a1 + 5);
              SecCmsSignedDataGetDigestAlgs();
              started = SecCmsDigestContextStartMultiple();
              *(a1 + 3) = started;
              if (!started)
              {

                v20 = MFLogGeneral();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCmsDigestContextStartMultiple failed", buf, 2u);
                }

                if (a3)
                {
                  [MFError errorWithDomain:*MEMORY[0x1E696A798] code:12 userInfo:0];
                  *a3 = a1 = 0;
                }

                else
                {
                  a1 = 0;
                }
              }
            }
          }

          goto LABEL_13;
        }

        v8 = MFLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          -[_MFSecCMSDecoder initWithPartData:error:].cold.2(*v7, buf, [v5 length], v8);
        }
      }

LABEL_13:
      if (a1 && a3 && *(a1 + 2))
      {
        v11 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
        *a3 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v11];
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return a1;
}

- (id)verifyAgainstSenders:(id *)a3 signingError:
{
  v57 = *MEMORY[0x1E69E9840];
  v46 = a2;
  if (a1)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v5 = (a1 + 8);
    if (*(a1 + 8))
    {
      v6 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
      v47 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v6];

      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [_MFSecCMSDecoder verifyAgainstSenders:? signingError:?];
      }

      goto LABEL_63;
    }

    if ([v46 count])
    {
      v7 = [v46 objectAtIndex:0];
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 40);
    if (SecCmsSignedDataHasDigests())
    {
      if (!v7)
      {
        v38 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
        v47 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v38];

        v7 = MFLogGeneral();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *trust = 0;
          _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, "#SMIMEErrors The message sender is missing", trust, 2u);
        }

        goto LABEL_63;
      }

      v9 = *(a1 + 40);
      v10 = SecCmsSignedDataSignerInfoCount();
      v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
      if (v10)
      {
        v45 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:v7];
        if (v10 >= 1)
        {
          v44 = v10;
          v47 = 0;
          v12 = 0;
          *&v11 = 67109120;
          v42 = v11;
          while (1)
          {
            v13 = *(a1 + 40);
            SignerInfo = SecCmsSignedDataGetSignerInfo();
            v15 = *(a1 + 40);
            v16 = SecCmsSignedDataVerifySignerInfo();
            *v5 = v16;
            if (!v16)
            {
              break;
            }

            v17 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
            v18 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v17];

            if (SignerInfo)
            {
              SignerEmailAddress = SecCmsSignerInfoGetSignerEmailAddress();
            }

            else
            {
              SignerEmailAddress = 0;
            }

            v27 = MFLogGeneral();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v34 = *v5;
              v35 = @"(Unknown)";
              if (!SignerEmailAddress)
              {
                v35 = 0;
              }

              *trust = 134218498;
              *&trust[4] = v34;
              v51 = 1024;
              v52 = v12;
              v53 = 2112;
              v54 = v35;
              _os_log_error_impl(&dword_1B0389000, v27, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecCmsSignedDataVerifySignerInfo returned %ld for #%d:%@", trust, 0x1Cu);
            }

            v47 = v18;
LABEL_43:

            if (v44 == ++v12)
            {
              goto LABEL_60;
            }
          }

          if (!SignerInfo)
          {
            v28 = v7;
            v26 = 0;
            VerificationStatus = 2;
            goto LABEL_35;
          }

          VerificationStatus = SecCmsSignerInfoGetVerificationStatus();
          v21 = v7;
          ValueAtIndex = SecCmsSignerInfoCopyCertFromEncryptionKeyPreference();
          if (!ValueAtIndex)
          {
            v29 = SecTrustCopyCertificateChain(0);
            v30 = v29;
            if (v29)
            {
              if (CFArrayGetCount(v29) < 1)
              {
                v31 = 0;
                ValueAtIndex = 0;
              }

              else
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v30, 0);
                if (ValueAtIndex && (SecCertificateGetKeyUsage() & 0x14) != 0)
                {
                  ValueAtIndex = CFRetain(ValueAtIndex);
                  v31 = 1;
                }

                else
                {
                  v31 = 0;
                }
              }

              CFRelease(v30);
              if (!v31)
              {
LABEL_24:
                v26 = 0;
LABEL_35:

                SignerEmailAddress = [[MFMessageSigner alloc] initWithSender:v7 signingTrust:0 encryptionTrust:v26 verification:VerificationStatus];
                if (v26)
                {
                  CFRelease(v26);
                }

                if (a3)
                {
                  v32 = [(MFMessageSigner *)SignerEmailAddress error];
                  *a3 = v32;
                  if (v32)
                  {
                    v33 = MFLogGeneral();
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                    {
                      [*a3 ef_publicDescription];
                      objc_claimAutoreleasedReturnValue();
                      [_MFSecCMSDecoder verifyAgainstSenders:signingError:];
                    }
                  }
                }

                [v43 addObject:{SignerEmailAddress, v42}];
                goto LABEL_43;
              }
            }

            else
            {
              ValueAtIndex = 0;
            }
          }

          v23 = [MFMessageKeychainManager copySMIMEEncryptionPolicyForAddress:v21, v42];
          *trust = 0;
          v24 = SecTrustCreateWithCertificates(ValueAtIndex, v23, trust);
          CFRelease(v23);
          CFRelease(ValueAtIndex);
          if (v24)
          {
            v25 = MFLogGeneral();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = v42;
              v56 = v24;
              _os_log_error_impl(&dword_1B0389000, v25, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecTrustCreateWithCertificates returned %d", buf, 8u);
            }
          }

          else
          {
            v26 = *trust;
            if (*trust)
            {
              goto LABEL_35;
            }

            v25 = MFLogGeneral();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [(_MFSecCMSDecoder *)&v48 verifyAgainstSenders:v49 signingError:v25];
            }
          }

          goto LABEL_24;
        }

        v47 = 0;
LABEL_60:
        if (v45)
        {
          CFRelease(v45);
        }
      }

      else
      {
        v47 = 0;
      }

      v39 = *(a1 + 32);
      *(a1 + 32) = v43;
    }

    else
    {
      v36 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
      v47 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v36];

      v37 = MFLogGeneral();
      [_MFSecCMSDecoder verifyAgainstSenders:v37 signingError:?];
    }

LABEL_63:

    goto LABEL_64;
  }

  v47 = 0;
LABEL_64:

  v40 = *MEMORY[0x1E69E9840];

  return v47;
}

- (void)dealloc
{
  digest = self->_digest;
  if (digest)
  {
    MEMORY[0x1B272A220](digest, a2);
  }

  if (self->_message)
  {
    SecCmsMessageDestroy();
  }

  v4.receiver = self;
  v4.super_class = _MFSecCMSDecoder;
  [(_MFSecCMSDecoder *)&v4 dealloc];
}

- (int64_t)appendData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_SecCMSError)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSDecoder appendData:];
    }

LABEL_4:

    v7 = -1;
    goto LABEL_5;
  }

  if (!self->_signedData)
  {
    if (self->_envelopedData)
    {
      v7 = [v4 length];
      goto LABEL_5;
    }

    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "#SMIMEErrors -appendData: called on _MFSecCMSDecoder with no signed or enveloped data!", v9, 2u);
    }

    goto LABEL_4;
  }

  v7 = [v4 length];
  if (self->_digest)
  {
    [v5 bytes];
    SecCmsDigestContextUpdate();
  }

LABEL_5:

  return v7;
}

- (void)done
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v1, v2, "#SMIMEErrors SecCmsSignedDataSetDigestContext on -done returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
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
      envelopedData = [objc_alloc(MEMORY[0x1E69AD730]) initWithBytesNoCopy:envelopedData[1] length:*envelopedData freeWhenDone:0];
    }

    v2 = vars8;
  }

  return envelopedData;
}

- (void)signedData
{
  if (InnerContent)
  {
    InnerContent = InnerContent[5];
    if (InnerContent)
    {
      SecCmsSignedDataGetContentInfo();
      InnerContent = SecCmsContentInfoGetInnerContent();
      if (InnerContent)
      {
        InnerContent = [objc_alloc(MEMORY[0x1E69AD730]) initWithBytesNoCopy:InnerContent[1] length:*InnerContent freeWhenDone:0];
      }

      v1 = vars8;
    }
  }

  return InnerContent;
}

- (void)initWithPartData:(int *)a1 error:.cold.1(int *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v1, v2, "#SMIMEErrors SecCmsDecoderCreate returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)initWithPartData:(uint64_t)a3 error:(os_log_t)log .cold.2(int a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecCmsDecoderUpdate returned %ld for %lu bytes", buf, 0x16u);
}

- (void)initWithPartData:(int *)a1 error:.cold.3(int *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v1, v2, "#SMIMEErrors SecCmsDecoderFinish returned %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)verifyAgainstSenders:(int *)a1 signingError:.cold.1(int *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v1, v2, "#SMIMEErrors _MFSecCMSDecoder asked to verify with pending error (%ld)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)verifyAgainstSenders:(os_log_t)log signingError:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecTrustCreateWithCertificates returned a null SecTrustRef", buf, 2u);
}

- (void)verifyAgainstSenders:signingError:.cold.3()
{
  OUTLINED_FUNCTION_0();
  *v1 = 138543362;
  *v3 = v2;
  _os_log_error_impl(&dword_1B0389000, v5, OS_LOG_TYPE_ERROR, "#SMIMEErrors There was a signing error %{public}@", v4, 0xCu);
}

- (void)verifyAgainstSenders:(NSObject *)a1 signingError:.cold.4(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B0389000, a1, OS_LOG_TYPE_INFO, "#SMIMEErrors There were no digests in the message", v2, 2u);
  }
}

- (void)appendData:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end