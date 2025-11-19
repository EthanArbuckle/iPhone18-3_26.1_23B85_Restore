@interface IMDSpamMessageCreator
- (BOOL)_isMessageMMS:(id)a3 forChat:(id)a4;
- (BOOL)_textMessageReportToIDSAllowedForMessageItem:(id)a3 chat:(id)a4 notifyInternalSecurity:(BOOL)a5;
- (BOOL)hasDataDetectedInformalPayment:(id)a3;
- (BOOL)isSurfPayment:(id)a3;
- (id)_createJunkMessageDictionaryForItem:(id)a3 senderURI:(id)a4 chat:(id)a5 conversationID:(id)a6 receiverURI:(id)a7 notifyInternalSecurity:(BOOL)a8 reportReason:(unint64_t)a9;
- (id)_receiverURIWithItem:(id)a3 chat:(id)a4;
- (id)_senderURIWithItem:(id)a3 chat:(id)a4;
- (id)metaDataForSurfURL:(id)a3;
- (id)surfURLForIMMessageItem:(id)a3;
- (id)transferForGuid:(id)a3;
- (void)_addSnapNameKeysToReportMessageDictionary:(id)a3 forSender:(id)a4;
- (void)_reportToIDSTextMessageSpam:(id)a3;
- (void)_reportToIDSiMessageSpam:(id)a3 maxMessagesPerReport:(unint64_t)a4;
- (void)addTextMessageJunkKeysToReportMessageDictionary:(id)a3 forMessage:(id)a4 chat:(id)a5;
- (void)addiMessageJunkKeysToReportMessageDictionary:(id)a3 forMessage:(id)a4 withGUID:(id)a5 contentLength:(unint64_t)a6 chat:(id)a7;
- (void)reportMessageDictionariesForMessages:(id)a3 isAutoReport:(BOOL)a4 withChat:(id)a5 conversationID:(id)a6 maxMessagesToReport:(unint64_t)a7 totalMessageCount:(unint64_t *)a8 notifyInternalSecurity:(BOOL)a9 isJunkReportedToCarrier:(BOOL)a10 reportReason:(unint64_t)a11;
- (void)reportMessageDictionaryToApple:(id)a3 forChat:(id)a4 isJunk:(BOOL)a5;
- (void)reportNotJunkToTrustKitForMessageGUID:(id)a3;
@end

@implementation IMDSpamMessageCreator

- (id)transferForGuid:(id)a3
{
  v3 = a3;
  v4 = +[IMDFileTransferCenter sharedInstance];
  v5 = [v4 transferForGUID:v3];

  return v5;
}

