id DMFAppLog()
{
  if (DMFAppLog_onceToken != -1)
  {
    DMFAppLog_cold_1();
  }

  v1 = DMFAppLog_log;

  return v1;
}

id DMFPolicyLog()
{
  if (DMFPolicyLog_onceToken != -1)
  {
    DMFPolicyLog_cold_1();
  }

  v1 = DMFPolicyLog_log;

  return v1;
}

uint64_t __DMFPolicyLog_block_invoke()
{
  DMFPolicyLog_log = os_log_create("com.apple.dmd", "Policy");

  return MEMORY[0x1EEE66BB8]();
}

id DMFEmergencyModeLog()
{
  if (DMFEmergencyModeLog_onceToken != -1)
  {
    DMFEmergencyModeLog_cold_1();
  }

  v1 = DMFEmergencyModeLog_log;

  return v1;
}

uint64_t __DMFEmergencyModeLog_block_invoke()
{
  DMFEmergencyModeLog_log = os_log_create("com.apple.dmd", "EmergencyMode");

  return MEMORY[0x1EEE66BB8]();
}

id DMFConfigurationEngineLog()
{
  if (DMFConfigurationEngineLog_onceToken != -1)
  {
    DMFConfigurationEngineLog_cold_1();
  }

  v1 = DMFConfigurationEngineLog_log;

  return v1;
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

id DMFAllConfigurationOrganizationTypes()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"screentime";
  v5[1] = @"personal";
  v5[2] = @"family";
  v5[3] = @"internal";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_1DC00CFE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id DMFConfigurationSourceClientXPCInterface()
{
  if (DMFConfigurationSourceClientXPCInterface_onceToken != -1)
  {
    DMFConfigurationSourceClientXPCInterface_cold_1();
  }

  v1 = DMFConfigurationSourceClientXPCInterface_interface;

  return v1;
}

uint64_t __DMFConfigurationSourceClientXPCInterface_block_invoke()
{
  DMFConfigurationSourceClientXPCInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F57BCD88];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1DC0136C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC014640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC0148FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC014BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC014EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t __DMFConfigurationEngineLog_block_invoke()
{
  DMFConfigurationEngineLog_log = os_log_create("com.apple.dmd", "ConfigurationEngine");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __DMFAppLog_block_invoke()
{
  DMFAppLog_log = os_log_create("com.apple.dmd", "Apps");

  return MEMORY[0x1EEE66BB8]();
}

id DMFPersonalHotspotLog()
{
  if (DMFPersonalHotspotLog_onceToken != -1)
  {
    DMFPersonalHotspotLog_cold_1();
  }

  v1 = DMFPersonalHotspotLog_log;

  return v1;
}

uint64_t __DMFPersonalHotspotLog_block_invoke()
{
  DMFPersonalHotspotLog_log = os_log_create("com.apple.dmd", "PersonalHotspot");

  return MEMORY[0x1EEE66BB8]();
}

id DMFServerLog()
{
  if (DMFServerLog_onceToken != -1)
  {
    DMFServerLog_cold_1();
  }

  v1 = DMFServerLog_log;

  return v1;
}

uint64_t __DMFServerLog_block_invoke()
{
  DMFServerLog_log = os_log_create("com.apple.dmd", "Server");

  return MEMORY[0x1EEE66BB8]();
}

id DMFOSUpdateLog()
{
  if (DMFOSUpdateLog_onceToken != -1)
  {
    DMFOSUpdateLog_cold_1();
  }

  v1 = DMFOSUpdateLog_log;

  return v1;
}

uint64_t __DMFOSUpdateLog_block_invoke()
{
  DMFOSUpdateLog_log = os_log_create("com.apple.dmd", "OSUpdate");

  return MEMORY[0x1EEE66BB8]();
}

id DMFAtomicFileWritingLog()
{
  if (DMFAtomicFileWritingLog_onceToken != -1)
  {
    DMFAtomicFileWritingLog_cold_1();
  }

  v1 = DMFAtomicFileWritingLog_log;

  return v1;
}

uint64_t __DMFAtomicFileWritingLog_block_invoke()
{
  DMFAtomicFileWritingLog_log = os_log_create("com.apple.dmd", "AtomicFileWriting");

  return MEMORY[0x1EEE66BB8]();
}

__CFString *DMFPolicyUnlocalizedDisplayName(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", a1];
  }

  else
  {
    v2 = off_1E8616C58[a1];
  }

  return v2;
}

void sub_1DC028C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DC02946C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DC029CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DC02A8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{
  v2 = *(a1 + 32);

  return [v2 count];
}

void OUTLINED_FUNCTION_8(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a3 = a1;
  *(a3 + 4) = a4;
  *(a3 + 12) = 2114;
  *(a3 + 14) = v4;
}

uint64_t OUTLINED_FUNCTION_9@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

id DMFObjectDescription(void *a1, __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (a2)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = a2;
    a2 = [[v11 alloc] initWithFormat:v12 arguments:&a9];
  }

  v13 = [(__CFString *)a2 length];
  v14 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = v16;
  v18 = @"; ";
  v19 = &stru_1F57A0020;
  if (!v13)
  {
    v18 = &stru_1F57A0020;
  }

  if (a2)
  {
    v19 = a2;
  }

  v20 = [v14 stringWithFormat:@"<%@: %p%@%@>", v16, v10, v18, v19];

  return v20;
}

