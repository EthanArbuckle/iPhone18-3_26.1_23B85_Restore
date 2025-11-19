@interface MFMimePart
- (BOOL)_needsSignatureVerification:(void *)a1;
- (void)_setSMIMEError:(void *)a1;
- (void)_setSignatureInfo:(void *)a1;
- (void)_setSigners:(void *)a1;
@end

@implementation MFMimePart

id __50__MFMimePart_SMIMEDecoding__decodeMultipartSigned__block_invoke(uint64_t a1, _BYTE *a2, _BYTE *a3, void *a4, void *a5)
{
  v9 = a4;
  *a2 = 0;
  *a3 = 1;
  v10 = [*(a1 + 32) signedData];
  v11 = [*(a1 + 32) firstChildPart];
  v12 = [v11 nextSiblingPart];
  v13 = [v12 bodyData];

  v14 = [v10 mf_dataByConvertingUnixNewlinesToNetwork];
  if ([v13 length] && v14)
  {
    v15 = [*(a1 + 32) _decodeEncodedData:v13 detachedContentData:v14 isEncrypted:a2 isSigned:a3 signers:v9 error:a5];
    if (v15)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
  }

  else
  {
    v15 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
    [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v15];
    *a5 = v17 = 0;
  }

  return v17;
}

id __56__MFMimePart_SMIMEDecoding__decodeApplicationPkcs7_mime__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = [*(a1 + 32) bodyData];
  if (v10)
  {
    v11 = [*(a1 + 32) _decodeEncodedData:v10 detachedContentData:0 isEncrypted:a2 isSigned:a3 signers:v9 error:a5];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 mutableCopy];
      [v13 mf_convertNetworkLineEndingsToUnix];
      [v13 mf_makeImmutable];
      v14 = v13;

      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    v14 = MFLookupLocalizedString(@"SMIME_CANT_DECRYPT_MESSAGE", @"This message is encrypted.  Install a profile containing your encryption identity to decrypt this message.", @"Delayed");
    [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v14];
    *a5 = v15 = 0;
  }

  return v15;
}

- (void)_setSignatureInfo:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    [a1 _setObjectInOtherIvars:v3 forKey:@"x-apple-smime-signature-info"];
  }
}

- (void)_setSigners:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    [a1 _setObjectInOtherIvars:v3 forKey:@"x-apple-smime-signers"];
  }
}

- (void)_setSMIMEError:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    [a1 _setObjectInOtherIvars:v3 forKey:@"x-apple-smime-error"];
  }
}

MFMessageSigner *__74__MFMimePart_SMIMEDecoding___verifySignatureWithDecoder_signedData_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 56) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  if (v6)
  {
LABEL_2:
    v7 = 0;
    goto LABEL_3;
  }

  obj = 0;
  cf = 0;
  v9 = [*(a1 + 32) _signingTrustForAddress:*(a1 + 40) signatureInfo:v3 encryptionTrust:&cf error:&obj];
  objc_storeStrong(v5, obj);
  if (!v9)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_2;
  }

  v10 = [MFMessageSigner alloc];
  v7 = [(MFMessageSigner *)v10 initWithSender:*(a1 + 48) signingTrust:v9 encryptionTrust:cf verification:1];
  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_3:

  return v7;
}

void __107__MFMimePart_SMIMEEncoding___encryptedDataUsingMessageSecurity_compositionSpecification_contentType_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v7 capabilities];

  if (*(a1 + 56) == 1 && ([v8 containsObject:*(a1 + 40)] & 1) == 0)
  {
    if (v8)
    {
      v9 = [v8 mutableCopy];
      [v9 addObject:*(a1 + 40)];

      v8 = v9;
    }

    else
    {
      v14[0] = *(a1 + 40);
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    }
  }

  v10 = objc_alloc(MEMORY[0x1E699B228]);
  v11 = [v6 firstObject];
  v12 = [v10 initWithAddress:v5 certificate:v11 capabilities:v8];

  [*(a1 + 48) addObject:v12];
  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)_needsSignatureVerification:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v4 = [a1 _objectInOtherIvarsForKey:@"x-apple-smime-error"];
    *a2 = v4;
    if (v4)
    {
      return 0;
    }

    else
    {
      v5 = [v2 _objectInOtherIvarsForKey:@"x-apple-smime-signers"];
      v2 = v5 == 0;
    }
  }

  return v2;
}

@end