- (id)_senderURIWithItem:(id)a3 chat:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 sender];
  v8 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v9 = [v8 isMergeBusinessSenderIndiaEnabled];

  if (v9 && [v6 isMergedBusinessThread])
  {
    v10 = [v5 originalUnformattedID];

    v7 = v10;
  }

  v11 = [v7 im_stripCategoryLabel];
  v12 = [v11 _stripFZIDPrefix];
  v13 = [v12 _bestGuessURI];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = v13;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Item sender = %@", &v24, 0xCu);
    }
  }

  if ([v5 isFromMe] && !objc_msgSend(v13, "length"))
  {
    v18 = [v6 lastAddressedLocalHandle];
    v19 = v18;
    v20 = &stru_283F23018;
    if (v18)
    {
      v20 = v18;
    }

    v21 = v20;

    v22 = [(__CFString *)v21 _stripFZIDPrefix];
    v15 = [v22 _bestGuessURI];

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = 138412546;
        v25 = v15;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Overriding sender URI to be %@ using Last addressed handle %@", &v24, 0x16u);
      }
    }
  }

  else
  {
    v15 = v13;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)reportMessageDictionariesForMessages:(id)a3 isAutoReport:(BOOL)a4 withChat:(id)a5 conversationID:(id)a6 maxMessagesToReport:(unint64_t)a7 totalMessageCount:(unint64_t *)a8 notifyInternalSecurity:(BOOL)a9 isJunkReportedToCarrier:(BOOL)a10 reportReason:(unint64_t)a11
{
  v58 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v51 = a5;
  v45 = a6;
  v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = qword_2814225C0;
  qword_2814225C0 = v14;

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v53 objects:v57 count:16];
  v49 = a9 || a10;
  if (!v17)
  {
    v46 = 0;
    goto LABEL_54;
  }

  v46 = 0;
  v18 = *v54;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v54 != v18)
      {
        objc_enumerationMutation(v16);
      }

      v20 = *(*(&v53 + 1) + 8 * i);
      if (![v20 type] && (objc_msgSend(v20, "isTypingMessage") & 1) == 0 && (objc_msgSend(v20, "isSuggestedActionResponse") & 1) == 0 && (objc_msgSend(v20, "isRCSEncryptionTest") & 1) == 0)
      {
        v49 = v49 && [(IMDSpamMessageCreator *)self _textMessageReportToIDSAllowedForMessageItem:v20 chat:v51 notifyInternalSecurity:a9];
        v21 = [(IMDSpamMessageCreator *)self _receiverURIWithItem:v20 chat:v51];
        if (!v21)
        {
          goto LABEL_49;
        }

        v22 = [(IMDSpamMessageCreator *)self _senderURIWithItem:v20 chat:v51];
        v23 = v22;
        if (a4)
        {
          if ([v22 length])
          {
            v24 = [v20 guid];
            if (v24)
            {
              v25 = [v21 length] == 0;

              if (!v25)
              {
                v48 = [v20 guid];
                v26 = [v51 isBlackholed];
                v27 = [v51 isOscarChat];
                v28 = MEMORY[0x277CCABB0];
                v29 = [v20 time];
                [v29 timeIntervalSince1970];
                v30 = [v28 numberWithDouble:?];
                [(IMDSpamMessageCreator *)self reportUnknownToIDS:v23 messageID:v48 isBlackholed:v26 isiMessageJunk:v27 messageServerTimestamp:v30 toURI:v21];

                goto LABEL_46;
              }
            }
          }

LABEL_48:

LABEL_49:
          continue;
        }

        v48 = [(IMDSpamMessageCreator *)self _createJunkMessageDictionaryForItem:v20 senderURI:v22 chat:v51 conversationID:v45 receiverURI:v21 notifyInternalSecurity:a9 reportReason:a11];
        if ([v48 count])
        {
          v31 = +[IMDServiceController sharedController];
          v32 = [v20 service];
          v29 = [v31 serviceWithName:v32];

          if ([v29 supportsCapability:*MEMORY[0x277D1A5D8]])
          {
            if (IMOSLoggingEnabled())
            {
              v33 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Service supports Spam Extension Filtering", buf, 2u);
              }
            }

            v34 = [v43 objectForKeyedSubscript:v21];
            if (!v34)
            {
              v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v34 addObject:v48];
            [v43 setObject:v34 forKey:v21];
            goto LABEL_36;
          }

          if ([v29 supportsCapability:*MEMORY[0x277D1A530]])
          {
            if (IMOSLoggingEnabled())
            {
              v35 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Service supports Apple Spam Filtering", buf, 2u);
              }
            }

            v34 = [v42 objectForKeyedSubscript:v21];
            if (!v34)
            {
              v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v34 addObject:v48];
            [v42 setObject:v34 forKey:v21];
LABEL_36:
          }

          if ([v29 supportsCapability:*MEMORY[0x277D1A5C8]])
          {
            if (IMOSLoggingEnabled())
            {
              v36 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Service supports TrustKit", buf, 2u);
              }
            }

            v37 = [v44 objectForKeyedSubscript:@"spam-messages"];
            if (!v37)
            {
              v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v37 addObject:v48];
            [v44 setObject:v37 forKey:@"spam-messages"];
          }

          ++v46;
LABEL_46:
        }

        goto LABEL_48;
      }
    }

    v17 = [v16 countByEnumeratingWithState:&v53 objects:v57 count:16];
  }

  while (v17);
LABEL_54:

  if ([v42 count])
  {
    [(IMDSpamMessageCreator *)self _reportToIDSiMessageSpam:v42 maxMessagesPerReport:a7];
  }

  if (v49)
  {
    if ([v43 count])
    {
      [(IMDSpamMessageCreator *)self _reportToIDSTextMessageSpam:v43];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "SMS/RCS Reporting to IDS disabled via carrier bag.", buf, 2u);
    }
  }

  if ([v44 count])
  {
    [(IMDSpamMessageCreator *)self reportMessageDictionaryToApple:v44 forChat:v51 isJunk:1];
  }

  *a8 = v46;

  v39 = *MEMORY[0x277D85DE8];
}

