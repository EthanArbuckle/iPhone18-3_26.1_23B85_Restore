id dd_ensureUrlIsUrl(void *a1)
{
  v1 = a1;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CBEBC0] URLWithString:v1];
LABEL_4:
    v3 = v2;

    v4 = v3;

    return v4;
  }

  v4 = 0;

  return v4;
}

uint64_t __dd_transientAttributesSet_block_invoke()
{
  _MergedGlobals_12 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D041D8], @"DDContext", @"DDAttributeBackup", @"DDFoundExistingLink", 0}];

  return MEMORY[0x2821F96F8]();
}

void sub_21AB7361C(_Unwind_Exception *a1, int a2)
{
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  objc_begin_catch(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [DDOperation main];
  }

  objc_end_catch();
}

uint64_t sub_21AB73B48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_21AB75470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21AB77404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21AB79CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB79D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return [v29 countByEnumeratingWithState:&a17 objects:&a29 count:16];
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _BYTE *a20)
{

  [(DDActionGroup *)a20 insertActions:a1 atIndex:0];
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return [v4 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t _DDResultIsURL(uint64_t result)
{
  if (result)
  {
    v1 = _DDResultIsURL__sURLTypes;
    if (!_DDResultIsURL__sURLTypes)
    {
      v2 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D040F8], *MEMORY[0x277D041C8], *MEMORY[0x277D04130], *MEMORY[0x277D04138], *MEMORY[0x277D040F0], *MEMORY[0x277D040C8], 0}];
      v3 = _DDResultIsURL__sURLTypes;
      _DDResultIsURL__sURLTypes = v2;

      v1 = _DDResultIsURL__sURLTypes;
    }

    Type = DDResultGetType();

    return [v1 containsObject:Type];
  }

  return result;
}

id _DDURLFromResult(uint64_t a1)
{
  if (a1)
  {
    v1 = DDResultCopyExtractedURLWithOptions();
    if (v1)
    {
      v2 = [MEMORY[0x277CBEBC0] URLWithString:v1];

      v3 = v2;
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

  return v3;
}

uint64_t __analyticsQueue_block_invoke()
{
  _MergedGlobals_0 = dispatch_queue_create("com.apple.datadetectors.analytics", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21AB7FAA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21AB8069C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDDetectionController _doURLification:];
    }

    objc_end_catch();
    JUMPOUT(0x21AB8041CLL);
  }

  _Block_object_dispose((v11 - 208), 8);
  _Unwind_Resume(exc_buf);
}

void sub_21AB81334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_21AB81FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_21AB84254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void DDPerformWebSearchFromQuery(void *a1)
{
  v1 = a1;
  if (qword_280B12248 != -1)
  {
    DDPerformWebSearchFromQuery_cold_1();
    if (_MergedGlobals_2 == 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = v1;
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 bundleIdentifier];
    v7 = [v6 isEqualToString:@"com.apple.datadetectors.AddToRecentsService"];

    if (v7)
    {
      NSLog(&cfstr_Addtorecentsse.isa);
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.datadetectors.AddToRecentsService"];
      v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282C70950];
      [v8 setRemoteObjectInterface:v9];

      [v8 resume];
      v10 = [v8 remoteObjectProxy];
      [v10 performWebSearchFromQuery:v3];

      [v8 invalidate];
    }

    v11 = v3;
    goto LABEL_9;
  }

  if (_MergedGlobals_2 != 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v11 = [v1 stringByTrimmingCharactersInSet:v2];

  v3 = [DDUISearchWebHandler webSearchURLForQueryString:v11];
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v4 openURL:v3 configuration:0 completionHandler:0];

LABEL_9:
}

void __dd_canReadDefaultBrowser_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.security.exception.shared-preference.read-only", 0);
    CFRelease(v2);
    if (v3)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(v3))
      {
        v10.length = CFArrayGetCount(v3);
        v10.location = 0;
        if (CFArrayContainsValue(v3, v10, @"com.apple.mobilesafarishared"))
        {
          _MergedGlobals_2 = 1;
        }
      }

      CFRelease(v3);
    }
  }

  if ((_MergedGlobals_2 & 1) == 0)
  {
    v5 = SecTaskCreateFromSelf(v0);
    if (v5)
    {
      v6 = v5;
      v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.security.exception.shared-preference.read-write", 0);
      CFRelease(v6);
      if (v7)
      {
        v8 = CFArrayGetTypeID();
        if (v8 == CFGetTypeID(v7))
        {
          v11.length = CFArrayGetCount(v7);
          v11.location = 0;
          if (CFArrayContainsValue(v7, v11, @"com.apple.mobilesafarishared"))
          {
            _MergedGlobals_2 = 1;
          }
        }

        CFRelease(v7);
      }
    }
  }
}

void sub_21AB8957C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB89594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB895AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _displayString(void *a1, void *SubresultWithType, void *a3, void *a4, int a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (!SubresultWithType)
  {
    if (v9)
    {
      v14 = DDMapAddressFromURL(v9);
      goto LABEL_23;
    }

    if (v10)
    {
      v15 = DDDefaultAddressForContact(v10);
      v16 = v15;
      if (v15)
      {
        if (a5)
        {
          v17 = [v15 street];
          if (v17)
          {
            v18 = v17;

LABEL_20:
            v14 = [v18 stringByReplacingOccurrencesOfString:@"(\\s|\\n)+" withString:@" " options:1024 range:{0, objc_msgSend(v18, "length")}];

            goto LABEL_23;
          }
        }

        v18 = [MEMORY[0x277CBDB80] stringFromPostalAddress:v16 style:0];

        if (v18)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }
    }

    else
    {
      v20 = [v11 objectForKeyedSubscript:@"event"];
      v21 = [v12 objectForKeyedSubscript:@"icsEvent"];
      v22 = v20;
      if (v20 || (v22 = v21) != 0)
      {
        v18 = [v22 location];
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        goto LABEL_20;
      }
    }

    v14 = 0;
    goto LABEL_23;
  }

  if (!a5 || (Type = DDResultGetType(), CFStringCompare(Type, *MEMORY[0x277D040E0], 0)) || (v19 = *MEMORY[0x277D04180], SubresultWithType = DDResultGetSubresultWithType(), DDResultGetMatchedString(), (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = DDMapAddressFromResult(SubresultWithType);
  }

LABEL_23:

  return v14;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id _ddui_parsec_xpcInterface(int a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282C709B0];
    v2 = MEMORY[0x277CBEB98];
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [v2 setWithObjects:{v3, v4, v5, v6, objc_opt_class(), 0}];
    [v1 setClasses:v7 forSelector:sel_startQueryWithResult_context_ argumentIndex:0 ofReply:0];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    gotLoadHelper_x8__OBJC_CLASS___SFResultSection(v11);
    v13 = *(v12 + 1416);
    v14 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];

    v15 = sel_showClientQueryResults_error_;
    v16 = v1;
    v17 = v14;
    v18 = 0;
  }

  else
  {
    v1 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282C4B330];
    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    gotLoadHelper_x8__OBJC_CLASS___SFResultSection(v22);
    v24 = *(v23 + 1416);
    v25 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
    [v1 setClasses:v25 forSelector:sel_performClientTextQueryWithTerm_queryId_sessionId_userAgent_reply_ argumentIndex:0 ofReply:1];
    v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

    v15 = sel_loadReportAnIssueImage_;
    v16 = v1;
    v17 = v14;
    v18 = 1;
  }

  [v16 setClasses:v17 forSelector:v15 argumentIndex:0 ofReply:v18];

  return v1;
}

void DDRecursivelyRemoveResultLinksFromAnchor(void *a1, void *a2, void *a3)
{
  v22 = a1;
  v5 = a2;
  v6 = a3;
  if (!v22)
  {
    goto LABEL_19;
  }

  v7 = [v22 getAttribute:*MEMORY[0x277D04208]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 isEqual:@"true"];
    v9 = [v22 childNodes];
    v10 = [v9 length];
    if (!v10)
    {
      goto LABEL_10;
    }

LABEL_6:
    v11 = v10;
    v12 = 0;
    do
    {
      v13 = [v9 item:v12];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        DDRecursivelyRemoveResultLinksFromAnchor(v13, v22, v6);
      }

      v12 = (v12 + 1);
    }

    while (v11 != v12);
    goto LABEL_10;
  }

  v8 = 0;
  v9 = [v22 childNodes];
  v10 = [v9 length];
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_10:
  v14 = v8 ^ 1;
  if (!v5)
  {
    v14 = 1;
  }

  if (v14)
  {
    v16 = v9;
  }

  else
  {
    v15 = [v22 childNodes];
    v16 = [v15 copy];

    v17 = [v16 length];
    if (v17)
    {
      v18 = v17;
      do
      {
        v19 = [v16 item:0];
        v20 = [v5 insertBefore:v19 refChild:v22];

        --v18;
      }

      while (v18);
    }

    v21 = [v5 removeChild:v22];
  }

LABEL_19:
}

void sub_21AB8FD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB8FD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _DDArrayWithList(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v1 length])
  {
    v3 = 0;
    do
    {
      v4 = [v1 item:v3];
      [v2 addObject:v4];

      v3 = (v3 + 1);
    }

    while (v3 < [v1 length]);
  }

  return v2;
}

void _DDRemoveResultLinksFromArrayOfAnchors(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 parentNode];
        v11 = [v9 parentNode];

        if (v11)
        {
          DDRecursivelyRemoveResultLinksFromAnchor(v9, v10, v4);
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

id DDLocalizedString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleWithIdentifier:@"com.apple.DataDetectorsUI"];
  v4 = [v3 localizedStringForKey:v2 value:&stru_282C1E0A8 table:0];

  return v4;
}

id DDLocalizedStringFromTable(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = MEMORY[0x277CCA8D8];
  v7 = a4;
  v8 = a3;
  v9 = a1;
  v10 = [v6 bundleWithIdentifier:@"com.apple.DataDetectorsUI"];
  v11 = [v10 localizedStringForKey:v9 value:v8 table:v7];

  return v11;
}

id DDLocalizedStringWithDefaultValue(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x277CCA8D8];
  v6 = a4;
  v7 = a1;
  v8 = [v5 bundleWithIdentifier:@"com.apple.DataDetectorsUI"];
  v9 = [v8 localizedStringForKey:v7 value:v6 table:0];

  return v9;
}

id beginDateAndTimezoneOfEventResultsRespectingSpecificEndDates(void *a1, uint64_t a2, void *a3, _BYTE *a4, BOOL *a5, void *a6, void *a7)
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a3;
  v11 = [MEMORY[0x277CBEB18] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 == v15)
        {
          v17 = *(*(&v41 + 1) + 8 * i);
          if (DDResultGetCategory() != 4)
          {
            continue;
          }
        }

        else
        {
          objc_enumerationMutation(v12);
          v17 = *(*(&v41 + 1) + 8 * i);
          if (DDResultGetCategory() != 4)
          {
            continue;
          }
        }

        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v14);
  }

  v18 = DDResultCreateFromDateTimeResults();
  if (!v18)
  {
    v23 = 0;
    goto LABEL_37;
  }

  v19 = v18;
  v20 = [v10 objectForKey:@"ReferenceDate"];
  v21 = v20;
  v37 = a5;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = [MEMORY[0x277CBEAA8] date];
  }

  v24 = v22;

  v25 = [MEMORY[0x277CBEBB0] defaultTimeZone];
  [v10 objectForKey:@"ReferenceDate"];
  DDResultIsPartialDateRangeOrTimeRange();
  Type = DDResultGetType();
  v27 = *MEMORY[0x277D04198];
  v36 = v10;
  if (CFStringCompare(Type, *MEMORY[0x277D04198], 0) == kCFCompareEqualTo || CFStringCompare(Type, *MEMORY[0x277D040A8], 0) == kCFCompareEqualTo || CFStringCompare(Type, *MEMORY[0x277D040B0], 0) == kCFCompareEqualTo)
  {
    if (!DDResultCopyExtractedDateFromReferenceDate())
    {
LABEL_27:
      v31 = v24;
LABEL_28:
      v29 = a4;
      if (v37)
      {
        *v37 = CFStringCompare(Type, v27, 0) == kCFCompareEqualTo;
      }

      v28 = a7;
      v30 = a6;
      v24 = v31;
      v10 = v36;
      if (!a6)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_25:
    v31 = 0;

    goto LABEL_28;
  }

  v27 = *MEMORY[0x277D04190];
  if (CFStringCompare(Type, *MEMORY[0x277D04190], 0) == kCFCompareEqualTo || CFStringCompare(Type, *MEMORY[0x277D040A0], 0) == kCFCompareEqualTo)
  {
    if (!DDResultCopyExtractedStartDateEndDate())
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v37)
  {
    *v37 = 0;
    v29 = a4;
    v28 = a7;
    v30 = a6;
    if (!a6)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v29 = a4;
    v28 = a7;
    v30 = a6;
    if (!a6)
    {
      goto LABEL_32;
    }
  }

LABEL_31:
  v32 = 0;
  *v30 = 0;
LABEL_32:
  if (v29)
  {
    *v29 = 0;
  }

  CFRelease(v19);
  if (v28)
  {
    v33 = v25;
    *v28 = v25;
  }

  v23 = v24;

LABEL_37:
  v34 = *MEMORY[0x277D85DE8];

  return v23;
}

id dd_dueDateAndTimezoneOfEventResults(void *a1, void *a2, _BYTE *a3, void *a4)
{
  v17 = 0;
  v5 = beginDateAndTimezoneOfEventResultsRespectingSpecificEndDates(a1, 0, a2, a3, 0, &v17, a4);
  v6 = v17;
  v7 = objc_alloc(MEMORY[0x277CBEA80]);
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v8 calendarIdentifier];
  v10 = [v7 initWithCalendarIdentifier:v9];

  if (a4)
  {
    [v10 setTimeZone:*a4];
  }

  v11 = v6;
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [v12 components:224 fromDate:v11];

  if ([v13 hour] || objc_msgSend(v13, "minute"))
  {

LABEL_7:
    v14 = v5;

    goto LABEL_8;
  }

  v16 = [v13 second];

  v14 = v11;
  if (v16)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v14;
}

id dd_userFriendlyEmailFromMailtoScheme(void *a1)
{
  v1 = dd_emailFromMailtoScheme(a1);
  v2 = dd_EmailCoding(v1, 1);

  return v2;
}

id dd_emailFromMailtoScheme(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 scheme], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "lowercaseString"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"mailto"), v4, v3, v5))
  {
    v6 = [v2 resourceSpecifier];
    v7 = [v6 componentsSeparatedByString:@"?"];
    v8 = [v7 firstObject];
    v9 = [v8 stringByRemovingPercentEncoding];

    [v9 rangeOfString:@"@"];
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id dd_urlUserVisibleString(void *a1)
{
  v1 = a1;
  v2 = [(__CFString *)v1 scheme];
  v3 = [v2 lowercaseString];

  if ([(__CFString *)v1 dd_isMaps:1])
  {
    v4 = DDMapAddressFromURL(v1);
    if (!v4)
    {
      goto LABEL_9;
    }

LABEL_6:
    v6 = v4;
LABEL_14:
    v4 = v6;
    v10 = v6;
    goto LABEL_16;
  }

  if ([v3 isEqualToString:@"mailto"])
  {
    v5 = dd_emailFromMailtoScheme(v1);
    v4 = dd_EmailCoding(v5, 1);

    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (!dd_isAnySimpleTelephonyScheme(v1) || !v1)
  {
    goto LABEL_9;
  }

  v12 = [(NSURL *)v1 dd_phoneNumberFromTelSchemeAndExtractBody:0 serviceID:0 suggestions:?];
  v4 = 0;
  if (([v12 containsString:@"@"] & 1) == 0)
  {
    v4 = v12;
  }

  if (!v4)
  {
LABEL_9:
    v7 = v3;
    if ([v7 isEqualToString:@"http"])
    {
    }

    else
    {
      v8 = [v7 isEqualToString:@"https"];

      if (!v8)
      {
LABEL_15:
        v10 = [(__CFString *)v1 absoluteString];
        v4 = 0;
        goto LABEL_16;
      }
    }

    v9 = [(__CFString *)v1 _lp_userVisibleString];
    if (v9)
    {
      v6 = v9;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([v4 containsString:@"@"])
  {
    goto LABEL_6;
  }

  if (([v4 isEqualToString:@"open"] & 1) == 0)
  {
    v13 = TUFormattedPhoneNumber();

    v4 = v13;
    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_16:

  return v10;
}

uint64_t dd_isAnySimpleTelephonyScheme(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 scheme];
    v4 = [v3 lowercaseString];

    if (v4)
    {
      if ([&unk_282C2BE30 containsObject:v4])
      {
        IsChatBot = 1;
LABEL_9:

        goto LABEL_10;
      }

      if ([v4 isEqualToString:@"sip"])
      {
        v6 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v2 resolvingAgainstBaseURL:0];
        v7 = [v6 path];
        IsChatBot = dd_handleIsChatBot(v7);

        goto LABEL_9;
      }
    }

    IsChatBot = 0;
    goto LABEL_9;
  }

  IsChatBot = 0;
LABEL_10:

  return IsChatBot;
}

__CFString *dd_phoneNumberFromTelScheme(__CFString *a1)
{
  if (a1)
  {
    v3 = [(NSURL *)a1 dd_phoneNumberFromTelSchemeAndExtractBody:0 serviceID:0 suggestions:?];
    v4 = [v3 containsString:@"@"];
    v5 = 0;
    if ((v4 & 1) == 0)
    {
      v5 = v3;
    }

    v6 = v5;

    a1 = v6;
  }

  return a1;
}

uint64_t dd_schemeIsHttp(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"http"])
  {

    return 1;
  }

  else
  {
    v3 = [v1 isEqualToString:@"https"];

    return v3;
  }
}

