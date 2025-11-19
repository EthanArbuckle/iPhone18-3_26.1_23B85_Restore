id NMLogForCategory(uint64_t a1)
{
  if (NMLogForCategory_onceToken != -1)
  {
    NMLogForCategory_cold_1();
  }

  v2 = NMLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __NMLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.nanomusic", "NanoMusicCore");
  v1 = NMLogForCategory_logObjects;
  NMLogForCategory_logObjects = v0;

  v2 = os_log_create("com.apple.nanomusic", "NanoMusicCore-Oversize");
  v3 = qword_28154B830;
  qword_28154B830 = v2;

  v4 = os_log_create("com.apple.nanomusic", "NanoMediaRemote");
  v5 = qword_28154B838;
  qword_28154B838 = v4;

  v6 = os_log_create("com.apple.nanomusic", "NanoMediaRemote-Oversize");
  v7 = qword_28154B840;
  qword_28154B840 = v6;

  v8 = os_log_create("com.apple.nanomusic", "NanoAudioControl");
  v9 = qword_28154B848;
  qword_28154B848 = v8;

  v10 = os_log_create("com.apple.nanomusic", "NanoMusicSync");
  v11 = qword_28154B850;
  qword_28154B850 = v10;

  v12 = os_log_create("com.apple.nanomusic", "NanoMusicSync-Oversize");
  v13 = qword_28154B858;
  qword_28154B858 = v12;

  v14 = os_log_create("com.apple.nanomusic", "NanoMediaUI");
  v15 = qword_28154B860;
  qword_28154B860 = v14;

  v16 = os_log_create("com.apple.nanomusic", "NanoMediaUI-Oversize");
  v17 = qword_28154B868;
  qword_28154B868 = v16;

  v18 = os_log_create("com.apple.nanomusic", "NanoMediaAPI");
  v19 = qword_28154B870;
  qword_28154B870 = v18;

  v20 = os_log_create("com.apple.nanomusic", "NanoMediaAPI-Oversize");
  v21 = qword_28154B878;
  qword_28154B878 = v20;

  v22 = os_log_create("com.apple.nanomusic", "NanoMediaTool");
  v23 = qword_28154B880;
  qword_28154B880 = v22;

  v24 = os_log_create("com.apple.nanomusic", "NanoMediaBridgeUI");
  v25 = qword_28154B890;
  qword_28154B890 = v24;

  v26 = os_log_create("com.apple.nanomusic", "NanoMediaBridgeUI-Oversize");
  v27 = qword_28154B898;
  qword_28154B898 = v26;

  qword_28154B888 = os_log_create("com.apple.nanomusic", "NanoMediaAppActivity");

  return MEMORY[0x2821F96F8]();
}

id NMAPIDictionaryWithObject(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (_NSIsNSDictionary())
  {
    v7 = NMLogForCategory(10);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      NMAPIDictionaryWithObject_cold_2();
    }

    v8 = v5;
  }

  else
  {
    v9 = NMLogForCategory(9);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      NMAPIDictionaryWithObject_cold_1();
    }

    if (a3)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7102 userInfo:0];
      *a3 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id NMAPIArrayWithObject(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (_NSIsNSArray())
  {
    v7 = NMLogForCategory(10);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      NMAPIDictionaryWithObject_cold_2();
    }

    v8 = v5;
  }

  else
  {
    v9 = NMLogForCategory(9);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      NMAPIArrayWithObject_cold_1();
    }

    if (a3)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7102 userInfo:0];
      *a3 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id NMAPIStringWithObject(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (_NSIsNSString())
  {
    v7 = NMLogForCategory(10);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      NMAPIDictionaryWithObject_cold_2();
    }

    v8 = v5;
  }

  else
  {
    v9 = NMLogForCategory(9);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      NMAPIStringWithObject_cold_1();
    }

    if (a3)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7102 userInfo:0];
      *a3 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id NMAPIDictionaryInSingleObjectArray(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 count] == 1)
  {
    v7 = NMLogForCategory(10);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      NMAPIDictionaryWithObject_cold_2();
    }

    v8 = [v5 firstObject];
    v9 = NMAPIDictionaryWithObject(v8, v6, a3);
  }

  else
  {
    v10 = NMLogForCategory(9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      NMAPIDictionaryInSingleObjectArray_cold_1(v6, v5, v10);
    }

    if (a3)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7102 userInfo:0];
      *a3 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

