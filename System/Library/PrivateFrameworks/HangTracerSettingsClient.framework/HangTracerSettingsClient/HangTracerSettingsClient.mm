id arrayOfCFPrefsWithPrefix(const __CFString *a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.", a3];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = CFPreferencesCopyKeyList(a1, v5, *MEMORY[0x277CBF010]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [(__CFArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 hasPrefix:v6])
        {
          [v7 addObject:v14];
        }
      }

      v11 = [(__CFArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

id getPrefWithOverrideProfile(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277CCACA8];
  v5 = a2;
  v6 = [v4 stringWithFormat:@"HTProfile.%@", v3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v9 = CFPreferencesCopyValue(v3, *MEMORY[0x277D0FA18], *MEMORY[0x277D0FB48], *MEMORY[0x277CBF010]);
    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id HTTerminationAllAvailableReasons()
{
  if (HTTerminationAllAvailableReasons_onceToken != -1)
  {
    HTTerminationAllAvailableReasons_cold_1();
  }

  v1 = HTTerminationAllAvailableReasons_allReasons;

  return v1;
}

void __HTTerminationAllAvailableReasons_block_invoke()
{
  v5 = [MEMORY[0x277CBEB18] array];
  v0 = 2;
  do
  {
    v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v0];
    [v5 addObject:v1];

    v2 = v0 >> 42;
    v0 *= 2;
  }

  while (!v2);
  v3 = [v5 copy];
  v4 = HTTerminationAllAvailableReasons_allReasons;
  HTTerminationAllAvailableReasons_allReasons = v3;
}

id HTTerminationSubReasonDisplayName(int64_t a1, int64_t a2)
{
  v3 = __clz(__rbit64(a1));
  if (a1 >= 0x8000)
  {
    if (a1 == 0x8000)
    {
      if (a2 > 255)
      {
        if (a2 > 4095)
        {
          if (a2 >= 0x4000)
          {
            if (a2 == 0x4000)
            {
              v4 = 97132013;
              goto LABEL_74;
            }

            if (a2 == 0x8000)
            {
              v4 = 2970726673;
              goto LABEL_74;
            }
          }

          else
          {
            if (a2 == 4096)
            {
              v4 = 562215635;
              goto LABEL_74;
            }

            if (a2 == 0x2000)
            {
              v4 = 562215636;
              goto LABEL_74;
            }
          }

          goto LABEL_71;
        }

        if (a2 <= 1023)
        {
          if (a2 == 256)
          {
            v4 = 3490524077;
            goto LABEL_74;
          }

          if (a2 == 512)
          {
            v4 = 2970405393;
            goto LABEL_74;
          }

          goto LABEL_71;
        }

        if (a2 != 1024)
        {
          if (a2 == 2048)
          {
            v4 = 562215634;
            goto LABEL_74;
          }

          goto LABEL_71;
        }

        v7 = 25858;
LABEL_87:
        v4 = v7 | 0xDEAD0000;
        goto LABEL_74;
      }

      if (a2 > 15)
      {
        if (a2 > 63)
        {
          if (a2 != 64)
          {
            if (a2 == 128)
            {
              v4 = 562215597;
              goto LABEL_74;
            }

            goto LABEL_71;
          }

          goto LABEL_78;
        }

        if (a2 == 16)
        {
LABEL_47:
          v4 = 3221229823;
          goto LABEL_74;
        }

        if (a2 == 32)
        {
LABEL_77:
          v7 = 4300;
          goto LABEL_87;
        }

LABEL_71:
        v8 = __clz(__rbit64(a2));
        if (a2)
        {
          v4 = v8;
        }

        else
        {
          v4 = -1;
        }

        goto LABEL_74;
      }

      if (a2 == 2)
      {
        v4 = 0;
        goto LABEL_74;
      }

      if (a2 == 4)
      {
LABEL_79:
        v4 = 2343432205;
        goto LABEL_74;
      }

      if (a2 != 8)
      {
        goto LABEL_71;
      }

LABEL_55:
      v7 = -1519;
      goto LABEL_87;
    }

    if (a1 == 0x100000)
    {
      if (a2 == 0x100000)
      {
        v4 = 1001;
        goto LABEL_74;
      }

      goto LABEL_71;
    }
  }

  else
  {
    if (a1 == 2)
    {
      if (a2 == 0x20000000000)
      {
        v4 = 100;
      }

      else
      {
        v6 = __clz(__rbit64(a2)) - 1;
        if (a2)
        {
          v4 = v6;
        }

        else
        {
          v4 = -2;
        }
      }

      goto LABEL_74;
    }

    if (a1 == 1024)
    {
      if (a2 > 255)
      {
        if (a2 <= 2047)
        {
          switch(a2)
          {
            case 256:
              v4 = 439025681;
              goto LABEL_74;
            case 512:
              v4 = 1539435073;
              goto LABEL_74;
            case 1024:
              v4 = 1539435076;
              goto LABEL_74;
          }
        }

        else if (a2 >= 0x2000)
        {
          if (a2 == 0x2000)
          {
            v4 = 3306925314;
            goto LABEL_74;
          }

          if (a2 == 0x4000)
          {
            v4 = 3306925315;
            goto LABEL_74;
          }
        }

        else
        {
          if (a2 == 2048)
          {
            v4 = 1539435077;
            goto LABEL_74;
          }

          if (a2 == 4096)
          {
            v4 = 3306925313;
            goto LABEL_74;
          }
        }

        goto LABEL_71;
      }

      if (a2 > 15)
      {
        if (a2 <= 63)
        {
          if (a2 != 16)
          {
            if (a2 == 32)
            {
              v4 = 4227595259;
              goto LABEL_74;
            }

            goto LABEL_71;
          }

LABEL_78:
          v4 = 732775916;
          goto LABEL_74;
        }

        if (a2 != 64)
        {
          if (a2 == 128)
          {
            v4 = 95805101;
            goto LABEL_74;
          }

          goto LABEL_71;
        }

        goto LABEL_77;
      }

      if (a2 != 2)
      {
        if (a2 != 4)
        {
          if (a2 == 8)
          {
            goto LABEL_47;
          }

          goto LABEL_71;
        }

        goto LABEL_79;
      }

      goto LABEL_55;
    }
  }

  if (!a1)
  {
    v3 = 0;
  }

  v5 = __clz(__rbit64(a2));
  if (a2)
  {
    v4 = v5;
  }

  else
  {
    v4 = -1;
  }

LABEL_74:
  v9 = exitReasonDisplayString(v3, v4);

  return v9;
}

uint64_t HTTerminationSubReasonShiftingForReason(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t HTTerminationExitCodeToSubReason(uint64_t a1, uint64_t a2)
{
  if (a1 < 0x8000)
  {
    if (a1 != 2)
    {
      if (a1 != 1024)
      {
        return 1 << a2;
      }

      if (a2 <= 3221229822)
      {
        if (a2 > 1539435072)
        {
          if (a2 <= 1539435076)
          {
            if (a2 != 1539435073)
            {
              if (a2 != 1539435076)
              {
                return 1 << a2;
              }

              return 1024;
            }

            return 512;
          }

          if (a2 != 1539435077)
          {
            if (a2 == 2343432205)
            {
              return 4;
            }

            return 1 << a2;
          }

          return 2048;
        }

        if (a2 != 95805101)
        {
          if (a2 != 439025681)
          {
            v8 = 732775916;
            goto LABEL_58;
          }

          return 256;
        }

        return 128;
      }

      if (a2 > 3306925314)
      {
        if (a2 <= 3735943696)
        {
          if (a2 != 3306925315)
          {
            v6 = 3735883980;
            goto LABEL_54;
          }

          return 0x4000;
        }

        if (a2 != 3735943697)
        {
          v7 = 4227595259;
          goto LABEL_50;
        }

        return 2;
      }

      if (a2 != 3221229823)
      {
        if (a2 != 3306925313)
        {
          if (a2 != 3306925314)
          {
            return 1 << a2;
          }

          return 0x2000;
        }

        return 4096;
      }

      return 8;
    }

    v2 = 2 << a2;
    v3 = a2 == 100;
    v4 = 0x20000000000;
    goto LABEL_14;
  }

  if (a1 != 0x8000)
  {
    if (a1 != 0x100000)
    {
      return 1 << a2;
    }

    v2 = 1 << a2;
    v3 = a2 == 1001;
    v4 = 0x100000;
LABEL_14:
    if (v3)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }

  if (a2 <= 2343432204)
  {
    if (a2 <= 562215633)
    {
      if (a2)
      {
        if (a2 != 97132013)
        {
          if (a2 != 562215597)
          {
            return 1 << a2;
          }

          return 128;
        }

        return 0x4000;
      }

      return 2;
    }

    if (a2 > 562215635)
    {
      if (a2 != 562215636)
      {
        v6 = 732775916;
LABEL_54:
        if (a2 == v6)
        {
          return 64;
        }

        return 1 << a2;
      }

      return 0x2000;
    }

    if (a2 == 562215634)
    {
      return 2048;
    }

    return 4096;
  }

  if (a2 > 3490524076)
  {
    if (a2 <= 3735905537)
    {
      if (a2 == 3490524077)
      {
        return 256;
      }

      v7 = 3735883980;
LABEL_50:
      if (a2 == v7)
      {
        return 32;
      }

      return 1 << a2;
    }

    if (a2 == 3735905538)
    {
      return 1024;
    }

    if (a2 != 3735943697)
    {
      return 1 << a2;
    }

    return 8;
  }

  if (a2 <= 2970726672)
  {
    if (a2 == 2343432205)
    {
      return 4;
    }

    if (a2 == 2970405393)
    {
      return 512;
    }

    return 1 << a2;
  }

  if (a2 != 2970726673)
  {
    v8 = 3221229823;
LABEL_58:
    if (a2 == v8)
    {
      return 16;
    }

    return 1 << a2;
  }

  return 0x8000;
}

id HTTerminationAllAvailableSubReasonsForReason(uint64_t a1)
{
  v1 = MEMORY[0x277CBEBF8];
  if (a1 >= 0x8000)
  {
    if (a1 < 0x400000)
    {
      if (a1 == 0x8000)
      {
        v2 = [MEMORY[0x277CBEB18] array];
        v29 = 2;
        do
        {
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v29];
          [v2 addObject:v30];

          v15 = v29 > 0x4000;
          v29 *= 2;
        }

        while (!v15);
        goto LABEL_65;
      }

      if (a1 == 0x40000)
      {
        v2 = [MEMORY[0x277CBEB18] array];
        v33 = 2;
        do
        {
          v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v33];
          [v2 addObject:v34];

          v5 = v33 >= 0x11;
          v33 *= 2;
        }

        while (!v5);
        goto LABEL_65;
      }

      if (a1 != 0x100000)
      {
        goto LABEL_66;
      }

      v2 = [MEMORY[0x277CBEB18] array];
      v10 = 2;
      do
      {
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
        [v2 addObject:v11];

        v5 = v10 >= 9;
        v10 *= 2;
      }

      while (!v5);
      v12 = &unk_28632AF70;
    }

    else
    {
      if (a1 <= 0x7FFFFFF)
      {
        if (a1 == 0x400000)
        {
          v2 = [MEMORY[0x277CBEB18] array];
          v20 = 2;
          do
          {
            v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
            [v2 addObject:v21];

            v5 = v20 >= 3;
            v20 *= 2;
          }

          while (!v5);
        }

        else
        {
          if (a1 != 0x800000)
          {
            goto LABEL_66;
          }

          v2 = [MEMORY[0x277CBEB18] array];
          v6 = 2;
          do
          {
            v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
            [v2 addObject:v7];

            v5 = v6 >= 0x11;
            v6 *= 2;
          }

          while (!v5);
        }

        goto LABEL_65;
      }

      if (a1 == 0x8000000)
      {
        v2 = [MEMORY[0x277CBEB18] array];
        v24 = 2;
        do
        {
          v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
          [v2 addObject:v25];

          v5 = v24 >= 5;
          v24 *= 2;
        }

        while (!v5);
        goto LABEL_65;
      }

      if (a1 != 0x100000000)
      {
        goto LABEL_66;
      }

      v2 = [MEMORY[0x277CBEB18] array];
      v16 = 2;
      do
      {
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
        [v2 addObject:v17];

        v15 = v16 > 0x2000;
        v16 *= 2;
      }

      while (!v15);
      [v2 addObject:&unk_28632AF70];
      v12 = &unk_28632AF88;
    }
  }

  else if (a1 <= 63)
  {
    if (a1 != 2)
    {
      if (a1 == 4)
      {
        v2 = [MEMORY[0x277CBEB18] array];
        v31 = 2;
        do
        {
          v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
          [v2 addObject:v32];

          v5 = v31 >= 0x40000001;
          v31 *= 2;
        }

        while (!v5);
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_66;
        }

        v2 = [MEMORY[0x277CBEB18] array];
        v8 = 2;
        do
        {
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
          [v2 addObject:v9];

          v5 = v8 >= 9;
          v8 *= 2;
        }

        while (!v5);
      }

      goto LABEL_65;
    }

    v2 = [MEMORY[0x277CBEB18] array];
    v26 = 2;
    do
    {
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v26];
      [v2 addObject:v27];

      v15 = v26 > 0x20000;
      v26 *= 2;
    }

    while (!v15);
    v12 = &unk_28632AF40;
  }

  else
  {
    if (a1 > 511)
    {
      if (a1 == 512)
      {
        v2 = [MEMORY[0x277CBEB18] array];
        v22 = 2;
        do
        {
          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v22];
          [v2 addObject:v23];

          v15 = v22 > 0x40000;
          v22 *= 2;
        }

        while (!v15);
      }

      else
      {
        if (a1 != 1024)
        {
          goto LABEL_66;
        }

        v2 = [MEMORY[0x277CBEB18] array];
        v13 = 2;
        do
        {
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
          [v2 addObject:v14];

          v15 = v13 > 0x2000;
          v13 *= 2;
        }

        while (!v15);
      }

      goto LABEL_65;
    }

    if (a1 != 64)
    {
      if (a1 != 128)
      {
        goto LABEL_66;
      }

      v2 = [MEMORY[0x277CBEB18] array];
      v3 = 2;
      do
      {
        v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3];
        [v2 addObject:v4];

        v5 = v3 >= 0x101;
        v3 *= 2;
      }

      while (!v5);
      goto LABEL_65;
    }

    v2 = [MEMORY[0x277CBEB18] array];
    v18 = 2;
    do
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18];
      [v2 addObject:v19];

      v5 = v18 >= 0x41;
      v18 *= 2;
    }

    while (!v5);
    v12 = &unk_28632AF58;
  }

  [v2 addObject:v12];
LABEL_65:
  v1 = [v2 copy];

LABEL_66:

  return v1;
}

void HTAnalyticsSendEventLazy(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v5 = getAnalyticsSendEventLazySymbolLoc_ptr;
  v11 = getAnalyticsSendEventLazySymbolLoc_ptr;
  if (!getAnalyticsSendEventLazySymbolLoc_ptr)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getAnalyticsSendEventLazySymbolLoc_block_invoke;
    v7[3] = &unk_2796A9020;
    v7[4] = &v8;
    __getAnalyticsSendEventLazySymbolLoc_block_invoke(v7);
    v5 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v5)
  {
    v6 = HTAnalyticsSendEventLazy_cold_1();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  v5(v3, v4);
}

