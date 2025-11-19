uint64_t _IDSRunningInDaemon()
{
  if (qword_1ED5DF848 != -1)
  {
    sub_1A7ADB01C();
  }

  return byte_1ED5DF820;
}

void sub_1A7ADAFC8()
{
  v0 = IDSGetMainBundleIdentifier();
  byte_1ED5DF820 = [v0 isEqualToString:@"com.apple.identityservicesd"];
}

__CFBundle *IDSGetMainBundleIdentifier()
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    MainBundle = CFBundleGetIdentifier(MainBundle);
  }

  return MainBundle;
}

void sub_1A7ADB0CC(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = qword_1ED5DF838;
  qword_1ED5DF838 = v1;
}

id _IDSServiceDictionaryForIdentifierBypassPlatforms(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = sub_1A7ADB28C(a1, a2);
    if ([v2 count] == 1)
    {
      v3 = [v2 objectAtIndex:0];
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

void sub_1A7AFEAA8()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    byte_1ED5DF819 = 0;
    byte_1ED5DF7EA = 0;
LABEL_5:
    if (byte_1ED5DF7EA != 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v1 = v0;
  byte_1ED5DF819 = CFEqual(v0, @"Vendor") != 0;
  byte_1ED5DF7EA = CFEqual(v1, @"VendorNonUI") != 0;
  CFRelease(v1);
  if ((byte_1ED5DF819 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  byte_1EB2BC180 = 1;
}

id IDSLoggableDescriptionSalt()
{
  if (_IDSRunningInDaemon())
  {
    if (qword_1EB2B89C8 != -1)
    {
      sub_1A7E10320();
    }

    v0 = qword_1EB2B89C0;
  }

  else
  {
    if (qword_1EB2BBC68 != -1)
    {
      sub_1A7E1026C();
    }

    v1 = [qword_1EB2BBC70 sharedInstance];
    v2 = v1;
    if (v1)
    {
      v3 = [v1 listener];
    }

    else
    {
      v3 = 0;
    }

    v4 = [v3 latestPrivateLoggingSalt];

    os_unfair_lock_lock(&unk_1EB2BBC60);
    if (v4 && [v4 length] >= 0x20)
    {
      if ((!qword_1EB2BBC58 || ([qword_1EB2BBC58 isEqualToData:v4] & 1) == 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A7E10280();
      }

      objc_storeStrong(&qword_1EB2BBC58, v4);
    }

    v0 = qword_1EB2BBC58;
    os_unfair_lock_unlock(&unk_1EB2BBC60);
  }

  return v0;
}

id sub_1A7AFED78(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    if (!qword_1ED5DF810)
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v3 = qword_1ED5DF810;
      qword_1ED5DF810 = v2;
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v1;
    v5 = v1;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [qword_1ED5DF810 indexOfObject:v10];
          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(qword_1ED5DF810, "count")}];
            [v4 addObject:v12];

            [qword_1ED5DF810 addObject:v10];
          }

          else
          {
            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
            [v4 addObject:v13];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v14 = [v4 copy];
    v1 = v16;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_1A7AFF008(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v5 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
  v2 = [MEMORY[0x1E69A6160] sharedInstance];
  v3 = [v1 initWithCoreTelephonyClient:v5 systemMonitor:v2];
  v4 = qword_1ED5DF7F0;
  qword_1ED5DF7F0 = v3;
}

uint64_t sub_1A7AFF09C(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  changelist.ident = 1;
  *&changelist.filter = 0x10000000021FFF6;
  changelist.data = 0;
  changelist.udata = a2;
  result = kevent(*(a1 + 32), &changelist, 1, 0, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    v3 = *__error();
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v7 = v3;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "kevent EVFILT_USER failed with error(%d)", buf, 8u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"kevent EVFILT_USER failed with error(%d)");
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent EVFILT_USER failed with error(%d)");
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A7AFF1FC(uint64_t a1)
{
  v83 = *MEMORY[0x1E69E9840];
  v71 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v2 = *(a1 + 72);
  if (v2 == 200)
  {
    v3 = 31;
  }

  else
  {
    v3 = 37;
  }

  if (v2 == 100)
  {
    v4 = 20;
  }

  else
  {
    v4 = v3;
  }

  sub_1A7C99E5C(v4, 0);
  sub_1A7C99FF0();
  if (*(a1 + 72))
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = *(a1 + 72);
    v7 = @"Sync";
    if (v6 == 200)
    {
      v7 = @"Default";
    }

    if (v6 == 300)
    {
      v8 = @"URGENT";
    }

    else
    {
      v8 = v7;
    }

    v9 = [v5 initWithFormat:@"TransportThread %@", v8];
    pthread_setname_np([v9 UTF8String]);
  }

  else
  {
    pthread_setname_np("TransportThread Primary");
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.ident) = 0;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "IDSTransportProc started...", &buf, 2u);
  }

  v11 = os_log_shim_legacy_logging_enabled();
  if (v11)
  {
    v11 = _IDSShouldLog();
    if (v11)
    {
      v11 = _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportProc started...");
    }
  }

  v78 = 0;
  v74 = 0;
  v14 = 0.0;
  *&v13 = 134217984;
  v75 = v13;
  *&v13 = 67109632;
  v72 = v13;
  while (1)
  {
    v73 = &v70;
    MEMORY[0x1EEE9AC00](v11, v12);
    v17 = &v70 - 4 * v15;
    v18 = 0;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    do
    {
      v20 = &v17[v18 / 8];
      *v20 = v19;
      *(v20 + 1) = v19;
      v18 += 32;
    }

    while (v16 != v18);
    v21 = kevent(*(a1 + 32), 0, 0, &v70 - v15, v15, 0);
    if ((v21 & 0x80000000) != 0)
    {
      break;
    }

    ++v74;
    v23 = v21;
    MEMORY[0x1EEE9AC00](v21, v22);
    if (v11)
    {
      v11 = memset(&v70 - ((v23 + 15) & 0x1FFFFFFF0), 170, v23);
      v76 = *(a1 + 24);
      v24 = (v17 + 3);
      v25 = &v70 - ((v23 + 15) & 0x1FFFFFFF0);
      v26 = v23;
      v77 = v25;
      do
      {
        if (*(v24 - 8) == -7)
        {
          v27 = *v24;
          *v25 = 1;
          v27[2](v27, 0);
          _Block_release(v27);
        }

        ++v25;
        v24 += 16;
        --v26;
      }

      while (v26);
      v28 = 0;
      do
      {
        v29 = &v17[4 * v28];
        if (*(v29 + 4) == -10)
        {
          v30 = v29[3];
          v77[v28] = 1;
          if (v30 == 3)
          {
            LOBYTE(v26) = 1;
          }

          else if (v30 == 1)
          {
            os_unfair_lock_lock((a1 + 28));
            v31 = *(a1 + 16);
            *(a1 + 16) = 0;
            os_unfair_lock_unlock((a1 + 28));
            v81 = 0u;
            v82 = 0u;
            memset(v80, 0, sizeof(v80));
            v32 = [v31 countByEnumeratingWithState:v80 objects:&buf count:16];
            if (v32)
            {
              v33 = **&v80[16];
              do
              {
                for (i = 0; i != v32; ++i)
                {
                  if (**&v80[16] != v33)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v35 = *(*&v80[8] + 8 * i);
                  if (v35)
                  {
                    v35[2](v35, v26 & 1);
                    _Block_release(v35);
                  }
                }

                v32 = [v31 countByEnumeratingWithState:v80 objects:&buf count:16];
              }

              while (v32);
            }

            ++v78;
          }

          else
          {
            v36 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf.ident) = v75;
              *(&buf.ident + 4) = v30;
              _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, "Unknown control command %lu", &buf, 0xCu);
            }

            v11 = os_log_shim_legacy_logging_enabled();
            if (v11)
            {
              v11 = _IDSShouldLog();
              if (v11)
              {
                v11 = _IDSLogV(0, @"IDSFoundation", @"TPThread", @"Unknown control command %lu");
              }
            }
          }
        }

        ++v28;
      }

      while (v28 != v23);
      v37 = 0;
      v38 = 1;
      v39 = v17;
      do
      {
        if (*(v39 + 4) == -2)
        {
          v40 = v39[3];
          v41 = *v39;
          v42 = _Block_copy(*(*(a1 + 64) + 8 * v40));
          v43 = v42;
          if (v41 == *(*(a1 + 48) + 4 * v40) && v42 != 0)
          {
            v77[v37] = 1;
            (*(v42 + 2))(v42);
            ++v78;
          }

          _Block_release(v43);
          if (v76 != *(a1 + 24))
          {
            break;
          }
        }

        v38 = ++v37 < v23;
        v39 += 4;
      }

      while (v23 != v37);
      if (v38)
      {
        goto LABEL_70;
      }

      v45 = 0;
      v46 = 1;
      v47 = v17;
      do
      {
        if (*(v47 + 4) == -1)
        {
          v48 = v47[3];
          v49 = *v47;
          v50 = _Block_copy(*(*(a1 + 56) + 8 * v48));
          v51 = v50;
          if (v49 == *(*(a1 + 48) + 4 * v48) && v50 != 0)
          {
            v77[v45] = 1;
            (*(v50 + 2))(v50);
            ++v78;
          }

          _Block_release(v51);
          if (v76 != *(a1 + 24))
          {
            break;
          }
        }

        v46 = ++v45 < v23;
        v47 += 4;
      }

      while (v23 != v45);
      if (v46)
      {
        goto LABEL_70;
      }

      v57 = 0;
      *&v58 = 0xAAAAAAAAAAAAAAAALL;
      *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&buf.data = v58;
      *&buf.ident = v58;
      v59 = (v17 + 1);
      do
      {
        if ((v77[v57] & 1) == 0)
        {
          v60 = *(v59 - 1);
          v61 = *v59;
          v62 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *v80 = v72;
            *&v80[4] = v57;
            *&v80[8] = 2048;
            *&v80[10] = v60;
            *&v80[18] = 1024;
            *&v80[20] = v61;
            _os_log_impl(&dword_1A7AD9000, v62, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%lu) failed to match event for filter:%hd", v80, 0x18u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%lu) failed to match event for filter:%hd");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%lu) failed to match event for filter:%hd");
              }
            }
          }

          buf.ident = v60;
          buf.filter = v61;
          buf.flags = 2;
          *(&buf.data + 4) = 0;
          *&buf.fflags = 0;
          HIDWORD(buf.udata) = 0;
          v11 = kevent(*(a1 + 32), &buf, 1, 0, 0, 0);
          if ((v11 & 0x80000000) != 0)
          {
            v63 = *__error();
            v64 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              *v80 = v72;
              *&v80[4] = v57;
              *&v80[8] = 2048;
              *&v80[10] = v60;
              *&v80[18] = 1024;
              *&v80[20] = v63;
              _os_log_impl(&dword_1A7AD9000, v64, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%lu, READ, DELETE) failed with error(%d)", v80, 0x18u);
            }

            v11 = os_log_shim_legacy_logging_enabled();
            if (v11)
            {
              v11 = _IDSShouldLogTransport();
              if (v11)
              {
                _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%lu, READ, DELETE) failed with error(%d)");
                v11 = _IDSShouldLog();
                if (v11)
                {
                  v11 = _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%lu, READ, DELETE) failed with error(%d)");
                }
              }
            }
          }
        }

        v59 += 16;
        ++v57;
      }

      while (v23 != v57);
    }

    else
    {
      LOBYTE(v26) = 0;
      *&v53 = 0xAAAAAAAAAAAAAAAALL;
      *(&v53 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&buf.data = v53;
      *&buf.ident = v53;
    }

    if (__ROR8__(0x1CAC083126E978D5 * v74, 3) <= 0x4189374BC6A7EFuLL)
    {
      v54 = ids_monotonic_time();
      v55 = v54 - v14;
      if (v55 < 1.0)
      {
        v56 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *v80 = v75;
          *&v80[4] = v55;
          _os_log_impl(&dword_1A7AD9000, v56, OS_LOG_TYPE_DEFAULT, "Warning ! _IDSTransportProc processed 1000 iterations in %f seconds.", v80, 0xCu);
        }

        v11 = os_log_shim_legacy_logging_enabled();
        if (v11)
        {
          v11 = _IDSShouldLogTransport();
          if (v11)
          {
            _IDSLogTransport(@"TPThread", @"IDS", @"Warning ! _IDSTransportProc processed 1000 iterations in %f seconds.");
            v11 = _IDSShouldLog();
            if (v11)
            {
              v11 = _IDSLogV(0, @"IDSFoundation", @"TPThread", @"Warning ! _IDSTransportProc processed 1000 iterations in %f seconds.");
            }
          }
        }
      }

      v14 = v54;
    }

    if (v78 >= 31)
    {

      v11 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v71 = v11;
      v78 = 0;
    }

LABEL_70:
    if (v26)
    {
      goto LABEL_107;
    }
  }

  v65 = *__error();
  v66 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    v67 = *(a1 + 36) + 1;
    LODWORD(buf.ident) = 67109376;
    HIDWORD(buf.ident) = v67;
    buf.filter = 1024;
    *&buf.flags = v65;
    _os_log_impl(&dword_1A7AD9000, v66, OS_LOG_TYPE_DEFAULT, "kevent failed, (maxfd: %d, error: %d)", &buf, 0xEu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TPThread", @"IDS", @"kevent failed, (maxfd: %d, error: %d)");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent failed, (maxfd: %d, error: %d)");
      }
    }
  }

LABEL_107:

  v68 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.ident) = 0;
    _os_log_impl(&dword_1A7AD9000, v68, OS_LOG_TYPE_DEFAULT, "IDSTransportProc ended", &buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportProc ended");
  }

  return 0;
}

uint64_t IDSDebuggingRegistrationDebuggingEnabled()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (!v1)
  {
    return 0;
  }

  result = IMGetDomainBoolForKey();
  if (result)
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "*********** Registration Debugging Enabled !! ***********", v4, 2u);
    }

    return 1;
  }

  return result;
}

void sub_1A7AFFF20(uint64_t a1, const void *a2)
{
  if (a2)
  {
    os_unfair_lock_lock((a1 + 28));
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(a1 + 16) = v4;
    }

    [v4 addObject:_Block_copy(a2)];
    if ([v4 count] == 1)
    {
      sub_1A7AFF09C(a1, 1);
    }

    os_unfair_lock_unlock((a1 + 28));
  }
}

id sub_1A7AFFFBC(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [qword_1ED5DF810 objectAtIndex:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "unsignedIntegerValue", v11)}];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

__CFString *_IDSBinaryStringForValue(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x40)
    {
      v3 = 64;
    }

    else
    {
      v3 = a2;
    }

    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v5 = 1 << (v3 - 1);
    do
    {
      if ((v5 & a1) != 0)
      {
        v6 = @"1";
      }

      else
      {
        v6 = @"0";
      }

      [(__CFString *)v4 appendFormat:@"%@", v6];
      v7 = v5 > 1;
      v5 >>= 1;
    }

    while (v7);
  }

  else
  {
    v4 = &stru_1F1AC8480;
  }

  return v4;
}

void sub_1A7B00834()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_get_global_queue(21, 0);
  v5 = dispatch_queue_create_with_target_V2("com.apple.ids.serverbag.ids", v0, v1);

  v2 = +[IDSServerBagConfig IDSConfig];
  v3 = [[IDSServerBag alloc] initWithConfig:v2 queue:v5];
  v4 = qword_1ED5DF7A8;
  qword_1ED5DF7A8 = v3;
}

void sub_1A7B009FC()
{
  v0 = os_log_create("com.apple.Registration", "IDSServerBag");
  v1 = qword_1ED5DF798;
  qword_1ED5DF798 = v0;
}

void sub_1A7B00A80()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_get_global_queue(21, 0);
  v5 = dispatch_queue_create_with_target_V2("com.apple.ids.serverbag.courier", v0, v1);

  v2 = +[IDSServerBagConfig courierConfig];
  v3 = [[IDSServerBag alloc] initWithConfig:v2 queue:v5];
  v4 = qword_1ED5DF7C8;
  qword_1ED5DF7C8 = v3;
}

void sub_1A7B00C6C()
{
  v0 = os_log_create("com.apple.Registration", "CourierServerBag");
  v1 = qword_1ED5DF7B8;
  qword_1ED5DF7B8 = v0;
}

