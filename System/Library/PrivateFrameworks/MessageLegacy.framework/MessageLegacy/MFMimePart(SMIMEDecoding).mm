@interface MFMimePart(SMIMEDecoding)
- (uint64_t)decodeApplicationPkcs7_mime;
- (uint64_t)decodeMultipartSigned;
- (void)decodeApplicationPkcs7_mime;
- (void)decodeMultipartSigned;
@end

@implementation MFMimePart(SMIMEDecoding)

- (uint64_t)decodeMultipartSigned
{
  v34[1] = *MEMORY[0x277D85DE8];
  v32 = 0;
  v2 = [a1 firstChildPart];
  v3 = [v2 contentsForTextSystem];
  if (v3)
  {
    if (![a1 _needsSignatureVerification:&v32] || !objc_msgSend(a1, "usesKnownSignatureProtocol"))
    {
      goto LABEL_42;
    }

    v4 = [objc_msgSend(objc_msgSend(a1 "mimeBody")];
    if ([v4 length])
    {
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"--%@", objc_msgSend(a1, "bodyParameterForKey:", @"boundary"];
      v6 = [v5 mf_dataUsingEncoding:4];

      v7 = [v4 mf_rangeOfData:v6 options:0 range:{0, objc_msgSend(v4, "length")}];
      if (v7 == 0x7FFFFFFFFFFFFFFFLL || !v8)
      {
        goto LABEL_21;
      }

      v9 = v7 + v8;
      v10 = [v4 length];
      v11 = [v4 bytes];
      while (1)
      {
        v12 = *(v11 + v9);
        if (v12 != 13 && v12 != 10)
        {
          break;
        }

        ++v9;
      }

      v16 = v10 - v9;
      v4 = [v4 mf_subdataWithRange:{v9, v16}];
      v17 = [v4 mf_rangeOfData:v6 options:0 range:{0, v16}];
      if (!v17)
      {
        goto LABEL_24;
      }

      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_21:
        if (v4)
        {
          if (v32)
          {
LABEL_23:
            v18 = 0;
            goto LABEL_38;
          }

LABEL_27:
          v20 = [objc_msgSend(v2 "nextSiblingPart")];
          if (v20)
          {
            v18 = [[_MFSecCMSDecoder alloc] initWithPartData:v20 error:&v32];
            if (v32)
            {
LABEL_38:
              if (!v32)
              {
                *buf = 0;
                [(_MFSecCMSDecoder *)v18 done];
                v32 = -[_MFSecCMSDecoder verifyAgainstSenders:signingError:](v18, "verifyAgainstSenders:signingError:", [objc_msgSend(objc_msgSend(a1 "mimeBody")], buf);
                [a1 _setSigners:{-[_MFSecCMSDecoder signers](v18, "signers")}];
                if (!v32)
                {
                  v32 = *buf;
                }
              }

              [a1 _setSMIMEError:v32];
LABEL_42:
              v14 = v32;
              if (!v32)
              {
                goto LABEL_47;
              }

              goto LABEL_43;
            }
          }

          else
          {
            v21 = MFLogGeneral();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_258BDA000, v21, OS_LOG_TYPE_INFO, "#SMIMEErrors Missing signature part!", buf, 2u);
            }

            v18 = 0;
            v32 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
            if (v32)
            {
              goto LABEL_38;
            }
          }

          [v4 mf_dataByConvertingUnixNewlinesToNetwork];
          if (MFDataConsumerConsumeCompleteData() < 0)
          {
            v22 = [(_MFSecCMSDecoder *)v18 lastSecCMSError];
            if (v22)
            {
              v23 = v22;
              v24 = objc_alloc(MEMORY[0x277CCA9B8]);
              v25 = [v24 initWithDomain:*MEMORY[0x277CCA590] code:v23 userInfo:0];
              v33 = *MEMORY[0x277CCA7E8];
              v34[0] = v25;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
            }

            else
            {
              v26 = 0;
            }

            v32 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 userInfo:v26];
            [(MFError *)v32 setLocalizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
          }

          goto LABEL_38;
        }

LABEL_24:
        v19 = MFLogGeneral();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_258BDA000, v19, OS_LOG_TYPE_INFO, "#SMIMEErrors Missing signed data!", buf, 2u);
        }

        v4 = 0;
        v32 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
        if (v32)
        {
          goto LABEL_23;
        }

        goto LABEL_27;
      }

      v15 = [v4 mf_subdataWithRange:{0, v17 - 1}];
    }

    else
    {
      v15 = [a1 signedData];
    }

    v4 = v15;
    goto LABEL_21;
  }

  v14 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
  v32 = v14;
  if (!v14)
  {
    goto LABEL_47;
  }

