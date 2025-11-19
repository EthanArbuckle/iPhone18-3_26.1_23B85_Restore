@interface IMDRelayUtilities
+ (id)_chipListDictionary:(id)a3;
+ (id)_plainTextDictionaryFromMessage:(id)a3;
+ (id)_richCardsDictionary:(id)a3;
+ (id)loadDataForTransfer:(id)a3;
+ (id)plainTextRelayPartWithString:(id)a3 index:(int64_t)a4;
+ (id)relayPartsFor:(id)a3 overridingAttachmentData:(id)a4;
@end

@implementation IMDRelayUtilities

+ (id)relayPartsFor:(id)a3 overridingAttachmentData:(id)a4
{
  v100 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v72 = a4;
  v66 = v5;
  v6 = [v5 body];
  LODWORD(v5) = [v6 __im_isRichCard];

  if (v5)
  {
    v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = [v66 fileTransferGUIDs];
    v70 = [obj countByEnumeratingWithState:&v75 objects:v99 count:16];
    if (v70)
    {
      v8 = 0;
      v68 = *v76;
      *&v7 = 134218498;
      v64 = v7;
      while (2)
      {
        for (i = 0; i != v70; ++i)
        {
          if (*v76 != v68)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v75 + 1) + 8 * i);
          v11 = +[IMDAttachmentStore sharedInstance];
          v12 = [v11 attachmentWithGUID:v10];

          v8 += [v12 totalBytes];
          v13 = IMOSLoggingEnabled();
          if (v8 >= 0x2800001)
          {
            if (v13)
            {
              v34 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                v35 = [v66 guid];
                v36 = [v12 guid];
                *buf = 138412546;
                v94 = v35;
                v95 = 2112;
                v96 = v36;
                _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Rich cards media assets are too large for relay in message: %@, drop rest of the transfer starting from: %@", buf, 0x16u);
              }
            }

            goto LABEL_40;
          }

          if (v13)
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = [v66 guid];
              v16 = [v12 guid];
              *buf = v64;
              v94 = v8;
              v95 = 2112;
              v96 = v15;
              v97 = 2112;
              v98 = v16;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Processing rich cards media assets of %lu bytes for relay in message: %@, drop rest of the transfer starting from: %@", buf, 0x20u);
            }
          }

          if (v72 && ([v72 objectForKey:v10], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v18 = v17;
            v19 = v18;
          }

          else
          {
            v18 = [a1 loadDataForTransfer:v12];
            v19 = 0;
          }

          v91[0] = IMDCTPartDictionaryContentTypeKey;
          v20 = [v12 mimeType];
          if (v20)
          {
            v73 = [v12 mimeType];
            v21 = v73;
          }

          else
          {
            v21 = @"application/octet-stream";
          }

          v92[0] = v21;
          v92[1] = @"0.file";
          v91[1] = IMDCTPartDictionaryContentIDKey;
          v91[2] = IMDCTPartDictionaryContentLocationKey;
          v22 = [v12 filename];
          v23 = [v22 lastPathComponent];
          v92[2] = v23;
          v91[3] = IMDCTPartDictionaryContentDataKey;
          v24 = v18;
          if (!v18)
          {
            v69 = objc_opt_new();
            v24 = v69;
          }

          v91[4] = IMDCTPartDictionaryContentRichCardOriginalGuidKey;
          v92[3] = v24;
          v92[4] = v10;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:5];
          if (!v18)
          {
          }

          if (v20)
          {
          }

          [v71 addObject:v25];
        }

        v70 = [obj countByEnumeratingWithState:&v75 objects:v99 count:16];
        if (v70)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:

    v37 = [v66 body];
    v29 = [a1 _richCardsDictionary:v37];

    if (v29)
    {
      [v71 addObject:v29];
    }

    goto LABEL_83;
  }

  v26 = [v66 fileTransferGUIDs];
  v27 = [v26 count];

  if (v27)
  {
    v28 = [v66 fileTransferGUIDs];
    v29 = [v28 firstObject];

    v30 = +[IMDAttachmentStore sharedInstance];
    v31 = [v30 attachmentWithGUID:v29];

    if (v31)
    {
      if (![v31 isInThumbnailState])
      {
        if (v72 && ([v72 objectForKey:v29], (v45 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v46 = v45;
          v74 = v46;
        }

        else
        {
          v46 = [a1 loadDataForTransfer:v31];
          if (!v46)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_50;
            }

            v32 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v94 = @"YES";
              v95 = 2112;
              v96 = @"NO";
              _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "No transfer(%@) or data(%@) found ", buf, 0x16u);
            }

            goto LABEL_49;
          }

          v74 = 0;
        }

        v85[0] = IMDCTPartDictionaryContentTypeKey;
        v47 = [v31 mimeType];
        if (v47)
        {
          v48 = [v31 mimeType];
        }

        else
        {
          v48 = @"application/octet-stream";
        }

        v86[0] = v48;
        v86[1] = @"0.file";
        v85[1] = IMDCTPartDictionaryContentIDKey;
        v85[2] = IMDCTPartDictionaryContentLocationKey;
        v50 = [v31 filename];
        v51 = [v50 lastPathComponent];
        v86[2] = v51;
        v85[3] = IMDCTPartDictionaryContentDataKey;
        v86[3] = v46;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:4];

        if (v47)
        {
        }

        v84 = v52;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
        v54 = CreateSMILStringForMessageParts(v53);

        if (IMOSLoggingEnabled())
        {
          v55 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v94 = v54;
            _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "Generated SMIL string: %@", buf, 0xCu);
          }
        }

        v82[0] = IMDCTPartDictionaryContentTypeKey;
        v82[1] = IMDCTPartDictionaryContentIDKey;
        v83[0] = IMDCTPartDictionaryContentTypeSMILKey;
        v83[1] = @"0.smil";
        v82[2] = IMDCTPartDictionaryContentDataKey;
        v56 = [(__CFString *)v54 dataUsingEncoding:4];
        v83[2] = v56;
        v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:3];

        v58 = [v66 body];
        v59 = [v58 __im_hasChipList];

        if (v59)
        {
          v60 = [v66 body];
          v61 = [a1 _chipListDictionary:v60];

          if (v61)
          {
            v81[0] = v57;
            v81[1] = v52;
            v81[2] = v61;
            v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:3];
          }

          else
          {
            v80[0] = v57;
            v80[1] = v52;
            v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
          }
        }

        else
        {
          v79[0] = v57;
          v79[1] = v52;
          v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];
        }

        goto LABEL_82;
      }

      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [v31 guid];
          *buf = 138412290;
          v94 = v33;
          _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Transfer found in thumbnail state, aborting relay %@", buf, 0xCu);
        }

