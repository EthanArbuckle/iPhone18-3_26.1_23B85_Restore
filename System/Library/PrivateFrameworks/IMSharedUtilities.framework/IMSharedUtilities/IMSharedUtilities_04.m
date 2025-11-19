void IMSetRequiresMultiParagraphPathway(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setRequiresMultiParagraphPathway:a2];
  }
}

BOOL IMColorComponentsIsZero(double a1, double a2, double a3, double a4, double a5)
{
  v5 = fabs(a2);
  v6 = fabs(a3);
  return fabs(a1) <= a5 && v5 <= a5 && v6 <= a5 && fabs(a4) <= a5;
}

void sub_1A86BDA50(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v12 = MEMORY[0x1E696AEC0];
  v13 = a7;
  v14 = [v12 stringWithFormat:@"%.*g, %.*g, %.*g, %.*g", 6, *&a2, 6, *&a3, 6, *&a4, 6, *&a5];
  [a1 encodeObject:v14 forKey:v13];
}

double sub_1A86BDB14(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5)
  {
    v6 = [v5 componentsSeparatedByString:{@", "}];
    v7 = 0.0;
    if ([v6 count] == 4)
    {
      v8 = [v6 objectAtIndexedSubscript:0];
      [v8 doubleValue];
      v7 = v9;

      v10 = [v6 objectAtIndexedSubscript:1];
      [v10 doubleValue];

      v11 = [v6 objectAtIndexedSubscript:2];
      [v11 doubleValue];

      v12 = [v6 objectAtIndexedSubscript:3];
      [v12 doubleValue];
    }
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

uint64_t sub_1A86BDC64(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  if (a3 >= [a1 length])
  {
    [a1 length];
    return 0;
  }

  else
  {
    v9 = [a1 length];
    v10 = 0;
    if ([a1 length] && a3 + a4 <= v9)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = sub_1A8601F94;
      v27 = sub_1A86021B8;
      v28 = [MEMORY[0x1E695DF90] dictionary];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1A86BDEB0;
      v21[3] = &unk_1E78298B0;
      v21[4] = &v23;
      v22 = a5;
      [a1 enumerateAttribute:@"__kIMTextEffectAttributeName" inRange:a3 options:a4 usingBlock:{0, v21}];
      v11 = [v24[5] allKeys];
      v12 = [v11 count];

      if (a5)
      {
        v13 = [v24[5] allKeys];
        v14 = [v13 count] != 0;
      }

      else
      {
        v14 = 0;
      }

      if (v12 != 1 && !v14 || ([v24[5] allKeys], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "firstObject"), v16 = objc_claimAutoreleasedReturnValue(), v15, v10 = objc_msgSend(v16, "integerValue"), objc_msgSend(v24[5], "objectForKeyedSubscript:", v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "rangeValue"), v19 = v18, v17, v16, v19 < a4))
      {
        v10 = 0;
      }

      _Block_object_dispose(&v23, 8);
    }
  }

  return v10;
}

void sub_1A86BDE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A86BDEB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
    [*(*(*(a1 + 32) + 8) + 40) setObject:v9 forKeyedSubscript:v10];
    if (*(a1 + 40) == 1)
    {
      *a5 = 1;
    }
  }
}

uint64_t sub_1A86BDF6C(void *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [a1 length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A86BE04C;
  v5[3] = &unk_1E78267C0;
  v5[4] = &v6;
  [a1 enumerateAttribute:@"__kIMTextEffectAttributeName" inRange:0 options:v2 usingBlock:{0, v5}];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1A86BE034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A86BE04C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

id IMBiomeQueue()
{
  if (qword_1EB30A570 != -1)
  {
    sub_1A88C4468();
  }

  v1 = qword_1EB30A578;

  return v1;
}

void sub_1A86BE0AC()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Messages.Biome", v2);
  v1 = qword_1EB30A578;
  qword_1EB30A578 = v0;
}

uint64_t im_messageCheckpointingEnabled()
{
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v1 = [v0 objectForKey:@"disable-message-checkpointing"];
  v2 = [v1 BOOLValue];

  if (v2)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  return v5;
}

id im_checkpointIDSService()
{
  if (qword_1EB309528 != -1)
  {
    sub_1A88C447C();
  }

  v1 = qword_1EB309520;

  return v1;
}

uint64_t sub_1A86BF28C()
{
  v0 = [objc_alloc(MEMORY[0x1E69A48A8]) initWithService:@"com.apple.madrid"];
  qword_1EB309520 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void im_sendMessageCheckpointIfNecessary(void *a1, uint64_t a2, void *a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      *v14 = 134218498;
      *&v14[4] = a2;
      *&v14[12] = 2112;
      if (a4)
      {
        v10 = @"YES";
      }

      *&v14[14] = v8;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "At checkpoint %ld for guid %@. Will send? %@", v14, 0x20u);
    }
  }

  if (a4 && im_messageCheckpointingEnabled())
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v11 setObject:v12 forKey:@"fR"];

    v13 = IDSGetUUIDData();
    if (v13)
    {
      [v11 setObject:v13 forKey:@"fU"];
    }

    [v7 sendServerMessage:v11 command:&unk_1F1BFA718 fromAccount:{0, *v14}];
  }
}

uint64_t im_sendCertifiedDeliveryReceiptIfPossible(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = +[IMFeatureFlags sharedFeatureFlags];
  v17 = [v16 certifiedDeliveryEnabled];

  if (!v17)
  {
LABEL_23:
    v20 = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v12;
        _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "IMMessageContext %@ is not of class IDSMessageContext", &v24, 0xCu);
      }
    }

    goto LABEL_19;
  }

  v18 = [v12 certifiedDeliveryContext];
  if (!v18)
  {
LABEL_19:
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = 138412802;
        v25 = v13;
        v26 = 2112;
        v27 = 0;
        v28 = 2112;
        v29 = v11;
        _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Not sending certified delivery receipt for guid %@ certifiedDeliveryContext: %@ handler service: %@", &v24, 0x20u);
      }
    }

    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = v13;
      _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Sending certified delivery receipt for guid %@", &v24, 0xCu);
    }
  }

  [v18 setGenerateDeliveryReceipt:a4];
  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v18 setFailureReason:v14];
  }

  if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v18 setFailureReasonMessage:v15];
  }

  [v11 sendCertifiedDeliveryReceipt:v18];

  v20 = 1;
LABEL_24:

  return v20;
}

void sub_1A86C00A0(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (!v8)
        {
          v10 = @"YES";
        }

        v11 = 138412546;
        v12 = v10;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "BlastDoor processing for audioPreviews was successful (%@) with error (%@)", &v11, 0x16u);
      }

      goto LABEL_12;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = @"YES";
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "BlastDoor processing for audioPreviews was successful (%@)", &v11, 0xCu);
      }

LABEL_12:
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t IMMessageSoundPlayReceivedAckSound(char *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((a1 - 2000) <= 5 && (v2 = **(&unk_1E7829950 + (a1 - 2000))) != 0)
  {
    v3 = v2;
    v4 = [objc_alloc(MEMORY[0x1AC570AA0](@"TLAlertConfiguration" @"ToneLibrary"))];
    [v4 setTopic:v3];
    v5 = [MEMORY[0x1AC570AA0](@"TLAlert" @"ToneLibrary")];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v13 = v3;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Alert plays with topic: [%@] and TLAlert: [%@]", buf, 0x16u);
      }
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A86C0494;
    v10[3] = &unk_1E7829930;
    v11 = v3;
    v7 = v3;
    [v5 playWithCompletionHandler:v10];

    return 1;
  }

  else
  {
    result = IMOSLoggingEnabled();
    if (result)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v13 = a1;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "No sound available for message type: %ld", buf, 0xCu);
      }

      return 0;
    }
  }

  return result;
}

void sub_1A86C0494(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 == 5 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      if (v5)
      {
        v8 = [v5 userInfo];
      }

      else
      {
        v8 = &stru_1F1BB91F0;
      }

      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Error playing alert with topic [%@]: [%@]", &v9, 0x16u);
      if (v5)
      {
      }
    }
  }
}

void IMMessageSoundStartSuppressingSendSoundForMessageGUID(void *a1)
{
  v3 = a1;
  v1 = IMGetCachedDomainValueForKey();
  if (!v1)
  {
    v1 = [MEMORY[0x1E695DEC8] array];
  }

  v2 = [v1 arrayByAddingObject:v3];

  IMSetDomainValueForKey();
}

id IMCreateDictionaryFromCSSString(void *a1, int a2)
{
  if (a1)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [a1 lengthOfBytesUsingEncoding:4];
    if (v4 && (v5 = v4, (v6 = malloc_type_malloc(v4 + 1, 0x8B17D323uLL)) != 0))
    {
      v7 = v6;
      if ([a1 getCString:v6 maxLength:v5 + 1 encoding:4])
      {
        v8 = 0;
        v27 = v7;
        while (1)
        {
          v9 = *v7;
          if (*v7)
          {
            v10 = 0;
            while (1)
            {
              v11 = v7;
              if (v9 > 0x39)
              {
                if (v9 == 58)
                {

                  goto LABEL_38;
                }

                if (v9 < 0x3C)
                {
                  break;
                }
              }

              do
              {
                v12 = *++v7;
              }

              while (byte_1A88E1358[v12] < 0);
              v13 = v7 - 1;
              v14 = v11;
              if (v11 < v7)
              {
                while (1)
                {
                  v15 = *v11;
                  v16 = v15 > 0x27;
                  v17 = (1 << v15) & 0x8500002600;
                  if (v16 || v17 == 0)
                  {
                    break;
                  }

                  v14 = v11 + 1;
                  if (v11++ >= v13)
                  {
                    goto LABEL_19;
                  }
                }

                v14 = v11;
              }

LABEL_19:
              v20 = v7;
              if (v13 > v14)
              {
                v21 = v7;
                v20 = v7;
                while (1)
                {
                  v22 = *--v20;
                  v23 = (1 << v22) & 0x8500002600;
                  if (v22 > 0x27 || v23 == 0)
                  {
                    break;
                  }

                  v21 = v20;
                  if (v20 <= (v14 + 1))
                  {
                    goto LABEL_26;
                  }
                }

                v20 = v21;
              }

LABEL_26:

              v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v14 length:v20 - v14 encoding:{4, v27}];
              v9 = *v7;
              if (!*v7)
              {
                goto LABEL_31;
              }
            }

            if (v8)
            {
LABEL_32:
              if (v10)
              {
                v25 = v8;
                if (a2)
                {
                  v25 = [v8 lowercaseString];
                }

                [v3 setObject:v10 forKey:{v25, v27}];
              }
            }
          }

          else
          {
            v10 = 0;
LABEL_31:
            if (v8)
            {
              goto LABEL_32;
            }
          }

          if (!*v7)
          {
            free(v27);
            return v3;
          }

          v10 = 0;
          v11 = v7;
LABEL_38:
          v7 = v11 + 1;
          v8 = v10;
        }
      }

      free(v7);
    }

    else
    {
    }
  }

  return 0;
}

id IMDefaultServiceHybridCapabilities()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = IMServiceCapabilityInlineReplies;
  v2[1] = IMServiceCapabilityEditMessage;
  v3[0] = MEMORY[0x1E695E118];
  v3[1] = MEMORY[0x1E695E118];
  v2[2] = IMServiceCapabilityMentions;
  v2[3] = IMServiceCapabilityNicknames;
  v3[2] = MEMORY[0x1E695E118];
  v3[3] = MEMORY[0x1E695E118];
  v2[4] = IMServiceCapabilityTextEffects;
  v2[5] = IMServiceCapabilityTranscriptBackgrounds;
  v3[4] = MEMORY[0x1E695E118];
  v3[5] = MEMORY[0x1E695E118];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];

  return v0;
}

id IMDefaultServiceCapabilities()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = IMServiceCapabilityAudioMessageForwarding;
  v3[0] = MEMORY[0x1E695E118];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

void sub_1A86C1F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = a3;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Received notification to display keep messages setting has reset: %@", &v5, 0xCu);
    }
  }

  dword_1ED8C8840 = -1;
}

IMAttributedStringParser *sub_1A86C205C()
{
  result = objc_alloc_init(IMAttributedStringParser);
  qword_1ED8CA398 = result;
  return result;
}

IMMessageNotificationController *sub_1A86C2364()
{
  result = objc_alloc_init(IMMessageNotificationController);
  qword_1ED8CA3A0 = result;
  return result;
}

void sub_1A86C2E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 134218242;
      v8 = a2;
      v9 = 2112;
      v10 = a3;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "_playbackDidEnd: completionType:%ld, error:%@", &v7, 0x16u);
    }
  }
}

uint64_t sub_1A86C3BBC()
{
  v0 = dispatch_queue_create("com.apple.IMSharedUtilities.IMSyndicationUtilities.AttributionFetchQueue", 0);
  qword_1EB30B430 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A86C3EFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  v4 = [v2 fetchAttributionsForHighlight:v3];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A86C3FCC;
  v7[3] = &unk_1E7829A10;
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void sub_1A86C4610(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Returned results from CloudKit: %@", &v15, 0xCu);
    }
  }

  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v12;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, " Failed to get bundleIDs from CloudKit: %@", &v15, 0xCu);
      }
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

uint64_t IMSharedUtilitiesProtoCloudKitEncryptedGroupActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v31 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          String = PBReaderReadString();

          v20 = String;
          v21 = 16;
        }

        else
        {
          if (v12 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_53;
          }

          Data = PBReaderReadData();

          v20 = Data;
          v21 = 24;
        }

        *(a1 + v21) = v20;
      }

      else if (v12 == 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          v32 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v32 & 0x7F) << v23;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v10 = v24++ >= 9;
          if (v10)
          {
            v28 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v25;
        }

LABEL_52:
        *(a1 + 32) = v28;
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_32;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v33 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v33 & 0x7F) << v13;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

LABEL_48:
        *(a1 + 8) = v18;
      }

LABEL_53:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id IMVCardDataFromLocation(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v11 = 0;
    goto LABEL_25;
  }

  v3 = IMCurrentLocationURLFromLocation(v1);
  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"Current Location" value:&stru_1F1BB91F0 table:@"IMCoreLocalizable"];

    v6 = MEMORY[0x1AC570AA0](@"CNContactVCardSerialization", @"Contacts");
    if (v6)
    {
      v7 = v6;
      v8 = [IMContactStore createMutableContactWithMapURL:v3 andLocalizedLocationString:v5];
      v9 = [v8 copy];

      if (v9)
      {
        v18 = v9;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
        v17 = 0;
        v11 = [v7 dataWithContacts:v10 error:&v17];
        v12 = v17;

        if (!v12)
        {

          goto LABEL_23;
        }

        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v20 = v12;
            _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "IMFileUtilities - Unable to extract vCardData from Contact. Error %@", buf, 0xCu);
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v20 = v2;
            v21 = 2112;
            v22 = v3;
            _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "IMFileUtilities - Unable to create contact from location %@. MapURLString: %@", buf, 0x16u);
          }
        }

        v12 = 0;
        v11 = 0;
      }

      v5 = v11;
    }

    else if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "IMFileUtilities - Unable to weaklink CNContactVCardSerialization", buf, 2u);
      }
    }

    v11 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v11 = 0;
LABEL_24:

LABEL_25:

  return v11;
}

id IMCurrentLocationURLFromLocation(void *a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  [a1 coordinate];
  v2 = v1;
  v4 = v3;
  if (qword_1EB30B448 != -1)
  {
    sub_1A88C44CC();
  }

  if (off_1EB30B440(v2, v4))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f, %f", *&v2, *&v4];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"http://maps.apple.com/?ll=%@&q=%@", v5, v5];
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  return v6;
}

