uint64_t sub_1A86347B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 objectForKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 integerValue];
  }

  return a4;
}

uint64_t sub_1A86347FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 objectForKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 unsignedIntegerValue];
  }

  return a4;
}

double sub_1A8634840(void *a1, double a2)
{
  v3 = [a1 objectForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    a2 = v5;
  }

  return a2;
}

float sub_1A863488C(void *a1, float a2)
{
  v3 = [a1 objectForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    a2 = v5;
  }

  return a2;
}

uint64_t sub_1A86348D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 objectForKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 longValue];
  }

  return a4;
}

uint64_t sub_1A863491C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 objectForKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 unsignedLongValue];
  }

  return a4;
}

uint64_t sub_1A8634960(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 objectForKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 longLongValue];
  }

  return a4;
}

uint64_t sub_1A86349A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 objectForKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 unsignedLongLongValue];
  }

  return a4;
}

void sub_1A86353D4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8634F90);
  }

  _Unwind_Resume(a1);
}

void sub_1A8635408(id *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 identifier];
        if ([a1[4] isAcceptedCNID:v10])
        {
          [a1[5] removeObject:v10];
          [a1[6] addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_1A86355F0(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([v5 containsString:@"IMDCNPersonNotFound"] & 1) == 0)
  {
    v6 = [*(a1 + 32) objectForKey:v5];
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if (([v6 containsObject:v7] & 1) == 0)
    {
      [v6 addObject:v7];
    }

    [*(a1 + 32) setObject:v6 forKey:v5];
  }
}

uint64_t IMUTITypeIsSupportedForTranscodeOnSend(const __CFString *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EB309648 != -1)
  {
    sub_1A88C0D68();
  }

  v2 = [qword_1EB309640 arrayByAddingObjectsFromArray:IMSupportedAVUTITypesForOutgoingTranscode()];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (UTTypeConformsTo(a1, *(*(&v7 + 1) + 8 * v6)))
        {
          return 1;
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t IMSupportedImageUTITypesForOutgoingTranscode()
{
  if (qword_1EB309648 != -1)
  {
    sub_1A88C0D68();
  }

  return qword_1EB309640;
}

uint64_t IMSupportedAVUTITypesForOutgoingTranscode()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E6988168] audiovisualTypes];
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v3 = 138412290;
      v4 = v0;
      _os_log_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_INFO, "Supported video utis: %@", &v3, 0xCu);
    }
  }

  return v0;
}

void sub_1A8636808()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = [(__CFArray *)CGImageSourceCopyTypeIdentifiers() mutableCopy];
  v1 = *MEMORY[0x1E6963858];
  v6[0] = *MEMORY[0x1E69638A8];
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [v0 addObject:@"________WBMP_________"];
  [v0 removeObjectsInArray:v2];
  qword_1EB309640 = [v0 copy];

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = qword_1EB309640;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Supported UTI types: %@", &v4, 0xCu);
    }
  }
}

uint64_t IMUTTypeAllowedForRemoteIntentDownload(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (UTTypeConformsTo(result, *MEMORY[0x1E69637F8]) || UTTypeConformsTo(v1, *MEMORY[0x1E6963850]) || UTTypeConformsTo(v1, *MEMORY[0x1E69638E0]) || UTTypeConformsTo(v1, *MEMORY[0x1E6963748]) || (IMUTTypeIsDynamic(v1, v2) & 1) != 0 || UTTypeConformsTo(v1, *MEMORY[0x1E69638D8]))
    {
      return 1;
    }

    else
    {

      return [(__CFString *)v1 isEqualToString:@"public.vlocation"];
    }
  }

  return result;
}

uint64_t IMUTTypeIsWorkout(uint64_t a1)
{
  v2 = IMWorkoutUTITypes();

  return [v2 containsObject:a1];
}

uint64_t IMFileURLIsActuallyAnimated(const __CFURL *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = CGImageSourceCreateWithURL(a1, 0);
  if (v2)
  {
    v3 = v2;
    Type = CGImageSourceGetType(v2);
    if (Type)
    {
      v5 = Type;
      IsSupportedAnimatedImage = IMUTTypeIsSupportedAnimatedImage(Type);
      v7 = IMOSLoggingEnabled();
      if (IsSupportedAnimatedImage)
      {
        if (v7)
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v17 = 138412290;
            v18 = v5;
            _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Sniffed type is animated: %@", &v17, 0xCu);
          }
        }

        if (CGImageSourceGetCount(v3) >= 2)
        {
          v9 = IMImageSourceHasStereoPair(v3) ^ 1;
LABEL_21:
          CFRelease(v3);
          return v9;
        }

LABEL_20:
        v9 = 0;
        goto LABEL_21;
      }

      if (!v7)
      {
        goto LABEL_20;
      }

      v15 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v17 = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = a1;
      v12 = "Sniffed path actually wasn't animated even though file UTI (%@) was possible: %@";
      v13 = v15;
      v14 = 22;
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_20;
      }

      v11 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v17 = 138412290;
      v18 = a1;
      v12 = "Could not sniff type at path %@";
      v13 = v11;
      v14 = 12;
    }

    _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, v12, &v17, v14);
    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = a1;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Could not create imageSource to determine APNG / animated HEIC / animated WebP at path %@", &v17, 0xCu);
    }
  }

  return 0;
}

uint64_t IMImageSourceHasStereoPair(CGImageSource *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = CGImageSourceCopyProperties(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = [(__CFDictionary *)v1 objectForKeyedSubscript:*MEMORY[0x1E696DCF8]];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = *v14;
  v6 = *MEMORY[0x1E696DCD8];
  v7 = *MEMORY[0x1E696DCE8];
  while (2)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v14 != v5)
      {
        objc_enumerationMutation(v3);
      }

      if ([objc_msgSend(*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:{v6), "isEqualToString:", v7}])
      {
        if (!IMOSLoggingEnabled())
        {
          return 1;
        }

        v11 = OSLogHandleForIMFoundationCategory();
        v9 = 1;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "StereoPair detected", v12, 2u);
        }

        return v9;
      }
    }

    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    v9 = 0;
    if (v4)
    {
      continue;
    }

    break;
  }

  return v9;
}

uint64_t IMSupportedAnimatedImageUTTypesSortedByPreference()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = @"public.heic";
  v2[1] = @"public.heics";
  v2[2] = @"public.heif";
  v2[3] = @"public.heif-standard";
  v0 = *MEMORY[0x1E6963860];
  v2[4] = *MEMORY[0x1E69637D8];
  v2[5] = v0;
  v2[6] = @"org.webmproject.webp";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];
}

uint64_t IMUTTypeIsSupportedScreenshot(__CFString *a1)
{
  result = [(__CFString *)a1 length];
  if (result)
  {
    return UTTypeConformsTo(a1, *MEMORY[0x1E6963808]) || UTTypeConformsTo(a1, *MEMORY[0x1E6963860]) || UTTypeConformsTo(a1, @"public.heif") || UTTypeConformsTo(a1, @"public.heic") || UTTypeConformsTo(a1, @"public.heics") || UTTypeConformsTo(a1, @"public.heif-standard") != 0;
  }

  return result;
}

uint64_t IMUTTypeWantsQuicklook(void *a1)
{
  if ([a1 isEqualToString:@"com.apple.watchface"])
  {
    return 0;
  }

  else
  {
    return [IMWorkoutUTITypes() containsObject:a1] ^ 1;
  }
}

uint64_t sub_1A8638490(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 action];
  if (v6 != [v5 action])
  {
    goto LABEL_6;
  }

  v7 = [v4 orderOfPlacementInUI];
  if (v7 <= [v5 orderOfPlacementInUI])
  {
    v9 = [v4 orderOfPlacementInUI];
    if (v9 < [v5 orderOfPlacementInUI])
    {
      v8 = -1;
      goto LABEL_7;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

uint64_t sub_1A8638D28()
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:objc_opt_class() selector:sel__updateFilterParams object:0];

  return [SMSFilterExtensionParams performSelector:sel__updateFilterParams withObject:0 afterDelay:0.0];
}

uint64_t IMConversationListFilterModeEnumerateCases(uint64_t a1)
{
  for (i = 0; i != 27; ++i)
  {
    result = (*(a1 + 16))(a1, i);
  }

  return result;
}

void sub_1A8638FD0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([*(a1 + 32) isCuratedCNID:a3] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  }
}

void sub_1A86392A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8639364;
  v7[3] = &unk_1E7826CF0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void sub_1A8639364(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = IMLogHandleForCategory("IMContactStore+Introductions");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0E60(v2, v3);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Successfully recorded accepted contact events. Processing change events", v6, 2u);
      }
    }

    v5 = [*(a1 + 40) _postChangeEventsForAcceptedIntroductions:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t sub_1A86398B8()
{
  result = MEMORY[0x1AC570AA0](@"CRRecentContactsLibrary", @"CoreRecents");
  qword_1EB30AD38 = result;
  return result;
}

uint64_t IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfoReadFrom(uint64_t a1, void *a2)
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
        v16 = 0;
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

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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

      if ((v11 >> 3) == 1)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v12 = &OBJC_IVAR___IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo__padding;
LABEL_21:
        Data = PBReaderReadData();

        *(a1 + *v12) = Data;
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v12 = &OBJC_IVAR___IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo__messageSummaryInfo;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

__CFString *IMAttachmentFileNameAndExtension(void *a1, uint64_t *a2, __CFString **a3)
{
  v6 = [a1 rangeOfString:@".emoji.png" options:13 range:{0, objc_msgSend(a1, "length")}];
  v7 = [a1 rangeOfString:@".loc.vcf" options:13 range:{0, objc_msgSend(a1, "length")}];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [a1 substringToIndex:v6];
    result = @"png";
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = v7;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [a1 stringByDeletingPathExtension];
    result = [a1 pathExtension];
    if (!a2)
    {
      goto LABEL_7;
    }

LABEL_6:
    *a2 = v9;
    goto LABEL_7;
  }

  v9 = [a1 substringToIndex:v7];
  result = [a1 substringFromIndex:v8 + 1];
  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (a3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t IMMessageGuidFromIMFileTransferGuid(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (([a1 containsString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@", @"at", @"_"}] & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v4 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 138412290;
    v7 = a1;
    v5 = "Cannot find message guid from file transfer guid as it is in temporary format: %@";
    goto LABEL_12;
  }

  v2 = [a1 componentsSeparatedByString:@"_"];
  if (![v2 count])
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v4 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 138412290;
    v7 = a1;
    v5 = "Cannot find message guid from file transfer guid as we cannot find string components separated by _: %@";
LABEL_12:
    _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, v5, buf, 0xCu);
    return 0;
  }

  return [v2 lastObject];
}

uint64_t IMCMMAssetIndexFromIMFileTransferGUID(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (([a1 containsString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@", @"at", @"_"}] & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    *buf = 138412290;
    v8 = a1;
    v4 = "Cannot find attachment index from file transfer guid as it is in temporary format: %@";
    goto LABEL_9;
  }

  v2 = [a1 componentsSeparatedByString:@"_"];
  if ([v2 count] <= 1)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    *buf = 138412290;
    v8 = a1;
    v4 = "Cannot find attachment index from file transfer guid as we cannot find string components separated by _: %@";
LABEL_9:
    _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, v4, buf, 0xCu);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [v2 objectAtIndex:1];

  return [v6 integerValue];
}

uint64_t IMPreviewCachesDirectoryWithAttachmentURL(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 path];
  v3 = IMSMSDirectoryURL();
  v4 = [v2 rangeOfString:{objc_msgSend(v3, "path")}];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v13 = v3;
        v14 = 2112;
        v15 = a1;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Prefix (%@) not found in path (%@), skipping cache path generation", buf, 0x16u);
      }
    }

    return 0;
  }

  v7 = [objc_msgSend(v2 substringFromIndex:{v4 + v5), "stringByDeletingLastPathComponent"}];
  v8 = [MEMORY[0x1E696AEC0] pathWithComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", objc_msgSend(IMCachesDirectoryURL(), "path"), @"Previews", v7, 0)}];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = MEMORY[0x1E695DFF8];

  return [v10 fileURLWithPath:v9 isDirectory:1];
}

void *IMAttachmentPreviewCacheFileURL(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v8 = [IMPreviewCachesDirectoryWithAttachmentURL(a1) path];
  if (![v8 length])
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 138412546;
    v18 = a1;
    v19 = 2112;
    v20 = a3;
    v14 = "Cache url could not be generated for url %@ and extension %@";
    goto LABEL_11;
  }

  v16 = 0;
  IMAttachmentFileNameAndExtension([a1 lastPathComponent], &v16, 0);
  if (!v16)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 138412546;
    v18 = a1;
    v19 = 2112;
    v20 = a3;
    v14 = "Filename could not be found for url %@ and extension %@";
LABEL_11:
    _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, v14, buf, 0x16u);
    return 0;
  }

  v9 = [v16 stringByAppendingFormat:@"%@.%@", a2, a3];
  v21[0] = v8;
  v21[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v11 = [MEMORY[0x1E696AEC0] pathWithComponents:v10];
  v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:0];
  if (a4)
  {
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  }

  return v12;
}

void *IMAttachmentPreviewFileURLFromURLWithSuffix(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = [result pathExtension];
    v5 = [objc_msgSend(v3 "path")];
    v6 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v5, a2), "stringByAppendingPathExtension:", v4];
    v7 = MEMORY[0x1E695DFF8];

    return [v7 fileURLWithPath:v6];
  }

  return result;
}

uint64_t IMAttachmentPersistentPath(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v8 = [a2 pathExtension];
  v9 = [a1 hash];
  if (![v8 length])
  {
    v10 = [objc_msgSend(MEMORY[0x1E69A60D8] "defaultHFSFileManager")];
    if (![v10 length])
    {
      v10 = [objc_msgSend(MEMORY[0x1E69A60D8] "defaultHFSFileManager")];
    }

    if ([v10 length])
    {
      v6 = [v6 stringByAppendingPathExtension:v10];
    }
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x", v9];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02d", v9 & 0xF];
  if ([v6 length] && objc_msgSend(a1, "length"))
  {
    v13 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(@"/var/mobile/Library/SMS/Attachments" "stringByResolvingAndStandardizingPath")];
  }

  else
  {
    v13 = 0;
  }

  v14 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = a1;
    _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_DEFAULT, "Resulting path %@   for transfer: %@", buf, 0x16u);
  }

  return v13;
}

uint64_t sub_1A863B9F8(void *a1, uint64_t a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6 = 0;
  IMAttachmentFileNameAndExtension(a1, &v6, 0);
  v3 = [v6 stringByAppendingFormat:@"-snapshot.%@", a2];
  v7[0] = [IMCachesDirectoryURL() path];
  v7[1] = @"Plugins";
  v7[2] = @"Snapshots";
  v7[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  return [MEMORY[0x1E696AEC0] pathWithComponents:v4];
}

uint64_t IMPluginSnapshotCachesFileURL(void *a1, uint64_t a2)
{
  v2 = sub_1A863B9F8(a1, a2);
  v3 = MEMORY[0x1E695DFF8];

  return [v3 fileURLWithPath:v2 isDirectory:0];
}

uint64_t IMPluginSnapshotExistsInCache(void *a1, uint64_t a2)
{
  v2 = sub_1A863B9F8(a1, a2);
  v3 = [MEMORY[0x1E696AC08] defaultManager];

  return [v3 fileExistsAtPath:v2];
}

uint64_t IMUTITypeIsNotPNG(uint64_t a1)
{
  if (qword_1EB30AD50 != -1)
  {
    sub_1A88C0F54();
  }

  v2 = qword_1EB30AD48;

  return [v2 containsObject:a1];
}

id sub_1A863BB94()
{
  result = [MEMORY[0x1E695DFD8] setWithObjects:{@"public.jpeg", @"com.apple.quicktime", @"com.compuserve.gif", 0}];
  qword_1EB30AD48 = result;
  return result;
}

uint64_t IMUTITypeIsSupportedByPhotos(uint64_t result)
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = +[IMAttachmentUtilities photosSupportedPreviewGeneratorClasses];
    v3 = [MEMORY[0x1E695DFA8] set];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = [*(*(&v9 + 1) + 8 * v7) UTITypes];
          if (v8)
          {
            [v3 addObjectsFromArray:v8];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    return [v3 containsObject:v1];
  }

  return result;
}

BOOL IMUTITypeIsPhoto(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = +[IMImagePreviewGenerator UTITypes];
    return v2 && ([v2 containsObject:v1] & 1) != 0;
  }

  return result;
}

BOOL IMUTITypeIsAnimatedImage(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = +[IMAnimatedImagePreviewGenerator UTITypes];
    return v2 && ([v2 containsObject:v1] & 1) != 0;
  }

  return result;
}

BOOL IMUTITypeIsVideo(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = +[IMMoviePreviewGenerator UTITypes];
    return v2 && ([v2 containsObject:v1] & 1) != 0;
  }

  return result;
}

BOOL IMUTITypeIsFileAttachment(_BOOL8 result)
{
  if (result)
  {
    return !qword_1ED8C9A50 || ![qword_1ED8C9A50 objectForKey:result];
  }

  return result;
}

uint64_t IMLookUpExtensionInCache(uint64_t a1)
{
  if (qword_1ED8C9A40 != -1)
  {
    sub_1A88C0F68();
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

LABEL_3:
  v2 = qword_1ED8C9A48;

  return [v2 objectForKey:a1];
}

id sub_1A863BEAC()
{
  result = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"jpg", @"public.jpeg", @"jpeg", @"com.apple.quicktime-movie", @"mov", @"public.png", @"png", @"com.compuserve.gif", @"gif", 0}];
  qword_1ED8C9A48 = result;
  return result;
}

__CFString *IMUTITypeForExtension(void *a1)
{
  if (![a1 length])
  {
    return *MEMORY[0x1E6963790];
  }

  v2 = [a1 lowercaseString];
  v3 = qword_1ED8C9A50;
  if (!qword_1ED8C9A50)
  {
    sub_1A85EC830();
    v3 = qword_1ED8C9A50;
  }

  result = [v3 objectForKey:v2];
  if (!result)
  {
    v5 = qword_1ED8C9A58;
    if (!qword_1ED8C9A58)
    {
      sub_1A85EC830();
      v5 = qword_1ED8C9A58;
    }

    result = [v5 objectForKey:v2];
    if (!result)
    {
      result = IMLookUpExtensionInCache(v2);
      if (!result)
      {
        PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v2, 0);

        return PreferredIdentifierForTag;
      }
    }
  }

  return result;
}

__CFString *IMUTITypeForFilename(void *a1)
{
  result = [a1 length];
  if (result)
  {
    v3 = 0;
    IMAttachmentFileNameAndExtension(a1, 0, &v3);
    return IMUTITypeForExtension(v3);
  }

  return result;
}

double IMClientPreviewConstraints@<D0>(uint64_t a1@<X8>)
{
  v2 = IMGetCachedDomainValueForKey();
  v3 = IMGetCachedDomainValueForKey();
  v4 = IMGetCachedDomainValueForKey();
  v5 = IMGetCachedDomainValueForKey();
  [v4 floatValue];
  v7 = v6;
  [v5 floatValue];
  v9 = v8;
  *(a1 + 32) = 0;
  [v2 floatValue];
  *a1 = v10;
  [v3 floatValue];
  result = v11;
  *(a1 + 16) = v9;
  *(a1 + 24) = result;
  *(a1 + 8) = v7;
  *(a1 + 32) = 0;
  *(a1 + 34) = 0;
  return result;
}

void IMClientPreviewStickerConstraints(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  IMClientPreviewConstraints(a1);
  *(a1 + 32) = 1;
}

__CFString *IMPreviewExtension()
{
  if (IMSupportsASTC())
  {
    return @"ktx";
  }

  else
  {
    return @"cpbitmap";
  }
}

