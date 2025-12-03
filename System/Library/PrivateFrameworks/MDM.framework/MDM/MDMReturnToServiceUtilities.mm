@interface MDMReturnToServiceUtilities
+ (BOOL)validateReturnToServiceRequestWithMDMProfileData:(id)data wifiProfileData:(id)profileData revertToSnapshotName:(id)name bootstrapToken:(id)token error:(id *)error;
+ (id)_eraseDeviceActivationLockIsOnError;
+ (id)_eraseDeviceContainsMDMPayloadError;
+ (id)_eraseDeviceInvalidMDMProfileErrorWithUnderlayingError:(id)error;
+ (id)_eraseDeviceInvalidWiFiProfileErrorWithUnderlayingError:(id)error;
+ (id)_eraseDeviceMissingBootstrapTokenError;
+ (id)_eraseDeviceMissingMDMProfileError;
+ (id)_eraseDeviceMissingSnapshotError;
+ (id)_eraseDeviceNotSupporttedError;
+ (id)_eraseDeviceNotSupporttedOnSharedIPadError;
+ (id)_eraseDeviceNotTeslaEnrolledError;
+ (id)_eraseDeviceProvisionallyEnrolledError;
+ (id)_triggerRRTSServeraRejectError;
+ (void)performRRTSCheckInAndValidationWithCompletionHandler:(id)handler;
@end

@implementation MDMReturnToServiceUtilities