void *sub_1A86C575C()
{
  result = MEMORY[0x1AC570AB0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  off_1EB30B440 = result;
  return result;
}

uint64_t sub_1A86C5804()
{
  v0 = objc_alloc_init(IMBusinessNameManager);
  qword_1ED8CA3A8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A86C5AE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A86C5B08(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = [a2 name];
  if (![v5 length])
  {
    v6 = [v9 domain];
    if ([v6 isEqualToString:@"BrandManagerErrorDomain"])
    {
      v7 = [v9 code];

      if (v7 != 1)
      {
        goto LABEL_6;
      }

      [IMBusinessNameManager placeholderBusinessNameForBrandURI:*(a1 + 32)];
      v5 = v6 = v5;
    }
  }

LABEL_6:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchedBrandName:v5 forUID:*(a1 + 32)];
}

void sub_1A86C7FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A86C7FCC(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([*(*(*(a1 + 32) + 8) + 40) __im_containsFileTransferGUID:v9])
  {
    v6 = [*(*(*(a1 + 32) + 8) + 40) __im_attributedStringByReplacingFileTransferGUID:v9 withUpdatedTransferGUID:v5];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

id IMAssociatedMessageDecodeGUID(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"bp:"])
  {
    v2 = [@"bp:" length];
    v3 = v1;
    goto LABEL_3;
  }

  if (![v1 length])
  {
LABEL_15:
    v4 = v1;
    goto LABEL_16;
  }

  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = [v1 characterAtIndex:v6 - 1];
    if (v7 != 47)
    {
      if (v7 == 58)
      {
        v5 = 1;
      }

      else if (v7 == 45)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    if (v5)
    {
      break;
    }

    v5 = 0;
LABEL_13:
    if (v6++ >= [v1 length])
    {
      goto LABEL_15;
    }
  }

  v3 = v1;
  v2 = v6;
LABEL_3:
  v4 = [v3 substringFromIndex:v2];
LABEL_16:
  v9 = v4;

  return v9;
}

uint64_t IMAssociatedMessageDecodePartIndex(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"p:"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"p:", "length")}];
    v3 = [v2 componentsSeparatedByString:@"/"];
    if ([v3 count] == 2)
    {
      v4 = [v3 objectAtIndexedSubscript:0];
      v5 = [v4 integerValue];
    }

    else
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

__CFString *IMMetricsValueForAssociatedMessageContentType(int a1)
{
  if ((a1 - 1) > 9)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7829B90[(a1 - 1)];
  }
}

id sub_1A86C84DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v19 = v18;
  if (v13)
  {
    [v18 setObject:v13 forKey:@"ams"];
  }

  if (v14)
  {
    v20 = JWEncodeCodableObject();
    if (v20)
    {
      [v19 setObject:v20 forKey:@"ampt"];
    }
  }

  if ([v15 length])
  {
    [v19 setObject:v15 forKey:@"amb"];
  }

  if ([v16 length])
  {
    [v19 setObject:v16 forKey:@"amd"];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a4];
  [v19 setObject:v21 forKey:@"amc"];

  if ([v17 length])
  {
    [v19 setObject:v17 forKey:@"ame"];
  }

  return v19;
}

id sub_1A86C8678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = JWDecodeDictionary();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1A86C86E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = JWEncodeDictionary();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1A86C8728(void *a1)
{
  v1 = [a1 _dataForKey:?];
  if (v1)
  {
    v2 = JWDecodeCodableObjectWithStandardAllowlist();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v4 = IMLogHandleForCategory("IMAssociatedMessageItem");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C4864(v4);
      }

      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1A86C87EC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = JWEncodeCodableObject();
  if (v8)
  {
    [a1 setObject:v8 forKey:v7];
  }
}

id IMGetConsumedSessionPayloadsForBreadcrumbItems(void *a1)
{
  v1 = [a1 sortedArrayUsingComparator:&unk_1F1BA78A8];
  v2 = [v1 __imArrayByApplyingBlock:&unk_1F1BA78C8];

  return v2;
}

uint64_t sub_1A86C8924(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 messageID];
  if (v6 == [v5 messageID])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 messageID];
    if (v8 < [v5 messageID])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

id sub_1A86C89AC(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 messageID] && objc_msgSend(v2, "associatedMessageType") == 3)
  {
    v3 = [v2 payloadData];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_1A86C8A18(void *a1)
{
  if (![a1 length] || !objc_msgSend(a1, "containsString:", @"maps.apple.com"))
  {
    return 0;
  }

  v2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(http)s?(\\:\\/\\/maps\\.apple\\.com\\/\\?ll\\=)\\-?\\d+\\.\\d+ options:\\-?\\d+\\.\\d+\\&q\\=[^\\&]+$" error:{0, 0}];
  v3 = [v2 numberOfMatchesInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}] == 1;

  return v3;
}

void sub_1A86C8F74(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A86C8F40);
  }

  _Unwind_Resume(a1);
}

void sub_1A86C910C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A86C90D8);
  }

  _Unwind_Resume(a1);
}

void sub_1A86CA54C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A86CA430);
  }

  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1A86CAD3C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 48;
  if (v11)
  {
    v7 = v5;
    if (!v5)
    {
      MEMORY[0x1AC570AA0](@"BlastDoorOrderPreview", @"BlastDoor");
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }

      v6 = 40;
      v7 = v11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

LABEL_7:
  dispatch_group_leave(*(a1 + 32));
}

void sub_1A86CB6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A86CB7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A86CB7F0(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 32) == a2)
  {
    *a3 = 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t IMSharedUtilitiesProtoCloudKitEncryptedMessageP3ReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 2)
      {
        break;
      }

      if (v12 == 3)
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v34 = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v34 & 0x7F) << v26;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v10 = v27++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v28;
        }

LABEL_63:
        v31 = 8;
LABEL_64:
        *(a1 + v31) = v18;
        goto LABEL_65;
      }

      if (v12 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_65;
      }

      Data = PBReaderReadData();

      *(a1 + 16) = Data;
LABEL_65:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 28) |= 4u;
      while (1)
      {
        v36 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v36 & 0x7F) << v21;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v10 = v22++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_59;
        }
      }

      if ([a2 hasError])
      {
        v18 = 0;
      }

      else
      {
        v18 = v23;
      }

LABEL_59:
      v31 = 24;
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_32;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 28) |= 2u;
      while (1)
      {
        v35 = 0;
        v16 = [a2 position] + 1;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v15 |= (v35 & 0x7F) << v13;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v10 = v14++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_55;
        }
      }

      if ([a2 hasError])
      {
        v18 = 0;
      }

      else
      {
        v18 = v15;
      }

LABEL_55:
      v31 = 12;
    }

    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

id sub_1A86CD85C(void *a1)
{
  v1 = [a1 _dataForKey:?];
  if (v1)
  {
    v2 = JWDecodeCodableObjectWithStandardAllowlist();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v4 = IMLogHandleForCategory("NSDictionary+MessagePartUtilities");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C4864(v4);
      }

      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1A86CD920(void *a1)
{
  v1 = [a1 _numberForKey:?];
  [v1 doubleValue];
  v3 = v2;

  if (v3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v3];
  }

  return v4;
}

void sub_1A86CD990(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = JWEncodeCodableObject();
  if (v8)
  {
    [a1 setObject:v8 forKey:v7];
  }
}

void sub_1A86CDA6C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a4;
  [a3 timeIntervalSinceReferenceDate];
  if (v6 != 0.0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [a1 setObject:v7 forKey:v8];
  }
}

id IMDaemonBackgroundMessagingProtocolXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1C42CF8];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = [v1 setWithObjects:{v2, v3, objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_requestBackgroundMessagingAuthorizationForRecipients_completion_ argumentIndex:0 ofReply:0];

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  [v0 setClasses:v8 forSelector:sel_requestBackgroundMessagingAuthorizationForRecipients_completion_ argumentIndex:0 ofReply:1];

  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v9 forSelector:sel_requestBackgroundMessagingAuthorizationForRecipients_completion_ argumentIndex:1 ofReply:1];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  [v0 setClasses:v13 forSelector:sel_checkAuthorizationStatusForRecipients_completion_ argumentIndex:0 ofReply:0];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
  [v0 setClasses:v17 forSelector:sel_checkAuthorizationStatusForRecipients_completion_ argumentIndex:0 ofReply:1];

  v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v18 forSelector:sel_checkAuthorizationStatusForRecipients_completion_ argumentIndex:1 ofReply:1];

  v19 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v19 forSelector:sel_sendBackgroundMessage_toRecipient_completion_ argumentIndex:0 ofReply:0];

  v20 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v20 forSelector:sel_sendBackgroundMessage_toRecipient_completion_ argumentIndex:1 ofReply:0];

  v21 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v21 forSelector:sel_sendBackgroundMessage_toRecipient_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

uint64_t IMSharedUtilitiesProtoCloudKitEncryptedChatP1ReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 position];
  if (v5 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v31 = 0;
        v9 = [v4 position] + 1;
        if (v9 >= [v4 position] && (v10 = objc_msgSend(v4, "position") + 1, v10 <= objc_msgSend(v4, "length")))
        {
          v11 = [v4 data];
          [v11 getBytes:&v31 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v8 |= (v31 & 0x7F) << v6;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [v4 hasError] ? 0 : v8;
LABEL_15:
      if (([v4 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      if ((v13 >> 3) == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v3[16] |= 2u;
        while (1)
        {
          v33 = 0;
          v24 = [v4 position] + 1;
          if (v24 >= [v4 position] && (v25 = objc_msgSend(v4, "position") + 1, v25 <= objc_msgSend(v4, "length")))
          {
            v26 = [v4 data];
            [v26 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v23 |= (v33 & 0x7F) << v21;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_44;
          }
        }

        v27 = (v23 != 0) & ~[v4 hasError];
LABEL_44:
        v3[12] = v27;
      }

      else if ((v13 >> 3) == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v3[16] |= 1u;
        while (1)
        {
          v32 = 0;
          v17 = [v4 position] + 1;
          if (v17 >= [v4 position] && (v18 = objc_msgSend(v4, "position") + 1, v18 <= objc_msgSend(v4, "length")))
          {
            v19 = [v4 data];
            [v19 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v16 |= (v32 & 0x7F) << v14;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_42;
          }
        }

        if ([v4 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_42:
        *(v3 + 2) = v20;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        v30 = 0;
        goto LABEL_47;
      }

      v28 = [v4 position];
    }

    while (v28 < [v4 length]);
  }

  v30 = [v4 hasError] ^ 1;
LABEL_47:

  return v30;
}

void IMSetAlwaysUseSingletonProxies(char a1)
{
  byte_1EB309311 = a1;
  v2 = IMLogHandleForCategory("IMSingletonLog");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1A88C4DC8(a1, v2);
  }
}

id sub_1A86CE81C(void *a1)
{
  v1 = a1;
  objc_sync_enter(v1);
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 __singleton__im];
    if ([v2 __isSingletonProxy__im])
    {
      v3 = [v2 singletonOverrideRef];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v1);

  return v3;
}

void sub_1A86CE8D4(void *a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 __singleton__im];
    if ([v5 __isSingletonProxy__im])
    {
      [v5 setSingletonOverride:v7];
    }

    else
    {
      v6 = [[IMSingletonProxy alloc] initWithSingleton:v5 singletonOverride:v7];
      [v4 __setSingleton__im:v6];
    }
  }

  objc_sync_exit(v4);
}

void sub_1A86CE9C8(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  if (objc_opt_respondsToSelector())
  {
    if (byte_1EB309311 == 1)
    {
      v5 = [[IMSingletonProxy alloc] initWithSingleton:v6 singletonOverride:0];
      [v4 __setSingleton__im:v5];
    }

    else
    {
      [v4 __setSingleton__im:v6];
    }
  }

  objc_sync_exit(v4);
}

id sub_1A86CEA98(void *a1)
{
  v1 = a1;
  objc_sync_enter(v1);
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 __singleton__im];
    if ([v2 __isSingletonProxy__im])
    {
      v3 = [v2 singletonRef];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v1);

  return v3;
}

BOOL sub_1A86CEB50(void *a1)
{
  v1 = [a1 singletonOverride];
  v2 = v1 != 0;

  return v2;
}

uint64_t sub_1A86CEB8C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [a1 replaceSingletonWithObject:v4];
  }

  return isKindOfClass & 1;
}

void sub_1A86CF22C(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v11 = dispatch_group_create();
  v12 = [a1 expectationWithDescription:a5];
  (*(a4 + 16))(a4, v11);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A86CF39C;
  block[3] = &unk_1E7829C60;
  block[5] = a6;
  block[6] = v15;
  block[4] = v12;
  dispatch_group_notify(v11, MEMORY[0x1E69E96A0], block);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A86CF40C;
  v13[3] = &unk_1E7829C88;
  v13[5] = a6;
  v13[6] = v15;
  v13[4] = a5;
  [a1 waitForExpectationsWithTimeout:v13 handler:a2];
  _Block_object_dispose(v15, 8);
}

uint64_t sub_1A86CF39C(uint64_t a1)
{
  result = [*(a1 + 32) fulfill];
  v3 = *(*(a1 + 48) + 8);
  if ((*(v3 + 24) & 1) == 0 && *(a1 + 40))
  {
    *(v3 + 24) = 1;
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

void sub_1A86CF40C(void *a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_AsyncTestRetur.isa, a1[4], a2);
  }

  v3 = *(a1[6] + 8);
  if ((*(v3 + 24) & 1) == 0 && a1[5])
  {
    *(v3 + 24) = 1;
    v4 = *(a1[5] + 16);

    v4();
  }
}

void *sub_1A86CF644()
{
  result = MEMORY[0x1AC570AB0]("SecMPComputePaddingForStorage", @"MessageProtection");
  off_1EB30B458 = result;
  return result;
}

void sub_1A86D0074(void *a1)
{
  objc_begin_catch(a1);
  if (!v1)
  {
    JUMPOUT(0x1A86D002CLL);
  }

  JUMPOUT(0x1A86D0020);
}

void sub_1A86D0274(void *a1)
{
  objc_begin_catch(a1);
  if (!v1)
  {
    JUMPOUT(0x1A86D022CLL);
  }

  JUMPOUT(0x1A86D0220);
}

uint64_t sub_1A86D0328(uint64_t a1)
{
  [*(a1 + 32) loadXCTestFramework:*(a1 + 40)];
  v2 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v2, sel_setXctestFrameworkLoaded_);
}

uint64_t IMShouldAllowInteractionlessUsageOfUTITypeWithPreviewGenerationState(void *a1, uint64_t a2, char a3, __CFString **a4)
{
  v7 = a1;
  if ((a3 & 1) == 0)
  {
    if (a4)
    {
      v11 = @"attachment is not from a known sender";
      goto LABEL_7;
    }

LABEL_26:
    v12 = 0;
    goto LABEL_27;
  }

  v8 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v9 = [v8 objectForKey:@"md-index-uti-denylist" ofClass:objc_opt_class()];
  v10 = [v9 containsObject:v7];

  if (v10)
  {
    if (a4)
    {
      v11 = @"UTI type is disallowed from indexing by policy";
LABEL_7:
      v12 = 0;
      *a4 = v11;
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (IMIsSupportedUTIType(v7))
  {
    if (!a2)
    {
      if (a4)
      {
        v11 = @"preview is not generated yet";
        goto LABEL_7;
      }

      goto LABEL_26;
    }

    if (a2 == 2)
    {
      if (a4)
      {
        v11 = @"preview generation failed";
        goto LABEL_7;
      }

      goto LABEL_26;
    }

    if (a2 != 3)
    {
      v12 = 1;
      goto LABEL_27;
    }

    v12 = 1;
    v13 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
    v14 = [v13 objectForKey:@"md-index-unmigrated-transfers" ofClass:objc_opt_class()];
    v15 = v14;
    if (!v14)
    {
      v14 = MEMORY[0x1E695E118];
    }

    v16 = [v14 BOOLValue];

    if ((v16 & 1) == 0)
    {
      if (a4)
      {
        v11 = @"migration is needed and indexing unmigrated transfers is disallowed by policy";
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
    v18 = [v17 objectForKey:@"md-index-previewless-transfers" ofClass:objc_opt_class()];
    v19 = v18;
    if (!v18)
    {
      v18 = MEMORY[0x1E695E118];
    }

    v20 = [v18 BOOLValue];

    v12 = 1;
    if ((v20 & 1) == 0)
    {
      if (a4)
      {
        v11 = @"previewless attachments are not allowed to be indexed by policy";
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

LABEL_27:

  return v12;
}

uint64_t IMShouldReindexUTITypeWithPreviewGenerationState(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1;
  LODWORD(a2) = IMShouldAllowInteractionlessUsageOfUTITypeWithPreviewGenerationState(v7, a2, a4, 0);
  v8 = IMShouldAllowInteractionlessUsageOfUTITypeWithPreviewGenerationState(v7, a3, a4, 0);

  return a2 ^ v8;
}

uint64_t IMFileTransferPreviewGenerationStateWithStoredState(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (IMIsSupportedUTIType(a3))
  {
    v6 = v5;
    v7 = [v6 objectForKeyedSubscript:@"pgenp"];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      a1 = 0;
    }

    else
    {
      v9 = [v6 objectForKeyedSubscript:@"IMFileTransferPreviewGenerationStateKey"];

      if (a1 == 3 || v9)
      {
        v10 = [v6 objectForKeyedSubscript:@"pgens"];
        v11 = v10;
        if (v10)
        {
          if ([v10 BOOLValue])
          {
            a1 = 1;
          }

          else
          {
            a1 = 2;
          }
        }

        else
        {
          a1 = 3;
        }
      }
    }
  }

  else
  {
    a1 = 3;
  }

  return a1;
}

BOOL IMFileTransferAttributionInfoHasLegacyState(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"pgens"];
  v2 = v1 != 0;

  return v2;
}

uint64_t sub_1A86D0E30(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKey:a2];
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = *(a1 + 40);

    return [v6 setObject:v4 forKey:a2];
  }

  return result;
}

void sub_1A86D1D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A86D1EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A86D2090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A86D2230(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory("Diagnostics");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C5170(a1, v3, v4);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) identifier];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Successfully posted notification %@", &v7, 0xCu);
    }
  }
}