LABEL_49:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v94 = v29;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "No transfer found for %@", buf, 0xCu);
      }

      goto LABEL_49;
    }

LABEL_50:
    v71 = 0;
LABEL_82:

    goto LABEL_83;
  }

  v38 = [v66 body];
  v39 = [v38 __im_hasChipList];

  if (!v39)
  {
    v29 = [a1 _plainTextDictionaryFromMessage:v66];
    v87 = v29;
    v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
    goto LABEL_83;
  }

  v40 = [v66 body];
  v29 = [a1 _chipListDictionary:v40];

  v41 = [v66 body];
  v42 = [v41 length];

  if (v42 == 1)
  {
    if (!v29)
    {
      v71 = 0;
      goto LABEL_83;
    }

    v43 = [v66 body];
    v44 = [a1 _chipListDictionary:v43];
    v90 = v44;
    v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
  }

  else
  {
    v49 = [a1 _plainTextDictionaryFromMessage:v66];
    v43 = v49;
    if (v29)
    {
      v89[0] = v49;
      v89[1] = v29;
      v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
    }

    else
    {
      v88 = v49;
      v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
    }
  }

LABEL_83:
  v62 = *MEMORY[0x277D85DE8];

  return v71;
}

+ (id)plainTextRelayPartWithString:(id)a3 index:(int64_t)a4
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    CFDictionarySetValue(v5, IMDCTPartDictionaryContentTypeKey, @"text/plain");
    v6 = [v4 dataUsingEncoding:4];
    if (v6)
    {
      CFDictionarySetValue(v5, IMDCTPartDictionaryContentDataKey, v6);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)loadDataForTransfer:(id)a3
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 localPath];

  v7 = [v5 initWithContentsOfFile:v6];

  return v7;
}

