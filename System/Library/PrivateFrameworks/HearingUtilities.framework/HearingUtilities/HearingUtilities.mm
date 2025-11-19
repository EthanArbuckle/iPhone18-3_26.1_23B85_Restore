void sub_1DA5E48C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA5E5C78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

id getPASettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPASettingsClass_softClass;
  v7 = getPASettingsClass_softClass;
  if (!getPASettingsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPASettingsClass_block_invoke;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getPASettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA5E602C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPASettingsClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPASettingsClass_softClass_1;
  v7 = getPASettingsClass_softClass_1;
  if (!getPASettingsClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPASettingsClass_block_invoke_1;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getPASettingsClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA5E610C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPAAccessoryManagerClass_block_invoke(uint64_t a1)
{
  PersonalAudioLibrary_0();
  result = objc_getClass("PAAccessoryManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPAAccessoryManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPAAccessoryManagerClass_block_invoke_cold_1();
    return getPAAccessoryManagerClass(v3);
  }

  return result;
}

id getPAAccessoryManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPAAccessoryManagerClass_softClass;
  v7 = getPAAccessoryManagerClass_softClass;
  if (!getPAAccessoryManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPAAccessoryManagerClass_block_invoke;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getPAAccessoryManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA5E6244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA5E6558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA5E67E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void iteratePairedBluetoothDevicesOnQueue(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    if (v3)
    {
      v6 = +[HUAccessoryManager sharedInstance];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __iteratePairedBluetoothDevicesOnQueue_block_invoke;
      v7[3] = &unk_1E85CBBB0;
      v8 = v3;
      v9 = v5;
      [v6 getBluetoothState:v7];
    }

    else
    {
      (*(v4 + 2))(v4, 0);
    }
  }
}

void RTTUtilitiesLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!RTTUtilitiesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __RTTUtilitiesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E85CBC60;
    v4 = 0;
    RTTUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!RTTUtilitiesLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void RTTUtilitiesLibrary_0()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!RTTUtilitiesLibraryCore_frameworkLibrary_1)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __RTTUtilitiesLibraryCore_block_invoke_1;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E85CCD48;
    v4 = 0;
    RTTUtilitiesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!RTTUtilitiesLibraryCore_frameworkLibrary_1)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void pairedWithDevicesSupportingListeningModes(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __pairedWithDevicesSupportingListeningModes_block_invoke_2;
  v3[3] = &unk_1E85CA670;
  v4 = v1;
  v2 = v1;
  iteratePairedBluetoothDevicesOnQueue(&__block_literal_global_197, v3);
}

Class __getRTTSettingsClass_block_invoke(uint64_t a1)
{
  RTTUtilitiesLibrary();
  result = objc_getClass("RTTSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRTTSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRTTSettingsClass_block_invoke_cold_1();
    return __getRTTSettingsClass_block_invoke_0(v3);
  }

  return result;
}

Class __getRTTSettingsClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!RTTUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __RTTUtilitiesLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E85CC988;
    v7 = 0;
    RTTUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (RTTUtilitiesLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("RTTSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRTTSettingsClass_block_invoke_cold_1();
  }

  getRTTSettingsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getRTTSettingsClass_block_invoke_1(uint64_t a1)
{
  RTTUtilitiesLibrary_0();
  result = objc_getClass("RTTSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRTTSettingsClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getRTTSettingsClass_block_invoke_cold_1();
    return getRTTSettingsClass();
  }

  return result;
}

id getRTTSettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTTSettingsClass_softClass;
  v7 = getRTTSettingsClass_softClass;
  if (!getRTTSettingsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRTTSettingsClass_block_invoke;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getRTTSettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA5E6E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRTTSettingsClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTTSettingsClass_softClass_0;
  v7 = getRTTSettingsClass_softClass_0;
  if (!getRTTSettingsClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRTTSettingsClass_block_invoke_0;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getRTTSettingsClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA5E6F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRTTSettingsClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTTSettingsClass_softClass_1;
  v7 = getRTTSettingsClass_softClass_1;
  if (!getRTTSettingsClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRTTSettingsClass_block_invoke_1;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getRTTSettingsClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA5E7048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPASettingsClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PersonalAudioLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PersonalAudioLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E85CBC78;
    v7 = 0;
    PersonalAudioLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (PersonalAudioLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("PASettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPASettingsClass_block_invoke_cold_1();
  }

  getPASettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getPASettingsClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PersonalAudioLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PersonalAudioLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E85CC9A0;
    v7 = 0;
    PersonalAudioLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v5[0];
    if (PersonalAudioLibraryCore_frameworkLibrary_1)
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
  result = objc_getClass("PASettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPASettingsClass_block_invoke_cold_1();
  }

  getPASettingsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getPASettingsClass_block_invoke_1(uint64_t a1)
{
  PersonalAudioLibrary_0();
  result = objc_getClass("PASettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPASettingsClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPASettingsClass_block_invoke_cold_1();
    return hearingDeamonShouldBeRunning(v3);
  }

  return result;
}

void hearingDeamonShouldBeRunning(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = +[HUHearingAidSettings sharedInstance];
  v3 = [v2 pairedHearingAids];

  if (v3)
  {
    v4 = HCLogHearingXPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "heard will be running for Hearing Aids";
LABEL_15:
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
    }
  }

  else
  {
    v6 = [getPASettingsClass() sharedInstance];
    v7 = [v6 personalMediaConfiguration];

    if (v7)
    {
      v4 = HCLogHearingXPC();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v5 = "heard will be running for PME";
        goto LABEL_15;
      }
    }

    else
    {
      v8 = +[HUComfortSoundsSettings sharedInstance];
      v9 = [v8 comfortSoundsEnabled];

      if (v9)
      {
        v4 = HCLogHearingXPC();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v5 = "heard will be running for Background Sounds";
          goto LABEL_15;
        }
      }

      else
      {
        v10 = [getRTTSettingsClass() sharedInstance];
        if ([v10 TTYSoftwareEnabled])
        {
        }

        else
        {
          v11 = [getRTTSettingsClass() sharedInstance];
          v12 = [v11 TTYHardwareEnabled];

          if (!v12)
          {
            if (([MEMORY[0x1E69A4560] currentProcessIsSystemApp] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69A4560], "currentProcessIsPreferences") & 1) != 0 || objc_msgSend(MEMORY[0x1E69A4560], "currentProcessIsHeard"))
            {
              v16[0] = MEMORY[0x1E69E9820];
              v16[1] = 3221225472;
              v16[2] = __hearingDeamonShouldBeRunning_block_invoke;
              v16[3] = &unk_1E85CA670;
              v17 = v1;
              pairedWithDevicesSupportingListeningModes(v16);
            }

            else
            {
              (*(v1 + 2))(v1, 0);
            }

            goto LABEL_19;
          }
        }

        v4 = HCLogHearingXPC();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v5 = "heard will be running for RTT";
          goto LABEL_15;
        }
      }
    }
  }

  v13 = HCLogHearingAids();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:1];
    *buf = 138412290;
    v19 = v14;
    _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "heard should be running: %@", buf, 0xCu);
  }

  (*(v1 + 2))(v1, 1);
LABEL_19:

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t PersonalAudioLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PersonalAudioLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PersonalAudioLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E85CB6D8;
    v6 = 0;
    PersonalAudioLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PersonalAudioLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!PersonalAudioLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void PersonalAudioLibrary_0()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!PersonalAudioLibraryCore_frameworkLibrary_2)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __PersonalAudioLibraryCore_block_invoke_2;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E85CCD30;
    v4 = 0;
    PersonalAudioLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!PersonalAudioLibraryCore_frameworkLibrary_2)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_1DA5E7C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA5E81FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPADatabaseManagerClass_block_invoke(uint64_t a1)
{
  PersonalAudioLibrary_0();
  result = objc_getClass("PADatabaseManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPADatabaseManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPADatabaseManagerClass_block_invoke_cold_1();
    return getPADatabaseManagerClass(v3);
  }

  return result;
}

id getPADatabaseManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPADatabaseManagerClass_softClass;
  v7 = getPADatabaseManagerClass_softClass;
  if (!getPADatabaseManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPADatabaseManagerClass_block_invoke;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getPADatabaseManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA5E8348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __iteratePairedBluetoothDevicesOnQueue_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E695D288] devicesWithDiscoveryFlags:0x80000800000 error:0];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __iteratePairedBluetoothDevicesOnQueue_block_invoke_2;
    v8[3] = &unk_1E85CBB88;
    v10 = &v11;
    v9 = *(a1 + 32);
    [v3 enumerateObjectsUsingBlock:v8];
    (*(*(a1 + 40) + 16))(*(a1 + 40), *(v12 + 24), v4, v5);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

void sub_1DA5E85D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA5E87C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA5E8AE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

uint64_t AudioAccessoryServicesLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!AudioAccessoryServicesLibraryCore_frameworkLibrary)
  {
    AudioAccessoryServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = AudioAccessoryServicesLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t liveListenStreamSelected()
{
  v0 = +[HUUtilities sharedUtilities];
  v1 = [v0 liveListenRouteSelected];

  return v1;
}

uint64_t hearingAidStreamSelected()
{
  v0 = +[HUUtilities sharedUtilities];
  v1 = [v0 hearingAidStreamSelected];

  return v1;
}

void __getAADeviceManagerClass_block_invoke(uint64_t a1)
{
  if (!AudioAccessoryServicesLibraryCore())
  {
    v2 = abort_report_np();
    free(v2);
  }

  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AADeviceManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAADeviceManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAADeviceManagerClass_block_invoke_cold_1();
    __46__HUAccessoryManager_setupBluetoothController__block_invoke_2(v3, v4, v5);
  }
}

uint64_t __pairedWithDevicesSupportingListeningModes_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Paired devices with listening modes: %@", &v8, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __hearingDeamonShouldBeRunning_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  AXPerformBlockAsynchronouslyOnMainThread();
}

uint64_t __hearingDeamonShouldBeRunning_block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = HCLogHearingXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "heard will be running for device that supports listening mode: %@", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DA5EAACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA5EAFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA5EB250(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_1DA5EB450(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1DA5EB9BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1DA5EBD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t calculateState(char a1, char a2, int a3, uint64_t a4, int a5)
{
  if (a1)
  {
    return 5;
  }

  if ((a2 & 1) == 0 && !a3)
  {
    return 3;
  }

  v6 = 4;
  if (a5)
  {
    v6 = 2;
  }

  if (a4)
  {
    return 3;
  }

  else
  {
    return v6;
  }
}

void sub_1DA5EC45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id nameOfHearingDeviceReachableForAudioHandoff()
{
  v37 = *MEMORY[0x1E69E9840];
  v0 = +[HUUtilities sharedUtilities];
  [v0 clearAudioRoutes];

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v1 = dispatch_semaphore_create(0);
  v2 = +[HUUtilities sharedUtilities];
  v3 = [v2 routingQueue];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __nameOfHearingDeviceReachableForAudioHandoff_block_invoke;
  v20 = &unk_1E85CAF38;
  v22 = &v23;
  v4 = v1;
  v21 = v4;
  dispatch_async(v3, &v17);

  v5 = dispatch_time(0, 500000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = hearingAidStreamAvailable();
  v7 = [HUUtilities sharedUtilities:v17];
  v8 = [v7 takingConnection];

  if (v8 & 1 | ((v6 & 1) == 0) && [v24[5] length])
  {
    v9 = v24[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = @"Reachable";
  if (!v9)
  {
    v10 = @"Not Reachable";
  }

  v11 = v10;
  v12 = HCLogHearingHandoff();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v24[5];
    *buf = 138413058;
    v30 = v13;
    v31 = 1024;
    v32 = v6;
    v33 = 1024;
    v34 = v8;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Hearing Aids for handoff: name %@, HA route available: %d, taking connection: %d, result: %@", buf, 0x22u);
  }

  v14 = v9;
  _Block_object_dispose(&v23, 8);

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void sub_1DA5EC9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UserLevelHearingSetupAvailable()
{
  v0 = +[AXHeardController sharedServer];
  [v0 continueSetup];
}

intptr_t __nameOfHearingDeviceReachableForAudioHandoff_block_invoke(uint64_t a1)
{
  v2 = +[HUHearingAidSettings sharedInstance];
  v3 = [v2 availableHearingDeviceName];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

uint64_t hearingAidStreamAvailable()
{
  v0 = +[HUUtilities sharedUtilities];
  v1 = [v0 hearingAidRouteAvailable];

  return v1;
}

uint64_t __iteratePairedBluetoothDevicesOnQueue_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

unint64_t __pairedWithDevicesSupportingListeningModes_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 deviceFlags] & 0x4000000) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = ([v2 deviceFlags] >> 27) & 1;
  }

  return v3;
}

void sub_1DA5EDCA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

Class __getRTTControllerClass_block_invoke(uint64_t a1)
{
  RTTUtilitiesLibrary_0();
  result = objc_getClass("RTTController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRTTControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getRTTControllerClass_block_invoke_cold_1();
    return getRTTControllerClass();
  }

  return result;
}

id getRTTControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTTControllerClass_softClass;
  v7 = getRTTControllerClass_softClass;
  if (!getRTTControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRTTControllerClass_block_invoke;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getRTTControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA5EDDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXIDSServicesLibrary()
{
  v0 = AXIDSServicesLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id getAXIDSServicesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXIDSServicesClass_softClass;
  v7 = getAXIDSServicesClass_softClass;
  if (!getAXIDSServicesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXIDSServicesClass_block_invoke;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getAXIDSServicesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA5EDF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXIDSServicesClass_block_invoke(uint64_t a1)
{
  AXIDSServicesLibrary();
  result = objc_getClass("AXIDSServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXIDSServicesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAXIDSServicesClass_block_invoke_cold_1();
    return AXIDSServicesLibraryCore();
  }

  return result;
}

uint64_t AXIDSServicesLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!AXIDSServicesLibraryCore_frameworkLibrary)
  {
    AXIDSServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = AXIDSServicesLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DA5EE84C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v7 - 160));
  _Unwind_Resume(a1);
}

uint64_t headphoneStreamSelected()
{
  v0 = +[HUUtilities sharedUtilities];
  v1 = [v0 headphoneStreamSelected];

  return v1;
}

uint64_t sub_1DA5EECC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA5EECFC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DA5EEF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _automationPlayAutomationAudioSamples(uint64_t a1, void *a2)
{
  if ([MEMORY[0x1E69A4560] isInternalInstall])
  {
    if (_AXSAutomationEnabled())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = _AXSLiveHeadphoneLevelAutomationSampleData();
        [a2 _automationStartPlayingSampleData:v3];
      }
    }
  }
}

void sub_1DA5EF3F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id getADAFMetadataKeyHAEDataForGauge()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getADAFMetadataKeyHAEDataForGaugeSymbolLoc_ptr;
  v8 = getADAFMetadataKeyHAEDataForGaugeSymbolLoc_ptr;
  if (!getADAFMetadataKeyHAEDataForGaugeSymbolLoc_ptr)
  {
    v1 = AudioDataAnalysisLibrary();
    v6[3] = dlsym(v1, "ADAFMetadataKeyHAEDataForGauge");
    getADAFMetadataKeyHAEDataForGaugeSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    ADAFMetadataKeyHAEDataForGauge_cold_1 = getADAFMetadataKeyHAEDataForGauge_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(ADAFMetadataKeyHAEDataForGauge_cold_1);
  }

  v2 = *v0;

  return v2;
}