void sub_1A86D2410(uint64_t a1)
{
  sub_1A86D2468();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UNMutableNotificationContent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EB30B470 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1A88C5228();
    sub_1A86D2468();
  }
}

void sub_1A86D2468()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!qword_1EB30B478)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = sub_1A86D2564;
    v1[4] = &unk_1E7826200;
    v1[5] = v1;
    v2 = xmmword_1E7829D20;
    v3 = 0;
    qword_1EB30B478 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1EB30B478)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_1A86D2564()
{
  result = _sl_dlopen();
  qword_1EB30B478 = result;
  return result;
}

Class sub_1A86D25D8(uint64_t a1)
{
  sub_1A86D2468();
  result = objc_getClass("UNNotificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EB30B480 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1A88C5250();
    return sub_1A86D2630(v3);
  }

  return result;
}

void sub_1A86D2630(uint64_t a1)
{
  sub_1A86D2468();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UNUserNotificationCenter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EB30B488 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = sub_1A88C5278();
    +[(IMBackgroundMessagingAPIDataAccess *)v2];
  }
}

uint64_t sub_1A86D310C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqualToString:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1A86D3A30(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

id sub_1A86D3A44(void *a1)
{
  v2 = [a1 _arrayForKey:@"k"];
  if ([v2 count])
  {
    v3 = [a1 mutableCopy];
    v4 = [v2 __imArrayByApplyingBlock:&unk_1F1BA7908];
    [v3 setObject:v4 forKeyedSubscript:@"k"];

    v5 = [v3 copy];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

id sub_1A86D3AF8(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKeyedSubscript:@"type"];
    v4 = v3;
    if (v3)
    {
      v7 = @"type";
      v8[0] = v3;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1A86D3BE0(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"SMSMsgDict"];

  if (v1)
  {
    v2 = [a1 objectForKeyedSubscript:@"SMSMsgDict"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [a1 mutableCopy];
      v4 = [v2 __im_copyCTSMSDictionaryWithRedactedMessageContent];
      [v3 setObject:v4 forKeyedSubscript:@"SMSMsgDict"];

      v5 = [v3 copy];
    }

    else
    {
      v5 = a1;
    }

    return v5;
  }

  v6 = [a1 objectForKeyedSubscript:@"k"];

  if (v6)
  {
    [a1 __im_copyCTSMSDictionaryWithRedactedMessageContent];
    return objc_claimAutoreleasedReturnValue();
  }

  return a1;
}

IMCoreAutomationNotifications *sub_1A86D3D50()
{
  result = objc_alloc_init(IMCoreAutomationNotifications);
  qword_1ED8CA3B0 = result;
  return result;
}

void sub_1A86D5434()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1A86D54AC, @"com.apple.MobileSMS.MMSEnabled.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v1 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v1, 0, sub_1A86D54AC, @"com.apple.MobileSMS.MMSCapable", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_1A86D54AC()
{
  v0 = objc_autoreleasePoolPush();
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_INFO, "Refresh: User setting for MMS changed", v2, 2u);
    }
  }

  dispatch_async(MEMORY[0x1E69E96A0], &unk_1F1BA7AA8);
  objc_autoreleasePoolPop(v0);
}

void sub_1A86D7670()
{
  v0 = MEMORY[0x1AC570AB0]("AVAssetExportPresetAudioOnlyMMS", @"AVFoundation");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB30B4A0, v1);
}

void sub_1A86D76C0()
{
  v0 = MEMORY[0x1AC570AB0]("AVAssetExportPresetMMS", @"AVFoundation");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB30B4B0, v1);
}

double sub_1A86D7710(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1EB30B510 != -1)
    {
      sub_1A88C5318();
    }

    if (qword_1EB30B520 != -1)
    {
      sub_1A88C532C();
    }

    v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:IMMMSMaximumMessageByteCount()];
    v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v2, @"fileLengthLimit", 0}];
    v8 = 0uLL;
    v9 = 0;
    if (qword_1EB30B508)
    {
      [qword_1EB30B508 maximumDurationForPreset:v1 properties:v3];
    }

    v6 = v8;
    v7 = v9;
    v4 = off_1EB30B518(&v6);
  }

  else
  {
    v4 = INFINITY;
  }

  return v4;
}

void sub_1A86D78E0()
{
  v0 = MEMORY[0x1AC570AB0]("AVAssetExportPresetMMS", @"AVFoundation");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB30B4C0, v1);
}

void sub_1A86D7930()
{
  v0 = MEMORY[0x1AC570AB0]("AVAssetExportPresetMMS", @"AVFoundation");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB30B4D0, v1);
}

uint64_t sub_1A86D7AD4()
{
  result = MEMORY[0x1AC570AA0](@"AVAssetExportSession", @"AVFoundation");
  qword_1EB30B4D8 = result;
  return result;
}

void *sub_1A86D7B04()
{
  result = MEMORY[0x1AC570AB0]("CMTimeGetSeconds", @"CoreMedia");
  off_1EB30B4E8 = result;
  return result;
}

void sub_1A86D83A0()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1A86D83EC, @"com.apple.MobileSMS.MMSEmailAddress.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_1A86D83EC()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1A85E5000, v0, OS_LOG_TYPE_INFO, "Refresh: Email address for MMS changed", v1, 2u);
    }
  }
}

void sub_1A86D8CD0()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1A85E5000, v0, OS_LOG_TYPE_INFO, "Restricted Mode changed, reloading", v2, 2u);
    }
  }

  v1 = +[IMCTSMSUtilitiesManager sharedManager];
  [v1 mmsRestrictedModeEnabledForPhoneNumber:0 simID:0 reset:1];
}

uint64_t sub_1A86D9F7C()
{
  result = MEMORY[0x1AC570AA0](@"AVAssetExportSession", @"AVFoundation");
  qword_1EB30B508 = result;
  return result;
}

void *sub_1A86D9FAC()
{
  result = MEMORY[0x1AC570AB0]("CMTimeGetSeconds", @"CoreMedia");
  off_1EB30B518 = result;
  return result;
}

void sub_1A86D9FDC()
{
  v0 = qword_1EB30A9D0;
  qword_1EB30A9D0 = 0;

  v1 = +[IMCTSMSUtilitiesManager sharedManager];
  [v1 synchronizePreferredSubscriptionMMSCapabilityToWatch];
}

void sub_1A86DA4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A86DA458);
  }

  _Unwind_Resume(exception_object);
}

Class sub_1A86DA7C4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EB30B530)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1A86DA908;
    v4[4] = &unk_1E7826200;
    v4[5] = v4;
    v5 = xmmword_1E782A070;
    v6 = 0;
    qword_1EB30B530 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1EB30B530)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PRSPosterArchiver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A88C53A4();
  }

  qword_1EB30B528 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A86DA908()
{
  result = _sl_dlopen();
  qword_1EB30B530 = result;
  return result;
}

Class sub_1A86DA97C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED8C9790)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1A86DAAC0;
    v4[4] = &unk_1E7826200;
    v4[5] = v4;
    v5 = xmmword_1E782A088;
    v6 = 0;
    qword_1ED8C9790 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED8C9790)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PFPosterConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A88C53CC();
  }

  qword_1EB30B538 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A86DAAC0()
{
  result = _sl_dlopen();
  qword_1ED8C9790 = result;
  return result;
}

uint64_t sub_1A86DB154()
{
  v0 = objc_alloc_init(IMAssistiveAccessCommunicationLimitManager);
  qword_1ED8CA0F0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A86DB914(uint64_t a1, void *a2)
{
  v2 = [a2 bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.MobileSMS"];

  return v3;
}

void sub_1A86DBAEC()
{
  if (IMIsRunningInUnitTesting())
  {
    v2 = [MEMORY[0x1E696AE30] processInfo];
    v0 = [v2 environment];
    v1 = [v0 objectForKey:@"IMFEATUREFLAGS_STRICT"];
    byte_1EB30B540 = [v1 BOOLValue];
  }
}

void sub_1A86DBBC4()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A4D8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A4D8 = v0;
  }
}

void sub_1A86DBCA0()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C9780 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C9780 = v0;
  }
}

uint64_t sub_1A86DBDCC(uint64_t a1)
{
  v2 = IMSharedHelperDeviceIsiPad();
  v3 = *(a1 + 32);
  if (v2)
  {
    result = [v3 _isEntryViewInTranscriptEnabledForiPad];
  }

  else
  {
    result = [v3 _isEntryViewInTranscriptEnabled];
  }

  byte_1ED8C9738 = result;
  return result;
}

void sub_1A86DBE50()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C9728 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C9728 = v0;
  }
}

void sub_1A86DBF2C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C9770 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C9770 = v0;
  }
}

void sub_1A86DC008()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B548 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B548 = v0;
  }
}

uint64_t sub_1A86DC0DC()
{
  if (IMIsRunningInUnitTesting() & 1) != 0 || (_os_feature_enabled_impl())
  {
    result = 1;
  }

  else
  {
    result = IMGetCachedDomainBoolForKeyWithDefaultValue();
  }

  byte_1EB30B558 = result;
  return result;
}

void sub_1A86DC1C8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C9718 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C9718 = v0;
  }
}

void sub_1A86DC2A4()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B568 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B568 = v0;
  }
}

void sub_1A86DC380()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C9600 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C9600 = v0;
  }
}

void sub_1A86DC45C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B570 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B570 = v0;
  }
}

void sub_1A86DC538()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B578 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B578 = v0;
  }
}

void sub_1A86DC614()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C9610 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C9610 = v0;
  }
}

void sub_1A86DC6F0()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB309508 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309508 = v0;
  }
}

void sub_1A86DC7CC()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB309518 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309518 = v0;
  }
}

void sub_1A86DC8A8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB309400 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309400 = v0;
  }
}

void sub_1A86DC984()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C97F8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C97F8 = v0;
  }
}

void sub_1A86DCA60()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B588 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B588 = v0;
  }
}

void sub_1A86DCB3C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B598 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B598 = v0;
  }
}

void sub_1A86DCC18()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B5A8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B5A8 = v0;
  }
}

uint64_t sub_1A86DCCEC()
{
  if (IMIsRunningInUnitTesting())
  {
    result = 0;
  }

  else if (_os_feature_enabled_impl())
  {
    result = 1;
  }

  else
  {
    result = IMGetCachedDomainBoolForKeyWithDefaultValue();
  }

  byte_1EB30B5B8 = result;
  return result;
}

void sub_1A86DCD90()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C9748 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C9748 = v0;
  }
}

void sub_1A86DCE6C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C95F0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C95F0 = v0;
  }
}

void sub_1A86DCF48()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B5C8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B5C8 = v0;
  }
}

void sub_1A86DD024()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB3093F8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB3093F8 = v0;
  }
}

void sub_1A86DD108()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C95D0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C95D0 = v0;
  }
}

void sub_1A86DD1A4()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A8D0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A8D0 = v0;
  }
}

void sub_1A86DD280()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B5D8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B5D8 = v0;
  }
}

uint64_t sub_1A86DD354()
{
  if (IMIsRunningInUnitTesting())
  {
    result = 0;
  }

  else if (_os_feature_enabled_impl())
  {
    result = 1;
  }

  else
  {
    result = IMGetCachedDomainBoolForKeyWithDefaultValue();
  }

  byte_1EB3094C8 = result;
  return result;
}

void sub_1A86DD3F8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C9A38 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C9A38 = v0;
  }
}

void sub_1A86DD4DC()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB3094F8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB3094F8 = v0;
  }
}

void sub_1A86DD5B8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB3094A8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB3094A8 = v0;
  }
}

void sub_1A86DD694()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B5E8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B5E8 = v0;
  }
}

void sub_1A86DD770()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C9808 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C9808 = v0;
  }
}

void sub_1A86DD84C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C9628 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C9628 = v0;
  }
}

void sub_1A86DD928()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B5F8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B5F8 = v0;
  }
}

void sub_1A86DDA04()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B608 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B608 = v0;
  }
}

void sub_1A86DDAE0()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B618 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B618 = v0;
  }
}

void sub_1A86DDBC0()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B628 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B628 = v0;
  }
}

void sub_1A86DDC9C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB309368 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309368 = v0;
  }
}

void sub_1A86DDD78()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB309358 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309358 = v0;
  }
}

void sub_1A86DDE54()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B638 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B638 = v0;
  }
}

void sub_1A86DDF30()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B648 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B648 = v0;
  }
}

void sub_1A86DE00C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C97E0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C97E0 = v0;
  }
}

void sub_1A86DE0E8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B650 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B650 = v0;
  }
}

void sub_1A86DE1C4()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B660 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B660 = v0;
  }
}

void sub_1A86DE2A0()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B670 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B670 = v0;
  }
}

void sub_1A86DE37C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B680 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B680 = v0;
  }
}

void sub_1A86DE458()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B690 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B690 = v0;
  }
}

void sub_1A86DE534()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B6A0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B6A0 = v0;
  }
}

void sub_1A86DE610()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B6B0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B6B0 = v0;
  }
}

void sub_1A86DE6F0()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB309418 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309418 = v0;
  }
}

uint64_t sub_1A86DE7C4()
{
  IMSharedHelperDeviceIsiPad();
  result = _os_feature_enabled_impl();
  byte_1EB30B6C0 = result;
  return result;
}

void sub_1A86DE848()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B6D0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B6D0 = v0;
  }
}

uint64_t sub_1A86DE970()
{
  v0 = objc_alloc_init(IMSenderIdentityManager);
  qword_1ED8CA3B8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A86DF554()
{
  qword_1ED8CA2A8 = MEMORY[0x1AC570AA0](@"CNContactStore", @"Contacts");
  result = MEMORY[0x1AC570AA0](@"CNGeminiHandle", @"Contacts");
  qword_1EB3096C8 = result;
  return result;
}

uint64_t sub_1A86E0520()
{
  v0 = objc_alloc_init(IMIDSServiceController);
  qword_1ED8CA3C0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A86E0720()
{
  qword_1EB30B6D8 = MEMORY[0x1AC570AA0](@"BSUIBrandManager", @"BusinessServicesUI");
  v0 = [[IMBrandManager alloc] _init];
  qword_1ED8C9928 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A86E0960(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!*(a1 + 32))
  {
    v9 = v2;
    v14 = [v9 domain];
    if ([v14 isEqualToString:@"com.apple.BusinessServicesUI.BrandManager"])
    {
      v15 = [v9 code];

      if (!v15)
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = *(a1 + 48);
            *buf = 138412290;
            v29 = v17;
            _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Error getting mapItem for business with messageUID: %@ - not found", buf, 0xCu);
          }
        }

        v18 = MEMORY[0x1E696ABC0];
        v19 = *(a1 + 40);
        v24 = *MEMORY[0x1E696AA08];
        v25 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v21 = [v18 errorWithDomain:@"BrandManagerErrorDomain" code:1 userInfo:v20];

        v9 = v21;
LABEL_25:
        (*(*(a1 + 64) + 16))();
LABEL_26:

        return;
      }
    }

    else
    {
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 48);
        *buf = 138412290;
        v29 = v23;
        _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Error getting mapItem for business with messageUID: %@", buf, 0xCu);
      }
    }

    goto LABEL_25;
  }

  if (v2 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      v6 = *(a1 + 32);
      *buf = 138412802;
      v29 = v6;
      v30 = 2112;
      v31 = v4;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Encountered non-fatal error while setting brand %@ for brandURI %@. Error: %@", buf, 0x20u);
    }
  }

  v7 = *(a1 + 64);
  v8 = [IMBrand brandWithBSBrand:*(a1 + 32)];
  (*(v7 + 16))(v7, v8, 0);

  if (*(a1 + 72) == 2)
  {
    v9 = [*(a1 + 56) brandInfoFromBSBrand:*(a1 + 32)];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 48);
        *buf = 138412290;
        v29 = v11;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "ChatBot Brand - Try to cache chatbot brand for %@", buf, 0xCu);
      }
    }

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v26 = @"brandInfo";
    v27 = v9;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v12 postNotificationName:@"__kIMChatBotPropertiesDidChangeNotification" object:0 userInfo:v13];

    goto LABEL_26;
  }
}