uint64_t IMUpdateTransferConstraintAndSizeKeys(void *a1, uint64_t a2, double a3, double a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = IMStringFromCGSize(a3, a4);
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Saving IMFileTransfer preview size %@", buf, 0xCu);
    }
  }

  v9 = *(a2 + 16);
  *buf = *a2;
  v22 = v9;
  v23 = *(a2 + 32);
  v10 = IMPreviewConstraintsDictionaryFromConstraint(buf);
  v12 = v10;
  if (a1)
  {
    v13 = [a1 mutableCopy];
    [v13 setObject:v12 forKey:@"pgenszc"];
    *&v14 = a3;
    [v13 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v14), @"pgensw"}];
    *&v15 = a4;
    [v13 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v15), @"pgensh"}];
    v16 = [v13 copy];
  }

  else
  {
    v20[0] = v10;
    *&v11 = a3;
    v20[1] = [MEMORY[0x1E696AD98] numberWithFloat:{v11, @"pgenszc", @"pgensw"}];
    v19[2] = @"pgensh";
    *&v17 = a4;
    v20[2] = [MEMORY[0x1E696AD98] numberWithFloat:v17];
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  }

  return v16;
}

id IMStripTransferConstraintAndSizeKeys(id result)
{
  if (result)
  {
    Mutable = [result mutableCopy];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    [(__CFDictionary *)Mutable removeObjectForKey:@"pgensw"];
    [(__CFDictionary *)Mutable removeObjectForKey:@"pgensh"];
    [(__CFDictionary *)Mutable removeObjectForKey:@"pgenszc"];
    v2 = [(__CFDictionary *)Mutable copy];

    return v2;
  }

  return result;
}

uint64_t sub_1A863C440()
{
  if (qword_1ED8C9860 != -1)
  {
    sub_1A88C0F7C();
  }

  if (qword_1ED8C9858)
  {
    return *qword_1ED8C9858;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A863C484()
{
  result = MEMORY[0x1AC570AB0]("AVAssetPrefersSandboxedParsingOptionKey", @"AVFoundation");
  qword_1ED8C9858 = result;
  return result;
}

id sub_1A863C4B4(char a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E6987BD8];
  v5[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0xFFFFLL];
  v2 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:{1), "mutableCopy"}];
  if ((a1 & 1) == 0 && sub_1A863C440())
  {
    [v2 setObject:MEMORY[0x1E695E118] forKey:sub_1A863C440()];
  }

  return v2;
}

void *IMAVURLAssetOptionsWithExtraOptions(uint64_t a1)
{
  v2 = [sub_1A863C4B4(0) mutableCopy];
  [v2 addEntriesFromDictionary:a1];
  return v2;
}

void *IMAVURLAssetOptionsWithExtraOptionsForWrite(uint64_t a1)
{
  v2 = [sub_1A863C4B4(1) mutableCopy];
  [v2 addEntriesFromDictionary:a1];
  return v2;
}

id _avAssetForURL(void *a1)
{
  if (!a1 || ![a1 isFileURL])
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:a1 options:sub_1A863C4B4(0)];

  return v2;
}

uint64_t sub_1A863C668(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [a1 tracks];
  result = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v10;
    v5 = *MEMORY[0x1E6987608];
    v6 = *MEMORY[0x1E6987508];
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if ([objc_msgSend(v8 "mediaType")] && (objc_msgSend(v8, "hasMediaCharacteristic:", v6) & 1) != 0)
        {
          return 1;
        }

        ++v7;
      }

      while (v3 != v7);
      result = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void *IMIsHEVCWithAlphaVideo(void *a1)
{
  if (a1)
  {
    return sub_1A863C668(a1);
  }

  return a1;
}

uint64_t IMIsHEVCWithAlphaVideoURL(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = _avAssetForURL(a1);
  if (!v1)
  {
    return 0;
  }

  return sub_1A863C668(v1);
}

uint64_t IMEstimateDurationForSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc(MEMORY[0x1E6987E60]);
  v7 = [v6 initWithAsset:a1 presetName:*MEMORY[0x1E6987338]];
  [v7 setFileLengthLimit:a2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A863C890;
  v9[3] = &unk_1E7826DD0;
  v9[4] = a3;
  return [v7 estimateMaximumDurationWithCompletionHandler:v9];
}

uint64_t sub_1A863C890(uint64_t a1, CMTime *a2, uint64_t a3, __n128 a4)
{
  if (a3)
  {
    v5 = *(*(a1 + 32) + 16);
    a4.n128_u64[0] = 30.0;

    return v5(a4);
  }

  else
  {
    v8 = *a2;
    Seconds = CMTimeGetSeconds(&v8);
    result = *(a1 + 32);
    if (result)
    {
      return (*(result + 16))(Seconds);
    }
  }

  return result;
}

uint64_t IMMaxBitDepthForVideo(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = [a1 tracksWithMediaType:*MEMORY[0x1E6987608]];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v14;
  v6 = *MEMORY[0x1E6960000];
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v14 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v8 = [objc_msgSend(*(*(&v13 + 1) + 8 * i) "formatDescriptions")];
      if (v8)
      {
        Extension = CMFormatDescriptionGetExtension(v8, v6);
        if (Extension)
        {
          valuePtr = 0;
          CFNumberGetValue(Extension, kCFNumberIntType, &valuePtr);
          if (valuePtr <= v4)
          {
            v10 = v4;
          }

          else
          {
            v10 = valuePtr;
          }

          if (v4)
          {
            v4 = v10;
          }

          else
          {
            v4 = valuePtr;
          }
        }
      }
    }

    v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v3);
  return v4;
}

void *IMIsAAVideo(void *a1)
{
  result = [a1 tracksWithMediaCharacteristic:*MEMORY[0x1E6987520]];
  if (result)
  {
    return ([result count] != 0);
  }

  return result;
}

void *IMIsAAVideoURL(void *result)
{
  if (result)
  {
    result = [_avAssetForURL(result) tracksWithMediaCharacteristic:*MEMORY[0x1E6987520]];
    if (result)
    {
      return ([result count] != 0);
    }
  }

  return result;
}

uint64_t IMIsSpatialMedia(uint64_t result)
{
  if (result)
  {
    v1 = [objc_alloc(MEMORY[0x1E69C0718]) initWithMediaURL:result detail:1 timeZoneLookup:0 shouldCache:0];

    return MEMORY[0x1EEE66B58](v1, sel_isSpatialMedia);
  }

  return result;
}

CGImageSource *IMIsScreenshotURL(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(a1 "absoluteString")])
  {
    return 0;
  }

  v2 = [a1 path];
  if (![v2 length])
  {
    return 0;
  }

  v3 = CGImageSourceCreateWithURL([MEMORY[0x1E695DFF8] fileURLWithPath:v2], 0);
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  Type = CGImageSourceGetType(v3);
  if (!IMUTTypeIsSupportedScreenshot(Type))
  {
    CFRelease(v4);
    return 0;
  }

  v9 = *MEMORY[0x1E696E0B0];
  v10[0] = MEMORY[0x1E695E110];
  v6 = CGImageSourceCopyPropertiesAtIndex(v4, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1]);
  CFRelease(v4);
  if (!v6)
  {
    return 0;
  }

  v7 = [(__CFDictionary *)v6 objectForKey:*MEMORY[0x1E696D9B8]];
  if (v7)
  {
    v4 = [objc_msgSend(v7 objectForKey:{*MEMORY[0x1E696DB38]), "isEqualToString:", @"Screenshot"}];
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v6);
  return v4;
}

void *IMCheckVideoURLProperties(void *result, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  if (result)
  {
    v7 = _avAssetForURL(result);

    return IMCheckVideoProperties(v7, a2, a3, a4);
  }

  return result;
}

uint64_t IMCheckVideoProperties(uint64_t result, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
      *a4 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [result tracksWithMediaType:*MEMORY[0x1E6987608]];
    result = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    v16 = result;
    if (result)
    {
      v17 = *v21;
      v19 = *MEMORY[0x1E6987508];
      v7 = *MEMORY[0x1E6965F30];
      v8 = *MEMORY[0x1E6960148];
      v18 = *MEMORY[0x1E6960158];
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v20 + 1) + 8 * v9);
          v11 = [v10 formatDescriptions];
          if ([v11 count])
          {
            v12 = 0;
            do
            {
              result = [v11 objectAtIndex:v12];
              v13 = result;
              if (a2)
              {
                result = CMFormatDescriptionGetMediaSubType(result);
                if (result == 1752589105)
                {
                  *a2 = 1;
                }
              }

              if (a3)
              {
                result = [v10 hasMediaCharacteristic:v19];
                if (result)
                {
                  *a3 = 1;
                }
              }

              if (a4)
              {
                Extension = CMFormatDescriptionGetExtension(v13, v7);
                result = [Extension isEqualToString:v8];
                if ((result & 1) != 0 || (result = [Extension isEqualToString:v18], result))
                {
                  *a4 = 1;
                }
              }

              if (!a2 || *a2 == 1) && (!a3 || *a3 == 1) && (!a4 || (*a4))
              {
                return result;
              }
            }

            while ([v11 count] > ++v12);
          }

          ++v9;
        }

        while (v9 != v16);
        result = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        v16 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

uint64_t sub_1A863CF2C()
{
  v0 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", @"md-max-size-for-pasted-movie-write"}];
  if (!v0)
  {
    return 262144000;
  }

  v1 = v0;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 262144000;
  }

  return [v1 unsignedLongValue];
}

uint64_t IMIsHEVCWithAlphaVideoFromData(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [a1 length];
  v5 = [(objc_class *)+[IMAttachmentUtilities __AVDataAssetClass](IMAttachmentUtilities _dataLengthLimit];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v24 = v4;
      v25 = 2048;
      v26 = v5;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Check for using AVDataAsset for pasted item size: %lu limit: %lu", buf, 0x16u);
    }
  }

  if (a1 && v4 && v4 <= v5)
  {
    return sub_1A863C668([MEMORY[0x1E6987E28] assetWithData:a1 contentType:*MEMORY[0x1E69874C0] options:0]);
  }

  v8 = sub_1A863CF2C();
  if (v4 > v8)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 134218240;
    v24 = v4;
    v25 = 2048;
    v26 = v8;
    v10 = "Skipping write of file (too large) size: %lu limit: %lu";
    goto LABEL_12;
  }

  v13 = [a2 im_lastPathComponent];
  v14 = v13;
  if (!v13 || ![v13 length])
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v18 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 138412290;
    v24 = a2;
    v10 = "File name %@ is invalid";
    v11 = v18;
    v12 = 12;
    goto LABEL_21;
  }

  v15 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  v22 = 0;
  if (![a1 writeToFile:v15 options:2 error:&v22])
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 138412546;
    v24 = v15;
    v25 = 2112;
    v26 = v22;
    v10 = "Failed to write file %@, error %@";
LABEL_12:
    v11 = v9;
    v12 = 22;
LABEL_21:
    _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
    return 0;
  }

  v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15];
  v17 = _avAssetForURL(v16);
  if (v17)
  {
    v7 = sub_1A863C668(v17);
  }

  else
  {
    v7 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = @"NO";
      if (v7)
      {
        v21 = @"YES";
      }

      *buf = 138412546;
      v24 = v16;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "File for pasted item: %@, isHEVCWithAlpha: %@", buf, 0x16u);
    }
  }

  [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  return v7;
}

const __CFURL *sub_1A863D34C(const __CFURL *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = CGImageSourceCreateWithURL(a1, 0);
    if (v2)
    {
      v3 = v2;
      v4 = MEMORY[0x1E695E0F8];
      v5 = CGImageSourceCopyPropertiesAtIndex(v2, 0, MEMORY[0x1E695E0F8]);
      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v3, 0, v4);
      if (!ThumbnailAtIndex)
      {
        v11 = 0;
LABEL_21:
        CFRelease(v3);
        CFRelease(v5);
        return v11;
      }

      v7 = ThumbnailAtIndex;
      v8 = [objc_msgSend(-[__CFURL im_lastPathComponent](a1 "im_lastPathComponent")];
      v9 = v8;
      if (v8 && [(__CFURL *)v8 length])
      {
        v10 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
        v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
        v12 = CGImageDestinationCreateWithURL(v11, [*MEMORY[0x1E6982E58] identifier], 1uLL, 0);
        CGImageDestinationAddImage(v12, v7, v5);
        if (!CGImageDestinationFinalize(v12))
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v17 = 138412546;
              v18 = a1;
              v19 = 2112;
              v20 = v10;
              _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Failed to save embedded JPEG from PRO %@ to %@", &v17, 0x16u);
            }
          }

          v11 = 0;
        }

        CGImageRelease(v7);
        CFRelease(v12);
        goto LABEL_21;
      }

      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v17 = 138412546;
          v18 = v9;
          v19 = 2112;
          v20 = a1;
          _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Pro file name %@ is invalid from asset %@", &v17, 0x16u);
        }
      }

      CFRelease(v3);
      CGImageRelease(v7);
      CFRelease(v5);
    }

    else if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = a1;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Unable to create image source from %@ to extract embedded JPEG", &v17, 0xCu);
      }
    }
  }

  return 0;
}

const __CFURL *IMGetEmbeddedFromProIfPossible(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(a1 "absoluteString")])
  {
    return 0;
  }

  v11 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A863D88C;
  v6[3] = &unk_1E7826DF8;
  v6[5] = 0;
  v6[6] = &v7;
  v6[4] = a1;
  [MEMORY[0x1E69C06B8] queryImagePropertiesOfFileAtURL:a1 error:&v11 block:v6];
  if (*(v8 + 24) == 1)
  {
    v2 = sub_1A863D34C(a1);
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v13 = v2;
        v14 = 2112;
        v15 = a1;
        _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Extracted embedded JPEG %@ from pro image at %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v13 = a1;
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Extracted URL %@ with error %@", buf, 0x16u);
      }
    }

    v2 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v2;
}

void sub_1A863D88C(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:{objc_msgSend(*(a1 + 32), "pathExtension")}];
  v5 = [objc_alloc(MEMORY[0x1E69C0718]) initWithImageProperties:a2 contentType:v4 timeZoneLookup:0];
  *(*(*(a1 + 48) + 8) + 24) = [objc_msgSend(MEMORY[0x1E69C0708] hasEmbeddedJPEGSuitableForDerivativesInImageAtURL:*(a1 + 32) metadata:v5 error:{&v9), "BOOLValue"}];
  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        *buf = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Extracted URL %@ with image error %@", buf, 0x16u);
      }
    }
  }

  if (v5)
  {
  }
}

uint64_t sub_1A863DA24()
{
  result = MEMORY[0x1AC570AA0](@"AVDataAsset", @"AVFoundation");
  qword_1EB30AD58 = result;
  return result;
}

BOOL sub_1A863DDE8(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a1];
  v2 = v1 != 0;

  return v2;
}

id sub_1A863DE2C(void *a1)
{
  v1 = [a1 dataUsingEncoding:4 allowLossyConversion:0];
  v2 = IMSharedHelperMD5OfDataInBytes(v1);
  if ([v2 length] >= 0x11)
  {
    v3 = [v2 subdataWithRange:{0, 16}];

    v2 = v3;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v2, "bytes")}];

  return v4;
}

void sub_1A863E1E8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1A863E1F4);
  }

  JUMPOUT(0x1A863E1E0);
}

