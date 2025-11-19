uint64_t IMInsertDictionariesToXPCDictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a1;
  if (v10)
  {
    v12 = a2 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (!v12)
  {
    v26 = &a9;
    *&v11 = 138412290;
    v25 = v11;
    do
    {
      v14 = v26;
      v27 = v26 + 1;
      v15 = *v14;
      v18 = JWEncodeDictionary(v15);
      if (!v18)
      {
        if (objc_msgSend_count(v15, v16, v17))
        {
          v21 = OSLogHandleForIDSCategory("Warning");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v25;
            v29 = v15;
            _os_log_impl(&dword_195988000, v21, OS_LOG_TYPE_DEFAULT, "Failed to encode dictionary: %@", buf, 0xCu);
          }
        }

        v18 = objc_msgSend_data(MEMORY[0x1E695DEF0], v19, v20, v25);
      }

      sub_19598972C(v18, a2, v10);

      v22 = v27;
      v26 = (v27 + 1);
      a2 = *v22;
    }

    while (*v22);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v13;
}

id JWEncodeDictionary(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1 && objc_msgSend_count(v1, v2, v3))
  {
    v11 = 0;
    v6 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], v5, v4, 200, 0, &v11);
    v7 = v6;
    v8 = 0;
    if (v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = v11 == 0;
    }

    if (v9)
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_19598972C(void *a1, const char *a2, void *a3)
{
  xdict = a3;
  v5 = a1;
  v6 = a1;
  v9 = objc_msgSend_bytes(v6, v7, v8);
  v12 = objc_msgSend_length(v6, v10, v11);

  if (v9 && v12)
  {
    xpc_dictionary_set_data(xdict, a2, v9, v12);
  }
}

id sub_1959897C0(const char *a1, void *a2, int a3)
{
  v5 = a2;
  if (MEMORY[0x19A8BA860]() == MEMORY[0x1E69E9E80] && (length = 0, (data = xpc_dictionary_get_data(v5, a1, &length)) != 0))
  {
    v8 = data;
    v9 = objc_alloc(MEMORY[0x1E695DEF0]);
    if (a3)
    {
      v11 = objc_msgSend_initWithBytes_length_(v9, v10, v8, length);
    }

    else
    {
      v11 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v9, v10, v8, length, 0);
    }

    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id IMGetXPCDictionaryFromDictionary(void *a1, const char *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = sub_1959897C0(a2, a1, 0);
    v2 = JWDecodeDictionary(v3);
  }

  return v2;
}

id JWDecodeDictionary(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1 && objc_msgSend_length(v1, v2, v3))
  {
    v9 = 0;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    v6 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v5, v4, 0, &v10, &v9);
    if (v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1959899B0(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = OSLogHandleForIDSCategory("XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_195988000, v4, OS_LOG_TYPE_DEBUG, "Message from client: %p", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

BOOL IMDAuditTokenTaskHasEntitlement(_OWORD *a1, void *a2)
{
  v3 = a2;
  if (qword_1ED5173F8 != -1)
  {
    sub_1959D3D34();
  }

  if (qword_1ED5173E8 != -1)
  {
    sub_1959D3D48();
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = a1[1];
  *cf = *a1;
  v14 = v5;
  v6 = off_1ED517400(v4, cf);
  if (v6)
  {
    v7 = v6;
    cf[0] = 0;
    v8 = off_1ED517408(v6, v3, cf);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      v11 = v10 == CFBooleanGetTypeID() && CFBooleanGetValue(v9) != 0;
      CFRelease(v9);
    }

    else
    {
      v11 = 0;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    CFRelease(v7);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id IMGetXPCCodableFromDictionaryWithStandardAllowlist(void *a1, const char *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = sub_1959897C0(a2, a1, 0);
    v2 = JWDecodeKeyedCodableObjectWithSecureCoding(v3, 0);
  }

  return v2;
}

id sub_195989C28(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v8 = a3;
  if (v5 && objc_msgSend_length(v5, v6, v7))
  {
    if (qword_1ED517498 != -1)
    {
      sub_19599854C();
    }

    v9 = objc_alloc(MEMORY[0x1E696ACD0]);
    v11 = objc_msgSend_initForReadingFromData_error_(v9, v10, v5, 0);
    objc_msgSend_setDecodingFailurePolicy_(v11, v12, 0);
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v15 = v13;
    if (v8)
    {
      objc_msgSend_addObjectsFromArray_(v13, v14, v8);
    }

    if (a2)
    {
      if (objc_msgSend_containsObject_(qword_1ED517480, v14, a2))
      {
        objc_msgSend_unionSet_(v15, v16, qword_1ED517478);
      }

      objc_msgSend_addObject_(v15, v16, a2);
    }

    else
    {
      objc_msgSend_unionSet_(v15, v14, qword_1ED517478);
    }

    v18 = objc_msgSend_decodeObjectOfClasses_forKey_(v11, v17, v15, *MEMORY[0x1E696A508]);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void sub_195989D78(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v5 = objc_msgSend_XPC(IMIDSLog, v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1959D5D60(v2, v5);
    }

    IMLogSimulateCrashForException(v2);
    objc_end_catch();
    JUMPOUT(0x195989D3CLL);
  }

  _Unwind_Resume(exception_object);
}

id sub_195989E04(const void *a1, dispatch_once_t *predicate, const char *a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195989F10;
  block[3] = &unk_1E7438860;
  block[4] = predicate;
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  pthread_mutex_lock((predicate + 1));
  v6 = CFDictionaryGetValue(predicate[9], a1);
  if (!v6)
  {
    v6 = os_log_create(a3, a1);
    CFDictionarySetValue(predicate[9], a1, v6);
  }

  pthread_mutex_unlock((predicate + 1));

  return v6;
}

CFMutableDictionaryRef sub_195989F10(uint64_t a1)
{
  pthread_mutex_init((*(a1 + 32) + 8), 0);
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  *(*(a1 + 32) + 72) = result;
  return result;
}

void sub_195989F64(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x19A8BA860]();
  if (v4 == MEMORY[0x1E69E9E98])
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = v3;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    if (v11 == MEMORY[0x1E69E9E20])
    {
      v37 = OSLogHandleForIDSCategory("XPC");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v10;
        _os_log_impl(&dword_195988000, v37, OS_LOG_TYPE_DEFAULT, "Connection went invalid: %p", &buf, 0xCu);
      }

      v16 = v12;
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v11 != MEMORY[0x1E69E9E38])
      {
        v44 = MEMORY[0x19A8BA860](v11);
        v45 = OSLogHandleForIDSCategory("Warning");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v44;
          _os_log_impl(&dword_195988000, v45, OS_LOG_TYPE_DEFAULT, "Unknown error type: %@, exiting", &buf, 0xCu);
        }

        exit(0);
      }

      v15 = OSLogHandleForIDSCategory("XPC");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v10;
        _os_log_impl(&dword_195988000, v15, OS_LOG_TYPE_DEFAULT, "Termination coming for connection: %p", &buf, 0xCu);
      }

      v16 = v13;
      if (!v13)
      {
        goto LABEL_20;
      }
    }

    v16[2]();
LABEL_20:

    goto LABEL_27;
  }

  v5 = v4;
  if (v4 == MEMORY[0x1E69E9E68])
  {
    v17 = *(a1 + 64);
    v18 = *(a1 + 40);
    v19 = *(a1 + 32);
    v20 = v3;
    v21 = v17;
    v22 = v18;
    v23 = v20;
    if (!v22)
    {
      if (_os_feature_enabled_impl())
      {
        v26 = im_primary_base_queue();
        if (v26)
        {
          v27 = MEMORY[0x1E696AEC0];
          v28 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v24, v25);
          v30 = objc_msgSend_stringWithFormat_(v27, v29, @"PeerQueue with WL Target: %@", v28);
          v31 = v30;
          v34 = objc_msgSend_UTF8String(v31, v32, v33);
          v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v36 = im_primary_base_queue();
          v22 = dispatch_queue_create_with_target_V2(v34, v35, v36);
        }

        else
        {
          v22 = MEMORY[0x1E69E96A0];
          v39 = MEMORY[0x1E69E96A0];
        }
      }

      else
      {
        v22 = MEMORY[0x1E69E96A0];
        v38 = MEMORY[0x1E69E96A0];
      }
    }

    xpc_connection_set_target_queue(v23, v22);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v47 = sub_1959899B0;
    v48 = &unk_1E74398B8;
    v40 = v23;
    v49 = v40;
    v50 = v21;
    v41 = v21;
    xpc_connection_set_event_handler(v40, &buf);
    if (xpc_connection_get_context(v19))
    {
      context = xpc_connection_get_context(v19);
      xpc_connection_set_context(v40, context);
    }

    xpc_connection_resume(v40);
  }

  else
  {
    v6 = OSLogHandleForIDSCategory("Warning");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_195988000, v6, OS_LOG_TYPE_DEFAULT, "Unhandled listener event:  %p", &buf, 0xCu);
    }
  }

LABEL_27:

  v43 = *MEMORY[0x1E69E9840];
}

_xpc_connection_s *IMXPCCreateConnectionForServiceWithQueue(char a1, int a2, const char *a3, void *a4, void *a5, void *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3)
  {
    if (!v11)
    {
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v17 = objc_msgSend_initWithFormat_(v15, v16, @"%s_connection_queue", a3);
      v18 = v17;
      v21 = objc_msgSend_UTF8String(v18, v19, v20);
      v11 = dispatch_queue_create(v21, v14);
    }

    if (a1)
    {
      mach_service = xpc_connection_create_mach_service(a3, v11, 0);
    }

    else
    {
      mach_service = xpc_connection_create(a3, v11);
    }

    v23 = mach_service;
    if (mach_service)
    {
      v24 = OSLogHandleForIDSCategory("XPC");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        name = xpc_connection_get_name(v23);
        v30 = 2048;
        v31 = v23;
        _os_log_impl(&dword_195988000, v24, OS_LOG_TYPE_DEFAULT, "Created connection to %s service: %p", buf, 0x16u);
      }

      if (a2)
      {
        IMXPCConfigureConnection(v23, v12, v13);
      }
    }

    else
    {
      v25 = OSLogHandleForIDSCategory("Warning");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        name = a3;
        _os_log_impl(&dword_195988000, v25, OS_LOG_TYPE_DEFAULT, "Unable to build service for name: %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v23 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t jw_uuid_to_cfstring(const unsigned __int8 *a1, CFStringRef *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v7[2] = v3;
    v7[3] = v3;
    v7[0] = v3;
    v7[1] = v3;
    uuid_unparse_upper(a1, v7);
    v4 = CFStringCreateWithCString(0, v7, 0x8000100u);
    result = 0;
    *a2 = v4;
  }

  else
  {
    result = 22;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

id IMCopyAppValueForKey(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3))
  {
    v4 = CFPreferencesCopyAppValue(v1, *MEMORY[0x1E695E8A8]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_19598A860()
{
  qword_1ED517510 = os_log_create("com.apple.Registration", "timing");

  return MEMORY[0x1EEE66BB8]();
}

id im_primary_base_queue()
{
  v0 = atomic_load(byte_1EAED8688);
  if ((v0 & 1) == 0)
  {
    atomic_store(1u, byte_1EAED8688);
  }

  return qword_1EAED8A28;
}

void im_assert_primary_base_queue()
{
  v0 = im_primary_base_queue();
  dispatch_assert_queue_V2(v0);
}

uint64_t sub_19598A924()
{
  qword_1ED5175F0 = objc_alloc_init(IMLockdownManager);

  return MEMORY[0x1EEE66BB8]();
}

void sub_19598AAD0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    v5 = CFEqual(v3, @"Vendor") != 0;
    v7 = *(a1 + 32);
    v6 = a1 + 32;
    *(v7 + 12) = v5;
    *(*v6 + 10) = CFEqual(v4, @"Carrier") != 0;
    CFRelease(v4);
  }

  else
  {
    v8 = *(a1 + 32);
    v6 = a1 + 32;
    *(v8 + 12) = 0;
    *(*v6 + 10) = 0;
  }

  *(*v6 + 9) = os_variant_has_internal_ui();
  *(*v6 + 11) = os_variant_has_factory_content();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_19598AC48()
{
  qword_1ED517560 = os_log_create("com.apple.IDS", "Registration");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t im_notify_register_dispatch(uint64_t a1, int *a2, uint64_t *a3, char a4, void *a5, void *a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v13 = a6;
  v14 = 0;
  if (a1 && a2 && v11)
  {
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v12, a1);
    v16 = v15;
    v19 = objc_msgSend_UTF8String(v16, v17, v18);
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = sub_1959932C0;
    v35 = &unk_1E7438478;
    v39 = a4;
    v20 = v15;
    v36 = v20;
    v38 = v13;
    v37 = v11;
    v14 = notify_register_dispatch(v19, a2, v37, &v32);
    if (v14)
    {
      v23 = objc_msgSend_registration(IMRGLog, v21, v22, v32, v33, v34, v35, v36);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = @"YES";
        *buf = 138412802;
        v41 = v20;
        if (!a3)
        {
          v24 = @"NO";
        }

        v42 = 1024;
        v43 = v14;
        v44 = 2112;
        v45 = v24;
        v25 = "Dispatch registration failed {name: %@, status: %u, hasInitialState: %@}";
        v26 = v23;
        v27 = 28;
        goto LABEL_14;
      }

LABEL_15:

      goto LABEL_16;
    }

    if (a3)
    {
      notify_get_state(*a2, a3);
      v23 = objc_msgSend_registration(IMRGLog, v28, v29, v32, v33, v34, v35, v36);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 138412546;
      v41 = v20;
      v42 = 1024;
      v43 = a3;
      v25 = "Dispatch registration success - initial state {name: %@, initialState: %u}";
      v26 = v23;
      v27 = 18;
    }

    else
    {
      v23 = objc_msgSend_registration(IMRGLog, v21, v22, v32, v33, v34, v35, v36);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 138412290;
      v41 = v20;
      v25 = "Dispatch registration success {name: %@}";
      v26 = v23;
      v27 = 12;
    }

LABEL_14:
    _os_log_impl(&dword_195988000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    goto LABEL_15;
  }

LABEL_16:

  v30 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t IMDispatchForNotify(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v14 = -1;
  if (!v7)
  {
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
  }

  if (im_notify_register_dispatch(a1, &v14, 0, a2, v7, a4))
  {
    v11 = objc_msgSend_registration(IMRGLog, v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1959D3DC0();
    }
  }

  v12 = v14;

  return v12;
}

id im_primary_queue()
{
  v0 = atomic_load(byte_1ED5174A0);
  if ((v0 & 1) == 0)
  {
    atomic_store(1u, byte_1ED5174A0);
  }

  if (qword_1EAED8A20)
  {
    v1 = qword_1EAED8A20;
  }

  else
  {
    v1 = MEMORY[0x1E69E96A0];
    v2 = MEMORY[0x1E69E96A0];
  }

  return v1;
}

uint64_t IMXPCCreateServerConnection(const char *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = dispatch_get_global_queue(2, 0);
  v11 = sub_19598B108(a1, v10, a2, a3, a4, a5, 0);

  return v11;
}

_xpc_connection_s *sub_19598B108(const char *a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v40 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (v13)
  {
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = dispatch_get_global_queue(2, 0);
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  if (*a1)
  {
    mach_service = xpc_connection_create_mach_service(a1, v13, 1uLL);
    goto LABEL_8;
  }

LABEL_7:
  mach_service = xpc_connection_create(0, v13);
LABEL_8:
  v19 = mach_service;
  if (a7)
  {
    xpc_connection_enable_sim2host_4sim();
  }

  v20 = OSLogHandleForIDSCategory("XPC");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = a1;
    v38 = 2048;
    v39 = v19;
    _os_log_impl(&dword_195988000, v20, OS_LOG_TYPE_DEFAULT, "Created XPC service with name: %s  (Connection: %p)", buf, 0x16u);
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_195989F64;
  handler[3] = &unk_1E7439890;
  v21 = v19;
  v33 = v14;
  v34 = v15;
  v31 = v21;
  v32 = v17;
  v35 = v16;
  v22 = v16;
  v23 = v17;
  v24 = v15;
  v25 = v14;
  xpc_connection_set_event_handler(v21, handler);
  v26 = v35;
  v27 = v21;

  v28 = *MEMORY[0x1E69E9840];
  return v21;
}

CFStringRef sub_19598B358()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  v3[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x19A8BA610](v3);
  v2 = 0;
  jw_uuid_to_cfstring(v3, &v2);
  result = v2;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19598B3C4()
{
  qword_1ED5175D8 = objc_alloc_init(IMSystemMonitor);

  return MEMORY[0x1EEE66BB8]();
}

void sub_19598B914()
{
  v0 = qword_1ED5176C0;
  qword_1ED5176C0 = @"UIApplicationDidBecomeActiveNotification";

  v1 = qword_1ED517670;
  qword_1ED517670 = @"UIApplicationWillResignActiveNotification";

  v2 = qword_1ED5176B0;
  qword_1ED5176B0 = @"UIApplicationDidEnterBackgroundNotification";

  v3 = qword_1ED517678;
  qword_1ED517678 = @"UIApplicationWillEnterForegroundNotification";

  v4 = qword_1ED517688;
  qword_1ED517688 = @"UIApplicationSuspendedNotification";

  v5 = qword_1ED517698;
  qword_1ED517698 = @"UIApplicationResumedNotification";

  v6 = qword_1ED517690;
  qword_1ED517690 = @"UIApplicationSuspendedEventsOnlyNotification";

  v7 = qword_1ED5176A0;
  qword_1ED5176A0 = @"UIApplicationResumedEventsOnlyNotification";

  v8 = qword_1ED517680;
  qword_1ED517680 = @"_UIApplicationWillAddDeactivationReasonNotification";

  v9 = qword_1ED5176A8;
  qword_1ED5176A8 = @"_UIApplicationDidRemoveDeactivationReasonNotification";

  v10 = qword_1ED5176B8;
  qword_1ED5176B8 = @"_UIApplicationDeactivationReasonUserInfoKey";
}

uint64_t IMPhoneNumberRefCopyForPhoneNumber(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (!v6)
  {
    if (qword_1ED5172C8 != -1)
    {
      sub_19598BB44();
    }

    if (qword_1ED517298 != -1)
    {
      sub_19598BDAC();
    }

    v6 = off_1ED5172A0();
    if (!v6)
    {
      v6 = off_1ED5172A8();
    }
  }

  v7 = v6;
  if (qword_1ED517308 == -1)
  {
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_19598BE20();
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  if (!v7)
  {
    v7 = off_1ED517318();
  }

LABEL_12:
  if (qword_1ED517310 != -1)
  {
    sub_19598BE64();
  }

  v8 = off_1ED517320(*MEMORY[0x1E695E480], v5, v7);

  return v8;
}

BOOL IMStringIsEmail(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3))
  {
    v4 = CFStringFind(v1, @"@", 0).location != -1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t IMStringIsPhoneNumber_0(const __CFString *a1)
{
  if (a1)
  {
    Length = CFStringGetLength(a1);
    if (Length >= 2)
    {
      v5 = Length;
      v3 = 0;
      v6 = 0;
      while (1)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v6);
        if (CharacterAtIndex <= 111)
        {
          switch(CharacterAtIndex)
          {
            case ' ':
            case '""':
            case '#':
            case '\'':
            case '(':
            case ')':
            case '*':
            case '+':
            case ',':
            case '-':
            case '.':
            case '/':
            case ':':
            case ';':
            case '?':
              goto LABEL_8;
            default:
              goto LABEL_23;
          }
        }

        if (CharacterAtIndex > 8209)
        {
          if (CharacterAtIndex > 8235)
          {
            if (CharacterAtIndex == 8236)
            {
              goto LABEL_8;
            }

            v8 = 8237;
          }

          else
          {
            if (CharacterAtIndex == 8210)
            {
              goto LABEL_8;
            }

            v8 = 8234;
          }

          if (CharacterAtIndex != v8)
          {
            goto LABEL_23;
          }
        }

        else if (CharacterAtIndex <= 8207)
        {
          if (CharacterAtIndex == 112)
          {
            goto LABEL_9;
          }

          if (CharacterAtIndex != 160)
          {
LABEL_23:
            if (u_charDigitValue(CharacterAtIndex) == -1)
            {
              break;
            }
          }
        }

LABEL_8:
        v3 = 1;
LABEL_9:
        if (v5 == ++v6)
        {
          return v3 & 1;
        }
      }
    }
  }

  v3 = 0;
  return v3 & 1;
}

void *sub_19598BD7C()
{
  result = IMWeakLinkSymbol();
  off_1ED5172A0 = result;
  return result;
}

void *sub_19598BDC0()
{
  result = IMWeakLinkSymbol();
  off_1ED5172A8 = result;
  return result;
}

void *sub_19598BDF0()
{
  result = IMWeakLinkSymbol();
  off_1ED517318 = result;
  return result;
}

void *sub_19598BE34()
{
  result = IMWeakLinkSymbol();
  off_1ED517320 = result;
  return result;
}

id IMUnformattedPhoneNumberForCFPhoneNumberRef(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1EAED8D18 != -1)
    {
      sub_19598BF30();
    }

    a1 = off_1EAED8D20(v2);
    v1 = vars8;
  }

  return a1;
}

id IMCountryCodeCFPhoneNumberRef(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1EAED8D78 != -1)
    {
      sub_19598BFA4();
    }

    a1 = off_1EAED8D80(v2);
    v1 = vars8;
  }

  return a1;
}

void *sub_19598BF44()
{
  result = IMWeakLinkSymbol();
  off_1EAED8D20 = result;
  return result;
}

uint64_t (*sub_19598BF74())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8D80 = result;
  return result;
}

uint64_t IMOSLoggingEnabled()
{
  if (qword_1ED5173C0 != -1)
  {
    sub_19598BFF0();
  }

  return byte_1ED517348;
}

uint64_t sub_19598C004(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedInstance(IMLockdownManager, a2, a3);
  isInternalInstall = objc_msgSend_isInternalInstall(v3, v4, v5);

  v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v7;
  *v10.st_qspare = v7;
  v10.st_birthtimespec = v7;
  *&v10.st_size = v7;
  v10.st_mtimespec = v7;
  v10.st_ctimespec = v7;
  *&v10.st_uid = v7;
  v10.st_atimespec = v7;
  *&v10.st_dev = v7;
  result = lstat("/var/mobile/Library/PPTDevice", &v10);
  v9 = isInternalInstall ^ 1;
  if (result)
  {
    v9 = 1;
  }

  byte_1ED517348 = v9;
  return result;
}