uint64_t CoreAnalyticsLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    CoreAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = CoreAnalyticsLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreAnalyticsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getAnalyticsSendEventLazySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAnalyticsLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAnalyticsSendEventLazySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HTLevelForHangDuration(double a1)
{
  v2 = [MEMORY[0x277D0FA28] sharedPrefs];
  v3 = [v2 runloopHangTimeoutDurationMSec];

  if (v3 * 0.555555556 <= a1)
  {
    return 2;
  }

  else
  {
    return v3 * 0.222222222 <= a1;
  }
}

id stringFromXpcDictionary(void *a1, id a2)
{
  v4 = a2;
  v5 = a1;
  string = xpc_dictionary_get_string(v5, [a2 UTF8String]);

  if (string)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_2510B34F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id location, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __requestWithLogFile_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dataUsingEncoding:4];
  [v2 appendData:v3];
}

Class __getNEVPNManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!NetworkExtensionLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __NetworkExtensionLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2796A91D0;
    v7 = 0;
    NetworkExtensionLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (NetworkExtensionLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("NEVPNManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNEVPNManagerClass_block_invoke_cold_1();
  }

  getNEVPNManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __NetworkExtensionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NetworkExtensionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2510B4C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45)
{
  _Block_object_dispose(&a40, 8);
  objc_destroyWeak(&a45);
  _Unwind_Resume(a1);
}

id getDataTypePaths()
{
  if (getDataTypePaths_onceToken != -1)
  {
    getDataTypePaths_cold_1();
  }

  v1 = getDataTypePaths__dataPathsArray;

  return v1;
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getDataTypePaths_block_invoke()
{
  v3 = objc_opt_new();
  for (i = 0; i != 3; ++i)
  {
    [v3 addObject:off_2796A9388[_kAllHangsDataTypes[i]]];
  }

  v1 = [MEMORY[0x277CBEA60] arrayWithArray:v3];
  v2 = getDataTypePaths__dataPathsArray;
  getDataTypePaths__dataPathsArray = v1;
}

uint64_t __filterDeveloperAppsPredicate_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 processRecord];
  if (v3)
  {
    v4 = [v2 processRecord];
    v5 = [v4 isDeveloperApp];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_2510B6EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id savedSettingPrefixedDefaultsKey(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *MEMORY[0x277D0FAA8];
  v3 = keyWithPrefix(a1, *MEMORY[0x277D0FAB0]);
  v4 = [v1 stringWithFormat:@"%@.%@", v2, v3];

  return v4;
}

uint64_t HTDeveloperSettingsIsInternalBuild()
{
  v0 = [MEMORY[0x277D0FA28] sharedPrefs];
  v1 = [v0 isInternal];

  return v1;
}

void __bootSessionUUID_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  v3 = 37;
  if (!sysctlbyname("kern.bootsessionuuid", v4, &v3, 0, 0))
  {
    v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    v1 = bootSessionUUID_bootUUID;
    bootSessionUUID_bootUUID = v0;
  }

  v2 = *MEMORY[0x277D85DE8];
}

id shared_ht_log_handle()
{
  if (shared_ht_log_handle_onceToken != -1)
  {
    shared_ht_log_handle_cold_1();
  }

  v1 = shared_ht_log_handle___ht_log_handle;

  return v1;
}

uint64_t __shared_ht_log_handle_block_invoke()
{
  shared_ht_log_handle___ht_log_handle = os_log_create("com.apple.hangtracer", "");

  return MEMORY[0x2821F96F8]();
}

uint64_t applyTailspinConfig(uint64_t a1)
{
  v2 = shared_ht_log_handle();
  v3 = v2;
  if (a1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2510AF000, v3, OS_LOG_TYPE_DEFAULT, "ApplyTailspinConfig: change tailspin config", v12, 2u);
    }

    return tailspin_config_apply_sync();
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      applyTailspinConfig_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
    }

    return 0;
  }
}

uint64_t configureTailspinForSelfEnableConfig()
{
  v0 = shared_ht_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    configureTailspinForSelfEnableConfig_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  return 0;
}

uint64_t configureTailspinForEPL()
{
  v0 = shared_ht_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    configureTailspinForEPL_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  return 0;
}

uint64_t configureTailspinForThirdPartyDevelopment(int a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = arrayOfCFPrefsWithPrefix(*MEMORY[0x277D0FA18], *MEMORY[0x277D0FB48], *MEMORY[0x277D0FAA0]);
  v3 = [v2 count];

  if (v3)
  {
    v4 = shared_ht_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "configureTailspinForThirdPartyDevelopment";
      _os_log_impl(&dword_2510AF000, v4, OS_LOG_TYPE_INFO, "%s: Not configuring tailspin since EPL is active", &v11, 0xCu);
    }

LABEL_10:

    v10 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v5 = tailspin_config_create_with_default_config();
  if (!v5)
  {
    v4 = shared_ht_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      configureTailspinForThirdPartyDevelopment_cold_1(v4);
    }

    goto LABEL_10;
  }

  v6 = v5;
  if (a1)
  {
    tailspin_enabled_set();
    tailspin_buffer_size_set();
    tailspin_oncore_sampling_period_set();
    tailspin_full_sampling_period_set();
  }

  v7 = applyTailspinConfig(v6);
  MEMORY[0x25306A4A0](v6);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id HTSettingsBundle()
{
  v0 = HTSettingsBundle_bundle;
  if (!HTSettingsBundle_bundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = HTSettingsBundle_bundle;
    HTSettingsBundle_bundle = v1;

    v0 = HTSettingsBundle_bundle;
  }

  return v0;
}

id HTUISettingsGroupTitle()
{
  v0 = HTUISettingsGroupTitle_str;
  if (!HTUISettingsGroupTitle_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Performance Testing" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUISettingsGroupTitle_str;
    HTUISettingsGroupTitle_str = v2;

    v0 = HTUISettingsGroupTitle_str;
  }

  return v0;
}

id HTUISettingsTitle()
{
  v0 = HTUISettingsTitle_str;
  if (!HTUISettingsTitle_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Hang Detection" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUISettingsTitle_str;
    HTUISettingsTitle_str = v2;

    v0 = HTUISettingsTitle_str;
  }

  return v0;
}

id HTUIActivationToggleTitle()
{
  v0 = HTUIActivationToggleTitle_str;
  if (!HTUIActivationToggleTitle_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Enable Hang Detection" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUIActivationToggleTitle_str;
    HTUIActivationToggleTitle_str = v2;

    v0 = HTUIActivationToggleTitle_str;
  }

  return v0;
}

id HTUIActivationToggleFooterPartJoiner_Part1_Part2()
{
  v0 = HTUIActivationToggleFooterPartJoiner_Part1_Part2_str;
  if (!HTUIActivationToggleFooterPartJoiner_Part1_Part2_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"HTUIActivationToggleFooterPartJoiner" value:@"%@ %@" table:&stru_286326598];
    v3 = HTUIActivationToggleFooterPartJoiner_Part1_Part2_str;
    HTUIActivationToggleFooterPartJoiner_Part1_Part2_str = v2;

    v0 = HTUIActivationToggleFooterPartJoiner_Part1_Part2_str;
  }

  return v0;
}

id HTUIActivationToggleFooterPart1()
{
  v0 = HTUIActivationToggleFooterPart1_string;
  if (!HTUIActivationToggleFooterPart1_string)
  {
    v1 = MEMORY[0x277CCACA8];
    v2 = HTSettingsBundle();
    v3 = [v2 localizedStringForKey:@"HTUIActivationToggleFooterPart1" value:@"Detect and capture diagnostic logs for hangs greater than %ld milliseconds in monitored apps." table:&stru_286326598];
    v4 = [v1 localizedStringWithFormat:v3, 250];
    v5 = HTUIActivationToggleFooterPart1_string;
    HTUIActivationToggleFooterPart1_string = v4;

    v0 = HTUIActivationToggleFooterPart1_string;
  }

  return v0;
}

id HTUIActivationToggleFooterPart2()
{
  v0 = HTUIActivationToggleFooterPart2_str;
  if (!HTUIActivationToggleFooterPart2_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"HTUIActivationToggleFooterPart2" value:@"Learn More…" table:&stru_286326598];
    v3 = HTUIActivationToggleFooterPart2_str;
    HTUIActivationToggleFooterPart2_str = v2;

    v0 = HTUIActivationToggleFooterPart2_str;
  }

  return v0;
}

id HTUIActivationToggleFooterShort()
{
  v0 = HTUIActivationToggleFooterShort_str;
  if (!HTUIActivationToggleFooterShort_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"HTUIActivationToggleFooterShort" value:@"Detect and capture diagnostics for hangs in monitored apps. [Learn More…](https://apple.com)" table:&stru_286326598];
    v3 = HTUIActivationToggleFooterShort_str;
    HTUIActivationToggleFooterShort_str = v2;

    v0 = HTUIActivationToggleFooterShort_str;
  }

  return v0;
}

id HTUIThresholdFooter()
{
  v0 = HTUIThresholdFooter_string;
  if (!HTUIThresholdFooter_string)
  {
    v1 = MEMORY[0x277CCACA8];
    v2 = HTSettingsBundle();
    v3 = [v2 localizedStringForKey:@"Detect hangs crossing this duration threshold.\nThe default is %ld milliseconds." value:&stru_286326598 table:&stru_286326598];
    v4 = [v1 localizedStringWithFormat:v3, 500];
    v5 = HTUIThresholdFooter_string;
    HTUIThresholdFooter_string = v4;

    v0 = HTUIThresholdFooter_string;
  }

  return v0;
}

__CFString *HTUIInternalRedirect()
{
  v1 = HTUIInternalRedirect_str;
  if (HTUIInternalRedirect_str)
  {
  }

  else
  {
    HTUIInternalRedirect_str = @"\n\nINTERNAL: Hang detection is enabled for all apps on internal builds. Open *Internal Settings* to turn on the HUD and see recent hang logs.";

    v1 = @"\n\nINTERNAL: Hang detection is enabled for all apps on internal builds. Open *Internal Settings* to turn on the HUD and see recent hang logs.";
  }

  return v1;
}

id HTUILogsSectionTitle()
{
  v0 = HTUILogsSectionTitle_str;
  if (!HTUILogsSectionTitle_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Available Hang Logs" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUILogsSectionTitle_str;
    HTUILogsSectionTitle_str = v2;

    v0 = HTUILogsSectionTitle_str;
  }

  return v0;
}

id HTUIAppsSectionTitle()
{
  v0 = HTUIAppsSectionTitle_str;
  if (!HTUIAppsSectionTitle_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Monitored Apps" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUIAppsSectionTitle_str;
    HTUIAppsSectionTitle_str = v2;

    v0 = HTUIAppsSectionTitle_str;
  }

  return v0;
}

id HTUIAppsSectionFooter()
{
  v0 = HTUIAppsSectionFooter_str;
  if (!HTUIAppsSectionFooter_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Only apps installed by Xcode value:by TestFlight table:{or via the enterprise program are monitored for hangs.", &stru_286326598, &stru_286326598}];
    v3 = HTUIAppsSectionFooter_str;
    HTUIAppsSectionFooter_str = v2;

    v0 = HTUIAppsSectionFooter_str;
  }

  return v0;
}

__CFString *HTUIAppsSectionFooterInternal()
{
  v1 = HTUIAppsSectionFooterInternal_str;
  if (HTUIAppsSectionFooterInternal_str)
  {
  }

  else
  {
    HTUIAppsSectionFooterInternal_str = @"All apps are monitored on internal builds.";

    v1 = @"All apps are monitored on internal builds.";
  }

  return v1;
}

id HTUILogsThresholdSelectorTitle()
{
  v0 = HTUILogsThresholdSelectorTitle_str;
  if (!HTUILogsThresholdSelectorTitle_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Hang Threshold" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUILogsThresholdSelectorTitle_str;
    HTUILogsThresholdSelectorTitle_str = v2;

    v0 = HTUILogsThresholdSelectorTitle_str;
  }

  return v0;
}

id HTUIDurationLabel()
{
  v0 = HTUIDurationLabel_str;
  if (!HTUIDurationLabel_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Duration" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUIDurationLabel_str;
    HTUIDurationLabel_str = v2;

    v0 = HTUIDurationLabel_str;
  }

  return v0;
}

id HTUITimestampLabel()
{
  v0 = HTUITimestampLabel_str;
  if (!HTUITimestampLabel_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Timestamp" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUITimestampLabel_str;
    HTUITimestampLabel_str = v2;

    v0 = HTUITimestampLabel_str;
  }

  return v0;
}

id HTUIFileFormatTailspin()
{
  v0 = HTUIFileFormatTailspin_str;
  if (!HTUIFileFormatTailspin_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Tailspin" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUIFileFormatTailspin_str;
    HTUIFileFormatTailspin_str = v2;

    v0 = HTUIFileFormatTailspin_str;
  }

  return v0;
}

id HTUIFileFormatSpindump()
{
  v0 = HTUIFileFormatSpindump_str;
  if (!HTUIFileFormatSpindump_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Spindump" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUIFileFormatSpindump_str;
    HTUIFileFormatSpindump_str = v2;

    v0 = HTUIFileFormatSpindump_str;
  }

  return v0;
}

id HTUIFileFormatSpindumpSymbolicated()
{
  v0 = HTUIFileFormatSpindumpSymbolicated_str;
  if (!HTUIFileFormatSpindumpSymbolicated_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Spindump (Symbolicated)" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUIFileFormatSpindumpSymbolicated_str;
    HTUIFileFormatSpindumpSymbolicated_str = v2;

    v0 = HTUIFileFormatSpindumpSymbolicated_str;
  }

  return v0;
}

id HTUIPlaceholderUnknownProcess()
{
  v0 = HTUIPlaceholderUnknownProcess_str;
  if (!HTUIPlaceholderUnknownProcess_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Unknown Process" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUIPlaceholderUnknownProcess_str;
    HTUIPlaceholderUnknownProcess_str = v2;

    v0 = HTUIPlaceholderUnknownProcess_str;
  }

  return v0;
}

id HTUIPlaceholderNoLogs()
{
  v0 = HTUIPlaceholderNoLogs_str;
  if (!HTUIPlaceholderNoLogs_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"No hangs detected" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUIPlaceholderNoLogs_str;
    HTUIPlaceholderNoLogs_str = v2;

    v0 = HTUIPlaceholderNoLogs_str;
  }

  return v0;
}

id HTUIPlaceholderNoApps()
{
  v0 = HTUIPlaceholderNoApps_str;
  if (!HTUIPlaceholderNoApps_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"No monitored apps" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUIPlaceholderNoApps_str;
    HTUIPlaceholderNoApps_str = v2;

    v0 = HTUIPlaceholderNoApps_str;
  }

  return v0;
}

id HTUISelectButton()
{
  v0 = HTUISelectButton_str;
  if (!HTUISelectButton_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Select" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUISelectButton_str;
    HTUISelectButton_str = v2;

    v0 = HTUISelectButton_str;
  }

  return v0;
}

id HTUIShareButton()
{
  v0 = HTUIShareButton_str;
  if (!HTUIShareButton_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Share" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUIShareButton_str;
    HTUIShareButton_str = v2;

    v0 = HTUIShareButton_str;
  }

  return v0;
}

__CFString *HTUISymbolicateFileButton()
{
  v1 = HTUISymbolicateFileButton_str;
  if (HTUISymbolicateFileButton_str)
  {
  }

  else
  {
    HTUISymbolicateFileButton_str = @"Symbolicate";

    v1 = @"Symbolicate";
  }

  return v1;
}

__CFString *HTUISeeSymbolicatedFileButton()
{
  v1 = HTUISeeSymbolicatedFileButton_str;
  if (HTUISeeSymbolicatedFileButton_str)
  {
  }

  else
  {
    HTUISeeSymbolicatedFileButton_str = @"View Symbolicated Log";

    v1 = @"View Symbolicated Log";
  }

  return v1;
}

id HTUIFetchingAppsErrorTitle()
{
  v0 = HTUIFetchingAppsErrorTitle_str;
  if (!HTUIFetchingAppsErrorTitle_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Unable to load apps" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUIFetchingAppsErrorTitle_str;
    HTUIFetchingAppsErrorTitle_str = v2;

    v0 = HTUIFetchingAppsErrorTitle_str;
  }

  return v0;
}

id HTUIFetchingAppsErrorMessage()
{
  v0 = HTUIFetchingAppsErrorMessage_str;
  if (!HTUIFetchingAppsErrorMessage_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"There was an error trying to fetch the list of developer apps that are currently being monitored." value:&stru_286326598 table:&stru_286326598];
    v3 = HTUIFetchingAppsErrorMessage_str;
    HTUIFetchingAppsErrorMessage_str = v2;

    v0 = HTUIFetchingAppsErrorMessage_str;
  }

  return v0;
}