void sub_1DA5F177C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADAMAudioDataReceiverClass_block_invoke(uint64_t a1)
{
  AudioDataAnalysisLibrary();
  result = objc_getClass("ADAMAudioDataReceiver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getADAMAudioDataReceiverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getADAMAudioDataReceiverClass_block_invoke_cold_1();
    return AudioDataAnalysisLibrary();
  }

  return result;
}

uint64_t AudioDataAnalysisLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AudioDataAnalysisLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AudioDataAnalysisLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E85C9FD0;
    v6 = 0;
    AudioDataAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AudioDataAnalysisLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!AudioDataAnalysisLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __AudioDataAnalysisLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AudioDataAnalysisLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getADAFMetadataKeyHAEDataForGaugeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioDataAnalysisLibrary();
  result = dlsym(v2, "ADAFMetadataKeyHAEDataForGauge");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getADAFMetadataKeyHAEDataForGaugeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AXIDSServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AXIDSServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getAXIDSServiceMessageKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAXIDSServiceMessageKeySymbolLoc_ptr;
  v6 = getAXIDSServiceMessageKeySymbolLoc_ptr;
  if (!getAXIDSServiceMessageKeySymbolLoc_ptr)
  {
    v1 = AXIDSServicesLibrary();
    v4[3] = dlsym(v1, "AXIDSServiceMessageKey");
    getAXIDSServiceMessageKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1DA5F1C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAXIDSServiceMessageKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXIDSServicesLibrary();
  result = dlsym(v2, "AXIDSServiceMessageKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXIDSServiceMessageKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

NSDictionary *__getADAMAudioDataAnalysisSampleClass_block_invoke(uint64_t a1)
{
  AudioDataAnalysisLibrary();
  result = objc_getClass("ADAMAudioDataAnalysisSample");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getADAMAudioDataAnalysisSampleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getADAMAudioDataAnalysisSampleClass_block_invoke_cold_1();
    return [(HUComfortSoundsAssetManager *)v3 assetDownloadProgress];
  }

  return result;
}

void sub_1DA5F4DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA5F5CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1DA5F7E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UserRequestedAudioTransferNotification()
{
  v0 = HCLogHearingHandoff();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DA5E2000, v0, OS_LOG_TYPE_DEFAULT, "User requested handoff", v2, 2u);
  }

  v1 = +[HUNearbyHearingAidController sharedInstance];
  [v1 requestConnectionForReason:5];
}

void sub_1DA5F94A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1DA5FAAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DA5FC274(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_1DA600360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void shouldHandleServerStarting()
{
  v0 = HCLogHearingAids();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DA5E2000, v0, OS_LOG_TYPE_DEFAULT, "AXHAServer: HA server is ready.", v6, 2u);
  }

  v1 = +[AXHAServer sharedInstance];
  v2 = [v1 delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = +[AXHAServer sharedInstance];
    v5 = [v4 delegate];
    [v5 hearingServerIsReady];
  }
}

void sub_1DA60A6FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_1DA60B530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1DA60C818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA60CA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA60CCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA60CE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA60E3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_1DA60F91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA617AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1DA61A620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA61CE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA61D170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA61D7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA61E03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA61F6E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id getPAYodelConfigDidUpdate()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getPAYodelConfigDidUpdateSymbolLoc_ptr;
  v8 = getPAYodelConfigDidUpdateSymbolLoc_ptr;
  if (!getPAYodelConfigDidUpdateSymbolLoc_ptr)
  {
    v1 = PersonalAudioLibrary();
    v6[3] = dlsym(v1, "PAYodelConfigDidUpdate");
    getPAYodelConfigDidUpdateSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    ADAFMetadataKeyHAEDataForGauge_cold_1 = getADAFMetadataKeyHAEDataForGauge_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(ADAFMetadataKeyHAEDataForGauge_cold_1);
  }

  v2 = *v0;

  return v2;
}

void sub_1DA620864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA620B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA62121C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA621974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA621D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA62209C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA6222B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getpaSupportedWiredRoutesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PersonalAudioLibrary();
  result = dlsym(v2, "paSupportedWiredRoutes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getpaSupportedWiredRoutesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PersonalAudioLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PersonalAudioLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getpaSupportedWirelessRoutesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PersonalAudioLibrary();
  result = dlsym(v2, "paSupportedWirelessRoutes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getpaSupportedWirelessRoutesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AudioAccessoryServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AudioAccessoryServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getPAYodelConfigDidUpdateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PersonalAudioLibrary();
  result = dlsym(v2, "PAYodelConfigDidUpdate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAYodelConfigDidUpdateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1DA622980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getUMUserManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUMUserManagerClass_softClass;
  v7 = getUMUserManagerClass_softClass;
  if (!getUMUserManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getUMUserManagerClass_block_invoke;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getUMUserManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA622B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA624294(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class __getUMUserManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!UserManagementLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __UserManagementLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E85CB8E0;
    v7 = 0;
    UserManagementLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (UserManagementLibraryCore_frameworkLibrary)
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
  result = objc_getClass("UMUserManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUMUserManagerClass_block_invoke_cold_1();
  }

  getUMUserManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UserManagementLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UserManagementLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void AXHACHearingAidComplianceSetEnabled()
{
  _AXSHearingAidComplianceSetEnabled();
  v0 = +[HUUtilities sharedUtilities];
  [v0 updateHearingFeatureUsage];
}

id _accessibilityHWModel()
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 128;
  v6[0] = 0;
  v0 = 0;
  if (sysctlbyname("hw.model", v6, &v5, 0, 0))
  {
    v1 = 1;
  }

  else
  {
    v1 = v6[0] == 0;
  }

  if (!v1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    v0 = [v2 lowercaseString];
  }

  v3 = *MEMORY[0x1E69E9840];

  return v0;
}

uint64_t AXHACHearingAidCapabilities()
{
  if (AXHACHearingAidCapabilities_onceToken != -1)
  {
    AXHACHearingAidCapabilities_cold_1();
  }

  return AXHACHearingAidCapabilities__kAXDeviceHearingAidCapabilitiesCache;
}

uint64_t __AXHACHearingAidCapabilities_block_invoke()
{
  if (MGGetBoolAnswer())
  {
    v0 = _accessibilityHWModel();
    v1 = [v0 hasPrefix:@"n92"];

    if (v1)
    {
      goto LABEL_7;
    }

    v2 = 2;
  }

  else
  {
    if (!MGGetBoolAnswer())
    {
      goto LABEL_7;
    }

    v2 = 4;
  }

  AXHACHearingAidCapabilities__kAXDeviceHearingAidCapabilitiesCache = v2;
LABEL_7:
  result = MGGetBoolAnswer();
  if (result)
  {
    AXHACHearingAidCapabilities__kAXDeviceHearingAidCapabilitiesCache |= 0x10u;
  }

  return result;
}

void sub_1DA627BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA629F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id getAFPreferencesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFPreferencesClass_softClass;
  v7 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAFPreferencesClass_block_invoke;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getAFPreferencesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA62A89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA62BC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AssistantServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E85CB990;
    v7 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AssistantServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAFPreferencesClass_block_invoke_cold_1();
  }

  getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DA62C0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location, id a12)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a12);
  _Unwind_Resume(a1);
}

id HUNoiseLocString(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:v2 table:@"HearingUtilities_Noise"];

  return v4;
}

id hearingLocString(void *a1)
{
  v1 = a1;
  v2 = accessibilityHearingAidSupportBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"HearingAidSupport"];

  return v3;
}