uint64_t sub_19598C0E0()
{
  qword_1ED5175E8 = objc_alloc_init(IMMobileNetworkManager);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t IMGetAppIntForKey(void *a1)
{
  v1 = IMCopyAppValueForKey(a1);
  v4 = objc_msgSend_integerValue(v1, v2, v3);

  return v4;
}

uint64_t sub_19598C6C4()
{
  result = IMGetAppIntForKey(@"Log.RemoteObjects");
  dword_1ED517080 = result;
  return result;
}

id sub_19598C730(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_copyStringGUID(a1, a2, a3);

  return v3;
}

void im_configure_connection_with_local_object(xpc_connection_t connection, const char *a2)
{
  if (connection)
  {
    if (a2)
    {
      v3 = objc_msgSend_weakRefWithObject_(MEMORY[0x1E6995700], a2, a2);
      xpc_connection_set_context(connection, v3);

      xpc_connection_set_finalizer_f(connection, sub_1959910E4);
    }

    else
    {
      context = xpc_connection_get_context(connection);
      xpc_connection_set_context(connection, 0);
      if (context)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
        }
      }
    }
  }
}

void *IMDAuditTokenTaskCopyValuesForEntitlements(_OWORD *a1, void *a2)
{
  v3 = a2;
  if (qword_1EAED8C40 != -1)
  {
    sub_195995520();
  }

  if (qword_1EAED8C48 != -1)
  {
    sub_19599550C();
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = a1[1];
  *cf = *a1;
  v12 = v5;
  v6 = off_1EAED8C50(v4, cf);
  if (v6)
  {
    v7 = v6;
    cf[0] = 0;
    v8 = off_1EAED8C58(v6, v3, cf);
    v9 = v8;
    if (cf[0])
    {

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v9 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id IMCreateXPCObjectFromDictionary(void *a1)
{
  v1 = a1;
  if (objc_msgSend_count(v1, v2, v3))
  {
    v4 = _CFXPCCreateXPCMessageWithCFObject();
    if (!v4)
    {
      v5 = xpc_dictionary_create(0, 0, 0);
      v4 = v5;
      if (v5)
      {
        IMInsertOptionallyCodableDictionariesToXPCDictionary(v5, "__encoded__", v6, v7, v8, v9, v10, v11, v1);
      }
    }

    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t IMInsertNSStringsToXPCDictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (v10)
  {
    v11 = a2 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    v22 = &a9;
    do
    {
      v13 = v22;
      v23 = v22 + 1;
      v14 = *v13;
      if (objc_msgSend_length(v14, v15, v16))
      {
        v17 = v14 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        CStringPtr = CFStringGetCStringPtr(v14, 0x600u);
        if (CStringPtr || (CStringPtr = CFStringGetCStringPtr(v14, 0)) != 0 || (CStringPtr = CFStringGetCStringPtr(v14, 0x8000100u)) != 0)
        {
          xpc_dictionary_set_string(v10, a2, CStringPtr);
        }

        else
        {
          maxBufLen = 0;
          v25.length = CFStringGetLength(v14);
          v25.location = 0;
          CFStringGetBytes(v14, v25, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
          v20 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
          v26.length = CFStringGetLength(v14);
          v26.location = 0;
          CFStringGetBytes(v14, v26, 0x8000100u, 0, 0, v20, maxBufLen, 0);
          v20[maxBufLen] = 0;
          xpc_dictionary_set_string(v10, a2, v20);
          free(v20);
        }
      }

      v19 = v23;
      v22 = (v23 + 1);
      a2 = *v19;
    }

    while (*v19);
  }

  return v12;
}

void im_dispatch_after_primary_queue(void *a1, double a2)
{
  if (a1)
  {
    v2 = (a2 * 1000000000.0);
    v3 = a1;
    v4 = dispatch_time(0, v2);
    v5 = im_primary_queue();
    dispatch_after(v4, v5, v3);
  }
}

__CFString *IMGetEnvironmentName(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!qword_1ED517210)
  {
    v3 = IMGetCachedDomainValueForKey(@"com.apple.ids", @"env");
    v4 = qword_1ED517210;
    qword_1ED517210 = v3;
  }

  if (qword_1ED5173F0 != -1)
  {
    sub_19598CC94();
  }

  if (byte_1ED517270 == 1 && !objc_msgSend_length(qword_1ED517210, a2, a3))
  {
    v7 = @"ven1-external";
  }

  else
  {
    v5 = objc_msgSend_length(qword_1ED517210, a2, a3);
    v6 = qword_1ED517210;
    if (!v5)
    {
      v6 = @"prod";
    }

    v7 = v6;
  }

  return v7;
}

BOOL IMGetConferenceSettings(void *a1, char *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v10 = IMSingleObjectArray(@"com.apple.ess", a2);
  v11 = sub_19598CD6C(a1, a2, a3, a4, a5, @"/AppleInternal/Library/Conference/Environments.plist", v10, @"https://init.ess.apple.com/WebObjects/VCInit.woa/wa/getBag?ix=3");

  return v11;
}

uint64_t sub_19598CD34(uint64_t a1)
{
  qword_1ED517350 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

BOOL sub_19598CD6C(void *a1, void *a2, void *a3, _BYTE *a4, _BYTE *a5, void *a6, void *a7, void *a8)
{
  v119 = *MEMORY[0x1E69E9840];
  v106 = a6;
  v14 = a7;
  v107 = a8;
  v17 = IMGetEnvironmentName(v107, v15, v16);
  os_unfair_lock_lock(&unk_1ED5170B8);
  v20 = qword_1ED5173C8;
  if (!qword_1ED5173C8)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v22 = qword_1ED5173C8;
    qword_1ED5173C8 = Mutable;

    v20 = qword_1ED5173C8;
  }

  v23 = objc_msgSend___imFirstObject(v14, v18, v19);
  v25 = objc_msgSend_objectForKey_(v20, v24, v23);

  if (!v25)
  {
    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v107)
    {
      v30 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v28, v107);
      if (v30)
      {
        CFDictionarySetValue(v29, @"url", v30);
      }
    }

    CFDictionarySetValue(v29, @"apsenv", &unk_1F09E4B88);
    if (v14)
    {
      CFDictionarySetValue(v29, @"topics", v14);
    }

    v32 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v31, 0);
    if (v32)
    {
      CFDictionarySetValue(v29, @"selfsigned", v32);
    }

    v34 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v33, 0);
    if (v34)
    {
      CFDictionarySetValue(v29, @"unsigned", v34);
    }

    objc_msgSend_setObject_forKey_(v25, v35, v29, @"prod");
    v36 = qword_1ED5173C8;
    v39 = objc_msgSend___imFirstObject(v14, v37, v38);
    objc_msgSend_setObject_forKey_(v36, v40, v25, v39);
  }

  if (!objc_msgSend_length(v17, v26, v27))
  {

    v17 = @"prod";
  }

  v109 = v25;
  if ((objc_msgSend_isEqualToString_(v17, v41, @"prod") & 1) == 0 && objc_msgSend_count(v25, v42, v43) <= 1)
  {
    v104 = v17;
    v101 = a3;
    v102 = a4;
    v103 = a5;
    v44 = objc_alloc(MEMORY[0x1E695DF20]);
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v111 = objc_msgSend_initWithContentsOfFile_(v44, v45, v106);
    obj = objc_msgSend_allKeys(v111, v46, v47);
    v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v48, &v114, v118, 16);
    if (v112)
    {
      v110 = *v115;
      do
      {
        for (i = 0; i != v112; ++i)
        {
          if (*v115 != v110)
          {
            objc_enumerationMutation(obj);
          }

          v113 = *(*(&v114 + 1) + 8 * i);
          v51 = objc_msgSend_objectForKey_(v111, v49, v113, v101, v102, v103, v104);
          v52 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v54 = objc_msgSend_objectForKey_(v51, v53, @"url");

          if (v54)
          {
            v56 = v14;
            v57 = MEMORY[0x1E695DFF8];
            v58 = objc_msgSend_objectForKey_(v51, v55, @"url");
            v60 = objc_msgSend_URLWithString_(v57, v59, v58);

            if (v60)
            {
              CFDictionarySetValue(v52, @"url", v60);
            }

            v14 = v56;
            v25 = v109;
          }

          v61 = objc_msgSend_objectForKey_(v51, v55, @"apsenv");
          if (v61)
          {
            CFDictionarySetValue(v52, @"apsenv", v61);
          }

          if (v14)
          {
            CFDictionarySetValue(v52, @"topics", v14);
          }

          v63 = objc_msgSend_objectForKey_(v51, v62, @"selfsigned");
          if (v63)
          {
            CFDictionarySetValue(v52, @"selfsigned", v63);
          }

          v65 = objc_msgSend_objectForKey_(v51, v64, @"unsigned");
          if (v65)
          {
            CFDictionarySetValue(v52, @"unsigned", v65);
          }

          objc_msgSend_setObject_forKey_(v25, v66, v52, v113);
        }

        v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, &v114, v118, 16);
      }

      while (v112);
    }

    a5 = v103;
    v17 = v104;
    a3 = v101;
    a4 = v102;
  }

  os_unfair_lock_unlock(&unk_1ED5170B8);
  objc_msgSend_objectForKey_(v25, v67, v17);
  v69 = v68 = v25;
  if (!objc_msgSend_count(v69, v70, v71))
  {

    v17 = @"prod";
    v75 = objc_msgSend_objectForKey_(v68, v74, @"prod");

    v69 = v75;
  }

  v77 = objc_msgSend_count(v69, v72, v73, v101, v102, v103, v104);
  if (v77)
  {
    if (a1)
    {
      *a1 = objc_msgSend_objectForKey_(v69, v76, @"url");
      if ((objc_msgSend_containsObject_(v14, v78, @"com.apple.private.ids") & 1) != 0 || (objc_msgSend_containsObject_(v14, v79, @"com.apple.private.ac") & 1) != 0 || objc_msgSend_containsObject_(v14, v80, @"com.apple.ess"))
      {
        v82 = IMGetCachedDomainValueForKey(@"com.apple.ids", @"custom-ids-bag-url");
        if (v82)
        {
          *a1 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v81, v82);
        }
      }
    }

    if (a3)
    {
      v83 = v14;
      *a3 = v14;
    }

    if (a4)
    {
      v84 = objc_msgSend_objectForKey_(v69, v76, @"selfsigned");
      *a4 = objc_msgSend_BOOLValue(v84, v85, v86);
    }

    if (a5)
    {
      v87 = objc_msgSend_objectForKey_(v69, v76, @"unsigned");
      *a5 = objc_msgSend_BOOLValue(v87, v88, v89);
    }

    if (a2)
    {
      if (qword_1ED5172B8 != -1)
      {
        sub_1959D4ECC();
      }

      if (qword_1ED517280 != -1)
      {
        sub_1959D4EF4();
      }

      if (qword_1ED517288 != -1)
      {
        sub_1959D4F1C();
      }

      v90 = qword_1ED5173D0;
      v92 = objc_msgSend_objectForKey_(v69, v91, @"apsenv");
      v95 = objc_msgSend_intValue(v92, v93, v94);

      if (v95 == 1)
      {
        v96 = &qword_1ED5173D8;
      }

      else
      {
        if (v95 != 2)
        {
LABEL_67:
          v98 = v90;
          *a2 = v90;

          goto LABEL_68;
        }

        v96 = &qword_1ED5173E0;
      }

      v97 = *v96;

      v90 = v97;
      goto LABEL_67;
    }
  }

LABEL_68:

  v99 = *MEMORY[0x1E69E9840];
  return v77 != 0;
}

id sub_19598D4D4(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_count(a1, a2, a3);
  if (v4)
  {
    v4 = objc_msgSend_objectAtIndex_(a1, v5, 0);
  }

  return v4;
}

id IMSingleObjectArray(void *a1, const char *a2)
{
  if (a1)
  {
    a1 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], a2, a1);
    v2 = vars8;
  }

  return a1;
}

id IMGetCachedDomainValueForKey(CFStringRef applicationID, CFStringRef key)
{
  v2 = CFPreferencesCopyAppValue(key, applicationID);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

void sub_19598D5A8()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = objc_msgSend_lastObject(v0, v1, v2);
  v9 = objc_msgSend_stringByAppendingPathComponent_(v3, v4, @"Caches/com.apple.setmme");

  v7 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v5, v6);
  byte_1ED517270 = objc_msgSend_fileExistsAtPath_(v7, v8, v9);
}

uint64_t sub_19598DE94(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], a2, a3);
  v7 = objc_msgSend_threadDictionary(v4, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"com.apple.IMRemoteObjectDeliveringMessageKey");
  objc_msgSend_setObject_forKeyedSubscript_(v7, v10, *(a1 + 32), @"com.apple.IMRemoteObjectDeliveringMessageKey");
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  if (objc_msgSend_isValid(v11, v15, v16))
  {
    if (objc_msgSend_forwardXPCObject_messageContext_locked_(v11, v17, v12, v13, 0) == 1)
    {
      if (dword_1ED517080 < 0)
      {
        if (qword_1ED517528 != -1)
        {
          sub_19598C678();
        }

        if (dword_1ED517080 <= 0)
        {
          goto LABEL_25;
        }
      }

      else if (!dword_1ED517080)
      {
        goto LABEL_25;
      }

      v31 = @"* Message delivery failed, object is dead: %@";
    }

    else
    {
      if (dword_1ED517080 < 0)
      {
        if (qword_1ED517528 != -1)
        {
          sub_19598C678();
        }

        if (dword_1ED517080 <= 0)
        {
          goto LABEL_25;
        }
      }

      else if (!dword_1ED517080)
      {
LABEL_25:
        if (v14)
        {
          (*(v14 + 16))(v14);
        }

        goto LABEL_27;
      }

      v31 = @"* Message delivery success to: %@";
    }

    _IMLog(v31, v24, v25, v26, v27, v28, v29, v30, v11);
    goto LABEL_25;
  }

  if ((dword_1ED517080 & 0x80000000) == 0)
  {
    if (!dword_1ED517080)
    {
      goto LABEL_27;
    }

LABEL_15:
    _IMLog(@"* Object is no longer valid, skipping this message: %@", v17, v18, v19, v20, v21, v22, v23, v11);
    goto LABEL_27;
  }

  if (qword_1ED517528 != -1)
  {
    sub_19598C678();
  }

  if (dword_1ED517080 > 0)
  {
    goto LABEL_15;
  }

LABEL_27:
  dispatch_release(*(a1 + 56));
  xpc_release(*(a1 + 40));

  return objc_msgSend_setObject_forKeyedSubscript_(v7, v32, v9, @"com.apple.IMRemoteObjectDeliveringMessageKey");
}

CFArrayRef sub_19598E0DC(void *a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_count(a1, a2, a3);
  if (result)
  {

    return CFArrayCreateCopy(0, a1);
  }

  return result;
}

uint64_t IMCreateXPCObjectFromInvocation(uint64_t result)
{
  if (result)
  {
    return JWCreateXPCObjectFromInvocation();
  }

  return result;
}

uint64_t IMCreateInvocationFromXPCObjectWithProtocol(void *a1, void *a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    v11 = xpc_dictionary_get_value(v7, "invocation");
    if (!v11)
    {
      v11 = v7;
    }

    v12 = JWCreateInvocationFromXPCObject(v11, v8, v9, v10);
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_19598E250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = OSLogHandleForIDSCategory("Warning");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_impl(&dword_195988000, v10, OS_LOG_TYPE_DEFAULT, "Exception building invocation: %@", &a9, 0xCu);
    }

    IMLogBacktrace(0);
    IMLogSimulateCrashForException(v9);

    objc_end_catch();
    JUMPOUT(0x19598E1F8);
  }

  _Unwind_Resume(exception_object);
}

_xpc_connection_s *im_local_object_from_connection(_xpc_connection_s *result)
{
  if (result)
  {
    context = xpc_connection_get_context(result);
    v4 = objc_msgSend_object(context, v2, v3);

    return v4;
  }

  return result;
}

uint64_t JWCopyInvocationArguments(void *a1, void *a2)
{
  sizep[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v7 = objc_msgSend_methodSignature(v3, v5, v6);
  v10 = objc_msgSend_numberOfArguments(v7, v8, v9);
  if (v10 >= 3)
  {
    v11 = v10;
    for (i = 2; i != v11; ++i)
    {
      v13 = v7;
      ArgumentTypeAtIndex = objc_msgSend_getArgumentTypeAtIndex_(v13, v14, i);
      if (*ArgumentTypeAtIndex == 64)
      {
        sizep[0] = 0;
        objc_msgSend_getArgument_atIndex_(v3, v16, sizep, i);
        objc_msgSend_setArgument_atIndex_(v4, v17, sizep, i);
      }

      else
      {
        sizep[0] = 0xAAAAAAAAAAAAAAAALL;
        v18 = NSGetSizeAndAlignment(ArgumentTypeAtIndex, sizep, 0);
        MEMORY[0x1EEE9AC00](v18);
        v21 = sizep - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v20)
        {
          memset(sizep - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v20);
        }

        objc_msgSend_getArgument_atIndex_(v3, v19, v21, i);
        objc_msgSend_setArgument_atIndex_(v4, v22, v21, i);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return 1;
}

CFNumberRef sub_19598F4BC()
{
  valuePtr = 0;
  qword_1ED517500 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  valuePtr = 1;
  qword_1ED5174F0 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  valuePtr = 2;
  qword_1ED5174E8 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  valuePtr = 3;
  qword_1ED5174E0 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  valuePtr = 4;
  qword_1ED5174D8 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  valuePtr = 5;
  qword_1ED5174D0 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  valuePtr = 6;
  qword_1ED5174F8 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  valuePtr = 7;
  qword_1ED5174C0 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  valuePtr = 8;
  result = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  qword_1ED5174C8 = result;
  return result;
}

IMRemoteObjectBroadcaster *sub_19598F608()
{
  result = objc_alloc_init(IMRemoteObjectBroadcaster);
  qword_1ED517518 = result;
  return result;
}

uint64_t IMCreateDictionaryFromXPCObjectWithStandardAllowlist(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = IMGetXPCDataFromDictionary(v1, "__encoded__");
    v4 = v3;
    if (v3)
    {
      v5 = JWDecodeKeyedCodableObjectWithSecureCoding(v3, 0);
      if (v5)
      {
LABEL_8:

        goto LABEL_9;
      }

      v6 = JWDecodeDictionary(v4);
    }

    else
    {
      v6 = _CFXPCCreateCFObjectFromXPCMessage();
    }

    v5 = v6;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

id IMGetXPCStringFromDictionary(void *a1, const char *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = xpc_dictionary_get_value(a1, a2);
    v4 = v3;
    if (v3 && MEMORY[0x19A8BA860](v3) == MEMORY[0x1E69E9F10] && (string_ptr = xpc_string_get_string_ptr(v4)) != 0)
    {
      v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, string_ptr);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id IMGetXPCDataFromDictionary(void *a1, const char *a2)
{
  v4 = 0;
  if (a1 && a2)
  {
    v4 = sub_1959897C0(a2, a1, 1);
    v2 = vars8;
  }

  return v4;
}

BOOL _IMWillLog(void *a1)
{
  v3 = a1;
  if (byte_1EAED9260 != 1)
  {
    AppBooleanValue = dword_1ED517088;
    if (dword_1ED517088 < 0)
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"Log", *MEMORY[0x1E695E8A8], 0);
      dword_1ED517088 = AppBooleanValue;
    }

    if (!AppBooleanValue)
    {
LABEL_9:
      if (byte_1EAED9260 != 1)
      {
        goto LABEL_18;
      }
    }

LABEL_10:
    if (dword_1EAED8218 < 0)
    {
      dword_1EAED8218 = CFPreferencesGetAppBooleanValue(@"Log.All", *MEMORY[0x1E695E8A8], 0);
      if (dword_1EAED8218)
      {
        goto LABEL_12;
      }
    }

    else if (dword_1EAED8218)
    {
LABEL_12:
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = objc_msgSend_initWithFormat_(v6, v7, @"DontLog.%@", v3);
      v4 = CFPreferencesGetAppBooleanValue(v8, *MEMORY[0x1E695E8A8], 0) == 0;
LABEL_20:

      goto LABEL_21;
    }

    if (objc_msgSend_length(v3, v1, v2))
    {
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v4 = byte_1EAED9260 == 1 && (objc_msgSend_objectForKey_(qword_1EAED9248, v11, v8), v12 = v8 = objc_msgSend_initWithFormat_(v9, v10, @"Log.%@", v3);
      goto LABEL_20;
    }

LABEL_18:
    v4 = 0;
    goto LABEL_21;
  }

  if ((byte_1EAED9261 & 1) == 0)
  {
    if (!dword_1ED517088)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v4 = 1;
LABEL_21:

  return v4;
}

uint64_t sub_19598FF18(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_trimmedString(a1, a2, a3);
  v6 = objc_msgSend_longLongValue(v3, v4, v5);

  return v6;
}

__CFString *sub_19598FF50(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_mutableCopy(a1, a2, a3);
  CFStringTrimWhitespace(v3);

  return v3;
}

id ValidMobileMeDomains()
{
  if (qword_1ED517300 != -1)
  {
    sub_19598FFD0();
  }

  v1 = qword_1ED5172F8;

  return v1;
}

void IMSetDomainBoolForKey(void *a1, const __CFString *a2, int a3)
{
  if (a3)
  {
    v3 = MEMORY[0x1E695E118];
  }

  else
  {
    v3 = 0;
  }

  IMSetDomainValueForKey(a1, a2, v3);
}

void IMSetDomainValueForKey(void *a1, const __CFString *a2, const void *a3)
{
  applicationID = a1;
  CFPreferencesSetAppValue(a2, a3, applicationID);
  CFPreferencesAppSynchronize(applicationID);
}

CFIndex IMGetCachedDomainIntForKeyWithDefaultValue(CFStringRef applicationID, CFStringRef key, uint64_t a3)
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(key, applicationID, &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return a3;
  }

  return result;
}

id sub_195990128(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(md, 170, 20);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v14.data[9] = v2;
  *&v14.data[13] = v2;
  *&v14.data[1] = v2;
  *&v14.data[5] = v2;
  *&v14.h0 = v2;
  *&v14.h4 = v2;
  CC_SHA1_Init(&v14);
  v3 = a1;
  v6 = objc_msgSend_bytes(v3, v4, v5);
  v9 = objc_msgSend_length(a1, v7, v8);
  CC_SHA1_Update(&v14, v6, v9);
  CC_SHA1_Final(md, &v14);
  v11 = objc_msgSend___imHexStringOfBytes_withLength_(a1, v10, md, 20);
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t IMInsertCodableObjectsToXPCDictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (v10)
  {
    v11 = a2 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    v20 = &a9;
    do
    {
      v13 = v20;
      v21 = v20 + 1;
      v14 = *v13;
      v17 = JWEncodeKeyedCodableObject(v14);
      if (!v17)
      {
        v17 = objc_msgSend_data(MEMORY[0x1E695DEF0], v15, v16);
      }

      sub_19598972C(v17, a2, v10);

      v18 = v21;
      v20 = (v21 + 1);
      a2 = *v18;
    }

    while (*v18);
  }

  return v12;
}

id JWEncodeKeyedCodableObject(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696ACC8];
    v2 = a1;
    v3 = [v1 alloc];
    inited = objc_msgSend_initRequiringSecureCoding_(v3, v4, 0);
    objc_msgSend_setRequiresSecureCoding_(inited, v6, 1);
    objc_msgSend_encodeObject_forKey_(inited, v7, v2, *MEMORY[0x1E696A508]);

    v10 = objc_msgSend_encodedData(inited, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id IMGetXPCKeyedCodableFromDictionaryWithSecureCoding(void *a1, const char *a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v5 = sub_1959897C0(a2, a1, 0);
    v3 = JWDecodeKeyedCodableObjectWithSecureCoding(v5, a3);
  }

  return v3;
}

uint64_t sub_195990430()
{
  qword_1ED5170B0 = os_log_create("com.apple.Registration", "SignInController");

  return MEMORY[0x1EEE66BB8]();
}

void im_local_object_peer_event_handler_is_syncReply(_xpc_connection_s *a1, void *a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_50;
  }

  v6 = MEMORY[0x19A8BA860](a2);
  if (v6 != MEMORY[0x1E69E9E98])
  {
    if (v6 != MEMORY[0x1E69E9E80])
    {
      goto LABEL_50;
    }

    if (dword_1ED517080 < 0)
    {
      if (qword_1ED517528 != -1)
      {
        sub_19598C678();
      }

      if (dword_1ED517080 <= 0)
      {
LABEL_23:
        context = xpc_connection_get_context(a1);
        v20 = objc_msgSend_object(context, v18, v19);
        if (v20)
        {
          if (xpc_dictionary_get_BOOL(a2, "xpc-object"))
          {
            v23 = OSLogHandleForIDSCategory("IMLocalObject");
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v54) = 0;
              _os_log_impl(&dword_195988000, v23, OS_LOG_TYPE_DEFAULT, "Incoming file descriptor request", &v54, 2u);
            }

            value = xpc_dictionary_get_value(a2, "object");
            v25 = objc_opt_class();
            v26 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding(a2, "object-context", v25);
            if (!objc_msgSend_count(v26, v27, v28))
            {
              v31 = OSLogHandleForIDSCategory("IMLocalObject");
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v54) = 0;
                _os_log_impl(&dword_195988000, v31, OS_LOG_TYPE_DEFAULT, " => Empty response, trying serialized response", &v54, 2u);
              }

              v26 = IMGetXPCDictionaryFromDictionary(a2, "object-context");
              v32 = OSLogHandleForIDSCategory("IMLocalObject");
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v33 = objc_msgSend_count(v26, v29, v30);
                v54 = 67109120;
                pid = v33;
                _os_log_impl(&dword_195988000, v32, OS_LOG_TYPE_DEFAULT, " => Found response with %d keys", &v54, 8u);
              }
            }

            if (value && MEMORY[0x19A8BA860](value) == MEMORY[0x1E69E9EA0])
            {
              v34 = xpc_fd_dup(value);
              close(v34);
            }

            v35 = objc_msgSend_target(v20, v29, v30);
            if (objc_opt_respondsToSelector())
            {
              objc_msgSend_xpcObject_objectContext_(v35, v36, value, v26);
            }
          }

          else
          {
            v44 = objc_msgSend_protocolChecker(v20, v21, v22);
            v47 = objc_msgSend_protocol(v44, v45, v46);
            v50 = objc_msgSend_allowlistedClasses(v20, v48, v49);
            v51 = IMCreateInvocationFromXPCObjectWithProtocol(a2, v20, v47, v50);
            if (v51)
            {
              if (pthread_main_np())
              {
                objc_msgSend__enqueueInvocationWithSync_xpcMessage_submitToComponentQueue_isReply_(v20, v52, v51, 0, 1, a3);
              }

              else if (a3)
              {
                objc_msgSend__enqueueInvocationWithSync_xpcMessage_submitToComponentQueue_isReply_(v20, v52, v51, 0, 1, 1);
              }

              else
              {
                objc_msgSend__enqueueInvocation_(v20, v52, v51);
              }
            }
          }

LABEL_49:

          goto LABEL_50;
        }

        goto LABEL_50;
      }
    }

    else if (!dword_1ED517080)
    {
      goto LABEL_23;
    }

    v15 = MEMORY[0x19A8BA760](a2);
    v16 = OSLogHandleForIDSCategory("IMLocalObject");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v54 = 67109378;
      pid = xpc_connection_get_pid(a1);
      v56 = 2080;
      v57 = v15;
      _os_log_impl(&dword_195988000, v16, OS_LOG_TYPE_DEFAULT, "received message from peer(%d): %s", &v54, 0x12u);
    }

    free(v15);
    goto LABEL_23;
  }

  if (a2 == MEMORY[0x1E69E9E20])
  {
    v8 = OSLogHandleForIDSCategory("IMLocalObject");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v54 = 67109120;
      pid = xpc_connection_get_pid(a1);
      _os_log_impl(&dword_195988000, v8, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_CONNECTION_INVALID", &v54, 8u);
    }

    v9 = xpc_connection_get_context(a1);
    v12 = objc_msgSend_object(v9, v10, v11);
    xpc_connection_cancel(a1);
    if (v12)
    {
      objc_msgSend__portDidBecomeInvalid(v12, v13, v14);
    }
  }

  else
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v37 = OSLogHandleForIDSCategory("IMLocalObject");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v54 = 67109120;
        pid = xpc_connection_get_pid(a1);
        _os_log_impl(&dword_195988000, v37, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", &v54, 8u);
      }

      v38 = xpc_connection_get_context(a1);
      v41 = objc_msgSend_object(v38, v39, v40);
      v20 = v41;
      if (v41)
      {
        objc_msgSend__portInterrupted(v41, v42, v43);
      }

      goto LABEL_49;
    }

    if (a2 == MEMORY[0x1E69E9E38])
    {
      v7 = OSLogHandleForIDSCategory("IMLocalObject");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v54 = 67109120;
        pid = xpc_connection_get_pid(a1);
        _os_log_impl(&dword_195988000, v7, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", &v54, 8u);
      }
    }
  }

