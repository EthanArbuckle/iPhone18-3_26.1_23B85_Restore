void sub_24E5E1924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24E5E1D24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t AMPGetBidiClass(int a1)
{
  if (a1 == 65532)
  {
    return 14;
  }

  v2 = AMPGetICUCharDirection();
  if (v2 > 0x16)
  {
    return 0;
  }

  else
  {
    return qword_24F935208[v2];
  }
}

void ASKNQMLParserStartDocument(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  [v2 parserDidStartDocument:v1];
}

void ASKNQMLParserEndDocument(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  [v2 parserDidEndDocument:v1];
}

void ASKNQMLParserStartElement(void *a1, const xmlChar *a2, xmlChar **a3)
{
  v16 = a1;
  if (xmlStrEqual(a2, "li"))
  {
    v5 = [v16 delegate];
    [v5 parserDidStartListElement:v16];
  }

  else
  {
    v18 = 0;
    if (TryListTypeFromName(a2, &v18))
    {
      v5 = [v16 delegate];
      [v5 parser:v16 didStartListOfStyle:v18];
    }

    else
    {
      v17 = 0;
      if (!TryTextElementFromName(a2, &v17))
      {
        goto LABEL_14;
      }

      v5 = [v16 delegate];
      v6 = v17;
      if (a3)
      {
        v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v8 = *a3;
        if (*a3)
        {
          v9 = a3 + 2;
          do
          {
            v10 = *(v9 - 1);
            v11 = xmlStrlen(v8);
            v12 = NSStringFromXmlChar(v8, v11);
            v13 = xmlStrlen(v10);
            v14 = NSStringFromXmlChar(v10, v13);
            [v7 setObject:v14 forKeyedSubscript:v12];

            v15 = *v9;
            v9 += 2;
            v8 = v15;
          }

          while (v15);
        }
      }

      else
      {
        v7 = MEMORY[0x277CBEC10];
      }

      [v5 parser:v16 didStartElement:v6 attributes:v7];
    }
  }

LABEL_14:
}

void ASKNQMLParserEndElement(void *a1, const xmlChar *a2)
{
  v4 = a1;
  if (xmlStrEqual(a2, "br"))
  {
    v3 = [v4 delegate];
    [v3 parserDidFindNewline:v4];
  }

  else if (xmlStrEqual(a2, "li"))
  {
    v3 = [v4 delegate];
    [v3 parserDidEndListElement:v4];
  }

  else
  {
    v6 = 0;
    if (TryListTypeFromName(a2, &v6))
    {
      v3 = [v4 delegate];
      [v3 parser:v4 didEndListOfStyle:v6];
    }

    else
    {
      v5 = 0;
      if (!TryTextElementFromName(a2, &v5))
      {
        goto LABEL_10;
      }

      v3 = [v4 delegate];
      [v3 parser:v4 didEndElement:v5];
    }
  }

LABEL_10:
}

void ASKNQMLParserCharacters(void *a1, __CFString *a2, int a3)
{
  v7 = a1;
  v5 = NSStringFromXmlChar(a2, a3);
  if (v5)
  {
    v6 = [v7 delegate];
    [v6 parser:v7 didFindCharacters:v5];
  }
}

void ASKNQMLParserError(void *a1)
{
  v3 = a1;
  LastError = xmlCtxtGetLastError([v3 _parserContext]);
  if (LastError)
  {
    v2 = LastError;
    [v3 reportParseError:LastError];
    if (v2->level == XML_ERR_FATAL)
    {
      xmlStopParser([v3 _parserContext]);
    }
  }
}

uint64_t TryListTypeFromName(const xmlChar *a1, uint64_t *a2)
{
  if (xmlStrEqual(a1, "ol"))
  {
    v4 = 0;
  }

  else
  {
    result = xmlStrEqual(a1, "ul");
    if (!result)
    {
      return result;
    }

    v4 = 1;
  }

  *a2 = v4;
  return 1;
}

uint64_t TryTextElementFromName(const xmlChar *a1, uint64_t *a2)
{
  if (xmlStrEqual(a1, "b") || xmlStrEqual(a1, "em"))
  {
    v4 = 0;
LABEL_4:
    *a2 = v4;
    return 1;
  }

  if (xmlStrEqual(a1, "i"))
  {
    v4 = 1;
    goto LABEL_4;
  }

  if (xmlStrEqual(a1, "u"))
  {
    v4 = 2;
    goto LABEL_4;
  }

  if (xmlStrEqual(a1, "strike") || xmlStrEqual(a1, "del"))
  {
    v4 = 3;
    goto LABEL_4;
  }

  if (xmlStrEqual(a1, "p") || (result = xmlStrEqual(a1, "div"), result))
  {
    v4 = 4;
    goto LABEL_4;
  }

  return result;
}

__CFString *NSStringFromXmlChar(__CFString *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      a1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a1 length:a2 encoding:4];
    }

    else
    {
      a1 = &stru_28623EE30;
    }

    v2 = vars8;
  }

  return a1;
}

uint64_t JUScreenClassGetMain()
{
  if (JUScreenClassGetMain_onceToken != -1)
  {
    JUScreenClassGetMain_cold_1();
  }

  return JUScreenClassGetMain_mainScreenClass;
}

void __JUScreenClassGetMain_block_invoke()
{
  v0 = MGGetSInt32Answer();
  v1 = 0;
  switch(v0)
  {
    case 3:
    case 4:
    case 6:
    case 7:
    case 30:
    case 31:
      v1 = 7;
      break;
    case 5:
      v1 = 1;
      break;
    case 8:
      if (JUScreenClassGetMainIsZoomed_onceToken != -1)
      {
        __JUScreenClassGetMain_block_invoke_cold_1();
      }

      v2 = JUScreenClassGetMainIsZoomed_isZoomed == 0;
      v1 = 1;
      goto LABEL_25;
    case 9:
    case 10:
      if (JUScreenClassGetMainIsZoomed_onceToken != -1)
      {
        __JUScreenClassGetMain_block_invoke_cold_1();
      }

      v2 = JUScreenClassGetMainIsZoomed_isZoomed == 0;
      v1 = 2;
LABEL_25:
      if (v2)
      {
        ++v1;
      }

      break;
    case 11:
      v3 = MGGetSInt32Answer();
      v1 = 9;
      if (v3 == 2)
      {
        v1 = 11;
      }

      break;
    case 12:
      v1 = 13;
      break;
    case 13:
      v1 = 12;
      break;
    case 14:
      v1 = 8;
      break;
    case 15:
    case 22:
      v1 = 4;
      break;
    case 16:
      v1 = 14;
      break;
    case 17:
      v1 = 15;
      break;
    case 18:
      v1 = 6;
      break;
    case 19:
      v1 = 5;
      break;
    case 20:
      v1 = 10;
      break;
    case 21:
    case 23:
      v1 = 16;
      break;
    case 24:
      v1 = 19;
      break;
    case 25:
      v1 = 20;
      break;
    case 28:
      v1 = 18;
      break;
    case 32:
      v1 = 23;
      break;
    case 33:
      v1 = 24;
      break;
    case 36:
      v1 = 25;
      break;
    case 37:
      v1 = 26;
      break;
    case 39:
      v1 = 27;
      break;
    default:
      break;
  }

  JUScreenClassGetMain_mainScreenClass = v1;
}

uint64_t JUScreenClassGetMainIsZoomed()
{
  if (JUScreenClassGetMainIsZoomed_onceToken != -1)
  {
    __JUScreenClassGetMain_block_invoke_cold_1();
  }

  return JUScreenClassGetMainIsZoomed_isZoomed;
}

double JUScreenClassGetMainScale()
{
  if (JUScreenClassGetMainScale_onceToken != -1)
  {
    JUScreenClassGetMainScale_cold_1();
  }

  return *&JUScreenClassGetMainScale_scale;
}

double __JUScreenClassGetMainScale_block_invoke()
{
  MGGetFloat32Answer();
  result = v0;
  JUScreenClassGetMainScale_scale = *&result;
  return result;
}

void __JUScreenClassGetMainIsZoomed_block_invoke()
{
  v1 = *MEMORY[0x277CBF3A8];
  v0 = *(MEMORY[0x277CBF3A8] + 8);
  v2 = MGCopyAnswer();
  v3 = v0;
  v4 = v1;
  if (v2)
  {
    v5 = v2;
    BytePtr = CFDataGetBytePtr(v2);
    Length = CFDataGetLength(v5);
    v3 = v0;
    v4 = v1;
    if (Length >= 0x10)
    {
      v8 = &BytePtr[Length & 0xFFFFFFFFFFFFFFF0];
      v4 = *(v8 - 2);
      v3 = *(v8 - 1);
    }

    CFRelease(v5);
  }

  if (v4 == v1 && v3 == v0)
  {
    JUScreenClassGetMainIsZoomed_isZoomed = 0;
  }

  else
  {
    v10 = MGCopyAnswer();
    if (v10)
    {
      v23 = v10;
      v11 = [v10 objectForKeyedSubscript:@"zoomed"];
      if ([v11 count] >= 4)
      {
        v12 = [v11 objectAtIndexedSubscript:0];
        v13 = [v11 objectAtIndexedSubscript:1];
        v14 = [v11 objectAtIndexedSubscript:2];
        v15 = [v11 objectAtIndexedSubscript:3];
        [v12 floatValue];
        v17 = v16;
        [v13 floatValue];
        v1 = (v17 * v18);
        [v14 floatValue];
        v20 = v19;
        [v15 floatValue];
        v0 = (v20 * v21);
      }

      v10 = v23;
    }

    v22 = v4 == v1;
    if (v3 != v0)
    {
      v22 = 0;
    }

    JUScreenClassGetMainIsZoomed_isZoomed = v22;
  }
}

uint64_t JUScreenClassFromPortraitSize(double a1, double a2)
{
  result = 0;
  for (i = &qword_24F9352C8; a1 != *(i - 1) || a2 != *i; i += 2)
  {
    if (++result == 28)
    {
      return 0;
    }
  }

  return result;
}

uint64_t JUScreenClassFromLandscapeSize(double a1, double a2)
{
  result = 0;
  for (i = &qword_24F9352C8; a1 != *i || a2 != *(i - 1); i += 2)
  {
    if (++result == 28)
    {
      return 0;
    }
  }

  return result;
}

double JUScreenClassGetCornerRadius()
{
  if (JUScreenClassGetCornerRadius_onceToken != -1)
  {
    JUScreenClassGetCornerRadius_cold_1();
  }

  return *&JUScreenClassGetCornerRadius_cornerRadius;
}

double __JUScreenClassGetCornerRadius_block_invoke()
{
  MGGetFloat32Answer();
  result = v0;
  JUScreenClassGetCornerRadius_cornerRadius = *&result;
  return result;
}

BOOL JUScreenClassHasRoundedCorners()
{
  if (JUScreenClassGetCornerRadius_onceToken != -1)
  {
    JUScreenClassGetCornerRadius_cold_1();
  }

  return *&JUScreenClassGetCornerRadius_cornerRadius > 0.0;
}

__CFString *JUScreenClassGetString(uint64_t a1)
{
  if ((a1 - 1) > 0x1A)
  {
    return @".unknown";
  }

  else
  {
    return off_27968B288[a1 - 1];
  }
}

uint64_t ASKPerformanceProfileGetForCurrentDevice()
{
  if (ASKPerformanceProfileGetForCurrentDevice_onceToken != -1)
  {
    ASKPerformanceProfileGetForCurrentDevice_cold_1();
  }

  return ASKPerformanceProfileGetForCurrentDevice_devicePerformanceProfile;
}

void __ASKPerformanceProfileGetForCurrentDevice_block_invoke()
{
  v4 = MGGetStringAnswer();
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if ([&unk_286277BE8 containsObject:v4] & 1) != 0 || objc_msgSend(v1, "length") && (objc_msgSend(&unk_286277C00, "containsObject:", v1))
  {
    v2 = 0;
  }

  else
  {
    v3 = [&unk_286277C18 containsObject:v4];
    v2 = 1;
    if (!v3)
    {
      v2 = 2;
    }
  }

  ASKPerformanceProfileGetForCurrentDevice_devicePerformanceProfile = v2;
}

__CFString *ASKPerformanceProfileGetDescription(uint64_t a1)
{
  v1 = @"poor";
  if (a1 == 1)
  {
    v1 = @"fair";
  }

  if (a1 == 2)
  {
    return @"good";
  }

  else
  {
    return v1;
  }
}

void sub_24E5E4000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ASKNetworkQualityInquiryReportMake_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (LinkQualityDataKeyIsAllowed_onceToken != -1)
  {
    __ASKNetworkQualityInquiryReportMake_block_invoke_cold_1();
  }

  if ([LinkQualityDataKeyIsAllowed_allowedkeys containsObject:v7])
  {
    v6 = [MEMORY[0x277CBEB68] null];

    if (v6 != v5)
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
    }
  }
}

void __LinkQualityDataKeyIsAllowed_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"dataStalls", @"isKnownGood", @"isLowInternetDL", @"isLowInternetUL", @"loadedLQM", @"LQM", @"radioTechnology", @"linkQuality", @"lastReportedRxSignalStrength", 0}];
  v1 = LinkQualityDataKeyIsAllowed_allowedkeys;
  LinkQualityDataKeyIsAllowed_allowedkeys = v0;
}

void sub_24E5E4C80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_24E5E5C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NSOperationQueuePriorityForLoadReason(unint64_t a1, int a2)
{
  if (a2)
  {
    if (a1 - 2 < 4)
    {
      v2 = &unk_24F9354B0 + 8 * a1 - 16;
      return *v2;
    }

    return -8;
  }

  else
  {
    if (a1 < 6)
    {
      v2 = &unk_24F9354D0 + 8 * a1;
      return *v2;
    }

    return 4;
  }
}

void sub_24E5E6410(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24E5E6560(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24E5E66D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24E5E6908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24E5E6B18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24E5E6E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ASKProcessLaunchTimeInitialize()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CBEAA8] date];
  [v1 timeIntervalSince1970];
  ASKProcessLaunchTime = v2;

  objc_autoreleasePoolPop(v0);
}