uint64_t sub_1A863E80C(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

__CFString *IMStringFromAssociatedMessageType(uint64_t a1)
{
  if (a1 > 2005)
  {
    if (a1 <= 3002)
    {
      v1 = @"IMAssociatedMessageTypeAcknowledgmentHeartRemoved";
      v15 = @"IMAssociatedMessageTypeAcknowledgmentThumbsUpRemoved";
      v16 = @"IMAssociatedMessageTypeAcknowledgmentThumbsDownRemoved";
      if (a1 != 3002)
      {
        v16 = 0;
      }

      if (a1 != 3001)
      {
        v15 = v16;
      }

      if (a1 != 3000)
      {
        v1 = v15;
      }

      v4 = @"IMAssociatedMessageTypeAcknowledgmentEmoji";
      v17 = @"IMAssociatedMessageTypeAcknowledgmentSticker";
      if (a1 != 2007)
      {
        v17 = 0;
      }

      if (a1 != 2006)
      {
        v4 = v17;
      }

      v7 = a1 <= 2999;
    }

    else
    {
      v1 = @"IMAssociatedMessageTypeAcknowledgmentEmojiRemoved";
      v8 = @"IMAssociatedMessageTypeAcknowledgmentStickerRemoved";
      v9 = @"IMAssociatedMessageTypeCustomAcknowledgement";
      if (a1 != 4000)
      {
        v9 = 0;
      }

      if (a1 != 3007)
      {
        v8 = v9;
      }

      if (a1 != 3006)
      {
        v1 = v8;
      }

      v4 = @"IMAssociatedMessageTypeAcknowledgmentHaRemoved";
      v10 = @"IMAssociatedMessageTypeAcknowledgmentExclamationRemoved";
      v11 = @"IMAssociatedMessageTypeAcknowledgmentQuestionMarkRemoved";
      if (a1 != 3005)
      {
        v11 = 0;
      }

      if (a1 != 3004)
      {
        v10 = v11;
      }

      if (a1 != 3003)
      {
        v4 = v10;
      }

      v7 = a1 <= 3005;
    }
  }

  else if (a1 <= 1999)
  {
    v1 = @"IMAssociatedMessageTypeBreadcrumbConsumed";
    v12 = @"IMAssociatedMessageTypeSticker";
    v13 = @"IMAssociatedMessageTypeEmojiSticker";
    if (a1 != 1001)
    {
      v13 = 0;
    }

    if (a1 != 1000)
    {
      v12 = v13;
    }

    if (a1 != 3)
    {
      v1 = v12;
    }

    v4 = @"IMAssociatedMessageTypeUnspecified";
    v14 = @"IMAssociatedMessageTypeBreadcrumbUnconsumed";
    if (a1 != 2)
    {
      v14 = 0;
    }

    if (a1)
    {
      v4 = v14;
    }

    v7 = a1 <= 2;
  }

  else
  {
    v1 = @"IMAssociatedMessageTypeAcknowledgmentHa";
    v2 = @"IMAssociatedMessageTypeAcknowledgmentExclamation";
    v3 = @"IMAssociatedMessageTypeAcknowledgmentQuestionMark";
    if (a1 != 2005)
    {
      v3 = 0;
    }

    if (a1 != 2004)
    {
      v2 = v3;
    }

    if (a1 != 2003)
    {
      v1 = v2;
    }

    v4 = @"IMAssociatedMessageTypeAcknowledgmentHeart";
    v5 = @"IMAssociatedMessageTypeAcknowledgmentThumbsUp";
    v6 = @"IMAssociatedMessageTypeAcknowledgmentThumbsDown";
    if (a1 != 2002)
    {
      v6 = 0;
    }

    if (a1 != 2001)
    {
      v5 = v6;
    }

    if (a1 != 2000)
    {
      v4 = v5;
    }

    v7 = a1 <= 2002;
  }

  if (v7)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t IMCounterpartAcknowledgmentTypeForAcknowledgmentType(uint64_t a1)
{
  if (a1 > 2999)
  {
    v1 = 2006;
    v10 = 2007;
    if (a1 != 3007)
    {
      v10 = 0;
    }

    if (a1 != 3006)
    {
      v1 = v10;
    }

    v11 = 2004;
    v12 = 2005;
    if (a1 != 3005)
    {
      v12 = 0;
    }

    if (a1 != 3004)
    {
      v11 = v12;
    }

    if (a1 <= 3005)
    {
      v1 = v11;
    }

    v5 = 2002;
    v13 = 2003;
    if (a1 != 3003)
    {
      v13 = 0;
    }

    if (a1 != 3002)
    {
      v5 = v13;
    }

    v14 = 2000;
    v15 = 2001;
    if (a1 != 3001)
    {
      v15 = 0;
    }

    if (a1 != 3000)
    {
      v14 = v15;
    }

    if (a1 <= 3001)
    {
      v5 = v14;
    }

    v9 = a1 <= 3003;
  }

  else
  {
    v1 = 3006;
    v2 = 3007;
    if (a1 != 2007)
    {
      v2 = 0;
    }

    if (a1 != 2006)
    {
      v1 = v2;
    }

    v3 = 3004;
    v4 = 3005;
    if (a1 != 2005)
    {
      v4 = 0;
    }

    if (a1 != 2004)
    {
      v3 = v4;
    }

    if (a1 <= 2005)
    {
      v1 = v3;
    }

    v5 = 3002;
    v6 = 3003;
    if (a1 != 2003)
    {
      v6 = 0;
    }

    if (a1 != 2002)
    {
      v5 = v6;
    }

    v7 = 3000;
    v8 = 3001;
    if (a1 != 2001)
    {
      v8 = 0;
    }

    if (a1 != 2000)
    {
      v7 = v8;
    }

    if (a1 <= 2001)
    {
      v5 = v7;
    }

    v9 = a1 <= 2003;
  }

  if (v9)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A863ECB8(void *a1)
{
  result = [a1 longLongValue];
  if (result > 2999)
  {
    if ((result - 3000) >= 8 && result != 4000)
    {
      return 0;
    }
  }

  else if ((result - 2000) >= 8 && (result > 3 || result == 1) && (result - 1000) >= 2)
  {
    return 0;
  }

  return result;
}

id sub_1A8640B98(void *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  [a1 slotID];
  v4 = CTSubscriptionSlotAsString();
  v5 = [a1 uuid];
  v6 = [a1 labelID];
  v7 = [a1 label];
  v8 = [a1 phoneNumber];
  v9 = [v2 stringWithFormat:@"<%@ slotID=%s, uuid=%@, labelID=%@, label=%@, phoneNumber=%@>", v3, v4, v5, v6, v7, v8];

  return v9;
}

id sub_1A8640C80(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (![a1 count])
  {
    goto LABEL_5;
  }

  if ([a1 count] != 1)
  {
    v5 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = a1;
    v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 __im_description];
            [v5 appendFormat:@" %@ ", v11];
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    goto LABEL_15;
  }

  v2 = [a1 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_16;
  }

  v4 = [a1 objectAtIndexedSubscript:0];
  v5 = [v4 __im_description];
LABEL_15:

LABEL_16:

  return v5;
}

__CFString *IMChatLookupDomainForServiceName(void *a1)
{
  v1 = a1;
  if (([v1 isEqualToString:IMServiceNameiMessage[0]] & 1) == 0)
  {
    if ([v1 isEqualToString:IMServiceNameRCS[0]])
    {
      v2 = @"RCSConversationID";
      goto LABEL_14;
    }

    if ([v1 isEqualToString:IMServiceNameSMS[0]])
    {
      v2 = @"SMSGroupID";
      goto LABEL_14;
    }

    v3 = IMLogHandleForCategory("ChatLookup");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C111C(v1, v3);
    }

    v4 = v1;
    v5 = [MEMORY[0x1E69A60F0] sharedInstance];
    if ([v5 isInternalInstall])
    {
      v6 = +[IMDefaults sharedInstance];
      v7 = [v6 getBoolFromDomain:@"com.apple.MobileSMS" forKey:@"ChatLookupTapToRadarsEnabled"];

      if (!v7)
      {
LABEL_13:

        v2 = 0;
        goto LABEL_14;
      }

      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Service with name %@ is not supported for chat lookup.", v4];
      [IMTapToRadarDraft submitAndOpenTapToRadarWithNotificationIdentifier:@"com.apple.MobileSMS.ChatLookupAlert" notificationTitle:@"[Internal] Invalid Service For Chat Lookup" notificationBody:@"Please file a radar. This is a serious issue that needs to be identified and addressed." draftTitle:@"[ChatLookup] Invalid Service For Chat Lookup" problemDescription:v5 attachments:MEMORY[0x1E695E0F0] deviceClasses:&unk_1F1BFAC88 classification:@"Serious Bug" reproducibility:@"I Didn't Try"];
    }

    goto LABEL_13;
  }

  v2 = @"iMessageGroupID";
LABEL_14:

  return v2;
}

uint64_t sub_1A86412B4(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v3 = [a1 attributesOfItemAtPath:a3 error:&v8];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
  v5 = v4;
  v6 = -1;
  if (v3 && v4)
  {
    v6 = [v4 longLongValue];
  }

  return v6;
}

void *IMCopySafeNameOfFontFamilyName(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_autoreleasePoolPush();
    v3 = objc_alloc_init(MEMORY[0x1E696AD48]);
    v4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    [v3 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x1E696AB08], "controlCharacterSet")}];
    [v3 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x1E696AB08], "newlineCharacterSet")}];
    [v3 addCharactersInString:{@"&%;:, ()'\\<>@"}];
    if ([v1 rangeOfCharacterFromSet:v3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v1 = [objc_msgSend(v1 componentsSeparatedByCharactersInSet:{v3), "__imFirstObject"}];
    }

    v5 = [objc_msgSend(v1 stringByTrimmingCharactersInSet:{v4), "copy"}];

    objc_autoreleasePoolPop(v2);
    return v5;
  }

  return result;
}

uint64_t IMCopyNormalizedAttributes(void *a1, int a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2 & 1) != 0 || (a3)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a1, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [a1 keyEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          v14 = [a1 objectForKey:v13];
          if (a2)
          {
            v13 = [v13 lowercaseString];
          }

          if (a3)
          {
            v14 = [v14 lowercaseString];
          }

          [v7 setObject:v14 forKey:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    return v7;
  }

  else
  {

    return [a1 copy];
  }
}

uint64_t IMCreateEscapedStringFromString(void *a1, __CFString *a2, __CFString *a3, __CFString *a4, __CFString *a5)
{
  if (!a1)
  {
    return 0;
  }

  v10 = [a1 length];
  v11 = malloc_type_malloc(2 * v10 + 2, 0x1000040BDFB0063uLL);
  [a1 getCharacters:v11];
  v11[v10] = 0;
  v16 = 0;
  sub_1A8630188(v11, 0, &v16, a2, a3, a4, a5);
  if (v16)
  {
    v12 = malloc_type_malloc(2 * v16, 0x1000040BDFB0063uLL);
    sub_1A8630188(v11, v12, &v16, a2, a3, a4, a5);
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [v13 initWithCharactersNoCopy:v12 length:v16 freeWhenDone:1];
  }

  else
  {
    v14 = 0;
  }

  free(v11);
  return v14;
}

id IMCreateSuperFormatStringFromPlainTextString(void *a1)
{
  v1 = [a1 __stringByStrippingControlCharacters];
  v2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v1];
  v4 = [v2 __im_attributedStringByAssigningMessagePartNumbers];

  return v4;
}

id IMCreateSuperFormatStringWithoutFileTransfers(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [a1 mutableCopy];
  if ([v3 length])
  {
    v4 = 0;
    v5 = *MEMORY[0x1E69A5F68];
    do
    {
      if ([objc_msgSend(v3 "string")] == 65532)
      {
        v6 = [v3 attributesAtIndex:v4 effectiveRange:0];
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v7 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v14;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v14 != v9)
              {
                objc_enumerationMutation(a2);
              }

              if ([objc_msgSend(v6 objectForKey:{v5), "isEqualToString:", *(*(&v13 + 1) + 8 * i)}])
              {
                [v3 deleteCharactersInRange:{v4--, 1}];
                goto LABEL_14;
              }
            }

            v8 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }
      }

LABEL_14:
      ++v4;
    }

    while (v4 < [v3 length]);
  }

  v11 = [v3 __im_attributedStringByAssigningMessagePartNumbers];

  return v11;
}

uint64_t IMStringTokenizerFindTokensInString(void *a1, __CFString *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v24.length = [(__CFString *)a2 length];
  v24.location = 0;
  v4 = CFStringTokenizerCreate(0, a2, v24, 4uLL, 0);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (CFStringTokenizerAdvanceToNextToken(v5))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v5);
      length = CurrentTokenRange.length;
      if (!qword_1EB30AD68)
      {
        qword_1EB30AD68 = objc_alloc_init(MEMORY[0x1E696AD48]);
        [qword_1EB30AD68 addCharactersInRange:{39, 1}];
        [qword_1EB30AD68 addCharactersInRange:{8217, 1}];
      }

      v9 = [__CFString rangeOfCharacterFromSet:a2 options:"rangeOfCharacterFromSet:options:range:" range:?];
      v18 = 0u;
      v19 = 0u;
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        length = v9 - CurrentTokenRange.location;
      }

      v20 = 0uLL;
      v21 = 0uLL;
      v10 = [a1 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v17 = v6;
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(a1);
            }

            if ([(__CFString *)a2 rangeOfString:*(*(&v18 + 1) + 8 * i) options:393 range:CurrentTokenRange.location, length]!= 0x7FFFFFFFFFFFFFFFLL && v14 == length)
            {
              v6 = 1;
              goto LABEL_20;
            }
          }

          v11 = [a1 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }

        v6 = v17;
      }

LABEL_20:
      ;
    }

    CFRelease(v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

id IMAttachmentsLogHandle()
{
  if (qword_1EB30AD78 != -1)
  {
    sub_1A88C1194();
  }

  v1 = qword_1EB30AD70;

  return v1;
}

uint64_t sub_1A8641B4C()
{
  v0 = os_log_create("com.apple.Messages", "Attachments");
  qword_1EB30AD70 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMDatabaseLogHandle()
{
  if (qword_1EB30AD88 != -1)
  {
    sub_1A88C11A8();
  }

  v1 = qword_1EB30AD80;

  return v1;
}

uint64_t sub_1A8641BD4()
{
  v0 = os_log_create("com.apple.Messages", "Database");
  qword_1EB30AD80 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMFFSCTLLogHandle()
{
  if (qword_1EB30AD98 != -1)
  {
    sub_1A88C11BC();
  }

  v1 = qword_1EB30AD90;

  return v1;
}

uint64_t sub_1A8641C5C()
{
  v0 = os_log_create("com.apple.Messages", "ffsctl");
  qword_1EB30AD90 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMOffloadingLogHandle()
{
  if (qword_1EB30ADA8 != -1)
  {
    sub_1A88C11D0();
  }

  v1 = qword_1EB30ADA0;

  return v1;
}

uint64_t sub_1A8641CE4()
{
  v0 = os_log_create("com.apple.Messages", "Offloading");
  qword_1EB30ADA0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMFileTransferLogHandle()
{
  if (qword_1EB30ADB8 != -1)
  {
    sub_1A88C11E4();
  }

  v1 = qword_1EB30ADB0;

  return v1;
}

uint64_t sub_1A8641D6C()
{
  v0 = os_log_create("com.apple.Messages", "IMFileTransfer");
  qword_1EB30ADB0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMHandleLogHandle()
{
  if (qword_1EB30ADC8 != -1)
  {
    sub_1A88C11F8();
  }

  v1 = qword_1EB30ADC0;

  return v1;
}

uint64_t sub_1A8641DF4()
{
  v0 = os_log_create("com.apple.Messages", "IMHandle");
  qword_1EB30ADC0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMChatRegistryLogHandle()
{
  if (qword_1EB30ADD8 != -1)
  {
    sub_1A88C120C();
  }

  v1 = qword_1EB30ADD0;

  return v1;
}

uint64_t sub_1A8641E7C()
{
  v0 = os_log_create("com.apple.Messages", "ChatRegistry");
  qword_1EB30ADD0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMLocationLogHandle()
{
  if (qword_1EB30ADE8 != -1)
  {
    sub_1A88C1220();
  }

  v1 = qword_1EB30ADE0;

  return v1;
}

uint64_t sub_1A8641F04()
{
  v0 = os_log_create("com.apple.Messages", "Location");
  qword_1EB30ADE0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMMessagePushHandlerLogHandle()
{
  if (qword_1EB30ADF8 != -1)
  {
    sub_1A88C1234();
  }

  v1 = qword_1EB30ADF0;

  return v1;
}

uint64_t sub_1A8641F8C()
{
  v0 = os_log_create("com.apple.Messages", "MessagePushHandler");
  qword_1EB30ADF0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMCarrierReportJunkLogHandle()
{
  if (qword_1EB30AE08 != -1)
  {
    sub_1A88C1248();
  }

  v1 = qword_1EB30AE00;

  return v1;
}

uint64_t sub_1A8642014()
{
  v0 = os_log_create("com.apple.Messages", "CarrierReportJunk");
  qword_1EB30AE00 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMCoreDuetLogHandle()
{
  if (qword_1EB30AE18 != -1)
  {
    sub_1A88C125C();
  }

  v1 = qword_1EB30AE10;

  return v1;
}

uint64_t sub_1A864209C()
{
  v0 = os_log_create("com.apple.Messages", "IMDIndexing_CoreDuet");
  qword_1EB30AE10 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMDaemonLogHandle()
{
  if (qword_1EB30AE28 != -1)
  {
    sub_1A88C1270();
  }

  v1 = qword_1EB30AE20;

  return v1;
}

uint64_t sub_1A8642124()
{
  v0 = os_log_create("com.apple.Messages", "IMDaemon");
  qword_1EB30AE20 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMDatabaseMessageEventLogHandle()
{
  if (qword_1EB30AE38 != -1)
  {
    sub_1A88C1284();
  }

  v1 = qword_1EB30AE30;

  return v1;
}

uint64_t sub_1A86421AC()
{
  v0 = os_log_create("com.apple.MessagesEvents", "Database");
  qword_1EB30AE30 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id _iMessageTelemetryLogHandle()
{
  if (qword_1ED8C9828 != -1)
  {
    sub_1A88C1298();
  }

  v1 = qword_1EB30AE40;

  return v1;
}

uint64_t sub_1A8642234()
{
  v0 = os_log_create("com.apple.Messages.telemetry", "iMessage");
  qword_1EB30AE40 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id sub_1A8642278()
{
  if (qword_1ED8C9898 != -1)
  {
    sub_1A88C12AC();
  }

  v1 = qword_1ED8C9890;

  return v1;
}

uint64_t sub_1A86422BC()
{
  v0 = os_log_create("com.apple.Messages.telemetry", "Chat");
  qword_1ED8C9890 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

unint64_t _MessageGUIDToSignpostId(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v1];
  if (v2 && [v1 length])
  {
    v5 = 0;
    v6 = 0;
    [v2 getUUIDBytes:&v5];
    v3 = v6 & 0xFFFFFFFFFFFFFFFCLL | 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void _signpostSendMessage(void *a1, int a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = _MessageGUIDToSignpostId(a1);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A8642278();
    v8 = v7;
    if (v7)
    {
      v9 = os_signpost_enabled(v7);
      if (a2)
      {
        if (v9)
        {
          if (a3 >= 0xA)
          {
            v10 = 10;
          }

          else
          {
            v10 = a3;
          }

          v16[0] = 67240192;
          v16[1] = v10;
          v11 = "numberOfFiles=%{public, signpost.telemetry:number1}u enableTelemetry=YES ";
          v12 = v8;
          v13 = OS_SIGNPOST_INTERVAL_BEGIN;
          v14 = v6;
          v15 = 8;
          goto LABEL_11;
        }
      }

      else if (v9)
      {
        LOWORD(v16[0]) = 0;
        v11 = " enableTelemetry=YES ";
        v12 = v8;
        v13 = OS_SIGNPOST_INTERVAL_END;
        v14 = v6;
        v15 = 2;
LABEL_11:
        _os_signpost_emit_with_name_impl(&dword_1A85E5000, v12, v13, v14, "SendMessage", v11, v16, v15);
      }
    }
  }
}

void _signpostSendFileMessage(void *a1, int a2)
{
  v3 = _MessageGUIDToSignpostId(a1);
  if (v3)
  {
    v4 = v3;
    if (IMIsRunningInMessages())
    {
      v5 = sub_1A8642278();
      v6 = v5;
      if (v5)
      {
        v7 = os_signpost_enabled(v5);
        if (a2)
        {
          if (v7)
          {
            v12 = 0;
            v8 = &v12;
            v9 = v6;
            v10 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_9:
            _os_signpost_emit_with_name_impl(&dword_1A85E5000, v9, v10, v4, "SendFileMessage", " enableTelemetry=YES ", v8, 2u);
          }
        }

        else if (v7)
        {
          v11 = 0;
          v8 = &v11;
          v9 = v6;
          v10 = OS_SIGNPOST_INTERVAL_END;
          goto LABEL_9;
        }
      }
    }
  }
}

uint64_t IMUUIDForUUIDString(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3 && (v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3]) != 0)
  {
    v5 = v4;
    [v4 getUUIDBytes:a2];

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

os_log_t sub_1A8642D84()
{
  result = os_log_create("com.apple.Messages", "BlastDoorAttachment");
  qword_1ED8C9A80 = result;
  return result;
}

uint64_t sub_1A8642F24()
{
  result = MEMORY[0x1AC570AA0](@"IMMessagesBlastDoorInterface", @"MessagesBlastDoorSupport");
  qword_1EB30AE50 = result;
  return result;
}

uint64_t sub_1A8643000()
{
  result = [objc_alloc(MEMORY[0x1AC570AA0](@"IMMessagesBlastDoorInterface" @"MessagesBlastDoorSupport"))];
  qword_1ED8CA488 = result;
  return result;
}

uint64_t sub_1A8643040()
{
  result = [objc_alloc(MEMORY[0x1AC570AA0](@"IMMessagesBlastDoorInterface" @"MessagesBlastDoorSupport"))];
  qword_1ED8CA498 = result;
  return result;
}

uint64_t sub_1A8643080()
{
  result = [objc_alloc(MEMORY[0x1AC570AA0](@"IMMessagesBlastDoorInterface" @"MessagesBlastDoorSupport"))];
  qword_1EB30AE60 = result;
  return result;
}

void sub_1A86432E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v19 = [*(v18 + 1672) logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      buf = 0;
      _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_DEFAULT, "Failed generating preview through BlastDoor", &buf, 2u);
    }

    (*(v17 + 16))(v17, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13302 userInfo:0]);
    objc_end_catch();
    JUMPOUT(0x1A86432A8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A864339C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = a2;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_DEFAULT, "Blastdoor response %@ received %@", &v8, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1A86436A8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    v21 = [*(v18 + 1672) logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134218240;
      *(&buf + 4) = v20;
      WORD6(buf) = 2048;
      *(&buf + 14) = v19;
      _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_DEFAULT, "Failed generating workout preview through BlastDoor for maxPxWidth: %f and scale: %f", &buf, 0x16u);
    }

    (*(v17 + 16))(v17, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13302 userInfo:0]);
    objc_end_catch();
    JUMPOUT(0x1A8643670);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A8643A40(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 134218240;
    v8 = a2;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_DEFAULT, "Blastdoor response %p received for preview type: %u", &v7, 0x12u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1A8643D68(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    v21 = [*(v18 + 1672) logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134218240;
      *(&buf + 4) = v20;
      WORD6(buf) = 2048;
      *(&buf + 14) = v19;
      _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_DEFAULT, "Failed generating movie preview through BlastDoor for maxPxWidth: %f and scale: %f", &buf, 0x16u);
    }

    (*(v17 + 16))(v17, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13302 userInfo:0]);
    objc_end_catch();
    JUMPOUT(0x1A8643D2CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A8644238(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *v17 = 134218242;
    *&v17[4] = a2;
    *&v17[12] = 2112;
    *&v17[14] = v7;
    _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_DEFAULT, "Blastdoor response %p received (identifier: %@)", v17, 0x16u);
  }

  if (a2 && !a3)
  {
    v8 = [objc_msgSend(a2 "payload")];
    if (v8 <= 1)
    {
      if (!v8)
      {
        [objc_msgSend(a2 "payload")];
        goto LABEL_23;
      }

      if (v8 == 1)
      {
        [objc_msgSend(a2 "payload")];
        goto LABEL_23;
      }
    }

    else
    {
      switch(v8)
      {
        case 2:
          [objc_msgSend(a2 "payload")];
          goto LABEL_23;
        case 4:
          [objc_msgSend(a2 "payload")];
          goto LABEL_23;
        case 3:
          v9 = +[IMAttachmentBlastdoor logger];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            v10 = "[WARN] Should not have received BlastDoorBalloonPluginPayloadCombinedPluginAttachmentInfo back as payload type.";
            v11 = v9;
            v12 = 2;
LABEL_22:
            _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_DEFAULT, v10, v17, v12);
            goto LABEL_23;
          }

          goto LABEL_23;
      }
    }

    v14 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [objc_msgSend(a2 "payload")];
      *v17 = 134217984;
      *&v17[4] = v15;
      v10 = "[WARN] Unable to handle unknown payload type (type: %tu).";
      v11 = v14;
      v12 = 12;
      goto LABEL_22;
    }

LABEL_23:
    [a2 attachments];
    return (*(*(a1 + 40) + 16))();
  }

  v13 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C13A0(a3, v13);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1A8644628(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    v18 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      buf = 138412290;
      _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_DEFAULT, "Failed generating audio preview through BlastDoor for sourceURL: %@", &buf, 0xCu);
    }

    (*(v17 + 16))(v17, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13302 userInfo:0]);
    objc_end_catch();
    JUMPOUT(0x1A86445F8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A86446EC(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_DEFAULT, "Blastdoor audio preview response received: %@ for sourceURL: %@", &v7, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_1A8644D98(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a2;
    _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_DEFAULT, "Blastdoor response %@ received", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1A86451AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v19 = [*(v18 + 1672) logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      buf = 0;
      _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_DEFAULT, "Failed generating animated image preview through BlastDoor", &buf, 2u);
    }

    v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13302 userInfo:0];
    (*(v17 + 16))(v17, 0, v20, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
    objc_end_catch();
    JUMPOUT(0x1A864516CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A8645274(uint64_t a1, int a2, void *a3, uint64_t a4, double a5, double a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    *v16 = 138412802;
    if (a2)
    {
      v13 = @"YES";
    }

    *&v16[4] = v13;
    v17 = 2112;
    v18 = a3;
    v19 = 2112;
    v20 = a4;
    _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_DEFAULT, "BlastDoor animated image response %@ with UTType %@ received %@", v16, 0x20u);
  }

  if (a2 && [a3 length])
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v14 setValue:a3 forKey:@"uti_type"];
    [v14 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(*(a1 + 32), "isFromMe")), @"is_from_me"}];
    [v14 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(*(a1 + 32), "isTrustedSender")), @"is_trusted_sender"}];
    [v14 setValue:objc_msgSend(*(a1 + 32) forKey:{"serviceName"), @"service"}];
    [+[IMMetricsCollector sharedInstance](IMMetricsCollector trackEvent:"trackEvent:withDictionary:" withDictionary:@"com.apple.Messages.IMMetricsCollectorEventImagePreviewGenerationSuccess", v14];
  }

  else
  {
    [+[IMMetricsCollector trackEvent:*v16], "trackEvent:", @"com.apple.Messages.IMMetricsCollectorEventImagePreviewGenerationFailure"];
  }

  return (*(*(a1 + 40) + 16))(a5, a6);
}

void sub_1A864578C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v19 = [*(v18 + 1672) logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      buf = 0;
      _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_DEFAULT, "Failed getting animated image metadata through BlastDoor", &buf, 2u);
    }

    (*(v17 + 16))(v17, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13302 userInfo:0]);
    objc_end_catch();
    JUMPOUT(0x1A8645754);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A8645848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = a2;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_DEFAULT, "BlastDoor animated image metadata response %@ received %@", &v8, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1A8645C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v19 = [*(v18 + 1672) logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      buf = 0;
      _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_DEFAULT, "Failed generating animated image preview through BlastDoor", &buf, 2u);
    }

    (*(v17 + 16))(v17, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13302 userInfo:0]);
    objc_end_catch();
    JUMPOUT(0x1A8645C00);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A8645CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = a2;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_DEFAULT, "BlastDoor animated image response %@ received %@", &v8, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1A86460D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v19 = [*(v18 + 1672) logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      buf = 0;
      _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_DEFAULT, "Failed getting emoji image metadata through BlastDoor", &buf, 2u);
    }

    (*(v17 + 16))(v17, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13302 userInfo:0]);
    objc_end_catch();
    JUMPOUT(0x1A86460A0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A864618C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = a2;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_DEFAULT, "BlastDoor emoji image metadata response %@ received %@", &v8, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1A864648C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v19 = [*(v18 + 1672) logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      buf = 0;
      _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_DEFAULT, "Failed generating emoji image through BlastDoor", &buf, 2u);
    }

    (*(v17 + 16))(v17, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13302 userInfo:0]);
    objc_end_catch();
    JUMPOUT(0x1A8646450);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A8646540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = a2;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_DEFAULT, "BlastDoor emoji image response %@ received %@", &v8, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_1A8646784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = a2;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_DEFAULT, "Got background from Blastdoor: %@, error: %@", &v8, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_1A86469C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = a2;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_DEFAULT, "Got background command from Blastdoor: %@, error: %@", &v8, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_1A8646AE0()
{
  v0 = objc_alloc_init(IMLogDump);
  qword_1ED8CA358 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A864783C(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _dictionaryForDayKey:v5];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Day Dictionary %@", &v12, 0xCu);
    }
  }

  if ([v7 count])
  {
    v10 = *(a1 + 32);
    v9 = a1 + 32;
    [v10 _calculateConnectedMinutesForDateKey:@"LastConnectedToPowerWifiDate" durationKey:@"PowerWifiTotalDuration" daysDictionary:v7 totalDurationDictionary:*(v9 + 8) totalDurationKey:@"totalPowerWifi"];
    [*v9 _calculateConnectedMinutesForDateKey:@"PowerLastConnectedDate" durationKey:@"PowerTotalDuration" daysDictionary:v7 totalDurationDictionary:*(v9 + 8) totalDurationKey:@"totalPower"];
    [*v9 _calculateConnectedMinutesForDateKey:@"WifiLastConnectedDate" durationKey:@"WifiTotalDuration" daysDictionary:v7 totalDurationDictionary:*(v9 + 8) totalDurationKey:@"totalWifi"];
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "We don't have a dictionary for key %@", &v12, 0xCu);
    }
  }
}