id HTUIFetchingHangsErrorTitle()
{
  v0 = HTUIFetchingHangsErrorTitle_str;
  if (!HTUIFetchingHangsErrorTitle_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"Unable to load hang events" value:&stru_286326598 table:&stru_286326598];
    v3 = HTUIFetchingHangsErrorTitle_str;
    HTUIFetchingHangsErrorTitle_str = v2;

    v0 = HTUIFetchingHangsErrorTitle_str;
  }

  return v0;
}

id HTUIFetchingHangsErrorMessage()
{
  v0 = HTUIFetchingHangsErrorMessage_str;
  if (!HTUIFetchingHangsErrorMessage_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"There was an error trying to find the list of hangs that occurred recently." value:&stru_286326598 table:&stru_286326598];
    v3 = HTUIFetchingHangsErrorMessage_str;
    HTUIFetchingHangsErrorMessage_str = v2;

    v0 = HTUIFetchingHangsErrorMessage_str;
  }

  return v0;
}

id HTUIDialogCancelButton()
{
  v0 = HTUIDialogCancelButton_str;
  if (!HTUIDialogCancelButton_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"HTUIDialogCancelButton" value:@"Cancel" table:&stru_286326598];
    v3 = HTUIDialogCancelButton_str;
    HTUIDialogCancelButton_str = v2;

    v0 = HTUIDialogCancelButton_str;
  }

  return v0;
}

id HTUIDialogOKButton()
{
  v0 = HTUIDialogOKButton_str;
  if (!HTUIDialogOKButton_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"HTUIDialogOKButton" value:@"OK" table:&stru_286326598];
    v3 = HTUIDialogOKButton_str;
    HTUIDialogOKButton_str = v2;

    v0 = HTUIDialogOKButton_str;
  }

  return v0;
}

id HTUILearnMoreTitle()
{
  v0 = HTUILearnMoreTitle_str;
  if (!HTUILearnMoreTitle_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"LearnMore_00" value:@"About Hang Detection" table:&stru_286326598];
    v3 = HTUILearnMoreTitle_str;
    HTUILearnMoreTitle_str = v2;

    v0 = HTUILearnMoreTitle_str;
  }

  return v0;
}

id HTUILearnMoreWhatAreHangsTitle()
{
  v0 = HTUILearnMoreWhatAreHangsTitle_str;
  if (!HTUILearnMoreWhatAreHangsTitle_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"LearnMore_01" value:@"Hang Detection" table:&stru_286326598];
    v3 = HTUILearnMoreWhatAreHangsTitle_str;
    HTUILearnMoreWhatAreHangsTitle_str = v2;

    v0 = HTUILearnMoreWhatAreHangsTitle_str;
  }

  return v0;
}

id HTUILearnMoreWhatAreHangsContent()
{
  v0 = HTUILearnMoreWhatAreHangsContent_str;
  if (!HTUILearnMoreWhatAreHangsContent_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"LearnMore_02" value:@"A hang occurs when the main thread of an app becomes unresponsive table:{and is unable to process user interactions or updates to the UI. When you turn on Hang Detection, iOS monitors responsiveness in your app and generates diagnostics to help identify parts of your app that spend too much time on the main thread after initial frame rendering. This feature supports apps installed directly through Xcode and signed with a development certificate, beta versions of apps you install with TestFlight, and apps distributed through the enterprise program.\n\nHang Detection is only available while the device is in Developer Mode.", &stru_286326598}];
    v3 = HTUILearnMoreWhatAreHangsContent_str;
    HTUILearnMoreWhatAreHangsContent_str = v2;

    v0 = HTUILearnMoreWhatAreHangsContent_str;
  }

  return v0;
}

id HTUILearnMoreHUDTitle()
{
  v0 = HTUILearnMoreHUDTitle_str;
  if (!HTUILearnMoreHUDTitle_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"LearnMore_03" value:@"Overlay" table:&stru_286326598];
    v3 = HTUILearnMoreHUDTitle_str;
    HTUILearnMoreHUDTitle_str = v2;

    v0 = HTUILearnMoreHUDTitle_str;
  }

  return v0;
}

id HTUILearnMoreHUDContent()
{
  v0 = HTUILearnMoreHUDContent_str;
  if (!HTUILearnMoreHUDContent_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"LearnMore_04" value:@"When a hang occurs in a monitored app table:{an overlay appears at the top of the screen indicating how much time has elapsed since the app became unresponsive. Hang Detection stops monitoring hangs that exceed 10 seconds, and captures diagnostics to record the beginning of the hang.\n\nUsing this overlay is a great way to differentiate hangs from functional issues with similar symptoms, and helps you keep track of your app’s responsiveness while testing.", &stru_286326598}];
    v3 = HTUILearnMoreHUDContent_str;
    HTUILearnMoreHUDContent_str = v2;

    v0 = HTUILearnMoreHUDContent_str;
  }

  return v0;
}

id HTUILearnMoreLogLimitTitle()
{
  v0 = HTUILearnMoreLogLimitTitle_str;
  if (!HTUILearnMoreLogLimitTitle_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"LearnMore_05" value:@"Diagnostic Logs" table:&stru_286326598];
    v3 = HTUILearnMoreLogLimitTitle_str;
    HTUILearnMoreLogLimitTitle_str = v2;

    v0 = HTUILearnMoreLogLimitTitle_str;
  }

  return v0;
}

id HTUILearnMoreLogLimitContent()
{
  v0 = HTUILearnMoreLogLimitContent_str;
  if (!HTUILearnMoreLogLimitContent_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"LearnMore_06" value:@"Hang Detection automatically collects diagnostic logs. Log processing occurs in the background at a low priority and may take longer if the system is busy. When logs are available for sharing with others table:{Notification Center displays a passive notification. Note that logs are a best effort and Hang Detection may not create logs for every hang.", &stru_286326598}];
    v3 = HTUILearnMoreLogLimitContent_str;
    HTUILearnMoreLogLimitContent_str = v2;

    v0 = HTUILearnMoreLogLimitContent_str;
  }

  return v0;
}

id HTUILearnMoreFileTypesTitle()
{
  v0 = HTUILearnMoreFileTypesTitle_str;
  if (!HTUILearnMoreFileTypesTitle_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"LearnMore_07" value:@"Each hang event generates two files:" table:&stru_286326598];
    v3 = HTUILearnMoreFileTypesTitle_str;
    HTUILearnMoreFileTypesTitle_str = v2;

    v0 = HTUILearnMoreFileTypesTitle_str;
  }

  return v0;
}

id HTUILearnMoreFileTypesIPS()
{
  v0 = HTUILearnMoreFileTypesIPS_str;
  if (!HTUILearnMoreFileTypesIPS_str)
  {
    v1 = HTSettingsBundle();
    v2 = objc_claimAutoreleasedReturnValue();
    v3 = HTUILearnMoreFileTypesIPS_str;
    HTUILearnMoreFileTypesIPS_str = v2;

    v0 = HTUILearnMoreFileTypesIPS_str;
  }

  return v0;
}

id HTUILearnMoreFileTypesTailspin()
{
  v0 = HTUILearnMoreFileTypesTailspin_str;
  if (!HTUILearnMoreFileTypesTailspin_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"LearnMore_09" value:@"A tailspin file you can open in Instruments to view detailed thread interaction within your app’s process and overall usage of system resources at the time of the hang." table:&stru_286326598];
    v3 = HTUILearnMoreFileTypesTailspin_str;
    HTUILearnMoreFileTypesTailspin_str = v2;

    v0 = HTUILearnMoreFileTypesTailspin_str;
  }

  return v0;
}

id HTUILearnMoreFileTypesShare()
{
  v0 = HTUILearnMoreFileTypesShare_str;
  if (!HTUILearnMoreFileTypesShare_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"LearnMore_10" value:@"You can share both files to your Mac or send them to the app developer for further analysis." table:&stru_286326598];
    v3 = HTUILearnMoreFileTypesShare_str;
    HTUILearnMoreFileTypesShare_str = v2;

    v0 = HTUILearnMoreFileTypesShare_str;
  }

  return v0;
}

id HTUILearnMoreURLPrefix()
{
  v0 = HTUILearnMoreURLPrefix_str;
  if (!HTUILearnMoreURLPrefix_str)
  {
    v1 = HTSettingsBundle();
    v2 = [v1 localizedStringForKey:@"LearnMore_11" value:@"Learn more about Hangs at" table:&stru_286326598];
    v3 = HTUILearnMoreURLPrefix_str;
    HTUILearnMoreURLPrefix_str = v2;

    v0 = HTUILearnMoreURLPrefix_str;
  }

  return v0;
}

__CFString *HTUILearnMoreURL()
{
  v1 = HTUILearnMoreURL_str;
  if (HTUILearnMoreURL_str)
  {
  }

  else
  {
    HTUILearnMoreURL_str = @"https://developer.apple.com/documentation/xcode/improving-app-responsiveness";

    v1 = @"https://developer.apple.com/documentation/xcode/improving-app-responsiveness";
  }

  return v1;
}

__CFString *HTUIInternalSettingsTitle()
{
  v1 = HTUIInternalSettingsTitle_str;
  if (HTUIInternalSettingsTitle_str)
  {
  }

  else
  {
    HTUIInternalSettingsTitle_str = @"HangTracer";

    v1 = @"HangTracer";
  }

  return v1;
}

__CFString *HTUIInternalIntro()
{
  v1 = HTUIInternalIntro_str;
  if (HTUIInternalIntro_str)
  {
  }

  else
  {
    HTUIInternalIntro_str = @"HangTracer monitors the main thread in foreground apps and captures diagnostics.";

    v1 = @"HangTracer monitors the main thread in foreground apps and captures diagnostics.";
  }

  return v1;
}

__CFString *HTUIInternalHUDTitle()
{
  v1 = HTUIInternalHUDTitle_str;
  if (HTUIInternalHUDTitle_str)
  {
  }

  else
  {
    HTUIInternalHUDTitle_str = @"Heads-Up Display";

    v1 = @"Heads-Up Display";
  }

  return v1;
}

__CFString *HTUIInternalToggleTitle()
{
  v1 = HTUIInternalToggleTitle_str;
  if (HTUIInternalToggleTitle_str)
  {
  }

  else
  {
    HTUIInternalToggleTitle_str = @"HangTracer HUD";

    v1 = @"HangTracer HUD";
  }

  return v1;
}

id HTUIInternalThresholdFooter()
{
  v0 = HTUIInternalThresholdFooter_string;
  if (!HTUIInternalThresholdFooter_string)
  {
    v1 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"Turn on the Heads-Up Display to be notified when apps are unresponsive to input. Increase the %ldms threshold to focus on the most critical hangs.", 500];
    v2 = HTUIInternalThresholdFooter_string;
    HTUIInternalThresholdFooter_string = v1;

    v0 = HTUIInternalThresholdFooter_string;
  }

  return v0;
}

__CFString *HTUIInternalIntroWithProcessTerminations()
{
  v1 = HTUIInternalIntroWithProcessTerminations_str;
  if (HTUIInternalIntroWithProcessTerminations_str)
  {
  }

  else
  {
    HTUIInternalIntroWithProcessTerminations_str = @"Get further insights into system stability with the *Process Terminations HUD*.";

    v1 = @"Get further insights into system stability with the *Process Terminations HUD*.";
  }

  return v1;
}

__CFString *HTUISymbolicating()
{
  v1 = HTUISymbolicating_str;
  if (HTUISymbolicating_str)
  {
  }

  else
  {
    HTUISymbolicating_str = @"Symbolicating…";

    v1 = @"Symbolicating…";
  }

  return v1;
}

__CFString *HTUISymbolicationErrorTitle()
{
  v1 = HTUISymbolicationErrorTitle_str;
  if (HTUISymbolicationErrorTitle_str)
  {
  }

  else
  {
    HTUISymbolicationErrorTitle_str = @"Unable to symbolicate log";

    v1 = @"Unable to symbolicate log";
  }

  return v1;
}

__CFString *HTUISymbolicationErrorMessage()
{
  v1 = HTUISymbolicationErrorMessage_str;
  if (HTUISymbolicationErrorMessage_str)
  {
  }

  else
  {
    HTUISymbolicationErrorMessage_str = @"There was an error trying to symbolicate the log file. Ensure that you are connected to the internal network and try again.";

    v1 = @"There was an error trying to symbolicate the log file. Ensure that you are connected to the internal network and try again.";
  }

  return v1;
}

__CFString *HTUISymbolicationErrorButton_VPNName()
{
  v1 = HTUISymbolicationErrorButton_VPNName_str;
  if (HTUISymbolicationErrorButton_VPNName_str)
  {
  }

  else
  {
    HTUISymbolicationErrorButton_VPNName_str = @"Turn On %@";

    v1 = @"Turn On %@";
  }

  return v1;
}

__CFString *HTUIInternalForceQuitsTitle()
{
  v1 = HTUIInternalForceQuitsTitle_str;
  if (HTUIInternalForceQuitsTitle_str)
  {
  }

  else
  {
    HTUIInternalForceQuitsTitle_str = @"Force-Quit Detection";

    v1 = @"Force-Quit Detection";
  }

  return v1;
}