LABEL_50:
  v53 = *MEMORY[0x1E69E9840];
}

void sub_1959910E4(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }
  }
}

dispatch_queue_t sub_195991458()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("IMLocalObjectQueue", v0);
  qword_1ED5174A8 = result;
  return result;
}

void im_dispatch_after(void *a1, double a2)
{
  if (a1)
  {
    v2 = (a2 * 1000000000.0);
    block = a1;
    v3 = dispatch_time(0, v2);
    dispatch_after(v3, MEMORY[0x1E69E96A0], block);
  }
}

id sub_195991518(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_count(a1, a2, a3);
  if (v4)
  {
    v4 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v5, a1);
  }

  return v4;
}

uint64_t sub_195991564(uint64_t a1, const char *a2)
{
  qword_1ED5172F8 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], a2, @"mac.com", @"me.com", @"icloud.com", 0);

  return MEMORY[0x1EEE66BB8]();
}

__CFString *IMCleanupPhoneNumber(void *a1)
{
  v1 = a1;
  if (IMStringIsPhoneNumber(v1))
  {
    hasPrefix = objc_msgSend_hasPrefix_(v1, v2, @"+");
    v4 = IMNormalizeFormattedString(v1, 3);
    v6 = v4;
    if (hasPrefix && (objc_msgSend_hasPrefix_(v4, v5, @"+") & 1) == 0)
    {
      v8 = objc_msgSend_stringByAppendingString_(@"+", v7, v6);

      v6 = v8;
    }
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

id IMCountryCodeForIncomingTextMessage(uint64_t a1)
{
  pthread_mutex_lock(&unk_1ED516FF8);
  v2 = qword_1ED5170C0;
  if (qword_1ED5170C0)
  {
    goto LABEL_7;
  }

  if (qword_1ED517148 != -1)
  {
    sub_195991790();
  }

  if (off_1ED5171B8)
  {
    v3 = off_1ED5171B8(a1);
    v4 = qword_1ED5170C0;
    qword_1ED5170C0 = v3;

    im_dispatch_after(&unk_1F09D30C0, 0.0);
  }

  v2 = qword_1ED5170C0;
  if (qword_1ED5170C0)
  {
LABEL_7:
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  pthread_mutex_unlock(&unk_1ED516FF8);
  if (objc_msgSend_length(v5, v6, v7))
  {
    v10 = v5;
  }

  else
  {
    v11 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x1E695DF58], v8, v9);
    v10 = objc_msgSend_objectForKey_(v11, v12, *MEMORY[0x1E695D978]);
  }

  return v10;
}

uint64_t (*sub_1959917A4())(void)
{
  result = IMWeakLinkSymbol();
  off_1ED5171B8 = result;
  return result;
}

double IMTimeOfDay()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_usec / 1000000.0 + v1.tv_sec;
}

uint64_t sub_1959918D4(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_lowercaseString(a1, a2, a3);
  if (objc_msgSend_hasPrefix_(v3, v4, @"urn:biz:"))
  {
    hasPrefix = 1;
  }

  else
  {
    hasPrefix = objc_msgSend_hasPrefix_(v3, v5, @"biz:");
  }

  return hasPrefix;
}

id sub_195991968(void *a1, const char *a2)
{
  if ((objc_msgSend_hasPrefix_(a1, a2, @"urn:biz:") & 1) != 0 || (objc_msgSend_hasPrefix_(a1, v3, @"biz:") & 1) != 0 || (objc_msgSend_hasPrefix_(a1, v4, @"temp:") & 1) != 0 || (objc_msgSend_hasPrefix_(a1, v5, @"pseud:") & 1) != 0 || (objc_msgSend_hasPrefix_(a1, v6, @"dev:") & 1) != 0 || (objc_msgSend_hasPrefix_(a1, v7, @"urn:ds:") & 1) != 0 || (objc_msgSend_hasPrefix_(a1, v8, @"ds:") & 1) != 0 || objc_msgSend_hasPrefix_(a1, v9, @"sip:") || objc_msgSend__appearsToBeStewie(a1, v10, v11) || (v13 = objc_msgSend_rangeOfString_(a1, v12, @":"), v13 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v15 = a1;
  }

  else
  {
    v15 = objc_msgSend_substringFromIndex_(a1, v14, v13 + 1);
  }

  return v15;
}

BOOL IMGetiMessageSettings(void *a1, char *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v10 = IMSingleObjectArray(@"com.apple.madrid", a2);
  v11 = sub_19598CD6C(a1, a2, a3, a4, a5, @"/AppleInternal/Library/Madrid/Environments.plist", v10, @"https://init-p01md.apple.com/bag?ix=2");

  return v11;
}

void sub_195991B14(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_controlCharacterSet(MEMORY[0x1E696AB08], a2, a3);
  v19 = objc_msgSend_mutableCopy(v3, v4, v5);

  v8 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v6, v7);
  objc_msgSend_formUnionWithCharacterSet_(v19, v9, v8);

  v12 = objc_msgSend_illegalCharacterSet(MEMORY[0x1E696AB08], v10, v11);
  objc_msgSend_formUnionWithCharacterSet_(v19, v13, v12);

  objc_msgSend_removeCharactersInString_(v19, v14, @"+");
  v17 = objc_msgSend_copy(v19, v15, v16);
  v18 = qword_1ED517128;
  qword_1ED517128 = v17;
}

id IMStripFormattingFromAddress(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3))
  {
    if (qword_1ED517120 != -1)
    {
      sub_195991BD4();
    }

    v5 = objc_msgSend_stringByRemovingCharactersFromSet_(v1, v4, qword_1ED517128);
    v8 = objc_msgSend__im_normalizedURIString(v5, v6, v7);

    if (IMStringIsPhoneNumber(v8))
    {
      v9 = IMFormatPhoneNumber(v8, 1);
      goto LABEL_9;
    }

    v10 = v8;
  }

  else
  {
    v10 = v1;
  }

  v9 = v10;
  v8 = v10;
LABEL_9:

  return v9;
}

id sub_195991CB0(void *a1, const char *a2, uint64_t a3)
{
  if ((objc_msgSend__appearsToBePseudonymID(a1, a2, a3) & 1) != 0 || objc_msgSend__appearsToBeHardwareID(a1, v4, v5))
  {
    v8 = a1;
  }

  else
  {
    v8 = objc_msgSend_lowercaseString(a1, v6, v7);
  }

  return v8;
}

id IMFormatPhoneNumber(void *a1, int a2)
{
  v3 = a1;
  if (objc_msgSend_length(v3, v4, v5) && !IMStringIsEmail(v3))
  {
    if (qword_1ED517470 != -1)
    {
      sub_195991D20();
    }

    v7 = &qword_1ED517460;
    if (!a2)
    {
      v7 = &qword_1ED517468;
    }

    v8 = objc_msgSend_stringByTrimmingCharactersInSet_(v3, v6, *v7);

    v11 = objc_msgSend_length(v8, v9, v10);
    v12 = objc_alloc(MEMORY[0x1E696AD60]);
    v16 = objc_msgSend_initWithCapacity_(v12, v13, v11);
    if (v11)
    {
      for (i = 0; v11 != i; ++i)
      {
        v18 = objc_msgSend_characterAtIndex_(v8, v14, i);
        if (v18 >= 43)
        {
          v15 = @"+";
          if (v18 <= 43)
          {
            goto LABEL_23;
          }

          if (v18 > 111)
          {
            if (v18 == 112 || v18 == 120)
            {
              break;
            }
          }

          else if (v18 == 44 || v18 == 59)
          {
            break;
          }
        }

        else
        {
          if (v18 == 35)
          {
            objc_msgSend_appendString_(v16, v14, @"#");
            continue;
          }

          if (v18 == 42)
          {
            objc_msgSend_appendString_(v16, v14, @"*");
            continue;
          }
        }

        v19 = u_charDigitValue(v18);
        if (v19 <= 9)
        {
          v15 = off_1E7439958[v19];
LABEL_23:
          objc_msgSend_appendString_(v16, v14, v15);
        }
      }
    }

    if (objc_msgSend_length(v16, v14, v15))
    {
      v20 = v16;

      v8 = v20;
    }

    v3 = v8;
  }

  return v3;
}

uint64_t sub_195991EE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], a2, a3);
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);
  v7 = qword_1ED517468;
  qword_1ED517468 = v6;

  v10 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v8, v9);
  v13 = objc_msgSend_mutableCopy(v10, v11, v12);
  v14 = qword_1ED517460;
  qword_1ED517460 = v13;

  objc_msgSend_addCharactersInString_(qword_1ED517460, v15, @"+#*,;px");
  objc_msgSend_invert(qword_1ED517468, v16, v17);
  v20 = qword_1ED517460;

  return objc_msgSend_invert(v20, v18, v19);
}

uint64_t sub_195991FDC()
{
  qword_1ED517488 = os_log_create("com.apple.Registration", "AccountEnabled");

  return MEMORY[0x1EEE66BB8]();
}

id IMInternationalForPhoneNumberWithOptions(void *a1, void *a2, int a3)
{
  v3 = IMPhoneNumberRefCopyForPhoneNumber(a1, a2, a3);
  v4 = IMNormalizedPhoneNumberForCFPhoneNumberRef(v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

id IMNormalizedPhoneNumberForCFPhoneNumberRef(id a1)
{
  v1 = a1;
  if (a1)
  {
    if (qword_1ED5172D8 != -1)
    {
      sub_1959921D4();
    }

    if (qword_1ED5172D0 != -1)
    {
      sub_1959921E8();
    }

    v2 = off_1ED5172E0(v1);
    if (objc_msgSend_length(v2, v3, v4) < 7)
    {
      goto LABEL_11;
    }

    v7 = off_1ED5172E8(v1);
    if (objc_msgSend_length(v2, v8, v9) <= 7 && objc_msgSend_hasPrefix_(v7, v5, @"+90444"))
    {
      v10 = objc_msgSend_copy(v2, v5, v6);

      v7 = v10;
    }

    if (!v7)
    {
LABEL_11:
      v7 = objc_msgSend_copy(v2, v5, v6);
    }

    v1 = v7;
  }

  return v1;
}

uint64_t (*sub_1959921A4())(void)
{
  result = IMWeakLinkSymbol();
  off_1ED5172E8 = result;
  return result;
}

uint64_t (*sub_1959921FC())(void)
{
  result = IMWeakLinkSymbol();
  off_1ED5172E0 = result;
  return result;
}

void IMComponentsFromChatGUID(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a1;
  v22 = v7;
  if (a2 && !a3 && !a4)
  {
    v9 = objc_msgSend_rangeOfString_options_(v7, v8, @";", 4);
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *a2 = objc_msgSend_substringFromIndex_(v22, v10, &v10[v9]);
      goto LABEL_21;
    }

    v11 = objc_msgSend_componentsSeparatedByString_(v22, v10, @"");;
    objc_msgSend_lastObject(v11, v12, v13);
    goto LABEL_14;
  }

  if (!a4 && !a2 && a3)
  {
    v14 = objc_msgSend_rangeOfString_options_(v7, v8, @";", 0);
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *a3 = objc_msgSend_substringToIndex_(v22, v15, v14);
      goto LABEL_21;
    }

    v11 = objc_msgSend_componentsSeparatedByString_(v22, v15, @"");;
    objc_msgSend___imFirstObject(v11, v16, v17);
    goto LABEL_17;
  }

  v11 = objc_msgSend_componentsSeparatedByString_(v7, v8, @"");;
  if (a2)
  {
    objc_msgSend_lastObject(v11, v18, v19);
    *a2 = LABEL_14:;
  }

  if (a3)
  {
    objc_msgSend___imFirstObject(v11, v18, v19);
    *a3 = LABEL_17:;
  }

  if (a4)
  {
    v20 = objc_msgSend_objectAtIndex_(v11, v18, 1);
    *a4 = objc_msgSend_characterAtIndex_(v20, v21, 0);
  }

LABEL_21:
}

uint64_t sub_1959923C8()
{
  pthread_mutex_lock(&unk_1ED516FF8);
  v0 = qword_1ED5170C0;
  qword_1ED5170C0 = 0;

  return pthread_mutex_unlock(&unk_1ED516FF8);
}

uint64_t IMAreObjectsLogicallySame(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v8 = 1;
  }

  else if (v3 || !v4) && (!v3 || v4) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      isEqualToString = objc_msgSend_isEqualToString_(v3, v6, v5);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        isEqualToString = objc_msgSend_isEqualToData_(v3, v10, v5);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          isEqualToString = objc_msgSend_isEqualToArray_(v3, v11, v5);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            isEqualToString = objc_msgSend_isEqualToSet_(v3, v12, v5);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              isEqualToString = objc_msgSend_isEqualToAttributedString_(v3, v13, v5);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
              {
                isEqualToString = objc_msgSend_isEqualToDate_(v3, v14, v5);
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  isEqualToString = objc_msgSend_isEqualToOrderedSet_(v3, v15, v5);
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
                  {
                    isEqualToString = objc_msgSend_isEqualToValue_(v3, v16, v5);
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
                    {
                      isEqualToString = objc_msgSend_isEqualToDictionary_(v3, v17, v5);
                    }

                    else
                    {
                      isEqualToString = objc_msgSend_isEqual_(v3, v17, v5);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v8 = isEqualToString;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id JWDecodeCodableObjectWithStandardAllowlist(void *a1)
{
  v1 = a1;
  v4 = JWCopyCodableObjectStandardAllowlist();
  if (v1 && objc_msgSend_length(v1, v2, v3))
  {
    v5 = objc_alloc(MEMORY[0x1E696AFC0]);
    v7 = objc_msgSend_initForReadingWithData_(v5, v6, v1);
    objc_msgSend__setAllowedClasses_(v7, v8, v4);
    v11 = objc_msgSend_decodeObject(v7, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id JWCopyCodableObjectStandardAllowlist()
{
  if (qword_1EAED8DF8 != -1)
  {
    sub_1959928D4();
  }

  v1 = qword_1EAED8DD0;

  return v1;
}

uint64_t sub_19599292C()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  qword_1EAED8DD0 = objc_msgSend_initWithObjects_(v0, v1, @"NSString", @"NSNumber", @"NSCalendarDate", @"NSDate", @"NSArray", @"NSDictionary", @"NSMutableDictionary", @"NSObject", @"NSAttributedString", @"NSMutableAttributedString", @"NSValue", @"NSMutableArray", @"NSMutableString", @"NSData", @"NSMutableData", @"NSError", @"NSURLError", @"NSURL", @"NSURLRequest", @"NSMutableURLRequest", @"NSURLResponse", 0);

  return MEMORY[0x1EEE66BB8]();
}

__CFString *sub_195992A9C(void *a1, const char *a2)
{
  if (qword_1EAED8D00 != -1)
  {
    sub_195992A88();
  }

  v3 = objc_msgSend_stringByRemovingCharactersFromSet_(a1, a2, qword_1EAED8C80);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F09D3C40;
  }

  v6 = v5;

  return v5;
}

void sub_195992B20()
{
  v0 = sub_195992BB0();
  v9 = objc_msgSend_mutableCopy(v0, v1, v2);

  objc_msgSend_addCharactersInString_(v9, v3, @"\uFFFC");
  objc_msgSend_addCharactersInString_(v9, v4, @"\uFFFD");
  v7 = objc_msgSend_copy(v9, v5, v6);
  v8 = qword_1EAED8C80;
  qword_1EAED8C80 = v7;
}

id sub_195992BB0()
{
  if (qword_1EAED8DA8 != -1)
  {
    sub_195992B0C();
  }

  v1 = qword_1EAED8CF8;

  return v1;
}

void sub_195992BF4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_controlCharacterSet(MEMORY[0x1E696AB08], a2, a3);
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  objc_msgSend_invert(v6, v7, v8);
  v11 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v9, v10);
  objc_msgSend_formUnionWithCharacterSet_(v6, v12, v11);

  objc_msgSend_invert(v6, v13, v14);
  v23 = 537731084;
  v24 = 6158;
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = objc_msgSend_initWithCharactersNoCopy_length_freeWhenDone_(v15, v16, &v23, 3, 0);
  objc_msgSend_removeCharactersInString_(v6, v18, v17);
  v21 = objc_msgSend_copy(v6, v19, v20);
  v22 = qword_1EAED8CF8;
  qword_1EAED8CF8 = v21;
}

__CFString *IMFormattedDisplayStringForNumber(void *a1, uint64_t a2)
{
  v3 = a1;
  v6 = v3;
  switch(a2)
  {
    case 3:
      v7 = IMFormattedNumberForUnformattedNumber(v3);
      goto LABEL_7;
    case 2:
      v7 = objc_msgSend_lowercaseString(v3, v4, v5);
      goto LABEL_7;
    case 1:
      v7 = v3;
LABEL_7:
      v10 = v7;
      v11 = objc_msgSend_length(v7, v8, v9);
      goto LABEL_9;
  }

  v10 = 0;
  v11 = objc_msgSend_length(0, v4, v5);
LABEL_9:
  if (v11)
  {
    v12 = v10;
    v10 = v12;
LABEL_13:
    v15 = v12;
    goto LABEL_14;
  }

  if (IMStringIsEmail(v6))
  {
    v12 = objc_msgSend_lowercaseString(v6, v13, v14);
    goto LABEL_13;
  }

  v17 = IMFormattedNumberForUnformattedNumber(v6);

  if (objc_msgSend_length(v17, v18, v19))
  {
    v20 = IMCopyStringWithLocalizedNumbers(v17);
    if (objc_msgSend_length(v20, v21, v22))
    {
      v23 = v20;
    }

    else
    {
      v23 = v17;
    }

    v15 = v23;
  }

  else
  {
    v15 = v6;
  }

  v10 = v17;
LABEL_14:

  return v15;
}

id IMFormattedNumberForUnformattedNumber(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1EAED8BB8 != -1)
    {
      sub_195992E74();
    }

    v2 = off_1EAED8BC0(v1, 0, 2, 0);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t (*sub_195992E88())(void, void, void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8BC0 = result;
  return result;
}

__CFString *IMCopyStringWithLocalizedNumbers(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
    return 0;
  }

  v3 = Length;
  Mutable = CFStringCreateMutable(0, Length);
  for (i = 0; i != v3; ++i)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, i);
    chars = CharacterAtIndex;
    v7 = u_charDigitValue(CharacterAtIndex);
    if (v7 == -1)
    {
      CFStringAppendCharacters(Mutable, &chars, 1);
    }

    else
    {
      v9 = MEMORY[0x1E696ADA0];
      v10 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v8, v7);
      v12 = objc_msgSend_localizedStringFromNumber_numberStyle_(v9, v11, v10, 1);
      CFStringAppend(Mutable, v12);
    }
  }

  return Mutable;
}