void sub_1A86490BC()
{
  v0 = MGGetStringAnswer();
  if (v0)
  {
    v1 = v0;
    byte_1EB3096A0 = CFStringCompare(v0, @"CH", 0) == kCFCompareEqualTo;

    CFRelease(v1);
  }

  else
  {
    byte_1EB3096A0 = 0;
  }
}

uint64_t sub_1A864916C()
{
  if (IMGetDomainBoolForKey())
  {
    result = 1;
  }

  else
  {
    result = MGGetBoolAnswer();
  }

  byte_1EB30A568 = result;
  return result;
}

void sub_1A86491EC()
{
  v0 = MGGetStringAnswer();
  if (v0)
  {
    v1 = v0;
    byte_1EB30AE68 = CFStringCompare(v0, @"HN", 0) == kCFCompareEqualTo;

    CFRelease(v1);
  }

  else
  {
    byte_1EB30AE68 = 0;
  }
}

uint64_t sub_1A864A098()
{
  v0 = objc_alloc_init(objc_opt_class());
  qword_1ED8CA360 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id sub_1A864A178()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1EB309530;
  v9 = qword_1EB309530;
  if (!qword_1EB309530)
  {
    v1 = sub_1A864CBE4();
    v7[3] = dlsym(v1, "CKPartialErrorsByItemIDKey");
    qword_1EB309530 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    sub_1A88C02E0();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

id sub_1A864A6F0()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1EB309540;
  v9 = qword_1EB309540;
  if (!qword_1EB309540)
  {
    v1 = sub_1A864CBE4();
    v7[3] = dlsym(v1, "CKErrorDomain");
    qword_1EB309540 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    sub_1A88C02E0();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

id sub_1A864B0B0()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1EB30AE78;
  v9 = qword_1EB30AE78;
  if (!qword_1EB30AE78)
  {
    v1 = sub_1A864CBE4();
    v7[3] = dlsym(v1, "CKErrorDescriptionKey");
    qword_1EB30AE78 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    sub_1A88C02E0();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

void sub_1A864BD34(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A864BBDCLL);
  }

  _Unwind_Resume(a1);
}

void *sub_1A864CB94(uint64_t a1)
{
  v2 = sub_1A864CBE4();
  result = dlsym(v2, "CKPartialErrorsByItemIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB309530 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A864CBE4()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!qword_1EB309700)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = sub_1A864CCE4;
    v3[4] = &unk_1E7826200;
    v3[5] = v3;
    v4 = xmmword_1E7827690;
    v5 = 0;
    qword_1EB309700 = _sl_dlopen();
  }

  v0 = qword_1EB309700;
  v1 = v3[0];
  if (!qword_1EB309700)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1A864CCE4()
{
  result = _sl_dlopen();
  qword_1EB309700 = result;
  return result;
}

void *sub_1A864CD58(uint64_t a1)
{
  v2 = sub_1A864CBE4();
  result = dlsym(v2, "CKErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB309540 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1A864CDA8(uint64_t a1)
{
  v2 = sub_1A864CBE4();
  result = dlsym(v2, "CKErrorDescriptionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB30AE78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1A864CDF8(uint64_t a1)
{
  v2 = sub_1A864CBE4();
  result = dlsym(v2, "CKErrorRetryAfterKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB309538 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1A864D26C()
{
  result = MEMORY[0x1AC570AB0]("IOServiceMatching", @"IOKit");
  off_1ED8C9660 = result;
  return result;
}

void *sub_1A864D29C()
{
  result = MEMORY[0x1AC570AB0]("IOServiceGetMatchingService", @"IOKit");
  off_1ED8C9668 = result;
  return result;
}

void *sub_1A864D2CC()
{
  result = MEMORY[0x1AC570AB0]("IORegistryEntryCreateCFProperty", @"IOKit");
  off_1ED8C9670 = result;
  return result;
}

void *sub_1A864D2FC()
{
  result = MEMORY[0x1AC570AB0]("IOObjectRelease", @"IOKit");
  off_1ED8C9678 = result;
  return result;
}

void sub_1A864D32C()
{
  v0 = MEMORY[0x1AC570AB0]("kIOMasterPortDefault", @"IOKit");
  if (v0)
  {
    byte_1ED8C9630 = 1;
    dword_1EB3094E4 = *v0;
  }

  else if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_INFO, "Failed to load symbol for weaklinked kIOMasterPortDefault", v2, 2u);
    }
  }
}

id sub_1A864D448(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A864D4F4;
  v5[3] = &unk_1E78276B0;
  v3 = v2;
  v6 = v3;
  [a1 enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

void sub_1A864D4F4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = *(a1 + 32);
    v7 = [v5 __im_propertyListSafeCopy];
    [v6 setObject:v7 forKey:v10];
LABEL_4:

    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = *(a1 + 32);
    v7 = [v5 allObjects];
    v9 = [v7 __im_propertyListSafeCopy];
    [v8 setObject:v9 forKey:v10];

    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [*(a1 + 32) setObject:v5 forKey:v10];
  }

LABEL_5:
}

void sub_1A864DB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A864DB98(void *a1)
{
  v2 = CEMEmojiTokenGetString();
  v3 = *(*(a1[4] + 8) + 40);
  v22 = v2;
  if (v3)
  {
    [v3 appendString:v2];
  }

  else
  {
    v4 = [v2 mutableCopy];
    v5 = *(a1[4] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = CEMEmojiTokenCopyName();
  if (v7)
  {
    v8 = *(*(a1[5] + 8) + 40);
    if (v8)
    {
      [v8 appendFormat:@" %@", v7];
    }

    else
    {
      v9 = [v7 mutableCopy];
      v10 = *(a1[5] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  v12 = CEMEmojiTokenCopyName();
  if (v12)
  {
    v13 = *(*(a1[6] + 8) + 40);
    if (v13)
    {
      [v13 appendFormat:@" %@", v12];
    }

    else
    {
      v14 = [v12 mutableCopy];
      v15 = *(a1[6] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }

  v17 = CEMEmojiTokenCopyName();
  if (v17)
  {
    v18 = *(*(a1[7] + 8) + 40);
    if (v18)
    {
      [v18 appendFormat:@" %@", v17];
    }

    else
    {
      v19 = [v17 mutableCopy];
      v20 = *(a1[7] + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }
  }
}

id sub_1A864E240(void *a1)
{
  v1 = a1;
  if ([v1 __im_isEmojiStickerID])
  {
    v2 = [v1 stringByReplacingOccurrencesOfString:@"ESID" withString:&stru_1F1BB91F0];
    v3 = [v2 stringByReplacingOccurrencesOfString:@"-sticker.png" withString:&stru_1F1BB91F0];

    v4 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:@"%"];
    v5 = [v4 stringByRemovingPercentEncoding];

    v1 = v5;
  }

  if ([v1 __im_hasEmoji])
  {
    v6 = [MEMORY[0x1E695DF58] currentLocale];
    [v6 localeIdentifier];
    CEMCreateEmojiLocaleData();

    v7 = [MEMORY[0x1E696AD60] string];
    [v1 length];
    v8 = v7;
    CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1A864E3D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  String = CEMEmojiTokenGetString();

  return [v1 appendString:String];
}

id sub_1A864E418(void *a1)
{
  if ([a1 __im_isEmojiStickerID])
  {
    v2 = a1;
  }

  else if ([a1 __im_hasEmoji])
  {
    v3 = [a1 __im_emojiString];
    v4 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v5 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v4];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"%" withString:@"-"];

    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"ESID", v6, @"-sticker.png"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1A864E51C(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 stateDictionaryForDiagnosticsRequest];
  }

  else
  {
    v8 = @"debugDescription";
    v4 = [v1 debugDescription];
    v5 = v4;
    v6 = @"nil";
    if (v4)
    {
      v6 = v4;
    }

    v9[0] = v6;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  objc_autoreleasePoolPop(v2);

  return v3;
}

_DWORD *sub_1A864E620(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v21 = 0;
  v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v21];
  v6 = v21;
  if (!v5)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v23 = v3;
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "STATE CAPTURE FAILURE! Unable to serialize state dictionary for %@ due to error: %@", buf, 0x16u);
      }
    }

    goto LABEL_11;
  }

  v7 = [v5 length];
  v8 = v7 + 200;
  if (v7 + 200 > 0x8000)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v23 = v3;
        v24 = 2048;
        v25 = v8;
        v26 = 2048;
        v27 = 0x8000;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "STATE CAPTURE FAILURE! Serialized dictionary is too large for %@, is %zu, limit %zu", buf, 0x20u);
      }
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v11 = malloc_type_calloc(1uLL, v8, 0x1000040BEF03554uLL);
  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v3;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "writing state for %@", buf, 0xCu);
      }
    }

    *v11 = 1;
    v11[1] = v7;
    v14 = v5;
    memcpy(v11 + 50, [v5 bytes], v7);
    if (v3)
    {
      v15 = [v3 dataUsingEncoding:4];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
        v18 = [v16 bytes];
        v19 = [v16 length];
        if (v19 >= 0x3F)
        {
          v20 = 63;
        }

        else
        {
          v20 = v19;
        }

        memcpy(v11 + 34, v18, v20);
      }
    }
  }

LABEL_12:

  return v11;
}

void IMAddTranslatedMessagePartToMessageSummaryInfo(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = +[IMMessageItem translationMessagePartClasses];
  v29 = [v6 objectForKeyedSubscript:@"tmp"];
  v30 = v7;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v7 fromData:? error:?];
  Mutable = [v8 mutableCopy];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v11 = [(__CFDictionary *)Mutable objectForKeyedSubscript:v10];
  v12 = [v11 mutableCopy];

  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1A864F698;
  v32[3] = &unk_1E7827728;
  v13 = v5;
  v33 = v13;
  v14 = [v12 indexOfObjectPassingTest:v32];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v12 removeObjectAtIndex:v14];
  }

  v15 = [v13 dictionaryRepresentation];
  [v12 insertObject:v15 atIndex:0];

  v16 = [v12 copy];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [(__CFDictionary *)Mutable setObject:v16 forKeyedSubscript:v17];

  v18 = MEMORY[0x1E696ACC8];
  v19 = [(__CFDictionary *)Mutable copy];
  v31 = 0;
  v20 = [v18 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v31];
  v21 = v31;

  if (v20)
  {
    [v6 setObject:v20 forKeyedSubscript:@"tmp"];
  }

  else if (v21)
  {
    v22 = IMLogHandleForCategory("Translation");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C1638(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }
}

void IMRemoveTranslatedMessagePartFromMessageSummaryInfo(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IMMessageItem translationMessagePartClasses];
  v5 = [v3 objectForKeyedSubscript:@"tmp"];
  if (v5)
  {
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v4 fromData:v5 error:0];
    Mutable = [v6 mutableCopy];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    [(__CFDictionary *)Mutable removeObjectForKey:v8];

    v9 = MEMORY[0x1E696ACC8];
    v10 = [(__CFDictionary *)Mutable copy];
    v21 = 0;
    v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v21];
    v12 = v21;

    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"tmp"];
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v23 = a1;
          _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Removing translation succeeded for message part: %ld", buf, 0xCu);
        }
      }
    }

    else if (v12)
    {
      v14 = IMLogHandleForCategory("Translation");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C16A4(v12, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }
}

uint64_t sub_1A864F698(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[IMTranslatedMessagePart alloc] initWithDictionaryRepresentation:v3];

  v5 = [(IMTranslatedMessagePart *)v4 languagePairsAreIdenticalTo:*(a1 + 32)];
  return v5;
}

void sub_1A864F9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_1A864FA14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained eventListenerDidFinish:v4];
}

uint64_t IMExtensionPayloadUnarchivingClasses()
{
  v2[12] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v2[6] = objc_opt_class();
  v2[7] = objc_opt_class();
  v2[8] = objc_opt_class();
  v2[9] = objc_opt_class();
  v2[10] = objc_opt_class();
  v2[11] = objc_opt_class();
  return [v0 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v2, 12)}];
}

uint64_t IMBalloonExtensionIDWithTeamAndSuffix(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v3 = [@"com.apple.messages.MSMessageExtensionBalloonPlugin" stringByAppendingFormat:@":%@:", a1];

  return [v3 stringByAppendingString:a2];
}

uint64_t IMBalloonPluginRequiredCapabilitiesWithPayloadDictionary(void *a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v1 = [a1 objectForKeyedSubscript:{@"requiredCapabilities", 0}];
  v2 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v1 error:&v7];
  [v2 _enableStrictSecureDecodingMode];
  v3 = MEMORY[0x1E695DFD8];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v4 = [v3 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v8, 2)}];
  v5 = [v2 decodeObjectOfClasses:v4 forKey:*MEMORY[0x1E696A508]];

  return v5;
}

uint64_t IMBalloonPluginRequiredCapabilitiesWithMessageData(uint64_t a1)
{
  v1 = sub_1A8650440(a1);

  return IMBalloonPluginRequiredCapabilitiesWithPayloadDictionary(v1);
}