void sub_1A86E1188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A86E11A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained brandManagerForType:*(a1 + 64)];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A86E12BC;
    v9[3] = &unk_1E782A120;
    objc_copyWeak(v12, (a1 + 56));
    v7 = *(a1 + 32);
    v8 = *(a1 + 64);
    v10 = v7;
    v12[1] = v8;
    v11 = *(a1 + 48);
    [v4 brandWithURI:v5 usingSim:v6 completion:v9];

    objc_destroyWeak(v12);
  }
}

void sub_1A86E12BC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setBrand:v8 forBrand:*(a1 + 32) forType:*(a1 + 56) error:v5 completion:*(a1 + 40)];
  }
}

void IMGreenTeaMessageReadLog()
{
  v4 = *MEMORY[0x1E69E9840];
  ct_green_tea_logger_create_static();
  CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
  if (CTGreenTeaOsLogHandle)
  {
    v1 = CTGreenTeaOsLogHandle;
    if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
    {
      v2 = 136315138;
      v3 = "Messages";
      _os_log_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_INFO, "Message read by: %s", &v2, 0xCu);
    }
  }
}

void IMGreenTeaMessageDeleteLog()
{
  v4 = *MEMORY[0x1E69E9840];
  ct_green_tea_logger_create_static();
  CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
  if (CTGreenTeaOsLogHandle)
  {
    v1 = CTGreenTeaOsLogHandle;
    if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
    {
      v2 = 136315138;
      v3 = "Messages";
      _os_log_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_INFO, "Message deleted by: %s", &v2, 0xCu);
    }
  }
}

void IMGreenTeaMessageTransmitLog()
{
  v4 = *MEMORY[0x1E69E9840];
  ct_green_tea_logger_create_static();
  CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
  if (CTGreenTeaOsLogHandle)
  {
    v1 = CTGreenTeaOsLogHandle;
    if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
    {
      v2 = 136315138;
      v3 = "Messages";
      _os_log_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_INFO, "Message trasmitted by: %s", &v2, 0xCu);
    }
  }
}

void IMGreenTeaPhoneNumberTransmitLog()
{
  v4 = *MEMORY[0x1E69E9840];
  ct_green_tea_logger_create_static();
  CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
  if (CTGreenTeaOsLogHandle)
  {
    v1 = CTGreenTeaOsLogHandle;
    if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
    {
      v2 = 136315138;
      v3 = "Messages";
      _os_log_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_INFO, "Phone number transmitted by: %s", &v2, 0xCu);
    }
  }
}

void IMGreenTeaReceived2FACode(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  ct_green_tea_logger_create_static();
  CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
  if (CTGreenTeaOsLogHandle)
  {
    v5 = CTGreenTeaOsLogHandle;
    if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = [a1 UTF8String];
      v8 = 2080;
      v9 = [a2 UTF8String];
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Incoming message from: %s -- found token: %s", &v6, 0x16u);
    }
  }
}

void IMGreenTeaAttachmentReadLoggingFormat(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  ct_green_tea_logger_create_static();
  CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
  if (CTGreenTeaOsLogHandle)
  {
    v3 = CTGreenTeaOsLogHandle;
    if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = [a1 UTF8String];
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Attachment read: %s", &v4, 0xCu);
    }
  }
}

void IMGreenTeaAttachmentTransmitLoggingFormat(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  ct_green_tea_logger_create_static();
  CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
  if (CTGreenTeaOsLogHandle)
  {
    v3 = CTGreenTeaOsLogHandle;
    if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = [a1 UTF8String];
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Attachment transmitted: %s", &v4, 0xCu);
    }
  }
}

id sub_1A86E1B24(void *a1)
{
  if ([a1 isEqualToString:?])
  {
    v2 = [a1 copy];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1A86E1B6C(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithArray:a1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 removeObject:{*(*(&v14 + 1) + 8 * i), v14}];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v11 = [v5 allObjects];
    if ([v11 count])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_1A86E1CF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = sub_1A86E1E38;
    v14 = &unk_1E7827E38;
    v7 = v5;
    v15 = v7;
    v8 = v6;
    v16 = v8;
    [v4 enumerateKeysAndObjectsUsingBlock:&v11];
    [v7 removeObjectsForKeys:{v8, v11, v12, v13, v14}];
    if ([v7 count])
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1A86E1E38(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v9];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 __im_setDifferenceBetweenSelfAndObject:v5];
    if (v8)
    {
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
    }

    else
    {
      [*(a1 + 40) addObject:v9];
    }
  }
}

void sub_1A86E2B24(uint64_t a1, int a2, void *a3, double a4, double a5)
{
  v11 = a3;
  if (v11 || !a2)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v10 = *(*(a1 + 48) + 8);
    *(v10 + 32) = a4;
    *(v10 + 40) = a5;
  }

  dispatch_group_leave(*(a1 + 32));
}

IMMessageNotificationTimeManager *sub_1A86E4944()
{
  result = objc_alloc_init(IMMessageNotificationTimeManager);
  qword_1ED8CA3C8 = result;
  return result;
}

void sub_1A86E5920(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Invalidated unsuspend assertion", v3, 2u);
    }
  }

  [*(a1 + 32) invalidate];
}

void *IMSharedHelperCombinedPluginPayloadDictionaryData(void *a1, void *a2)
{
  if (![a1 length] || !objc_msgSend(a2, "count"))
  {
    return a1;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v4;
  if (a1)
  {
    CFDictionarySetValue(v4, @"__payload__", a1);
  }

  if (a2)
  {
    CFDictionarySetValue(v5, @"__attachments__", a2);
  }

  v6 = JWEncodeDictionary();

  return v6;
}

uint64_t IMSharedHelperPayloadFromCombinedPluginPayloadData(uint64_t a1, void *a2)
{
  v4 = JWDecodeDictionary();
  if (![objc_msgSend(v4 objectForKeyedSubscript:{@"__payload__", "length"}])
  {
    return a1;
  }

  if (a2)
  {
    *a2 = [v4 objectForKeyedSubscript:@"__attachments__"];
  }

  return [v4 objectForKeyedSubscript:@"__payload__"];
}

uint64_t IMSharedHelperCombinedPluginPayloadDictionaryDataWithAttachmentURLs(const void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(theDict, @"__payload__", a1);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v14 = 0;
        v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8 options:1 error:&v14];
        if (v14)
        {
          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v20 = v14;
              v21 = 2112;
              v22 = v8;
              _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "IMSharedHelper IMSharedHelperCombinedPluginPayloadDictionaryDataWithAttachmentURLs fileReadError %@ file %@", buf, 0x16u);
            }
          }

          v9 = [MEMORY[0x1E695DEF0] data];
        }

        if (v4 && v9)
        {
          CFArrayAppendValue(v4, v9);
        }
      }

      v5 = [a2 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v5);
  }

  if (v4)
  {
    CFDictionarySetValue(theDict, @"__attachments__", v4);
  }

  v11 = JWEncodeDictionary();

  return v11;
}

uint64_t IMSharedHelperExtractPayloadURL(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (![a1 length])
  {
    return 0;
  }

  v2 = IMExtensionPayloadUnarchivingClasses();
  v9 = 0;
  v3 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a1 error:&v9];
  if (objc_opt_respondsToSelector())
  {
    [v3 _enableStrictSecureDecodingMode];
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "strict-decoding 005 _enableStrictSecureDecodingMode called", buf, 2u);
      }
    }
  }

  v5 = [v3 decodeObjectOfClasses:v2 forKey:*MEMORY[0x1E696A508]];
  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v11 = v9;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Failed to unarchive payload URL. Error: %@", buf, 0xCu);
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = IMSanitizedURLForIMExtensionPayloadURLKey(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t IMSharedHelperIsMakoURI(void *a1)
{
  result = [a1 length];
  if (result)
  {

    return [a1 isEqualToString:@"urn:biz:e46750f1-3f94-4aba-73ca-1c14fb3adddd"];
  }

  return result;
}

uint64_t IMSharedHelperIsAppleURI(void *a1)
{
  result = [a1 length];
  if (result)
  {

    return [a1 isEqualToString:@"urn:biz:b15ed773-9eed-11e7-baa2-7b88b04daa8e"];
  }

  return result;
}

uint64_t IMSharedHelperEnsureDirectoryExistsAtPath(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if ((result & 1) == 0)
  {
    v2 = [MEMORY[0x1E696AC08] defaultManager];

    return MEMORY[0x1EEE66B58](v2, sel_makeDirectoriesInPath_mode_);
  }

  return result;
}

uint64_t IMSharedHelperMD5DataHashOfFileAtPath(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      buf.A = 138412290;
      *&buf.B = a1;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "About to hash file at path %@", &buf, 0xCu);
    }
  }

  if (!a1)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    LOWORD(buf.A) = 0;
    v9 = "IMSharedHelperMD5HashStringOfFileAtPath nil file path";
    goto LABEL_17;
  }

  v3 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:a1];
  if (!v3)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    LOWORD(buf.A) = 0;
    v9 = "IMSharedHelperMD5HashStringOfFileAtPath could not generate filehandle";
LABEL_17:
    _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, v9, &buf, 2u);
    return 0;
  }

  memset(&buf, 0, sizeof(buf));
  CC_MD5_Init(&buf);
  v4 = objc_autoreleasePoolPush();
  for (i = [v3 readDataOfLength:0x80000]; ; i = objc_msgSend(v3, "readDataOfLength:", 0x80000))
  {
    v6 = i;
    if (!i || ![i length])
    {
      break;
    }

    CC_MD5_Update(&buf, [v6 bytes], objc_msgSend(v6, "length"));
    objc_autoreleasePoolPop(v4);
    v4 = objc_autoreleasePoolPush();
  }

  objc_autoreleasePoolPop(v4);
  v10[0] = 0;
  v10[1] = 0;
  CC_MD5_Final(v10, &buf);
  return [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:16];
}

unsigned __int8 *IMSharedHelperMD5HashOfFileAtPath(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      buf.A = 138412290;
      *&buf.B = a1;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "About to hash file at path %@", &buf, 0xCu);
    }
  }

  if (!a1)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    LOWORD(buf.A) = 0;
    v9 = "IMSharedHelperMD5HashStringOfFileAtPath nil file path";
    goto LABEL_17;
  }

  v3 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:a1];
  if (!v3)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    LOWORD(buf.A) = 0;
    v9 = "IMSharedHelperMD5HashStringOfFileAtPath could not generate filehandle";
LABEL_17:
    _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, v9, &buf, 2u);
    return 0;
  }

  memset(&buf, 0, sizeof(buf));
  CC_MD5_Init(&buf);
  v4 = objc_autoreleasePoolPush();
  for (i = [v3 readDataOfLength:0x80000]; ; i = objc_msgSend(v3, "readDataOfLength:", 0x80000))
  {
    v6 = i;
    if (!i || ![i length])
    {
      break;
    }

    CC_MD5_Update(&buf, [v6 bytes], objc_msgSend(v6, "length"));
    objc_autoreleasePoolPop(v4);
    v4 = objc_autoreleasePoolPush();
  }

  objc_autoreleasePoolPop(v4);
  v10[0] = 0;
  v10[1] = 0;
  CC_MD5_Final(v10, &buf);
  return IMSharedHelperMd5ToString(v10);
}

unsigned __int8 *IMSharedHelperMd5ToString(unsigned __int8 *result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = 0;
    v4[0] = 0;
    v4[1] = 0;
    v5 = 0;
    do
    {
      v2 = *result++;
      v3 = v4 + v1;
      *v3 = a0123456789abcd[v2 >> 4];
      v3[1] = a0123456789abcd[v2 & 0xF];
      v1 += 2;
    }

    while (v1 != 16);
    return [MEMORY[0x1E696AEC0] stringWithCString:v4 encoding:4];
  }

  return result;
}

unsigned __int8 *IMSharedHelperMD5HashPlist(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(&v3, 0, sizeof(v3));
  CC_MD5_Init(&v3);
  if (!a1 || !sub_1A86E66CC(a1, &v3))
  {
    return 0;
  }

  *md = 0;
  v5 = 0;
  CC_MD5_Final(md, &v3);
  return IMSharedHelperMd5ToString(md);
}

uint64_t sub_1A86E66CC(void *a1, CC_MD5_CTX *c)
{
  v17 = *MEMORY[0x1E69E9840];
  CC_MD5_Update(c, "NSDictionary{", 0xDu);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [objc_msgSend(a1 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }

        sub_1A86EA7EC(v9, c);
        CC_MD5_Update(c, ":", 1u);
        if (!sub_1A86EA890([a1 objectForKeyedSubscript:v9], c))
        {
          return 0;
        }

        CC_MD5_Update(c, ",", 1u);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
  CC_MD5_Update(c, "}", 1u);
  return v10;
}

unsigned __int8 *IMSharedHelperMD5OfData(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  *md = 0;
  v3 = 0;
  CC_MD5([a1 bytes], objc_msgSend(a1, "length"), md);
  return IMSharedHelperMd5ToString(md);
}

uint64_t IMSharedHelperMD5OfDataInBytes(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  *md = 0;
  v3 = 0;
  CC_MD5([a1 bytes], objc_msgSend(a1, "length"), md);
  return [MEMORY[0x1E695DEF0] dataWithBytes:md length:16];
}

uint64_t IMSharedHelperCachePathForStickerWithProperties(void *a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = a1;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "pathForStickerWithProperties %@", buf, 0xCu);
    }
  }

  if ([a1 objectForKey:@"shash"] && objc_msgSend(a1, "objectForKey:", @"sid"))
  {
    v5 = [objc_msgSend(IMStickerCacheDirectoryURL() "path")];
    v6 = [objc_msgSend(a1 objectForKey:{@"shash", "lastPathComponent"}];
    v7 = [objc_msgSend(a1 objectForKey:{@"sid", "lastPathComponent"}];
    v8 = [objc_msgSend(v5 stringByAppendingPathComponent:{objc_msgSend(v6, "stringByAppendingFormat:", @"-%@", objc_msgSend(v7, "stringByDeletingPathExtension"))), "stringByAppendingPathComponent:", v7}];
    v9 = v8;
    if (a2)
    {
      v9 = [v8 stringByAppendingPathExtension:@"heic"];
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Resulting path %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "IMSharedHelper ivalid parameters passed in to pathForStickerWithProperties", buf, 2u);
      }
    }

    return 0;
  }

  return v9;
}