- (id)_receiverURIWithItem:(id)a3 chat:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v30 = a4;
  v5 = [v29 destinationCallerID];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = [v30 lastAddressedLocalHandle];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v46 = v6;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Falling back to lastAddressedLocalHandle: %@", buf, 0xCu);
      }
    }
  }

  if ([v6 length])
  {
    v8 = v6;
  }

  else
  {
    v9 = [v30 account];
    v8 = [v9 loginID];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v46 = v8;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Falling back to chat's account's loginID: %@", buf, 0xCu);
      }
    }
  }

  if (![v8 length])
  {
    v11 = objc_alloc(MEMORY[0x277D18778]);
    v28 = [v11 initWithService:*MEMORY[0x277D186B0]];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [v28 accounts];
    v33 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v33)
    {
      v32 = *v40;
      do
      {
        v12 = 0;
        do
        {
          if (*v40 != v32)
          {
            v13 = v12;
            objc_enumerationMutation(obj);
            v12 = v13;
          }

          v34 = v12;
          v14 = *(*(&v39 + 1) + 8 * v12);
          if ([v14 canSend])
          {
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v15 = [v14 handles];
            v16 = [v15 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v16)
            {
              v17 = *v36;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v36 != v17)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v19 = *(*(&v35 + 1) + 8 * i);
                  if ([v19 isUserVisible] && objc_msgSend(v19, "validationStatus") == 3)
                  {
                    v20 = [v19 URI];
                    v21 = [v20 unprefixedURI];

                    if (IMOSLoggingEnabled())
                    {
                      v22 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v46 = v21;
                        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Falling back to IDSHandle: %@", buf, 0xCu);
                      }
                    }

                    v8 = v21;
                  }
                }

                v16 = [v15 countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v16);
            }
          }

          v12 = v34 + 1;
        }

        while (v34 + 1 != v33);
        v33 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v33);
    }
  }

  if (![v8 length] && IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v46 = v8;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Still couldn't fine a real receiver URI: %@", buf, 0xCu);
    }
  }

  v24 = [v8 _stripFZIDPrefix];

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v46 = v24;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Receiver URI: %@", buf, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)addiMessageJunkKeysToReportMessageDictionary:(id)a3 forMessage:(id)a4 withGUID:(id)a5 contentLength:(unint64_t)a6 chat:(id)a7
{
  theDict = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  CFDictionarySetValue(theDict, @"message-format-version", &unk_283F4E480);
  if (v12)
  {
    CFDictionarySetValue(theDict, @"message-id", v12);
  }

  v14 = [v11 balloonBundleID];
  if (v14)
  {
    CFDictionarySetValue(theDict, @"message-app-bundle-id", v14);
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "isFiltered") == 2}];
  if (v15)
  {
    CFDictionarySetValue(theDict, @"reported-from-junk", v15);
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "isBlackholed")}];
  if (v16)
  {
    CFDictionarySetValue(theDict, @"reported-from-blackhole", v16);
  }

  v17 = [v11 balloonBundleID];
  v18 = [v17 containsString:*MEMORY[0x277D19738]];

  if (v18)
  {
    v19 = [(IMDSpamMessageCreator *)self surfURLForIMMessageItem:v11];
    if (v19)
    {
      v20 = [(IMDSpamMessageCreator *)self metaDataForSurfURL:v19];
      v18 = [(IMDSpamMessageCreator *)self isSurfPayment:v19];
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = [v11 payloadData];
  if (v21)
  {
    CFDictionarySetValue(theDict, @"message-extension-data", v21);
  }

  v22 = [v11 payloadData];

  if (v22)
  {
    v23 = [v11 balloonBundleID];
    if (v23)
    {
      CFDictionarySetValue(theDict, @"message-extension-bundle-id", v23);
    }
  }

  if ([v11 hasMessageHistoryForSpamReport])
  {
    v24 = [v11 messageHistoryForSpamReport];
    if (v24)
    {
      CFDictionarySetValue(theDict, @"message-edits", v24);
    }
  }

  if (v20)
  {
    CFDictionarySetValue(theDict, @"payment-info", v20);
  }

  v25 = [MEMORY[0x277CCABB0] numberWithBool:v18];
  if (v25)
  {
    CFDictionarySetValue(theDict, @"is-payment", v25);
  }

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDSpamMessageCreator hasDataDetectedInformalPayment:](self, "hasDataDetectedInformalPayment:", v11)}];
  if (v26)
  {
    CFDictionarySetValue(theDict, @"is-informal", v26);
  }

  if ([v13 isBusinessChat])
  {
    CFDictionarySetValue(theDict, @"spam-message-type", @"BusinessInitiatedAlertSpam");
  }

  v27 = [v11 sender];
  [(IMDSpamMessageCreator *)self _addSnapNameKeysToReportMessageDictionary:theDict forSender:v27];
}