id IDSServerBagContentErrorWithUnderlyingError(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = *MEMORY[0x1E696AA08];
    v9[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.serverbag.contentprovider" code:a1 userInfo:v5];

  return v6;
}

__CFString *_IDSServerBagTypeInternalString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E77E1728[a1];
  }
}

void sub_1A7B0113C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1A7B01160(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) supportsSMS];
  v3 = [*(a1 + 32) cache];
  v4 = [v3 supportsIdentification];

  if (!v4)
  {
    if (v2)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v5 = *(a1 + 32);
      v31 = 0;
      v6 = [v5 _unlocked_currentSIMsWithError:&v31];
      v29 = v31;
      v7 = [v6 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v33;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v33 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(*(&v32 + 1) + 8 * i) context];
            v12 = [MEMORY[0x1E69A6138] registration];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v37 = v11;
              _os_log_debug_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEBUG, "Selected subscription to check isPNRSupported { selectedSubscription: %@ }", buf, 0xCu);
            }

            v13 = *(*(a1 + 32) + 16);
            v30 = 0;
            v14 = [v13 getPNRSupportStatus:v11 outError:&v30];
            v15 = v30;
            v16 = [v14 isSupported];

            v17 = [MEMORY[0x1E69A6138] registration];
            v18 = v17;
            if (v15)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v37 = v15;
                v38 = 2112;
                v39 = v11;
                _os_log_error_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_ERROR, "Failure checking isPNRSupported{ error: %@, subscription: %@ }", buf, 0x16u);
              }

              *(*(*(a1 + 40) + 8) + 24) = 1;
            }

            else
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v19 = @"NO";
                if (v16)
                {
                  v19 = @"YES";
                }

                v37 = v19;
                v38 = 2112;
                v39 = v11;
                _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "Determined value for isPNRSupported { isPNRSupported: %@, subscription: %@ }", buf, 0x16u);
              }

              if (v16)
              {
                v22 = [*(a1 + 32) cache];
                [v22 setSupportsIdentification:1];

                goto LABEL_25;
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:

      v21 = v29;
      if (v29)
      {
        v23 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = v29;
          _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "Unable to locate subscriptions to check isPNRSupported { error: %@ }", buf, 0xCu);
        }

        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    else
    {
      v20 = [*(a1 + 32) cache];
      [v20 setSupportsIdentification:2];

      v21 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "Device does not support SMS -- returning NO", buf, 2u);
      }
    }
  }

  v24 = [*(a1 + 32) cache];
  *(*(*(a1 + 48) + 8) + 24) = [v24 supportsIdentification] == 1;

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && *(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _legacy_supportsSMSIdentification];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    v26 = [*(a1 + 32) cache];
    [v26 setSupportsIdentification:v25];

    v27 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      *buf = 138412290;
      v37 = v28;
      _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "Falling back to legacy PNR supported check { legacyResult: %@ }", buf, 0xCu);
    }
  }
}

__CFString *IDSDataProtectionClassStringFromDataProtectionClass(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E77E24D0[a1];
  }
}

uint64_t IDSDebuggingShouldFakeBadSIM()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (!v1)
  {
    return 0;
  }

  result = IMGetDomainBoolForKey();
  if (result)
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "*********** Faking bad SIM, switch is ON !! ***********", v4, 2u);
    }

    return 1;
  }

  return result;
}

uint64_t IDSDebuggingShouldFakeSMSCharge()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (!v1)
  {
    return 0;
  }

  result = IMGetDomainBoolForKey();
  if (result)
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "*********** Faking SMS charge, switch is ON !! ***********", v4, 2u);
    }

    return 1;
  }

  return result;
}

id _IDSCopyOrderedAliasStrings(void *a1, uint64_t a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = _IDSCopyOrderedAliasesWithGetter(a1, a2, a3, 0, &unk_1F1AAB660);
  v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) _stripFZIDPrefix];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

id _IDSCopyOrderedAliasesWithGetter(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, void *a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (!v13)
  {
    v30 = 0;
    v29 = v12;
    goto LABEL_33;
  }

  v14 = v13;
  v42 = __PAIR64__(a4, a3);
  v43 = v10;
  v15 = 0;
  v16 = *v55;
  v17 = @"____--SENTINEL--SELF--ALIAS--V0--____";
  do
  {
    v18 = 0;
    do
    {
      if (*v55 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v54 + 1) + 8 * v18);
      if ([v19 _appearsToBePhoneNumber])
      {
        v20 = _IDSCopyIDForPhoneNumberWithOptions(v19, 0);
        if (v20)
        {
          [v11 addObject:v20];
        }

        v15 = 1;
      }

      else
      {
        if ([v19 _appearsToBeEmail])
        {
          if (a2)
          {
            v21 = [v19 lowercaseString];
            if ([v21 hasMobileMeSuffix])
            {
              [v21 stripMobileMSuffixIfPresent];
              v44 = v15;
              v22 = v11;
              v23 = v12;
              v24 = a2;
              v26 = v25 = v17;

              v21 = [v26 stringByAppendingString:@"@icloud.com"];

              v17 = v25;
              a2 = v24;
              v12 = v23;
              v11 = v22;
              v15 = v44;
            }

            v19 = v21;
          }

          v27 = _IDSCopyIDForEmailAddress(v19);
          if (v27)
          {
            [v11 addObject:v27];
          }

LABEL_17:

          goto LABEL_21;
        }

        if (([v19 _appearsToBeDSID] & 1) != 0 || objc_msgSend(v19, "isEqualToIgnoringCase:", v17))
        {
          [v11 addObject:{v19, v42}];
        }

        else if (([v19 isEqualToIgnoringCase:@"____--SENTINEL--ALIAS--V0--____"] & 1) == 0)
        {
          v27 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v59 = v19;
            _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "Ignoring malformed alias %@ in _IDSCopyOrderedAliases", buf, 0xCu);
          }

          goto LABEL_17;
        }
      }

LABEL_21:

      ++v18;
    }

    while (v14 != v18);
    v28 = [v12 countByEnumeratingWithState:&v54 objects:v60 count:16];
    v14 = v28;
  }

  while (v28);

  v10 = v43;
  if (v43 == 0 || (v15 & 1) == 0)
  {
    v30 = 0;
    a3 = v42;
    LOBYTE(a4) = BYTE4(v42);
  }

  else
  {
    v29 = v43[2](v43);
    a3 = v42;
    LOBYTE(a4) = BYTE4(v42);
    if ([v29 count])
    {
      v30 = [v29 __imArrayByApplyingBlock:&unk_1F1AAB640];
    }

    else
    {
      v30 = 0;
    }

LABEL_33:
  }

  v31 = ValidMobileMeDomains();
  if (a3)
  {
    v32 = 0;
  }

  else
  {
    v32 = 100;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A7B0B550;
  aBlock[3] = &unk_1E77E2350;
  v33 = v30;
  v48 = v33;
  v51 = v32;
  v34 = v31;
  v49 = v34;
  v50 = &unk_1F1B20B70;
  v53 = a4;
  v52 = 1000;
  v35 = _Block_copy(aBlock);
  v36 = [v11 allObjects];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = sub_1A7B0B768;
  v45[3] = &unk_1E77E2378;
  v37 = v35;
  v46 = v37;
  v38 = [v36 sortedArrayUsingComparator:v45];

  v39 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v38];
  v40 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    sub_1A7E1F17C();
  }

  return v39;
}

id IDSLoggableDescriptionForHandleOnService(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (IDSShouldUseRestrictedLoggingForService(v4))
    {
      v15 = 0;
      v5 = [v3 _stripPotentialTokenURIWithToken:&v15];
      v6 = v15;
      v7 = [v5 _stripFZIDPrefix];

      v8 = IDSLoggableDescriptionSalt();
      v9 = [v7 dataUsingEncoding:4 allowLossyConversion:1];
      v10 = IDSSaltedHash(v8, v9);
      if (v10)
      {
        if (v6 && [v6 length])
        {
          v11 = IDSSaltedHash(v8, v6);
          if (v11)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"t:%@/u:%@", v11, v10];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"t:TOKEN/u:%@", v10, v14];
          }
          v12 = ;
        }

        else
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"u:%@", v10];
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = v3;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t IDSShouldUseRestrictedLoggingForService(void *a1)
{
  v1 = a1;
  if (qword_1ED5DF828 != -1)
  {
    sub_1A7B0290C();
  }

  if (byte_1ED5DF762)
  {
    goto LABEL_5;
  }

  v2 = atomic_load(byte_1EB2BBC40);
  if (v2)
  {
    goto LABEL_5;
  }

  if (byte_1ED5DF791 != 1)
  {
    v3 = 0;
    goto LABEL_6;
  }

  if (!v1 || ![v1 length])
  {
LABEL_5:
    v3 = 1;
  }

  else
  {
    if (qword_1EB2BBC50 != -1)
    {
      sub_1A7E10258();
    }

    v3 = [qword_1EB2BBC48 containsObject:v1];
  }

LABEL_6:

  return v3;
}

uint64_t sub_1A7B02920()
{
  if (os_variant_has_internal_ui())
  {
    v0 = _os_feature_enabled_impl();
  }

  else
  {
    v0 = 1;
  }

  byte_1ED5DF791 = v0;
  result = _os_feature_enabled_impl();
  byte_1ED5DF762 = result;
  return result;
}

__CFString *_IDSServerBagHashAlgorithmString(int a1)
{
  v1 = @"Unknown";
  if (!a1)
  {
    v1 = @"SHA1";
  }

  if (a1 == 1)
  {
    return @"SHA256";
  }

  else
  {
    return v1;
  }
}

void sub_1A7B029E0(_opaque_pthread_t **a1, const void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *a1;
    if (v4 == pthread_self())
    {
      v5 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *a1;
        *buf = 134217984;
        *&buf[4] = v6;
        _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "should not add a sync block to the current thread %p", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"should not add a sync block to the current thread %p");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"TPThread", @"should not add a sync block to the current thread %p");
          }
        }
      }

      if (isRunningTests())
      {
        throwsIDSAbortException();
      }

      abort();
    }

    memset(buf, 170, 16);
    pthread_dependency_init_np();
    v7 = _Block_copy(a2);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A7B02BCC;
    v8[3] = &unk_1E77E29B8;
    v8[4] = v7;
    v8[5] = buf;
    sub_1A7AFFF20(a1, v8);
    pthread_dependency_wait_np();
    _Block_release(v7);
  }
}

uint64_t sub_1A7B02BCC(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  return MEMORY[0x1EEE74158](v2, 0);
}

void sub_1A7B03810(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A7B03618);
  }

  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(exc_buf);
}

id _IDSCopyIDForPhoneNumberWithOptions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    if ([v3 hasPrefix:@"tel:"])
    {
      v5 = v3;
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v7 = IMInternationalForPhoneNumberWithOptions();
      v5 = [v6 initWithFormat:@"tel:%@", v7];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void IDSPowerLogDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    v6 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1E954(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    goto LABEL_14;
  }

  if (!IDSShouldPowerLog(v3))
  {
    v6 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1E98C(v6, v14, v15, v16, v17, v18, v19, v20);
    }

    goto LABEL_14;
  }

  if (qword_1EB2B8980 != -1)
  {
    sub_1A7E1E9C4();
  }

  if (!off_1EB2B8988)
  {
    v6 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1E9D8(v6, v21, v22, v23, v24, v25, v26, v27);
    }

LABEL_14:

    goto LABEL_15;
  }

  off_1EB2B8988(13, v3, v5, 0);
LABEL_15:
}

uint64_t IDSShouldPowerLog(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    goto LABEL_6;
  }

  if (qword_1EB2B8960 != -1)
  {
    sub_1A7E1E940();
  }

  if (off_1EB2B8968)
  {
    v2 = off_1EB2B8968(13, v1);
  }

  else
  {
LABEL_6:
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1A7B03C2C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7B03D5C, 0, 0);
  }
}

uint64_t sub_1A7B03D60()
{
  if (sub_1A7E22700())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *v3 = v0;
    v3[1] = sub_1A7B03FF4;

    return sub_1A7B03E2C();
  }
}

uint64_t sub_1A7B03E4C()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v0 + 48) = v2;
  v3 = *(v2 + 32);
  *(v0 + 96) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 56) = v6;
    *(v0 + 64) = v8;
    v10 = *(*(v7 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
    *(v0 + 72) = v10;
    v11 = v10 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link;
    v12 = *(v10 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link);
    *(v0 + 80) = v12;
    v13 = *(v11 + 8);

    swift_unknownObjectRetain();
    v14 = swift_task_alloc();
    *(v0 + 88) = v14;
    *v14 = v0;
    v14[1] = sub_1A7D41538;

    return sub_1A7D417E0(v12, v13);
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1A7B03FF4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7B040F0, 0, 0);
}

uint64_t sub_1A7B040F0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A7B03C2C;

  return MEMORY[0x1EEE6DA60](5000000000);
}

uint64_t IDSTransportThreadAddBlockAfter(const void *a1, double a2)
{
  v14 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&changelist.ident = v3;
  *&changelist.data = v3;
  v4 = _Block_copy(a1);
  if (a2 <= 9223372040.0)
  {
    v7 = (a2 * 1000000000.0);
    v6 = 132;
  }

  else if (a2 <= 9.22337204e12)
  {
    v7 = (a2 * 1000000.0);
    v6 = 130;
  }

  else if (a2 <= 9.22337204e18)
  {
    v7 = a2;
    v6 = 129;
  }

  else
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = a2;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadAddBlockAfter - the interval value %f is too big! Please check your value!", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadAddBlockAfter - the interval value %f is too big! Please check your value!");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadAddBlockAfter - the interval value %f is too big! Please check your value!");
        }
      }
    }

    v6 = 129;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  changelist.ident = v4;
  *&changelist.filter = 1179641;
  changelist.fflags = v6;
  changelist.data = v7;
  changelist.udata = v4;
  result = kevent(dword_1EB2B8688, &changelist, 1, 0, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    v9 = *__error();
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v13) = v9;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadAddBlockAfter kevent errno %d", buf, 8u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadAddBlockAfter kevent errno %d");
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadAddBlockAfter kevent errno %d");
        }
      }
    }
  }

  return result;
}

uint64_t _IDSPrefersPhoneNumbersForServiceIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToIgnoringCase:@"com.apple.madrid"] & 1) != 0 || (objc_msgSend(v1, "isEqualToIgnoringCase:", @"com.apple.madrid.lite") & 1) != 0 || (objc_msgSend(v1, "isEqualToIgnoringCase:", @"com.apple.private.alloy.sms") & 1) != 0 || (objc_msgSend(v1, "isEqualToIgnoringCase:", @"com.apple.private.alloy.tincan.audio") & 1) != 0 || (objc_msgSend(v1, "isEqualToIgnoringCase:", @"com.apple.private.alloy.facetime.audio") & 1) != 0 || (objc_msgSend(v1, "isEqualToIgnoringCase:", @"com.apple.private.alloy.facetime.video") & 1) != 0 || (objc_msgSend(v1, "isEqualToIgnoringCase:", @"com.apple.private.alloy.facetime.lp") & 1) != 0 || (objc_msgSend(v1, "isEqualToIgnoringCase:", @"com.apple.private.alloy.facetime.multi") & 1) != 0 || (objc_msgSend(v1, "isEqualToIgnoringCase:", @"com.apple.private.alloy.biz"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToIgnoringCase:@"com.apple.private.alloy.health.sync.sharingsetup"];
  }

  return v2;
}

double ids_monotonic_time()
{
  if (qword_1EB2BB560 != -1)
  {
    sub_1A7B0B8D4();
  }

  return *&bst_mach_time_rate * mach_continuous_time();
}

void sub_1A7B047C8()
{
  os_unfair_lock_lock(&stru_1ED5DF77C);
  v0 = qword_1ED5DF758;
  qword_1ED5DF758 = 0;

  os_unfair_lock_unlock(&stru_1ED5DF77C);
}