void IMSharedHelperDeleteOrphanedStickerMMCSDownloadTokens(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "IMSharedHelperDeleteOrphanedStickerMMCSDownloadTokens", buf, 2u);
    }
  }

  v3 = [a1 stringByExpandingTildeInPath];
  v38 = 0.0;
  v4 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (v38 == 0.0)
  {
    v6 = v4;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (!v7)
    {
      return;
    }

    v9 = *v35;
    *&v8 = 67109120;
    v32 = v8;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        if ([objc_msgSend(v11 pathExtension])
        {
          v12 = [a1 stringByAppendingPathComponent:v11];
          v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v12];
          v14 = v13;
          if (v13)
          {
            [objc_msgSend(v13 objectForKey:{@"sticker-TimeInterval", "doubleValue"}];
            v16 = v15;
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v18 = v17;
            if (IMOSLoggingEnabled())
            {
              v19 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                *buf = v32;
                LODWORD(v41) = 3456000;
                _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Target time difference %d", buf, 8u);
              }
            }

            v20 = v18 - v16;
            v21 = v20 > 0.0 && v20 > 3456000.0;
            v22 = IMOSLoggingEnabled();
            if (v21)
            {
              if (v22)
              {
                v23 = OSLogHandleForIMEventCategory();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v41 = v12;
                  v42 = 2048;
                  v43 = v20;
                  _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, "Will delete file at location %@ timeDifference %f", buf, 0x16u);
                }
              }

              v33 = 0.0;
              [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
              if (v33 != 0.0)
              {
                if (IMOSLoggingEnabled())
                {
                  v24 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v41 = v12;
                    v42 = 2112;
                    v43 = v33;
                    v25 = v24;
                    v26 = "IMSharedHelperDeleteOrphanedStickerMMCSDownloadTokens could not delete file path %@ error %@";
                    goto LABEL_38;
                  }
                }
              }

LABEL_40:

              continue;
            }

            if (!v22)
            {
              goto LABEL_40;
            }

            v31 = OSLogHandleForIMFoundationCategory();
            if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              goto LABEL_40;
            }

            *buf = 138412546;
            v41 = v12;
            v42 = 2048;
            v43 = v20;
            v25 = v31;
            v26 = "Will NOT delete file at location %@ timeDifference %f";
LABEL_38:
            v30 = 22;
          }

          else
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_40;
            }

            v29 = OSLogHandleForIMFoundationCategory();
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              goto LABEL_40;
            }

            *buf = 138412290;
            v41 = v12;
            v25 = v29;
            v26 = "IMSharedHelperDeleteOrphanedStickerMMCSDownloadTokens Not deleting file %@ unable to read plist";
            v30 = 12;
          }

          _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, v26, buf, v30);
          goto LABEL_40;
        }

        if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = [a1 stringByAppendingPathComponent:v11];
            *buf = 138412290;
            v41 = v28;
            _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "IMSharedHelperDeleteOrphanedStickerMMCSDownloadTokens Not deleting file %@ due to extension mismatch", buf, 0xCu);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (!v7)
      {
        return;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v41 = v3;
      v42 = 2112;
      v43 = v38;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "IMSharedHelperDeleteOrphanedStickerMMCSDownloadTokens error reading contents of directory at path %@ fileError %@", buf, 0x16u);
    }
  }
}

uint64_t IMIsRunningInAutomation()
{
  result = [objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")];
  if (result)
  {

    return IMGetCachedDomainBoolForKey();
  }

  return result;
}

uint64_t IMIsRunningInDebugMode()
{
  result = [objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")];
  if (result)
  {

    return IMGetCachedDomainBoolForKey();
  }

  return result;
}

uint64_t IMIsRunningInPluginCapableClient()
{
  if (qword_1ED8CA338 != -1)
  {
    sub_1A85EB3F4();
  }

  if (byte_1ED8CA130 & 1) != 0 || (IMIsRunningInMessagesUIProcess())
  {
    LOBYTE(v0) = 1;
  }

  else
  {
    if (qword_1ED8CA178 != -1)
    {
      sub_1A85EB3A8();
    }

    v0 = 0xFFFE4102 >> qword_1EB30A9C8;
    if (qword_1EB30A9C8 > 0x1F)
    {
      LOBYTE(v0) = 0;
    }
  }

  return v0 & 1;
}

uint64_t IMIsRunningInFullClient()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return (qword_1EB30A9C8 < 7) & (0x46u >> qword_1EB30A9C8);
}

uint64_t IMIsRunningInCameraClient()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return (qword_1EB30A9C8 < 0x20) & (0x81C00040 >> qword_1EB30A9C8);
}

uint64_t IMBagIntValueWithDefault(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", a2}];
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 longLongValue];
      if (v5 > 0)
      {
        return v5;
      }
    }
  }

  return a1;
}

double IMBagDoubleValueWithDefault(uint64_t a1, double a2)
{
  v3 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", a1}];
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 doubleValue];
      if (v5 > 0.0)
      {
        return v5;
      }
    }
  }

  return a2;
}

uint64_t IMBagBoolValueWithDefault(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", a2}];
  if (!v3)
  {
    return a1;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a1;
  }

  return [v4 BOOLValue];
}

BOOL IMIsRunningInMessagesExtension()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 13;
}

BOOL IMIsRunningInMessagesAssistantExtension()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 14;
}

BOOL IMIsRunningInMessagesTranscriptExtension()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 16;
}

BOOL IMIsRunningInMessagesMacOSX()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 1;
}

BOOL IMIsRunningInSafariPlatformSupport()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 32;
}

BOOL IMIsRunningInMessagesViewService()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 3 || qword_1EB30A9C8 == 4;
}

BOOL IMIsRunningInMessagesNotificationViewService()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 4;
}

BOOL IMIsRunningInShareSheet()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 5;
}

uint64_t IMIsRunningInIntegrationTesting()
{
  if (qword_1EB30B6F0 != -1)
  {
    sub_1A88C5AC4();
  }

  return byte_1EB30B6F8;
}

uint64_t sub_1A86E7740()
{
  result = [objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")];
  if (result)
  {
    if (qword_1ED8CA1D8 != -1)
    {
      sub_1A85EB7B4();
    }

    if (byte_1ED8C9AA8 == 1)
    {
      result = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    }

    else
    {
      result = 0;
    }
  }

  byte_1EB30B6F8 = result;
  return result;
}

uint64_t IMIsRunningInScreenshotTesting()
{
  if (qword_1EB309688 != -1)
  {
    sub_1A88C5AD8();
  }

  return byte_1EB30B700;
}

void sub_1A86E7800()
{
  v8 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")])
  {
    return;
  }

  v0 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  if ((byte_1EB30B700 & 1) == 0)
  {
    v1 = v0;
    v2 = [v0 objectForKeyedSubscript:@"_"];
    if ([v2 containsString:@"xctest"])
    {
      v3 = 1;
LABEL_7:
      byte_1EB30B700 = v3;
      goto LABEL_8;
    }

    byte_1EB30B700 = [v2 containsString:@"CKTestRunner"];
    if ((byte_1EB30B700 & 1) == 0)
    {
      v3 = [objc_msgSend(v1 objectForKeyedSubscript:{@"IMIsRunningInScreenshotTesting", "isEqualToString:", @"YES"}];
      goto LABEL_7;
    }
  }

LABEL_8:
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (byte_1EB30B700)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "IMIsRunningInScreenshotTesting %@", &v6, 0xCu);
    }
  }
}

uint64_t IMIsRunningInScreenshotTesting_IsolatedTranscriptUI()
{
  if (qword_1ED8C97A0 != -1)
  {
    sub_1A88C5AEC();
  }

  return byte_1EB309680;
}

void sub_1A86E79E4()
{
  v6 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")])
  {
    v0 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if ((byte_1EB309680 & 1) == 0)
    {
      v1 = v0;
      byte_1EB309680 = [objc_msgSend(v0 objectForKeyedSubscript:{@"_", "containsString:", @"CKTestRunner"}];
      if ((byte_1EB309680 & 1) == 0)
      {
        byte_1EB309680 = [objc_msgSend(v1 objectForKeyedSubscript:{@"IMIsRunningInScreenshotTesting_IsolatedTranscriptUI", "isEqualToString:", @"YES"}];
      }
    }

    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        if (byte_1EB309680)
        {
          v3 = @"YES";
        }

        else
        {
          v3 = @"NO";
        }

        v4 = 138412290;
        v5 = v3;
        _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "IMIsRunningInScreenshotTesting_IsolatedTranscriptUI %@", &v4, 0xCu);
      }
    }
  }
}

BOOL IMSharedHelperPathIsInStickerCache(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [a1 stringByResolvingAndStandardizingPath];
    v2 = [objc_msgSend(IMStickerCacheDirectoryURL() "path")];
    v3 = [v1 rangeOfString:v2];
    v4 = v3 != 0x7FFFFFFFFFFFFFFFLL;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"NO";
        v9 = 138412802;
        v10 = v1;
        v11 = 2112;
        if (v3 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 = @"YES";
        }

        v12 = v2;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "IMSharedHelperPathIsInStickerCache input path %@, cache %@ result %@", &v9, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Invalid parameters to IMSharedHelperPathIsInStickerCache", &v9, 2u);
      }
    }

    return 0;
  }

  return v4;
}

uint64_t IMSharedHelperAppDisabledBundleIDsForAppCardSwipeGesture()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  if (!v0)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v4 = 138412290;
        v5 = 0;
        _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Invalid parameters serverBag: %@", &v4, 0xCu);
      }
    }

    return 0;
  }

  v1 = [v0 objectForKey:@"messages-app-card-swipe-disabled-bids"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [v1 indexesOfObjectsPassingTest:&unk_1F1BA8508];

  return MEMORY[0x1EEE66B58](v1, sel_objectsAtIndexes_);
}

uint64_t IMSharedHelperStickerAppsTemporarilyDisplayedInSendMenu()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  if (!v0)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v4 = 138412290;
        v5 = 0;
        _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Invalid parameters serverBag: %@", &v4, 0xCu);
      }
    }

    return 0;
  }

  v1 = [v0 objectForKey:@"messages-app-forced-out-of-stickers"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [v1 indexesOfObjectsPassingTest:&unk_1F1BA8528];

  return MEMORY[0x1EEE66B58](v1, sel_objectsAtIndexes_);
}

uint64_t IMDisableSpamReportingAllCountries()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  if (!v0)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = 138412290;
        v5 = 0;
        _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Invalid parameters serverBag: %@", &v4, 0xCu);
      }
    }

    return 0;
  }

  v1 = [v0 objectForKey:@"disable-spam-reporting-all-countries"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v1 BOOLValue];
}

uint64_t IMDisableTrustKitSpamReporting()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  if (!v0)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = 138412290;
        v5 = 0;
        _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Invalid parameters serverBag: %@", &v4, 0xCu);
      }
    }

    return 0;
  }

  v1 = [v0 objectForKey:@"disable-spam-reporting-trustkit"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v1 BOOLValue];
}

uint64_t IMDisableIDSSMSReporting()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  if (!v0)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = 138412290;
        v5 = 0;
        _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Invalid parameters serverBag: %@", &v4, 0xCu);
      }
    }

    return 0;
  }

  v1 = [v0 objectForKey:@"disable-spam-reporting-sms-ids"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v1 BOOLValue];
}

void _IMSharedHelperResetMessageSIMFilteringEnabled()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1A85E5000, v0, OS_LOG_TYPE_INFO, "Resetting SIM Filtering state cache", v1, 2u);
    }
  }

  dword_1EB300258 = -1;
}

uint64_t IMNormalizePhoneNumber(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  IMCountryCodeForIncomingTextMessage();
  v2 = IMPhoneNumberRefCopyForPhoneNumber();
  v3 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412546;
      v7 = a1;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Normalized phone number from: %@ to: %@", &v6, 0x16u);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t sub_1A86E85B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  if (!a3)
  {
    return 0;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"messages://open?groupid=%@", a3];
  if ([a4 length])
  {
    v10 = IMCopyURLEscapedString();
    v9 = [v9 stringByAppendingString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"&body=%@", v10)}];
  }

  if ([a5 length])
  {
    v9 = [v9 stringByAppendingString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"&message-guid=%@", a5)}];
  }

  if ([a6 length])
  {
    v9 = [v9 stringByAppendingString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"&source-id=%@", a6)}];
  }

  v11 = MEMORY[0x1E695DFF8];

  return [v11 URLWithString:v9];
}

uint64_t sub_1A86E86DC(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v2 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(v1, "queryItems")}];
  [v2 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"compose", @"false"}];
  [v1 setQueryItems:v2];

  return [v1 URL];
}

uint64_t sub_1A86E8774(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 scheme];
  v8 = [a1 host];
  if (![v7 isEqualToString:@"https"])
  {
    return 0;
  }

  v9 = [v8 componentsSeparatedByString:@"."];
  if ([v9 count] < 2 || !objc_msgSend(objc_msgSend(v9, "lastObject"), "isEqualToString:", a4))
  {
    return 0;
  }

  v10 = [v9 objectAtIndex:{objc_msgSend(v9, "count") - 2}];

  return [v10 isEqualToString:a3];
}

uint64_t sub_1A86E883C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 scheme];
  v6 = [a1 host];
  result = [v5 isEqualToString:@"https"];
  if (result)
  {

    return [v6 hasSuffix:a3];
  }

  return result;
}

uint64_t IMSharedHelperIsOlderDevice()
{
  if (qword_1ED8C98C8 != -1)
  {
    sub_1A88C5B00();
  }

  return byte_1EB30B708;
}

void sub_1A86E88FC()
{
  v0 = MGCopyAnswer();
  if ([objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:{@"n56ap", 0), "containsObject:", objc_msgSend(v0, "lowercaseString")}])
  {
    byte_1EB30B708 = 1;
  }
}

uint64_t IMSharedHelperIsUnderAutomation()
{
  result = [objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")];
  if (result)
  {

    return IMGetCachedDomainBoolForKey();
  }

  return result;
}

uint64_t sub_1A86E89D8(void *a1, void *a2, void *a3, uint64_t a4, CCHmacAlgorithm a5)
{
  CCHmac(a5, [a2 UTF8String], objc_msgSend(a2, "lengthOfBytesUsingEncoding:", 4), objc_msgSend(a1, "UTF8String"), objc_msgSend(a1, "lengthOfBytesUsingEncoding:", 4), a3);
  v7 = [objc_msgSend(MEMORY[0x1E695DEF0] dataWithBytes:a3 length:{a4), "__imHexString"}];

  return [v7 lowercaseString];
}

uint64_t IMSharedHelperHMACSHA256(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a1 length] && objc_msgSend(a2, "length"))
  {
    memset(v6, 0, sizeof(v6));
    return sub_1A86E89D8(a1, a2, v6, 32, 2u);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LODWORD(v6[0]) = 138412546;
        *(v6 + 4) = a1;
        WORD6(v6[0]) = 2112;
        *(v6 + 14) = a2;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "IMSharedHelperHMACSHA256: Invalid parameters %@ %@ ", v6, 0x16u);
      }
    }

    return 0;
  }
}

BOOL IMIsRunningInImagent()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 10;
}

BOOL IMIsRunningInGameCenter()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 12;
}

uint64_t __IMSharedHelperCheckPersistMergeID()
{
  v0 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", @"madrid-dont-persist-mergeid", "BOOLValue"}];
  if (v0)
  {
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_INFO, "Not persisting merge ID due to server overrride", buf, 2u);
      }
    }
  }

  v2 = v0 ^ 1u;
  if ([objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")] && IMGetDomainBoolForKeyWithDefaultValue())
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Not persisting merge ID due to user defaults override", v5, 2u);
      }
    }

    return 0;
  }

  return v2;
}

uint64_t IMSharedHelperPersistMergeID()
{
  if (qword_1ED8C96C0 != -1)
  {
    sub_1A88C5B14();
  }

  return byte_1EB300268;
}

uint64_t sub_1A86E8DB4()
{
  result = __IMSharedHelperCheckPersistMergeID();
  byte_1EB300268 = result;
  return result;
}

BOOL IMMergeNamedGroups()
{
  v0 = 1;
  v1 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", @"merge-named-groups-version"}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = [v1 unsignedIntegerValue] < 2;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A86E8EBC;
  v3[3] = &unk_1E782A200;
  v4 = v0;
  v3[4] = v1;
  if (qword_1EB30A938 != -1)
  {
    dispatch_once(&qword_1EB30A938, v3);
  }

  return v0;
}

void sub_1A86E8EBC(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 32);
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
      v6 = @"NO";
      v7 = 138412802;
      if (v3)
      {
        v6 = @"YES";
      }

      v8 = v6;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Server enables named group merging? %@ {serverBagValue: %@ maximum: %@}", &v7, 0x20u);
    }
  }
}

double IMSharedHelperMessagePriorityTimeout()
{
  if (qword_1EB309658 != -1)
  {
    sub_1A88C5B28();
  }

  return *&qword_1EB301F10;
}

