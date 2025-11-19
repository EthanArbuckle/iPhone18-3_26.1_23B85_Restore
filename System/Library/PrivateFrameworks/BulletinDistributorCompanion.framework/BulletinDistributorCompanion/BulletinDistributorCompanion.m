void sub_241FB5504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v61 - 224), 8);
  _Block_object_dispose((v61 - 192), 8);
  _Block_object_dispose((v61 - 136), 8);
  _Unwind_Resume(a1);
}

id blt_general_log()
{
  if (blt_general_log_onceToken != -1)
  {
    blt_general_log_cold_1();
  }

  v1 = blt_general_log___logger;

  return v1;
}

uint64_t BLTPBSetNotificationsSoundRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_241FB7A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x245D067A0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

const char *BLTIDSConnectionStatusString(unint64_t a1)
{
  if (a1 > 3)
  {
    return "unknown";
  }

  else
  {
    return off_278D31628[a1];
  }
}

void _BLTLogIDSSendFail(int a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = blt_ids_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412802;
    v10 = v6;
    v11 = 1024;
    v12 = a1;
    v13 = 2112;
    v14 = v5;
    _os_log_error_impl(&dword_241FB3000, v7, OS_LOG_TYPE_ERROR, "IDS error sending request with identifier %@ (paired device ready: %{BOOL}u): %@", &v9, 0x1Cu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__263(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241FBBCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241FBD258(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int buf, int a12, int a13, __int16 a14, int a15, __int16 a16, __int16 a17, id a18, __int16 a19)
{
  if (a2 == 1)
  {
    v19 = objc_begin_catch(a1);
    v20 = blt_general_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      buf = 138413058;
      a14 = 2112;
      a17 = 2112;
      a18 = v19;
      a19 = 2112;
      _os_log_error_impl(&dword_241FB3000, v20, OS_LOG_TYPE_ERROR, "%@ objectForKey: %@ exception: %@ loading %@", &buf, 0x2Au);
    }

    objc_end_catch();
    JUMPOUT(0x241FBD158);
  }

  _Unwind_Resume(a1);
}

id blt_bug_reporter_log()
{
  if (blt_bug_reporter_log_onceToken != -1)
  {
    blt_bug_reporter_log_cold_1();
  }

  v1 = blt_bug_reporter_log___logger;

  return v1;
}

uint64_t __blt_bug_reporter_log_block_invoke()
{
  blt_bug_reporter_log___logger = os_log_create("com.apple.BulletinDistributor", "bug_reporter");

  return MEMORY[0x2821F96F8]();
}

id blt_dnd_log()
{
  if (blt_dnd_log_onceToken != -1)
  {
    blt_dnd_log_cold_1();
  }

  v1 = blt_dnd_log___logger;

  return v1;
}

uint64_t __blt_dnd_log_block_invoke()
{
  blt_dnd_log___logger = os_log_create("com.apple.BulletinDistributor", "dnd");

  return MEMORY[0x2821F96F8]();
}

uint64_t __blt_general_log_block_invoke()
{
  blt_general_log___logger = os_log_create("com.apple.BulletinDistributor", "general");

  return MEMORY[0x2821F96F8]();
}

id blt_lights_and_sirens_log()
{
  if (blt_lights_and_sirens_log_onceToken != -1)
  {
    blt_lights_and_sirens_log_cold_1();
  }

  v1 = blt_lights_and_sirens_log___logger;

  return v1;
}

uint64_t __blt_lights_and_sirens_log_block_invoke()
{
  blt_lights_and_sirens_log___logger = os_log_create("com.apple.BulletinDistributor", "lights_and_sirens");

  return MEMORY[0x2821F96F8]();
}

id blt_send_queue_log()
{
  if (blt_send_queue_log_onceToken != -1)
  {
    blt_send_queue_log_cold_1();
  }

  v1 = blt_send_queue_log___logger;

  return v1;
}

uint64_t __blt_send_queue_log_block_invoke()
{
  blt_send_queue_log___logger = os_log_create("com.apple.BulletinDistributor", "send_queue");

  return MEMORY[0x2821F96F8]();
}

id blt_standalone_log()
{
  if (blt_standalone_log_onceToken != -1)
  {
    blt_standalone_log_cold_1();
  }

  v1 = blt_standalone_log___logger;

  return v1;
}

uint64_t __blt_standalone_log_block_invoke()
{
  blt_standalone_log___logger = os_log_create("com.apple.BulletinDistributor", "standalone");

  return MEMORY[0x2821F96F8]();
}

id blt_ids_log()
{
  if (blt_ids_log_onceToken != -1)
  {
    blt_ids_log_cold_1();
  }

  v1 = blt_ids_log___logger;

  return v1;
}

uint64_t __blt_ids_log_block_invoke()
{
  blt_ids_log___logger = os_log_create("com.apple.BulletinDistributor", "ids");

  return MEMORY[0x2821F96F8]();
}

id blt_perf_log()
{
  if (blt_perf_log_onceToken != -1)
  {
    blt_perf_log_cold_1();
  }

  v1 = blt_perf_log___logger;

  return v1;
}

uint64_t __blt_perf_log_block_invoke()
{
  blt_perf_log___logger = os_log_create("com.apple.BulletinDistributor", "perf");

  return MEMORY[0x2821F96F8]();
}

id blt_settings_log()
{
  if (blt_settings_log_onceToken != -1)
  {
    blt_settings_log_cold_1();
  }

  v1 = blt_settings_log___logger;

  return v1;
}

uint64_t __blt_settings_log_block_invoke()
{
  blt_settings_log___logger = os_log_create("com.apple.BulletinDistributor", "settings");

  return MEMORY[0x2821F96F8]();
}

id blt_notification_size_log()
{
  if (blt_notification_size_log_onceToken != -1)
  {
    blt_notification_size_log_cold_1();
  }

  v1 = blt_notification_size_log___logger;

  return v1;
}

uint64_t __blt_notification_size_log_block_invoke()
{
  blt_notification_size_log___logger = os_log_create("com.apple.BulletinDistributor", "notification_size");

  return MEMORY[0x2821F96F8]();
}

id blt_cleanup_log()
{
  if (blt_cleanup_log_onceToken != -1)
  {
    blt_cleanup_log_cold_1();
  }

  v1 = blt_cleanup_log___logger;

  return v1;
}

uint64_t __blt_cleanup_log_block_invoke()
{
  blt_cleanup_log___logger = os_log_create("com.apple.BulletinDistributor", "cleanup");

  return MEMORY[0x2821F96F8]();
}

id blt_xpc_activity_log()
{
  if (blt_xpc_activity_log_onceToken != -1)
  {
    blt_xpc_activity_log_cold_1();
  }

  v1 = blt_xpc_activity_log___logger;

  return v1;
}

uint64_t __blt_xpc_activity_log_block_invoke()
{
  blt_xpc_activity_log___logger = os_log_create("com.apple.BulletinDistributor", "xpc_activity");

  return MEMORY[0x2821F96F8]();
}

id blt_global_settings_sync_log()
{
  if (blt_global_settings_sync_log_onceToken != -1)
  {
    blt_global_settings_sync_log_cold_1();
  }

  v1 = blt_global_settings_sync_log___logger;

  return v1;
}

uint64_t __blt_global_settings_sync_log_block_invoke()
{
  blt_global_settings_sync_log___logger = os_log_create("com.apple.BulletinDistributor", "global_settings_sync");

  return MEMORY[0x2821F96F8]();
}

void _BLTPerfLogCurrentThreadPriority(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = blt_perf_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  if (v3)
  {
    label = dispatch_queue_get_label(0);
    v5 = pthread_self();
    v6 = pthread_mach_thread_np(v5);
    v18 = 0;
    *thread_info_out = 0u;
    v17 = 0u;
    thread_info_outCnt = 10;
    if (thread_info(v6, 3u, thread_info_out, &thread_info_outCnt))
    {
      v7 = @"Unable to get thread info";
    }

    else if ((DWORD1(v17) - 1) > 1)
    {
      v7 = @"Unknown thread policy";
    }

    else
    {
      memset(v20, 0, 20);
      thread_info_outCnt = 5;
      if (DWORD1(v17) == 1)
      {
        v8 = thread_info(v6, 0xAu, v20, &thread_info_outCnt);
        v9 = *&v20[4];
        v10 = *&v20[8];
      }

      else
      {
        v8 = thread_info(v6, 0xBu, v20, &thread_info_outCnt);
        v10 = *&v20[4];
        v9 = *&v20[4];
      }

      v11 = "timeshare";
      if (DWORD1(v17) == 2)
      {
        v11 = "fixed";
      }

      if (v8)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to get thread priority %s info", v11, v14, v15];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"thread priority %s base: %d current: %d", v11, v9, v10];
      }
      v7 = ;
    }

    v12 = blt_perf_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *v20 = 136315650;
      *&v20[4] = a1;
      *&v20[12] = 2080;
      *&v20[14] = label;
      v21 = 2112;
      v22 = v7;
      _os_log_debug_impl(&dword_241FB3000, v12, OS_LOG_TYPE_DEBUG, "Function: %s Queue: %s %@", v20, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

_DWORD *BLTStateDataWithTitleAndDescription(void *a1, uint64_t a2)
{
  v3 = a1;
  v9 = 0;
  v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:a2 format:200 options:0 error:&v9];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 length];
    v7 = malloc_type_calloc(1uLL, v6 + 200, 0x1000040BEF03554uLL);
    *v7 = 1;
    v7[1] = v6;
    [v3 UTF8String];
    __strlcpy_chk();
    memcpy(v7 + 50, [v5 bytes], v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t BLTPBRemoveSectionRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBRemoveBulletinRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_278D31850[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBBulletinReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v152) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v152 & 0x7F) << v6;
      if ((v152 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 120;
        goto LABEL_253;
      case 2u:
        v14 = PBReaderReadString();
        v15 = 296;
        goto LABEL_253;
      case 3u:
        v14 = PBReaderReadString();
        v15 = 288;
        goto LABEL_253;
      case 4u:
        v14 = PBReaderReadString();
        v15 = 408;
        goto LABEL_253;
      case 5u:
        v14 = PBReaderReadString();
        v15 = 360;
        goto LABEL_253;
      case 6u:
        v14 = PBReaderReadString();
        v15 = 248;
        goto LABEL_253;
      case 7u:
        *(a1 + 440) |= 1u;
        v152 = 0;
        v102 = [a2 position] + 8;
        if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 8, v103 <= objc_msgSend(a2, "length")))
        {
          v148 = [a2 data];
          [v148 getBytes:&v152 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v145 = v152;
        v146 = 8;
        goto LABEL_316;
      case 8u:
        v14 = PBReaderReadData();
        v15 = 80;
        goto LABEL_253;
      case 9u:
        v18 = objc_alloc_init(BLTPBAction);
        [a1 addSupplementaryActions:v18];
        goto LABEL_233;
      case 0xAu:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        while (1)
        {
          LOBYTE(v152) = 0;
          v78 = [a2 position] + 1;
          if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
          {
            v80 = [a2 data];
            [v80 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v77 |= (v152 & 0x7F) << v75;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v12 = v76++ >= 9;
          if (v12)
          {
            v25 = 0;
            goto LABEL_283;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v77;
        }

LABEL_283:
        v142 = 200;
        goto LABEL_298;
      case 0xBu:
        v18 = objc_alloc_init(BLTPBAction);
        v81 = 312;
        goto LABEL_232;
      case 0xCu:
        v14 = PBReaderReadString();
        v15 = 272;
        goto LABEL_253;
      case 0xDu:
        v14 = PBReaderReadString();
        v15 = 264;
        goto LABEL_253;
      case 0xEu:
        v18 = objc_alloc_init(BLTPBAction);
        v81 = 176;
        goto LABEL_232;
      case 0xFu:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 440) |= 0x100u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            v121 = [a2 data];
            [v121 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v152 & 0x7F) << v116;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v12 = v117++ >= 9;
          if (v12)
          {
            v25 = 0;
            goto LABEL_297;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v118;
        }

LABEL_297:
        v142 = 304;
        goto LABEL_298;
      case 0x10u:
        v14 = PBReaderReadString();
        v15 = 320;
        goto LABEL_253;
      case 0x11u:
        v14 = PBReaderReadString();
        v15 = 128;
        goto LABEL_253;
      case 0x12u:
        *(a1 + 440) |= 4u;
        v152 = 0;
        v122 = [a2 position] + 8;
        if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 8, v123 <= objc_msgSend(a2, "length")))
        {
          v149 = [a2 data];
          [v149 getBytes:&v152 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v145 = v152;
        v146 = 24;
        goto LABEL_316;
      case 0x13u:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        while (1)
        {
          LOBYTE(v152) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v152 & 0x7F) << v57;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v12 = v58++ >= 9;
          if (v12)
          {
            LOBYTE(v32) = 0;
            goto LABEL_273;
          }
        }

        v32 = (v59 != 0) & ~[a2 hasError];
LABEL_273:
        v143 = 429;
        goto LABEL_303;
      case 0x14u:
        v14 = PBReaderReadString();
        v15 = 384;
        goto LABEL_253;
      case 0x15u:
        v14 = PBReaderReadData();
        v15 = 160;
        goto LABEL_253;
      case 0x16u:
        v14 = PBReaderReadString();
        v15 = 416;
        goto LABEL_253;
      case 0x17u:
        v14 = PBReaderReadData();
        v15 = 64;
        goto LABEL_253;
      case 0x18u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 440) |= 0x200u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v152 & 0x7F) << v69;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v12 = v70++ >= 9;
          if (v12)
          {
            v25 = 0;
            goto LABEL_279;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v71;
        }

LABEL_279:
        v142 = 336;
        goto LABEL_298;
      case 0x19u:
        v14 = PBReaderReadString();
        v15 = 328;
        goto LABEL_253;
      case 0x1Au:
        v14 = PBReaderReadString();
        v15 = 344;
        goto LABEL_253;
      case 0x1Bu:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 440) |= 0x40u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v42 = [a2 position] + 1;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v41 |= (v152 & 0x7F) << v39;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v12 = v40++ >= 9;
          if (v12)
          {
            v25 = 0;
            goto LABEL_267;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v41;
        }

LABEL_267:
        v142 = 96;
        goto LABEL_298;
      case 0x1Cu:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 440) |= 0x800u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v152 & 0x7F) << v33;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v12 = v34++ >= 9;
          if (v12)
          {
            LOBYTE(v32) = 0;
            goto LABEL_263;
          }
        }

        v32 = (v35 != 0) & ~[a2 hasError];