+ (BOOL)validateReturnToServiceRequestWithMDMProfileData:(id)data wifiProfileData:(id)profileData revertToSnapshotName:(id)name bootstrapToken:(id)token error:(id *)error
{
  v67 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  profileDataCopy = profileData;
  tokenCopy = token;
  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
  v61 = mEMORY[0x277D24640];
  enrollmentServerInfo = [mEMORY[0x277D24640] enrollmentServerInfo];
  if (!enrollmentServerInfo)
  {
    goto LABEL_8;
  }

  v16 = enrollmentServerInfo;
  [MEMORY[0x277CB8F48] defaultStore];
  errorCopy = error;
  v19 = v18 = dataCopy;
  dmc_visibleRemoteManagementAccounts = [v19 dmc_visibleRemoteManagementAccounts];
  v21 = [dmc_visibleRemoteManagementAccounts count];

  dataCopy = v18;
  error = errorCopy;

  if (!v21)
  {
LABEL_8:
    v28 = mEMORY[0x277D24648];
    personaID = [mEMORY[0x277D24648] personaID];

    if (personaID)
    {
      v30 = *DMCLogObjects();
      v24 = v61;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v30, OS_LOG_TYPE_ERROR, "Device has enterprise persona.", buf, 2u);
      }

      v23 = profileDataCopy;
      if (error)
      {
        _eraseDeviceNotSupporttedError = [self _eraseDeviceNotSupporttedError];
LABEL_13:
        _eraseDeviceContainsMDMPayloadError = _eraseDeviceNotSupporttedError;
        if (_eraseDeviceNotSupporttedError)
        {
          v32 = _eraseDeviceNotSupporttedError;
          errorCopy2 = error;
          LOBYTE(error) = 0;
          *errorCopy2 = _eraseDeviceContainsMDMPayloadError;
        }

        else
        {
          LOBYTE(error) = 0;
        }

        v36 = tokenCopy;
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

      v23 = profileDataCopy;
      if (error)
      {
        _eraseDeviceNotSupporttedError = [self _eraseDeviceActivationLockIsOnError];
        goto LABEL_13;
      }

LABEL_39:
      v36 = tokenCopy;
      goto LABEL_46;
    }

    isRapidReturnToService = [MEMORY[0x277D24648] isRapidReturnToService];
    v23 = profileDataCopy;
    v36 = tokenCopy;
    if (tokenCopy && isRapidReturnToService)
    {
      if (!name)
      {
        v45 = *DMCLogObjects();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v45, OS_LOG_TYPE_ERROR, "Failed to trigger rapid return to service since snapshot name is nil", buf, 2u);
        }

        if (!error)
        {
          goto LABEL_46;
        }

        _eraseDeviceMissingSnapshotError = [self _eraseDeviceMissingSnapshotError];
        goto LABEL_80;
      }

      v64 = 0;
      v37 = [MDMBootstrapTokenUtilities validateBootstrapToken:tokenCopy error:&v64];
      v38 = v64;
      _eraseDeviceContainsMDMPayloadError = v38;
      if (!v37)
      {
        errorCopy3 = error;
        v48 = *DMCLogObjects();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v66 = _eraseDeviceContainsMDMPayloadError;
          _os_log_impl(&dword_2561F5000, v48, OS_LOG_TYPE_ERROR, "Bootstrap token is not valid with error: %{public}@", buf, 0xCu);
        }

        LOBYTE(error) = 0;
        if (errorCopy3 && _eraseDeviceContainsMDMPayloadError)
        {
          v49 = _eraseDeviceContainsMDMPayloadError;
          LOBYTE(error) = 0;
          *errorCopy3 = _eraseDeviceContainsMDMPayloadError;
        }

        goto LABEL_45;
      }
    }

    if (v23)
    {
      v63 = 0;
      v39 = [MEMORY[0x277D26290] profileWithData:v23 outError:&v63];
      _eraseDeviceContainsMDMPayloadError = v63;
      if (_eraseDeviceContainsMDMPayloadError || [v39 containsPayloadOfClass:objc_opt_class()])
      {
        v40 = dataCopy;
        v41 = *DMCLogObjects();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v66 = _eraseDeviceContainsMDMPayloadError;
          _os_log_impl(&dword_2561F5000, v41, OS_LOG_TYPE_ERROR, "Invalid WiFi profile: %{public}@", buf, 0xCu);
        }

        if (!_eraseDeviceContainsMDMPayloadError)
        {
          _eraseDeviceContainsMDMPayloadError = [self _eraseDeviceContainsMDMPayloadError];
        }

        dataCopy = v40;
        if (!error)
        {
          goto LABEL_37;
        }

        v42 = [self _eraseDeviceInvalidWiFiProfileErrorWithUnderlayingError:_eraseDeviceContainsMDMPayloadError];
        if (!v42)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v24 = v61;
    }

    if (dataCopy)
    {
      v62 = 0;
      v39 = [MEMORY[0x277D26290] profileWithData:dataCopy outError:&v62];
      _eraseDeviceContainsMDMPayloadError = v62;
      if (!_eraseDeviceContainsMDMPayloadError)
      {
        if ([v39 containsPayloadOfClass:objc_opt_class()])
        {
          LOBYTE(error) = 1;
          _eraseDeviceContainsMDMPayloadError = v39;
          goto LABEL_38;
        }

        _eraseDeviceContainsMDMPayloadError = [self _eraseDeviceMissingMDMProfileError];
      }

      v55 = dataCopy;
      v56 = *DMCLogObjects();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v66 = _eraseDeviceContainsMDMPayloadError;
        _os_log_impl(&dword_2561F5000, v56, OS_LOG_TYPE_ERROR, "Invalid MDM profile: %{public}@", buf, 0xCu);
      }

      dataCopy = v55;
      if (!error)
      {
LABEL_37:

        LOBYTE(error) = 0;
LABEL_38:
        v24 = v61;
LABEL_45:

        goto LABEL_46;
      }

      v42 = [self _eraseDeviceInvalidMDMProfileErrorWithUnderlayingError:_eraseDeviceContainsMDMPayloadError];
      if (!v42)
      {
LABEL_36:

        goto LABEL_37;
      }

