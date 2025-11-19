uint64_t memgraph_from_task_save_immediate(int a1, unsigned int a2, int a3, int64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((a1 - 1) < 0xFFFFFFFE)
  {
    if (a5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = "memgraph_from_task_save_immediate";
        v5 = MEMORY[0x277D86220];
        v6 = "%s: Context is unused. Clients should provide nil.";
LABEL_25:
        _os_log_error_impl(&dword_2588F2000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
        goto LABEL_6;
      }

      goto LABEL_6;
    }

    v13 = sub_2588F2E64();
    if (!v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = "memgraph_from_task_save_immediate";
        _os_log_error_impl(&dword_2588F2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Couldn't get RMEGetXPCConnection().", buf, 0xCu);
      }

      v7 = 0xFFFFFFFFLL;
      goto LABEL_23;
    }

    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = v14;
    if (!v14)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = "memgraph_from_task_save_immediate";
        _os_log_error_impl(&dword_2588F2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Couldn't create xpc_dictionary.", buf, 0xCu);
      }

      v7 = 0xFFFFFFFFLL;
      goto LABEL_22;
    }

    xpc_dictionary_set_int64(v14, "MessageType", 3);
    xpc_dictionary_set_mach_send();
    xpc_dictionary_set_int64(v15, "ContentLevel", a2);
    xpc_dictionary_set_fd(v15, "MemgraphFileDescriptor", a3);
    xpc_dictionary_set_int64(v15, "TimeoutSeconds", a4);
    v16 = xpc_connection_send_message_with_reply_sync(v13, v15);
    v17 = v16;
    if (v16 && MEMORY[0x259C8E510](v16) == MEMORY[0x277D86468])
    {
      string = xpc_dictionary_get_string(v17, "ErrorDomain");
      if (!string)
      {
        v7 = 0;
        goto LABEL_15;
      }

      v19 = string;
      int64 = xpc_dictionary_get_int64(v17, "ErrorCode");
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v24 = "memgraph_from_task_save_immediate";
        v25 = 2080;
        v26 = v19;
        v27 = 2048;
        v28 = int64;
        _os_log_error_impl(&dword_2588F2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: xpc reply error: %s: %lld", buf, 0x20u);
      }

      v21 = MREErrorDomain;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v19];
      LODWORD(v21) = [(__CFString *)v21 isEqualToString:v22];

      if (v21 && (int64 - 8) <= 6)
      {
        v7 = dword_2588F3E38[int64 - 8];
        goto LABEL_15;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "memgraph_from_task_save_immediate";
      _os_log_error_impl(&dword_2588F2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Couldn't get reply dictionary.", buf, 0xCu);
    }

    v7 = 0xFFFFFFFFLL;
LABEL_15:

LABEL_22:
LABEL_23:

    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v24 = "memgraph_from_task_save_immediate";
    v5 = MEMORY[0x277D86220];
    v6 = "%s: Invalid task port.";
    goto LABEL_25;
  }

LABEL_6:
  v7 = 0xFFFFFFFFLL;
LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

id sub_2588F2E64()
{
  if (qword_27F969B88 != -1)
  {
    dispatch_once(&qword_27F969B88, &unk_2869C5808);
  }

  v1 = qword_27F969B80;

  return v1;
}

void sub_2588F2EB8()
{
  mach_service = xpc_connection_create_mach_service("com.apple.ReportMemoryException", 0, 2uLL);
  v1 = qword_27F969B80;
  qword_27F969B80 = mach_service;

  if (qword_27F969B80)
  {
    xpc_connection_set_event_handler(qword_27F969B80, &unk_2869C5828);
    v2 = qword_27F969B80;

    xpc_connection_resume(v2);
  }
}

void sub_2588F2F2C(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MEMORY[0x259C8E510]();
  v4 = v2 != MEMORY[0x277D863F0] && v3 == MEMORY[0x277D86480];
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    string = xpc_dictionary_get_string(v2, *MEMORY[0x277D86400]);
    v7 = 136315138;
    v8 = string;
    _os_log_error_impl(&dword_2588F2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Got xpc error message: %s\n", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void ReportMemoryExceptionFromTask(uint64_t a1, char a2, const char *a3, void *a4, void *a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if ((a1 - 1) >= 0xFFFFFFFE)
  {
    if (v10)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:MREErrorDomain code:9 userInfo:0];
      (v11)[2](v11, v14);
    }

    goto LABEL_29;
  }

  object_addr = 0;
  object_type = 0;
  if (mach_port_kernel_object(*MEMORY[0x277D85F48], a1, &object_type, &object_addr))
  {
    v12 = 0;
  }

  else
  {
    v12 = object_type == 2;
  }

  if (!v12)
  {
    if (v11)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:MREErrorDomain code:9 userInfo:0];
      (v11)[2](v11, v13);
LABEL_28:

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_2588F38CC;
  v40 = sub_2588F38DC;
  v41 = 0;
  if (a3)
  {
    goto LABEL_13;
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_2588F38E4;
  v35[3] = &unk_2798A85C0;
  v35[4] = &v36;
  if ((sub_2588F3980(a1, v35) & 1) == 0)
  {
    x = 0;
    if (pid_for_task(a1, &x))
    {
      goto LABEL_18;
    }

    if ((proc_pidpath(x, buf, 0x400u) - 1) <= 0x3FE)
    {
      v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
      v25 = v37[5];
      v37[5] = v24;
    }
  }

  a3 = [v37[5] UTF8String];
  if (a3)
  {
LABEL_13:
    v15 = strncmp(a3, "/usr/libexec/ReportMemoryException", 0x400uLL) == 0;
    _Block_object_dispose(&v36, 8);

    if (!v15)
    {
      v16 = *MEMORY[0x277D4D3B0];
      if (SMJobIsEnabled())
      {
        v17 = sub_2588F2E64();
        if (v17)
        {
          v18 = v17;
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = sub_2588F3514;
          v26[3] = &unk_2798A8598;
          v29 = v11;
          v30 = a1;
          v31 = a2;
          v13 = v18;
          v27 = v13;
          v28 = v9;
          v19 = MEMORY[0x259C8E370](v26);
          v19[2](v19, 0);

          v20 = v29;
        }

        else
        {
          if (!v11)
          {
            v13 = 0;
            goto LABEL_28;
          }

          v20 = [MEMORY[0x277CCA9B8] errorWithDomain:MREErrorDomain code:7 userInfo:0];
          (v11)[2](v11, v20);
          v13 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = @"RME is disabled. To re-enable use 'ReportMemoryExceptionTool --enable'";
          _os_log_impl(&dword_2588F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@. Aborting.", buf, 0xCu);
        }

        if (!v11)
        {
          goto LABEL_29;
        }

        v21 = MEMORY[0x277CCA9B8];
        v22 = MREErrorDomain;
        v42 = *MEMORY[0x277CCA450];
        v43 = @"RME is disabled. To re-enable use 'ReportMemoryExceptionTool --enable'";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v20 = [v21 errorWithDomain:v22 code:17 userInfo:v13];
        (v11)[2](v11, v20);
      }

      goto LABEL_28;
    }

    goto LABEL_19;
  }

LABEL_18:
  _Block_object_dispose(&v36, 8);

LABEL_19:
  if (v11)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:MREErrorDomain code:10 userInfo:0];
    (v11)[2](v11, v13);
    goto LABEL_28;
  }

LABEL_29:

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2588F34EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2588F3514(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      v20 = 0;
      if (MEMORY[0x259C8E260](*MEMORY[0x277D85F48], *(a1 + 56), 0, &v20) != 15)
      {
        xpc_dictionary_set_int64(v5, "MessageType", 2);
        v11 = *(a1 + 56);
        xpc_dictionary_set_mach_send();
        xpc_dictionary_set_BOOL(v5, "WithMemgraph", *(a1 + 60));
        v12 = *(a1 + 48);
        if (!v12)
        {
          xpc_connection_send_message(*(a1 + 32), v5);
          goto LABEL_14;
        }

        v14 = *(a1 + 32);
        v13 = *(a1 + 40);
        if (v13)
        {
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = sub_2588F376C;
          handler[3] = &unk_2798A8570;
          v18 = v12;
          xpc_connection_send_message_with_reply(v14, v5, v13, handler);

          goto LABEL_14;
        }

        v10 = xpc_connection_send_message_with_reply_sync(*(a1 + 32), v5);
        v15 = *(a1 + 48);
        v16 = sub_2588F37CC(v10);
        (*(v15 + 16))(v15, v16);

        goto LABEL_13;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2588F2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Timed out on authenticating. Skipping sending corpse to RME for analysis.", buf, 2u);
      }

      v6 = *(a1 + 48);
      if (!v6)
      {
        goto LABEL_14;
      }

      v7 = MEMORY[0x277CCA9B8];
      v8 = MREErrorDomain;
      v9 = 15;
    }

    else
    {
      v6 = *(a1 + 48);
      if (!v6)
      {
LABEL_14:

        goto LABEL_15;
      }

      v7 = MEMORY[0x277CCA9B8];
      v8 = MREErrorDomain;
      v9 = 6;
    }

    v10 = [v7 errorWithDomain:v8 code:v9 userInfo:0];
    (*(v6 + 16))(v6, v10);
LABEL_13:

    goto LABEL_14;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

LABEL_15:
}