LABEL_263:
        v143 = 425;
        goto LABEL_303;
      case 0x1Du:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 440) |= 0x10000u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v152 & 0x7F) << v63;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            LOBYTE(v32) = 0;
            goto LABEL_275;
          }
        }

        v32 = (v65 != 0) & ~[a2 hasError];
LABEL_275:
        v143 = 431;
        goto LABEL_303;
      case 0x1Eu:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 440) |= 0x200000u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v152 & 0x7F) << v82;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            LOBYTE(v32) = 0;
            goto LABEL_285;
          }
        }

        v32 = (v84 != 0) & ~[a2 hasError];
LABEL_285:
        v143 = 436;
        goto LABEL_303;
      case 0x1Fu:
        v18 = PBReaderReadString();
        if (v18)
        {
          [a1 addSubsectionIDs:v18];
        }

        goto LABEL_236;
      case 0x20u:
        v14 = PBReaderReadString();
        v15 = 184;
        goto LABEL_253;
      case 0x21u:
        v14 = PBReaderReadString();
        v15 = 104;
        goto LABEL_253;
      case 0x22u:
        v18 = PBReaderReadString();
        if (v18)
        {
          [a1 addPeopleIDs:v18];
        }

        goto LABEL_236;
      case 0x23u:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 440) |= 0x4000u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v113 = [a2 position] + 1;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
          {
            v115 = [a2 data];
            [v115 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v112 |= (v152 & 0x7F) << v110;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v12 = v111++ >= 9;
          if (v12)
          {
            LOBYTE(v32) = 0;
            goto LABEL_293;
          }
        }

        v32 = (v112 != 0) & ~[a2 hasError];
LABEL_293:
        v143 = 428;
        goto LABEL_303;
      case 0x24u:
        v14 = PBReaderReadString();
        v15 = 136;
        goto LABEL_253;
      case 0x25u:
        v14 = PBReaderReadData();
        v15 = 168;
        goto LABEL_253;
      case 0x26u:
        v14 = PBReaderReadData();
        v15 = 72;
        goto LABEL_253;
      case 0x27u:
        v14 = PBReaderReadString();
        v15 = 392;
        goto LABEL_253;
      case 0x28u:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_253;
      case 0x29u:
        v18 = objc_alloc_init(BLTPBBulletinAttachment);
        [a1 addAdditionalAttachments:v18];
        v152 = 0;
        v153 = 0;
        if (!PBReaderPlaceMark() || (BLTPBBulletinAttachmentReadFrom(v18, a2) & 1) == 0)
        {
          goto LABEL_319;
        }

        goto LABEL_235;
      case 0x2Au:
        *(a1 + 440) |= 8u;
        v152 = 0;
        v88 = [a2 position] + 8;
        if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 8, v89 <= objc_msgSend(a2, "length")))
        {
          v147 = [a2 data];
          [v147 getBytes:&v152 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v145 = v152;
        v146 = 32;
        goto LABEL_316;
      case 0x2Bu:
        v14 = PBReaderReadString();
        v15 = 280;
        goto LABEL_253;
      case 0x2Cu:
        *(a1 + 440) |= 0x20u;
        v152 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v144 = [a2 data];
          [v144 getBytes:&v152 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v145 = v152;
        v146 = 48;
        goto LABEL_316;
      case 0x2Du:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 440) |= 0x80000u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v152 & 0x7F) << v45;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v12 = v46++ >= 9;
          if (v12)
          {
            LOBYTE(v32) = 0;
            goto LABEL_269;
          }
        }

        v32 = (v47 != 0) & ~[a2 hasError];
