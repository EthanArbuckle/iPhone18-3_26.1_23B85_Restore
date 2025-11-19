void sub_1E0C5F5C0(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

uint64_t sub_1E0C6026C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if ([a2 _containsUnwantedCharactersForDisplay])
  {
    v5 = [v4 _containsUnwantedCharactersForDisplay] ^ 1;
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

void sub_1E0C60BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C60C34(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = *(a1 + 64);
  v5 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  LXLexiconEnumerateEntriesForString();
  if ((v10[3] & 1) == 0)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  _Block_object_dispose(&v9, 8);
}

void sub_1E0C60D50(void *a1, uint64_t a2, _BYTE *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = LXEntryCopyString();
  if (![v5 caseInsensitiveCompare:a1[4]])
  {
    if ((LXEntryGetMetaFlags() & 0x3800000) == 0)
    {
LABEL_28:
      *(*(a1[7] + 8) + 24) = 1;
      ++*(*(a1[8] + 8) + 24);
      goto LABEL_29;
    }

    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_27:

      *(*(a1[6] + 8) + 24) = 1;
      *a3 = 1;
      goto LABEL_28;
    }

    v10 = a1[4];
    v9 = a1[5];
    LXEntryGetMetaFlags();
    MetaFlags = LXEntryGetMetaFlags();
    v12 = [MEMORY[0x1E696AD60] string];
    v13 = v12;
    if (MetaFlags)
    {
      [v12 appendString:{@"HasTitleCase, "}];
      if ((MetaFlags & 2) == 0)
      {
LABEL_9:
        if ((MetaFlags & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_32;
      }
    }

    else if ((MetaFlags & 2) == 0)
    {
      goto LABEL_9;
    }

    [v13 appendString:{@"NoSuggest, "}];
    if ((MetaFlags & 4) == 0)
    {
LABEL_10:
      if ((MetaFlags & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_33;
    }

LABEL_32:
    [v13 appendString:{@"NoPredictUntilLearned, "}];
    if ((MetaFlags & 8) == 0)
    {
LABEL_11:
      if ((MetaFlags & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_34;
    }

LABEL_33:
    [v13 appendString:{@"PreferredFormForSortKey, "}];
    if ((MetaFlags & 0x20) == 0)
    {
LABEL_12:
      if ((MetaFlags & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_35;
    }

LABEL_34:
    [v13 appendString:{@"CannotBeCapitalized, "}];
    if ((MetaFlags & 0x40) == 0)
    {
LABEL_13:
      if ((MetaFlags & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_36;
    }

LABEL_35:
    [v13 appendString:{@"PreventShiftAfterPeriod, "}];
    if ((MetaFlags & 0x80) == 0)
    {
LABEL_14:
      if ((MetaFlags & 0x200000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_37;
    }

LABEL_36:
    [v13 appendString:{@"NoSuggestUntilLearned, "}];
    if ((MetaFlags & 0x200000) == 0)
    {
LABEL_15:
      if ((MetaFlags & 0x800000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }

LABEL_37:
    [v13 appendString:{@"HasCustomCapitalization, "}];
    if ((MetaFlags & 0x800000) == 0)
    {
LABEL_16:
      if ((MetaFlags & 0x1000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }

LABEL_38:
    [v13 appendString:{@"Vulgar, "}];
    if ((MetaFlags & 0x1000000) == 0)
    {
LABEL_17:
      if ((MetaFlags & 0x2000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_40;
    }

LABEL_39:
    [v13 appendString:{@"Offensive, "}];
    if ((MetaFlags & 0x2000000) == 0)
    {
LABEL_18:
      if ((MetaFlags & 0x4000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_41;
    }

LABEL_40:
    [v13 appendString:{@"Sensitive, "}];
    if ((MetaFlags & 0x4000000) == 0)
    {
LABEL_19:
      if ((MetaFlags & 0x2000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_42;
    }

LABEL_41:
    [v13 appendString:{@"Recent, "}];
    if ((MetaFlags & 0x2000000) == 0)
    {
LABEL_20:
      if ((MetaFlags & 0x8000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_43;
    }

LABEL_42:
    [v13 appendString:{@"Sensitive, "}];
    if ((MetaFlags & 0x8000000) == 0)
    {
LABEL_21:
      if ((MetaFlags & 0x10000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_44;
    }

LABEL_43:
    [v13 appendString:{@"Transient, "}];
    if ((MetaFlags & 0x10000000) == 0)
    {
LABEL_22:
      if ((MetaFlags & 0x20000000) == 0)
      {
LABEL_24:
        if ([v13 length])
        {
          [v13 replaceCharactersInRange:objc_msgSend(v13 withString:{"length") - 2, 2, &stru_1F5B8FC80}];
        }

        _os_log_send_and_compose_impl();

        goto LABEL_27;
      }

LABEL_23:
      [v13 appendString:{@"ContainsEmoji, "}];
      goto LABEL_24;
    }

LABEL_44:
    [v13 appendString:{@"Probationary, "}];
    if ((MetaFlags & 0x20000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_29:

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E0C61390(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1E0C613A0);
  }

  _Unwind_Resume(a1);
}

void sub_1E0C613BC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1E0C613C8);
}

id sub_1E0C6148C(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] string];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a1;
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

        [v2 appendFormat:@"%@, ", *(*(&v10 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if ([v2 length] >= 3)
  {
    [v2 replaceCharactersInRange:objc_msgSend(v2 withString:{"length") - 2, 2, &stru_1F5B8FC80}];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v2;
}

id sub_1E0C615EC(void *a1)
{
  v2 = [a1 _stringByRemovingServiceName];
  v3 = [a1 stringByReplacingOccurrencesOfString:v2 withString:&stru_1F5B8FC80];

  return v3;
}

uint64_t sub_1E0C6164C(void *a1)
{
  if (qword_1ED7E3970 != -1)
  {
    dispatch_once(&qword_1ED7E3970, &unk_1F5B8AC40);
  }

  v2 = qword_1ED7E3978;

  return [a1 _stringByReplacingOccurencesWithRegex:v2 replacement:&stru_1F5B8FC80];
}

uint64_t sub_1E0C616B8()
{
  qword_1ED7E3978 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"\\.?_.*local\\.|" options:1 error:0];

  return MEMORY[0x1EEE66BB8]();
}

id sub_1E0C61708(void *a1)
{
  if (!qword_1ED7E3980)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"\\.local\\.?" options:1 error:0];
    v3 = qword_1ED7E3980;
    qword_1ED7E3980 = v2;
  }

  if (!qword_1ED7E3988)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^[A-Z0-9]+@" options:1 error:0];
    v5 = qword_1ED7E3988;
    qword_1ED7E3988 = v4;
  }

  v6 = [a1 _stringByReplacingOccurencesWithRegex:qword_1ED7E3980 replacement:&stru_1F5B8FC80];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"\\ " withString:@" "];

  v8 = [v7 _stringByReplacingOccurencesWithRegex:qword_1ED7E3988 replacement:&stru_1F5B8FC80];

  return v8;
}

id sub_1E0C6182C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 stringByReplacingMatchesInString:a1 options:0 range:0 withTemplate:{objc_msgSend(a1, "length"), v6}];

  return v8;
}

uint64_t sub_1E0C618C4(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [&unk_1F5BB9B98 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(&unk_1F5BB9B98);
        }

        if ([a1 rangeOfString:*(*(&v7 + 1) + 8 * v5) options:5] != 0x7FFFFFFFFFFFFFFFLL)
        {
          result = 1;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [&unk_1F5BB9B98 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1E0C61A88(void *a1)
{
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"_.-"];
  v3 = [a1 rangeOfCharacterFromSet:v2];
  if (v3)
  {
    v4 = v3 == [a1 length] - 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

BOOL sub_1E0C61B04(void *a1)
{
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"{}[]()<>-.@#$%"];
  v3 = [a1 rangeOfCharacterFromSet:v2] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

uint64_t sub_1E0C61B60(void *a1)
{
  if ([a1 isEqualToString:@"127.0.0.1"])
  {
    return 1;
  }

  return [a1 isEqualToString:@"fe80::1"];
}

void sub_1E0C63248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E0C63690()
{
  qword_1ED7E3990 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F5BB9BB0];

  return MEMORY[0x1EEE66BB8]();
}

void *sub_1E0C642E4(uint64_t a1)
{
  v2 = sub_1E0C64334();
  result = dlsym(v2, "CLLocationCoordinate2DMake");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED7E39A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1E0C64334()
{
  v0 = sub_1E0BCC6CC();
  if (v0)
  {
    return v0;
  }

  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
  [v1 handleFailureInFunction:v3 file:@"CWFBSS.m" lineNumber:27 description:{@"%s", 0}];

  __break(1u);
  free(v4);
  return v1;
}

uint64_t sub_1E0C643E4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED7E3888 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1E0C64458(uint64_t a1)
{
  v2 = sub_1E0C64334();
  result = dlsym(v2, "CLLocationCoordinate2DIsValid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED7E39A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1E0C644A8(uint64_t a1)
{
  sub_1E0C64334();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLLocation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED7E3870 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CWFBSS.m" lineNumber:28 description:{@"Unable to find class %s", "CLLocation"}];

    __break(1u);
  }
}

void sub_1E0C6561C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) delegates];
    [v2 addObject:*(a1 + 32)];
  }
}

void sub_1E0C65714(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) delegates];
    [v2 removeObject:*(a1 + 32)];
  }
}

void sub_1E0C65818(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateRapportTeardownTimer];
  [WeakRetained _invalidateWiFiInfoRetryRequestTimer];
  v2 = [WeakRetained rapportClient];

  if (v2)
  {
    v3 = CWFGetPHOSLog();
    if (v3)
    {
      v4 = CWFGetPHOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v6 = [WeakRetained rapportClient];
    [v6 deregisterRequestID:@"com.apple.corewifi.RequestWiFiInfo"];

    v7 = [WeakRetained rapportClient];
    [v7 invalidate];

    v8 = [WeakRetained rapportClient];
    [v8 setDeviceFoundHandler:0];

    v9 = [WeakRetained rapportClient];
    [v9 setDeviceLostHandler:0];

    v10 = [WeakRetained rapportClient];
    [v10 setInterruptionHandler:0];

    v11 = [WeakRetained rapportClient];
    [v11 setInvalidationHandler:0];

    [WeakRetained setRapportClient:0];
    v12 = [WeakRetained activeDevices];
    [v12 removeAllObjects];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E0C65B00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained thisDeviceMACAddress];
  v3 = [v2 isEqualToString:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    [WeakRetained setThisDeviceMACAddress:*(a1 + 32)];
  }

  [WeakRetained _setupRapportClientWithReason:*(a1 + 48)];
}

void sub_1E0C65CAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained activeDevices];
  v3 = [v2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1E0C66370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak((v39 + 40));
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak(&a38);
  objc_destroyWeak((v41 - 176));
  objc_destroyWeak((v41 - 168));
  _Unwind_Resume(a1);
}

id sub_1E0C66414()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED7E39B0;
  v7 = qword_1ED7E39B0;
  if (!qword_1ED7E39B0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1E0C698C0;
    v3[3] = &unk_1E86E5600;
    v3[4] = &v4;
    sub_1E0C698C0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1E0C664DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C664F4(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetRapportClientWithInvalidation:0];
  v2 = CWFGetPHOSLog();
  if (v2)
  {
    v3 = CWFGetPHOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    _os_log_send_and_compose_impl();
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E0C66620(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetRapportClientWithInvalidation:1];
  v2 = CWFGetPHOSLog();
  if (v2)
  {
    v3 = CWFGetPHOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    _os_log_send_and_compose_impl();
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E0C6674C(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = CWFGetPHOSLog();
  if (v5)
  {
    v6 = CWFGetPHOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v3 ipAddress];
    [v3 model];
    v20 = 136447490;
    v21 = "[CWFDeviceDiscoveryManager _setupRapportClientWithReason:]_block_invoke";
    v22 = 2082;
    v23 = "CWFDeviceDiscoveryManager.m";
    v24 = 1024;
    v25 = 310;
    v26 = 2112;
    v27 = v3;
    v28 = 2112;
    v29 = v8;
    v31 = v30 = 2112;
    _os_log_send_and_compose_impl();
  }

  if (!*(a1 + 40))
  {
    v9 = [v3 model];
    v10 = [WeakRetained _isSupportedModel:v9];

    if (v10)
    {
      v11 = [[CWFDevice alloc] initWithRapportDevice:v3];
      v12 = [WeakRetained activeDevices];
      v13 = [v12 containsObject:v11];

      if ((v13 & 1) == 0)
      {
        v14 = [WeakRetained activeDevices];
        [v14 addObject:v11];

        v15 = [WeakRetained delegates];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = sub_1E0C669E0;
        v18[3] = &unk_1E86E74B0;
        v16 = v11;
        v19 = v16;
        [v15 enumerateObjectsUsingBlock:v18];

        [WeakRetained _fetchWiFiInfoForDevice:v16 rapportDevice:v3];
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E0C669EC(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = CWFGetPHOSLog();
  if (v5)
  {
    v6 = CWFGetPHOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136446978;
    v21 = "[CWFDeviceDiscoveryManager _setupRapportClientWithReason:]_block_invoke_2";
    v22 = 2082;
    v23 = "CWFDeviceDiscoveryManager.m";
    v24 = 1024;
    v25 = 330;
    v26 = 2112;
    v27 = v3;
    LODWORD(v17) = 38;
    v16 = &v20;
    _os_log_send_and_compose_impl();
  }

  v8 = [[CWFDevice alloc] initWithRapportDevice:v3];
  if (v8)
  {
    v9 = [WeakRetained activeDevices];
    [v9 removeObject:v8];

    v10 = [(CWFDevice *)v8 deviceRapportEffectiveIdentifier];

    if (v10)
    {
      v11 = [WeakRetained retryDevices];
      v12 = [(CWFDevice *)v8 deviceRapportEffectiveIdentifier];
      [v11 removeObjectForKey:v12];
    }
  }

  v13 = [WeakRetained delegates];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1E0C66C34;
  v18[3] = &unk_1E86E74B0;
  v19 = v8;
  v14 = v8;
  [v13 enumerateObjectsUsingBlock:v18];

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E0C66C40(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = CWFGetPHOSLog();
  v6 = v5;
  if (v3)
  {
    if (v5)
    {
      v7 = CWFGetPHOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    [WeakRetained setRapportClientActivationFailCount:{objc_msgSend(WeakRetained, "rapportClientActivationFailCount") + 1}];
    [WeakRetained _resetRapportClientWithInvalidation:1];
  }

  else
  {
    if (v5)
    {
      v8 = CWFGetPHOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) localDevice];
      v13 = [v11 idsDeviceIdentifier];
      _os_log_send_and_compose_impl();
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E0C66E90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
  [WeakRetained _invalidateRapportTeardownTimer];
}

void sub_1E0C67090(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1E0BC2D50;
  v14 = sub_1E0BC61E4;
  v15 = 0;
  v2 = [*(a1 + 32) rapportClient];
  v3 = [v2 activeDevices];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = sub_1E0C671C4;
  v7 = &unk_1E86E7550;
  v8 = *(a1 + 40);
  v9 = &v10;
  [v3 enumerateObjectsUsingBlock:&v4];

  [*(a1 + 32) _fetchWiFiInfoForDevice:*(a1 + 40) rapportDevice:{v11[5], v4, v5, v6, v7}];
  _Block_object_dispose(&v10, 8);
}

void sub_1E0C671AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C671C4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 idsDeviceIdentifier];
  v8 = [*(a1 + 32) deviceRapportEffectiveIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1E0C67538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C67558(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 idsDeviceIdentifier];
  v8 = [*(a1 + 32) deviceRapportEffectiveIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1E0C67774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C677A0(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = CWFGetPHOSLog();
  if (v8)
  {
    v9 = CWFGetPHOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v45 = 136447234;
    v46 = "[CWFDeviceDiscoveryManager _fetchWiFiInfoForDevice:rapportDevice:]_block_invoke";
    v47 = 2082;
    v48 = "CWFDeviceDiscoveryManager.m";
    v49 = 1024;
    v50 = 439;
    v51 = 2112;
    v52 = v5;
    v53 = 2112;
    v54 = v6;
    LODWORD(v40) = 48;
    v39 = &v45;
    _os_log_send_and_compose_impl();
  }

  if (v6)
  {
    v11 = [WeakRetained rapportErrorRegex];
    v12 = [v6 localizedDescription];
    v13 = [v6 localizedDescription];
    v14 = [v11 firstMatchInString:v12 options:0 range:{0, objc_msgSend(v13, "length")}];

    if (v14)
    {
      v15 = [v14 range];
      v17 = v16;
      v18 = [v6 localizedDescription];
      v19 = [v18 substringWithRange:{v15, v17}];
    }

    else
    {
      v19 = 0;
    }

    v20 = [WeakRetained wifiInfoRetryRequestTimer];
    if (v20)
    {
    }

    else
    {
      v21 = [WeakRetained rapportClient];

      if (v21)
      {
        v22 = [WeakRetained rapportQueue];
        v23 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v22);
        [WeakRetained setWifiInfoRetryRequestTimer:v23];

        v24 = [WeakRetained wifiInfoRetryRequestTimer];
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = sub_1E0C67C8C;
        handler[3] = &unk_1E86E6420;
        handler[4] = WeakRetained;
        v44 = v19;
        dispatch_source_set_event_handler(v24, handler);

        v25 = dispatch_time(0, 0);
        v26 = [WeakRetained wifiInfoRetryRequestTimer];
        dispatch_source_set_timer(v26, v25, 0x12A05F200uLL, 0);

        v27 = [WeakRetained wifiInfoRetryRequestTimer];
        dispatch_resume(v27);
      }
    }
  }

  if (v5)
  {
    v28 = [v5 objectForKeyedSubscript:@"deviceMACAddress"];
    [*(a1 + 32) setMacAddress:v28];

    v29 = [v5 objectForKeyedSubscript:@"deviceMarketingName"];
    [*(a1 + 32) setProductMarketingName:v29];

    v30 = [v5 objectForKeyedSubscript:@"deviceProductColor"];
    [*(a1 + 32) setProductColor:v30];

    v31 = [*(a1 + 32) model];

    if (!v31)
    {
      v32 = [v5 objectForKeyedSubscript:@"deviceProductType"];
      [*(a1 + 32) setModel:v32];
    }

    v33 = [WeakRetained delegates];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1E0C67E9C;
    v41[3] = &unk_1E86E7578;
    v42 = *(a1 + 32);
    [v33 enumerateObjectsUsingBlock:v41];

    v34 = [WeakRetained retryDevices];
    v35 = [*(a1 + 32) deviceRapportEffectiveIdentifier];
    [v34 removeObjectForKey:v35];

    v36 = [WeakRetained retryDevices];
    v37 = [v36 count];

    if (!v37)
    {
      [WeakRetained _invalidateWiFiInfoRetryRequestTimer];
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

void sub_1E0C67C8C(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) retryDevices];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    if ([v5 retryCount] < 4)
    {
      [v5 setRetryCount:{objc_msgSend(v5, "retryCount") + 1}];
      [*(a1 + 32) _fetchWiFiInfoForDevice:v5 rapportDevice:v6];
    }

    else
    {
      v7 = CWFGetPHOSLog();
      if (v7)
      {
        v8 = CWFGetPHOSLog();
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
        v9 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 40);
        _os_log_send_and_compose_impl();
      }

      [*(a1 + 32) _reportFaultEventForDevices:v4];
      v10 = [*(a1 + 32) retryDevices];
      [v10 removeObjectForKey:*(a1 + 40)];

      [v5 setRetryCount:0];
    }
  }

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E0C67E9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didFetchWifiInfoForDevice:*(a1 + 32)];
  }
}

void sub_1E0C680BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C680EC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = CWFGetPHOSLog();
  if (v9)
  {
    v10 = CWFGetPHOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v12 = [WeakRetained _wifiInfo];
  (*(v7 + 2))(v7, v12, 0, 0);

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0C685D4(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel__sendRapportMessageToDevice_requestID_request_options_completion_);
}

void sub_1E0C68970(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = CWFGetPHOSLog();
    if (v4)
    {
      v5 = CWFGetPHOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v25 = 136447234;
      v26 = "[CWFDeviceDiscoveryManager _sendRapportMessageToDevice:requestID:request:options:completion:]_block_invoke";
      v27 = 2082;
      v28 = "CWFDeviceDiscoveryManager.m";
      v29 = 1024;
      v30 = 578;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v3;
      _os_log_send_and_compose_impl();
    }

    (*(*(a1 + 80) + 16))(*(a1 + 80), 0);
  }

  else
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      v6 = MEMORY[0x1E695E0F8];
    }

    v7 = v6;
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v23 = @"com.apple.corewifi.RapportRequest";
      v12 = MEMORY[0x1E696AD98];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSince1970];
      v14 = [v12 numberWithDouble:?];
      v24 = v14;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    }

    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = [*(a1 + 72) identifier];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C68C30;
    v19[3] = &unk_1E86E75F0;
    v20 = *(a1 + 32);
    v22 = *(a1 + 80);
    v21 = *(a1 + 56);
    [v15 sendRequestID:v16 request:v9 destinationID:v17 options:v7 responseHandler:v19];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E0C68C30(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = CWFGetPHOSLog();
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v12 = CWFGetPHOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      _os_log_send_and_compose_impl();
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
  }

  else
  {
    if (v10)
    {
      v13 = CWFGetPHOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      _os_log_send_and_compose_impl();
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v7);
  }

  [*(a1 + 40) invalidate];

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E0C69738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1E0C698C0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!qword_1ED7E39B8)
  {
    qword_1ED7E39B8 = _sl_dlopen();
  }

  result = objc_getClass("RPCompanionLinkClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E39B0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0C699C4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED7E39B8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1E0C69A38(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!qword_1ED7E39C8)
  {
    qword_1ED7E39C8 = _sl_dlopen();
  }

  result = objc_getClass("WiFiUsageMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E39C0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0C69B3C(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED7E39C8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E0C6A138(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) knownNetworks];
  v4 = [v3 allObjects];
  [*(*(a1 + 32) + 160) setKnownNetworks:v4];

  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(*(a1 + 32) + 160);
    _os_log_send_and_compose_impl();
  }

  if (objc_opt_class())
  {
    v8 = [*(*(a1 + 32) + 160) coreAnalyticsEventName];
    v9 = [*(*(a1 + 32) + 160) coreAnalyticsEventPayload];
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v20 = v9;
    AnalyticsSendEventLazy();
  }

  v13 = objc_alloc_init(CWFAutoJoinStatistics);
  v14 = *(a1 + 32);
  v15 = *(v14 + 160);
  *(v14 + 160) = v13;

  v16 = [MEMORY[0x1E695DF00] date];
  [*(*(a1 + 32) + 160) setStartedAt:v16];

  v17 = *(*(a1 + 32) + 168);
  if (v17)
  {
    v18 = dispatch_walltime(0, 86400000000000);
    dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  objc_sync_exit(v2);

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E0C6A474(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(a1 + 32) + 184);
    _os_log_send_and_compose_impl();
  }

  [*(a1 + 32) __submitAutoJoinMetric:*(*(a1 + 32) + 184)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 184);
  *(v6 + 184) = 0;

  v8 = *(*(a1 + 32) + 176);
  if (v8)
  {
    dispatch_source_set_timer(v8, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  objc_sync_exit(v2);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E0C6A6D8(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134219010;
    v17 = v3 / 0x3B9ACA00;
    v18 = 2048;
    v19 = v3 % 0x3B9ACA00 / 0x3E8;
    v20 = 2082;
    v21 = "[CWFAutoJoinManager invalidate]_block_invoke";
    v22 = 2082;
    v23 = "CWFAutoJoinManager.m";
    v24 = 1024;
    v25 = 477;
    _os_log_send_and_compose_impl();
  }

  v7 = *(*(a1 + 32) + 680);
  v8 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C6A910;
  block[3] = &unk_1E86E6010;
  block[4] = *(a1 + 32);
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, block);
  dispatch_async(v7, v9);

  v10 = *(a1 + 32);
  v11 = v10[14];
  if (v11)
  {
    dispatch_source_cancel(v11);
    v10 = *(a1 + 32);
  }

  v12 = v10[21];
  if (v12)
  {
    dispatch_source_cancel(v12);
    v10 = *(a1 + 32);
  }

  v13 = v10[22];
  if (v13)
  {
    dispatch_source_cancel(v13);
  }

  objc_autoreleasePoolPop(v2);
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E0C6A910(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v27 = 134219010;
    v28 = v3 / 0x3B9ACA00;
    v29 = 2048;
    v30 = v3 % 0x3B9ACA00 / 0x3E8;
    v31 = 2082;
    v32 = "[CWFAutoJoinManager invalidate]_block_invoke";
    v33 = 2082;
    v34 = "CWFAutoJoinManager.m";
    v35 = 1024;
    v36 = 479;
    LODWORD(v21) = 48;
    v20 = &v27;
    _os_log_send_and_compose_impl();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(*(a1 + 32) + 136);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    v11 = *MEMORY[0x1E696A798];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 reply];

        if (v14)
        {
          v15 = [v13 reply];
          v16 = [MEMORY[0x1E696ABC0] errorWithDomain:v11 code:89 userInfo:0];
          (v15)[2](v15, v16);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  [*(*(a1 + 32) + 136) removeAllObjects];
  [*(a1 + 32) setAllowAutoJoinHandler:0];
  [*(a1 + 32) setAllowKnownNetworkHandler:0];
  [*(a1 + 32) setKnownNetworkComparator:0];
  [*(a1 + 32) setScanForNetworksHandler:0];
  [*(a1 + 32) setPerformGASQueryHandler:0];
  [*(a1 + 32) setAllowJoinCandidateHandler:0];
  [*(a1 + 32) setJoinCandidateComparator:0];
  [*(a1 + 32) setAssociateToNetworkHandler:0];
  [*(a1 + 32) setAllowAutoHotspotHandler:0];
  [*(a1 + 32) setAllowHotspotHandler:0];
  [*(a1 + 32) setBrowseForHotspotsHandler:0];
  [*(a1 + 32) setConnectToHotspotHandler:0];
  [*(a1 + 32) setUpdateKnownNetworkHandler:0];
  [*(a1 + 32) setEventHandler:0];
  [*(a1 + 32) setAllowBrokenBackhaulPersonalHotspotFallbackHandler:0];
  [*(a1 + 32) setDetectBrokenBackhaulHandler:0];
  v17 = [*(a1 + 32) invalidationHandler];

  if (v17)
  {
    v18 = [*(a1 + 32) invalidationHandler];
    v18[2]();
  }

  [*(a1 + 32) setInvalidationHandler:{0, v20, v21}];
  objc_autoreleasePoolPop(v2);
  v19 = *MEMORY[0x1E69E9840];
}

id sub_1E0C6B20C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    _os_log_send_and_compose_impl();
  }

  v5 = [*(a1 + 40) coreAnalyticsEventPayload];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void sub_1E0C6CE34(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 64), 8);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1E0C6CE64(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (v10 && !v5)
  {
    v7 = [v10 copy];
    v8 = *(a1 + 32);
    v9 = *(v8 + 80);
    *(v8 + 80) = v7;
  }

  objc_sync_exit(v6);
}

void sub_1E0C6D58C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v9 = CWFErrorWithDescription(v7, 6, v8);
    (*(v6 + 16))(v6, v9);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E0C6E6E0(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v9 = CWFErrorWithDescription(v7, 6, v8);
    (*(v6 + 16))(v6, v9);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E0C6E8C4(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134219010;
    v14 = v3 / 0x3B9ACA00;
    v15 = 2048;
    v16 = v3 % 0x3B9ACA00 / 0x3E8;
    v17 = 2082;
    v18 = "[CWFAutoJoinManager cancelAutoJoinWithUUID:error:reply:]_block_invoke";
    v19 = 2082;
    v20 = "CWFAutoJoinManager.m";
    v21 = 1024;
    v22 = 1123;
    _os_log_send_and_compose_impl();
  }

  v7 = *(*(a1 + 32) + 680);
  v8 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C6EADC;
  block[3] = &unk_1E86E6AF0;
  v12 = *(a1 + 40);
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, block);
  dispatch_async(v7, v9);

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E0C6EADC(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E0C6EC7C(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134219010;
    v21 = v3 / 0x3B9ACA00;
    v22 = 2048;
    v23 = v3 % 0x3B9ACA00 / 0x3E8;
    v24 = 2082;
    v25 = "[CWFAutoJoinManager cancelAutoJoinWithUUID:error:reply:]_block_invoke";
    v26 = 2082;
    v27 = "CWFAutoJoinManager.m";
    v28 = 1024;
    v29 = 1142;
    LODWORD(v17) = 48;
    v16 = &v20;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) reply];

  if (v7)
  {
    v8 = [*(a1 + 32) reply];
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A798];
    v11 = *(a1 + 40);
    if (v11)
    {
      v18 = *MEMORY[0x1E696AA08];
      v19 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v9 errorWithDomain:v10 code:89 userInfo:{v12, v16, v17}];
    (v8)[2](v8, v13);

    if (v11)
    {
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, 0);
  }

  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E0C6EEE0(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 2uLL);
    v9 = CWFErrorWithDescription(v7, 2, v8);
    (*(v6 + 16))(v6, v9);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E0C6F0C4(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134219010;
    v20 = v3 / 0x3B9ACA00;
    v21 = 2048;
    v22 = v3 % 0x3B9ACA00 / 0x3E8;
    v23 = 2082;
    v24 = "[CWFAutoJoinManager cancelAutoJoinWithUUID:error:reply:]_block_invoke";
    v25 = 2082;
    v26 = "CWFAutoJoinManager.m";
    v27 = 1024;
    v28 = 1173;
    LODWORD(v16) = 48;
    v15 = &v19;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) reply];

  if (v7)
  {
    v8 = [*(a1 + 32) reply];
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A798];
    v11 = *(a1 + 40);
    if (v11)
    {
      v17 = *MEMORY[0x1E696AA08];
      v18 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v9 errorWithDomain:v10 code:89 userInfo:{v12, v15, v16}];
    (v8)[2](v8, v13);

    if (v11)
    {
    }
  }

  objc_autoreleasePoolPop(v2);
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E0C6F310(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134219010;
    v14 = v3 / 0x3B9ACA00;
    v15 = 2048;
    v16 = v3 % 0x3B9ACA00 / 0x3E8;
    v17 = 2082;
    v18 = "[CWFAutoJoinManager cancelAutoJoinWithUUID:error:reply:]_block_invoke";
    v19 = 2082;
    v20 = "CWFAutoJoinManager.m";
    v21 = 1024;
    v22 = 1187;
    _os_log_send_and_compose_impl();
  }

  v7 = *(*(a1 + 32) + 680);
  v8 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C6F528;
  block[3] = &unk_1E86E6AF0;
  v12 = *(a1 + 40);
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, block);
  dispatch_async(v7, v9);

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E0C6F528(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E0C705A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 176);
  if (v3)
  {
    v4 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C7068C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 176);
  if (v3)
  {
    dispatch_source_set_timer(v3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C714A0(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = [*(a1 + 32) reply];

  if (v6)
  {
    v7 = [*(a1 + 32) reply];
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:89 userInfo:0];
    (v7)[2](v7, v8);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0C71A48()
{
  result = MGGetSInt32Answer();
  dword_1ED7E39D0 = result;
  return result;
}

void sub_1E0C72990(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = [*(a1 + 32) reply];

  if (v6)
  {
    v7 = [*(a1 + 32) reply];
    v8 = *MEMORY[0x1E696A798];
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
    v10 = CWFErrorWithDescription(v8, 1, v9);
    (v7)[2](v7, v10);
  }

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E0C72B98(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = [*(a1 + 32) reply];

  if (v6)
  {
    v7 = [*(a1 + 32) reply];
    v8 = *MEMORY[0x1E696A798];
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x25uLL);
    v10 = CWFErrorWithDescription(v8, 37, v9);
    (v7)[2](v7, v10);
  }

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E0C72DA0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(a1 + 32);
  if (*(a1 + 40) == *(v4 + 144))
  {
    *(v4 + 144) = 0;
  }

  objc_sync_exit(v3);

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C72E18(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __performAutoJoin];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C73060(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = [*(a1 + 32) eventHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) eventHandler];
    v8 = [*(*(a1 + 32) + 200) UUID];
    v9 = [*(*(a1 + 32) + 200) autoJoinParameters];
    (v7)[2](v7, v8, v9, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E0C77E14(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose(&STACK[0x400], 8);
  _Block_object_dispose(&STACK[0x430], 8);
  _Block_object_dispose(&STACK[0x450], 8);
  _Unwind_Resume(a1);
}

NSObject *sub_1E0C77FFC(uint64_t a1)
{
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

NSObject *sub_1E0C780C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setBrokenBackhaulState:?];
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1E0BD3BE8(a3);
    _os_log_send_and_compose_impl();
  }

  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    result = dispatch_semaphore_signal(result);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E0C781E4(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v33 = 134219010;
    v34 = v2 / 0x3B9ACA00;
    v35 = 2048;
    v36 = v2 % 0x3B9ACA00 / 0x3E8;
    v37 = 2082;
    v38 = "[CWFAutoJoinManager __performAutoJoin]_block_invoke";
    v39 = 2082;
    v40 = "CWFAutoJoinManager.m";
    v41 = 1024;
    v42 = 2503;
    LODWORD(v24) = 48;
    v23 = &v33;
    _os_log_send_and_compose_impl();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        LOBYTE(v33) = 0;
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        v27 = 0;
        v12 = [v10 __allowKnownNetwork:v9 context:v11 allowForSeamlessSSIDTransition:0 defer:&v33 targetQueue:0 error:{&v27, v23, v24}];
        v13 = v27;
        if (v12)
        {
          [*(a1 + 56) addObject:v9];
          if (v33 == 1)
          {
            v14 = *(a1 + 40);
            objc_sync_enter(v14);
            [*(*(a1 + 40) + 432) addObject:v9];
            objc_sync_exit(v14);
          }

          else
          {
            [*(a1 + 64) addObject:v9];
          }

          if ([v9 hiddenState] != 2)
          {
            goto LABEL_23;
          }

          v15 = [v9 wasHiddenBefore];
          if (v15)
          {
            v16 = [v9 wasHiddenBefore];
            [v16 timeIntervalSinceNow];
            v18 = v17 < 0.0;
            v19 = [v9 wasHiddenBefore];
            [v19 timeIntervalSinceNow];
            v21 = v20;

            if (v18)
            {
              if (v21 <= -604800.0)
              {
                goto LABEL_24;
              }

LABEL_23:
              [*(a1 + 72) addObject:v9];
            }

            else if (v21 < 604800.0)
            {
              goto LABEL_23;
            }
          }

LABEL_24:
          *(*(*(a1 + 88) + 8) + 24) &= [v9 isStandalone6G];
          goto LABEL_25;
        }

        if ([v9 isPasspoint])
        {
          [*(a1 + 80) addObject:v9];
        }

LABEL_25:
        *(*(*(a1 + 96) + 8) + 24) &= [v9 isPasspoint] ^ 1;
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x1E69E9840];
}

void sub_1E0C785B8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E0C78B34(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 lastJoinedByUserAt];
  if (v4)
  {
  }

  else
  {
    v5 = [v3 lastJoinedAt];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;
    [*(a1 + 32) timeIntervalSinceReferenceDate];
    v9 = v8;

    if (v7 < v9)
    {
      v10 = CWFGetOSLog();
      if (v10)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v3 identifier];
        v15 = [v13 redactedForWiFi];
        _os_log_send_and_compose_impl();
      }

      [*(a1 + 40) addObject:v3];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E0C7BD14(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  if (([v10 wasMoreRecentlyJoinedByUser] & 1) == 0)
  {
    v5 = [v10 lastJoinedAt];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;
    [*(a1 + 32) timeIntervalSinceReferenceDate];
    v9 = v8;

    if (v7 >= v9)
    {
      *(*(a1 + 40) + 496) = 1;
      *a3 = 1;
    }
  }
}

void sub_1E0C7E64C(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134219010;
    v13 = v3 / 0x3B9ACA00;
    v14 = 2048;
    v15 = v3 % 0x3B9ACA00 / 0x3E8;
    v16 = 2082;
    v17 = "[CWFAutoJoinManager __updateDiscoverTimestampForJoinCandidates:]_block_invoke";
    v18 = 2082;
    v19 = "CWFAutoJoinManager.m";
    v20 = 1024;
    v21 = 4239;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) updateKnownNetworkHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) updateKnownNetworkHandler];
    v9 = [*(a1 + 40) matchingKnownNetworkProfile];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E0C7E878;
    v11[3] = &unk_1E86E77D0;
    v11[4] = *(a1 + 48);
    (v8)[2](v8, v9, v11);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

id sub_1E0C7E878(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MEMORY[0x1E695DF00];
    v5 = [*(a1 + 32) age];
    v6 = 0.0;
    if (v5 <= 0x3E7)
    {
      v6 = -([*(a1 + 32) age] / 0x3E8uLL);
    }

    v7 = [v4 dateWithTimeIntervalSinceNow:v6];
    [v7 timeIntervalSinceReferenceDate];
    v9 = v8;
    v10 = [v3 lastDiscoveredAt];
    [v10 timeIntervalSinceReferenceDate];
    v12 = v9 - v11;

    if (v12 >= 86400.0)
    {
      [v3 setLastDiscoveredAt:v7];
      v13 = v3;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1E0C7EBE0(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134219010;
    v16 = v3 / 0x3B9ACA00;
    v17 = 2048;
    v18 = v3 % 0x3B9ACA00 / 0x3E8;
    v19 = 2082;
    v20 = "[CWFAutoJoinManager __updateRNRChannel:has6GHzOnlyBSS:joinCandidate:]_block_invoke";
    v21 = 2082;
    v22 = "CWFAutoJoinManager.m";
    v23 = 1024;
    v24 = 4267;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) updateKnownNetworkHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) updateKnownNetworkHandler];
    v9 = [*(a1 + 40) matchingKnownNetworkProfile];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E0C7EE34;
    v11[3] = &unk_1E86E77F8;
    v14 = *(a1 + 64);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    (v8)[2](v8, v9, v11);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

id sub_1E0C7EE34(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    goto LABEL_38;
  }

  v33 = *(a1 + 48);
  if (v33 == 1)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    [v3 setWas6GHzOnlyAt:v4];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = v3;
  obj = [v3 BSSList];
  v5 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v5)
  {
    goto LABEL_36;
  }

  v6 = v5;
  v7 = *v37;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v37 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v36 + 1) + 8 * i);
      v10 = [v9 BSSID];
      if (v10)
      {
        v11 = v10;
        v12 = [*(a1 + 32) BSSID];
        if (v12)
        {
          v13 = v12;
          v14 = [v9 BSSID];
          v15 = [*(a1 + 32) BSSID];
          v16 = [v14 isEqual:v15];

          if (v16)
          {
            if (![*(a1 + 40) is2GHz])
            {
              goto LABEL_26;
            }

            v18 = [v9 colocated2GHzRNRChannel];
            v19 = v18;
            if (v18 != *(a1 + 40))
            {
              v20 = [v9 colocated2GHzRNRChannel];
              v21 = v20;
              if (v20 && *(a1 + 40))
              {
                v22 = [v9 colocated2GHzRNRChannel];
                v23 = [v22 isEqual:*(a1 + 40)];

                if (v23)
                {
                  goto LABEL_26;
                }
              }

              else
              {
              }

              [v9 setColocated2GHzRNRChannel:*(a1 + 40)];
              goto LABEL_34;
            }

LABEL_26:
            if (![*(a1 + 40) is5GHz])
            {
              goto LABEL_36;
            }

            v24 = [v9 colocated5GHzRNRChannel];
            v25 = v24;
            if (v24 == *(a1 + 40))
            {

              goto LABEL_36;
            }

            v26 = [v9 colocated5GHzRNRChannel];
            v27 = v26;
            if (v26 && *(a1 + 40))
            {
              v28 = [v9 colocated5GHzRNRChannel];
              v29 = [v28 isEqual:*(a1 + 40)];

              if (v29)
              {
                goto LABEL_36;
              }
            }

            else
            {
            }

            [v9 setColocated5GHzRNRChannel:*(a1 + 40)];
LABEL_34:

            v3 = v34;
            goto LABEL_37;
          }
        }

        else
        {
        }
      }
    }

    v6 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_36:

  v3 = v34;
  if (v33)
  {
LABEL_37:
    v30 = v3;
    goto LABEL_39;
  }

LABEL_38:
  v30 = 0;
LABEL_39:

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

uint64_t sub_1E0C868E0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 SSID];
  v7 = [v6 length];

  v8 = [v5 SSID];
  v9 = [v8 length];

  if (([v4 isFILSDiscoveryFrame] & 1) != 0 || (objc_msgSend(v5, "isFILSDiscoveryFrame") & 1) != 0 || (v7 == 0) != (v9 != 0))
  {
    v10 = [v4 channel];
    v11 = [v10 is2GHz];
    v12 = [v5 channel];
    v13 = [v12 is2GHz];

    if (v11 == v13)
    {
      v15 = 0;
    }

    else
    {
      v14 = [v4 channel];
      if ([v14 is2GHz])
      {
        v15 = -1;
      }

      else
      {
        v15 = 1;
      }
    }
  }

  else if (v7)
  {
    v15 = 1;
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

uint64_t sub_1E0C89494(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 batteryLife];
  v7 = [v6 integerValue];

  v8 = [v5 signalStrength];

  v9 = [v8 integerValue];
  v10 = [v4 batteryLife];
  v11 = [v10 integerValue];

  v12 = [v4 signalStrength];

  v13 = [v12 integerValue];
  v15 = v11 < 20 || v13 < 1;
  v17 = v7 > 19 && v9 > 0;
  v18 = v17 ^ v15;
  v19 = !v15;
  v20 = -1;
  if (v19)
  {
    v20 = 1;
  }

  if (v18)
  {
    return 0;
  }

  else
  {
    return v20;
  }
}

uint64_t sub_1E0C89580(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 group];
  if (v6 == [v5 group])
  {
    goto LABEL_2;
  }

  if ([v4 group] == 1 || objc_msgSend(v5, "group") == 1)
  {
    v8 = 1;
  }

  else
  {
    if ([v4 group] != 2 && objc_msgSend(v5, "group") != 2)
    {
LABEL_2:
      v7 = 0;
      goto LABEL_9;
    }

    v8 = 2;
  }

  if ([v5 group] == v8)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

LABEL_9:

  return v7;
}

void sub_1E0C8AFC4(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  *(*(a1 + 32) + 304) = 0;
  v2 = *(a1 + 32);
  if ((v2[256] & 1) == 0)
  {
    [v2 __nextRequest];
  }

  objc_sync_exit(obj);
}

void sub_1E0C8BC50(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1E0BEE2F0([v4 integerValue]);
    _os_log_send_and_compose_impl();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E0C8C570(uint64_t a1)
{
  v7 = objc_alloc_init(CWFAutoJoinParameters);
  [(CWFAutoJoinParameters *)v7 setMode:2];
  -[CWFAutoJoinParameters setTrigger:](v7, "setTrigger:", [*(a1 + 32) __retryTriggerForRetrySchedule:*(*(a1 + 32) + 96)]);
  v2 = objc_alloc_init(CWFAutoJoinRequest);
  v3 = [MEMORY[0x1E696AFB0] UUID];
  [(CWFAutoJoinRequest *)v2 setUUID:v3];

  [(CWFAutoJoinRequest *)v2 setParameters:v7];
  v4 = [*(a1 + 32) __retryIntervalWithScheduleIndex:*(*(a1 + 32) + 104)];
  -[CWFAutoJoinRequest setAllowAutoHotspotFallback:](v2, "setAllowAutoHotspotFallback:", [v4 allowAutoHotspotFallback]);

  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  *(*(a1 + 32) + 120) = 0;
  v6 = *(a1 + 32);
  if ((v6[256] & 1) == 0)
  {
    [v6 __addRequest:v2];
  }

  objc_sync_exit(v5);
}

void sub_1E0C8C9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1E0C8C9EC(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v26 = 134219010;
    v27 = v3 / 0x3B9ACA00;
    v28 = 2048;
    v29 = v3 % 0x3B9ACA00 / 0x3E8;
    v30 = 2082;
    v31 = "[CWFAutoJoinManager __calloutToAllowAutoJoinWithTrigger:error:]_block_invoke";
    v32 = 2082;
    v33 = "CWFAutoJoinManager.m";
    v34 = 1024;
    v35 = 7441;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) allowAutoJoinHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) allowAutoJoinHandler];
    v9 = *(a1 + 72);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1E0C8CCD8;
    v21[3] = &unk_1E86E78A8;
    v23 = *(a1 + 56);
    v20 = *(a1 + 40);
    v10 = v20;
    v22 = v20;
    (v8)[2](v8, v9, v21);
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v24 = *MEMORY[0x1E696A578];
    v25 = @"CWFAutoJoinManager.allowAutoJoinHandler() not configured";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v14 = [v11 errorWithDomain:v12 code:6 userInfo:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v18 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 64) + 8) + 24), &v18, 1u);
    if (!v18)
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40), v17);
    }
  }

  objc_autoreleasePoolPop(v2);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E0C8CCD8(void *a1, char a2, void *a3)
{
  v7 = a3;
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  v6 = 0;
  atomic_compare_exchange_strong((*(a1[7] + 8) + 24), &v6, 1u);
  if (!v6)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0C8D250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 256), 8);
  _Block_object_dispose((v37 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1E0C8D2A8(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v29 = 134219010;
    v30 = v3 / 0x3B9ACA00;
    v31 = 2048;
    v32 = v3 % 0x3B9ACA00 / 0x3E8;
    v33 = 2082;
    v34 = "[CWFAutoJoinManager __calloutToAllowKnownNetwork:trigger:allowForSeamlessSSIDTransition:defer:queue:error:]_block_invoke";
    v35 = 2082;
    v36 = "CWFAutoJoinManager.m";
    v37 = 1024;
    v38 = 7484;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) allowKnownNetworkHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) allowKnownNetworkHandler];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1E0C8D5AC;
    v23[3] = &unk_1E86E78F8;
    v25 = *(a1 + 72);
    v11 = *(a1 + 96);
    v26 = *(a1 + 88);
    v22 = *(a1 + 56);
    v12 = v22;
    v24 = v22;
    (v8)[2](v8, v9, v11, v10, v23);
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A798];
    v27 = *MEMORY[0x1E696A578];
    v28 = @"CWFAutoJoinManager.allowKnownNetworkHandler() not configured";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v16 = [v13 errorWithDomain:v14 code:6 userInfo:v15];
    v17 = *(*(a1 + 80) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v20 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 88) + 8) + 24), &v20, 1u);
    if (!v20)
    {
      (*(*(a1 + 56) + 16))(*(a1 + 56), v19);
    }
  }

  objc_autoreleasePoolPop(v2);
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1E0C8D5AC(void *a1, char a2, char a3, void *a4)
{
  v9 = a4;
  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 24) = a3;
  objc_storeStrong((*(a1[7] + 8) + 40), a4);
  v8 = 0;
  atomic_compare_exchange_strong((*(a1[8] + 8) + 24), &v8, 1u);
  if (!v8)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0C8D660(void *a1, char a2, char a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void sub_1E0C8DA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1E0C8DAD8(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v27 = 134219010;
    v28 = v3 / 0x3B9ACA00;
    v29 = 2048;
    v30 = v3 % 0x3B9ACA00 / 0x3E8;
    v31 = 2082;
    v32 = "[CWFAutoJoinManager __calloutToScanForNetworksWithParameters:scanChannels:error:]_block_invoke";
    v33 = 2082;
    v34 = "CWFAutoJoinManager.m";
    v35 = 1024;
    v36 = 7543;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) scanForNetworksHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) scanForNetworksHandler];
    v9 = *(a1 + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v20 = *(a1 + 48);
    v23 = *(a1 + 64);
    v21[2] = sub_1E0C8DDD0;
    v21[3] = &unk_1E86E7970;
    v24 = *(a1 + 80);
    v10 = v20;
    v22 = v20;
    (v8)[2](v8, v9, v21);
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v25 = *MEMORY[0x1E696A578];
    v26 = @"CWFAutoJoinManager.scanForNetworksHandler() not configured";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v14 = [v11 errorWithDomain:v12 code:6 userInfo:v13];
    v15 = *(*(a1 + 72) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v18 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 80) + 8) + 24), &v18, 1u);
    if (!v18)
    {
      (*(*(a1 + 48) + 16))(*(a1 + 48), v17);
    }
  }

  objc_autoreleasePoolPop(v2);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E0C8DDD0(void *a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  objc_storeStrong((*(a1[6] + 8) + 40), a4);
  objc_storeStrong((*(a1[7] + 8) + 40), a2);
  v10 = 0;
  atomic_compare_exchange_strong((*(a1[8] + 8) + 24), &v10, 1u);
  if (!v10)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0C8E290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1E0C8E2E0(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v27 = 134219010;
    v28 = v3 / 0x3B9ACA00;
    v29 = 2048;
    v30 = v3 % 0x3B9ACA00 / 0x3E8;
    v31 = 2082;
    v32 = "[CWFAutoJoinManager __calloutToPerformGASQueryWithParameters:GASQueryNetworks:error:]_block_invoke";
    v33 = 2082;
    v34 = "CWFAutoJoinManager.m";
    v35 = 1024;
    v36 = 7594;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) performGASQueryHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) performGASQueryHandler];
    v9 = *(a1 + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v20 = *(a1 + 48);
    v23 = *(a1 + 64);
    v21[2] = sub_1E0C8E5D8;
    v21[3] = &unk_1E86E7970;
    v24 = *(a1 + 80);
    v10 = v20;
    v22 = v20;
    (v8)[2](v8, v9, v21);
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v25 = *MEMORY[0x1E696A578];
    v26 = @"CWFAutoJoinManager.performGASQueryHandler() not configured";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v14 = [v11 errorWithDomain:v12 code:6 userInfo:v13];
    v15 = *(*(a1 + 72) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v18 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 80) + 8) + 24), &v18, 1u);
    if (!v18)
    {
      (*(*(a1 + 48) + 16))(*(a1 + 48), v17);
    }
  }

  objc_autoreleasePoolPop(v2);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E0C8E5D8(void *a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  objc_storeStrong((*(a1[6] + 8) + 40), a4);
  objc_storeStrong((*(a1[7] + 8) + 40), a2);
  v10 = 0;
  atomic_compare_exchange_strong((*(a1[8] + 8) + 24), &v10, 1u);
  if (!v10)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0C8EA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1E0C8EA98(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v28 = 134219010;
    v29 = v3 / 0x3B9ACA00;
    v30 = 2048;
    v31 = v3 % 0x3B9ACA00 / 0x3E8;
    v32 = 2082;
    v33 = "[CWFAutoJoinManager __calloutToAllowJoinCandidate:trigger:defer:error:]_block_invoke";
    v34 = 2082;
    v35 = "CWFAutoJoinManager.m";
    v36 = 1024;
    v37 = 7643;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) allowJoinCandidateHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) allowJoinCandidateHandler];
    v9 = *(a1 + 40);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v21 = *(a1 + 48);
    v24 = *(a1 + 64);
    v22[2] = sub_1E0C8ED94;
    v22[3] = &unk_1E86E78F8;
    v10 = *(a1 + 88);
    v25 = *(a1 + 80);
    v11 = v21;
    v23 = v21;
    (v8)[2](v8, v9, v10, v22);
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A798];
    v26 = *MEMORY[0x1E696A578];
    v27 = @"CWFAutoJoinManager.allowJoinCandidateHandler() not configured";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v15 = [v12 errorWithDomain:v13 code:6 userInfo:v14];
    v16 = *(*(a1 + 72) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v19 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 80) + 8) + 24), &v19, 1u);
    if (!v19)
    {
      (*(*(a1 + 48) + 16))(*(a1 + 48), v18);
    }
  }

  objc_autoreleasePoolPop(v2);
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1E0C8ED94(void *a1, char a2, char a3, void *a4)
{
  v9 = a4;
  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 24) = a3;
  objc_storeStrong((*(a1[7] + 8) + 40), a4);
  v8 = 0;
  atomic_compare_exchange_strong((*(a1[8] + 8) + 24), &v8, 1u);
  if (!v8)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0C8F154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C8F18C(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v26 = 134219010;
    v27 = v3 / 0x3B9ACA00;
    v28 = 2048;
    v29 = v3 % 0x3B9ACA00 / 0x3E8;
    v30 = 2082;
    v31 = "[CWFAutoJoinManager __calloutToAssociateWithParameters:error:]_block_invoke";
    v32 = 2082;
    v33 = "CWFAutoJoinManager.m";
    v34 = 1024;
    v35 = 7686;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) associateToNetworkHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) associateToNetworkHandler];
    v9 = *(a1 + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1E0C8F478;
    v21[3] = &unk_1E86E79E8;
    v23 = *(a1 + 64);
    v20 = *(a1 + 48);
    v10 = v20;
    v22 = v20;
    (v8)[2](v8, v9, v21);
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v24 = *MEMORY[0x1E696A578];
    v25 = @"CWFAutoJoinManager.associateToNetworkHandler() not configured";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v14 = [v11 errorWithDomain:v12 code:6 userInfo:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v18 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 64) + 8) + 24), &v18, 1u);
    if (!v18)
    {
      (*(*(a1 + 48) + 16))(*(a1 + 48), v17);
    }
  }

  objc_autoreleasePoolPop(v2);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E0C8F478(void *a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v4 = 0;
  atomic_compare_exchange_strong((*(a1[6] + 8) + 24), &v4, 1u);
  if (!v4)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0C8F810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1E0C8F854(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v26 = 134219010;
    v27 = v3 / 0x3B9ACA00;
    v28 = 2048;
    v29 = v3 % 0x3B9ACA00 / 0x3E8;
    v30 = 2082;
    v31 = "[CWFAutoJoinManager __calloutToAllowAutoHotspotWithTrigger:error:]_block_invoke";
    v32 = 2082;
    v33 = "CWFAutoJoinManager.m";
    v34 = 1024;
    v35 = 7723;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) allowAutoHotspotHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) allowAutoHotspotHandler];
    v9 = *(a1 + 72);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1E0C8FB40;
    v21[3] = &unk_1E86E7A38;
    v23 = *(a1 + 56);
    v20 = *(a1 + 40);
    v10 = v20;
    v22 = v20;
    (v8)[2](v8, v9, v21);
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v24 = *MEMORY[0x1E696A578];
    v25 = @"CWFAutoJoinManager.allowAutoHotspotHandler() not configured";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v14 = [v11 errorWithDomain:v12 code:6 userInfo:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v18 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 64) + 8) + 24), &v18, 1u);
    if (!v18)
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40), v17);
    }
  }

  objc_autoreleasePoolPop(v2);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E0C8FB40(void *a1, uint64_t a2, void *a3)
{
  v7 = a3;
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  v6 = 0;
  atomic_compare_exchange_strong((*(a1[7] + 8) + 24), &v6, 1u);
  if (!v6)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0C8FF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1E0C8FF4C(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v26 = 134219010;
    v27 = v3 / 0x3B9ACA00;
    v28 = 2048;
    v29 = v3 % 0x3B9ACA00 / 0x3E8;
    v30 = 2082;
    v31 = "[CWFAutoJoinManager __calloutToAllowHotspot:error:]_block_invoke";
    v32 = 2082;
    v33 = "CWFAutoJoinManager.m";
    v34 = 1024;
    v35 = 7761;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) allowHotspotHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) allowHotspotHandler];
    v9 = *(a1 + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v20 = *(a1 + 48);
    v23 = *(a1 + 64);
    v21[2] = sub_1E0C90234;
    v21[3] = &unk_1E86E78A8;
    v10 = v20;
    v22 = v20;
    (v8)[2](v8, v9, v21);
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v24 = *MEMORY[0x1E696A578];
    v25 = @"CWFAutoJoinManager.allowHotspotHandler() not configured";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v14 = [v11 errorWithDomain:v12 code:6 userInfo:v13];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v18 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 72) + 8) + 24), &v18, 1u);
    if (!v18)
    {
      (*(*(a1 + 48) + 16))(*(a1 + 48), v17);
    }
  }

  objc_autoreleasePoolPop(v2);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E0C90234(void *a1, char a2, void *a3)
{
  v7 = a3;
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  v6 = 0;
  atomic_compare_exchange_strong((*(a1[7] + 8) + 24), &v6, 1u);
  if (!v6)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0C90504(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v22 = 134219010;
    v23 = v3 / 0x3B9ACA00;
    v24 = 2048;
    v25 = v3 % 0x3B9ACA00 / 0x3E8;
    v26 = 2082;
    v27 = "[CWFAutoJoinManager __calloutToBrowseForHotspotsWithTimeout:maxCacheAge:cacheOnly:reply:]_block_invoke";
    v28 = 2082;
    v29 = "CWFAutoJoinManager.m";
    v30 = 1024;
    v31 = 7794;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) browseForHotspotsHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) browseForHotspotsHandler];
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0C907C8;
    v18[3] = &unk_1E86E7A88;
    v19 = *(a1 + 40);
    (v8)[2](v8, v9, v10, v11, v18);

    v12 = v19;