uint64_t dd_urlLooksSuspicious(void *a1)
{
  v1 = a1;
  v2 = [v1 scheme];
  v3 = [v2 lowercaseString];

  v4 = v3;
  if ([v4 isEqualToString:@"http"])
  {
  }

  else
  {
    v5 = [v4 isEqualToString:@"https"];

    if (!v5)
    {
      v6 = [v4 isEqualToString:@"javascript"];
      goto LABEL_6;
    }
  }

  v6 = [v1 _lp_userVisibleStringUsesEncodedHost];
LABEL_6:
  v7 = v6;

  return v7;
}

id actionSheetTitleForResult(uint64_t a1)
{
  if (a1)
  {
    v1 = DDResultGetMatchedString();
    Range = DDResultGetRange();
    v4 = v3;
    RangeForURLification = DDResultGetRangeForURLification();
    v7 = v6;
    v8 = RangeForURLification - Range;
    if (v8 || v6 != v4)
    {
      v39.length = [v1 length];
      v38.location = v8;
      v38.length = v7;
      v39.location = 0;
      v9 = NSIntersectionRange(v38, v39);
      if (v8 == v9.location && v7 == v9.length)
      {
        v10 = [v1 substringWithRange:{v8, v7}];

        v1 = v10;
      }
    }

    Category = DDResultGetCategory();
    if (Category > 3)
    {
      if (Category == 4)
      {
        v17 = _DDSentenceCasedString(v1);
        v36 = 0;
        v21 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\(|\\)|\\[|\\]" options:1 error:&v36];
        v22 = v36;
        v35 = v22;
        v23 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"  +" options:1 error:&v35];
        v24 = v35;

        if (v24)
        {
          actionSheetTitleForResult_cold_1(v24);
        }

        v25 = [v21 stringByReplacingMatchesInString:v17 options:0 range:0 withTemplate:{objc_msgSend(v17, "length"), @" "}];
        v26 = [v23 stringByReplacingMatchesInString:v25 options:0 range:0 withTemplate:{objc_msgSend(v25, "length"), @" "}];

        goto LABEL_32;
      }

      if (Category != 5)
      {
        goto LABEL_25;
      }

      Type = DDResultGetType();
      if (CFStringCompare(Type, *MEMORY[0x277D040D0], 0) == kCFCompareEqualTo)
      {
        v27 = *MEMORY[0x277D04040];
        DDResultGetSubresultWithType();
        v28 = *MEMORY[0x277D040D8];
        DDResultGetSubresultWithType();
        v17 = DDResultGetValue();
        v19 = DDResultGetMatchedString();
        v29 = [v17 lowercaseString];
        v30 = [v19 lowercaseString];
        v31 = [v29 isEqualToString:v30];

        if (v31)
        {
          v32 = [v17 uppercaseString];
          v26 = [v32 stringByAppendingString:DDResultGetValue()];

LABEL_31:
LABEL_32:

          goto LABEL_33;
        }

        v20 = _DDSentenceCasedString(v1);
LABEL_30:
        v26 = v20;
        goto LABEL_31;
      }

      v14 = *MEMORY[0x277D04158];
      if (DDResultHasType() && DDScannerShouldKeepParsecScoresBelowThreshold())
      {
        ParsecDomain = DDResultGetParsecDomain();
        if (ParsecDomain > 9)
        {
          v16 = @"interesting to look up";
        }

        else
        {
          v16 = off_278291250[ParsecDomain];
        }

        if (DDShouldUseDebugHighlightForResult())
        {
          v34 = @"Internal: red link? Lookup thinks this hint may be %@, is it?";
        }

        else
        {
          v34 = @"Internal: Lookup thinks this hint is %@, is it?";
        }

        v12 = [MEMORY[0x277CCACA8] stringWithFormat:v34, v16];
        goto LABEL_26;
      }
    }

    else if (Category != 1)
    {
      if (Category == 3)
      {
        v12 = _DDSentenceCasedString(v1);
LABEL_26:
        v26 = v12;
LABEL_33:

        goto LABEL_34;
      }

LABEL_25:
      v12 = v1;
      goto LABEL_26;
    }

    v17 = DDResultCopyExtractedURL();
    if (!v17 || ([MEMORY[0x277CBEBC0] URLWithString:v17], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
    {

      goto LABEL_25;
    }

    v19 = v18;
    v20 = dd_urlUserVisibleString(v18);
    goto LABEL_30;
  }

  actionSheetTitleForResult_cold_2();
  v26 = 0;
LABEL_34:

  return v26;
}

id _DDSentenceCasedString(void *a1)
{
  v1 = a1;
  if ([v1 length] > 1)
  {
    v3 = [v1 substringToIndex:1];
    v4 = [v3 localizedCapitalizedString];
    v5 = [v1 substringFromIndex:1];
    v2 = [v4 stringByAppendingString:v5];
  }

  else
  {
    v2 = [v1 localizedUppercaseString];
  }

  return v2;
}

id actionSheetTitleForURL(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    actionSheetTitleForURL_cold_1();
  }

  v2 = dd_urlUserVisibleString(v1);

  return v2;
}

id findNearbyResultsInArray(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v25 = a5;
  v10 = a2 - 1;
  v11 = a2 + 1;
  v12 = [v9 count];
  v13 = a2 + 1 < v12;
  v14 = [v9 objectAtIndex:a2];
  Range = DDResultGetRange();
  v16 = [[DDResultTracker alloc] initWithReferenceResult:v14];
  [(DDResultTracker *)v16 setMaximumDistanceForEmails:a3];
  [(DDResultTracker *)v16 setMaximumDistance:a4];
  if ((v10 & 0x8000000000000000) == 0 || v11 < v12)
  {
    v17 = v10 >= 0;
    do
    {
      if (v17)
      {
        v18 = [v9 objectAtIndex:v10];
        v19 = DDResultGetRange();
        v21 = Range - (v20 + v19);
        if ((v13 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v18 = 0;
        v21 = -1;
        if ((v13 & 1) == 0)
        {
LABEL_6:
          if ((v17 & 1) == 0)
          {
            v13 = 0;
            goto LABEL_12;
          }

LABEL_10:
          v17 = [(DDResultTracker *)v16 addResultIfAppropriate:v18 referenceDate:v25 referenceTimeZone:0];
          --v10;
          goto LABEL_12;
        }
      }

      v22 = [v9 objectAtIndex:v11];
      if ((v17 & (v21 < DDResultGetRange() - Range)) != 0)
      {
        goto LABEL_10;
      }

      v13 = [(DDResultTracker *)v16 addResultIfAppropriate:v22 referenceDate:v25 referenceTimeZone:0];
      ++v11;
LABEL_12:
      v17 &= v10 >= 0;
      v13 &= v11 < [v9 count];
    }

    while ((v17 & 1) != 0 || (v13 & 1) != 0);
  }

  v23 = [(DDResultTracker *)v16 results];

  return v23;
}

id findNearbyResultsInTextStorage(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v11 = a1;
  v12 = a6;
  v13 = *MEMORY[0x277D041D8];
  v14 = [v11 attribute:*MEMORY[0x277D041D8] atIndex:a2 effectiveRange:0];
  v15 = [v14 coreResult];

  if (v15)
  {
    v16 = [[DDResultTracker alloc] initWithReferenceResult:v15];
    [(DDResultTracker *)v16 setMaximumDistanceForEmails:a4];
    [(DDResultTracker *)v16 setMaximumDistance:a5];
    if (a2 >= a5)
    {
      v17 = a2 - a5;
    }

    else
    {
      v17 = 0;
    }

    v18 = [MEMORY[0x277CBEB18] array];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __findNearbyResultsInTextStorage_block_invoke;
    v39[3] = &unk_278291230;
    v19 = v18;
    v40 = v19;
    [v11 enumerateAttribute:v13 inRange:v17 options:a2 - v17 usingBlock:{2, v39}];
    v20 = a2 + a3;
    if ([v11 length] - (a2 + a3) < a5)
    {
      a5 = [v11 length] - v20;
    }

    v21 = [MEMORY[0x277CBEB18] array];
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __findNearbyResultsInTextStorage_block_invoke_2;
    v37 = &unk_278291230;
    v22 = v21;
    v38 = v22;
    [v11 enumerateAttribute:v13 inRange:v20 options:a5 usingBlock:{0, &v34}];
    while (1)
    {
      if (![v19 count] && !objc_msgSend(v22, "count"))
      {
        v32 = [(DDResultTracker *)v16 results];

        goto LABEL_22;
      }

      if ([v19 count])
      {
        v23 = [v19 objectAtIndex:0];
        v24 = a2 - [v23 range];

        if ([v22 count])
        {
          goto LABEL_13;
        }

LABEL_17:
        if (v24 == -1)
        {
          goto LABEL_18;
        }

LABEL_14:
        v27 = [v19 objectAtIndex:0];
        v28 = -[DDResultTracker addResultIfAppropriate:referenceDate:referenceTimeZone:](v16, "addResultIfAppropriate:referenceDate:referenceTimeZone:", [v27 coreResult], v12, 0);

        v29 = v19;
        if (!v28)
        {
          goto LABEL_15;
        }

LABEL_8:
        [v29 removeObjectAtIndex:0];
      }

      else
      {
        v24 = -1;
        if (![v22 count])
        {
          goto LABEL_17;
        }

LABEL_13:
        v25 = [v22 objectAtIndex:0];
        v26 = [v25 range] - a2;

        if (v24 < v26)
        {
          goto LABEL_14;
        }

LABEL_18:
        v30 = [v22 objectAtIndex:0];
        v31 = -[DDResultTracker addResultIfAppropriate:referenceDate:referenceTimeZone:](v16, "addResultIfAppropriate:referenceDate:referenceTimeZone:", [v30 coreResult], v12, 0);

        v29 = v22;
        if (v31)
        {
          goto LABEL_8;
        }

LABEL_15:
        [v29 removeAllObjects];
      }
    }
  }

  v32 = [MEMORY[0x277CBEA60] array];
LABEL_22:

  return v32;
}

uint64_t __findNearbyResultsInTextStorage_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

uint64_t __findNearbyResultsInTextStorage_block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

uint64_t dd_hostApplicationCanListCallProviders()
{
  if (qword_280B12260 != -1)
  {
    dd_hostApplicationCanListCallProviders_cold_1();
  }

  return _MergedGlobals_3;
}

void __dd_hostApplicationCanListCallProviders_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v0)
  {
    v1 = v0;
    cf = SecTaskCopyValueForEntitlement(v0, @"com.apple.telephonyutilities.callservicesd", 0);
    CFRelease(v1);
    v0 = cf;
    if (cf)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(cf))
      {
        v0 = cf;
      }

      else
      {
        CFRelease(cf);
        v0 = 0;
      }
    }
  }

  cfa = v0;
  _MergedGlobals_3 = [(__SecTask *)v0 containsObject:@"access-call-providers"];
}

uint64_t dd_callsRequireExternalPrompt()
{
  if (qword_280B12268 != -1)
  {
    dd_callsRequireExternalPrompt_cold_1();
  }

  return byte_280B12251;
}

void __dd_callsRequireExternalPrompt_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.springboard.allowallcallurls", 0);
    CFRelease(v1);
    if (v2)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(v2) && CFEqual(v2, *MEMORY[0x277CBED28]))
      {
        byte_280B12255 = 1;
      }

      CFRelease(v2);
    }
  }

  byte_280B12251 = (byte_280B12255 & 1) == 0;
}

uint64_t dd_isLSTrusted()
{
  if (qword_280B12270 != -1)
  {
    dd_isLSTrusted_cold_1();
  }

  return byte_280B12252;
}

void __dd_isLSTrusted_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CC1EE8] hasDatabaseAccess])
  {
    byte_280B12252 = 1;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v0 = [MEMORY[0x277CCA8D8] mainBundle];
    v1 = [v0 bundleIdentifier];
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Host process %@ can't map the LS db. This will be logged once", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

id dd_applicationNameWithBundleIdentifier(void *a1)
{
  v1 = a1;
  if (qword_280B12270 != -1)
  {
    dd_isLSTrusted_cold_1();
    if (byte_280B12252 == 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (byte_280B12252 != 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v7 = 0;
  v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v1 allowPlaceholder:0 error:&v7];
  v3 = v7;
  if (!v2)
  {
    v6 = 0;
    v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifierOfSystemPlaceholder:v1 error:&v6];
  }

  v4 = [v2 localizedName];

LABEL_8:

  return v4;
}

uint64_t applicationWithBundleIdentifierIsRestricted(void *a1)
{
  v1 = a1;
  if (qword_280B12270 == -1)
  {
    if (byte_280B12252 == 1)
    {
      goto LABEL_3;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  dd_isLSTrusted_cold_1();
  if (byte_280B12252 != 1)
  {
    goto LABEL_12;
  }

LABEL_3:
  v9 = 0;
  v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v1 allowPlaceholder:0 error:&v9];
  v3 = v9;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v8 = 0;
    v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifierOfSystemPlaceholder:v1 error:&v8];
    v4 = v8;
    if (!v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        applicationWithBundleIdentifierIsRestricted_cold_2(v1, v3, v4);
      }

      v6 = 1;
      goto LABEL_7;
    }
  }

  v5 = [v2 applicationState];
  v6 = [v5 isRestricted];

LABEL_7:
LABEL_13:

  return v6;
}

uint64_t DDTrackEventCreationInHostApplication(_DWORD *a1)
{
  if (qword_280B12278 == -1)
  {
    v1 = byte_280B12253;
    if (!a1)
    {
      return v1;
    }
  }

  else
  {
    v3 = a1;
    DDTrackEventCreationInHostApplication_cold_1();
    a1 = v3;
    v1 = byte_280B12253;
    if (!v3)
    {
      return v1;
    }
  }

  if (v1)
  {
    *a1 = dword_280B12258;
  }

  return v1;
}

uint64_t __DDTrackEventCreationInHostApplication_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v0 bundleIdentifier];

  if ([v6 isEqualToString:@"com.apple.MobileSMS"])
  {
    v1 = 1;
    v2 = v6;
  }

  else
  {
    v3 = [v6 isEqualToString:@"com.apple.mobilemail"];
    v2 = v6;
    if (!v3)
    {
      goto LABEL_6;
    }

    v1 = 2;
  }

  dword_280B12258 = v1;
LABEL_6:
  if (v2)
  {
    v4 = [&unk_282C2BE18 containsObject:v6];
  }

  else
  {
    v4 = 0;
  }

  byte_280B12253 = v4;

  return MEMORY[0x2821F96F8]();
}

void DDUILogAssertionFailure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = MEMORY[0x277CCACA8];
  v13 = a5;
  v14 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Data Detectors UI assertion on %s:%d %s failed: %@", a2, a4, a1, v14];
  if (qword_280B12290)
  {
LABEL_2:
    v16 = off_280B12280;
    if (!off_280B12280)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v18 = dlopen([@"/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport" fileSystemRepresentation], 1);
  qword_280B12290 = v18;
  if (v18)
  {
    v16 = dlsym(v18, "SimulateCrash");
    off_280B12280 = v16;
    if (!v16)
    {
      goto LABEL_4;
    }

LABEL_3:
    v17 = getpid();
    (v16)(v17, 3131747805, v15);
    goto LABEL_4;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_2;
  }

  DDUILogAssertionFailure_cold_1();
  v16 = off_280B12280;
  if (off_280B12280)
  {
    goto LABEL_3;
  }

LABEL_4:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    DDUILogAssertionFailure_cold_2(v15);
  }
}