LABEL_269:
        v143 = 434;
        goto LABEL_303;
      case 0x2Eu:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 440) |= 0x40000u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v152 & 0x7F) << v90;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v12 = v91++ >= 9;
          if (v12)
          {
            LOBYTE(v32) = 0;
            goto LABEL_287;
          }
        }

        v32 = (v92 != 0) & ~[a2 hasError];
LABEL_287:
        v143 = 433;
        goto LABEL_303;
      case 0x2Fu:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 440) |= 0x1000u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            v109 = [a2 data];
            [v109 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v106 |= (v152 & 0x7F) << v104;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v12 = v105++ >= 9;
          if (v12)
          {
            LOBYTE(v32) = 0;
            goto LABEL_291;
          }
        }

        v32 = (v106 != 0) & ~[a2 hasError];
LABEL_291:
        v143 = 426;
        goto LABEL_303;
      case 0x30u:
        *(a1 + 440) |= 0x10u;
        v152 = 0;
        v132 = [a2 position] + 8;
        if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 8, v133 <= objc_msgSend(a2, "length")))
        {
          v151 = [a2 data];
          [v151 getBytes:&v152 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v145 = v152;
        v146 = 40;
        goto LABEL_316;
      case 0x31u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 440) |= 0x20000u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v99 = [a2 position] + 1;
          if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
          {
            v101 = [a2 data];
            [v101 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v98 |= (v152 & 0x7F) << v96;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v12 = v97++ >= 9;
          if (v12)
          {
            LOBYTE(v32) = 0;
            goto LABEL_289;
          }
        }

        v32 = (v98 != 0) & ~[a2 hasError];
LABEL_289:
        v143 = 432;
        goto LABEL_303;
      case 0x32u:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 440) |= 0x100000u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v152 & 0x7F) << v26;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v12 = v27++ >= 9;
          if (v12)
          {
            LOBYTE(v32) = 0;
            goto LABEL_261;
          }
        }

        v32 = (v28 != 0) & ~[a2 hasError];
LABEL_261:
        v143 = 435;
        goto LABEL_303;
      case 0x33u:
        v18 = objc_alloc_init(BLTPBSectionIcon);
        objc_storeStrong((a1 + 232), v18);
        v152 = 0;
        v153 = 0;
        if (!PBReaderPlaceMark() || (BLTPBSectionIconReadFrom(v18, a2) & 1) == 0)
        {
          goto LABEL_319;
        }

        goto LABEL_235;
      case 0x34u:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 440) |= 0x400u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v152 & 0x7F) << v134;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v12 = v135++ >= 9;
          if (v12)
          {
            LOBYTE(v32) = 0;
            goto LABEL_302;
          }
        }

        v32 = (v136 != 0) & ~[a2 hasError];
LABEL_302:
        v143 = 424;
        goto LABEL_303;
      case 0x35u:
        v14 = PBReaderReadString();
        v15 = 224;
        goto LABEL_253;
      case 0x38u:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 440) |= 0x80u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v152 & 0x7F) << v19;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v12 = v20++ >= 9;
          if (v12)
          {
            v25 = 0;
            goto LABEL_259;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v21;
        }

LABEL_259:
        v142 = 240;
LABEL_298:
        *(a1 + v142) = v25;
        goto LABEL_317;
      case 0x3Au:
        v18 = objc_alloc_init(BLTPBCommunicationContext);
        objc_storeStrong((a1 + 144), v18);
        v152 = 0;
        v153 = 0;
        if (!PBReaderPlaceMark() || (BLTPBCommunicationContextReadFrom(v18, a2) & 1) == 0)
        {
          goto LABEL_319;
        }

        goto LABEL_235;
      case 0x3Bu:
        v14 = PBReaderReadString();
        v15 = 152;
        goto LABEL_253;
      case 0x3Cu:
        v14 = PBReaderReadString();
        v15 = 208;
        goto LABEL_253;
      case 0x3Du:
        v18 = objc_alloc_init(BLTPBAction);
        v81 = 216;
LABEL_232:
        objc_storeStrong((a1 + v81), v18);
LABEL_233:
        v152 = 0;
        v153 = 0;
        if (PBReaderPlaceMark() && (BLTPBActionReadFrom(v18, a2) & 1) != 0)
        {
LABEL_235:
          PBReaderRecallMark();
LABEL_236:

LABEL_317:
          v4 = a2;
          continue;
        }

LABEL_319:

        return 0;
      case 0x3Eu:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        *(a1 + 440) |= 0x2000u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            v131 = [a2 data];
            [v131 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v152 & 0x7F) << v126;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v12 = v127++ >= 9;
          if (v12)
          {
            LOBYTE(v32) = 0;
            goto LABEL_300;
          }
        }

        v32 = (v128 != 0) & ~[a2 hasError];
LABEL_300:
        v143 = 427;
        goto LABEL_303;
      case 0x3Fu:
        v14 = PBReaderReadData();
        v15 = 368;
        goto LABEL_253;
      case 0x40u:
        v14 = PBReaderReadData();
        v15 = 400;
        goto LABEL_253;
      case 0x41u:
        v14 = PBReaderReadData();
        v15 = 112;
        goto LABEL_253;
      case 0x42u:
        v14 = PBReaderReadData();
        v15 = 192;
LABEL_253:
        v140 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_317;
      case 0x43u:
        *(a1 + 440) |= 2u;
        v152 = 0;
        v124 = [a2 position] + 8;
        if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 8, v125 <= objc_msgSend(a2, "length")))
        {
          v150 = [a2 data];
          [v150 getBytes:&v152 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v145 = v152;
        v146 = 16;
LABEL_316:
        *(a1 + v146) = v145;
        goto LABEL_317;
      case 0x44u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 440) |= 0x8000u;
        while (1)
        {
          LOBYTE(v152) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v152 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v152 & 0x7F) << v51;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v12 = v52++ >= 9;
          if (v12)
          {
            LOBYTE(v32) = 0;
            goto LABEL_271;
          }
        }

        v32 = (v53 != 0) & ~[a2 hasError];
LABEL_271:
        v143 = 430;
LABEL_303:
        *(a1 + v143) = v32;
        goto LABEL_317;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_317;
    }
  }
}

uint64_t BLTPBSetSectionSubtypeParametersIconRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          LOBYTE(v33[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v33[0] & 0x7F) << v24;
          if ((v33[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            LOBYTE(v30) = 0;
            goto LABEL_51;
          }
        }

        v30 = (v26 != 0) & ~[a2 hasError];
LABEL_51:
        *(a1 + 32) = v30;
        goto LABEL_52;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(BLTPBSectionIcon);
      objc_storeStrong((a1 + 16), v21);
      v33[0] = 0;
      v33[1] = 0;
      if (!PBReaderPlaceMark() || !BLTPBSectionIconReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_52:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = PBReaderReadString();
      v23 = *(a1 + 24);
      *(a1 + 24) = v22;

      goto LABEL_52;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v33[0] & 0x7F) << v14;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_49;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_49:
      *(a1 + 8) = v20;
      goto LABEL_52;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_52;
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBSetNotificationsCriticalAlertRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBAckInitialSequenceNumberRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
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
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

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
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v34 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v34 & 0x7F) << v23;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_44;
          }
        }

        v29 = [a2 hasError] ? 0 : v25;