uint64_t sub_1A8650440(uint64_t a1)
{
  v2 = IMExtensionPayloadUnarchivingClasses();
  v6 = 0;
  v3 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a1 error:&v6];
  [v3 _enableStrictSecureDecodingMode];
  v4 = [v3 decodeObjectOfClasses:v2 forKey:*MEMORY[0x1E696A508]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t IMBalloonPluginShouldSendAlternateLayoutAsTextWithMessageData(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [sub_1A8650440(a1) objectForKeyedSubscript:@"sendAsText"];
  if (!v1)
  {
    return 0;
  }

  return [v1 BOOLValue];
}

uint64_t IMBalloonPluginFallbackText(uint64_t result)
{
  if (result)
  {
    v1 = sub_1A8650440(result);

    return [v1 objectForKeyedSubscript:@"ldtext"];
  }

  return result;
}

void *IMBalloonPluginFallbackLinkMetadata(uint64_t a1)
{
  result = sub_1A8650440(a1);
  if (result)
  {
    v5 = 0;
    v2 = [result objectForKeyedSubscript:@"fallbackLinkMetadata"];
    v3 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v2 error:&v5];
    [v3 _enableStrictSecureDecodingMode];
    v4 = [v3 decodeObjectOfClass:MEMORY[0x1AC570AA0](@"LPLinkMetadata" forKey:{@"LinkPresentation", *MEMORY[0x1E696A508]}];

    if (v5)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t IMIsStickersStripInCling()
{
  if (qword_1EB309670 != -1)
  {
    sub_1A88C1710();
  }

  return byte_1EB309678;
}

__CFString *sub_1A8650628()
{
  result = sub_1A8650674();
  if (result)
  {
    result = sub_1A8650744();
    if (result)
    {
      v1 = sub_1A8650744();
      if (v1)
      {
        result = v1();
        byte_1EB309678 = result;
      }

      else
      {
        sub_1A88C02E0();
        return IMStickersExtensionIdentifier();
      }
    }
  }

  return result;
}

uint64_t sub_1A8650674()
{
  if (!qword_1EB309708)
  {
    qword_1EB309708 = _sl_dlopen();
  }

  return qword_1EB309708;
}

uint64_t sub_1A8650744()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_1EB309548;
  v6 = qword_1EB309548;
  if (!qword_1EB309548)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = sub_1A8650880;
    v2[3] = &unk_1E78261C8;
    v2[4] = &v3;
    sub_1A8650880(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A86507F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A865080C()
{
  result = _sl_dlopen();
  qword_1EB309708 = result;
  return result;
}

void *sub_1A8650880(uint64_t a1)
{
  v2 = sub_1A8650674();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "AVTIsStickersStripEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB309548 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A865290C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8652878);
  }

  _Unwind_Resume(a1);
}

void *_IMStringStrippingControlCharacters(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EB30A518 != -1)
  {
    sub_1A88C1724();
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = qword_1EB30A520;
  v3 = [qword_1EB30A520 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        a1 = [a1 stringByReplacingOccurrencesOfString:*(*(&v8 + 1) + 8 * i) withString:&stru_1F1BB91F0];
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return a1;
}

id sub_1A8653078()
{
  v2[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69A5F20];
  v2[0] = *MEMORY[0x1E69A5F00];
  v2[1] = v0;
  v2[2] = @"\uFFFF";
  v2[3] = @"\uFFFE";
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:4];
  qword_1EB30A520 = result;
  return result;
}

void *IMSharedMessageSummaryInlineAttachmentAttributesArray(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1 length];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *MEMORY[0x1E69A5F68];
    do
    {
      v9 = 0;
      v10 = 0;
      v7 = [a1 attributesAtIndex:v5 longestEffectiveRange:&v9 inRange:{v5, v4 - v5}];
      if ([v7 objectForKey:v6])
      {
        [v2 addObject:v7];
      }

      v5 = v10 + v9;
    }

    while (v10 + v9 < v4);
  }

  return v2;
}

uint64_t IMSharedBalloonPreviewSummaryForMessage(void *a1)
{
  if (![objc_msgSend(a1 "balloonBundleID")])
  {
    return 0;
  }

  v2 = [a1 getCMMState];
  if (![objc_msgSend(a1 "balloonBundleID")])
  {
    if ([objc_msgSend(a1 "balloonBundleID")])
    {
      v3 = IMSharedMessageDTSummary;
      goto LABEL_11;
    }

    if ([objc_msgSend(a1 "balloonBundleID")])
    {
      v4 = objc_alloc_init(IMDSharedUtilitiesPluginPayload);
      -[IMDSharedUtilitiesPluginPayload setData:](v4, "setData:", [a1 payloadData]);
      -[IMDSharedUtilitiesPluginPayload setPluginBundleID:](v4, "setPluginBundleID:", [a1 balloonBundleID]);
      -[IMDSharedUtilitiesPluginPayload setSender:](v4, "setSender:", [a1 sender]);
      v5 = +[IMSharedMessage3rdPartySummary previewSummaryWithPluginPayload:isCustomAcknowledgement:](IMSharedMessage3rdPartySummary, "previewSummaryWithPluginPayload:isCustomAcknowledgement:", v4, [a1 isCustomAcknowledgment]);
LABEL_8:
      v6 = v5;

      return v6;
    }

    if (v2)
    {
      v3 = IMSharedMessagePhotosSummary;
      goto LABEL_11;
    }

    if ([objc_msgSend(a1 "balloonBundleID")])
    {
      v4 = objc_alloc_init(IMDSharedUtilitiesPluginPayload);
      -[IMDSharedUtilitiesPluginPayload setData:](v4, "setData:", [a1 payloadData]);
      -[IMDSharedUtilitiesPluginPayload setMessageGUID:](v4, "setMessageGUID:", [a1 guid]);
      -[IMDSharedUtilitiesPluginPayload setIsFromMe:](v4, "setIsFromMe:", [a1 isFromMe]);
      v5 = [IMSharedMessageRichLinkSummary previewSummaryWithPluginPayload:v4];
      goto LABEL_8;
    }

    return 0;
  }

  v3 = IMSharedMessageHandwritingSummary;
LABEL_11:

  return MEMORY[0x1EEE66B58](v3, sel_previewSummary);
}

id IMSharedMessageSummaryCreateWithShortName(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v68 = *MEMORY[0x1E69E9840];
  if ([a2 wasDetonated])
  {
    v10 = IMSharedUtilitiesFrameworkBundle();

    return [v10 localizedStringForKey:@"LOCKDOWN_ATTACHMENT_BALLOON_ONE_ATTACHMENT" value:&stru_1F1BB91F0 table:@"IMSharedUtilities-Offramp"];
  }

  v54 = a5;
  v12 = [a2 flags];
  v13 = [a2 expressiveSendStyleID];
  v14 = [a2 body];
  v15 = [a2 associatedMessageType];
  v16 = [a2 isFromMe];
  v17 = [a2 messageSummaryInfo];
  v55 = [a2 fileTransferGUIDs];
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if ([v13 isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"])
    {
      v18 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:objc_msgSend(IMSharedUtilitiesFrameworkBundle(), "localizedStringForKey:value:table:", @"Message sent with Invisible Ink", &stru_1F1BB91F0, @"IMSharedUtilities"];
      if (v18)
      {
        return v18;
      }
    }
  }

  v19 = IMSharedBalloonPreviewSummaryForMessage(a2);
  if ([v19 length])
  {
    return v19;
  }

  if ((v12 & 0x1000000) == 0)
  {
    if (![v14 length] || (v20 = objc_msgSend(v14, "string"), objc_msgSend(v20, "rangeOfString:", *MEMORY[0x1E69A5F00]) == 0x7FFFFFFFFFFFFFFFLL) || objc_msgSend(objc_msgSend(_IMStringStrippingControlCharacters(v20), "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")), "length"))
    {
      if ((v15 & 0xFFFFFFFFFFFFFFF8) == 0xBB8 || (v15 & 0xFFFFFFFFFFFFFFF8) == 0x7D0)
      {
        v60 = 0;
        v61 = 0;
        v59 = 0;
        v57 = 0;
        v58 = 0;
        v56 = 0;
        v21 = [v55 firstObject];
        if ([v21 length])
        {
          (*(v54 + 16))(v54, v21, &v61, &v60, &v59 + 1, &v59, &v58, &v57, &v56);
        }

        return [objc_msgSend(objc_msgSend(a2 "tapback")];
      }

      else
      {
        v27 = [v14 string];
        if ([+[IMFeatureFlags isAutomaticIncomingTranslationEnabled] sharedFeatureFlags]
        {
          v28 = [v17 objectForKeyedSubscript:@"tmp"];
          if (v28)
          {
            v29 = v28;
            if (([a2 isFromMe] & 1) == 0)
            {
              v61 = 0;
              v30 = +[IMMessageItem translationMessagePartClasses];
              v31 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v30 fromData:v29 error:&v61];
              if (v31)
              {
                v32 = [objc_msgSend(v31 "allValues")];
                if (v32)
                {
                  v33 = [v32 firstObject];
                  v34 = &stru_1F1BB91F0;
                  if (v33)
                  {
                    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", &stru_1F1BB91F0, objc_msgSend(objc_msgSend(v33, "objectForKey:", @"translatedText", "string")];
                  }

                  v27 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:objc_msgSend(IMSharedUtilitiesFrameworkBundle(), "localizedStringForKey:value:table:", @"TRANSLATION_PREFIX", &stru_1F1BB91F0, @"IMSharedUtilities", v34];
                }
              }
            }
          }
        }

        v35 = [_IMStringStrippingControlCharacters(v27) stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}];
        v19 = v35;
        if (a1 == 2 && [v35 length] >= 0x1F5)
        {
          v19 = [v19 substringToIndex:500];
        }

        if (![v19 length] && objc_msgSend(v55, "count") && (v48 = objc_msgSend(v55, "objectAtIndex:", 0)) != 0 && (v60 = 0, v61 = 0, v58 = 0, LOBYTE(v57) = 0, LOBYTE(v56) = 0, (*(v54 + 16))(v54, v48, &v61, &v60, &v57, &v56, &v58, 0, 0)))
        {
          v49 = v56;
          v50 = MEMORY[0x1E696AEC0];
          v51 = IMSharedUtilitiesFrameworkBundle();
          if (v49)
          {
            v52 = @"%lu Incoming Files";
          }

          else
          {
            v52 = @"%lu Outgoing Files";
          }

          return [v50 localizedStringWithFormat:objc_msgSend(v51, "localizedStringForKey:value:table:", v52, &stru_1F1BB91F0, @"IMSharedUtilities", objc_msgSend(v55, "count")];
        }

        else
        {
          if ([v19 length])
          {
            return v19;
          }

          return [MEMORY[0x1E696AEC0] localizedStringWithFormat:objc_msgSend(IMSharedUtilitiesFrameworkBundle(), "localizedStringForKey:value:table:", @"Empty message", &stru_1F1BB91F0, @"IMSharedUtilities", v53];
        }
      }
    }

    else
    {
      v37 = IMSharedMessageSummaryInlineAttachmentAttributesArray(v14);
      v38 = [MEMORY[0x1E695DF70] array];
      v39 = [MEMORY[0x1E695DF90] dictionary];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v40 = [v37 countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v64;
        v43 = *MEMORY[0x1E69A5F68];
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v64 != v42)
            {
              objc_enumerationMutation(v37);
            }

            v45 = *(*(&v63 + 1) + 8 * i);
            v46 = [v45 objectForKey:v43];
            if (v46)
            {
              v47 = v46;
              [v38 addObject:v46];
              [v39 setObject:v45 forKey:v47];
            }
          }

          v41 = [v37 countByEnumeratingWithState:&v63 objects:v67 count:16];
        }

        while (v41);
      }

      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = sub_1A8653B1C;
      v62[3] = &unk_1E7827AF0;
      v62[4] = v39;
      v62[5] = v54;
      return IMAttachmentsCreateLocalizedDescription(v38, a4, v62);
    }
  }

  if ((v12 & 0x200000) != 0)
  {
    v25 = [objc_msgSend(a2 "body")];
    v26 = [v25 length];
    v22 = MEMORY[0x1E696AEC0];
    v23 = IMSharedUtilitiesFrameworkBundle();
    if (v26)
    {
      return [v22 localizedStringWithFormat:objc_msgSend(v23, "localizedStringForKey:value:table:", @"Audio Message Transcription", &stru_1F1BB91F0, @"IMSharedUtilities", v25];
    }

    v24 = @"Audio Message";
  }

  else
  {
    v22 = MEMORY[0x1E696AEC0];
    v23 = IMSharedUtilitiesFrameworkBundle();
    v24 = @"Video Message";
  }

  v36 = [v23 localizedStringForKey:v24 value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];

  return [v22 localizedStringWithFormat:v36];
}

uint64_t sub_1A8653B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v10 = (*(*(a1 + 40) + 16))(*(a1 + 40));
  if (v10)
  {
    v11 = [*(a1 + 32) objectForKey:a2];
    if (a7)
    {
      if (*a7)
      {
        *a7 = v11;
      }
    }
  }

  return v10;
}

double IMMessageItemExpireStateExpiringDuration()
{
  v0 = IMGetCachedDomainIntForKey();
  result = v0;
  if (!v0)
  {
    return 120.0;
  }

  return result;
}

double IMMessageItemExpireStateExpiredDuration()
{
  v0 = IMGetCachedDomainIntForKey();
  result = v0;
  if (!v0)
  {
    return 600.0;
  }

  return result;
}

double IMMessageItemTimeIntervalSinceStartedExpiring(void *a1)
{
  v1 = a1;
  v2 = [v1 isFromMe];
  v3 = [v1 time];
  v4 = [v1 timePlayed];

  v5 = IMMessageItemTimeIntervalSinceStartedExpiringForTimes(v2, v3, v4);
  return v5;
}

double IMMessageItemTimeIntervalSinceStartedExpiringForTimes(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    v8 = v6;
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceReferenceDate];
    v12 = v11;
    [v8 timeIntervalSinceReferenceDate];
    v9 = v12 - v13;

    goto LABEL_6;
  }

  v8 = v5;
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = 0.0;
LABEL_6:

  return v9;
}

uint64_t IMMessageItemShouldAutomaticallySave(void *a1)
{
  result = [a1 isExpirable];
  if (result)
  {

    return IMGetDomainBoolForKey();
  }

  return result;
}

uint64_t IMMessageCreateThreadIdentifierWithOriginatorGUID(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = a1;
  v9 = [[v7 alloc] initWithFormat:@"r:%lu:%lu:%lu:%@", a2, a3, a4, v8];

  return v9;
}

uint64_t IMMessageCreateThreadIdentifierWithComponents(void *a1, void *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithFormat:@"r:%@:%@", v4, v5];

  return v6;
}

uint64_t IMMessageCreateAssociatedMessageGUIDFromThreadIdentifier(void *a1)
{
  v1 = a1;
  v2 = IMMessageThreadIdentifierGetOriginatorGUID(v1);
  OriginatorMessagePart = IMMessageThreadIdentifierGetOriginatorMessagePart(v1);

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"p:%ld/%@", OriginatorMessagePart, v2];
  return v4;
}

id IMMessageThreadIdentifierGetOriginatorGUID(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@":"];
  if ([v2 count] == 5)
  {
    v3 = [v2 objectAtIndexedSubscript:4];
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;

  return v4;
}

uint64_t IMMessageThreadIdentifierGetOriginatorMessagePart(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@":"];
  if ([v1 count] == 5)
  {
    v2 = [v1 objectAtIndexedSubscript:1];
    v3 = [v2 unsignedIntValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t IMMessageThreadIdentifierGetOriginatorRange(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@":"];
  if ([v1 count] == 5)
  {
    v2 = [v1 objectAtIndexedSubscript:2];
    v3 = [v2 intValue];

    v4 = [v1 objectAtIndexedSubscript:3];
    [v4 intValue];

    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t IMMessagePartDescriptionGetMessagePartIndex(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@":"];
  if ([v1 count] == 3)
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    v3 = [v2 unsignedIntValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void IMMessageThreadIdentifierGetComponents(void *a1, void *a2, void *a3)
{
  v10 = [a1 componentsSeparatedByString:@":"];
  v5 = [v10 count] == 5;
  v6 = v10;
  if (v5)
  {
    v7 = [v10 objectAtIndexedSubscript:1];
    v8 = [v10 objectAtIndexedSubscript:2];
    v9 = [v10 objectAtIndexedSubscript:3];
    if (a3)
    {
      *a3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@:%@", v7, v8, v9];
    }

    if (a2)
    {
      *a2 = [v10 objectAtIndexedSubscript:4];
    }

    v6 = v10;
  }
}

void sub_1A8654258(void *a1, void *a2, void *a3)
{
  v11 = [a1 componentsSeparatedByString:@":"];
  v5 = [v11 count] == 5;
  v6 = v11;
  if (v5)
  {
    v7 = [v11 objectAtIndexedSubscript:4];
    v8 = [v11 objectAtIndexedSubscript:1];
    v9 = [v8 unsignedIntValue];

    if (a3)
    {
      *a3 = v9;
    }

    if (a2)
    {
      v10 = v7;
      *a2 = v7;
    }

    v6 = v11;
  }
}

BOOL IMMessageThreadIdentifierOriginatorGUIDAndPartMatch(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    v12 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    sub_1A8654258(v3, &v12, &v13);
    v5 = v12;
    v10 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    sub_1A8654258(v4, &v10, &v11);
    v6 = v10;
    v7 = v6;
    v8 = v5 && v6 && [v5 isEqualToString:v6] && v13 == v11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1A8655130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8655148(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 transferGUID];
  if ([v6 isEqualToString:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 messagePartIndex];
    *a4 = 1;
  }
}

void sub_1A86552E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8655300(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) indexOfObject:a2];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) replaceObjectAtIndex:v5 withObject:v6];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_1A86554D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_1A86554F4(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(*(*(a1 + 32) + 8) + 40) __im_containsFileTransferGUID:v11];
  v7 = *(*(*(a1 + 32) + 8) + 40);
  if (v6)
  {
    v8 = [v7 __im_attributedStringByReplacingFileTransferGUID:v11 withUpdatedTransferGUID:v5];
  }

  else
  {
    if (![v7 __im_isRichCard])
    {
      goto LABEL_6;
    }

    v8 = [*(*(*(a1 + 32) + 8) + 40) __im_attributedStringByReplacingRichCardGUID:v11 withUpdatedTransferGUID:v5];
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_6:
}

void sub_1A8655B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_1A8655B98(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([*(*(a1[4] + 8) + 40) __im_containsFileTransferGUID:v12])
  {
    v6 = [*(*(a1[4] + 8) + 40) __im_attributedStringByReplacingFileTransferGUID:v12 withUpdatedTransferGUID:v5];
    v7 = *(a1[4] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(*(a1[5] + 8) + 40) __im_attributedStringByReplacingFileTransferGUID:v12 withUpdatedTransferGUID:v5];
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_1A8655DC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = [*(a1 + 32) string];
  v11 = [v10 substringWithRange:{a3, a4}];

  if ([v11 isEqualToString:*MEMORY[0x1E69A5F00]])
  {
    v14[0] = 0;
    v14[1] = 0;
    v12 = [*(a1 + 32) attribute:*MEMORY[0x1E69A5F68] atIndex:a3 effectiveRange:v14];
    if ([v12 length])
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        (*(v13 + 16))(v13, v12, [v9 unsignedIntegerValue], a5);
      }
    }
  }
}

void sub_1A86560CC(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && a1[6] == a3)
  {
    *(*(a1[4] + 8) + 24) = 1;
    v9 = v8;
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v8 = v9;
    if (a4)
    {
      *a4 = 1;
    }
  }
}

void sub_1A8656AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8656B0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A8656B80;
  v6[3] = &unk_1E7827DC0;
  v6[4] = *(a1 + 32);
  v6[5] = a5;
  return [a2 enumerateKeysAndObjectsUsingBlock:v6];
}

uint64_t sub_1A8656B80(uint64_t a1, void *a2)
{
  result = [a2 isEqualToString:*MEMORY[0x1E69A5FE0]];
  if (result)
  {
    v4 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *v4 = 1;
  }

  return result;
}