__CFString *HTUIInternalForceQuitsToggleTitle()
{
  v1 = HTUIInternalForceQuitsToggleTitle_str;
  if (HTUIInternalForceQuitsToggleTitle_str)
  {
  }

  else
  {
    HTUIInternalForceQuitsToggleTitle_str = @"Detect Force-Quit Apps";

    v1 = @"Detect Force-Quit Apps";
  }

  return v1;
}

__CFString *HTUIInternalForceQuitsFooterOFF()
{
  v1 = HTUIInternalForceQuitsFooterOFF_str;
  if (HTUIInternalForceQuitsFooterOFF_str)
  {
  }

  else
  {
    HTUIInternalForceQuitsFooterOFF_str = @"Receive a notification and capture tailspin logs each time you quit and relaunch an app. Report any app issue right from the notification.";

    v1 = @"Receive a notification and capture tailspin logs each time you quit and relaunch an app. Report any app issue right from the notification.";
  }

  return v1;
}

id HTUIInternalForceQuitsFooterON()
{
  v0 = HTUIInternalForceQuitsFooterON_string;
  if (!HTUIInternalForceQuitsFooterON_string)
  {
    v1 = MEMORY[0x277CCACA8];
    v2 = HTUIInternalForceQuitsFooterOFF();
    v3 = [v1 localizedStringWithFormat:@"%@\n\nOnly apps force-quit and relaunched within this duration will be detected. The default is %d seconds.", v2, 3];
    v4 = HTUIInternalForceQuitsFooterON_string;
    HTUIInternalForceQuitsFooterON_string = v3;

    v0 = HTUIInternalForceQuitsFooterON_string;
  }

  return v0;
}