LABEL_44:
        *(a1 + 16) = v29;
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadData();
        v22 = *(a1 + 8);
        *(a1 + 8) = v21;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v33 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v33 & 0x7F) << v14;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_46;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_46:
        *(a1 + 20) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBDateComponentsReadFrom(uint64_t a1, void *a2)
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
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = (v12 >> 3);
      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v33 = 0;
          v34 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v42 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v42 & 0x7F) << v33;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v20 = v34++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___BLTPBDateComponents__minute;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___BLTPBDateComponents__minute;
          goto LABEL_64;
        }

        if (v13 == 4)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 24) |= 8u;
          while (1)
          {
            v41 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___BLTPBDateComponents__weekday;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___BLTPBDateComponents__weekday;
LABEL_64:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

LABEL_67:
          *(a1 + *v22) = v21;
          goto LABEL_68;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v44 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___BLTPBDateComponents__second;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___BLTPBDateComponents__second;
          goto LABEL_64;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v43 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v43 & 0x7F) << v14;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___BLTPBDateComponents__hour;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___BLTPBDateComponents__hour;
          goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_68:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void ApplicationsChanged(uint64_t a1, uint64_t a2)
{
  v3 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __ApplicationsChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(v3, block);
}

uint64_t BLTBBSectionInfoEnabled(void *a1)
{
  v1 = a1;
  if ([v1 alertType])
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = ([v1 suppressedSettings] >> 5) & 1;
  }

  if ([v1 lockScreenSetting] == 2)
  {
    LODWORD(v3) = 1;
  }

  else
  {
    v3 = ([v1 suppressedSettings] >> 1) & 1;
  }

  v4 = [v1 spokenNotificationSetting];
  v5 = [v1 allowsNotifications];
  if (v4 == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3;
  }

  if (v2 & 1 | ((v5 & 1) == 0))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

uint64_t BLTIsAggdLogEnabled()
{
  if (BLTIsAggdLogEnabled_onceToken != -1)
  {
    BLTIsAggdLogEnabled_cold_1();
  }

  return BLTIsAggdLogEnabled___BLTAggdLogEnabled;
}

uint64_t __BLTIsAggdLogEnabled_block_invoke()
{
  if (BLTIsDebugBuild())
  {
    result = 1;
  }

  else
  {
    result = BLTDeviceOSIsInternalInstall();
  }

  BLTIsAggdLogEnabled___BLTAggdLogEnabled = result;
  return result;
}

void BLTAnalyticsLogBulletinSize(void *a1, uint64_t a2, void *a3)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"sectionID";
  v11[1] = @"publisherMatchID";
  v12[0] = a1;
  v12[1] = a3;
  v11[2] = @"bulletinSize";
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = a1;
  v8 = [v5 numberWithUnsignedLong:a2];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  AnalyticsSendEvent();
  v10 = *MEMORY[0x277D85DE8];
}

void BLTAnalyticsLogCompanionToGizmoDelay(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = @"sectionID";
  v21[1] = @"publisherMatchID";
  v22[0] = a1;
  v22[1] = a2;
  v21[2] = @"delay";
  v9 = MEMORY[0x277CCABB0];
  v10 = a3;
  v11 = a2;
  v12 = a1;
  [a4 timeIntervalSince1970];
  v14 = v13;
  [v10 timeIntervalSince1970];
  v16 = v15;

  v17 = [v9 numberWithDouble:v14 - v16];
  v22[2] = v17;
  v21[3] = @"connectionStatus";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v22[3] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  AnalyticsSendEvent();
  v20 = *MEMORY[0x277D85DE8];
}

void BLTAnalyticsLogOutOfOrderMessage()
{
  if (BLTIsAggdLogEnabled_onceToken != -1)
  {
    BLTIsAggdLogEnabled_cold_1();
  }

  if (BLTIsAggdLogEnabled___BLTAggdLogEnabled == 1)
  {

    AnalyticsSendEvent();
  }
}

void BLTAnalyticsLogMirroredNotificationsOverrides(void *a1, void *a2)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CF33F8];
  v4 = a2;
  v5 = a1;
  v6 = [v4 objectForKeyedSubscript:v3];
  v7 = [v6 BOOLValue];

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CF33F0]];

  v9 = [v8 BOOLValue];
  v15[0] = v5;
  v14[0] = @"sectionID";
  v14[1] = @"showAlerts";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v15[1] = v10;
  v14[2] = @"sendToNotificationCenter";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  AnalyticsSendEvent();
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t BLTPBHandleAcknowledgeActionRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_30;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(BLTPBActionInformation);
          objc_storeStrong((a1 + 8), v16);
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !BLTPBActionInformationReadFrom(v16, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_30:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;
LABEL_31:

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void WristDetectSettingChanged(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __WristDetectSettingChanged_block_invoke;
  block[3] = &unk_278D31428;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

uint64_t BLTPBIntelligentSummaryBulletinRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27[0] & 0x7F) << v17;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_40:
        *(a1 + 24) = v23;
      }

      else if (v13 == 2)
      {
        *(a1 + 28) |= 1u;
        v27[0] = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v27[0];
      }

      else if (v13 == 1)
      {
        v14 = objc_alloc_init(BLTPBBulletin);
        objc_storeStrong((a1 + 16), v14);
        v27[0] = 0;
        v27[1] = 0;
        if (!PBReaderPlaceMark() || !BLTPBBulletinReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBBulletinSummaryKeyReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR___BLTPBBulletinSummaryKey__valueNulls;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR___BLTPBBulletinSummaryKey__key;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v15 = &OBJC_IVAR___BLTPBBulletinSummaryKey__value;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBUpdateBulletinListRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(BLTPBFullBulletinList);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !BLTPBFullBulletinListReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBBulletinSummaryReadFrom(_DWORD *a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v21 = PBReaderReadString();
        v22 = 10;
        goto LABEL_38;
      }

      if (v13 != 5)
      {
        if (v13 == 4)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v27[0] & 0x7F) << v14;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_44:
          a1[2] = v20;
          goto LABEL_45;
        }

LABEL_39:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_45;
      }

      v23 = objc_alloc_init(BLTPBBulletinSummaryKey);
      [a1 addKey:v23];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !BLTPBBulletinSummaryKeyReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_45:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v21 = PBReaderReadString();
      v22 = 6;
      goto LABEL_38;
    }

    if (v13 == 2)
    {
      v21 = PBReaderReadString();
      v22 = 8;
LABEL_38:
      v24 = *&a1[v22];
      *&a1[v22] = v21;

      goto LABEL_45;
    }

    goto LABEL_39;
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBBulletinAttachmentReadFrom(uint64_t a1, void *a2)
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

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
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v29 = PBReaderReadString();
          v30 = 24;
          goto LABEL_44;
        }

        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_51;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          v35 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v35 & 0x7F) << v21;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_50;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_50:
        *(a1 + 32) = v27;
      }

      else
      {
        if (v13 == 1)
        {
          v29 = PBReaderReadString();
          v30 = 8;
LABEL_44:
          v31 = *(a1 + v30);
          *(a1 + v30) = v29;

          goto LABEL_51;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v34 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34 & 0x7F) << v14;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_48:
        *(a1 + 16) = v20;
      }

LABEL_51:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_241FD3D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241FD51B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _dictionaryFromPBData(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v9 = 0;
    v5 = [BLTObjectSerializer unserializeObject:v3 nulls:v4 error:&v9];
    v6 = v9;
    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = v6;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

uint64_t BLTPBSetRemoteGlobalSettingsRequestReadFrom(uint64_t a1, void *a2)
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
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v35 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v35 & 0x7F) << v23;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v25;
        }

LABEL_46:
        v30 = 16;
      }

      else
      {
        if (v13 == 2)
        {
          *(a1 + 32) |= 4u;
          v33 = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 24) = v33;
          goto LABEL_54;
        }

        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v36 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v14;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_50:
        v30 = 8;
      }

      *(a1 + v30) = v20;
LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBSectionInfoSettingsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v44[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44[0] & 0x7F) << v5;
        if ((v44[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v44[0] & 0x7F) << v35;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_73;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v37;
        }

LABEL_73:
        v41 = 8;
        goto LABEL_78;
      }

      if (v13 != 2)
      {
        goto LABEL_62;
      }

      v21 = objc_alloc_init(BLTPBMuteAssertion);
      objc_storeStrong((a1 + 16), v21);
      v44[0] = 0;
      v44[1] = 0;
      if (!PBReaderPlaceMark() || !BLTPBMuteAssertionReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_79:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 36) |= 4u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v44[0] & 0x7F) << v22;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v24;
        }