void fillMutableSetWithRegionType(void *a1)
{
  v1 = a1;
  uregion_getAvailable();
  v2 = uenum_count();
  if (v2 >= 1)
  {
    do
    {
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:uenum_next()];
      [v1 addObject:v3];

      --v2;
    }

    while (v2);
  }

  uenum_close();
}

id AMPICUFormattingLengthFallbacks(void)
{
  if (AMPICUFormattingLengthFallbacks(void)::onceToken != -1)
  {
    AMPICUFormattingLengthFallbacks();
  }

  v1 = AMPICUFormattingLengthFallbacks(void)::sFormattingLengthFallbacks;

  return v1;
}

size_t ___ZL15icuDataLangPathv_block_invoke()
{
  if (icuDataPathPrefix(void)::onceToken != -1)
  {
    ___ZL15icuDataLangPathv_block_invoke_cold_1();
  }

  v0 = strlen(icuDataPathPrefix(void)::sICUDataPathPrefix);
  v1 = malloc_type_calloc(v0 + 5, 1uLL, 0x100004077774924uLL);
  icuDataLangPath(void)::sICUDataLangPath = v1;
  if (icuDataPathPrefix(void)::onceToken != -1)
  {
    ___ZL15icuDataLangPathv_block_invoke_cold_1();
  }

  strcpy(v1, icuDataPathPrefix(void)::sICUDataPathPrefix);
  result = strlen(icuDataLangPath(void)::sICUDataLangPath);
  strcpy((icuDataLangPath(void)::sICUDataLangPath + result), "lang");
  return result;
}

size_t ___ZL17icuDataPathPrefixv_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  u_getDataVersion();
  snprintf(__str, 0x10uLL, "%d", 0);
  v0 = strlen(__str);
  v1 = malloc_type_calloc(v0 + 8, 1uLL, 0x100004077774924uLL);
  strcpy(v1, "icudt");
  v2 = strcat(v1, __str);
  *&v1[strlen(v2)] = 108;
  result = strlen(v1);
  *&v1[result] = 45;
  icuDataPathPrefix(void)::sICUDataPathPrefix = v1;
  return result;
}

size_t ___ZL17icuDataRegionPathv_block_invoke()
{
  if (icuDataPathPrefix(void)::onceToken != -1)
  {
    ___ZL15icuDataLangPathv_block_invoke_cold_1();
  }

  v0 = strlen(icuDataPathPrefix(void)::sICUDataPathPrefix);
  v1 = malloc_type_calloc(v0 + 7, 1uLL, 0x100004077774924uLL);
  icuDataRegionPath(void)::sICUDataRegionPath = v1;
  if (icuDataPathPrefix(void)::onceToken != -1)
  {
    ___ZL15icuDataLangPathv_block_invoke_cold_1();
  }

  strcpy(v1, icuDataPathPrefix(void)::sICUDataPathPrefix);
  result = strlen(icuDataRegionPath(void)::sICUDataRegionPath);
  strcpy((icuDataRegionPath(void)::sICUDataRegionPath + result), "region");
  return result;
}

void ___ZL31AMPICUFormattingLengthFallbacksv_block_invoke()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v2[0] = AMPICUFormattingLengthVariant;
  v2[1] = AMPICUFormattingLengthStandAlone;
  v3[0] = AMPICUFormattingLengthStandard;
  v3[1] = AMPICUFormattingLengthMenu;
  v2[2] = AMPICUFormattingLengthMenu;
  v2[3] = AMPICUFormattingLengthLong;
  v3[2] = AMPICUFormattingLengthLong;
  v3[3] = AMPICUFormattingLengthStandard;
  v2[4] = AMPICUFormattingLengthShort;
  v3[4] = AMPICUFormattingLengthStandard;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = AMPICUFormattingLengthFallbacks(void)::sFormattingLengthFallbacks;
  AMPICUFormattingLengthFallbacks(void)::sFormattingLengthFallbacks = v0;
}

__CFString *ASKDeviceTypeGetCurrent()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return @"pad";
  }

  else
  {
    return @"phone";
  }
}

id ASKBuildTypeGetCurrent()
{
  if (ASKBuildTypeGetCurrent_onceToken != -1)
  {
    ASKBuildTypeGetCurrent_cold_1();
  }

  v1 = ASKBuildTypeGetCurrent_buildType;

  return v1;
}

void __ASKBuildTypeGetCurrent_block_invoke()
{
  has_internal_content = os_variant_has_internal_content();
  v1 = @"production";
  v2 = ASKBuildTypeGetCurrent_buildType;
  if (has_internal_content)
  {
    v1 = @"internal";
  }

  ASKBuildTypeGetCurrent_buildType = v1;
}

id ASKMetricsGetCookieString()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"https://xp.apple.com"];
  v1 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v16 = v0;
  v2 = [v1 ams_cookiesForURL:v0];

  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = MEMORY[0x277CCACA8];
        v11 = [v9 name];
        v12 = [v9 value];
        v13 = [v10 stringWithFormat:@"%@=%@", v11, v12];
        [v3 addObject:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = [v3 componentsJoinedByString:@" "];;

  return v14;
}

__CFString *ASKMetricsGetNetworkConnectionTypeString()
{
  v0 = [MEMORY[0x277D7FD00] sharedInstance];
  v1 = [v0 connectionTypeHeader];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = @"unknown";
  }

  return v2;
}

void sub_24E5EBDE4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_24E5EC480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 176), 8);
  _Block_object_dispose((v37 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGFloat AMPRectWithFlippedOriginRelativeToBoundingRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16.origin.x = a5;
  v16.origin.y = a6;
  v16.size.width = a7;
  v16.size.height = a8;
  v14 = a1 - CGRectGetMinX(v16);
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  return CGRectGetMaxX(v17) - v14 - a3;
}

CGFloat AMPRectWithConditionalOriginRelativeToBoundingRect(int a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1)
  {
    v17.origin.x = a6;
    v17.origin.y = a7;
    v17.size.width = a8;
    v17.size.height = a9;
    v15 = a2 - CGRectGetMinX(v17);
    v18.origin.x = a6;
    v18.origin.y = a7;
    v18.size.width = a8;
    v18.size.height = a9;
    return CGRectGetMaxX(v18) - v15 - a4;
  }

  return a2;
}

CGFloat AMPRectMakeWithDirectionalOriginRelativeToBoundingRect(int a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1)
  {
    v17.origin.x = a6;
    v17.origin.y = a7;
    v17.size.width = a8;
    v17.size.height = a9;
    v15 = a2 - CGRectGetMinX(v17);
    v18.origin.x = a6;
    v18.origin.y = a7;
    v18.size.width = a8;
    v18.size.height = a9;
    return CGRectGetMaxX(v18) - v15 - a4;
  }

  return a2;
}

void sub_24E5ECC24(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_24E5ECDB8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void AMPAddOverridesForSupportingLayoutDirectionOnUIView()
{
  if (sOverride_UIView_traitCollection != -1)
  {
    AMPAddOverridesForSupportingLayoutDirectionOnUIView_cold_1();
  }
}

id swizzle_UIView_traitCollection(void *a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = sOriginal_UIView_traitCollection();
  v3 = [v1 _layoutDirectionValue];
  if (v3 && (v4 = [v1 _layoutDirectionFromLayoutDirectionValue:v3], v4 != objc_msgSend(v2, "layoutDirection")))
  {
    v6 = [MEMORY[0x277D75C80] traitCollectionWithLayoutDirection:v4];
    v10[0] = v2;
    v10[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v5 = [MEMORY[0x277D75C80] traitCollectionWithTraitsFromCollections:v7];
  }

  else
  {
    v5 = v2;
  }

  v8 = v5;

  return v5;
}

void sub_24E5EE9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24E5F1028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = [v9 description];
    NSLog(&cfstr_UnableToCopyMi.isa);

    objc_end_catch();
    JUMPOUT(0x24E5F1008);
  }

  _Unwind_Resume(exception_object);
}

void sub_24E5F1C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double ASKHomeScreenIconsGetSize()
{
  v0 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B220]];
  [v0 size];
  v2 = v1;

  return v2;
}

double ASKHomeScreenIconsGetCornerRadius()
{
  v0 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B220]];
  [v0 continuousCornerRadius];
  v2 = v1;

  return v2;
}

double ASKHomeScreenIconsGetScaledCornerRadiusForSize(double a1, double a2)
{
  Size = ASKHomeScreenIconsGetSize();
  v6 = v5;
  CornerRadius = ASKHomeScreenIconsGetCornerRadius();
  v8 = a2 / v6;
  if (a1 > a2)
  {
    v8 = a1 / Size;
  }

  return CornerRadius * v8;
}

void *char_from_uchar(uint64_t a1, int a2)
{
  if (!ucnv_open())
  {
    return 0;
  }

  v5 = (a2 + 10) * ucnv_getMaxCharSize();
  v6 = malloc_type_calloc(v5, 1uLL, 0x100004077774924uLL);
  v4 = v6;
  if (v6)
  {
    v7 = ucnv_fromUChars();
    if (v7 > v5)
    {
      v4 = reallocf(v4, v7);
      if (v4)
      {
        ucnv_fromUChars();
      }
    }
  }

  ucnv_close();
  return v4;
}

uint64_t ASKFormattedCountCreate()
{
  if (unum_open())
  {
    unum_setAttribute();
    unum_formatInt64();
    unum_close();
  }

  return 0;
}

uint64_t sub_24E5F4BE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24EF52A10(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_24E5F4C14()
{
  v1 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v1 - 8);
  v26 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v24);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = &v24 - v6;
  v7 = type metadata accessor for ChallengeDefinitionDetail(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v27 = type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2();
  v28 = v0;
  v14 = *(v0 + *(v27 + 24));
  swift_getKeyPath();
  v29 = v14;
  sub_24E5FD988(&qword_27F212898, type metadata accessor for GameActivityDraft);
  sub_24F91FD88();

  v15 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
  swift_beginAccess();
  sub_24E60169C(v14 + v15, v13, &qword_27F212A08);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    sub_24E601704(v13, &qword_27F212A08);
    return *(*(v28 + *(v27 + 28)) + 16) > 1uLL;
  }

  v16 = v24;
  sub_24E601E20(v13, v10, type metadata accessor for ChallengeDefinitionDetail);
  sub_24E601704(v13, &qword_27F212A08);
  v17 = v25;
  sub_24E60169C(&v10[*(v7 + 52)], v25, &qword_27F212A00);
  sub_24E601E88(v10, type metadata accessor for ChallengeDefinitionDetail);
  v18 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  v19 = (*(*(v18 - 8) + 48))(v17, 1, v18);
  v20 = v26;
  if (v19 == 1)
  {
    return *(*(v28 + *(v27 + 28)) + 16) > 1uLL;
  }

  sub_24E60136C(v17, v4, type metadata accessor for Leaderboard);
  sub_24E601E20(&v4[*(v16 + 24)], v20, type metadata accessor for Leaderboard.LeaderboardType);
  sub_24E601E88(v4, type metadata accessor for Leaderboard);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
  {
    return *(*(v28 + *(v27 + 28)) + 16) > 1uLL;
  }

  v23 = sub_24F91F648();
  (*(*(v23 - 8) + 8))(v20, v23);
  return 0;
}