uint64_t sub_1A86E9048()
{
  if (![objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")] || (v0 = IMGetCachedDomainValueForKey()) == 0)
  {
    v0 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", @"message-priority-timeout"}];
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [v0 doubleValue];
    qword_1EB301F10 = v2;
  }

  return result;
}

double IMSharedHelperReadMessagePriorityTimeout()
{
  if (qword_1EB30A558 != -1)
  {
    sub_1A88C5B3C();
  }

  return *&qword_1EB301F18;
}

uint64_t sub_1A86E9118()
{
  if (![objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")] || (v0 = IMGetCachedDomainValueForKey()) == 0)
  {
    v0 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", @"message-priority-timeout-after-read"}];
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [v0 doubleValue];
    qword_1EB301F18 = v2;
  }

  return result;
}

double IMSharedHelperMessagePriorityTimeoutLeeway()
{
  if (qword_1EB30B710 != -1)
  {
    sub_1A88C5B50();
  }

  return *&qword_1EB301F20;
}

uint64_t sub_1A86E91E8()
{
  if (![objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")] || (v0 = IMGetCachedDomainValueForKey()) == 0)
  {
    v0 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", @"message-priority-timeout-leeway"}];
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [v0 doubleValue];
    qword_1EB301F20 = v2;
  }

  return result;
}

uint64_t IMSharedHelperCurrentRegionRequiresKnownSenderForNickname()
{
  if (![+[IMFeatureFlags isCertainRegionsRequireKnownChatForNicknames]|| !sub_1A86E9328() sharedFeatureFlags]
  {
    return 0;
  }

  v0 = [objc_msgSend(objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
  v1 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{0), "objectForKey:", @"name-and-photo-requires-known-sender-country-codes"}];
  if ([v1 count])
  {
    v2 = v1;
  }

  else
  {
    v2 = &unk_1F1BFB078;
  }

  return [v2 containsObject:v0];
}

uint64_t sub_1A86E9328()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return (qword_1EB30A9C8 < 0x22) & (0x20403E83EuLL >> qword_1EB30A9C8);
}

uint64_t IMSharedHelperGroupNameAndPhotoEnabled()
{
  if (![+[IMFeatureFlags isGroupNameAndPhotoDisabledInCertainRegions] sharedFeatureFlags]
  {
    return 1;
  }

  v0 = [objc_msgSend(objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
  v1 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{0), "objectForKey:", @"group-name-and-photo-disallowed-country-codes"}];
  if ([v1 count])
  {
    v2 = v1;
  }

  else
  {
    v2 = &unk_1F1BFB090;
  }

  return [v2 containsObject:v0] ^ 1;
}

uint64_t IMSharedHelperGroupNameAndPhotoRequiresParticipantContact()
{
  result = [+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags isCertainRegionsRequireContactForGroupNameAndPhotoEnabled];
  if (result)
  {
    v1 = [objc_msgSend(objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
    v2 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{0), "objectForKey:", @"group-name-and-photo-requires-contact-country-codes"}];
    if ([v2 count])
    {
      v3 = v2;
    }

    else
    {
      v3 = &unk_1F1BFB0A8;
    }

    return [v3 containsObject:v1];
  }

  return result;
}

BOOL sub_1A86E94A8()
{
  v0 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", @"always-show-nickname-banners-version"}];
  v1 = v0;
  v2 = !v0 || ![v0 unsignedIntegerValue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A86E957C;
  v4[3] = &unk_1E782A200;
  v5 = v2;
  v4[4] = v1;
  if (qword_1EB30A528 != -1)
  {
    dispatch_once(&qword_1EB30A528, v4);
  }

  return v2;
}

void sub_1A86E957C(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 32);
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
      v6 = @"NO";
      v7 = 138412802;
      if (v3)
      {
        v6 = @"YES";
      }

      v8 = v6;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Server says we should always show nickname banners? %@ {serverbagValue: %@ version: %@}", &v7, 0x20u);
    }
  }
}

BOOL IMSharedHelperAlwaysShowNicknameBanners()
{
  result = sub_1A86E94A8();
  if (result)
  {

    return IMSharedHelperNickNameEnabled();
  }

  return result;
}

uint64_t IMSharedHelperContactsBasedMergingEnabled()
{
  if (qword_1ED8C9970 != -1)
  {
    sub_1A88C5B64();
  }

  return byte_1EB300788;
}

void sub_1A86E9738()
{
  v4 = *MEMORY[0x1E69E9840];
  byte_1EB300788 = IMGetDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      if (byte_1EB300788)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      v2 = 138412290;
      v3 = v1;
      _os_log_impl(&dword_1A85E5000, v0, OS_LOG_TYPE_INFO, "Contacts based merging is enabled %@", &v2, 0xCu);
    }
  }
}

uint64_t IMSharedHelperPersistMergeIDMergedChats()
{
  if (qword_1ED8C96B8 != -1)
  {
    sub_1A88C5B78();
  }

  return byte_1EB300261;
}

void sub_1A86E989C()
{
  v4 = *MEMORY[0x1E69E9840];
  byte_1EB300261 = IMGetDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      if (byte_1EB300261)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      v2 = 138412290;
      v3 = v1;
      _os_log_impl(&dword_1A85E5000, v0, OS_LOG_TYPE_INFO, "Persist mergeID merged chats is enabled %@", &v2, 0xCu);
    }
  }
}

uint64_t IMSharedHelperSortUsingReplyToGUIDAlgorithm()
{
  if (qword_1ED8CA338 != -1)
  {
    sub_1A85EB3F4();
  }

  v0 = byte_1ED8CA130;
  return (v0 | IMGetDomainBoolForKey()) & 1;
}

uint64_t IMSharedHelperDeviceIsSharediPad()
{
  v0 = [MEMORY[0x1E69DF068] sharedManager];

  return MEMORY[0x1EEE66B58](v0, sel_isSharedIPad);
}

uint64_t IMSharedHelperShouldAdjustTimestampOfResentMessages()
{
  if (qword_1ED8C96B0 != -1)
  {
    sub_1A88C5B8C();
  }

  return byte_1ED8C96A8;
}

uint64_t sub_1A86E9AEC()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v1 = [v0 objectForKey:@"allowed-app-retry-version"];
  if (v1)
  {
    v2 = v1;
    if ([v1 unsignedIntegerValue] <= 2)
    {
      if (IMOSLoggingEnabled())
      {
        v3 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v7 = 138412546;
          v8 = v2;
          v9 = 2112;
          v10 = &unk_1F1BFA7A8;
          _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Server says we should send oe key on message retry {serverbagValue: %@ version: %@}", &v7, 0x16u);
        }
      }

      byte_1ED8C96A8 = 1;
    }
  }

  v4 = [v0 objectForKey:@"allowed-app-retry-time-sec"];
  if (v4)
  {
    v5 = [v4 integerValue] > 0;
  }

  else
  {
    v5 = 0;
  }

  byte_1ED8C96A8 &= v5;
  result = IMGetDomainBoolForKeyWithDefaultValue();
  byte_1ED8C96A8 = (byte_1ED8C96A8 | result) & 1;
  return result;
}

double IMSharedHelperRetryTimeout()
{
  if (qword_1EB309650 != -1)
  {
    sub_1A88C5BA0();
  }

  v0 = IMGetDomainIntForKey();
  if (!v0)
  {
    return *&qword_1EB301F28;
  }

  result = v0;
  *&qword_1EB301F28 = v0;
  return result;
}

void *sub_1A86E9CC8()
{
  result = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", @"allowed-app-retry-time-sec"}];
  if (result)
  {
    result = [result doubleValue];
    qword_1EB301F28 = v1;
  }

  return result;
}

uint64_t IMSharedHelperBusinessAllowlist()
{
  if (qword_1EB30B720 != -1)
  {
    sub_1A88C5BB4();
  }

  return qword_1EB30B718;
}

uint64_t sub_1A86E9D48()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"urn:biz:b15ed773-9eed-11e7-baa2-7b88b04daa8e", @"urn:biz:55d74f63-6caf-11e7-8569-c753b1bff6fa", @"urn:biz:597b5bf3-672f-11e7-adb7-7b88b04daa8e", @"urn:biz:705c53d3-8cf3-11e7-a70c-c753b1bff6fa", @"urn:biz:71a35d53-8cf4-11e7-a70c-c753b1bff6fa", @"urn:biz:84ac37b0-8cf3-11e7-a70c-c753b1bff6fa", @"urn:biz:8f509023-8cf4-11e7-a70c-c753b1bff6fa", @"urn:biz:9ba45833-8cf3-11e7-a70c-c753b1bff6fa", @"urn:biz:b00f1713-8cf3-11e7-a70c-c753b1bff6fa", @"urn:biz:bb4690d3-672e-11e7-adb7-7b88b04daa8e", @"urn:biz:c6da1a13-cbde-11e7-ae91-c560a982710b", @"urn:biz:cf567ab3-6cae-11e7-8569-c753b1bff6fa", 0}];
  qword_1EB30B718 = result;
  return result;
}

BOOL IMSharedHelperCatalystRunningOnDefaultScale()
{
  v0 = IMGetCachedDomainValueForKey();
  if (!v0)
  {
    return 1;
  }

  [v0 floatValue];
  return v1 == 1.0;
}

uint64_t IMSharedHelperExternalLocationForFile(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [a2 im_lastPathComponent];
  v4 = [a1 hash];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x", v4];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02d", v4 & 0xF];
  if ([v3 length] && objc_msgSend(a1, "length"))
  {
    v7 = [objc_msgSend(objc_msgSend(objc_msgSend(@"/var/mobile/Library/MessagesMetaData" stringByAppendingPathComponent:{v5), "stringByAppendingPathComponent:", v6), "stringByAppendingPathComponent:", objc_msgSend(a1, "im_lastPathComponent")), "stringByAppendingPathComponent:", v3}];
  }

  else
  {
    v7 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = a1;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Resulting path %@   for transfer: %@", buf, 0x16u);
    }
  }

  return [v7 stringByExpandingTildeInPath];
}

uint64_t IMSharedHelperGet_IMDaemonRequestConnectionWithSync()
{
  if (qword_1ED8C9BE8 != -1)
  {
    sub_1A88C5BC8();
  }

  return qword_1ED8C9BF0;
}

void sub_1A86EA00C()
{
  qword_1ED8C9BF0 = MEMORY[0x1AC570AB0]("IMDaemonRequestConnectionWithSync", @"IMFoundation");
  if (!qword_1ED8C9BF0 && IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1A85E5000, v0, OS_LOG_TYPE_INFO, "Unable to weak link IMDaemonRequestConnectionWithSync", v1, 2u);
    }
  }
}

uint64_t IMSharedHelperGet_IMXPCCreateServerConnectionWithQueue()
{
  if (qword_1ED8C9BD8 != -1)
  {
    sub_1A88C5BDC();
  }

  return qword_1ED8C9BE0;
}

void sub_1A86EA104()
{
  qword_1ED8C9BE0 = MEMORY[0x1AC570AB0]("IMXPCCreateServerConnectionWithQueue", @"IMFoundation");
  if (!qword_1ED8C9BE0 && IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1A85E5000, v0, OS_LOG_TYPE_INFO, "Unable to weak link IMXPCCreateServerConnectionWithQueue", v1, 2u);
    }
  }
}

uint64_t IMIsPlugInProxyAMessagesExtensionPoint(void *a1)
{
  v1 = [a1 protocol];
  if ([v1 isEqualToString:@"com.apple.message-payload-provider"])
  {
    return 1;
  }

  else
  {
    return [v1 isEqualToString:@"com.apple.message-payload-provider.highmemory"];
  }
}

uint64_t IMIsRunningIniMessageAppExtension()
{
  if (qword_1EB30A530 != -1)
  {
    sub_1A88C5BF0();
  }

  return byte_1EB309310;
}

uint64_t IMIsRunningIniMessageAppsViewService()
{
  if (qword_1EB30A530 != -1)
  {
    sub_1A88C5BF0();
  }

  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return (qword_1EB30A9C8 == 17) | byte_1EB30B729 & 1u;
}

id IMSharedHelperMissingKeysInStickerUserInfo(void *a1)
{
  v17[11] = *MEMORY[0x1E69E9840];
  v17[0] = @"sid";
  v17[1] = @"pid";
  v17[2] = @"shash";
  v17[3] = @"spw";
  v17[4] = @"sxs";
  v17[5] = @"sys";
  v17[6] = @"ssa";
  v17[7] = @"sro";
  v17[8] = @"sli";
  v17[9] = @"sir";
  v17[10] = @"spv";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:11];
  if (a1)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = [a1 objectForKey:v8];
          if (v9)
          {
            v10 = v9;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v10 length])
            {
              continue;
            }
          }

          [v3 addObject:v8];
        }

        v5 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    return v3;
  }

  return v2;
}

__CFString *IMServiceQueryNameForServiceInternalName(uint64_t a1)
{
  if ([+[IMFeatureFlags isOneChatEnabled] sharedFeatureFlags]
  {
    return @"all";
  }

  else
  {
    return a1;
  }
}

id IMLegacyServiceGUIDFromChatGUID(void *a1)
{
  v1 = a1;
  if ([a1 __im_isParseableChatGUID])
  {
    IMComponentsFromChatGUID();
    return IMCopyGUIDForChat();
  }

  return v1;
}

__CFString *IMIndiaBusinessShortCodeRegex()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  if (v0)
  {
    result = [v0 objectForKey:@"india-business-short-code-regex"];
    if (!result)
    {
      return @"([A-Za-z$]{2})-([-A-Za-z0-9]{3,9})";
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = 138412290;
        v4 = 0;
        _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Invalid parameters serverBag: %@", &v3, 0xCu);
      }
    }

    return 0;
  }

  return result;
}

void *IMSharedHelperCustomAcknowledgementBackwardsCompatibilityEnabled(void *a1)
{
  result = [a1 objectForKey:@"backwards-compat-custom-acknowledgements-version" ofClass:objc_opt_class()];
  if (result)
  {
    return ([result unsignedIntegerValue] != 0);
  }

  return result;
}

uint64_t IMDisableSpamFilteringDebugUI()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  if (v0)
  {
    v1 = [v0 objectForKey:@"disable-spam-filtering-debug-ui" ofClass:objc_opt_class()];

    return [v1 BOOLValue];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = 138412290;
        v5 = 0;
        _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Invalid parameters serverBag: %@", &v4, 0xCu);
      }
    }

    return 0;
  }
}

void sub_1A86EA7EC(void *a1, CC_MD5_CTX *a2)
{
  v4 = [a1 maximumLengthOfBytesUsingEncoding:4];
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4 + 1, 0xA3A28D8DuLL);
    if (v6)
    {
      v7 = v6;
      [a1 getCString:v6 maxLength:v5 + 1 encoding:4];
      v8 = strlen(v7);
      CC_MD5_Update(a2, v7, v8);

      free(v7);
    }
  }
}

uint64_t sub_1A86EA890(void *a1, CC_MD5_CTX *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_1A86EA7EC(a1, a2);
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_1A86EAAB4(a1, a2);
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a1 bytes];
    v5 = [a1 length];
    v6 = a2;
    v7 = v4;
LABEL_7:
    CC_MD5_Update(v6, v7, v5);
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CC_MD5_Update(a2, "NSArray[", 8u);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
LABEL_13:
      v12 = 0;
      while (1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(a1);
        }

        if (!sub_1A86EA890(*(*(&v13 + 1) + 8 * v12), a2))
        {
          return 1;
        }

        CC_MD5_Update(a2, ",", 1u);
        if (v10 == ++v12)
        {
          v10 = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v10)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }

    v7 = "]";
    v6 = a2;
    v5 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  sub_1A86E66CC(a1, a2);
  return 1;
}

uint64_t sub_1A86EAAB4(void *a1, CC_MD5_CTX *a2)
{
  sizep[1] = *MEMORY[0x1E69E9840];
  sizep[0] = 0;
  v4 = [a1 objCType];
  v5 = NSGetSizeAndAlignment(v4, sizep, 0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sizep - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, v6);
  [a1 getValue:v7];
  v8 = strlen(v4);
  CC_MD5_Update(a2, v4, v8);
  CC_MD5_Update(a2, ":", 1u);
  return CC_MD5_Update(a2, v7, sizep[0]);
}

void *sub_1A86EABB8()
{
  result = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (result)
  {
    result = [&unk_1F1BFB130 objectForKeyedSubscript:result];
    if (result)
    {
      result = [result integerValue];
      qword_1EB30A9C8 = result;
    }
  }

  return result;
}

void sub_1A86EAC00()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  if (qword_1EB30A9C8 != 17)
  {
    v0 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v1 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:v0];
    if ([objc_msgSend(v1 "protocol")])
    {
      byte_1EB30B729 = 1;
    }

    else
    {
      v2 = [v1 protocol];
      if ([v2 isEqualToString:@"com.apple.message-payload-provider"])
      {
        v3 = 1;
      }

      else
      {
        v3 = [v2 isEqualToString:@"com.apple.message-payload-provider.highmemory"];
      }

      byte_1EB309310 = v3;
    }
  }
}