LABEL_67:
        v41 = 28;
        goto LABEL_78;
      case 4:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 36) |= 8u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v44[0] & 0x7F) << v28;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            LOBYTE(v34) = 0;
            goto LABEL_69;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_69:
        *(a1 + 32) = v34;
        goto LABEL_79;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v44[0] & 0x7F) << v14;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_77:
        v41 = 24;
LABEL_78:
        *(a1 + v41) = v20;
        goto LABEL_79;
    }

LABEL_62:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_79;
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBAddBulletinSummaryRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(BLTPBBulletinSummary);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !BLTPBBulletinSummaryReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _writeDataToFile(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v6 = [v4 length];
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:&v6 length:4];
  [v3 writeData:v5];
  [v3 writeData:v4];
}

id _readDataFromFile(void *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = [v1 readDataUpToLength:4 error:&v11];
  v3 = v11;
  if (v3)
  {
    v4 = v3;
    v5 = blt_send_queue_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      _readDataFromFile_cold_1();
    }

LABEL_4:

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  if (!v2 || ![v2 length])
  {
    goto LABEL_5;
  }

  v7 = *[v2 bytes];
  v10 = 0;
  v4 = [v1 readDataUpToLength:v7 error:&v10];
  v8 = v10;
  if (v8)
  {
    v5 = v8;
    v9 = blt_send_queue_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      _readDataFromFile_cold_1();
    }

    goto LABEL_4;
  }

LABEL_6:

  return v4;
}

uint64_t BLTPBSetSectionInfoResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

id BLTFileURLInAttachmentsPath(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 URL];
  v6 = [v5 pathExtension];

  v7 = [v4 blt_uniqueKey];

  v8 = [v7 keyString];
  v9 = [v3 UUID];

  v10 = [v9 UUIDString];
  v11 = [v8 stringByAppendingPathComponent:v10];
  v12 = [@"attachments" stringByAppendingPathComponent:v11];
  v13 = [v12 stringByAppendingPathExtension:v6];
  v14 = BLTFileURLInPairingPath(v13);

  return v14;
}

id BLTBulletinAttachmentsURL(void *a1)
{
  v1 = [a1 blt_uniqueKey];
  v2 = [v1 keyString];
  v3 = [@"attachments" stringByAppendingPathComponent:v2];
  v4 = BLTFileURLInPairingPath(v3);

  return v4;
}

void BLTCleanAttachmentsPath()
{
  v0 = BLTFileURLInPairingPath(@"attachments");
  if (v0)
  {
    v1 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = 0;
    v2 = [v1 removeItemAtURL:v0 error:&v5];
    v3 = v5;

    if ((v2 & 1) == 0)
    {
      v4 = blt_general_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        BLTCleanAttachmentsPath_cold_1(v0, v4);
      }
    }
  }
}

id BLTTranscodedFileURLForBulletin(void *a1, void *a2)
{
  v2 = BLTFileURLInAttachmentsPath(a1, a2);
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v2 path];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_241FDEE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void BBSectionsChanged(uint64_t a1, uint64_t a2)
{
  v3 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __BBSectionsChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(v3, block);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id BLTSyncSupportedBundleIDsFromProxies(void *a1, void **a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v27 = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        v9 = [MEMORY[0x277CD3A68] appInfoWithAppProxy:v8];
        v10 = [v9 supportedActions];
        if ([v10 count] || (objc_msgSend(v8, "plugInKitPlugins"), v11 = objc_claimAutoreleasedReturnValue(), INSupportedIntentsByExtensions(), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v11, v13))
        {
          v14 = [v8 localizedName];
          v15 = v14;
          if (!v14)
          {
            v2 = [MEMORY[0x277CBEB68] null];
            v15 = v2;
          }

          v16 = [v8 bundleIdentifier];
          [v27 setObject:v15 forKeyedSubscript:v16];

          v17 = v2;
          if (!v14)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v14 = [v8 correspondingApplicationRecord];
          if ([v14 supportsLiveActivities])
          {
            v17 = [v8 localizedName];
            v18 = v17;
            if (!v17)
            {
              v18 = [MEMORY[0x277CBEB68] null];
              v24 = v18;
            }

            v19 = [v8 bundleIdentifier];
            [v27 setObject:v18 forKeyedSubscript:v19];

            if (!v17)
            {
            }

LABEL_11:

            goto LABEL_12;
          }

          if (a2)
          {
            v20 = *a2;
            if (!*a2)
            {
              v20 = [MEMORY[0x277CBEB18] array];
              *a2 = v20;
            }

            v17 = [v8 bundleIdentifier];
            [v20 addObject:v17];
            goto LABEL_11;
          }
        }

LABEL_12:

        ++v7;
      }

      while (v5 != v7);
      v21 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      v5 = v21;
    }

    while (v21);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v27;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t BLTPBSectionIconVariantReadFrom(uint64_t a1, void *a2)
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

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
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            v34 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v34 & 0x7F) << v24;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_52:
          *(a1 + 8) = v30;
          goto LABEL_53;
        }

        if (v13 != 2)
        {
LABEL_45:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_53;
        }

        v14 = PBReaderReadData();
        v15 = 16;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v35 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v35 & 0x7F) << v16;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_48;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_48:
            *(a1 + 40) = v22;
            goto LABEL_53;
          case 4:
            v14 = PBReaderReadString();
            v15 = 24;
            break;
          case 5:
            v14 = PBReaderReadString();
            v15 = 32;
            break;
          default:
            goto LABEL_45;
        }
      }

      v23 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_53:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBAppearanceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v26[0] & 0x7F) << v17;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_36;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v23;
      }

      else if (v13 == 2)
      {
        v16 = objc_alloc_init(BLTPBImage);
        objc_storeStrong((a1 + 8), v16);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !BLTPBImageReadFrom(v16, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBCommunicationContextReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v65[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v65[0] & 0x7F) << v5;
      if ((v65[0] & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 48;
        goto LABEL_76;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 16;
        goto LABEL_76;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 8;
        goto LABEL_76;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 40;
        goto LABEL_76;
      case 5u:
        v22 = objc_alloc_init(BLTPBContact);
        objc_storeStrong((a1 + 80), v22);
        goto LABEL_63;
      case 6u:
        v22 = objc_alloc_init(BLTPBContact);
        [a1 addRecipients:v22];
LABEL_63:
        v65[0] = 0;
        v65[1] = 0;
        if (PBReaderPlaceMark() && BLTPBContactReadFrom(v22, a2))
        {
          PBReaderRecallMark();

LABEL_117:
          v63 = [a2 position];
          if (v63 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 7u:
        v13 = PBReaderReadData();
        v14 = 32;
        goto LABEL_76;
      case 8u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 92) |= 8u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v65[0] & 0x7F) << v36;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            LOBYTE(v29) = 0;
            goto LABEL_104;
          }
        }

        v29 = (v38 != 0) & ~[a2 hasError];
LABEL_104:
        v62 = 88;
        goto LABEL_116;
      case 9u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 92) |= 0x10u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v65[0] & 0x7F) << v55;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            LOBYTE(v29) = 0;
            goto LABEL_115;
          }
        }

        v29 = (v57 != 0) & ~[a2 hasError];
LABEL_115:
        v62 = 89;
        goto LABEL_116;
      case 0xAu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 92) |= 0x20u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v65[0] & 0x7F) << v30;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            LOBYTE(v29) = 0;
            goto LABEL_102;
          }
        }

        v29 = (v32 != 0) & ~[a2 hasError];
LABEL_102:
        v62 = 90;
        goto LABEL_116;
      case 0xBu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 92) |= 4u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v65[0] & 0x7F) << v49;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_112;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v51;
        }

LABEL_112:
        v61 = 64;
        goto LABEL_113;
      case 0xCu:
        v13 = PBReaderReadString();
        v14 = 56;
LABEL_76:
        v48 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_117;
      case 0xDu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 92) |= 0x40u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v65[0] & 0x7F) << v23;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            LOBYTE(v29) = 0;
            goto LABEL_100;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_100:
        v62 = 91;
LABEL_116:
        *(a1 + v62) = v29;
        goto LABEL_117;
      case 0xEu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 92) |= 2u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v65[0] & 0x7F) << v42;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_108;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v44;
        }

LABEL_108:
        v61 = 28;
        goto LABEL_113;
      case 0xFu:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 92) |= 1u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v65[0] & 0x7F) << v15;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_98:
        v61 = 24;
LABEL_113:
        *(a1 + v61) = v21;
        goto LABEL_117;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_117;
    }
  }
}

uint64_t BLTPBSetNotificationsGroupingRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTGetTrafficRestrictedBufferTime()
{
  if (BLTGetPlayLightsAndSirensTrafficRestrictedTimeout_onceToken != -1)
  {
    BLTGetTrafficRestrictedBufferTime_cold_1();
  }

  return __BLTPlayLightsAndSirensTrafficRestrictedTimeout - 5;
}