LABEL_43:
  if (![(MFError *)v14 mf_shortDescription])
  {
    [(MFError *)v32 setShortDescription:MFLookupLocalizedString(@"SMIME_SIG_TITLE", @"Unable to verify message signature", @"Delayed")];
  }

  v27 = +[MFActivityMonitor currentMonitor];
  [v27 setError:v32];
  v28 = MFLogGeneral();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [(MFMimePart(SMIMEDecoding) *)&v32 decodeMultipartSigned];
  }

LABEL_47:
  v29 = *MEMORY[0x277D85DE8];
  return v3;
}

- (uint64_t)decodeApplicationPkcs7_mime
{
  v63 = *MEMORY[0x277D85DE8];
  v61 = [a1 SMIMEError];
  v4 = [a1 decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v61 | v4)
  {
    v11 = v4;
    v9 = 0;
    v6 = 1;
    if (!v4)
    {
LABEL_48:
      v13 = 0;
      goto LABEL_49;
    }
  }

  else
  {
    v60 = 0;
    v5 = [a1 bodyData];
    v6 = v5 != 0;
    if (v5)
    {
      v7 = [[_MFSecCMSDecoder alloc] initWithPartData:v5 error:&v61];
      [-[_MFSecCMSDecoder signedData](v7 "signedData")];
      if (MFDataConsumerConsumeCompleteData() < 0)
      {
        v14 = [(_MFSecCMSDecoder *)v7 lastSecCMSError];
        if (v14)
        {
          v15 = v14;
          v16 = objc_alloc(MEMORY[0x277CCA9B8]);
          v17 = [v16 initWithDomain:*MEMORY[0x277CCA590] code:v15 userInfo:0];
          v18 = objc_alloc(MEMORY[0x277CBEAC0]);
          v19 = [v18 initWithObjectsAndKeys:{v17, *MEMORY[0x277CCA7E8], 0}];
        }

        else
        {
          v19 = 0;
        }

        v61 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 userInfo:v19];
        [v61 setLocalizedDescription:{MFLookupLocalizedString(@"SMIME_CANT_DECRYPT_MESSAGE", @"This message is encrypted.  Install a profile containing your encryption identity to decrypt this message.", @"Delayed"}];

        v9 = 0;
        v10 = 1;
        v8 = 1;
      }

      else
      {
        [(_MFSecCMSDecoder *)v7 done];
        v8 = [(_MFSecCMSDecoder *)v7 isContentEncrypted];
        if ([(_MFSecCMSDecoder *)v7 isContentSigned])
        {
          v61 = -[_MFSecCMSDecoder verifyAgainstSenders:signingError:](v7, "verifyAgainstSenders:signingError:", [objc_msgSend(objc_msgSend(a1 "mimeBody")], &v60);
          v9 = [(_MFSecCMSDecoder *)v7 signers];
          v10 = 1;
        }

        else
        {
          v10 = 0;
          v9 = 0;
        }
      }

      if (v61)
      {
        v20 = 0;
      }

      else
      {
        v21 = [(_MFSecCMSDecoder *)v7 data];
        if (!v21)
        {
          v21 = [(_MFSecCMSDecoder *)v7 signedData];
        }

        v20 = [v21 mutableCopy];
        [v20 mf_convertNetworkLineEndingsToUnix];
        [v20 mf_makeImmutable];
      }

      v11 = 0;
      if (v20 && !v61)
      {
        v54 = v8;
        v22 = [(MFDataMessageStore *)[_MFSecDataMessageStore alloc] initWithData:v20];
        [(MFMessage *)MFMailMessage setMessageClassForStore:v22];
        -[MFDataMessageStore setStoragePath:](v22, "setStoragePath:", [objc_msgSend(objc_msgSend(a1 "mimeBody")]);
        v23 = [(MFDataMessageStore *)v22 message];
        [v23 setMessagePropertiesFromMessage:{objc_msgSend(objc_msgSend(a1, "mimeBody"), "message")}];
        v24 = [objc_msgSend(a1 "mimeBody")];
        v55 = a2;
        v53 = v10;
        if ([v24 isLibraryMessage])
        {
          v25 = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@://%@", @"x-attach-SMIME", objc_msgSend(v24, "messageID"))}];
        }

        else
        {
          v25 = [v24 messageURL];
        }

        [v23 setMessageURL:v25];
        v11 = [v23 messageBody];
        v26 = [objc_msgSend(objc_msgSend(objc_msgSend(v11 "topLevelPart")];
        if (v26)
        {
          v27 = v26;
          v52 = v6;
          v28 = [[MFDecryptedAttachmentDataProvider alloc] initWithDecryptedMessage:v23];
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v29 = +[MFAttachmentManager allManagers];
          v30 = [v29 countByEnumeratingWithState:&v56 objects:v62 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v57;
            do
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v57 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                [*(*(&v56 + 1) + 8 * i) addProvider:v28 forBaseURL:v27];
              }

              v31 = [v29 countByEnumeratingWithState:&v56 objects:v62 count:16];
            }

            while (v31);
          }

          v6 = v52;
        }

        a2 = v55;
        v10 = v53;
        v8 = v54;
      }

      if (!v61)
      {
        v61 = v60;
        if (!(v11 | v60))
        {
          v34 = MFLogGeneral();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [(MFMimePart(SMIMEDecoding) *)v34 decodeApplicationPkcs7_mime:v35];
          }

          if ((v8 | v10 ^ 1))
          {
            v42 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:MFLookupLocalizedString(@"SMIME_CANT_DECRYPT_MESSAGE", @"This message is encrypted.  Install a profile containing your encryption identity to decrypt this message.", @"Delayed")];
          }

          else
          {
            v42 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
            v8 = 0;
          }

          v11 = 0;
          v61 = v42;
        }
      }
    }

    else
    {
      v11 = 0;
      v9 = 0;
      v61 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:MFLookupLocalizedString(@"SMIME_CANT_DECRYPT_MESSAGE", @"This message is encrypted.  Install a profile containing your encryption identity to decrypt this message.", @"Delayed")];
      v10 = 1;
      v8 = 1;
    }

    [a1 _setDecryptedMessageBody:v11 isEncrypted:v8 isSigned:v10];
    if (!v11)
    {
      goto LABEL_48;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(MFMimePart(SMIMEDecoding) *)a2 decodeApplicationPkcs7_mime];
  }

  v12 = [v11 topLevelPart];
  v13 = [v12 contentsForTextSystem];
  if (!v9)
  {
    v9 = [v12 copySigners];
  }

  if (!v61)
  {
    v61 = [v12 SMIMEError];
  }

LABEL_49:
  if (v9)
  {
    [a1 _setSigners:v9];
  }

  if (v61)
  {
    [a1 _setSMIMEError:?];
    if (v61)
    {
      if (![v61 mf_shortDescription])
      {
        v43 = v61;
        if ([v61 code] == 1036)
        {
          v44 = @"SMIME_SIG_TITLE";
          v45 = @"Unable to verify message signature";
        }

        else
        {
          v44 = @"SMIME_CANT_DECRYPT_TITLE";
          v45 = @"Unable to decrypt message";
        }

        [v43 setShortDescription:{MFLookupLocalizedString(v44, v45, @"Delayed"}];
      }

      v46 = +[MFActivityMonitor currentMonitor];
      [v46 setError:v61];
      v47 = MFLogGeneral();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [(MFMimePart(SMIMEDecoding) *)&v61 decodeApplicationPkcs7_mime];
      }
    }
  }

  v48 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v49 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [v48 setObject:v49 forKey:*MEMORY[0x277D24EA0]];
  v50 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)decodeMultipartSigned
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)decodeApplicationPkcs7_mime
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

@end