- (void)addTextMessageJunkKeysToReportMessageDictionary:(id)a3 forMessage:(id)a4 chat:(id)a5
{
  theDict = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277D1A8F8];
  v11 = [v8 destinationCallerID];
  v12 = [v10 carrierNameForPhoneNumber:v11];

  v13 = [v8 destinationCallerID];
  v14 = IMCountryCodeForNumber();

  v15 = [v8 subject];
  if ([v15 length])
  {
    v16 = 1;
  }

  else
  {
    v17 = [v8 fileTransferGUIDs];
    if ([v17 count])
    {
      v16 = 1;
    }

    else
    {
      v16 = [v9 style] != 45;
    }
  }

  CFDictionarySetValue(theDict, @"message-format-version", &unk_283F4E498);
  if (v12)
  {
    CFDictionarySetValue(theDict, @"carrier-name", v12);
  }

  if (v14)
  {
    CFDictionarySetValue(theDict, @"country-code", v14);
  }

  v18 = [MEMORY[0x277CCABB0] numberWithBool:v16];
  if (v18)
  {
    CFDictionarySetValue(theDict, @"is-message-mms", v18);
  }

  CFDictionarySetValue(theDict, @"spam-message-type", @"TextMessageSpam");
  v19 = [v8 guid];
  if (v19)
  {
    CFDictionarySetValue(theDict, @"message-id", v19);
  }

  v20 = [v8 sender];
  [(IMDSpamMessageCreator *)self _addSnapNameKeysToReportMessageDictionary:theDict forSender:v20];
}

- (void)_addSnapNameKeysToReportMessageDictionary:(id)a3 forSender:(id)a4
{
  theDict = a3;
  v5 = a4;
  v6 = +[IMDNicknameController sharedInstance];
  v7 = [v6 pendingNicknameUpdates];
  v8 = [v7 valueForKey:v5];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = +[IMDNicknameController sharedInstance];
    v12 = [v11 handledNicknames];
    v10 = [v12 valueForKey:v5];
  }

  if (v10)
  {
    v13 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v10];
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = [v13 firstName];
    if (v15)
    {
      CFDictionarySetValue(v14, @"first-name", v15);
    }

    v16 = [v13 lastName];
    if (v16)
    {
      CFDictionarySetValue(v14, @"last-name", v16);
    }

    v17 = [v13 recordID];
    if (v17)
    {
      CFDictionarySetValue(v14, @"recordID", v17);
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = +[IMDNicknameController sharedInstance];
  v19 = [v18 unknownSenderRecordInfoFor:v5];

  if (v19)
  {
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    CFDictionarySetValue(v14, @"sender-records-and-keys", v19);
  }

  if (v14)
  {
    CFDictionarySetValue(theDict, @"sender-shared-name-and-photo", v14);
  }
}