id accessibilityHearingAidSupportBundle()
{
  v0 = accessibilityHearingAidSupportBundle_AXBundle;
  if (!accessibilityHearingAidSupportBundle_AXBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v2 = accessibilityHearingAidSupportBundle_AXBundle;
    accessibilityHearingAidSupportBundle_AXBundle = v1;

    v0 = accessibilityHearingAidSupportBundle_AXBundle;
  }

  return v0;
}

id comfortSoundsLocString(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:v2 table:@"ComfortSounds"];

  return v4;
}

id comfortSoundsTimeString(double a1)
{
  if (comfortSoundsTimeString_formatterOnceToken != -1)
  {
    comfortSoundsTimeString_cold_1();
  }

  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:a1];
  v3 = [comfortSoundsTimeString_timeFormatter stringFromDate:v2];

  return v3;
}

uint64_t __comfortSoundsTimeString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = comfortSoundsTimeString_timeFormatter;
  comfortSoundsTimeString_timeFormatter = v0;

  [comfortSoundsTimeString_timeFormatter setDateStyle:0];
  v2 = comfortSoundsTimeString_timeFormatter;

  return [v2 setTimeStyle:1];
}

uint64_t comfortSoundsDurationString(double a1)
{
  if (comfortSoundsDurationString_formatterOnceToken != -1)
  {
    comfortSoundsDurationString_cold_1();
  }

  v2 = comfortSoundsDurationString_durationFormatter;

  return [v2 stringFromTimeInterval:a1];
}

uint64_t __comfortSoundsDurationString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = comfortSoundsDurationString_durationFormatter;
  comfortSoundsDurationString_durationFormatter = v0;

  v2 = comfortSoundsDurationString_durationFormatter;

  return [v2 setUnitsStyle:3];
}

uint64_t comfortSoundsCountdownString(double a1)
{
  if (comfortSoundsCountdownString_formatterOnceToken != -1)
  {
    comfortSoundsCountdownString_cold_1();
  }

  v2 = comfortSoundsCountdownString_durationFormatter;

  return [v2 stringFromTimeInterval:a1];
}

uint64_t __comfortSoundsCountdownString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = comfortSoundsCountdownString_durationFormatter;
  comfortSoundsCountdownString_durationFormatter = v0;

  [comfortSoundsCountdownString_durationFormatter setUnitsStyle:0];
  [comfortSoundsCountdownString_durationFormatter setAllowedUnits:224];
  v2 = comfortSoundsCountdownString_durationFormatter;

  return [v2 setZeroFormattingBehavior:0];
}

id hearingInputRouteStringForOption(uint64_t a1)
{
  v2 = hearingLocString(@"HearingAidInputOptionsLeft");
  if (a1)
  {
    if (a1 == 3)
    {
      v3 = @"HearingAidInputOptionsNeither";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_10;
      }

      v3 = @"HearingAidInputOptionsRight";
    }
  }

  else if ([MEMORY[0x1E69A4560] deviceIsWatch])
  {
    v3 = @"HearingAidInputOptionsWrist";
  }

  else
  {
    v3 = @"HearingAidInputOptionsAutomatic";
  }

  v4 = hearingLocString(v3);

  v2 = v4;
LABEL_10:

  return v2;
}

void liveListenStreamSelectedAsync(void *a1)
{
  v1 = a1;
  v2 = +[HUUtilities sharedUtilities];
  [v2 liveListenRouteSelectedAsync:v1];
}

uint64_t hearingEarFromInputOption(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return dword_1DA687550[a1];
  }
}

uint64_t inputOptionFromHearingEar(int a1)
{
  if ((a1 - 2) > 4)
  {
    return 3;
  }

  else
  {
    return qword_1DA687560[a1 - 2];
  }
}

void hearingAidStreamAvailableAsync(void *a1)
{
  v1 = a1;
  v2 = +[HUUtilities sharedUtilities];
  [v2 hearingAidRouteAvailableAsync:v1];
}

void hearingAidStreamSelectedAsync(void *a1)
{
  v1 = a1;
  v2 = +[HUUtilities sharedUtilities];
  [v2 hearingAidStreamSelectedAsync:v1];
}

uint64_t hearingAidReceivingAudio()
{
  v0 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v1 = [v0 attributeForKey:*MEMORY[0x1E69AEB08]];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 count])
  {
    v2 = +[HUUtilities sharedUtilities];
    v3 = [v2 hearingAidStreamSelected];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t supportsBinauralStreamingForHearingAid(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v9 = 128;
  v10[0] = 0;
  if (sysctlbyname("hw.model", v10, &v9, 0, 0))
  {
    v2 = 1;
  }

  else
  {
    v2 = v10[0] == 0;
  }

  if (v2 || ([MEMORY[0x1E696AEC0] stringWithUTF8String:v10], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "lowercaseString"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hasPrefix:", @"n94"), v4, v3, (v5 & 1) != 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = [v1 supportsBinauralStreaming];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

id subPropertiesOfProperty(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 64; ++i)
  {
    if (((1 << i) & a1) != 0)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      [v2 addObject:v4];
    }
  }

  return v2;
}

id hearingPropertyDescription(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1];
  v4 = [v2 stringWithFormat:@"Unknown: %@", v3];

  if (a1 < 0x200000)
  {
    if (a1 <= 1023)
    {
      if (a1 <= 31)
      {
        if (a1 > 7)
        {
          if (a1 == 8)
          {
            v5 = @"Left/Right";
            goto LABEL_98;
          }

          if (a1 == 16)
          {
            v5 = @"HA ID";
            goto LABEL_98;
          }
        }

        else
        {
          if (a1 == 2)
          {
            goto LABEL_99;
          }

          if (a1 == 4)
          {
            v5 = @"Battery";
            goto LABEL_98;
          }
        }
      }

      else if (a1 <= 127)
      {
        if (a1 == 32)
        {
          v5 = @"Other HA ID";
          goto LABEL_98;
        }

        if (a1 == 64)
        {
          v5 = @"Mic Attenuation";
          goto LABEL_98;
        }
      }

      else
      {
        switch(a1)
        {
          case 128:
            v5 = @"Stream Attenuation";
            goto LABEL_98;
          case 256:
            v5 = @"Available Programs";
            goto LABEL_98;
          case 512:
            v5 = @"Manufacturer Model";
            goto LABEL_98;
        }
      }
    }

    else if (a1 >= 0x10000)
    {
      if (a1 < 0x40000)
      {
        if (a1 == 0x10000)
        {
          v5 = @"Characteristics";
          goto LABEL_98;
        }

        if (a1 == 0x20000)
        {
          v5 = @"Program Update";
          goto LABEL_98;
        }
      }

      else
      {
        switch(a1)
        {
          case 0x40000:
            v5 = @"Name";
            goto LABEL_98;
          case 0x80000:
            v5 = @"Manufacturer";
            goto LABEL_98;
          case 0x100000:
            v5 = @"Model";
            goto LABEL_98;
        }
      }
    }

    else if (a1 < 0x2000)
    {
      if (a1 == 1024)
      {
        v5 = @"Active Program";
        goto LABEL_98;
      }

      if (a1 == 4096)
      {
        v5 = @"Program Name Selector";
        goto LABEL_98;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x2000:
          v5 = @"Program Name";
          goto LABEL_98;
        case 0x4000:
          v5 = @"Program Category";
          goto LABEL_98;
        case 0x8000:
          v5 = @"Services";
          goto LABEL_98;
      }
    }

LABEL_93:
    v6 = [MEMORY[0x1E695DF70] array];
    for (i = 0; i != 64; ++i)
    {
      if (((1 << i) & a1) != 0)
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
        [v6 addObject:v8];
      }
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = [v6 componentsJoinedByString:@" and "];
    v5 = [v9 stringWithFormat:@"Properties %@", v10];

    v4 = v6;
    goto LABEL_98;
  }

  if (a1 > 0xFFFFFFFFLL)
  {
    if (a1 > 0x1FFFFFFFFFLL)
    {
      if (a1 <= 0x7FFFFFFFFFLL)
      {
        if (a1 == 0x2000000000)
        {
          v5 = @"Treble";
          goto LABEL_98;
        }

        if (a1 == 0x4000000000)
        {
          v5 = @"Mixed Volume";
          goto LABEL_98;
        }
      }

      else
      {
        switch(a1)
        {
          case 0x8000000000:
            v5 = @"Mixed Volume Step Size";
            goto LABEL_98;
          case 0x20000000000:
            v5 = @"Device Protocol";
            goto LABEL_98;
          case 0x80000000000:
            v5 = @"Substantially Similar";
            goto LABEL_98;
        }
      }
    }

    else if (a1 <= 0x3FFFFFFFFLL)
    {
      if (a1 == 0x100000000)
      {
        v5 = @"Microphone Step Size";
        goto LABEL_98;
      }

      if (a1 == 0x200000000)
      {
        v5 = @"Stream Step Size";
        goto LABEL_98;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x400000000:
          v5 = @"Sensitivity Step Size";
          goto LABEL_98;
        case 0x800000000:
          v5 = @"Active Streaming Program";
          goto LABEL_98;
        case 0x1000000000:
          v5 = @"Bass";
          goto LABEL_98;
      }
    }

    goto LABEL_93;
  }

  if (a1 > 0x3FFFFFF)
  {
    if (a1 <= 0x1FFFFFFF)
    {
      if (a1 == 0x4000000)
      {
        v5 = @"Paired Status";
        goto LABEL_98;
      }

      if (a1 == 0x10000000)
      {
        v5 = @"Spec Version";
        goto LABEL_98;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x20000000:
          v5 = @"Bluetooth Pairing";
          goto LABEL_98;
        case 0x40000000:
          v5 = @"Substantially Different";
          goto LABEL_98;
        case 0x80000000:
          v5 = @"Sensitivity";
          goto LABEL_98;
      }
    }

    goto LABEL_93;
  }

  if (a1 < 0x800000)
  {
    if (a1 == 0x200000)
    {
      v5 = @"Connection Status";
      goto LABEL_98;
    }

    if (a1 == 0x400000)
    {
      v5 = @"Firmware";
      goto LABEL_98;
    }

    goto LABEL_93;
  }

  if (a1 == 0x800000)
  {
    v5 = @"Hardware";
    goto LABEL_98;
  }

  if (a1 == 0x1000000)
  {
    v5 = @"Device ID";
    goto LABEL_98;
  }

  if (a1 != 0x2000000)
  {
    goto LABEL_93;
  }

  v5 = @"Device Description";
LABEL_98:

  v4 = v5;
LABEL_99:

  return v4;
}

id nameForComplicationPreferredDisplayMode(uint64_t a1)
{
  v1 = @"complication.preferred.display.program";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return hearingLocString(v1);
  }

  else
  {
    return hearingLocString(@"complication.preferred.display.mic.volume");
  }
}