id DDShipmentTrackingUrlForResult()
{
  v0 = DDResultGetShipmentTrackingUrlString();
  if (v0)
  {
    v1 = [MEMORY[0x277CBEBC0] URLWithString:v0];

    v2 = v1;
  }

  else
  {

    v2 = 0;
  }

  return v2;
}

uint64_t dd_handleIsChatBot(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"@"];
  if ([v2 count] == 2)
  {
    v3 = [v2 lastObject];
    v4 = [v3 lowercaseString];

    if ([v4 hasPrefix:@"botplatform."])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 containsString:@".botplatform."];
    }

    v1 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

__CFString *dd_handleFromTelScheme(__CFString *a1, _BYTE *a2)
{
  if (a1)
  {
    a1 = [(NSURL *)a1 dd_phoneNumberFromTelSchemeAndExtractBody:0 serviceID:0 suggestions:?];
    if (a2)
    {
      v5 = a2;
      v6 = a1;
      v7 = v5;
      v8 = [(__CFString *)a1 containsString:@"@"];
      a1 = v6;
      *v7 = v8;
    }
  }

  return a1;
}

uint64_t dd_isDeviceLocked()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 BOOLValue];

    return v2;
  }

  else
  {
    if (dd_isDeviceLocked_onceToken != -1)
    {
      dd_isDeviceLocked_cold_1();
    }

    return 1;
  }
}

void __dd_isDeviceLocked_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v0 = [MEMORY[0x277CCA8D8] mainBundle];
    v1 = [v0 bundleIdentifier];
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Host process %@ can't read device lock status. This will be logged once", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t dd_isInternalInstall()
{
  if (qword_280B12288 != -1)
  {
    dd_isInternalInstall_cold_1();
  }

  return byte_280B12254;
}

void __dd_isInternalInstall_block_invoke()
{
  v1 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = [v1 isEqualToString:@"Internal"];
  }

  else
  {
    v0 = 0;
  }

  byte_280B12254 = v0;
}

uint64_t dd_phoneNumberResultCanBeRdarLink(uint64_t result)
{
  if (result)
  {
    DDResultGetRange();
    if ((v1 & 0xFFFFFFFFFFFFFFFELL) == 8)
    {
      if (qword_280B12288 == -1)
      {
        if (byte_280B12254 == 1)
        {
          goto LABEL_5;
        }
      }

      else
      {
        dd_isInternalInstall_cold_1();
        if (byte_280B12254 == 1)
        {
LABEL_5:
          v2 = DDResultGetMatchedString();
          v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789"];
          v4 = [v3 invertedSet];

          v5 = [v2 rangeOfCharacterFromSet:v4];
          if (v5 == 0x7FFFFFFFFFFFFFFFLL)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void dd_requireDeviceUnlockAndPerformBlock(int a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (!a1)
  {
LABEL_4:
    (*(v3 + 2))(v3, 1);
    v8 = v9;

    goto LABEL_6;
  }

  v4 = MGCopyAnswer();
  if (v4)
  {
    v6 = v4;
    v7 = [v4 BOOLValue];

    v3 = v9;
    if ((v7 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (dd_isDeviceLocked_onceToken != -1)
  {
    dd_isDeviceLocked_cold_1();
  }

  SBSRequestPasscodeUnlockUI_delayInitStub(v5);
  v8 = v9;

LABEL_6:
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return [v29 countByEnumeratingWithState:&a29 objects:v30 - 232 count:16];
}

void sub_21AB93490(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *context, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 buf)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Exception caught in dd_collectDDRangesForQuery: %@", &buf, 0xCu);
    }

    objc_end_catch();
    objc_autoreleasePoolPop(context);
    JUMPOUT(0x21AB93434);
  }

  _Unwind_Resume(a1);
}

void _removeDataDetectorLinkInNode(void *a1)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = [v3 parentElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v3 parentElement];
    }

    else
    {
      v2 = 0;
    }

    DDRecursivelyRemoveResultLinksFromAnchor(v3, v2, 0);
  }
}

id dd_EmailCoding(void *a1, int a2)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v24 = 0;
    goto LABEL_23;
  }

  v5 = [v3 componentsSeparatedByString:@"@"];
  if ([v5 count] == 2)
  {
    v6 = [v5 firstObject];
    v7 = [v5 lastObject];
    if ([v6 length] && objc_msgSend(v7, "length"))
    {
      v8 = [v6 stringByRemovingPercentEncoding];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v6;
      }

      v11 = v10;

      v12 = v11;
      if ((a2 & 1) == 0)
      {
        v6 = [MEMORY[0x277CCA900] URLUserAllowedCharacterSet];
        v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v6];
        v9 = v13;
        if (v13)
        {
          v12 = v13;
        }

        else
        {
          v12 = v11;
        }
      }

      v32[0] = v12;
      v14 = v7;
      if (v14)
      {
        pErrorCode = U_ZERO_ERROR;
        v15 = MEMORY[0x21CEDF5A0](48, &pErrorCode);
        v16 = v14;
        if (pErrorCode <= U_ZERO_ERROR)
        {
          idna = v15;
          v17 = [v14 lengthOfBytesUsingEncoding:4];
          v18 = malloc_type_malloc(v17, 0x147FC4F9uLL);
          v16 = v14;
          if (v18)
          {
            v19 = v18;
            v16 = v14;
            if ([v14 getBytes:v18 maxLength:v17 usedLength:0 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v14, "length"), 0}])
            {
              v28 = 4 * v17;
              v20 = malloc_type_malloc(4 * v17, 0x2A63EA05uLL);
              v16 = v14;
              if (v20)
              {
                pInfo = xmmword_21ABCD8D0;
                v21 = v17;
                v22 = v20;
                if (a2)
                {
                  v23 = uidna_nameToUnicodeUTF8(idna, v19, v21, v20, v28, &pInfo, &pErrorCode);
                }

                else
                {
                  v23 = uidna_nameToASCII_UTF8(idna, v19, v21, v20, v28, &pInfo, &pErrorCode);
                }

                v16 = v14;
                if (pErrorCode <= U_ZERO_ERROR)
                {
                  v16 = v14;
                  if (!pInfo.errors)
                  {
                    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v22 length:v23 encoding:4];
                  }
                }

                free(v22);
              }
            }

            free(v19);
          }

          uidna_close(idna);
        }
      }

      else
      {
        v16 = 0;
      }

      v32[1] = v16;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
      v24 = [v27 componentsJoinedByString:@"@"];

      if ((a2 & 1) == 0)
      {
      }

      goto LABEL_22;
    }
  }

  v24 = v4;
LABEL_22:

LABEL_23:
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

id DDMakeContactStore()
{
  v0 = objc_alloc_init(MEMORY[0x277CBDAC0]);
  [v0 setIncludeAcceptedIntroductions:1];
  v1 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v0];

  return v1;
}

void DDUpdateContactWithContactResult(void *a1, void *a2)
{
  v39[5] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 givenName];
  v6 = [v3 familyName];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = 0;
  if (![v5 length] && !objc_msgSend(v6, "length"))
  {
    v12 = [v4 valueForKey:*MEMORY[0x277D04080]];
    v13 = v12 == 0;

    if (!v13)
    {
      if (![MEMORY[0x277CBEBF8] count])
      {
        v14 = *MEMORY[0x277CBD068];
        v15 = *MEMORY[0x277D04060];
        v38[0] = *MEMORY[0x277D04090];
        v38[1] = v15;
        v16 = *MEMORY[0x277CBD000];
        v39[0] = v14;
        v39[1] = v16;
        v17 = *MEMORY[0x277CBD058];
        v18 = *MEMORY[0x277D04070];
        v38[2] = *MEMORY[0x277D04078];
        v38[3] = v18;
        v19 = *MEMORY[0x277CBCFF8];
        v39[2] = v17;
        v39[3] = v19;
        v38[4] = *MEMORY[0x277D04088];
        v39[4] = *MEMORY[0x277CBD070];
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:5];
        v25 = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = __DDUpdateContactWithContactResult_block_invoke;
        v28 = &unk_2782913B0;
        v31 = &v32;
        v29 = v4;
        v30 = v3;
        [v20 enumerateKeysAndObjectsUsingBlock:&v25];
      }

      v21 = [v4 valueForKey:{*MEMORY[0x277D04118], v25, v26, v27, v28}];
      v22 = v33[5];
      v33[5] = v21;

      v23 = v33[5];
      if (v23)
      {
        v24 = [v23 matchedString];
        [v3 setJobTitle:v24];
      }

      else
      {
        [v3 setJobTitle:&stru_282C1E0A8];
      }
    }
  }

  v7 = [v4 valueForKey:*MEMORY[0x277D04058]];
  v8 = v33[5];
  v33[5] = v7;

  v9 = [v3 organizationName];
  if ([v9 length])
  {
    goto LABEL_6;
  }

  v10 = v33[5] == 0;

  if (!v10)
  {
    v9 = [v33[5] matchedString];
    [v3 setOrganizationName:v9];
LABEL_6:
  }

  _Block_object_dispose(&v32, 8);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_21AB94788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB947A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB947B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __DDUpdateContactWithContactResult_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", *MEMORY[0x277D04080], a2];
  v7 = [v5 valueForKeyPath:v6];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(a1 + 40);
  v11 = *(*(*(a1 + 48) + 8) + 40);
  if (v11)
  {
    v12 = [v11 matchedString];
    [v10 setValue:v12 forKey:v13];
  }

  else
  {
    [*(a1 + 40) setValue:&stru_282C1E0A8 forKey:v13];
  }
}