- (BOOL)isSurfPayment:(id)a3
{
  v3 = a3;
  if (qword_27D8CFDE8 != -1)
  {
    sub_22B7D0070();
  }

  if (off_27D8CFDE0)
  {
    v4 = off_27D8CFDE0(v3) == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)metaDataForSurfURL:(id)a3
{
  v3 = a3;
  if (qword_27D8CFDF8 != -1)
  {
    sub_22B7D0084();
  }

  if (off_27D8CFDF0)
  {
    v4 = off_27D8CFDF0(v3, 1);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasDataDetectedInformalPayment:(id)a3
{
  v3 = MEMORY[0x277D1AA70];
  v4 = [a3 body];
  LOBYTE(v3) = [v3 messageContainsSurfDD:v4];

  return v3;
}

- (id)surfURLForIMMessageItem:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = IMExtensionPayloadUnarchivingClasses();
  v5 = objc_alloc(MEMORY[0x277CCAAC8]);
  v6 = [v3 payloadData];
  v16 = 0;
  v7 = [v5 initForReadingFromData:v6 error:&v16];
  v8 = v16;

  if (objc_opt_respondsToSelector())
  {
    [v7 _enableStrictSecureDecodingMode];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "strict-decoding 007 _enableStrictSecureDecodingMode called", buf, 2u);
      }
    }
  }

  v10 = [v7 decodeObjectOfClasses:v4 forKey:*MEMORY[0x277CCA308]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 objectForKey:*MEMORY[0x277D19D88]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_reportToIDSiMessageSpam:(id)a3 maxMessagesPerReport:(unint64_t)a4
{
  if (a3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_22B50CCF4;
    v4[3] = &unk_278703270;
    v4[4] = a4;
    [a3 enumerateKeysAndObjectsUsingBlock:v4];
  }
}

- (void)_reportToIDSTextMessageSpam:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (!IMDisableIDSSMSReporting())
    {
      v6 = objc_alloc(MEMORY[0x277D18778]);
      v7 = [v6 initWithService:*MEMORY[0x277D186B0]];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_22B50CFF8;
      v8[3] = &unk_2787030B8;
      v9 = v7;
      v4 = v7;
      [v3 enumerateKeysAndObjectsUsingBlock:v8];

      goto LABEL_11;
    }

    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v5 = "SMS Reporting to IDS disabled via server bag.";
LABEL_9:
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, v5, buf, 2u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Recieved empty junk message metadata dictionary while reporting to IDS server.";
      goto LABEL_9;
    }

LABEL_11:
  }
}

- (BOOL)_textMessageReportToIDSAllowedForMessageItem:(id)a3 chat:(id)a4 notifyInternalSecurity:(BOOL)a5
{
  v5 = a5;
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v11 = [v10 isReportJunkEverywhereEnabled];

  if ((v11 & 1) == 0)
  {
    if (v5)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "notifyInternalSecurity is true, allowing reporting", buf, 2u);
        }
      }

      goto LABEL_2;
    }

    v14 = [v8 destinationCallerID];
    if (IMStringIsEmail())
    {
      v15 = 0;
      v16 = 0;
LABEL_10:
      LOBYTE(v12) = 0;
LABEL_38:

      goto LABEL_39;
    }

    v17 = MEMORY[0x231897A50](v14);
    v18 = v14;
    v19 = v18;
    if (v17)
    {
      v15 = v18;
    }

    else
    {
      v15 = 0;
    }

    if (v17)
    {
      v16 = 0;
    }

    else
    {
      v16 = v18;
    }

    v20 = IMDisableSpamReportingAllCountries();
    v21 = IMOSLoggingEnabled();
    if (v20)
    {
      if (v21)
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Spam reporting in all countries disabled, going through legacy logic", buf, 2u);
        }
      }

      v23 = [(IMDSpamMessageCreator *)self _isMessageMMS:v8 forChat:v9];
      if (v23)
      {
        v24 = @"%@-MMS";
      }

      else
      {
        v24 = @"%@-SMS";
      }

      v25 = [MEMORY[0x277CCACA8] stringWithFormat:v24, v19];
      v26 = [qword_2814225C0 objectForKeyedSubscript:v25];
      v27 = v26 == 0;

      if (!v27)
      {
        v28 = [qword_2814225C0 objectForKeyedSubscript:v25];
        LOBYTE(v12) = [v28 BOOLValue];

        goto LABEL_38;
      }

      if (v23)
      {
        v34 = &unk_283F4ED98;
      }

      else
      {
        v34 = &unk_283F4EDB0;
      }

      v35 = [MEMORY[0x277D1A8F8] carrierBundleValueForKeyHierarchy:v34 phoneNumber:v15 simID:v16];
      if (!v35 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 138413058;
            v38 = v34;
            v39 = 2112;
            v40 = v35;
            v41 = 2112;
            v42 = v15;
            v43 = 2112;
            v44 = v16;
            _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Error getting Carrier Bundle dictionary. Key Hierarchy -> %@.\nCarrier Bundle object -> %@.\nPhone number -> %@.\nSIMID -> %@", buf, 0x2Au);
          }
        }

        goto LABEL_10;
      }

      [qword_2814225C0 setObject:v35 forKeyedSubscript:v25];
      v12 = [v35 BOOLValue];
    }

    else
    {
      if (v21)
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Spam reporting enabled in all countries", buf, 2u);
        }
      }

      v25 = [MEMORY[0x277D1A908] sharedInstance];
      v12 = [v25 numberOfSubscriptions] != 0;
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = @"NO";
        if (v12)
        {
          v31 = @"YES";
        }

        *buf = 138412290;
        v38 = v31;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Report text message allowed to Apple - %@\n.", buf, 0xCu);
      }
    }

    goto LABEL_38;
  }