void sub_195993180(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___imFirstObject(a1, a2, a3);
  if (v4)
  {
    v6 = v4;
    objc_msgSend_removeObjectAtIndex_(a1, v5, 0);
    v4 = v6;
  }
}

void sub_1959931D8()
{
  v0 = MKBGetDeviceLockState();
  v1 = im_primary_queue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195993268;
  block[3] = &unk_1E7439428;
  v3 = v0;
  dispatch_async(v1, block);
}

void sub_195993268(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_sharedInstance(IMSystemMonitor, a2, a3);
  objc_msgSend__setDataProtectionLockState_(v5, v4, *(a1 + 32));
}

void sub_1959932C0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v5 = objc_msgSend_registration(IMRGLog, a2, a3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "Dispatch registration invoked - checking state {name: %@}", buf, 0xCu);
    }

    v7 = dispatch_get_global_queue(2, 0);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1959935B0;
    v13[3] = &unk_1E7438450;
    v17 = v3;
    v16 = *(a1 + 48);
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    dispatch_async(v7, v13);
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = objc_msgSend_registration(IMRGLog, a2, a3);
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&dword_195988000, v10, OS_LOG_TYPE_DEFAULT, "Dispatch registration invoked - calling handler {name: %@}", buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1959D3C28(a1);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

CFIndex IMGetCachedDomainIntForKey(CFStringRef applicationID, CFStringRef key)
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(key, applicationID, &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 0;
  }

  return result;
}

CFMutableArrayRef sub_195993558()
{
  v0 = *(MEMORY[0x1E695E9C0] + 16);
  *&v3.version = *MEMORY[0x1E695E9C0];
  *&v3.release = v0;
  v3.equal = *(MEMORY[0x1E695E9C0] + 32);
  v3.retain = 0;
  v3.release = 0;
  v1 = CFArrayCreateMutable(0, 0, &v3);

  return v1;
}

void sub_1959935B0(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  state64 = 0;
  notify_get_state(*(a1 + 56), &state64);
  v2 = *(a1 + 48);
  v5 = objc_msgSend_registration(IMRGLog, v3, v4);
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v17 = v7;
      v18 = 1024;
      v19 = state64;
      _os_log_impl(&dword_195988000, v6, OS_LOG_TYPE_DEFAULT, "Dispatch registration invoked - fetched state {name: %@, state: %u}", buf, 0x12u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195993724;
    v11[3] = &unk_1E7438428;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v14 = *(a1 + 56);
    v12 = v9;
    v13 = state64;
    dispatch_async(v8, v11);
    v6 = v12;
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1959D3C9C(a1, &state64);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19599373C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_sharedInstance(IMSystemMonitor, a2, a3);
  objc_msgSend__setSystemLockState_(v5, v4, a3 != 0);
}

void sub_195993D28(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  v8 = objc_autoreleasePoolPush();
  if (a3 > -536870273)
  {
    switch(a3)
    {
      case -536870272:
        v12 = objc_msgSend_sharedInstance(IMSystemMonitor, v6, v7);
        objc_msgSend__systemWillSleep(v12, v13, v14);
        break;
      case -536870144:
        v12 = objc_msgSend_sharedInstance(IMSystemMonitor, v6, v7);
        v17 = objc_msgSend___im_afterDelay_(v12, v15, v16, 0.0);
        objc_msgSend__systemDidWake(v17, v18, v19);

        break;
      case -536870128:
        v9 = sub_1959AF938();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        v25 = 0;
        v10 = "SYSTEM RESTART -- posting";
        v11 = &v25;
        goto LABEL_16;
      default:
        goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (a3 != -536870384)
  {
    if (a3 != -536870320)
    {
      goto LABEL_18;
    }

    v9 = sub_1959AF938();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v24 = 0;
    v10 = "SYSTEM POWER OFF -- posting";
    v11 = &v24;
    goto LABEL_16;
  }

  v9 = sub_1959AF938();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 0;
    v10 = "DEVICE POWER OFF -- posting";
    v11 = &v23;
LABEL_16:
    _os_log_impl(&dword_195988000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
  }

LABEL_17:

  sub_1959AFCFC();
LABEL_18:
  v20 = IOAllowPowerChange(dword_1EAED8C68, a4);
  if (v20)
  {
    v21 = v20;
    v22 = sub_1959AF938();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1959D552C(v21, v22);
    }
  }

  objc_autoreleasePoolPop(v8);
}

void sub_195993F24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_autoreleasePoolPush();
  objc_msgSend__clearIPCache(a3, v5, v6);

  objc_autoreleasePoolPop(v4);
}

void sub_195994078(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_sharedInstance(IMSystemMonitor, a2, a3);
  objc_msgSend__setSystemScreenState_(v5, v4, a3 == 0);
}

uint64_t sub_1959940F0(void *a1, const char *a2)
{
  if (objc_msgSend_hasPrefix_(a1, a2, @"H:") & 1) != 0 || (objc_msgSend_hasPrefix_(a1, v3, @"D:") & 1) != 0 || (objc_msgSend_hasPrefix_(a1, v4, @"E:"))
  {
    return 1;
  }

  if (objc_msgSend_hasPrefix_(a1, v5, @"P:"))
  {
    return 0;
  }

  if (objc_msgSend_hasPrefix_(a1, v7, @"A:"))
  {
    return 6;
  }

  if (objc_msgSend_hasPrefix_(a1, v8, @"tel:"))
  {
    return 0;
  }

  if (objc_msgSend_hasPrefix_(a1, v9, @"mailto:"))
  {
    return 1;
  }

  if (objc_msgSend_hasPrefix_(a1, v10, @"urn:biz:") & 1) != 0 || (objc_msgSend_hasPrefix_(a1, v11, @"biz:"))
  {
    return 3;
  }

  if (objc_msgSend_hasPrefix_(a1, v12, @"temp:"))
  {
    return 4;
  }

  if (objc_msgSend_hasPrefix_(a1, v13, @"pseud:"))
  {
    return 5;
  }

  if (objc_msgSend_hasPrefix_(a1, v14, @"dev:"))
  {
    return 6;
  }

  if (objc_msgSend_hasPrefix_(a1, v15, @"urn:") & 1) != 0 || (objc_msgSend_hasPrefix_(a1, v16, @"ds:"))
  {
    return 2;
  }

  if (objc_msgSend_hasPrefix_(a1, v17, @"sip:"))
  {
    return 7;
  }

  return -1;
}

uint64_t sub_195994278(void *a1, const char *a2)
{
  if (objc_msgSend_hasPrefix_(a1, a2, @"urn:ds:") & 1) != 0 || (objc_msgSend_hasPrefix_(a1, v3, @"ds:"))
  {
    return 1;
  }

  return objc_msgSend_hasPrefix_(a1, v4, @"DS:");
}

id sub_1959942E8(void *a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_lowercaseString(a1, a2, a3);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"mailto:%@", v4);

  return v6;
}

id IMLoggingStringForArray(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_msgSend_initWithString_(v2, v3, @"(");
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v20, v24, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v21;
    v12 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ((v12 & 1) == 0)
        {
          objc_msgSend_appendString_(v4, v8, @", ", v20);
        }

        v15 = objc_msgSend_description(v14, v8, v9, v20);
        objc_msgSend_appendString_(v4, v16, v15);

        v12 = 0;
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v20, v24, 16);
      v12 = 0;
    }

    while (v10);
  }

  objc_msgSend_appendString_(v4, v17, @""));
  v18 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t sub_19599451C(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend__appearsToBeSIPID(a1, a2, a3))
  {
    return 7;
  }

  if (objc_msgSend__appearsToBePhoneNumber(a1, v4, v5))
  {
    return 0;
  }

  if (objc_msgSend__appearsToBeEmail(a1, v7, v8))
  {
    return 1;
  }

  if (objc_msgSend__appearsToBeDSID(a1, v9, v10))
  {
    return 2;
  }

  if (objc_msgSend__appearsToBeBusinessID(a1, v11, v12))
  {
    return 3;
  }

  if (objc_msgSend__appearsToBeTemporaryID(a1, v13, v14))
  {
    return 4;
  }

  if (objc_msgSend__appearsToBePseudonymID(a1, v15, v16))
  {
    return 5;
  }

  if (objc_msgSend__appearsToBeHardwareID(a1, v17, v18))
  {
    return 6;
  }

  return -1;
}

uint64_t sub_1959945E4(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__FZBestGuessFZIDType(a1, a2, a3);

  return MEMORY[0x1EEE66B58](a1, sel__URIFromFZIDType_, v4);
}

id sub_195994620(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = IMFormatPhoneNumber(a1, 1);
  v4 = objc_msgSend_stringWithFormat_(v1, v3, @"tel:%@", v2);

  return v4;
}

uint64_t jw_uuid_to_data(uint64_t a1, char *a2)
{
  if (!a2)
  {
    return 22;
  }

  v3 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], a2, a1, 16);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t sub_195994788(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_length(a1, a2, a3);
  v5 = a1;
  v9 = objc_msgSend_bytes(v5, v6, v7);

  return objc_msgSend___imHexStringOfBytes_withLength_(a1, v8, v9, v4);
}

id JWEncodeArray(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1 && objc_msgSend_count(v1, v2, v3))
  {
    v11 = 0;
    v6 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], v5, v4, 200, 0, &v11);
    v7 = v6;
    v8 = 0;
    if (v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = v11 == 0;
    }

    if (v9)
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t IMInsertArraysToXPCDictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a1;
  if (v10)
  {
    v11 = a2 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    v22 = &a9;
    do
    {
      v13 = v22;
      v23 = v22 + 1;
      v14 = *v13;
      v15 = JWEncodeArray(v14);
      if (!v15)
      {
        v16 = OSLogHandleForIDSCategory("Warning");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v14;
          _os_log_impl(&dword_195988000, v16, OS_LOG_TYPE_DEFAULT, "Failed to encode array: %@", buf, 0xCu);
        }

        v15 = objc_msgSend_data(MEMORY[0x1E695DEF0], v17, v18);
      }

      sub_19598972C(v15, a2, v10);

      v19 = v23;
      v22 = (v23 + 1);
      a2 = *v19;
    }

    while (*v19);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

id JWUUIDPushObjectToString(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3))
  {
    v12[0] = 0;
    v12[1] = 0;
    objc_msgSend_getBytes_length_(v1, v4, v12, 16);
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    out[2] = v5;
    out[3] = v5;
    out[0] = v5;
    out[1] = v5;
    uuid_unparse_upper(v12, out);
    v6 = CFStringCreateWithCString(0, out, 0x8000100u);
    v9 = objc_msgSend_uppercaseString(v6, v7, v8);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id IMCreateSimpleComponentString(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_appendString_(v2, v6, *(*(&v12 + 1) + 8 * v9++), v12);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v12, v16, 16);
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

id IMProcessNameForPid(int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v1;
  v7[1] = v1;
  if (proc_name(a1, v7, 0x20u) < 1)
  {
    v4 = 0;
  }

  else
  {
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = objc_msgSend_initWithUTF8String_(v2, v3, v7);
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id JWDecodeArray(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1 && objc_msgSend_length(v1, v2, v3))
  {
    v9 = 0;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    v6 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v5, v4, 0, &v10, &v9);
    if (v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id IMGetXPCArrayFromDictionary(void *a1, const char *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = sub_1959897C0(a2, a1, 0);
    v2 = JWDecodeArray(v3);
  }

  return v2;
}

uint64_t IMInsertKeyedCodableObjectsToXPCDictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (v10)
  {
    v11 = a2 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    v20 = &a9;
    do
    {
      v13 = v20;
      v21 = v20 + 1;
      v14 = *v13;
      v17 = JWEncodeKeyedCodableObject(v14);
      if (!v17)
      {
        v17 = objc_msgSend_data(MEMORY[0x1E695DEF0], v15, v16);
      }

      sub_19598972C(v17, a2, v10);

      v18 = v21;
      v20 = (v21 + 1);
      a2 = *v18;
    }

    while (*v18);
  }

  return v12;
}

id sub_1959958C4(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = IMFormatPhoneNumber(a1, 1);
  v4 = objc_msgSend_stringWithFormat_(v1, v3, @"P:%@", v2);

  return v4;
}

uint64_t IMGetKeychainData(void *a1, void *a2, void *a3, void *a4, OSStatus *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = v9;
  v13 = v10;
  v16 = v11;
  if (a5)
  {
    *a5 = 0;
  }

  if (!objc_msgSend_length(v12, v14, v15))
  {
    v22 = objc_msgSend_warning(IMRGLog, v17, v18);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1959D5058();
    }

    goto LABEL_25;
  }

  if (!objc_msgSend_length(v13, v17, v18))
  {
    v22 = objc_msgSend_warning(IMRGLog, v19, v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1959D4FE4();
    }

LABEL_25:
    v32 = 0;
    goto LABEL_26;
  }

  v21 = *MEMORY[0x1E697AEB8];
  v22 = v16;
  v23 = *MEMORY[0x1E695E480];
  v24 = v13;
  v25 = v12;
  Mutable = CFDictionaryCreateMutable(v23, 0, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AEB0], v21);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], v25);

  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], v24);
  if (objc_msgSend_length(v22, v27, v28))
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], v22);
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
  result = 0;
  v29 = SecItemCopyMatching(Mutable, &result);
  v30 = result;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (a5)
  {
    *a5 = v29;
  }

  if (v29)
  {
    v31 = 1;
  }

  else
  {
    v31 = v30 == 0;
  }

  v32 = !v31;
  if (a1 && v32)
  {
    v33 = v30;
    *a1 = v30;
  }

LABEL_26:
  return v32;
}

id IMTruncatedLoggingStringForString(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_description(a1, a2, a3);
  if (objc_msgSend_length(v3, v4, v5) > 0x1D)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_msgSend_substringToIndex_(v3, v6, 30);
    v7 = objc_msgSend_stringWithFormat_(v8, v10, @"<%@...>", v9);
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

void im_dispatch_async_with_timeout(dispatch_time_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("com.apple.ids.async_with_timeout_1", v10);
  v12 = dispatch_queue_create("com.apple.ids.async_with_timeout_2", v10);
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_195996DC8;
  aBlock[3] = &unk_1E7438560;
  v39 = v43;
  v40 = v41;
  v37 = v8;
  v38 = v9;
  v13 = v9;
  v14 = v8;
  v15 = _Block_copy(aBlock);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1959968C0;
  v34 = sub_195996EC0;
  v35 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v12);
  dispatch_source_set_timer(v31[5], a1, 0xFFFFFFFFFFFFFFFFLL, 0);
  v16 = v31[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1959A0EDC;
  block[3] = &unk_1E7438588;
  v29 = &v30;
  v17 = v15;
  v28 = v17;
  v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_source_set_event_handler(v16, v18);

  dispatch_resume(v31[5]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1959964FC;
  v22[3] = &unk_1E74385D8;
  v23 = v12;
  v24 = v7;
  v25 = v17;
  v26 = &v30;
  v19 = v17;
  v20 = v12;
  v21 = v7;
  dispatch_async(v11, v22);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);
}

void sub_1959964FC(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195996CB4;
  v5[3] = &unk_1E74385B0;
  v2 = *(a1 + 40);
  v6 = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  (*(v2 + 16))(v2, v5);
}

uint64_t sub_1959968C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1959968E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1959968F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_195996900(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL IMGetCachedDomainBoolForKey(CFStringRef applicationID, CFStringRef key)
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(key, applicationID, &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

__CFString *IMCanonicalizeFormattedString(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = IMNormalizeFormattedString(v3, a2);
    if (objc_msgSend_length(v5, v6, v7) && (a2 == 3 || !a2 && IMStringIsPhoneNumber(v4)))
    {
      v9 = objc_msgSend_stringByAppendingString_(@"+", v8, v5);
    }

    else
    {
      v9 = v4;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

__CFString *IMNormalizeFormattedString(void *a1, uint64_t a2)
{
  v3 = a1;
  v6 = v3;
  switch(a2)
  {
    case 3:
      v7 = IMFormatPhoneNumber(v3, 0);
      goto LABEL_7;
    case 2:
      v7 = objc_msgSend_lowercaseString(v3, v4, v5);
      goto LABEL_7;
    case 1:
      v7 = v3;
LABEL_7:
      v10 = v7;
      v11 = objc_msgSend_length(v7, v8, v9);
      goto LABEL_9;
  }

  v10 = 0;
  v11 = objc_msgSend_length(0, v4, v5);
LABEL_9:
  if (v11)
  {
    v12 = v10;
  }

  else if (IMStringIsEmail(v6) || !IMStringIsPhoneNumber(v6))
  {
    v12 = objc_msgSend_lowercaseString(v6, v13, v14);
  }

  else
  {
    v12 = IMFormatPhoneNumber(v6, 0);
  }

  v15 = v12;

  return v15;
}

uint64_t IMInsertDatasToXPCDictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (v10)
  {
    v11 = a2 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    v19 = &a9;
    do
    {
      v13 = v19;
      v20 = v19 + 1;
      v16 = *v13;
      if (!v16)
      {
        v16 = objc_msgSend_data(MEMORY[0x1E695DEF0], v14, v15);
      }

      sub_19598972C(v16, a2, v10);

      v17 = v20;
      v19 = (v20 + 1);
      a2 = *v17;
    }

    while (*v17);
  }

  return v12;
}

_DWORD *sub_195996BA0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  v3 = (*(*(a1 + 40) + 16))();
  v5 = objc_msgSend_dataUsingEncoding_(v3, v4, 4);
  v8 = objc_msgSend_length(v5, v6, v7);
  v9 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
  v11 = v9;
  if (v9)
  {
    *v9 = 1;
    v9[1] = v8;
    v12 = objc_msgSend_dataUsingEncoding_(*(a1 + 32), v10, 4);
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      v17 = objc_msgSend_bytes(v14, v15, v16);
      v20 = objc_msgSend_length(v13, v18, v19);
      if (v20 >= 0x3F)
      {
        v21 = 63;
      }

      else
      {
        v21 = v20;
      }

      memcpy(v11 + 34, v17, v21);
    }

    v22 = v5;
    v25 = objc_msgSend_bytes(v22, v23, v24);
    memcpy(v11 + 50, v25, v8);
  }

  return v11;
}

void sub_195996CB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195996D60;
  block[3] = &unk_1E7438588;
  v4 = *(a1 + 40);
  v2 = v4;
  v6 = v4;
  v3 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v1, v3);
}

uint64_t sub_195996D60(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

uint64_t sub_195996DC8(uint64_t result, int a2)
{
  v2 = result;
  if (++*(*(*(result + 48) + 8) + 24) == 1)
  {
    result = *(result + 32);
    if (result)
    {
      if (a2)
      {
        *(*(v2[7] + 8) + 24) = 1;
        result = v2[4];
      }

      result = (*(result + 16))(result, *(*(v2[7] + 8) + 24));
      if ((*(*(v2[7] + 8) + 24) & 1) == 0)
      {
        result = (*(v2[5] + 16))();
      }
    }
  }

  if (*(*(v2[7] + 8) + 24) == 1 && *(*(v2[6] + 8) + 24) == 2)
  {
    v3 = *(v2[5] + 16);

    return v3();
  }

  return result;
}

id sub_195996EEC(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v2;
  v15 = v2;
  v3 = a1;
  v6 = objc_msgSend_bytes(v3, v4, v5, v14, v15);
  v9 = objc_msgSend_length(a1, v7, v8);
  CC_SHA256(v6, v9, &v14);
  v11 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v10, &v14, 32);
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id sub_195996F94(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v13, 170, 20);
  v2 = a1;
  v5 = objc_msgSend_bytes(v2, v3, v4, *v13, *&v13[8], *&v13[16], v14);
  v8 = objc_msgSend_length(a1, v6, v7);
  CC_SHA1(v5, v8, v13);
  v10 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v9, v13, 20);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

BOOL IMShouldLog(void *a1, uint64_t a2)
{
  v3 = a1;
  if ((byte_1ED517431 & 1) == 0 && qword_1ED517438 != -1)
  {
    sub_1959D6544();
  }

  if (dword_1ED517078 < 1)
  {
    v6 = 0;
  }

  else
  {
    if ((byte_1ED517431 & 1) == 0 && qword_1ED517438 != -1)
    {
      sub_1959D6544();
    }

    pthread_mutex_lock(&stru_1ED517038);
    v5 = objc_msgSend_objectForKey_(qword_1ED517450, v4, v3);

    if (v5)
    {
      v6 = sub_195997964(v3) >= a2;
    }

    else
    {
      v6 = 0;
    }

    pthread_mutex_unlock(&stru_1ED517038);
  }

  return v6;
}

