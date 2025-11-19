@interface MDMReturnToServiceUtilities
+ (BOOL)validateReturnToServiceRequestWithMDMProfileData:(id)a3 wifiProfileData:(id)a4 revertToSnapshotName:(id)a5 bootstrapToken:(id)a6 error:(id *)a7;
+ (id)_eraseDeviceActivationLockIsOnError;
+ (id)_eraseDeviceContainsMDMPayloadError;
+ (id)_eraseDeviceInvalidMDMProfileErrorWithUnderlayingError:(id)a3;
+ (id)_eraseDeviceInvalidWiFiProfileErrorWithUnderlayingError:(id)a3;
+ (id)_eraseDeviceMissingBootstrapTokenError;
+ (id)_eraseDeviceMissingMDMProfileError;
+ (id)_eraseDeviceMissingSnapshotError;
+ (id)_eraseDeviceNotSupporttedError;
+ (id)_eraseDeviceNotSupporttedOnSharedIPadError;
+ (id)_eraseDeviceNotTeslaEnrolledError;
+ (id)_eraseDeviceProvisionallyEnrolledError;
+ (id)_triggerRRTSServeraRejectError;
+ (void)performRRTSCheckInAndValidationWithCompletionHandler:(id)a3;
@end

@implementation MDMReturnToServiceUtilities

+ (BOOL)validateReturnToServiceRequestWithMDMProfileData:(id)a3 wifiProfileData:(id)a4 revertToSnapshotName:(id)a5 bootstrapToken:(id)a6 error:(id *)a7
{
  v67 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v59 = a6;
  v14 = [MEMORY[0x277D24640] sharedConfiguration];
  v60 = [MEMORY[0x277D24648] sharedConfiguration];
  v61 = v14;
  v15 = [v14 enrollmentServerInfo];
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = v15;
  [MEMORY[0x277CB8F48] defaultStore];
  v17 = a7;
  v19 = v18 = v12;
  v20 = [v19 dmc_visibleRemoteManagementAccounts];
  v21 = [v20 count];

  v12 = v18;
  a7 = v17;

  if (!v21)
  {
LABEL_8:
    v28 = v60;
    v29 = [v60 personaID];

    if (v29)
    {
      v30 = *DMCLogObjects();
      v24 = v61;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v30, OS_LOG_TYPE_ERROR, "Device has enterprise persona.", buf, 2u);
      }

      v23 = v13;
      if (a7)
      {
        v31 = [a1 _eraseDeviceNotSupporttedError];
LABEL_13:
        v26 = v31;
        if (v31)
        {
          v32 = v31;
          v33 = a7;
          LOBYTE(a7) = 0;
          *v33 = v26;
        }

        else
        {
          LOBYTE(a7) = 0;
        }

        v36 = v59;
        goto LABEL_45;
      }

      goto LABEL_39;
    }

    v24 = v61;
    if (([v61 isSupervised] & 1) == 0 && +[MDMFindMyUtilities isActivationLockOn](MDMFindMyUtilities, "isActivationLockOn"))
    {
      v34 = *DMCLogObjects();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v34, OS_LOG_TYPE_ERROR, "Failed to trigger return to service since activation lock is on", buf, 2u);
      }

      v23 = v13;
      if (a7)
      {
        v31 = [a1 _eraseDeviceActivationLockIsOnError];
        goto LABEL_13;
      }