os_log_t sub_1A86ECDE8()
{
  result = os_log_create("com.apple.Messages.telemetry", "IMDDatabase");
  qword_1ED8C98D8 = result;
  return result;
}

uint64_t IMDDaemonTelemetryLogHandle()
{
  if (qword_1EB3096B0 != -1)
  {
    sub_1A88C5CC8();
  }

  return qword_1EB3096A8;
}

os_log_t sub_1A86ECE50()
{
  result = os_log_create("com.apple.Messages.telemetry", "Daemon");
  qword_1EB3096A8 = result;
  return result;
}

uint64_t IMSharedUtilitiesTelemetryLogHandle()
{
  if (qword_1EB30B738 != -1)
  {
    sub_1A88C5CDC();
  }

  return qword_1EB30B730;
}

os_log_t sub_1A86ECEB8()
{
  result = os_log_create("com.apple.Messages.telemetry", "SharedUtilities");
  qword_1EB30B730 = result;
  return result;
}

void sub_1A86ED9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = v9;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Caught an exception sending to CoreAnalytics: %@", &a9, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x1A86ED9B0);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1A86EE338()
{
  result = MEMORY[0x1AC570AB0]("FTAWDLogIMessageCloudKitSyncFailed", @"FTAWD");
  off_1EB30B740 = result;
  return result;
}

void sub_1A86EE368(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) signatureWithDomain:@"iMessage" type:*(a1 + 40) subType:*(a1 + 48) subtypeContext:*(a1 + 56) detectedProcess:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] triggerThresholdValues:{"mainBundle"), "bundleIdentifier"), 0}];
  if ([*(a1 + 64) localizedDescription])
  {
    v11 = @"error";
    v12[0] = [*(a1 + 64) localizedDescription];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*(a1 + 32) + 16);
  v5 = *(a1 + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A86EE62C;
  v8[3] = &unk_1E782AEA8;
  v8[4] = v2;
  if ([v4 snapshotWithSignature:v2 duration:v5 event:v3 payload:v8 reply:15.0])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v10 = v2;
        v7 = "Auto Bug Capture took a snapshot for signature %@";
LABEL_11:
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, v7, buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v2;
      v7 = "Auto Bug Capture failed to take snapshot for signature %@";
      goto LABEL_11;
    }
  }
}

void sub_1A86EE560(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A86EE52CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A86EE62C(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = a2;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Received response from Auto Bug Capture for signature %@ - response: %@", &v6, 0x16u);
    }
  }
}

void *sub_1A86EE904()
{
  result = MEMORY[0x1AC570AB0]("FTAWDLogIMessageCloudKitValidatePurgeableAttachment", @"FTAWD");
  off_1EB30B750 = result;
  return result;
}

uint64_t sub_1A86EEED8(uint64_t a1, void *a2, void *a3)
{
  v5 = [*(a1 + 32) _stringForiMessageJunkType:{objc_msgSend(a2, "intValue")}];
  v6 = *(a1 + 40);
  v7 = [a3 stringValue];

  return [v6 setObject:v7 forKey:v5];
}

void *sub_1A86EF1F4()
{
  result = MEMORY[0x1AC570AB0]("ADClientAddValueForScalarKey", @"AggregateDictionary");
  off_1ED8C99B8 = result;
  return result;
}

void *sub_1A86EF224()
{
  result = MEMORY[0x1AC570AB0]("ADClientPushValueForDistributionKey", @"AggregateDictionary");
  off_1ED8C98B8 = result;
  return result;
}

void *sub_1A86EFCE8()
{
  result = MEMORY[0x1AC570AB0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  off_1EB30B760 = result;
  return result;
}

void *sub_1A86EFD18()
{
  result = MEMORY[0x1AC570AB0]("MKCoordinateRegionMakeWithDistance", @"MapKit");
  off_1EB30B770 = result;
  return result;
}

void sub_1A86EFD48(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 138412546;
        *&v12[4] = objc_opt_class();
        *&v12[12] = 2112;
        *&v12[14] = v6;
        v8 = *&v12[4];
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "%@ - Got error back from MKMapSnapshotter: %@", v12, 0x16u);
      }
    }

    v5 = 0;
  }

  v9 = [v5 image];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1A86EFF08()
{
  v0 = dispatch_queue_create(0, 0);
  v1 = qword_1EB30B780;
  qword_1EB30B780 = v0;

  v2 = qword_1EB30B780;
  v3 = dispatch_get_global_queue(0, 0);
  dispatch_set_target_queue(v2, v3);
}

void sub_1A86F037C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1A86F0394()
{
  result = MEMORY[0x1AC570AB0]("CLLocationCoordinate2DMake", @"CoreLocation");
  off_1EB30B790 = result;
  return result;
}

double sub_1A86F03C4()
{
  if (qword_1EB30B7C0 != -1)
  {
    sub_1A88C5DB8();
  }

  return *&xmmword_1EB30B7B0;
}

void sub_1A86F0400(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    MEMORY[0x1AC570AA0](@"BlastDoorLocationCoordinate2D", @"BlastDoor");
    if (objc_opt_isKindOfClass())
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = off_1EB30B790;
    [v9 latitude];
    v12 = v11;
    v13 = [v9 longitude];
    v15 = v10(v13, v12, v14);
    v16 = *(*(a1 + 40) + 8);
    *(v16 + 32) = v15;
    *(v16 + 40) = v17;
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Successfully extracted coordinate from data.", &v20, 2u);
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  v19 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v19)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = v7;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Unable to extract coordinate from data. Error: %@.", &v20, 0xCu);
      }

      goto LABEL_19;
    }
  }

  else if (v19)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "No error but no result.", &v20, 2u);
    }

    goto LABEL_19;
  }

LABEL_20:
  dispatch_group_leave(*(a1 + 32));
}

void *sub_1A86F0860()
{
  result = MEMORY[0x1AC570AB0]("CLLocationCoordinate2DMake", @"CoreLocation");
  off_1EB30B7A0 = result;
  return result;
}

__n128 sub_1A86F0FC8()
{
  result = *MEMORY[0x1AC570AB0]("kCLLocationCoordinate2DInvalid", @"CoreLocation");
  xmmword_1EB30B7B0 = result;
  return result;
}

Class sub_1A86F1000(uint64_t a1)
{
  sub_1A86F1058();
  result = objc_getClass("UIColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EB30B7C8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1A88C5DE0();
    return sub_1A86F1058();
  }

  return result;
}

uint64_t sub_1A86F1058()
{
  v0 = sub_1A86F10B4();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t sub_1A86F10B4()
{
  if (!qword_1EB30B7D0)
  {
    qword_1EB30B7D0 = _sl_dlopen();
  }

  return qword_1EB30B7D0;
}

uint64_t sub_1A86F1184()
{
  result = _sl_dlopen();
  qword_1EB30B7D0 = result;
  return result;
}

uint64_t sub_1A86F11F8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_1EB30B7D8;
  v6 = qword_1EB30B7D8;
  if (!qword_1EB30B7D8)
  {
    v1 = sub_1A86F1058();
    v4[3] = dlsym(v1, "UIGraphicsBeginImageContextWithOptions");
    qword_1EB30B7D8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A86F12CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1A86F12E4(uint64_t a1)
{
  v2 = sub_1A86F1058();
  result = dlsym(v2, "UIGraphicsBeginImageContextWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB30B7D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A86F1334()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_1EB30B7E0;
  v6 = qword_1EB30B7E0;
  if (!qword_1EB30B7E0)
  {
    v1 = sub_1A86F1058();
    v4[3] = dlsym(v1, "UIGraphicsGetImageFromCurrentImageContext");
    qword_1EB30B7E0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A86F1408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1A86F1420(uint64_t a1)
{
  v2 = sub_1A86F1058();
  result = dlsym(v2, "UIGraphicsGetImageFromCurrentImageContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB30B7E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A86F1470()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_1EB30B7E8;
  v6 = qword_1EB30B7E8;
  if (!qword_1EB30B7E8)
  {
    v1 = sub_1A86F1058();
    v4[3] = dlsym(v1, "UIRectFill");
    qword_1EB30B7E8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A86F1544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1A86F155C(uint64_t a1)
{
  v2 = sub_1A86F1058();
  result = dlsym(v2, "UIRectFill");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB30B7E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A86F15AC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_1EB30B7F0;
  v6 = qword_1EB30B7F0;
  if (!qword_1EB30B7F0)
  {
    v1 = sub_1A86F1058();
    v4[3] = dlsym(v1, "UIGraphicsEndImageContext");
    qword_1EB30B7F0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A86F1680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1A86F1698(uint64_t a1)
{
  v2 = sub_1A86F1058();
  result = dlsym(v2, "UIGraphicsEndImageContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB30B7F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void IMInsertSandboxExtensionIntoXPCMessageWithKeyForFileURL(void *a1, void *a2, void *a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  [v9 fileSystemRepresentation];
  v10 = sandbox_extension_issue_file();
  if (v10)
  {
    v11 = v10;
    v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    [v8 UTF8String];
    [v12 UTF8String];
    IMInsertStringsToXPCDictionary();
    free(v11);
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = __error();
      v15 = @"read-write";
      v16 = *v14;
      *buf = 138412802;
      if (a4)
      {
        v15 = @"read";
      }

      v18 = v15;
      v19 = 2112;
      v20 = v9;
      v21 = 1024;
      v22 = v16;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Could not generate sandbox %@ extension for path %@, errno %d", buf, 0x1Cu);
    }
  }
}

uint64_t IMConsumeSandboxExtensionFromXPCMessageWithKey(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  [v4 cStringUsingEncoding:4];
  v5 = IMGetXPCStringFromDictionary();
  if (![v5 length])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Did not receive valid sandbox extension for key %@", &v9, 0xCu);
      }

      goto LABEL_10;
    }

LABEL_11:
    v6 = -1;
    goto LABEL_12;
  }

  [v5 UTF8String];
  v6 = sandbox_extension_consume();
  if (v6 == -1)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Failed to consume sandbox extension for key %@", &v9, 0xCu);
      }

LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

LABEL_12:

  return v6;
}

BOOL IMNSXPCConnectionHasReadAccessToPath(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v10 = 0u;
  v11 = 0u;
  if (v3)
  {
    [v3 auditToken];
  }

  v5 = v4;
  [v4 UTF8String];
  *buf = v10;
  v13 = v11;
  v6 = sandbox_check_by_audit_token();
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *__error();
      *buf = 67109890;
      *&buf[4] = v6;
      *&buf[8] = 1024;
      *&buf[10] = v8;
      *&buf[14] = 1024;
      LODWORD(v13) = &v10;
      WORD2(v13) = 2112;
      *(&v13 + 6) = v4;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Denying access to attachment, (check %d, errno %d) client with audit token: %u not allowed to access request path: %@", buf, 0x1Eu);
    }
  }

  return v6 == 0;
}

uint64_t sub_1A86F3C58()
{
  v0 = objc_alloc_init(objc_opt_class());
  qword_1ED8CA3D8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A86F3DA8()
{
  v0 = objc_alloc_init(IMBatteryStatus);
  qword_1ED8C9688 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A86F553C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A86F5490);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave((v25 - 160));
  _Unwind_Resume(exc_buf);
}

void sub_1A86F5608(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = @"NO";
        if (!v7)
        {
          v9 = @"YES";
        }

        v11 = 67109378;
        v12 = 1;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "BlastDoor processing for preview type %u was successful (%@)", &v11, 0x12u);
      }

LABEL_13:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      v11 = 67109634;
      v12 = 1;
      v13 = 2112;
      if (!v7)
      {
        v10 = @"YES";
      }

      v14 = v10;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "BlastDoor processing for preview type %u was successful (%@) with error (%@)", &v11, 0x1Cu);
    }

    goto LABEL_13;
  }

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_1A86F5BB0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A86F5B58);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A86F5C98()
{
  v0 = objc_alloc_init(IMTranslationMetrics);
  qword_1EB30A420 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void IMProcessPeerPaymentMessageWithPayloadData(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v3 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a1 error:&v11];
  if (objc_opt_respondsToSelector())
  {
    [v3 _enableStrictSecureDecodingMode];
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "strict-decoding 002 _enableStrictSecureDecodingMode called", buf, 2u);
      }
    }
  }

  v5 = [v3 decodeObjectOfClasses:IMExtensionPayloadUnarchivingClasses() forKey:*MEMORY[0x1E696A508]];
  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = v11;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Failed to unarchive surf payment. Error: %@", buf, 0xCu);
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = IMSanitizedURLForIMExtensionPayloadURLKey(v5);
    if (v7)
    {
      if (qword_1EB30B808 != -1)
      {
        sub_1A88C5FF0();
      }

      if (off_1EB30B800)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = IMSanitizedSessionIdentifierForIMExtensionPayloadUserSessionIdentifierKey(v5);
        if (v9)
        {
          [v8 setObject:v9 forKey:@"sessionIdentifier"];
        }

        if (a2)
        {
          [v8 setObject:a2 forKey:@"messageGUID"];
        }

        off_1EB30B800(v7, v8, v9);
      }

      else if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Failed to link PKPeerPaymentProcessMessageWithDataURLAndProperties", buf, 2u);
        }
      }
    }
  }
}

void sub_1A86F5FEC(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, uint64_t a12)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A86F5FA4);
  }

  JUMPOUT(0x1A86F5FE4);
}

uint64_t IMSanitizedURLForIMExtensionPayloadURLKey(void *a1)
{
  v1 = [a1 objectForKey:@"URL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_1A86F6200()
{
  result = MEMORY[0x1AC570AB0]("PKPeerPaymentProcessMessageWithDataURLAndProperties", @"PassKitCore");
  off_1EB30B800 = result;
  return result;
}

uint64_t IMSanitizedSessionIdentifierForIMExtensionPayloadUserSessionIdentifierKey(void *a1)
{
  v1 = [a1 objectForKey:@"sessionIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void IMProcessPhotosExtensionMessageWithPayloadData(uint64_t a1)
{
  v1 = IMPhotosShareURLFromPayloadData(a1);
  if (v1)
  {

    sub_1A86F65F0(v1);
  }
}

uint64_t IMPhotosShareURLFromPayloadData(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v1 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a1 error:&v6];
  [v1 setRequiresSecureCoding:1];
  if (objc_opt_respondsToSelector())
  {
    [v1 _enableStrictSecureDecodingMode];
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "strict-decoding 003 _enableStrictSecureDecodingMode called", buf, 2u);
      }
    }
  }

  v3 = [v1 decodeObjectOfClasses:IMExtensionPayloadUnarchivingClasses() forKey:*MEMORY[0x1E696A508]];

  if (!v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return IMSanitizedURLForIMExtensionPayloadURLKey(v3);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Failed to provide photos extension message to PLMessagesSPI. Error: %@", buf, 0xCu);
    }
  }

  return 0;
}

void sub_1A86F6454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, uint64_t a12)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A86F6370);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A86F65F0(uint64_t a1)
{
  if (qword_1EB30B818 != -1)
  {
    sub_1A88C6018();
  }

  v2 = off_1EB30B810;
  if (off_1EB30B810)
  {

    v2(a1, &unk_1F1BA8A68);
  }
}

uint64_t IMDictionaryFromPayloadData(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v1 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a1 error:&v6];
  [v1 setRequiresSecureCoding:1];
  if (objc_opt_respondsToSelector())
  {
    [v1 _enableStrictSecureDecodingMode];
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "strict-decoding 003 _enableStrictSecureDecodingMode called", buf, 2u);
      }
    }
  }

  v3 = [v1 decodeObjectOfClasses:IMExtensionPayloadUnarchivingClasses() forKey:*MEMORY[0x1E696A508]];

  if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v8 = v6;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Failed to provide payload data. error: %@", buf, 0xCu);
      }
    }
  }

  return v3;
}

void sub_1A86F6808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, uint64_t a12)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A86F6730);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMProcessRichLinkMessageWithBody()
{
  v0 = JWDecodeCodableObjectWithStandardAllowlist();
  v1 = *MEMORY[0x1E69A5FB0];
  v2 = [v0 length];

  return [v0 enumerateAttribute:v1 inRange:0 options:v2 usingBlock:{0, &unk_1F1BA8A08}];
}