id DDPhoneLabeledValue(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v4];
    if (v5)
    {
      v6 = v5;
      v7 = [MEMORY[0x277CBDB20] labeledValueWithLabel:v3 value:v5];

      goto LABEL_9;
    }

    v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v16)
    {
      DDPhoneLabeledValue_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      DDPhoneLabeledValue_cold_2(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

void *DDHarvestDataFromResults(void *a1, void *a2)
{
  v207[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBDB38]);
  v102 = v3;
  v131 = [v3 range];
  v7 = v6;
  v157 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = objc_alloc_init(MEMORY[0x277CBDAC0]);
  [v8 setIncludeAcceptedIntroductions:1];
  v9 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v8];

  v10 = *MEMORY[0x277CBD038];
  v207[0] = *MEMORY[0x277CBCFC0];
  v207[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v207 count:2];
  v12 = [v9 _ios_meContactWithKeysToFetch:v11 error:0];

  v130 = v5;
  if (v12)
  {
    v201 = 0u;
    v200 = 0u;
    v199 = 0u;
    v198 = 0u;
    v13 = [v12 emailAddresses];
    v14 = [v13 countByEnumeratingWithState:&v198 objects:v206 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v199;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v199 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v198 + 1) + 8 * i) value];
          [v157 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v198 objects:v206 count:16];
      }

      while (v15);
    }

    v197 = 0u;
    v195 = 0u;
    v196 = 0u;
    v194 = 0u;
    v19 = [v12 instantMessageAddresses];
    v20 = [v19 countByEnumeratingWithState:&v194 objects:v205 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v195;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v195 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v194 + 1) + 8 * j) value];
          v25 = [v24 username];
          [v157 addObject:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v194 objects:v205 count:16];
      }

      while (v21);
    }
  }

  v26 = [v102 type];
  v140 = *MEMORY[0x277D04170];
  v132 = [v26 isEqualToString:?];

  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  obj = v4;
  v141 = [obj countByEnumeratingWithState:&v190 objects:v204 count:16];
  if (v141)
  {
    v125 = 0;
    v128 = 0;
    v171 = 0;
    v27 = 0;
    v173 = 0;
    v136 = 0;
    v139 = *v191;
    v28 = *MEMORY[0x277D040F0];
    v29 = v131;
    v30 = v131 + v7;
    v166 = *MEMORY[0x277D040C8];
    v164 = *MEMORY[0x277D04110];
    v143 = *MEMORY[0x277D04038];
    v135 = *MEMORY[0x277D04068];
    v129 = *MEMORY[0x277D040E0];
    v127 = *MEMORY[0x277D04100];
    v124 = *MEMORY[0x277D040F8];
    v104 = *MEMORY[0x277D041C8];
    v103 = *MEMORY[0x277CBD938];
    v138 = *MEMORY[0x277CBD1F8];
    v123 = *MEMORY[0x277D04240];
    v137 = *MEMORY[0x277CBD220];
    v121 = *MEMORY[0x277CBD228];
    v122 = *MEMORY[0x277D04268];
    v119 = *MEMORY[0x277CBD218];
    v120 = *MEMORY[0x277D04270];
    v117 = *MEMORY[0x277CBD240];
    v118 = *MEMORY[0x277D04260];
    v115 = *MEMORY[0x277CBD238];
    v116 = *MEMORY[0x277D04288];
    v113 = *MEMORY[0x277CBD200];
    v114 = *MEMORY[0x277D04280];
    v111 = *MEMORY[0x277CBD210];
    v112 = *MEMORY[0x277D04248];
    v109 = *MEMORY[0x277CBD230];
    v110 = *MEMORY[0x277D04258];
    v107 = *MEMORY[0x277CBD208];
    v108 = *MEMORY[0x277D04278];
    v106 = *MEMORY[0x277D04250];
    v167 = *MEMORY[0x277CBD8E0];
    v126 = *MEMORY[0x277D04118];
    v105 = *MEMORY[0x277D04058];
    v161 = *MEMORY[0x277CBD940];
    v160 = *MEMORY[0x277D042B8];
    v159 = *MEMORY[0x277D04238];
    v134 = *MEMORY[0x277CBD8E8];
    v158 = *MEMORY[0x277D042A0];
    v170 = *MEMORY[0x277CBD908];
    v156 = *MEMORY[0x277CBD928];
    v155 = *MEMORY[0x277D042C0];
    v154 = *MEMORY[0x277D04298];
    v153 = *MEMORY[0x277CBD900];
    v152 = *MEMORY[0x277D04290];
    v151 = *MEMORY[0x277CBD8F8];
    v150 = *MEMORY[0x277D04230];
    v149 = *MEMORY[0x277CBD920];
    v148 = *MEMORY[0x277D042B0];
    v147 = *MEMORY[0x277CBD918];
    v146 = *MEMORY[0x277D042A8];
    v144 = *MEMORY[0x277D040F0];
    v168 = v131 + v7;
    while (1)
    {
      v31 = 0;
      do
      {
        if (*v191 != v139)
        {
          v32 = v31;
          objc_enumerationMutation(obj);
          v31 = v32;
        }

        v145 = v31;
        v33 = *(*(&v190 + 1) + 8 * v31);
        v34 = [v33 type];
        v35 = [v34 isEqualToString:v140];

        v36 = MEMORY[0x277CBEA60];
        if (v35)
        {
          v37 = [v33 subResults];
          v38 = [v36 arrayWithArray:v37];

          v39 = 1;
        }

        else
        {
          v38 = [MEMORY[0x277CBEA60] arrayWithObject:v33];
          v39 = v132;
        }

        v163 = v39;
        v188 = 0u;
        v189 = 0u;
        v186 = 0u;
        v187 = 0u;
        v172 = v38;
        v175 = [v172 countByEnumeratingWithState:&v186 objects:v203 count:16];
        if (v175)
        {
          v174 = *v187;
LABEL_29:
          v40 = 0;
          while (1)
          {
            if (*v187 != v174)
            {
              objc_enumerationMutation(v172);
            }

            v41 = *(*(&v186 + 1) + 8 * v40);
            v42 = [v41 range];
            v44 = v42 - v30;
            if (v42 <= v29)
            {
              v44 = v29 - (v43 + v42);
            }

            if (v44 > 500)
            {
              goto LABEL_21;
            }

            v45 = [v41 type];
            if ([v41 category] == 2)
            {
              break;
            }

            if ([v45 isEqualToString:v28])
            {
              v54 = [v41 matchedString];
              v48 = [v54 lowercaseString];

              v55 = [v48 hasPrefix:@"mailto:"];
              v56 = [MEMORY[0x277CBEBC0] URLWithString:v48];
              v49 = v56;
              if (v55)
              {
                v57 = dd_userFriendlyEmailFromMailtoScheme(v56);

                if (!v57)
                {
                  v49 = 0;
                  goto LABEL_129;
                }

                v58 = [MEMORY[0x277CBDB20] labeledValueWithLabel:0 value:v57];
                if (v58)
                {
                  [v27 addObject:v58];
                }
              }

              else
              {
                if (![v56 dd_isAnySimpleTelephonyScheme])
                {
                  goto LABEL_129;
                }

                v62 = [MEMORY[0x277CBEBC0] URLWithString:v48];
                v63 = dd_phoneNumberFromTelScheme(v62);
                v58 = DDPhoneLabeledValue(0, v63);

                if (v58 && ([v173 containsObject:v58] & 1) == 0)
                {
                  [v173 addObject:v58];
                }

                v57 = v49;
                v30 = v168;
              }

              v49 = v57;
              goto LABEL_129;
            }

            if (([v45 isEqualToString:v166] & 1) != 0 || (objc_msgSend(v45, "isEqualToString:", v164) & 1) != 0 || objc_msgSend(v45, "isEqualToString:", v143))
            {
              v169 = v45;
              v59 = v167;
              v183 = 0;
              v182 = 0;
              v60 = [v41 getMailValue:&v183 label:&v182];
              v61 = v183;
              v49 = v182;
              if (v60)
              {
                v165 = v59;
                v48 = dd_userFriendlyEmail(v61);

                if ((v163 & 1) != 0 || ([v157 containsObject:v48] & 1) == 0)
                {
                  if (v27)
                  {
                    if ([v27 count])
                    {
                      goto LABEL_58;
                    }
                  }

                  else
                  {
                    v27 = [MEMORY[0x277CBEB18] array];
                  }

                  if (v49)
                  {
                    v70 = v27;
                    v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v161, v160, v59, v159, v134, v158, 0}];
                    v72 = [v71 objectForKey:v49];
                    v73 = v72;
                    v162 = v59;
                    if (v72)
                    {
                      v162 = v72;
                    }

                    v27 = v70;
                    v45 = v169;
LABEL_88:
                  }

                  else
                  {
                    v162 = v59;
                    v45 = v169;
                    if (v136)
                    {
                      v162 = v161;
                      v71 = v165;
                      goto LABEL_88;
                    }
                  }

                  if (v48)
                  {
                    v74 = [MEMORY[0x277CBDB20] labeledValueWithLabel:v162 value:v48];
                    if (v74 && ([v27 containsObject:v74] & 1) == 0)
                    {
                      [v27 addObject:v74];
                    }
                  }

                  if (([v45 isEqualToString:v164] & 1) != 0 || objc_msgSend(v45, "isEqualToString:", v143))
                  {
                    v142 = v27;
                    v75 = [v45 isEqualToString:v164];
                    v76 = v138;
                    if (v75)
                    {
                      v76 = v137;
                    }

                    v77 = v76;
                    v78 = v171;
                    if (!v171)
                    {
                      v78 = [MEMORY[0x277CBEB18] array];
                    }

                    v180 = 0u;
                    v181 = 0u;
                    v178 = 0u;
                    v179 = 0u;
                    v171 = v78;
                    v79 = [v171 countByEnumeratingWithState:&v178 objects:v202 count:16];
                    if (v79)
                    {
                      v80 = v79;
                      v81 = *v179;
                      while (2)
                      {
                        for (k = 0; k != v80; ++k)
                        {
                          if (*v179 != v81)
                          {
                            objc_enumerationMutation(v171);
                          }

                          v83 = [*(*(&v178 + 1) + 8 * k) value];
                          v84 = [v83 service];
                          v85 = [v84 isEqualToString:v77];

                          if (v85)
                          {
                            v86 = 1;
                            goto LABEL_110;
                          }
                        }

                        v80 = [v171 countByEnumeratingWithState:&v178 objects:v202 count:16];
                        if (v80)
                        {
                          continue;
                        }

                        break;
                      }

                      v86 = 0;
LABEL_110:
                      v29 = v131;
                      v28 = v144;
                      v30 = v168;

                      if (!v48)
                      {
LABEL_127:

                        v27 = v142;
                        v45 = v169;
                        goto LABEL_128;
                      }
                    }

                    else
                    {
                      v86 = 0;

                      if (!v48)
                      {
                        goto LABEL_127;
                      }
                    }

                    v87 = [objc_alloc(MEMORY[0x277CBDB18]) initWithUsername:v48 service:v77];
                    if (v87)
                    {
                      v88 = v86;
                    }

                    else
                    {
                      v88 = 1;
                    }

                    if ((v88 & 1) == 0)
                    {
                      v89 = [MEMORY[0x277CBDB20] labeledValueWithLabel:v165 value:v87];
                      if (v89 && ([v171 containsObject:v89] & 1) == 0)
                      {
                        [v171 addObject:v89];
                      }

                      v30 = v168;
                    }

                    goto LABEL_127;
                  }

LABEL_128:

LABEL_129:
LABEL_130:

                  goto LABEL_131;
                }

LABEL_58:
                v61 = v48;
              }

              v48 = v61;
              v45 = v169;
              goto LABEL_129;
            }

            if ([v45 isEqualToString:v135])
            {
              DDUpdateContactWithContactResult(v130, v41);
              if (v163)
              {
                if (!v136)
                {
                  v48 = [v41 valueForKey:v126];
                  if (!v48)
                  {
                    v49 = [v41 valueForKey:v105];
                    v136 = v49 != 0;
                    goto LABEL_129;
                  }

                  v136 = 1;
                  goto LABEL_130;
                }

                v136 = 1;
              }
            }

            else
            {
              if (![v45 isEqualToString:v129])
              {
                if (![v45 isEqualToString:v127])
                {
                  if (!v163 || ([v45 isEqualToString:v124] & 1) == 0 && !objc_msgSend(v45, "isEqualToString:", v104) || v125)
                  {
                    goto LABEL_131;
                  }

                  v95 = MEMORY[0x277CBDB20];
                  v96 = [v41 matchedString];
                  v48 = [v95 labeledValueWithLabel:v103 value:v96];

                  if (v48)
                  {
                    [MEMORY[0x277CBEB18] arrayWithObject:v48];
                    v125 = v49 = 0;
                    goto LABEL_129;
                  }

                  v125 = 0;
                  goto LABEL_130;
                }

                v177 = 0;
                v176 = 0;
                v90 = [v41 getIMScreenNameValue:&v177 type:&v176];
                v48 = v177;
                v49 = v176;
                if (!v90)
                {
                  goto LABEL_129;
                }

                v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v138, v123, v137, v122, v121, v120, v119, v118, v117, v116, v115, v114, v113, v112, v111, v110, v109, v108, v107, v106, 0}];
                v92 = [v91 objectForKey:v49];
                if (v92)
                {
                  v93 = v27;
                  v94 = [objc_alloc(MEMORY[0x277CBDB18]) initWithUsername:v48 service:v92];
                  if (v171)
                  {
                    if (!v94)
                    {
                      goto LABEL_155;
                    }
                  }

                  else
                  {
                    v171 = [MEMORY[0x277CBEB18] array];
                    if (!v94)
                    {
                      goto LABEL_155;
                    }
                  }

                  v97 = [MEMORY[0x277CBDB20] labeledValueWithLabel:v167 value:v94];
                  if (v97 && ([v171 containsObject:v97] & 1) == 0)
                  {
                    [v171 addObject:v97];
                  }

LABEL_155:
                  v27 = v93;
                  v28 = v144;
                }

                v30 = v168;
                goto LABEL_129;
              }

              if (!v128)
              {
                v48 = DDMapsGetBestAddressForResults(v172, 0);
                if (v48)
                {
                  v49 = [MEMORY[0x277CBDB20] labeledValueWithLabel:v167 value:v48];
                  if (v49)
                  {
                    v128 = [MEMORY[0x277CBEB18] arrayWithObject:v49];
                  }

                  else
                  {
                    v128 = 0;
                  }

                  goto LABEL_129;
                }

                v128 = 0;
                goto LABEL_130;
              }
            }

LABEL_131:

            if (++v40 == v175)
            {
              v98 = [v172 countByEnumeratingWithState:&v186 objects:v203 count:16];
              v175 = v98;
              if (v98)
              {
                goto LABEL_29;
              }

              goto LABEL_21;
            }
          }

          v46 = v170;
          v185 = 0;
          v184 = 0;
          v47 = [v41 getPhoneValue:&v185 label:&v184];
          v48 = v185;
          v49 = v184;
          if (!v47)
          {
LABEL_44:

            goto LABEL_129;
          }

          if (v48)
          {
            v50 = TUFormattedPhoneNumber();
            v51 = v50;
            if (v50)
            {
              v52 = v50;
            }

            else
            {
              v52 = v48;
            }

            v53 = v52;

            v48 = v53;
            v30 = v168;
          }

          if (v173)
          {
            if ([v173 count] > 2)
            {
              goto LABEL_44;
            }

            if (v49)
            {
LABEL_69:
              v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v161, v160, v167, v159, v46, v158, v156, v155, v46, v154, v153, v152, v151, v150, v149, v148, v147, v146, 0}];
              v65 = [v64 objectForKey:v49];
              v66 = v65;
              if (v65)
              {
                v67 = v27;
                v68 = v65;

                v46 = v68;
                v27 = v67;
                v28 = v144;
              }

              v30 = v168;
            }
          }

          else
          {
            v173 = [MEMORY[0x277CBEB18] array];
            if (v49)
            {
              goto LABEL_69;
            }
          }

          v69 = DDPhoneLabeledValue(v46, v48);
          if (v69 && ([v173 containsObject:v69] & 1) == 0)
          {
            [v173 addObject:v69];
          }

          goto LABEL_129;
        }

LABEL_21:

        v31 = v145 + 1;
      }

      while (v145 + 1 != v141);
      v141 = [obj countByEnumeratingWithState:&v190 objects:v204 count:16];
      if (!v141)
      {
        goto LABEL_161;
      }
    }
  }

  v125 = 0;
  v128 = 0;
  v171 = 0;
  v27 = 0;
  v173 = 0;
LABEL_161:

  [v130 setEmailAddresses:v27];
  [v130 setUrlAddresses:v125];
  [v130 setInstantMessageAddresses:v171];
  [v130 setPhoneNumbers:v173];
  [v130 setPostalAddresses:v128];
  v99 = v130;

  v100 = *MEMORY[0x277D85DE8];
  return v130;
}

void DDMergeContactIntoContact(void *a1, void *a2, int a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  v6 = *MEMORY[0x277CBD098];
  v7 = *MEMORY[0x277CBCFC0];
  v65[0] = *MEMORY[0x277CBD098];
  v65[1] = v7;
  v49 = v7;
  v42 = *MEMORY[0x277CBD168];
  v43 = *MEMORY[0x277CBD038];
  v65[2] = *MEMORY[0x277CBD038];
  v65[3] = v42;
  v8 = *MEMORY[0x277CBD040];
  v41 = *MEMORY[0x277CBD0C8];
  v65[4] = *MEMORY[0x277CBD0C8];
  v65[5] = v8;
  v37 = *MEMORY[0x277CBD058];
  v38 = *MEMORY[0x277CBD000];
  v65[6] = *MEMORY[0x277CBD000];
  v65[7] = v37;
  v35 = *MEMORY[0x277CBD070];
  v36 = *MEMORY[0x277CBCFF8];
  v65[8] = *MEMORY[0x277CBCFF8];
  v65[9] = v35;
  v33 = v8;
  v34 = *MEMORY[0x277CBD090];
  v65[10] = *MEMORY[0x277CBD090];
  v65[11] = v8;
  v40 = *MEMORY[0x277CBD068];
  v65[12] = *MEMORY[0x277CBD068];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:13];
  v10 = [v4 organizationName];
  if ([v10 length])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v4 contactType] == 1;
  }

  v51 = v11;

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v55;
    v15 = *MEMORY[0x277CBD8E8];
    v53 = *MEMORY[0x277CBD940];
    v46 = v5;
    v47 = v4;
    v44 = *v55;
    v45 = v6;
    do
    {
      v16 = 0;
      v48 = v13;
      do
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v52 = v16;
        v17 = *(*(&v54 + 1) + 8 * v16);
        v18 = [v4 valueForKey:v17];
        if (([v17 isEqualToString:v6] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v49) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v43) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v42) & 1) != 0 || objc_msgSend(v17, "isEqualToString:", v41))
        {
          if ([v18 count])
          {
            if (v51)
            {
              v19 = v18;
              v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v20 = v19;
              v21 = [v20 countByEnumeratingWithState:&v58 objects:v66 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v59;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    while (1)
                    {
                      if (*v59 != v23)
                      {
                        objc_enumerationMutation(v20);
                      }

                      v25 = *(*(&v58 + 1) + 8 * i);
                      v26 = [v25 label];
                      v27 = [v26 isEqualToString:v15];

                      if (v27)
                      {
                        break;
                      }

                      [v18 addObject:v25];
                      if (v22 == ++i)
                      {
                        goto LABEL_22;
                      }
                    }

                    v28 = MEMORY[0x277CBDB20];
                    v29 = [v25 value];
                    v30 = [v28 labeledValueWithLabel:v53 value:v29];

                    if (v30)
                    {
                      [v18 addObject:v30];
                    }
                  }

LABEL_22:
                  v22 = [v20 countByEnumeratingWithState:&v58 objects:v66 count:16];
                }

                while (v22);
              }

              v5 = v46;
              v4 = v47;
              v14 = v44;
              v6 = v45;
              v13 = v48;
            }

            [v5 setValue:v18 forKey:v17];
          }
        }

        else if (([v17 isEqualToString:v40] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v38) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v37) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v36) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v35) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v34) & 1) != 0 || objc_msgSend(v17, "isEqualToString:", v33))
        {
          if (a3)
          {
            v31 = [v4 valueForKey:v17];
            [v5 setValue:v31 forKey:v17];
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          DDMergeContactIntoContact_cold_1(buf, v17, &v63);
        }

        v16 = v52 + 1;
      }

      while (v52 + 1 != v13);
      v13 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v13);
  }

  v32 = *MEMORY[0x277D85DE8];
}