id DMFObjectDescriptionWithProperties(void *a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v32 = v4;
  if (v4)
  {
    v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v32;
    v11 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v11)
    {
      v12 = *v45;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v44 + 1) + 8 * i);
          v38 = 0;
          v39 = &v38;
          v40 = 0x3032000000;
          v41 = __Block_byref_object_copy__2;
          v42 = __Block_byref_object_dispose__2;
          v43 = 0;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v3;
            v16 = [v15 managedObjectContext];
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __DMFObjectDescriptionWithProperties_block_invoke;
            v35[3] = &unk_1E8616D38;
            v37 = &v38;
            v35[4] = v14;
            v17 = v15;
            v36 = v17;
            [v16 performBlockAndWait:v35];
          }

          else
          {
            v18 = MEMORY[0x1E696AEC0];
            v17 = [v3 valueForKeyPath:v14];
            v19 = [v18 stringWithFormat:@"%@='%@'", v14, v17];
            v20 = v39[5];
            v39[5] = v19;
          }

          if (v39[5])
          {
            [v34 addObject:?];
          }

          _Block_object_dispose(&v38, 8);
        }

        v11 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v11);
    }

    v21 = [v34 componentsJoinedByString:{@", "}];
    v28 = DMFObjectDescription(v3, @"%@", v22, v23, v24, v25, v26, v27, v21);
  }

  else
  {
    v28 = DMFObjectDescription(v3, 0, v5, v6, v7, v8, v9, v10, v31);
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

void sub_1DC035BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __DMFObjectDescriptionWithProperties_block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v7 = [*(a1 + 40) valueForKeyPath:v3];
  v4 = [v2 stringWithFormat:@"%@='%@'", v3, v7];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id _DMFErrorDescriptionsWithCodeAndUserInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_DMFErrorDescriptionsWithCodeAndUserInfo_onceToken != -1)
  {
    _DMFErrorDescriptionsWithCodeAndUserInfo_cold_1();
  }

  v4 = 0;
  if (a1 > 1999)
  {
    if (a1 <= 2699)
    {
      if (a1 > 2299)
      {
        if (a1 <= 2500)
        {
          switch(a1)
          {
            case 2300:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"The device name cannot be set.";
              break;
            case 2400:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not fetch provisioning profiles.";
              break;
            case 2500:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"The wallpaper image is bad.";
              break;
            default:
              goto LABEL_317;
          }
        }

        else
        {
          switch(a1)
          {
            case 2600:
              v5 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v6 = @"The app “%@” is already installed.";
              goto LABEL_321;
            case 2601:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"The app is not managed.";
              goto LABEL_315;
            case 2602:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"The app is a system app.";
              goto LABEL_315;
            case 2603:
              v5 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v6 = @"The app “%@” is already queued to be installed.";
              goto LABEL_321;
            case 2604:
              v14 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v15 = @"Could not validate manifest.";
LABEL_312:
              v9 = [v14 cat_localizedStringsForKey:v15 value:&stru_1F57A0020 table:@"DMFErrors"];
              v10 = @"urlString";
              goto LABEL_325;
            case 2605:
              v5 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v6 = @"No license was found for app “%@”.";
              goto LABEL_321;
            case 2606:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not validate app identifier.";
              goto LABEL_315;
            case 2607:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"The user rejected the request.";
              goto LABEL_315;
            case 2608:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"An iTunes Store login is required.";
              goto LABEL_315;
            case 2609:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Too many apps are in the manifest.";
              goto LABEL_315;
            case 2610:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"The redemption code is invalid.";
              goto LABEL_315;
            case 2611:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Not waiting for redemption code.";
              goto LABEL_315;
            case 2612:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"The replacement media type is invalid.";
              goto LABEL_315;
            case 2613:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"The media download failed.";
              goto LABEL_315;
            case 2614:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"The media identifier could not be validated.";
              goto LABEL_315;
            case 2615:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not find volume purchase program assignment.";
              goto LABEL_315;
            case 2616:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"The install failed because the app is being modified.";
              goto LABEL_315;
            default:
              if (a1 != 2501)
              {
                goto LABEL_317;
              }

              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not set the wallpaper.";
              break;
          }
        }
      }

      else if (a1 <= 2003)
      {
        if (a1 > 2001)
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          if (a1 == 2002)
          {
            v8 = @"Cannot install profile.";
          }

          else
          {
            v8 = @"Invalid profile data.";
          }
        }

        else
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          if (a1 == 2000)
          {
            v8 = @"The profile must be installed non-interactively.";
          }

          else
          {
            v8 = @"The request cannot be performed while the device is in Setup Assistant.";
          }
        }
      }

      else
      {
        switch(a1)
        {
          case 2200:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"A download is in progress.";
            goto LABEL_315;
          case 2201:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"A download is complete.";
            goto LABEL_315;
          case 2202:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"A download failed.";
            goto LABEL_315;
          case 2203:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"There is insufficient network for a download.";
            goto LABEL_315;
          case 2204:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"There is insufficient space for a download.";
            goto LABEL_315;
          case 2205:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"There is insufficient power for a download.";
            goto LABEL_315;
          case 2206:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"The download requires a computer.";
            goto LABEL_315;
          case 2207:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"An installation is in progress.";
            goto LABEL_315;
          case 2208:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"An installation failed.";
            goto LABEL_315;
          case 2209:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"There is insufficient space for an installation.";
            goto LABEL_315;
          case 2210:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"There is insufficient power for an installation.";
            goto LABEL_315;
          case 2211:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"The installation requires a download.";
            goto LABEL_315;
          case 2212:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"The device passcode must be cleared.";
            goto LABEL_315;
          case 2213:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"No update available.";
            goto LABEL_315;
          case 2214:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"Scan failed.";
            goto LABEL_315;
          default:
            if (a1 == 2004)
            {
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Invalid file.";
            }

            else
            {
              if (a1 != 2100)
              {
                goto LABEL_317;
              }

              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"The device cannot be erased.";
            }

            break;
        }
      }

      goto LABEL_315;
    }

    if (a1 <= 3949)
    {
      if (a1 <= 3499)
      {
        if (a1 <= 2999)
        {
          if (a1 > 2899)
          {
            if (a1 == 2900)
            {
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Cannot log out user.";
            }

            else
            {
              if (a1 != 2901)
              {
                goto LABEL_317;
              }

              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"No user logged in.";
            }
          }

          else if (a1 == 2700)
          {
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"Could not apply redemption code.";
          }

          else
          {
            if (a1 != 2800)
            {
              goto LABEL_317;
            }

            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"Cannot install provisioning profile.";
          }
        }

        else if (a1 <= 3199)
        {
          if (a1 == 3000)
          {
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"Cannot trigger diagnostics.";
          }

          else
          {
            if (a1 != 3100)
            {
              goto LABEL_317;
            }

            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"Cannot validate applications.";
          }
        }

        else
        {
          switch(a1)
          {
            case 3200:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not play lost mode sound.";
              break;
            case 3300:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Unknown language.";
              break;
            case 3400:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Unknown locale.";
              break;
            default:
              goto LABEL_317;
          }
        }
      }

      else if (a1 > 3899)
      {
        if (a1 <= 3901)
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          if (a1 == 3900)
          {
            v8 = @"Could not fetch effective policy.";
          }

          else
          {
            v8 = @"Could not persist the effective policy.";
          }
        }

        else
        {
          switch(a1)
          {
            case 3902:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not fetch Emergency Mode.";
              break;
            case 3903:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not persist Emergency Mode.";
              break;
            case 3904:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not register policy changed notification.";
              break;
            default:
              goto LABEL_317;
          }
        }
      }

      else if (a1 <= 3600)
      {
        if (a1 == 3500)
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"Could not fetch profiles.";
        }

        else
        {
          if (a1 != 3600)
          {
            goto LABEL_317;
          }

          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"The activation lock bypass code has expired.";
        }
      }

      else
      {
        switch(a1)
        {
          case 3601:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"The activation lock bypass code is unavailable.";
            break;
          case 3700:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"The app update was canceled.";
            break;
          case 3701:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"The app update failed.";
            break;
          default:
            goto LABEL_317;
        }
      }

      goto LABEL_315;
    }

    if (a1 > 4199)
    {
      if (a1 > 4799)
      {
        if (a1 <= 4899)
        {
          if (a1 == 4800)
          {
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"Could not find target.";
          }

          else
          {
            if (a1 != 4801)
            {
              goto LABEL_317;
            }

            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"User is not logged in.";
          }
        }

        else
        {
          switch(a1)
          {
            case 4900:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Unknown transaction.";
              break;
            case 5000:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not set app removability.";
              break;
            case 5200:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not set app Tap To Pay Screen Lock.";
              break;
            default:
              goto LABEL_317;
          }
        }
      }

      else if (a1 <= 4399)
      {
        if (a1 == 4200)
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"Could not fetch security information.";
        }

        else
        {
          if (a1 != 4300)
          {
            goto LABEL_317;
          }

          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"Could not shut down device.";
        }
      }

      else
      {
        switch(a1)
        {
          case 4400:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"Could not restart device.";
            break;
          case 4700:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"Could not update app metadata.";
            break;
          case 4701:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"App bundle identifier is missing.";
            break;
          default:
            goto LABEL_317;
        }
      }

      goto LABEL_315;
    }

    if (a1 > 4003)
    {
      if (a1 <= 4005)
      {
        v11 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        if (a1 == 4004)
        {
          v12 = @"The configuration payload identifier “%@” is not valid.";
        }

        else
        {
          v12 = @"The configuration organization identifier “%@” is not unique.";
        }
      }

      else
      {
        if (a1 != 4006)
        {
          if (a1 == 4007)
          {
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"Could not load configuration database.";
          }

          else
          {
            if (a1 != 4100)
            {
              goto LABEL_317;
            }

            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"Could not fetch certificates.";
          }

          goto LABEL_315;
        }

        v11 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v12 = @"The limit for organizations of type “%@” has been reached.";
      }
    }

    else
    {
      if (a1 <= 4000)
      {
        if (a1 == 3950)
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"Effective policy not available";
        }

        else
        {
          if (a1 != 4000)
          {
            goto LABEL_317;
          }

          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"The configuration payload dictionary is invalid.";
        }

        goto LABEL_315;
      }

      if (a1 == 4001)
      {
        v11 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v12 = @"The payload identifier “%@” is not unique.";
      }

      else
      {
        if (a1 != 4002)
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"No configuration source is available.";
          goto LABEL_315;
        }

        v11 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v12 = @"The organization identifier “%@” is not valid.";
      }
    }

    goto LABEL_249;
  }

  if (a1 > 899)
  {
    if (a1 <= 1402)
    {
      if (a1 > 1199)
      {
        if (a1 > 1301)
        {
          if (a1 <= 1399)
          {
            if (a1 == 1302)
            {
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not get shared output context";
            }

            else
            {
              if (a1 != 1303)
              {
                goto LABEL_317;
              }

              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not set output devices";
            }
          }

          else if (a1 == 1400)
          {
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"The App Store is not allowed.";
          }

          else
          {
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            if (a1 == 1401)
            {
              v8 = @"An invitation URL is required.";
            }

            else
            {
              v8 = @"The invitation URL is invalid.";
            }
          }
        }

        else if (a1 <= 1201)
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          if (a1 == 1200)
          {
            v8 = @"A unique identifier is required.";
          }

          else
          {
            v8 = @"The provisioning profile is not managed.";
          }
        }

        else
        {
          switch(a1)
          {
            case 1202:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Cannot remove provisioning profile.";
              break;
            case 1300:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"A destination name or device identifier is required.";
              break;
            case 1301:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"The requested destination could not be found";
              break;
            default:
              goto LABEL_317;
          }
        }

        goto LABEL_315;
      }

      if (a1 > 1002)
      {
        if (a1 <= 1004)
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          if (a1 == 1003)
          {
            v8 = @"The app installation failed.";
          }

          else
          {
            v8 = @"An iTunes Store ID or manifest URL is required.";
          }
        }

        else
        {
          switch(a1)
          {
            case 1005:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not install app.";
              break;
            case 1006:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not redeem the code for the app.";
              break;
            case 1100:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Could not remove app.";
              break;
            default:
              goto LABEL_317;
          }
        }

        goto LABEL_315;
      }

      if (a1 <= 999)
      {
        if (a1 == 900)
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"Cannot create escrow keybag.";
        }

        else
        {
          if (a1 != 901)
          {
            goto LABEL_317;
          }

          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"Cannot copy escrow keybag data.";
        }

        goto LABEL_315;
      }

      if (a1 == 1000)
      {
        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v8 = @"The app installation was rejected.";
        goto LABEL_315;
      }

      if (a1 != 1001)
      {
        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v8 = @"The app installation was canceled.";
        goto LABEL_315;
      }

      v5 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
      v6 = @"A redemption code is needed for app “%@”.";
      goto LABEL_321;
    }

    if (a1 <= 1504)
    {
      if (a1 > 1499)
      {
        if (a1 <= 1501)
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          if (a1 == 1500)
          {
            v8 = @"An iTunes Store identifier is required.";
          }

          else
          {
            v8 = @"A persistent identifier is required.";
          }
        }

        else if (a1 == 1502)
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"A URL is required.";
        }

        else
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          if (a1 == 1503)
          {
            v8 = @"A file type is required.";
          }

          else
          {
            v8 = @"The file type is invalid.";
          }
        }
      }

      else if (a1 <= 1404)
      {
        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        if (a1 == 1403)
        {
          v8 = @"A program identifier is required.";
        }

        else
        {
          v8 = @"The program identifier is invalid.";
        }
      }

      else
      {
        switch(a1)
        {
          case 1405:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"The device cannot proceed.";
            break;
          case 1406:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"Could not invite user to VPP.";
            break;
          case 1407:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"The user is already being prompted.";
            break;
          default:
            goto LABEL_317;
        }
      }

      goto LABEL_315;
    }

    if (a1 <= 1800)
    {
      if (a1 <= 1649)
      {
        if (a1 == 1505)
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"Cannot look up book purchase history.";
        }

        else
        {
          if (a1 != 1600)
          {
            goto LABEL_317;
          }

          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"An iTunes Store identifier or persistent identifier is required.";
        }
      }

      else
      {
        switch(a1)
        {
          case 1650:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"Book migration must be complete.";
            break;
          case 1700:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"Cannot get list of users.";
            break;
          case 1800:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"A username is required.";
            break;
          default:
            goto LABEL_317;
        }
      }

      goto LABEL_315;
    }

    if (a1 <= 1803)
    {
      if (a1 == 1801)
      {
        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v8 = @"The specified user is logged in.";
      }

      else
      {
        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        if (a1 == 1802)
        {
          v8 = @"The specified user does not exist.";
        }

        else
        {
          v8 = @"The specified user has data to sync.";
        }
      }

      goto LABEL_315;
    }

    if (a1 == 1804)
    {
      v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
      v8 = @"Could not delete user.";
      goto LABEL_315;
    }

    if (a1 == 1900)
    {
      v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
      v8 = @"Cannot remove profile.";
      goto LABEL_315;
    }

    if (a1 != 1901)
    {
      goto LABEL_317;
    }

    v11 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
    v12 = @"The profile “%@” is not installed.";