uint64_t sub_24E5F50C0()
{
  v1 = type metadata accessor for ChallengeDefinitionDetail(0);
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x28223BE20](v1);
  v46 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v43 - v6;
  v7 = sub_24F920B08();
  v51 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2();
  v14 = v0;
  v15 = *(v0 + *(v13 + 24));
  swift_getKeyPath();
  v52 = v15;
  sub_24E5FD988(&qword_27F212898, type metadata accessor for GameActivityDraft);
  sub_24F91FD88();

  v16 = *(v15 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule);
  if (!v16)
  {
    v23 = v45;
    v24 = v46;
    swift_getKeyPath();
    v52 = v15;
    sub_24F91FD88();

    v25 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
    swift_beginAccess();
    v26 = v15 + v25;
    v27 = v47;
    sub_24E60169C(v26, v47, &qword_27F212A08);
    if ((*(v48 + 48))(v27, 1, v49))
    {
      sub_24E601704(v27, &qword_27F212A08);
      v28 = sub_24F91F648();
      v29 = v23;
      (*(*(v28 - 8) + 56))(v23, 1, 1, v28);
    }

    else
    {
      sub_24E601E20(v27, v24, type metadata accessor for ChallengeDefinitionDetail);
      sub_24E601704(v27, &qword_27F212A08);
      v29 = v23;
      sub_24EF52BDC(v23);
      sub_24E601E88(v24, type metadata accessor for ChallengeDefinitionDetail);
      v42 = sub_24F91F648();
      if ((*(*(v42 - 8) + 48))(v23, 1, v42) != 1)
      {
        sub_24E601704(v23, &unk_27F22EC30);
        return 0x6B636F6C63;
      }
    }

    sub_24E601704(v29, &unk_27F22EC30);
    return 0;
  }

  v17 = *(v14 + *(v13 + 28));
  v18 = *(v17 + 2);

  if (v18)
  {
    v20 = 0;
    v21 = v17 + 32;
    v22 = (v51 + 8);
    v50 = v16;
    v44 = v18;
    v45 = v17;
    v43 = v17 + 32;
    while (1)
    {
      if (v20 >= *(v17 + 2))
      {
        goto LABEL_30;
      }

      v30 = &v21[16 * v20];
      v31 = *v30;
      v32 = *(*v30 + 16);
      if (v32 == *(v16 + 16))
      {
        break;
      }

LABEL_7:
      if (++v20 == v18)
      {
        goto LABEL_20;
      }
    }

    v33 = v30[8];
    if (v32 && v31 != v16)
    {
      LODWORD(v46) = v33;
      v34 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v49 = v31 + v34;
      v47 = v20;
      v48 = v16 + v34;

      v35 = 0;
      while (v35 < *(v31 + 16))
      {
        v36 = *(v51 + 72) * v35;
        v37 = *(v51 + 16);
        result = v37(v12, v49 + v36, v7);
        if (v35 >= *(v50 + 16))
        {
          goto LABEL_29;
        }

        v37(v10, v48 + v36, v7);
        sub_24E5FD988(&qword_27F212AE8, MEMORY[0x277D0D188]);
        v38 = sub_24F92AFF8();
        v39 = *v22;
        (*v22)(v10, v7);
        result = (v39)(v12, v7);
        if ((v38 & 1) == 0)
        {

          v16 = v50;
          v18 = v44;
          v17 = v45;
          v20 = v47;
          v21 = v43;
          goto LABEL_7;
        }

        if (v32 == ++v35)
        {

          v16 = v50;
          v33 = v46;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

LABEL_18:
    if (!v33)
    {
      goto LABEL_20;
    }

    return 0x6F6C2E656C707061;
  }

  else
  {
LABEL_20:
    v40 = sub_24EF5B040(v16);

    v41 = 0x7261646E656C6163;
    if (v40 <= 86400.0)
    {
      v41 = 0xD000000000000010;
    }

    if (v40 > 3600.0)
    {
      return v41;
    }

    else
    {
      return 0x73616C6772756F68;
    }
  }
}

uint64_t sub_24E5F57BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  v85 = sub_24F929888();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_24F927538();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127C0) - 8;
  MEMORY[0x28223BE20](v78);
  v76 = &v64 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127C8) - 8;
  MEMORY[0x28223BE20](v74);
  v72 = (&v64 - v6);
  v70 = sub_24F9241F8();
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_24F927768();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212918);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212920);
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v18 = &v64 - v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212928);
  MEMORY[0x28223BE20](v73);
  v87 = &v64 - v19;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212930);
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v64 - v20;
  sub_24E601E20(v2, &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2);
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = swift_allocObject();
  sub_24E60136C(&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2);
  v64 = v2;
  v89 = v2;
  v88 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212948);
  sub_24E601F2C(&qword_27F212950, &qword_27F212940, &unk_24F939778, sub_24E600E30);
  sub_24E600F90();
  sub_24F925AA8();
  sub_24F927758();
  v23 = sub_24E602068(&qword_27F2129A0, &qword_27F212918);
  sub_24F926BA8();
  (*(v67 + 8))(v9, v68);
  (*(v14 + 8))(v16, v13);
  v24 = v69;
  sub_24F9241E8();
  *&v91[0] = v13;
  *(&v91[0] + 1) = v23;
  swift_getOpaqueTypeConformance2();
  sub_24E5FD988(&qword_27F212838, MEMORY[0x277CDDB18]);
  v25 = v87;
  v26 = v65;
  v27 = v70;
  sub_24F926178();
  (*(v71 + 8))(v24, v27);
  (*(v66 + 8))(v18, v26);
  v71 = sub_24F927618();
  v70 = v28;
  v29 = sub_24F926C98();
  v30 = v75;
  sub_24F927438();
  LOBYTE(v24) = sub_24E5F4C14();
  v31 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129A8) + 36)];
  if (v24)
  {
    v32 = 1.0;
  }

  else
  {
    v32 = 0.5;
  }

  v33 = v76;
  (*(v79 + 32))(v76, v30, v80);
  *&v33[*(v78 + 44)] = v32;
  v34 = v33;
  v35 = v72;
  v36 = v72 + *(v74 + 44);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212848);
  v38 = (v36 + *(v37 + 52));
  v39 = *(sub_24F924258() + 20);
  v40 = *MEMORY[0x277CE0118];
  v41 = sub_24F924B38();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  __asm { FMOV            V0.2D, #20.0 }

  *v38 = _Q0;
  sub_24E6009C8(v34, v36, &qword_27F2127C0);
  *(v36 + *(v37 + 56)) = 256;
  *v35 = v29;
  KeyPath = swift_getKeyPath();
  v48 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212850) + 36));
  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858) + 28);
  v50 = *MEMORY[0x277CDF3C0];
  v51 = sub_24F9234D8();
  (*(*(v51 - 8) + 104))(v48 + v49, v50, v51);
  *v48 = KeyPath;
  sub_24E6009C8(v35, v31, &qword_27F2127C8);
  v52 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212860) + 36));
  v53 = v70;
  *v52 = v71;
  v52[1] = v53;
  LOBYTE(KeyPath) = sub_24E5F4C14();
  v54 = swift_getKeyPath();
  v55 = swift_allocObject();
  *(v55 + 16) = (KeyPath & 1) == 0;
  v56 = v73;
  v57 = v87;
  v58 = &v87[*(v73 + 36)];
  *v58 = v54;
  v58[1] = sub_24E602370;
  v58[2] = v55;
  memset(v91, 0, sizeof(v91));
  memset(v90, 0, sizeof(v90));
  v59 = v83;
  sub_24F9297C8();
  sub_24E601704(v90, &qword_27F2129B0);
  sub_24E601704(v91, &qword_27F2129B0);
  v60 = sub_24E601040();
  v61 = v77;
  sub_24F925EE8();
  (*(v84 + 8))(v59, v85);
  sub_24E601704(v57, &qword_27F212928);
  *&v91[0] = v56;
  *(&v91[0] + 1) = v60;
  swift_getOpaqueTypeConformance2();
  v62 = v81;
  sub_24F926888();
  return (*(v82 + 8))(v61, v62);
}

uint64_t sub_24E5F63D8()
{
  v1 = sub_24F921B58();
  v46 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v45 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F9284A8();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GameActivityDraftGameInfo(0);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_24F928AD8();
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v22 = type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2();
  sub_24E60169C(v0 + *(v22 + 36), v12, &unk_27F212718);
  v23 = type metadata accessor for PlayTogetherReviewMetricsInfo();
  if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
  {
    v24 = &unk_27F212718;
    v25 = v12;
  }

  else
  {
    v41 = v1;
    v42 = v22;
    v26 = *(v22 + 24);
    v43 = v0;
    v27 = *(v0 + v26);
    swift_getKeyPath();
    v55[0] = v27;
    sub_24E5FD988(&qword_27F212898, type metadata accessor for GameActivityDraft);
    sub_24F91FD88();

    v28 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
    swift_beginAccess();
    sub_24E60169C(v27 + v28, v9, &qword_27F212B28);
    if ((*(v47 + 48))(v9, 1, v48))
    {
      sub_24E601704(v9, &qword_27F212B28);
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v31 = v44;
      sub_24E601E20(v9, v44, type metadata accessor for GameActivityDraftGameInfo);
      sub_24E601704(v9, &qword_27F212B28);
      v29 = *v31;
      v30 = v31[1];

      sub_24E601E88(v31, type metadata accessor for GameActivityDraftGameInfo);
    }

    v32 = v51;
    sub_24EDA5FB8(v29, v30, v19);

    sub_24E601E88(v12, type metadata accessor for PlayTogetherReviewMetricsInfo);
    v33 = v49;
    v34 = v50;
    (*(v49 + 32))(v21, v19, v50);
    (*(v33 + 16))(v16, v21, v34);
    sub_24F928498();
    sub_24F7695C8(v55);
    if (v56)
    {
      v51 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v35 = v53;
      v54[3] = v53;
      v54[4] = MEMORY[0x277D21B60];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
      v37 = v52;
      (*(v52 + 16))(boxed_opaque_existential_1, v32, v35);
      v38 = v45;
      sub_24F76973C(v45);
      sub_24F9218A8();
      (*(v46 + 8))(v38, v41);
      (*(v37 + 8))(v32, v35);
      (*(v33 + 8))(v21, v34);
      __swift_destroy_boxed_opaque_existential_1(v54);
      return __swift_destroy_boxed_opaque_existential_1(v55);
    }

    (*(v52 + 8))(v32, v53);
    (*(v33 + 8))(v21, v34);
    v24 = &unk_27F212740;
    v25 = v55;
  }

  return sub_24E601704(v25, v24);
}

uint64_t sub_24E5F6AB0(uint64_t a1)
{
  v2 = type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v8[1] = *(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 36));
  sub_24E601E20(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_24E60136C(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212998);
  sub_24E602068(&qword_27F212AF8, &qword_27F212AF0);
  sub_24E602068(&qword_27F212990, &qword_27F212998);
  sub_24E6019C8();
  return sub_24F927238();
}

uint64_t sub_24E5F6CBC(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  sub_24E601E20(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_24E60136C(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2);
  v10 = v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v10 = v7;
  *(v10 + 8) = a1;
  v13 = v7;
  v14 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B08);
  sub_24E601CB4();
  return sub_24F926F88();
}

uint64_t sub_24E5F6E64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2() + 24));
  v4 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule;
  if (!*(v3 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule))
  {

    goto LABEL_7;
  }

  v6 = sub_24EA17EA0(v5, a2);

  if ((v6 & 1) == 0)
  {
LABEL_7:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E5FD988(&qword_27F212898, type metadata accessor for GameActivityDraft);
    sub_24F91FD78();
  }

  *(v3 + v4) = a2;
}

uint64_t sub_24E5F6FE8@<X0>(uint64_t a1@<X8>)
{
  sub_24F926EA8();
  v2 = sub_24F926D18();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B08);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_24E5F70B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_24EF52A10(a1, a2);
  sub_24E600AEC();
  result = sub_24F925E18();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_24E5F710C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    sub_24EF5B040(a1);
  }

  result = sub_24F926E48();
  *a3 = result;
  return result;
}

uint64_t sub_24E5F71CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = sub_24F9248C8();
  v4 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A10);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A18);
  v61 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  *v9 = sub_24F9249A8();
  *(v9 + 1) = 0x4024000000000000;
  v9[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A20);
  sub_24E5F76FC(a1, &v9[*(v13 + 44)]);
  v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A28) + 36)] = 0;
  v14 = sub_24F9257F8();
  sub_24F923318();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A30) + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = sub_24F925868();
  sub_24F923318();
  v25 = &v9[*(v7 + 36)];
  *v25 = v24;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  sub_24E5F4C14();
  sub_24F9248B8();
  sub_24E6013D4(&qword_27F212A38, &qword_27F212A10, &unk_24F939800, sub_24E601458);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  v30 = v6;
  v31 = v10;
  (*(v4 + 8))(v30, v62);
  v32 = v61;
  sub_24E601704(v9, &qword_27F212A10);
  v33 = sub_24F924258();
  v63[3] = v33;
  v63[4] = sub_24E5FD988(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  v35 = *(v33 + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_24F924B38();
  (*(*(v37 - 8) + 104))(boxed_opaque_existential_1 + v35, v36, v37);
  __asm { FMOV            V0.2D, #20.0 }

  *boxed_opaque_existential_1 = _Q0;
  sub_24E60169C(v63, a2, &qword_27F212A70);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212970);
  (*(v32 + 16))(a2 + v43[9], v12, v31);
  v44 = a2 + v43[10];
  *v44 = sub_24F923398() & 1;
  *(v44 + 8) = v45;
  *(v44 + 16) = v46 & 1;
  v47 = a2 + v43[11];
  *v47 = swift_getKeyPath();
  *(v47 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v48 = qword_27F24E488;
  v49 = sub_24F923398();
  v51 = v50;
  v53 = v52;
  v54 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212960) + 36);
  *v54 = v48;
  *(v54 + 8) = v49 & 1;
  *(v54 + 16) = v51;
  *(v54 + 24) = v53 & 1;
  LOBYTE(v48) = sub_24F923398();
  v56 = v55;
  LOBYTE(v51) = v57;
  sub_24E601704(v63, &qword_27F212A70);
  (*(v32 + 8))(v12, v31);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212940);
  v59 = a2 + *(result + 36);
  *v59 = v48 & 1;
  *(v59 + 8) = v56;
  *(v59 + 16) = v51 & 1;
  return result;
}

uint64_t sub_24E5F76FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A78);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A88);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  sub_24E5F50C0();
  if (v17)
  {
    v18 = sub_24F926E48();
    v19 = sub_24F9258F8();
    v33 = v7;
    v20 = v16;
    v21 = v19;
    KeyPath = swift_getKeyPath();
    *&v37 = v18;
    *(&v37 + 1) = KeyPath;
    *&v38 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0);
    sub_24E60156C();
    sub_24F9268B8();

    type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2();
    sub_24F927618();
    v16 = v20;
    v7 = v33;
    sub_24F9238C8();
    v23 = &v11[*(v8 + 36)];
    v24 = v38;
    *v23 = v37;
    *(v23 + 1) = v24;
    *(v23 + 2) = v39;
    sub_24E601624(v11, v20);
    (*(v9 + 56))(v20, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v16, 1, 1, v8);
  }

  *v7 = sub_24F924C98();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A90);
  sub_24E5F7B38(a1, &v7[*(v25 + 44)]);
  v26 = 0;
  if (sub_24E5F4C14())
  {
    v26 = sub_24F926DF8();
  }

  v27 = v34;
  sub_24E60169C(v16, v34, &qword_27F212A88);
  v28 = v35;
  sub_24E60169C(v7, v35, &qword_27F212A78);
  v29 = v36;
  sub_24E60169C(v27, v36, &qword_27F212A88);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A98);
  sub_24E60169C(v28, v29 + v30[12], &qword_27F212A78);
  v31 = v29 + v30[16];
  *v31 = 0;
  *(v31 + 8) = 1;
  *(v29 + v30[20]) = v26;
  sub_24E601704(v7, &qword_27F212A78);
  sub_24E601704(v16, &qword_27F212A88);

  sub_24E601704(v28, &qword_27F212A78);
  return sub_24E601704(v27, &qword_27F212A88);
}