LABEL_39:
      v36 = v59;
      goto LABEL_46;
    }

    v35 = [MEMORY[0x277D24648] isRapidReturnToService];
    v23 = v13;
    v36 = v59;
    if (v59 && v35)
    {
      if (!a5)
      {
        v45 = *DMCLogObjects();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v45, OS_LOG_TYPE_ERROR, "Failed to trigger rapid return to service since snapshot name is nil", buf, 2u);
        }

        if (!a7)
        {
          goto LABEL_46;
        }

        v46 = [a1 _eraseDeviceMissingSnapshotError];
        goto LABEL_80;
      }

      v64 = 0;
      v37 = [MDMBootstrapTokenUtilities validateBootstrapToken:v59 error:&v64];
      v38 = v64;
      v26 = v38;
      if (!v37)
      {
        v47 = a7;
        v48 = *DMCLogObjects();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v66 = v26;
          _os_log_impl(&dword_2561F5000, v48, OS_LOG_TYPE_ERROR, "Bootstrap token is not valid with error: %{public}@", buf, 0xCu);
        }

        LOBYTE(a7) = 0;
        if (v47 && v26)
        {
          v49 = v26;
          LOBYTE(a7) = 0;
          *v47 = v26;
        }

        goto LABEL_45;
      }
    }

    if (v23)
    {
      v63 = 0;
      v39 = [MEMORY[0x277D26290] profileWithData:v23 outError:&v63];
      v26 = v63;
      if (v26 || [v39 containsPayloadOfClass:objc_opt_class()])
      {
        v40 = v12;
        v41 = *DMCLogObjects();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v66 = v26;
          _os_log_impl(&dword_2561F5000, v41, OS_LOG_TYPE_ERROR, "Invalid WiFi profile: %{public}@", buf, 0xCu);
        }

        if (!v26)
        {
          v26 = [a1 _eraseDeviceContainsMDMPayloadError];
        }

        v12 = v40;
        if (!a7)
        {
          goto LABEL_37;
        }

        v42 = [a1 _eraseDeviceInvalidWiFiProfileErrorWithUnderlayingError:v26];
        if (!v42)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v24 = v61;
    }

    if (v12)
    {
      v62 = 0;
      v39 = [MEMORY[0x277D26290] profileWithData:v12 outError:&v62];
      v26 = v62;
      if (!v26)
      {
        if ([v39 containsPayloadOfClass:objc_opt_class()])
        {
          LOBYTE(a7) = 1;
          v26 = v39;
          goto LABEL_38;
        }

        v26 = [a1 _eraseDeviceMissingMDMProfileError];
      }

      v55 = v12;
      v56 = *DMCLogObjects();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v66 = v26;
        _os_log_impl(&dword_2561F5000, v56, OS_LOG_TYPE_ERROR, "Invalid MDM profile: %{public}@", buf, 0xCu);
      }

      v12 = v55;
      if (!a7)
      {
LABEL_37:

        LOBYTE(a7) = 0;
LABEL_38:
        v24 = v61;
LABEL_45:

        goto LABEL_46;
      }

      v42 = [a1 _eraseDeviceInvalidMDMProfileErrorWithUnderlayingError:v26];
      if (!v42)
      {
LABEL_36:

        goto LABEL_37;
      }

LABEL_35:
      v42 = v42;
      *a7 = v42;
      goto LABEL_36;
    }

    if ([v24 isSupervised])
    {
      if ([v24 isTeslaEnrolled])
      {
        v50 = [v24 details];
        v51 = [v50 objectForKeyedSubscript:*MEMORY[0x277D03048]];

        if (!v51)
        {
          LOBYTE(a7) = 1;
          v28 = v60;
          goto LABEL_46;
        }

        v52 = *DMCLogObjects();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v52, OS_LOG_TYPE_ERROR, "MDM profile is required for cloud configuration with ConfigurationWebURL.", buf, 2u);
        }

        v28 = v60;
        goto LABEL_78;
      }

      v53 = *DMCLogObjects();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v54 = "MDM profile is required for non-ADE enrolled supervised device.";
        goto LABEL_77;
      }
    }

    else
    {
      v53 = *DMCLogObjects();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v54 = "MDM profile is required for unsupervised device.";
LABEL_77:
        _os_log_impl(&dword_2561F5000, v53, OS_LOG_TYPE_ERROR, v54, buf, 2u);
      }
    }

LABEL_78:
    if (!a7)
    {
      goto LABEL_46;
    }

    v46 = [a1 _eraseDeviceMissingMDMProfileError];
LABEL_80:
    v26 = v46;
    if (v46)
    {
      v57 = v46;
      v58 = a7;
      LOBYTE(a7) = 0;
      *v58 = v26;
    }

    else
    {
      LOBYTE(a7) = 0;
    }

    goto LABEL_45;
  }

  v22 = *DMCLogObjects();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v22, OS_LOG_TYPE_ERROR, "Device is enrolled with Apple Bussiness Essentials.", buf, 2u);
  }

  v23 = v13;
  v24 = v61;
  if (v17)
  {
    v25 = [a1 _eraseDeviceNotSupporttedError];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
      LOBYTE(a7) = 0;
      *v17 = v26;
    }

    else
    {
      LOBYTE(a7) = 0;
    }

    v36 = v59;
    v28 = v60;
    goto LABEL_45;
  }

  v36 = v59;
  v28 = v60;
LABEL_46:

  v43 = *MEMORY[0x277D85DE8];
  return a7;
}

+ (void)performRRTSCheckInAndValidationWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D03500] shouldSimulateRapidReturnToService])
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "MDMReturnToServiceUtilities: Simulating RRTS request response", buf, 2u);
    }

    v6 = [MEMORY[0x277D03500] simulatedWiFiProfile];
    v7 = [MEMORY[0x277D03500] bootstrapTokenOverrideWithDefaultValue:0];
    (*(v4 + 2))(v4, 1, 0, v6, v7, 0);
  }

  else
  {
    v8 = MEMORY[0x277D24630];
    v9 = *MEMORY[0x277D24910];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __84__MDMReturnToServiceUtilities_performRRTSCheckInAndValidationWithCompletionHandler___block_invoke;
    v10[3] = &unk_27982CC10;
    v11 = v4;
    v12 = a1;
    [v8 executeRequestForMessageType:v9 channelType:0 requestDict:0 completionHandler:v10];
    v6 = v11;
  }
}