id cloudHearingAidDescriptionForDescription(void *a1)
{
  v1 = MEMORY[0x1E695DF90];
  v2 = a1;
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = MEMORY[0x1E695DF90];
  v5 = [v2 objectForKey:@"ax_hearing_device_left_peripheral_key"];
  v6 = [v4 dictionaryWithDictionary:v5];

  v7 = MEMORY[0x1E695DF90];
  v8 = [v2 objectForKey:@"ax_hearing_device_right_peripheral_key"];

  v9 = [v7 dictionaryWithDictionary:v8];

  v10 = [v6 objectForKey:@"ax_hearing_device_uuid_key"];
  v11 = *MEMORY[0x1E69A4538];
  v12 = [v10 hasPrefix:*MEMORY[0x1E69A4538]];

  if ((v12 & 1) == 0)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [v6 objectForKey:@"ax_hearing_device_uuid_key"];
    v15 = [v13 stringWithFormat:@"%@%@", v11, v14];
    [v6 setObject:v15 forKey:@"ax_hearing_device_uuid_key"];

    [v3 setObject:v6 forKey:@"ax_hearing_device_left_peripheral_key"];
  }

  v16 = [v9 objectForKey:@"ax_hearing_device_uuid_key"];
  v17 = [v16 hasPrefix:v11];

  if ((v17 & 1) == 0)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [v9 objectForKey:@"ax_hearing_device_uuid_key"];
    v20 = [v18 stringWithFormat:@"%@%@", v11, v19];
    [v9 setObject:v20 forKey:@"ax_hearing_device_uuid_key"];

    [v3 setObject:v9 forKey:@"ax_hearing_device_right_peripheral_key"];
  }

  return v3;
}

void iterateConnectedBluetoothDevicesOnQueue(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = +[HUAccessoryManager sharedInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __iterateConnectedBluetoothDevicesOnQueue_block_invoke;
    v6[3] = &unk_1E85CBBB0;
    v7 = v3;
    v8 = v4;
    [v5 getBluetoothState:v6];
  }
}

void __iterateConnectedBluetoothDevicesOnQueue_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E695D288] devicesWithDiscoveryFlags:0x80000200000 error:0];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __iterateConnectedBluetoothDevicesOnQueue_block_invoke_2;
    v8[3] = &unk_1E85CBB88;
    v10 = &v11;
    v9 = *(a1 + 32);
    [v3 enumerateObjectsUsingBlock:v8];
    (*(*(a1 + 40) + 16))(*(a1 + 40), *(v12 + 24), v4, v5);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

void sub_1DA62D32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __iterateConnectedBluetoothDevicesOnQueue_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

void getCallStatus(void *a1)
{
  v1 = a1;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  RTTTelephonyUtilitiesClass = getRTTTelephonyUtilitiesClass();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __getCallStatus_block_invoke;
  v4[3] = &unk_1E85CBC18;
  v6 = v16;
  v7 = v14;
  v8 = v10;
  v9 = v12;
  v3 = v1;
  v5 = v3;
  [RTTTelephonyUtilitiesClass performCallCenterTask:v4];

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
}

void sub_1DA62D4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

id getRTTTelephonyUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTTTelephonyUtilitiesClass_softClass;
  v7 = getRTTTelephonyUtilitiesClass_softClass;
  if (!getRTTTelephonyUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRTTTelephonyUtilitiesClass_block_invoke;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getRTTTelephonyUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA62D5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCallStatus_block_invoke(void *a1)
{
  v9 = [getRTTTelephonyUtilitiesClass() sharedCallCenter];
  *(*(a1[5] + 8) + 24) = [v9 anyCallIsEndpointOnCurrentDevice];
  v2 = [v9 callsWithStatus:1];
  *(*(a1[6] + 8) + 24) = [v2 count] != 0;

  v3 = [v9 callsPassingTest:&__block_literal_global_200];
  *(*(a1[7] + 8) + 24) = [v3 count] != 0;

  v4 = [v9 audioAndVideoCallsWithStatus:1];
  *(*(a1[8] + 8) + 24) = [v4 count] != 0;

  v5 = *(*(a1[5] + 8) + 24);
  v6 = *(*(a1[6] + 8) + 24);
  v7 = *(*(a1[8] + 8) + 24);
  v8 = *(*(a1[7] + 8) + 24);
  (*(a1[4] + 16))();
}

BOOL __getCallStatus_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 status] == 4 || objc_msgSend(v2, "status") == 3 || objc_msgSend(v2, "status") == 2;

  return v3;
}

BOOL hearingUIShouldBeAvailable()
{
  v0 = +[HUHearingAidSettings sharedInstance];
  v1 = [v0 pairedHearingAids];
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v3 = [getPASettingsClass() sharedInstance];
    v4 = [v3 personalMediaConfiguration];
    v2 = v4 != 0;
  }

  return v2;
}