uint64_t sub_24E5F7B38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v133 = a2;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AC0);
  MEMORY[0x28223BE20](v119);
  v121 = &v112 - v3;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v120 = &v112 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v130 = &v112 - v6;
  v7 = sub_24F91F648();
  v136 = *(v7 - 8);
  v137 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v113 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v114 = &v112 - v11;
  MEMORY[0x28223BE20](v10);
  v115 = &v112 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212AD0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v132 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v131 = &v112 - v16;
  v17 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v17 - 8);
  v118 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v116);
  v20 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00);
  MEMORY[0x28223BE20](v21 - 8);
  v128 = &v112 - v22;
  v23 = type metadata accessor for ChallengeDefinitionDetail(0);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v117 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v112 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v129 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v112 - v32;
  v34 = *(a1 + *(type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2() + 24));
  swift_getKeyPath();
  v35 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft___observationRegistrar;
  v138._countAndFlagsBits = v34;
  v134 = sub_24E5FD988(&qword_27F212898, type metadata accessor for GameActivityDraft);
  v135 = v35;
  sub_24F91FD88();

  v36 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
  swift_beginAccess();
  v125 = v36;
  sub_24E60169C(v34 + v36, v33, &qword_27F212A08);
  v37 = *(v24 + 48);
  v126 = v24 + 48;
  v124 = v37;
  v38 = v37(v33, 1, v23);
  v127 = v23;
  if (v38)
  {
    sub_24E601704(v33, &qword_27F212A08);
    v39 = "launchSuccessTime";
    v40 = 0xD000000000000027;
    v41 = v129;
  }

  else
  {
    v42 = v116;
    v43 = v118;
    sub_24E601E20(v33, v28, type metadata accessor for ChallengeDefinitionDetail);
    sub_24E601704(v33, &qword_27F212A08);
    v44 = v128;
    sub_24E60169C(&v28[*(v23 + 52)], v128, &qword_27F212A00);
    sub_24E601E88(v28, type metadata accessor for ChallengeDefinitionDetail);
    v45 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
    v46 = (*(*(v45 - 8) + 48))(v44, 1, v45);
    v39 = "launchSuccessTime";
    v41 = v129;
    if (v46 == 1 || (sub_24E60136C(v44, v20, type metadata accessor for Leaderboard), sub_24E601E20(&v20[*(v42 + 24)], v43, type metadata accessor for Leaderboard.LeaderboardType), sub_24E601E88(v20, type metadata accessor for Leaderboard), v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0), (*(*(v47 - 8) + 48))(v43, 1, v47) == 1))
    {
      v40 = 0xD000000000000027;
    }

    else
    {
      (*(v136 + 8))(v43, v137);
      v39 = "mize.DurationRule.Title";
      v40 = 0xD00000000000003CLL;
    }
  }

  v48 = v39 | 0x8000000000000000;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v50 = localizedString(_:comment:)(*&v40, v49);

  v138 = v50;
  v118 = sub_24E600AEC();
  v51 = sub_24F925E18();
  v53 = v52;
  v55 = v54;
  LODWORD(v138._countAndFlagsBits) = sub_24F9251C8();
  v56 = sub_24F925C58();
  v58 = v57;
  v60 = v59;
  sub_24E600B40(v51, v53, v55 & 1);

  sub_24F925A18();
  v61 = sub_24F925C98();
  v63 = v62;
  LODWORD(v128) = v64;
  v129 = v65;

  sub_24E600B40(v56, v58, v60 & 1);

  swift_getKeyPath();
  v138._countAndFlagsBits = v34;
  sub_24F91FD88();

  sub_24E60169C(v34 + v125, v41, &qword_27F212A08);
  if (v124(v41, 1, v127))
  {
    sub_24E601704(v41, &qword_27F212A08);
    v66 = v130;
    (*(v136 + 56))(v130, 1, 1, v137);
LABEL_10:
    sub_24E601704(v66, &unk_27F22EC30);
    goto LABEL_11;
  }

  v67 = v117;
  sub_24E601E20(v41, v117, type metadata accessor for ChallengeDefinitionDetail);
  sub_24E601704(v41, &qword_27F212A08);
  v66 = v130;
  sub_24EF52BDC(v130);
  sub_24E601E88(v67, type metadata accessor for ChallengeDefinitionDetail);
  v69 = v136;
  v68 = v137;
  if ((*(v136 + 48))(v66, 1, v137) == 1)
  {
    goto LABEL_10;
  }

  v93 = v115;
  (*(v69 + 32))(v115, v66, v68);
  if (qword_27F2112E0 != -1)
  {
    swift_once();
  }

  v94 = qword_27F39E608;
  v95 = v113;
  sub_24F91F638();
  v96 = sub_24F91F598();
  v97 = v95;
  v98 = *(v69 + 8);
  v98(v97, v68);
  if (v96)
  {
    v99 = v114;
    sub_24F91F638();
  }

  else
  {
    v99 = v114;
    (*(v69 + 16))(v114, v93, v68);
  }

  v100 = sub_24F91F578();
  v98(v99, v68);
  v101 = sub_24F91F578();
  v102 = [v94 stringFromDate:v100 toDate:v101];

  if (v102)
  {
    v103 = sub_24F92B0D8();
    v105 = v104;

    v138._countAndFlagsBits = v103;
    v138._object = v105;
    v139 = 0;
    v140 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277CE0BC8];
    v107 = v120;
    sub_24F9268B8();

    v108 = v122;
    v109 = v123;
    (*(v122 + 16))(v121, v107, v123);
    swift_storeEnumTagMultiPayload();
    v138._countAndFlagsBits = MEMORY[0x277CE0BD8];
    v138._object = v106;
    swift_getOpaqueTypeConformance2();
    v110 = v68;
    v111 = v131;
    sub_24F924E28();
    (*(v108 + 8))(v107, v109);
    v98(v115, v110);
    v85 = v111;
    goto LABEL_13;
  }

  v98(v93, v68);
LABEL_11:
  swift_getKeyPath();
  v138._countAndFlagsBits = v34;
  sub_24F91FD88();

  if (!*(v34 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule))
  {
    v86 = 1;
    v85 = v131;
    goto LABEL_15;
  }

  v71 = sub_24EF52A10(v70, 0);
  v73 = v72;

  v138._countAndFlagsBits = v71;
  v138._object = v73;
  v74 = sub_24F925E18();
  v76 = v75;
  v138._countAndFlagsBits = v74;
  v138._object = v75;
  v78 = v77 & 1;
  v139 = v77 & 1;
  v140 = v79;
  v80 = MEMORY[0x277CE0BD8];
  v81 = MEMORY[0x277CE0BC8];
  v82 = v120;
  sub_24F9268B8();
  sub_24E600B40(v74, v76, v78);

  v83 = v122;
  v84 = v123;
  (*(v122 + 16))(v121, v82, v123);
  swift_storeEnumTagMultiPayload();
  v138._countAndFlagsBits = v80;
  v138._object = v81;
  swift_getOpaqueTypeConformance2();
  v85 = v131;
  sub_24F924E28();
  (*(v83 + 8))(v82, v84);
LABEL_13:
  v86 = 0;
LABEL_15:
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212AD8);
  (*(*(v87 - 8) + 56))(v85, v86, 1, v87);
  v88 = v132;
  sub_24E60169C(v85, v132, &qword_27F212AD0);
  v89 = v133;
  *v133 = v61;
  v89[1] = v63;
  v90 = v128 & 1;
  *(v89 + 16) = v128 & 1;
  v89[3] = v129;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212AE0);
  sub_24E60169C(v88, v89 + *(v91 + 48), &qword_27F212AD0);
  sub_24E5FD138(v61, v63, v90);

  sub_24E601704(v85, &qword_27F212AD0);
  sub_24E601704(v88, &qword_27F212AD0);
  sub_24E600B40(v61, v63, v90);
}

uint64_t sub_24E5F8A7C@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v90 = sub_24F924B38();
  v94 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v91 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v89 = sub_24F927538();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v84 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127C0) - 8;
  MEMORY[0x28223BE20](v87);
  v85 = &v75 - v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127C8) - 8;
  MEMORY[0x28223BE20](v83);
  v82 = &v75 - v5;
  v80 = sub_24F9241F8();
  v81 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_24F927768();
  v7 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v75 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127D8);
  v78 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v15 = &v75 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127E0) - 8;
  MEMORY[0x28223BE20](v86);
  v93 = &v75 - v16;
  v75 = v1;
  v96 = v1;
  v95 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127F0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2127F8);
  v18 = sub_24E600858();
  v97 = v17;
  v98 = v18;
  swift_getOpaqueTypeConformance2();
  sub_24E600910();
  sub_24F925AB8();
  sub_24F927758();
  v19 = sub_24E602068(&qword_27F212830, &qword_27F2127D0);
  sub_24F926BA8();
  (*(v7 + 8))(v9, v77);
  (*(v11 + 8))(v13, v10);
  v20 = v79;
  sub_24F9241E8();
  v97 = v10;
  v98 = v19;
  swift_getOpaqueTypeConformance2();
  sub_24E5FD988(&qword_27F212838, MEMORY[0x277CDDB18]);
  v21 = v93;
  v22 = v76;
  v23 = v80;
  sub_24F926178();
  (*(v81 + 8))(v20, v23);
  (*(v78 + 8))(v15, v22);
  v81 = sub_24F927618();
  v80 = v24;
  v25 = sub_24F926C98();
  v26 = v84;
  sub_24F927438();
  v79 = *v75;
  LOBYTE(v19) = sub_24E5FCDC0(v79);
  v27 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212840) + 36)];
  if (v19)
  {
    v28 = 0.5;
  }

  else
  {
    v28 = 1.0;
  }

  v29 = v85;
  (*(v88 + 32))(v85, v26, v89);
  *(v29 + *(v87 + 44)) = v28;
  v30 = v82;
  v31 = &v82[*(v83 + 44)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212848);
  v33 = (v31 + *(v32 + 52));
  v34 = sub_24F924258();
  v35 = *(v34 + 20);
  LODWORD(v88) = *MEMORY[0x277CE0118];
  v87 = *(v94 + 104);
  v36 = v90;
  (v87)(v33 + v35);
  __asm { FMOV            V0.2D, #12.0 }

  v89 = _Q0;
  *v33 = _Q0;
  sub_24E6009C8(v29, v31, &qword_27F2127C0);
  *(v31 + *(v32 + 56)) = 256;
  *v30 = v25;
  KeyPath = swift_getKeyPath();
  v43 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212850) + 36));
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858) + 28);
  v45 = *MEMORY[0x277CDF3C0];
  v46 = sub_24F9234D8();
  (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
  *v43 = KeyPath;
  sub_24E6009C8(v30, v27, &qword_27F2127C8);
  v47 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212860) + 36));
  v48 = v80;
  *v47 = v81;
  v47[1] = v48;
  LOBYTE(v30) = sub_24E5FCDC0(v79);
  v49 = swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = v30 & 1;
  v51 = v93;
  v52 = &v93[*(v86 + 44)];
  *v52 = v49;
  v52[1] = sub_24E600A48;
  v52[2] = v50;
  v53 = v91;
  v54 = v36;
  (v87)(v91, v88, v36);
  v55 = v92;
  v99 = v34;
  v100 = sub_24E5FD988(&qword_27F212868, MEMORY[0x277CDFC08]);
  v56 = __swift_allocate_boxed_opaque_existential_1(&v97);
  v57 = v94;
  (*(v94 + 16))(v56 + *(v34 + 20), v53, v54);
  *v56 = v89;
  (*(v57 + 8))(v53, v54);
  sub_24E60169C(&v97, v55, &qword_27F212870);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212878);
  sub_24E60169C(v51, v55 + v58[9], &qword_27F2127E0);
  v59 = v55 + v58[10];
  *v59 = sub_24F923398() & 1;
  *(v59 + 8) = v60;
  *(v59 + 16) = v61 & 1;
  v62 = v55 + v58[11];
  *v62 = swift_getKeyPath();
  *(v62 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v63 = qword_27F24E488;
  v64 = sub_24F923398();
  v66 = v65;
  v68 = v67;
  v69 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212880) + 36);
  *v69 = v63;
  *(v69 + 8) = v64 & 1;
  *(v69 + 16) = v66;
  *(v69 + 24) = v68 & 1;
  LOBYTE(v63) = sub_24F923398();
  v71 = v70;
  LOBYTE(v66) = v72;
  sub_24E601704(&v97, &qword_27F212870);
  sub_24E601704(v51, &qword_27F2127E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212888);
  v74 = v55 + *(result + 36);
  *v74 = v63 & 1;
  *(v74 + 8) = v71;
  *(v74 + 16) = v66 & 1;
  return result;
}

uint64_t sub_24E5F9624(uint64_t a1)
{
  v8 = *(a1 + 8);
  v6 = v8;
  v7 = *(a1 + 16);
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);

  sub_24E60169C(&v8, v5, &unk_27F2128F0);

  sub_24E60169C(&v7, v5, &unk_27F23B740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2128F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212828);
  sub_24E602068(&qword_27F212900, &unk_27F2128F0);
  sub_24E602068(&qword_27F212820, &qword_27F212828);
  sub_24E600BA0();
  return sub_24F927238();
}

uint64_t sub_24E5F97C0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v6 = *(a1 + 24);
  v7 = swift_allocObject();
  v8 = *(a2 + 16);
  *(v7 + 16) = *a2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a2 + 32);
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;

  sub_24E60169C(&v12, v10, &unk_27F2128F0);
  sub_24E60169C(&v11, v10, &unk_27F23B740);
  sub_24E600ACC(v3, v4, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
  sub_24E602068(&qword_27F212910, &qword_27F211B58);
  return sub_24F926F88();
}

uint64_t sub_24E5F9938(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_24E600ACC(a2, a3, a4, a5);
  sub_24E5FD988(&qword_27F212898, type metadata accessor for GameActivityDraft);
  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  v10 = v9 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules;
  v11 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 32);
  v12 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 40);
  v13 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 48);
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  v14 = *(v10 + 56);
  *(v10 + 56) = a5;
  sub_24E600C4C(v11, v12, v13, v14);
  swift_getKeyPath();
  sub_24F91FD98();
}

uint64_t sub_24E5F9A98@<X0>(uint64_t a1@<X8>)
{
  sub_24E6EE2E0();
  sub_24E600AEC();
  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_24E5F9B00(uint64_t *a1)
{
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127F8);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A8);
  sub_24E5F9CCC(a1, &v8[*(v9 + 44)]);
  v10 = sub_24F925808();
  v11 = &v8[*(v6 + 36)];
  *v11 = v10;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  v11[40] = 1;
  sub_24E5FCDC0(*a1);
  sub_24F9248B8();
  sub_24E600858();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);
  return sub_24E601704(v8, &qword_27F2127F8);
}