LABEL_35:
      v42 = v42;
      *error = v42;
      goto LABEL_36;
    }

    if ([v24 isSupervised])
    {
      if ([v24 isTeslaEnrolled])
      {
        details = [v24 details];
        v51 = [details objectForKeyedSubscript:*MEMORY[0x277D03048]];

        if (!v51)
        {
          LOBYTE(error) = 1;
          v28 = mEMORY[0x277D24648];
          goto LABEL_46;
        }

        v52 = *DMCLogObjects();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v52, OS_LOG_TYPE_ERROR, "MDM profile is required for cloud configuration with ConfigurationWebURL.", buf, 2u);
        }

        v28 = mEMORY[0x277D24648];
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
    if (!error)
    {
      goto LABEL_46;
    }

    _eraseDeviceMissingSnapshotError = [self _eraseDeviceMissingMDMProfileError];
LABEL_80:
    _eraseDeviceContainsMDMPayloadError = _eraseDeviceMissingSnapshotError;
    if (_eraseDeviceMissingSnapshotError)
    {
      v57 = _eraseDeviceMissingSnapshotError;
      errorCopy4 = error;
      LOBYTE(error) = 0;
      *errorCopy4 = _eraseDeviceContainsMDMPayloadError;
    }

    else
    {
      LOBYTE(error) = 0;
    }

    goto LABEL_45;
  }

  v22 = *DMCLogObjects();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v22, OS_LOG_TYPE_ERROR, "Device is enrolled with Apple Bussiness Essentials.", buf, 2u);
  }

  v23 = profileDataCopy;
  v24 = v61;
  if (errorCopy)
  {
    _eraseDeviceNotSupporttedError2 = [self _eraseDeviceNotSupporttedError];
    _eraseDeviceContainsMDMPayloadError = _eraseDeviceNotSupporttedError2;
    if (_eraseDeviceNotSupporttedError2)
    {
      v27 = _eraseDeviceNotSupporttedError2;
      LOBYTE(error) = 0;
      *errorCopy = _eraseDeviceContainsMDMPayloadError;
    }

    else
    {
      LOBYTE(error) = 0;
    }

    v36 = tokenCopy;
    v28 = mEMORY[0x277D24648];
    goto LABEL_45;
  }

  v36 = tokenCopy;
  v28 = mEMORY[0x277D24648];
LABEL_46:

  v43 = *MEMORY[0x277D85DE8];
  return error;
}

+ (void)performRRTSCheckInAndValidationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([MEMORY[0x277D03500] shouldSimulateRapidReturnToService])
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "MDMReturnToServiceUtilities: Simulating RRTS request response", buf, 2u);
    }

    simulatedWiFiProfile = [MEMORY[0x277D03500] simulatedWiFiProfile];
    v7 = [MEMORY[0x277D03500] bootstrapTokenOverrideWithDefaultValue:0];
    (*(handlerCopy + 2))(handlerCopy, 1, 0, simulatedWiFiProfile, v7, 0);
  }

  else
  {
    v8 = MEMORY[0x277D24630];
    v9 = *MEMORY[0x277D24910];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __84__MDMReturnToServiceUtilities_performRRTSCheckInAndValidationWithCompletionHandler___block_invoke;
    v10[3] = &unk_27982CC10;
    v11 = handlerCopy;
    selfCopy = self;
    [v8 executeRequestForMessageType:v9 channelType:0 requestDict:0 completionHandler:v10];
    simulatedWiFiProfile = v11;
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

+ (id)_eraseDeviceInvalidWiFiProfileErrorWithUnderlayingError:(id)error
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  errorCopy = error;
  dMCAppendGreenteaSuffix = [@"MDM_ERROR_COULD_NOT_RETURN_TO_SERVICE_INVAID_WIFI_PROFILE" DMCAppendGreenteaSuffix];
  v7 = DMCUnformattedErrorArray();
  v8 = [v3 DMCErrorWithDomain:v4 code:12089 descriptionArray:v7 underlyingError:errorCopy errorType:{*MEMORY[0x277D032F8], 0}];

  return v8;
}

+ (id)_eraseDeviceInvalidMDMProfileErrorWithUnderlayingError:(id)error
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  errorCopy = error;
  v6 = DMCErrorArray();
  v7 = [v3 DMCErrorWithDomain:v4 code:12089 descriptionArray:v6 underlyingError:errorCopy errorType:{*MEMORY[0x277D032F8], 0}];

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