__CFString *HTUIInternalForceQuitsProcessTerminationsLink()
{
  v1 = HTUIInternalForceQuitsProcessTerminationsLink_str;
  if (HTUIInternalForceQuitsProcessTerminationsLink_str)
  {
  }

  else
  {
    HTUIInternalForceQuitsProcessTerminationsLink_str = @"See *Process Terminations* to get an indication when background processes exit.";

    v1 = @"See *Process Terminations* to get an indication when background processes exit.";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsTitle()
{
  v1 = HTUIInternalTerminationsTitle_str;
  if (HTUIInternalTerminationsTitle_str)
  {
  }

  else
  {
    HTUIInternalTerminationsTitle_str = @"Process Terminations";

    v1 = @"Process Terminations";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsToggleTitle()
{
  v1 = HTUIInternalTerminationsToggleTitle_str;
  if (HTUIInternalTerminationsToggleTitle_str)
  {
  }

  else
  {
    HTUIInternalTerminationsToggleTitle_str = @"Process Terminations HUD";

    v1 = @"Process Terminations HUD";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsFooter()
{
  v1 = HTUIInternalTerminationsFooter_str;
  if (HTUIInternalTerminationsFooter_str)
  {
  }

  else
  {
    HTUIInternalTerminationsFooter_str = @"Show process terminations in the Heads-Up Display to monitor system stability in real-time.\nSelect which processes and termination reasons are included in the HUD.\n\nGet further insights into app performance with the *HangTracer HUD*.";

    v1 = @"Show process terminations in the Heads-Up Display to monitor system stability in real-time.\nSelect which processes and termination reasons are included in the HUD.\n\nGet further insights into app performance with the *HangTracer HUD*.";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsProcessesTitle()
{
  v1 = HTUIInternalTerminationsProcessesTitle_str;
  if (HTUIInternalTerminationsProcessesTitle_str)
  {
  }

  else
  {
    HTUIInternalTerminationsProcessesTitle_str = @"Monitored Processes";

    v1 = @"Monitored Processes";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsAllProcessesToggle()
{
  v1 = HTUIInternalTerminationsAllProcessesToggle_str;
  if (HTUIInternalTerminationsAllProcessesToggle_str)
  {
  }

  else
  {
    HTUIInternalTerminationsAllProcessesToggle_str = @"All Processes";

    v1 = @"All Processes";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsCriticalProcessesToggle()
{
  v1 = HTUIInternalTerminationsCriticalProcessesToggle_str;
  if (HTUIInternalTerminationsCriticalProcessesToggle_str)
  {
  }

  else
  {
    HTUIInternalTerminationsCriticalProcessesToggle_str = @"Critical Processes";

    v1 = @"Critical Processes";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsCriticalProcessesFooter()
{
  v1 = HTUIInternalTerminationsCriticalProcessesFooter_str;
  if (HTUIInternalTerminationsCriticalProcessesFooter_str)
  {
  }

  else
  {
    HTUIInternalTerminationsCriticalProcessesFooter_str = @"Includes processes considered critical for performance and stability. *See list…*";

    v1 = @"Includes processes considered critical for performance and stability. *See list…*";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsCriticalProcessesLearnMoreIntroPart1()
{
  v1 = HTUIInternalTerminationsCriticalProcessesLearnMoreIntroPart1_str;
  if (HTUIInternalTerminationsCriticalProcessesLearnMoreIntroPart1_str)
  {
  }

  else
  {
    HTUIInternalTerminationsCriticalProcessesLearnMoreIntroPart1_str = @"The following background processes are critical for performance and stability.";

    v1 = @"The following background processes are critical for performance and stability.";
  }

  return v1;
}

id HTUIInternalTerminationsCriticalProcessesLearnMoreIntroPart2()
{
  v0 = HTUIInternalTerminationsCriticalProcessesLearnMoreIntroPart2_string;
  if (!HTUIInternalTerminationsCriticalProcessesLearnMoreIntroPart2_string)
  {
    v1 = MEMORY[0x277CCACA8];
    v2 = HTUIInternalTerminationsCriticalProcessesToggle();
    v3 = [v1 localizedStringWithFormat:@"Turn on “%@” to get notified in the Heads-Up Display whenever they are terminated.", v2];
    v4 = HTUIInternalTerminationsCriticalProcessesLearnMoreIntroPart2_string;
    HTUIInternalTerminationsCriticalProcessesLearnMoreIntroPart2_string = v3;

    v0 = HTUIInternalTerminationsCriticalProcessesLearnMoreIntroPart2_string;
  }

  return v0;
}

__CFString *HTUIInternalTerminationsAddProcessButton()
{
  v1 = HTUIInternalTerminationsAddProcessButton_str;
  if (HTUIInternalTerminationsAddProcessButton_str)
  {
  }

  else
  {
    HTUIInternalTerminationsAddProcessButton_str = @"Add Process";

    v1 = @"Add Process";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsAddProcessDialogTitle()
{
  v1 = HTUIInternalTerminationsAddProcessDialogTitle_str;
  if (HTUIInternalTerminationsAddProcessDialogTitle_str)
  {
  }

  else
  {
    HTUIInternalTerminationsAddProcessDialogTitle_str = @"Monitor New Process";

    v1 = @"Monitor New Process";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsAddProcessDialogMessage()
{
  v1 = HTUIInternalTerminationsAddProcessDialogMessage_str;
  if (HTUIInternalTerminationsAddProcessDialogMessage_str)
  {
  }

  else
  {
    HTUIInternalTerminationsAddProcessDialogMessage_str = @"Enter the exact name of the process.";

    v1 = @"Enter the exact name of the process.";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsAddProcessDialogConfirmation()
{
  v1 = HTUIInternalTerminationsAddProcessDialogConfirmation_str;
  if (HTUIInternalTerminationsAddProcessDialogConfirmation_str)
  {
  }

  else
  {
    HTUIInternalTerminationsAddProcessDialogConfirmation_str = @"Monitor";

    v1 = @"Monitor";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsAddProcessPlaceholder()
{
  v1 = HTUIInternalTerminationsAddProcessPlaceholder_str;
  if (HTUIInternalTerminationsAddProcessPlaceholder_str)
  {
  }

  else
  {
    HTUIInternalTerminationsAddProcessPlaceholder_str = @"contactsd";

    v1 = @"contactsd";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsAddProcessConfirmationMessage()
{
  v1 = HTUIInternalTerminationsAddProcessConfirmationMessage_str;
  if (HTUIInternalTerminationsAddProcessConfirmationMessage_str)
  {
  }

  else
  {
    HTUIInternalTerminationsAddProcessConfirmationMessage_str = @"Make sure the name is correct. This process does not seem to be currently running.";

    v1 = @"Make sure the name is correct. This process does not seem to be currently running.";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsNoProcessesFooter()
{
  v1 = HTUIInternalTerminationsNoProcessesFooter_str;
  if (HTUIInternalTerminationsNoProcessesFooter_str)
  {
  }

  else
  {
    HTUIInternalTerminationsNoProcessesFooter_str = @"Select processes to start monitoring terminations.";

    v1 = @"Select processes to start monitoring terminations.";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsRemoveProcessSwipeTitle()
{
  v1 = HTUIInternalTerminationsRemoveProcessSwipeTitle_str;
  if (HTUIInternalTerminationsRemoveProcessSwipeTitle_str)
  {
  }

  else
  {
    HTUIInternalTerminationsRemoveProcessSwipeTitle_str = @"Stop Monitoring";

    v1 = @"Stop Monitoring";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsRemoveProcessMenuTitle()
{
  v1 = HTUIInternalTerminationsRemoveProcessMenuTitle_str;
  if (HTUIInternalTerminationsRemoveProcessMenuTitle_str)
  {
  }

  else
  {
    HTUIInternalTerminationsRemoveProcessMenuTitle_str = @"Stop Monitoring";

    v1 = @"Stop Monitoring";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsReasonsTitle()
{
  v1 = HTUIInternalTerminationsReasonsTitle_str;
  if (HTUIInternalTerminationsReasonsTitle_str)
  {
  }

  else
  {
    HTUIInternalTerminationsReasonsTitle_str = @"Monitored Exit Reasons";

    v1 = @"Monitored Exit Reasons";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsSelectAllButton()
{
  v1 = HTUIInternalTerminationsSelectAllButton_str;
  if (HTUIInternalTerminationsSelectAllButton_str)
  {
  }

  else
  {
    HTUIInternalTerminationsSelectAllButton_str = @"Select All";

    v1 = @"Select All";
  }

  return v1;
}

__CFString *HTUIInternalTerminationsUnselectAllButton()
{
  v1 = HTUIInternalTerminationsUnselectAllButton_str;
  if (HTUIInternalTerminationsUnselectAllButton_str)
  {
  }

  else
  {
    HTUIInternalTerminationsUnselectAllButton_str = @"Unselect All";

    v1 = @"Unselect All";
  }

  return v1;
}

uint64_t HTUIAsteriskedRangeFromString(void *a1)
{
  v1 = a1;
  v2 = [v1 localizedStandardRangeOfString:@"*"];
  if ([v1 length] <= (v2 + 1))
  {
    v2 = 0;
  }

  else
  {
    v3 = [v1 substringFromIndex:?];
    v4 = [v3 localizedStandardRangeOfString:@"*"];

    if (v2 == 0x7FFFFFFFFFFFFFFFLL || v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v2 = 0;
    }
  }

  return v2;
}

__CFString *exitNamespaceString(uint64_t a1)
{
  if (a1 >= 0x2B)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = off_2796A9488[a1];
  }

  return v2;
}

__CFString *exitNamespaceDisplayString(uint64_t a1)
{
  if (a1 - 4) < 0x27 && ((0x7789044BDDuLL >> (a1 - 4)))
  {
    v1 = off_2796A95E0[(a1 - 4)];
  }

  else
  {
    v2 = exitNamespaceString(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

__CFString *exitReasonStringForNamespaceSignal(uint64_t a1)
{
  if ((a1 - 1) >= 0x1F)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"SIG%d", a1];
  }

  else
  {
    v2 = off_2796A9718[(a1 - 1)];
  }

  return v2;
}

__CFString *exitReasonStringForNamespaceJetsam(uint64_t a1)
{
  v3 = a1;
  v4 = @"invalid reason";
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v4 = @"generic";

      break;
    case 2:
      v4 = @"memory highwater";

      break;
    case 3:
      v4 = @"vnode shortage";

      break;
    case 4:
      v4 = @"vm page shortage";

      break;
    case 5:
      v4 = @"process thrashing";

      break;
    case 6:
      v4 = @"filecache thrashing";

      break;
    case 7:
      v4 = @"per-process limit reached";

      break;
    case 8:
      v4 = @"disk space shortage";

      break;
    case 9:
      v4 = @"idle exit";

      break;
    case 10:
      v4 = @"zone map exhaustion";

      break;
    case 11:
      v4 = @"vm compressor thrashing";

      break;
    case 12:
      v4 = @"vm compressor space shortage";

      break;
    case 13:
      v4 = @"swap space shortage";

      break;
    case 14:
      v4 = @"sustained memory pressure";

      break;
    case 15:
      v4 = @"vm pageout starvation";

      break;
    case 16:
      v4 = @"conclave limit";

      break;
    case 17:
      v4 = @"long idle exit";

      break;
    default:
      if (a1 == 100)
      {
        v4 = @"cpu limit";
      }

      else
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a1];
LABEL_19:
      }

      break;
  }

  return v4;
}

__CFString *exitReasonDisplayStringForNamespaceJetsam(uint64_t a1)
{
  if (a1 > 10)
  {
    if (a1 > 14)
    {
      if (a1 == 15)
      {
        v1 = @"VM Pageout Starvation";
        goto LABEL_21;
      }

      if (a1 == 100)
      {
        v1 = @"CPU Limit";
        goto LABEL_21;
      }
    }

    else
    {
      if (a1 == 11)
      {
        v1 = @"VM Compressor Thrashing";
        goto LABEL_21;
      }

      if (a1 == 12)
      {
        v1 = @"VM Compressor Space Shortage";
        goto LABEL_21;
      }
    }
  }

  else if (a1 > 5)
  {
    if (a1 == 6)
    {
      v1 = @"FileCache Thrashing";
      goto LABEL_21;
    }

    if (a1 == 8)
    {
      v1 = @"Low Disk Space";
      goto LABEL_21;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v1 = @"High-Water";
      goto LABEL_21;
    }

    if (a1 == 4)
    {
      v1 = @"VM Page Shortage";
      goto LABEL_21;
    }
  }

  v2 = exitReasonStringForNamespaceJetsam(a1);
  v1 = [v2 capitalizedString];

LABEL_21:

  return v1;
}

__CFString *exitReasonStringForNamespaceSpringBoard(uint64_t a1)
{
  if (a1 > 3221229822)
  {
    if (a1 <= 3306925314)
    {
      switch(a1)
      {
        case 3221229823:
          v2 = @"thermal pressure";

          return v2;
        case 3306925313:
          v2 = @"cpu violation";

          return v2;
        case 3306925314:
          v2 = @"walltime violation";

          return v2;
      }
    }

    else if (a1 > 3735943696)
    {
      if (a1 == 3735943697)
      {
        v2 = @"user quit";

        return v2;
      }

      if (a1 == 4227595259)
      {
        v2 = @"force quit";

        return v2;
      }
    }

    else
    {
      if (a1 == 3306925315)
      {
        v2 = @"system busy";

        return v2;
      }

      if (a1 == 3735883980)
      {
        v2 = @"resource exclusion";

        return v2;
      }
    }

LABEL_62:
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%#llx", a1];

    return v2;
  }

  if (a1 <= 1539435072)
  {
    switch(a1)
    {
      case 95805101:
        v2 = @"application assertion";

        return v2;
      case 439025681:
        v2 = @"input ui scene";

        return v2;
      case 732775916:
        v2 = @"secure draw violation";

        return v2;
    }

    goto LABEL_62;
  }

  if (a1 > 1539435076)
  {
    if (a1 == 1539435077)
    {
      v2 = @"legacy clear the board";

      return v2;
    }

    if (a1 == 2343432205)
    {
      v2 = @"watchdog";

      return v2;
    }

    goto LABEL_62;
  }

  if (a1 != 1539435073)
  {
    if (a1 == 1539435076)
    {
      v2 = @"clear the board";

      return v2;
    }

    goto LABEL_62;
  }

  v2 = @"languages changed";

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceSpringBoard(uint64_t a1)
{
  if (a1 > 1539435076)
  {
    if (a1 != 1539435077)
    {
      if (a1 == 3306925313)
      {
        v1 = @"CPU Violation";
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v1 = @"Legacy Clear the Board";
  }

  else
  {
    if (a1 != 439025681)
    {
      if (a1 == 1539435076)
      {
        v1 = @"Clear the Board";
        goto LABEL_11;
      }

LABEL_8:
      v2 = exitReasonStringForNamespaceSpringBoard(a1);
      v1 = [v2 capitalizedString];

      goto LABEL_11;
    }

    v1 = @"InputUI Scene";
  }

LABEL_11:

  return v1;
}

__CFString *exitReasonStringForNamespaceCodeSigning(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = off_2796A9810[(a1 - 1)];
  }

  return v2;
}

id exitReasonDisplayStringForNamespaceCodeSigning(uint64_t a1)
{
  v1 = exitReasonStringForNamespaceCodeSigning(a1);
  v2 = [v1 capitalizedString];

  return v2;
}

__CFString *exitReasonStringForNamespaceExec(uint64_t a1)
{
  if ((a1 - 1) >= 0x13)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = off_2796A9830[(a1 - 1)];
  }

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceExec(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 0x13 && ((0x55F7Fu >> v1))
  {
    v2 = off_2796A98C8[v1];
  }

  else
  {
    v3 = exitReasonStringForNamespaceExec(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

__CFString *exitReasonStringForNamespaceGuard(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = off_2796A9960[(a1 - 1)];
  }

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceGuard(uint64_t a1)
{
  if (a1 == 5)
  {
    v1 = @"JIT";
  }

  else
  {
    v2 = exitReasonStringForNamespaceGuard(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

__CFString *exitReasonStringForNamespaceLibXPC(uint64_t a1)
{
  if ((a1 - 1) >= 9)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", a1];
  }

  else
  {
    v2 = off_2796A9988[(a1 - 1)];
  }

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceLibXPC(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v1 = @"Unknown IPC";
      break;
    case 6:
      v1 = @"Sandbox Filtered IPC";
      break;
    case 4:
      v1 = @"SIGTERM Timeout";
      break;
    default:
      v2 = exitReasonStringForNamespaceLibXPC(a1);
      v1 = [v2 capitalizedString];

      break;
  }

  return v1;
}

__CFString *exitReasonStringForNamespaceDYLD(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 9 && ((0x17Fu >> v2))
  {
    v3 = off_2796A99D0[v2];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a1];
  }

  return v3;
}

__CFString *exitReasonDisplayStringForNamespaceDYLD(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 7 && ((0x47u >> v1))
  {
    v2 = off_2796A9A18[v1];
  }

  else
  {
    v3 = exitReasonStringForNamespaceDYLD(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

__CFString *exitReasonStringForNamespaceRunningBoard(uint64_t a1)
{
  if (a1 <= 2343432204)
  {
    if (a1 <= 562215633)
    {
      switch(a1)
      {
        case 0:
          v2 = @"none";

          return v2;
        case 97132013:
          v2 = @"conditions changed";

          return v2;
        case 562215597:
          v2 = @"assertion timeout";

          return v2;
      }
    }

    else
    {
      if (a1 <= 562215635)
      {
        if (a1 == 562215634)
        {
          v2 = @"background task assertion timeout";
        }

        else
        {
          v2 = @"background url session completion timeout";
        }

        return v2;
      }

      if (a1 == 562215636)
      {
        v2 = @"background fetch completion timeout";

        return v2;
      }

      if (a1 == 732775916)
      {
        v2 = @"security violation";

        return v2;
      }
    }

LABEL_63:
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%#llx", a1];

    return v2;
  }

  if (a1 > 3490524076)
  {
    if (a1 > 3735905537)
    {
      if (a1 == 3735905538)
      {
        v2 = @"termination assertion";

        return v2;
      }

      if (a1 == 3735943697)
      {
        v2 = @"user initiated quit";

        return v2;
      }
    }

    else
    {
      if (a1 == 3490524077)
      {
        v2 = @"max assertions violation";

        return v2;
      }

      if (a1 == 3735883980)
      {
        v2 = @"resource exclusion";

        return v2;
      }
    }

    goto LABEL_63;
  }

  if (a1 > 2970726672)
  {
    if (a1 == 2970726673)
    {
      v2 = @"process exited";

      return v2;
    }

    if (a1 == 3221229823)
    {
      v2 = @"thermal pressure";

      return v2;
    }

    goto LABEL_63;
  }

  if (a1 != 2343432205)
  {
    if (a1 == 2970405393)
    {
      v2 = @"max states violation";

      return v2;
    }

    goto LABEL_63;
  }

  v2 = @"watchdog violation";

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceRunningBoard(uint64_t a1)
{
  if (a1 <= 2970405392)
  {
    if (!a1)
    {
      v1 = @"None Provided";
      goto LABEL_13;
    }

    if (a1 == 562215635)
    {
      v1 = @"Background URL Session Completion Timeout";
      goto LABEL_13;
    }
  }

  else
  {
    switch(a1)
    {
      case 2970405393:
        v1 = @"Maximum States Violation";
        goto LABEL_13;
      case 3490524077:
        v1 = @"Maximum Assertions Violation";
        goto LABEL_13;
      case 3735943697:
        v1 = @"User-Initiated Quit";
        goto LABEL_13;
    }
  }

  v2 = exitReasonStringForNamespaceRunningBoard(a1);
  v1 = [v2 capitalizedString];

LABEL_13:

  return v1;
}

__CFString *exitReasonStringForNamespaceLibSystem(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a1];
  }

  else
  {
    v2 = off_2796A9A50[a1 - 1];
  }

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceLibSystem(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 5 && ((0x1Du >> v1))
  {
    v2 = off_2796A9A78[v1];
  }

  else
  {
    v3 = exitReasonStringForNamespaceLibSystem(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

__CFString *exitReasonStringForNamespaceEndpointSecurity(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a1];
  }

  else
  {
    v2 = off_2796A9AA0[a1 - 1];
  }

  return v2;
}

id exitReasonDisplayStringForNamespaceEndpointSecurity(uint64_t a1)
{
  v1 = exitReasonStringForNamespaceEndpointSecurity(a1);
  v2 = [v1 capitalizedString];

  return v2;
}

__CFString *exitReasonStringForNamespaceWatchdog(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v2 = @"service timeout";
    }

    else
    {
      if (a1 != 2)
      {
LABEL_22:
        v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a1];

        return v2;
      }

      v2 = @"timeout no diags";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v2 = @"unblock deadlock";

        break;
      case 4:
        v2 = @"unblock thread limit";

        break;
      case 1001:
        v2 = @"chronokit";

        return v2;
      default:
        goto LABEL_22;
    }
  }

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceWatchdog(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = @"Service Timeout Diagnostics Unavailable";
  }

  else if (a1 == 1001)
  {
    v1 = @"ChronoKit";
  }

  else
  {
    v2 = exitReasonStringForNamespaceWatchdog(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

__CFString *exitReasonStringForNamespaceWatchKit(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"api violation";
  }

  else if (a1 == 2)
  {
    v2 = @"internal error";
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a1];
  }

  return v2;
}

__CFString *exitReasonDisplayStringForNamespaceWatchKit(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"API Violation";
  }

  else
  {
    v2 = exitReasonStringForNamespaceWatchKit(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

__CFString *exitReasonStringForNamespaceBacklightServices(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 0x15 && ((0x183FFFu >> v2))
  {
    v3 = off_2796A9AB8[v2];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a1];
  }

  return v3;
}

__CFString *exitReasonDisplayStringForNamespaceBacklightServices(uint64_t a1)
{
  v1 = a1 - 11;
  if (a1 - 11) < 0xB && ((0x60Fu >> v1))
  {
    v2 = off_2796A9B60[v1];
  }

  else
  {
    v3 = exitReasonStringForNamespaceBacklightServices(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

id exitReasonString(int a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      v2 = exitReasonStringForNamespaceJetsam(a2);
      break;
    case 2:
      v2 = exitReasonStringForNamespaceSignal(a2);
      break;
    case 3:
      v2 = exitReasonStringForNamespaceCodeSigning(a2);
      break;
    case 6:
      v2 = exitReasonStringForNamespaceDYLD(a2);
      break;
    case 7:
      v2 = exitReasonStringForNamespaceLibXPC(a2);
      break;
    case 9:
      v2 = exitReasonStringForNamespaceExec(a2);
      break;
    case 10:
      v2 = exitReasonStringForNamespaceSpringBoard(a2);
      break;
    case 15:
      v2 = exitReasonStringForNamespaceRunningBoard(a2);
      break;
    case 18:
      v2 = exitReasonDisplayStringForNamespaceLibSystem(a2);
      break;
    case 20:
      v2 = exitReasonStringForNamespaceWatchdog(a2);
      break;
    case 22:
      v2 = exitReasonStringForNamespaceWatchKit(a2);
      break;
    case 23:
      v2 = exitReasonStringForNamespaceGuard(a2);
      break;
    case 27:
      v2 = exitReasonStringForNamespaceEndpointSecurity(a2);
      break;
    case 32:
      v2 = exitReasonStringForNamespaceBacklightServices(a2);
      break;
    default:
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a2];
      break;
  }

  return v2;
}

id exitReasonDisplayString(int a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      v2 = exitReasonDisplayStringForNamespaceJetsam(a2);
      break;
    case 2:
      v2 = exitReasonStringForNamespaceSignal(a2);
      break;
    case 3:
      v2 = exitReasonDisplayStringForNamespaceCodeSigning(a2);
      break;
    case 6:
      v2 = exitReasonDisplayStringForNamespaceDYLD(a2);
      break;
    case 7:
      v2 = exitReasonDisplayStringForNamespaceLibXPC(a2);
      break;
    case 9:
      v2 = exitReasonDisplayStringForNamespaceExec(a2);
      break;
    case 10:
      v2 = exitReasonDisplayStringForNamespaceSpringBoard(a2);
      break;
    case 15:
      v2 = exitReasonDisplayStringForNamespaceRunningBoard(a2);
      break;
    case 18:
      v2 = exitReasonDisplayStringForNamespaceLibSystem(a2);
      break;
    case 20:
      v2 = exitReasonDisplayStringForNamespaceWatchdog(a2);
      break;
    case 22:
      v2 = exitReasonDisplayStringForNamespaceWatchKit(a2);
      break;
    case 23:
      v2 = exitReasonDisplayStringForNamespaceGuard(a2);
      break;
    case 27:
      v2 = exitReasonDisplayStringForNamespaceEndpointSecurity(a2);
      break;
    case 32:
      v2 = exitReasonDisplayStringForNamespaceBacklightServices(a2);
      break;
    default:
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%#llx", a2];
      break;
  }

  return v2;
}

char *HTDeveloperSettings.availableThresholdsValues.getter()
{
  v1 = [v0 availableThresholdsValues];
  sub_2510BE15C();
  v2 = sub_2510C59E4();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v3 = sub_2510C5A34();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v12 = MEMORY[0x277D84F90];
  result = sub_2510BE1A8(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v12;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x253069D30](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 integerValue];

      v11 = *(v12 + 16);
      v10 = *(v12 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2510BE1A8((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v12 + 16) = v11 + 1;
      *(v12 + 8 * v11 + 32) = v9;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_2510BE15C()
{
  result = qword_27F415DB8;
  if (!qword_27F415DB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F415DB8);
  }

  return result;
}

char *sub_2510BE1A8(char *a1, int64_t a2, char a3)
{
  result = sub_2510BE1C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2510BE1C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F415DC0, &qword_2510C6F18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
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

uint64_t HTTerminationReason.displayName.getter(unint64_t a1)
{
  v1 = HTTerminationReasonDisplayName(a1);
  v2 = sub_2510C59C4();

  return v2;
}

uint64_t HTTerminationReason.subReasons.getter(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  if (a1 >= 0x8000)
  {
    if (a1 < 0x400000)
    {
      switch(a1)
      {
        case 0x8000:
          swift_beginAccess();
          v54 = qword_27F415E30;
          swift_beginAccess();
          v3 = MEMORY[0x277D84F90];
          do
          {
            while (1)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v3 = sub_2510C2C54(0, *(v3 + 2) + 1, 1, v3, &qword_27F4162F0, &qword_2510C8EA0);
              }

              v56 = *(v3 + 2);
              v55 = *(v3 + 3);
              if (v56 >= v55 >> 1)
              {
                v3 = sub_2510C2C54((v55 > 1), v56 + 1, 1, v3, &qword_27F4162F0, &qword_2510C8EA0);
              }

              *(v3 + 2) = v56 + 1;
              *&v3[8 * v56 + 32] = v54;
              v57 = 2 * v54;
              if (qword_27F415E38 >= 0x40)
              {
                break;
              }

              v54 *= 2;
              if (1 << qword_27F415E38 < v57)
              {
                goto LABEL_139;
              }
            }

            v54 = 0;
          }

          while (!v57);
LABEL_139:
          v47 = &unk_27F415ED0;
          v48 = type metadata accessor for HTRunningBoardTerminationReason;
          v49 = type metadata accessor for HTRunningBoardTerminationReason;
          goto LABEL_172;
        case 0x40000:
          swift_beginAccess();
          v67 = qword_27F415E40;
          swift_beginAccess();
          v3 = MEMORY[0x277D84F90];
          do
          {
            while (1)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v3 = sub_2510C2C54(0, *(v3 + 2) + 1, 1, v3, &qword_27F4162F8, &qword_2510C8EA8);
              }

              v69 = *(v3 + 2);
              v68 = *(v3 + 3);
              if (v69 >= v68 >> 1)
              {
                v3 = sub_2510C2C54((v68 > 1), v69 + 1, 1, v3, &qword_27F4162F8, &qword_2510C8EA8);
              }

              *(v3 + 2) = v69 + 1;
              *&v3[8 * v69 + 32] = v67;
              v70 = 2 * v67;
              if (qword_27F415E48 >= 0x40)
              {
                break;
              }

              v67 *= 2;
              if (1 << qword_27F415E48 < v70)
              {
                goto LABEL_167;
              }
            }

            v67 = 0;
          }

          while (!v70);
LABEL_167:
          v47 = &unk_27F415EC8;
          v48 = type metadata accessor for HTLibSystemTerminationReason;
          v49 = type metadata accessor for HTLibSystemTerminationReason;
          goto LABEL_172;
        case 0x100000:
          swift_beginAccess();
          v15 = qword_27F415E50;
          swift_beginAccess();
          v3 = MEMORY[0x277D84F90];
          do
          {
            while (1)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v3 = sub_2510C2C54(0, *(v3 + 2) + 1, 1, v3, &qword_27F416300, &qword_2510C8EB0);
              }

              v17 = *(v3 + 2);
              v16 = *(v3 + 3);
              v18 = v17 + 1;
              if (v17 >= v16 >> 1)
              {
                v3 = sub_2510C2C54((v16 > 1), v17 + 1, 1, v3, &qword_27F416300, &qword_2510C8EB0);
              }

              *(v3 + 2) = v18;
              *&v3[8 * v17 + 32] = v15;
              v19 = 2 * v15;
              if (qword_27F415E58 >= 0x40)
              {
                break;
              }

              v15 *= 2;
              if (1 << qword_27F415E58 < v19)
              {
                goto LABEL_169;
              }
            }

            v15 = 0;
          }

          while (!v19);
LABEL_169:
          v71 = *(v3 + 3);
          if ((v17 + 2) > (v71 >> 1))
          {
            v3 = sub_2510C2C54((v71 > 1), v17 + 2, 1, v3, &qword_27F416300, &qword_2510C8EB0);
          }

          *(v3 + 2) = v17 + 2;
          *&v3[8 * v18 + 32] = 0x100000;
          v47 = &unk_27F415EC0;
          v48 = type metadata accessor for HTWatchdogTerminationReason;
          v49 = type metadata accessor for HTWatchdogTerminationReason;
          goto LABEL_172;
      }
    }

    else if (a1 > 0x7FFFFFF)
    {
      if (a1 == 0x8000000)
      {
        swift_beginAccess();
        v42 = qword_27F415E80;
        swift_beginAccess();
        v3 = MEMORY[0x277D84F90];
        do
        {
          while (1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_2510C2C54(0, *(v3 + 2) + 1, 1, v3, &qword_27F416318, &qword_2510C8EC8);
            }

            v44 = *(v3 + 2);
            v43 = *(v3 + 3);
            if (v44 >= v43 >> 1)
            {
              v3 = sub_2510C2C54((v43 > 1), v44 + 1, 1, v3, &qword_27F416318, &qword_2510C8EC8);
            }

            *(v3 + 2) = v44 + 1;
            *&v3[8 * v44 + 32] = v42;
            v45 = 2 * v42;
            if (qword_27F415E88 >= 0x40)
            {
              break;
            }

            v42 *= 2;
            if (1 << qword_27F415E88 < v45)
            {
              goto LABEL_115;
            }
          }

          v42 = 0;
        }

        while (!v45);
LABEL_115:
        v47 = &unk_27F415EA8;
        v48 = type metadata accessor for HTEndpointSecurityTerminationReason;
        v49 = type metadata accessor for HTEndpointSecurityTerminationReason;
        goto LABEL_172;
      }

      if (a1 == 0x100000000)
      {
        swift_beginAccess();
        v24 = qword_27F415E90;
        swift_beginAccess();
        v3 = MEMORY[0x277D84F90];
        do
        {
          while (1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_2510C2C54(0, *(v3 + 2) + 1, 1, v3, &qword_27F416320, &qword_2510C8ED0);
            }

            v26 = *(v3 + 2);
            v25 = *(v3 + 3);
            v27 = v26 + 1;
            if (v26 >= v25 >> 1)
            {
              v3 = sub_2510C2C54((v25 > 1), v26 + 1, 1, v3, &qword_27F416320, &qword_2510C8ED0);
            }

            *(v3 + 2) = v27;
            *&v3[8 * v26 + 32] = v24;
            v28 = 2 * v24;
            if (qword_27F415E98 >= 0x40)
            {
              break;
            }

            v24 *= 2;
            if (1 << qword_27F415E98 < v28)
            {
              goto LABEL_143;
            }
          }

          v24 = 0;
        }

        while (!v28);
LABEL_143:
        v60 = *(v3 + 3);
        v61 = v26 + 2;
        if ((v26 + 2) > (v60 >> 1))
        {
          v3 = sub_2510C2C54((v60 > 1), v26 + 2, 1, v3, &qword_27F416320, &qword_2510C8ED0);
        }

        *(v3 + 2) = v61;
        *&v3[8 * v27 + 32] = 0x100000;
        v62 = *(v3 + 3);
        if ((v26 + 3) > (v62 >> 1))
        {
          v3 = sub_2510C2C54((v62 > 1), v26 + 3, 1, v3, &qword_27F416320, &qword_2510C8ED0);
        }

        *(v3 + 2) = v26 + 3;
        *&v3[8 * v61 + 32] = 0x200000;
        v47 = &unk_27F415EA0;
        v48 = type metadata accessor for HTBacklightServicesTerminationReason;
        v49 = type metadata accessor for HTBacklightServicesTerminationReason;
        goto LABEL_172;
      }
    }

    else
    {
      if (a1 == 0x400000)
      {
        swift_beginAccess();
        v34 = qword_27F415E60;
        swift_beginAccess();
        v3 = MEMORY[0x277D84F90];
        do
        {
          while (1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_2510C2C54(0, *(v3 + 2) + 1, 1, v3, &qword_27F416308, &qword_2510C8EB8);
            }

            v36 = *(v3 + 2);
            v35 = *(v3 + 3);
            if (v36 >= v35 >> 1)
            {
              v3 = sub_2510C2C54((v35 > 1), v36 + 1, 1, v3, &qword_27F416308, &qword_2510C8EB8);
            }

            *(v3 + 2) = v36 + 1;
            *&v3[8 * v36 + 32] = v34;
            v37 = 2 * v34;
            if (qword_27F415E68 >= 0x40)
            {
              break;
            }

            v34 *= 2;
            if (1 << qword_27F415E68 < v37)
            {
              goto LABEL_113;
            }
          }

          v34 = 0;
        }

        while (!v37);
LABEL_113:
        v47 = &unk_27F415EB8;
        v48 = type metadata accessor for HTWatchKitTerminationReason;
        v49 = type metadata accessor for HTWatchKitTerminationReason;
        goto LABEL_172;
      }

      if (a1 == 0x800000)
      {
        swift_beginAccess();
        v7 = qword_27F415E70;
        swift_beginAccess();
        v3 = MEMORY[0x277D84F90];
        do
        {
          while (1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_2510C2C54(0, *(v3 + 2) + 1, 1, v3, &qword_27F416310, &qword_2510C8EC0);
            }

            v9 = *(v3 + 2);
            v8 = *(v3 + 3);
            if (v9 >= v8 >> 1)
            {
              v3 = sub_2510C2C54((v8 > 1), v9 + 1, 1, v3, &qword_27F416310, &qword_2510C8EC0);
            }

            *(v3 + 2) = v9 + 1;
            *&v3[8 * v9 + 32] = v7;
            v10 = 2 * v7;
            if (qword_27F415E78 >= 0x40)
            {
              break;
            }

            v7 *= 2;
            if (1 << qword_27F415E78 < v10)
            {
              goto LABEL_141;
            }
          }

          v7 = 0;
        }

        while (!v10);
LABEL_141:
        v47 = &unk_27F415EB0;
        v48 = type metadata accessor for HTGuardTerminationReason;
        v49 = type metadata accessor for HTGuardTerminationReason;
        goto LABEL_172;
      }
    }
  }

  else if (a1 <= 63)
  {
    switch(a1)
    {
      case 2:
        swift_beginAccess();
        v3 = MEMORY[0x277D84F90];
        v50 = qword_27F415DC8;
        do
        {
          while (1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_2510C2C54(0, *(v3 + 2) + 1, 1, v3, &qword_27F4162B8, &qword_2510C8E68);
            }

            v52 = *(v3 + 2);
            v51 = *(v3 + 3);
            if (v52 >= v51 >> 1)
            {
              v3 = sub_2510C2C54((v51 > 1), v52 + 1, 1, v3, &qword_27F4162B8, &qword_2510C8E68);
            }

            *(v3 + 2) = v52 + 1;
            *&v3[8 * v52 + 32] = v50;
            if (qword_27F416660 != -1)
            {
              swift_once();
            }

            v53 = 2 * v50;
            swift_beginAccess();
            if (qword_27F416668 >= 0x40)
            {
              break;
            }

            v50 *= 2;
            if (1 << qword_27F416668 < v53)
            {
              goto LABEL_136;
            }
          }

          v50 = 0;
        }

        while (!v53);
LABEL_136:
        v59 = *(v3 + 2);
        v58 = *(v3 + 3);
        if (v59 >= v58 >> 1)
        {
          v3 = sub_2510C2C54((v58 > 1), v59 + 1, 1, v3, &qword_27F4162B8, &qword_2510C8E68);
        }

        *(v3 + 2) = v59 + 1;
        *&v3[8 * v59 + 32] = 0x20000000000;
        v47 = &unk_27F415F08;
        v48 = type metadata accessor for HTJetsamTerminationReason;
        v49 = type metadata accessor for HTJetsamTerminationReason;
        goto LABEL_172;
      case 4:
        swift_beginAccess();
        v63 = qword_27F415DD0;
        swift_beginAccess();
        v3 = MEMORY[0x277D84F90];
        do
        {
          while (1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_2510C2C54(0, *(v3 + 2) + 1, 1, v3, &qword_27F4162C0, &qword_2510C8E70);
            }

            v65 = *(v3 + 2);
            v64 = *(v3 + 3);
            if (v65 >= v64 >> 1)
            {
              v3 = sub_2510C2C54((v64 > 1), v65 + 1, 1, v3, &qword_27F4162C0, &qword_2510C8E70);
            }

            *(v3 + 2) = v65 + 1;
            *&v3[8 * v65 + 32] = v63;
            v66 = 2 * v63;
            if (qword_27F415DD8 >= 0x40)
            {
              break;
            }

            v63 *= 2;
            if (1 << qword_27F415DD8 < v66)
            {
              goto LABEL_166;
            }
          }

          v63 = 0;
        }

        while (!v66);
LABEL_166:
        v47 = &unk_27F415F00;
        v48 = type metadata accessor for HTSignalTerminationReason;
        v49 = type metadata accessor for HTSignalTerminationReason;
        goto LABEL_172;
      case 8:
        swift_beginAccess();
        v11 = qword_27F415DE0;
        swift_beginAccess();
        v3 = MEMORY[0x277D84F90];
        do
        {
          while (1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_2510C2C54(0, *(v3 + 2) + 1, 1, v3, &qword_27F4162C8, &qword_2510C8E78);
            }

            v13 = *(v3 + 2);
            v12 = *(v3 + 3);
            if (v13 >= v12 >> 1)
            {
              v3 = sub_2510C2C54((v12 > 1), v13 + 1, 1, v3, &qword_27F4162C8, &qword_2510C8E78);
            }

            *(v3 + 2) = v13 + 1;
            *&v3[8 * v13 + 32] = v11;
            v14 = 2 * v11;
            if (qword_27F415DE8 >= 0x40)
            {
              break;
            }

            v11 *= 2;
            if (1 << qword_27F415DE8 < v14)
            {
              goto LABEL_168;
            }
          }

          v11 = 0;
        }

        while (!v14);
LABEL_168:
        v47 = &unk_27F415EF8;
        v48 = type metadata accessor for HTCodeSigningTerminationReason;
        v49 = type metadata accessor for HTCodeSigningTerminationReason;
        goto LABEL_172;
    }
  }

  else if (a1 > 511)
  {
    if (a1 == 512)
    {
      swift_beginAccess();
      v38 = qword_27F415E10;
      swift_beginAccess();
      v3 = MEMORY[0x277D84F90];
      do
      {
        while (1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_2510C2C54(0, *(v3 + 2) + 1, 1, v3, &qword_27F4162E0, &qword_2510C8E90);
          }

          v40 = *(v3 + 2);
          v39 = *(v3 + 3);
          if (v40 >= v39 >> 1)
          {
            v3 = sub_2510C2C54((v39 > 1), v40 + 1, 1, v3, &qword_27F4162E0, &qword_2510C8E90);
          }

          *(v3 + 2) = v40 + 1;
          *&v3[8 * v40 + 32] = v38;
          v41 = 2 * v38;
          if (qword_27F415E18 >= 0x40)
          {
            break;
          }

          v38 *= 2;
          if (1 << qword_27F415E18 < v41)
          {
            goto LABEL_114;
          }
        }

        v38 = 0;
      }

      while (!v41);
LABEL_114:
      v47 = &unk_27F415EE0;
      v48 = type metadata accessor for HTExecTerminationReason;
      v49 = type metadata accessor for HTExecTerminationReason;
      goto LABEL_172;
    }

    if (a1 == 1024)
    {
      swift_beginAccess();
      v20 = qword_27F415E20;
      swift_beginAccess();
      v3 = MEMORY[0x277D84F90];
      do
      {
        while (1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_2510C2C54(0, *(v3 + 2) + 1, 1, v3, &qword_27F4162E8, &qword_2510C8E98);
          }

          v22 = *(v3 + 2);
          v21 = *(v3 + 3);
          if (v22 >= v21 >> 1)
          {
            v3 = sub_2510C2C54((v21 > 1), v22 + 1, 1, v3, &qword_27F4162E8, &qword_2510C8E98);
          }

          *(v3 + 2) = v22 + 1;
          *&v3[8 * v22 + 32] = v20;
          v23 = 2 * v20;
          if (qword_27F415E28 >= 0x40)
          {
            break;
          }

          v20 *= 2;
          if (1 << qword_27F415E28 < v23)
          {
            goto LABEL_142;
          }
        }

        v20 = 0;
      }

      while (!v23);
LABEL_142:
      v47 = &unk_27F415ED8;
      v48 = type metadata accessor for HTSpringBoardTerminationReason;
      v49 = type metadata accessor for HTSpringBoardTerminationReason;
      goto LABEL_172;
    }
  }

  else
  {
    if (a1 == 64)
    {
      swift_beginAccess();
      v29 = qword_27F415DF0;
      swift_beginAccess();
      v3 = MEMORY[0x277D84F90];
      do
      {
        while (1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_2510C2C54(0, *(v3 + 2) + 1, 1, v3, &qword_27F4162D0, &qword_2510C8E80);
          }

          v31 = *(v3 + 2);
          v30 = *(v3 + 3);
          v32 = v31 + 1;
          if (v31 >= v30 >> 1)
          {
            v3 = sub_2510C2C54((v30 > 1), v31 + 1, 1, v3, &qword_27F4162D0, &qword_2510C8E80);
          }

          *(v3 + 2) = v32;
          *&v3[8 * v31 + 32] = v29;
          v33 = 2 * v29;
          if (qword_27F415DF8 >= 0x40)
          {
            break;
          }

          v29 *= 2;
          if (1 << qword_27F415DF8 < v33)
          {
            goto LABEL_110;
          }
        }

        v29 = 0;
      }

      while (!v33);
LABEL_110:
      v46 = *(v3 + 3);
      if ((v31 + 2) > (v46 >> 1))
      {
        v3 = sub_2510C2C54((v46 > 1), v31 + 2, 1, v3, &qword_27F4162D0, &qword_2510C8E80);
      }

      *(v3 + 2) = v31 + 2;
      *&v3[8 * v32 + 32] = 512;
      v47 = &unk_27F415EF0;
      v48 = type metadata accessor for HTDYLDTerminationReason;
      v49 = type metadata accessor for HTDYLDTerminationReason;
      goto LABEL_172;
    }

    if (a1 == 128)
    {
      swift_beginAccess();
      v2 = qword_27F415E00;
      swift_beginAccess();
      v3 = MEMORY[0x277D84F90];
      do
      {
        while (1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_2510C2C54(0, *(v3 + 2) + 1, 1, v3, &qword_27F4162D8, &qword_2510C8E88);
          }

          v5 = *(v3 + 2);
          v4 = *(v3 + 3);
          if (v5 >= v4 >> 1)
          {
            v3 = sub_2510C2C54((v4 > 1), v5 + 1, 1, v3, &qword_27F4162D8, &qword_2510C8E88);
          }

          *(v3 + 2) = v5 + 1;
          *&v3[8 * v5 + 32] = v2;
          v6 = 2 * v2;
          if (qword_27F415E08 >= 0x40)
          {
            break;
          }

          v2 *= 2;
          if (1 << qword_27F415E08 < v6)
          {
            goto LABEL_140;
          }
        }

        v2 = 0;
      }

      while (!v6);
LABEL_140:
      v47 = &unk_27F415EE8;
      v48 = type metadata accessor for HTLibXPCTerminationReason;
      v49 = type metadata accessor for HTLibXPCTerminationReason;
LABEL_172:
      v1 = sub_2510BF7F0(v3, v48, v47, v49);
    }
  }

  return v1;
}

uint64_t sub_2510BF7F0(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2510C2D50(0, v4, 0);
    v5 = v19;
    v10 = (a1 + 32);
    do
    {
      v12 = *v10++;
      v11 = v12;
      v19 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2510C2D50((v13 > 1), v14 + 1, 1);
        v5 = v19;
      }

      v17 = a2(0);
      v18 = sub_2510C3798(a3, a4);
      *&v16 = v11;
      *(v5 + 16) = v14 + 1;
      sub_2510C51A0(&v16, v5 + 40 * v14 + 32);
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t static HTTerminationSubReason.allCases.getter(uint64_t a1, void *a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v31 = sub_2510C59B4();
  v12 = a2[3];
  v28 = v2;
  v12(a1, a2);
  v26 = a2[1];
  v13 = *(v26 + 8);
  sub_2510C59D4();
  v27 = a2;
  v24 = a2[4];
  v25 = a2 + 4;
  v14 = v30;
  v15 = *(v5 + 16);
  v5 += 16;
  v23 = v15;
  v16 = (v5 - 8);
  v17 = (v5 + 16);
  v15(v9, v11, a1);
  while (1)
  {
    sub_2510C5A04();
    sub_2510C59F4();
    v18 = 2 * v14;
    v29 = 2 * v14;
    sub_2510C5A44();
    v19 = *v16;
    (*v16)(v11, a1);
    (*v17)(v11, v9, a1);
    v20 = v24(a1, v27);
    if (v20 > 0x3F)
    {
      break;
    }

    v14 *= 2;
    if (1 << v20 < v18)
    {
      goto LABEL_6;
    }

LABEL_3:
    v23(v9, v11, a1);
  }

  v14 = 0;
  if (!v18)
  {
    goto LABEL_3;
  }

LABEL_6:
  v19(v11, a1);
  return v31;
}

double HTTerminationReason.trackedSubReasons.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_allocWithZone(HTProcessTerminationSettings) init];
  v5 = [v4 trackedSubReasonsForReason_];

  if (a1 >= 0x8000)
  {
    if (a1 < 0x400000)
    {
      switch(a1)
      {
        case 0x8000:
          type metadata accessor for HTRunningBoardTerminationReason(0);
          *(a2 + 24) = v19;
          v7 = &unk_27F415ED0;
          v8 = type metadata accessor for HTRunningBoardTerminationReason;
          goto LABEL_34;
        case 0x40000:
          type metadata accessor for HTLibSystemTerminationReason(0);
          *(a2 + 24) = v21;
          v7 = &unk_27F415EC8;
          v8 = type metadata accessor for HTLibSystemTerminationReason;
          goto LABEL_34;
        case 0x100000:
          type metadata accessor for HTWatchdogTerminationReason(0);
          *(a2 + 24) = v11;
          v7 = &unk_27F415EC0;
          v8 = type metadata accessor for HTWatchdogTerminationReason;
          goto LABEL_34;
      }
    }

    else if (a1 > 0x7FFFFFF)
    {
      if (a1 == 0x8000000)
      {
        type metadata accessor for HTEndpointSecurityTerminationReason(0);
        *(a2 + 24) = v17;
        v7 = &unk_27F415EA8;
        v8 = type metadata accessor for HTEndpointSecurityTerminationReason;
        goto LABEL_34;
      }

      if (a1 == 0x100000000)
      {
        type metadata accessor for HTBacklightServicesTerminationReason(0);
        *(a2 + 24) = v13;
        v7 = &unk_27F415EA0;
        v8 = type metadata accessor for HTBacklightServicesTerminationReason;
        goto LABEL_34;
      }
    }

    else
    {
      if (a1 == 0x400000)
      {
        type metadata accessor for HTWatchKitTerminationReason(0);
        *(a2 + 24) = v15;
        v7 = &unk_27F415EB8;
        v8 = type metadata accessor for HTWatchKitTerminationReason;
        goto LABEL_34;
      }

      if (a1 == 0x800000)
      {
        type metadata accessor for HTGuardTerminationReason(0);
        *(a2 + 24) = v9;
        v7 = &unk_27F415EB0;
        v8 = type metadata accessor for HTGuardTerminationReason;
        goto LABEL_34;
      }
    }
  }

  else if (a1 <= 63)
  {
    switch(a1)
    {
      case 2:
        type metadata accessor for HTJetsamTerminationReason(0);
        *(a2 + 24) = v18;
        v7 = &unk_27F415F08;
        v8 = type metadata accessor for HTJetsamTerminationReason;
        goto LABEL_34;
      case 4:
        type metadata accessor for HTSignalTerminationReason(0);
        *(a2 + 24) = v20;
        v7 = &unk_27F415F00;
        v8 = type metadata accessor for HTSignalTerminationReason;
        goto LABEL_34;
      case 8:
        type metadata accessor for HTCodeSigningTerminationReason(0);
        *(a2 + 24) = v10;
        v7 = &unk_27F415EF8;
        v8 = type metadata accessor for HTCodeSigningTerminationReason;
        goto LABEL_34;
    }
  }

  else if (a1 > 511)
  {
    if (a1 == 512)
    {
      type metadata accessor for HTExecTerminationReason(0);
      *(a2 + 24) = v16;
      v7 = &unk_27F415EE0;
      v8 = type metadata accessor for HTExecTerminationReason;
      goto LABEL_34;
    }

    if (a1 == 1024)
    {
      type metadata accessor for HTSpringBoardTerminationReason(0);
      *(a2 + 24) = v12;
      v7 = &unk_27F415ED8;
      v8 = type metadata accessor for HTSpringBoardTerminationReason;
      goto LABEL_34;
    }
  }

  else
  {
    if (a1 == 64)
    {
      type metadata accessor for HTDYLDTerminationReason(0);
      *(a2 + 24) = v14;
      v7 = &unk_27F415EF0;
      v8 = type metadata accessor for HTDYLDTerminationReason;
      goto LABEL_34;
    }

    if (a1 == 128)
    {
      type metadata accessor for HTLibXPCTerminationReason(0);
      *(a2 + 24) = v6;
      v7 = &unk_27F415EE8;
      v8 = type metadata accessor for HTLibXPCTerminationReason;
LABEL_34:
      *(a2 + 32) = sub_2510C3798(v7, v8);
      *a2 = v5;
      return result;
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

char *sub_2510BFF9C@<X0>(char **a1@<X8>)
{
  result = _sSo19HTTerminationReasonV24HangTracerSettingsClientE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t static HTJetsamTerminationReason.firstCase.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415DC8 = a1;
  return result;
}

uint64_t sub_2510C00A8()
{
  result = HTTerminationSubReasonShiftingForReason(2);
  qword_27F416668 = result << 17;
  return result;
}

uint64_t static HTJetsamTerminationReason.lastCaseRawValue.getter()
{
  if (qword_27F416660 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_27F416668;
}

uint64_t static HTJetsamTerminationReason.lastCaseRawValue.setter(uint64_t a1)
{
  if (qword_27F416660 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  qword_27F416668 = a1;
  return result;
}

uint64_t (*static HTJetsamTerminationReason.lastCaseRawValue.modify())()
{
  if (qword_27F416660 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t HTJetsamTerminationReason.displayName.getter(int64_t a1)
{
  v1 = HTTerminationSubReasonDisplayName(2, a1);
  v2 = sub_2510C59C4();

  return v2;
}

char *sub_2510C0298@<X0>(char **a1@<X8>)
{
  result = _sSo25HTJetsamTerminationReasonV24HangTracerSettingsClientE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_2510C02C8@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F415DC8;
  return result;
}

uint64_t sub_2510C0314()
{
  if (qword_27F416660 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_27F416668;
}

uint64_t static HTSignalTerminationReason.firstCase.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415DD0 = a1;
  return result;
}

uint64_t static HTSignalTerminationReason.lastCaseRawValue.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415DD8 = a1;
  return result;
}

uint64_t HTSignalTerminationReason.displayName.getter(int64_t a1)
{
  v1 = HTTerminationSubReasonDisplayName(4, a1);
  v2 = sub_2510C59C4();

  return v2;
}

char *sub_2510C05A4@<X0>(char **a1@<X8>)
{
  result = sub_2510C3144(&qword_27F415DD0, &qword_27F415DD8, &qword_27F4162C0, &qword_2510C8E70);
  *a1 = result;
  return result;
}

uint64_t sub_2510C05F4@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F415DD0;
  return result;
}

uint64_t static HTCodeSigningTerminationReason.firstCase.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415DE0 = a1;
  return result;
}

uint64_t static HTCodeSigningTerminationReason.lastCaseRawValue.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415DE8 = a1;
  return result;
}

uint64_t HTCodeSigningTerminationReason.displayName.getter(int64_t a1)
{
  v1 = HTTerminationSubReasonDisplayName(8, a1);
  v2 = sub_2510C59C4();

  return v2;
}

char *sub_2510C08A0@<X0>(char **a1@<X8>)
{
  result = sub_2510C3144(&qword_27F415DE0, &qword_27F415DE8, &qword_27F4162C8, &qword_2510C8E78);
  *a1 = result;
  return result;
}

uint64_t sub_2510C08F0@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F415DE0;
  return result;
}

uint64_t static HTDYLDTerminationReason.firstCase.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415DF0 = a1;
  return result;
}

uint64_t static HTDYLDTerminationReason.lastCaseRawValue.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415DF8 = a1;
  return result;
}

uint64_t HTDYLDTerminationReason.displayName.getter(int64_t a1)
{
  v1 = HTTerminationSubReasonDisplayName(64, a1);
  v2 = sub_2510C59C4();

  return v2;
}

char *sub_2510C0BA0@<X0>(char **a1@<X8>)
{
  result = _sSo23HTDYLDTerminationReasonV24HangTracerSettingsClientE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_2510C0BD0@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F415DF0;
  return result;
}

uint64_t static HTLibXPCTerminationReason.firstCase.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E00 = a1;
  return result;
}

uint64_t static HTLibXPCTerminationReason.lastCaseRawValue.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E08 = a1;
  return result;
}

uint64_t HTLibXPCTerminationReason.displayName.getter(int64_t a1)
{
  v1 = HTTerminationSubReasonDisplayName(128, a1);
  v2 = sub_2510C59C4();

  return v2;
}

char *sub_2510C0E7C@<X0>(char **a1@<X8>)
{
  result = sub_2510C3144(&qword_27F415E00, &qword_27F415E08, &qword_27F4162D8, &qword_2510C8E88);
  *a1 = result;
  return result;
}

uint64_t sub_2510C0ECC@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F415E00;
  return result;
}

uint64_t static HTExecTerminationReason.firstCase.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E10 = a1;
  return result;
}

uint64_t static HTExecTerminationReason.lastCaseRawValue.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E18 = a1;
  return result;
}

uint64_t HTExecTerminationReason.displayName.getter(int64_t a1)
{
  v1 = HTTerminationSubReasonDisplayName(512, a1);
  v2 = sub_2510C59C4();

  return v2;
}

char *sub_2510C1178@<X0>(char **a1@<X8>)
{
  result = sub_2510C3144(&qword_27F415E10, &qword_27F415E18, &qword_27F4162E0, &qword_2510C8E90);
  *a1 = result;
  return result;
}

uint64_t sub_2510C11C8@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F415E10;
  return result;
}

uint64_t static HTSpringBoardTerminationReason.firstCase.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E20 = a1;
  return result;
}

uint64_t static HTSpringBoardTerminationReason.lastCaseRawValue.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E28 = a1;
  return result;
}

uint64_t HTSpringBoardTerminationReason.displayName.getter(int64_t a1)
{
  v1 = HTTerminationSubReasonDisplayName(1024, a1);
  v2 = sub_2510C59C4();

  return v2;
}

char *sub_2510C1474@<X0>(char **a1@<X8>)
{
  result = sub_2510C3144(&qword_27F415E20, &qword_27F415E28, &qword_27F4162E8, &qword_2510C8E98);
  *a1 = result;
  return result;
}

uint64_t sub_2510C14C4@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F415E20;
  return result;
}

uint64_t static HTRunningBoardTerminationReason.firstCase.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E30 = a1;
  return result;
}

uint64_t static HTRunningBoardTerminationReason.lastCaseRawValue.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E38 = a1;
  return result;
}

uint64_t HTRunningBoardTerminationReason.displayName.getter(int64_t a1)
{
  v1 = HTTerminationSubReasonDisplayName(0x8000, a1);
  v2 = sub_2510C59C4();

  return v2;
}

char *sub_2510C1770@<X0>(char **a1@<X8>)
{
  result = sub_2510C3144(&qword_27F415E30, &qword_27F415E38, &qword_27F4162F0, &qword_2510C8EA0);
  *a1 = result;
  return result;
}

uint64_t sub_2510C17C0@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F415E30;
  return result;
}

uint64_t static HTLibSystemTerminationReason.firstCase.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E40 = a1;
  return result;
}

uint64_t static HTLibSystemTerminationReason.lastCaseRawValue.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E48 = a1;
  return result;
}

uint64_t HTLibSystemTerminationReason.displayName.getter(int64_t a1)
{
  v1 = HTTerminationSubReasonDisplayName(0x40000, a1);
  v2 = sub_2510C59C4();

  return v2;
}

char *sub_2510C1A6C@<X0>(char **a1@<X8>)
{
  result = sub_2510C3144(&qword_27F415E40, &qword_27F415E48, &qword_27F4162F8, &qword_2510C8EA8);
  *a1 = result;
  return result;
}

uint64_t sub_2510C1ABC@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F415E40;
  return result;
}

uint64_t static HTWatchdogTerminationReason.firstCase.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E50 = a1;
  return result;
}

uint64_t static HTWatchdogTerminationReason.lastCaseRawValue.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E58 = a1;
  return result;
}

uint64_t HTWatchdogTerminationReason.displayName.getter(int64_t a1)
{
  v1 = HTTerminationSubReasonDisplayName(0x100000, a1);
  v2 = sub_2510C59C4();

  return v2;
}

char *sub_2510C1D68@<X0>(char **a1@<X8>)
{
  result = _sSo27HTWatchdogTerminationReasonV24HangTracerSettingsClientE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_2510C1D98@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F415E50;
  return result;
}

uint64_t static HTWatchKitTerminationReason.firstCase.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E60 = a1;
  return result;
}

uint64_t static HTWatchKitTerminationReason.lastCaseRawValue.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E68 = a1;
  return result;
}

uint64_t HTWatchKitTerminationReason.displayName.getter(int64_t a1)
{
  v1 = HTTerminationSubReasonDisplayName(0x400000, a1);
  v2 = sub_2510C59C4();

  return v2;
}

char *sub_2510C2044@<X0>(char **a1@<X8>)
{
  result = sub_2510C3144(&qword_27F415E60, &qword_27F415E68, &qword_27F416308, &qword_2510C8EB8);
  *a1 = result;
  return result;
}

uint64_t sub_2510C2094@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F415E60;
  return result;
}

uint64_t static HTGuardTerminationReason.firstCase.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E70 = a1;
  return result;
}

uint64_t static HTGuardTerminationReason.lastCaseRawValue.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E78 = a1;
  return result;
}

uint64_t HTGuardTerminationReason.displayName.getter(int64_t a1)
{
  v1 = HTTerminationSubReasonDisplayName(0x800000, a1);
  v2 = sub_2510C59C4();

  return v2;
}

char *sub_2510C2340@<X0>(char **a1@<X8>)
{
  result = sub_2510C3144(&qword_27F415E70, &qword_27F415E78, &qword_27F416310, &qword_2510C8EC0);
  *a1 = result;
  return result;
}

uint64_t sub_2510C2390@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F415E70;
  return result;
}

uint64_t static HTEndpointSecurityTerminationReason.firstCase.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E80 = a1;
  return result;
}

uint64_t static HTEndpointSecurityTerminationReason.lastCaseRawValue.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E88 = a1;
  return result;
}

uint64_t HTEndpointSecurityTerminationReason.displayName.getter(int64_t a1)
{
  v1 = HTTerminationSubReasonDisplayName(0x8000000, a1);
  v2 = sub_2510C59C4();

  return v2;
}

char *sub_2510C263C@<X0>(char **a1@<X8>)
{
  result = sub_2510C3144(&qword_27F415E80, &qword_27F415E88, &qword_27F416318, &qword_2510C8EC8);
  *a1 = result;
  return result;
}

uint64_t sub_2510C268C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F415E80;
  return result;
}

uint64_t static HTBacklightServicesTerminationReason.firstCase.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E90 = a1;
  return result;
}