id DDDefaultAddressForContact(void *a1)
{
  v1 = a1;
  if ([v1 isKeyAvailable:@"postalAddresses"])
  {
    v2 = [v1 postalAddresses];
    v3 = [v2 firstObject];
    v4 = [v3 value];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL DDContactHasNameInfo(void *a1)
{
  v1 = a1;
  if ([v1 isKeyAvailable:@"givenName"])
  {
    v2 = [v1 givenName];
LABEL_7:
    v3 = v2 != 0;

    return v3;
  }

  if ([v1 isKeyAvailable:@"familyName"])
  {
    v2 = [v1 familyName];
    goto LABEL_7;
  }

  if ([v1 isKeyAvailable:@"organizationName"])
  {
    v2 = [v1 organizationName];
    goto LABEL_7;
  }

  return 0;
}

void DDAugmentContactWithResultsFromAction(void *a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 result];
  v6 = [v4 coalescedResult];
  if (v5)
  {
    if (v6)
    {
      v7 = [MEMORY[0x277D04218] resultFromCoreResult:v6];
      v26[0] = v7;
      v8 = MEMORY[0x277CBEA60];
      v9 = v26;
    }

    else
    {
      if ([v4 associatedResults])
      {
        v10 = [MEMORY[0x277D04218] resultsFromCoreResults:?];
        v11 = [MEMORY[0x277D04218] resultFromCoreResult:v5];
        if (!v11)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v7 = [MEMORY[0x277D04218] resultFromCoreResult:v5];
      v25 = v7;
      v8 = MEMORY[0x277CBEA60];
      v9 = &v25;
    }

    v10 = [v8 arrayWithObjects:v9 count:1];

    v11 = [MEMORY[0x277D04218] resultFromCoreResult:v5];
    if (!v11)
    {
LABEL_6:
      v13 = [MEMORY[0x277D04218] resultFromCoreResult:v5];
      v14 = DDHarvestDataFromResults(v13, v10);

      v15 = [v4 associatedVisualResults];
      _DDFillContactWithGroupResult(v14, v15);

      DDMergeContactIntoContact(v14, v3, 1);
      goto LABEL_9;
    }

LABEL_5:
    v12 = [v10 sortedArrayUsingFunction:MEMORY[0x277D04210] context:v11];

    v10 = v12;
    goto LABEL_6;
  }

  v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v16)
  {
    DDAugmentContactWithResultsFromAction_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_9:

  v24 = *MEMORY[0x277D85DE8];
}

void _DDFillContactWithGroupResult(void *a1, void *a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v75 = a1;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v84 objects:v90 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v85;
    v6 = *MEMORY[0x277D04068];
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v85 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v84 + 1) + 8 * v7);
      v9 = [v8 type];
      v10 = [v9 isEqualToString:v6];

      if (v10)
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [obj countByEnumeratingWithState:&v84 objects:v90 count:16];
        if (!v4)
        {
          goto LABEL_65;
        }

        goto LABEL_3;
      }
    }

    v11 = [v75 givenName];
    if ([v11 length])
    {
      v72 = 0;
    }

    else
    {
      v12 = [v75 familyName];
      if ([v12 length])
      {
        v72 = 0;
      }

      else
      {
        v13 = [v75 nickname];
        v72 = [v13 length] == 0;
      }
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v71 = [v8 subResults];
    v14 = [v71 countByEnumeratingWithState:&v80 objects:v89 count:16];
    v15 = v75;
    if (v14)
    {
      v16 = v14;
      v17 = *v81;
      v69 = *MEMORY[0x277D04118];
      v70 = *MEMORY[0x277D04058];
      v18 = *MEMORY[0x277D04080];
      v67 = *MEMORY[0x277D04080];
      v68 = *v81;
      do
      {
        v19 = 0;
        v64 = v16;
        do
        {
          if (*v81 != v17)
          {
            objc_enumerationMutation(v71);
          }

          v22 = *(*(&v80 + 1) + 8 * v19);
          v23 = [v22 type];
          v24 = [v15 organizationName];
          if ([v24 length])
          {
            v25 = v23;
          }

          else
          {
            v25 = v23;
            v26 = [v23 isEqualToString:v70];

            if (v26)
            {
              v20 = [v22 matchedString];
              [v15 setOrganizationName:v20];
LABEL_21:
              v21 = v25;
              goto LABEL_22;
            }
          }

          v27 = [v15 departmentName];
          if ([v27 length])
          {
          }

          else
          {
            v28 = [v25 isEqualToString:@"DepartmentName"];

            if (v28)
            {
              v20 = [v22 matchedString];
              [v15 setDepartmentName:v20];
              goto LABEL_21;
            }
          }

          v29 = [v15 jobTitle];
          if ([v29 length])
          {
          }

          else
          {
            v30 = [v25 isEqualToString:v69];

            if (v30)
            {
              v20 = [v22 matchedString];
              [v15 setJobTitle:v20];
              goto LABEL_21;
            }
          }

          v21 = v25;
          if (v72)
          {
            if ([v25 isEqualToString:@"NLPContactName"])
            {
              v20 = objc_alloc_init(MEMORY[0x277CCAC08]);
              v31 = [v22 matchedString];
              v32 = [v20 personNameComponentsFromString:v31];

              v33 = [v32 givenName];
              [MEMORY[0x277CBEAF8] currentLocale];
              v35 = v34 = v19;
              v36 = [v33 capitalizedStringWithLocale:v35];
              [v75 setGivenName:v36];

              v37 = [v32 middleName];
              [v75 setMiddleName:v37];

              v38 = [v32 familyName];
              v15 = v75;
              v39 = [MEMORY[0x277CBEAF8] currentLocale];
              v40 = [v38 capitalizedStringWithLocale:v39];
              [v75 setFamilyName:v40];

              v17 = v68;
              v19 = v34;

              v41 = [v32 namePrefix];
              [v75 setNamePrefix:v41];

              v42 = [v32 nameSuffix];
              [v75 setNameSuffix:v42];

              goto LABEL_22;
            }

            if ([v25 isEqualToString:v67])
            {
              v66 = v19;
              v78 = 0u;
              v79 = 0u;
              v76 = 0u;
              v77 = 0u;
              v20 = [v22 subResults];
              v43 = [v20 countByEnumeratingWithState:&v76 objects:v88 count:16];
              if (v43)
              {
                v44 = v43;
                v65 = v25;
                v45 = *v77;
                v46 = 0x277CBE000uLL;
                while (1)
                {
                  for (i = 0; i != v44; ++i)
                  {
                    if (*v77 != v45)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v48 = *(*(&v76 + 1) + 8 * i);
                    v49 = [v48 type];
                    v50 = [v48 matchedString];
                    if ([v49 isEqualToString:@"FirstName"])
                    {
                      v51 = [*(v46 + 2808) currentLocale];
                      v52 = [v50 capitalizedStringWithLocale:v51];
                      [v75 setGivenName:v52];
LABEL_51:

                      goto LABEL_46;
                    }

                    if ([v49 isEqualToString:@"MiddleName"])
                    {
                      [v75 setMiddleName:v50];
                      goto LABEL_46;
                    }

                    if ([v49 isEqualToString:@"LastName"])
                    {
                      v51 = [*(v46 + 2808) currentLocale];
                      v52 = [v50 capitalizedStringWithLocale:v51];
                      [v75 setFamilyName:v52];
                      goto LABEL_51;
                    }

                    if ([v49 isEqualToString:@"Title"])
                    {
                      [v75 setNamePrefix:v50];
                    }

                    else if ([v49 isEqualToString:@"NameSuffix"])
                    {
                      [v75 setNameSuffix:v50];
                    }

                    else if (([v49 isEqualToString:@"AddressBookContactName"] & 1) != 0 || objc_msgSend(v49, "isEqualToString:", @"NLPContactName"))
                    {
                      v73 = objc_alloc_init(MEMORY[0x277CCAC08]);
                      v74 = [v73 personNameComponentsFromString:v50];
                      v53 = [v74 givenName];
                      v54 = [MEMORY[0x277CBEAF8] currentLocale];
                      v55 = [v53 capitalizedStringWithLocale:v54];
                      [v75 setGivenName:v55];

                      v56 = [v74 middleName];
                      [v75 setMiddleName:v56];

                      v57 = [v74 familyName];
                      v58 = [MEMORY[0x277CBEAF8] currentLocale];
                      v59 = [v57 capitalizedStringWithLocale:v58];
                      [v75 setFamilyName:v59];

                      v60 = [v74 namePrefix];
                      [v75 setNamePrefix:v60];

                      v61 = [v74 nameSuffix];
                      [v75 setNameSuffix:v61];

                      v46 = 0x277CBE000;
                    }

LABEL_46:
                  }

                  v44 = [v20 countByEnumeratingWithState:&v76 objects:v88 count:16];
                  if (!v44)
                  {
                    v16 = v64;
                    v21 = v65;
                    v17 = v68;
                    v19 = v66;
                    v15 = v75;
                    break;
                  }
                }
              }

LABEL_22:
            }
          }

          ++v19;
        }

        while (v19 != v16);
        v16 = [v71 countByEnumeratingWithState:&v80 objects:v89 count:16];
      }

      while (v16);
    }
  }

LABEL_65:

  v62 = *MEMORY[0x277D85DE8];
}

id DDContactFromResult(uint64_t a1, void *a2, void *a3, BOOL *a4)
{
  v56 = a4;
  v110 = *MEMORY[0x277D85DE8];
  v78 = a2;
  v57 = a3;
  v59 = [MEMORY[0x277CBEB18] array];
  v69 = [MEMORY[0x277CBEB18] array];
  v70 = [MEMORY[0x277CBEB18] array];
  v67 = [MEMORY[0x277CBEB18] array];
  v60 = [MEMORY[0x277CBEB18] array];
  v61 = [MEMORY[0x277CBEB18] array];
  v68 = [MEMORY[0x277CBEB18] array];
  v72 = [MEMORY[0x277CBEB98] setWithArray:&unk_282C2BF08];
  if (a1 | v78)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    if (a1)
    {
      Type = DDResultGetType();
      if (CFStringCompare(Type, *MEMORY[0x277D04170], 0) == kCFCompareEqualTo)
      {
        [v6 addObjectsFromArray:DDResultGetSubResults()];
        if (!v78)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      [v6 addObject:a1];
      if (v57)
      {
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v8 = v57;
        v9 = [v8 countByEnumeratingWithState:&v101 objects:v109 count:16];
        if (v9)
        {
          v10 = *v102;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v102 != v10)
              {
                objc_enumerationMutation(v8);
              }

              [v6 addObject:{objc_msgSend(*(*(&v101 + 1) + 8 * i), "coreResult", v56)}];
            }

            v9 = [v8 countByEnumeratingWithState:&v101 objects:v109 count:16];
          }

          while (v9);
        }
      }
    }

    if (!v78)
    {
LABEL_15:
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      obj = v6;
      v76 = [obj countByEnumeratingWithState:&v97 objects:v108 count:16];
      if (!v76)
      {
        goto LABEL_50;
      }

      v73 = *v98;
      v66 = *MEMORY[0x277D04180];
      v58 = *MEMORY[0x277D04150];
      v64 = *MEMORY[0x277D04178];
      v65 = *MEMORY[0x277D04050];
      v63 = *MEMORY[0x277D041D0];
      v62 = *MEMORY[0x277D04098];
      while (1)
      {
        for (j = 0; j != v76; ++j)
        {
          if (*v98 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v97 + 1) + 8 * j);
          if (v14 == v78)
          {
            v20 = 1;
            goto LABEL_35;
          }

          v15 = *(*(&v97 + 1) + 8 * j);
          Category = DDResultGetCategory();
          if ((Category - 1) < 2)
          {
            if (v14)
            {
              v17 = DDResultCopyExtractedURLWithOptions();
              if (v17)
              {
                v18 = v17;
                v19 = 0;
                v20 = 0;
                v13 = v18;
LABEL_37:
                cf = 0;
                v24 = [MEMORY[0x277CBEBC0] URLWithString:{v13, v56}];
                v25 = [(NSURL *)v24 dd_emailFromValidSchemes:v72];
                v26 = dd_userFriendlyEmail(v25);

                if (v26 && ([v70 containsObject:v26] & 1) == 0)
                {
                  [v70 addObject:v26];
                  if ((v20 & 1) == 0)
                  {
                    DDResultCopyMailValue();
                  }

                  v27 = [objc_alloc(MEMORY[0x277CBDB20]) initWithLabel:cf value:v26];
                  [v61 addObject:v27];
                }

                v28 = [(NSURL *)v24 dd_phoneNumberFromValidSchemes:v72];
                if (v28 && ([v69 containsObject:v28] & 1) == 0)
                {
                  [v69 addObject:v28];
                  v29 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v28];
                  [v59 addObject:v29];
                  if ((v20 & 1) == 0)
                  {
                    DDResultCopyPhoneValue();
                  }

                  v30 = [objc_alloc(MEMORY[0x277CBDB20]) initWithLabel:cf value:v29];
                  [v60 addObject:v30];
                }

                if ((v19 & 1) == 0)
                {
                  CFRelease(v18);
                }

                goto LABEL_19;
              }

              v20 = 0;
            }

            else
            {
              v20 = 1;
            }

LABEL_35:
            v13 = [v78 absoluteString];
            v18 = 0;
            if (v13)
            {
              v19 = 1;
              goto LABEL_37;
            }

            v13 = 0;
LABEL_19:

            continue;
          }

          if (Category == 3)
          {
            v13 = objc_alloc_init(MEMORY[0x277CBDB60]);
            DDResultGetSubresultWithType();
            [v13 setStreet:DDResultGetMatchedString()];
            v21 = [v13 street];
            v22 = v21 == 0;

            if (v22)
            {
              DDResultGetSubresultWithType();
              [v13 setStreet:DDResultGetMatchedString()];
            }

            DDResultGetSubresultWithType();
            [v13 setCity:DDResultGetMatchedString()];
            DDResultGetSubresultWithType();
            [v13 setState:DDResultGetMatchedString()];
            DDResultGetSubresultWithType();
            [v13 setPostalCode:DDResultGetMatchedString()];
            DDResultGetSubresultWithType();
            [v13 setCountry:DDResultGetMatchedString()];
            [v13 setISOCountryCode:DDResultGetCountryCode()];
            [v67 addObject:v13];
            v23 = [objc_alloc(MEMORY[0x277CBDB20]) initWithLabel:0 value:v13];
            [v68 addObject:v23];

            goto LABEL_19;
          }
        }

        v76 = [obj countByEnumeratingWithState:&v97 objects:v108 count:16];
        if (!v76)
        {
LABEL_50:

          goto LABEL_51;
        }
      }
    }

LABEL_14:
    [v6 addObject:{v78, v56}];
    goto LABEL_15;
  }

LABEL_51:
  cf = 0;
  p_cf = &cf;
  v93 = 0x3032000000;
  v94 = __Block_byref_object_copy__2;
  v95 = __Block_byref_object_dispose__2;
  v96 = 0;
  if ((dd_isDeviceLocked() & 1) == 0 && [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] == 3)
  {
    v31 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    [v31 setIncludeAcceptedIntroductions:1];
    v77 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v31];

    v32 = objc_alloc(MEMORY[0x277CBDA70]);
    Helper_x8__OBJC_CLASS___CNContactContentViewController = gotLoadHelper_x8__OBJC_CLASS___CNContactContentViewController(v33);
    v36 = [*(v35 + 3080) descriptorForRequiredKeys];
    v107 = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
    v38 = [v32 initWithKeysToFetch:v37];

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v74 = v59;
    v39 = [v74 countByEnumeratingWithState:&v87 objects:v106 count:16];
    if (v39)
    {
      v40 = *v88;
      v41 = MEMORY[0x277D85DD0];
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v88 != v40)
          {
            objc_enumerationMutation(v74);
          }

          v43 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:{*(*(&v87 + 1) + 8 * k), v56}];
          [v38 setPredicate:v43];

          v85[4] = &cf;
          v86 = 0;
          v85[0] = v41;
          v85[1] = 3221225472;
          v85[2] = __DDContactFromResult_block_invoke;
          v85[3] = &unk_2782913D8;
          [v77 enumerateContactsWithFetchRequest:v38 error:&v86 usingBlock:v85];
        }

        v39 = [v74 countByEnumeratingWithState:&v87 objects:v106 count:16];
      }

      while (v39);
    }

    if (!p_cf[5])
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v75 = v70;
      v44 = [v75 countByEnumeratingWithState:&v81 objects:v105 count:16];
      if (v44)
      {
        v45 = *v82;
        v46 = MEMORY[0x277D85DD0];
        do
        {
          for (m = 0; m != v44; ++m)
          {
            if (*v82 != v45)
            {
              objc_enumerationMutation(v75);
            }

            v48 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:{*(*(&v81 + 1) + 8 * m), v56}];
            [v38 setPredicate:v48];

            v79[4] = &cf;
            v80 = 0;
            v79[0] = v46;
            v79[1] = 3221225472;
            v79[2] = __DDContactFromResult_block_invoke_2;
            v79[3] = &unk_2782913D8;
            [v77 enumerateContactsWithFetchRequest:v38 error:&v80 usingBlock:v79];
          }

          v44 = [v75 countByEnumeratingWithState:&v81 objects:v105 count:16];
        }

        while (v44);
      }
    }
  }

  v49 = p_cf;
  if (v56)
  {
    *v56 = p_cf[5] != 0;
  }

  v50 = v49[5];
  if (!v50)
  {
    v51 = objc_alloc_init(MEMORY[0x277CBDB38]);
    [v51 setPhoneNumbers:v60];
    [v51 setEmailAddresses:v61];
    [v51 setPostalAddresses:v68];
    _DDFillContactWithGroupResult(v51, v57);
    v52 = p_cf[5];
    p_cf[5] = v51;

    v50 = p_cf[5];
  }

  v53 = v50;
  _Block_object_dispose(&cf, 8);

  v54 = *MEMORY[0x277D85DE8];

  return v53;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

CFTypeRef specialCaseResultForResult(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *MEMORY[0x277D04140];
  if (!DDResultHasType())
  {
    return 0;
  }

  if (!DDResultGetSubresultWithType())
  {
    return 0;
  }

  v2 = [DDResultGetMatchedString() lowercaseString];
  v3 = [v2 hasPrefix:@"pounds"];

  if (!v3)
  {
    return 0;
  }

  Copy = DDResultCreateCopy();
  if (!Copy)
  {
    return 0;
  }

  v5 = *MEMORY[0x277D04168];
  v6 = Copy;
  DDResultSetType();
  DDResultGetQueryRange();
  DDResultCreate();
  DDResultSetMatchedString();
  DDResultAddSubresult();

  return CFAutorelease(v6);
}