Class __getRTTTelephonyUtilitiesClass_block_invoke(uint64_t a1)
{
  RTTUtilitiesLibrary();
  result = objc_getClass("RTTTelephonyUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRTTTelephonyUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRTTTelephonyUtilitiesClass_block_invoke_cold_1();
    return __RTTUtilitiesLibraryCore_block_invoke(v3);
  }

  return result;
}

uint64_t __RTTUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RTTUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PersonalAudioLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PersonalAudioLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DA62FA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getAXSSInterDeviceCommunicatorClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AccessibilitySharedSupportLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AccessibilitySharedSupportLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E85CBF30;
    v7 = 0;
    AccessibilitySharedSupportLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilitySharedSupportLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AXSSInterDeviceCommunicator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSSInterDeviceCommunicatorClass_block_invoke_cold_1();
  }

  getAXSSInterDeviceCommunicatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccessibilitySharedSupportLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilitySharedSupportLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DA633AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  _Block_object_dispose((v34 - 128), 8);
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getAXRDeviceDiscoveryManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AccessibilityRemoteServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityRemoteServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E85CC008;
    v7 = 0;
    AccessibilityRemoteServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityRemoteServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AXRDeviceDiscoveryManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXRDeviceDiscoveryManagerClass_block_invoke_cold_1();
  }

  getAXRDeviceDiscoveryManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccessibilityRemoteServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityRemoteServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void LiveListenSendObservingNotificationForDevice(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = hearingLocString(@"HearingAidLiveListenRemoteObserverNotification");
  v4 = [v2 name];

  v5 = [v1 stringWithFormat:v3, v4];

  _LiveListenSendUserNotification(v5, 0);
}

void _LiveListenSendUserNotification(void *a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v4 = getUNMutableNotificationContentClass_softClass;
  v22 = getUNMutableNotificationContentClass_softClass;
  if (!getUNMutableNotificationContentClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v24 = __getUNMutableNotificationContentClass_block_invoke;
    v25 = &unk_1E85C9FB0;
    v26 = &v19;
    __getUNMutableNotificationContentClass_block_invoke(&buf);
    v4 = v20[3];
  }

  v5 = v4;
  _Block_object_dispose(&v19, 8);
  v6 = objc_opt_new();
  [v6 setBody:{v3, v19}];
  v7 = hearingLocString(@"HearingAidLiveListenStatusbar");
  [v6 setTitle:v7];

  v8 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=ACCESSIBILITY&path=AUDIO_VISUAL_TITLE/AXLLEnableSpecID"];
  [v6 setDefaultActionURL:v8];

  [v6 setShouldSuppressDefaultAction:0];
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [v9 dateByAddingTimeInterval:86400.0];
  [v6 setExpirationDate:v10];

  if (a2)
  {
    [v6 setInterruptionLevel:2];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v11 = getUNNotificationRequestClass_softClass;
  v22 = getUNNotificationRequestClass_softClass;
  if (!getUNNotificationRequestClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v24 = __getUNNotificationRequestClass_block_invoke;
    v25 = &unk_1E85C9FB0;
    v26 = &v19;
    __getUNNotificationRequestClass_block_invoke(&buf);
    v11 = v20[3];
  }

  v12 = v11;
  _Block_object_dispose(&v19, 8);
  v13 = [MEMORY[0x1E696AFB0] UUID];
  v14 = [v13 UUIDString];
  v15 = [v11 requestWithIdentifier:v14 content:v6 trigger:0];

  v16 = HCLogHearingAids();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v15;
    _os_log_impl(&dword_1DA5E2000, v16, OS_LOG_TYPE_DEFAULT, "Posting local notification: %@", &buf, 0xCu);
  }

  v17 = LiveListenNotificationCenter();
  [v17 addNotificationRequest:v15 withCompletionHandler:&__block_literal_global_40_0];

  v18 = *MEMORY[0x1E69E9840];
}

void LiveListenSendStartedNotificationForDevice(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = hearingLocString(@"HearingAidLiveListenRemoteStartNotification");
  v4 = [v2 name];

  v5 = [v1 stringWithFormat:v3, v4];

  _LiveListenSendUserNotification(v5, 1);
}

void LiveListenRequestNotificationAuthorization()
{
  v0 = LiveListenNotificationCenter();
  [v0 requestAuthorizationWithOptions:6 completionHandler:&__block_literal_global_15];
}

id LiveListenNotificationCenter()
{
  if (LiveListenNotificationCenter_onceToken != -1)
  {
    LiveListenNotificationCenter_cold_1();
  }

  v1 = LiveListenNotificationCenter_liveListenNotificationCenter;

  return v1;
}

void __LiveListenRequestNotificationAuthorization_block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Requested authorization to show notification: %d %@", v7, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __getUNMutableNotificationContentClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UNMutableNotificationContent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUNMutableNotificationContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUNMutableNotificationContentClass_block_invoke_cold_1();
    UserNotificationsLibrary();
  }
}

void UserNotificationsLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!UserNotificationsLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __UserNotificationsLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E85CC060;
    v4 = 0;
    UserNotificationsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!UserNotificationsLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __UserNotificationsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UserNotificationsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getUNNotificationRequestClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  result = objc_getClass("UNNotificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUNNotificationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUNNotificationRequestClass_block_invoke_cold_1();
    return __LiveListenNotificationCenter_block_invoke(v3);
  }

  return result;
}

void __LiveListenNotificationCenter_block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getUNUserNotificationCenterClass_softClass;
  v8 = getUNUserNotificationCenterClass_softClass;
  if (!getUNUserNotificationCenterClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getUNUserNotificationCenterClass_block_invoke;
    v4[3] = &unk_1E85C9FB0;
    v4[4] = &v5;
    __getUNUserNotificationCenterClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [[v0 alloc] initWithBundleIdentifier:@"com.apple.LiveListenNotifications"];
  v3 = LiveListenNotificationCenter_liveListenNotificationCenter;
  LiveListenNotificationCenter_liveListenNotificationCenter = v2;
}

void sub_1DA63809C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

HUNearbyLiveListenController *__getUNUserNotificationCenterClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  result = objc_getClass("UNUserNotificationCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUNUserNotificationCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUNUserNotificationCenterClass_block_invoke_cold_1();
    return +[(HUNearbyLiveListenController *)v3];
  }

  return result;
}

uint64_t updateStateForNearbyDevice(uint64_t result, void *a2)
{
  if (result)
  {
    if (result == 5)
    {
      if ([a2 isiPad])
      {
        return 7;
      }

      else
      {
        return 6;
      }
    }

    else if (!a2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t liveListenStateDescription(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    v3 = @"Unknown";
  }

  else
  {
    v3 = off_1E85CC0E8[a1 - 1];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%ld)", v3, a1, v1, v2];
}

void sub_1DA638F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1DA6398CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void sub_1DA63AAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AXHasCapability()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAXHasCapabilitySymbolLoc_ptr;
  v7 = getAXHasCapabilitySymbolLoc_ptr;
  if (!getAXHasCapabilitySymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXHasCapabilitySymbolLoc_block_invoke;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getAXHasCapabilitySymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    ADAFMetadataKeyHAEDataForGauge_cold_1 = getADAFMetadataKeyHAEDataForGauge_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(ADAFMetadataKeyHAEDataForGauge_cold_1);
  }

  return v0(@"AXLiveCaptionsLanguageExpansion");
}

Class __getAXLTLiveTranscriptionClass_block_invoke(uint64_t a1)
{
  LiveTranscriptionLibrary();
  result = objc_getClass("AXLTLiveTranscription");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXLTLiveTranscriptionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAXLTLiveTranscriptionClass_block_invoke_cold_1();
    return LiveTranscriptionLibrary();
  }

  return result;
}

