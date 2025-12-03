@interface MFMimePart(SMIMEDecoding)
- (SecTrustRef)_signingTrustForAddress:()SMIMEDecoding signatureInfo:encryptionTrust:error:;
- (id)_associateAttachmentsFrom:()SMIMEDecoding to:;
- (id)_decodeApplicationPkcs7MimeWithSecCMS;
- (id)_decodeEncodedData:()SMIMEDecoding detachedContentData:isEncrypted:isSigned:signers:error:;
- (id)_decodeMultipartSignedWithSecCMS;
- (id)_decodeWithBlock:()SMIMEDecoding;
- (id)_messageBodyFromData:()SMIMEDecoding outUnwrappedMessage:;
- (id)_signingErrorWithStatus:()SMIMEDecoding localizedDescription:;
- (id)_verifySignatureWithDecoder:()SMIMEDecoding signedData:error:;
- (id)decodeApplicationPkcs7_mime;
- (id)decodeMultipartSigned;
- (void)_decodeApplicationPkcs7MimeWithSecCMS;
- (void)_decodeMultipartSignedWithSecCMS;
@end

@implementation MFMimePart(SMIMEDecoding)

- (id)decodeMultipartSigned
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E699ACE8] preferenceEnabled:23];
  v3 = [MEMORY[0x1E69AD720] log];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "[S/MIME] Decoding multipart/signed with MessageSecurity: %@", buf, 0xCu);
    }

    firstChildPart = [self firstChildPart];
    contentsForTextSystem = [firstChildPart contentsForTextSystem];
    if (contentsForTextSystem)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __50__MFMimePart_SMIMEDecoding__decodeMultipartSigned__block_invoke;
      v19[3] = &unk_1E7AA7C38;
      v19[4] = self;
      v7 = [self _decodeWithBlock:v19];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = contentsForTextSystem;
      }

      _decodeMultipartSignedWithSecCMS = v9;
    }

    else
    {
      v11 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
      v12 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v11];

      v13 = MFLookupLocalizedString(@"SMIME_SIG_TITLE", @"Unable to verify message signature", @"Delayed");
      [v12 setShortDescription:v13];

      v14 = +[MFActivityMonitor currentMonitor];
      [v14 setError:v12];

      v15 = [MEMORY[0x1E69AD720] log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription = [v12 ef_publicDescription];
        *buf = 138543362;
        selfCopy2 = ef_publicDescription;
        _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "[S/MIME] Failed to decode first child part for multipart/signed with error: %{public}@", buf, 0xCu);
      }

      _decodeMultipartSignedWithSecCMS = 0;
    }
  }

  else
  {
    if (v4)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "[S/MIME] Decoding multipart/signed with SecCMS: %@", buf, 0xCu);
    }

    _decodeMultipartSignedWithSecCMS = [self _decodeMultipartSignedWithSecCMS];
  }

  v17 = *MEMORY[0x1E69E9840];

  return _decodeMultipartSignedWithSecCMS;
}

- (id)decodeApplicationPkcs7_mime
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E699ACE8] preferenceEnabled:23];
  v3 = [MEMORY[0x1E69AD720] log];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "[S/MIME] Decoding application/pkcs7-mime with MessageSecurity: %@", buf, 0xCu);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__MFMimePart_SMIMEDecoding__decodeApplicationPkcs7_mime__block_invoke;
    v8[3] = &unk_1E7AA7C38;
    v8[4] = self;
    _decodeApplicationPkcs7MimeWithSecCMS = [self _decodeWithBlock:v8];
  }

  else
  {
    if (v4)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "[S/MIME] Decoding application/pkcs7-mime with SecCMS: %@", buf, 0xCu);
    }

    _decodeApplicationPkcs7MimeWithSecCMS = [self _decodeApplicationPkcs7MimeWithSecCMS];
  }

  v6 = *MEMORY[0x1E69E9840];

  return _decodeApplicationPkcs7MimeWithSecCMS;
}