LABEL_10:

    goto LABEL_11;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A798];
    v20 = *MEMORY[0x1E696A578];
    v21 = @"CWFAutoJoinManager.browseForHotspotsHandler() not configured";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = [v14 errorWithDomain:v15 code:6 userInfo:v12];
    (*(v13 + 16))(v13, v16, 0);

    goto LABEL_10;
  }

LABEL_11:
  objc_autoreleasePoolPop(v2);
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0C907C8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C90AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1E0C90B28(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v26 = 134219010;
    v27 = v3 / 0x3B9ACA00;
    v28 = 2048;
    v29 = v3 % 0x3B9ACA00 / 0x3E8;
    v30 = 2082;
    v31 = "[CWFAutoJoinManager __calloutToAllowBrokenBackhaulPersonalHotspotFallbackAndReturnError:]_block_invoke";
    v32 = 2082;
    v33 = "CWFAutoJoinManager.m";
    v34 = 1024;
    v35 = 7818;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) allowBrokenBackhaulPersonalHotspotFallbackHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) allowBrokenBackhaulPersonalHotspotFallbackHandler];
    v9 = [*(a1 + 32) associatedNetwork];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1E0C90E24;
    v21[3] = &unk_1E86E7AD8;
    v23 = *(a1 + 56);
    v20 = *(a1 + 40);
    v10 = v20;
    v22 = v20;
    (v8)[2](v8, v9, v21);
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v24 = *MEMORY[0x1E696A578];
    v25 = @"CWFAutoJoinManager.allowBrokenBackhaulPersonalHotspotFallbackHandler() not configured";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v14 = [v11 errorWithDomain:v12 code:6 userInfo:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v18 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 64) + 8) + 24), &v18, 1u);
    if (!v18)
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40), v17);
    }
  }

  objc_autoreleasePoolPop(v2);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E0C90E24(void *a1, void *a2, char a3)
{
  v7 = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  v6 = 0;
  atomic_compare_exchange_strong((*(a1[7] + 8) + 24), &v6, 1u);
  if (!v6)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0C910D8(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v21 = 134219010;
    v22 = v3 / 0x3B9ACA00;
    v23 = 2048;
    v24 = v3 % 0x3B9ACA00 / 0x3E8;
    v25 = 2082;
    v26 = "[CWFAutoJoinManager __calloutToCheckForBrokenBackhaulAndReply:]_block_invoke";
    v27 = 2082;
    v28 = "CWFAutoJoinManager.m";
    v29 = 1024;
    v30 = 7851;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) detectBrokenBackhaulHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) detectBrokenBackhaulHandler];
    v9 = [*(a1 + 32) associatedNetwork];
    v10 = [v9 matchingKnownNetworkProfile];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0C913B0;
    v17[3] = &unk_1E86E7B28;
    v18 = *(a1 + 40);
    (v8)[2](v8, v10, v17);

    v11 = v18;