void sub_1A86599C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A86599E0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (IMMessagePartDescriptionGetMessagePartIndex(a2) == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = [v7 unsignedIntegerValue];
    *a4 = 1;
  }
}

void sub_1A865A89C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_1A865ABD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A865ABF0(uint64_t a1, uint64_t a2)
{
  if (a2 != -1)
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) __im_messageTextByRemovingMessagePartIndex:a2];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v6, sel_addRetractedPartIndex_);
}

void sub_1A865BF38(uint64_t a1, void *a2, void *a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 stringValue];
  if ([v6 length])
  {
    v7 = [v5 rangeValue];
    v9 = v8;
    v13[0] = @"lo";
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v13[1] = @"le";
    v14[0] = v10;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
    v14[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

    [*(a1 + 32) setObject:v12 forKeyedSubscript:v6];
  }
}

void sub_1A865C120(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"lo"];
  v7 = [v5 objectForKeyedSubscript:@"le"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 unsignedIntegerValue];
      v9 = [v7 unsignedIntegerValue];
      v10 = [MEMORY[0x1E696B098] valueWithRange:{v8, v9}];
      v11 = [v14 unsignedIntValue];
      v12 = *(a1 + 32);
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
      [v12 setObject:v10 forKeyedSubscript:v13];
    }
  }
}

void sub_1A865D2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A865D310(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(*(*(result + 32) + 8) + 40) addObject:a2];
  }

  return result;
}

void sub_1A865DE7C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(v11 + v12);
        LODWORD(buf) = 138412546;
        *(&buf + 4) = v15;
        WORD6(buf) = 2112;
        *(&buf + 14) = v13;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Exception encoding body: %@   Exception: %@", &buf, 0x16u);
      }
    }

    IMLogBacktrace();

    objc_end_catch();
    JUMPOUT(0x1A865DE34);
  }

  _Unwind_Resume(a1);
}

void sub_1A865EF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A865EFB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  if ([v8 length])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a5 = 1;
  }
}

void sub_1A865F030(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 32) + 8) + 24) = [v7 intValue];
      *a5 = 1;
    }
  }
}

void *sub_1A865F844()
{
  result = MEMORY[0x1AC570AB0]("MarcoLoggingStringForMessageData", @"Marco");
  off_1ED8C99E8 = result;
  return result;
}

void sub_1A86601BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 integerValue];
  if (v7 == -1)
  {
    if ((*(a1 + 80) & 1) == 0)
    {
      return;
    }
  }

  else if (![*(a1 + 32) containsIndex:v7])
  {
    return;
  }

  v8 = *(a1 + 40);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v10 = [v8 objectForKey:v9];

  if ([v10 count])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A86603A8;
    v20[3] = &unk_1E7827F00;
    v11 = *(a1 + 64);
    v12 = *(a1 + 48);
    v13 = *(a1 + 72);
    *&v14 = *(a1 + 56);
    *(&v14 + 1) = v13;
    *&v15 = v11;
    *(&v15 + 1) = v12;
    v21 = v15;
    v22 = v14;
    [v10 enumerateObjectsWithOptions:2 usingBlock:v20];
  }

  else
  {
    v16 = [*(a1 + 48) attribute:*MEMORY[0x1E69A5F68] atIndex:a3 effectiveRange:0];
    if (v16)
    {
      v17 = *(a1 + 72);
      if (v17)
      {
        (*(v17 + 16))(v17, v16);
      }

      [*(a1 + 56) addObject:v16];
    }

    v18 = *(a1 + 64);
    v19 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
    [v18 addObject:v19];
  }
}

void sub_1A86603A8(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) addObject:v3];
  v4 = [v3 rangeValue];
  v6 = v4;
  v7 = v5;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || v4 + v5 > [*(a1 + 40) length])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = 134218240;
        v14 = v6;
        v15 = 2048;
        v16 = v7;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Range (loc: %lu, length: %lu) is outside text range", &v13, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(a1 + 40) length];
        v13 = 134217984;
        v14 = v10;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Max text length: %lu", &v13, 0xCu);
      }
    }
  }

  else
  {
    v11 = [*(a1 + 40) attribute:*MEMORY[0x1E69A5F68] atIndex:v6 effectiveRange:0];
    if (v11)
    {
      v12 = *(a1 + 56);
      if (v12)
      {
        (*(v12 + 16))(v12, v11);
      }

      [*(a1 + 48) addObject:v11];
    }
  }
}

uint64_t sub_1A86605AC(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v7 = v5 + v6;
  v8 = [v4 rangeValue];
  v10 = v9;

  v11 = 1;
  if (v7 >= v8 + v10)
  {
    v11 = -1;
  }

  if (v7 == v8 + v10)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_1A8660610(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    v3 = [*(a1 + 32) containsObject:v3];
    if ((v3 & 1) == 0)
    {
      v3 = [*(a1 + 32) addObject:v5];
    }
  }

  return MEMORY[0x1EEE66BB8](v3);
}

void sub_1A86612C8()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"amc";
  v4[1] = @"ams";
  v4[2] = @"amb";
  v4[3] = @"amd";
  v4[4] = @"amab";
  v4[5] = @"amsa";
  v4[6] = @"ust";
  v4[7] = @"hbr";
  v4[8] = @"tmp";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:9];
  v2 = [v0 setWithArray:v1];
  v3 = qword_1EB309660;
  qword_1EB309660 = v2;
}

void sub_1A8661F0C()
{
  v4[8] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:8];
  v2 = [v0 setWithArray:v1];
  v3 = qword_1EB30AE80;
  qword_1EB30AE80 = v2;
}

uint64_t sub_1A8662CF4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695DF00] distantPast];
  }

  v8 = v7;

  v9 = [v4 date];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF00] distantPast];
  }

  v11 = v10;

  v12 = [v8 compare:v11];
  return v12;
}

void sub_1A8662F2C(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (!qword_1EB30AE90)
  {
    v2 = *(a1 + 32);
    v3 = [v2 _createSingleton__im];
    [v2 __setSingleton__im:v3];
  }

  objc_sync_exit(obj);
}

void sub_1A8663368(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  im_dispatch_after();
}

uint64_t IMSharedUtilitiesProtoCloudKitEncryptedLocationShareStatusChangeReadFrom(uint64_t a1, void *a2)
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
        v37 = 0;
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

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
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

      switch(v12)
      {
        case 3:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v39 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v39 & 0x7F) << v22;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v10 = v23++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_58;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v24;
          }

LABEL_58:
          v35 = 8;
LABEL_67:
          *(a1 + v35) = v21;
          goto LABEL_68;
        case 4:
          String = PBReaderReadString();

          v14 = String;
          v15 = 24;
          break;
        case 5:
          Data = PBReaderReadData();

          v14 = Data;
          v15 = 32;
          break;
        default:
          goto LABEL_53;
      }

      *(a1 + v15) = v14;
LABEL_68:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *(a1 + 44) |= 4u;
      while (1)
      {
        v38 = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v38 & 0x7F) << v28;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v10 = v29++ >= 9;
        if (v10)
        {
          v33 = 0;
          goto LABEL_62;
        }
      }

      if ([a2 hasError])
      {
        v33 = 0;
      }

      else
      {
        v33 = v30;
      }

LABEL_62:
      *(a1 + 40) = v33;
      goto LABEL_68;
    }

    if (v12 != 2)
    {
LABEL_53:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_68;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    *(a1 + 44) |= 2u;
    while (1)
    {
      v40 = 0;
      v19 = [a2 position] + 1;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v18 |= (v40 & 0x7F) << v16;
      if ((v40 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v10 = v17++ >= 9;
      if (v10)
      {
        v21 = 0;
        goto LABEL_66;
      }
    }

    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v18;
    }

LABEL_66:
    v35 = 16;
    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

void sub_1A86649E0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 target];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    [*(*(a1 + 40) + 24) removeLinkedListNode:v5];
    [v5 cancel];
    [v5 cache];
  }
}

void sub_1A8664B14(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = a2;
  [v2 removeLinkedListNode:v3];
  [v3 cancel];
  [v3 cache];
}

void sub_1A8664F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

void sub_1A8664FA4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 target];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

id IMChatCanonicalIDSIDsForAddress(id result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (![result rangeOfString:@"tel:"] && objc_msgSend(v1, "length") != 4)
  {
    [v1 substringFromIndex:4];
  }

  v2 = IMStripFormattingFromAddress();
  if (MEMORY[0x1AC570A50]())
  {
    v3 = IDSCopyIDForPhoneNumber();
  }

  else
  {
    if (MEMORY[0x1AC570A30](v2))
    {
      v4 = v2;
    }

    else
    {
      if (![v2 hasPrefix:@"mailto:urn:biz:"])
      {
        v3 = MEMORY[0x1AC5706F0](v2);
        goto LABEL_15;
      }

      v4 = [v2 _stripFZIDPrefix];
    }

    v3 = MEMORY[0x1AC5706D0](v4);
  }

LABEL_15:

  return v3;
}

uint64_t IMServiceNameForCanonicalIDSAddresses(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A4818];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v7 hasPrefix:@"urn:biz:"] & 1) != 0 || objc_msgSend(v7, "hasPrefix:", @"mailto:urn:biz:"))
        {
          return *MEMORY[0x1E69A4820];
        }
      }

      v4 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v2;
}

void sub_1A8665D10(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = sub_1A8601EB8;
  v23 = sub_1A8602150;
  v24 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = sub_1A8601EB8;
  v17 = sub_1A8602150;
  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_1A8601EB8;
  v11 = sub_1A8602150;
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A8666030;
  v6[3] = &unk_1E7828170;
  v6[4] = *(a1 + 32);
  v6[5] = &v19;
  v6[6] = &v7;
  v6[7] = &v13;
  v6[8] = *(a1 + 48);
  [a2 enumerateKeysAndObjectsUsingBlock:v6];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = v8[5];
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "FindCommonCaps: Common caps found: %@", buf, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v8[5]);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

uint64_t sub_1A8666030(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = a2;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "FindCommonCaps: Looking %@", buf, 0xCu);
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A86661A4;
  v15[3] = &unk_1E7828148;
  v10 = *(a1 + 56);
  v9 = (a1 + 56);
  v11 = *(v9 - 3);
  v16 = *(v9 - 1);
  v15[4] = v11;
  v15[5] = a2;
  v12 = v9[1];
  v17 = v10;
  v18 = v12;
  [a3 enumerateObjectsUsingBlock:v15];
  v13 = v9[1];
  result = [*(*(*v9 + 8) + 40) count];
  if (v13 == result)
  {
    *a4 = 1;
  }

  return result;
}

void sub_1A86661A4(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [a2 capabilities];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = a1[4];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v7)
  {
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 objectAtIndexedSubscript:0];
        if ([v10 count] <= 1)
        {
          v13 = [v5 valueForCapability:v11];
        }

        else
        {
          v12 = [v10 objectAtIndexedSubscript:1];
          v13 = [v5 valueForCapability:v11];
          if (v12)
          {
            v14 = [v5 valueForCapability:v12];
            if (IMOSLoggingEnabled())
            {
              v15 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 134218240;
                v27 = v13;
                v28 = 2048;
                v29 = v14;
                _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "FindCommonCaps: Using capability %ld || orCapbility %ld to try to match", buf, 0x16u);
              }
            }

            v13 |= v14;
          }
        }

        if ([*(*(a1[6] + 8) + 40) containsObject:v11])
        {
          if ([*(*(a1[7] + 8) + 40) objectForKeyedSubscript:v11] && objc_msgSend(objc_msgSend(*(*(a1[7] + 8) + 40), "objectForKey:", v11), "integerValue") != v13)
          {
            [*(*(a1[7] + 8) + 40) removeObjectForKey:v11];
            [*(*(a1[8] + 8) + 40) addObject:v11];
            if (IMOSLoggingEnabled())
            {
              v16 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                v17 = a1[5];
                *buf = 134218498;
                v27 = v13;
                v28 = 2112;
                v29 = v17;
                v30 = 2112;
                v31 = a2;
                _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "FindCommonCaps: Found differing value %lu for caps from address: %@ on endpoint: %@", buf, 0x20u);
              }
            }

            v18 = a1[9];
            if (v18 == [*(*(a1[8] + 8) + 40) count])
            {
              if (IMOSLoggingEnabled())
              {
                v19 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "FindCommonCaps: Breaking early, all caps are different", buf, 2u);
                }
              }

              *a4 = 1;
              return;
            }
          }
        }

        else
        {
          [*(*(a1[6] + 8) + 40) addObject:v11];
          [*(*(a1[7] + 8) + 40) setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v13), v11}];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1A8666574(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 identifier];
  v5 = [a3 identifier];

  return [v4 isEqualToString:v5];
}

uint64_t sub_1A8666B1C()
{
  v0 = os_log_create("com.apple.Messages", "sandboxing");
  qword_1EB30AE98 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A8668838()
{
  result = IMGetCachedDomainBoolForKeyWithDefaultValue();
  byte_1EB309340 = result;
  return result;
}

uint64_t sub_1A86688A4()
{
  result = IMGetCachedDomainBoolForKeyWithDefaultValue();
  byte_1EB30AEA0 = result;
  return result;
}

uint64_t sub_1A8668910()
{
  result = IMGetCachedDomainBoolForKeyWithDefaultValue();
  byte_1EB30AEA8 = result;
  return result;
}

uint64_t sub_1A86689BC()
{
  if (_os_feature_enabled_impl())
  {
    result = 1;
  }

  else
  {
    result = IMGetCachedDomainBoolForKeyWithDefaultValue();
  }

  byte_1EB3092F0 = result;
  return result;
}

uint64_t IMEnableModernTranscript()
{
  if (qword_1ED8C98D0 != -1)
  {
    sub_1A88C1CDC();
  }

  return byte_1EB30A560;
}

CFStringRef sub_1A8668B08()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.messages.ChatKitTester");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  byte_1EB30A560 = v2;
  return result;
}

void sub_1A86690A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A86690C0(uint64_t a1)
{
  result = WiFiNetworkIsInSaveDataMode();
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

void sub_1A86691C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = WiFiDeviceClientCopyCurrentNetwork();
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t sub_1A866927C()
{
  v0 = [objc_alloc(MEMORY[0x1E69A48A8]) initWithService:@"com.apple.madrid"];
  qword_1EB30A910 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A86694A8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  [a2 slot];
  v3 = IDSSubscriptionSlotFromCTSIMSlot();

  return [v2 numberWithInteger:v3];
}

void sub_1A86697A0(uint64_t a1)
{
  [*(a1 + 32) __unlocked_fetchAllowedChatBotExtensionsIfNecessary];
  v2 = *(*(a1 + 32) + 64);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

void sub_1A86698FC(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v4)
    {
      v5 = *v13;
      do
      {
        v6 = 0;
        do
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v12 + 1) + 8 * v6);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObject:{v7, v12}];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v4);
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v2;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Populate allowed chat bot extensions from the daemon: %@", buf, 0xCu);
      }
    }

    v9 = *(a1 + 40);
    v10 = *(v9 + 64);
    *(v9 + 64) = v2;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    *(*(a1 + 40) + 64) = v11;

    MEMORY[0x1EEE66BB8](v11);
  }
}

void sub_1A866A780(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *exc_buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A866A6DCLL);
  }

  objc_end_catch();
  _Unwind_Resume(v10);
}

void sub_1A866AA30(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A866A9A4);
  }

  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(exc_buf);
}

void sub_1A866AA70(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _cachedCarrierSettingsUniqueIDKeyForSubscriptionContext:*(a1 + 40)];
  v3 = v2;
  if (*(a1 + 40) && [v2 length] && (objc_msgSend(*(a1 + 48), "lastObject"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5))
  {
    v6 = [*(a1 + 32) __unlocked_getCachedSettingOrReadFromBundleForCarrierBundleKey:*(a1 + 48) bundleType:*(a1 + 72) forContext:*(a1 + 40) defaultValue:*(a1 + 56)];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Could not read carrier bundle id for key %@ because subscription context was nil or did not have phoneNumber/labelID %@. Returning default %@", &v13, 0x20u);
    }
  }
}

void sub_1A866B2D4(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 __unlocked_ctSubscriptionInfoWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1A866B6AC(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 __unlocked_ctActiveContextsWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t sub_1A866BC9C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Resetting subscription info to nil", v10, 2u);
    }
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  *(*(a1 + 32) + 32) = 0;
  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 16) = 0;
  *(*(a1 + 32) + 17) = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  *(v7 + 64) = 0;

  result = IMIsRunningInImagent();
  if (result)
  {
    return [*(a1 + 32) __unlocked_fetchAllowedChatBotExtensionsIfNecessary];
  }

  return result;
}

void sub_1A866C2D4(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "UPISupport generateTokenForContext completion with error: %@", &v4, 0xCu);
    }
  }
}

void sub_1A866CD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __CFString *a23, uint64_t a24)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v27 = objc_begin_catch(exception_object);
      v34 = [v27 description];
      [v26 testLogWithFormat:@"Finished tests for bundle at path: %@, with error: %@"];

      v28 = [v26 delegate];
      v29 = objc_opt_respondsToSelector();

      if (v29)
      {
        v30 = [v26 delegate];
        v31 = MEMORY[0x1E696ABC0];
        a23 = @"IMUnitTestRunnerErrorUnhandledExceptionKey";
        a24 = v27;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a24 forKeys:&a23 count:1];
        v33 = [v31 errorWithDomain:@"IMUnitTestRunnerErrorDomain" code:1 userInfo:v32];
        [v30 unitTestRunner:v26 runningTestsInBundleAtPath:v24 failedWithError:v33];
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    if (!v25)
    {
      JUMPOUT(0x1A866CD00);
    }

    JUMPOUT(0x1A866CCF4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A866D260()
{
  v0 = objc_opt_new();
  v1 = qword_1EB30AEB8;
  qword_1EB30AEB8 = v0;

  v2 = qword_1EB30AEB8;

  return MEMORY[0x1EEE66B58](v2, sel_setDateFormat_);
}

void sub_1A866E890(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = IMLogHandleForCategory("IMFocusStateManager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C1F80();
    }

LABEL_10:

    goto LABEL_11;
  }

  if ((a2 & 1) == 0)
  {
    v6 = IMLogHandleForCategory("IMFocusStateManager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C1FF4();
    }

    goto LABEL_10;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Successfully registered for dnd state updates.", v8, 2u);
    }

    goto LABEL_10;
  }

LABEL_11:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRegisteredAsStateUpdateListener:a2];
}

void sub_1A866ECB0(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v8 = IMLogHandleForCategory("IMFocusStateManager");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2034();
    }

LABEL_4:

    goto LABEL_5;
  }

  if (!v5)
  {
    v8 = IMLogHandleForCategory("IMFocusStateManager");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C20A8();
    }

    goto LABEL_4;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "DND state is: %@", &v10, 0xCu);
    }
  }

LABEL_5:
  [WeakRetained setDndState:v5];
  [WeakRetained _notifyDelegatesOfDNDStateChange];
}

void sub_1A866EE30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "DND state asynchronously received", buf, 2u);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A866EF74;
  block[3] = &unk_1E7828388;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t sub_1A866F168(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] messagesAppDomain];
  v3 = [v2 conversationListFocusFilterActionEnabled];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Received updated value for conversationListFocusFilterActionEnabled: %ld", &v6, 0xCu);
    }
  }

  return [*(a1 + 32) setFocusFilterActionIsEnabled:v3];
}

uint64_t sub_1A866F26C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] messagesAppDomain];
  v3 = [v2 userSwitchForFocusFilteringIsEnabled];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Received updated value for userSwitchForFocusFilteringIsEnabled: %ld", &v6, 0xCu);
    }
  }

  return [*(a1 + 32) setUserSwitchForFocusFilteringIsEnabled:v3];
}