uint64_t static HTBacklightServicesTerminationReason.lastCaseRawValue.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F415E98 = a1;
  return result;
}

uint64_t HTBacklightServicesTerminationReason.displayName.getter(int64_t a1)
{
  v1 = HTTerminationSubReasonDisplayName(0x100000000, a1);
  v2 = sub_2510C59C4();

  return v2;
}

char *sub_2510C2938@<X0>(char **a1@<X8>)
{
  result = _sSo36HTBacklightServicesTerminationReasonV24HangTracerSettingsClientE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_2510C2968(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = HTTerminationSubReasonDisplayName(a3, *v3);
  v5 = sub_2510C59C4();

  return v5;
}

uint64_t sub_2510C29BC@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F415E90;
  return result;
}

void *sub_2510C2A6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_2510C2ACC(void *a1, uint64_t *a2)
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

void *sub_2510C2AFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2510C2B28@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2510C2C14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2510C5168(a1);

  *a2 = v3;
  return result;
}

char *sub_2510C2C54(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_2510C2D50(void *a1, int64_t a2, char a3)
{
  result = sub_2510C2D70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2510C2D70(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4162A8, &qword_2510C8E58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4162B0, &qword_2510C8E60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *_sSo19HTTerminationReasonV24HangTracerSettingsClientE8allCasesSayABGvgZ_0()
{
  v0 = sub_2510C2C54(0, 1, 1, MEMORY[0x277D84F90], &qword_27F416328, &qword_2510C8ED8);
  v1 = *(v0 + 2);
  v2 = 2;
  do
  {
    v3 = *(v0 + 3);
    if (v1 >= v3 >> 1)
    {
      v0 = sub_2510C2C54((v3 > 1), v1 + 1, 1, v0, &qword_27F416328, &qword_2510C8ED8);
    }

    *(v0 + 2) = v1 + 1;
    *&v0[8 * v1 + 32] = v2;
    v4 = (v2 >> 42) & 0x1FFFFF;
    v2 *= 2;
    ++v1;
  }

  while (!v4);
  return v0;
}

char *_sSo25HTJetsamTerminationReasonV24HangTracerSettingsClientE8allCasesSayABGvgZ_0()
{
  swift_beginAccess();
  v0 = MEMORY[0x277D84F90];
  v1 = qword_27F415DC8;
  do
  {
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v0 = sub_2510C2C54(0, *(v0 + 2) + 1, 1, v0, &qword_27F4162B8, &qword_2510C8E68);
      }

      v3 = *(v0 + 2);
      v2 = *(v0 + 3);
      if (v3 >= v2 >> 1)
      {
        v0 = sub_2510C2C54((v2 > 1), v3 + 1, 1, v0, &qword_27F4162B8, &qword_2510C8E68);
      }

      *(v0 + 2) = v3 + 1;
      *&v0[8 * v3 + 32] = v1;
      if (qword_27F416660 != -1)
      {
        swift_once();
      }

      v4 = 2 * v1;
      swift_beginAccess();
      if (qword_27F416668 > 0x3F)
      {
        break;
      }

      v1 *= 2;
      if (1 << qword_27F416668 < v4)
      {
        goto LABEL_11;
      }
    }

    v1 = 0;
  }

  while (!v4);
LABEL_11:
  v6 = *(v0 + 2);
  v5 = *(v0 + 3);
  if (v6 >= v5 >> 1)
  {
    v0 = sub_2510C2C54((v5 > 1), v6 + 1, 1, v0, &qword_27F4162B8, &qword_2510C8E68);
  }

  *(v0 + 2) = v6 + 1;
  *&v0[8 * v6 + 32] = 0x20000000000;
  return v0;
}

char *sub_2510C3144(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a1;
  swift_beginAccess();
  v9 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2510C2C54(0, *(v9 + 2) + 1, 1, v9, a3, a4);
      }

      v11 = *(v9 + 2);
      v10 = *(v9 + 3);
      if (v11 >= v10 >> 1)
      {
        v9 = sub_2510C2C54((v10 > 1), v11 + 1, 1, v9, a3, a4);
      }

      *(v9 + 2) = v11 + 1;
      *&v9[8 * v11 + 32] = v8;
      v12 = 2 * v8;
      if (*a2 >= 0x40uLL)
      {
        break;
      }

      v8 *= 2;
      if (1 << *a2 < v12)
      {
        return v9;
      }
    }

    v8 = 0;
  }

  while (!v12);
  return v9;
}