uint64_t _IDSDestinationHasValidPrefix(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (qword_1ED5DF750 != -1)
  {
    sub_1A7E1F0F4();
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = qword_1EB2BBC38;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([v1 hasPrefix:{*(*(&v7 + 1) + 8 * i), v7}])
        {
          v3 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v3;
}

id IDSGetUUIDData(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = [v1 UTF8String]) != 0)
  {
    memset(uu, 170, sizeof(uu));
    uuid_parse(v3, uu);
    jw_uuid_to_data();
    v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1A7B04DA4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7D12964, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A7B04F60()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  (*(v2[4] + 8))(v2[5], v2[3]);
  if (v0)
  {
    v3 = sub_1A7D40D9C;
  }

  else
  {
    v3 = sub_1A7B050C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A7B050CC()
{
  if (sub_1A7E22700())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_1A7B05510;

    return sub_1A7B051A0();
  }
}

uint64_t sub_1A7B051C0()
{
  *(v0 + 160) = OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_lburst;
  v1 = sub_1A7E22040();
  v2 = sub_1A7E228F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A7AD9000, v1, v2, "sending bursts...", v3, 2u);
    MEMORY[0x1AC5654B0](v3, -1, -1);
  }

  v4 = *(v0 + 152);

  swift_beginAccess();
  v5 = *(v4 + 112);
  *(v0 + 168) = v5;
  v6 = *(v5 + 32);
  *(v0 + 67) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  swift_bridgeObjectRetain_n();
  if (v9)
  {
    v10 = 0;
LABEL_10:
    *(v0 + 176) = v9;
    *(v0 + 184) = v10;
    v12 = *(*(v5 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
    *(v0 + 192) = v12;
    v13 = v12 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link;
    *(v0 + 200) = *(v12 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link);
    v14 = *(v13 + 8);
    *(v0 + 208) = v14;
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 40);

    swift_unknownObjectRetain();
    v23 = (v16 + *v16);
    v17 = swift_task_alloc();
    *(v0 + 216) = v17;
    *v17 = v0;
    v17[1] = sub_1A7D432BC;

    return v23(v0 + 72, ObjectType, v14);
  }

  else
  {
    v11 = 0;
    while (((63 - v8) >> 6) - 1 != v11)
    {
      v10 = v11 + 1;
      v9 = *(v5 + 8 * v11++ + 72);
      if (v9)
      {
        goto LABEL_10;
      }
    }

    v19 = sub_1A7E22040();
    v20 = sub_1A7E228F0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1A7AD9000, v19, v20, "done sending bursts", v21, 2u);
      MEMORY[0x1AC5654B0](v21, -1, -1);
    }

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1A7B05510()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7B0565C, 0, 0);
  }
}

uint64_t sub_1A7B0565C()
{
  sub_1A7E23170();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1A7B04F60;

  return sub_1A7B05728(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A7B05728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1A7E22CF0();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1A7B05828, 0, 0);
}

uint64_t sub_1A7B05828()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1A7E22D10();
  v5 = sub_1A7B059B8(&qword_1EB2B2880, MEMORY[0x1E69E8820]);
  sub_1A7E23150();
  sub_1A7B059B8(&qword_1EB2B2888, MEMORY[0x1E69E87E8]);
  sub_1A7E22D20();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1A7B04DA4;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1A7B059B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A7B05A00(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1A7B05A50(uint64_t a1, void *a2)
{
  v2 = _IDSCopyIDForPhoneNumberWithOptions(a2, 0);

  return v2;
}

id _IDSCopyMyPhoneNumbers(int a1)
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&stru_1ED5DF77C);
  v2 = qword_1ED5DF758;
  if (qword_1ED5DF758)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    goto LABEL_21;
  }

  v4 = +[IDSCTAdapter sharedInstance];
  v19 = 0;
  v5 = [v4 currentSIMsWithError:&v19];
  v6 = v19;
  v7 = [v5 __imArrayByApplyingBlock:&unk_1F1AAB720];

  if ([v7 count] || v6 == 0)
  {
    v9 = v7;
  }

  else
  {
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1F108();
    }

    v9 = 0;
  }

  v12 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "Returning phone number from _IDSFetchPhoneNumber { phoneNumbers: %@ }", buf, 0xCu);
  }

  v13 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v13 = v9;
  }

  v14 = v13;

  v15 = qword_1ED5DF758;
  qword_1ED5DF758 = v14;

  if ((byte_1EB2B8770 & 1) == 0)
  {
    im_dispatch_after_primary_queue();
  }

  v2 = qword_1ED5DF758;
  if (qword_1ED5DF758)
  {
LABEL_21:
    v16 = v2;
  }

  else
  {
    v16 = 0;
  }

  os_unfair_lock_unlock(&stru_1ED5DF77C);
  if ([v16 count])
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_1A7B06154(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void IDSAWDSubmitBlockAsync(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = +[IDSAWDLogging sharedInstance];
      v7 = [v6 _shouldSubmit];

      if (v7)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1A7B06154;
        block[3] = &unk_1E77E0B48;
        v9 = v5;
        dispatch_async(v3, block);
      }
    }
  }
}

__CFString *_StringForIDSAccountType(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E77E2458[a1];
  }
}

id _IDSCopyCallerIDWithSelfMessagingHint(void *a1, void *a2, void *a3, void *a4, int a5, unsigned int a6, unsigned int a7)
{
  v77 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = v16;
  if (a5)
  {
    if (v13 && v16 && ([v13 isEqualToString:v16] & 1) == 0)
    {
      v18 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1EFFC();
      }
    }

    else
    {
      v18 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1A7E1F080();
      }
    }

    v20 = v17;
  }

  else if (([0 _appearsToBeDSID] & 1) != 0 || objc_msgSend(0, "isEqualToIgnoringCase:", @"____--SENTINEL--SELF--ALIAS--V0--____"))
  {
    v19 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1EF80(v19);
    }

    v20 = 0;
    v13 = 0;
  }

  else
  {
    v20 = 0;
  }

  if (![v14 count])
  {
    v22 = 0;
    goto LABEL_72;
  }

  v53 = v17;
  if (v20)
  {
    v21 = 0;
    if (v13)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  _IDSCopyOrderedAliasesWithGetter(v14, 0, a6, a7, &unk_1F1AAB660);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v23 = v65 = 0u;
  v20 = [v23 countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (!v20)
  {
    v21 = 0;
    goto LABEL_39;
  }

  v51 = v15;
  v21 = 0;
  v24 = *v63;
  while (2)
  {
    for (i = 0; i != v20; i = i + 1)
    {
      if (*v63 != v24)
      {
        objc_enumerationMutation(v23);
      }

      v26 = *(*(&v62 + 1) + 8 * i);
      if (!v21)
      {
        v21 = [*(*(&v62 + 1) + 8 * i) _stripFZIDPrefix];
      }

      v27 = [v26 _appearsToBeDSID];
      if (a5)
      {
        if (v27)
        {
          v28 = v26;
LABEL_37:
          v20 = v28;
          goto LABEL_38;
        }
      }

      else if ((v27 & 1) == 0)
      {
        v28 = [v26 _stripFZIDPrefix];
        goto LABEL_37;
      }
    }

    v20 = [v23 countByEnumeratingWithState:&v62 objects:v76 count:16];
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_38:
  v15 = v51;
LABEL_39:

  v29 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v49 = @"NO";
    *buf = 138413058;
    v69 = v20;
    v70 = 2112;
    if (a6)
    {
      v49 = @"YES";
    }

    v71 = v23;
    v72 = 2112;
    v73 = v14;
    v74 = 2112;
    v75 = v49;
    _os_log_debug_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEBUG, "CallerID - no fromID - choosing %@ from aliases %@ (originally %@). Prefer phone numbers %@", buf, 0x2Au);
  }

  if (v13)
  {
LABEL_41:
    if ((a5 & 1) == 0)
    {
      v30 = [v13 _stripFZIDPrefix];

      v20 = v30;
      goto LABEL_44;
    }
  }

LABEL_43:
  if (v13)
  {
LABEL_44:
    if ([v13 _appearsToBePseudonymID])
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v52 = v15;
      v31 = v15;
      v32 = [v31 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v59;
        v50 = v14;
        while (2)
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v59 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = [*(*(&v58 + 1) + 8 * j) URI];
            v37 = [v36 prefixedURI];
            v38 = [v37 isEqualToString:v13];

            if (v38)
            {
              v22 = v13;

              v14 = v50;
              v15 = v52;
              goto LABEL_71;
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v58 objects:v67 count:16];
          v14 = v50;
          if (v33)
          {
            continue;
          }

          break;
        }
      }

      v22 = 0;
      v15 = v52;
      goto LABEL_71;
    }
  }

  v39 = v15;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v40 = v14;
  v41 = v14;
  v42 = [v41 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v55;
    while (2)
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v55 != v44)
        {
          objc_enumerationMutation(v41);
        }

        if ([v20 isEqualToIgnoringCase:*(*(&v54 + 1) + 8 * k)])
        {
          v20 = v20;

          v22 = v20;
          v14 = v40;
          v15 = v39;
          goto LABEL_71;
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v54 objects:v66 count:16];
      if (v43)
      {
        continue;
      }

      break;
    }
  }

  if (![v21 length])
  {
    v46 = [v41 __imFirstObject];

    if ([v46 isEqualToIgnoringCase:@"____--SENTINEL--SELF--ALIAS--V0--____"])
    {

      v21 = 0;
    }

    else
    {
      v21 = v46;
    }
  }

  v15 = v39;
  v47 = [MEMORY[0x1E69A6138] warning];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v69 = v13;
    v70 = 2112;
    v71 = v41;
    v72 = 2112;
    v73 = v21;
    _os_log_error_impl(&dword_1A7AD9000, v47, OS_LOG_TYPE_ERROR, "Unable to find fromID %@ in set of valid aliases %@   (falling back to: %@)", buf, 0x20u);
  }

  v21 = v21;
  v22 = v21;
  v14 = v40;
LABEL_71:

  v17 = v53;
LABEL_72:

  return v22;
}

id _IDSCopyIDForEmailAddress(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 lowercaseString];

    if ([v2 hasPrefix:@"mailto:"])
    {
      v3 = v2;
      v1 = v3;
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"mailto:%@", v2];
      v1 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _IDSIsTrafficAllowed(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 containsObject:@"com.apple.ids.trafficclass.all"] & 1) != 0 || (objc_msgSend(v4, "containsObject:", @"com.apple.ids.trafficclass.control"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 intersectsSet:v3];
  }

  return v5;
}

uint64_t _IDSCopyIDForTokenWithURI(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [v3 __imHexString];
    v7 = [v5 initWithFormat:@"token:%@/%@", v6, v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1A7B090D8(uint64_t a1)
{
  v2 = objc_alloc_init(IDSCTAdapterCache);
  [*(a1 + 32) setCache:v2];
}

id IDSLoggableDescriptionForHandlesOnService(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (IDSShouldUseRestrictedLoggingForService(v4))
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1A7B15FC8;
      v8[3] = &unk_1E77DCDD8;
      v9 = v4;
      v5 = [v3 __imArrayByApplyingBlock:v8];
      v6 = [v5 description];
    }

    else
    {
      v6 = [v3 description];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1A7B09480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7B09498(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cache];
  v3 = [v2 doesAnySIMSupportsSimultaneousVoiceAndDataRightNow];

  if (!v3)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = *(a1 + 32);
    v25 = 0;
    v5 = [v4 _unlocked_currentSIMsWithError:&v25];
    v22 = v25;
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      v23 = *MEMORY[0x1E6965538];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v26 + 1) + 8 * i) context];
          v11 = *(*(a1 + 32) + 16);
          v24 = 0;
          v12 = [v11 context:v10 getSystemCapabilities:&v24];
          v13 = v24;
          if (v13)
          {
            v14 = [MEMORY[0x1E69A6138] registration];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v31 = v10;
              v32 = 2112;
              v33 = v13;
              _os_log_error_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_ERROR, "Unable to read SIM system capabilities { ctx: %@, SIMCapsError: %@ }", buf, 0x16u);
            }
          }

          else
          {
            v15 = [v12 objectForKey:v23];
            v16 = [v15 intValue] == 1;

            *(*(*(a1 + 40) + 8) + 24) |= v16;
            if (*(*(*(a1 + 40) + 8) + 24))
            {

              goto LABEL_16;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v17 = [MEMORY[0x1E69A6138] registration];
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v18)
      {
        *buf = 138412290;
        v31 = v22;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Unable to locate subscriptions to check SIM voiceAndDateRightNow { error: %@ }", buf, 0xCu);
      }
    }

    else
    {
      if (v18)
      {
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          v19 = @"YES";
        }

        else
        {
          v19 = @"NO";
        }

        *buf = 138412290;
        v31 = v19;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Loaded any SIM supports simultaneous { doesAnySIMSupportsSimultaneousVoiceAndDataRightNow: %@ }", buf, 0xCu);
      }

      if (*(*(*(a1 + 40) + 8) + 24))
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      v17 = [*(a1 + 32) cache];
      [v17 setDoesAnySIMSupportsSimultaneousVoiceAndDataRightNow:v20];
    }
  }

  v21 = [*(a1 + 32) cache];
  *(*(*(a1 + 40) + 8) + 24) = [v21 doesAnySIMSupportsSimultaneousVoiceAndDataRightNow] == 1;
}

id IDSLoggableDescriptionForObjectOnService(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (IDSShouldUseRestrictedLoggingForService(v4))
    {
      if (objc_opt_respondsToSelector())
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"<redacted %@ count:%llu>", objc_opt_class(), objc_msgSend(v3, "count")];
      }

      else
      {
        v8 = objc_opt_respondsToSelector();
        v9 = MEMORY[0x1E696AEC0];
        v10 = objc_opt_class();
        if (v8)
        {
          [v9 stringWithFormat:@"<redacted %@ length:%llu>", v10, objc_msgSend(v3, "length")];
        }

        else
        {
          [v9 stringWithFormat:@"<redacted %@>", v10, v12];
        }
      }
      v7 = ;
    }

    else
    {
      v7 = [v3 description];
    }

    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t _IDSTypeForID(void *a1)
{
  v12 = 0;
  v1 = [a1 _stripPotentialTokenURIWithToken:&v12];
  v2 = v12;
  v3 = [v1 _FZIDType];
  v4 = -1;
  v5 = 9;
  if (!v2)
  {
    v5 = 4;
  }

  v6 = 5;
  if (v2)
  {
    v6 = 6;
  }

  v7 = 7;
  if (v2)
  {
    v7 = 8;
  }

  if (v3 != 5)
  {
    v7 = -1;
  }

  if (v3 != 4)
  {
    v6 = v7;
  }

  if (v3 != 3)
  {
    v5 = v6;
  }

  v8 = 3;
  if (!v2)
  {
    v8 = 1;
  }

  v9 = 10;
  if (v2)
  {
    v9 = 11;
  }

  if (v3 == 2)
  {
    v4 = v9;
  }

  if (v3 == 1)
  {
    v4 = v8;
  }

  if (!v3)
  {
    v4 = 2 * (v2 != 0);
  }

  if (v3 <= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

uint64_t _IDSCopyIDForDeviceUniqueID(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"device:%@", v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _IDSAreIDsEquivalent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 _FZIDType];
  if (v5 == [v4 _FZIDType])
  {
    v6 = [v3 _IDFromFZIDType:v5];
    v7 = [v6 _stripFZIDPrefix];

    v8 = [v4 _IDFromFZIDType:v5];
    v9 = [v8 _stripFZIDPrefix];

    if (![v7 localizedCaseInsensitiveCompare:v9])
    {
LABEL_13:
      v14 = 1;
LABEL_17:
      v4 = v9;
      v3 = v7;
      goto LABEL_18;
    }

    if (v5 == 1)
    {
LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }

    v10 = IMPhoneNumberRefCopyForPhoneNumber();
    v11 = IMPhoneNumberRefCopyForPhoneNumber();
    v12 = v11;
    if (v10 && v11)
    {
      v13 = CFEqual(v10, v11) != 0;
    }

    else
    {
      v13 = 0;
      v15 = 0;
      if (!v10)
      {
LABEL_10:
        if (v12)
        {
          CFRelease(v12);
        }

        if (v15)
        {
          goto LABEL_13;
        }

        v16 = IMPhoneNumberRefCopyForPhoneNumber();
        if (v16)
        {
          CFRelease(v16);
        }

        goto LABEL_16;
      }
    }

    CFRelease(v10);
    v15 = v13;
    goto LABEL_10;
  }

  v14 = 0;
LABEL_18:

  return v14;
}

id sub_1A7B0A094(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:v5];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    if (v6)
    {
      v8 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1A7B0A38C(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

id sub_1A7B0A150(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKey:v4];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    if (v5)
    {
      v7 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1A7B0A414();
      }
    }

    v6 = 0;
  }

  return v6;
}