id DDMapsGetBestAddressForResults(void *a1, int a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v70 = objc_alloc_init(MEMORY[0x277CBDB60]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (!v5)
  {
    v7 = 0;

    v48 = [v70 ISOCountryCode];
    if (!v48)
    {
      goto LABEL_58;
    }

    goto LABEL_63;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v75;
  v9 = *MEMORY[0x277D040E0];
  v67 = *MEMORY[0x277D04050];
  v64 = *MEMORY[0x277D041D0];
  v60 = *MEMORY[0x277D04178];
  v57 = *MEMORY[0x277D04098];
  v66 = *MEMORY[0x277D04180];
  v62 = *MEMORY[0x277D04150];
  v54 = *v75;
  v55 = v4;
  v61 = a2;
  v53 = *MEMORY[0x277D040E0];
  while (2)
  {
    v10 = 0;
    v56 = v6;
    do
    {
      v65 = v7;
      if (*v75 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v63 = v10;
      v11 = *(*(&v74 + 1) + 8 * v10);
      v12 = [v11 type];
      v13 = [v12 isEqualToString:v9];

      if (v13)
      {
        if (v7)
        {
          [v7 coreResult];
          [v11 coreResult];
          CanBeMergedWith = DDAddressResultCanBeMergedWith();
          v15 = v7;
          if (!CanBeMergedWith)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v15 = v11;
        }

        v59 = v15;
        v16 = v11;
        v70 = v70;
        v71 = objc_alloc_init(MEMORY[0x277CBDB60]);
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v58 = v16;
        obj = [v16 subResults];
        v17 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
        if (v17)
        {
          v18 = v17;
          v68 = 0;
          v72 = 0;
          v19 = *v79;
          p_info = &OBJC_METACLASS___DDPreviewAction.info;
          v21 = (&OBJC_METACLASS___DDPreviewAction + 32);
          while (2)
          {
            v22 = 0;
            v69 = v18;
LABEL_20:
            if (*v79 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v78 + 1) + 8 * v22);
            [v23 coreResult];
            if (p_info[91] != -1)
            {
              DDMapsGetBestAddressForResults_cold_1();
            }

            Type = DDResultGetType();
            v25 = [(__objc2_class_ro *)v21[90] objectForKeyedSubscript:Type];
            v26 = v25;
            if (v25)
            {
              if ([v25 length])
              {
                v27 = [v70 valueForKey:v26];
                v28 = [v27 length];

                if (v28)
                {

                  v42 = 0;
                  v43 = v71;
                  goto LABEL_52;
                }

                if (!v72)
                {
                  v72 = [v23 valueForKeyPath:@"Location.value"];
                }

                v29 = [v23 type];
                v30 = [v23 valueForKeyPath:@"CountryCode.value"];
                if ([v30 length])
                {
                  v31 = v29;
                  if ([v31 isEqualToString:v67])
                  {
                    v32 = 4;

                    if (v68 >= 4)
                    {
                      goto LABEL_45;
                    }

LABEL_44:
                    [v71 setISOCountryCode:v30];
                    v68 = v32;
                  }

                  else
                  {
                    if ([v31 isEqualToString:v64])
                    {
                      v32 = 6;

                      if (v68 >= 6)
                      {
                        goto LABEL_45;
                      }

                      goto LABEL_44;
                    }

                    if ([v31 isEqualToString:v60])
                    {
                      v32 = 8;

                      if (v68 >= 8)
                      {
                        goto LABEL_45;
                      }

                      goto LABEL_44;
                    }

                    if ([v31 isEqualToString:v57])
                    {
                      v32 = 10;
                    }

                    else
                    {
                      v32 = 2;
                    }

                    if (v32 > v68)
                    {
                      goto LABEL_44;
                    }
                  }
                }

LABEL_45:
                v33 = [v23 matchedString];
                if (a2 && [v29 isEqualToString:v66])
                {
                  v34 = [v23 valueForKey:v62];
                  if (v34)
                  {
                    v35 = [v23 range];
                    v36 = [v34 range];
                    v38 = v37;
                    v39 = v36 - v35;
                    v40 = [v33 mutableCopy];
                    v41 = v38;
                    p_info = (&OBJC_METACLASS___DDPreviewAction + 32);
                    [v40 replaceCharactersInRange:v39 withString:{v41, &stru_282C1E0A8}];

                    v33 = v40;
                    a2 = v61;
                  }
                }

                [v71 setValue:v33 forKey:v26];

                v21 = &OBJC_METACLASS___DDPreviewAction.info;
                v18 = v69;
              }
            }

            else
            {
              v52 = Type;
              DDLog();
            }

            if (v18 == ++v22)
            {
              v18 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
              if (!v18)
              {
                goto LABEL_51;
              }

              continue;
            }

            goto LABEL_20;
          }
        }

        v72 = 0;
LABEL_51:

        v43 = v71;
        v42 = v71;
LABEL_52:

        v8 = v54;
        v4 = v55;
        v7 = v59;
        v9 = v53;
        v6 = v56;
        if (v42)
        {
          v44 = [v70 dictionaryRepresentation];
          v45 = [v44 mutableCopy];

          v46 = [v42 dictionaryRepresentation];
          [v45 addEntriesFromDictionary:v46];

          v47 = [MEMORY[0x277CBDB60] postalAddressWithDictionaryRepresentation:v45];

          v70 = v47;
        }

        if (v65)
        {
          goto LABEL_55;
        }
      }

LABEL_5:
      v10 = v63 + 1;
    }

    while (v63 + 1 != v6);
    v6 = [v4 countByEnumeratingWithState:&v74 objects:v82 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_55:

  v48 = [v70 ISOCountryCode];
  if (!v48)
  {
LABEL_58:
    v48 = CPPhoneNumberCopyNetworkCountryCode();
    if (!v48)
    {
      v48 = CPPhoneNumberCopyHomeCountryCode();
    }

    if ((a2 & 1) == 0 && v48)
    {
      [v70 setISOCountryCode:v48];
    }
  }

LABEL_63:
  v49 = v70;

  v50 = *MEMORY[0x277D85DE8];
  return v70;
}

id DDMapURLForResult(uint64_t a1)
{
  if (a1 && (Type = DDResultGetType(), CFStringCompare(Type, *MEMORY[0x277D040E0], 0) == kCFCompareEqualTo))
  {
    v3 = DDResultGetMatchedString();
    if ([v3 length])
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 0;
    if ([0 length])
    {
LABEL_4:
      gotLoadHelper_x8__OBJC_CLASS___GEOMapURLBuilder(v4);
      v6 = [objc_alloc(*(v5 + 3040)) initForAddress:v3 label:0];
      v7 = [v6 buildForDefaultNavigation];
LABEL_5:

      goto LABEL_14;
    }
  }

  if (a1 && DDResultGetCategory() == 1)
  {
    v6 = DDResultCopyExtractedURL();
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    if (v8)
    {
      v9 = v8;
      v12 = 0;
      if ([(NSURL *)v8 dd_isMaps:&v12 isDirections:?]&& (v12 & 1) == 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = DDMapURLForURL(v9);
      }

      v7 = v10;

      goto LABEL_5;
    }

    v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_14:

  return v7;
}

id DDMapURLForURL(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v9 = 0;
    goto LABEL_24;
  }

  v3 = [v1 scheme];
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"geo"];

  if (!v5)
  {
    gotLoadHelper_x8__OBJC_CLASS____GEOMapURLParser(v6);
    v7 = [objc_alloc(*(v10 + 3712)) initWithURL:v2];
    [v7 parseIncludingCustomParameters:0];
    v11 = [v7 searchQuery];
    if (v11 || ([v7 addressString], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [v7 directionsSourceAddressString];
      if (!v12)
      {
        v16 = [v7 directionsDestinationAddressString];

        if (v11)
        {

          if (v16)
          {
            goto LABEL_13;
          }
        }

        else
        {

          if (v16)
          {
            goto LABEL_13;
          }
        }

        v8 = v2;
        goto LABEL_4;
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v5;
      }
    }

LABEL_13:
    v14 = [v7 searchQuery];
    if ([v14 length])
    {
      goto LABEL_20;
    }

    v15 = [v7 addressString];

    if (![v15 length])
    {
      v14 = [v7 directionsDestinationAddressString];

      if ([v14 length])
      {
LABEL_20:
        if ([v14 length])
        {
          v9 = DDMapURLForString(v14);
        }

        else
        {

          v9 = 0;
        }

        goto LABEL_23;
      }

      v15 = [v7 directionsSourceAddressString];
    }

    v14 = v15;
    goto LABEL_20;
  }

  v7 = DDMapAddressFromURL(v2);
  v8 = DDMapURLForString(v7);
LABEL_4:
  v9 = v8;
LABEL_23:

LABEL_24:

  return v9;
}

id DDMapsURLForUrlAndResult(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3 && a2)
  {
    v3 = DDMapURLForResult(a2);
    goto LABEL_8;
  }

  if (!v3)
  {
LABEL_8:
    v5 = v3;

    v6 = v5;

    return v6;
  }

  v4 = v3;
  if ([v3 dd_isMaps:1] && DDExtractMapLocationInformationFromURL(v4, 0, 0))
  {
    v3 = v4;
    goto LABEL_8;
  }

  v6 = 0;

  return v6;
}

BOOL DDExtractMapLocationInformationFromURL(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = [v5 scheme];
  v7 = [v6 lowercaseString];
  v8 = [v7 isEqualToString:@"geo"];

  if (v8)
  {
    v9 = MEMORY[0x277CCAD18];
    v10 = DDMapAddressFromURL(v5);
    v11 = [v9 queryItemWithName:@"ll" value:v10];
    v12 = 0;

    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (![v5 dd_isMaps:1])
  {
    v12 = 0;
    v11 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = [MEMORY[0x277CCACE0] componentsWithURL:v5 resolvingAgainstBaseURL:0];
  v14 = [v13 queryItems];
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"name == %@", @"ll"];
  v16 = [v14 filteredArrayUsingPredicate:v15];
  v11 = [v16 firstObject];

  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"name == %@", @"q"];
  v18 = [v14 filteredArrayUsingPredicate:v17];
  v12 = [v18 firstObject];

  if (!v12)
  {
    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"name == %@", @"address"];
    v20 = [v14 filteredArrayUsingPredicate:v19];
    v12 = [v20 firstObject];
  }

  if (a2)
  {
LABEL_10:
    v21 = v11;
    *a2 = v11;
  }

LABEL_11:
  if (a3)
  {
    v22 = v12;
    *a3 = v12;
  }

  return (v11 | v12) != 0;
}

id DDMapURLForString(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByReplacingOccurrencesOfString:@"(\\s|\\n)+" withString:@" " options:1024 range:{0, objc_msgSend(v1, "length")}];

  if ([v2 length])
  {
    gotLoadHelper_x8__OBJC_CLASS___GEOMapURLBuilder(v3);
    v5 = [objc_alloc(*(v4 + 3040)) initForAddress:v2 label:0];
    v6 = [v5 buildForDefaultNavigation];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id DDDirectionsURLForResult(uint64_t a1)
{
  if (a1 && (Type = DDResultGetType(), CFStringCompare(Type, *MEMORY[0x277D040E0], 0) == kCFCompareEqualTo))
  {
    v3 = DDResultGetMatchedString();
    if ([v3 length])
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 0;
    if ([0 length])
    {
LABEL_4:
      gotLoadHelper_x8__OBJC_CLASS___GEOMapURLBuilder(v4);
      v6 = [objc_alloc(*(v5 + 3040)) initForDirectionsTo:v3];
      v7 = [v6 buildForDefaultNavigation];
LABEL_5:

      goto LABEL_14;
    }
  }

  if (a1 && DDResultGetCategory() == 1)
  {
    v6 = DDResultCopyExtractedURL();
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    if (v8)
    {
      v9 = v8;
      v12 = 0;
      if ([(NSURL *)v8 dd_isMaps:&v12 isDirections:?]&& v12 == 1)
      {
        v10 = v9;
      }

      else
      {
        v10 = DDMapURLForURL(v9);
      }

      v7 = v10;

      goto LABEL_5;
    }

    v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_14:

  return v7;
}

id DDDirectionsURLForString(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByReplacingOccurrencesOfString:@"(\\s|\\n)+" withString:@" " options:1024 range:{0, objc_msgSend(v1, "length")}];

  if ([v2 length])
  {
    gotLoadHelper_x8__OBJC_CLASS___GEOMapURLBuilder(v3);
    v5 = [objc_alloc(*(v4 + 3040)) initForDirectionsTo:v2];
    v6 = [v5 buildForDefaultNavigation];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id DDMapAddressFromURL(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v11 = 0;
    goto LABEL_22;
  }

  v3 = [v1 scheme];
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"geo"];

  if (v5)
  {
    v7 = [v2 resourceSpecifier];
    if ([v7 hasPrefix:@"//"])
    {
      if ([v7 length] < 3)
      {
        goto LABEL_20;
      }

      v8 = [v7 substringFromIndex:2];

      v7 = v8;
    }

    if ([v7 hasPrefix:@"?"])
    {
      if ([v7 length] < 2)
      {
        goto LABEL_20;
      }

      v9 = [v7 substringFromIndex:1];

      v7 = v9;
    }

    if ([v7 length])
    {
      v10 = [v7 componentsSeparatedByString:@""];;
      v11 = [v10 firstObject];
LABEL_19:

      goto LABEL_21;
    }

LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  gotLoadHelper_x8__OBJC_CLASS____GEOMapURLParser(v6);
  v7 = [objc_alloc(*(v12 + 3712)) initWithURL:v2];
  [v7 parseIncludingCustomParameters:0];
  v11 = [v7 addressString];
  if (![v11 length])
  {
    v23 = [v7 directionsDestinationAddressString];

    if ([v23 length])
    {
      v11 = v23;
      if ([v23 length])
      {
        goto LABEL_21;
      }
    }

    else
    {
      v11 = [v7 searchQuery];

      if ([v11 length])
      {
        goto LABEL_21;
      }
    }

    goto LABEL_14;
  }

  if (![v11 length])
  {
LABEL_14:
    v24 = 0;
    v25 = 0;
    v13 = DDExtractMapLocationInformationFromURL(v2, &v25, &v24);
    v10 = v25;
    v14 = v24;
    v15 = v14;
    if (v13)
    {
      v16 = [v14 value];
      v17 = [v16 length];

      v18 = v15;
      if (v17 || ([v10 value], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "length"), v19, v18 = v10, v20))
      {
        v21 = [v18 value];

        v11 = v21;
      }
    }

    goto LABEL_19;
  }

LABEL_21:

LABEL_22:

  return v11;
}

id DDDirectionsURLForURL(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v3 = [v1 scheme];
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"geo"];

  if (!v5)
  {
    gotLoadHelper_x8__OBJC_CLASS____GEOMapURLParser(v6);
    v7 = [objc_alloc(*(v10 + 3712)) initWithURL:v2];
    [v7 parseIncludingCustomParameters:0];
    v11 = [v7 searchQuery];
    if (v11 || ([v7 addressString], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {

      goto LABEL_9;
    }

    v14 = [v7 directionsSourceAddressString];
    if (v14)
    {
    }

    else
    {
      v16 = [v7 directionsDestinationAddressString];

      if (!v16)
      {
LABEL_9:
        v12 = [v7 directionsDestinationAddressString];
        if ([v12 length])
        {
          goto LABEL_15;
        }

        v13 = [v7 addressString];

        if (![v13 length])
        {
          v12 = [v7 directionsSourceAddressString];

          if ([v12 length])
          {
LABEL_15:
            if ([v12 length])
            {
              v9 = DDDirectionsURLForString(v12);
            }

            else
            {

              v9 = 0;
            }

            goto LABEL_18;
          }

          [v7 centerCoordinate];
          if (v17 == -180.0 || ([v7 centerCoordinate], v18 == -180.0))
          {
            v23 = [v7 searchQuery];
          }

          else
          {
            v19 = MEMORY[0x277CCACA8];
            [v7 centerCoordinate];
            v21 = v20;
            [v7 centerCoordinate];
            v23 = [v19 stringWithFormat:@"%f, %f", v21, v22];
          }

          v13 = v23;
        }

        v12 = v13;
        goto LABEL_15;
      }
    }

    v8 = v2;
    goto LABEL_4;
  }

  v7 = DDMapAddressFromURL(v2);
  v8 = DDDirectionsURLForString(v7);
LABEL_4:
  v9 = v8;
LABEL_18:

LABEL_19:

  return v9;
}

id DDMapAddressFromResult(void *a1)
{
  if (a1)
  {
    Type = DDResultGetType();
    if (CFStringCompare(Type, *MEMORY[0x277D040E0], 0))
    {
      a1 = 0;
    }

    else
    {
      a1 = DDResultGetMatchedString();
    }

    v1 = vars8;
  }

  return a1;
}

void *DDCreateUpdatedResultWithContext(void *Copy, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!Copy)
  {
    goto LABEL_25;
  }

  v4 = *MEMORY[0x277D040E0];
  if (!DDResultHasType())
  {
    Copy = 0;
    goto LABEL_25;
  }

  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = copyAssociatedResultsFromResultWithContext(Copy, v3, 0);
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v6)
  {
LABEL_23:
    Copy = 0;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = *v28;
LABEL_6:
  v9 = 0;
  while (1)
  {
    if (*v28 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v27 + 1) + 8 * v9);
    if (!DDResultHasType())
    {
      goto LABEL_7;
    }

    Range = DDResultGetRange();
    v13 = v12;
    v14 = DDResultGetRange();
    if ((v14 - (Range + v13)) >= 0x32 && (Range - v14 + v15) > 0x31)
    {
      goto LABEL_7;
    }

    if (!DDAddressResultCanBeMergedWith())
    {
      goto LABEL_7;
    }

    Copy = DDResultCreateCopy();
    if (!Copy)
    {
      goto LABEL_7;
    }

    SubResults = DDResultGetSubResults();
    if (SubResults)
    {
      break;
    }

    CFRelease(Copy);
LABEL_7:
    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v7)
      {
        goto LABEL_23;
      }

      goto LABEL_6;
    }
  }

  v17 = SubResults;
  Count = CFArrayGetCount(SubResults);
  if (Count >= 1)
  {
    v19 = Count;
    for (i = 0; i != v19; ++i)
    {
      CFArrayGetValueAtIndex(v17, i);
      DDResultAddSubresultSorted();
    }
  }

  MatchedString = DDResultGetMatchedString();
  v22 = DDResultGetMatchedString();
  v23 = CFStringCreateWithFormat(0, 0, @"%@, %@", MatchedString, v22, v27);
  if (v23)
  {
    v24 = v23;
    DDResultSetMatchedString();
    CFRelease(v24);
  }

LABEL_24:

LABEL_25:
  v25 = *MEMORY[0x277D85DE8];
  return Copy;
}