- (id)_decodeWithBlock:()SMIMEDecoding
{
  v46 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sMIMEError = [self SMIMEError];
  v7 = [self decryptedMessageBodyIsEncrypted:0 isSigned:0];
  v45 = 1;
  v44 = 1;
  if (!(sMIMEError | v7))
  {
    v43 = 0;
    v8 = v40[2](v40, &v45, &v44, v5, &v43);
    sMIMEError = v43;
    if (v8)
    {
      v42 = 0;
      v7 = [self _messageBodyFromData:v8 outUnwrappedMessage:&v42];
      v9 = v42;
      v10 = v9;
      if (v9)
      {
        subject = [v9 subject];
        [self _setWrappedSubject:subject];
      }

      if (v7)
      {
        v12 = sMIMEError;
      }

      else
      {
        v13 = [MEMORY[0x1E69AD720] log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [MFMimePart(SMIMEDecoding) _decodeWithBlock:];
        }

        if ((v45 & 1) != 0 || v44 != 1)
        {
          v14 = MFLookupLocalizedString(@"SMIME_CANT_DECRYPT_MESSAGE", @"This message is encrypted.  Install a profile containing your encryption identity to decrypt this message.", @"Delayed");
          v15 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v14];
        }

        else
        {
          v14 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
          v15 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v14];
        }

        v12 = v15;
      }

      sMIMEError = v12;
    }

    else
    {
      v7 = 0;
    }

    [self _setDecryptedMessageBody:v7 isEncrypted:v45 isSigned:{v44, v40}];
  }

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SecureMimePart.m" lineNumber:329 description:@"The message body should be a MFMimeBody."];
    }

    topLevelPart = [v7 topLevelPart];
    contentsForTextSystem = [topLevelPart contentsForTextSystem];
    copySigners = [topLevelPart copySigners];
    [v5 addObjectsFromArray:copySigners];

    if (!sMIMEError)
    {
      sMIMEError = [topLevelPart SMIMEError];
    }

    wrappedSubject = [topLevelPart wrappedSubject];
    if (wrappedSubject)
    {
      wrappedSubject2 = [self wrappedSubject];
      v21 = wrappedSubject2 == 0;

      if (v21)
      {
        wrappedSubject3 = [topLevelPart wrappedSubject];
        [self _setWrappedSubject:wrappedSubject3];
      }
    }

    signatureInfo = [topLevelPart signatureInfo];
    if (signatureInfo)
    {
      signatureInfo2 = [self signatureInfo];
      v25 = signatureInfo2 == 0;

      if (v25)
      {
        signatureInfo3 = [topLevelPart signatureInfo];
        [(MFMimePart *)self _setSignatureInfo:signatureInfo3];
      }
    }
  }

  else
  {
    contentsForTextSystem = 0;
  }

  if ([v5 count])
  {
    [(MFMimePart *)self _setSigners:v5];
  }

  v27 = v45;
  mimeBody = [self mimeBody];
  [mimeBody setIsEncrypted:v27];

  if (sMIMEError)
  {
    mf_shortDescription = [sMIMEError mf_shortDescription];
    v30 = mf_shortDescription == 0;

    if (v30)
    {
      if ([sMIMEError code] == 1036)
      {
        MFLookupLocalizedString(@"SMIME_SIG_TITLE", @"Unable to verify message signature", @"Delayed");
      }

      else
      {
        MFLookupLocalizedString(@"SMIME_CANT_DECRYPT_TITLE", @"Unable to decrypt message", @"Delayed");
      }
      v31 = ;
      [sMIMEError setShortDescription:v31];
    }

    [(MFMimePart *)self _setSMIMEError:sMIMEError];
    v32 = +[MFActivityMonitor currentMonitor];
    [v32 setError:sMIMEError];

    v33 = [MEMORY[0x1E69AD720] log];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [sMIMEError ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [MFMimePart(SMIMEDecoding) _decodeWithBlock:];
    }
  }

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v36 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [threadDictionary setObject:v36 forKey:*MEMORY[0x1E69AD658]];

  v37 = *MEMORY[0x1E69E9840];

  return contentsForTextSystem;
}