id sub_1A7B0A20C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:v5];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    if (v6)
    {
      v8 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1A7B0A47C(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

id sub_1A7B0A2C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:v5];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    if (v6)
    {
      v8 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1A7B0A504(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

void sub_1A7B0A38C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_FAULT, "BlastDoor: Disabled for framing messages", &v3, 0x16u);
}

void sub_1A7B0A47C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_FAULT, "Failed type check! {key: %@, class: %@}", &v3, 0x16u);
}

void sub_1A7B0A504(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_1A7AD9000, log, OS_LOG_TYPE_FAULT, "Got unhandled socket pair command %d", &v3, 0x16u);
}

void sub_1A7B0A5B0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_1A7B0A618(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1A7B0A634(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_1A7B0A690(id a1)
{

  return a1;
}

void sub_1A7B0A6B8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_1A7B0A6D4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_1A7B0A740(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint8_t buf)
{

  _os_log_impl(a1, v27, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x1Cu);
}

void sub_1A7B0A770(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1A7B0A798(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_1A7B0A7B8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

__CFString *IDSEncryptionTypeStringFromEncryptionType(uint64_t a1)
{
  v2 = 0;
  if (a1 > 2)
  {
    if (a1 > 4)
    {
      if (a1 == 5)
      {
        v3 = IDSSecondaryIdentityIdentifier;
      }

      else
      {
        if (a1 != 6)
        {
          goto LABEL_18;
        }

        v3 = &IDSPaddyIdentityIdentifier;
      }
    }

    else
    {
      if (a1 == 3)
      {
        v2 = @"engram";
        goto LABEL_18;
      }

      v3 = IDSNGMDeviceIdentityIdentifier;
    }

    goto LABEL_17;
  }

  switch(a1)
  {
    case 0:
      v2 = @"otr";
      break;
    case 1:
      v3 = IDSMPLegacyIdentityIdentifier;
LABEL_17:
      v2 = *v3;
      break;
    case 2:
      v2 = @"none";
      break;
  }

LABEL_18:

  return v2;
}

uint64_t sub_1A7B0B550(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:@"tel:"])
  {
    if ([*(a1 + 32) count] && objc_msgSend(*(a1 + 32), "containsObject:", v3))
    {
      v4 = *(a1 + 56) + 1;
    }

    else
    {
      v4 = *(a1 + 56) + 2;
    }
  }

  else if ([v3 hasPrefix:@"mailto:"])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = [*(a1 + 40) count];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v5 = *(a1 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A7B0B808;
    v15[3] = &unk_1E77E2300;
    v6 = v3;
    v16 = v6;
    v17 = &v23;
    v18 = &v19;
    [v5 enumerateObjectsUsingBlock:v15];
    if ((v20[3] & 1) == 0)
    {
      v7 = *(a1 + 48);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1A7B0B874;
      v10[3] = &unk_1E77E2328;
      v8 = v6;
      v14 = *(a1 + 72);
      v11 = v8;
      v12 = &v23;
      v13 = *(a1 + 64);
      [v7 enumerateObjectsUsingBlock:v10];
    }

    v4 = v24[3] + 3;

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1A7B0B744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A7B0B768(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 32) + 16))();
  v8 = (*(*(a1 + 32) + 16))();
  if (v7 >= v8)
  {
    if (v7 > v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v5 compare:v6];
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

uint64_t sub_1A7B0B808(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasSuffix:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) += ~a3;
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_1A7B0B874(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasSuffix:a2];
  if (result)
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = *(a1 + 48) + a3;
      *a4 = 1;
    }
  }

  return result;
}

__CFString *_StringForIDSDRegistrationStatus(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"Failed";
  }

  else
  {
    return off_1E77E2488[a1];
  }
}

__CFString *_StringForIDSRegistrationServiceType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (@"iMessage" == v1 || ([(__CFString *)v1 isEqualToString:?]& 1) != 0)
  {
    v3 = @"iMessage";
LABEL_10:

    goto LABEL_11;
  }

  if (@"Calling" == v2 || ([(__CFString *)v2 isEqualToString:?]& 1) != 0)
  {
    v3 = @"Calling";
    goto LABEL_10;
  }

  if (@"FaceTime" == v2 || (v3 = v2, [(__CFString *)v2 isEqualToString:?]))
  {
    v3 = @"FaceTime";
    goto LABEL_10;
  }

LABEL_11:

  return v3;
}

__CFString *_IDSRegistrationServiceTypeForString(void *a1)
{
  v1 = a1;
  if ([(__CFString *)v1 isEqualToIgnoringCase:@"com.apple.iMessage"])
  {
    goto LABEL_2;
  }

  if ([(__CFString *)v1 isEqualToIgnoringCase:@"com.apple.FaceTime"])
  {
    goto LABEL_4;
  }

  if ([(__CFString *)v1 isEqualToIgnoringCase:@"com.apple.Calling"]|| [(__CFString *)v1 isEqualToIgnoringCase:@"com.apple.private.ac"]|| [(__CFString *)v1 isEqualToIgnoringCase:@"com.apple.private.ac"])
  {
    goto LABEL_8;
  }

  if ([(__CFString *)v1 isEqualToIgnoringCase:@"com.apple.ess"])
  {
    goto LABEL_4;
  }

  if ([(__CFString *)v1 isEqualToIgnoringCase:@"com.apple.private.alloy.facetime.multi"]|| [(__CFString *)v1 isEqualToIgnoringCase:@"Multiway"])
  {
    v2 = IDSRegistrationServiceTypeMultiway;
    goto LABEL_9;
  }

  if ([(__CFString *)v1 isEqualToIgnoringCase:@"com.apple.madrid"])
  {
    goto LABEL_2;
  }

  if ([(__CFString *)v1 isEqualToIgnoringCase:@"Calling"])
  {
LABEL_8:
    v2 = IDSRegistrationServiceTypeCalling;
    goto LABEL_9;
  }

  if ([(__CFString *)v1 isEqualToIgnoringCase:@"iMessage"]|| [(__CFString *)v1 isEqualToIgnoringCase:@"Messenger"]|| [(__CFString *)v1 isEqualToIgnoringCase:@"Madrid"])
  {
LABEL_2:
    v2 = IDSRegistrationServiceTypeiMessage;
LABEL_9:
    v3 = *v2;
    goto LABEL_10;
  }

  if ([(__CFString *)v1 isEqualToIgnoringCase:@"FaceTime"]|| [(__CFString *)v1 isEqualToIgnoringCase:@"Venice"])
  {
LABEL_4:
    v2 = IDSRegistrationServiceTypeFaceTime;
    goto LABEL_9;
  }

  v3 = @"com.apple.private.alloy.invitation.screensharing";
  if (([(__CFString *)v1 isEqualToIgnoringCase:@"com.apple.private.alloy.invitation.screensharing"]& 1) == 0)
  {
    v3 = @"com.apple.private.alloy.multiplex1";
    if (![(__CFString *)v1 isEqualToIgnoringCase:@"com.apple.private.alloy.multiplex1"])
    {
      v3 = v1;
    }
  }

LABEL_10:
  v4 = v3;

  return v3;
}

char *EventTracingOperation.init(name:uniqueIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a3;
  v58 = a2;
  v59 = type metadata accessor for EventTracingValue(0);
  MEMORY[0x1EEE9AC00](v59, v8);
  v10 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1A7E21B00();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A7E21B60();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR___IDSEventTracingOperation_fields] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR___IDSEventTracingOperation_subOperations] = v21;
  v5[OBJC_IVAR___IDSEventTracingOperation_stopped] = 0;
  (*(v12 + 56))(&v5[OBJC_IVAR___IDSEventTracingOperation_stopTime], 1, 1, v11);
  *&v5[OBJC_IVAR___IDSEventTracingOperation_error] = 0;
  v22 = &v5[OBJC_IVAR___IDSEventTracingOperation_name];
  v23 = v58;
  *v22 = a1;
  v22[1] = v23;
  if (a4)
  {
    v24 = v57;
  }

  else
  {
    sub_1A7E21B50();
    v24 = sub_1A7E21B20();
    a4 = v25;
    (*(v17 + 8))(v20, v16);
  }

  v26 = &v5[OBJC_IVAR___IDSEventTracingOperation_uniqueIdentifier];
  *v26 = v24;
  v26[1] = a4;
  sub_1A7E21AF0();
  (*(v12 + 32))(&v5[OBJC_IVAR___IDSEventTracingOperation_start], v15, v11);
  v27 = type metadata accessor for EventTracingOperation(0);
  v63.receiver = v5;
  v63.super_class = v27;
  v28 = objc_msgSendSuper2(&v63, sel_init);
  v29 = &v28[OBJC_IVAR___IDSEventTracingOperation_uniqueIdentifier];
  v30 = *&v28[OBJC_IVAR___IDSEventTracingOperation_uniqueIdentifier + 8];
  *v10 = *&v28[OBJC_IVAR___IDSEventTracingOperation_uniqueIdentifier];
  v10[1] = v30;
  swift_storeEnumTagMultiPayload();
  v31 = type metadata accessor for EventTracingField(0);
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_name];
  *v33 = 0x696669746E656449;
  v33[1] = 0xEA00000000007265;
  sub_1A7B0C9B0(v10, &v32[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_value]);
  v32[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_privacyMode] = 1;
  v62.receiver = v32;
  v62.super_class = v31;
  v34 = v28;

  v35 = objc_msgSendSuper2(&v62, sel_init);
  sub_1A7B0CAA4(v10);
  v36 = OBJC_IVAR___IDSEventTracingOperation_fields;
  swift_beginAccess();
  v37 = v35;
  MEMORY[0x1AC561DF0]();
  if (*((*&v34[v36] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v34[v36] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v58 = *((*&v34[v36] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1A7E22560();
  }

  sub_1A7E225A0();
  swift_endAccess();

  v38 = OBJC_IVAR___IDSEventTracingOperation_start;
  swift_beginAccess();
  (*(v12 + 16))(v10, &v34[v38], v11);
  swift_storeEnumTagMultiPayload();
  v39 = objc_allocWithZone(v31);
  v40 = &v39[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_name];
  *v40 = 0x7472617453;
  v40[1] = 0xE500000000000000;
  sub_1A7B0C9B0(v10, &v39[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_value]);
  v39[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_privacyMode] = 1;
  v61.receiver = v39;
  v61.super_class = v31;
  v41 = objc_msgSendSuper2(&v61, sel_init);
  sub_1A7B0CAA4(v10);
  swift_beginAccess();
  v42 = v41;
  MEMORY[0x1AC561DF0]();
  if (*((*&v34[v36] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v34[v36] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A7E22560();
  }

  sub_1A7E225A0();
  swift_endAccess();

  if (qword_1EB2B33D0 != -1)
  {
    swift_once();
  }

  v43 = sub_1A7E22060();
  sub_1A7B0CB00(v43, qword_1EB2DC1A8);
  v44 = v34;
  v45 = sub_1A7E22040();
  v46 = sub_1A7E228F0();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v60[0] = v48;
    *v47 = 136315394;
    v49 = *&v44[OBJC_IVAR___IDSEventTracingOperation_name];
    v50 = *&v44[OBJC_IVAR___IDSEventTracingOperation_name + 8];

    v51 = sub_1A7B0CB38(v49, v50, v60);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    v52 = *v29;
    v53 = v29[1];

    v54 = sub_1A7B0CB38(v52, v53, v60);

    *(v47 + 14) = v54;
    _os_log_impl(&dword_1A7AD9000, v45, v46, "Start operation %s %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v48, -1, -1);
    MEMORY[0x1AC5654B0](v47, -1, -1);
  }

  return v44;
}

uint64_t sub_1A7B0C8F4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A7B0C9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventTracingValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7B0CAA4(uint64_t a1)
{
  v2 = type metadata accessor for EventTracingValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7B0CB00(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1A7B0CB38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A7B0CC04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1A7B0CD10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1A7B0CD6C(v11);
  return v7;
}

unint64_t sub_1A7B0CC04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1A7CCE650(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1A7E22BE0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1A7B0CD10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A7B0CD6C(uint64_t a1)
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

uint64_t IDSAssignPushIdentityToMessage(void *a1)
{
  v1 = a1;
  v2 = 1;
  [v1 setWantsPushSignatures:1];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v3 = [NSClassFromString(&cfstr_Apsconnection.isa) copyIdentity];
    v2 = IDSAssignIdentityValuesToMessage(v1, v3);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  return v2;
}

void sub_1A7B0CF18(char *a1)
{
  v3 = sub_1A7B0CF0C(*&a1[OBJC_IVAR___IDSEventTracingOperation_uniqueIdentifier], *&a1[OBJC_IVAR___IDSEventTracingOperation_uniqueIdentifier + 8]);
  if (v3)
  {
  }

  else
  {
    v4 = OBJC_IVAR___IDSEventTracingOperation_subOperations;
    swift_beginAccess();
    v5 = a1;
    MEMORY[0x1AC561DF0]();
    if (*((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A7E22560();
    }

    sub_1A7E225A0();
    swift_endAccess();
  }
}

void *sub_1A7B0D06C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR___IDSEventTracingOperation_subOperations;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A7E22DA0())
  {

    if (!i)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1AC562480](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = &v11[*a3];
      v15 = *v14 == a1 && *(v14 + 1) == a2;
      if (v15 || (sub_1A7E230D0() & 1) != 0)
      {

        return v12;
      }

      ++v10;
      if (v13 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_17:

  return 0;
}

const os_unfair_lock *sub_1A7B0D220(const os_unfair_lock *result)
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner(result + 2);
    v2 = *&v1[12]._os_unfair_lock_opaque;
    if (!v2)
    {
      v3 = [(os_unfair_lock *)v1 connectionMonitorBlock];
      v4 = (v3)[2](v3, v1);
      v5 = *&v1[12]._os_unfair_lock_opaque;
      *&v1[12]._os_unfair_lock_opaque = v4;

      v2 = *&v1[12]._os_unfair_lock_opaque;
    }

    return [v2 isImmediatelyReachable];
  }

  return result;
}

void sub_1A7B0D3DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x1EEE66B58](a2, sel__flush);
  }
}

void sub_1A7B0D49C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[2] invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

id sub_1A7B0D50C()
{
  if (_IDSRunningInDaemon())
  {
    v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.ids"];
    v1 = [v0 objectForKey:@"FTMessageDeliveryServerTimestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1A7B0D5B8()
{
  if (_IDSRunningInDaemon())
  {
    v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.ids"];
    v1 = [v0 objectForKey:@"FTMessageDeliveryServerTimestampReceivedDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id IDSPEMFormatCertificates(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    if ([v1 count] == 1)
    {
      v2 = [v1 objectAtIndexedSubscript:0];
      v3 = [v2 base64EncodedStringWithOptions:0];
    }

    else
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v4 = v1;
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v17;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v17 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v16 + 1) + 8 * i);
            [v2 addObject:{@"-----BEGIN CERTIFICATE-----", v16}];
            v10 = [v9 base64EncodedStringWithOptions:0];
            v11 = sub_1A7B0D8AC(v10);
            [v2 addObjectsFromArray:v11];
            [v2 addObject:@"-----END CERTIFICATE-----"];
          }

          v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v6);
      }

      v12 = [v2 componentsJoinedByString:@"\n"];
      v13 = [v12 dataUsingEncoding:4];
      v14 = sub_1A7B0D96C(v13);

      v3 = [v14 base64EncodedStringWithOptions:0];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1A7B0D8AC(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [v1 length];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      if (v4 - v5 >= 0x40)
      {
        v6 = 64;
      }

      else
      {
        v6 = v4 - v5;
      }

      v7 = [v1 substringWithRange:{v5, v6}];
      [v2 addObject:v7];
      v5 += v6;
    }

    while (v5 < v4);
  }

  return v2;
}

uint8_t *sub_1A7B0D96C(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = 2 * v2;
    v4 = malloc_type_malloc(2 * v2, 0xFB11BF1EuLL);
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = compression_encode_buffer(v4, v3, [v1 bytes], objc_msgSend(v1, "length"), 0, COMPRESSION_ZLIB);
    if (v5)
    {
      v4 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v4 length:v5 freeWhenDone:1];
      goto LABEL_7;
    }

    free(v4);
  }

  v4 = 0;
LABEL_7:

  return v4;
}

id sub_1A7B0DA3C()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.ids"];
  v1 = [v0 stringForKey:@"IDSKTAccountKeyFetchMetricDeviceIDDefault"];
  v2 = +[IDSCurrentServerTime sharedInstance];
  [v2 currentServerTimeInterval];
  v4 = v3;

  [v0 doubleForKey:@"IDSKTAccountKeyFetchMetricDeviceIDExpirationDefault"];
  if (v5 == 0.0 || v4 - v5 >= 2592000.0)
  {
  }

  else if (v1)
  {
    goto LABEL_7;
  }

  v6 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v6 UUIDString];

  [v0 setObject:v1 forKey:@"IDSKTAccountKeyFetchMetricDeviceIDDefault"];
  [v0 setDouble:@"IDSKTAccountKeyFetchMetricDeviceIDExpirationDefault" forKey:v4];