uint64_t sub_24E5F9CCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = *a1;
  if ((sub_24E5FCDC0(*a1) & 1) == 0)
  {
    swift_getKeyPath();
    v28[0] = v10;
    sub_24E5FD988(&qword_27F212898, type metadata accessor for GameActivityDraft);
    sub_24F91FD88();

    sub_24E600ACC(*(v10 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 32), *(v10 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 40), *(v10 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 48), *(v10 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 56));
  }

  v11 = sub_24F926E48();
  v12 = sub_24F9258F8();
  KeyPath = swift_getKeyPath();
  sub_24F927618();
  sub_24F9238C8();
  *v9 = sub_24F924C98();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128B8);
  sub_24E5FA048(a1, &v9[*(v14 + 44)]);
  v15 = 0;
  if ((sub_24E5FCDC0(v10) & 1) == 0)
  {
    v15 = sub_24F926DF8();
  }

  sub_24E60169C(v9, v7, &qword_27F2128B0);
  *&v26 = v11;
  *(&v26 + 1) = KeyPath;
  *v27 = v12;
  *&v27[8] = v32;
  *&v27[24] = v33;
  *&v27[40] = v34;
  v16 = *v27;
  *a2 = v26;
  *(a2 + 16) = v16;
  v17 = *&v27[32];
  *(a2 + 32) = *&v27[16];
  *(a2 + 48) = v17;
  *(a2 + 64) = *&v27[48];
  v18 = KeyPath;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128C0);
  sub_24E60169C(v7, a2 + v19[12], &qword_27F2128B0);
  v20 = a2 + v19[16];
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v12;
  v22 = v11;
  v23 = v19[20];
  sub_24E60169C(&v26, v28, &qword_27F2128C8);
  *(a2 + v23) = v15;
  sub_24E601704(v9, &qword_27F2128B0);

  sub_24E601704(v7, &qword_27F2128B0);
  v28[0] = v22;
  v28[1] = v18;
  v28[2] = v21;
  v29 = v32;
  v30 = v33;
  v31 = v34;
  return sub_24E601704(v28, &qword_27F2128C8);
}

uint64_t sub_24E5FA048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  if (qword_27F2114E0 != -1)
  {
    swift_once();
  }

  v27 = qword_27F39EA88;
  v28 = unk_27F39EA90;
  sub_24E600AEC();

  v13 = sub_24F925E18();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(a1 + 24);
  if (v20)
  {
    v27 = *(a1 + 16);
    v28 = v20;
    v29 = 0;
    v30 = MEMORY[0x277D84F90];
    sub_24F9268B8();
    v21 = v26;
    (*(v4 + 32))(v12, v6, v26);
    v22 = 0;
  }

  else
  {
    v22 = 1;
    v21 = v26;
  }

  (*(v4 + 56))(v12, v22, 1, v21);
  sub_24E60169C(v12, v10, &qword_27F2128D8);
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128E8);
  sub_24E60169C(v10, a2 + *(v23 + 48), &qword_27F2128D8);
  sub_24E5FD138(v13, v15, v17 & 1);

  sub_24E601704(v12, &qword_27F2128D8);
  sub_24E601704(v10, &qword_27F2128D8);
  sub_24E600B40(v13, v15, v17 & 1);
}