LABEL_249:
    v9 = [v11 cat_localizedStringsForKey:v12 value:&stru_1F57A0020 table:@"DMFErrors"];
    v10 = @"identifier";
LABEL_325:
    v13 = [v3 objectForKeyedSubscript:v10];
    v4 = CATFormattedStringForKey();
    goto LABEL_326;
  }

  if (a1 > 199)
  {
    if (a1 > 399)
    {
      if (a1 > 602)
      {
        if (a1 <= 700)
        {
          if (a1 == 603)
          {
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"The device’s location cannot be requested at this time because audit information cannot be saved.";
          }

          else
          {
            if (a1 != 700)
            {
              goto LABEL_317;
            }

            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"The escrow secret cannot be copied.";
          }
        }

        else
        {
          switch(a1)
          {
            case 701:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"The device’s passcode cannot be cleared.";
              break;
            case 800:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"Authentication failed.";
              break;
            case 801:
              v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
              v8 = @"The request timed out.";
              break;
            default:
              goto LABEL_317;
          }
        }
      }

      else if (a1 <= 599)
      {
        if (a1 == 400)
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"The device cannot be put in lost mode.";
        }

        else
        {
          if (a1 != 500)
          {
            goto LABEL_317;
          }

          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"The device cannot be taken out of lost mode.";
        }
      }

      else if (a1 == 600)
      {
        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v8 = @"The device’s location cannot be determined.";
      }

      else
      {
        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        if (a1 == 601)
        {
          v8 = @"The device is not in lost mode.";
        }

        else
        {
          v8 = @"The device’s location cannot be requested at this time.";
        }
      }

      goto LABEL_315;
    }

    if (a1 > 203)
    {
      if (a1 > 299)
      {
        switch(a1)
        {
          case 300:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"The device cannot be locked.";
            break;
          case 301:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"A passcode must be set.";
            break;
          case 302:
            v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
            v8 = @"The device is in lost mode.";
            break;
          default:
            goto LABEL_317;
        }

        goto LABEL_315;
      }

      if (a1 != 204)
      {
        if (a1 != 205)
        {
          goto LABEL_317;
        }

        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v8 = @"Invalid response to cellular request.";
        goto LABEL_315;
      }

      v9 = [_DMFErrorDescriptionsWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"Could not send cellular request (CTError={%@ value:%@})." table:{&stru_1F57A0020, @"DMFErrors"}];
      v13 = [v3 objectForKeyedSubscript:@"CTErrorDomain"];
      v19 = [v3 objectForKeyedSubscript:@"CTErrorCode"];
      v4 = CATFormattedStringForKey();

LABEL_326:
      goto LABEL_316;
    }

    if (a1 > 201)
    {
      v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
      if (a1 == 202)
      {
        v8 = @"Cellular hardware not supported.";
      }

      else
      {
        v8 = @"Could not fetch cellular info.";
      }
    }

    else
    {
      v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
      if (a1 == 200)
      {
        v8 = @"Could not connect cellular.";
      }

      else
      {
        v8 = @"Could not refresh cellular plans.";
      }
    }

    goto LABEL_315;
  }

  if (a1 > 5)
  {
    switch(a1)
    {
      case 'e':
        v5 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v6 = @"The provided app “%@” could not be opened.";
        goto LABEL_321;
      case 'f':
        v14 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v15 = @"The provided URL “%@” could not be opened.";
        goto LABEL_312;
      case 'g':
        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v8 = @"The volume could not be set.";
        goto LABEL_315;
      case 'h':
        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v8 = @"A password is required to AirPlay to the requested route.";
        goto LABEL_315;
      case 'i':
        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v8 = @"The supplied password for the AirPlay route was incorrect.";
        goto LABEL_315;
      case 'j':
        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v8 = @"Canceling Single App Mode timed out.";
        goto LABEL_315;
      case 'k':
        v5 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v6 = @"Single App Mode could not be initiated for the provided bundle identifier “%@”.";
        goto LABEL_321;
      case 'l':
        v9 = [_DMFErrorDescriptionsWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"The shell command “%@” failed." value:&stru_1F57A0020 table:@"DMFErrors"];
        v10 = @"itemPath";
        goto LABEL_325;
      case 'm':
        v16 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v17 = @"The property value for “%@” is missing.";
        goto LABEL_324;
      case 'n':
        v16 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v17 = @"Unknown property “%@”.";
        goto LABEL_324;
      case 'o':
        v16 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v17 = @"Property “%@” was never retrieved.";
LABEL_324:
        v9 = [v16 cat_localizedStringsForKey:v17 value:&stru_1F57A0020 table:@"DMFErrors"];
        v10 = @"propertyKey";
        goto LABEL_325;
      case 'p':
        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v8 = @"The AirPlay route is busy.";
        goto LABEL_315;
      case 'q':
        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v8 = @"The device failed to request AirPlay mirroring.";
        goto LABEL_315;
      case 'r':
        v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
        v8 = @"The device failed to stop AirPlay mirroring.";
        goto LABEL_315;
      default:
        if (a1 == 6)
        {
          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"A temporary file could not be created.";
        }

        else
        {
          if (a1 != 7)
          {
            goto LABEL_317;
          }

          v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
          v8 = @"The operation is not supported on this OS variant.";
        }

        break;
    }

    goto LABEL_315;
  }

  if (a1 > 2)
  {
    if (a1 != 3)
    {
      v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
      if (a1 == 4)
      {
        v8 = @"The request is not permitted.";
      }

      else
      {
        v8 = @"The client is unauthorized to perform the request.";
      }

      goto LABEL_315;
    }

    v5 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
    v6 = @"The app “%@” is not installed.";
LABEL_321:
    v9 = [v5 cat_localizedStringsForKey:v6 value:&stru_1F57A0020 table:@"DMFErrors"];
    v10 = @"bundleIdentifier";
    goto LABEL_325;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        goto LABEL_317;
      }

      v9 = [_DMFErrorDescriptionsWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"Item “%@” is read-only." value:&stru_1F57A0020 table:@"DMFErrors"];
      v10 = @"itemName";
      goto LABEL_325;
    }

    v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
    v8 = @"A parameter was invalid.";
  }

  else
  {
    v7 = _DMFErrorDescriptionsWithCodeAndUserInfo_bundle;
    v8 = @"Unknown error.";
  }

LABEL_315:
  v9 = [v7 cat_localizedStringsForKey:v8 value:&stru_1F57A0020 table:@"DMFErrors"];
  v4 = CATFormattedStringForKey();
LABEL_316:

LABEL_317:

  return v4;
}