LABEL_7:

  return v1;
}

void sub_1A7B0DD98(void *a1)
{
  v2 = v1;
  v65 = a1;
  v66 = type metadata accessor for EventTracingValue(0);
  MEMORY[0x1EEE9AC00](v66, v3);
  v5 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1A7E21B00();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v62 - v13;
  v15 = sub_1A7CC7FFC(&qword_1EB2B5798);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v62 - v21;
  v23 = OBJC_IVAR___IDSEventTracingOperation_stopped;
  swift_beginAccess();
  if ((v2[v23] & 1) == 0)
  {
    v2[v23] = 1;
    sub_1A7E21AF0();
    (*(v7 + 56))(v22, 0, 1, v6);
    v24 = OBJC_IVAR___IDSEventTracingOperation_stopTime;
    swift_beginAccess();
    sub_1A7B0E5EC(v22, &v2[v24]);
    swift_endAccess();
    sub_1A7B0E65C(&v2[v24], v19);
    v25 = &unk_1EB2DC000;
    if ((*(v7 + 48))(v19, 1, v6) == 1)
    {
      sub_1A7CC9970(v19, &qword_1EB2B5798);
      v26 = &selRef_hasAllocbindResponse;
    }

    else
    {
      (*(v7 + 32))(v14, v19, v6);
      v27 = *(v7 + 16);
      v64 = v14;
      v62 = v27;
      v27(v5, v14, v6);
      swift_storeEnumTagMultiPayload();
      v28 = type metadata accessor for EventTracingField(0);
      v29 = objc_allocWithZone(v28);
      v30 = &v29[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_name];
      *v30 = 6581829;
      v30[1] = 0xE300000000000000;
      sub_1A7B0C9B0(v5, &v29[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_value]);
      v29[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_privacyMode] = 1;
      v68.receiver = v29;
      v68.super_class = v28;
      v63 = v28;
      v31 = objc_msgSendSuper2(&v68, sel_init);
      sub_1A7B0CAA4(v5);
      v32 = OBJC_IVAR___IDSEventTracingOperation_fields;
      swift_beginAccess();
      v33 = v31;
      MEMORY[0x1AC561DF0]();
      if (*((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A7E22560();
      }

      sub_1A7E225A0();
      swift_endAccess();

      sub_1A7E21AC0();
      v35 = v34;
      v36 = OBJC_IVAR___IDSEventTracingOperation_start;
      swift_beginAccess();
      v62(v11, &v2[v36], v6);
      sub_1A7E21AC0();
      v38 = v37;
      v39 = *(v7 + 8);
      v39(v11, v6);
      *v5 = v35 - v38;
      swift_storeEnumTagMultiPayload();
      v40 = v63;
      v41 = objc_allocWithZone(v63);
      v42 = &v41[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_name];
      *v42 = 0x6E6F697461727544;
      v42[1] = 0xE800000000000000;
      sub_1A7B0C9B0(v5, &v41[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_value]);
      v41[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_privacyMode] = 0;
      v67.receiver = v41;
      v67.super_class = v40;
      v26 = &selRef_hasAllocbindResponse;
      v43 = objc_msgSendSuper2(&v67, sel_init);
      sub_1A7B0CAA4(v5);
      swift_beginAccess();
      v44 = v43;
      MEMORY[0x1AC561DF0]();
      if (*((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v63 = *((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A7E22560();
      }

      sub_1A7E225A0();
      swift_endAccess();

      v39(v64, v6);
      v25 = &unk_1EB2DC000;
    }

    v45 = v65;
    if (v65)
    {
      type metadata accessor for EventTracingCodableError();
      v46 = swift_allocObject();
      v47 = v45;
      sub_1A7D6E0E0(v47);
      v48 = OBJC_IVAR___IDSEventTracingOperation_error;
      swift_beginAccess();
      *&v2[v48] = v46;

      *v5 = v46;
      swift_storeEnumTagMultiPayload();
      v49 = type metadata accessor for EventTracingField(0);
      v50 = objc_allocWithZone(v49);
      v51 = &v50[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_name];
      *v51 = 0x726F727245;
      v51[1] = 0xE500000000000000;
      sub_1A7B0C9B0(v5, &v50[v25[59]]);
      v50[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_privacyMode] = 1;
      v70.receiver = v50;
      v70.super_class = v49;
      v52 = v26[181];

      v53 = objc_msgSendSuper2(&v70, v52);
      sub_1A7B0CAA4(v5);
      v54 = OBJC_IVAR___IDSEventTracingOperation_fields;
      swift_beginAccess();
      v55 = v53;
      MEMORY[0x1AC561DF0]();
      if (*((*&v2[v54] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v54] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A7E22560();
      }

      sub_1A7E225A0();
      swift_endAccess();
    }

    if (qword_1EB2B33D0 != -1)
    {
      swift_once();
    }

    v56 = sub_1A7E22060();
    sub_1A7B0CB00(v56, qword_1EB2DC1A8);
    v57 = v2;
    v58 = sub_1A7E22040();
    v59 = sub_1A7E228F0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v69[0] = v61;
      *v60 = 136315394;
      *(v60 + 4) = sub_1A7B0CB38(*&v57[OBJC_IVAR___IDSEventTracingOperation_name], *&v57[OBJC_IVAR___IDSEventTracingOperation_name + 8], v69);
      *(v60 + 12) = 2080;
      *(v60 + 14) = sub_1A7B0CB38(*&v57[OBJC_IVAR___IDSEventTracingOperation_uniqueIdentifier], *&v57[OBJC_IVAR___IDSEventTracingOperation_uniqueIdentifier + 8], v69);
      _os_log_impl(&dword_1A7AD9000, v58, v59, "Stop operation %s %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5654B0](v61, -1, -1);
      MEMORY[0x1AC5654B0](v60, -1, -1);
    }
  }
}

uint64_t sub_1A7B0E5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5798);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7B0E65C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id IDSPEMFormatCertificatesForPushHeader(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = 0;
    v3 = &stru_1F1AC8480;
    do
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [v1 objectAtIndexedSubscript:v2];
      v6 = [v5 base64EncodedStringWithOptions:0];
      v7 = [v4 stringWithFormat:@"-----BEGIN CERTIFICATE-----\n%@\n-----END CERTIFICATE-----", v6];

      v8 = [(__CFString *)v3 stringByAppendingString:v7];

      if ([v1 count] - 1 > v2)
      {
        v9 = [(__CFString *)v8 stringByAppendingString:@"\n\n"];

        v8 = v9;
      }

      ++v2;
      v3 = v8;
    }

    while ([v1 count] > v2);
  }

  else
  {
    v8 = &stru_1F1AC8480;
  }

  v10 = [(__CFString *)v8 dataUsingEncoding:4];

  return v10;
}

__CFDictionary *IDSAdditionalRequestHeaders()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = [MEMORY[0x1E69A60F0] sharedInstance];
  v2 = [v1 isInternalInstall];

  if (v2 && (IMGetDomainBoolForKey() & 1) == 0)
  {
    CFDictionarySetValue(v0, @"x-internal", @"true");
  }

  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (v4)
  {
    if (IMGetDomainBoolForKey())
    {
      CFDictionarySetValue(v0, @"X-Apple-Test-Application", @"true");
    }

    v5 = MEMORY[0x1AC562F80](@"com.apple.ids", @"testOptionsHeader");
    if (v5)
    {
      CFDictionarySetValue(v0, @"X-Apple-Test-Options", v5);
    }

    v6 = MEMORY[0x1AC562F80](@"com.apple.ids", @"x-test-opts");
    if ([v6 length] && v6)
    {
      CFDictionarySetValue(v0, @"x-test-opts", v6);
    }

    v7 = MEMORY[0x1AC562F80](@"com.apple.ids", @"kIDSTestOverridesProfileKey");
    if (v7)
    {
      v8 = MEMORY[0x1AC562F80](@"com.apple.ids", @"kIDSTestOverridesSecretKey");
      v9 = sub_1A7C65824();
      v10 = objc_alloc(MEMORY[0x1E696AD98]);
      v11 = [MEMORY[0x1E695DF00] now];
      [v11 timeIntervalSince1970];
      v13 = [v10 initWithLongLong:1000 * v12];

      v14 = _IDStestOverrideSignatureHeader(&unk_1F1B202B8, v7, v8, v13, v9);
      if (v14)
      {
        CFDictionarySetValue(v0, @"X-Apple-Test-Options-Signature", v14);
      }

      if (v9)
      {
        CFDictionarySetValue(v0, @"X-Apple-Test-Options-JSON", v9);
      }
    }
  }

  if (((MarcoShouldLog() & 1) != 0 || IMShouldLog()) && (IMGetDomainBoolForKey() & 1) == 0)
  {
    CFDictionarySetValue(v0, @"x-logging", @"true");
  }

  return v0;
}

void sub_1A7B0EC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for EventTracingValue(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A7E21B00();
  (*(*(v12 - 8) + 16))(v11, a3, v12);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for EventTracingField(0);
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_name];
  *v15 = a1;
  v15[1] = a2;
  sub_1A7B0C9B0(v11, &v14[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_value]);
  v14[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_privacyMode] = 1;
  v20.receiver = v14;
  v20.super_class = v13;

  v16 = objc_msgSendSuper2(&v20, sel_init);
  sub_1A7B0CAA4(v11);
  v17 = OBJC_IVAR___IDSEventTracingOperation_fields;
  swift_beginAccess();
  v18 = v16;
  MEMORY[0x1AC561DF0]();
  if (*((*(v4 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A7E22560();
  }

  sub_1A7E225A0();
  swift_endAccess();
}

void sub_1A7B0F04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for EventTracingValue(0);
  MEMORY[0x1EEE9AC00](v10, v10);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = a3;
  v12[1] = a4;
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for EventTracingField(0);
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_name];
  *v15 = a1;
  v15[1] = a2;
  sub_1A7B0C9B0(v12, &v14[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_value]);
  v14[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_privacyMode] = 1;
  v20.receiver = v14;
  v20.super_class = v13;

  v16 = objc_msgSendSuper2(&v20, sel_init);
  sub_1A7B0CAA4(v12);
  v17 = OBJC_IVAR___IDSEventTracingOperation_fields;
  swift_beginAccess();
  v18 = v16;
  MEMORY[0x1AC561DF0]();
  if (*((*(v5 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A7E22560();
  }

  sub_1A7E225A0();
  swift_endAccess();
}

__CFString *_IDSStringFromIDSRegistrationStatus(int a1)
{
  if ((a1 + 1) > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E77E2420[a1 + 1];
  }
}

id sub_1A7B0F88C(uint64_t a1, void *a2)
{
  v2 = [a2 _stringForKey:@"uri"];
  if ([v2 _appearsToBeDSID])
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 _stripFZIDPrefix];
  }

  v4 = v3;

  return v4;
}

uint64_t _IDSCopyIDForPushTokenAndIdentitiesWithService(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1 __imHexString];
  if ([v5 count])
  {
    v8 = [v5 __imArrayByApplyingBlock:&unk_1F1AAB5E0];
    v9 = [v6 isEqualToString:@"com.apple.private.alloy.bulletinboard"];
    v10 = _IDSPrefersPhoneNumbersForServiceIdentifier(v6);
    v11 = _IDSCopyCallerIDWithSelfMessagingHint(0, v8, 0, 0, v9, v10, 1u);
    v12 = [v11 _URIFromFZIDType:{objc_msgSend(v11, "_FZBestGuessFZIDType")}];
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"self-token:%@/%@", v7, v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t getEnumTagSinglePayload for LinkQualityScore(uint64_t a1, int a2)
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

void *sub_1A7B10458@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1A7B104C4(_DWORD *a1, int *a2)
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

_DWORD *sub_1A7B10530@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1A7B1054C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B10584()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B105BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A7CC8A00(a1, type metadata accessor for IDSLinkSelectorPrimarySecondary, type metadata accessor for IDSLinkSelectorPrimarySecondary);
  *a2 = result;
  return result;
}

void sub_1A7B10610(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A7CC96D0(v1);
}

uint64_t sub_1A7B10684()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B4D38);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B106B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1A7B106EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reason];
  *a2 = result;
  return result;
}

id sub_1A7B10734@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 subreason];
  *a2 = result;
  return result;
}

void sub_1A7B10780(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1A7E22260();
  [v2 setPathID_];
}

uint64_t sub_1A7B10840@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1A7B108AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkState(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A7B10918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

double sub_1A7B109A0@<D0>(uint64_t a1@<X8>)
{
  LinkEngineLink.definition.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

id sub_1A7B109F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 prefix];
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A7B10A48()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B10A8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A7CC8AB4();
  *a1 = result;
  return result;
}

uint64_t sub_1A7B10AB8()
{

  sub_1A7CEAF64(v0);
}