- (id)_decodeEncodedData:()SMIMEDecoding detachedContentData:isEncrypted:isSigned:signers:error:
{
  v36[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v30 = a4;
  v31 = a7;
  v34 = 0;
  v29 = v14;
  v15 = [MEMORY[0x1E699B218] decoderForEncodedData:v14 detachedContentData:v30 outError:&v34];
  v16 = v34;
  if (!v15)
  {
    decryptedContentData = 0;
    v21 = 0;
    if (!a8)
    {
      goto LABEL_22;
    }

LABEL_17:
    if (v16)
    {
      v24 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
      v35 = *MEMORY[0x1E696AA08];
      v36[0] = v16;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      *a8 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v24 title:0 userInfo:v25];

      v21 = 0;
    }

    else
    {
      v21 = 0;
      *a8 = 0;
    }

    goto LABEL_22;
  }

  isEncrypted = [v15 isEncrypted];
  isSigned = [v15 isSigned];
  v19 = isSigned;
  if (isEncrypted)
  {
    decryptedContentData = [v15 decryptedContentData];
    v21 = 0;
    if (!a5)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a5 = isEncrypted;
    goto LABEL_12;
  }

  if (isSigned)
  {
    v32 = 0;
    v33 = 0;
    v22 = [self _verifySignatureWithDecoder:v15 signedData:&v33 error:&v32];
    decryptedContentData = v33;
    v21 = v32;
    if (v22)
    {
      [v31 addObjectsFromArray:v22];
    }

    if (a5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = 0;
    decryptedContentData = 0;
    if (a5)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if (a6)
  {
    *a6 = v19;
  }

  if (a8)
  {
    if (v21)
    {
      v23 = v21;
      *a8 = v21;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

LABEL_22:
  v26 = decryptedContentData;

  v27 = *MEMORY[0x1E69E9840];
  return decryptedContentData;
}

- (id)_verifySignatureWithDecoder:()SMIMEDecoding signedData:error:
{
  v37[1] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v7 = [a3 extractSignatureInfoAndSignedData:a4 outError:&v29];
  v8 = v29;
  if (v7)
  {
    mimeBody = [self mimeBody];
    message = [mimeBody message];
    firstSender = [message firstSender];

    v12 = firstSender;
    emailAddressValue = [v12 emailAddressValue];
    simpleAddress = [emailAddressValue simpleAddress];
    v15 = simpleAddress;
    if (simpleAddress)
    {
      stringValue = simpleAddress;
    }

    else
    {
      stringValue = [v12 stringValue];
    }

    v19 = stringValue;

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__19;
    v34 = __Block_byref_object_dispose__19;
    v35 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __74__MFMimePart_SMIMEDecoding___verifySignatureWithDecoder_signedData_error___block_invoke;
    v25[3] = &unk_1E7AA7C60;
    v28 = &v30;
    v25[4] = self;
    v20 = v19;
    v26 = v20;
    v18 = v12;
    v27 = v18;
    v21 = [v7 ef_compactMap:v25];
    if ([v7 count])
    {
      firstObject = [v7 firstObject];
      [(MFMimePart *)self _setSignatureInfo:firstObject];
    }

    if (a5)
    {
      *a5 = v31[5];
    }

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v17 = MFLogGeneral();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [v8 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [MFMimePart(SMIMEDecoding) _verifySignatureWithDecoder:signedData:error:];
    }

    if (!a5)
    {
      v21 = 0;
      goto LABEL_19;
    }

    if (v8)
    {
      v36 = *MEMORY[0x1E696AA08];
      v37[0] = v8;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    }

    else
    {
      v18 = 0;
    }

    v20 = MFLookupLocalizedString(@"SMIME_SIG_TITLE", @"Unable to verify message signature", @"Delayed");
    [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v20 title:0 userInfo:v18];
    *a5 = v21 = 0;
  }

LABEL_19:
  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (SecTrustRef)_signingTrustForAddress:()SMIMEDecoding signatureInfo:encryptionTrust:error:
{
  v10 = a3;
  v11 = a4;
  signingCertificate = [v11 signingCertificate];
  if (!signingCertificate)
  {
    v17 = MFLookupLocalizedString(@"SMIME_SIG_TITLE", @"Unable to verify message signature", @"Delayed");
    v18 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v17];
    goto LABEL_8;
  }

  trust = 0;
  v13 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:v10];
  v14 = SecTrustCreateWithCertificates(signingCertificate, v13, &trust);
  if (v13)
  {
    CFRelease(v13);
  }

  if (!v14)
  {
    v21 = trust;
    if (trust)
    {
      mimeBody = [self mimeBody];
      message = [mimeBody message];
      v24 = SecTrustSetVerifyDate(v21, [message dateReceived]);

      if (!v24)
      {
        preferredEncryptionCertificate = [v11 preferredEncryptionCertificate];
        if (preferredEncryptionCertificate)
        {
          v26 = [MFMessageKeychainManager copySMIMEEncryptionPolicyForAddress:v10];
          v28 = 0;
          v27 = SecTrustCreateWithCertificates(preferredEncryptionCertificate, v26, &v28);
          if (v26)
          {
            CFRelease(v26);
          }

          if (v27)
          {
            v15 = MFLookupLocalizedString(@"SMIME_SIG_TITLE", @"Unable to verify message signature", @"Delayed");
            v16 = [self _signingErrorWithStatus:v27 localizedDescription:v15];
            goto LABEL_6;
          }

          if (a5)
          {
            *a5 = v28;
          }
        }

        v19 = trust;
        goto LABEL_10;
      }
    }

    v17 = MFLookupLocalizedString(@"SMIME_SIG_TITLE", @"Unable to verify message signature", @"Delayed");
    v18 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v17];
LABEL_8:
    *a6 = v18;

    goto LABEL_9;
  }

  v15 = MFLookupLocalizedString(@"SMIME_SIG_TITLE", @"Unable to verify message signature", @"Delayed");
  v16 = [self _signingErrorWithStatus:v14 localizedDescription:v15];
LABEL_6:
  *a6 = v16;

LABEL_9:
  v19 = 0;
LABEL_10:

  return v19;
}

- (id)_signingErrorWithStatus:()SMIMEDecoding localizedDescription:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x1E696ABC0]);
  v7 = [v6 initWithDomain:*MEMORY[0x1E696A768] code:a3 userInfo:0];
  v12 = *MEMORY[0x1E696AA08];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v5 title:0 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_messageBodyFromData:()SMIMEDecoding outUnwrappedMessage:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  mimeBody = [self mimeBody];
  message = [mimeBody message];

  v9 = [(MFMessage *)MFMailMessage messageWithRFC822Data:v6 withParentPart:self];
  [v9 setMessagePropertiesFromMessage:message];
  v10 = [self _associateAttachmentsFrom:message to:v9];
  messageStore = [v9 messageStore];
  v12 = [messageStore bodyDataForMessage:v9 isComplete:0 isPartial:0 downloadIfNecessary:0];

  if (!v12 || !_os_feature_enabled_impl())
  {
    v17 = 0;
    goto LABEL_12;
  }

  topLevelPart = [v10 topLevelPart];
  type = [topLevelPart type];
  if ([type isEqualToString:@"message"])
  {
    subtype = [topLevelPart subtype];
    v15 = [subtype isEqualToString:@"rfc822"];

    if (v15)
    {
      v16 = [MEMORY[0x1E69AD720] log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "[S/MIME] Unwrapping message: %@", buf, 0xCu);
      }

      v17 = [(MFMessage *)MFMailMessage messageWithRFC822Data:v12];

      v18 = [self _associateAttachmentsFrom:message to:v17];

      v10 = v18;
      v9 = v17;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v17 = 0;
LABEL_11:

LABEL_12:
  if (a4)
  {
    v19 = v17;
    *a4 = v17;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_associateAttachmentsFrom:()SMIMEDecoding to:
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 isLibraryMessage])
  {
    v7 = MEMORY[0x1E695DFF8];
    v8 = MEMORY[0x1E696AEC0];
    messageID = [v5 messageID];
    v10 = [v8 stringWithFormat:@"%@://%@", @"x-attach-SMIME", messageID];
    messageURL = [v7 URLWithString:v10];
  }

  else
  {
    messageURL = [v5 messageURL];
  }

  [v6 setMessageURL:messageURL];
  messageBody = [v6 messageBody];
  topLevelPart = [messageBody topLevelPart];
  attachmentURLs = [topLevelPart attachmentURLs];
  lastObject = [attachmentURLs lastObject];
  uRLByDeletingLastPathComponent = [lastObject URLByDeletingLastPathComponent];

  if (uRLByDeletingLastPathComponent)
  {
    v17 = [[MFDecryptedAttachmentDataProvider alloc] initWithDecryptedMessage:v6];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = +[MFAttachmentManager allManagers];
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v19)
    {
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v24 + 1) + 8 * i) addProvider:v17 forBaseURL:uRLByDeletingLastPathComponent];
        }

        v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return messageBody;
}