uint64_t BLTGetPlayLightsAndSirensTrafficRestrictedTimeout()
{
  if (BLTGetPlayLightsAndSirensTrafficRestrictedTimeout_onceToken != -1)
  {
    BLTGetTrafficRestrictedBufferTime_cold_1();
  }

  return __BLTPlayLightsAndSirensTrafficRestrictedTimeout;
}

uint64_t __BLTGetPlayLightsAndSirensTrafficRestrictedTimeout_block_invoke()
{
  result = BBGetObserverGatewayTimeout();
  v1 = result + -2.0;
  if (v1 < 2.0)
  {
    v1 = 2.0;
  }

  __BLTPlayLightsAndSirensTrafficRestrictedTimeout = v1;
  return result;
}

double BLTGetSettingSyncForNotificationTimeout()
{
  if (BLTGetSettingSyncForNotificationTimeout_onceToken != -1)
  {
    BLTGetSettingSyncForNotificationTimeout_cold_1();
  }

  return *&BLTGetSettingSyncForNotificationTimeout___BLTGetSettingSyncForNotificationTimeout;
}

double __BLTGetSettingSyncForNotificationTimeout_block_invoke()
{
  if (BLTGetPlayLightsAndSirensSendConnectedTimeout_onceToken != -1)
  {
    __BLTGetSettingSyncForNotificationTimeout_block_invoke_cold_1();
  }

  result = __BLTPlayLightsAndSirensSendConnectedTimeout * 0.5;
  *&BLTGetSettingSyncForNotificationTimeout___BLTGetSettingSyncForNotificationTimeout = result;
  return result;
}

uint64_t BLTGetPlayLightsAndSirensTimeout(int a1)
{
  if (a1)
  {
    if (BLTGetPlayLightsAndSirensSendConnectedTimeout_onceToken != -1)
    {
      __BLTGetSettingSyncForNotificationTimeout_block_invoke_cold_1();
    }

    v1 = __BLTPlayLightsAndSirensSendConnectedTimeout;
  }

  else
  {
    v1 = 14400.0;
  }

  v2 = +[BLTBulletinDistributor sharedDistributor];
  v3 = [v2 summarizationSetting];

  v4 = 7;
  if (v3 != 2)
  {
    v4 = 0;
  }

  return (v1 + v4);
}

id BLTFileURLInHomePath(void *a1)
{
  v1 = a1;
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/Library"];

  v4 = _BLTFileURLWithPath(v3, v1);

  return v4;
}

id _BLTFileURLWithPath(void *a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 stringByAppendingPathComponent:@"BulletinDistributor"];
    v6 = [v5 stringByAppendingPathComponent:v4];

    v7 = [v6 stringByDeletingLastPathComponent];
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v8 fileExistsAtPath:v7];

    if (v9)
    {
      v10 = 0;
LABEL_7:
      v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];

      goto LABEL_12;
    }

    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = *MEMORY[0x277CCA1B0];
    v20[0] = *MEMORY[0x277CCA1B8];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v18 = 0;
    v13 = [v11 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:v12 error:&v18];
    v10 = v18;

    if (v13)
    {
      goto LABEL_7;
    }

    v15 = blt_general_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _BLTFileURLWithPath_cold_1(v7, v10, v15);
    }
  }

  else
  {
    v6 = blt_general_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _BLTFileURLWithPath_cold_2(v6);
    }
  }

  v14 = 0;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

id BLTPairingPath()
{
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  v1 = [v0 pairingStorePath];

  return v1;
}

id BLTFileURLInPairingPath(void *a1)
{
  v1 = a1;
  v2 = BLTPairingPath();
  v3 = _BLTFileURLWithPath(v2, v1);

  return v3;
}

id BLTFileURLInPairingPathWait(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __BLTFileURLInPairingPathWait_block_invoke;
  v5[3] = &unk_278D31FA0;
  v5[4] = &v6;
  [v2 waitForPairingStorePathPairingID:v5];

  v3 = _BLTFileURLWithPath(v7[5], v1);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_241FEA8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t BLTIsDebugOrInternalBuild()
{
  if (BLTIsDebugOrInternalBuild_onceToken != -1)
  {
    BLTIsDebugOrInternalBuild_cold_1();
  }

  return BLTIsDebugOrInternalBuild___isDebugOrInternal;
}

uint64_t __BLTIsDebugOrInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  BLTIsDebugOrInternalBuild___isDebugOrInternal = result;
  return result;
}

uint64_t BLTIsWalkaboutEnabled()
{
  if (BLTIsWalkaboutEnabled_onceToken != -1)
  {
    BLTIsWalkaboutEnabled_cold_1();
  }

  return BLTIsWalkaboutEnabled___BLTWalkaboutEnabled;
}

uint64_t __BLTIsWalkaboutEnabled_block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"ExperimentGroup", @"com.apple.da");
  if (v0)
  {
    v2 = v0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v2 isEqualToString:@"walkabout"])
      {
        BLTIsWalkaboutEnabled___BLTWalkaboutEnabled = MGGetBoolAnswer();
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

id BLTWorkQueue()
{
  if (BLTWorkQueue_onceToken != -1)
  {
    BLTWorkQueue_cold_1();
  }

  v1 = BLTWorkQueue___workQueue;

  return v1;
}

void __BLTWorkQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  attr = dispatch_queue_attr_make_with_autorelease_frequency(v0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

  v1 = dispatch_queue_create("bulletindistributord.workq", attr);
  v2 = BLTWorkQueue___workQueue;
  BLTWorkQueue___workQueue = v1;

  dispatch_queue_set_specific(BLTWorkQueue___workQueue, BLTWorkQueueKey, BLTWorkQueueIdentifier, 0);
}

void BLTDispatchWorkQueue(void *a1)
{
  if (dispatch_get_specific(BLTWorkQueueKey) == BLTWorkQueueIdentifier)
  {
    v3 = a1[2];
    v4 = a1;
    v3();
  }

  else
  {
    v2 = a1;
    v4 = BLTWorkQueue();
    dispatch_async(v4, v2);
  }
}

uint64_t __BLTGetPlayLightsAndSirensSendConnectedTimeout_block_invoke()
{
  result = BBGetObserverGatewayTimeout();
  v1 = result + -2.0 + -5.0;
  if (v1 < 2.0)
  {
    v1 = 2.0;
  }

  __BLTPlayLightsAndSirensSendConnectedTimeout = v1;
  return result;
}

uint64_t BLTPBSetNotificationsAlertLevelRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
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
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

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
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v34 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v34 & 0x7F) << v23;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            LOBYTE(v29) = 0;
            goto LABEL_42;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + 24) = v29;
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadString();
        v22 = *(a1 + 16);
        *(a1 + 16) = v21;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v33 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v33 & 0x7F) << v14;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_46;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_46:
        *(a1 + 8) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBHandleSnoozeActionRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_30;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(BLTPBActionInformation);
          objc_storeStrong((a1 + 8), v16);
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !BLTPBActionInformationReadFrom(v16, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_30:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;
LABEL_31:

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *BLTNameForActionType(uint64_t a1)
{
  if ((a1 - 3) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_278D32058[a1 - 3];
  }
}

unint64_t -[BLTAlertStateTester _blockingReasonForSectionInfo:isCritical:](BLTAlertStateTester *self, SEL a2, id a3, BOOL a4)
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = 32 * ([v5 criticalAlertSetting] != 2);
  }

  else
  {
    if ([v5 alertType])
    {
      v7 = 0;
    }

    else if ([v6 lockScreenSetting] == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = 3;
    }

    if (![v6 showsOnExternalDevices])
    {
      v7 |= 0x10uLL;
    }

    if (![v6 allowsNotifications])
    {
      v7 |= 0x20uLL;
    }
  }

  return v7;
}