void *copyAssociatedResultsFromResultWithContext(void *a1, void *a2, void *a3)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 objectForKey:@"GroupAllResultsKey"];
    if (v7)
    {
      v8 = v7;
      if ([v7 count])
      {
        v9 = [v8 sortedArrayUsingFunction:_DDScannerResultProximitySort context:a1];
        if (!a3)
        {
LABEL_6:
          a1 = copyCoreResultsArray(v9);

          goto LABEL_22;
        }
      }

      else
      {
        v17 = [MEMORY[0x277D04218] resultFromCoreResult:a1];
        v32[0] = v17;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];

        if (!a3)
        {
          goto LABEL_6;
        }
      }

      v10 = v9;
      *a3 = v9;
      goto LABEL_6;
    }

    v11 = [v6 objectForKey:@"AllResults"];
    if (!v11)
    {
      v18 = [v6 objectForKey:@"TextStorage"];
      if (v18)
      {
        v12 = v18;
        v19 = [MEMORY[0x277CCA8D8] mainBundle];
        v20 = [v19 bundleIdentifier];
        if ([v20 isEqualToString:@"com.apple.MobileSMS"])
        {
          v21 = 2000;
        }

        else
        {
          v21 = 50;
        }

        RangeForURLification = DDResultGetRangeForURLification();
        v24 = v23;
        v25 = [v6 objectForKeyedSubscript:@"ReferenceDate"];
        v26 = findNearbyResultsInTextStorage(v12, RangeForURLification, v24, v21, 4 * v21, v25);
        a1 = CFRetain(v26);

LABEL_21:
        goto LABEL_22;
      }

      v31 = a1;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      if (!v11)
      {
        a1 = 0;
        goto LABEL_22;
      }
    }

    v12 = v11;
    v13 = [v11 count];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      while (1)
      {
        v16 = [v12 objectAtIndex:v15];

        if (v16 == a1)
        {
          break;
        }

        if (v14 == ++v15)
        {
          goto LABEL_12;
        }
      }

      v27 = [v6 objectForKeyedSubscript:@"ReferenceDate"];
      v28 = findNearbyResultsInArray(v12, v15, 50, 200, v27);
      a1 = CFRetain(v28);
    }

    else
    {
LABEL_12:
      a1 = 0;
    }

    goto LABEL_21;
  }

LABEL_22:

  v29 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t DDUIRecordOtherActionInSheetForResultIfNeeded(uint64_t result)
{
  if (result)
  {
    result = DDResultGetCategory();
    v5 = 0;
    if (result == 4)
    {
      result = DDTrackEventCreationInHostApplication(&v5);
      if (result)
      {
        if (v5 == 1)
        {
          v1 = 2;
        }

        else
        {
          v1 = 3;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          DDUIRecordOtherActionInSheetForResultIfNeeded_cold_1();
        }

        Helper_x8__OBJC_CLASS___SGNLEventSuggestionsMetrics = gotLoadHelper_x8__OBJC_CLASS___SGNLEventSuggestionsMetrics(v2);
        return [*(v4 + 96) recordUserInteraction:2 withLinkInApplication:v1 eventPrefillMode:0 eventTypeClassification:0 proposedEvent:0 confirmedEvent:{0, Helper_x8__OBJC_CLASS___SGNLEventSuggestionsMetrics}];
      }
    }
  }

  return result;
}

void *copyCoreResultsArray(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "coreResult", v10)}];
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t _DDScannerResultProximitySort(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1 coreResult];
  v7 = [v5 coreResult];

  return MEMORY[0x2821599E0](v6, v7, a3);
}

id _eventTitleFromCache(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"event"];
  v3 = [v2 title];
  if (v3)
  {
    v4 = v3;
LABEL_4:
    v6 = [MEMORY[0x277CCA900] newlineCharacterSet];
    v7 = [v4 componentsSeparatedByCharactersInSet:v6];
    v8 = [v7 firstObject];
    v9 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v10 = [v8 stringByTrimmingCharactersInSet:v9];

    goto LABEL_5;
  }

  v5 = [v1 objectForKeyedSubscript:@"icsEvent"];
  v4 = [v5 summary];

  if (v4)
  {
    goto LABEL_4;
  }

  v10 = 0;
LABEL_5:

  return v10;
}