uint64_t sub_195997964(void *a1)
{
  v1 = __IMCopyCachedStringKey(a1, @"LogLevel", &stru_1F09D3C40);
  v3 = objc_msgSend_objectForKey_(qword_1EAED9420, v2, v1);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_intValue(v3, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

const void *__IMCopyCachedStringKey(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (qword_1EAED8C00 != -1)
  {
    sub_1959D6530();
  }

  v8 = CFHash(v5);
  v9 = CFHash(v6);
  v10 = NSMapGet(qword_1EAED8BF0, (v9 + v8));
  if (!v10 || (v13 = CFRetain(v10)) == 0)
  {
    if (objc_msgSend_length(v7, v11, v12))
    {
      v15 = objc_msgSend_stringByAppendingString_(v5, v14, v7);
      v13 = objc_msgSend_stringByAppendingString_(v15, v16, v6);
    }

    else
    {
      v13 = objc_msgSend_stringByAppendingString_(v5, v14, v6);
    }

    pthread_mutex_lock(&stru_1EAED7D10);
    v17 = qword_1EAED8BF0;
    v22 = qword_1EAED8BF0;
    NSMapInsert(qword_1EAED8BF8, (v9 + v8), v13);
    v18 = qword_1EAED8BF0;
    atomic_compare_exchange_strong(&v22, &v18, qword_1EAED8BF8);
    v19 = qword_1EAED8BF8;
    qword_1EAED8BF8 = v17;
    v20 = v17;

    NSMapInsert(qword_1EAED8BF8, (v9 + v8), v13);
    pthread_mutex_unlock(&stru_1EAED7D10);
  }

  return v13;
}

BOOL sub_195997C58(void *a1, void *a2, void *a3, void *a4, OSStatus *a5, int a6, char a7, int a8)
{
  v76 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v20 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  if (objc_msgSend_length(v16, v18, v19) && objc_msgSend_length(v17, v21, v22) && objc_msgSend_length(v15, v23, v24))
  {
    v69 = a7;
    v70 = v15;
    v25 = MEMORY[0x1E697ABE8];
    if (a8)
    {
      v25 = MEMORY[0x1E697AC00];
    }

    if (a8 == 1)
    {
      v26 = MEMORY[0x1E697AC28];
    }

    else
    {
      v26 = v25;
    }

    allocator = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    v66 = *MEMORY[0x1E697AEB8];
    v64 = *MEMORY[0x1E695E4C0];
    if (a6)
    {
      v28 = *MEMORY[0x1E697AEB8];
    }

    else
    {
      v28 = *MEMORY[0x1E695E4C0];
    }

    key = *MEMORY[0x1E697AEB0];
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AEB0], v28);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], v16);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], v17);
    if (objc_msgSend_length(v20, v29, v30))
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], v20);
    }

    value = *v26;
    v31 = *MEMORY[0x1E697B310];
    v32 = *MEMORY[0x1E695E4D0];
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B310], *MEMORY[0x1E695E4D0]);
    result = 0;
    v33 = SecItemCopyMatching(Mutable, &result);
    v36 = objc_msgSend_keychain(IMRGLog, v34, v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v73 = result;
      *&v73[8] = 1024;
      *&v73[10] = v33;
      _os_log_impl(&dword_195988000, v36, OS_LOG_TYPE_DEFAULT, "Found item %p  error: %d", buf, 0x12u);
    }

    if (result)
    {
      CFDictionaryRemoveValue(Mutable, v31);
      v39 = *MEMORY[0x1E697ABD0];
      CFDictionaryRemoveValue(Mutable, *MEMORY[0x1E697ABD0]);
      v40 = CFDictionaryCreateMutable(allocator, 0, 0, 0);
      if (objc_msgSend_length(v20, v41, v42))
      {
        CFDictionaryAddValue(v40, v39, v20);
      }

      CFDictionaryAddValue(Mutable, key, v66);
      if ((v69 & 1) == 0)
      {
        CFDictionaryAddValue(v40, *MEMORY[0x1E697AEC0], &unk_1F09E4BA0);
      }

      CFDictionaryAddValue(v40, *MEMORY[0x1E697ABD8], value);
      v45 = objc_msgSend_keychain(IMRGLog, v43, v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v73 = Mutable;
        *&v73[8] = 2112;
        *&v73[10] = v40;
        _os_log_impl(&dword_195988000, v45, OS_LOG_TYPE_DEFAULT, "Trying to update item with query: %@   update: %@", buf, 0x16u);
      }

      CFDictionaryAddValue(v40, *MEMORY[0x1E697B3C0], v70);
      v46 = SecItemUpdate(Mutable, v40);
      v49 = objc_msgSend_keychain(IMRGLog, v47, v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v73 = v46;
        _os_log_impl(&dword_195988000, v49, OS_LOG_TYPE_DEFAULT, "   Result: %d", buf, 8u);
      }

      if (v40)
      {
        CFRelease(v40);
      }
    }

    else
    {
      v53 = objc_msgSend_keychain(IMRGLog, v37, v38);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195988000, v53, OS_LOG_TYPE_DEFAULT, "Trying to add query as item", buf, 2u);
      }

      if (a6)
      {
        v54 = v32;
      }

      else
      {
        v54 = v64;
      }

      CFDictionarySetValue(Mutable, key, v54);
      if ((v69 & 1) == 0)
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AEC0], &unk_1F09E4BA0);
      }

      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C0], v70);
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD8], value);
      v46 = SecItemAdd(Mutable, 0);
      v57 = objc_msgSend_keychain(IMRGLog, v55, v56);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v73 = v46;
        _os_log_impl(&dword_195988000, v57, OS_LOG_TYPE_DEFAULT, "   Result: %d", buf, 8u);
      }
    }

    if (result)
    {
      CFRelease(result);
      result = 0;
    }

    if (objc_msgSend_length(v20, v50, v51))
    {
      v60 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v58, @"   accessGroup: %@", v20);
    }

    else
    {
      v60 = &stru_1F09D3C40;
    }

    v52 = v46 == 0;
    if (v46)
    {
      v61 = objc_msgSend_warning(IMRGLog, v58, v59);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109890;
        *v73 = v46;
        *&v73[4] = 2112;
        *&v73[6] = v16;
        *&v73[14] = 2112;
        *&v73[16] = v17;
        v74 = 2112;
        v75 = v60;
        _os_log_fault_impl(&dword_195988000, v61, OS_LOG_TYPE_FAULT, "IMSetKeychainData: %d -- Could not store data for service: %@   account: %@%@", buf, 0x26u);
      }
    }

    else
    {
      v61 = objc_msgSend_keychain(IMRGLog, v58, v59);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v73 = v16;
        *&v73[8] = 2112;
        *&v73[10] = v17;
        _os_log_impl(&dword_195988000, v61, OS_LOG_TYPE_DEFAULT, "Stored password data for service: %@   account: %@", buf, 0x16u);
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (a5)
    {
      *a5 = v46;
    }

    v15 = v70;
  }

  else
  {
    v52 = 0;
  }

  v62 = *MEMORY[0x1E69E9840];
  return v52;
}

id sub_195998390(void *a1, const char *a2)
{
  if (objc_msgSend_hasPrefix_(a1, a2, @"urn:"))
  {
    v5 = a1;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_msgSend_lowercaseString(a1, v3, v4);
    v5 = objc_msgSend_stringWithFormat_(v6, v8, @"urn:%@", v7);
  }

  return v5;
}

BOOL IMGetDomainBoolForKey(CFStringRef applicationID, CFStringRef key)
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(key, applicationID, &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

uint64_t sub_1959984B0()
{
  qword_1ED517330 = os_log_create("com.apple.Registration", "ActiveID");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_195998560()
{
  v25 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v25, v11, v24, v23, v22, v21, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, 0);
  v13 = qword_1ED517478;
  qword_1ED517478 = v12;

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  qword_1ED517480 = objc_msgSend_setWithObjects_(v14, v19, v15, v16, v17, v18, 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_19599875C()
{
  qword_1ED517290 = os_log_create("com.apple.Registration", "NSUUID");

  return MEMORY[0x1EEE66BB8]();
}

id sub_195998DEC()
{
  if (qword_1EAED8E20 != -1)
  {
    sub_1959D3A54();
  }

  v1 = qword_1EAED8E18;

  return v1;
}

void sub_195998E30()
{
  v0 = IMWeakLinkClass();
  if (v0)
  {
    qword_1EAED8E18 = objc_alloc_init(v0);

    MEMORY[0x1EEE66BB8]();
  }

  else
  {
    v1 = sub_195998EB8();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1959D3A68(v1);
    }
  }
}

id sub_195998EB8()
{
  if (qword_1EAED8E30 != -1)
  {
    sub_1959D3AAC();
  }

  v1 = qword_1EAED8E28;

  return v1;
}

void IMReportAutoBugCapture(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v16 = sub_195998DEC();
  if (v16)
  {
    v17 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v14, v15);
    v20 = objc_msgSend_bundleIdentifier(v17, v18, v19);
    v22 = objc_msgSend_signatureWithDomain_type_subType_subtypeContext_detectedProcess_triggerThresholdValues_(v16, v21, v9, v10, v11, v12, v20, 0);

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_195999184;
    v28[3] = &unk_1E7438350;
    v23 = v22;
    v29 = v23;
    LODWORD(v22) = objc_msgSend_snapshotWithSignature_delay_events_payload_actions_reply_(v16, v24, v23, 0, v13, 0, v28, 15.0);
    v25 = sub_195998EB8();
    v26 = v25;
    if (v22)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v23;
        _os_log_impl(&dword_195988000, v26, OS_LOG_TYPE_DEFAULT, "Auto Bug Capture took a snapshot for signature %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1959D3AC0(v23, v26);
    }
  }

  else
  {
    v23 = sub_195998EB8();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413314;
      v31 = v9;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v11;
      v36 = 2112;
      v37 = v12;
      v38 = 2112;
      v39 = v13;
      _os_log_error_impl(&dword_195988000, v23, OS_LOG_TYPE_ERROR, "Dropping ABC domain:%@ type:%@ subType:%@ subtypeContext:%@ payload:%@", buf, 0x34u);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_195999184(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sub_195998EB8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_195988000, v4, OS_LOG_TYPE_DEFAULT, "Received response from Auto Bug Capture for signature %@ - response: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19599924C()
{
  qword_1EAED8E28 = os_log_create("com.apple.imfoundation", "AutoBugCapture");

  return MEMORY[0x1EEE66BB8]();
}

id IMCanonicalFormForEmail(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_lowercaseString(a1, a2, a3);
  if (objc_msgSend_hasMobileMeSuffix(v3, v4, v5))
  {
    v8 = objc_msgSend_stripMobileMSuffixIfPresent(v3, v6, v7);

    v3 = objc_msgSend_stringByAppendingString_(v8, v9, @"@icloud.com");
  }

  return v3;
}

uint64_t IMAreEmailsLogicallyTheSame(void *a1, void *a2)
{
  v3 = a2;
  v6 = IMCanonicalFormForEmail(a1, v4, v5);
  v9 = IMCanonicalFormForEmail(v3, v7, v8);

  isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v6, v10, v9);
  return isEqualToIgnoringCase;
}

uint64_t IMStringIsInHardcodedEmergencyNumberSet(void *a1)
{
  v1 = qword_1EAED8A98;
  v2 = a1;
  if (v1 != -1)
  {
    sub_1959D3B38();
  }

  v3 = qword_1EAED8AA0;
  v4 = IMNormalizedPhoneNumberForPhoneNumber(v2);

  v6 = objc_msgSend_containsObject_(v3, v5, v4);
  return v6;
}

void sub_19599940C(uint64_t a1, const char *a2, uint64_t a3)
{
  v37 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3);
  v3 = IMNormalizedPhoneNumberForPhoneNumber(@"911");
  objc_msgSend_addObject_(v37, v4, v3);

  v5 = IMNormalizedPhoneNumberForPhoneNumber(@"112");
  objc_msgSend_addObject_(v37, v6, v5);

  v7 = IMNormalizedPhoneNumberForPhoneNumber(@"000");
  objc_msgSend_addObject_(v37, v8, v7);

  v9 = IMNormalizedPhoneNumberForPhoneNumber(@"08");
  objc_msgSend_addObject_(v37, v10, v9);

  v11 = IMNormalizedPhoneNumberForPhoneNumber(@"110");
  objc_msgSend_addObject_(v37, v12, v11);

  v13 = IMNormalizedPhoneNumberForPhoneNumber(@"118");
  objc_msgSend_addObject_(v37, v14, v13);

  v15 = IMNormalizedPhoneNumberForPhoneNumber(@"119");
  objc_msgSend_addObject_(v37, v16, v15);

  v17 = IMNormalizedPhoneNumberForPhoneNumber(@"103");
  objc_msgSend_addObject_(v37, v18, v17);

  v19 = IMNormalizedPhoneNumberForPhoneNumber(@"105");
  objc_msgSend_addObject_(v37, v20, v19);

  v21 = IMNormalizedPhoneNumberForPhoneNumber(@"115");
  objc_msgSend_addObject_(v37, v22, v21);

  v23 = IMNormalizedPhoneNumberForPhoneNumber(@"100");
  objc_msgSend_addObject_(v37, v24, v23);

  v25 = IMNormalizedPhoneNumberForPhoneNumber(@"122");
  objc_msgSend_addObject_(v37, v26, v25);

  v27 = IMNormalizedPhoneNumberForPhoneNumber(@"105");
  objc_msgSend_addObject_(v37, v28, v27);

  v29 = IMNormalizedPhoneNumberForPhoneNumber(@"190");
  objc_msgSend_addObject_(v37, v30, v29);

  v31 = IMNormalizedPhoneNumberForPhoneNumber(@"133");
  objc_msgSend_addObject_(v37, v32, v31);

  v35 = objc_msgSend_copy(v37, v33, v34);
  v36 = qword_1EAED8AA0;
  qword_1EAED8AA0 = v35;
}

uint64_t IMStringIsEmergencyPhoneNumber(void *a1)
{
  v1 = qword_1EAED89B8;
  v4 = a1;
  if (v1 != -1)
  {
    sub_1959D3B4C();
  }

  v5 = objc_msgSend_sharedInstance(qword_1EAED89C0, v2, v3);
  isPhoneNumberEmergencyNumber = objc_msgSend_isPhoneNumberEmergencyNumber_(v5, v6, v4);

  return isPhoneNumberEmergencyNumber;
}

uint64_t sub_195999774()
{
  result = IMWeakLinkClass();
  qword_1EAED89C0 = result;
  return result;
}

BOOL IMStringIsEmpty(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_trimmedString(a1, a2, a3);
  v6 = objc_msgSend_length(v3, v4, v5) == 0;

  return v6;
}

id sub_1959997E0(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3);

  if (v4 == a1)
  {
    v8 = qword_1EAED8E38;
    if (!qword_1EAED8E38)
    {
      v9 = objc_msgSend_resourcePath(a1, v5, v6);
      v10 = qword_1EAED8E38;
      qword_1EAED8E38 = v9;

      v8 = qword_1EAED8E38;
    }

    v7 = v8;
  }

  else
  {
    v7 = objc_msgSend_resourcePath(a1, v5, v6);
  }

  return v7;
}

BOOL sub_19599986C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_null(MEMORY[0x1E695DFB0], a2, a3);
  v5 = v4 == a1;

  return v5;
}

id sub_1959998AC(void *a1, const char *a2, const char *a3)
{
  v5 = objc_msgSend_methodSignatureForSelector_(a1, a2, a3);
  if (!v5)
  {
    v8 = objc_msgSend_protocol(a1, v6, v7);
    MethodDescription = protocol_getMethodDescription(v8, a3, 0, 1);

    if (MethodDescription.name)
    {
      v5 = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x1E695DF68], v10, MethodDescription.types);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t sub_195999940(uint64_t a1)
{
  v2 = qword_1EAED8E40;
  if (!qword_1EAED8E40)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v4 = qword_1EAED8E40;
    qword_1EAED8E40 = v3;

    objc_msgSend_setFormatterBehavior_(qword_1EAED8E40, v5, 1040);
    objc_msgSend_setNumberStyle_(qword_1EAED8E40, v6, 0);
    v2 = qword_1EAED8E40;
  }

  return MEMORY[0x1EEE66B58](v2, sel_stringFromNumber_, a1);
}

id sub_1959999B4(uint64_t a1, const char *a2)
{
  v2 = qword_1EAED8E48;
  if (!qword_1EAED8E48)
  {
    v3 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"\\:");
    v4 = qword_1EAED8E48;
    qword_1EAED8E48 = v3;

    v2 = qword_1EAED8E48;
  }

  return v2;
}

id sub_195999A14(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_copyStringGUIDForObject_(a1, a2, a3);

  return v3;
}

uint64_t FastRandomUInt()
{
  if (qword_1EAED8D88 != -1)
  {
    sub_1959D3B60();
  }

  return random();
}

id sub_195999AC8()
{
  v0 = FastRandomUInt() % 0x3B9ACA00;
  v1 = FastRandomUInt();
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v2, @"Chat%u%u", v0, v1 % 0x3B9ACA00);
  v6 = objc_msgSend_lowercaseString(v3, v4, v5);

  return v6;
}

uint64_t sub_195999BA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  objc_msgSend_fileExistsAtPath_isDirectory_(v4, v5, a1, &v7);

  return v7;
}

uint64_t sub_195999BFC(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 170, sizeof(v10));
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v4 = objc_msgSend_length(a1, a2, a3);
  result = objc_msgSend_getBytes_maxLength_usedLength_encoding_options_range_remainingRange_(a1, v5, v10, 15, &v9, 4, 1, 0, v4, 0);
  if (result)
  {
    v10[v9] = 0;
    v8 = 0xAAAAAAAAAAAAAAAALL;
    if (sscanf(v10, "%lx", &v8) == 1)
    {
      result = v8;
    }

    else
    {
      result = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195999CC4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_length(a1, v5, v6);
  v10 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x1E695DF58], v8, v9);
  v12 = objc_msgSend_compare_options_range_locale_(a1, v11, v4, 961, 0, v7, v10);

  return v12;
}

__CFString *sub_195999D40(CFStringRef originalString)
{
  v1 = CFURLCreateStringByReplacingPercentEscapes(0, originalString, &stru_1F09D3C40);

  return v1;
}

id sub_195999D78(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x1E696AB08], a2, a3);
  v6 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(a1, v5, v4);

  return v6;
}

id sub_195999DD8(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_length(a1, a2, a3))
  {
    v7 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v4, a1);
    if (!v7)
    {
      v8 = objc_msgSend_stringByRemovingURLEscapes(a1, v5, v6);
      v11 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x1E696AB08], v9, v10);
      v14 = objc_msgSend_mutableCopy(v11, v12, v13);

      objc_msgSend_addCharactersInString_(v14, v15, @"#");
      v17 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v8, v16, v14);
      if (objc_msgSend_length(v17, v18, v19))
      {
        v7 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v20, v17);
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_195999ECC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_lowercaseString(a1, a2, a3);
  if (objc_msgSend_hasPrefix_(v3, v4, @"urn:biz:"))
  {
    v6 = v3;
  }

  else
  {
    if (objc_msgSend_hasPrefix_(v3, v5, @"biz:"))
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"urn:%@", v3);
    }

    else
    {
      objc_msgSend_stringByAppendingString_(@"urn:biz:", v7, v3);
    }
    v6 = ;
  }

  v8 = v6;

  return v8;
}

id sub_195999F78(void *a1, const char *a2)
{
  if (objc_msgSend_hasPrefix_(a1, a2, @"temp:"))
  {
    v4 = a1;
  }

  else
  {
    v4 = objc_msgSend_stringByAppendingString_(@"temp:", v3, a1);
  }

  return v4;
}

id sub_195999FD4(void *a1, const char *a2)
{
  if (objc_msgSend_hasPrefix_(a1, a2, @"pseud:"))
  {
    v4 = a1;
  }

  else
  {
    v4 = objc_msgSend_stringByAppendingString_(@"pseud:", v3, a1);
  }

  return v4;
}

id sub_19599A030(void *a1, const char *a2)
{
  if (objc_msgSend_hasPrefix_(a1, a2, @"dev:"))
  {
    v4 = a1;
  }

  else
  {
    v4 = objc_msgSend_stringByAppendingString_(@"dev:", v3, a1);
  }

  return v4;
}

id sub_19599A08C(void *a1, const char *a2)
{
  if (objc_msgSend_hasPrefix_(a1, a2, @"sip:"))
  {
    v4 = a1;
  }

  else
  {
    v4 = objc_msgSend_stringByAppendingString_(@"sip:", v3, a1);
  }

  return v4;
}

uint64_t sub_19599A12C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__FZBestGuessFZIDType(a1, a2, a3);

  return MEMORY[0x1EEE66B58](a1, sel__URIFromCanonicalizedFZIDType_, v4);
}

id sub_19599A168(void *a1, const char *a2, uint64_t a3)
{
  v4 = 0;
  if (a3 > 2)
  {
    if (a3 <= 4)
    {
      if (a3 == 3)
      {
        objc_msgSend__URIFromCanonicalizedBusinessID(a1, a2, 3);
      }

      else
      {
        objc_msgSend__URIFromCanonicalizedTemporaryID(a1, a2, 4);
      }
      v4 = ;
    }

    else
    {
      switch(a3)
      {
        case 5:
          v4 = objc_msgSend__URIFromCanonicalizedPseudonymID(a1, a2, 5);
          break;
        case 6:
          v4 = objc_msgSend__URIFromCanonicalizedHardwareID(a1, a2, 6);
          break;
        case 7:
          v4 = objc_msgSend__URIFromCanonicalizedSIPID(a1, a2, 7);
          break;
      }
    }

    goto LABEL_20;
  }

  if (a3 > 0)
  {
    if (a3 != 1)
    {
      v4 = objc_msgSend__URIFromCanonicalizedDSID(a1, a2, 2);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (a3 == -1)
  {
LABEL_16:
    v4 = objc_msgSend__URIFromCanonicalizedEmail(a1, a2, a3);
    goto LABEL_20;
  }

  if (!a3)
  {
    v4 = objc_msgSend__URIFromCanonicalizedPhoneNumber(a1, a2, 0);
  }

LABEL_20:

  return v4;
}

id sub_19599A26C(void *a1, const char *a2, uint64_t a3)
{
  v4 = 0;
  if (a3 > 2)
  {
    if (a3 <= 4)
    {
      if (a3 == 3)
      {
        objc_msgSend__URIFromBusinessID(a1, a2, 3);
      }

      else
      {
        objc_msgSend__URIFromTemporaryID(a1, a2, 4);
      }
      v4 = ;
    }

    else
    {
      switch(a3)
      {
        case 5:
          v4 = objc_msgSend__URIFromPseudonymID(a1, a2, 5);
          break;
        case 6:
          v4 = objc_msgSend__URIFromHardwareID(a1, a2, 6);
          break;
        case 7:
          v4 = objc_msgSend__URIFromSIPID(a1, a2, 7);
          break;
      }
    }

    goto LABEL_20;
  }

  if (a3 > 0)
  {
    if (a3 != 1)
    {
      v4 = objc_msgSend__URIFromDSID(a1, a2, 2);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (a3 == -1)
  {
LABEL_16:
    v4 = objc_msgSend__URIFromEmail(a1, a2, a3);
    goto LABEL_20;
  }

  if (!a3)
  {
    v4 = objc_msgSend__URIFromPhoneNumber(a1, a2, 0);
  }

LABEL_20:

  return v4;
}

id sub_19599A370(void *a1, const char *a2, uint64_t a3)
{
  v4 = 0;
  if (a3 <= 2)
  {
    if (a3 > 0)
    {
      if (a3 != 1)
      {
        goto LABEL_11;
      }
    }

    else if (a3 != -1)
    {
      if (!a3)
      {
        v4 = objc_msgSend__FZIDFromPhoneNumber(a1, a2, 0);
      }

      goto LABEL_14;
    }

    v4 = objc_msgSend__FZIDFromEmail(a1, a2, a3);
    goto LABEL_14;
  }

  if (a3 < 6)
  {
    goto LABEL_11;
  }

  if (a3 == 6)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"A:%@", a1);
    goto LABEL_14;
  }

  if (a3 == 7)
  {
LABEL_11:
    v4 = a1;
  }

LABEL_14:

  return v4;
}

id sub_19599A44C(void *a1, const char *a2, void *a3)
{
  if ((objc_msgSend_hasPrefix_(a1, a2, @"token:") & 1) != 0 || objc_msgSend_hasPrefix_(a1, v5, @"self-token:"))
  {
    v7 = objc_msgSend__stripFZIDPrefix(a1, v5, v6);
    v9 = objc_msgSend_rangeOfString_(v7, v8, @"/");
    v12 = v9;
    if (a3)
    {
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v7;
      }

      else
      {
        v13 = objc_msgSend_substringToIndex_(v7, v10, v9);
      }

      v16 = v13;
      *a3 = objc_msgSend___imDataWithHexString_(MEMORY[0x1E695DEF0], v14, v13);
    }

    if (objc_msgSend_length(v7, v10, v11) <= (v12 + 1))
    {
      v15 = 0;
    }

    else
    {
      v15 = objc_msgSend_substringFromIndex_(v7, v17, v12 + 1);
    }
  }

  else
  {
    v15 = a1;
  }

  return v15;
}

id sub_19599A558(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = objc_msgSend_UTF8String(v1, v2, v3);
  memset(md, 170, sizeof(md));
  v5 = strlen(v4);
  CC_MD5(v4, v5, md);
  v6 = objc_alloc(MEMORY[0x1E696AD60]);
  v9 = objc_msgSend_initWithCapacity_(v6, v7, 32);
  for (i = 0; i != 16; ++i)
  {
    objc_msgSend_appendFormat_(v9, v8, @"%02x", md[i], *md, *&md[8], v14);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

__CFString *IMCopyStringWithLatinNumbers(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
    return 0;
  }

  v3 = Length;
  Mutable = CFStringCreateMutable(0, Length);
  for (i = 0; i != v3; ++i)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, i);
    chars = CharacterAtIndex;
    v7 = u_charDigitValue(CharacterAtIndex);
    if (v7 == -1)
    {
      CFStringAppendCharacters(Mutable, &chars, 1);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"%d", v7);
    }
  }

  return Mutable;
}