LABEL_10:

    goto LABEL_11;
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A798];
    v19 = *MEMORY[0x1E696A578];
    v20 = @"CWFAutoJoinManager.detectBrokenBackhaulHandler() not configured";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [v13 errorWithDomain:v14 code:6 userInfo:v11];
    (*(v12 + 16))(v12, v15, 0);

    goto LABEL_10;
  }

LABEL_11:
  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0C913B0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C9172C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C91770(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v28 = 134219010;
    v29 = v3 / 0x3B9ACA00;
    v30 = 2048;
    v31 = v3 % 0x3B9ACA00 / 0x3E8;
    v32 = 2082;
    v33 = "[CWFAutoJoinManager __calloutToBrowseForHotspotsWithTimeout:maxCacheAge:cacheOnly:error:]_block_invoke";
    v34 = 2082;
    v35 = "CWFAutoJoinManager.m";
    v36 = 1024;
    v37 = 7874;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) browseForHotspotsHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) browseForHotspotsHandler];
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v11 = *(a1 + 88);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1E0C91A68;
    v23[3] = &unk_1E86E7B50;
    v25 = *(a1 + 56);
    v22 = *(a1 + 40);
    v12 = v22;
    v24 = v22;
    (v8)[2](v8, v9, v10, v11, v23);
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A798];
    v26 = *MEMORY[0x1E696A578];
    v27 = @"CWFAutoJoinManager.browseForHotspotsHandler() not configured";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = [v13 errorWithDomain:v14 code:6 userInfo:v15];
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v20 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 64) + 8) + 24), &v20, 1u);
    if (!v20)
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40), v19);
    }
  }

  objc_autoreleasePoolPop(v2);
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1E0C91A68(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  v7 = 0;
  atomic_compare_exchange_strong((*(a1[7] + 8) + 24), &v7, 1u);
  if (!v7)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0C91E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C91E64(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v26 = 134219010;
    v27 = v3 / 0x3B9ACA00;
    v28 = 2048;
    v29 = v3 % 0x3B9ACA00 / 0x3E8;
    v30 = 2082;
    v31 = "[CWFAutoJoinManager __calloutToConnectToHotspot:error:]_block_invoke";
    v32 = 2082;
    v33 = "CWFAutoJoinManager.m";
    v34 = 1024;
    v35 = 7911;
    _os_log_send_and_compose_impl();
  }

  v7 = [*(a1 + 32) connectToHotspotHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) connectToHotspotHandler];
    v9 = *(a1 + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1E0C92150;
    v21[3] = &unk_1E86E79E8;
    v23 = *(a1 + 64);
    v20 = *(a1 + 48);
    v10 = v20;
    v22 = v20;
    (v8)[2](v8, v9, v21);
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v24 = *MEMORY[0x1E696A578];
    v25 = @"CWFAutoJoinManager.connectToHotspotHandler() not configured";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v14 = [v11 errorWithDomain:v12 code:6 userInfo:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v18 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 64) + 8) + 24), &v18, 1u);
    if (!v18)
    {
      (*(*(a1 + 48) + 16))(*(a1 + 48), v17);
    }
  }

  objc_autoreleasePoolPop(v2);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E0C92150(void *a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v4 = 0;
  atomic_compare_exchange_strong((*(a1[6] + 8) + 24), &v4, 1u);
  if (!v4)
  {
    (*(a1[4] + 16))();
  }
}