uint64_t LiveTranscriptionLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!LiveTranscriptionLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __LiveTranscriptionLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E85CC480;
    v6 = 0;
    LiveTranscriptionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = LiveTranscriptionLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!LiveTranscriptionLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __LiveTranscriptionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LiveTranscriptionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getAXHasCapabilitySymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E85CC498;
    v8 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AXHasCapability");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXHasCapabilitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getAXLCLiveCaptionsSelectedLocaleIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = LiveTranscriptionLibrary();
  result = dlsym(v2, "AXLCLiveCaptionsSelectedLocaleIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXLCLiveCaptionsSelectedLocaleIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1DA63DFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA63E1CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1DA63F444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA63F56C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1DA641490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  objc_sync_exit(v17);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1DA641744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1DA6418C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1DA641A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1DA641C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1DA641EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA642240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  objc_sync_exit(v17);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1DA642480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1DA642660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1DA642A08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1DA644190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA644BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_1DA647CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void UserRequestedAudioTransferCompleteNotification()
{
  v0 = HCLogHearingHandoff();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DA5E2000, v0, OS_LOG_TYPE_DEFAULT, "Hearing Aids handoff completed", v2, 2u);
  }

  v1 = +[HUUtilities sharedUtilities];
  [v1 setTakingConnection:0];
}

void UserRequestedAudioTransferNotification_0()
{
  v0 = HCLogHearingHandoff();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DA5E2000, v0, OS_LOG_TYPE_DEFAULT, "User requested handoff", v2, 2u);
  }

  v1 = +[HUUtilities sharedUtilities];
  [v1 setTakingConnection:1];
}

void sub_1DA649BB0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1DA649EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __RTTUtilitiesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RTTUtilitiesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PersonalAudioLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PersonalAudioLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DA64C15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA64C63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AccessibilitySettingsChangedOnCompanion()
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"NoiseEnabled";
  v2[1] = @"OnboardingCompleted";
  v2[2] = @"NotificationsEnabled";
  v2[3] = @"NotificationsThreshold";
  v2[4] = @"NotificationsMuteDate";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:5];
  [v0 enumerateObjectsUsingBlock:&__block_literal_global_343];

  v1 = *MEMORY[0x1E69E9840];
}

void _axSettingsHandlePreferenceChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = +[HUNoiseSettings sharedInstance];
  [v4 _handlePreferenceChanged:a3];
}

uint64_t AXSettingsReturnBoolValue(void *a1)
{
  v1 = a1;
  v2 = +[HUNoiseSettings sharedInstance];
  v3 = [v2 _valueForPreferenceKey:v1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t AXSettingsReturnUnsignedIntegerValue(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[HUNoiseSettings sharedInstance];
  v5 = [v4 _valueForPreferenceKey:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a2 = [v5 unsignedIntegerValue];
  }

  return a2;
}

double AXSettingsReturnDoubleValue(void *a1)
{
  v1 = a1;
  v2 = +[HUNoiseSettings sharedInstance];
  v3 = [v2 _valueForPreferenceKey:v1];

  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

void __AccessibilitySettingsChangedOnCompanion_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HUNoiseSettings sharedInstance];
  name = [v3 notificationForPreferenceKey:v2];

  if (name)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
  }
}

id AXLogHearingHalPlugin()
{
  if (AXLogHearingHalPlugin_onceToken != -1)
  {
    AXLogHearingHalPlugin_cold_1();
  }

  v1 = AXLogHearingHalPlugin___logObj;

  return v1;
}

uint64_t __AXLogHearingHalPlugin_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E6988348], "AXHearingHalPlugin");
  v1 = AXLogHearingHalPlugin___logObj;
  AXLogHearingHalPlugin___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getCCSControlCenterServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCCSControlCenterServiceClass_softClass;
  v7 = getCCSControlCenterServiceClass_softClass;
  if (!getCCSControlCenterServiceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCCSControlCenterServiceClass_block_invoke;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getCCSControlCenterServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA658FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA65AA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18, id a19)
{
  objc_destroyWeak(v19 + 7);
  objc_destroyWeak(v19 + 6);
  objc_destroyWeak(v19 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_1DA65B230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCCSIconElementRequestClass_block_invoke(uint64_t a1)
{
  ControlCenterServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCSIconElementRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCSIconElementRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCCSIconElementRequestClass_block_invoke_cold_1();
    ControlCenterServicesLibrary();
  }
}

void ControlCenterServicesLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!ControlCenterServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __ControlCenterServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E85CCD18;
    v4 = 0;
    ControlCenterServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!ControlCenterServicesLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __ControlCenterServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ControlCenterServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCCSControlCenterServiceClass_block_invoke(uint64_t a1)
{
  ControlCenterServicesLibrary();
  result = objc_getClass("CCSControlCenterService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCSControlCenterServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCCSControlCenterServiceClass_block_invoke_cold_1();
    return __PersonalAudioLibraryCore_block_invoke_2(v3);
  }

  return result;
}

uint64_t __PersonalAudioLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PersonalAudioLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __RTTUtilitiesLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RTTUtilitiesLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DA65ED64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_1DA65FA64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void _hearingTestStarted()
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = +[HUComfortSoundsSettings sharedInstance];
    v1 = [v0 comfortSoundsEnabled];

    if ((v1 & 1) == 0)
    {
      v3 = HCLogComfortSounds();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Hearing test started. Background Sounds is already off.", buf, 2u);
      }

      goto LABEL_12;
    }

    v2 = +[HUUtilities sharedUtilities];
    v3 = [v2 currentPickableAudioRoutes];

    v4 = [v3 valueForKey:@"AXSHARoutePicked"];
    v5 = [v3 valueForKey:@"AXSHARouteSpeaker"];
    if ([v4 isEqualToDictionary:v5])
    {
    }

    else
    {
      v6 = +[HUComfortSoundsSettings sharedInstance];
      v7 = [v6 comfortSoundsEnabled];

      if (!v7)
      {
LABEL_12:

        return;
      }

      v8 = HCLogComfortSounds();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Hearing test started. Stopping Background Sounds.", v9, 2u);
      }

      v4 = +[HUComfortSoundsSettings sharedInstance];
      [v4 setComfortSoundsEnabled:0];
    }

    goto LABEL_12;
  }
}

void sub_1DA66152C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA663F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA66434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA6664D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void userChangedAudioRoute(uint64_t a1, uint64_t a2)
{
  v3 = dispatch_time(0, 1000000000);
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __userChangedAudioRoute_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_after(v3, v4, block);
}

uint64_t _hearingTestStarted_0(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v4 = HCLogHearingLiveListen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Hearing test started. Stopping Live Listen", v5, 2u);
    }

    return [a2 stopListeningWithCompletion:0];
  }

  return result;
}

uint64_t RenderAudio(void *a1, AudioUnitRenderActionFlags *a2, const AudioTimeStamp *a3, uint64_t a4, UInt32 a5, AudioBufferList *a6)
{
  v10 = a1;
  v11 = v10;
  if (!v10)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = AudioUnitRender(v10[6], a2, a3, 1u, a5, a6);
  if (_os_feature_enabled_impl())
  {
    v13 = [(AudioUnit *)v11 audioRingBuffer];
    v14 = [[HUAudioBuffer alloc] initWithBuffer:a6];
    [v13 addObject:v14];
  }

  if (!v12)
  {
    if (*(v11 + 32) == 1)
    {
      ExtAudioFileWriteAsync(v11[3], a5, a6);
    }

    goto LABEL_7;
  }

LABEL_8:

  return v12;
}

uint64_t __userChangedAudioRoute_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 audioRouteDidChange:0];
  }

  return result;
}