uint64_t sub_24E5FA39C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24E5FA408(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x253045790](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_24E5FA45C(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x2530457A0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

BOOL sub_24E5FA518(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_24E5FA570@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_24E5FA5A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24E5FA5D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

_DWORD *sub_24E5FA698@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_24E5FA6D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F92B0D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24E5FA7AC()
{
  sub_24F92D068();
  swift_getWitnessTable();
  sub_24F9212A8();
  return sub_24F92D0B8();
}

uint64_t sub_24E5FA81C(uint64_t a1, id *a2)
{
  result = sub_24F92B0B8();
  *a2 = 0;
  return result;
}

uint64_t sub_24E5FA894(uint64_t a1, id *a2)
{
  v3 = sub_24F92B0C8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24E5FA914@<X0>(uint64_t *a1@<X8>)
{
  sub_24F92B0D8();
  v2 = sub_24F92B098();

  *a1 = v2;
  return result;
}

uint64_t sub_24E5FA97C(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F2125B8, type metadata accessor for DeviceListError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24E5FA9E8(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F2125B8, type metadata accessor for DeviceListError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24E5FAA54(void *a1, uint64_t a2)
{
  v4 = sub_24E5FD988(&qword_27F2125B8, type metadata accessor for DeviceListError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24E5FAAE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E5FD988(&qword_27F2125B8, type metadata accessor for DeviceListError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24E5FAB60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24E5FD100(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24E5FABA0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_24E5FAC0C()
{
  sub_24E5FD988(&qword_27F2122B8, type metadata accessor for Name);
  sub_24E5FD988(&qword_27F2122C0, type metadata accessor for Name);

  return sub_24F92CB78();
}

uint64_t sub_24E5FACD8(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F212598, type metadata accessor for AMSError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24E5FAD44(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F212598, type metadata accessor for AMSError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24E5FADB0(void *a1, uint64_t a2)
{
  v4 = sub_24E5FD988(&qword_27F212598, type metadata accessor for AMSError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24E5FAE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E5FD988(&qword_27F212598, type metadata accessor for AMSError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24E5FAEF4(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F212520, type metadata accessor for ASDServerError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24E5FAF60(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F212520, type metadata accessor for ASDServerError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24E5FAFCC(void *a1, uint64_t a2)
{
  v4 = sub_24E5FD988(&qword_27F212520, type metadata accessor for ASDServerError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24E5FB05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E5FD988(&qword_27F212520, type metadata accessor for ASDServerError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24E5FB0D8()
{
  sub_24F92D068();
  sub_24F92AEF8();
  return sub_24F92D0B8();
}

uint64_t sub_24E5FB138()
{
  sub_24E5FD988(&qword_27F2126E0, type metadata accessor for AMSMediaArtworkCropStyle);
  sub_24E5FD988(&qword_27F2126E8, type metadata accessor for AMSMediaArtworkCropStyle);

  return sub_24F92CB78();
}

double sub_24E5FB1F4@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_24E5FB200()
{
  sub_24E5FD988(&qword_27F2127A8, type metadata accessor for Level);
  sub_24E5FD988(&qword_27F2127B0, type metadata accessor for Level);
  sub_24E6007F4();
  return sub_24F92CB78();
}

uint64_t sub_24E5FB2C8()
{
  sub_24E5FD988(&qword_27F2126F0, type metadata accessor for AMSMediaArtworkColorKind);
  sub_24E5FD988(&qword_27F2126F8, type metadata accessor for AMSMediaArtworkColorKind);

  return sub_24F92CB78();
}

uint64_t sub_24E5FB384()
{
  sub_24E5FD988(&qword_27F212318, type metadata accessor for Key);
  sub_24E5FD988(&qword_27F212320, type metadata accessor for Key);

  return sub_24F92CB78();
}

uint64_t sub_24E5FB440()
{
  sub_24E5FD988(&qword_27F2122C8, type metadata accessor for AMSBagKey);
  sub_24E5FD988(&qword_27F2122D0, type metadata accessor for AMSBagKey);

  return sub_24F92CB78();
}

uint64_t sub_24E5FB4FC(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F2125C0, type metadata accessor for DeviceListError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24E5FB568(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F2125C0, type metadata accessor for DeviceListError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24E5FB5D4(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F2125B8, type metadata accessor for DeviceListError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24E5FB640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E5FD988(&qword_27F2125B8, type metadata accessor for DeviceListError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_24E5FB6C4()
{
  sub_24E5FD988(&qword_27F212B68, type metadata accessor for CALayerContentsGravity);
  sub_24E5FD988(&unk_27F212B70, type metadata accessor for CALayerContentsGravity);

  return sub_24F92CB78();
}

uint64_t sub_24E5FB780()
{
  sub_24E5FD988(&qword_27F2126A0, type metadata accessor for NqmlAttributeName);
  sub_24E5FD988(&qword_27F2126A8, type metadata accessor for NqmlAttributeName);

  return sub_24F92CB78();
}

uint64_t sub_24E5FB83C()
{
  sub_24E5FD988(&qword_27F2126C0, type metadata accessor for FeatureKey);
  sub_24E5FD988(&qword_27F2126C8, type metadata accessor for FeatureKey);

  return sub_24F92CB78();
}

uint64_t sub_24E5FB8F8()
{
  sub_24E5FD988(&qword_27F2126B0, type metadata accessor for AttributeName);
  sub_24E5FD988(&qword_27F2126B8, type metadata accessor for AttributeName);

  return sub_24F92CB78();
}

uint64_t sub_24E5FB9B4()
{
  sub_24E5FD988(&qword_27F212348, type metadata accessor for Category);
  sub_24E5FD988(&qword_27F212350, type metadata accessor for Category);

  return sub_24F92CB78();
}

uint64_t sub_24E5FBA70()
{
  sub_24E5FD988(&qword_27F212338, type metadata accessor for Mode);
  sub_24E5FD988(&qword_27F212340, type metadata accessor for Mode);

  return sub_24F92CB78();
}

uint64_t sub_24E5FBB2C()
{
  sub_24E5FD988(&qword_27F212328, type metadata accessor for BuildType);
  sub_24E5FD988(&qword_27F212330, type metadata accessor for BuildType);

  return sub_24F92CB78();
}

uint64_t sub_24E5FBBE8()
{
  sub_24E5FD988(&qword_27F2122E8, type metadata accessor for UIContentSizeCategory);
  sub_24E5FD988(&qword_27F2122F0, type metadata accessor for UIContentSizeCategory);

  return sub_24F92CB78();
}

uint64_t sub_24E5FBCA4()
{
  sub_24E5FD988(&qword_27F2122F8, type metadata accessor for ActivityType);
  sub_24E5FD988(&qword_27F212300, type metadata accessor for ActivityType);

  return sub_24F92CB78();
}

uint64_t sub_24E5FBD60()
{
  sub_24E5FD988(&qword_27F2122D8, type metadata accessor for AIDAServiceType);
  sub_24E5FD988(&qword_27F2122E0, type metadata accessor for AIDAServiceType);

  return sub_24F92CB78();
}

uint64_t sub_24E5FBE1C()
{
  sub_24E5FD988(&qword_27F212670, type metadata accessor for DeviceType);
  sub_24E5FD988(&qword_27F212678, type metadata accessor for DeviceType);

  return sub_24F92CB78();
}

uint64_t sub_24E5FBED8()
{
  sub_24E5FD988(&qword_27F212308, type metadata accessor for ReportKey);
  sub_24E5FD988(&qword_27F212310, type metadata accessor for ReportKey);

  return sub_24F92CB78();
}

uint64_t sub_24E5FBF94(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F212568, type metadata accessor for AMSError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24E5FC000(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F212568, type metadata accessor for AMSError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24E5FC070(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F212598, type metadata accessor for AMSError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24E5FC0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E5FD988(&qword_27F212598, type metadata accessor for AMSError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_24E5FC160()
{
  sub_24E5FD988(&qword_27F212680, type metadata accessor for CIImageOption);
  sub_24E5FD988(&qword_27F212688, type metadata accessor for CIImageOption);

  return sub_24F92CB78();
}

uint64_t sub_24E5FC21C()
{
  sub_24E5FD988(&qword_27F212690, type metadata accessor for CIContextOption);
  sub_24E5FD988(&qword_27F212698, type metadata accessor for CIContextOption);

  return sub_24F92CB78();
}

uint64_t sub_24E5FC2D8(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F212528, type metadata accessor for ASDServerError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24E5FC344(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F212528, type metadata accessor for ASDServerError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24E5FC3B0(uint64_t a1)
{
  v2 = sub_24E5FD988(&qword_27F212520, type metadata accessor for ASDServerError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24E5FC41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E5FD988(&qword_27F212520, type metadata accessor for ASDServerError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_24E5FC4A0()
{
  sub_24E5FD988(&qword_27F2122A8, type metadata accessor for AutoPlayVideoSetting);
  sub_24E5FD988(&qword_27F2122B0, type metadata accessor for AutoPlayVideoSetting);

  return sub_24F92CB78();
}

uint64_t sub_24E5FC55C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24F92B098();

  *a1 = v2;
  return result;
}

uint64_t sub_24E5FC5A4()
{
  sub_24E5FD988(&qword_27F2126D0, type metadata accessor for NSKeyValueChangeKey);
  sub_24E5FD988(&qword_27F2126D8, type metadata accessor for NSKeyValueChangeKey);

  return sub_24F92CB78();
}

uint64_t sub_24E5FC668()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x253052A30](*&v1);
}

uint64_t sub_24E5FC6BC()
{
  v0 = sub_24F92B0D8();
  v1 = MEMORY[0x253050D00](v0);

  return v1;
}

uint64_t sub_24E5FC6F8()
{
  sub_24F92B0D8();
  sub_24F92B218();
}

uint64_t sub_24E5FC74C()
{
  sub_24F92B0D8();
  sub_24F92D068();
  sub_24F92B218();
  v0 = sub_24F92D0B8();

  return v0;
}

uint64_t sub_24E5FC7D4()
{
  v0 = sub_24F92B0D8();
  v2 = v1;
  if (v0 == sub_24F92B0D8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

uint64_t sub_24E5FC85C()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_24F923DD8();
  }

  else
  {
    sub_24F923AD8();
  }

  return sub_24F924038();
}

uint64_t sub_24E5FC8C4()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_24F923DD8();
    sub_24F924038();
    sub_24E5FC9B8();
  }

  else
  {
    sub_24F923AD8();
    sub_24F924038();
    sub_24E5FD988(&qword_27F211A48, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_24E5FC9B8()
{
  result = qword_27F211A40;
  if (!qword_27F211A40)
  {
    sub_24F923DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F211A40);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24E5FCA4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24E5FCA5C()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_24F925448();

    return sub_24F924038();
  }

  else
  {
    sub_24F924298();
    swift_getWitnessTable();
    sub_24F9250F8();
    sub_24F924038();
    sub_24F92C4A8();
    swift_getWitnessTable();
    sub_24F924298();
    swift_getWitnessTable();
    sub_24F9250F8();
    return sub_24F924038();
  }
}

uint64_t sub_24E5FCBC0()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_24F925448();
    sub_24F924038();
  }

  else
  {
    sub_24F924298();
    swift_getWitnessTable();
    sub_24F9250F8();
    sub_24F924038();
    sub_24F92C4A8();
    swift_getWitnessTable();
    sub_24F924298();
    swift_getWitnessTable();
    sub_24F9250F8();
    sub_24F924038();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24E5FCDC0(uint64_t a1)
{
  v2 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Leaderboard(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  swift_getKeyPath();
  v16[1] = a1;
  sub_24E5FD988(&qword_27F212898, type metadata accessor for GameActivityDraft);
  sub_24F91FD88();

  v12 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
  swift_beginAccess();
  sub_24E60169C(a1 + v12, v11, &qword_27F212890);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_24E601704(v11, &qword_27F212890);
    return 0;
  }

  else
  {
    sub_24E601E20(v11, v8, type metadata accessor for Leaderboard);
    sub_24E601704(v11, &qword_27F212890);
    sub_24E601E20(&v8[*(v5 + 24)], v4, type metadata accessor for Leaderboard.LeaderboardType);
    sub_24E601E88(v8, type metadata accessor for Leaderboard);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0);
    if ((*(*(v14 - 8) + 48))(v4, 1, v14) == 1)
    {
      return 0;
    }

    else
    {
      v15 = sub_24F91F648();
      (*(*(v15 - 8) + 8))(v4, v15);
      return 1;
    }
  }
}

uint64_t sub_24E5FD100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_24E5FD138(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for SupportedPlatforms(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SupportedPlatforms(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GroupedAvatarView.LayoutMetrics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GroupedAvatarView.LayoutMetrics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LeaderboardsCountData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LeaderboardsCountData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_24E5FD698(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E5FD6B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_24E5FD740(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E5FD760(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_24E5FD988(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24E5FEC58(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24E5FECAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24E5FF870()
{
  result = qword_27F212550;
  if (!qword_27F212550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212550);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24E5FFFA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E5FFFEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E600064(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E6000AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E600118(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24E60026C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2()
{
  result = qword_27F212728;
  if (!qword_27F212728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E6003F8()
{
  sub_24E600550();
  if (v0 <= 0x3F)
  {
    sub_24E6005FC(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for GameActivityDraft(319);
      if (v2 <= 0x3F)
      {
        sub_24E602178(319, &qword_27F212750, &type metadata for ChallengesCustomizeTimeRuleRowViewV2.DurationOption, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_24E6005FC(319, &unk_27F212758, type metadata accessor for PlayTogetherReviewMetricsInfo, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E600550()
{
  if (!qword_27F22C050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F212740);
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22C050);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_24E6005FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_24E6007F4()
{
  result = qword_27F2127B8;
  if (!qword_27F2127B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2127B8);
  }

  return result;
}

unint64_t sub_24E600858()
{
  result = qword_27F212800;
  if (!qword_27F212800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2127F8);
    sub_24E602068(&qword_27F212808, &qword_27F212810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212800);
  }

  return result;
}

unint64_t sub_24E600910()
{
  result = qword_27F212818;
  if (!qword_27F212818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2127F0);
    sub_24E602068(&qword_27F212820, &qword_27F212828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212818);
  }

  return result;
}

uint64_t sub_24E6009C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_24E600ACC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xDFu)
  {
  }

  return result;
}

unint64_t sub_24E600AEC()
{
  result = qword_27F2128E0;
  if (!qword_27F2128E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2128E0);
  }

  return result;
}

uint64_t sub_24E600B40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24E600B50()
{

  return swift_deallocObject();
}

unint64_t sub_24E600BA0()
{
  result = qword_27F212908;
  if (!qword_27F212908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212908);
  }

  return result;
}

uint64_t sub_24E600BF4()
{

  sub_24E600C4C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_24E600C4C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xDFu)
  {
  }

  return result;
}

uint64_t sub_24E600D1C@<X0>(uint64_t *a1@<X8>)
{
  sub_24E600ACC(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = sub_24F926DF8();
  *a1 = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_24E600DBC(char a1)
{
  result = type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2() - 8;
  if (a1)
  {
    return sub_24E5F63D8();
  }

  return result;
}

unint64_t sub_24E600E30()
{
  result = qword_27F212958;
  if (!qword_27F212958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212960);
    sub_24E602068(&qword_27F212968, &unk_27F212970);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212958);
  }

  return result;
}

unint64_t sub_24E600EE8()
{
  result = qword_27F2236A0;
  if (!qword_27F2236A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2236A0);
  }

  return result;
}

unint64_t sub_24E600F3C()
{
  result = qword_27F212980;
  if (!qword_27F212980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212980);
  }

  return result;
}

unint64_t sub_24E600F90()
{
  result = qword_27F212988;
  if (!qword_27F212988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212948);
    sub_24E602068(&qword_27F212990, &qword_27F212998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212988);
  }

  return result;
}

unint64_t sub_24E601040()
{
  result = qword_27F2129B8;
  if (!qword_27F2129B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212928);
    sub_24E6010F8();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2129B8);
  }

  return result;
}

unint64_t sub_24E6010F8()
{
  result = qword_27F2129C0;
  if (!qword_27F2129C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2129C8);
    sub_24E6011B0();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2129C0);
  }

  return result;
}

unint64_t sub_24E6011B0()
{
  result = qword_27F2129D0;
  if (!qword_27F2129D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2129A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212920);
    sub_24F9241F8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212918);
    sub_24E602068(&qword_27F2129A0, &qword_27F212918);
    swift_getOpaqueTypeConformance2();
    sub_24E5FD988(&qword_27F212838, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2129D8, &qword_27F212860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2129D0);
  }

  return result;
}

uint64_t sub_24E60136C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6013D4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E601488()
{
  result = qword_27F212A48;
  if (!qword_27F212A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212A28);
    sub_24E602068(&qword_27F212A50, &qword_27F212A58);
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212A48);
  }

  return result;
}

unint64_t sub_24E60156C()
{
  result = qword_27F236340;
  if (!qword_27F236340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F212AA0);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236340);
  }

  return result;
}

uint64_t sub_24E601624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E60169C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E601704(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_804Tm()
{
  v1 = type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + v2);
    }
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v3 + *(v1 + 36);
  v7 = type metadata accessor for PlayTogetherReviewMetricsInfo();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = *(v7 + 20);
    v9 = sub_24F928698();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_24E601948(uint64_t *a1)
{
  v3 = *(type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24E5F6CBC(a1, v4);
}

unint64_t sub_24E6019C8()
{
  result = qword_27F212B00;
  if (!qword_27F212B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212B00);
  }

  return result;
}

uint64_t sub_24E601A1C()
{
  v1 = type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + v2);
    }
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v3 + *(v1 + 36);
  v7 = type metadata accessor for PlayTogetherReviewMetricsInfo();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = *(v7 + 20);
    v9 = sub_24F928698();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_24E601C14()
{
  v1 = *(type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E5F6E64(v0 + v2, v3);
}

unint64_t sub_24E601CB4()
{
  result = qword_27F212B10;
  if (!qword_27F212B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212B08);
    sub_24E602068(&qword_27F212910, &qword_27F211B58);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212B10);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24E601E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E601E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E601F2C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E601FB0()
{
  result = qword_27F212B38;
  if (!qword_27F212B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212880);
    sub_24E602068(&qword_27F212B40, &qword_27F212878);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212B38);
  }

  return result;
}

uint64_t sub_24E602068(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E6020B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212930);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212928);
  sub_24E601040();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_24E602178(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PageLayout(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PageLayout(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t type metadata accessor for CardPrimaryActionType()
{
  result = qword_27F212DC0;
  if (!qword_27F212DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E6024F4()
{
  sub_24E60257C();
  if (v0 <= 0x3F)
  {
    sub_24E6025AC();
    if (v1 <= 0x3F)
    {
      sub_24E60260C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E60257C()
{
  result = qword_27F212DD0;
  if (!qword_27F212DD0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F212DD0);
  }

  return result;
}

void sub_24E6025AC()
{
  if (!qword_27F212DD8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F212DD8);
    }
  }
}

void sub_24E60260C()
{
  if (!qword_27F212DE0)
  {
    sub_24E602654();
    if (!v1)
    {
      atomic_store(v0, &qword_27F212DE0);
    }
  }
}

void sub_24E602654()
{
  if (!qword_27F212DE8)
  {
    type metadata accessor for OfferButtonInfo();
    sub_24E6026B8();
    v0 = sub_24F927EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F212DE8);
    }
  }
}

unint64_t sub_24E6026B8()
{
  result = qword_27F212DF0;
  if (!qword_27F212DF0)
  {
    type metadata accessor for OfferButtonInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212DF0);
  }

  return result;
}

uint64_t _s12GameStoreKit10OfferStyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t sub_24E602798()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t sub_24E6027DC()
{
  v1 = 0x6C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0x726566666FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_24E602830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E603F44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E602870(uint64_t a1)
{
  v2 = sub_24E603614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6028AC(uint64_t a1)
{
  v2 = sub_24E603614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6028E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212DF8);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E00);
  v6 = *(v5 - 8);
  v70 = v5;
  v71 = v6;
  MEMORY[0x28223BE20](v5);
  v76 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E08);
  v9 = *(v8 - 8);
  v68 = v8;
  v69 = v9;
  MEMORY[0x28223BE20](v8);
  v74 = &v62 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E10);
  v78 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v12 = &v62 - v11;
  v13 = type metadata accessor for CardPrimaryActionType();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v62 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v62 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v62 - v23;
  v25 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24E603614();
  v26 = v79;
  sub_24F92D108();
  if (!v26)
  {
    v64 = v22;
    v63 = v19;
    v65 = v16;
    v66 = v24;
    v27 = v76;
    v28 = v77;
    v79 = v13;
    v29 = v74;
    v30 = v75;
    v31 = v12;
    v32 = sub_24F92CC78();
    v33 = (2 * *(v32 + 16)) | 1;
    v81 = v32;
    v82 = v32 + 32;
    v83 = 0;
    v84 = v33;
    v34 = sub_24E643434();
    if (v34 == 3 || v83 != v84 >> 1)
    {
      v39 = sub_24F92C918();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v41 = v79;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      (*(v78 + 8))(v12, v30);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34)
      {
        v35 = v12;
        v36 = v66;
        if (v34 == 1)
        {
          v85 = 1;
          sub_24E603784();
          sub_24F92CBA8();
          v85 = 0;
          v37 = v70;
          v38 = sub_24F92CC28();
          v77 = v49;
          v74 = v38;
          v85 = 1;
          v50 = sub_24F92CC28();
          v72 = v51;
          v73 = v50;
          v52 = (v78 + 8);
          (*(v71 + 8))(v27, v37);
          (*v52)(v31, v30);
          swift_unknownObjectRelease();
          v58 = v63;
          v59 = v77;
          *v63 = v74;
          v58[1] = v59;
          v60 = v72;
          v58[2] = v73;
          v58[3] = v60;
          swift_storeEnumTagMultiPayload();
          v61 = v58;
        }

        else
        {
          v85 = 2;
          sub_24E603668();
          sub_24F92CBA8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E30);
          sub_24E6036BC();
          v44 = v65;
          v45 = v73;
          sub_24F92CC68();
          (*(v72 + 8))(v28, v45);
          (*(v78 + 8))(v35, v30);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v36 = v66;
          v61 = v44;
        }

        v57 = v67;
      }

      else
      {
        v85 = 0;
        sub_24E6037D8();
        v43 = v29;
        sub_24F92CBA8();
        v46 = v68;
        v47 = sub_24F92CC28();
        v48 = v78;
        v53 = v47;
        v55 = v54;
        (*(v69 + 8))(v43, v46);
        (*(v48 + 8))(v12, v30);
        swift_unknownObjectRelease();
        v56 = v64;
        *v64 = v53;
        v56[1] = v55;
        swift_storeEnumTagMultiPayload();
        v61 = v56;
        v36 = v66;
        v57 = v67;
      }

      sub_24E603720(v61, v36);
      sub_24E603720(v36, v57);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v80);
}

uint64_t sub_24E603180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E496E6F74747562 && a2 == 0xEA00000000006F66)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E60321C(uint64_t a1)
{
  v2 = sub_24E603668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E603258(uint64_t a1)
{
  v2 = sub_24E603668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E603294()
{
  sub_24F92D068();
  MEMORY[0x253052A00](0);
  return sub_24F92D0B8();
}

uint64_t sub_24E6032D8()
{
  sub_24F92D068();
  MEMORY[0x253052A00](0);
  return sub_24F92D0B8();
}

uint64_t sub_24E60332C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E6033B0(uint64_t a1)
{
  v2 = sub_24E6037D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6033EC(uint64_t a1)
{
  v2 = sub_24E6037D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E603440()
{
  if (*v0)
  {
    return 0x74616E7265746C61;
  }

  else
  {
    return 0x614E6D6574737973;
  }
}

uint64_t sub_24E60348C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E6D6574737973 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616E7265746C61 && a2 == 0xEE00656C74695465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E603584(uint64_t a1)
{
  v2 = sub_24E603784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6035C0(uint64_t a1)
{
  v2 = sub_24E603784();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E603614()
{
  result = qword_27F212E18;
  if (!qword_27F212E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E18);
  }

  return result;
}

unint64_t sub_24E603668()
{
  result = qword_27F212E28;
  if (!qword_27F212E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E28);
  }

  return result;
}

unint64_t sub_24E6036BC()
{
  result = qword_27F212E38;
  if (!qword_27F212E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E38);
  }

  return result;
}

uint64_t sub_24E603720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardPrimaryActionType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E603784()
{
  result = qword_27F212E40;
  if (!qword_27F212E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E40);
  }

  return result;
}

unint64_t sub_24E6037D8()
{
  result = qword_27F212E48;
  if (!qword_27F212E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallHandleType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CallHandleType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CardPrimaryActionType.SymbolCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CardPrimaryActionType.SymbolCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24E603B28()
{
  result = qword_27F212E50;
  if (!qword_27F212E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E50);
  }

  return result;
}

unint64_t sub_24E603B80()
{
  result = qword_27F212E58;
  if (!qword_27F212E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E58);
  }

  return result;
}

unint64_t sub_24E603BD8()
{
  result = qword_27F212E60;
  if (!qword_27F212E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E60);
  }

  return result;
}

unint64_t sub_24E603C30()
{
  result = qword_27F212E68;
  if (!qword_27F212E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E68);
  }

  return result;
}

unint64_t sub_24E603C88()
{
  result = qword_27F212E70;
  if (!qword_27F212E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E70);
  }

  return result;
}

unint64_t sub_24E603CE0()
{
  result = qword_27F212E78;
  if (!qword_27F212E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E78);
  }

  return result;
}

unint64_t sub_24E603D38()
{
  result = qword_27F212E80;
  if (!qword_27F212E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E80);
  }

  return result;
}

unint64_t sub_24E603D90()
{
  result = qword_27F212E88;
  if (!qword_27F212E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E88);
  }

  return result;
}

unint64_t sub_24E603DE8()
{
  result = qword_27F212E90;
  if (!qword_27F212E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E90);
  }

  return result;
}

unint64_t sub_24E603E40()
{
  result = qword_27F212E98;
  if (!qword_27F212E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212E98);
  }

  return result;
}

unint64_t sub_24E603E98()
{
  result = qword_27F212EA0;
  if (!qword_27F212EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212EA0);
  }

  return result;
}

unint64_t sub_24E603EF0()
{
  result = qword_27F212EA8;
  if (!qword_27F212EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212EA8);
  }

  return result;
}

uint64_t sub_24E603F44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726566666FLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24E60406C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212EB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212EC0);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  (*(v6 + 16))(v8, a1, v5);
  LOBYTE(a1) = *(v2 + 8);
  v18 = *(v2 + 24);
  sub_24F9242E8();
  (*(v6 + 32))(v11, v8, v5);
  v12 = &v11[*(v9 + 36)];
  v13 = v19[7];
  *(v12 + 4) = v19[6];
  *(v12 + 5) = v13;
  *(v12 + 6) = v19[8];
  v14 = v19[3];
  *v12 = v19[2];
  *(v12 + 1) = v14;
  v15 = v19[5];
  *(v12 + 2) = v19[4];
  *(v12 + 3) = v15;
  sub_24E604538(v11, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212EC8);
  v17 = (a2 + *(result + 36));
  *v17 = a1 ^ 1;
  v17[1] = v18 ^ 1;
  return result;
}

uint64_t View.idealSize(width:height:alignment:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v10 = a2 & 1;
  v11 = a3;
  v12 = a4 & 1;
  v13 = a5;
  v14 = a6;
  return MEMORY[0x25304C420](&v9, a7, &type metadata for _IdealSizeModifier, a8);
}

uint64_t View.idealSize(_:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = a4;
  v7 = 0;
  v8 = a5;
  v9 = 0;
  v10 = a1;
  v11 = a2;
  return MEMORY[0x25304C420](&v6, a3, &type metadata for _IdealSizeModifier);
}

uint64_t sub_24E6043E8()
{
  sub_24F924038();
  sub_24E60444C();
  return swift_getWitnessTable();
}

unint64_t sub_24E60444C()
{
  result = qword_27F212EB0;
  if (!qword_27F212EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212EB0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24E6044B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E6044D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_24E604538(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E6045AC()
{
  result = qword_27F212ED0;
  if (!qword_27F212ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212EC8);
    sub_24E604638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212ED0);
  }

  return result;
}

unint64_t sub_24E604638()
{
  result = qword_27F212ED8;
  if (!qword_27F212ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212EC0);
    sub_24E6046C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212ED8);
  }

  return result;
}

unint64_t sub_24E6046C4()
{
  result = qword_27F212EE0;
  if (!qword_27F212EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212EE0);
  }

  return result;
}

id sub_24E604728()
{
  ObjectType = swift_getObjectType();
  v0 = sub_24E607C18(MEMORY[0x277D84F90]);
  v1 = 0;
  while (1)
  {
    v4 = byte_2861B21A0[v1 + 32];
    v5 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
    [v5 setStyle_];
    v6 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v0;
    v8 = sub_24E76D830(v4);
    v10 = v0[2];
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v10, v11);
    v13 = v10 + v11;
    if (v12)
    {
      break;
    }

    v14 = v9;
    if (v0[3] < v13)
    {
      sub_24E8989F4(v13, isUniquelyReferenced_nonNull_native);
      v8 = sub_24E76D830(v4);
      if ((v14 & 1) != (v15 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v0 = v23;
      if (v14)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v18 = v8;
    sub_24E8ADA88();
    v8 = v18;
    v0 = v23;
    if (v14)
    {
LABEL_2:
      v2 = v0[7];
      v3 = *(v2 + 8 * v8);
      *(v2 + 8 * v8) = v6;

      goto LABEL_3;
    }

LABEL_10:
    v0[(v8 >> 6) + 8] |= 1 << v8;
    *(v0[6] + v8) = v4;
    *(v0[7] + 8 * v8) = v6;

    v16 = v0[2];
    v12 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v12)
    {
      goto LABEL_16;
    }

    v0[2] = v17;
LABEL_3:
    if (++v1 == 5)
    {
      *&v21[OBJC_IVAR____TtC12GameStoreKit31JSPersonNameComponentsFormatter_formatters] = v0;
      v22.receiver = v21;
      v22.super_class = ObjectType;
      return objc_msgSendSuper2(&v22, sel_init);
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

unint64_t sub_24E604930@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x66657250656D616ELL;
  *(inited + 40) = 0xEA00000000007869;
  v19 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 72) = v4;
  v5 = sub_24E605DB4();
  v6 = v1[1];
  *(inited + 48) = *v1;
  v18 = v6;
  *(inited + 104) = v6;
  v7 = v1[2];
  v16 = v1[3];
  v8 = v16;
  v17 = v7;
  *(inited + 160) = v7;
  *(inited + 216) = v8;
  v9 = v1[5];
  v15 = v1[4];
  *(inited + 272) = v15;
  *(inited + 80) = v5;
  *(inited + 88) = 0x6D614E6E65766967;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 128) = v4;
  *(inited + 136) = v5;
  *(inited + 144) = 0x614E656C6464696DLL;
  *(inited + 152) = 0xEA0000000000656DLL;
  *(inited + 184) = v4;
  *(inited + 192) = v5;
  *(inited + 200) = 0x614E796C696D6166;
  *(inited + 208) = 0xEA0000000000656DLL;
  *(inited + 240) = v4;
  *(inited + 248) = v5;
  *(inited + 256) = 0x66667553656D616ELL;
  *(inited + 264) = 0xEA00000000007869;
  *(inited + 296) = v4;
  *(inited + 304) = v5;
  *(inited + 312) = 0x656D616E6B63696ELL;
  *(inited + 320) = 0xE800000000000000;
  v14 = v9;
  *(inited + 352) = v4;
  *(inited + 360) = v5;
  *(inited + 328) = v9;
  sub_24E606048(&v19, v13);
  sub_24E606048(&v18, v13);
  sub_24E606048(&v17, v13);
  sub_24E606048(&v16, v13);
  sub_24E606048(&v15, v13);
  sub_24E606048(&v14, v13);
  v10 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v11 = sub_24E80FFAC(v10);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_24E604B70(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E606134();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CCA8();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_24F92CCA8();
  v8[13] = 2;
  sub_24F92CCA8();
  v8[12] = 3;
  sub_24F92CCA8();
  v8[11] = 4;
  sub_24F92CCA8();
  v8[10] = 5;
  sub_24F92CCA8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E604D70()
{
  v1 = *v0;
  v2 = 0x66657250656D616ELL;
  v3 = 0x614E796C696D6166;
  v4 = 0x66667553656D616ELL;
  if (v1 != 4)
  {
    v4 = 0x656D616E6B63696ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D614E6E65766967;
  if (v1 != 1)
  {
    v5 = 0x614E656C6464696DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E604E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E606188(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E604E6C(uint64_t a1)
{
  v2 = sub_24E606134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E604EA8(uint64_t a1)
{
  v2 = sub_24E606134();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E604EE4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_24E6063A4(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_24E604F48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_24E605E30(v9, v10) & 1;
}

uint64_t sub_24E604FE4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E6050C0()
{
  sub_24F92B218();
}

uint64_t sub_24E605188()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E605260@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E6068A8();
  *a1 = result;
  return result;
}

void sub_24E605290(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0xE400000000000000;
  v8 = 1735290732;
  if (v2 != 3)
  {
    v8 = 0x6169766572626261;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x74726F6873;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24E605338(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v2 = sub_24F9285B8();
  v20 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C2D8();
  (*(v12 + 56))(v10, 0, 1, v11);
  (*(v12 + 32))(v14, v10, v11);
  sub_24F9285A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F50);
  (*(v20 + 16))(v5, v7, v2);
  MEMORY[0x253050800](v5);
  sub_24E6068F4();
  sub_24F9282E8();
  (*(v20 + 8))(v7, v2);

  v21[2] = v24;
  v21[3] = v25;
  v21[4] = v26;
  v21[5] = v27;
  v21[0] = v22;
  v21[1] = v23;
  if (*(&v22 + 1) == 1)
  {
    (*(v12 + 8))(v14, v11);
    return 0;
  }

  else
  {
    v28[0] = *&v21[0];
    v28[1] = *(&v22 + 1);
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v29 = v23;
    v30 = v24;
    sub_24F92C2F8();
    v16 = sub_24E6068A8();
    if (v16 == 5)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    v18 = sub_24E605734(v28, v17);
    sub_24E601704(v21, &qword_27F212F50);
    (*(v12 + 8))(v14, v11);
    return v18;
  }
}

uint64_t sub_24E605734(uint64_t *a1, unsigned __int8 a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - v6;
  v8 = sub_24F91F1A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC12GameStoreKit31JSPersonNameComponentsFormatter_formatters);
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = sub_24E76D830(a2);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  v16 = *a1;
  v17 = a1[3];
  v30 = a1[2];
  v31 = v16;
  v18 = a1[4];
  v19 = a1[7];
  v28 = a1[6];
  v29 = v18;
  v26[1] = v17;
  v26[2] = v19;
  v20 = a1[8];
  v26[3] = a1[10];
  v26[4] = v20;
  (*(v9 + 56))(v7, 1, 1, v8);

  v27 = v15;

  sub_24F91F178();
  v21 = sub_24F91F188();
  (*(v9 + 8))(v11, v8);
  v22 = v27;
  v23 = [v27 stringFromPersonNameComponents_];

  v24 = sub_24F92B0D8();
  return v24;
}

id JSPersonNameComponentsFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for JSPersonNameComponentsFormatter.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSPersonNameComponentsFormatter.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_24E605C1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24E605C78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24E605CF8()
{
  result = qword_27F212EF0;
  if (!qword_27F212EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212EF0);
  }

  return result;
}

unint64_t sub_24E605D60()
{
  result = qword_27F212F00;
  if (!qword_27F212F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212F00);
  }

  return result;
}

unint64_t sub_24E605DB4()
{
  result = qword_27F212F10;
  if (!qword_27F212F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212F10);
  }

  return result;
}

uint64_t sub_24E605E30(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_24F92CE08();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_24F92CE08();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_24F92CE08();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = sub_24F92CE08();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = sub_24F92CE08();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v33 = a1[11];
  v34 = a2[11];
  if (v33)
  {
    if (v34 && (a1[10] == a2[10] && v33 == v34 || (sub_24F92CE08() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v34)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_24E606048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E6060B8()
{
  result = qword_27F212F28;
  if (!qword_27F212F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212F28);
  }

  return result;
}

unint64_t sub_24E606134()
{
  result = qword_27F212F38;
  if (!qword_27F212F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212F38);
  }

  return result;
}

uint64_t sub_24E606188(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x66667553656D616ELL && a2 == 0xEA00000000007869 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24E6063A4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E606134();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v43[0]) = 0;
  v9 = sub_24F92CBC8();
  v11 = v10;
  LOBYTE(v43[0]) = 1;
  v34 = sub_24F92CBC8();
  v36 = v12;
  LOBYTE(v43[0]) = 2;
  v13 = sub_24F92CBC8();
  v35 = v14;
  v31 = v13;
  LOBYTE(v43[0]) = 3;
  v30 = sub_24F92CBC8();
  v33 = v15;
  LOBYTE(v43[0]) = 4;
  v29 = sub_24F92CBC8();
  v32 = v16;
  v44 = 5;
  v17 = sub_24F92CBC8();
  v18 = *(v6 + 8);
  v19 = v17;
  v28 = v20;
  v18(v8, v5);
  *&v37 = v9;
  *(&v37 + 1) = v11;
  *&v38 = v34;
  *(&v38 + 1) = v36;
  *&v39 = v31;
  *(&v39 + 1) = v35;
  *&v40 = v30;
  v21 = v33;
  *(&v40 + 1) = v33;
  *&v41 = v29;
  v22 = v32;
  *(&v41 + 1) = v32;
  *&v42 = v19;
  v23 = v28;
  *(&v42 + 1) = v28;
  sub_24E606840(&v37, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v43[0] = v9;
  v43[1] = v11;
  v43[2] = v34;
  v43[3] = v36;
  v43[4] = v31;
  v43[5] = v35;
  v43[6] = v30;
  v43[7] = v21;
  v43[8] = v29;
  v43[9] = v22;
  v43[10] = v19;
  v43[11] = v23;
  result = sub_24E606878(v43);
  v25 = v40;
  a2[2] = v39;
  a2[3] = v25;
  v26 = v42;
  a2[4] = v41;
  a2[5] = v26;
  v27 = v38;
  *a2 = v37;
  a2[1] = v27;
  return result;
}

uint64_t sub_24E6068A8()
{
  v0 = sub_24F92CB88();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24E6068F4()
{
  result = qword_27F212F58;
  if (!qword_27F212F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212F50);
    sub_24E606978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212F58);
  }

  return result;
}

unint64_t sub_24E606978()
{
  result = qword_27F212F60;
  if (!qword_27F212F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212F60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSPersonNameComponentsFormatter.Components.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSPersonNameComponentsFormatter.Components.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24E606B20()
{
  result = qword_27F212F70;
  if (!qword_27F212F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212F70);
  }

  return result;
}

unint64_t sub_24E606B78()
{
  result = qword_27F212F78;
  if (!qword_27F212F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212F78);
  }

  return result;
}

unint64_t sub_24E606BD0()
{
  result = qword_27F212F80;
  if (!qword_27F212F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212F80);
  }

  return result;
}

unint64_t ChallengesGamePickerPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x7365657469766E69;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F90);
  v6 = sub_24E607F60(&qword_27F212F98, sub_24E606DFC);
  *(inited + 48) = v3;
  *(inited + 80) = v6;
  *(inited + 88) = 0x706574537478656ELL;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 128) = &type metadata for ChallengesGamePickerNextStep;
  *(inited + 136) = sub_24E606E50();
  *(inited + 104) = v4;

  v7 = sub_24E608814(inited, &qword_27F213688, &unk_24F93AE90, &qword_27F212FB0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

unint64_t sub_24E606DFC()
{
  result = qword_27F212FA0;
  if (!qword_27F212FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212FA0);
  }

  return result;
}

unint64_t sub_24E606E50()
{
  result = qword_27F212FA8;
  if (!qword_27F212FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212FA8);
  }

  return result;
}

uint64_t sub_24E606EA4()
{
  if (*v0)
  {
    return 0x706574537478656ELL;
  }

  else
  {
    return 0x7365657469766E69;
  }
}

uint64_t sub_24E606ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365657469766E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x706574537478656ELL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E606FB4(uint64_t a1)
{
  v2 = sub_24E607E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E606FF0(uint64_t a1)
{
  v2 = sub_24E607E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesGamePickerPageIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E607E64();

  sub_24F92D128();
  v15 = v8;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F90);
  sub_24E607F60(&qword_27F212FC8, sub_24E607EB8);
  sub_24F92CD48();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_24E607F0C();
    sub_24F92CD48();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ChallengesGamePickerPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E607E64();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F90);
  v12[15] = 0;
  sub_24E607F60(&qword_27F212FE8, sub_24E607FD8);
  sub_24F92CC68();
  v9 = v13;
  v12[13] = 1;
  sub_24E60802C();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v10 = v12[14];
  *a2 = v9;
  *(a2 + 8) = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E6074B4@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x7365657469766E69;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F90);
  v6 = sub_24E607F60(&qword_27F212F98, sub_24E606DFC);
  *(inited + 48) = v3;
  *(inited + 80) = v6;
  *(inited + 88) = 0x706574537478656ELL;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 128) = &type metadata for ChallengesGamePickerNextStep;
  *(inited + 136) = sub_24E606E50();
  *(inited + 104) = v4;

  v7 = sub_24E608814(inited, &qword_27F213688, &unk_24F93AE90, &qword_27F212FB0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

void ChallengesGamePickerNextStep.jsRepresentation(in:)(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7373696D736964;
  if (v2 == 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000024FA3EC70;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (v5)
  {
    v3 = 0x800000024FA3EC50;
  }

  v7 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v7;
  *a1 = v6;
  a1[1] = v3;
}

unint64_t ChallengesGamePickerNextStep.rawValue.getter()
{
  v1 = 0x7373696D736964;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

GameStoreKit::ChallengesGamePickerNextStep_optional __swiftcall ChallengesGamePickerNextStep.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24E607798(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0xE700000000000000;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7373696D736964;
  }

  if (v3 == 1)
  {
    v4 = 0x800000024FA3EC70;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x800000024FA3EC50;
  }

  if (*a2 == 1)
  {
    v8 = 0x800000024FA3EC70;
  }

  else
  {
    v2 = 0x7373696D736964;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000016;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x800000024FA3EC50;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24E607878()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E607928()
{
  sub_24F92B218();
}

uint64_t sub_24E6079C4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E607A7C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7373696D736964;
  if (v2 == 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000024FA3EC70;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (v5)
  {
    v3 = 0x800000024FA3EC50;
  }

  *a1 = v6;
  a1[1] = v3;
}

void sub_24E607B98(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7373696D736964;
  if (v2 == 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000024FA3EC70;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (v5)
  {
    v3 = 0x800000024FA3EC50;
  }

  v7 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v7;
  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_24E607C18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2131F0);
    v3 = sub_24F92CB58();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_24E76D830(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E607D0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213670);
    v3 = sub_24F92CB58();
    v4 = a1 + 32;

    while (1)
    {
      sub_24E60169C(v4, &v13, &qword_27F212F18);
      v5 = v13;
      v6 = v14;
      result = sub_24E76D644(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24E612C80(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E607E64()
{
  result = qword_27F212FC0;
  if (!qword_27F212FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212FC0);
  }

  return result;
}

unint64_t sub_24E607EB8()
{
  result = qword_27F212FD0;
  if (!qword_27F212FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212FD0);
  }

  return result;
}

unint64_t sub_24E607F0C()
{
  result = qword_27F212FD8;
  if (!qword_27F212FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212FD8);
  }

  return result;
}

uint64_t sub_24E607F60(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212F90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E607FD8()
{
  result = qword_27F212FF0;
  if (!qword_27F212FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212FF0);
  }

  return result;
}

unint64_t sub_24E60802C()
{
  result = qword_27F212FF8;
  if (!qword_27F212FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212FF8);
  }

  return result;
}

unint64_t sub_24E608084()
{
  result = qword_27F213000;
  if (!qword_27F213000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213000);
  }

  return result;
}

unint64_t sub_24E60810C()
{
  result = qword_27F213008;
  if (!qword_27F213008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213008);
  }

  return result;
}

unint64_t sub_24E608164()
{
  result = qword_27F213010;
  if (!qword_27F213010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213010);
  }

  return result;
}

unint64_t sub_24E6081BC()
{
  result = qword_27F213018;
  if (!qword_27F213018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213018);
  }

  return result;
}

unint64_t sub_24E608210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135D8);
    v3 = sub_24F92CB58();
    v4 = a1 + 32;

    while (1)
    {
      sub_24E60169C(v4, v13, qword_27F23E470);
      result = sub_24E76D934(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_24E612B0C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E60834C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133F8);
    v3 = sub_24F92CB58();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24E76D644(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E608448(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B8);
    v3 = sub_24F92CB58();
    v4 = a1 + 32;

    while (1)
    {
      sub_24E60169C(v4, &v13, &qword_27F2135C0);
      v5 = v13;
      v6 = v14;
      result = sub_24E76D644(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24E612B0C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E608578(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213058);
    v3 = sub_24F92CB58();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v8 = *(i - 4);
      v7 = *(i - 3);
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;

      result = sub_24E76D644(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = (v3[7] + 40 * result);
      *v15 = v8;
      v15[1] = v7;
      v15[2] = v10;
      v15[3] = v9;
      v15[4] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E6086DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213638);
    v3 = sub_24F92CB58();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24E76D644(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E608814(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_24F92CB58();
    v8 = a1 + 32;

    while (1)
    {
      sub_24E60169C(v8, &v20, a4);
      v9 = v20;
      v10 = v21;
      result = sub_24E76D644(v20, v21);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v7[6] + 16 * result);
      *v13 = v9;
      v13[1] = v10;
      v14 = v7[7] + 40 * result;
      v15 = v22;
      v16 = v23;
      *(v14 + 32) = v24;
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += 56;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E608940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213558);
    v3 = sub_24F92CB58();
    v4 = a1 + 32;

    while (1)
    {
      sub_24E60169C(v4, &v11, &qword_27F221890);
      v5 = v11;
      result = sub_24E7728E8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24E612B0C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E608A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213678);
    v3 = sub_24F92CB58();
    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 1);
      v12 = i[1];
      v13 = *i;
      result = sub_24E7728CC(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E608BA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213040);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213048);
    v7 = sub_24F92CB58();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24E60169C(v9, v5, &qword_27F213040);
      v11 = *v5;
      v12 = v5[1];
      result = sub_24E76D644(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for GameSearchResultsTabContent(0);
      result = sub_24E612C98(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for GameSearchResultsTabContent);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E608D8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213030);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v23 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213038);
    v7 = sub_24F92CB58();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v23 = *(v3 + 72);
    v24 = v8;

    while (1)
    {
      sub_24E60169C(v9, v5, &qword_27F213030);
      v10 = *v5;
      v11 = v5[1];
      v13 = v5[2];
      v12 = v5[3];
      result = sub_24E76D9B8(*v5, v11, v13, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v7[6] + 32 * result);
      *v17 = v10;
      v17[1] = v11;
      v17[2] = v13;
      v17[3] = v12;
      v18 = v7[7];
      v19 = type metadata accessor for PaginatedShelfContent();
      result = sub_24E612C98(v5 + v24, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for PaginatedShelfContent);
      v20 = v7[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v7[2] = v22;
      v9 += v23;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E608F94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213028);
    v3 = sub_24F92CB58();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_24E76D9B8(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E6090CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213310);
    v3 = sub_24F92CB58();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_24E76D644(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E609218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2132F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2132F8);
    v7 = sub_24F92CB58();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24E60169C(v9, v5, &qword_27F2132F0);
      result = sub_24E76D758(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_24F91F4A8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E609400(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2132E0);
    v3 = sub_24F92CB58();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24E76D644(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E60952C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D300);
    v3 = sub_24F92CB58();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_24E76DAA8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E609608(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213318);
    v3 = sub_24F92CB58();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_24E76DB14(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E609724(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213370);
    v3 = sub_24F92CB58();
    v4 = a1 + 32;

    while (1)
    {
      sub_24E60169C(v4, v17, &qword_27F213378);
      result = sub_24E76D6EC(v17);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 136 * result;
      v9 = v17[3];
      v8 = v17[4];
      v10 = v17[2];
      *(v7 + 16) = v17[1];
      *(v7 + 32) = v10;
      *(v7 + 48) = v9;
      *(v7 + 64) = v8;
      *v7 = v17[0];
      v11 = v17[5];
      v12 = v17[6];
      v13 = v17[7];
      *(v7 + 128) = v18;
      *(v7 + 96) = v12;
      *(v7 + 112) = v13;
      *(v7 + 80) = v11;
      *(v3[7] + 8 * result) = v19;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 144;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E6098B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213568);
    v3 = sub_24F92CB58();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_24E76DBF8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E6099AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133D8);
    v3 = sub_24F92CB58();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24E7728F0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E609AD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213668);
    v3 = sub_24F92CB58();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24E76D644(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E609BF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213720);
    v3 = sub_24F92CB58();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_24E7728CC(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E609CEC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_24F92CB58();
    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v7 = *i;
      result = sub_24E7728CC(v6);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v6;
      *(v4[7] + 8 * result) = v7;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
      if (!--v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E609DC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213710);
    v3 = sub_24F92CB58();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_24E7728CC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E609EE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213658);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213660);
    v7 = sub_24F92CB58();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24E60169C(v9, v5, &qword_27F213658);
      v11 = *v5;
      result = sub_24E7728E8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_24F92A388();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E60A0C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213520);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213528);
    v7 = sub_24F92CB58();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24E60169C(v9, v5, &qword_27F213520);
      result = sub_24E76DDAC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24F929598();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E60A2B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213510);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213518);
    v7 = sub_24F92CB58();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24E60169C(v9, v5, &qword_27F213510);
      result = sub_24E76DDAC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24F929598();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E60A498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133E8);
    v7 = sub_24F92CB58();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24E60169C(v9, v5, &qword_27F2133E0);
      result = sub_24E76D934(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 40 * result;
      v15 = *v5;
      v16 = *(v5 + 1);
      *(v14 + 32) = *(v5 + 4);
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133F0);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v13, &v5[v8], v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E60A69C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213380);
  v3 = sub_24F92CB58();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_24E60169C(&v24, v23, &qword_27F213388);
  result = sub_24E7728F0(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_24E60169C(&v24, v23, &qword_27F213388);
    result = sub_24E7728F0(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24E60A838(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2134B0);
    v3 = sub_24F92CB58();
    v4 = a1 + 32;

    while (1)
    {
      sub_24E60169C(v4, v13, &qword_27F2134B8);
      result = sub_24E76DD40(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E60A960(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2134A0);
    v3 = sub_24F92CB58();
    v4 = a1 + 32;

    while (1)
    {
      sub_24E60169C(v4, v18, &qword_27F2134A8);
      result = sub_24E76DD40(v18);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v18[0];
      v9 = v18[1];
      *(v7 + 32) = v19;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = v3[7] + 88 * result;
      v11 = v21;
      *v10 = v20;
      *(v10 + 16) = v11;
      v12 = v22;
      v13 = v23;
      v14 = v24;
      *(v10 + 80) = v25;
      *(v10 + 48) = v13;
      *(v10 + 64) = v14;
      *(v10 + 32) = v12;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 128;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E60AAD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213100);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213108);
    v7 = sub_24F92CB58();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24E60169C(v9, v5, &qword_27F213100);
      result = sub_24E76D934(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 40 * result;
      v15 = *v5;
      v16 = *(v5 + 1);
      *(v14 + 32) = *(v5 + 4);
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = v7[7];
      v18 = sub_24F91F4A8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v13, &v5[v8], v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E60ACC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213110);
    v3 = sub_24F92CB58();
    v4 = a1 + 32;

    while (1)
    {
      sub_24E60169C(v4, v13, &qword_27F213118);
      result = sub_24E76D934(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24E60AE14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_24F92CB58();
    v8 = a1 + 32;

    while (1)
    {
      sub_24E60169C(v8, v17, a4);
      result = sub_24E76D934(v17);
      if (v10)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v7[6] + 40 * result;
      v12 = v17[0];
      v13 = v17[1];
      *(v11 + 32) = v18;
      *v11 = v12;
      *(v11 + 16) = v13;
      *(v7[7] + 8 * result) = v19;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      v8 += 48;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}