uint64_t sub_1A7B10AFC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B53D0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B10B2C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B10B64()
{
  v1 = sub_1A7E22060();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A7B10C40()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B10C78()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B54C0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B10CA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B10CE0()
{
  sub_1A7B0CD6C(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A7B10D20()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A7B10D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSToolRequest.Request(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A7B10DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSToolRequest.Request(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A7B10E34()
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for LinkEnginePluginHook.State();
  return sub_1A7E21CA0();
}

uint64_t sub_1A7B10E80()
{
  sub_1A7E225E0();
  swift_getWitnessTable();
  sub_1A7E22D50();

  return swift_getWitnessTable();
}

uint64_t sub_1A7B10F00()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B10F58()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

_OWORD *sub_1A7B10F9C(_BYTE *a1)
{
  v2[0] = *a1;
  v3 = 1819043171;
  v4 = 0xE400000000000000;
  v5 = &type metadata for IDSLinkEndpointCellularState;
  return sub_1A7CC8D74(v2, &type metadata for IDSLinkEndpointCellularState);
}

unint64_t sub_1A7B11008@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A7CE05CC(*a1, &v4);
  *a2 = v4 & 1;
  return result;
}

_OWORD *sub_1A7B11050(char *a1)
{
  v1 = *a1;
  v4 = &type metadata for LinkDefinitionIsPreferred;
  v3[0] = v1;
  return sub_1A7CC8D74(v3, &type metadata for LinkDefinitionIsPreferred);
}

unint64_t sub_1A7B11094@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A7CE0668(*a1, &v4);
  *a2 = v4 & 1;
  return result;
}

_OWORD *sub_1A7B110D4(char *a1)
{
  v1 = *a1;
  v4 = &type metadata for IDSLinkEndpointIsNAT64;
  v3[0] = v1;
  return sub_1A7CC8D74(v3, &type metadata for IDSLinkEndpointIsNAT64);
}

uint64_t sub_1A7B11118()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B11150()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B5650);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B11180()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B111B8()
{
  v1 = sub_1A7E22060();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A7B112A4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B5658);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B112D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B1131C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A7B11394(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A7B11410()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B1144C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B11488()
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for ContinuationsByID.HashableWrapper();
  sub_1A7CC9830(&qword_1EB2B57A8);
  sub_1A7E22630();
  swift_getWitnessTable();
  sub_1A7E22190();
  return sub_1A7E21CA0();
}

uint64_t sub_1A7B11558@<X0>(uint64_t *a1@<X8>)
{
  result = LinkDefinition.protocolStack.getter();
  *a1 = result;
  return result;
}

_OWORD *sub_1A7B1159C(uint64_t *a1)
{
  v1 = *a1;
  v3[3] = &type metadata for LinkDefinitionProtocolStack;
  v3[0] = v1;

  return sub_1A7CC8D74(v3, &type metadata for LinkDefinitionProtocolStack);
}

uint64_t sub_1A7B115E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A7B11660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A7B116DC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B5918);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B1170C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A7B11784(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A7B11800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1A7CC7FFC(&qword_1EB2B5958);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A7B11908(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1A7CC7FFC(&qword_1EB2B5958);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

unint64_t sub_1A7B11A1C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A7CE0720(*a1, &v4);
  *a2 = v4 & 1;
  return result;
}

_OWORD *sub_1A7B11A5C(char *a1)
{
  v1 = *a1;
  v4 = &type metadata for IDSLinkEndpointIsRealloc;
  v3[0] = v1;
  return sub_1A7CC8D74(v3, &type metadata for IDSLinkEndpointIsRealloc);
}

uint64_t sub_1A7B11AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7CC7FFC(&qword_1EB2B5A40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1A7CC7FFC(&qword_1EB2B5A48);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A7B11BAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A7CC7FFC(&qword_1EB2B5A40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1A7CC7FFC(&qword_1EB2B5A48);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A7B11CC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B11CF8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B5B30);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B11D60()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B11D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1A7CC7FFC(&qword_1EB2B5D78);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A7B11EA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1A7CC7FFC(&qword_1EB2B5D78);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A7B11FC8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A7B12010()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B12048()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B1208C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&unk_1EB2B6358);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B120D0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A7B12110()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B12148()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A7B12230()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A7B12280()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A7B122D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1A7B12310@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A7CE072C(*a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1A7B12360()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A7B123A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7CC7FFC(&qword_1EB2B5A88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1A7CC7FFC(&qword_1EB2B5A48);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1A7CC7FFC(&qword_1EB2B66F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1A7B1250C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A7CC7FFC(&qword_1EB2B5A88);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1A7CC7FFC(&qword_1EB2B5A48);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1A7CC7FFC(&qword_1EB2B66F0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void *sub_1A7B1267C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &unk_1F1AB29E0;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

ValueMetadata *sub_1A7B126B8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for IDSLinkPacketBitfield;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1A7B126E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B12720()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B67D0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B12750()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&unk_1EB2B67D8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

ValueMetadata *sub_1A7B12780()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for IDSLinkPacketBitfield;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1A7B127A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B12808()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B12848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LEToolRequest(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A7B128B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LEToolRequest(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A7B1297C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___IDSEventTracingOperation_stopped;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1A7B129D4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___IDSEventTracingOperation_stopped;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1A7B12A30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___IDSEventTracingOperation_stopTime;
  swift_beginAccess();
  return sub_1A7B0E65C(v3 + v4, a2);
}

uint64_t sub_1A7B12A90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___IDSEventTracingOperation_error;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1A7B12AF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1A7B12B38()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A7B12B78()
{
  sub_1A7B0CD6C(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A7B12BF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A7CC8AE4();
  *a1 = result;
  return result;
}

uint64_t sub_1A7B12C1C()
{

  sub_1A7D81300(v0);
}

uint64_t sub_1A7B12C90()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A7B12CE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1A7D84BD4;
  a2[1] = v5;
}

uint64_t sub_1A7B12D50()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B12DC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B12DFC()
{
  v1 = sub_1A7E22CF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1A7B12EC8(os_unfair_lock_s **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 8);
  os_unfair_lock_opaque = v3[9]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v3 + 8);
  *a2 = os_unfair_lock_opaque;
}

void sub_1A7B12F0C(char *a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = *a2;
  os_unfair_lock_lock(*a2 + 8);
  LOBYTE(v3[9]._os_unfair_lock_opaque) = v2;
  os_unfair_lock_unlock(v3 + 8);
  LinkEngine.scheduleUpdate()();
}

void sub_1A7B12F50(os_unfair_lock_s **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 50);
  v4 = *&v3[52]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v3 + 50);
  *a2 = v4;
}

uint64_t sub_1A7B12FA0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B6EC8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B12FD0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B6ED0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B13000()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B6ED8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B13030()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B6EE0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B13060()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B6EE8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B13090()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B6EF0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B130C0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B6EF8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B130F0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B6F00);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B13120()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B6F08);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B1317C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B131B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B1322C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B1327C()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1A7B132D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A7B13324()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B13360()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B7028);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B13390()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1A7B133FC(os_unfair_lock_s **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 4);
  v4 = *&v3[6]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v3 + 4);
  *a2 = v4;
}

uint64_t sub_1A7B1344C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B70E8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void sub_1A7B1347C(os_unfair_lock_s **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 4);
  v4 = *&v3[6]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v3 + 4);
  *a2 = v4;
}

uint64_t sub_1A7B134CC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B70F8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B1352C()
{

  sub_1A7B0CD6C(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A7B1356C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B135A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A7CFE520();
  *a1 = result;
  return result;
}

uint64_t sub_1A7B135D0()
{

  sub_1A7DA1188(v0);
}

uint64_t sub_1A7B13614()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A7B13654()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1A7B136AC()
{
  sub_1A7B0CD6C(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A7B13710()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B53D8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B13740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5A40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A7B137B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5A40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_1A7B13834@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowOngoingTasks];
  *a2 = result;
  return result;
}

uint64_t sub_1A7B1387C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A7B138C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B13A0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_mechanismType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1A7B13A64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_mechanismType;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkSelectionStrategy.PrimarySecondary.DuplicationStrategy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IDSLinkEndpointNAT64Prefix(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1A7B13BD0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B7568);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B13C00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1A7B13C38(os_unfair_lock_s **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 8);
  sub_1A7CC99E0(&v3[14], a2);

  os_unfair_lock_unlock(v3 + 8);
}

void sub_1A7B13C88(os_unfair_lock_s **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 8);
  os_unfair_lock_opaque = v3[10]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v3 + 8);
  *a2 = os_unfair_lock_opaque;
}

void sub_1A7B13CCC(char *a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = *a2;
  os_unfair_lock_lock(*a2 + 8);
  LOBYTE(v3[10]._os_unfair_lock_opaque) = v2;

  os_unfair_lock_unlock(v3 + 8);
}

uint64_t sub_1A7B13D10()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B7620);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B13D44@<X0>(uint64_t *a1@<X8>)
{
  result = LinkEngineLink.testableLink.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1A7B13D74@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A7CE0478(*a1, &v4);
  *a2 = v4;
  return result;
}

_OWORD *sub_1A7B13DB0(uint64_t *a1)
{
  v2 = *a1;

  return LinkEndpoint.idsResolvedEndpoint.setter(&v2);
}

uint64_t sub_1A7B13DEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B13E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7E22060();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A7B13EE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A7E22060();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A7B13FA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B13FD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 312, 7);
}

uint64_t sub_1A7B14048(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5A40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A7B140C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5A40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A7B1413C()
{
  sub_1A7B0CD6C(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A7B1417C@<X0>(_BYTE *a1@<X8>)
{
  result = LinkEngineLink.isPendingRemoval.getter();
  *a1 = result & 1;
  return result;
}

void sub_1A7B141B8(os_unfair_lock_s **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 4);
  v4 = *&v3[6]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v3 + 4);
  *a2 = v4;
}

void sub_1A7B14208(os_unfair_lock_s **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 4);
  v4 = *&v3[8]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v3 + 4);
  *a2 = v4;
}

uint64_t sub_1A7B14258()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B7B70);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B14288()
{
  sub_1A7B0CD6C(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A7B14340()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B7BD0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B14374()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A7B143C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B14400()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B14438()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B14470()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B144A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B144F4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B7DC8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B14524()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B1455C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B14594()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B7E28);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B145C4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B7E48);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B145F4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B1462C()
{
  v1 = sub_1A7E22060();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1A7B14704(os_unfair_lock_s **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 10);
  v4 = *&v3[12]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v3 + 10);
  *a2 = v4;
}

uint64_t sub_1A7B14754()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B6F08);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void sub_1A7B14784(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 32);
  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 48);
  os_unfair_lock_unlock((v3 + 40));
  v5 = 3;
  if (!v4)
  {
    v5 = 1;
  }

  *a2 = v5;
}

uint64_t sub_1A7B14800@<X0>(uint64_t *a1@<X8>)
{
  result = LinkEngine.linkConnector.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1A7B14830@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A7CE0928(*a1, &v4);
  *a2 = v4 & 1;
  return result;
}

_OWORD *sub_1A7B14870(char *a1)
{
  v1 = *a1;
  v4 = &type metadata for IDSLinkEndpointIsSliced;
  v3[0] = v1;
  return sub_1A7CC8D74(v3, &type metadata for IDSLinkEndpointIsSliced);
}

unint64_t sub_1A7B148B4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A7CE0874(*a1, v8);
  v4 = v8[0];
  v5 = v8[1];
  v6 = v9;
  v7 = v10;
  if (v10)
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = (v7 | v6) & 1;
  return result;
}

_OWORD *sub_1A7B14910(__int128 *a1)
{
  v1 = *(a1 + 16);
  v5 = &type metadata for IDSLinkEndpointNAT64Prefix;
  v3 = *a1;
  v4 = v1;
  return sub_1A7CC8D74(&v3, &type metadata for IDSLinkEndpointNAT64Prefix);
}

uint64_t sub_1A7B1495C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A7CC8B14();
  *a1 = result;
  return result;
}

uint64_t sub_1A7B14988()
{

  sub_1A7DFEDD8(v0);
}

uint64_t sub_1A7B149CC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B7FE8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B149FC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B7FF0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B14A2C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A7B14A64()
{
  v1 = sub_1A7E22060();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A7B14B38()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1A7B14BA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A7B14BE0()
{
  v1 = sub_1A7E22D10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1A7B14CB0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1A7CC7E50(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A7B14D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LinkState(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A7B14DB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LinkState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A7B14E54()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B8118);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B14E84()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B8120);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1A7B14EB4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1A7CC7FFC(&qword_1EB2B8128);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void *sub_1A7B14EE4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &unk_1F1AB8B58;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1A7B14F0C()
{
  sub_1A7CC7FFC(&qword_1EB2B8170);
  sub_1A7CFBFA0();
  sub_1A7CC7FFC(&qword_1EB2B8178);
  sub_1A7CFBFA0();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7B14F80()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t storeEnumTagSinglePayload for LinkQualityScore(uint64_t result, int a2, int a3)
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

uint64_t sub_1A7B14FF0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_1A7B1503C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1A7B15088(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A7B150BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7B150DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1A7B15120(uint64_t a1, int a2)
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

uint64_t sub_1A7B15140(uint64_t result, int a2, int a3)
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

uint64_t sub_1A7B1516C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A7CC7E50(a1, a2);
  }

  return a1;
}

uint64_t sub_1A7B151B0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1A7B151C0(uint64_t a1, uint64_t a2, void *a3)
{
  v92 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v61 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v53 = v3;
  v5 = [v3 allValues];
  v6 = [v5 countByEnumeratingWithState:&v82 objects:v91 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v83;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v83 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObjectsFromArray:*(*(&v82 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v82 objects:v91 count:16];
    }

    while (v7);
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v78 objects:v90 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v79;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v79 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v78 + 1) + 8 * j);
        v18 = v11;
        v19 = [v17 URI];
        v20 = [v19 prefixedURI];

        v21 = [v18 objectForKey:v20];
        if (!v21)
        {
          v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v18 setObject:v21 forKey:v20];
        }

        [v21 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v78 objects:v90 count:16];
    }

    while (v14);
  }

  v51 = v11;
  v52 = v12;

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v10;
  v55 = [obj countByEnumeratingWithState:&v74 objects:v89 count:16];
  if (v55)
  {
    v54 = *v75;
    do
    {
      v22 = 0;
      do
      {
        if (*v75 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v57 = *(*(&v74 + 1) + 8 * v22);
        v59 = v22;
        v23 = [obj objectForKey:?];
        v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v23, "count")}];
        v25 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v23, "count")}];
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v26 = v23;
        v27 = [v26 countByEnumeratingWithState:&v70 objects:v88 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v71;
          do
          {
            for (k = 0; k != v28; ++k)
            {
              if (*v71 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v70 + 1) + 8 * k);
              v32 = [MEMORY[0x1E699BBA0] participantDeviceFromEndpoint:v31];
              if (v32)
              {
                [v24 addObject:v32];
              }

              v33 = [v31 URI];

              if (v33)
              {
                v34 = [v31 URI];
                v35 = [v34 prefixedURI];
                [v25 addObject:v35];
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v70 objects:v88 count:16];
          }

          while (v28);
        }

        v36 = [objc_alloc(MEMORY[0x1E699BB98]) initWithAccountPublicKey:v57 aliases:v25 devices:v24];
        [v61 addObject:v36];

        v22 = v59 + 1;
      }

      while (v59 + 1 != v55);
      v55 = [obj countByEnumeratingWithState:&v74 objects:v89 count:16];
    }

    while (v55);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v37 = v51;
  v60 = [v37 countByEnumeratingWithState:&v66 objects:v87 count:16];
  if (v60)
  {
    v58 = *v67;
    do
    {
      for (m = 0; m != v60; ++m)
      {
        if (*v67 != v58)
        {
          objc_enumerationMutation(v37);
        }

        v39 = *(*(&v66 + 1) + 8 * m);
        v40 = [v37 objectForKey:v39];
        v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v40, "count")}];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v42 = v40;
        v43 = [v42 countByEnumeratingWithState:&v62 objects:v86 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v63;
          do
          {
            for (n = 0; n != v44; ++n)
            {
              if (*v63 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = [MEMORY[0x1E699BBA0] participantDeviceFromEndpoint:*(*(&v62 + 1) + 8 * n)];
              if (v47)
              {
                [v41 addObject:v47];
              }
            }

            v44 = [v42 countByEnumeratingWithState:&v62 objects:v86 count:16];
          }

          while (v44);
        }

        v48 = [MEMORY[0x1E695DFD8] setWithObject:v39];
        v49 = [objc_alloc(MEMORY[0x1E699BB98]) initWithAccountPublicKey:0 aliases:v48 devices:v41];
        [v61 addObject:v49];
      }

      v60 = [v37 countByEnumeratingWithState:&v66 objects:v87 count:16];
    }

    while (v60);
  }

  return v61;
}

id sub_1A7B1584C(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v17)
  {
    v16 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v7 = [v6 aliases];
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v19;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v18 + 1) + 8 * j);
              v13 = [v4 objectForKeyedSubscript:v12];
              if (!v13)
              {
                v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v4 setObject:v13 forKeyedSubscript:v12];
              }

              [v13 addObject:v6];
            }

            v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v9);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
  }

  return v4;
}

id sub_1A7B15A54(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v10 = 0;
  v4 = [IDSLegacyDeviceMessageProtectionCypher cypherWithEndpoint:v3 error:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = objc_alloc(MEMORY[0x1E699BBA0]);
    v7 = [v3 pushToken];
    v8 = [v6 initWithDevicePublicKey:0 cypher:v4 identifier:v7];
  }

  else
  {
    v7 = [MEMORY[0x1E699BB90] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v12 = v3;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "participantDeviceFromEndpoint - failed to create cypher - Fail {endpoint: %{public}@, error: %{public}@}", buf, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

IDSURI *sub_1A7B15C04(uint64_t a1, void *a2)
{
  v2 = [a2 _stripPotentialTokenURIWithToken:0];
  v3 = [[IDSURI alloc] initWithPrefixedURI:v2];

  return v3;
}

void sub_1A7B15CD4()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = _IDSServiceDictionaries();
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 _numberForKey:{@"RestrictedLogging", v12}];
        v8 = [v7 BOOLValue];

        if (v8)
        {
          v9 = [v6 _stringForKey:@"Identifier"];
          [v0 addObject:v9];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v10 = [v0 copy];
  v11 = qword_1EB2BBC48;
  qword_1EB2BBC48 = v10;
}

void sub_1A7B15E58()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32];
  v1 = qword_1EB2B89C0;
  qword_1EB2B89C0 = v0;

  v2 = [qword_1EB2B89C0 mutableBytes];

  arc4random_buf(v2, 0x20uLL);
}

id IDSSaltedHash(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DF88];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithData:v4];

  [v6 appendData:v5];
  v7 = [MEMORY[0x1E695DF88] dataWithLength:32];
  CC_SHA256([v6 bytes], objc_msgSend(v6, "length"), objc_msgSend(v7, "mutableBytes"));
  [v7 setLength:12];
  v8 = [v7 base64EncodedStringWithOptions:0];
  v9 = 0;
  if ([v8 length] == 16)
  {
    v9 = v8;
  }

  return v9;
}