Class sub_1E0C926FC(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!qword_1ED7E39E8)
  {
    qword_1ED7E39E8 = _sl_dlopen();
  }

  result = objc_getClass("RTRoutineManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E39E0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0C92800(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED7E39E8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E0C92A58(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = a3;
  v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = v7 / 0x3B9ACA00;
    v12 = v7 % 0x3B9ACA00 / 0x3E8;
    v13 = [v6 interfaceName];
    v32 = 134219522;
    v33 = v11;
    v34 = 2048;
    v35 = v12;
    v36 = 2082;
    v37 = "__SCDynamicStoreCallBack";
    v38 = 2082;
    v39 = "CWFSCNetworkService.m";
    v40 = 1024;
    v41 = 61;
    v42 = 2112;
    v43 = v13;
    v44 = 2112;
    v45 = a2;
    LODWORD(v26) = 68;
    v25 = &v32;
    _os_log_send_and_compose_impl();
  }

  v14 = [v6 serviceID];
  if (v14)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], *MEMORY[0x1E69822E8], v14, 0);
    if (NetworkServiceEntity)
    {
      v16 = NetworkServiceEntity;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v17 = a2;
      v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v28;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(v17);
            }

            if (([(__CFString *)v16 isEqualToString:*(*(&v27 + 1) + 8 * i), v25, v26, v27]& 1) != 0)
            {

              CFRelease(v16);
              goto LABEL_18;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      CFRelease(v16);
    }
  }

  else
  {
LABEL_18:
    [v6 refreshServiceID];
  }

  if ([v6 isMonitoringEvents])
  {
    v22 = [v6 eventHandler];
    if (v22)
    {
      v23 = [a2 copy];
      (v22)[2](v22, v6, v23);
    }
  }

  objc_autoreleasePoolPop(v5);
  v24 = *MEMORY[0x1E69E9840];
}

void sub_1E0C92D6C(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = a2;
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  [v4 restartEventMonitoring];
  objc_autoreleasePoolPop(v3);
}

void sub_1E0C92E44(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateServiceID];
  [*(a1 + 32) __refreshNotificationKeys];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C934D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) __refreshServiceID];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C93598(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3[40] == 1)
  {
    [v3 __refreshServiceID];
    SCDynamicStoreSetDispatchQueue(*(*(a1 + 32) + 24), *(*(a1 + 32) + 16));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C93668(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 40) & 1) == 0)
  {
    *(v3 + 40) = 1;
    SCDynamicStoreSetDispatchQueue(*(*(a1 + 32) + 24), *(*(a1 + 32) + 16));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C93738(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (*(v3 + 40) == 1)
  {
    *(v3 + 40) = 0;
    SCDynamicStoreSetNotificationKeys(*(*(a1 + 32) + 24), 0, 0);
    SCDynamicStoreSetDispatchQueue(*(*(a1 + 32) + 24), 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C93858(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 40);

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C94064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C9407C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __IPv4StateConfig];
  v4 = *MEMORY[0x1E6982460];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6982460]];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = [*(a1 + 32) __IPv4SetupConfig];
    v9 = [v8 objectForKeyedSubscript:v4];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C94234(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __IPv4StateConfig];
  v4 = *MEMORY[0x1E6982468];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6982468]];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = [*(a1 + 32) __IPv4SetupConfig];
    v9 = [v8 objectForKeyedSubscript:v4];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C943EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __IPv4StateConfig];
  v4 = *MEMORY[0x1E69824C0];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69824C0]];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = [*(a1 + 32) __IPv4SetupConfig];
    v9 = [v8 objectForKeyedSubscript:v4];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C945A4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __IPv4StateConfig];
  v4 = *MEMORY[0x1E6982478];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6982478]];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = [*(a1 + 32) __IPv4SetupConfig];
    v9 = [v8 objectForKeyedSubscript:v4];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C9475C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __IPv4StateConfig];
  v4 = *MEMORY[0x1E69824C8];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69824C8]];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = [*(a1 + 32) __IPv4SetupConfig];
    v9 = [v8 objectForKeyedSubscript:v4];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C94914(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __IPv6StateConfig];
  v4 = *MEMORY[0x1E6982528];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6982528]];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = [*(a1 + 32) __IPv6SetupConfig];
    v9 = [v8 objectForKeyedSubscript:v4];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C94ACC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __IPv6StateConfig];
  v4 = *MEMORY[0x1E69824D8];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69824D8]];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = [*(a1 + 32) __IPv6SetupConfig];
    v9 = [v8 objectForKeyedSubscript:v4];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C94C84(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __IPv6SetupConfig];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69824E0]];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C94DF4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __IPv4SetupConfig];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6982488]];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C94F64(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __DNSStateConfig];
  v4 = *MEMORY[0x1E69823C8];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69823C8]];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = [*(a1 + 32) __DNSSetupConfig];
    v9 = [v8 objectForKeyedSubscript:v4];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C9511C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __DNSStateConfig];
  v4 = *MEMORY[0x1E69823D8];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69823D8]];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = [*(a1 + 32) __DNSSetupConfig];
    v9 = [v8 objectForKeyedSubscript:v4];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C952D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 48) copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C95420(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 56) copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C955DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __DHCPInfo];
  v4 = v3;
  if (v3)
  {
    LeaseStartTime = DHCPInfoGetLeaseStartTime(v3);
    if (LeaseStartTime)
    {
      v6 = [(__CFDate *)LeaseStartTime copy];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C9574C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __DHCPInfo];
  v4 = v3;
  if (v3)
  {
    LeaseExpirationTime = DHCPInfoGetLeaseExpirationTime(v3);
    if (LeaseExpirationTime)
    {
      v6 = [(__CFDate *)LeaseExpirationTime copy];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C958BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __IPv4StateConfig];
  v4 = [v3 objectForKeyedSubscript:@"NetworkSignature"];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C95A28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __IPv6StateConfig];
  v4 = [v3 objectForKeyedSubscript:@"NetworkSignature"];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C95B94(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __DHCPStateConfig];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"Option_54"];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C95D08(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __DHCPv6StateConfig];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"Option_2"];
    if ([v5 count])
    {
      v6 = [v5 firstObject];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C968EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained checkForChanges];
    [v2 scheduleTimer];
    WeakRetained = v2;
  }
}

uint64_t sub_1E0C98808(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_1E0C98824(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_1E0C988E4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0C98A64(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) requestParameters];
  v4 = [v3 interfaceName];

  if (v4)
  {
    v5 = [*(*(a1 + 40) + 208) objectForKeyedSubscript:v4];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "type")}];
    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v10 = [*(*(a1 + 40) + 208) objectForKeyedSubscript:v4];
      v11 = [v10 objectForKeyedSubscript:&unk_1F5BBC958];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v14 = [*(*(a1 + 40) + 208) objectForKeyedSubscript:&stru_1F5B8FC80];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "type")}];
    v16 = [v14 objectForKeyedSubscript:v15];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v19 = [*(*(a1 + 40) + 208) objectForKeyedSubscript:&stru_1F5B8FC80];
      v20 = [v19 objectForKeyedSubscript:&unk_1F5BBC958];
      v21 = *(*(a1 + 48) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v23 = *(*(a1 + 48) + 8);
      v25 = *(v23 + 40);
      v24 = (v23 + 40);
      if (!v25)
      {
        objc_storeStrong(v24, *(*(a1 + 40) + 216));
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C998D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C99950(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v4 = [*(a1 + 40) apple80211WithInterfaceName:?];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v6 = [*(a1 + 48) requestParameters];
    v7 = [v3 apple80211WithVirtualInterfaceRole:objc_msgSend(v6 parentInterfaceName:{"virtualInterfaceRole"), 0}];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0C99A00(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong((*(*(result + 40) + 8) + 24), &v1, 1u);
  if (!v1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1E0C9A248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C9A288(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  switch([WeakRetained type])
  {
    case 1:
    case 2:
    case 5:
    case 11:
    case 15:
    case 16:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 34:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 175:
    case 176:
    case 178:
    case 187:
    case 197:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 233:
    case 234:
    case 241:
    case 273:
      goto LABEL_2;
    case 3:
      v5 = [WeakRetained requestParameters];
      v6 = [v5 interfaceName];

      v7 = [WeakRetained response];

      if (v6)
      {
        if (!v7)
        {
          goto LABEL_118;
        }

        v8 = [WeakRetained response];
        v26 = @"Result";
        v27[0] = v6;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
        (v8)[2](v8, 0, v9);
      }

      else
      {
        if (!v7)
        {
          goto LABEL_118;
        }

        v8 = [WeakRetained response];
        v14 = *MEMORY[0x1E696A798];
        v15 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
        v16 = CWFErrorWithDescription(v14, 6, v15);
        (v8)[2](v8, v16, 0);
      }

LABEL_118:
LABEL_3:

      objc_autoreleasePoolPop(v2);
      v4 = *MEMORY[0x1E69E9840];
      return;
    case 4:
      if (*(a1 + 56) || *(a1 + 72))
      {
LABEL_2:
        [*(a1 + 32) __getApple80211:WeakRetained];
      }

      else
      {
        [*(a1 + 32) __getPlatformCapabilities:WeakRetained];
      }

      goto LABEL_3;
    case 7:
      [*(a1 + 32) __getSSID:WeakRetained XPCConnection:*(a1 + 40)];
      goto LABEL_3;
    case 8:
      [*(a1 + 32) __getSSIDForVendor:WeakRetained XPCConnection:*(a1 + 40)];
      goto LABEL_3;
    case 9:
      [*(a1 + 32) __getBSSID:WeakRetained XPCConnection:*(a1 + 40)];
      goto LABEL_3;
    case 10:
      [*(a1 + 32) __getBSSIDForVendor:WeakRetained XPCConnection:*(a1 + 40)];
      goto LABEL_3;
    case 12:
      [*(a1 + 32) __getSecurity:WeakRetained];
      goto LABEL_3;
    case 13:
      [*(a1 + 32) __getWEPSubtype:WeakRetained];
      goto LABEL_3;
    case 14:
      [*(a1 + 32) __getWAPISubtype:WeakRetained];
      goto LABEL_3;
    case 17:
      [*(a1 + 32) __setChannel:WeakRetained];
      goto LABEL_3;
    case 33:
      [*(a1 + 32) __getMACAddress:WeakRetained];
      goto LABEL_3;
    case 37:
      [*(a1 + 32) __getLinkDownStatus:WeakRetained];
      goto LABEL_3;
    case 55:
      [*(a1 + 32) __getKnownNetworkMatchingNetworkProfile:WeakRetained];
      goto LABEL_3;
    case 56:
      [*(a1 + 32) __getKnownNetworkMatchingScanResult:WeakRetained];
      goto LABEL_3;
    case 57:
      [*(a1 + 32) __getCurrentScanResult:WeakRetained XPCConnection:*(a1 + 40)];
      goto LABEL_3;
    case 59:
      [*(a1 + 32) __addKnownNetwork:WeakRetained XPCConnection:*(a1 + 40)];
      goto LABEL_3;
    case 64:
      [*(a1 + 32) __performScan:WeakRetained XPCConnection:*(a1 + 40)];
      goto LABEL_3;
    case 98:
      [*(a1 + 32) __getEventIDs:WeakRetained XPCConnection:*(a1 + 40)];
      goto LABEL_3;
    case 99:
      [*(a1 + 32) __getSystemEventIDs:WeakRetained XPCManager:*(a1 + 48)];
      goto LABEL_3;
    case 112:
      [*(a1 + 32) __getActivities:WeakRetained XPCConnection:*(a1 + 40)];
      goto LABEL_3;
    case 113:
      [*(a1 + 32) __getSystemActivities:WeakRetained XPCManager:*(a1 + 48)];
      goto LABEL_3;
    case 114:
      [*(a1 + 32) __getIO80211ControllerInfo:WeakRetained];
      goto LABEL_3;
    case 115:
      [*(a1 + 32) __getIO80211InterfaceInfo:WeakRetained];
      goto LABEL_3;
    case 116:
      [*(a1 + 32) __getIPv4Addresses:WeakRetained];
      goto LABEL_3;
    case 117:
      [*(a1 + 32) __getIPv4Router:WeakRetained];
      goto LABEL_3;
    case 118:
      [*(a1 + 32) __getIPv6Addresses:WeakRetained];
      goto LABEL_3;
    case 119:
      [*(a1 + 32) __getIPv6Router:WeakRetained];
      goto LABEL_3;
    case 120:
      [*(a1 + 32) __getNetServiceID:WeakRetained];
      goto LABEL_3;
    case 121:
      [*(a1 + 32) __getNetServiceName:WeakRetained];
      goto LABEL_3;
    case 122:
      [*(a1 + 32) __getNetServiceEnabled:WeakRetained];
      goto LABEL_3;
    case 123:
      [*(a1 + 32) __getDHCPLeaseStartTime:WeakRetained];
      goto LABEL_3;
    case 124:
      [*(a1 + 32) __getDHCPLeaseExpirationTime:WeakRetained];
      goto LABEL_3;
    case 125:
      [*(a1 + 32) __getDNSServerAddresses:WeakRetained];
      goto LABEL_3;
    case 126:
      [*(a1 + 32) __getGlobalIPv4Addresses:WeakRetained];
      goto LABEL_3;
    case 127:
      [*(a1 + 32) __getGlobalIPv4Router:WeakRetained];
      goto LABEL_3;
    case 128:
      [*(a1 + 32) __getGlobalIPv4NetServiceID:WeakRetained];
      goto LABEL_3;
    case 129:
      [*(a1 + 32) __getGlobalIPv4NetServiceName:WeakRetained];
      goto LABEL_3;
    case 130:
      [*(a1 + 32) __getGlobalIPv4InterfaceName:WeakRetained];
      goto LABEL_3;
    case 131:
      [*(a1 + 32) __getGlobalIPv6Addresses:WeakRetained];
      goto LABEL_3;
    case 132:
      [*(a1 + 32) __getGlobalIPv6Router:WeakRetained];
      goto LABEL_3;
    case 133:
      [*(a1 + 32) __getGlobalIPv6NetServiceID:WeakRetained];
      goto LABEL_3;
    case 134:
      [*(a1 + 32) __getGlobalIPv6NetServiceName:WeakRetained];
      goto LABEL_3;
    case 135:
      [*(a1 + 32) __getGlobalIPv6InterfaceName:WeakRetained];
      goto LABEL_3;
    case 136:
      [*(a1 + 32) __getGlobalDNSServerAddresses:WeakRetained];
      goto LABEL_3;
    case 137:
      [*(a1 + 32) __getNetworkReachability:WeakRetained];
      goto LABEL_3;
    case 138:
      [*(a1 + 32) __getEAP8021XSupplicantState:WeakRetained];
      goto LABEL_3;
    case 139:
      [*(a1 + 32) __getEAP8021XControlMode:WeakRetained];
      goto LABEL_3;
    case 140:
      [*(a1 + 32) __getEAP8021XControlState:WeakRetained];
      goto LABEL_3;
    case 141:
      [*(a1 + 32) __getEAP8021XClientStatus:WeakRetained];
      goto LABEL_3;
    case 142:
      [*(a1 + 32) __getRoamStatus:WeakRetained];
      goto LABEL_3;
    case 143:
      [*(a1 + 32) __getJoinStatus:WeakRetained];
      goto LABEL_3;
    case 144:
      [*(a1 + 32) __getAutoJoinStatus:WeakRetained];
      goto LABEL_3;
    case 167:
      [*(a1 + 32) __getLinkQualityMetric:WeakRetained];
      goto LABEL_3;
    case 173:
      [*(a1 + 32) __getHardwareMACAddress:WeakRetained];
      goto LABEL_3;
    case 185:
      [*(a1 + 32) __getWiFiUIStateFlags:WeakRetained];
      goto LABEL_3;
    case 193:
      [*(a1 + 32) __getAutoJoinMetric:WeakRetained];
      goto LABEL_3;
    case 194:
      [*(a1 + 32) __getAutoJoinStatistics:WeakRetained];
      goto LABEL_3;
    case 195:
      [*(a1 + 32) __resetAutoJoinStatistics:WeakRetained];
      goto LABEL_3;
    case 203:
      [*(a1 + 32) __getIPv4SubnetMasks:WeakRetained];
      goto LABEL_3;
    case 204:
      [*(a1 + 32) __getIPv4ARPResolvedHardwareAddress:WeakRetained];
      goto LABEL_3;
    case 205:
      [*(a1 + 32) __getIPv4ARPResolvedIPAddress:WeakRetained];
      goto LABEL_3;
    case 206:
      [*(a1 + 32) __getDHCPServerID:WeakRetained];
      goto LABEL_3;
    case 207:
      [*(a1 + 32) __getDHCPv6ServerID:WeakRetained];
      goto LABEL_3;
    case 208:
      [*(a1 + 32) __getIPv4NetworkSignature:WeakRetained];
      goto LABEL_3;
    case 209:
      [*(a1 + 32) __getIPv6NetworkSignature:WeakRetained];
      goto LABEL_3;
    case 220:
      [*(a1 + 32) __startHostAPMode:WeakRetained XPCConnection:*(a1 + 40)];
      goto LABEL_3;
    case 221:
      [*(a1 + 32) __stopHostAPMode:WeakRetained XPCConnection:*(a1 + 40)];
      goto LABEL_3;
    case 222:
      [*(a1 + 32) __getPrivateMACAddress:WeakRetained];
      goto LABEL_3;
    case 223:
      [*(a1 + 32) __getPrivateMACAddressMode:WeakRetained];
      goto LABEL_3;
    case 224:
      [*(a1 + 32) __setPrivateMACAddressMode:WeakRetained];
      goto LABEL_3;
    case 225:
      [*(a1 + 32) __getPrivateMACAddressModeSystemSetting:WeakRetained];
      goto LABEL_3;
    case 226:
      [*(a1 + 32) __setPrivateMACAddressModeSystemSetting:WeakRetained];
      goto LABEL_3;
    case 227:
      [*(a1 + 32) __setPrivateMACAddressUserJoinFailureUIState:WeakRetained];
      goto LABEL_3;
    case 228:
      [*(a1 + 32) __getQuickProbeRequired:WeakRetained];
      goto LABEL_3;
    case 229:
      [*(a1 + 32) __reportQuickProbeResult:WeakRetained];
      goto LABEL_3;
    case 235:
      [*(a1 + 32) __setLQMConfig:WeakRetained];
      goto LABEL_3;
    case 248:
      [*(a1 + 32) __getKnownNetworkInfoForLocalNetworkPrompt:WeakRetained XPCConnection:*(a1 + 40)];
      goto LABEL_3;
    case 250:
      [*(a1 + 32) __getNetworkManagedByMDM:WeakRetained];
      goto LABEL_3;
    case 251:
      [*(a1 + 32) __getDeviceSupervised:WeakRetained];
      goto LABEL_3;
    case 252:
      [*(a1 + 32) __checkin:WeakRetained XPCConnection:*(a1 + 40)];
      goto LABEL_3;
    case 253:
      [*(a1 + 32) __sendXPCEvent:WeakRetained];
      goto LABEL_3;
    case 254:
      [*(a1 + 32) __dumpLogs:WeakRetained];
      goto LABEL_3;
    case 255:
      [*(a1 + 32) __getCloudNetworks:WeakRetained];
      goto LABEL_3;
    case 256:
      [*(a1 + 32) __getNetworkWarningFlags:WeakRetained XPCConnection:*(a1 + 40)];
      goto LABEL_3;
    case 260:
      [*(a1 + 32) __getNearbyRecommendedNetworks:WeakRetained];
      goto LABEL_3;
    case 262:
      [*(a1 + 32) __getCaptivePortalCredentials:WeakRetained];
      goto LABEL_3;
    case 263:
      [*(a1 + 32) __setCaptivePortalCredentials:WeakRetained];
      goto LABEL_3;
    case 264:
      [*(a1 + 32) __getNetworkOfInterestHomeState:WeakRetained];
      goto LABEL_3;
    case 265:
      [*(a1 + 32) __getNetworkOfInterestWorkState:WeakRetained];
      goto LABEL_3;
    case 266:
      [*(a1 + 32) __getRecommendedKnownNetworks:WeakRetained];
      goto LABEL_3;
    case 268:
      [*(a1 + 32) __getBrokenBackhaulState:WeakRetained];
      goto LABEL_3;
    case 269:
      [*(a1 + 32) __getBrokenBackhaulStateUpdatedAt:WeakRetained];
      goto LABEL_3;
    case 271:
      [*(a1 + 32) __confirmBrokenBackhaul:WeakRetained];
      goto LABEL_3;
    case 275:
      [*(a1 + 32) __setUCMExtProfile:WeakRetained];
      goto LABEL_3;
    case 276:
      [*(a1 + 32) __askToShareWiFiNetworkSharingNetworkFromAppex:WeakRetained];
      goto LABEL_3;
    case 277:
      [*(a1 + 32) __askToShareWiFiNetworkSharingNetworkFromApp:WeakRetained];
      goto LABEL_3;
    case 278:
      [*(a1 + 32) __getWiFiNetworkSharingAskToShareStatus:WeakRetained];
      goto LABEL_3;
    case 279:
      [*(a1 + 32) __setWiFiNetworkSharingAskToShareStatus:WeakRetained];
      goto LABEL_3;
    case 281:
      [*(a1 + 32) __getWiFiNetworkSharingNetworkList:WeakRetained];
      goto LABEL_3;
    case 283:
      [*(a1 + 32) __acknowledgeWiFiNetworkSharingNetworkListUpdate:WeakRetained];
      goto LABEL_3;
    case 284:
      [*(a1 + 32) __getWiFiNetworkSharingAskToShareNetworkList:WeakRetained];
      goto LABEL_3;
    case 287:
      [*(a1 + 32) __getWiFiNetworkSharingAuthorizationLevel:WeakRetained];
      goto LABEL_3;
    case 289:
      [*(a1 + 32) __requestWiFiNetworkSharingAuthorization:WeakRetained];
      goto LABEL_3;
    default:
      v10 = sub_1E0BC2F68([WeakRetained type]);
      v11 = *(a1 + 32);
      if (v10)
      {
        [v11 __updateEventRegistration:WeakRetained XPCConnection:*(a1 + 40) XPCManager:*(a1 + 48)];
      }

      else
      {
        v12 = [v11 delegate];
        v13 = v12;
        if (v12)
        {
          [v12 XPCRequestProxy:*(a1 + 32) XPCConnection:*(a1 + 40) receivedXPCRequest:WeakRetained];
        }

        else
        {
          v17 = CWFGetOSLog();
          if (v17)
          {
            v18 = CWFGetOSLog();
          }

          else
          {
            v18 = MEMORY[0x1E69E9C10];
            v19 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v25 = sub_1E0BC2FCC([WeakRetained type]);
            _os_log_send_and_compose_impl();
          }

          v20 = [WeakRetained response];

          if (v20)
          {
            v21 = [WeakRetained response];
            v22 = *MEMORY[0x1E696A798];
            v23 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
            v24 = CWFErrorWithDescription(v22, 45, v23);
            (v21)[2](v21, v24, 0);
          }
        }
      }

      goto LABEL_3;
  }
}

void sub_1E0C9B07C(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1[4] UUID];
  v5 = [v4 UUIDString];
  v6 = [a1[5] UUIDString];
  v7 = [v3 stringWithFormat:@"%@/%@", v5, v6];

  [a1[6] __cancelRequestsWithNamePrefix:v7];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C9B220(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) UUID];
  v4 = [v3 UUIDString];

  [*(a1 + 40) __cancelRequestsWithNamePrefix:v4];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C9B32C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateEventMonitoring:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C9B818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C9B84C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    v4 = [WeakRetained __networkStackMACAddressWithInterfaceName:*(a1 + 32)];
    v5[2](v5, v4);
  }
}

void sub_1E0C9B8D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 networkName];

  if (v5)
  {
    v6 = WeakRetained[27];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0C9BA58;
    v13[3] = &unk_1E86E6420;
    v14 = v3;
    v15 = *(a1 + 32);
    [v6 addOperationSerializedByName:@"updateKnownNetwork" block:v13];
  }

  if ([v3 isPublicAirPlayNetwork])
  {
    v7 = [v3 SSID];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1E0BCE1A8();

      if (v9)
      {
        v10 = WeakRetained[27];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = sub_1E0C9BB78;
        v11[3] = &unk_1E86E6010;
        v12 = v3;
        [v10 addOperationSerializedByName:@"updateKnownNetwork" block:v11];
      }
    }
  }
}