void sub_1DA669ED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1DA66B05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA66B15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA66DAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKQuantityClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKQuantityClass_softClass;
  v7 = getHKQuantityClass_softClass;
  if (!getHKQuantityClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getHKQuantityClass_block_invoke;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getHKQuantityClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA66DBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKUnitClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKUnitClass_softClass;
  v7 = getHKUnitClass_softClass;
  if (!getHKUnitClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getHKUnitClass_block_invoke;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getHKUnitClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA66DCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKDeviceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKDeviceClass_softClass;
  v7 = getHKDeviceClass_softClass;
  if (!getHKDeviceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getHKDeviceClass_block_invoke;
    v3[3] = &unk_1E85C9FB0;
    v3[4] = &v4;
    __getHKDeviceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA66DD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA66E10C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA66E504(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void handleInternalDataCollectionDidChangeNotification(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = +[HUNoiseSettings sharedInstance];
    [a2 setInternalDataCollectionEnabled:{objc_msgSend(v3, "internalDataCollectionEnabled")}];
  }
}

void sub_1DA66FA3C(void *exc_buf, int a2)
{
  if (a2 == 2)
  {
    v2 = objc_begin_catch(exc_buf);
    v3 = HCLogHearingProtection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65__HUNoiseController__internalDataCollectionLogSPLValue_metaData___block_invoke_cold_1();
    }

    objc_end_catch();
    JUMPOUT(0x1DA66F9BCLL);
  }

  objc_begin_catch(exc_buf);
  JUMPOUT(0x1DA66F9C0);
}

Class __getHKHealthStoreClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
    return HealthKitLibrary();
  }

  return result;
}

uint64_t HealthKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __HealthKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E85CD0E0;
    v6 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HealthKitLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getHKQuantityTypeClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  result = objc_getClass("HKQuantityType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKQuantityTypeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKQuantityTypeClass_block_invoke_cold_1();
    return __getHKQuantityTypeIdentifierEnvironmentalSoundReductionSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getHKQuantityTypeIdentifierEnvironmentalSoundReductionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary();
  result = dlsym(v2, "HKQuantityTypeIdentifierEnvironmentalSoundReduction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKQuantityTypeIdentifierEnvironmentalSoundReductionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getHKDataCollectorClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  result = objc_getClass("HKDataCollector");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKDataCollectorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKDataCollectorClass_block_invoke_cold_1();
    return __getADAMAudioDataReceiverClass_block_invoke_0(v3);
  }

  return result;
}

Class __getADAMAudioDataReceiverClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AudioDataAnalysisLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AudioDataAnalysisLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E85CD0F8;
    v7 = 0;
    AudioDataAnalysisLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (AudioDataAnalysisLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("ADAMAudioDataReceiver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getADAMAudioDataReceiverClass_block_invoke_cold_1();
  }

  getADAMAudioDataReceiverClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AudioDataAnalysisLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AudioDataAnalysisLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getPLLogRegisteredEventSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PowerLogLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E85CD110;
    v8 = 0;
    PowerLogLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = PowerLogLibraryCore_frameworkLibrary;
    if (PowerLogLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = PowerLogLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "PLLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLLogRegisteredEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PowerLogLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PowerLogLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getHKQuantityClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  result = objc_getClass("HKQuantity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKQuantityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKQuantityClass_block_invoke_cold_1();
    return __getHKUnitClass_block_invoke(v3);
  }

  return result;
}

Class __getHKUnitClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  result = objc_getClass("HKUnit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKUnitClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKUnitClass_block_invoke_cold_1();
    return __getHKMetadataKeyAudioExposureLevelSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getHKMetadataKeyAudioExposureLevelSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary();
  result = dlsym(v2, "HKMetadataKeyAudioExposureLevel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKMetadataKeyAudioExposureLevelSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getHKCategorySampleClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  result = objc_getClass("HKCategorySample");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKCategorySampleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKCategorySampleClass_block_invoke_cold_1();
    return __getHKObjectTypeClass_block_invoke(v3);
  }

  return result;
}

Class __getHKObjectTypeClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  result = objc_getClass("HKObjectType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKObjectTypeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKObjectTypeClass_block_invoke_cold_1();
    return __getHKCategoryTypeIdentifierEnvironmentalAudioExposureEventSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getHKCategoryTypeIdentifierEnvironmentalAudioExposureEventSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary();
  result = dlsym(v2, "HKCategoryTypeIdentifierEnvironmentalAudioExposureEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKCategoryTypeIdentifierEnvironmentalAudioExposureEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getHKDeviceClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  result = objc_getClass("HKDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKDeviceClass_block_invoke_cold_1();
    return __getHKQuantityDatumClass_block_invoke(v3);
  }

  return result;
}

HULiveListenObserver *__getHKQuantityDatumClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  result = objc_getClass("HKQuantityDatum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKQuantityDatumClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKQuantityDatumClass_block_invoke_cold_1();
    return [(HULiveListenObserver *)v3 initWithController:v4, v5];
  }

  return result;
}

void sub_1DA670EF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1DA671DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1DA671FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA6723FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA674784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA676D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1DA677BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA67819C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA678834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA678EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__36(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void WrappedAudioQueueRunningStateChanged(void *a1, OpaqueAudioQueue *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (!AudioQueueGetProperty(a2, 0x6171726Eu, &outData, &ioDataSize))
  {
    [v3 setAudioQueueActive:outData != 0];
  }
}

id HULiveCaptionObjC.__allocating_init(rootObject:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___HULiveCaptionObjC_rootObject] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id HULiveCaptionObjC.init(rootObject:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___HULiveCaptionObjC_rootObject] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HULiveCaptionObjC();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1DA6799AC()
{
  v1 = *(v0 + OBJC_IVAR___HULiveCaptionObjC_rootObject);
  sub_1DA67E4E4();

  return sub_1DA67E544();
}

id HULiveCaptionObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1DA679AE8()
{
  result = [objc_allocWithZone(type metadata accessor for HULiveCaptionsObjC()) init];
  qword_1ECBD2908 = result;
  return result;
}

id static HULiveCaptionsObjC.shared.getter()
{
  if (qword_1ECBD2900 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECBD2908;

  return v1;
}

uint64_t sub_1DA679BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v6 + OBJC_IVAR___HULiveCaptionsObjC_rootObject);
  sub_1DA67E554();
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = a6;

  sub_1DA67E514();

  if (v7)
  {
    return swift_willThrow();
  }

  return result;
}

void sub_1DA679C94(void *a1, void (*a2)(id, uint64_t))
{
  v4 = type metadata accessor for HULiveCaptionObjC();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___HULiveCaptionObjC_rootObject] = a1;
  v9.receiver = v5;
  v9.super_class = v4;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  a2(v7, v8);
}

uint64_t sub_1DA679FC0()
{
  v2 = *(v0 + OBJC_IVAR___HULiveCaptionsObjC_rootObject);
  sub_1DA67E554();
  result = sub_1DA67E504();
  if (v1)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DA67A0B8()
{
  result = sub_1DA67E544();
  qword_1ECBD2918 = result;
  return result;
}

uint64_t sub_1DA67A124()
{
  result = sub_1DA67E564();
  qword_1ECBD2928 = result;
  return result;
}

uint64_t sub_1DA67A16C(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_1DA67A1D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a3 == -1)
  {
    return *a4;
  }

  swift_once();
  return *a4;
}

id HULiveCaptionsObjC.init()()
{
  v1 = OBJC_IVAR___HULiveCaptionsObjC_rootObject;
  sub_1DA67E534();
  *&v0[v1] = sub_1DA67E524();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HULiveCaptionsObjC();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1DA67A328(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
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

uint64_t sub_1DA67A508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD2520, &qword_1DA6877A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getADAFMetadataKeyHAEDataForGauge_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __49__HUHeadphoneLevelController__startIDSConnection__block_invoke_cold_1(v0);
}