char *_sSo23HTDYLDTerminationReasonV24HangTracerSettingsClientE8allCasesSayABGvgZ_0()
{
  swift_beginAccess();
  v0 = qword_27F415DF0;
  swift_beginAccess();
  v1 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_2510C2C54(0, *(v1 + 2) + 1, 1, v1, &qword_27F4162D0, &qword_2510C8E80);
      }

      v3 = *(v1 + 2);
      v2 = *(v1 + 3);
      v4 = v3 + 1;
      if (v3 >= v2 >> 1)
      {
        v1 = sub_2510C2C54((v2 > 1), v3 + 1, 1, v1, &qword_27F4162D0, &qword_2510C8E80);
      }

      *(v1 + 2) = v4;
      *&v1[8 * v3 + 32] = v0;
      v5 = 2 * v0;
      if (qword_27F415DF8 > 0x3F)
      {
        break;
      }

      v0 *= 2;
      if (1 << qword_27F415DF8 < v5)
      {
        goto LABEL_9;
      }
    }

    v0 = 0;
  }

  while (!v5);
LABEL_9:
  v6 = *(v1 + 3);
  if ((v3 + 2) > (v6 >> 1))
  {
    v1 = sub_2510C2C54((v6 > 1), v3 + 2, 1, v1, &qword_27F4162D0, &qword_2510C8E80);
  }

  *(v1 + 2) = v3 + 2;
  *&v1[8 * v4 + 32] = 512;
  return v1;
}