void sub_1E0C9BA58(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    _os_log_send_and_compose_impl();
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) networkName];
  IPConfigurationForgetNetwork();

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E0C9BB78(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    _os_log_send_and_compose_impl();
  }

  v6 = [*(a1 + 32) SSID];
  sub_1E0C9BC90(v6);

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E0C9BC90(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_1ECE86980;
  v9 = off_1ECE86980;
  if (!off_1ECE86980)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1E0CC9420;
    v5[3] = &unk_1E86E5600;
    v5[4] = &v6;
    sub_1E0CC9420(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Boolean soft_CNForgetSSID(CFDataRef)"];
    [v3 handleFailureInFunction:v4 file:@"CWFXPCRequestProxy.m" lineNumber:78 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1E0C9BDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C9BEB8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __privateMACManager];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C9C238(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 72);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0C9C338;
    v9[3] = &unk_1E86E7CD0;
    v5 = *(a1 + 32);
    v9[4] = *(a1 + 40);
    v8 = *(a1 + 56);
    v6 = v8;
    v11 = v8;
    v10 = *(a1 + 48);
    [a2 nearbyConfirmBrokenBackhaulUsingTimeout:3000 count:1 network:v5 minimumCacheTimestamp:v4 reply:v9];
  }

  else
  {
    v7 = *(a1 + 48);

    dispatch_group_leave(v7);
  }
}

void sub_1E0C9C338(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v25 = 136446978;
      v26 = "[CWFXPCRequestProxy __detectBrokenBackhaulForAutoJoinWithNetwork:reply:]_block_invoke_2";
      v27 = 2082;
      v28 = "CWFXPCRequestProxy.m";
      v29 = 1024;
      v30 = 1614;
      v31 = 2114;
      v32 = v5;
LABEL_10:
      _os_log_send_and_compose_impl();
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  v8 = CWFGetOSLog();
  v9 = v8;
  if (a3)
  {
    if (v8)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sub_1E0BD3BE8(a3);
      v25 = 136446978;
      v26 = "[CWFXPCRequestProxy __detectBrokenBackhaulForAutoJoinWithNetwork:reply:]_block_invoke";
      v27 = 2082;
      v28 = "CWFXPCRequestProxy.m";
      v29 = 1024;
      v30 = 1618;
      v32 = v31 = 2114;
      _os_log_send_and_compose_impl();
    }

    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v13 = *(*(a1 + 56) + 8);
    if (*(v13 + 24) == 1)
    {
      v14 = CWFGetOSLog();
      if (v14)
      {
        v15 = CWFGetOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136446722;
        v26 = "[CWFXPCRequestProxy __detectBrokenBackhaulForAutoJoinWithNetwork:reply:]_block_invoke_2";
        v27 = 2082;
        v28 = "CWFXPCRequestProxy.m";
        v29 = 1024;
        v30 = 1631;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      *(v13 + 24) = a3;
      if (*(*(*(a1 + 56) + 8) + 24) != 1)
      {
LABEL_28:
        objc_sync_exit(v7);
        goto LABEL_29;
      }

      v16 = [*(*(a1 + 32) + 264) targetQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0C9C7B8;
      block[3] = &unk_1E86E7CA8;
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      v23 = v17;
      v24 = v18;
      dispatch_async(v16, block);

      v15 = v23;
    }

    goto LABEL_28;
  }

  if (v8)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136446722;
    v26 = "[CWFXPCRequestProxy __detectBrokenBackhaulForAutoJoinWithNetwork:reply:]_block_invoke";
    v27 = 2082;
    v28 = "CWFXPCRequestProxy.m";
    v29 = 1024;
    v30 = 1616;
    goto LABEL_10;
  }

LABEL_29:

  dispatch_group_leave(*(a1 + 40));
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1E0C9C7B8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, *(*(*(a1 + 40) + 8) + 24));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C9C818(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v25 = 136446978;
      v26 = "[CWFXPCRequestProxy __detectBrokenBackhaulForAutoJoinWithNetwork:reply:]_block_invoke";
      v27 = 2082;
      v28 = "CWFXPCRequestProxy.m";
      v29 = 1024;
      v30 = 1652;
      v31 = 2114;
      v32 = v5;
LABEL_10:
      _os_log_send_and_compose_impl();
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  v8 = CWFGetOSLog();
  v9 = v8;
  if (a3)
  {
    if (v8)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sub_1E0BD3BE8(a3);
      v25 = 136446978;
      v26 = "[CWFXPCRequestProxy __detectBrokenBackhaulForAutoJoinWithNetwork:reply:]_block_invoke";
      v27 = 2082;
      v28 = "CWFXPCRequestProxy.m";
      v29 = 1024;
      v30 = 1656;
      v32 = v31 = 2114;
      _os_log_send_and_compose_impl();
    }

    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v13 = *(*(a1 + 56) + 8);
    if (*(v13 + 24) == 1)
    {
      v14 = CWFGetOSLog();
      if (v14)
      {
        v15 = CWFGetOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136446722;
        v26 = "[CWFXPCRequestProxy __detectBrokenBackhaulForAutoJoinWithNetwork:reply:]_block_invoke_2";
        v27 = 2082;
        v28 = "CWFXPCRequestProxy.m";
        v29 = 1024;
        v30 = 1669;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      *(v13 + 24) = a3;
      if (*(*(*(a1 + 56) + 8) + 24) != 1)
      {
LABEL_28:
        objc_sync_exit(v7);
        goto LABEL_29;
      }

      v16 = [*(*(a1 + 32) + 264) targetQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0C9CC98;
      block[3] = &unk_1E86E7CA8;
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      v23 = v17;
      v24 = v18;
      dispatch_async(v16, block);

      v15 = v23;
    }

    goto LABEL_28;
  }

  if (v8)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136446722;
    v26 = "[CWFXPCRequestProxy __detectBrokenBackhaulForAutoJoinWithNetwork:reply:]_block_invoke";
    v27 = 2082;
    v28 = "CWFXPCRequestProxy.m";
    v29 = 1024;
    v30 = 1654;
    goto LABEL_10;
  }

LABEL_29:

  dispatch_group_leave(*(a1 + 40));
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1E0C9CC98(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, *(*(*(a1 + 40) + 8) + 24));
  }

  objc_autoreleasePoolPop(v2);
}

void *sub_1E0C9CCF8(void *result)
{
  if (*(*(result[6] + 8) + 24) != 1)
  {
    v1 = result;
    if ([*(result[4] + 360) brokenBackhaulState] == 1)
    {
      *(*(v1[6] + 8) + 24) = 1;
    }

    result = v1[5];
    if (result)
    {
      v2 = *(*(v1[6] + 8) + 24);
      v3 = result[2];

      return v3();
    }
  }

  return result;
}

void sub_1E0C9D1E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    [v3 allowBrokenBackhaulPersonalHotspotFallbackForNetwork:*(a1 + 32) reply:*(a1 + 40)];
  }

  else
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = *MEMORY[0x1E696A798];
    v8 = 0;
    v6 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v7 = CWFErrorWithDescription(v5, 6, v6);
    (*(v4 + 16))(v4, v7, 0);
  }

  v3 = v8;
LABEL_6:
}

void sub_1E0C9D394(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 264);
  if (!v3)
  {
    v4 = objc_alloc_init(CWFAutoJoinManager);
    v5 = *(a1 + 32);
    v6 = *(v5 + 264);
    *(v5 + 264) = v4;

    objc_initWeak(&location, *(a1 + 32));
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E0C9D578;
    v11[3] = &unk_1E86E7D70;
    objc_copyWeak(&v12, &location);
    [*(*(a1 + 32) + 264) setAllowBrokenBackhaulPersonalHotspotFallbackHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0C9D5F0;
    v9[3] = &unk_1E86E7D98;
    objc_copyWeak(&v10, &location);
    [*(*(a1 + 32) + 264) setDetectBrokenBackhaulHandler:v9];
    v7 = [*(a1 + 32) associatedNetwork];
    [*(*(a1 + 32) + 264) setAssociatedNetwork:v7];

    v8 = [*(a1 + 32) location];
    [*(*(a1 + 32) + 264) setLocation:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    v3 = *(*(a1 + 32) + 264);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  objc_autoreleasePoolPop(v2);
}

void sub_1E0C9D548(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1E0C9D578(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __allowBrokenBackhaulPersonalHotspotFallbackForAutoJoinWithNetwork:v6 reply:v5];
}

void sub_1E0C9D5F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __detectBrokenBackhaulForAutoJoinWithNetwork:v6 reply:v5];
}

void sub_1E0C9D758(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 264));

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C9D97C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  _Unwind_Resume(a1);
}

void sub_1E0C9D9A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[27];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C9DA94;
  v7[3] = &unk_1E86E7058;
  objc_copyWeak(&v9, (a1 + 32));
  v6 = v3;
  v8 = v6;
  [v5 addOperationSerializedByName:@"updateKnownNetwork" block:v7];

  objc_destroyWeak(&v9);
}

void sub_1E0C9DA94(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained __knownNetworkProfiles];
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 count];
    v8 = [*(a1 + 32) count];
    v16 = 136447234;
    v17 = "[CWFXPCRequestProxy __noiManager]_block_invoke_2";
    v18 = 2082;
    v19 = "CWFXPCRequestProxy.m";
    v20 = 1024;
    v21 = 1782;
    v22 = 1024;
    v23 = v7;
    v24 = 1024;
    v25 = v8;
    _os_log_send_and_compose_impl();
  }

  v9 = WeakRetained[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C9DC74;
  block[3] = &unk_1E86E6060;
  v13 = v3;
  v14 = *(a1 + 32);
  v15 = WeakRetained;
  v10 = v3;
  dispatch_async(v9, block);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E0C9DC74(id *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v22 = [MEMORY[0x1E695DF70] array];
  v24 = [MEMORY[0x1E695DFA8] set];
  v23 = [MEMORY[0x1E695DFA8] set];
  v2 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        if ([a1[5] count] && (v9 = a1[5], objc_msgSend(v8, "networkName"), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v9) = objc_msgSend(v9, "containsObject:", v10), v10, v9))
        {
          v11 = [v8 BSSList];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = sub_1E0C9E054;
          v29[3] = &unk_1E86E7DC0;
          v30 = v24;
          v31 = v23;
          [v11 enumerateObjectsUsingBlock:v29];

          v12 = 1;
        }

        else
        {
          v13 = [a1[5] count];
          v14 = v2;
          if (v13)
          {
            goto LABEL_13;
          }

          v12 = 0;
        }

        if ([v8 networkOfInterestHomeState] == v12)
        {
          continue;
        }

        [v8 setNetworkOfInterestHomeState:v12];
        v15 = [MEMORY[0x1E695DF00] date];
        [v8 setNetworkOfInterestHomeStateUpdatedAt:v15];

        v14 = v22;
LABEL_13:
        [v14 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v5);
  }

  if ([v2 count] && (objc_msgSend(v24, "count") || objc_msgSend(v23, "count")))
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1E0C9E114;
    v25[3] = &unk_1E86E7E10;
    v26 = v24;
    v27 = v23;
    v28 = v22;
    [v2 enumerateObjectsUsingBlock:v25];
  }

  if ([v22 count])
  {
    v16 = [a1[6] __apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
    v17 = a1[6];
    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5BBC970, &unk_1F5BBC988, 0}];
    v19 = [v16 interfaceName];
    [v17 __updateMultipleKnownNetworks:v22 updateProperties:v18 interfaceName:v19 reply:0];
  }

  objc_autoreleasePoolPop(context);
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1E0C9E054(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 IPv4NetworkSignature];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v9 IPv4NetworkSignature];
    [v4 addObject:v5];
  }

  v6 = [v9 IPv6NetworkSignature];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v9 IPv6NetworkSignature];
    [v7 addObject:v8];
  }
}

