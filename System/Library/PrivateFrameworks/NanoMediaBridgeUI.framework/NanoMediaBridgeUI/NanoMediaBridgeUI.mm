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
  v3 = qword_27FA406F0;
  qword_27FA406F0 = v2;

  v4 = os_log_create("com.apple.nanomusic", "NanoMediaRemote");
  v5 = qword_27FA406F8;
  qword_27FA406F8 = v4;

  v6 = os_log_create("com.apple.nanomusic", "NanoMediaRemote-Oversize");
  v7 = qword_27FA40700;
  qword_27FA40700 = v6;

  v8 = os_log_create("com.apple.nanomusic", "NanoAudioControl");
  v9 = qword_27FA40708;
  qword_27FA40708 = v8;

  v10 = os_log_create("com.apple.nanomusic", "NanoMusicSync");
  v11 = qword_27FA40710;
  qword_27FA40710 = v10;

  v12 = os_log_create("com.apple.nanomusic", "NanoMusicSync-Oversize");
  v13 = qword_27FA40718;
  qword_27FA40718 = v12;

  v14 = os_log_create("com.apple.nanomusic", "NanoMediaUI");
  v15 = qword_27FA40720;
  qword_27FA40720 = v14;

  v16 = os_log_create("com.apple.nanomusic", "NanoMediaUI-Oversize");
  v17 = qword_27FA40728;
  qword_27FA40728 = v16;

  v18 = os_log_create("com.apple.nanomusic", "NanoMediaAPI");
  v19 = qword_27FA40730;
  qword_27FA40730 = v18;

  v20 = os_log_create("com.apple.nanomusic", "NanoMediaAPI-Oversize");
  v21 = qword_27FA40738;
  qword_27FA40738 = v20;

  v22 = os_log_create("com.apple.nanomusic", "NanoMediaTool");
  v23 = qword_27FA40740;
  qword_27FA40740 = v22;

  v24 = os_log_create("com.apple.nanomusic", "NanoMediaBridgeUI");
  v25 = qword_27FA40750;
  qword_27FA40750 = v24;

  v26 = os_log_create("com.apple.nanomusic", "NanoMediaBridgeUI-Oversize");
  v27 = qword_27FA40758;
  qword_27FA40758 = v26;

  qword_27FA40748 = os_log_create("com.apple.nanomusic", "NanoMediaAppActivity");

  return MEMORY[0x2821F96F8]();
}

uint64_t isPairedDeviceGreenTeaCapable()
{
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  v1 = [v0 getActivePairedDevice];
  v2 = [v1 valueForProperty:*MEMORY[0x277D2BB00]];
  v3 = [v2 BOOLValue];

  return v3;
}

void sub_25B265540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NMUResolvedDownloadWaitingReason(uint64_t a1, int a2)
{
  if (a1 > 3)
  {
    v6 = 10;
    if (a1 != 5)
    {
      v6 = 0;
    }

    if (a1 == 4)
    {
      return a2 & 1;
    }

    else
    {
      return v6;
    }
  }

  else if ((a1 - 1) >= 2)
  {
    result = 0;
    if (!a1)
    {
      v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unsupported status." userInfo:0];
      objc_exception_throw(v7);
    }
  }

  else
  {
    if ((~a2 & 0x12) != 0)
    {
      result = 7;
    }

    else
    {
      result = 8;
    }

    if ((a2 & 0x10) == 0)
    {
      if ((a2 & 2) != 0)
      {
        v8 = [MEMORY[0x277CD5FD8] sharedNetworkObserver];
        v9 = [v8 isMusicCellularDownloadingAllowed];

        if (v9)
        {
          return 6;
        }

        else
        {
          return 5;
        }
      }

      else
      {
        v4 = 3;
        v5 = a2 & 1;
        if ((a2 & 4) != 0)
        {
          v5 = 2;
        }

        if ((a2 & 8) == 0)
        {
          v4 = v5;
        }

        if ((a2 & 0x20) != 0)
        {
          return 9;
        }

        else
        {
          return v4;
        }
      }
    }
  }

  return result;
}

id _titleForModelObject(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 name];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unsupported model type." userInfo:0];
      objc_exception_throw(v5);
    }

    v2 = [v1 title];
  }

  v3 = v2;

  return v3;
}

void sub_25B268D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NMUMetricsEndpointTypeFromEndpointRoute(void *a1)
{
  v1 = a1;
  if ([v1 isDeviceRoute])
  {
    v2 = 0;
  }

  else if ([v1 isPhoneRoute])
  {
    v2 = 1;
  }

  else if ([v1 isAppleTVRoute])
  {
    v2 = 2;
  }

  else if ([v1 isHomePodRoute])
  {
    if ([v1 isB520Route])
    {
      v2 = 4;
    }

    else
    {
      v2 = 3;
    }
  }

  else
  {
    v2 = 5;
  }

  return v2;
}

__CFString *NSStringFromNMUMetricsEndpointType(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_27993BF78[a1];
  }
}