id NMAPIOptionalDictionaryWithObject(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    a1 = NMAPIDictionaryWithObject(a1, a2, a3);
    v3 = vars8;
  }

  return a1;
}

id NMAPIOptionalArrayWithObject(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    a1 = NMAPIArrayWithObject(a1, a2, a3);
    v3 = vars8;
  }

  return a1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id MusicURLComponentsWithURLBag(void *a1, int a2)
{
  v3 = [a1 dictionaryForBagKey:*MEMORY[0x277D7F9E0]];
  if (_NSIsNSDictionary())
  {
    v4 = [v3 objectForKey:@"ampMusicAPIDomains"];
    if (_NSIsNSDictionary())
    {
      v5 = @"default";
      if (a2)
      {
        v5 = @"listenNow";
      }

      v6 = v5;
      v7 = [v4 objectForKey:v6];
      if (_NSIsNSString())
      {
        v8 = objc_opt_new();
        [v8 setScheme:@"https"];
        [v8 setHost:v7];
      }

      else
      {
        v16 = NMLogForCategory(9);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          MusicURLComponentsWithURLBag_cold_3(v6, v4, v16);
        }

        v8 = 0;
      }
    }

    else
    {
      v7 = NMLogForCategory(9);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        MusicURLComponentsWithURLBag_cold_2(v3, v7);
      }

      v8 = 0;
    }
  }

  else
  {
    v4 = NMLogForCategory(9);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      MusicURLComponentsWithURLBag_cold_1(v4, v9, v10, v11, v12, v13, v14, v15);
    }

    v8 = 0;
  }

  return v8;
}

id MusicURLPathStorefrontWithURLBag(void *a1)
{
  v1 = [a1 stringForBagKey:@"countryCode"];
  if (_NSIsNSString())
  {
    v2 = v1;
  }

  else
  {
    v3 = NMLogForCategory(9);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      MusicURLPathStorefrontWithURLBag_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v2 = 0;
  }

  return v2;
}

id MusicURLQueryItemLanguageWithURLBag(void *a1)
{
  v1 = [a1 stringForBagKey:@"language"];
  if (_NSIsNSString() && [v1 length])
  {
    v2 = [MEMORY[0x277CCAD18] queryItemWithName:@"l" value:v1];
  }

  else
  {
    v3 = NMLogForCategory(9);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      MusicURLQueryItemLanguageWithURLBag_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v2 = 0;
  }

  return v2;
}

void NMAPIDictionaryWithObject_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B251000, v0, v1, "[NMAPIResponseParser] Expected a dictionary for %@ object: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void NMAPIDictionaryWithObject_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25B251000, v0, v1, "[NMAPIResponseParser] %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void NMAPIArrayWithObject_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B251000, v0, v1, "[NMAPIResponseParser] Expected an array for %@ object: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void NMAPIStringWithObject_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B251000, v0, v1, "[NMAPIResponseParser] Expected a string for %@ object: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void NMAPIDictionaryInSingleObjectArray_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = [a2 count];
  _os_log_error_impl(&dword_25B251000, a3, OS_LOG_TYPE_ERROR, "[NMAPIResponseParser] Invalid response due to %@ object count: %lu", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void MusicURLComponentsWithURLBag_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25B251000, a2, OS_LOG_TYPE_ERROR, "No domains in music common dictionary of bag, can't generate URL: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void MusicURLComponentsWithURLBag_cold_3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_25B251000, log, OS_LOG_TYPE_ERROR, "No host found for API domain requested (%{public}@): %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}