uint64_t BLTPBWillSendLightsAndSirensResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_44;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_44:
        *(a1 + 8) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_40;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_40:
        *(a1 + 12) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBHandlePairedDeviceReadyReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBSetRemoteGlobalSpokenSettingEnabledRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v25 = 0;
        v20 = [a2 position] + 8;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v25;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v27 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v27 & 0x7F) << v13;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_34;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t stateDidChange(void *a1, uint64_t (*a2)(uint64_t))
{
  v3 = a1;
  v4 = [v3 object];
  v5 = [v3 userInfo];

  v6 = [v5 objectForKeyedSubscript:@"info"];

  if (a2([v4 state]) & 1) != 0 || (a2(objc_msgSend(v6, "newState")))
  {
    v7 = 0;
  }

  else
  {
    v7 = a2([v6 oldState]);
  }

  return v7;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t BLTPBAddBulletinRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v41[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41[0] & 0x7F) << v5;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            LOBYTE(v41[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v41[0] & 0x7F) << v21;
            if ((v41[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_65;
            }
          }

          v20 = (v23 != 0) & ~[a2 hasError];
LABEL_65:
          v37 = 28;
          goto LABEL_66;
        }

        goto LABEL_56;
      }

      v36 = objc_alloc_init(BLTPBBulletin);
      objc_storeStrong((a1 + 16), v36);
      v41[0] = 0;
      v41[1] = 0;
      if (!PBReaderPlaceMark() || !BLTPBBulletinReadFrom(v36, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_69:
      v39 = [a2 position];
      if (v39 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        *(a1 + 32) |= 1u;
        v41[0] = 0;
        v27 = [a2 position] + 8;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
        {
          v38 = [a2 data];
          [v38 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v41[0];
        goto LABEL_69;
      case 4:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          LOBYTE(v41[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v41[0] & 0x7F) << v29;
          if ((v41[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v31;
        }

LABEL_61:
        *(a1 + 24) = v35;
        goto LABEL_69;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 8u;
        while (1)
        {
          LOBYTE(v41[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v41[0] & 0x7F) << v14;
          if ((v41[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_63;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_63:
        v37 = 29;
LABEL_66:
        *(a1 + v37) = v20;
        goto LABEL_69;
    }

LABEL_56:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_69;
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBSectionBulletinListReadFrom(void *a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[2];
        a1[2] = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(BLTPBBulletinIdentifier);
    [a1 addBulletinIdentifier:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !BLTPBBulletinIdentifierReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBThreadMuteAssertionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = PBReaderReadString();
        v16 = *(a1 + 16);
        *(a1 + 16) = v15;
      }

      else if ((v12 >> 3) == 1)
      {
        v20 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBActionReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v27 = PBReaderReadString();
        v28 = 48;
        goto LABEL_50;
      }

      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            LOBYTE(v34[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v34[0] & 0x7F) << v21;
            if ((v34[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_61;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_61:
          v31 = 8;
          goto LABEL_62;
        }

LABEL_46:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_63;
      }

      v30 = objc_alloc_init(BLTPBAppearance);
      objc_storeStrong((a1 + 16), v30);
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !BLTPBAppearanceReadFrom(v30, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_63:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v27 = PBReaderReadData();
        v28 = 32;
        goto LABEL_50;
      }

      if (v13 == 7)
      {
        v27 = PBReaderReadData();
        v28 = 40;
LABEL_50:
        v29 = *(a1 + v28);
        *(a1 + v28) = v27;

        goto LABEL_63;
      }
    }

    else
    {
      if (v13 == 4)
      {
        v27 = PBReaderReadString();
        v28 = 56;
        goto LABEL_50;
      }

      if (v13 == 5)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 64) |= 1u;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34[0] & 0x7F) << v14;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_57;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_57:
        v31 = 24;
LABEL_62:
        *(a1 + v31) = v20;
        goto LABEL_63;
      }
    }

    goto LABEL_46;
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBWillSendLightsAndSirensRequestReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        v15 = 24;
LABEL_36:
        v24 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_39;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_39;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        v27 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v27 & 0x7F) << v16;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          LOBYTE(v22) = 0;
          goto LABEL_38;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_38:
      *(a1 + 32) = v22;
LABEL_39:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v14 = PBReaderReadString();
      v15 = 8;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = PBReaderReadString();
      v15 = 16;
    }

    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBSetSectionSubtypeParametersIconResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241FFB68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void BLTDaemonRestarted(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __BLTDaemonRestarted_block_invoke;
  block[3] = &unk_278D31428;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_241FFC9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __BLTGizmoLegacyMapSectionInfoKeySet_block_invoke()
{
  BLTGizmoLegacyMapSectionInfoKeySet___BLTGizmoLegacyMapSectionInfoKeySet = [MEMORY[0x277CBEB98] setWithObjects:{@"sectionID", @"parentSectionID", 0}];

  return MEMORY[0x2821F96F8]();
}

void sub_241FFCFE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t BLTPBShouldSuppressLightsAndSirensNowResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBFullBulletinListReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(BLTPBSectionBulletinList);
        [a1 addSectionBulletinList:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !BLTPBSectionBulletinListReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBCancelBulletinRequestReadFrom(uint64_t a1, void *a2)
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
        v30 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v31 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v31 & 0x7F) << v20;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_42;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_42:
          *(a1 + 16) = v26;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_26:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_45;
          }

          *(a1 + 40) |= 1u;
          v29 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v29;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_26;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v19 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_45:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2420023DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t BLTPBHandleDidPlayLightsAndSirensReplyRequestReadFrom(uint64_t a1, void *a2)
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
        v30 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v31 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              v24 = [a2 data];
              [v24 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v31 & 0x7F) << v19;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v11 = v20++ >= 9;
            if (v11)
            {
              LOBYTE(v25) = 0;
              goto LABEL_42;
            }
          }

          v25 = (v21 != 0) & ~[a2 hasError];
LABEL_42:
          *(a1 + 40) = v25;
          goto LABEL_45;
        }

        if (v13 != 2)
        {
LABEL_39:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_45;
        }

        v14 = PBReaderReadString();
        v15 = 24;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          case 4:
            *(a1 + 44) |= 1u;
            v29 = 0;
            v17 = [a2 position] + 8;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v29;
            goto LABEL_45;
          case 5:
            v14 = PBReaderReadString();
            v15 = 32;
            break;
          default:
            goto LABEL_39;
        }
      }

      v16 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_45:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBImageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBMuteAssertionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v15 = objc_alloc_init(BLTPBThreadMuteAssertion);
        [a1 addSectionBulletinList:v15];
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !BLTPBThreadMuteAssertionReadFrom(v15, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v19[0] = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v19[0];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_242004BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _BLTCaptureBug(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (BLTIsDebugOrInternalBuild())
  {
    if (_BLTCaptureBug_onceToken != -1)
    {
      _BLTCaptureBug_cold_1();
    }

    if (_BLTCaptureBug__diagnosticReporter)
    {
      v2 = [_BLTCaptureBug__diagnosticReporter signatureWithDomain:@"BulletinDistributor" type:@"Functional" subType:v1 detectedProcess:@"bulletindistributord" triggerThresholdValues:0];
      v3 = [_BLTCaptureBug__diagnosticReporter snapshotWithSignature:v2 duration:0 event:0 payload:&__block_literal_global_10_1 reply:0.0];
      v4 = blt_general_log();
      v5 = v4;
      if (v3)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 138412290;
          v8 = v1;
          _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "Diagnostic Reporter sent snapshot for bug %@", &v7, 0xCu);
        }
      }

      else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        _BLTCaptureBug_cold_2(v1, v5);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_242005E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24200758C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __BLTGizmoLegacyMapKeySet_block_invoke()
{
  BLTGizmoLegacyMapKeySet___BLTGizmoLegacyMapKeySet = [MEMORY[0x277CBEB98] setWithObjects:{@"publisherBulletinID", @"categoryID", @"sectionInfo", @"sectionSubtype", 0}];

  return MEMORY[0x2821F96F8]();
}

uint64_t BLTPBShouldSuppressLightsAndSirensNowRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBSectionInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v181) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v181 & 0x7F) << v6;
      if ((v181 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_229;
      case 2u:
        v14 = PBReaderReadString();
        v15 = 112;
        goto LABEL_229;
      case 3u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 180) |= 0x800u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v181 & 0x7F) << v65;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v12 = v66++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_291;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v67;
        }

LABEL_291:
        v174 = 104;
        goto LABEL_344;
      case 4u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 180) |= 0x400u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v181 & 0x7F) << v77;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_297;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v79;
        }

LABEL_297:
        v174 = 84;
        goto LABEL_344;
      case 5u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 180) |= 0x4000000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v181 & 0x7F) << v35;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            LOBYTE(v34) = 0;
            goto LABEL_275;
          }
        }

        v34 = (v37 != 0) & ~[a2 hasError];
LABEL_275:
        v175 = 178;
        goto LABEL_347;
      case 6u:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 180) |= 0x800000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v181 & 0x7F) << v101;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v12 = v102++ >= 9;
          if (v12)
          {
            LOBYTE(v34) = 0;
            goto LABEL_309;
          }
        }

        v34 = (v103 != 0) & ~[a2 hasError];
