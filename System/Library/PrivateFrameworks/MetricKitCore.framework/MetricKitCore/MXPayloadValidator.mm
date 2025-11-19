@interface MXPayloadValidator
- (BOOL)_validateHangTracerData:(id)a3;
- (BOOL)_validatePayload:(id)a3;
- (BOOL)_validatePowerlogData:(id)a3;
- (BOOL)_validateReportCrashData:(id)a3;
- (BOOL)_validateSpaceAttributionData:(id)a3;
- (BOOL)_validateSpinTracerData:(id)a3;
- (BOOL)validatePayload:(id)a3;
- (MXPayloadValidator)initWithLogHandle:(id)a3;
- (void)_sanitizeDeviceMetadataForDiagnostic:(id)a3;
@end

@implementation MXPayloadValidator

- (MXPayloadValidator)initWithLogHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MXPayloadValidator;
  v6 = [(MXPayloadValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logHandle, a3);
  }

  return v7;
}

- (BOOL)validatePayload:(id)a3
{
  v4 = a3;
  v5 = [(MXPayloadValidator *)self _validatePayload:v4];
  if (!v5)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [(MXPayloadValidator *)v4 validatePayload:?];
    }
  }

  return v5;
}

- (BOOL)_validatePayload:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 datestamp];

    if (v6)
    {
      v7 = [v5 sourceID];
      v8 = [v5 metrics];
      if (!v8)
      {
        logHandle = self->_logHandle;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          [(MXPayloadValidator *)v5 _validatePayload:?];
        }

        v9 = 0;
        goto LABEL_24;
      }

      v9 = 0;
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v10 = [(MXPayloadValidator *)self _validatePowerlogData:v8];
          goto LABEL_23;
        }

        if (v7 == 3)
        {
          v10 = [(MXPayloadValidator *)self _validateHangTracerData:v8];
          goto LABEL_23;
        }
      }

      else
      {
        switch(v7)
        {
          case 4:
            v10 = [(MXPayloadValidator *)self _validateSpinTracerData:v8];
            goto LABEL_23;
          case 5:
            v10 = [(MXPayloadValidator *)self _validateReportCrashData:v8];
            goto LABEL_23;
          case 6:
            v10 = [(MXPayloadValidator *)self _validateSpaceAttributionData:v8];
LABEL_23:
            v9 = v10;
            break;
        }
      }

LABEL_24:

      goto LABEL_25;
    }

    v11 = self->_logHandle;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(MXPayloadValidator *)v5 _validatePayload:v11];
    }
  }

  else if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXPayloadValidator _validatePayload:];
  }

  v9 = 0;
LABEL_25:

  return v9;
}

- (BOOL)_validatePowerlogData:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v4 objectForKey:{*(*(&v13 + 1) + 8 * i), v13}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
          {
            [MXPayloadValidator _validatePowerlogData:];
          }

          v10 = 0;
          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_15:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_validateHangTracerData:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v4 objectForKey:{*(*(&v16 + 1) + 8 * i), v16}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
          {
            [MXPayloadValidator _validateHangTracerData:];
          }

          v13 = 0;
          goto LABEL_15;
        }

        v10 = v9;
        v11 = [v10 hangDiagnostic];
        [(MXPayloadValidator *)self _sanitizeDeviceMetadataForDiagnostic:v11];

        v12 = [v10 appLaunchDiagnostic];

        [(MXPayloadValidator *)self _sanitizeDeviceMetadataForDiagnostic:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v13 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_validateSpinTracerData:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v4 objectForKey:{*(*(&v16 + 1) + 8 * i), v16}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
          {
            [MXPayloadValidator _validateSpinTracerData:];
          }

          v13 = 0;
          goto LABEL_15;
        }

        v10 = v9;
        v11 = [v10 cpuExceptionDiagnostic];
        [(MXPayloadValidator *)self _sanitizeDeviceMetadataForDiagnostic:v11];

        v12 = [v10 diskWriteExceptionDiagnostic];

        [(MXPayloadValidator *)self _sanitizeDeviceMetadataForDiagnostic:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v13 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_validateReportCrashData:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v4 objectForKey:{*(*(&v14 + 1) + 8 * i), v14}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
          {
            [MXPayloadValidator _validateReportCrashData:];
          }

          v11 = 0;
          goto LABEL_15;
        }

        v10 = [v9 crashDiagnostic];
        [(MXPayloadValidator *)self _sanitizeDeviceMetadataForDiagnostic:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v11 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_15:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_validateSpaceAttributionData:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v4 objectForKey:{*(*(&v13 + 1) + 8 * i), v13}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
          {
            [MXPayloadValidator _validateSpaceAttributionData:];
          }

          v10 = 0;
          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_15:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_sanitizeDeviceMetadataForDiagnostic:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = objc_alloc_init(MXBundleUtil);
  v6 = [v4 metaData];
  v7 = [v6 bundleIdentifier];

  if ([(MXBundleUtil *)v5 isAppExtensionFromBundleID:v7])
  {
    v8 = [(MXBundleUtil *)v5 mainAppBundleIDforExtension:v7];

    v7 = v8;
  }

  v28 = 0;
  v9 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v7 allowPlaceholder:0 error:&v28];
  v10 = v28;
  v26 = v7;
  v27 = v5;
  v25 = v10;
  if (v10)
  {
    v11 = v10;
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [(MXPayloadValidator *)v7 _sanitizeDeviceMetadataForDiagnostic:v11, logHandle];
    }

    v24 = 0;
  }

  else
  {
    if (!v9)
    {
      v24 = 0;
      goto LABEL_11;
    }

    v24 = [v9 isBeta];
  }

LABEL_11:
  v13 = objc_alloc(MEMORY[0x277CD79F8]);
  v14 = [MEMORY[0x277D28708] regionFormat];
  v15 = [MEMORY[0x277D28708] osVersion];
  v16 = [MEMORY[0x277D28708] modelIdentifier];
  v17 = [v4 metaData];
  v18 = [v17 applicationBuildVersion];
  v19 = [MEMORY[0x277D28708] platformArchitecture];
  v20 = [v4 metaData];
  v21 = [v20 bundleIdentifier];
  BYTE4(v23) = v24;
  LODWORD(v23) = [v4 pid];
  v22 = [v13 initWithRegionFormat:v14 osVersion:v15 deviceType:v16 appBuildVersion:v18 platformArchitecture:v19 bundleID:v21 pid:v23 isTestFlightApp:?];

  if (v22)
  {
    [v4 setMetaData:v22];
  }

LABEL_14:
}

- (void)validatePayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_258D6F000, a2, OS_LOG_TYPE_ERROR, "Invalid payload: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_validatePayload:(void *)a1 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 bundleID];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_258D6F000, v3, OS_LOG_TYPE_ERROR, "Invalid payload: %@ due to payload metrics of client: %@ is nil", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_validatePayload:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_258D6F000, a2, OS_LOG_TYPE_ERROR, "Invalid payload: %@ due to payload datestamp is nil", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_sanitizeDeviceMetadataForDiagnostic:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_258D6F000, log, OS_LOG_TYPE_ERROR, "There was an error querying the LS database for bundle id %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end