id IDSLoggableDescriptionForTokenOnService(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (IDSShouldUseRestrictedLoggingForService(v4))
    {
      v5 = IDSLoggableDescriptionSalt();
      v6 = IDSSaltedHash(v5, v3);
      if (v6)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"t:%@", v6];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = [v3 debugDescription];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

Class sub_1A7B160D4()
{
  result = NSClassFromString(&cfstr_Idsdaemoncontr.isa);
  qword_1EB2BBC70 = result;
  return result;
}

id sub_1A7B160FC(void *a1)
{
  v1 = [a1 response];
  v2 = [v1 _cacheTime];

  return v2;
}

id sub_1A7B16148(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 allHeaderFields];
    v3 = [v2 objectForKey:@"Cache-Control"];
    if ([v3 intValue] < 1)
    {
      if ([v3 rangeOfString:@"max-age="] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = 0;
      }

      else
      {
        v5 = [v3 rangeOfString:@"max-age="];
        v7 = [v3 substringFromIndex:v5 + v6];
        v8 = [v7 intValue];
        if (v8 < 1)
        {
          v4 = 0;
        }

        else
        {
          v4 = [MEMORY[0x1E696AD98] numberWithInt:v8];
        }
      }
    }

    else
    {
      v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "intValue")}];
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(objc_msgSend(v4, "intValue"), 3600.0)}];

  return v9;
}

void sub_1A7B16464(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [*(a1 + 32) config];
    v12 = [v11 logCategory];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = *(a1 + 32);
      *buf = 138413058;
      v49 = v13;
      v50 = 2048;
      v51 = v14;
      v52 = 1024;
      *v53 = [v14 loaderState];
      *&v53[4] = 2112;
      *&v53[6] = v10;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "<%@:%p> finished loading with error {_loaderState: %d, error: %@}", buf, 0x26u);
    }

    v15 = *(a1 + 48);
    v16 = IDSServerBagContentErrorWithUnderlyingError(100, v10);
    (*(v15 + 16))(v15, 0, v16);
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [v8 allHeaderFields];
    }

    else
    {
      v16 = 0;
    }

    v17 = [*(a1 + 32) config];
    v18 = [v17 logCategory];

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = *(a1 + 32);
      v45 = [v20 loaderState];
      v21 = v8;
      v22 = v9;
      v23 = [v9 length];
      v24 = [IDSLogFormatter descriptionForDictionary:v16 options:0];
      *buf = 138413314;
      v49 = v19;
      v50 = 2048;
      v51 = v20;
      v52 = 1024;
      *v53 = v45;
      *&v53[4] = 1024;
      *&v53[6] = v23;
      v9 = v22;
      v8 = v21;
      *&v53[10] = 2112;
      *&v53[12] = v24;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "<%@:%p> finished loading {_loaderState: %d, resultDataLen: %d, headerFields: %@}", buf, 0x2Cu);
    }

    v47 = 0;
    v25 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:0 format:0 error:&v47];
    v26 = v47;
    v27 = v26;
    if (v25)
    {
      v44 = v26;
      v46 = v9;
      v28 = [v8 _cacheTime];
      [v28 doubleValue];
      v30 = v29;

      if (v30 > 86400.0)
      {
        v30 = 86400.0;
      }

      v31 = [v25 _arrayForKey:@"certs"];
      v32 = [v25 _dataForKey:@"signature"];
      v33 = [v25 _dataForKey:@"bag"];
      v34 = [[IDSServerBagRawContents alloc] initWithLoadDate:*(a1 + 40) timeToLive:v32 serverSignature:v31 serverCerts:v33 signedBag:v30];
      if (!v34)
      {
        v43 = v32;
        v35 = [*(a1 + 32) config];
        v36 = [v35 logCategory];

        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v41 = *(a1 + 32);
          v42 = [v31 count];
          v39 = [v33 length];
          v40 = *(a1 + 40);
          *buf = 138413826;
          v49 = v38;
          v50 = 2048;
          v51 = v41;
          v52 = 2048;
          *v53 = v30;
          *&v53[8] = 2112;
          *&v53[10] = v43;
          *&v53[18] = 1024;
          v54 = v42;
          v55 = 1024;
          v56 = v39;
          v57 = 2112;
          v58 = v40;
          _os_log_error_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_ERROR, "<%@:%p> request succeeded but could not parse raw contents {serverGivenInterval: %f, signature: %@, certificatesCount: %d, signedBagLen: %d, startLoadDate: %@}", buf, 0x40u);
        }

        v32 = v43;
      }

      (*(*(a1 + 48) + 16))();

      v27 = v44;
      v9 = v46;
    }

    else
    {
      v37 = *(a1 + 48);
      v31 = IDSServerBagContentErrorWithUnderlyingError(200, v26);
      (*(v37 + 16))(v37, 0, v31);
    }
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(a1 + 32) setLoaderState:0];
  [*(a1 + 32) setStoredCompletion:0];
  [*(a1 + 32) setURLRequestSession:0];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

void sub_1A7B16C94()
{
  qword_1ED5DF808 = [@"com.apple.idsremoteurlconnectionagent.embedded.auth" UTF8String];
  getpid();
  v4 = qword_1ED5DF808;
  v0 = sandbox_check();
  *task_info_out = 0u;
  v7 = 0u;
  task_info_outCnt = 8;
  if (task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt))
  {
    v1 = [MEMORY[0x1E69A6138] serverBag];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E10860(v1);
    }

    HasEntitlement = 0;
  }

  else if (IMDAuditTokenTaskHasEntitlement())
  {
    HasEntitlement = 1;
  }

  else
  {
    HasEntitlement = IMDAuditTokenTaskHasEntitlement();
  }

  byte_1ED5DF7D8 = (v0 == 0) & HasEntitlement;
  v3 = [MEMORY[0x1E69A6138] serverBag];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E108A4(v0 == 0, HasEntitlement, v3);
  }
}

uint64_t IDSQRProtoH3EndToEndChannelRegisterE2EChannelRegisterReadFrom(uint64_t a1, void *a2)
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

uint64_t IDSByteBufferInitForWriteWithAllocatedSpace(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    sub_1A7E10964();
  }

  *result = a2;
  *(result + 8) = a2 + a3 - 1;
  *(result + 16) = a2;
  *(result + 24) = a2;
  *(result + 32) = 0;
  return result;
}

uint64_t IDSByteBufferInitForWrite(uint64_t a1)
{
  if (!a1)
  {
    sub_1A7E10990();
  }

  v1 = a1;
  v2 = malloc_type_malloc(0x400uLL, 0xE1392C13uLL);
  if (v2)
  {
    *v1 = v2;
    *(v1 + 8) = v2 + 1023;
    *(v1 + 16) = v2;
    *(v1 + 24) = v2;
    *(v1 + 32) = 1;
  }

  else
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Could not allocate base for ReaderWriter", v5, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"IDSFieldReaderWriter", @"IDS", @"Could not allocate base for ReaderWriter");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSFieldReaderWriter", @"Could not allocate base for ReaderWriter");
        }
      }
    }

    return 0;
  }

  return v1;
}

uint64_t IDSByteBufferInitForRead(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    sub_1A7E109BC();
  }

  *result = a2;
  *(result + 8) = a2 + a3 - 1;
  *(result + 16) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

BOOL sub_1A7B1742C(uint64_t a1)
{
  if (!a1)
  {
    sub_1A7E10A60();
  }

  v2 = *(a1 + 8) - *a1;
  v3 = v2 + 1;
  v4 = 2 * (v2 + 1);
  if (__CFADD__(v3, v3))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_1A7E10A24(result, v6, v7, v8, v9, v10, v11, v12);
    return 0;
  }

  v13 = malloc_type_malloc(2 * (v2 + 1), 0x32E1BC44uLL);
  if (v13)
  {
    v14 = v13;
    memcpy(v13, *a1, v3);
    free(*(a1 + 24));
    v15 = *(a1 + 16) - *a1;
    *a1 = v14;
    *(a1 + 8) = &v14[v4 - 1];
    *(a1 + 16) = &v14[v15];
    *(a1 + 24) = v14;
    return 1;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
  if (result)
  {
    sub_1A7E109E8(result, v16, v17, v18, v19, v20, v21, v22);
    return 0;
  }

  return result;
}

BOOL IDSByteBufferWriteField(uint64_t a1, char a2, void *__src, size_t __n)
{
  if (!a1)
  {
    sub_1A7E10AC8();
  }

  v4 = __n;
  v8 = __n;
  v9 = __n + 3;
  while (1)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 8) - v10 + 1;
    if (v9 <= v11)
    {
      *v10 = a2;
      v12 = *(a1 + 16);
      *(a1 + 16) = v12 + 1;
      *(v12 + 1) = __rev16(v4);
      v13 = (*(a1 + 16) + 2);
      *(a1 + 16) = v13;
      memcpy(v13, __src, v8);
      *(a1 + 16) += v8;
      return v9 <= v11;
    }

    if (*(a1 + 32) != 1)
    {
      break;
    }

    if (!sub_1A7B1742C(a1))
    {
      return v9 <= v11;
    }
  }

  v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
  if (v14)
  {
    sub_1A7E10A8C(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  return v9 <= v11;
}

BOOL IDSByteBufferReadField(uint64_t a1, _BYTE *a2, void *a3, _WORD *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    sub_1A7E10AF4();
  }

  v5 = *(a1 + 16);
  if ((*(a1 + 8) - v5 - 2) > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  *a2 = *v5;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  *(a1 + 16) = v8 + 1;
  v10 = bswap32(*(v8 + 1)) >> 16;
  *a4 = v10;
  v11 = v8 + 3;
  *(a1 + 16) = v11;
  v12 = v9 - v11 + 1;
  v13 = v12 >= v10;
  if (v12 < v10)
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *a2;
      v17 = *a4;
      v18 = *(a1 + 8) - *(a1 + 16) + 1;
      *buf = 67109632;
      v21 = v16;
      v22 = 1024;
      v23 = v17;
      v24 = 2048;
      v25 = v18;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "readFieldFromByteBuffer not enough bytes, %u %u %ld", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"IDSFieldReaderWriter", @"IDS", @"readFieldFromByteBuffer not enough bytes, %u %u %ld");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSFieldReaderWriter", @"readFieldFromByteBuffer not enough bytes, %u %u %ld");
        }
      }
    }

    v14 = *(a1 + 8);
  }

  else
  {
    *a3 = v11;
    v14 = *(a1 + 16) + v10;
  }

  *(a1 + 16) = v14;
  return v13;
}

double IDSByteBufferRelease(uint64_t a1)
{
  if (!a1)
  {
    sub_1A7E10B20();
  }

  if (*(a1 + 32) == 1)
  {
    free(*a1);
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

BOOL IsSameIP(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 1);
    if (v3 == *(a2 + 1))
    {
      if (v3 == 30)
      {
        return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
      }

      else
      {
        return *(a1 + 4) == *(a2 + 4);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

BOOL IsSameSA(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 1);
    if (v3 == *(a2 + 1))
    {
      v4 = *(a1 + 2);
      v5 = *(a2 + 2);
      if (v3 == 30)
      {
        if (v4 == v5)
        {
          return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
        }
      }

      else if (v4 == v5)
      {
        return *(a1 + 4) == *(a2 + 4);
      }
    }

    return 0;
  }

  return v2;
}

BOOL IsValidSA(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 1);
    if (v1 == 30)
    {
      if (*(result + 2))
      {
        if (*(result + 8))
        {
          v2 = 0;
        }

        else
        {
          v2 = *(result + 16) == 0;
        }

        return !v2;
      }
    }

    else if (v1 == 2 && *(result + 2))
    {
      v2 = *(result + 4) == 0;
      return !v2;
    }

    return 0;
  }

  return result;
}

BOOL IsLinkLocalSA(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 1);
    if (v1 == 30)
    {
      if (*(result + 8) == 254)
      {
        return (*(result + 9) & 0xC0) == 128;
      }
    }

    else if (v1 == 2)
    {
      return *(result + 4) == -343;
    }

    return 0;
  }

  return result;
}

char *IPv4ToString(char *__str, size_t __size, unsigned int a3)
{
  if (__str)
  {
    snprintf(__str, __size, "%u.%u.%u.%u", HIBYTE(a3), BYTE2(a3), BYTE1(a3), a3);
  }

  return __str;
}

char *SAToIPPortString(char *__str, size_t __size, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v3 = __size;
  v4 = __str;
  if (*(a3 + 1) != 30)
  {
    v17 = bswap32(*(a3 + 4));
    snprintf(__str, __size, "%u.%u.%u.%u:%u", HIBYTE(v17), BYTE2(v17), BYTE1(v17), v17, bswap32(*(a3 + 2)) >> 16);
    return v4;
  }

  v20 = &v20;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v23[15] = v5;
  *v23 = v5;
  v22 = v5;
  MEMORY[0x1EEE9AC00](__str, __size);
  v6 = 0;
  v8 = bswap32(*(v7 + 2));
  *v19 = 0xAAAAAAAAAAAAAAAALL;
  v9 = HIWORD(v8);
  v10 = v7 + 8;
  v21 = 0;
  v11 = v7 + 10;
  v12 = 1;
  while (1)
  {
    if ((v12 & 1) == 0 || *(v10 + 2 * v6))
    {
      if (v6)
      {
        __strncat_chk();
      }

      snprintf(v19, 8uLL, "%x", bswap32(*(v10 + 2 * v6)) >> 16);
      strlen(v19);
      __strncat_chk();
      goto LABEL_9;
    }

    v14 = v6;
    __strncat_chk();
    --v6;
    do
    {
      v15 = v14 + 1;
      ++v6;
      if (v14 > 6)
      {
        break;
      }
    }

    while (!*(v11 + 2 * v14++));
    if (v15 == 8)
    {
      break;
    }

    v12 = 0;
LABEL_9:
    if (v6++ >= 7)
    {
      goto LABEL_19;
    }
  }

  __strncat_chk();
LABEL_19:
  snprintf(v4, v3, "[%s]:%u", &v21, v9);
  return v4;
}

unsigned __int8 *SAToIPString(uint64_t a1)
{
  v1 = a1;
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v10[6] = v2;
    v10[7] = v2;
    v10[4] = v2;
    v10[5] = v2;
    v10[2] = v2;
    v10[3] = v2;
    v10[0] = v2;
    v10[1] = v2;
    SAToIPPortString(v10, 0x80uLL, a1);
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    v4 = v3;
    v5 = v1[1];
    if (v5 == 2)
    {
      v8 = [v3 substringToIndex:{objc_msgSend(v3, "rangeOfString:", @":"}];
    }

    else
    {
      if (v5 != 30)
      {
        v1 = 0;
        goto LABEL_8;
      }

      v6 = [v3 rangeOfString:@"["];
      v8 = [v4 substringWithRange:{v6 + v7, objc_msgSend(v4, "rangeOfString:", @"]"}];
    }

    v1 = v8;
LABEL_8:
  }

  return v1;
}

uint64_t SAToPort(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 1);
    if (v1 == 30 || v1 == 2)
    {
      return bswap32(*(result + 2)) >> 16;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SASetPort(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = *(result + 1);
    if (v2 == 30 || v2 == 2)
    {
      *(result + 2) = __rev16(a2);
    }
  }

  return result;
}

uint64_t SAToIPVersion(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 1);
    if (v1 == 30)
    {
      return 96;
    }

    else
    {
      return 4 * (v1 == 2);
    }
  }

  return result;
}

uint64_t IPPortToSA4(unsigned int a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  if (!a4)
  {
    goto LABEL_5;
  }

  if (*a4 >= 0x10u)
  {
    *a4 = 16;
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
    *a3 = 528;
    *(a3 + 4) = bswap32(a1);
    *(a3 + 2) = __rev16(a2);
    return a3;
  }

  return 0;
}

uint64_t getEffectiveInterface(uint64_t a1, int a2, char *a3, _DWORD *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  *v12 = 0u;
  __strlcpy_chk();
  v7 = socket(a2, 2, 0);
  if (v7 < 0)
  {
    return 0;
  }

  v8 = v7;
  if (ioctl(v7, 0xC020699DuLL, &v11) < 0 || !if_indextoname(v12[0], a3))
  {
    v9 = 0;
  }

  else
  {
    if (a4)
    {
      *a4 = v12[0];
    }

    v9 = 1;
  }

  close(v8);
  return v9;
}

BOOL isInterfaceConstrained(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  __strlcpy_chk();
  v3 = socket(a2, 2, 0);
  if (v3 < 0)
  {
    return 0;
  }

  v4 = v3;
  v6 = ioctl(v3, 0xC02069CCuLL, &v8) != -1 && v9 != 0;
  close(v4);
  return v6;
}