- (id)_decodeMultipartSignedWithSecCMS
{
  v62[1] = *MEMORY[0x1E69E9840];
  firstChildPart = [self firstChildPart];
  contentsForTextSystem = [firstChildPart contentsForTextSystem];
  if (!contentsForTextSystem)
  {
    v21 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
    v5 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v21];

    mf_shortDescription = [v5 mf_shortDescription];

    if (!mf_shortDescription)
    {
      v23 = MFLookupLocalizedString(@"SMIME_SIG_TITLE", @"Unable to verify message signature", @"Delayed");
      [v5 setShortDescription:v23];

      if (!v5)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    goto LABEL_15;
  }

  v59 = 0;
  v4 = [(MFMimePart *)self _needsSignatureVerification:?];
  v5 = v59;
  if (!v4 || ![self usesKnownSignatureProtocol])
  {
LABEL_15:
    if (!v5)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  mimeBody = [self mimeBody];
  message = [mimeBody message];
  v8 = [message dataForMimePart:self];

  if (![v8 length])
  {
    signedData = [self signedData];
    v11 = v8;
    goto LABEL_27;
  }

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [self bodyParameterForKey:@"boundary"];
  v11 = [v9 initWithFormat:@"--%@", v10];

  v12 = [v11 mf_dataUsingEncoding:4];
  v14 = [v8 mf_rangeOfData:v12 options:0 range:{0, objc_msgSend(v8, "length")}];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v13;
    if (v13)
    {
      v16 = [v8 length];
      bytes = [v8 bytes];
      for (i = v14 + v15; ; ++i)
      {
        v19 = *(bytes + i);
        if (v19 != 13 && v19 != 10)
        {
          break;
        }
      }

      v25 = v16 - i;
      v26 = [v8 mf_subdataWithRange:?];

      v27 = [v26 mf_rangeOfData:v12 options:0 range:{0, v25}];
      if (v27)
      {
        if (v27 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = v26;
          goto LABEL_26;
        }

        v8 = [v26 mf_subdataWithRange:{0, v27 - 1}];
      }

      else
      {
        v8 = 0;
      }
    }
  }

LABEL_26:

  signedData = v8;
LABEL_27:

  if (signedData)
  {
    v28 = v5;
  }

  else
  {
    v29 = MFLogGeneral();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v29, OS_LOG_TYPE_INFO, "#SMIMEErrors Missing signed data!", buf, 2u);
    }

    v30 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
    v28 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v30];
  }

  if (v28)
  {
    v31 = 0;
LABEL_34:

    v5 = v28;
LABEL_35:
    mf_shortDescription2 = [v5 mf_shortDescription];
    v33 = mf_shortDescription2 == 0;

    if (v33)
    {
      v34 = MFLookupLocalizedString(@"SMIME_SIG_TITLE", @"Unable to verify message signature", @"Delayed");
      [v5 setShortDescription:v34];
    }

    [(MFMimePart *)self _setSMIMEError:v5];
LABEL_38:
    v35 = +[MFActivityMonitor currentMonitor];
    [v35 setError:v5];

    v36 = MFLogGeneral();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [v5 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [MFMimePart(SMIMEDecoding) _decodeMultipartSignedWithSecCMS];
    }

    goto LABEL_41;
  }

  nextSiblingPart = [firstChildPart nextSiblingPart];
  bodyData = [nextSiblingPart bodyData];

  if (!bodyData)
  {
    v43 = MFLogGeneral();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v43, OS_LOG_TYPE_INFO, "#SMIMEErrors Missing signature part!", buf, 2u);
    }

    v44 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
    v28 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v44];

    v31 = 0;