+ (id)_plainTextDictionaryFromMessage:(id)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [IMDTelephonyServiceSession getPlainTextForMessage:a3 processedMessageItem:a3];
  v9[0] = @"text/plain";
  v8[0] = IMDCTPartDictionaryContentTypeKey;
  v8[1] = IMDCTPartDictionaryContentDataKey;
  v4 = [v3 dataUsingEncoding:4];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_chipListDictionary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 attributedSubstringFromRange:{objc_msgSend(v3, "length") - 1, 1}];
  if (![v4 length])
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D881C(v13);
    }

    v5 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v5 forceAutoBugCaptureWithSubType:@"Failed to relay Chip List message" errorPayload:0 type:@"RCSChatBot" context:@"Message body is empty"];
    goto LABEL_18;
  }

  v5 = [v4 attributesAtIndex:objc_msgSend(v4 effectiveRange:{"length") - 1, 0}];
  v6 = [v5 _arrayForKey:*MEMORY[0x277D19990]];
  v7 = [objc_alloc(MEMORY[0x277D1A928]) initWithChipArray:v6];
  if (!v7)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D87A4(v5, v14);
    }

    v15 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v15 forceAutoBugCaptureWithSubType:@"Failed to relay Chip List message" errorPayload:0 type:@"RCSChatBot" context:@"Cannot build Chip List" metadata:v5];

    goto LABEL_18;
  }

  v8 = v7;
  v9 = [v7 relayDictionaryRepresentation];
  v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v9 options:0 error:0];
  if (!v10)
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D8714(v8);
    }

    v17 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v17 forceAutoBugCaptureWithSubType:@"Failed to relay Chip List message" errorPayload:0 type:@"RCSChatBot" context:@"Cannot generate attributedData" metadata:v9];

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v23 = [v10 length];
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Relay chiplist from chat bot, data in bytes: %lu", buf, 0xCu);
    }
  }

  v20[0] = IMDCTPartDictionaryContentTypeKey;
  v20[1] = IMDCTPartDictionaryContentDataKey;
  v21[0] = @"text/attributed/chipList";
  v21[1] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v5 = v10;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_richCardsDictionary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (![v3 __im_isRichCard])
  {
    v16 = 0;
    goto LABEL_22;
  }

  v4 = [v3 attributesAtIndex:0 effectiveRange:0];
  v5 = [v4 _arrayForKey:*MEMORY[0x277D1A4D8]];
  v6 = objc_alloc(MEMORY[0x277D1AB58]);
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = [v6 initWithCardArray:v7];
  v9 = [v4 _dictionaryForKey:*MEMORY[0x277D1A878]];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v9)
  {
    v12 = 0;
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v11 = [objc_alloc(MEMORY[0x277D1ACD0]) initWithUrlToTransferGuids:v9];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 relayDictionaryRepresentation];
    [v10 setObject:v13 forKeyedSubscript:@"urlToTransferMap"];
  }

  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_9:
  v14 = [v8 relayDictionaryRepresentation];
  [v10 addEntriesFromDictionary:v14];

  v15 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:0 error:0];
  if (v15)
  {
LABEL_16:
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v23 = [v15 length];
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Relay richcards from chat bot, data in bytes: %lu", buf, 0xCu);
      }
    }

    v20[0] = IMDCTPartDictionaryContentTypeKey;
    v20[1] = IMDCTPartDictionaryContentDataKey;
    v21[0] = @"text/attributed/richCards";
    v21[1] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    goto LABEL_21;
  }

  v15 = IMLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D8860(v8);
  }

  v16 = 0;
LABEL_21:

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

@end