LABEL_2:
  LOBYTE(v12) = 1;
LABEL_39:

  v32 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_isMessageMMS:(id)a3 forChat:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 fileTransferGUIDs];
  if ([v7 count])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v5 subject];
    if ([v9 length])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v6 style] != 45;
    }
  }

  return v8;
}

- (void)reportNotJunkToTrustKitForMessageGUID:(id)a3
{
  v41[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 chatForMessageGUID:v3];

  if (v5)
  {
    v6 = [v5 style];
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v5 chatIdentifier];
    v9 = v8;
    v29 = v3;
    if (v6 == 45)
    {
      v41[0] = v8;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
      v11 = [v5 serviceName];
      v40 = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
      v13 = [v7 itemsWithHandles:v10 onServices:v12 limit:30];
    }

    else
    {
      v39 = v8;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
      v11 = [v5 serviceName];
      v38 = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      v13 = [v7 itemsWithRoomNames:v10 onServices:v12 limit:30];
    }

    v15 = v13;

    v30 = [MEMORY[0x277CCACA8] stringGUID];
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = v15;
    v17 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          if (![v21 type] && (objc_msgSend(v21, "isFromMe") & 1) == 0 && (objc_msgSend(v21, "isTypingMessage") & 1) == 0 && (objc_msgSend(v21, "isSuggestedActionResponse") & 1) == 0 && (objc_msgSend(v21, "isRCSEncryptionTest") & 1) == 0)
          {
            v22 = [(IMDSpamMessageCreator *)self _receiverURIWithItem:v21 chat:v5];
            v32 = [(IMDSpamMessageCreator *)self _senderURIWithItem:v21 chat:v5];
            v23 = [IMDSpamMessageCreator _createJunkMessageDictionaryForItem:"_createJunkMessageDictionaryForItem:senderURI:chat:conversationID:receiverURI:notifyInternalSecurity:reportReason:" senderURI:v21 chat:0 conversationID:? receiverURI:? notifyInternalSecurity:? reportReason:?];
            v24 = [v16 objectForKeyedSubscript:@"not-spam-messages"];
            if (!v24)
            {
              v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v24 addObject:v23];
            [v16 setObject:v24 forKey:@"not-spam-messages"];
          }
        }

        v18 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    v25 = [v16 objectForKeyedSubscript:@"not-spam-messages"];
    v26 = [v25 count];

    if (v26)
    {
      [(IMDSpamMessageCreator *)self reportMessageDictionaryToApple:v16 forChat:v5 isJunk:0];
      v3 = v29;
    }

    else
    {
      v27 = IMLogHandleForCategory();
      v3 = v29;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D0098(v29, v27);
      }
    }
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D0110(v3, v14);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_createJunkMessageDictionaryForItem:(id)a3 senderURI:(id)a4 chat:(id)a5 conversationID:(id)a6 receiverURI:(id)a7 notifyInternalSecurity:(BOOL)a8 reportReason:(unint64_t)a9
{
  v97 = a8;
  v110 = self;
  v123 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v104 = a5;
  v15 = a6;
  v96 = a7;
  v105 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v106 = v13;
  v98 = [v13 guid];
  v16 = [v13 fileTransferGUIDs];
  v17 = [v16 count];

  v101 = [v13 plainBody];
  if ([v101 length])
  {
    v18 = [v101 dataUsingEncoding:4];
LABEL_3:
    v19 = v18;
    goto LABEL_6;
  }

  v20 = [v106 body];
  v21 = [v20 length];

  if (!v21)
  {
    v18 = [MEMORY[0x277CBEA90] data];
    goto LABEL_3;
  }

  v22 = [v106 body];
  v23 = [v22 string];

  v19 = [v23 dataUsingEncoding:4];
  v101 = v23;
LABEL_6:
  v103 = [v19 length];
  v100 = [MEMORY[0x277D18A10] sharedInstanceForBagType:0];
  v24 = [v100 objectForKey:@"max-spam-message-size"];
  v99 = v24;
  if (v24)
  {
    v25 = [v24 integerValue];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Server Bag has no value for max-spam-message-size, using the default 50", buf, 2u);
      }
    }

    v25 = 50;
  }

  v27 = +[IMDServiceController sharedController];
  v28 = [v106 service];
  v102 = [v27 serviceWithName:v28];

  if (v103 > v25 && [v102 supportsCapability:*MEMORY[0x277D1A530]])
  {
    v29 = IMOSLoggingEnabled();
    if (v29)
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v122 = v25;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "truncating spam message length to max of %ld", buf, 0xCu);
      }
    }

    MEMORY[0x28223BE20](v29);
    bzero(&v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
    bzero(&v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
    [v19 getBytes:&v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0) length:v25 - 1];
    v31 = [MEMORY[0x277CBEA90] dataWithBytes:&v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0) length:v25];

    v19 = v31;
  }

  v32 = v14;
  if (v32)
  {
    v33 = v32;
    CFDictionarySetValue(v105, @"sender-uri", v32);
    v32 = v33;
  }

  v95 = v32;

  v34 = MEMORY[0x277CCABB0];
  v35 = [v106 time];
  [v35 timeIntervalSince1970];
  v36 = [v34 numberWithDouble:?];

  if (v36)
  {
    CFDictionarySetValue(v105, @"time-of-message", v36);
  }

  v37 = [MEMORY[0x277CCABB0] numberWithBool:v17 != 0];
  if (v37)
  {
    CFDictionarySetValue(v105, @"message-has-image", v37);
  }

  v38 = v19;
  if (v38)
  {
    v39 = v38;
    CFDictionarySetValue(v105, @"message-text", v38);
    v38 = v39;
  }

  v94 = v38;

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v103];
  if (v40)
  {
    CFDictionarySetValue(v105, @"message-length", v40);
  }

  v41 = [v106 rcsAdvisedAction];
  if (v41)
  {
    CFDictionarySetValue(v105, @"rcs-advised-action", v41);
  }

  v42 = [v106 spamModelVersion];
  if (v42)
  {
    CFDictionarySetValue(v105, @"message-spam-model-version", v42);
  }

  v43 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v106, "isSpam")}];
  if (v43)
  {
    CFDictionarySetValue(v105, @"message-spam-model-detected-spam", v43);
  }

  v44 = [v106 spamModelMetadata];
  if (v44)
  {
    CFDictionarySetValue(v105, @"decision-info", v44);
  }

  v45 = v15;
  if (v45)
  {
    v46 = v45;
    CFDictionarySetValue(v105, @"conversation-id", v45);
    v45 = v46;
  }

  v93 = v45;

  v47 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v106, "wasEverTimeSensitive")}];
  if (v47)
  {
    CFDictionarySetValue(v105, @"time-sensitive", v47);
  }

  v108 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v107 = [v106 fileTransferGUIDs];
  v111 = [v107 countByEnumeratingWithState:&v116 objects:v120 count:16];
  if (v111)
  {
    v109 = *v117;
    do
    {
      for (i = 0; i != v111; ++i)
      {
        if (*v117 != v109)
        {
          objc_enumerationMutation(v107);
        }

        v49 = [(IMDSpamMessageCreator *)v110 transferForGuid:*(*(&v116 + 1) + 8 * i)];
        v115 = v49;
        if (v49)
        {
          v50 = [v49 userInfo];
          v51 = [v50 _stringForKey:@"mmcs-url"];
          v52 = [v50 _stringForKey:@"mmcs-signature-hex"];
          v53 = [v50 _stringForKey:@"mmcs-owner"];
          v54 = [v50 _stringForKey:@"file-size"];
          v55 = [v50 _stringForKey:@"decryption-key"];
          v56 = [v115 type];
          v57 = [v115 filename];
          v58 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v59 = v51;
          if (v59)
          {
            v60 = v59;
            CFDictionarySetValue(v58, @"mmcs-url", v59);
            v59 = v60;
          }

          v114 = v59;

          v61 = v52;
          if (v61)
          {
            v62 = v61;
            CFDictionarySetValue(v58, @"mmcs-signature-hex", v61);
            v61 = v62;
          }

          v113 = v61;

          v63 = v53;
          if (v63)
          {
            v64 = v63;
            CFDictionarySetValue(v58, @"mmcs-owner-id", v63);
            v63 = v64;
          }

          v112 = v63;

          v65 = v54;
          if (v65)
          {
            CFDictionarySetValue(v58, @"mmcs-file-size-string", v65);
          }

          v66 = v55;
          if (v66)
          {
            CFDictionarySetValue(v58, @"mmcs-symmetric-key", v66);
          }

          v67 = v56;
          if (v67)
          {
            CFDictionarySetValue(v58, @"mmcs-UTI-type", v67);
          }

          v68 = v57;
          if (v68)
          {
            CFDictionarySetValue(v58, @"mmcs-filename", v68);
          }

          v69 = [v50 _stringForKey:@"inline-attachment"];
          if ([v69 length])
          {
            v70 = objc_alloc(MEMORY[0x277CBEA90]);
            v71 = [v115 localPath];
            v72 = [v70 initWithContentsOfFile:v71];

            v73 = v72;
            if (v73)
            {
              CFDictionarySetValue(v58, @"inline-message-data", v73);
            }
          }

          [v108 addObject:v58];
        }

        else if (IMOSLoggingEnabled())
        {
          v74 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v74, OS_LOG_TYPE_INFO, "Did not find transfer for Message, unable to include it in ReportSpam", buf, 2u);
          }
        }
      }

      v111 = [v107 countByEnumeratingWithState:&v116 objects:v120 count:16];
    }

    while (v111);
  }

  v75 = v108;
  if (v75)
  {
    CFDictionarySetValue(v105, @"message-attachment-info", v75);
  }

  v76 = MEMORY[0x277CCABB0];
  v77 = [v104 participants];
  v78 = [v76 numberWithUnsignedInteger:{objc_msgSend(v77, "count")}];

  if (v78)
  {
    CFDictionarySetValue(v105, @"conversation-group-size", v78);
  }

  v79 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v106, "isFromMe")}];
  if (v79)
  {
    CFDictionarySetValue(v105, @"is-self", v79);
  }

  v80 = [v106 service];
  if (v80)
  {
    CFDictionarySetValue(v105, @"message-service", v80);
  }

  v81 = [v106 service];
  v82 = [v81 isEqualToString:*MEMORY[0x277D1A608]];

  if (v82)
  {
    v83 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v106, "encrypted")}];
    if (v83)
    {
      CFDictionarySetValue(v105, @"message-encrypted", v83);
    }
  }

  if (v97)
  {
    CFDictionarySetValue(v105, @"notify-security", &unk_283F4E498);
    if (IMOSLoggingEnabled())
    {
      v84 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v84, OS_LOG_TYPE_INFO, "notify-security is ON", buf, 2u);
      }
    }
  }

  v85 = v96;
  if (v85)
  {
    CFDictionarySetValue(v105, @"recipient-uri", v85);
  }

  else
  {
    v86 = MEMORY[0x277D86220];
    v87 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D01BC();
    }
  }

  if ([v102 supportsCapability:*MEMORY[0x277D1A5D8]])
  {
    [(IMDSpamMessageCreator *)v110 addTextMessageJunkKeysToReportMessageDictionary:v105 forMessage:v106 chat:v104];
  }

  else
  {
    [(IMDSpamMessageCreator *)v110 addiMessageJunkKeysToReportMessageDictionary:v105 forMessage:v106 withGUID:v98 contentLength:v103 chat:v104];
    v88 = [v104 isBusinessChat] ^ 1;
    if (!a9)
    {
      v88 = 1;
    }

    if ((v88 & 1) == 0 && a9 <= 6)
    {
      CFDictionarySetValue(v105, @"report-spam-reason", off_278703290[a9 - 1]);
    }
  }

  v89 = v105;

  v90 = *MEMORY[0x277D85DE8];
  return v105;
}

- (void)reportMessageDictionaryToApple:(id)a3 forChat:(id)a4 isJunk:(BOOL)a5
{
  v8 = sub_22B7DB588();
  v9 = a4;
  v10 = self;
  sub_22B789268(v8, v9, a5);
}

@end