LABEL_54:
    if (v28)
    {
      goto LABEL_34;
    }

    goto LABEL_55;
  }

  v58 = 0;
  v31 = [[_MFSecCMSDecoder alloc] initWithPartData:bodyData error:&v58];
  v28 = v58;

  if (v28)
  {
    goto LABEL_34;
  }

  if (v31)
  {
    if (*(v31 + 2))
    {
      InnerContent = SecCmsContentInfoGetInnerContent();
      if (InnerContent)
      {
        if (*InnerContent)
        {
          v28 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 userInfo:0];
          v42 = MFLookupLocalizedString(@"SMIME_SIG_TITLE", @"Unable to verify message signature", @"Delayed");
          [v28 setLocalizedDescription:v42];

          goto LABEL_54;
        }
      }
    }
  }

LABEL_55:
  mf_dataByConvertingUnixNewlinesToNetwork = [signedData mf_dataByConvertingUnixNewlinesToNetwork];
  v46 = MFDataConsumerConsumeCompleteData();

  if (v46 < 0)
  {
    if (v31 && (v52 = *(v31 + 2), v52))
    {
      v53 = objc_alloc(MEMORY[0x1E696ABC0]);
      v54 = [v53 initWithDomain:*MEMORY[0x1E696A768] code:v52 userInfo:0];
      v61 = *MEMORY[0x1E696AA08];
      v62[0] = v54;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    }

    else
    {
      v55 = 0;
    }

    v28 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 userInfo:v55];
    v56 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
    [v28 setLocalizedDescription:v56];

    if (v28)
    {
      goto LABEL_34;
    }
  }

  [v31 done];
  mimeBody2 = [self mimeBody];
  message2 = [mimeBody2 message];
  senders = [message2 senders];
  v57 = 0;
  v5 = [(_MFSecCMSDecoder *)v31 verifyAgainstSenders:senders signingError:&v57];
  v50 = v57;

  if (v31)
  {
    v51 = *(v31 + 4);
  }

  else
  {
    v51 = 0;
  }

  [(MFMimePart *)self _setSigners:v51];
  if (!v5)
  {
    v5 = v50;
  }

  if (v5)
  {
    goto LABEL_35;
  }