uint64_t IPPortStringToSA(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 rangeOfString:@"["];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v4 rangeOfString:@":"];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = v7;
        v10 = v8;
        v11 = [v4 substringToIndex:v7];
        v12 = [v4 substringFromIndex:v9 + v10];
        LODWORD(v20) = -1431655766;
        if (inet_pton(2, [v11 UTF8String], &v20) == 1)
        {
          *a2 = 0;
          *(a2 + 8) = 0;
          *a2 = 528;
          *(a2 + 4) = v20;
LABEL_10:
          *(a2 + 2) = bswap32([v12 intValue]) >> 16;
LABEL_12:

          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v13 = v5;
      v14 = v6;
      v15 = [v4 rangeOfString:@"]:"];
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = v15;
        v18 = v16;
        v11 = [v4 substringWithRange:{v13 + v14, v15 - (v13 + v14)}];
        v12 = [v4 substringFromIndex:v17 + v18];
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        if (inet_pton(30, [v11 UTF8String], &v20) == 1)
        {
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *a2 = 0;
          *(a2 + 24) = 0;
          *a2 = 7708;
          *(a2 + 8) = v20;
          goto LABEL_10;
        }

LABEL_11:
        a2 = 0;
        goto LABEL_12;
      }
    }
  }

  a2 = 0;
LABEL_13:

  return a2;
}

uint64_t IDSQRProtoPluginControlResponseReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        v22 = 24;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
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

LABEL_37:
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

          goto LABEL_38;
        }

        v21 = PBReaderReadString();
        v22 = 16;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7B19E78(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) ngmFullDeviceIdentity];
  (*(v1 + 16))(v1, v2);
}

void sub_1A7B1AD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A7B1AD64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7B1AD7C(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [a2 publicDeviceIdentityWithError:&v9];
  v4 = v9;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
}

void sub_1A7B1B1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A7B1B22C(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [a2 dataRepresentationWithError:&v9];
  v4 = v9;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
}

void sub_1A7B1BE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A7B1BE84(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 ngmPublicDeviceIdentity];
  v13 = 0;
  v7 = [v5 unsealMessage:v3 signedByPublicIdentity:v6 error:&v13];

  v8 = v13;
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

void sub_1A7B1C33C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [v12 objectForKey:&unk_1F1B1FF28];
  v14 = [v12 objectForKey:&unk_1F1B1FF40];

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v13 && v14)
  {
    v16 = v13;
    CFDictionarySetValue(v15, &unk_1F1B1FF58, v14);
  }

  else
  {
    if (v13)
    {
      v17 = v13;
    }

    else
    {
      if (!v14)
      {
        v25 = *(a1 + 32);
        v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:19 userInfo:0];
        [v25 failWithError:v26];

        v16 = 0;
        goto LABEL_21;
      }

      v17 = v14;
    }

    v16 = v17;
  }

  if (![v16 code])
  {
    v18 = [v16 domain];
    v19 = [v18 isEqualToString:@"com.apple.messageprotection"];

    if (v19)
    {

      v16 = 0;
    }
  }

  if (v9)
  {
    v20 = *(a1 + 32);
    v21 = [[IDSMPDecryptionResult alloc] initWithData:v9 encryptedAttributes:v10 withCommitState:v11 additionalDecryptionResult:v15];
    [v20 fulfillWithValue:v21];
  }

  else
  {
    v22 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E11230();
    }

    if (v16)
    {
      v27 = *MEMORY[0x1E696AA08];
      v28[0] = v16;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    }

    else
    {
      v21 = 0;
    }

    v23 = *(a1 + 32);
    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:15 userInfo:v21];
    [v23 failWithError:v24];
  }

LABEL_21:
}

void sub_1A7B1C5E8(void *a1, void *a2)
{
  v3 = a1[5];
  v13 = a1[4];
  v4 = a1[13];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v9 = a1[10];
  v10 = a1[11];
  v11 = a2;
  v12 = [v10 ngmPublicDeviceIdentity];
  [v11 unsealMessageAndAttributes:v13 authenticatedData:v3 messageType:v4 guid:v5 sendingURI:v6 sendingPushToken:v7 receivingURI:v8 receivingPushToken:v9 signedByPublicIdentity:v12 decryptionBlock:a1[12]];
}

void sub_1A7B1CCCC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(a1 + 48);
    v11 = [[IDSMPDecryptionResult alloc] initWithData:v7 encryptedAttributes:0 withCommitState:v9 additionalDecryptionResult:0];
    [v10 fulfillWithValue:v11];
  }

  else
  {
    v12 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E11414();
    }

    if (v8)
    {
      v15 = *MEMORY[0x1E696AA08];
      v16[0] = v8;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    }

    else
    {
      v11 = 0;
    }

    v13 = *(a1 + 48);
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:18 userInfo:v11];
    [v13 failWithError:v14];
  }
}

void sub_1A7B1CE4C(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v9 = a2;
  v10 = [v8 ngmPublicDeviceIdentity];
  [v9 openPaddyMessage:v3 sendingURI:v4 sendingPushToken:v5 receivingURI:v6 receivingPushToken:v7 signedByPublicIdentity:v10 decryptionBlock:a1[10]];
}

void sub_1A7B1CF48(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v7 = 0;
  v3 = [v2 eraseFromKeyChain:&v7];
  v4 = v7;
  v5 = +[IDSFoundationLog accountIdentity];
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v2;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "Purged ngm full device identity {ngmFullDeviceIdentity: %@}", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E114CC();
  }
}

void sub_1A7B1D0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A7B1D108(uint64_t a1, void *a2)
{
  result = [a2 shouldRollEncryptionIdentity];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1A7B1D2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A7B1D314(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [a2 keyRollingTicketWithError:&v9];
  v4 = v9;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
}

void sub_1A7B1D4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A7B1D4F4(void *a1, void *a2)
{
  v3 = a1[4];
  obj = 0;
  v4 = [a2 updateWithRegisteredTicket:v3 error:&obj];
  v5 = obj;
  *(*(a1[5] + 8) + 24) = v4;
  objc_storeStrong((*(a1[6] + 8) + 40), v5);
}

void sub_1A7B1D6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A7B1D6FC(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[7];
  v11 = 0;
  v5 = [a2 sign:v3 forType:v4 error:&v11];
  v6 = v11;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1A7B1D908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A7B1D92C(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[7];
  v11 = 0;
  v5 = [a2 batchSign:v3 forType:v4 error:&v11];
  v6 = v11;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1A7B1DF28(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) ngmPublicDeviceIdentity];
  (*(v1 + 16))(v1, v2);
}

void sub_1A7B1F184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1A7B1F1BC(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v15 = 0;
  v9 = [a2 sealPaddyMessage:v3 sendingURI:v4 sendingPushToken:v5 receivingURI:v6 receivingPushToken:v7 signedByFullIdentity:v8 error:&v15];
  v10 = v15;
  v11 = *(a1[10] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;

  v13 = *(a1[11] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
}

uint64_t sub_1A7B208C8(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2113;
  *(a3 + 14) = a2;
  return result;
}

uint64_t IDSQRProtoAllocBindTestOptionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(IDSQRProtoExperimentOverride);
        [a1 addExperimentOverrides:v13];
        v16[0] = 0xAAAAAAAAAAAAAAAALL;
        v16[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoExperimentOverrideReadFrom(v13, a2))
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

uint64_t sub_1A7B2207C()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBC78 = result;
  return result;
}

void sub_1A7B220AC(uint64_t a1, void *a2)
{
  v6 = a2;
  if (![v6 response] && *(a1 + 32) || objc_msgSend(v6, "response") == 1 && *(a1 + 40))
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:?];
    if (v3)
    {
      v4 = v3;
      v5 = [qword_1EB2BBC78 defaultWorkspace];
      [v5 openURL:v4 configuration:0 completionHandler:&unk_1F1AAA180];
    }
  }
}

void sub_1A7B22164(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "Failed to send registration push for prompt {error: %@}", &v5, 0xCu);
    }
  }
}

void *IDSNAT64PrefixCreate(const void *a1, unsigned int a2, int a3)
{
  v6 = 16 * a2;
  v7 = malloc_type_malloc(v6 + 24, 0x102004014030ADEuLL);
  v8 = v7;
  if (v7)
  {
    *v7 = v7 + 3;
    memcpy(v7 + 3, a1, v6);
    *(v8 + 2) = a2;
    *(v8 + 3) = a3;
  }

  return v8;
}

void IDSNAT64PrefixDestroy(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void *IDSNAT64PrefixCacheCreate()
{
  result = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  *result = 0;
  return result;
}

void IDSNAT64PrefixCacheDestroy(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      do
      {
        v3 = v2[2];
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

uint64_t IDSNAT64PrefixCacheGetPrefixes(uint64_t *a1, int a2)
{
  for (result = *a1; result; result = *(result + 16))
  {
    if (*(result + 12) == a2)
    {
      break;
    }
  }

  return result;
}

void IDSNAT64PrefixCacheSetPrefixes(void *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a2 + 12);
    if (*(v4 + 12) == v5)
    {
      v6 = 0;
      v7 = *a1;
LABEL_7:
      v9 = (v6 + 16);
      if (!v6)
      {
        v9 = a1;
      }

      *v9 = *(v7 + 16);
      free(v7);
      v4 = *a1;
    }

    else
    {
      v8 = *a1;
      while (1)
      {
        v7 = *(v8 + 16);
        if (!v7)
        {
          break;
        }

        v6 = v8;
        v8 = *(v8 + 16);
        if (*(v7 + 12) == v5)
        {
          goto LABEL_7;
        }
      }
    }
  }

  *(a2 + 16) = v4;
  *a1 = a2;
}

uint64_t *IDSNAT64PrefixCacheGetFirstPrefix(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (*result)
    {
      while (*(v2 + 12) != a2)
      {
        v2 = *(v2 + 16);
        if (!v2)
        {
          return 0;
        }
      }

      return *v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1A7B24960(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1EB2B8608;
  qword_1EB2B8608 = v1;
}

void sub_1A7B24D20(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      v9 = *(a1 + 32);
      if (*(a1 + 64))
      {
        v8 = @"YES";
      }

      *buf = 138413058;
      v16 = v5;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "BlastDoorError: Received from blast door, result {%@} Will Fault On error? {%@} error {%@} for incoming payload {%@}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"IDSBlastDoorConnectionHelper", @"BlastDoorError: Received from blast door, result {%@} Will Fault On error? {%@} error {%@} for incoming payload {%@}");
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 32), *(a1 + 64), v6);
  }

  else
  {
    v10 = [[IDSAPSUserPayload alloc] initWithBlastDoorObject:v5];
    v11 = v10;
    if ((*(a1 + 64) & 1) == 0)
    {
      [(IDSAPSUserPayload *)v10 logHeaderDiffAgainstSource:*(a1 + 40)];
    }

    v12 = [(IDSAPSUserPayload *)v11 payload];
    if (*(a1 + 65) == 1)
    {
      [*(a1 + 48) addAllowlistedKey:@"i" toValidatedPayload:v12 fromOriginalPayload:*(a1 + 32)];
    }

    if (*(a1 + 66) == 1)
    {
      [*(a1 + 48) addAllowlistedKey:@"b" toValidatedPayload:v12 fromOriginalPayload:*(a1 + 32)];
    }

    if (*(a1 + 64) == 1)
    {
      [*(a1 + 48) auditMissingHeaderKeys:*(a1 + 32) target:v12];
      v13 = *(a1 + 56);
      v14 = [v12 copy];
      (*(v13 + 16))(v13, v14, *(a1 + 64), 0);
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }
}

void sub_1A7B251D4(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v6;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "IDSBlastDoor: Received Error %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"IDSBlastDoorConnectionHelper", @"IDSBlastDoor: Received Error %@");
    }

    v8 = im_primary_queue();
    v9 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7B2570C;
    block[3] = &unk_1E77DD0F0;
    v37 = *(a1 + 32);
    v36 = v6;
    dispatch_async(v8, block);

LABEL_23:
    v13 = v9[5];
    goto LABEL_24;
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v39 = v5;
    v40 = 2112;
    v41 = objc_opt_class();
    v11 = v41;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "IDSBlastDoor: Received result %@ class %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    objc_opt_class();
    _IDSLogV(0, @"IDSFoundation", @"IDSBlastDoorConnectionHelper", @"IDSBlastDoor: Received result %@ class %@");
  }

  v12 = objc_opt_class();
  if (([v12 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "IDSBlastDoor: Received result is not a dictionary", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"IDSBlastDoorConnectionHelper", @"IDSBlastDoor: Received result is not a dictionary");
    }

    v22 = im_primary_queue();
    v9 = v32;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_1A7B25728;
    v32[3] = &unk_1E77DD0F0;
    v23 = *(a1 + 32);
    v33 = 0;
    v34 = v23;
    dispatch_async(v22, v32);

    goto LABEL_23;
  }

  v13 = v5;
  v14 = [v13 objectForKey:@"ids-client-message-type"];
  if (v14 && ([v13 objectForKey:@"ids-client-message-type"], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqual:", &unk_1F1B1FF70), v15, v14, v16))
  {
    v17 = im_primary_queue();
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1A7B25744;
    v29[3] = &unk_1E77DD0F0;
    v18 = &v31;
    v19 = *(a1 + 32);
    v20 = &v30;
    v30 = 0;
    v31 = v19;
    dispatch_async(v17, v29);
  }

  else
  {
    v24 = im_primary_queue();
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1A7B25760;
    v25[3] = &unk_1E77DD378;
    v28 = *(a1 + 32);
    v26 = v13;
    v27 = 0;
    dispatch_async(v24, v25);

    v18 = &v28;
    v20 = &v26;
    v17 = v27;
  }

LABEL_24:
}

void *IDSOSDataChannelCreate(int a1, uint64_t a2)
{
  *&v17[5] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) == 0 && a2 || a1 < 0 && !a2)
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v17[0] = a1;
      LOWORD(v17[1]) = 2048;
      *(&v17[1] + 2) = a2;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "Invalid fd,channel: %d,%p\n", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"IDSOSDataChannel", @"IDS", @"Invalid fd,channel: %d,%p\n");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSOSDataChannel", @"Invalid fd,channel: %d,%p\n");
        }
      }
    }

    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x40uLL, 0x10B0040F1EC886AuLL);
  if (!v5)
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "out of memory", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"IDSOSDataChannel", @"IDS", @"out of memory");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSOSDataChannel", @"out of memory");
        }
      }
    }

    return 0;
  }

  v6 = v5;
  if (a2)
  {
    if (os_channel_attr_create())
    {
      if (os_channel_read_attr())
      {
        v7 = *__error();
        v8 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *v17 = strerror(v7);
          _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "os_channel_read_attr failed: %s", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            strerror(v7);
            _IDSLogTransport(@"IDSOSDataChannel", @"IDS", @"os_channel_read_attr failed: %s");
            if (_IDSShouldLog())
            {
              strerror(v7);
              _IDSLogV(0, @"IDSFoundation", @"IDSOSDataChannel", @"os_channel_read_attr failed: %s");
            }
          }
        }
      }

      else if (os_channel_attr_get())
      {
        v13 = *__error();
        v14 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *v17 = strerror(v13);
          _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "os_channel_attr_get failed: %s", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            strerror(v13);
            _IDSLogTransport(@"IDSOSDataChannel", @"IDS", @"os_channel_attr_get failed: %s");
            if (_IDSShouldLog())
            {
              strerror(v13);
              _IDSLogV(0, @"IDSFoundation", @"IDSOSDataChannel", @"os_channel_attr_get failed: %s");
            }
          }
        }
      }

      os_channel_attr_destroy();
      v6[5] = 0;
    }

    else
    {
      v11 = *__error();
      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v17 = strerror(v11);
        _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "os_channel_attr_create failed: %s", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          strerror(v11);
          _IDSLogTransport(@"IDSOSDataChannel", @"IDS", @"os_channel_attr_create failed: %s");
          if (_IDSShouldLog())
          {
            strerror(v11);
            _IDSLogV(0, @"IDSFoundation", @"IDSOSDataChannel", @"os_channel_attr_create failed: %s");
          }
        }
      }

      v6[5] = 0;
    }

    IDSOSDataChannelDestroy(v6);
    return 0;
  }

  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "use socket", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"IDSOSDataChannel", @"IDS", @"use socket");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"IDSOSDataChannel", @"use socket");
      }
    }
  }

  *v6 = a1;
  return v6;
}