void sub_1E0C9E114(id *a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 2;
  v4 = [v3 BSSList];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = sub_1E0C9E27C;
  v11 = &unk_1E86E7DE8;
  v12 = a1[4];
  v13 = a1[5];
  v5 = v3;
  v14 = v5;
  v15 = &v16;
  [v4 enumerateObjectsUsingBlock:&v8];

  v6 = [v5 networkOfInterestHomeState];
  if (v6 != v17[3])
  {
    [v5 setNetworkOfInterestHomeState:?];
    v7 = [MEMORY[0x1E695DF00] date];
    [v5 setNetworkOfInterestHomeStateUpdatedAt:v7];

    [a1[6] addObject:v5];
  }

  _Block_object_dispose(&v16, 8);
}

void sub_1E0C9E264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C9E27C(uint64_t a1, void *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 IPv4NetworkSignature];
  if ([v6 containsObject:v7])
  {
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [v5 IPv6NetworkSignature];
    LODWORD(v8) = [v8 containsObject:v9];

    if (!v8)
    {
      goto LABEL_10;
    }
  }

  v10 = CWFGetOSLog();
  if (v10)
  {
    v11 = CWFGetOSLog();
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 48) networkName];
    v15 = [v13 redactedForWiFi];
    _os_log_send_and_compose_impl();
  }

  *(*(*(a1 + 56) + 8) + 24) = 3;
  *a3 = 1;
LABEL_10:

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E0C9E44C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[27];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C9E538;
  v7[3] = &unk_1E86E7058;
  objc_copyWeak(&v9, (a1 + 32));
  v6 = v3;
  v8 = v6;
  [v5 addOperationSerializedByName:@"updateKnownNetwork" block:v7];

  objc_destroyWeak(&v9);
}

void sub_1E0C9E538(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained __knownNetworkProfiles];
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 count];
    v8 = [*(a1 + 32) count];
    v16 = 136447234;
    v17 = "[CWFXPCRequestProxy __noiManager]_block_invoke_2";
    v18 = 2082;
    v19 = "CWFXPCRequestProxy.m";
    v20 = 1024;
    v21 = 1882;
    v22 = 1024;
    v23 = v7;
    v24 = 1024;
    v25 = v8;
    _os_log_send_and_compose_impl();
  }

  v9 = WeakRetained[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C9E718;
  block[3] = &unk_1E86E6060;
  v13 = v3;
  v14 = *(a1 + 32);
  v15 = WeakRetained;
  v10 = v3;
  dispatch_async(v9, block);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E0C9E718(id *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        if ([a1[5] count] && (v9 = a1[5], objc_msgSend(v8, "networkName"), v10 = objc_claimAutoreleasedReturnValue(), LOBYTE(v9) = objc_msgSend(v9, "containsObject:", v10), v10, (v9 & 1) != 0))
        {
          v11 = 1;
        }

        else
        {
          v11 = 2 * ([a1[5] count] != 0);
        }

        if ([v8 networkOfInterestWorkState] != v11)
        {
          [v8 setNetworkOfInterestWorkState:v11];
          v12 = [MEMORY[0x1E695DF00] date];
          [v8 setNetworkOfInterestWorkStateUpdatedAt:v12];

          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v13 = [a1[6] __apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
    v14 = a1[6];
    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5BBC9A0, &unk_1F5BBC9B8, 0}];
    v16 = [v13 interfaceName];
    [v14 __updateMultipleKnownNetworks:v2 updateProperties:v15 interfaceName:v16 reply:0];
  }

  objc_autoreleasePoolPop(context);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E0C9EA50(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __noiManager];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C9EB80(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[5])
  {
    v3 = a1[5];
  }

  else
  {
    v3 = &stru_1F5B8FC80;
  }

  v4 = [*(a1[4] + 208) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (a1[5])
    {
      v5 = a1[5];
    }

    else
    {
      v5 = &stru_1F5B8FC80;
    }

    [*(a1[4] + 208) setObject:v4 forKeyedSubscript:v5];
  }

  v6 = a1[6];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a1[7]];
  [v4 setObject:v6 forKeyedSubscript:v7];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C9EF28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 144);

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C9EFE0(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 128) startEventMonitoring];
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 128);
    v18 = 134219266;
    v19 = v3 / 0x3B9ACA00;
    v20 = 2048;
    v21 = v3 % 0x3B9ACA00 / 0x3E8;
    v22 = 2082;
    v23 = "[CWFXPCRequestProxy activate]_block_invoke";
    v24 = 2082;
    v25 = "CWFXPCRequestProxy.m";
    v26 = 1024;
    v27 = 2019;
    v28 = 2048;
    v29 = v7;
    LODWORD(v17) = 58;
    v16 = &v18;
    _os_log_send_and_compose_impl();
  }

  v8 = *(a1 + 32);
  if (v8[40])
  {
    [v8[40] activate];
    v9 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(a1 + 32) + 320);
      v18 = 134219266;
      v19 = v9 / 0x3B9ACA00;
      v20 = 2048;
      v21 = v9 % 0x3B9ACA00 / 0x3E8;
      v22 = 2082;
      v23 = "[CWFXPCRequestProxy activate]_block_invoke";
      v24 = 2082;
      v25 = "CWFXPCRequestProxy.m";
      v26 = 1024;
      v27 = 2023;
      v28 = 2048;
      v29 = v13;
      LODWORD(v17) = 58;
      v16 = &v18;
      _os_log_send_and_compose_impl();
    }

    v8 = *(a1 + 32);
  }

  [v8 __startEventMonitoring];
  [*(a1 + 32) __updateWiFiInterfacesWithReason:@"init" reply:0];
  [*(*(a1 + 32) + 360) activateWithCompletion:&unk_1F5B895F0];
  v14 = [*(a1 + 32) __noiManager];
  [v14 activate];

  [*(*(a1 + 32) + 368) activateWithCompletion:&unk_1F5B8ADC0];
  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E0C9F318(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E0C9F49C(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E0C9F6D0(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __stopEventMonitoring];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [*(*(a1 + 32) + 64) allValues];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 256) invalidate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 240);
  if (v9)
  {
    dispatch_source_cancel(v9);
    v8 = *(a1 + 32);
  }

  v10 = *(v8 + 352);
  if (v10)
  {
    dispatch_source_cancel(v10);
    v8 = *(a1 + 32);
  }

  [*(v8 + 360) invalidate];
  v11 = [*(a1 + 32) __noiManager];
  [v11 invalidate];

  [*(*(a1 + 32) + 320) invalidate];
  [*(*(a1 + 32) + 368) invalidate];
  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E0C9FB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C9FB74(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!v10)
  {
    v6 = [v5 objectForKeyedSubscript:@"Result"];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = 0;
  atomic_compare_exchange_strong((*(a1[6] + 8) + 24), &v9, 1u);
  if (!v9)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0C9FE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CA06A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __wifiInterfaceNames];
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA0964(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __interfaceNames];
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA0C28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __virtualInterfaceNames];
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA149C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v3 = [*(a1[5] + 152) objectForKeyedSubscript:?];
    v4 = [v3 copy];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA1628(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v3 = [*(a1[5] + 184) objectForKeyedSubscript:?];
    v4 = [v3 deepCopy];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA17B8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v3 = [*(a1[5] + 168) objectForKeyedSubscript:?];
    v4 = [v3 copy];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA1944(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v3 = [*(a1[5] + 160) objectForKeyedSubscript:?];
    v4 = [v3 copy];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA1AD0(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v3 = [*(a1[5] + 192) objectForKeyedSubscript:?];
    v4 = [v3 copy];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA1C5C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v3 = [*(a1[5] + 224) objectForKeyedSubscript:?];
    v4 = [v3 copy];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA1DC8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 232) copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA1EBC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 232);
  *(v4 + 232) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA1FD8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 48) copy];
    [*(*(a1 + 40) + 152) setObject:v3 forKeyedSubscript:*(a1 + 32)];

    v4 = [*(*(a1 + 40) + 232) copy];
    [*(*(a1 + 40) + 224) setObject:v4 forKeyedSubscript:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA2130(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 48) copy];
    [*(*(a1 + 40) + 168) setObject:v3 forKeyedSubscript:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA2264(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 48) deepCopy];
    [*(*(a1 + 40) + 184) setObject:v3 forKeyedSubscript:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA239C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 48) copy];
    [*(*(a1 + 40) + 160) setObject:v3 forKeyedSubscript:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA24D0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 48) copy];
    [*(*(a1 + 40) + 192) setObject:v3 forKeyedSubscript:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA28A8(uint64_t a1, void *a2, int a3, unsigned __int8 *a4, unsigned int a5)
{
  v191[2] = *MEMORY[0x1E69E9840];
  v129 = a2;
  v9 = objc_alloc_init(CWFXPCEvent);
  [(CWFXPCEvent *)v9 setType:sub_1E0BC14E8(a3)];
  [(CWFXPCEvent *)v9 setInterfaceName:*(a1 + 32)];
  v10 = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v9 setTimestamp:v10];

  v11 = 0;
  if (a3 <= 16)
  {
    if (a3 > 7)
    {
      if (a3 != 8)
      {
        if (a3 == 12)
        {
          if (a5 != 276)
          {
            v113 = CWFGetOSLog();
            if (v113)
            {
              v107 = CWFGetOSLog();
            }

            else
            {
              v107 = MEMORY[0x1E69E9C10];
              v122 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
            {
              LODWORD(location[0]) = 136447234;
              *(location + 4) = "[CWFXPCRequestProxy __setupEventHandlersWithInterfaceName:]_block_invoke";
              WORD2(location[1]) = 2082;
              *(&location[1] + 6) = "CWFXPCRequestProxy.m";
              HIWORD(location[2]) = 1024;
              LODWORD(location[3]) = 3184;
              WORD2(location[3]) = 2048;
              *(&location[3] + 6) = 276;
              HIWORD(location[4]) = 2048;
              location[5] = a5;
              LODWORD(v126) = 48;
              v125 = location;
              _os_log_send_and_compose_impl();
            }

            goto LABEL_133;
          }

          v77 = objc_alloc_init(CWFHostAPStation);
          v78 = [MEMORY[0x1E695DEF0] dataWithBytes:a4 length:6];
          v79 = CWFEthernetAddressStringFromData(v78);
          [(CWFHostAPStation *)v77 setBSSID:v79];

          v148 = @"HostAPStation";
          v149 = v77;
          v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
          [(CWFXPCEvent *)v9 setInfo:v80];

          v81 = CWFGetOSLog();
          if (v81)
          {
            v82 = CWFGetOSLog();
          }

          else
          {
            v82 = MEMORY[0x1E69E9C10];
            v96 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
          {
            LODWORD(location[0]) = 138543362;
            *(location + 4) = v77;
            LODWORD(v126) = 12;
            v125 = location;
            _os_log_send_and_compose_impl();
          }

          v97 = *(a1 + 40);
          v98 = *(v97 + 16);
          v131[0] = MEMORY[0x1E69E9820];
          v131[1] = 3221225472;
          v131[2] = sub_1E0CA4614;
          v131[3] = &unk_1E86E6010;
          v131[4] = v97;
          dispatch_async(v98, v131);
        }

        else
        {
          if (a3 != 13)
          {
            goto LABEL_75;
          }

          if (a5 != 12)
          {
            v114 = CWFGetOSLog();
            if (v114)
            {
              v107 = CWFGetOSLog();
            }

            else
            {
              v107 = MEMORY[0x1E69E9C10];
              v123 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
            {
              LODWORD(location[0]) = 136447234;
              *(location + 4) = "[CWFXPCRequestProxy __setupEventHandlersWithInterfaceName:]_block_invoke_2";
              WORD2(location[1]) = 2082;
              *(&location[1] + 6) = "CWFXPCRequestProxy.m";
              HIWORD(location[2]) = 1024;
              LODWORD(location[3]) = 3215;
              WORD2(location[3]) = 2048;
              *(&location[3] + 6) = 12;
              HIWORD(location[4]) = 2048;
              location[5] = a5;
              LODWORD(v126) = 48;
              v125 = location;
              _os_log_send_and_compose_impl();
            }

            goto LABEL_133;
          }

          v20 = objc_alloc_init(CWFHostAPStation);
          v21 = [MEMORY[0x1E695DEF0] dataWithBytes:a4 length:6];
          v22 = CWFEthernetAddressStringFromData(v21);
          [(CWFHostAPStation *)v20 setBSSID:v22];

          v146 = @"HostAPStation";
          v147 = v20;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
          [(CWFXPCEvent *)v9 setInfo:v23];

          v24 = CWFGetOSLog();
          if (v24)
          {
            v25 = CWFGetOSLog();
          }

          else
          {
            v25 = MEMORY[0x1E69E9C10];
            v99 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            LODWORD(location[0]) = 138543362;
            *(location + 4) = v20;
            LODWORD(v126) = 12;
            v125 = location;
            _os_log_send_and_compose_impl();
          }

          v100 = *(a1 + 40);
          v101 = *(v100 + 16);
          v130[0] = MEMORY[0x1E69E9820];
          v130[1] = 3221225472;
          v130[2] = sub_1E0CA4664;
          v130[3] = &unk_1E86E6010;
          v130[4] = v100;
          dispatch_async(v101, v130);
        }

        goto LABEL_74;
      }
    }

    else if ((a3 - 1) >= 2)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          goto LABEL_75;
        }

        goto LABEL_43;
      }

LABEL_28:
      v30 = *(a1 + 32);
      v31 = *(a1 + 40);
      v32 = *(v31 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CA434C;
      block[3] = &unk_1E86E6420;
      block[4] = v31;
      v145 = v30;
      dispatch_async(v32, block);
      [*(a1 + 40) __updateCurrentKnownBSSWithIPConfigurationForInterfaceName:*(a1 + 32)];
      if (a5 == 24)
      {
        v33 = CWFDescriptionForApple80211BSSIDChangeReason(*(a4 + 5));
        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a4 + 5)];
        v190[0] = @"BSSIDChangedReason";
        v190[1] = @"BSSIDChangedReasonDescription";
        v191[0] = v34;
        v191[1] = v33;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v191 forKeys:v190 count:2];
        [(CWFXPCEvent *)v9 setInfo:v35];
      }

      else
      {
        v108 = CWFGetOSLog();
        if (v108)
        {
          v33 = CWFGetOSLog();
        }

        else
        {
          v33 = MEMORY[0x1E69E9C10];
          v117 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 136447234;
          *(location + 4) = "[CWFXPCRequestProxy __setupEventHandlersWithInterfaceName:]_block_invoke";
          WORD2(location[1]) = 2082;
          *(&location[1] + 6) = "CWFXPCRequestProxy.m";
          HIWORD(location[2]) = 1024;
          LODWORD(location[3]) = 2878;
          WORD2(location[3]) = 2048;
          *(&location[3] + 6) = 24;
          HIWORD(location[4]) = 2048;
          location[5] = a5;
          LODWORD(v126) = 48;
          v125 = location;
          _os_log_send_and_compose_impl();
        }
      }

      goto LABEL_74;
    }

    [*(a1 + 40) __postWiFiUIStateFlagsWithInterfaceName:*(a1 + 32)];
    if (a3 == 4)
    {
LABEL_43:
      if (a5 == 32)
      {
        v52 = objc_alloc_init(CWFLinkChangeStatus);
        [(CWFLinkChangeStatus *)v52 setLinkDown:*a4 != 0];
        [(CWFLinkChangeStatus *)v52 setRSSI:*(a4 + 1)];
        [(CWFLinkChangeStatus *)v52 setNoise:*(a4 + 5)];
        [(CWFLinkChangeStatus *)v52 setCCA:a4[12]];
        [(CWFLinkChangeStatus *)v52 setInterfaceName:*(a1 + 32)];
        v53 = [(CWFXPCEvent *)v9 timestamp];
        [(CWFLinkChangeStatus *)v52 setTimestamp:v53];

        if (*a4)
        {
          [(CWFLinkChangeStatus *)v52 setInvoluntaryLinkDown:a4[16] != 0];
          [(CWFLinkChangeStatus *)v52 setReason:*(a4 + 5)];
          [(CWFLinkChangeStatus *)v52 setSubreason:*(a4 + 6)];
          if (_os_feature_enabled_impl())
          {
            [(CWFLinkChangeStatus *)v52 setLinkDownDebounceInProgress:a4[28] != 0];
          }

          v54 = [*(a1 + 40) __cachedKnownNetwork];
          [*(a1 + 40) __setLinkDownStatus:v52 interfaceName:*(a1 + 32)];
          v55 = *(*(a1 + 40) + 16);
          v138[0] = MEMORY[0x1E69E9820];
          v138[1] = 3221225472;
          v138[2] = sub_1E0CA43D4;
          v138[3] = &unk_1E86E7EA8;
          v139 = v54;
          v140 = v52;
          v128 = *(a1 + 32);
          v56 = v128.i64[0];
          v141 = vextq_s8(v128, v128, 8uLL);
          v57 = v54;
          dispatch_async(v55, v138);
          v58 = [*(a1 + 40) __privateMACManager];
          [v58 submitPrivateMACStatsMetricWithEventType:@"LinkDown" networkProfile:v57];

          [*(*(a1 + 40) + 360) reset];
        }

        else
        {
          v83 = [*(a1 + 40) __joinStatusWithInterfaceName:*(a1 + 32)];
          v57 = [v83 knownNetworkProfile];

          if (v57)
          {
            [*(a1 + 40) __setCachedKnownNetwork:v57];
          }

          v84 = *(a1 + 40);
          v85 = *(v84 + 16);
          v136[0] = MEMORY[0x1E69E9820];
          v136[1] = 3221225472;
          v136[2] = sub_1E0CA44B4;
          v136[3] = &unk_1E86E6420;
          v136[4] = v84;
          v137 = *(a1 + 32);
          dispatch_async(v85, v136);
          [*(a1 + 40) privateMACEvaluationCheckConnectivityWithInterfaceName:*(a1 + 32)];
          v86 = [*(a1 + 40) privateMACManager];
          [v86 submitPrivateMACStatsMetricWithEventType:@"Linkup" networkProfile:v57];
        }

        v87 = CWFGetOSLog();
        if (v87)
        {
          v88 = CWFGetOSLog();
        }

        else
        {
          v88 = MEMORY[0x1E69E9C10];
          v89 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          v90 = *a4;
          v91 = a4[28];
          LODWORD(location[0]) = 67109376;
          HIDWORD(location[0]) = v90;
          LOWORD(location[1]) = 1024;
          *(&location[1] + 2) = v91;
          LODWORD(v126) = 14;
          v125 = location;
          _os_log_send_and_compose_impl();
        }

        v182 = @"LinkChangeStatus";
        v183 = v52;
        v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
        [(CWFXPCEvent *)v9 setInfo:v92];

        v93 = *(a1 + 40);
        v94 = *(a1 + 32);
        v134[0] = MEMORY[0x1E69E9820];
        v134[1] = 3221225472;
        v134[2] = sub_1E0CA44F8;
        v134[3] = &unk_1E86E7ED0;
        v134[4] = v93;
        v135 = v9;
        [v93 __currentScanResultWithInterfaceName:v94 forceNoCache:1 reply:v134];
        [*(a1 + 40) __postWiFiUIStateFlagsWithInterfaceName:*(a1 + 32)];
        objc_initWeak(location, *(a1 + 40));
        v95 = *(*(a1 + 40) + 216);
        v132[0] = MEMORY[0x1E69E9820];
        v132[1] = 3221225472;
        v132[2] = sub_1E0CA45D4;
        v132[3] = &unk_1E86E6190;
        objc_copyWeak(&v133, location);
        [v95 addOperationSerializedByName:@"updateKnownNetwork" block:v132];
        objc_destroyWeak(&v133);
        objc_destroyWeak(location);

        goto LABEL_65;
      }

      v106 = CWFGetOSLog();
      if (v106)
      {
        v107 = CWFGetOSLog();
      }

      else
      {
        v107 = MEMORY[0x1E69E9C10];
        v116 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 136447234;
        *(location + 4) = "[CWFXPCRequestProxy __setupEventHandlersWithInterfaceName:]_block_invoke";
        WORD2(location[1]) = 2082;
        *(&location[1] + 6) = "CWFXPCRequestProxy.m";
        HIWORD(location[2]) = 1024;
        LODWORD(location[3]) = 3029;
        WORD2(location[3]) = 2048;
        *(&location[3] + 6) = 32;
        HIWORD(location[4]) = 2048;
        location[5] = a5;
        LODWORD(v126) = 48;
        v125 = location;
        _os_log_send_and_compose_impl();
      }

LABEL_133:

LABEL_65:
      v11 = 1;
      goto LABEL_75;
    }

    if (a3 == 3)
    {
      goto LABEL_28;
    }