LABEL_41:

  v37 = *MEMORY[0x1E69E9840];

  return contentsForTextSystem;
}

- (id)_decodeApplicationPkcs7MimeWithSecCMS
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sMIMEError = [self SMIMEError];
  messageBody = [self decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (sMIMEError | messageBody)
  {
    v12 = 1;
    v69 = 1;
    goto LABEL_45;
  }

  bodyData = [self bodyData];
  v69 = bodyData != 0;
  if (bodyData)
  {
    v75 = 0;
    v7 = [[_MFSecCMSDecoder alloc] initWithPartData:bodyData error:&v75];
    v8 = v75;
    signedData = [(_MFSecCMSDecoder *)v7 signedData];
    mf_dataByConvertingUnixNewlinesToNetwork = [signedData mf_dataByConvertingUnixNewlinesToNetwork];
    v11 = MFDataConsumerConsumeCompleteData();

    if (v11 < 0)
    {
      if (v7 && (v19 = *(v7 + 2), v19))
      {
        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = [v20 initWithDomain:*MEMORY[0x1E696A768] code:v19 userInfo:0];
        v22 = objc_alloc(MEMORY[0x1E695DF20]);
        v23 = [v22 initWithObjectsAndKeys:{v21, *MEMORY[0x1E696AA08], 0}];
      }

      else
      {
        v23 = 0;
      }

      sMIMEError = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 userInfo:v23];

      v24 = MFLookupLocalizedString(@"SMIME_CANT_DECRYPT_MESSAGE", @"This message is encrypted.  Install a profile containing your encryption identity to decrypt this message.", @"Delayed");
      [sMIMEError setLocalizedDescription:v24];

      v68 = 0;
      v66 = 1;
      v12 = 1;
      if (sMIMEError)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

    [v7 done];
    if (v7)
    {
      v12 = v7[56];
      if (*(v7 + 5))
      {
        mimeBody = [self mimeBody];
        message = [mimeBody message];
        senders = [message senders];
        v74 = 0;
        sMIMEError = [(_MFSecCMSDecoder *)v7 verifyAgainstSenders:senders signingError:&v74];
        v68 = v74;

        [v3 addObjectsFromArray:*(v7 + 4)];
        v66 = 1;
        if (sMIMEError)
        {
LABEL_7:
          v16 = 0;
          messageBody = 0;
LABEL_43:

          v18 = v66;
          goto LABEL_44;
        }

LABEL_18:
        data = [v7 data];
        if (!data)
        {
          data = [(_MFSecCMSDecoder *)v7 signedData];
        }

        v26 = [data mutableCopy];
        [v26 mf_convertNetworkLineEndingsToUnix];
        [v26 mf_makeImmutable];
        v65 = v26;

        if (v26)
        {
          mimeBody2 = [self mimeBody];
          message2 = [mimeBody2 message];

          v64 = [(MFMessage *)MFMailMessage messageWithRFC822Data:v26 withParentPart:self];
          [v64 setMessagePropertiesFromMessage:message2];
          if ([message2 isLibraryMessage])
          {
            v28 = MEMORY[0x1E695DFF8];
            v29 = MEMORY[0x1E696AEC0];
            messageID = [message2 messageID];
            v31 = [v29 stringWithFormat:@"%@://%@", @"x-attach-SMIME", messageID];
            v32 = [v28 URLWithString:v31];

            messageURL = v32;
          }

          else
          {
            messageURL = [message2 messageURL];
          }

          v63 = messageURL;
          [v64 setMessageURL:?];
          messageBody = [v64 messageBody];
          topLevelPart = [messageBody topLevelPart];
          attachmentURLs = [topLevelPart attachmentURLs];
          lastObject = [attachmentURLs lastObject];
          uRLByDeletingLastPathComponent = [lastObject URLByDeletingLastPathComponent];

          if (uRLByDeletingLastPathComponent)
          {
            v60 = bodyData;
            v38 = [[MFDecryptedAttachmentDataProvider alloc] initWithDecryptedMessage:v64];
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v61 = v3;
            v39 = +[MFAttachmentManager allManagers];
            v40 = [v39 countByEnumeratingWithState:&v70 objects:v76 count:16];
            if (v40)
            {
              v41 = *v71;
              do
              {
                for (i = 0; i != v40; ++i)
                {
                  if (*v71 != v41)
                  {
                    objc_enumerationMutation(v39);
                  }

                  [*(*(&v70 + 1) + 8 * i) addProvider:v38 forBaseURL:uRLByDeletingLastPathComponent];
                }

                v40 = [v39 countByEnumeratingWithState:&v70 objects:v76 count:16];
              }

              while (v40);
            }

            bodyData = v60;
            v3 = v61;
          }
        }

        else
        {
          messageBody = 0;
        }

        sMIMEError = v68;
        if (!(sMIMEError | messageBody))
        {
          v43 = MFLogGeneral();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [MFMimePart(SMIMEDecoding) _decodeApplicationPkcs7MimeWithSecCMS];
          }

          if ((v12 | v66 ^ 1))
          {
            v44 = MFLookupLocalizedString(@"SMIME_CANT_DECRYPT_MESSAGE", @"This message is encrypted.  Install a profile containing your encryption identity to decrypt this message.", @"Delayed");
            [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v44];
          }

          else
          {
            v44 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
            [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v44];
          }
          sMIMEError = ;

          messageBody = 0;
        }

        v16 = v65;
        goto LABEL_43;
      }

      v68 = 0;
      v66 = 0;
    }

    else
    {
      v68 = 0;
      v66 = 0;
      v12 = 0;
    }

    sMIMEError = v8;
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

  v17 = MFLookupLocalizedString(@"SMIME_CANT_DECRYPT_MESSAGE", @"This message is encrypted.  Install a profile containing your encryption identity to decrypt this message.", @"Delayed");
  sMIMEError = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v17];

  v68 = 0;
  messageBody = 0;
  v18 = 1;
  v12 = 1;