id sub_19599A710(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_stringByExpandingTildeInPath(a1, a2, a3);
  v6 = objc_msgSend_stringByStandardizingPath(v3, v4, v5);

  v9 = objc_msgSend_stringByResolvingSymlinksInPath(v6, v7, v8);

  v10 = v9;
  v13 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v11, v10, 0);
  v14 = v10;
  if (v13)
  {
    v15 = objc_msgSend_URLByResolvingAliasFileAtURL_options_error_(MEMORY[0x1E695DFF8], v12, v13, 0, 0);
    v18 = v15;
    v14 = v10;
    if (v15)
    {
      v14 = objc_msgSend_path(v15, v16, v17);
    }
  }

  return v14;
}

uint64_t sub_19599A7E8(uint64_t a1, const char *a2)
{
  v3 = qword_1EAED8E50;
  if (!qword_1EAED8E50)
  {
    v4 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], a2, 0);
    v5 = qword_1EAED8E50;
    qword_1EAED8E50 = v4;

    v3 = qword_1EAED8E50;
  }

  return MEMORY[0x1EEE66B58](a1, sel_rangeOfCharacterFromSet_options_range_, v3);
}

id sub_19599A864(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], a2, a3);
  v6 = objc_msgSend_stringByTrimmingCharactersInSet_(a1, v5, v4);

  return v6;
}

id sub_19599A8C4(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v7 = objc_msgSend_lastPathComponent(a1, v5, v6);
  v10 = objc_msgSend_stringByDeletingPathExtension(v7, v8, v9);
  v13 = objc_msgSend_stringByDeletingLastPathComponent(a1, v11, v12);
  v16 = objc_msgSend_pathExtension(a1, v14, v15);
  v18 = objc_msgSend_uniqueFilename_atPath_ofType_(v4, v17, v10, v13, v16);

  return v18;
}

__CFString *sub_19599A988(void *a1)
{
  v2 = sub_195992BB0();
  v4 = objc_msgSend_stringByRemovingCharactersFromSet_(a1, v3, v2);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F09D3C40;
  }

  v7 = v6;

  return v6;
}

id sub_19599A9F4(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_length(a1, a2, a3))
  {
    v6 = objc_msgSend_trimmedString(a1, v4, v5);
    v9 = objc_msgSend___stringByStrippingAttachmentAndControlCharacters(v6, v7, v8);

    v12 = objc_msgSend_mutableCopy(v9, v10, v11);
    objc_msgSend_replaceNewlinesWithSpaces(v12, v13, v14);
  }

  else
  {
    v12 = a1;
  }

  return v12;
}

__CFString *sub_19599AAA8(__CFString *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_length(a1, v5, v6);
  if (v7 << 32 && (v19.length = v7, v19.location = 0, CFStringFindCharacterFromSet(a1, v4, v19, 0, 0)))
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if (objc_msgSend_length(a1, v9, v10))
    {
      v12 = 0;
      do
      {
        v13 = objc_msgSend_characterAtIndex_(a1, v11, v12);
        if ((objc_msgSend_characterIsMember_(v4, v14, v13) & 1) == 0)
        {
          objc_msgSend_appendFormat_(v8, v15, @"%C", v13);
        }

        ++v12;
      }

      while (v12 < objc_msgSend_length(a1, v15, v16));
    }
  }

  else
  {
    v8 = a1;
  }

  return v8;
}

BOOL sub_19599ABA8(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], a2, a3);
  v7 = objc_msgSend_mutableCopy(v4, v5, v6);

  objc_msgSend_invert(v7, v8, v9);
  v11 = objc_msgSend_stringByTrimmingCharactersInSet_(a1, v10, v7);
  v14 = objc_msgSend_length(v11, v12, v13) > 5;

  return v14;
}

id sub_19599AC24(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v9 = objc_msgSend_query(a1, v7, v8);
    v10 = @"&";
    if (!v9)
    {
      v10 = @"?";
    }

    v11 = v10;

    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = objc_msgSend_absoluteString(a1, v13, v14);
    v17 = objc_msgSend_initWithFormat_(v12, v16, @"%@%@%@", v15, v11, v4);

    v19 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v18, v17);
  }

  else
  {
    v19 = a1;
  }

  return v19;
}

uint64_t sub_19599AD1C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_length(a1, a2, a3);
  result = objc_msgSend___rangeOfNewlineInRange_(a1, v5, 0, v4);
  if (v7)
  {
    v8 = result;
    do
    {
      objc_msgSend_replaceCharactersInRange_withString_(a1, v7, v8, v7, @" ");
      result = objc_msgSend___rangeOfNewlineInRange_(a1, v9, 0, v8);
      v8 = result;
    }

    while (v7);
  }

  return result;
}

BOOL sub_19599AD94(void *a1, const char *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = a4;
  v11 = a5;
  v5 = a5 + a4;
  if (a4 >= a5 + a4)
  {
    return 0;
  }

  do
  {
    v8 = objc_msgSend_attribute_atIndex_effectiveRange_(a1, a2, a3, v10, v11);

    result = v8 != 0;
  }

  while (!v8 && v11 + v10 < v5);
  return result;
}

id sub_19599AE18(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_string(a1, a2, a3);
  v7 = objc_msgSend_trimmedString(v4, v5, v6);
  v10 = objc_msgSend_length(v7, v8, v9);
  if (v10 == objc_msgSend_length(a1, v11, v12))
  {
    goto LABEL_2;
  }

  if (v10)
  {
    v15 = objc_msgSend_rangeOfString_(v4, v13, v7);
    if (v16)
    {
      v14 = objc_msgSend_attributedSubstringFromRange_(a1, v16, v15, v16);
      goto LABEL_6;
    }

LABEL_2:
    v14 = a1;
LABEL_6:
    v17 = v14;
    goto LABEL_7;
  }

  v17 = 0;
LABEL_7:

  return v17;
}

void *IMCreateSuperFormatStringWithAppendedFileTransfers(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_mutableCopy(a1, v4, v5);
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v25, v29, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v13 = objc_alloc(MEMORY[0x1E695DF20]);
        v15 = objc_msgSend_initWithObjectsAndKeys_(v13, v14, v12, @"__kIMFileTransferGUIDAttributeName", 0);
        v16 = objc_alloc(MEMORY[0x1E696AAB0]);
        v18 = objc_msgSend_initWithString_attributes_(v16, v17, @"\uFFFC", v15);
        objc_msgSend_appendAttributedString_(v6, v19, v18);

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v25, v29, 16);
    }

    while (v9);
  }

  v21 = IMCreateSuperFormatStringByAttachingMessageParts(v6);
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void *IMCreateSuperFormatStringByAttachingMessageParts(void *a1)
{
  v1 = a1;
  if (!objc_msgSend_length(v1, v2, v3))
  {
    v10 = objc_msgSend_copy(v1, v4, v5);
    goto LABEL_5;
  }

  v6 = objc_msgSend_length(v1, v4, v5);
  if (!objc_msgSend_attribute_existsInRange_(v1, v7, @"__kIMMessagePartAttributeName", 0, v6))
  {
    v36 = v1;
    v11 = objc_msgSend_mutableCopy(v1, v8, v9);
    v14 = objc_msgSend_length(v11, v12, v13);
    objc_msgSend_removeAttribute_range_(v11, v15, @"__kIMMessagePartAttributeName", 0, v14);
    v18 = objc_msgSend_length(v11, v16, v17);
    v22 = objc_msgSend_string(v11, v19, v20);
    if (!v18)
    {
LABEL_21:

      v1 = v36;
      goto LABEL_22;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
    while (1)
    {
      v37 = 0xAAAAAAAAAAAAAAAALL;
      v38 = 0xAAAAAAAAAAAAAAAALL;
      v27 = objc_msgSend_attributesAtIndex_longestEffectiveRange_inRange_(v11, v21, v23, &v37, v23, v18 - v23);
      v29 = objc_msgSend_characterAtIndex_(v22, v28, v37);
      if (v29 == 65532)
      {
        v31 = objc_msgSend_objectForKey_(v27, v30, @"__kIMEmojiImageAttributeName");

        if (!v31)
        {
          if ((v26 & 1) == 0)
          {
LABEL_17:
            v24 = (v24 + 1);
          }

          v25 = 1;
LABEL_19:
          objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v30, v24);
          goto LABEL_20;
        }

        if (v26)
        {
          v25 = 0;
          goto LABEL_19;
        }
      }

      else
      {
        if (v26)
        {
          v25 = v29 == 65533;
          goto LABEL_19;
        }

        if (v29 == 65533)
        {
          goto LABEL_17;
        }
      }

      v32 = v25;
      v25 = 0;
      v24 = (v24 + v32);
      objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v30, v24);
      v33 = LABEL_20:;
      objc_msgSend_addAttribute_value_range_(v11, v34, @"__kIMMessagePartAttributeName", v33, v37, v38);

      v23 = v38 + v37;
      v26 = 0;
      if (v23 >= v18)
      {
        goto LABEL_21;
      }
    }
  }

  v10 = v1;
LABEL_5:
  v11 = v10;
LABEL_22:

  return v11;
}

void sub_19599B260(void *a1, const char *a2, uint64_t a3)
{
  v21 = objc_msgSend_string(a1, a2, a3);
  v6 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v4, v5);
  v9 = objc_msgSend_invertedSet(v6, v7, v8);

  v12 = objc_msgSend_length(a1, v10, v11);
  v14 = objc_msgSend_rangeOfCharacterFromSet_options_(v21, v13, v9, 6);
  v16 = v15;
  if (v15)
  {
    v17 = v14;
  }

  else
  {
    v17 = -1;
  }

  if (v12 > &v15[v17])
  {
    objc_msgSend_deleteCharactersInRange_(a1, v15, &v15[v17], v12 - &v15[v17]);
  }

  if (v16)
  {
    v18 = objc_msgSend_rangeOfCharacterFromSet_options_(v21, v15, v9, 2);
    if (!v19)
    {
      v18 = objc_msgSend_length(v21, 0, v20);
    }

    if (v18)
    {
      objc_msgSend_deleteCharactersInRange_(a1, v19, 0, v18);
    }
  }
}

void sub_19599B34C(void *a1, const char *a2, uint64_t a3)
{
  v16 = objc_msgSend_string(a1, a2, a3);
  v6 = objc_msgSend_length(v16, v4, v5);
  v8 = objc_msgSend___rangeOfNewlineInRange_(v16, v7, 0, v6);
  if (v9)
  {
    v11 = v8;
    v12 = v9;
    objc_msgSend_beginEditing(a1, v9, v10);
    do
    {
      objc_msgSend_replaceCharactersInRange_withString_(a1, v13, v11, v12, @" ");
      v11 = objc_msgSend___rangeOfNewlineInRange_(v16, v14, 0, v11);
      v12 = v13;
    }

    while (v13);
    objc_msgSend_endEditing(a1, 0, v15);
  }
}

void sub_19599B404(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_length(a1, v11, v12);
  if (v13 << 32)
  {
    v15 = 0;
    v16 = v13;
    do
    {
      v20 = 0xAAAAAAAAAAAAAAAALL;
      v21 = 0xAAAAAAAAAAAAAAAALL;
      v17 = objc_msgSend_attribute_atIndex_effectiveRange_(a1, v14, v8, v15, &v20);
      v19 = v17;
      if (v17 == v9 || objc_msgSend_isEqual_(v17, v18, v9))
      {
        if (v10)
        {
          objc_msgSend_addAttribute_value_range_(a1, v18, v8, v10, v20, v21);
        }

        else
        {
          objc_msgSend_removeAttribute_range_(a1, v18, v8, v20, v21);
        }
      }

      v15 = v21 + v20;
    }

    while (v15 < v16);
  }
}

void sub_19599B500(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend_length(a1, v5, v6);
  if (v8)
  {
    v9 = 0;
    do
    {
      v12 = 0xAAAAAAAAAAAAAAAALL;
      v13 = 0xAAAAAAAAAAAAAAAALL;
      v11 = objc_msgSend_attribute_atIndex_effectiveRange_(a1, v7, v4, v9, &v12);
      if (v11)
      {
        objc_msgSend_deleteCharactersInRange_(a1, v10, v12, v13);
        v8 -= v13;
      }

      else
      {
        v9 = v13 + v12;
      }
    }

    while (v9 < v8);
  }
}

id sub_19599B5BC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend__stripPotentialTokenURIWithToken_(v2, v4, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

id sub_19599B62C(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_count(a1, a2, a3))
  {
    v3 = objc_autoreleasePoolPush();
    v4 = JWEncodeKeyedCodableObject(a1);
    v5 = JWDecodeKeyedCodableObject(v4);

    objc_autoreleasePoolPop(v3);
    return v5;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_19599B6C0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_count(a1, v5, v6);
  if (v7 == objc_msgSend_count(v4, v8, v9))
  {
    v10 = objc_alloc(MEMORY[0x1E696AB50]);
    v12 = objc_msgSend_initWithArray_(v10, v11, a1);
    v13 = objc_alloc(MEMORY[0x1E696AB50]);
    v15 = objc_msgSend_initWithArray_(v13, v14, v4);
    isEqual = objc_msgSend_isEqual_(v12, v16, v15);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

uint64_t sub_19599B784(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v10 = objc_msgSend_count(a1, v7, v8);
  if (v10 < 1)
  {
LABEL_6:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
    while (1)
    {
      v13 = objc_msgSend_objectAtIndex_(a1, v9, v11);
      if (v13)
      {
        if (!objc_msgSend_performSelector_withObject_(v6, v12, a4, v13))
        {
          break;
        }
      }

      if (v10 == ++v11)
      {
        goto LABEL_6;
      }
    }
  }

  return v11;
}

void sub_19599B85C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_count(a1, v5, v6);
  if (v4 && v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19599B900;
    v9[3] = &unk_1E74383B0;
    v10 = v4;
    objc_msgSend_enumerateObjectsUsingBlock_(a1, v8, v9);
  }
}

id sub_19599B910(void *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_count(a1, v5, v6);
  if (!v4 || !v7)
  {
    if (objc_msgSend___imIsMutable(a1, v8, v9))
    {
      v25 = objc_msgSend_copy(a1, v23, v24);
    }

    else
    {
      v25 = a1;
    }

    v26 = v25;
    goto LABEL_24;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v31, v35, 16);
  if (!v13)
  {

LABEL_20:
    if (objc_msgSend___imIsMutable(v11, v20, v21, v31))
    {
      v22 = objc_msgSend_copy(v11, v27, v28);
    }

    else
    {
      v22 = v11;
    }

    goto LABEL_23;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v32;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v32 != v16)
      {
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v31 + 1) + 8 * i);
      if (v4[2](v4, v18))
      {
        objc_msgSend_addObject_(v10, v19, v18, v31);
      }

      else
      {
        v15 = 1;
      }
    }

    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v19, &v31, v35, 16);
  }

  while (v14);

  if ((v15 & 1) == 0)
  {
    goto LABEL_20;
  }

  v22 = v10;
LABEL_23:
  v26 = v22;

LABEL_24:
  v29 = *MEMORY[0x1E69E9840];

  return v26;
}

id sub_19599BAD0(void *a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_count(a1, v5, v6);
  if (!v4 || !v7)
  {
    if (objc_msgSend___imIsMutable(a1, v8, v9))
    {
      v27 = objc_msgSend_copy(a1, v25, v26);
    }

    else
    {
      v27 = a1;
    }

    v28 = v27;
    goto LABEL_24;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v33, v37, 16);
  if (!v13)
  {

LABEL_20:
    if (objc_msgSend___imIsMutable(v11, v22, v23, v33))
    {
      v24 = objc_msgSend_copy(v11, v29, v30);
    }

    else
    {
      v24 = v11;
    }

    goto LABEL_23;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v34;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v34 != v16)
      {
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v33 + 1) + 8 * i);
      v20 = (v4)[2](v4, v18);
      if (v20)
      {
        objc_msgSend_addObject_(v10, v19, v20, v33);
        v15 |= v20 != v18;
      }

      else
      {
        v15 = 1;
      }
    }

    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v21, &v33, v37, 16);
  }

  while (v14);

  if ((v15 & 1) == 0)
  {
    goto LABEL_20;
  }

  v24 = v10;
LABEL_23:
  v28 = v24;

LABEL_24:
  v31 = *MEMORY[0x1E69E9840];

  return v28;
}

id sub_19599BCA8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v6 = a4;
  v9 = objc_msgSend_count(a1, v7, v8);
  if (!v6 || !v35 || !v9)
  {
    if (objc_msgSend___imIsMutable(a1, v10, v11))
    {
      v28 = objc_msgSend_copy(a1, v26, v27);
    }

    else
    {
      v28 = a1;
    }

    v29 = v28;
    goto LABEL_28;
  }

  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = a1;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v36, v40, 16);
  if (!v14)
  {

LABEL_24:
    if (objc_msgSend___imIsMutable(v12, v23, v24, v34))
    {
      v25 = objc_msgSend_copy(v12, v30, v31);
    }

    else
    {
      v25 = v12;
    }

    goto LABEL_27;
  }

  v15 = v14;
  v16 = 0;
  v17 = *v37;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v37 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v36 + 1) + 8 * i);
      if ((v6)[2](v6, v19))
      {
        v22 = (v35)[2](v35, v19);
        if (v22)
        {
          objc_msgSend_addObject_(v34, v21, v22);
          v16 |= v22 != v19;
        }

        else
        {
          v16 = 1;
        }
      }

      else
      {
        v16 = 1;
      }
    }

    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v20, &v36, v40, 16);
  }

  while (v15);

  if ((v16 & 1) == 0)
  {
    goto LABEL_24;
  }

  v25 = v34;
LABEL_27:
  v29 = v25;

LABEL_28:
  v32 = *MEMORY[0x1E69E9840];

  return v29;
}

id sub_19599BEC8(void *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = a1;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v22, v27, 16);
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = sub_19599C098;
          v20[3] = &unk_1E74383D8;
          v21 = v6;
          v5[2](v5, v12, v20);
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v22, v27, 16);
      }

      while (v9);
    }

    v16 = objc_msgSend_copy(v6, v14, v15);
  }

  else
  {
    sub_1959D3B74(a2, a1, &v26);
    v16 = v26;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t sub_19599C098(uint64_t result, const char *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      return objc_msgSend_setObject_forKeyedSubscript_(*(result + 32), a2, a3, a2);
    }
  }

  return result;
}

void sub_19599C0B0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_count(a1, v5, v6);
  if (v4 && v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19599C154;
    v9[3] = &unk_1E7438400;
    v10 = v4;
    objc_msgSend_enumerateObjectsUsingBlock_(a1, v8, v9);
  }
}

id sub_19599C164(void *a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_count(a1, v5, v6);
  if (v4 && v7)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = a1;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v22, v26, 16);
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v18 = v4[2](v4, *(*(&v22 + 1) + 8 * i));
          if (v18)
          {
            objc_msgSend_addObject_(v10, v17, v18, v22);
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v19, &v22, v26, 16);
      }

      while (v14);
    }
  }

  else
  {
    v10 = objc_msgSend_set(MEMORY[0x1E695DFD8], v8, v9);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

id sub_19599C2E0(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_count(a1, a2, a3))
  {
    v3 = objc_autoreleasePoolPush();
    v4 = JWEncodeKeyedCodableObject(a1);
    v5 = JWDecodeKeyedCodableObject(v4);

    objc_autoreleasePoolPop(v3);
    return v5;
  }

  else
  {

    return a1;
  }
}

CFMutableSetRef sub_19599C374()
{
  v0 = *(MEMORY[0x1E695E9F8] + 16);
  *&v3.version = *MEMORY[0x1E695E9F8];
  *&v3.release = v0;
  *&v3.equal = *(MEMORY[0x1E695E9F8] + 32);
  v3.retain = 0;
  v3.release = 0;
  v1 = CFSetCreateMutable(0, 0, &v3);

  return v1;
}

unint64_t sub_19599C3CC(void *a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_count(a1, a2, a3);
  if (result >= 2)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      v7 = arc4random_uniform(v5);
      result = objc_msgSend_exchangeObjectAtIndex_withObjectAtIndex_(a1, v8, i, v7);
    }
  }

  return result;
}

CFMutableArrayRef sub_19599C42C()
{
  v0 = *(MEMORY[0x1E695E9C0] + 16);
  *&v2.version = *MEMORY[0x1E695E9C0];
  *&v2.release = v0;
  v2.equal = *(MEMORY[0x1E695E9C0] + 32);
  v2.retain = 0;
  v2.release = 0;
  return CFArrayCreateMutable(0, 0, &v2);
}