id _eventStartDateFromCache(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"event"];
  v3 = [v2 startDate];
  if (!v3)
  {
    v4 = [v1 objectForKeyedSubscript:@"icsEvent"];
    v5 = [v4 dtstart];
    v6 = [v5 components];

    if (v6)
    {
      v7 = [v6 calendar];
      v8 = v7;
      if (v7)
      {
        v3 = [v7 dateFromComponents:v6];
      }

      else
      {
        v10 = [MEMORY[0x277CBEA80] currentCalendar];
        v3 = [v10 dateFromComponents:v6];
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_21ABA718C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21ABA71F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  objc_destroyWeak(va);
  objc_destroyWeak((v17 - 112));
  _Unwind_Resume(a1);
}

id selectDefaultAction(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 || !v4 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7 = v5, (isKindOfClass & 1) != 0))
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

void sub_21ABA9638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABAA6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id location)
{
  objc_destroyWeak(&a54);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id DDUIAugmentedContextForEvent(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (![v5 count])
  {
    v17 = v6;
    goto LABEL_28;
  }

  v8 = _DDUIEventGetComponents(v5, v6, v7);
  v9 = v8;
  v28 = 1;
  if (v8)
  {
    v10 = [v8 title];
    v11 = [v10 length];

    if (v11)
    {
      v12 = [v9 title];
      v13 = [v9 startDate];

      if (v13)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = 0;
      v13 = [v9 startDate];

      if (v13)
      {
LABEL_5:
        v28 = 0;
        v14 = [v9 startDate];
        v15 = [v9 endDate];
        v16 = [v9 startDate];
        if (v16)
        {
          goto LABEL_17;
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = 0;
    v16 = [v9 startDate];
    if (v16)
    {
      goto LABEL_17;
    }

LABEL_12:
    v20 = v16;
    [v9 duration];
    if (v21 <= 0.0)
    {
      v16 = v20;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_18;
      }

      [v9 duration];
      v22 = [v14 dateByAddingTimeInterval:?];
      v16 = v15;
      v15 = v22;
    }

LABEL_17:

LABEL_18:
    v24 = [v9 source];
    if ((v24 - 1) > 3)
    {
      v19 = 0;
      v17 = [v6 mutableCopy];
      if (v14)
      {
LABEL_20:
        [v17 setObject:v14 forKey:@"EventStartDate"];
        if (!v15)
        {
          goto LABEL_25;
        }

LABEL_24:
        [v17 setObject:v15 forKey:@"EventEndDate"];
        goto LABEL_25;
      }
    }

    else
    {
      v19 = qword_21ABCD6D8[v24 - 1];
      v17 = [v6 mutableCopy];
      if (v14)
      {
        goto LABEL_20;
      }
    }

    if (!v15)
    {
      v23 = v14;
      if (!v12)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v14 = dd_beginDateOfEventResultsRespectingSpecificEndDates(v5, 1, v6, &v28, 0);
  v18 = [v6 mutableCopy];
  v17 = v18;
  if (!v14)
  {
    v12 = 0;
    v23 = 0;
    v19 = 0;
    goto LABEL_27;
  }

  [v18 setObject:v14 forKey:@"EventStartDate"];
  v19 = 0;
  v15 = 0;
  v12 = 0;
LABEL_25:
  v23 = v14;
  v25 = [MEMORY[0x277CCABB0] numberWithBool:v28 != 0];
  [v17 setObject:v25 forKey:@"EventIsAllDay"];

  v14 = v15;
  if (v12)
  {
LABEL_26:
    [v17 setObject:v12 forKey:@"EventTitle"];
  }

LABEL_27:
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  [v17 setObject:v26 forKey:@"PrefillMode"];

LABEL_28:

  return v17;
}

id _DDUIEventGetComponents(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = objc_alloc_init(DDActionSuggestionsContext);
  v9 = [v6 objectForKey:@"CoreSpotlightUniqueIdentifier"];
  [(DDActionSuggestionsContext *)v8 setCoreSpotlightUniqueIdentifier:v9];

  [(DDActionSuggestionsContext *)v8 setBundleIdentifier:v5];
  v10 = objc_alloc_init(DDActionNaturalLanguageContext);
  v11 = [v6 objectForKey:@"LeadingText"];
  [(DDActionNaturalLanguageContext *)v10 setLeadingText:v11];

  v12 = [v6 objectForKey:@"TrailingText"];
  [(DDActionNaturalLanguageContext *)v10 setTrailingText:v12];

  v13 = [v7 firstObject];
  [(DDActionNaturalLanguageContext *)v10 setResult:v13];

  [(DDActionNaturalLanguageContext *)v10 setAssociatedResults:v7];
  [(DDActionNaturalLanguageContext *)v10 setBundleIdentifier:v5];

  v14 = [v7 firstObject];

  v15 = [DDEventComponents bestEventComponentsForResult:v14 withNaturalLanguageContext:v10 suggestionsContext:v8 context:v6];

  return v15;
}

id DDUISuggestedEventForResults(void *a1, void *a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  if (![v12 count])
  {
    v19 = 0;
    goto LABEL_40;
  }

  v15 = _DDUIEventGetComponents(v12, v13, v14);
  if (v15)
  {
    v46 = a6;
    Helper_x8__OBJC_CLASS___EKEvent = gotLoadHelper_x8__OBJC_CLASS___EKEvent(v16);
    v19 = [*(v18 + 2600) eventWithEventStore:{v11, Helper_x8__OBJC_CLASS___EKEvent}];
    v20 = [v15 title];
    if (v20)
    {
      v21 = v20;
      v22 = [v15 title];
      v23 = [v22 length];

      if (v23)
      {
        v24 = [v15 title];
        [v19 setTitle:v24];
      }
    }

    v25 = [v15 notes];
    if (v25)
    {
      v26 = v25;
      v27 = [v15 notes];
      v28 = [v27 length];

      if (v28)
      {
        v29 = [v15 notes];
        [v19 setNotes:v29];
      }
    }

    v30 = [v15 URL];

    if (v30)
    {
      v31 = [v15 URL];
      [v19 setURL:v31];
    }

    v32 = [v15 location];

    if (v32)
    {
      v33 = [v15 location];
      [v19 setLocation:v33];
    }

    v34 = [v15 structuredLocation];

    if (v34)
    {
      v35 = [v15 structuredLocation];
      [v19 setStructuredLocation:v35];
    }

    v36 = [v15 startDate];

    if (v36)
    {
      [v19 setAllDay:0];
      v37 = [v15 startDate];
      [v19 setStartDate:v37];

      v38 = [v15 endDate];
      [v19 setEndDate:v38];
    }

    v39 = [v15 startDate];
    if (!v39)
    {
      [v15 duration];
      if (v40 > 0.0)
      {
        if ([v19 isAllDay])
        {
          goto LABEL_22;
        }

        v39 = [v19 startDate];
        [v15 duration];
        v41 = [v39 dateByAddingTimeInterval:?];
        [v19 setEndDate:v41];
      }
    }

LABEL_22:
    if ([v15 source] == 1)
    {
      v42 = v46;
      if (!a5)
      {
        goto LABEL_37;
      }

      v43 = 2;
    }

    else
    {
      v42 = v46;
      if ([v15 source] == 2)
      {
        if (!a5)
        {
          goto LABEL_37;
        }

        v43 = 1;
      }

      else if ([v15 source] == 3)
      {
        if (!a5)
        {
          goto LABEL_37;
        }

        v43 = 4;
      }

      else
      {
        v44 = [v15 source];
        if (!a5 || v44 != 4)
        {
LABEL_37:
          if (v42)
          {
            *v42 = [v15 eventTypeIdentifier];
          }

          goto LABEL_39;
        }

        v43 = 3;
      }
    }

    *a5 = v43;
    goto LABEL_37;
  }

  v19 = 0;
LABEL_39:

LABEL_40:

  return v19;
}

id DDUIEventForResults(void *a1, void *a2, void *a3)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v71 = [v7 objectForKeyedSubscript:@"ICS"];
  if (v71)
  {
    v9 = [v7 objectForKeyedSubscript:@"NotificationStyle"];
    if ([v9 BOOLValue])
    {

      goto LABEL_5;
    }

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [v11 isEqualToString:@"com.apple.BarcodeSupport.BarcodeNotificationService"];

    if (v12)
    {
LABEL_5:
      v13 = [v71 dataUsingEncoding:4];
      v14 = [v5 importICSData:v13 intoCalendar:0 options:0];
      v15 = [v14 firstObject];

      if (v15)
      {
        goto LABEL_11;
      }
    }
  }

  Helper_x8__OBJC_CLASS___EKEvent = gotLoadHelper_x8__OBJC_CLASS___EKEvent(v8);
  v15 = [*(v17 + 2600) eventWithEventStore:{v5, Helper_x8__OBJC_CLASS___EKEvent}];
  if (v15 && [v6 count])
  {
    LOBYTE(cf) = 0;
    v90 = 0;
    v18 = dd_beginDateOfEventResultsRespectingSpecificEndDates(v6, 1, v7, &cf, &v90);
    v19 = v90;
    if (!v19)
    {
      v19 = [v18 dateByAddingTimeInterval:3600.0];
    }

    [v15 setStartDate:v18];
    [v15 setEndDate:v19];
    [v15 setAllDay:cf != 0];
  }

LABEL_11:
  v20 = [v7 objectForKey:@"EventTitle"];
  v21 = [v15 title];
  if ([v21 length])
  {
  }

  else
  {
    v22 = [v20 length];

    if (v22)
    {
      [v15 setTitle:v20];
    }
  }

  if ([v6 count])
  {
    v23 = [v6 objectAtIndex:0];
    v24 = [v6 sortedArrayUsingFunction:MEMORY[0x277D041E0] context:v23];
  }

  else
  {
    v24 = 0;
  }

  v69 = v6;
  v25 = [v15 URL];

  v75 = v15;
  v70 = v5;
  v72 = v7;
  v68 = v20;
  if (v25)
  {
    v26 = 0;
    goto LABEL_69;
  }

  v27 = [v7 objectForKey:@"SpecialURL"];
  if (!v27)
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v65 = v24;
    v30 = v24;
    v31 = [v30 countByEnumeratingWithState:&v86 objects:v93 count:16];
    if (v31)
    {
      v32 = v31;
      v28 = 0;
      v33 = *v87;
      v34 = *MEMORY[0x277D041C8];
      v73 = *MEMORY[0x277D040F8];
      v67 = *MEMORY[0x277D040F0];
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v87 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v37 = *(*(&v86 + 1) + 8 * i);
          if ((DDResultHasType() & 1) != 0 || (DDResultHasType() & 1) != 0 || DDResultHasType())
          {
            v38 = DDResultCopyExtractedURLWithOptions();
            if (v38)
            {
              v36 = [MEMORY[0x277CBEBC0] URLWithString:v38];

              if (v36)
              {
                v39 = [v36 scheme];
                v40 = [v39 lowercaseString];

                if (dd_schemeIsHttp(v40) & 1) != 0 || (dd_isAnySimpleTelephonyScheme(v36) & 1) != 0 || ([v40 isEqualToString:@"sip"])
                {
                  [v75 setURL:v36];

                  v15 = v75;
                  v28 = v36;
                  goto LABEL_44;
                }
              }
            }

            else
            {
              v36 = v28;
            }

            v28 = v36;
            v15 = v75;
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v86 objects:v93 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v28 = 0;
    }

LABEL_44:

    v24 = v65;
    v41 = [v15 URL];

    if (v41)
    {
      goto LABEL_22;
    }

LABEL_45:
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v42 = v24;
    v43 = [v42 countByEnumeratingWithState:&v82 objects:v92 count:16];
    if (v43)
    {
      v44 = v43;
      v66 = v24;
      v45 = *v83;
      v46 = *MEMORY[0x277D04160];
      while (2)
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v83 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v26 = *(*(&v82 + 1) + 8 * j);
          if (DDResultHasType())
          {
            v80 = 0;
            cf = 0;
            DDResultCopyPhoneValue();
            if (cf)
            {
              if (([cf containsString:{@", "}] & 1) != 0 || objc_msgSend(cf, "containsString:", @";"))
              {
                v48 = DDResultCopyExtractedURLWithOptions();
                if (v48)
                {
                  v49 = [MEMORY[0x277CBEBC0] URLWithString:v48];

                  if (v49)
                  {
                    [v75 setURL:v49];

                    v28 = v49;
                    goto LABEL_66;
                  }

                  v28 = 0;
                }
              }

              if (cf)
              {
                CFRelease(cf);
              }
            }
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v82 objects:v92 count:16];
        if (v44)
        {
          continue;
        }

        break;
      }

      v26 = 0;
LABEL_66:
      v24 = v66;
    }

    else
    {
      v26 = 0;
    }

    v15 = v75;
    goto LABEL_68;
  }

  v28 = v27;
  [v15 setURL:v27];
  v29 = [v15 URL];

  if (!v29)
  {
    goto LABEL_45;
  }

LABEL_22:
  v26 = 0;
LABEL_68:

LABEL_69:
  v74 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v50 = v24;
  v51 = [v50 countByEnumeratingWithState:&v76 objects:v91 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v77;
    v54 = *MEMORY[0x277D040E0];
    v55 = *MEMORY[0x277D04160];
    do
    {
      for (k = 0; k != v52; ++k)
      {
        if (*v77 != v53)
        {
          objc_enumerationMutation(v50);
        }

        if (*(*(&v76 + 1) + 8 * k) != v26)
        {
          v57 = [v15 location];
          if ([v57 length])
          {
          }

          else
          {
            Type = DDResultGetType();
            v59 = CFStringCompare(Type, v54, 0);

            if (v59 == kCFCompareEqualTo)
            {
              v15 = v75;
              [v75 setLocation:DDResultGetMatchedString()];
              continue;
            }
          }

          v15 = v75;
          if (DDResultHasType())
          {
            cf = 0;
            DDResultCopyPhoneValue();
            if (cf)
            {
              [v74 addObject:?];
              CFRelease(cf);
            }
          }
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v76 objects:v91 count:16];
    }

    while (v52);
  }

  v60 = [v72 objectForKey:@"SelectedText"];
  if (v60)
  {
    [v74 addObject:v60];
  }

  v61 = [v15 notes];
  if (!v61)
  {
    if (![v74 count])
    {
      goto LABEL_90;
    }

    v62 = [v74 componentsJoinedByString:@"\n"];
    [v15 setNotes:v62];
    v61 = v62;
  }

LABEL_90:
  v63 = *MEMORY[0x277D85DE8];

  return v15;
}

BOOL dd_CalendarIsTitleGenerationUsed(void *a1)
{
  v1 = [a1 objectForKey:@"PrefillMode"];
  v2 = [v1 unsignedIntegerValue];

  return (v2 - 3) < 2;
}

id DDOnDeviceSupportActionWithBrand(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = 0;
  if (v4 && !v7)
  {
    if ([v4 brandType] == 3)
    {
      v8 = [(DDAction *)DDSupportFlowAction actionWithURL:0 result:0 context:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x16u);
}

void sub_21ABB0DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB0DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB0DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB0DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB0E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB10B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB10C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB10E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB14E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB1500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB1518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB1530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB1548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB1560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB1578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_21ABB73C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB73DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21ABB7FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_21ABB82E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_21ABB9948(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_21ABBA49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABBA4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL stringContainsEmoji(void *a1)
{
  v1 = a1;
  if (v1 && (v2 = CTFontCreateWithName(@"AppleColorEmoji", 0.0, 0)) != 0)
  {
    v3 = v2;
    v4 = CTFontCopyCharacterSet(v2);
    if (v4)
    {
      v5 = v4;
      MutableCopy = CFCharacterSetCreateMutableCopy(*MEMORY[0x277CBECE8], v4);
      if (MutableCopy)
      {
        v7 = MutableCopy;
        CFCharacterSetRemoveCharactersInString(MutableCopy, @" 0123456789#*");
        v10.length = [(__CFString *)v1 length];
        v10.location = 0;
        v8 = CFStringFindCharacterFromSet(v1, v7, v10, 0, 0) == 1;
        CFRelease(v7);
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_21ABBB600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_21ABBBEBC(uint64_t a1)
{
  sub_21ABC66B4();
  sub_21ABC66A4();
  sub_21ABC6694();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);

    v4 = sub_21ABBC674(v2);
    v2(v4);
    sub_21ABBC684(v2);
    v5 = *(a1 + 16);
  }

  else
  {

    v5 = 0;
  }

  v6 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_21ABBC684(v5);
}

uint64_t sub_21ABBC0C0()
{
  v1 = *(v0 + 24);
  sub_21ABBC684(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id DDSupportFlowViewControllerContainer.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_21ABBC4A0(a1, a2);

  return v6;
}

id DDSupportFlowViewControllerContainer.init(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_21ABBC4A0(a1, a2);

  return v2;
}

id DDSupportFlowViewControllerContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DDSupportFlowViewControllerContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DDSupportFlowViewControllerContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21ABBC4A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD32800, &qword_21ABCD788) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v14 - v7;
  type metadata accessor for DDSupportFlowViewControllerDelegate();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_21ABC6684();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  objc_allocWithZone(sub_21ABC6674());

  v11 = sub_21ABC6654();

  sub_21ABC6664();
  *&v3[OBJC_IVAR____TtC15DataDetectorsUI36DDSupportFlowViewControllerContainer_controller] = v11;
  *&v3[OBJC_IVAR____TtC15DataDetectorsUI36DDSupportFlowViewControllerContainer_delegate] = v9;
  v12 = type metadata accessor for DDSupportFlowViewControllerContainer();
  v14.receiver = v3;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_21ABBC674(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21ABBC684(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void actionSheetTitleForResult_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *_DDEventSanitizedString(NSString *__strong)"];
  v4 = [a1 localizedDescription];
  [v2 handleFailureInFunction:v3 file:@"DDUIUtils.m" lineNumber:221 description:v4];
}

void actionSheetTitleForResult_cold_2()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *actionSheetTitleForResult(DDResultRef)"];
  [v1 handleFailureInFunction:v0 file:@"DDUIUtils.m" lineNumber:292 description:@"Attempting to determine title for result that is nil."];
}

void actionSheetTitleForURL_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *actionSheetTitleForURL(NSURL *__strong)"];
  [v1 handleFailureInFunction:v0 file:@"DDUIUtils.m" lineNumber:395 description:@"Attempting to determine title for url that is nil."];
}

void applicationWithBundleIdentifierIsRestricted_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 138412802;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Application proxy for bundle identifier %@ is nil (errors %@ -- %@).", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

void DDUILogAssertionFailure_cold_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void DDMergeContactIntoContact_cold_1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unknown key: %@", buf, 0xCu);
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t SBSRequestPasscodeUnlockUI_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_SpringBoardServices))
  {
    dlopenHelper_SpringBoardServices(a1);
  }

  return MEMORY[0x2821CD708]();
}

double gotLoadHelper_x8__BSBrandServiceTypeOnDeviceSupport(double result)
{
  if (!atomic_load(&dlopenHelperFlag_BusinessServices))
  {
    return dlopenHelper_BusinessServices(result);
  }

  return result;
}

double gotLoadHelper_x8__IDSServiceNameFaceTime(double result)
{
  if (!atomic_load(&dlopenHelperFlag_IDS))
  {
    return dlopenHelper_IDS(result);
  }

  return result;
}

double gotLoadHelper_x8__IPMessageTypeEmail(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsNaturalLanguage))
  {
    return dlopenHelper_DataDetectorsNaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x9__IPMessageTypeShortMessage(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsNaturalLanguage))
  {
    return dlopenHelper_DataDetectorsNaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___APApplication(double result)
{
  if (!atomic_load(&dlopenHelperFlag_AppProtection))
  {
    return dlopenHelper_AppProtection(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___APBaseExtensionShieldView(double result)
{
  if (!atomic_load(&dlopenHelperFlag_AppProtectionUI))
  {
    return dlopenHelper_AppProtectionUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___APGuard(double result)
{
  if (!atomic_load(&dlopenHelperFlag_AppProtection))
  {
    return dlopenHelper_AppProtection(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___BCError(double result)
{
  if (!atomic_load(&dlopenHelperFlag_BusinessChat))
  {
    return dlopenHelper_BusinessChat(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___BCSBusinessQueryService(double result)
{
  if (!atomic_load(&dlopenHelperFlag_BusinessChatService))
  {
    return dlopenHelper_BusinessChatService(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___BSBrandManager(double result)
{
  if (!atomic_load(&dlopenHelperFlag_BusinessServices))
  {
    return dlopenHelper_BusinessServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CNContactContentViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ContactsUI))
  {
    return dlopenHelper_ContactsUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CSSearchableItem(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CoreSpotlight))
  {
    return dlopenHelper_CoreSpotlight(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CSSearchableItemAttributeSet(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CoreSpotlight))
  {
    return dlopenHelper_CoreSpotlight(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CUIKOccurrencesCollection(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CalendarUIKit))
  {
    return dlopenHelper_CalendarUIKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___EKAttendee(double result)
{
  if (!atomic_load(&dlopenHelperFlag_EventKit))
  {
    return dlopenHelper_EventKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___EKEvent(double result)
{
  if (!atomic_load(&dlopenHelperFlag_EventKit))
  {
    return dlopenHelper_EventKit(result);
  }

  return result;
}

void gotLoadHelper_x21__OBJC_CLASS___EKEventStore(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_EventKit))
  {
    dlopenHelper_EventKit(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___EKEventStore(double result)
{
  if (!atomic_load(&dlopenHelperFlag_EventKit))
  {
    return dlopenHelper_EventKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___EKStructuredLocation(double result)
{
  if (!atomic_load(&dlopenHelperFlag_EventKit))
  {
    return dlopenHelper_EventKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___FUFlightViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_FlightUtilities))
  {
    return dlopenHelper_FlightUtilities(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___GEOMapURLBuilder(double result)
{
  if (!atomic_load(&dlopenHelperFlag_GeoServices))
  {
    return dlopenHelper_GeoServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___ICSDocument(double result)
{
  if (!atomic_load(&dlopenHelperFlag_iCalendar))
  {
    return dlopenHelper_iCalendar(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___IDSServiceAvailabilityController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_IDS))
  {
    return dlopenHelper_IDS(result);
  }

  return result;
}

void gotLoadHelper_x22__OBJC_CLASS___IDSServiceAvailabilityController(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_IDS))
  {
    dlopenHelper_IDS(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___IPEventClassificationType(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsNaturalLanguage))
  {
    return dlopenHelper_DataDetectorsNaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___IPMessage(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsNaturalLanguage))
  {
    return dlopenHelper_DataDetectorsNaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___IPMessageUnit(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsNaturalLanguage))
  {
    return dlopenHelper_DataDetectorsNaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___ISIcon(double result)
{
  if (!atomic_load(&dlopenHelperFlag_IconServices))
  {
    return dlopenHelper_IconServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___ISImageDescriptor(double result)
{
  if (!atomic_load(&dlopenHelperFlag_IconServices))
  {
    return dlopenHelper_IconServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPLinkView(double result)
{
  if (!atomic_load(&dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPMetadataProvider(double result)
{
  if (!atomic_load(&dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___MFMessageComposeViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MessageUI))
  {
    return dlopenHelper_MessageUI(result);
  }

  return result;
}

void gotLoadHelper_x20__OBJC_CLASS___NSSNewsViewController(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NewsServices))
  {
    dlopenHelper_NewsServices(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___NSSNewsViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NewsServices))
  {
    return dlopenHelper_NewsServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PARSession(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CoreParsec))
  {
    return dlopenHelper_CoreParsec(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PARSessionConfiguration(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CoreParsec))
  {
    return dlopenHelper_CoreParsec(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SFLookupHintRelevancyFeedback(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SearchFoundation))
  {
    return dlopenHelper_SearchFoundation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SFResultSection(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SearchFoundation))
  {
    return dlopenHelper_SearchFoundation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SGNLEventSuggestionsMetrics(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CoreSuggestions))
  {
    return dlopenHelper_CoreSuggestions(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SGSuggestionsService(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CoreSuggestions))
  {
    return dlopenHelper_CoreSuggestions(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS____GEOMapURLParser(double result)
{
  if (!atomic_load(&dlopenHelperFlag_GeoServices))
  {
    return dlopenHelper_GeoServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kPARLookupClient(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CoreParsec))
  {
    return dlopenHelper_CoreParsec(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_BusinessChat(double a1)
{
  dlopen("/System/Library/Frameworks/BusinessChat.framework/BusinessChat", 0);
  atomic_store(1u, &dlopenHelperFlag_BusinessChat);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_ContactsUI(double a1)
{
  dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 0);
  atomic_store(1u, &dlopenHelperFlag_ContactsUI);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_CoreSpotlight(double a1)
{
  dlopen("/System/Library/Frameworks/CoreSpotlight.framework/CoreSpotlight", 0);
  atomic_store(1u, &dlopenHelperFlag_CoreSpotlight);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_EventKit(double a1)
{
  dlopen("/System/Library/Frameworks/EventKit.framework/EventKit", 0);
  atomic_store(1u, &dlopenHelperFlag_EventKit);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_LinkPresentation(double a1)
{
  dlopen("/System/Library/Frameworks/LinkPresentation.framework/LinkPresentation", 0);
  atomic_store(1u, &dlopenHelperFlag_LinkPresentation);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_MessageUI(double a1)
{
  dlopen("/System/Library/Frameworks/MessageUI.framework/MessageUI", 0);
  atomic_store(1u, &dlopenHelperFlag_MessageUI);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_AppProtection(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/AppProtection.framework/AppProtection", 0);
  atomic_store(1u, &dlopenHelperFlag_AppProtection);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_AppProtectionUI(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/AppProtectionUI.framework/AppProtectionUI", 0);
  atomic_store(1u, &dlopenHelperFlag_AppProtectionUI);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_BusinessChatService(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/BusinessChatService.framework/BusinessChatService", 0);
  atomic_store(1u, &dlopenHelperFlag_BusinessChatService);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_BusinessServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/BusinessServices.framework/BusinessServices", 0);
  atomic_store(1u, &dlopenHelperFlag_BusinessServices);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_CalendarUIKit(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CalendarUIKit.framework/CalendarUIKit", 0);
  atomic_store(1u, &dlopenHelperFlag_CalendarUIKit);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_CoreParsec(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CoreParsec.framework/CoreParsec", 0);
  atomic_store(1u, &dlopenHelperFlag_CoreParsec);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_CoreSuggestions(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CoreSuggestions.framework/CoreSuggestions", 0);
  atomic_store(1u, &dlopenHelperFlag_CoreSuggestions);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_DataDetectorsNaturalLanguage(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/DataDetectorsNaturalLanguage.framework/DataDetectorsNaturalLanguage", 0);
  atomic_store(1u, &dlopenHelperFlag_DataDetectorsNaturalLanguage);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_FlightUtilities(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/FlightUtilities.framework/FlightUtilities", 0);
  atomic_store(1u, &dlopenHelperFlag_FlightUtilities);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_GeoServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/GeoServices.framework/GeoServices", 0);
  atomic_store(1u, &dlopenHelperFlag_GeoServices);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_IDS(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/IDS.framework/IDS", 0);
  atomic_store(1u, &dlopenHelperFlag_IDS);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_IconServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 0);
  atomic_store(1u, &dlopenHelperFlag_IconServices);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_NewsServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/NewsServices.framework/NewsServices", 0);
  atomic_store(1u, &dlopenHelperFlag_NewsServices);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_SearchFoundation(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SearchFoundation.framework/SearchFoundation", 0);
  atomic_store(1u, &dlopenHelperFlag_SearchFoundation);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_SpringBoardServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 0);
  atomic_store(1u, &dlopenHelperFlag_SpringBoardServices);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_iCalendar(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/iCalendar.framework/iCalendar", 0);
  atomic_store(1u, &dlopenHelperFlag_iCalendar);
  return a1;
}