LABEL_74:
    v11 = 0;
    goto LABEL_75;
  }

  if (a3 <= 69)
  {
    if (a3 == 17)
    {
      if (a5 != 8)
      {
        v110 = CWFGetOSLog();
        if (v110)
        {
          v107 = CWFGetOSLog();
        }

        else
        {
          v107 = MEMORY[0x1E69E9C10];
          v119 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 136447234;
          *(location + 4) = "[CWFXPCRequestProxy __setupEventHandlersWithInterfaceName:]_block_invoke_2";
          WORD2(location[1]) = 2082;
          *(&location[1] + 6) = "CWFXPCRequestProxy.m";
          HIWORD(location[2]) = 1024;
          LODWORD(location[3]) = 3115;
          WORD2(location[3]) = 2048;
          *(&location[3] + 6) = 8;
          HIWORD(location[4]) = 2048;
          location[5] = a5;
          LODWORD(v126) = 48;
          v125 = location;
          _os_log_send_and_compose_impl();
        }

        goto LABEL_133;
      }

      v179 = 0u;
      v180 = 0u;
      v177 = 0u;
      v178 = 0u;
      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      memset(location, 0, sizeof(location));
      LOBYTE(location[0]) = 1;
      v71 = *a4;
      v72 = 1000 * *(a4 + 1);
      v181 = 0;
      HIDWORD(location[0]) = v71;
      LODWORD(v156) = v72;
      v73 = objc_alloc_init(CWFLinkQualityMetric);
      v74 = [MEMORY[0x1E695DEF0] dataWithBytes:location length:472];
      [(CWFLinkQualityMetric *)v73 setLinkQualityMetricData:v74];

      v75 = [(CWFXPCEvent *)v9 timestamp];
      [(CWFLinkQualityMetric *)v73 setUpdatedAt:v75];

      v152 = @"LinkQualityMetric";
      v153 = v73;
      v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
      [(CWFXPCEvent *)v9 setInfo:v76];

      [*(a1 + 40) __setLinkQualityMetric:v73 interfaceName:*(a1 + 32)];
      goto LABEL_74;
    }

    if (a3 != 20)
    {
      if (a3 != 39)
      {
        goto LABEL_75;
      }

      if (a5 <= 0x1D7)
      {
        v115 = CWFGetOSLog();
        if (v115)
        {
          v107 = CWFGetOSLog();
        }

        else
        {
          v107 = MEMORY[0x1E69E9C10];
          v124 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 136447234;
          *(location + 4) = "[CWFXPCRequestProxy __setupEventHandlersWithInterfaceName:]_block_invoke";
          WORD2(location[1]) = 2082;
          *(&location[1] + 6) = "CWFXPCRequestProxy.m";
          HIWORD(location[2]) = 1024;
          LODWORD(location[3]) = 3144;
          WORD2(location[3]) = 2048;
          *(&location[3] + 6) = 472;
          HIWORD(location[4]) = 2048;
          location[5] = a5;
          LODWORD(v126) = 48;
          v125 = location;
          _os_log_send_and_compose_impl();
        }

        goto LABEL_133;
      }

      v26 = objc_alloc_init(CWFLinkQualityMetric);
      v27 = [MEMORY[0x1E695DEF0] dataWithBytes:a4 length:472];
      [(CWFLinkQualityMetric *)v26 setLinkQualityMetricData:v27];

      v28 = [(CWFXPCEvent *)v9 timestamp];
      [(CWFLinkQualityMetric *)v26 setUpdatedAt:v28];

      v150 = @"LinkQualityMetric";
      v151 = v26;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
      [(CWFXPCEvent *)v9 setInfo:v29];

      [*(a1 + 40) __setLinkQualityMetric:v26 interfaceName:*(a1 + 32)];
      goto LABEL_74;
    }

    goto LABEL_48;
  }

  if (a3 > 75)
  {
    if (a3 != 76)
    {
      if (a3 != 80)
      {
        goto LABEL_75;
      }

      if (a5 != 168)
      {
        v112 = CWFGetOSLog();
        if (v112)
        {
          v107 = CWFGetOSLog();
        }

        else
        {
          v107 = MEMORY[0x1E69E9C10];
          v121 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 136447234;
          *(location + 4) = "[CWFXPCRequestProxy __setupEventHandlersWithInterfaceName:]_block_invoke_2";
          WORD2(location[1]) = 2082;
          *(&location[1] + 6) = "CWFXPCRequestProxy.m";
          HIWORD(location[2]) = 1024;
          LODWORD(location[3]) = 2907;
          WORD2(location[3]) = 2048;
          *(&location[3] + 6) = 168;
          HIWORD(location[4]) = 2048;
          location[5] = a5;
          LODWORD(v126) = 48;
          v125 = location;
          _os_log_send_and_compose_impl();
        }

        goto LABEL_133;
      }

      v36 = [*(a1 + 40) __roamStatusWithInterfaceName:*(a1 + 32)];
      v37 = v36;
      if (!v36 || [(CWFRoamStatus *)v36 timeStarted]!= *(a4 + 1))
      {
        v38 = objc_alloc_init(CWFRoamStatus);

        v39 = [v129 SSID:0];
        [(CWFRoamStatus *)v38 setSSID:v39];

        v37 = v38;
      }

      [(CWFRoamStatus *)v37 setReason:*(a4 + 1)];
      [(CWFRoamStatus *)v37 setFromChannel:*(a4 + 10)];
      [(CWFRoamStatus *)v37 setFromRSSI:*(a4 + 8)];
      v127 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x:%02x:%02x", a4[56], a4[57], a4[58]];
      [(CWFRoamStatus *)v37 setOriginOUI:v127];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", a4[88], a4[89], a4[90], a4[91], a4[92], a4[93]];
      [(CWFRoamStatus *)v37 setFromBSSID:v40];
      [(CWFRoamStatus *)v37 setToRSSI:*(a4 + 9)];
      [(CWFRoamStatus *)v37 setToChannel:*(a4 + 11)];
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x:%02x:%02x", a4[59], a4[60], a4[61]];
      [(CWFRoamStatus *)v37 setTargetOUI:v41];
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", a4[94], a4[95], a4[96], a4[97], a4[98], a4[99]];
      [(CWFRoamStatus *)v37 setToBSSID:v42];
      [(CWFRoamStatus *)v37 setStatus:*a4];
      v43 = [v129 interfaceName];
      [(CWFRoamStatus *)v37 setInterfaceName:v43];

      [(CWFRoamStatus *)v37 setTimeStarted:*(a4 + 1)];
      [(CWFRoamStatus *)v37 setTimeEnded:*(a4 + 2)];
      if ([(CWFRoamStatus *)v37 timeStarted])
      {
        v44 = [(CWFRoamStatus *)v37 startedAt];

        if (!v44)
        {
          v45 = [(CWFXPCEvent *)v9 timestamp];
          [(CWFRoamStatus *)v37 setStartedAt:v45];
        }
      }

      if ([(CWFRoamStatus *)v37 timeEnded])
      {
        v46 = [(CWFXPCEvent *)v9 timestamp];
        [(CWFRoamStatus *)v37 setEndedAt:v46];

        v47 = MEMORY[0x1E695DF00];
        v48 = [(CWFRoamStatus *)v37 endedAt];
        [v48 timeIntervalSinceReferenceDate];
        v50 = [v47 dateWithTimeIntervalSinceReferenceDate:{v49 + (-[CWFRoamStatus timeEnded](v37, "timeEnded") - -[CWFRoamStatus timeStarted](v37, "timeStarted")) / -1000.0}];
        [(CWFRoamStatus *)v37 setStartedAt:v50];
      }

      [*(a1 + 40) __setRoamStatus:v37 interfaceName:*(a1 + 32)];
      v188 = @"RoamStatus";
      v189 = v37;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
      [(CWFXPCEvent *)v9 setInfo:v51];

      goto LABEL_74;
    }

LABEL_48:
    v59 = *(a1 + 32);
    v60 = *(a1 + 40);
    v61 = *(v60 + 16);
    v142[0] = MEMORY[0x1E69E9820];
    v142[1] = 3221225472;
    v142[2] = sub_1E0CA4390;
    v142[3] = &unk_1E86E6420;
    v142[4] = v60;
    v143 = v59;
    dispatch_async(v61, v142);

    goto LABEL_74;
  }

  if (a3 == 70)
  {
    if (a5 != 8)
    {
      v109 = CWFGetOSLog();
      if (v109)
      {
        v107 = CWFGetOSLog();
      }

      else
      {
        v107 = MEMORY[0x1E69E9C10];
        v118 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 136447234;
        *(location + 4) = "[CWFXPCRequestProxy __setupEventHandlersWithInterfaceName:]_block_invoke";
        WORD2(location[1]) = 2082;
        *(&location[1] + 6) = "CWFXPCRequestProxy.m";
        HIWORD(location[2]) = 1024;
        LODWORD(location[3]) = 2970;
        WORD2(location[3]) = 2048;
        *(&location[3] + 6) = 8;
        HIWORD(location[4]) = 2048;
        location[5] = a5;
        LODWORD(v126) = 48;
        v125 = location;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_133;
    }

    v62 = objc_alloc_init(CWFRoamStatus);
    [(CWFRoamStatus *)v62 setInterfaceName:*(a1 + 32)];
    [(CWFRoamStatus *)v62 setTimeStarted:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
    v63 = [(CWFXPCEvent *)v9 timestamp];
    [(CWFRoamStatus *)v62 setStartedAt:v63];

    v64 = [v129 SSID:0];
    [(CWFRoamStatus *)v62 setSSID:v64];

    v65 = [v129 BSSID:0];
    [(CWFRoamStatus *)v62 setFromBSSID:v65];

    v66 = [(CWFRoamStatus *)v62 fromBSSID];
    v67 = [v66 substringToIndex:8];
    [(CWFRoamStatus *)v62 setOriginOUI:v67];

    v68 = [v129 channel:0];
    -[CWFRoamStatus setFromChannel:](v62, "setFromChannel:", [v68 channel]);

    v69 = [v129 RSSI:0];
    -[CWFRoamStatus setFromRSSI:](v62, "setFromRSSI:", [v69 integerValue]);

    [(CWFRoamStatus *)v62 setReason:*(a4 + 1)];
    [*(a1 + 40) __setRoamStatus:v62 interfaceName:*(a1 + 32)];
    v186 = @"RoamStatus";
    v187 = v62;
    v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
    [(CWFXPCEvent *)v9 setInfo:v70];

    goto LABEL_74;
  }

  if (a3 != 71)
  {
    goto LABEL_75;
  }

  if (a5 != 8)
  {
    v111 = CWFGetOSLog();
    if (v111)
    {
      v107 = CWFGetOSLog();
    }

    else
    {
      v107 = MEMORY[0x1E69E9C10];
      v120 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 136447234;
      *(location + 4) = "[CWFXPCRequestProxy __setupEventHandlersWithInterfaceName:]_block_invoke";
      WORD2(location[1]) = 2082;
      *(&location[1] + 6) = "CWFXPCRequestProxy.m";
      HIWORD(location[2]) = 1024;
      LODWORD(location[3]) = 3000;
      WORD2(location[3]) = 2048;
      *(&location[3] + 6) = 8;
      HIWORD(location[4]) = 2048;
      location[5] = a5;
      LODWORD(v126) = 48;
      v125 = location;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_133;
  }

  v12 = [*(a1 + 40) __roamStatusWithInterfaceName:*(a1 + 32)];
  v11 = v12 == 0;
  if (v12)
  {
    [v12 setTimeEnded:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
    v13 = [(CWFXPCEvent *)v9 timestamp];
    [v12 setEndedAt:v13];

    v14 = [v129 BSSID:0];
    [v12 setToBSSID:v14];

    v15 = [v12 toBSSID];
    v16 = [v15 substringToIndex:8];
    [v12 setTargetOUI:v16];

    v17 = [v129 channel:0];
    [v12 setToChannel:{objc_msgSend(v17, "channel")}];

    v18 = [v129 RSSI:0];
    [v12 setToRSSI:{objc_msgSend(v18, "integerValue")}];

    [v12 setStatus:*(a4 + 1)];
    v184 = @"RoamStatus";
    v185 = v12;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
    [(CWFXPCEvent *)v9 setInfo:v19];
  }

LABEL_75:
  v102 = [*(a1 + 40) delegate];
  v103 = v102;
  if (v102)
  {
    v104 = v11;
  }

  else
  {
    v104 = 1;
  }

  if ((v104 & 1) == 0)
  {
    [v102 XPCRequestProxy:*(a1 + 40) sendXPCEvent:v9 reply:0];
  }

  v105 = *MEMORY[0x1E69E9840];
}

void sub_1E0CA4328(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x200]);
  _Unwind_Resume(a1);
}

void sub_1E0CA434C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateJoinStatusWithAssoc:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA4390(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateJoinStatusWithAuth:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA43D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) copy];
  v4 = [*(a1 + 40) timestamp];
  [v3 setLastDisconnectTimestamp:v4];

  [v3 setLastDisconnectReason:{objc_msgSend(*(a1 + 40), "reason")}];
  v5 = *(a1 + 48);
  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5BBC9D0, &unk_1F5BBC9E8, 0}];
  [v5 __updateNetworkProfile:v3 updateProperties:v6 interfaceName:*(a1 + 56) reply:0];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA44B4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateJoinStatusWithLinkUp:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA44F8(uint64_t a1)
{
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v5 = [*(a1 + 32) delegate];
  v6 = v5;
  if (v5)
  {
    [v5 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }
}

void sub_1E0CA45D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __removeUnusedKnownNetworks];
}

void sub_1E0CA4614(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(*(a1 + 32) + 288))
  {
    _NETRBClientAddHost();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA4664(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(*(a1 + 32) + 288))
  {
    _NETRBClientRemoveHost();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA46B4(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    v9 = *MEMORY[0x1E6982338];
    v40 = *MEMORY[0x1E6982340];
    v39 = *MEMORY[0x1E6982330];
    v38 = *MEMORY[0x1E6982328];
    v37 = *MEMORY[0x1E69822E8];
    do
    {
      v10 = 0;
      do
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v42 + 1) + 8 * v10);
        if ([v11 containsString:v9])
        {
          v12 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v13 = CWFGetOSLog();
          if (v13)
          {
            v14 = CWFGetOSLog();
          }

          else
          {
            v14 = MEMORY[0x1E69E9C10];
            v21 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v46 = 134219266;
            v47 = v12 / 0x3B9ACA00;
            v48 = 2048;
            v49 = v12 % 0x3B9ACA00 / 0x3E8;
            v50 = 2082;
            v51 = "[CWFXPCRequestProxy __setupEventHandlersWithInterfaceName:]_block_invoke_2";
            v52 = 2082;
            v53 = "CWFXPCRequestProxy.m";
            v54 = 1024;
            v55 = 3290;
            v56 = 2112;
            v57 = obj;
            LODWORD(v36) = 58;
            v35 = &v46;
            _os_log_send_and_compose_impl();
          }

          [*(a1 + 32) updateJoinStatusWithIPv4:*(a1 + 40)];
          [*(a1 + 32) privateMACEvaluationCheckConnectivityWithInterfaceName:*(a1 + 40)];
          [*(a1 + 32) __updateCurrentKnownBSSWithIPConfigurationForInterfaceName:*(a1 + 40)];
          v18 = [v5 IPv4Addresses];
          v19 = [v5 IPv4Router];
          v20 = 19;
        }

        else if ([v11 containsString:v40])
        {
          v15 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v16 = CWFGetOSLog();
          if (v16)
          {
            v17 = CWFGetOSLog();
          }

          else
          {
            v17 = MEMORY[0x1E69E9C10];
            v25 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v46 = 134219266;
            v47 = v15 / 0x3B9ACA00;
            v48 = 2048;
            v49 = v15 % 0x3B9ACA00 / 0x3E8;
            v50 = 2082;
            v51 = "[CWFXPCRequestProxy __setupEventHandlersWithInterfaceName:]_block_invoke";
            v52 = 2082;
            v53 = "CWFXPCRequestProxy.m";
            v54 = 1024;
            v55 = 3303;
            v56 = 2112;
            v57 = obj;
            LODWORD(v36) = 58;
            v35 = &v46;
            _os_log_send_and_compose_impl();
          }

          [*(a1 + 32) updateJoinStatusWithIPv6:*(a1 + 40)];
          [*(a1 + 32) privateMACEvaluationCheckConnectivityWithInterfaceName:*(a1 + 40)];
          [*(a1 + 32) __updateCurrentKnownBSSWithIPConfigurationForInterfaceName:*(a1 + 40)];
          v18 = [v5 IPv6Addresses];
          v19 = [v5 IPv6Router];
          v20 = 20;
        }

        else if ([v11 containsString:v39])
        {
          v18 = [v5 DNSServerAddresses];
          v19 = 0;
          v20 = 21;
        }

        else if ([v11 containsString:v38])
        {
          v22 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v23 = CWFGetOSLog();
          if (v23)
          {
            v24 = CWFGetOSLog();
          }

          else
          {
            v24 = MEMORY[0x1E69E9C10];
            v32 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v46 = 134219266;
            v47 = v22 / 0x3B9ACA00;
            v48 = 2048;
            v49 = v22 % 0x3B9ACA00 / 0x3E8;
            v50 = 2082;
            v51 = "[CWFXPCRequestProxy __setupEventHandlersWithInterfaceName:]_block_invoke";
            v52 = 2082;
            v53 = "CWFXPCRequestProxy.m";
            v54 = 1024;
            v55 = 3321;
            v56 = 2112;
            v57 = obj;
            LODWORD(v36) = 58;
            v35 = &v46;
            _os_log_send_and_compose_impl();
          }

          v18 = 0;
          v19 = 0;
          v20 = 22;
        }

        else
        {
          if (![v11 containsString:v37])
          {
            goto LABEL_34;
          }

          v18 = 0;
          v19 = 0;
          v20 = 18;
        }

        v26 = objc_alloc_init(CWFXPCEvent);
        [(CWFXPCEvent *)v26 setType:v20];
        [(CWFXPCEvent *)v26 setInterfaceName:*(a1 + 40)];
        v27 = [MEMORY[0x1E695DF00] date];
        [(CWFXPCEvent *)v26 setTimestamp:v27];

        if (v18 | v19)
        {
          v28 = [MEMORY[0x1E695DF90] dictionary];
          v29 = v28;
          if (v18)
          {
            [v28 setObject:v18 forKey:@"Addresses"];
          }

          if (v19)
          {
            [v29 setObject:v19 forKey:@"Router"];
          }

          [(CWFXPCEvent *)v26 setInfo:v29, v35, v36];
        }

        v30 = [*(a1 + 32) delegate];
        v31 = v30;
        if (v30)
        {
          [v30 XPCRequestProxy:*(a1 + 32) sendXPCEvent:v26 reply:0];
        }

LABEL_34:
        ++v10;
      }

      while (v7 != v10);
      v33 = [obj countByEnumeratingWithState:&v42 objects:v58 count:16];
      v7 = v33;
    }

    while (v33);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void sub_1E0CA4D78(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([v11 containsString:@"IPv4"])
        {
          v12 = [v5 IPv4Addresses];
          v13 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v14 = CWFGetOSLog();
          if (v14)
          {
            v15 = CWFGetOSLog();
          }

          else
          {
            v15 = MEMORY[0x1E69E9C10];
            v18 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v35 = 134219266;
            v36 = v13 / 0x3B9ACA00;
            v37 = 2048;
            v38 = v13 % 0x3B9ACA00 / 0x3E8;
            v39 = 2082;
            v40 = "[CWFXPCRequestProxy __setupEventHandlersWithInterfaceName:]_block_invoke";
            v41 = 2082;
            v42 = "CWFXPCRequestProxy.m";
            v43 = 1024;
            v44 = 3373;
            v45 = 2112;
            v46 = v6;
            LODWORD(v28) = 58;
            v27 = &v35;
            _os_log_send_and_compose_impl();
          }

          v19 = 19;
        }

        else
        {
          if (![v11 containsString:@"IPv6"])
          {
            continue;
          }

          v12 = [v5 IPv6Addresses];
          v16 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v17 = CWFGetOSLog();
          if (v17)
          {
            v15 = CWFGetOSLog();
          }

          else
          {
            v15 = MEMORY[0x1E69E9C10];
            v20 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v35 = 134219266;
            v36 = v16 / 0x3B9ACA00;
            v37 = 2048;
            v38 = v16 % 0x3B9ACA00 / 0x3E8;
            v39 = 2082;
            v40 = "[CWFXPCRequestProxy __setupEventHandlersWithInterfaceName:]_block_invoke";
            v41 = 2082;
            v42 = "CWFXPCRequestProxy.m";
            v43 = 1024;
            v44 = 3379;
            v45 = 2112;
            v46 = v6;
            LODWORD(v28) = 58;
            v27 = &v35;
            _os_log_send_and_compose_impl();
          }

          v19 = 20;
        }

        v21 = objc_alloc_init(CWFXPCEvent);
        [(CWFXPCEvent *)v21 setType:v19];
        [(CWFXPCEvent *)v21 setInterfaceName:*(a1 + 32)];
        v22 = [MEMORY[0x1E695DF00] date];
        [(CWFXPCEvent *)v21 setTimestamp:v22];

        if (v12)
        {
          v33 = @"Addresses";
          v34 = v12;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          [(CWFXPCEvent *)v21 setInfo:v23];
        }

        v24 = [*(a1 + 40) delegate];
        v25 = v24;
        if (v24)
        {
          [v24 XPCRequestProxy:*(a1 + 40) sendXPCEvent:v21 reply:0];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v47 count:16];
    }

    while (v8);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E0CA51DC(uint64_t a1)
{
  [*(a1 + 32) updateJoinStatusWithEAP8021X:*(a1 + 40)];
  v5 = objc_alloc_init(CWFXPCEvent);
  [(CWFXPCEvent *)v5 setType:23];
  [(CWFXPCEvent *)v5 setInterfaceName:*(a1 + 40)];
  v2 = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v5 setTimestamp:v2];

  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:v5 reply:0];
  }
}