void sub_1A86F6A04(uint64_t a1, void *a2)
{
  v3 = sub_1A86F7090();
  if ((_IMShouldProcessURLForPhotosExtensionAndSupportedHosts(a2, v3) & 1) != 0 || (v4 = sub_1A86F7090(), sub_1A86F7208(a2, @"photos_sharing", v4)))
  {

    sub_1A86F65F0(a2);
  }
}

uint64_t _IMShouldProcessURLForPhotosExtension(void *a1)
{
  v2 = sub_1A86F7090();

  return _IMShouldProcessURLForPhotosExtensionAndSupportedHosts(a1, v2);
}

void IMProcessGameCenterMessageWithPayloadData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a1 error:&v15];
  if (objc_opt_respondsToSelector())
  {
    [v5 _enableStrictSecureDecodingMode];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "strict-decoding 002 _enableStrictSecureDecodingMode called", &buf, 2u);
      }
    }
  }

  v7 = [v5 decodeObjectOfClasses:IMExtensionPayloadUnarchivingClasses() forKey:*MEMORY[0x1E696A508]];
  if (v15)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Failed to unarchive game center message. Error: %@", &buf, 0xCu);
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      return;
    }

    LOWORD(buf) = 0;
    v13 = "Failed to provide message payload to Game Center. Payload is not a dictionary.";
LABEL_24:
    _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, v13, &buf, 2u);
    return;
  }

  v9 = IMSanitizedURLForIMExtensionPayloadURLKey(v7);
  if (!v9)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      return;
    }

    LOWORD(buf) = 0;
    v13 = "Failed to provide message payload to Game Center. No payload URL.";
    goto LABEL_24;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3052000000;
  v19 = sub_1A8602014;
  v10 = qword_1EB30B820;
  v20 = sub_1A86021F8;
  v21 = qword_1EB30B820;
  if (!qword_1EB30B820)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A86F7634;
    v16[3] = &unk_1E78261C8;
    v16[4] = &buf;
    sub_1A86F7634(v16);
    v10 = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&buf, 8);
  if (objc_opt_respondsToSelector())
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Notifying GKDaemonProxy with URL, senderHandle, and contactID", &buf, 2u);
      }
    }

    [v10 messagesDidReceiveGameCenterURL:v9 senderHandle:a2 contactID:{a3, v15}];
  }

  else if (objc_opt_respondsToSelector())
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Notifying GKDaemonProxy with URL", &buf, 2u);
      }
    }

    [v10 messagesDidReceiveGameCenterURL:{v9, v15}];
  }
}

void sub_1A86F6E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int buf, uint64_t a16)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A86F6E30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A86F7090()
{
  if (qword_1EB309610 != -1)
  {
    sub_1A88C602C();
  }

  v0 = off_1EB309618;
  if (off_1EB309618)
  {

    return v0();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v3 = 0;
        _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Could not link CKValidSharingURLHostnames from CloudKit!", v3, 2u);
      }
    }

    return 0;
  }
}

void *sub_1A86F7160()
{
  result = MEMORY[0x1AC570AB0]("CKValidSharingURLHostnames", @"CloudKit");
  off_1EB309618 = result;
  return result;
}

uint64_t _IMShouldProcessURLForPhotosExtensionAndSupportedHosts(void *a1, void *a2)
{
  if (sub_1A86F7208(a1, @"photos", a2))
  {
    return 1;
  }

  return sub_1A86F7208(a1, @"photos_links", a2);
}

uint64_t sub_1A86F7208(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    result = IMOSLoggingEnabled();
    if (!result)
    {
      return result;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "_IsURLForServiceAndSupportedHosts called with nil URL", buf, 2u);
    return 0;
  }

  v6 = [objc_msgSend(a1 "host")];
  v7 = [a1 pathComponents];
  if ([v7 count] < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_msgSend(v7 objectAtIndex:{1), "lowercaseString"}];
  }

  result = [v8 isEqualToString:a2];
  if (!result)
  {
    return result;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v11 = [a3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (!v11)
  {
    return 0;
  }

  v12 = *v15;
  while (2)
  {
    v13 = 0;
    do
    {
      if (*v15 != v12)
      {
        objc_enumerationMutation(a3);
      }

      if ([v6 isEqualToString:*(*(&v14 + 1) + 8 * v13)])
      {
        return 1;
      }

      ++v13;
    }

    while (v11 != v13);
    v11 = [a3 countByEnumeratingWithState:&v14 objects:v19 count:16];
    result = 0;
    if (v11)
    {
      continue;
    }

    break;
  }

  return result;
}

void *sub_1A86F73C0()
{
  result = MEMORY[0x1AC570AB0]("PLDonateMomentShareURL", @"PhotoLibraryServicesCore");
  off_1EB30B810 = result;
  return result;
}

void sub_1A86F73F0(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a2 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = a2;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "PLMessagesSPI PLDonateMomentShareURL returned error: %@", &v4, 0xCu);
    }
  }
}

uint64_t IMSanitizedCaptionForIMExtensionPayloadUserInfoKey(void *a1)
{
  v1 = [a1 objectForKey:@"userInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v2 = [v1 objectForKeyedSubscript:@"caption"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t IMSanitizedAppNameForIMExtensionPayloadUserInfoKey(void *a1)
{
  v1 = [a1 objectForKey:@"an"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t IMSanitizedAppIconDataForIMExtensionPayloadAppIconKey(void *a1)
{
  v1 = [a1 objectForKey:@"ai"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v1 _FTOptionallyDecompressData];
}

Class sub_1A86F7634(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EB30B828)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1A86F7778;
    v4[4] = &unk_1E7826200;
    v4[5] = v4;
    v5 = xmmword_1E782B2C8;
    v6 = 0;
    qword_1EB30B828 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1EB30B828)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("GKDaemonProxy");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_1A88C6040();
  }

  qword_1EB30B820 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_1A86F7778()
{
  result = _sl_dlopen();
  qword_1EB30B828 = result;
  return result;
}

void sub_1A86F8368(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A86F824CLL);
  }

  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1A86F8B68(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 48;
  if (v11)
  {
    v7 = v5;
    if (!v5)
    {
      MEMORY[0x1AC570AA0](@"BlastDoorPassPreview", @"BlastDoor");
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }

      v6 = 40;
      v7 = v11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

LABEL_7:
  dispatch_group_leave(*(a1 + 32));
}

uint64_t IMCSIndexReasonFromIMIndexReason(uint64_t result)
{
  if (result == 7)
  {
    v1 = 7;
  }

  else
  {
    v1 = 0;
  }

  if (result == 6)
  {
    v1 = 6;
  }

  v2 = 3;
  if (result == 5)
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  if (result != 4)
  {
    v2 = v3;
  }

  if (result <= 5)
  {
    v1 = v2;
  }

  v4 = 4;
  if (result != 3)
  {
    v4 = 0;
  }

  if (result == 2)
  {
    v4 = 2;
  }

  if (result == 1)
  {
    v4 = 1;
  }

  if (result <= 3)
  {
    v1 = v4;
  }

  if ((result - 1000) >= 0x11)
  {
    return v1;
  }

  return result;
}

void sub_1A86F8C8C(void *a1)
{
  v1 = a1;
  v2 = 0;
  v4 = v1;
  do
  {
    (*(v1 + 2))(v4, v2);
    v1 = v4;
    ++v2;
  }

  while (v2 != 8);
  for (i = 1000; i != 1017; ++i)
  {
    (*(v1 + 2))(v4, i);
    v1 = v4;
  }
}

__CFString *NSStringFromIMCoreSpotlightIndexReason(uint64_t a1)
{
  if (a1 <= 5)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v2 = @"IMCoreSpotlightIndexReasonClientMigration";
      }

      else if (a1 == 4)
      {
        v2 = @"IMCoreSpotlightIndexReasonClientVersionChange";
      }

      else
      {
        v2 = @"IMCoreSpotlightIndexReasonInconsistentState";
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        v2 = @"IMCoreSpotlightIndexReasonNewContent";
      }

      else if (a1 == 2)
      {
        v2 = @"IMCoreSpotlightIndexReasonMigration";
      }

      else
      {
LABEL_35:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown-%ld", a1];
      }
    }

    else
    {
      v2 = @"IMCoreSpotlightIndexReasonDefault";
    }
  }

  else
  {
    switch(a1)
    {
      case 1000:
        v2 = @"IMCoreSpotlightIndexReasonIncomingMessage";

        break;
      case 1001:
        v2 = @"IMCoreSpotlightIndexReasonCloudImport";

        break;
      case 1002:
        v2 = @"IMCoreSpotlightIndexReasonJunkMigration";

        break;
      case 1003:
        v2 = @"IMCoreSpotlightIndexReasonCollaboration";

        break;
      case 1004:
        v2 = @"IMCoreSpotlightIndexReasonManual";

        break;
      case 1005:
        v2 = @"IMCoreSpotlightIndexReasonRecentlyDeleted";

        break;
      case 1006:
        v2 = @"IMCoreSpotlightIndexReasonPermanentDeletion";

        break;
      case 1007:
        v2 = @"IMCoreSpotlightIndexReasonAttachmentsPurged";

        break;
      case 1008:
        v2 = @"IMCoreSpotlightIndexReasonContactsChanged";

        break;
      case 1009:
        v2 = @"IMCoreSpotlightIndexReasonAppDeleted";

        break;
      case 1010:
        v2 = @"IMCoreSpotlightIndexReasonPreviewGeneration";

        break;
      case 1011:
        v2 = @"IMCoreSpotlightIndexReasonSyndicationUpdate";

        break;
      case 1012:
        v2 = @"IMCoreSpotlightIndexReasonIncomingMessageFromStorage";

        break;
      case 1013:
        v2 = @"IMCoreSpotlightIndexReasonUnreadState";

        break;
      case 1014:
        v2 = @"IMCoreSpotlightIndexReasonBalloonPayloadUpdate";

        break;
      case 1015:
        v2 = @"IMCoreSpotlightIndexReasonContactsAddedOrDeleted";

        break;
      case 1016:
        v2 = @"IMCoreSpotlightIndexReasonMessagesLostAndFound";

        break;
      default:
        if (a1 == 6)
        {
          v2 = @"IMCoreSpotlightIndexReasonFullReindexRequest";
        }

        else
        {
          if (a1 != 7)
          {
            goto LABEL_35;
          }

          v2 = @"IMCoreSpotlightIndexReasonSelectiveReindexRequest";
        }

        break;
    }
  }

  return v2;
}

uint64_t IMCoreSpotlightIndexReasonFromReindexReason(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1A88E14A0[a1 - 1];
  }
}

void sub_1A86F9380()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (v1)
  {
    byte_1EB3092E0 = IMGetCachedDomainBoolForKeyWithDefaultValue();
  }
}

uint64_t sub_1A86FB1A8()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_mobilesms_threadIdentifier" searchable:0 searchableByDefault:0 unique:1 multiValued:0];
  qword_1EB309300 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A86FB244()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_mobilesms_partCount" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
  qword_1EB309320 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A86FB2E0()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_mobilesms_partIndex" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
  qword_1EB30A440 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A86FB37C()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_mobilesms_check_priority" searchable:0 searchableByDefault:0 unique:1 multiValued:0];
  qword_1EB309558 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A86FB418()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_mobilesms_chatStyle" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  qword_1EB309568 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A86FB4B4()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_mobilesms_isChatAutoDonating" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  qword_1EB309588 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A86FB550()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_mobilesms_chatAutoDonatingServerDate" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  qword_1EB309578 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t IMSharedUtilitiesProtoCloudKitEncryptedMessageP2ReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v25 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25 & 0x7F) << v5;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        Data = PBReaderReadData();

        v20 = Data;
        v21 = 8;
      }

      else
      {
        if (v12 != 2)
        {
          if (v12 == 1)
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v26 = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v26 & 0x7F) << v13;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v15;
            }

LABEL_37:
            *(a1 + 24) = v18;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        String = PBReaderReadString();

        v20 = String;
        v21 = 16;
      }

      *(a1 + v21) = v20;
LABEL_38:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A86FCC60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v8 = v9;
    *a5 = 1;
  }
}

void sub_1A86FCE00(uint64_t a1)
{
  v2 = [IMGroupBlocklistManager alloc];
  v5 = [*(a1 + 32) groupsBlocklistFilename];
  v3 = [(IMGroupBlocklistManager *)v2 initFromFile:v5];
  v4 = qword_1EB30B830;
  qword_1EB30B830 = v3;
}

void sub_1A86FFDB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSettings];
}

void sub_1A86FFF88(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(a1 + 32) + 12);
      v4[0] = 67109120;
      v4[1] = v3;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "checkSensitivePhotosAnalyticsEnabled returns: %d", v4, 8u);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 12);
}

void sub_1A87003C0(uint64_t a1, int a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a2)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      if (a3)
      {
        v7 = @"YES";
      }

      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "AnalysisEnabledChanged with commSafetyEnabled: %@, nudityDetectionEnabled: %@", &v12, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained _fetchEnablementGroup];
  v11 = objc_loadWeakRetained((a1 + 32));
  [v11 setEnablementGroup:v10];
}

void sub_1A87005D0()
{
  v0 = +[IMDefaults sharedInstance];
  v3 = [v0 getValueFromDomain:@"com.apple.messages.commsafety" forKey:@"kInternalEnablementGroupOverride"];

  v1 = [v3 integerValue];
  v2 = v1 == 1;
  if (v1 == 2)
  {
    v2 = 2;
  }

  qword_1EB30B838 = v2;
}

uint64_t sub_1A8700660(uint64_t a1)
{
  [*(a1 + 32) _updateSettings];
  v2 = *(a1 + 32);

  return [v2 _connectToFamilyCircle:0];
}

void sub_1A870088C(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) parents];
    [v7 removeAllObjects];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v5 members];
    v9 = 0;
    v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          if ([v13 isMe])
          {
            v9 = [v13 memberType] != -1;
            [*(a1 + 32) setProtectedChildAge:{objc_msgSend(v13, "age")}];
          }

          else if ([v13 isParent])
          {
            v14 = [*(a1 + 32) parents];
            [v14 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v10);
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [*(a1 + 32) parents];
        v17 = [v16 count];
        *buf = 134217984;
        v25 = v17;
        _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Finished updating, found total parents: %lu", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v6;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "IMCommSafetySettingsManager: Error fetching FamilyCircle: %@", buf, 0xCu);
      }
    }

    v9 = 0;
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, v9, v6);
  }
}

void sub_1A8700C68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSettings];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _connectToFamilyCircle:0];
}

void *sub_1A8700DA0(uint64_t a1)
{
  v2 = sub_1A86008C0();
  result = dlsym(v2, "STSettingsDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED8C9878 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A8700DF0()
{
  result = _sl_dlopen();
  qword_1ED8C98C0 = result;
  return result;
}

uint64_t sub_1A8700E64()
{
  result = _sl_dlopen();
  qword_1ED8C98E8 = result;
  return result;
}

BOOL sub_1A870105C(void *a1, unint64_t a2, _BYTE *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (a2 <= 2 && (v26 = 0, [MEMORY[0x1E696AC08] defaultManager], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "fileExistsAtPath:isDirectory:", v5, &v26), v6, objc_msgSend(MEMORY[0x1E696AB08], "invalidCharactersForFileTransferName"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v5, "rangeOfCharacterFromSet:", v8), v8, v9 == 0x7FFFFFFFFFFFFFFFLL))
  {
    if (v26 & v7)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v12 = [v11 contentsOfDirectoryAtPath:v5 error:0];

      LOBYTE(v21.st_dev) = 0;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v14)
      {
        v15 = *v23;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = [v5 stringByAppendingPathComponent:{*(*(&v22 + 1) + 8 * i), *&v21.st_dev}];
            v18 = sub_1A870105C(v17, a2 + 1, &v21);

            if (v18)
            {
              v14 = 1;
              goto LABEL_18;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:

      v19 = 1;
      if (LOBYTE(v21.st_dev) == 1)
      {
        *a3 = 1;
        v19 = v14;
      }

      objc_autoreleasePoolPop(v10);
    }

    else if (v7)
    {
      *a3 = 1;
      memset(&v21, 0, sizeof(v21));
      stat([v5 fileSystemRepresentation], &v21);
      v19 = (v21.st_mode & 0xF000) == 40960;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}