void sub_2588F376C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_2588F37CC(a2);
  (*(v2 + 16))(v2, v3);
}

id sub_2588F37CC(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && MEMORY[0x259C8E510](v1) == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(v2, "ErrorDomain");
    if (string)
    {
      int64 = xpc_dictionary_get_int64(v2, "ErrorCode");
      v6 = MEMORY[0x277CCA9B8];
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
      string = [v6 errorWithDomain:v7 code:int64 userInfo:0];
    }
  }

  else
  {
    string = [MEMORY[0x277CCA9B8] errorWithDomain:MREErrorDomain code:7 userInfo:0];
  }

  return string;
}

uint64_t sub_2588F38CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2588F38E4(uint64_t a1, _DWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*a2 == 2063)
  {
    __strlcpy_chk();
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v7];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2588F3980(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_12;
  }

  v9 = 0;
  kcd_addr_begin = 0;
  v4 = MEMORY[0x277D85F48];
  if (task_map_corpse_info_64(*MEMORY[0x277D85F48], a1, &kcd_addr_begin, &v9))
  {
LABEL_11:
    a1 = 0;
    goto LABEL_12;
  }

  v5 = kcd_addr_begin;
  v6 = v9 + kcd_addr_begin;
  v7 = kcd_addr_begin + 16;
  if (kcd_addr_begin + 16 > v9 + kcd_addr_begin || v7 + *(kcd_addr_begin + 4) > v6 || *kcd_addr_begin != -559025833)
  {
    MEMORY[0x259C8E430](*v4, kcd_addr_begin);
    goto LABEL_11;
  }

  do
  {
    if (v7 + v5[1] > v6)
    {
      break;
    }

    if (*v5 == -242132755)
    {
      break;
    }

    v3[2](v3, v5, v6);
    v5 = (v7 + v5[1]);
    v7 = (v5 + 4);
  }

  while ((v5 + 4) <= v6);
  MEMORY[0x259C8E430](*v4, kcd_addr_begin, v9);
  a1 = 1;
LABEL_12:

  return a1;
}