LABEL_44:
  [self _setDecryptedMessageBody:messageBody isEncrypted:v12 isSigned:v18];

LABEL_45:
  if (messageBody)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SecureMimePart.m" lineNumber:851 description:@"The message body should be a MFMimeBody."];
    }

    topLevelPart2 = [messageBody topLevelPart];
    contentsForTextSystem = [topLevelPart2 contentsForTextSystem];
    copySigners = [topLevelPart2 copySigners];
    [v3 addObjectsFromArray:copySigners];

    if (!sMIMEError)
    {
      sMIMEError = [topLevelPart2 SMIMEError];
    }
  }

  else
  {
    contentsForTextSystem = 0;
  }

  if ([v3 count])
  {
    [(MFMimePart *)self _setSigners:v3];
  }

  mimeBody3 = [self mimeBody];
  [mimeBody3 setIsEncrypted:v12];

  if (sMIMEError)
  {
    mf_shortDescription = [sMIMEError mf_shortDescription];
    v50 = mf_shortDescription == 0;

    if (v50)
    {
      if ([sMIMEError code] == 1036)
      {
        MFLookupLocalizedString(@"SMIME_SIG_TITLE", @"Unable to verify message signature", @"Delayed");
      }

      else
      {
        MFLookupLocalizedString(@"SMIME_CANT_DECRYPT_TITLE", @"Unable to decrypt message", @"Delayed");
      }
      v51 = ;
      [sMIMEError setShortDescription:v51];
    }

    [(MFMimePart *)self _setSMIMEError:sMIMEError];
    v52 = +[MFActivityMonitor currentMonitor];
    [v52 setError:sMIMEError];

    v53 = MFLogGeneral();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      [sMIMEError ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [MFMimePart(SMIMEDecoding) _decodeApplicationPkcs7MimeWithSecCMS];
    }
  }

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v56 = [MEMORY[0x1E696AD98] numberWithBool:v69];
  [threadDictionary setObject:v56 forKey:*MEMORY[0x1E69AD658]];

  v57 = *MEMORY[0x1E69E9840];

  return contentsForTextSystem;
}

- (void)_decodeWithBlock:()SMIMEDecoding .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_decodeWithBlock:()SMIMEDecoding .cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "[S/MIME] Failed to decode part with error: %{public}@", v5);
}

- (void)_verifySignatureWithDecoder:()SMIMEDecoding signedData:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "#SMIMEErrors Signature verification failed: %{public}@", v5);
}

- (void)_decodeMultipartSignedWithSecCMS
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "#SMIMEErrors decodeMultipartSigned failed with %{public}@", v5);
}

- (void)_decodeApplicationPkcs7MimeWithSecCMS
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "#SMIMEErrors decodeApplicationPkcs7_mime failed with %{public}@", v5);
}

@end