uint64_t sub_1A866F5F8(uint64_t a1)
{
  v2 = [*(a1 + 40) state];
  [*(a1 + 32) setDndState:v2];

  v3 = *(a1 + 32);

  return [v3 _notifyDelegatesOfDNDStateChange];
}

id sub_1A866F6F4(void *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a1 allKeys];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v29 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (IMFileTransferGUIDIsTemporary(*(*(&v26 + 1) + 8 * i)))
        {

          v10 = v4;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = [v5 sortedArrayUsingSelector:sel_localizedStandardCompare_];
LABEL_11:
  v11 = v10;

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [a1 objectForKey:{*(*(&v22 + 1) + 8 * j), v22}];
        if (v18)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  v19 = [a1 allValues];
  v20 = [v19 arrayByExcludingObjectsInArray:v12];

  if (v20 && [v20 count])
  {
    [v12 addObjectsFromArray:v20];
  }

  return v12;
}

uint64_t IMSharedUtilitiesProtoCloudKitEncryptedMessageActionReadFrom(uint64_t a1, void *a2)
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
        v32 = 0;
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

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
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
        if (v12 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v33 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v33 & 0x7F) << v24;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v29 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v26;
          }

LABEL_50:
          *(a1 + 40) = v29;
        }

        else
        {
          if (v12 != 2)
          {
LABEL_45:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_55;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v34 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v34 & 0x7F) << v16;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v10 = v17++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_54;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v18;
          }

LABEL_54:
          *(a1 + 8) = v21;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            String = PBReaderReadString();

            v14 = String;
            v15 = 24;
            break;
          case 4:
            v23 = PBReaderReadString();

            v14 = v23;
            v15 = 16;
            break;
          case 5:
            Data = PBReaderReadData();

            v14 = Data;
            v15 = 32;
            break;
          default:
            goto LABEL_45;
        }

        *(a1 + v15) = v14;
      }

LABEL_55:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t FormattedRecentDomainDirectory()
{
  v0 = IMSystemRootDirectory();

  return [v0 stringByAppendingString:@"/var/mobile/Library/SMS/Recents/"];
}

uint64_t FormattedDataFilePath(void *a1, void *a2)
{
  v2 = [objc_msgSend(objc_msgSend(IMSystemRootDirectory() stringByAppendingString:{@"/var/mobile/Library/SMS/Recents/", "stringByAppendingPathComponent:", objc_msgSend(a1, "lastPathComponent")), "stringByAppendingPathComponent:", objc_msgSend(a2, "lastPathComponent")}];

  return [v2 stringByResolvingAndStandardizingPath];
}

uint64_t FormattedRecentsInfoDictionaryFilePath(void *a1, void *a2)
{
  v2 = [objc_msgSend(objc_msgSend(objc_msgSend(IMSystemRootDirectory() stringByAppendingString:{@"/var/mobile/Library/SMS/Recents/", "stringByAppendingPathComponent:", objc_msgSend(a1, "lastPathComponent")), "stringByAppendingPathComponent:", objc_msgSend(a2, "lastPathComponent")), "stringByAppendingPathExtension:", @"json"}];

  return [v2 stringByResolvingAndStandardizingPath];
}

uint64_t FormattedRecentsCacheFilePath(void *a1)
{
  v1 = [objc_msgSend(objc_msgSend(objc_msgSend(IMSystemRootDirectory() stringByAppendingString:{@"/var/mobile/Library/SMS/Recents/", "stringByAppendingPathComponent:", objc_msgSend(a1, "lastPathComponent")), "stringByAppendingPathComponent:", @"Recents", "stringByAppendingPathExtension:", @"json"}];

  return [v1 stringByResolvingAndStandardizingPath];
}

IMRecentItemsList *sub_1A8670F18()
{
  result = objc_alloc_init(IMRecentItemsList);
  qword_1ED8CA370 = result;
  return result;
}

id sub_1A8671054()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v1[0] = @"com.apple.Handwriting.HandwritingProvider";
  v1[1] = @"Stickers";
  v2[0] = &unk_1F1BFA640;
  v2[1] = &unk_1F1BFA658;
  qword_1EB30AEC8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:2];
  return qword_1EB30AEC8;
}

void sub_1A86711C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
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
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Caught an exception during Recents operation: %@", &a9, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x1A8671198);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A86712E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = [*(a1 + 40) _guidForFileURL:*(a1 + 48)];
  }

  v3 = [[IMRecentItem alloc] initWithGUID:v2 data:0 messageItemInfo:0];
  [*(a1 + 40) _removeRecentDataPayloadEntry:v3 forDomain:*(a1 + 56)];
}

void sub_1A86713D4(uint64_t a1)
{
  v2 = [[IMRecentItem alloc] initWithGUID:*(a1 + 32) data:*(a1 + 40) messageItemInfo:0];
  [*(a1 + 48) _removeRecentDataPayloadEntry:v2 forDomain:*(a1 + 56)];
}

void sub_1A86714A4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [objc_msgSend(IMSystemRootDirectory() stringByAppendingString:{@"/var/mobile/Library/SMS/Recents/", "stringByAppendingPathComponent:", *(a1 + 32)}];
  v4 = 0;
  if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    if (v4)
    {
      if (IMOSLoggingEnabled())
      {
        v2 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v6 = v4;
          _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Encountered error while deleting all items for domain: %@", buf, 0xCu);
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v6 = v1;
        _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Deleting recents plist: %@", buf, 0xCu);
      }
    }
  }
}

void sub_1A8671724(uint64_t a1)
{
  v2 = [[IMRecentItem alloc] initWithGUID:*(a1 + 32) data:*(a1 + 40) messageItemInfo:*(a1 + 48)];
  [*(a1 + 56) _addRecentDataPayloadEntry:v2 toDomain:*(a1 + 64)];
}

void sub_1A867193C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A867197C(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 40) = (*(a1 + 64))(*(*(*(a1 + 48) + 8) + 40));
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v2 = [*(*(*(a1 + 40) + 8) + 40) count];
      *buf = 134217984;
      v25 = v2;
      _os_log_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_INFO, "Retrieved %tu stickers from attachment query", buf, 0xCu);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        if (![v7 valueForKey:@"sticker_user_info"])
        {
          if (IMOSLoggingEnabled())
          {
            v8 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "No sticker user info dictionary found for sticker attachment!", buf, 2u);
            }
          }
        }

        [v7 valueForKey:@"sticker_user_info"];
        v9 = JWDecodeDictionary();
        if (!v9)
        {
          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Failed to decode user info dictionary from sticker_user_info blob", buf, 2u);
            }
          }
        }

        v11 = [v7 valueForKey:@"filename"];
        if ([v11 hasPrefix:@"~"])
        {
          v12 = [v11 stringByReplacingCharactersInRange:0 withString:{1, @"/var/mobile/"}];
        }

        else
        {
          v12 = [v11 stringByExpandingTildeInPath];
        }

        v13 = [v12 stringByResolvingSymlinksInPath];
        if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
        {
          v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objc_msgSend(v7, "valueForKey:", @"created_date", "integerValue")}];
          v15 = [[IMRecentItem alloc] initWithGUID:0 data:0 messageItemInfo:v9];
          -[IMRecentItem setFileURL:](v15, "setFileURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:v13]);
          [(IMRecentItem *)v15 setTimestamp:v14];
          -[IMRecentItem setAccessibilityString:](v15, "setAccessibilityString:", [v7 valueForKey:@"accessibility_string"]);
          [*(*(*(a1 + 56) + 8) + 40) addObject:v15];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8671DAC;
  block[3] = &unk_1E7828460;
  v16 = *(a1 + 56);
  block[4] = *(a1 + 32);
  block[5] = v16;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_1A8671DAC(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);
}

void sub_1A867201C(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _recentsCacheForDomain:*(a1 + 40)];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v2;
  v3 = [v2 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v3)
  {
    v5 = *v30;
    *&v4 = 138412290;
    v25 = v4;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = [v7 valueForKey:{@"guid", v25}];
        v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objc_msgSend(v7, "valueForKey:", @"timestamp", "integerValue")}];
        *(*(*(a1 + 56) + 8) + 40) = FormattedDataFilePath(*(a1 + 40), v8);
        v28 = 0;
        if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] && v28 == 1)
        {
          v10 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
          if (*(*(*(a1 + 64) + 8) + 40))
          {
            if (IMOSLoggingEnabled())
            {
              v11 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                v12 = *(*(*(a1 + 56) + 8) + 40);
                *buf = v25;
                v34 = v12;
                v13 = v11;
                v14 = "Failed to read contents of directory %@";
LABEL_16:
                _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, v14, buf, 0xCu);
              }
            }
          }

          else
          {
            *(*(*(a1 + 72) + 8) + 40) = [MEMORY[0x1E695DFF8] URLWithString:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "stringByAppendingPathComponent:", objc_msgSend(v10, "lastObject"))}];
          }
        }

        else
        {
          *(*(*(a1 + 80) + 8) + 40) = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:*(*(*(a1 + 56) + 8) + 40)];
          if (!*(*(*(a1 + 80) + 8) + 40))
          {
            if (IMOSLoggingEnabled())
            {
              v15 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                v16 = *(*(*(a1 + 56) + 8) + 40);
                *buf = v25;
                v34 = v16;
                v13 = v15;
                v14 = "Failed to retrieve payload data from file %@";
                goto LABEL_16;
              }
            }
          }
        }

        v17 = FormattedRecentsInfoDictionaryFilePath(*(a1 + 40), v8);
        if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
        {
          v18 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v17];
          if (v18)
          {
            v19 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v18 options:0 error:*(*(a1 + 64) + 8) + 40];
            if (v19)
            {
              goto LABEL_29;
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = v25;
              v34 = v17;
              _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "Failed to read data from %@", buf, 0xCu);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = *(*(*(a1 + 64) + 8) + 40);
              *buf = v25;
              v34 = v22;
              _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "Failed to serialize recent item info dictionary from JSON. Error: %@", buf, 0xCu);
            }
          }
        }

        v19 = 0;
LABEL_29:
        v23 = [[IMRecentItem alloc] initWithGUID:0 data:*(*(*(a1 + 80) + 8) + 40) messageItemInfo:v19];
        [(IMRecentItem *)v23 setTimestamp:v9];
        if (*(*(*(a1 + 72) + 8) + 40))
        {
          [(IMRecentItem *)v23 setFileURL:?];
        }

        [*(*(*(a1 + 88) + 8) + 40) addObject:v23];
      }

      v3 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v3);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A867253C;
  block[3] = &unk_1E7828460;
  v24 = *(a1 + 88);
  block[4] = *(a1 + 48);
  block[5] = v24;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_1A867253C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);
}

void sub_1A8672D40(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [objc_msgSend(IMSystemRootDirectory() stringByAppendingString:{@"/var/mobile/Library/SMS/Recents/", "stringByAppendingPathComponent:", *(a1 + 40)}];
  v4 = [*(a1 + 48) lastPathComponent];
  if (!v2)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = 0;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "No GUID provided. Using %@ as item GUID", &v19, 0xCu);
      }
    }

    v2 = [*(a1 + 56) _guidForFileURL:*(a1 + 48)];
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 48);
      v19 = 138412290;
      v20 = v7;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Generating GUID from file %@", &v19, 0xCu);
    }
  }

  v8 = [objc_msgSend(v3 stringByAppendingPathComponent:{v2), "stringByAppendingPathComponent:", v4}];
  IMSharedHelperEnsureDirectoryExistsAtPath([v8 stringByDeletingLastPathComponent]);
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      v19 = 138412546;
      v20 = v11;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Copying file URL %@ to URL %@", &v19, 0x16u);
    }
  }

  v12 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  v13 = IMOSLoggingEnabled();
  if (v12)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Copied file URL successfully!", &v19, 2u);
      }
    }

    v15 = [[IMRecentItem alloc] initWithGUID:v2 data:0 messageItemInfo:*(a1 + 64)];
    [*(a1 + 56) _addRecentDataPayloadEntry:v15 toDomain:*(a1 + 40)];
  }

  else if (v13)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 48);
      v18 = *(*(*(a1 + 72) + 8) + 40);
      v19 = 138412802;
      v20 = v17;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Failed to copy URL %@ to URL %@. Error: %@", &v19, 0x20u);
    }
  }
}

uint64_t sub_1A8673AB4(uint64_t a1, void *a2, void *a3)
{
  v4 = [a3 valueForKey:@"timestamp"];
  v5 = [a2 valueForKey:@"timestamp"];

  return [v4 compare:v5];
}

void sub_1A8673EF0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8673EC0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A8673FE4()
{
  v0 = objc_alloc_init(IMCommSafetyRequestsManager);
  qword_1ED8C98F8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A86742F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A86745B4(uint64_t a1)
{
  v43[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) && ([MEMORY[0x1E696AC08] defaultManager], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "path"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v2, "fileExistsAtPath:", v3), v3, v2, (v4 & 1) != 0))
  {
    v5 = [*(a1 + 40) cachedResultForContentAttachment:*(a1 + 32) withChatID:*(a1 + 48)];
    v6 = v5;
    if (v5)
    {
      if (*(a1 + 56))
      {
        [v5 BOOLValue];
        (*(*(a1 + 56) + 16))();
        if (IMOSLoggingEnabled())
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v8 = [v6 BOOLValue];
            v9 = [*(a1 + 32) absoluteString];
            v10 = *(a1 + 48);
            *buf = 67109634;
            *&buf[4] = v8;
            *&buf[8] = 2112;
            *&buf[10] = v9;
            *&buf[18] = 2112;
            *&buf[20] = v10;
            _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Retrieved cached result '%d' for fileURL '%@' and chatID '%@'", buf, 0x1Cu);
          }
        }
      }
    }

    else
    {
      v15 = *(a1 + 64);
      if (v15 == 2 && (v15 = IMCommSafetyContentAttachmentTypeForURL(*(a1 + 32)), v15 == 2))
      {
        if (*(a1 + 56))
        {
          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Could not get IMCommSafetyContentAttachmentType for the provided fileURL.", buf, 2u);
            }
          }

          v17 = *(a1 + 56);
          v18 = MEMORY[0x1E696ABC0];
          v40 = *MEMORY[0x1E696A578];
          v41 = @"Content attachment type is not supported";
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          v20 = [v18 errorWithDomain:@"com.apple.IMSharedUtilities.IMCommSafetyRequestsManager" code:3 userInfo:v19];
          (*(v17 + 16))(v17, 0, v20);
        }
      }

      else
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&buf[24] = sub_1A8601EE8;
        v38 = sub_1A8602170;
        v39 = [*(a1 + 40) _identifierForURL:*(a1 + 32) withChatID:*(a1 + 48)];
        objc_initWeak(&location, *(a1 + 40));
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = sub_1A8674D10;
        aBlock[3] = &unk_1E7828528;
        objc_copyWeak(v31, &location);
        v30 = buf;
        v29 = *(a1 + 56);
        v31[1] = v15;
        v21 = _Block_copy(aBlock);
        if (v15)
        {
          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = *(a1 + 32);
              v24 = @"NO";
              if (*(a1 + 72))
              {
                v24 = @"YES";
              }

              *v33 = 138412546;
              v34 = v23;
              v35 = 2112;
              v36 = v24;
              _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Start analyzeVideoFile: %@ with BlastDoorEnabled: %@", v33, 0x16u);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *v33 = 0;
              _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Calling UserSafety -analyzeVideoFile:useBlastdoor:progressHandler:completionHandler:", v33, 2u);
            }
          }

          v26 = [*(a1 + 40) userSafetyClient];
          [v26 analyzeVideoFile:*(a1 + 32) useBlastdoor:*(a1 + 72) progressHandler:&unk_1F1BA6228 completionHandler:v21];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *v33 = 0;
              _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "Calling UserSafety -analyzeImageFile:completionHandler:", v33, 2u);
            }
          }

          v26 = [*(a1 + 40) userSafetyClient];
          [v26 analyzeImageFile:*(a1 + 32) completionHandler:v21];
        }

        objc_destroyWeak(v31);
        objc_destroyWeak(&location);
        _Block_object_dispose(buf, 8);
      }
    }
  }

  else
  {
    if (!*(a1 + 56))
    {
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = 2;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Given fileURL is not valid. Calling completionHandler with error code %ld", buf, 0xCu);
      }
    }

    v12 = *(a1 + 56);
    v13 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A578];
    v43[0] = @"Invalid content attachment URL";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v14 = [v13 errorWithDomain:@"com.apple.IMSharedUtilities.IMCommSafetyRequestsManager" code:2 userInfo:v6];
    (*(v12 + 16))(v12, 0, v14);
  }
}

uint64_t IMCommSafetyContentAttachmentTypeForURL(void *a1)
{
  v1 = [a1 lastPathComponent];
  v2 = IMUTITypeForFilename(v1);

  if (IMUTITypeIsPhoto(v2) || IMUTITypeIsAnimatedImage(v2))
  {
    v3 = 0;
  }

  else if (IMUTITypeIsVideo(v2))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

void sub_1A8674D10(uint64_t a1, unsigned int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [WeakRetained _shouldForceSensitivityResult];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8674F38;
  block[3] = &unk_1E7828500;
  objc_copyWeak(&v17, (a1 + 48));
  v8 = v7 | a2;
  v18 = v8;
  block[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v8, v5);
    if (*(a1 + 56))
    {
      v10 = @"video";
    }

    else
    {
      v10 = @"image";
    }

    v11 = v10;
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v5 localizedDescription];
        v14 = v13;
        v15 = @"NO";
        *buf = 138412802;
        if (v8)
        {
          v15 = @"YES";
        }

        v20 = v15;
        v21 = 2112;
        v22 = v11;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Completed UserSafety analysis with {result=%@}. {attachmentType=%@}. error={%@}.", buf, 0x20u);
      }
    }
  }

  objc_destroyWeak(&v17);
}

void sub_1A8674EF8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A8674EB4);
  }

  objc_destroyWeak((v2 + 40));
  _Unwind_Resume(exc_buf);
}

void sub_1A8674F38(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Dispatched to main queue to cache the sensitivity result.", v4, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setSensitiveValue:*(a1 + 48) forIdentifier:*(*(*(a1 + 32) + 8) + 40)];
}

void sub_1A8674FF0(double a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = a1;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Video analysis ongoing with progress={%f}", &v6, 0xCu);
    }
  }
}

uint64_t sub_1A867535C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

Class sub_1A86754B0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EB30AEE0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1A86755F4;
    v4[4] = &unk_1E7826200;
    v4[5] = v4;
    v5 = xmmword_1E78285B8;
    v6 = 0;
    qword_1EB30AEE0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1EB30AEE0)
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
  result = objc_getClass("MADService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A88C2124();
  }

  qword_1EB30AED8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A86755F4()
{
  result = _sl_dlopen();
  qword_1EB30AEE0 = result;
  return result;
}

uint64_t sub_1A86756B8()
{
  v0 = os_log_create("com.apple.Messages", "IMRuntimeTest");
  qword_1EB30AEE8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A86764FC(_Unwind_Exception *a1)
{
  _Block_object_dispose(&v2, 8);
  _Block_object_dispose(&v3, 8);
  _Block_object_dispose(&v4, 8);
  _Unwind_Resume(a1);
}

void sub_1A86765B0(void *a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"YES";
      if (!v8)
      {
        v12 = @"NO";
      }

      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "BlastDoor defused payload data successfully: %@", &v15, 0xCu);
    }
  }

  v13 = *(a1[4] + 8);
  if (v8)
  {
    v14 = v10;
    if (!*(v13 + 40))
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
      v13 = *(a1[6] + 8);
      v14 = v9;
    }
  }

  else
  {
    v14 = v10;
  }

  objc_storeStrong((v13 + 40), v14);
}

