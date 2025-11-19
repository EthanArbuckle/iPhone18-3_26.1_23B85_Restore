@interface EMSMIMEUtilities
+ (BOOL)_isICloudAddress:(id)a3;
+ (unint64_t)_encryptionLevelForSender:(id)a3;
+ (unint64_t)_messageSecurityLevelViaOtherDevices;
+ (unint64_t)encryptionLevelForSender:(id)a3 forAdvertisement:(BOOL)a4 useGCM:(BOOL *)a5 encryptSubject:(BOOL *)a6;
@end

@implementation EMSMIMEUtilities

void ___ef_log_EMSMIMEUtilities_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EMSMIMEUtilities");
  v1 = _ef_log_EMSMIMEUtilities_log;
  _ef_log_EMSMIMEUtilities_log = v0;
}

+ (unint64_t)_messageSecurityLevelViaOtherDevices
{
  v49[1] = *MEMORY[0x1E69E9840];
  if (![EMInternalPreferences preferenceEnabled:26])
  {
    if (sComputedMessageSecurityLevel == 1)
    {
      v2 = sCurrentSecurityLevel;
      goto LABEL_16;
    }

    v36 = [MEMORY[0x1E6959A48] defaultStore];
    v49[0] = *MEMORY[0x1E69597F8];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
    v44 = 0;
    v4 = [v36 accountsWithAccountTypeIdentifiers:v3 error:&v44];
    v5 = v44;
    v35 = [v4 firstObject];

    if (v5)
    {
      v6 = _ef_log_EMSMIMEUtilities();
      v34 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v5;
        _os_log_impl(&dword_1C6655000, v6, OS_LOG_TYPE_DEFAULT, "Error in getting account: %@\nWill drop to most-compatible", buf, 0xCu);
      }

      v2 = 100;
      goto LABEL_15;
    }

    v34 = [MEMORY[0x1E698DC80] sharedInstance];
    v32 = [v34 altDSIDForAccount:v35];
    v31 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    [v31 setAppleIDWithAltDSID:v32 inUse:1 forService:1];
    v33 = objc_alloc_init(MEMORY[0x1E698DD68]);
    v7 = [v35 aa_altDSID];
    [v33 setAltDSID:v7];

    [v33 setIncludeUntrustedDevices:1];
    v48 = *MEMORY[0x1E698DC58];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
    [v33 setServices:v8];

    [v33 setOperatingSystems:&unk_1F461CED0];
    v9 = [MEMORY[0x1E699B868] promise];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __56__EMSMIMEUtilities__messageSecurityLevelViaOtherDevices__block_invoke;
    v42[3] = &unk_1E826C5B0;
    v10 = v9;
    v43 = v10;
    v29 = v10;
    [v31 fetchDeviceListWithContext:v33 completion:v42];
    v11 = [v10 future];
    v41 = 0;
    v30 = [v11 result:&v41];
    v5 = v41;

    if (v5)
    {
      v12 = _ef_log_EMSMIMEUtilities();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v5;
        _os_log_impl(&dword_1C6655000, v12, OS_LOG_TYPE_DEFAULT, "Error in getting devices: %@\nWill drop to most-compatible", buf, 0xCu);
      }

LABEL_12:
      v2 = 100;
LABEL_13:

      v13 = v30;
      goto LABEL_14;
    }

    v13 = v30;
    if (![v30 count])
    {
      v2 = 200;
LABEL_14:

LABEL_15:
      sCurrentSecurityLevel = v2;
      sComputedMessageSecurityLevel = 1;

      goto LABEL_16;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = v30;
    v16 = [v12 countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (!v16)
    {
      v2 = 200;
      goto LABEL_13;
    }

    v17 = *v38;
    v2 = 200;
LABEL_20:
    v18 = 0;
    while (1)
    {
      if (*v38 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v37 + 1) + 8 * v18);
      v20 = [v19 operatingSystemName];
      v21 = [v20 isEqualToString:@"macOS"];

      if (v21)
      {
        break;
      }

      v25 = [v19 operatingSystemName];
      v26 = [v25 isEqualToString:@"iOS"];

      if (v26)
      {
        v27 = [v19 operatingSystemVersion];
        [v27 floatValue];
        v24 = v28 < 17.0;

LABEL_27:
        if (v24)
        {
          goto LABEL_12;
        }
      }

      if (v16 == ++v18)
      {
        v16 = [v12 countByEnumeratingWithState:&v37 objects:v47 count:16];
        if (!v16)
        {
          goto LABEL_13;
        }

        goto LABEL_20;
      }
    }

    v22 = [v19 operatingSystemVersion];
    [v22 floatValue];
    v24 = v23 < 14.0;

    goto LABEL_27;
  }

  v2 = 200;
LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (BOOL)_isICloudAddress:(id)a3
{
  v3 = a3;
  v4 = [v3 lowercaseString];

  v5 = ([v4 hasSuffix:@"@icloud.com"] & 1) != 0 || (objc_msgSend(v4, "hasSuffix:", @"@mac.com") & 1) != 0 || objc_msgSend(v4, "hasSuffix:", @"@me.com");
  return v5;
}

+ (unint64_t)_encryptionLevelForSender:(id)a3
{
  v4 = a3;
  if ((_os_feature_enabled_impl() & 1) != 0 && [EMInternalPreferences preferenceEnabled:24])
  {
    if (v4 && [a1 _isICloudAddress:v4])
    {
      v5 = [a1 _messageSecurityLevelViaOtherDevices];
    }

    else
    {
      v5 = 200;
    }
  }

  else
  {
    v5 = 100;
  }

  return v5;
}

+ (unint64_t)encryptionLevelForSender:(id)a3 forAdvertisement:(BOOL)a4 useGCM:(BOOL *)a5 encryptSubject:(BOOL *)a6
{
  v8 = a4;
  v9 = [a1 _encryptionLevelForSender:a3];
  v10 = v9;
  if (a5)
  {
    if (v9 == 200)
    {
      v11 = 1;
    }

    else
    {
      if (v8)
      {
        v12 = 27;
      }

      else
      {
        v12 = 29;
      }

      v11 = [EMInternalPreferences preferenceEnabled:v12];
    }

    *a5 = v11;
  }

  if (a6)
  {
    if (v10 == 200)
    {
      v13 = 1;
    }

    else
    {
      if (v8)
      {
        v14 = 28;
      }

      else
      {
        v14 = 30;
      }

      v13 = [EMInternalPreferences preferenceEnabled:v14];
    }

    *a6 = v13;
  }

  return v10;
}

@end