char *_sSo27HTWatchdogTerminationReasonV24HangTracerSettingsClientE8allCasesSayABGvgZ_0()
{
  swift_beginAccess();
  v0 = qword_27F415E50;
  swift_beginAccess();
  v1 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_2510C2C54(0, *(v1 + 2) + 1, 1, v1, &qword_27F416300, &qword_2510C8EB0);
      }

      v3 = *(v1 + 2);
      v2 = *(v1 + 3);
      v4 = v3 + 1;
      if (v3 >= v2 >> 1)
      {
        v1 = sub_2510C2C54((v2 > 1), v3 + 1, 1, v1, &qword_27F416300, &qword_2510C8EB0);
      }

      *(v1 + 2) = v4;
      *&v1[8 * v3 + 32] = v0;
      v5 = 2 * v0;
      if (qword_27F415E58 > 0x3F)
      {
        break;
      }

      v0 *= 2;
      if (1 << qword_27F415E58 < v5)
      {
        goto LABEL_9;
      }
    }

    v0 = 0;
  }

  while (!v5);
LABEL_9:
  v6 = *(v1 + 3);
  if ((v3 + 2) > (v6 >> 1))
  {
    v1 = sub_2510C2C54((v6 > 1), v3 + 2, 1, v1, &qword_27F416300, &qword_2510C8EB0);
  }

  *(v1 + 2) = v3 + 2;
  *&v1[8 * v4 + 32] = 0x100000;
  return v1;
}

char *_sSo36HTBacklightServicesTerminationReasonV24HangTracerSettingsClientE8allCasesSayABGvgZ_0()
{
  swift_beginAccess();
  v0 = qword_27F415E90;
  swift_beginAccess();
  v1 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_2510C2C54(0, *(v1 + 2) + 1, 1, v1, &qword_27F416320, &qword_2510C8ED0);
      }

      v3 = *(v1 + 2);
      v2 = *(v1 + 3);
      v4 = v3 + 1;
      if (v3 >= v2 >> 1)
      {
        v1 = sub_2510C2C54((v2 > 1), v3 + 1, 1, v1, &qword_27F416320, &qword_2510C8ED0);
      }

      *(v1 + 2) = v4;
      *&v1[8 * v3 + 32] = v0;
      v5 = 2 * v0;
      if (qword_27F415E98 > 0x3F)
      {
        break;
      }

      v0 *= 2;
      if (1 << qword_27F415E98 < v5)
      {
        goto LABEL_9;
      }
    }

    v0 = 0;
  }

  while (!v5);
LABEL_9:
  v6 = *(v1 + 3);
  v7 = v3 + 2;
  if ((v3 + 2) > (v6 >> 1))
  {
    v1 = sub_2510C2C54((v6 > 1), v3 + 2, 1, v1, &qword_27F416320, &qword_2510C8ED0);
  }

  *(v1 + 2) = v7;
  *&v1[8 * v4 + 32] = 0x100000;
  v8 = *(v1 + 3);
  if ((v3 + 3) > (v8 >> 1))
  {
    v1 = sub_2510C2C54((v8 > 1), v3 + 3, 1, v1, &qword_27F416320, &qword_2510C8ED0);
  }

  *(v1 + 2) = v3 + 3;
  *&v1[8 * v7 + 32] = 0x200000;
  return v1;
}

uint64_t sub_2510C3798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2510C3978(uint64_t a1)
{
  result = sub_2510C3798(&qword_27F415F30, type metadata accessor for HTJetsamTerminationReason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2510C3A00(uint64_t a1)
{
  result = sub_2510C3798(&qword_27F415F48, type metadata accessor for HTSignalTerminationReason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2510C3A88(uint64_t a1)
{
  result = sub_2510C3798(&qword_27F415F60, type metadata accessor for HTCodeSigningTerminationReason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2510C3B10(uint64_t a1)
{
  result = sub_2510C3798(&qword_27F415F78, type metadata accessor for HTDYLDTerminationReason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2510C3B98(uint64_t a1)
{
  result = sub_2510C3798(&qword_27F415F90, type metadata accessor for HTLibXPCTerminationReason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2510C3C20(uint64_t a1)
{
  result = sub_2510C3798(&qword_27F415FA8, type metadata accessor for HTExecTerminationReason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2510C3CA8(uint64_t a1)
{
  result = sub_2510C3798(&qword_27F415FC0, type metadata accessor for HTSpringBoardTerminationReason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2510C3D30(uint64_t a1)
{
  result = sub_2510C3798(&qword_27F415FD8, type metadata accessor for HTRunningBoardTerminationReason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2510C3DB8(uint64_t a1)
{
  result = sub_2510C3798(&qword_27F415FF0, type metadata accessor for HTLibSystemTerminationReason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2510C3E40(uint64_t a1)
{
  result = sub_2510C3798(&qword_27F416008, type metadata accessor for HTWatchdogTerminationReason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2510C3EC8(uint64_t a1)
{
  result = sub_2510C3798(&qword_27F416020, type metadata accessor for HTWatchKitTerminationReason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2510C3F50(uint64_t a1)
{
  result = sub_2510C3798(&qword_27F416038, type metadata accessor for HTGuardTerminationReason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2510C3FD8(uint64_t a1)
{
  result = sub_2510C3798(&qword_27F416050, type metadata accessor for HTEndpointSecurityTerminationReason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2510C4060(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2510C40B4(uint64_t a1)
{
  result = sub_2510C3798(&qword_27F416068, type metadata accessor for HTBacklightServicesTerminationReason);
  *(a1 + 8) = result;
  return result;
}

void sub_2510C415C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2510C5168(uint64_t a1)
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

uint64_t sub_2510C51A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t HTHangsDataEntry.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 creationDate];
  if (v3)
  {
    v4 = v3;
    sub_2510C5994();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2510C59A4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t HTHang.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 creationDate];
  sub_2510C5994();

  v4 = sub_2510C59A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t HTAnalyticsSendEventLazy_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return +[(HTHangSymbolicator *)v0];
}

void configureTailspinForThirdPartyDevelopment_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "configureTailspinForThirdPartyDevelopment";
  _os_log_error_impl(&dword_2510AF000, log, OS_LOG_TYPE_ERROR, "%s: Failed to create tailspin config object", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}