uint64_t sub_19599C474(uint64_t a1)
{
  if (_CFDictionaryIsMutable())
  {
    return 1;
  }

  v3 = objc_opt_class();

  return MEMORY[0x1EEE66B58](a1, sel_isMemberOfClass_, v3);
}

id sub_19599C4D0(void *a1, uint64_t a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = a1;
  v7 = v4;
  v8 = v5;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = objc_msgSend_allKeys(v6, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v50, v54, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v51;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v50 + 1) + 8 * i);
        v19 = objc_msgSend_objectForKey_(v6, v14, v18);
        v21 = objc_msgSend_objectForKey_(v7, v20, v18);
        v24 = v21;
        if (v19 != v21)
        {
          v25 = !v19 || v21 == 0;
          if (v25 || (objc_msgSend_isNull(v19, v22, v23) & 1) != 0 || (objc_msgSend_isNull(v24, v22, v26) & 1) != 0 || (objc_msgSend_isEqual_(v19, v22, v24) & 1) == 0)
          {
            objc_msgSend_addObject_(v8, v22, v18);
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v50, v54, 16);
    }

    while (v15);
  }

  v27 = v7;
  v28 = v6;
  v29 = v8;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v32 = objc_msgSend_allKeys(v27, v30, v31, 0);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v50, v54, 16);
  if (v34)
  {
    v36 = v34;
    v37 = *v51;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v51 != v37)
        {
          objc_enumerationMutation(v32);
        }

        v39 = *(*(&v50 + 1) + 8 * j);
        v40 = objc_msgSend_objectForKey_(v27, v35, v39);
        v42 = objc_msgSend_objectForKey_(v28, v41, v39);
        v45 = v42;
        if (v40 != v42)
        {
          v46 = !v40 || v42 == 0;
          if (v46 || (objc_msgSend_isNull(v40, v43, v44) & 1) != 0 || (objc_msgSend_isNull(v45, v43, v47) & 1) != 0 || (objc_msgSend_isEqual_(v40, v43, v45) & 1) == 0)
          {
            objc_msgSend_addObject_(v29, v43, v39);
          }
        }
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v50, v54, 16);
    }

    while (v36);
  }

  v48 = *MEMORY[0x1E69E9840];

  return v29;
}

id sub_19599C7C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v3, v4, 0, 0, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_19599C898(void *a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF90];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_dictionaryWithCapacity_(v5, v9, v8);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = objc_msgSend_allKeys(v4, v11, v12, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v30, v34, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v31;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        v21 = objc_msgSend_objectForKey_(a1, v16, v20);
        v23 = objc_msgSend_objectForKey_(v4, v22, v20);
        v25 = v23;
        if (v21)
        {
          v26 = 1;
        }

        else
        {
          v26 = v23 == 0;
        }

        if (!v26 || (v21 ? (v27 = v23 == 0) : (v27 = 1), !v27 && (objc_msgSend_isEqual_(v21, v24, v23) & 1) == 0))
        {
          objc_msgSend_setObject_forKey_(v10, v24, v25, v20);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v30, v34, 16);
    }

    while (v17);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v10;
}

id sub_19599CA44(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_count(a1, a2, a3))
  {
    v3 = objc_autoreleasePoolPush();
    v4 = JWEncodeKeyedCodableObject(a1);
    v5 = JWDecodeKeyedCodableObject(v4);

    objc_autoreleasePoolPop(v3);
    return v5;
  }

  else
  {

    return a1;
  }
}

id sub_19599CAD8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x1E695DF90]);
  v10 = objc_msgSend_count(v5, v8, v9);
  v12 = objc_msgSend_initWithCapacity_(v7, v11, v10);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v5;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v22, v26, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_setObject_forKey_(v12, v16, v6, *(*(&v22 + 1) + 8 * i), v22);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v22, v26, 16);
    }

    while (v17);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

id sub_19599CC28(void *a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = a1;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v22, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = objc_msgSend_objectForKey_(v6, v9, v13, v18);
        if (v4[2](v4, v13, v14))
        {
          objc_msgSend_setObject_forKeyedSubscript_(v5, v15, v14, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v18, v22, 16);
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

char *sub_19599CD94(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a4 < 0)
  {
    v7 = 0;
  }

  else
  {
    v4 = a4;
    v6 = 2 * a4;
    v7 = malloc_type_malloc(2 * a4, 0x34CDCD49uLL);
    v15 = xmmword_1959DC930;
    if (v7)
    {
      v8 = v7;
      if (v4)
      {
        v9 = v7 + 1;
        do
        {
          v10 = *a3++;
          *(v9 - 1) = *(&v15 | (v10 >> 4));
          *v9 = *(&v15 | v10 & 0xF);
          v9 += 2;
          --v4;
        }

        while (v4);
      }

      v11 = objc_alloc(MEMORY[0x1E696AEC0]);
      v7 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v11, v12, v8, v6, 4, 1, v15);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

id sub_19599CE98(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = objc_msgSend_length(v3, v4, v5);
  v8 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v7, (v6 + 1) >> 1);
  v9 = v8;
  v12 = objc_msgSend_mutableBytes(v9, v10, v11);
  v14 = v6;
  if (v6)
  {
    v15 = v12;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = objc_msgSend_characterAtIndex_(v3, v13, v16);
      if (v20 - 48) <= 0x36 && ((0x7E0000007E03FFuLL >> (v20 - 48)))
      {
        v17 = v20 + byte_1959DC940[2 * (v20 - 48)] + 16 * v17;
        if (v18)
        {
          *(v15 + v19++) = v17;
          ++v18;
          v17 = 0;
        }

        else
        {
          ++v18;
        }
      }

      ++v16;
    }

    while (v14 != v16);
    if (v18)
    {
      *(v15 + v19) = v17;
      objc_msgSend_setLength_(v8, v13, v19 + 1);
      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
  }

  objc_msgSend_setLength_(v8, v13, v19);
LABEL_13:

  return v8;
}

id sub_19599CFCC(uint64_t a1, uint64_t a2, size_t a3)
{
  v4 = objc_alloc(MEMORY[0x1E695DF88]);
  v6 = objc_msgSend_initWithLength_(v4, v5, a3);
  v7 = v6;
  v10 = objc_msgSend_mutableBytes(v7, v8, v9);
  arc4random_buf(v10, a3);

  return v6;
}

id sub_19599D044(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_length(a1, a2, a3) > 0xC800000)
  {
    v6 = 0;
    goto LABEL_17;
  }

  if (!objc_msgSend_length(a1, v4, v5))
  {
    v6 = a1;
    goto LABEL_17;
  }

  v9 = objc_msgSend_length(a1, v7, v8);
  v12 = objc_msgSend_length(a1, v10, v11);
  v13 = v12 + (v12 >> 31);
  v15 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v14, (v9 + v12 / 2));
  if (!v15)
  {
    goto LABEL_15;
  }

  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v39.data_type = v16;
  *&v39.zfree = v16;
  *&v39.state = v16;
  *&v39.total_out = v16;
  *&v39.next_out = v16;
  *&v39.avail_in = v16;
  v17 = a1;
  v20 = objc_msgSend_bytes(v17, v18, v19);
  v39.avail_in = objc_msgSend_length(a1, v21, v22, v20, *&v39.avail_in, *&v39.next_out, *&v39.total_out, *&v39.state, *&v39.zfree, *&v39.data_type, 0xAAAAAAAAAAAAAAAALL);
  v39.zalloc = 0;
  v39.zfree = 0;
  v39.total_out = 0;
  if (inflateInit2_(&v39, 47, "1.2.12", 112))
  {
    goto LABEL_15;
  }

  v25 = (v13 >> 1);
  do
  {
    total_out = v39.total_out;
    if (total_out >= objc_msgSend_length(v15, v23, v24))
    {
      objc_msgSend_increaseLengthBy_(v15, v27, v25);
    }

    v28 = v15;
    v31 = objc_msgSend_mutableBytes(v28, v29, v30);
    v39.next_out = (v31 + v39.total_out);
    v34 = objc_msgSend_length(v15, v32, v33);
    v39.avail_out = v34 - LODWORD(v39.total_out);
    v35 = inflate(&v39, 2);
  }

  while (!v35);
  if (v35 != 1)
  {
    inflateEnd(&v39);
    goto LABEL_15;
  }

  if (inflateEnd(&v39))
  {
LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  objc_msgSend_setLength_(v15, v36, v39.total_out);
  v6 = objc_msgSend_dataWithData_(MEMORY[0x1E695DEF0], v37, v15);
LABEL_16:

LABEL_17:

  return v6;
}

id sub_19599D1FC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__FTDecompressData(a1, a2, a3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  v7 = v6;

  return v7;
}

id im_temporary_directory()
{
  v0 = atomic_load(byte_1EAED8AC8);
  if ((v0 & 1) == 0)
  {
    atomic_store(1u, byte_1EAED8AC8);
  }

  if (qword_1EAED8E58)
  {
    v1 = qword_1EAED8E58;
  }

  else
  {
    v1 = NSTemporaryDirectory();
  }

  return v1;
}

uint64_t im_set_temporary_directory(void *a1)
{
  v1 = a1;
  v2 = atomic_load(byte_1EAED8AC8);
  if (v2)
  {
    abort();
  }

  qword_1EAED8E58 = v1;

  return MEMORY[0x1EEE66BB8]();
}

id sub_19599D2F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v23 = 0;
    goto LABEL_13;
  }

  v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v3, v4);
  v9 = objc_msgSend_lastPathComponent(v5, v7, v8);
  v11 = objc_msgSend__randomTemporaryPathWithFileName_(v6, v10, v9);

  if (!v11)
  {
    v22 = 0;
    v15 = 0;
    goto LABEL_11;
  }

  v15 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v12, v11);
  if (!v15)
  {
    v22 = 0;
    goto LABEL_11;
  }

  v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v13, v14);
  v29 = 0;
  v18 = objc_msgSend_linkItemAtURL_toURL_error_(v16, v17, v5, v15, &v29);
  v19 = v29;

  if ((v18 & 1) == 0)
  {
    v24 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v20, v21);
    v28 = v19;
    v26 = objc_msgSend_copyItemAtURL_toURL_error_(v24, v25, v5, v15, &v28);
    v22 = v28;

    if (v26)
    {
      goto LABEL_10;
    }

LABEL_11:
    v23 = 0;
    goto LABEL_12;
  }

  v22 = v19;
LABEL_10:
  v15 = v15;
  v23 = v15;
LABEL_12:

LABEL_13:

  return v23;
}

id sub_19599D484(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v9 = a4;
  if (!v9)
  {
    v9 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v7, v8);
  }

  if (v6)
  {
    v10 = objc_msgSend_stringByAppendingPathExtension_(v9, v7, v6);

    v9 = v10;
  }

  v11 = objc_msgSend__randomTemporaryPathWithFileName_(a1, v7, v9);

  return v11;
}

id sub_19599D528(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v12 = a5;
  if (!v9)
  {
    v9 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v10, v11);
  }

  if (v8)
  {
    v13 = objc_msgSend_stringByAppendingPathExtension_(v9, v10, v8);

    v9 = v13;
  }

  v14 = objc_msgSend__randomTemporaryPathWithFileName_withAppendedPathComponent_(a1, v10, v9, v12);

  return v14;
}

id sub_19599D5E8(void *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v8 = objc_msgSend_stringGUID(v4, v6, v7);
  v9 = im_temporary_directory();
  v11 = objc_msgSend_createUniqueDirectoryWithName_atPath_ofType_(a1, v10, v8, v9, 0);

  v14 = objc_msgSend_lastPathComponent(v5, v12, v13);
  v17 = objc_msgSend_stringByDeletingPathExtension(v14, v15, v16);
  v20 = objc_msgSend_pathExtension(v5, v18, v19);

  v22 = objc_msgSend_uniqueFilename_atPath_ofType_(a1, v21, v17, v11, v20);

  return v22;
}

id sub_19599D6D8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = im_temporary_directory();
  v10 = objc_msgSend_stringByAppendingPathComponent_(v8, v9, v6);

  v13 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v11, v12);
  v15 = objc_msgSend_createUniqueDirectoryWithName_atPath_ofType_(a1, v14, v13, v10, 0);

  v18 = objc_msgSend_lastPathComponent(v7, v16, v17);
  v21 = objc_msgSend_stringByDeletingPathExtension(v18, v19, v20);
  v24 = objc_msgSend_pathExtension(v7, v22, v23);

  v26 = objc_msgSend_uniqueFilename_atPath_ofType_(a1, v25, v21, v15, v24);

  return v26;
}

id sub_19599D7F0(void *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v8 = objc_msgSend_stringGUID(v4, v6, v7);
  v11 = objc_msgSend_stringByDeletingLastPathComponent(v5, v9, v10);
  v14 = objc_msgSend_pathExtension(v5, v12, v13);

  v16 = objc_msgSend_uniqueFilename_atPath_ofType_(a1, v15, v8, v11, v14);

  return v16;
}

uint64_t sub_19599D8A0(uint64_t a1, const char *a2, void *a3)
{
  v3 = objc_msgSend_stringByResolvingAndStandardizingPath(a3, a2, a3);
  v6 = objc_msgSend_pathComponents(v3, v4, v5);
  if (!objc_msgSend_hasPrefix_(v3, v7, @"/Volumes"))
  {
    goto LABEL_4;
  }

  if (objc_msgSend_count(v6, v8, v9) < 3)
  {
    goto LABEL_4;
  }

  v11 = objc_msgSend_objectAtIndex_(v6, v10, 2);
  v13 = objc_msgSend_stringByAppendingPathComponent_(@"/Volumes", v12, v11);

  v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v14, v15);
  v18 = objc_msgSend_fileExistsAtPath_(v16, v17, v13);

  if (!v18)
  {
    v19 = 1;
  }

  else
  {
LABEL_4:
    v19 = 0;
  }

  return v19;
}

uint64_t sub_19599D980(void *a1, const char *a2, void *a3, unsigned int a4)
{
  v6 = objc_msgSend_stringByResolvingAndStandardizingPath(a3, a2, a3);
  if (objc_msgSend__isPathOnMissingVolume_(a1, v7, v6))
  {
    DirectoryAtPath_withIntermediateDirectories_attributes_error = 0;
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E695DF20]);
    v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v10, a4);
    v13 = objc_msgSend_initWithObjectsAndKeys_(v9, v12, v11, *MEMORY[0x1E696A370], 0);

    DirectoryAtPath_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(a1, v14, v6, 1, v13, 0);
  }

  return DirectoryAtPath_withIntermediateDirectories_attributes_error;
}

id sub_19599DA50(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_lastPathComponent(a3, v10, v11);
  v14 = objc_msgSend_stringByAppendingPathComponent_(v8, v13, v12);
  v17 = objc_msgSend_stringByResolvingAndStandardizingPath(v14, v15, v16);

  if (!objc_msgSend_length(v9, v18, v19))
  {

    v9 = 0;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = v20;
    v20 = sub_19599DB7C(v17, v21, v9);

    if (v21 == 9999)
    {
      break;
    }

    v21 = (v21 + 1);
    if ((objc_msgSend_fileExistsAtPath_(a1, v23, v20) & 1) == 0)
    {
      v25 = v20;
      goto LABEL_8;
    }
  }

  v25 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v23, v24);
LABEL_8:
  v26 = v25;

  return v26;
}

id sub_19599DB7C(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v7 = a3;
  if (a2 <= 0)
  {
    v14 = v5;
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = MEMORY[0x1E696ADA0];
    v10 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v6, a2);
    v12 = objc_msgSend_localizedStringFromNumber_numberStyle_(v9, v11, v10, 1);
    v14 = objc_msgSend_stringWithFormat_(v8, v13, @"%@-%@", v5, v12);
  }

  if (objc_msgSend_length(v7, v15, v16))
  {
    v18 = objc_msgSend_stringByAppendingPathExtension_(v14, v17, v7);

    v14 = v18;
  }

  return v14;
}

id sub_19599DC84(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_lastPathComponent(a3, v10, v11);
  v14 = objc_msgSend_stringByAppendingPathComponent_(v8, v13, v12);
  v17 = objc_msgSend_stringByResolvingAndStandardizingPath(v14, v15, v16);

  if (objc_msgSend__isPathOnMissingVolume_(a1, v18, v17))
  {
    v19 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = v20;
      v20 = sub_19599DB7C(v17, v21, v9);

      v31 = 0;
      v24 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(a1, v23, v20, 1, 0, &v31);
      v25 = v31;
      v27 = v25;
      v28 = 0;
      if ((v24 & 1) == 0 && v25)
      {
        v28 = objc_msgSend_fileExistsAtPath_(a1, v26, v20);
      }

      v29 = (v27 == 0) | v28;

      v19 = 0;
      if ((v29 & 1) == 0 || v21 == 99)
      {
        break;
      }

      v21 = (v21 + 1);
      if ((v28 & 1) == 0)
      {
        v19 = v20;
        break;
      }
    }
  }

  return v19;
}

uint64_t sub_19599DDF8(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, int a7)
{
  v11 = a4;
  v14 = objc_msgSend_stringByResolvingAndStandardizingPath(a3, v12, v13);
  v17 = objc_msgSend_stringByResolvingAndStandardizingPath(v11, v15, v16);

  v20 = objc_msgSend_pathExtension(v17, v18, v19);
  v23 = objc_msgSend_stringByDeletingPathExtension(v17, v21, v22);
  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = v24;
    v24 = sub_19599DB7C(v23, v25, v20);

    if (!a7)
    {
      break;
    }

    if (objc_msgSend_copyItemAtPath_toPath_error_(a1, v27, v14, v24, a6))
    {
      goto LABEL_11;
    }

LABEL_6:
    v29 = 0;
    if (objc_msgSend_fileExistsAtPath_(a1, v28, v24))
    {
      v30 = v25 >= 0x63;
      v25 = (v25 + 1);
      if (!v30)
      {
        continue;
      }
    }

    goto LABEL_14;
  }

  if (!objc_msgSend_moveItemAtPath_toPath_error_(a1, v27, v14, v24, a6))
  {
    goto LABEL_6;
  }

  objc_msgSend_removeItemAtPath_error_(a1, v28, v14, a6);
LABEL_11:
  if (a5)
  {
    v31 = v24;
    *a5 = v24;
  }

  v29 = 1;
LABEL_14:

  return v29;
}

id IMTemporaryPath()
{
  v0 = im_temporary_directory();
  v2 = objc_msgSend_stringByAppendingPathComponent_(v0, v1, @"FaceTime");

  v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v3, v4);
  v7 = objc_msgSend_fileExistsAtPath_(v5, v6, v2);

  if ((v7 & 1) == 0)
  {
    v10 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v8, v9);
    objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v10, v11, v2, 1, 0, 0);
  }

  return v2;
}

id TemporaryTransfersPath()
{
  v0 = IMTemporaryPath();
  v2 = objc_msgSend_stringByAppendingPathComponent_(v0, v1, @"Transfers");

  v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v3, v4);
  v7 = objc_msgSend_fileExistsAtPath_(v5, v6, v2);

  if ((v7 & 1) == 0)
  {
    v10 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v8, v9);
    objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v10, v11, v2, 1, 0, 0);
  }

  return v2;
}

id TemporaryImagePath()
{
  v0 = IMTemporaryPath();
  v2 = objc_msgSend_stringByAppendingPathComponent_(v0, v1, @"Images");

  v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v3, v4);
  v7 = objc_msgSend_fileExistsAtPath_(v5, v6, v2);

  if ((v7 & 1) == 0)
  {
    v10 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v8, v9);
    objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v10, v11, v2, 1, 0, 0);
  }

  return v2;
}

id IMGetInlineImagePath(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = TemporaryImagePath();
  v7 = objc_msgSend_stringByAppendingPathComponent_(v5, v6, v4);

  v10 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v8, v9);
  LOBYTE(v5) = objc_msgSend_fileExistsAtPath_(v10, v11, v7);

  if ((v5 & 1) == 0)
  {
    v14 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v12, v13);
    objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v14, v15, v7, 1, 0, 0);
  }

  v16 = objc_msgSend_lastPathComponent(v3, v12, v13);
  v18 = objc_msgSend_stringByAppendingPathComponent_(v7, v17, v16);

  return v18;
}

id IMInlineImageURL(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = IMGetInlineImagePath(v5, v4);

  inited = objc_msgSend_initFileURLWithPath_(v6, v8, v7);

  return inited;
}

void sub_19599E2F4()
{
  v0 = time(0);

  srandom(v0);
}

uint64_t GetTimeoutDefault(void *a1)
{
  LODWORD(result) = IMGetAppIntForKey(a1);
  if (result < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

id ExtractURLQueries(void *a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v42 = a2;
  v5 = objc_msgSend_rangeOfString_(v3, v4, @"?");
  if (v6)
  {
    v7 = v5;
    v8 = objc_msgSend_substringToIndex_(v3, v6, v5);
    v10 = objc_msgSend_substringFromIndex_(v3, v9, v7 + 1);

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v12 = objc_msgSend_componentsSeparatedByString_(v10, v11, @"&");
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v43, v47, 16);
    if (v14)
    {
      v15 = v14;
      v40 = v10;
      v41 = v8;
      v16 = 0;
      v17 = *v44;
      do
      {
        v18 = 0;
        v19 = v16;
        do
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v43 + 1) + 8 * v18);

          v21 = objc_msgSend_rangeOfString_(v16, v20, @"=");
          if (v22)
          {
            v23 = v21;
            v24 = objc_msgSend_substringToIndex_(v16, v22, v21);
            v27 = objc_msgSend_lowercaseString(v24, v25, v26);

            v29 = objc_msgSend_substringFromIndex_(v16, v28, v23 + 1);
            if (objc_msgSend_length(v27, v30, v31) && objc_msgSend_length(v29, v32, v33))
            {
              v34 = CFURLCreateStringByReplacingPercentEscapes(0, v29, &stru_1F09D3C40);

              if (objc_msgSend_length(v34, v35, v36))
              {
                objc_msgSend_setObject_forKey_(v42, v37, v34, v27);
              }
            }

            else
            {
              v34 = v29;
            }
          }

          ++v18;
          v19 = v16;
        }

        while (v15 != v18);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v22, &v43, v47, 16);
      }

      while (v15);

      v10 = v40;
      v8 = v41;
    }
  }

  else
  {
    v8 = v3;
    v10 = v8;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v8;
}

void _FezStartTime()
{
  Current = CFAbsoluteTimeGetCurrent();
  v1 = dword_1EAED94C8;
  if (dword_1EAED94C8 <= 99)
  {
    dbl_1EAED94D0[dword_1EAED94C8] = Current;
  }

  dword_1EAED94C8 = v1 + 1;
}