void sub_1E0CA530C(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(*(a1 + 32) + 80) allValues];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = *(a1 + 32);
        v10 = *(v9 + 32);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = sub_1E0CA5480;
        v12[3] = &unk_1E86E6420;
        v12[4] = v8;
        v12[5] = v9;
        dispatch_async(v10, v12);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E0CA5480(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) refreshServiceID])
  {
    v3 = *(a1 + 40);
    v4 = *(v3 + 24);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1E0CA5520;
    v5[3] = &unk_1E86E6420;
    v5[4] = *(a1 + 32);
    v5[5] = v3;
    dispatch_async(v4, v5);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA5520(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(CWFXPCEvent);
  [(CWFXPCEvent *)v3 setType:18];
  v4 = [*(a1 + 32) interfaceName];
  [(CWFXPCEvent *)v3 setInterfaceName:v4];

  v5 = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v3 setTimestamp:v5];

  v6 = [*(a1 + 40) delegate];
  v7 = v6;
  if (v6)
  {
    [v6 XPCRequestProxy:*(a1 + 40) sendXPCEvent:v3 reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA5970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose((v71 - 240), 8);
  _Block_object_dispose((v71 - 208), 8);
  _Block_object_dispose((v71 - 176), 8);
  _Block_object_dispose((v71 - 144), 8);
  _Block_object_dispose((v71 - 112), 8);
  _Block_object_dispose((v71 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E0CA5A54(uint64_t a1)
{
  v91 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  *(*(*(a1 + 56) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) - *(*(*(a1 + 64) + 8) + 24);
  [*(a1 + 32) wifiInterfaceNames];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v71 = 0u;
  v60 = [obj countByEnumeratingWithState:&v68 objects:v90 count:16];
  if (v60)
  {
    v59 = *v69;
    do
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v69 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v68 + 1) + 8 * i);
        *(*(*(a1 + 80) + 8) + 24) = 0;
        *(*(*(a1 + 88) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v4 = [*(a1 + 32) SCNetworkServiceWithInterfaceName:v3];
        if (!v4)
        {
          *(*(*(a1 + 80) + 8) + 24) = 1;
          v5 = [[CWFSCNetworkService alloc] initWithInterfaceName:v3];
          v6 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v7 = CWFGetOSLog();
          if (v7)
          {
            v8 = CWFGetOSLog();
          }

          else
          {
            v8 = MEMORY[0x1E69E9C10];
            v9 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v8, (16 * (v5 == 0))))
          {
            v72 = 134218754;
            v73 = v6 / 0x3B9ACA00;
            v74 = 2048;
            v75 = v6 % 0x3B9ACA00 / 0x3E8;
            v76 = 2080;
            v10 = "Successfully created";
            if (!v5)
            {
              v10 = "Failed to create";
            }

            v77 = v10;
            v78 = 2112;
            v79 = v3;
            _os_log_send_and_compose_impl();
          }

          v11 = *(a1 + 32);
          v12 = *(v11 + 16);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1E0CA6644;
          block[3] = &unk_1E86E6060;
          block[4] = v11;
          block[5] = v3;
          v4 = v5;
          v67 = v4;
          dispatch_sync(v12, block);
        }

        *(*(*(a1 + 96) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        *(*(*(a1 + 104) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24) - *(*(*(a1 + 88) + 8) + 24);
        *(*(*(a1 + 112) + 8) + 24) = 0;
        *(*(*(a1 + 120) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v13 = [*(a1 + 32) SCNetworkInterfaceWithInterfaceName:v3];
        if (!v13)
        {
          *(*(*(a1 + 112) + 8) + 24) = 1;
          v14 = [[CWFSCNetworkInterface alloc] initWithInterfaceName:v3];
          v15 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v16 = CWFGetOSLog();
          if (v16)
          {
            v17 = CWFGetOSLog();
          }

          else
          {
            v17 = MEMORY[0x1E69E9C10];
            v18 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v17, (16 * (v14 == 0))))
          {
            v72 = 134218754;
            v73 = v15 / 0x3B9ACA00;
            v74 = 2048;
            v75 = v15 % 0x3B9ACA00 / 0x3E8;
            v76 = 2080;
            v19 = "Successfully created";
            if (!v14)
            {
              v19 = "Failed to create";
            }

            v77 = v19;
            v78 = 2114;
            v79 = v3;
            _os_log_send_and_compose_impl();
          }

          v20 = *(a1 + 32);
          v21 = *(v20 + 16);
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = sub_1E0CA6690;
          v64[3] = &unk_1E86E6060;
          v64[4] = v20;
          v64[5] = v3;
          v13 = v14;
          v65 = v13;
          dispatch_sync(v21, v64);
        }

        *(*(*(a1 + 128) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        *(*(*(a1 + 136) + 8) + 24) = *(*(*(a1 + 128) + 8) + 24) - *(*(*(a1 + 120) + 8) + 24);
        *(*(*(a1 + 144) + 8) + 24) = 0;
        *(*(*(a1 + 152) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v22 = [*(a1 + 32) EAP8021XWithInterfaceName:v3];
        if (!v22)
        {
          *(*(*(a1 + 144) + 8) + 24) = 1;
          v23 = [[CWFEAP8021X alloc] initWithInterfaceName:v3];
          v24 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v25 = CWFGetOSLog();
          if (v25)
          {
            v26 = CWFGetOSLog();
          }

          else
          {
            v26 = MEMORY[0x1E69E9C10];
            v27 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v26, (16 * (v23 == 0))))
          {
            v72 = 134218754;
            v73 = v24 / 0x3B9ACA00;
            v74 = 2048;
            v75 = v24 % 0x3B9ACA00 / 0x3E8;
            v76 = 2080;
            v28 = "Successfully created";
            if (!v23)
            {
              v28 = "Failed to create";
            }

            v77 = v28;
            v78 = 2114;
            v79 = v3;
            _os_log_send_and_compose_impl();
          }

          v29 = *(a1 + 32);
          v30 = *(v29 + 16);
          v62[0] = MEMORY[0x1E69E9820];
          v62[1] = 3221225472;
          v62[2] = sub_1E0CA66DC;
          v62[3] = &unk_1E86E6060;
          v62[4] = v29;
          v62[5] = v3;
          v22 = v23;
          v63 = v22;
          dispatch_sync(v30, v62);
        }

        *(*(*(a1 + 160) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        *(*(*(a1 + 168) + 8) + 24) = *(*(*(a1 + 160) + 8) + 24) - *(*(*(a1 + 152) + 8) + 24);
        if ((*(*(*(a1 + 80) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 112) + 8) + 24) & 1) != 0 || *(*(*(a1 + 144) + 8) + 24) == 1)
        {
          v31 = *(a1 + 32);
          v32 = *(v31 + 16);
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = sub_1E0CA6728;
          v61[3] = &unk_1E86E6420;
          v61[4] = v31;
          v61[5] = v3;
          dispatch_async(v32, v61);
        }

        v33 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v34 = CWFGetOSLog();
        if (v34)
        {
          v35 = CWFGetOSLog();
        }

        else
        {
          v35 = MEMORY[0x1E69E9C10];
          v36 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(*(*(a1 + 104) + 8) + 24);
          v38 = *(*(*(a1 + 80) + 8) + 24);
          v39 = *(*(*(a1 + 136) + 8) + 24);
          v40 = *(*(*(a1 + 112) + 8) + 24);
          v41 = *(*(*(a1 + 168) + 8) + 24);
          v42 = *(*(*(a1 + 144) + 8) + 24);
          v72 = 134220802;
          v73 = v33 / 0x3B9ACA00;
          v74 = 2048;
          v75 = v33 % 0x3B9ACA00 / 0x3E8;
          v76 = 2114;
          v77 = v3;
          v78 = 2048;
          v79 = v37 / 0x3B9ACA00;
          v80 = 2048;
          v81 = v37 % 0x3B9ACA00 / 0x3E8;
          v82 = 1024;
          *v83 = v38;
          *&v83[4] = 2048;
          *&v83[6] = v39 / 0x3B9ACA00;
          *&v83[14] = 2048;
          *&v83[16] = v39 % 0x3B9ACA00 / 0x3E8;
          *&v83[24] = 1024;
          *&v83[26] = v40;
          v84 = 2048;
          v85 = v41 / 0x3B9ACA00;
          v86 = 2048;
          v87 = v41 % 0x3B9ACA00 / 0x3E8;
          v88 = 1024;
          v89 = v42;
          _os_log_send_and_compose_impl();
        }
      }

      v60 = [obj countByEnumeratingWithState:&v68 objects:v90 count:16];
    }

    while (v60);
  }

  *(*(*(a1 + 176) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(*(*(a1 + 192) + 8) + 24) = *(*(*(a1 + 176) + 8) + 24) - *(*(*(a1 + 184) + 8) + 24);
  v43 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v44 = CWFGetOSLog();
  if (v44)
  {
    v45 = CWFGetOSLog();
  }

  else
  {
    v45 = MEMORY[0x1E69E9C10];
    v46 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v47 = *(*(*(a1 + 192) + 8) + 24);
    v48 = *(*(*(a1 + 72) + 8) + 24);
    v49 = *(a1 + 40);
    v72 = 134219778;
    v73 = v43 / 0x3B9ACA00;
    v74 = 2048;
    v75 = v43 % 0x3B9ACA00 / 0x3E8;
    v76 = 2048;
    v77 = v47 / 0x3B9ACA00;
    v78 = 2048;
    v79 = v47 % 0x3B9ACA00 / 0x3E8;
    v80 = 2048;
    v81 = v48 / 0x3B9ACA00;
    v82 = 2048;
    *v83 = v48 % 0x3B9ACA00 / 0x3E8;
    *&v83[8] = 2114;
    *&v83[10] = v49;
    *&v83[18] = 2114;
    *&v83[20] = obj;
    _os_log_send_and_compose_impl();
  }

  v55 = *(a1 + 48);
  if (v55)
  {
    (*(v55 + 16))(v55, v50, v51, v52, v53, v54);
  }

  objc_autoreleasePoolPop(context);
  v56 = *MEMORY[0x1E69E9840];
}

void sub_1E0CA6644(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) setObject:a1[6] forKeyedSubscript:a1[5]];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA6690(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 88) setObject:a1[6] forKeyedSubscript:a1[5]];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA66DC(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 96) setObject:a1[6] forKeyedSubscript:a1[5]];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA6728(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __setupEventHandlersWithInterfaceName:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 136);
  v4 = [*(a1 + 32) __interfaceSpecificEventIDs:*(*(a1 + 32) + 136)];
  v5 = [v4 mutableCopy];

  [v5 minusSet:v3];
  objc_storeStrong((*(a1 + 32) + 136), v5);
  v6 = *(a1 + 32);
  if (v6[144] == 1)
  {
    [v6 __startMonitoringDefaultEventIDsForInterfaceName:*(a1 + 40)];
    [*(a1 + 32) __updateMonitoring:1 eventIDs:v5];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA6B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose((v71 - 240), 8);
  _Block_object_dispose((v71 - 208), 8);
  _Block_object_dispose((v71 - 176), 8);
  _Block_object_dispose((v71 - 144), 8);
  _Block_object_dispose((v71 - 112), 8);
  _Block_object_dispose((v71 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E0CA6C8C(uint64_t a1)
{
  v84 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  *(*(*(a1 + 56) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) - *(*(*(a1 + 64) + 8) + 24);
  *(*(*(a1 + 80) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v46 = [*(*(a1 + 32) + 104) networkInterfaceNames];
  *(*(*(a1 + 88) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24) - *(*(*(a1 + 80) + 8) + 24);
  *(*(*(a1 + 104) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v2 = [*(a1 + 32) apple80211WithInterfaceName:0];
  v3 = [v2 interfaceNames:0];

  *(*(*(a1 + 112) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(*(*(a1 + 120) + 8) + 24) = *(*(*(a1 + 112) + 8) + 24) - *(*(*(a1 + 104) + 8) + 24);
  *(*(*(a1 + 128) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = [*(a1 + 32) apple80211WithInterfaceName:0];
  v5 = [v4 virtualInterfaceNames:0];

  *(*(*(a1 + 136) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(*(*(a1 + 144) + 8) + 24) = *(*(*(a1 + 136) + 8) + 24) - *(*(*(a1 + 128) + 8) + 24);
  v6 = [MEMORY[0x1E695DF70] array];
  v45 = v3;
  [v6 addObjectsFromArray:v3];
  v44 = v5;
  [v6 addObjectsFromArray:v5];
  v7 = [*(a1 + 32) wifiInterfaceNames];
  v43 = [v7 mutableCopy];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v68;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v68 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v67 + 1) + 8 * i);
        *(*(*(a1 + 152) + 8) + 24) = 0;
        *(*(*(a1 + 160) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v13 = [*(a1 + 32) apple80211WithInterfaceName:v12];
        if (!v13)
        {
          *(*(*(a1 + 152) + 8) + 24) = 1;
          v14 = [[CWFApple80211 alloc] initWithInterfaceName:v12];
          v15 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v16 = CWFGetOSLog();
          if (v16)
          {
            v17 = CWFGetOSLog();
          }

          else
          {
            v17 = MEMORY[0x1E69E9C10];
            v18 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v17, (16 * (v14 == 0))))
          {
            v71 = 134218754;
            v72 = v15 / 0x3B9ACA00;
            v73 = 2048;
            v74 = v15 % 0x3B9ACA00 / 0x3E8;
            v75 = 2080;
            v19 = "Successfully created";
            if (!v14)
            {
              v19 = "Failed to create";
            }

            v76 = v19;
            v77 = 2112;
            v78 = v12;
            _os_log_send_and_compose_impl();
          }

          v20 = *(a1 + 32);
          v21 = *(v20 + 16);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1E0CA7478;
          block[3] = &unk_1E86E6060;
          block[4] = v20;
          block[5] = v12;
          v13 = v14;
          v66 = v13;
          dispatch_sync(v21, block);
        }

        *(*(*(a1 + 168) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        *(*(*(a1 + 176) + 8) + 24) = *(*(*(a1 + 168) + 8) + 24) - *(*(*(a1 + 160) + 8) + 24);
        if (*(*(*(a1 + 152) + 8) + 24) == 1)
        {
          v22 = *(a1 + 32);
          v23 = *(v22 + 16);
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = sub_1E0CA74C4;
          v64[3] = &unk_1E86E6420;
          v64[4] = v22;
          v64[5] = v12;
          dispatch_async(v23, v64);
        }

        v24 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v25 = CWFGetOSLog();
        if (v25)
        {
          v26 = CWFGetOSLog();
        }

        else
        {
          v26 = MEMORY[0x1E69E9C10];
          v27 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(*(*(a1 + 176) + 8) + 24);
          v29 = *(*(*(a1 + 152) + 8) + 24);
          v71 = 134219266;
          v72 = v24 / 0x3B9ACA00;
          v73 = 2048;
          v74 = v24 % 0x3B9ACA00 / 0x3E8;
          v75 = 2114;
          v76 = v12;
          v77 = 2048;
          v78 = v28 / 0x3B9ACA00;
          v79 = 2048;
          v80 = v28 % 0x3B9ACA00 / 0x3E8;
          v81 = 1024;
          v82 = v29;
          _os_log_send_and_compose_impl();
        }
      }

      v9 = [obj countByEnumeratingWithState:&v67 objects:v83 count:16];
    }

    while (v9);
  }

  v30 = *(a1 + 32);
  v31 = *(v30 + 16);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = sub_1E0CA7594;
  v49[3] = &unk_1E86E7FC0;
  v50 = v46;
  v51 = obj;
  v52 = v30;
  v53 = v43;
  v58 = *(a1 + 184);
  v32 = *(a1 + 72);
  v59 = *(a1 + 200);
  v60 = v32;
  v33 = *(a1 + 40);
  v34 = *(a1 + 96);
  v35 = *(a1 + 120);
  v54 = v33;
  v55 = v45;
  v36 = *(a1 + 144);
  v62 = v35;
  v63 = v36;
  v61 = v34;
  v56 = v44;
  v57 = *(a1 + 48);
  v37 = v44;
  v38 = v45;
  v39 = v43;
  v40 = obj;
  v41 = v46;
  dispatch_async(v31, v49);

  objc_autoreleasePoolPop(context);
  v42 = *MEMORY[0x1E69E9840];
}