LABEL_309:
        v175 = 175;
        goto LABEL_347;
      case 7u:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        *(a1 + 180) |= 0x400000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v115 |= (v181 & 0x7F) << v113;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v12 = v114++ >= 9;
          if (v12)
          {
            LOBYTE(v34) = 0;
            goto LABEL_315;
          }
        }

        v34 = (v115 != 0) & ~[a2 hasError];
LABEL_315:
        v175 = 174;
        goto LABEL_347;
      case 8u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 180) |= 0x2000000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v181 & 0x7F) << v83;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v12 = v84++ >= 9;
          if (v12)
          {
            LOBYTE(v34) = 0;
            goto LABEL_299;
          }
        }

        v34 = (v85 != 0) & ~[a2 hasError];
LABEL_299:
        v175 = 177;
        goto LABEL_347;
      case 9u:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 180) |= 0x40u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            v136 = [a2 data];
            [v136 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (v181 & 0x7F) << v131;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v12 = v132++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_327;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v133;
        }

LABEL_327:
        v174 = 68;
        goto LABEL_344;
      case 0xAu:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 180) |= 0x200u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v181 & 0x7F) << v47;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v12 = v48++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_281;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v49;
        }

LABEL_281:
        v174 = 80;
        goto LABEL_344;
      case 0xBu:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 180) |= 4u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v128 = [a2 position] + 1;
          if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
          {
            v130 = [a2 data];
            [v130 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v127 |= (v181 & 0x7F) << v125;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v12 = v126++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_323;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v127;
        }

LABEL_323:
        v174 = 24;
        goto LABEL_344;
      case 0xCu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 180) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v181 & 0x7F) << v28;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            LOBYTE(v34) = 0;
            goto LABEL_273;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_273:
        v175 = 176;
        goto LABEL_347;
      case 0xDu:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 180) |= 0x10000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v181 & 0x7F) << v41;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v12 = v42++ >= 9;
          if (v12)
          {
            LOBYTE(v34) = 0;
            goto LABEL_277;
          }
        }

        v34 = (v43 != 0) & ~[a2 hasError];
LABEL_277:
        v175 = 168;
        goto LABEL_347;
      case 0xEu:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 180) |= 0x4000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v181 & 0x7F) << v107;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v12 = v108++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_313;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v109;
        }

LABEL_313:
        v174 = 136;
        goto LABEL_344;
      case 0xFu:
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_229;
      case 0x10u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        *(a1 + 180) |= 0x40000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (v181 & 0x7F) << v71;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v12 = v72++ >= 9;
          if (v12)
          {
            LOBYTE(v34) = 0;
            goto LABEL_293;
          }
        }

        v34 = (v73 != 0) & ~[a2 hasError];
LABEL_293:
        v175 = 170;
        goto LABEL_347;
      case 0x11u:
        v16 = objc_alloc_init(BLTPBSectionInfo);
        [a1 addSubsections:v16];
        v181 = 0;
        v182 = 0;
        if (!PBReaderPlaceMark() || !BLTPBSectionInfoReadFrom(v16, a2))
        {
          goto LABEL_355;
        }

        goto LABEL_163;
      case 0x12u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 180) |= 0x2000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v181 & 0x7F) << v95;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v12 = v96++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_307;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v97;
        }

LABEL_307:
        v174 = 120;
        goto LABEL_344;
      case 0x13u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 180) |= 0x8000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v181 & 0x7F) << v119;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_319;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v121;
        }

LABEL_319:
        v174 = 152;
        goto LABEL_344;
      case 0x14u:
        v14 = PBReaderReadString();
        v15 = 40;
        goto LABEL_229;
      case 0x15u:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_229;
      case 0x16u:
        v16 = objc_alloc_init(BLTPBSectionIcon);
        objc_storeStrong((a1 + 56), v16);
        v181 = 0;
        v182 = 0;
        if (PBReaderPlaceMark() && BLTPBSectionIconReadFrom(v16, a2))
        {
          goto LABEL_163;
        }

        goto LABEL_355;
      case 0x17u:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 180) |= 0x100000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            v148 = [a2 data];
            [v148 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (v181 & 0x7F) << v143;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v12 = v144++ >= 9;
          if (v12)
          {
            LOBYTE(v34) = 0;
            goto LABEL_333;
          }
        }

        v34 = (v145 != 0) & ~[a2 hasError];
LABEL_333:
        v175 = 172;
        goto LABEL_347;
      case 0x18u:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 180) |= 0x200000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (v181 & 0x7F) << v150;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v12 = v151++ >= 9;
          if (v12)
          {
            LOBYTE(v34) = 0;
            goto LABEL_335;
          }
        }

        v34 = (v152 != 0) & ~[a2 hasError];
LABEL_335:
        v175 = 173;
        goto LABEL_347;
      case 0x19u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 180) |= 0x20000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v181 & 0x7F) << v59;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            LOBYTE(v34) = 0;
            goto LABEL_287;
          }
        }

        v34 = (v61 != 0) & ~[a2 hasError];
LABEL_287:
        v175 = 169;
        goto LABEL_347;
      case 0x1Au:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 180) |= 0x10u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v181 & 0x7F) << v53;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_285;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v55;
        }

LABEL_285:
        v174 = 48;
        goto LABEL_344;
      case 0x1Bu:
        v168 = 0;
        v169 = 0;
        v170 = 0;
        *(a1 + 180) |= 0x80000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v171 = [a2 position] + 1;
          if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
          {
            v173 = [a2 data];
            [v173 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v170 |= (v181 & 0x7F) << v168;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v168 += 7;
          v12 = v169++ >= 9;
          if (v12)
          {
            LOBYTE(v34) = 0;
            goto LABEL_346;
          }
        }

        v34 = (v170 != 0) & ~[a2 hasError];
LABEL_346:
        v175 = 171;
LABEL_347:
        *(a1 + v175) = v34;
        goto LABEL_348;
      case 0x1Cu:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 180) |= 8u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v181 & 0x7F) << v17;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v12 = v18++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_271;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_271:
        v174 = 28;
        goto LABEL_344;
      case 0x1Du:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        *(a1 + 180) |= 0x100u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            v161 = [a2 data];
            [v161 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v158 |= (v181 & 0x7F) << v156;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v12 = v157++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_339;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v158;
        }

LABEL_339:
        v174 = 76;
        goto LABEL_344;
      case 0x1Eu:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        *(a1 + 180) |= 0x20u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v165 = [a2 position] + 1;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
          {
            v167 = [a2 data];
            [v167 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v164 |= (v181 & 0x7F) << v162;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v12 = v163++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_343;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v164;
        }

LABEL_343:
        v174 = 64;
        goto LABEL_344;
      case 0x1Fu:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 180) |= 0x80u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (v181 & 0x7F) << v137;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v12 = v138++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_331;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v139;
        }

LABEL_331:
        v174 = 72;
        goto LABEL_344;
      case 0x20u:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 180) |= 0x1000u;
        while (1)
        {
          LOBYTE(v181) = 0;
          v92 = [a2 position] + 1;
          if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
          {
            v94 = [a2 data];
            [v94 getBytes:&v181 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v91 |= (v181 & 0x7F) << v89;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v12 = v90++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_303;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v91;
        }

LABEL_303:
        v174 = 108;
LABEL_344:
        *(a1 + v174) = v23;
        goto LABEL_348;
      case 0x21u:
        v14 = PBReaderReadString();
        v15 = 160;
LABEL_229:
        v149 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_348;
      case 0x22u:
        *(a1 + 180) |= 1u;
        v181 = 0;
        v26 = [a2 position] + 8;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
        {
          v179 = [a2 data];
          [v179 getBytes:&v181 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v177 = v181;
        v178 = 8;
        goto LABEL_353;
      case 0x23u:
        *(a1 + 180) |= 2u;
        v181 = 0;
        v24 = [a2 position] + 8;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
        {
          v176 = [a2 data];
          [v176 getBytes:&v181 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v177 = v181;
        v178 = 16;
LABEL_353:
        *(a1 + v178) = v177;
        goto LABEL_348;
      case 0x24u:
        v16 = objc_alloc_init(BLTPBSectionInfoSettings);
        objc_storeStrong((a1 + 96), v16);
        v181 = 0;
        v182 = 0;
        if (PBReaderPlaceMark() && BLTPBSectionInfoSettingsReadFrom(v16, a2))
        {
LABEL_163:
          PBReaderRecallMark();

LABEL_348:
          v4 = a2;
          continue;
        }

LABEL_355:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_348;
    }
  }
}