uint64_t sub_1A8677FE0()
{
  v0 = objc_alloc_init(IMPreviewGeneratorManager);
  qword_1ED8C9868 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id sub_1A8679B50()
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = 0;
  MEMORY[0x1AC572160](&v2);
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", v2, BYTE1(v2), BYTE2(v2), BYTE3(v2), BYTE4(v2), BYTE5(v2), BYTE6(v2), HIBYTE(v2), v3, BYTE1(v3), BYTE2(v3), BYTE3(v3), BYTE4(v3), BYTE5(v3), BYTE6(v3), HIBYTE(v3)];

  return v0;
}

BOOL sub_1A8679C2C(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a1];
  v2 = v1 != 0;

  return v2;
}

void IMDispatchGroupNotifyWithTimeout(void *a1, void *a2, dispatch_time_t a3, const void *a4)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_1A8601F08;
  v11[4] = sub_1A8602180;
  v7 = a2;
  v8 = a1;
  v12 = _Block_copy(a4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A867A0B0;
  block[3] = &unk_1E78261C8;
  block[4] = v11;
  dispatch_after(a3, v7, block);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A867A110;
  v9[3] = &unk_1E78261C8;
  v9[4] = v11;
  dispatch_group_notify(v8, v7, v9);

  _Block_object_dispose(v11, 8);
}

void sub_1A867A0B0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  if (v3)
  {
    v3[2](v3, 1);
    v2 = *(*(a1 + 32) + 8);
    v3 = *(v2 + 40);
  }

  *(v2 + 40) = 0;
}

void sub_1A867A110(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  if (v3)
  {
    v3[2](v3, 0);
    v2 = *(*(a1 + 32) + 8);
    v3 = *(v2 + 40);
  }

  *(v2 + 40) = 0;
}

void sub_1A867A360(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a2;
    if (v3)
    {
      v4 = v3;
      [v3 _notifyObserver];
    }
  }
}

void *sub_1A867A4D4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED8C9C00)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = sub_1A867A614;
    v5[4] = &unk_1E7826200;
    v5[5] = v5;
    v6 = xmmword_1E78285F8;
    v7 = 0;
    qword_1ED8C9C00 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1ED8C9C00;
    if (qword_1ED8C9C00)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1ED8C9C00;
LABEL_5:
  result = dlsym(v2, "CRAcceptedIntroductionsDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED8C9BD0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A867A614()
{
  result = _sl_dlopen();
  qword_1ED8C9C00 = result;
  return result;
}

uint64_t sub_1A867B2FC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v7 = [v4 identifier];
      v8 = [v5 identifier];
    }

    else
    {
      objc_opt_class();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v7 = [v4 firstObject];
        v9 = [v5 firstObject];
        v10 = [v9 identifier];
        v11 = [v7 identifier];
        v6 = [v10 compare:v11];

        goto LABEL_12;
      }

      v7 = [v4 firstObject];
      v8 = [v5 firstObject];
    }

    v9 = v8;
    v6 = [v7 compare:v8];
LABEL_12:

    goto LABEL_13;
  }

  v6 = [v5 compare:v4];
LABEL_13:

  return v6;
}

void sub_1A867B6A8(void *a1)
{
  v1 = a1;
  v2 = IMDefaultServiceCapabilities();
  v7 = [v2 mutableCopy];

  v3 = [v1 objectForKeyedSubscript:IMServicePropertyCapabilities];
  [v7 addEntriesFromDictionary:v3];

  [v1 setObject:v7 forKeyedSubscript:IMServicePropertyCapabilities];
  v4 = IMDefaultServiceHybridCapabilities();
  v5 = [v4 mutableCopy];

  v6 = [v1 objectForKeyedSubscript:@"HybridCapabilities"];
  [v5 addEntriesFromDictionary:v6];

  [v1 setObject:v5 forKeyedSubscript:@"HybridCapabilities"];
}

void sub_1A867B7A4(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"RegionCapabilities"];
  if ([v2 count])
  {
    v3 = MGGetStringAnswer();
    if (v3)
    {
      v4 = [v2 objectForKeyedSubscript:v3];
      if ([v4 count])
      {
        if (IMOSLoggingEnabled())
        {
          v5 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            v11 = 138412290;
            v12 = v3;
            _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Applying capability overrides for region %@", &v11, 0xCu);
          }
        }

        v6 = [v1 objectForKeyedSubscript:IMServicePropertyCapabilities];
        v7 = v6;
        v8 = MEMORY[0x1E695E0F8];
        if (v6)
        {
          v8 = v6;
        }

        v9 = v8;

        v10 = [v9 mutableCopy];
        [v10 addEntriesFromDictionary:v4];
        [v1 setObject:v10 forKeyedSubscript:IMServicePropertyCapabilities];
      }
    }
  }
}

id IMServicePropertiesFromIMServiceBundle(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E695DF20];
  v3 = [v1 pathForResource:@"ServiceProperties" ofType:@"plist"];
  v4 = [v2 dictionaryWithContentsOfFile:v3];

  v5 = [v4 objectForKey:*MEMORY[0x1E69A5E90]];
  v6 = [v4 mutableCopy];
  v7 = *MEMORY[0x1E69A5E48];
  v8 = [v4 objectForKey:*MEMORY[0x1E69A5E48]];
  if (v8)
  {
    v9 = [v1 localizedStringForKey:v8 value:&stru_1F1BB91F0 table:v5];
    [v6 setObject:v9 forKey:v7];
  }

  v10 = *MEMORY[0x1E69A5EB0];
  v11 = [v4 objectForKey:*MEMORY[0x1E69A5EB0]];
  v12 = [v1 localizedStringForKey:v11 value:&stru_1F1BB91F0 table:v5];
  [v6 setObject:v12 forKey:v10];

  v13 = *MEMORY[0x1E69A5ED0];
  v14 = [v4 objectForKey:*MEMORY[0x1E69A5ED0]];
  v15 = [v1 localizedStringForKey:v14 value:&stru_1F1BB91F0 table:v5];
  [v6 setObject:v15 forKey:v13];

  sub_1A867B6A8(v6);
  sub_1A867B7A4(v6);

  return v6;
}

id sub_1A867BDB4()
{
  qword_1EB30AEF8 = objc_alloc_init(MEMORY[0x1E696AD10]);
  qword_1EB30AF00 = objc_alloc_init(MEMORY[0x1E695DF90]);
  result = objc_alloc_init(MEMORY[0x1E695DFA8]);
  qword_1EB30AF08 = result;
  return result;
}

void sub_1A867C458(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A867C418);
  }

  _Unwind_Resume(a1);
}

void sub_1A867CDB0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A867CD50);
  }

  _Unwind_Resume(a1);
}

void sub_1A867CFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
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
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "UnarchiverDecoder, caught an exception trying to decode attribution info array %@", &a9, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x1A867CF50);
  }

  _Unwind_Resume(exception_object);
}

id IMGetAttributedInfoArrayAllowlistedClasses()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:7];
  v2 = [v0 setWithArray:{v1, v4, v5, v6, v7, v8, v9}];

  return v2;
}

void IMRemovePrefixFromMentions(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A867D220;
  v4[3] = &unk_1E7827F70;
  v5 = v1;
  v3 = v1;
  [v3 enumerateAttribute:@"__kIMMentionConfirmedMention" inRange:0 options:v2 usingBlock:{0, v4}];
}

void sub_1A867D220(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = [*(a1 + 32) string];
    v7 = [v6 substringFromIndex:a3];
    v8 = [v7 hasPrefix:@"@"];

    if (v8)
    {
      v9 = *(a1 + 32);

      [v9 deleteCharactersInRange:{a3, 1}];
    }
  }
}

id sub_1A867D2D4()
{
  if (qword_1EB30AF20 != -1)
  {
    sub_1A88C25AC();
  }

  v1 = qword_1EB30AF18;

  return v1;
}

void sub_1A867D318()
{
  v0 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [v0 mutableCopy];

  objc_msgSend(v3, "addCharactersInString:", @"*({[/_'");
  v1 = [v3 copy];
  v2 = qword_1EB30AF18;
  qword_1EB30AF18 = v1;
}

void IMEnumerateMentionsInString(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A867D4F8;
  aBlock[3] = &unk_1E7828670;
  v7 = v5;
  v11 = v7;
  v8 = v6;
  v12 = v8;
  v13 = &v14;
  v9 = _Block_copy(aBlock);
  [v7 enumerateSubstringsInRange:0 options:objc_msgSend(v7 usingBlock:{"length"), 3, v9}];
  if ((v15[3] & 1) == 0)
  {
    (*(v9 + 2))(v9, &stru_1F1BB91F0, a2, 0, a2, 0, v15 + 3);
  }

  _Block_object_dispose(&v14, 8);
}

void sub_1A867D4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A867D4F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (a2)
  {
    if (a3)
    {
      v11 = a3 - 1;
      if ([*(a1 + 32) characterAtIndex:a3 - 1] == 64)
      {
        if (a3 < 2 || (v12 = [*(a1 + 32) characterAtIndex:a3 - 2], sub_1A867D2D4(), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "characterIsMember:", v12), v13, v11 != 0x7FFFFFFFFFFFFFFFLL) && v14)
        {
          v15 = *(a1 + 40);
          v16 = [*(a1 + 32) substringWithRange:{v11, a4 + 1}];
          (*(v15 + 16))(v15, v16, v11, a4 + 1, *(*(a1 + 48) + 8) + 24);

          if (*(*(*(a1 + 48) + 8) + 24) == 1)
          {
            *a7 = 1;
          }
        }
      }
    }
  }
}

uint64_t IMRangeOfCurrentTypedMention(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = &unk_1A8980B7F;
  v11 = xmmword_1A88E12D0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A867D6E4;
  v6[3] = &unk_1E7828698;
  v6[4] = &v7;
  v6[5] = a2;
  IMEnumerateMentionsInString(v3, a2, v6);
  v4 = v8[4];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1A867D6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A867D6E4(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, char *a5)
{
  v5 = *(result + 40);
  v7 = v5 >= a3 && v5 - a3 < a4 || v5 == a3 + a4;
  v8 = v7;
  if (v7)
  {
    v9 = *(*(result + 32) + 8);
    *(v9 + 32) = a3;
    *(v9 + 40) = a4;
  }

  *a5 = v8;
  return result;
}

id IMMentionMeTokensForContact(void *a1, char a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695DFA8] set];
  if (v3)
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v5 = [v3 phoneNumbers];
    v6 = [v5 countByEnumeratingWithState:&v83 objects:v91 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v84;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v84 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v83 + 1) + 8 * i) value];
          v11 = [v10 stringValue];
          v12 = [v11 _stripFZIDPrefix];

          if ([v12 length])
          {
            v13 = IMNormalizePhoneNumber(v12);

            if ([v13 length])
            {
              [v4 addObject:v13];
            }
          }

          else
          {
            v13 = v12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v83 objects:v91 count:16];
      }

      while (v7);
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v14 = [v3 emailAddresses];
    v15 = [v14 countByEnumeratingWithState:&v79 objects:v90 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v80;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v80 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v79 + 1) + 8 * j) value];
          v20 = [v19 _stripFZIDPrefix];

          if ([v20 length])
          {
            [v4 addObject:v20];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v79 objects:v90 count:16];
      }

      while (v16);
    }

    if ((a2 & 1) == 0)
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v21 = [v3 urlAddresses];
      v22 = [v21 countByEnumeratingWithState:&v75 objects:v89 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v76;
        do
        {
          for (k = 0; k != v23; ++k)
          {
            if (*v76 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v75 + 1) + 8 * k);
            v27 = [v26 value];
            v28 = [v27 length];

            if (v28)
            {
              v29 = [v26 value];
              [v4 addObject:v29];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v75 objects:v89 count:16];
        }

        while (v23);
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v30 = [v3 socialProfiles];
      v31 = [v30 countByEnumeratingWithState:&v71 objects:v88 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v72;
        do
        {
          for (m = 0; m != v32; ++m)
          {
            if (*v72 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = [*(*(&v71 + 1) + 8 * m) value];
            v36 = [v35 username];
            v37 = [v36 length];

            if (v37)
            {
              v38 = [v35 username];
              [v4 addObject:v38];
            }

            v39 = [v35 userIdentifier];
            v40 = [v39 length];

            if (v40)
            {
              v41 = [v35 userIdentifier];
              [v4 addObject:v41];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v71 objects:v88 count:16];
        }

        while (v32);
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v42 = [v3 instantMessageAddresses];
      v43 = [v42 countByEnumeratingWithState:&v67 objects:v87 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v68;
        do
        {
          for (n = 0; n != v44; ++n)
          {
            if (*v68 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = [*(*(&v67 + 1) + 8 * n) value];
            v48 = [v47 username];
            v49 = [v48 length];

            if (v49)
            {
              v50 = [v47 username];
              [v4 addObject:v50];
            }
          }

          v44 = [v42 countByEnumeratingWithState:&v67 objects:v87 count:16];
        }

        while (v44);
      }

      v51 = [v3 givenName];
      v52 = [v51 length];

      if (v52)
      {
        v53 = [v3 givenName];
        [v4 addObject:v53];
      }

      v54 = [v3 middleName];
      v55 = [v54 length];

      if (v55)
      {
        v56 = [v3 middleName];
        [v4 addObject:v56];
      }

      v57 = [v3 familyName];
      v58 = [v57 length];

      if (v58)
      {
        v59 = [v3 familyName];
        [v4 addObject:v59];
      }

      v60 = [v3 previousFamilyName];
      v61 = [v60 length];

      if (v61)
      {
        v62 = [v3 previousFamilyName];
        [v4 addObject:v62];
      }

      v63 = [v3 nickname];
      v64 = [v63 length];

      if (v64)
      {
        v65 = [v3 nickname];
        [v4 addObject:v65];
      }
    }
  }

  return v4;
}

id IMMentionContactKeysForMe()
{
  v8[12] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C240];
  v8[0] = *MEMORY[0x1E695C300];
  v8[1] = v0;
  v1 = *MEMORY[0x1E695C230];
  v8[2] = *MEMORY[0x1E695C2F0];
  v8[3] = v1;
  v2 = *MEMORY[0x1E695C308];
  v8[4] = *MEMORY[0x1E695C390];
  v8[5] = v2;
  v3 = *MEMORY[0x1E695C330];
  v8[6] = *MEMORY[0x1E695C310];
  v8[7] = v3;
  v4 = *MEMORY[0x1E695C418];
  v8[8] = *MEMORY[0x1E695C208];
  v8[9] = v4;
  v5 = *MEMORY[0x1E695C2B0];
  v8[10] = *MEMORY[0x1E695C3D0];
  v8[11] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:12];

  return v6;
}

void sub_1A867E728()
{
  v0 = MEMORY[0x1AC570AB0]("CRAddressKindEmail", @"CoreRecents");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB30AF30, v1);
}

void sub_1A867E778()
{
  v0 = MEMORY[0x1AC570AB0]("CRAddressKindPhoneNumber", @"CoreRecents");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB30AF40, v1);
}

void sub_1A867E7C8()
{
  v0 = MEMORY[0x1AC570AB0]("CRRecentContactMetadataEventTime", @"CoreRecents");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB30AF50, v1);
}

void sub_1A867E818()
{
  v0 = MEMORY[0x1AC570AB0]("CRRecentContactMetadataReferenceURL", @"CoreRecents");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB30AF60, v1);
}

void sub_1A867E868()
{
  v0 = MEMORY[0x1AC570AB0]("CRRecentContactMetadataFromAddress", @"CoreRecents");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB30AF70, v1);
}

void sub_1A867E8B8()
{
  v0 = MEMORY[0x1AC570AB0]("CRRecentContactMetadataFromAddressKind", @"CoreRecents");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB30AF80, v1);
}

void sub_1A867E908()
{
  v0 = MEMORY[0x1AC570AB0]("CRRecentContactMetadataFrom", @"CoreRecents");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB30AF90, v1);
}

id sub_1A867EC8C()
{
  if (qword_1EB30AFA0 != -1)
  {
    sub_1A88C26E8();
  }

  v1 = qword_1EB30AF98;

  return v1;
}

uint64_t sub_1A867ED3C()
{
  result = MEMORY[0x1AC570AA0](@"CRRecentContactsLibrary", @"CoreRecents");
  qword_1EB30AF98 = result;
  return result;
}

id IMChatServiceNames()
{
  if (qword_1EB30AFA8 != -1)
  {
    sub_1A88C2784();
  }

  v1 = qword_1EB30AFB0;

  return v1;
}

void sub_1A867FBEC()
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = IMServiceNameiMessage[0];
  v2[1] = IMServiceNameiMessageLite[0];
  v2[2] = IMServiceNameSMS[0];
  v2[3] = IMServiceNameRCS[0];
  v2[4] = IMServiceNameSatelliteSMS;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:5];
  v1 = qword_1EB30AFB0;
  qword_1EB30AFB0 = v0;
}

void sub_1A867FE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFArray *sub_1A8680188(void *a1, void *a2, int a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v34 = a2;
  theArray = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF00] date];
  v36 = [MEMORY[0x1E695DEE8] currentCalendar];
  v28 = v6;
  v37 = [v36 components:24 fromDate:v6];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    v38 = *MEMORY[0x1E695C1D0];
    v29 = *MEMORY[0x1E695C240];
    v33 = a3;
    do
    {
      v11 = 0;
      do
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * v11);
        if (MEMORY[0x1AC570A30]())
        {
          v13 = IMLogHandleForCategory("IMReplySuggestionGenerator");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v45 = v12;
            v14 = v13;
            v15 = "Handle %@ is a business ID, for SpecialEventReply.";
            goto LABEL_32;
          }

          goto LABEL_11;
        }

        if (MEMORY[0x1AC570A60](v12))
        {
          v13 = IMLogHandleForCategory("IMReplySuggestionGenerator");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v45 = v12;
            v14 = v13;
            v15 = "Handle %@ is a stewie ID, not eligible for a SpecialEventReply";
LABEL_32:
            _os_log_debug_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_DEBUG, v15, buf, 0xCu);
          }

LABEL_11:
          v16 = v12;
LABEL_12:

          v12 = v16;
LABEL_13:

          goto LABEL_14;
        }

        if (a3)
        {
          v17 = [IMContactUtilities getContactGivenNameAndBirthdayForHandleID:v12];
        }

        else
        {
          if (qword_1EB30AFC8 != -1)
          {
            sub_1A88C2798();
          }

          if (!off_1EB30AFC0)
          {
            goto LABEL_13;
          }

          v17 = off_1EB30AFC0(v12);
        }

        v16 = v17;

        if (v16)
        {
          v13 = [v16 objectForKey:v38];
          if (v13)
          {
            v18 = [v36 components:24 fromDate:v13];
            v19 = [v18 month];
            if (v19 == [v37 month])
            {
              v20 = [v18 day];
              if (v20 == [v37 day])
              {
                if ([v7 count] < 2)
                {
                  v25 = IMSharedUtilitiesFrameworkBundle();
                  v24 = sub_1A8681D10(v34, @"HAPPY_BIRTHDAY", v25);

                  if (theArray && v24)
                  {
                    CFArrayAppendValue(theArray, v24);
                  }

                  a3 = v33;
                }

                else
                {
                  v21 = [v16 objectForKey:v29];
                  v30 = MEMORY[0x1E696AEC0];
                  v31 = IMSharedUtilitiesFrameworkBundle();
                  v22 = sub_1A8681D10(v34, @"HAPPY_BIRTHDAY_TARGETED", v31);
                  v32 = v21;
                  v23 = [v30 stringWithValidatedFormat:v22 validFormatSpecifiers:@"Happy Birthday error:%@!", 0, v21];

                  if (theArray && v23)
                  {
                    CFArrayAppendValue(theArray, v23);
                  }

                  a3 = v33;
                  v24 = v32;
                }
              }
            }
          }

          goto LABEL_12;
        }

LABEL_14:
        ++v11;
      }

      while (v9 != v11);
      v26 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
      v9 = v26;
    }

    while (v26);
  }

  return theArray;
}