double _FezLogElapsedTimeWithTag(uint64_t a1, _DWORD *a2, double *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v13 = dword_1EAED94C8;
  v14 = --dword_1EAED94C8;
  if (v13 <= 100)
  {
    v15 = dbl_1EAED94D0[v14];
    if (a2)
    {
      ++*a2;
      *a3 = Current - v15 + *a3;
      if (dword_1EAED94C8 <= 100)
      {
        _IMLog(@"   | %.*s[%s: %s: %6.6f]", v5, v6, v7, v8, v9, v10, v11, dword_1EAED94C8);
      }

      v18 = *a3;
      v17 = *a2;
      _IMLog(@"   | %.*s         ['%s' called %u times, cumulative time %6.6f]", v5, v6, v7, v8, v9, v10, v11, dword_1EAED94C8);
    }

    else
    {
      _IMLog(@"   | %.*s[%s: %s: %6.6f]", v5, v6, v7, v8, v9, v10, v11, v14);
    }
  }

  return Current;
}

id IMPathsForPlugInsWithExtension(void *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x1E695DEC8];
  v5 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v3, v4);
  v8 = objc_msgSend_builtInPlugInsPath(v5, v6, v7);
  v11 = objc_msgSend_stringByStandardizingPath(@"/System/Library/Messages/PlugIns", v9, v10);
  v13 = objc_msgSend_arrayWithObjects_(v2, v12, v8, v11, 0);

  v16 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v13;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v49, v54, 16);
  if (v43)
  {
    v42 = *v50;
    do
    {
      v20 = 0;
      do
      {
        if (*v50 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v20;
        v21 = *(*(&v49 + 1) + 8 * v20);
        v22 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v18, v19);
        v24 = objc_msgSend_contentsOfDirectoryAtPath_error_(v22, v23, v21, 0);

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v25 = v24;
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v45, v53, 16);
        if (v27)
        {
          v30 = v27;
          v31 = *v46;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v46 != v31)
              {
                objc_enumerationMutation(v25);
              }

              v33 = *(*(&v45 + 1) + 8 * i);
              v34 = objc_msgSend_pathExtension(v33, v28, v29);
              v36 = objc_msgSend_caseInsensitiveCompare_(v34, v35, v1);

              if (!v36)
              {
                v37 = objc_msgSend_stringByAppendingPathComponent_(v21, v28, v33);
                objc_msgSend_addObject_(v16, v38, v37);
              }
            }

            v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v45, v53, 16);
          }

          while (v30);
        }

        v20 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v49, v54, 16);
    }

    while (v43);
  }

  v39 = *MEMORY[0x1E69E9840];

  return v16;
}

BOOL _IMRunningInDaemon()
{
  if (qword_1EAED8E60 != -1)
  {
    sub_1959D3C00();
  }

  return dword_1EAED7E40 != 0;
}

void sub_19599EA10()
{
  v1 = IMGetMainBundleIdentifier();
  dword_1EAED7E40 = objc_msgSend_isEqualToString_(v1, v0, @"com.apple.imagent");
}

__CFBundle *IMGetMainBundleIdentifier()
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    MainBundle = CFBundleGetIdentifier(MainBundle);
  }

  return MainBundle;
}

id _IMFrameworkBundle()
{
  if (qword_1EAED8E70 != -1)
  {
    sub_1959D3C14();
  }

  v1 = qword_1EAED8E68;

  return v1;
}

uint64_t sub_19599EADC(uint64_t a1, const char *a2)
{
  qword_1EAED8E68 = objc_msgSend_bundleWithPath_(MEMORY[0x1E696AAE8], a2, @"/System/Library/PrivateFrameworks/IMCore.framework");

  return MEMORY[0x1EEE66BB8]();
}

double _IMGetTimeoutDefault(void *a1, double a2)
{
  v3 = a1;
  v11 = IMCopyAppValueForKey(v3);
  v12 = a2;
  if (v11)
  {
    v12 = a2;
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_doubleValue(v11, v4, v5);
      v12 = v13;
    }
  }

  if (v12 != a2)
  {
    _IMLog(@"WARNING: Timeout %@ is %g, connections may not behave as expected (default: %g)", v4, v5, v6, v7, v8, v9, v10, v3);
  }

  if (v12 >= 0.0)
  {
    v14 = v12;
  }

  else
  {
    v14 = INFINITY;
  }

  return v14;
}

uint64_t IMCopyURLEscapedString(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x1E696AB08], v2, v3);
  v7 = objc_msgSend_mutableCopy(v4, v5, v6);

  objc_msgSend_removeCharactersInString_(v7, v8, @":/?#[]@!$&‚Äö√Ñ√¥()*+,;=");
  if (v1 && objc_msgSend_length(v1, v9, v10))
  {
    v12 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v1, v11, v7);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t _IMDaemonIsRunning()
{
  if (qword_1EAED8B40 != -1)
  {
    sub_1959D3D20();
  }

  return byte_1EAED8AD4;
}

uint64_t sub_19599EC9C()
{
  v1 = 0;
  result = im_notify_register_dispatch("_IMDaemonRunningNotifyToken", &dword_1EAED8AD0, &v1, 1, MEMORY[0x1E69E96A0], &unk_1F09D15C0);
  byte_1EAED8AD4 = v1 != 0;
  return result;
}

void _IMGetAVAgentRemoteObject(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v13 = objc_msgSend_sharedInstance(IMLockdownManager, v11, v12);
  isNonUIInstall = objc_msgSend_isNonUIInstall(v13, v14, v15);

  if (!isNonUIInstall)
  {
    if (v9)
    {
      v20 = objc_msgSend_connection(v9, v17, v18);
    }

    else
    {
      v20 = 0;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_19599EEB0;
    v21[3] = &unk_1E7438510;
    v19 = &v22;
    v22 = v10;
    IMAVDaemonRequestConnection(v7, v8, v20, v21);
    if (v9)
    {
    }

    goto LABEL_9;
  }

  if (v10)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_19599EE98;
    v23[3] = &unk_1E74384C0;
    v19 = &v24;
    v24 = v10;
    im_dispatch_after(v23, 0.0);
LABEL_9:
  }
}

void sub_19599EEB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (v5)
  {
    v9 = [IMRemoteObject alloc];
    v11 = objc_msgSend_initWithConnection_protocol_alreadyConfigured_(v9, v10, v5, &unk_1F09F54F0, 1);
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 32))
  {
    v12 = objc_msgSend_mainThread(MEMORY[0x1E696AF00], v6, v7);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_19599EFFC;
    v14[3] = &unk_1E74384E8;
    v17 = *(a1 + 32);
    v15 = v11;
    v16 = v8;
    objc_msgSend___im_performBlock_modes_(v12, v13, v14, IMRemoteObjectsRunLoopModes);
  }
}

id _IMPathToAgent(uint64_t a1, const char *a2, uint64_t a3)
{
  if (qword_1EAED8E60 != -1)
  {
    sub_1959D3C00();
  }

  if (dword_1EAED7E40)
  {
    v3 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3);
    v6 = objc_msgSend_bundlePath(v3, v4, v5);
  }

  else
  {
    v3 = _IMFrameworkBundle();
    v9 = objc_msgSend_bundlePath(v3, v7, v8);
    v6 = objc_msgSend_stringByAppendingPathComponent_(v9, v10, @"imagent.app");
  }

  return v6;
}

__CFString *_IMITunesMessageFormat(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend__IMAppObjectForKey_(MEMORY[0x1E695E000], a2, @"iTunesMessageFormat");
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"%Track - %Artist";
  }

  v5 = v4;

  return v4;
}

id _IMStatusMessageWithFormatAndVariables(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_mutableCopy(a1, v4, v5);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = objc_msgSend_allKeys(v3, v7, v8);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v27, v31, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = objc_msgSend_length(v6, v11, v12);
        v19 = objc_msgSend_stringByAppendingString_(@"%", v18, v16);
        v21 = objc_msgSend_objectForKey_(v3, v20, v16);
        v23 = v21;
        if (v21)
        {
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v6, v22, v19, v21, 2, 0, v17);
        }

        else
        {
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v6, v22, v19, &stru_1F09D3C40, 2, 0, v17);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v27, v31, 16);
    }

    while (v13);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v6;
}

CFMutableDictionaryRef sub_19599F2CC()
{
  v0 = *(MEMORY[0x1E695E528] + 16);
  *&v3.version = *MEMORY[0x1E695E528];
  *&v3.release = v0;
  *&v3.equal = *(MEMORY[0x1E695E528] + 32);
  v3.retain = sub_19599F338;
  v1 = CFDictionaryCreateMutable(0, 0, &v3, MEMORY[0x1E695E9E8]);

  return v1;
}

CFMutableDictionaryRef sub_19599F340()
{
  v0 = *(MEMORY[0x1E695E528] + 16);
  *&keyCallBacks.version = *MEMORY[0x1E695E528];
  *&keyCallBacks.release = v0;
  *&keyCallBacks.equal = *(MEMORY[0x1E695E528] + 32);
  keyCallBacks.retain = sub_19599F338;
  v1 = *(MEMORY[0x1E695E9E8] + 16);
  *&v4.version = *MEMORY[0x1E695E9E8];
  *&v4.release = v1;
  v4.equal = *(MEMORY[0x1E695E9E8] + 32);
  v4.retain = 0;
  v4.release = 0;
  v2 = CFDictionaryCreateMutable(0, 0, &keyCallBacks, &v4);

  return v2;
}

CFMutableDictionaryRef sub_19599F3C4()
{
  v0 = *(MEMORY[0x1E695E9D8] + 16);
  *&keyCallBacks.version = *MEMORY[0x1E695E9D8];
  *&keyCallBacks.release = v0;
  *&keyCallBacks.equal = *(MEMORY[0x1E695E9D8] + 32);
  keyCallBacks.release = 0;
  keyCallBacks.copyDescription = 0;
  keyCallBacks.retain = sub_19599F44C;
  v1 = *(MEMORY[0x1E695E9E8] + 16);
  *&v4.version = *MEMORY[0x1E695E9E8];
  *&v4.release = v1;
  v4.equal = *(MEMORY[0x1E695E9E8] + 32);
  v4.retain = 0;
  v4.release = 0;
  v2 = CFDictionaryCreateMutable(0, 0, &keyCallBacks, &v4);

  return v2;
}

id sub_19599F454(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E695DF20];
  v9 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], a2, a3, 4);
  v11 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v10, a4, 4);
  v13 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v12, a5);
  v15 = objc_msgSend_dictionaryWithObjectsAndKeys_(v8, v14, v9, @"File", v11, @"Function", v13, @"Line Number", 0);

  v17 = objc_msgSend_errorWithDomain_code_userInfo_(a1, v16, @"IMGenericErrorDomain", 0, v15);

  return v17;
}

id sub_19599F568(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (qword_1EAED8E60 != -1)
  {
    sub_1959D3C00();
  }

  if (dword_1EAED7E40)
  {
    IMCopyAppValueForKey(v5);
  }

  else
  {
    objc_msgSend__IMObjectForKey_inDomain_(a1, v4, v5, @"com.apple.imagent");
  }
  v6 = ;
  v8 = v6;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = objc_msgSend__IMObjectForKey_inDomain_(a1, v7, v5, @"com.apple.iChatAgent");
  }

  v10 = v9;

  return v10;
}

void sub_19599F648(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  value = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    v10 = *MEMORY[0x1E695E8A8];
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = *MEMORY[0x1E695E8A8];
    }

    CFPreferencesSetAppValue(v7, value, v11);
    CFPreferencesAppSynchronize(v11);
  }
}

void _IMSwapMethods(objc_class *a1, const char *a2, const char *a3, int a4)
{
  if (a4)
  {
    ClassMethod = class_getClassMethod(a1, a2);
    InstanceMethod = class_getClassMethod(a1, a3);
  }

  else
  {
    ClassMethod = class_getInstanceMethod(a1, a2);
    InstanceMethod = class_getInstanceMethod(a1, a3);
  }

  method_exchangeImplementations(ClassMethod, InstanceMethod);
}

uint64_t IMGetCachedDomainBoolForKeyWithDefaultValue(CFStringRef applicationID, CFStringRef key, unsigned int a3)
{
  keyExistsAndHasValidFormat = 0;
  v4 = CFPreferencesGetAppBooleanValue(key, applicationID, &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    return v4;
  }

  else
  {
    return a3;
  }
}

uint64_t IMGetDomainBoolForKeyWithDefaultValue(CFStringRef applicationID, CFStringRef key, unsigned int a3)
{
  keyExistsAndHasValidFormat = 0;
  v4 = CFPreferencesGetAppBooleanValue(key, applicationID, &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    return v4;
  }

  else
  {
    return a3;
  }
}

CFIndex IMGetDomainIntForKey(CFStringRef applicationID, CFStringRef key)
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(key, applicationID, &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 0;
  }

  return result;
}

void IMSetDomainIntForKey(void *a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = a2;
    v7 = a1;
    v9 = objc_msgSend_numberWithInteger_(v5, v8, a3);
    IMSetDomainValueForKey(v7, v6, v9);
  }

  else
  {
    v7 = a2;
    v9 = a1;
    IMSetDomainValueForKey(v9, v7, 0);
  }
}

id IMCopyAppByHostValueForKey(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3))
  {
    v4 = CFPreferencesCopyValue(v1, *MEMORY[0x1E695E8A8], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t IMGetAppByHostIntForKey(void *a1)
{
  v1 = IMCopyAppByHostValueForKey(a1);
  v4 = objc_msgSend_integerValue(v1, v2, v3);

  return v4;
}

void IMSetAppBoolForKey(const __CFString *a1, int a2)
{
  if (a2)
  {
    v2 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = 0;
  }

  CFPreferencesSetAppValue(a1, v2, *MEMORY[0x1E695E8A8]);
}

void IMSetAppByHostBoolForKey(const __CFString *a1, int a2)
{
  if (a2)
  {
    v2 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = 0;
  }

  CFPreferencesSetValue(a1, v2, *MEMORY[0x1E695E8A8], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
}

BOOL IMCanAccessPath(void *a1)
{
  v1 = a1;
  getpid();
  v2 = v1;
  objc_msgSend_UTF8String(v2, v3, v4);

  return sandbox_check() == 0;
}

BOOL IMCanAccessPreferenceDomain(void *a1)
{
  v1 = a1;
  getpid();
  v2 = v1;
  objc_msgSend_UTF8String(v2, v3, v4);
  if (sandbox_check())
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"~/Library/Preferences/%@.plist", v1);
    v9 = objc_msgSend_stringByResolvingAndStandardizingPath(v6, v7, v8);
    v10 = IMCanAccessPath(v9);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

id sub_19599FBD0(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_objectForKey_(a1, a2, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_19599FC3C(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_objectForKey_(a1, a2, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_19599FCA8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_objectForKey_(a1, a2, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_19599FD14(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_objectForKey_(a1, a2, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_19599FD80(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_objectForKey_(a1, a2, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t (*sub_19599FDEC())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1ED517400 = result;
  return result;
}

uint64_t (*sub_19599FE1C())(void, void, void)
{
  result = IMWeakLinkSymbol();
  off_1ED517408 = result;
  return result;
}

void *IMDAuditTokenTaskCopyValueForEntitlement(_OWORD *a1, void *a2)
{
  v3 = a2;
  if (qword_1EAED8E80 != -1)
  {
    sub_1959D3D5C();
  }

  if (qword_1EAED8E90 != -1)
  {
    sub_1959D3D70();
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = a1[1];
  *cf = *a1;
  v12 = v5;
  v6 = off_1EAED8E78(v4, cf);
  if (v6)
  {
    v7 = v6;
    cf[0] = 0;
    v8 = off_1EAED8E88(v6, v3, cf);
    v9 = v8;
    if (cf[0])
    {

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v9 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t (*sub_19599FF30())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8E78 = result;
  return result;
}

uint64_t (*sub_19599FF60())(void, void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8E88 = result;
  return result;
}

uint64_t (*sub_19599FF90())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8C50 = result;
  return result;
}

uint64_t (*sub_19599FFC0())(void, void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8C58 = result;
  return result;
}

void *IMDSelfTaskCopyValueForEntitlement(void *a1)
{
  v1 = a1;
  if (qword_1ED517410 != -1)
  {
    sub_1959D3D84();
  }

  if (qword_1ED517418 != -1)
  {
    sub_1959D3D98();
  }

  v2 = off_1ED517420(*MEMORY[0x1E695E480]);
  if (v2)
  {
    v3 = v2;
    cf = 0;
    v4 = off_1ED517428(v2, v1, &cf);
    v5 = v4;
    if (cf)
    {

      if (cf)
      {
        CFRelease(cf);
      }

      v5 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void *sub_1959A00C4()
{
  result = IMWeakLinkSymbol();
  off_1ED517420 = result;
  return result;
}

void *sub_1959A00F4()
{
  result = IMWeakLinkSymbol();
  off_1ED517428 = result;
  return result;
}

uint64_t IMDSelfTaskHasTrueNSNumberForEntitlement(void *a1)
{
  v1 = IMDSelfTaskCopyValueForEntitlement(a1);
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = objc_msgSend_BOOLValue(v1, v2, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1959A0730(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v3, v4);
  v8 = objc_msgSend_mainThread(MEMORY[0x1E696AF00], v6, v7);

  if (v5 == v8)
  {
    v10[2]();
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10[2]();
    objc_autoreleasePoolPop(v9);
  }
}

void sub_1959A07D8(void *a1, uint64_t a2, void *a3)
{
  v12 = a1;
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  v8 = objc_msgSend_currentThread(v4, v6, v7);
  isEqual = objc_msgSend_isEqual_(v8, v9, v12);

  if (isEqual)
  {
    v5[2](v5);
  }

  else
  {
    objc_msgSend___im_performBlock_waitUntilDone_(v12, v11, v5, 0);
  }
}

void sub_1959A0880(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = v7;
  v15 = v6;
  v12 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v10, v11);
  LOBYTE(v7) = objc_msgSend_isEqual_(v12, v13, v8);

  if (v7)
  {
    v15[2]();
  }

  else if (v9)
  {
    objc_msgSend___im_performBlock_waitUntilDone_modes_(v8, v14, v15, 0, v9);
  }

  else
  {
    objc_msgSend___im_performBlock_waitUntilDone_(v8, v14, v15, 0);
  }
}

void sub_1959A0960(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = MEMORY[0x1E696AF00];
  v8 = objc_msgSend_copy(a3, a2, a3);
  objc_msgSend_performSelector_onThread_withObject_waitUntilDone_(v6, v7, sel__im_runBlock_, a1, v8, a4);
}

void sub_1959A09DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x1E696AF00];
  v9 = a5;
  v13 = objc_msgSend_copy(a3, v10, v11);
  objc_msgSend_performSelector_onThread_withObject_waitUntilDone_modes_(v8, v12, sel__im_runBlock_, a1, v13, a4, v9);
}

void sub_1959A0A74(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v13 = objc_msgSend___im_afterDelay_(a1, v7, v8, a2);
  v11 = objc_msgSend_copy(v6, v9, v10);

  objc_msgSend___im_performBlock_(v13, v12, v11);
}

void sub_1959A0AF8(void *a1, double a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v15 = objc_msgSend___im_afterDelay_modes_(a1, v10, v8, a2);
  v13 = objc_msgSend_copy(v9, v11, v12);

  objc_msgSend___im_performBlock_modes_(v15, v14, v13, v8);
}

void im_perform_with_task_assertion(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1EAED8BD8 != -1)
    {
      sub_1959D3DAC();
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v2 = dispatch_semaphore_create(0);
    v3 = [qword_1EAED8BE0 alloc];
    v4 = getpid();
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = sub_1959A0D50;
    v14 = &unk_1E7438538;
    v16 = &v17;
    v5 = v2;
    v15 = v5;
    v7 = objc_msgSend_initWithPID_flags_reason_name_withHandler_(v3, v6, v4, 1, 4, @"com.apple.imcore.generic-task-assertion", &v11);
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    if ((v18[3] & 1) == 0)
    {
      IMLogBacktrace(0);
    }

    v1[2](v1);
    objc_msgSend_setInvalidationHandler_(v7, v8, 0, v11, v12, v13, v14);
    objc_msgSend_invalidate(v7, v9, v10);

    _Block_object_dispose(&v17, 8);
  }
}

void sub_1959A0D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1959A0D20()
{
  result = IMWeakLinkClass();
  qword_1EAED8BE0 = result;
  return result;
}

void im_main_thread(void *a1)
{
  v1 = a1;
  if (v1)
  {
    block = v1;
    if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v2, v3))
    {
      block[2]();
    }

    else
    {
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    v1 = block;
  }
}

void im_dispatch_background_after(void *a1, double a2)
{
  if (a1)
  {
    v2 = (a2 * 1000000000.0);
    v3 = a1;
    v4 = dispatch_time(0, v2);
    v5 = dispatch_get_global_queue(-32768, 0);
    dispatch_after(v4, v5, v3);
  }
}

void im_dispatch_thread_after(void *a1, void *a2, double a3)
{
  if (a2)
  {
    v5 = a2;
    v9 = objc_msgSend___im_afterDelay_(a1, v6, v7, a3);
    objc_msgSend___im_performBlock_(v9, v8, v5);
  }
}

uint64_t sub_1959A0EDC(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

id sub_1959A0F44(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_mainThread(MEMORY[0x1E696AF00], a2, a3);
  v6 = objc_msgSend___im_onThread_(a1, v5, v4);

  return v6;
}

id sub_1959A0FA4(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_mainThread(MEMORY[0x1E696AF00], a2, a3);
  v6 = objc_msgSend___im_onThread_immediateForMatchingThread_(a1, v5, v4, 1);

  return v6;
}

id sub_1959A1010(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = [IMThreadedInvocationTrampoline alloc];
  v9 = objc_msgSend_initWithTarget_thread_immediateForMatchingThread_(v7, v8, a1, v6, a4);

  return v9;
}

id sub_1959A1088(uint64_t a1, double a2)
{
  v4 = [IMDelayedInvocationTrampoline alloc];
  v6 = objc_msgSend_initWithTarget_delay_modes_(v4, v5, a1, 0, a2);

  return v6;
}

id sub_1959A10E0(uint64_t a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [IMDelayedInvocationTrampoline alloc];
  v9 = objc_msgSend_initWithTarget_delay_modes_(v7, v8, a1, v6, a2);

  return v9;
}

id sub_1959A1158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [IMCapturedInvocationTrampoline alloc];
  v7 = objc_msgSend_initWithTarget_outInvocation_(v5, v6, a1, a3);

  return v7;
}

__CFString *_IMStringFromFZRegistrationErrorReason(int a1)
{
  if ((a1 + 1) > 0x1E)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E74386C8[a1 + 1];
  }
}

__CFString *_IMStringFromFZAliasValidationStatus(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E74387F8[a1 + 1];
  }
}

__CFString *_IMStringFromFZRegistrationStatus(int a1)
{
  if ((a1 + 1) > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E74387C0[a1 + 1];
  }
}

__CFString *_IMStringFromFZProfileValidationStatus(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E74387F8[a1 + 1];
  }
}