void __84__MDMReturnToServiceUtilities_performRRTSCheckInAndValidationWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D245B0];
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D245B0]];
  v10 = [v9 integerValue];

  if (v10 == 200)
  {
    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x277D245A8]];
    if (v11)
    {
      v42 = 0;
      v12 = [MEMORY[0x277CCAC58] DMCSafePropertyListWithData:v11 options:0 format:0 error:&v42];
      v13 = v42;
      if (v13)
      {
        v14 = v13;
        v15 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v44 = v14;
          _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_ERROR, "Failed to create response dictionary: %{public}@", buf, 0xCu);
        }

        (*(*(a1 + 32) + 16))();
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v12 = 0;
    }

    v19 = [v12 objectForKeyedSubscript:@"ReturnToService"];
    v41 = 0;
    v20 = [(RMModelPayloadBase *)MDMRequestEraseDeviceCommand_ReturnToService load:v19 serializationType:0 error:&v41];
    v14 = v41;

    if (v14)
    {
      v21 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v44 = v14;
        _os_log_impl(&dword_2561F5000, v21, OS_LOG_TYPE_ERROR, "Failed to de-serialise the response of RRTS CheckIn command: %{public}@", buf, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v22 = [v20 commandEnabled];
      v23 = [v22 BOOLValue];

      if (v23)
      {
        v38 = *(a1 + 40);
        v24 = [v20 commandMDMProfileData];
        v25 = [v20 commandWiFiProfileData];
        v37 = [v20 commandBootstrapToken];
        v26 = *MEMORY[0x277D035E0];
        if (!v37)
        {
          v26 = 0;
        }

        v27 = [v20 commandBootstrapToken];
        v40 = v7;
        LODWORD(v36) = [v38 validateReturnToServiceRequestWithMDMProfileData:v24 wifiProfileData:v25 revertToSnapshotName:v36 bootstrapToken:v27 error:&v40];
        v39 = v40;

        v28 = *(a1 + 32);
        if (v36)
        {
          v29 = [v20 commandMDMProfileData];
          v30 = [v20 commandWiFiProfileData];
          v31 = [v20 commandBootstrapToken];
          (*(v28 + 16))(v28, 1, v29, v30, v31, 0);

          v7 = v39;
        }

        else
        {
          v34 = *(v28 + 16);
          v7 = v39;
          v34(*(a1 + 32), 0, 0, 0, 0, v39);
        }
      }

      else
      {
        v32 = *(a1 + 32);
        v33 = [*(a1 + 40) _triggerRRTSServeraRejectError];
        (*(v32 + 16))(v32, 0, 0, 0, 0, v33);
      }
    }

    goto LABEL_23;
  }

  v16 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = v16;
    v18 = [v6 objectForKeyedSubscript:v8];
    *buf = 134218242;
    v44 = [v18 integerValue];
    v45 = 2114;
    v46 = v7;
    _os_log_impl(&dword_2561F5000, v17, OS_LOG_TYPE_ERROR, "MDMReturnToServiceUtilities: ReturnToService request failed with Non 200 response from the server. Response code: %ld Error: %{public}@", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_24:

  v35 = *MEMORY[0x277D85DE8];
}

+ (id)_eraseDeviceActivationLockIsOnError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12089 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_eraseDeviceInvalidWiFiProfileErrorWithUnderlayingError:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = a3;
  v6 = [@"MDM_ERROR_COULD_NOT_RETURN_TO_SERVICE_INVAID_WIFI_PROFILE" DMCAppendGreenteaSuffix];
  v7 = DMCUnformattedErrorArray();
  v8 = [v3 DMCErrorWithDomain:v4 code:12089 descriptionArray:v7 underlyingError:v5 errorType:{*MEMORY[0x277D032F8], 0}];

  return v8;
}

+ (id)_eraseDeviceInvalidMDMProfileErrorWithUnderlayingError:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = a3;
  v6 = DMCErrorArray();
  v7 = [v3 DMCErrorWithDomain:v4 code:12089 descriptionArray:v6 underlyingError:v5 errorType:{*MEMORY[0x277D032F8], 0}];

  return v7;
}

+ (id)_eraseDeviceContainsMDMPayloadError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12089 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_eraseDeviceMissingMDMProfileError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12089 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_eraseDeviceProvisionallyEnrolledError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12089 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_eraseDeviceNotSupporttedError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12089 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_eraseDeviceNotSupporttedOnSharedIPadError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12089 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_eraseDeviceNotTeslaEnrolledError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12089 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_eraseDeviceMissingSnapshotError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12089 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_eraseDeviceMissingBootstrapTokenError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12089 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_triggerRRTSServeraRejectError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12129 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

@end