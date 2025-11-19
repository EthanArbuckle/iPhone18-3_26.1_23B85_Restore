void sub_243BE90F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243BE9328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243BE9AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243BE9CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

id MessagesSettingsLocalizedString(void *a1)
{
  v1 = a1;
  v2 = CommunicationsSetupUIBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"Messages"];

  return v3;
}

void _CNFRegLog(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (DLCShouldLogLevel())
  {
    DLCLogWithLevelV();
  }
}

void CNFRegLogBacktraceToDepth(uint64_t a1, size_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (DLCShouldLogLevel())
  {
    v4 = CNFCopyBacktraceToDepth(a1);
    v14[1] = v14;
    MEMORY[0x28223BE20]();
    v5 = v14 - ((a2 + 16) & 0xFFFFFFFFFFFFFFF0);
    memset(v5, 32, a2);
    v5[a2] = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v7)
    {
      v9 = *v17;
      *&v8 = 136315394;
      v15 = v8;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            v21 = v5;
            v22 = 2112;
            v23 = v11;
            _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "%s%@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            IMLogString();
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void CNFRegLogBacktraceWithMessage(void *a1)
{
  v1 = a1;
  if (DLCShouldLogLevel())
  {
    DLCLogWithLevelV();
    CNFRegLogBacktraceToDepth(128, 4uLL);
  }
}

void CNFRegLogOutdent()
{
  if (sLogIndent)
  {
    --sLogIndent;
  }
}

id _CNFRegLogCopySpace()
{
  if (sLogIndent)
  {
    v0 = objc_alloc(MEMORY[0x277CCAB68]);
    v1 = [v0 initWithCapacity:2 * sLogIndent];
    if (sLogIndent)
    {
      v2 = 0;
      do
      {
        [v1 appendString:@"  "];
        ++v2;
      }

      while (v2 < sLogIndent);
    }

    [v1 appendString:@"=> "];
  }

  else
  {
    v1 = objc_alloc_init(MEMORY[0x277CCACA8]);
  }

  return v1;
}

BOOL CNFRegCurrentStringTableMatchesType(uint64_t a1)
{
  if (!a1)
  {
    v1 = sStringTableName;
    v2 = @"CNFRegistration";
    return v1 == v2;
  }

  if (a1 == 1)
  {
    v1 = sStringTableName;
    v2 = @"MadridRegistration";
    return v1 == v2;
  }

  return 0;
}

uint64_t CNFRegSetStringTableForServiceType(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = @"CNFRegistration";
  v2 = sStringTableName;
  if (a1 == 1)
  {
    v1 = @"MadridRegistration";
  }

  sStringTableName = v1;

  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = sStringTableName;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Setting string table name to: %@", buf, 0xCu);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = IMShouldLog();
    if (result)
    {
      result = IMLogString();
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *CNFRegStringTableNameForServiceType(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"MadridRegistration";
  }

  else
  {
    return @"CNFRegistration";
  }
}

id CNFRegStringTableName()
{
  v0 = sStringTableName;
  if (!sStringTableName)
  {
    sStringTableName = @"CNFRegistration";

    v0 = sStringTableName;
  }

  return v0;
}

id CNFRegLoadSpecifiers(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = objc_alloc(MEMORY[0x277CBEAC0]);
  v33 = v11;
  v15 = [v10 pathForResource:v11 ofType:@"plist"];
  v16 = [v14 initWithContentsOfFile:v15];

  v17 = CNFRegStringTableName();
  v40 = 0;
  v31 = v13;
  v34 = v10;
  v35 = v9;
  v32 = v12;
  v18 = SpecifiersFromPlist();
  v30 = v40;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v36 objects:v41 count:{16, &v40}];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    v23 = *MEMORY[0x277D3FFA0];
    v24 = *MEMORY[0x277D3FF48];
    v25 = MEMORY[0x277D3FC90];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v27 = *(*(&v36 + 1) + 8 * i);
        if (!*&v27[*v25])
        {
          [*(*(&v36 + 1) + 8 * i) setProperty:@"CNFRegTableHeaderLabel" forKey:v23];
          [v27 setProperty:@"CNFRegTableFooterLabel" forKey:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v21);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

id CNFRegLoadSpecifiersFromPlist(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [v7 specifier];
  v9 = [v7 bundle];
  v10 = CNFRegLoadSpecifiers(v8, v9, v6, v5, v7);

  [v7 setSpecifierID:0];
  [v7 setTitle:0];

  return v10;
}

__CFString *CNFRegNonLocStringForRegistrationFailure(unint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1 >= 0x13)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = a1;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Unexpected IMAccountRegistrationFailureReason: %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected failure reason: %ld", a1];
  }

  else
  {
    v2 = off_278DE7F50[a1];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

__CFString *CNFRegStringForRegistrationFailure(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CNFShouldShowTechnicalFailureUI();
  switch(a1)
  {
    case 0:
      goto LABEL_41;
    case 1:
    case 2:
    case 3:
      if ([v3 length])
      {
        v6 = MEMORY[0x277CCACA8];
        v7 = CommunicationsSetupUIBundle();
        v8 = CNFRegStringTableName();
        v9 = [v7 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_INVALID_CREDENTIALS_FOR_%@" value:&stru_2856D3978 table:v8];
        v5 = [v6 stringWithFormat:v9, v3];
      }

      else
      {
        v7 = CommunicationsSetupUIBundle();
        v8 = CNFRegStringTableName();
        v10 = [v7 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_BLANK_USERNAME" value:&stru_2856D3978 table:v8];
LABEL_39:
        v5 = v10;
      }

      if (!v5)
      {
LABEL_41:
        v14 = CommunicationsSetupUIBundle();
        v15 = CNFRegStringTableName();
        v5 = [v14 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_GENERIC" value:&stru_2856D3978 table:v15];
      }

      break;
    case 4:
      v7 = CommunicationsSetupUIBundle();
      v8 = CNFRegStringTableName();
      v10 = [v7 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_GENERIC" value:&stru_2856D3978 table:v8];
      goto LABEL_39;
    case 5:
      if (!v4)
      {
        goto LABEL_41;
      }

      v5 = @"INTERNAL: Bad Device ID";
      break;
    case 6:
      if (!v4)
      {
        goto LABEL_41;
      }

      v5 = @"INTERNAL: Bad Push Token";
      break;
    case 7:
      if (!v4)
      {
        goto LABEL_41;
      }

      v5 = @"INTERNAL: Server denied";
      break;
    case 8:
      if (!v4)
      {
        goto LABEL_41;
      }

      v5 = @"INTERNAL: Too many registration attempts";
      break;
    case 9:
      if (!v4)
      {
        goto LABEL_41;
      }

      v5 = @"INTERNAL: Account updated needed";
      break;
    case 10:
      v11 = _os_feature_enabled_impl();
      v7 = CommunicationsSetupUIBundle();
      v8 = CNFRegStringTableName();
      if (v11)
      {
        [v7 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_ACCOUNT_NOT_AUTHORIZED_APPLEACCOUNT" value:&stru_2856D3978 table:v8];
      }

      else
      {
        [v7 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_ACCOUNT_NOT_AUTHORIZED" value:&stru_2856D3978 table:v8];
      }

      goto LABEL_13;
    case 11:
      v12 = _os_feature_enabled_impl();
      v7 = CommunicationsSetupUIBundle();
      v8 = CNFRegStringTableName();
      if (v12)
      {
        [v7 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_NEW_PASSWORD_NEEDED_APPLEACCOUNT" value:&stru_2856D3978 table:v8];
      }

      else
      {
        [v7 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_NEW_PASSWORD_NEEDED" value:&stru_2856D3978 table:v8];
      }

      v10 = LABEL_13:;
      goto LABEL_39;
    case 12:
      if (!v4)
      {
        goto LABEL_41;
      }

      v5 = @"INTERNAL: Account permanently blocked";
      break;
    case 13:
      if (!v4)
      {
        goto LABEL_41;
      }

      v5 = @"INTERNAL: Account temporarily blocked";
      break;
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
      if (!v4)
      {
        goto LABEL_41;
      }

      v5 = @"INTERNAL: Server Error";
      break;
    case 20:
      if (!v4)
      {
        goto LABEL_41;
      }

      v5 = @"INTERNAL: Server Denied/Disabled";
      break;
    case 21:
      v7 = CommunicationsSetupUIBundle();
      v8 = CNFRegStringTableName();
      v10 = [v7 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_NO_VALID_ALIASES_MESSAGE" value:&stru_2856D3978 table:v8];
      goto LABEL_39;
    case 26:
      if (!v4)
      {
        goto LABEL_41;
      }

      v5 = @"INTERNAL: Rejected by server (irreparable)";
      break;
    default:
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v19 = a1;
        _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "Unexpected IMAccountRegistrationFailureReason: %ld", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      goto LABEL_41;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

id CNFRegStringForAliasValidationStatus(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1 > 0)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        if (a1 == 3)
        {
          v2 = 0;
          goto LABEL_13;
        }

        goto LABEL_16;
      }

      v3 = CommunicationsSetupUIBundle();
      v4 = CNFRegStringTableName();
      v5 = [v3 localizedStringForKey:@"FACETIME_ALIAS_STATUS_VALIDATING" value:&stru_2856D3978 table:v4];
LABEL_12:
      v2 = v5;

      goto LABEL_13;
    }

LABEL_8:
    v3 = CommunicationsSetupUIBundle();
    v4 = CNFRegStringTableName();
    v5 = [v3 localizedStringForKey:@"FACETIME_ALIAS_STATUS_DEFAULT" value:&stru_2856D3978 table:v4];
    goto LABEL_12;
  }

  if (a1 == -1)
  {
    v3 = CommunicationsSetupUIBundle();
    v4 = CNFRegStringTableName();
    v5 = [v3 localizedStringForKey:@"FACETIME_ALIAS_STATUS_FAILURE" value:&stru_2856D3978 table:v4];
    goto LABEL_12;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_16:
  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v2 = [v8 localizedStringForKey:@"FACETIME_ALIAS_STATUS_DEFAULT" value:&stru_2856D3978 table:v9];

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = a1;
    _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "Unexpected IMAccountAliasValidationStatus: %ld", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

LABEL_13:
  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

__CFString *CNFRegNonLocStringForAliasValidationStatus(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((a1 + 1) >= 5)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = a1;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Unexpected IMAccountAliasValidationStatus: %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad status (%ld)", a1];
  }

  else
  {
    v1 = off_278DE8020[a1 + 1];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v1;
}

__CFString *CNFRegStringForAliasValidationFailure(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = CNFShouldShowTechnicalFailureUI();
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        if (v2)
        {
          v3 = @"INTERNAL: Server Alias Not Confirmed";
          goto LABEL_25;
        }

        goto LABEL_24;
      case 4:
        v4 = @"FACETIME_EMAIL_ERROR_IN_USE";
        break;
      case 5:
        v4 = @"FACETIME_EMAIL_ERROR_NOT_AVAILABLE";
        break;
      default:
        goto LABEL_15;
    }

    v6 = CommunicationsSetupUIBundle();
    v7 = CNFRegStringTableName();
    v3 = [v6 localizedStringForKey:v4 value:&stru_2856D3978 table:v7];

    if (v3)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  switch(a1)
  {
    case 0:
      if (v2)
      {
        v3 = @"INTERNAL: Unknown Error";
        goto LABEL_25;
      }

      goto LABEL_24;
    case 1:
      if (v2)
      {
        v3 = @"INTERNAL: Server Error";
        goto LABEL_25;
      }

      goto LABEL_24;
    case 2:
      if (v2)
      {
        v3 = @"INTERNAL: Server Denied";
        goto LABEL_25;
      }

      goto LABEL_24;
  }

LABEL_15:
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = a1;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Unexpected IMAccountAliasValidationErrorReason: %ld", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

LABEL_24:
  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v3 = [v8 localizedStringForKey:@"FACETIME_EMAIL_ERROR_GENERIC" value:&stru_2856D3978 table:v9];

LABEL_25:
  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

__CFString *CNFRegStringForAccount(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 login];
    v4 = [v2 uniqueID];
    v5 = [v2 service];
    v6 = [v5 name];

    if (v3)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"IMAccount<%p>(%@): [%@]{%@}", v2, v6, v3, v4];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"IMAccount<%p>(%@): {%@}", v2, v6, v4, v9];
    }
    v7 = ;
  }

  else
  {
    v7 = @"(No Account)";
  }

  return v7;
}

__CFString *CNFRegNonLocStringForRegistrationStatus(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((a1 + 1) >= 7)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = a1;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Unexpected IMAccountRegistrationStatus: %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad status (%ld)", a1];
  }

  else
  {
    v1 = off_278DE7FE8[a1 + 1];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v1;
}

__CFString *CNFRegNonLocStringForProfileValidationStatus(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((a1 + 1) >= 5)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v6 = a1;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Unexpected IMAccountProfileValidationStatus: %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    result = @"Unknown";
  }

  else
  {
    result = off_278DE8020[a1 + 1];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *CNFRegStringForProfileValidationFailure(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = CNFShouldShowTechnicalFailureUI();
  if (a1 <= 0)
  {
    if (a1 == -1)
    {
      if (v2)
      {
        v3 = @"INTERNAL: No Error";
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (!a1)
    {
      if (v2)
      {
        v3 = @"INTERNAL: Unknown Error";
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_10;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v4 = CommunicationsSetupUIBundle();
      v5 = CNFRegStringTableName();
      v3 = [v4 localizedStringForKey:@"FACETIME_LOCALE_ERROR_INVALID_PROFILE" value:&stru_2856D3978 table:v5];

      if (v3)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_10:
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = a1;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Unexpected IMAccountProfileValidationErrorReason: %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    goto LABEL_19;
  }

  if (v2)
  {
    v3 = @"INTERNAL: Server Error";
    goto LABEL_20;
  }

LABEL_19:
  v7 = CommunicationsSetupUIBundle();
  v8 = CNFRegStringTableName();
  v3 = [v7 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_GENERIC" value:&stru_2856D3978 table:v8];

LABEL_20:
  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

id CNFRegFormattedPhoneNumberForString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if ([v1 _appearsToBePhoneNumber])
  {
    active = CPPhoneNumberCopyActiveCountryCode();
    v2 = PNCreateFormattedStringWithCountry();
  }

  return v2;
}

id CNFRegLocalPhoneNumberString()
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v0 = [MEMORY[0x277D18D28] sharedInstance];
  v1 = [v0 activeAccounts];

  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v2)
  {

    v4 = 0;
LABEL_17:
    v10 = CTSettingCopyMyPhoneNumber();

    v4 = v10;
    goto LABEL_18;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v14;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v14 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v7 = *(*(&v13 + 1) + 8 * i);
      if ([v7 accountType] == 2 && objc_msgSend(v7, "CNFRegSignInComplete"))
      {
        v8 = [v7 aliasesForType:2];
        if ([v8 count])
        {
          v9 = [v8 objectAtIndex:0];

          v4 = v9;
        }
      }
    }

    v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v3);

  if (!v4 || ![v4 length])
  {
    goto LABEL_17;
  }

LABEL_18:
  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

id CNFRegLocalPhoneNumberDisplayString()
{
  v0 = CNFRegLocalPhoneNumberString();
  v1 = v0;
  if (!v0 || ![v0 length])
  {
    v3 = 0;
LABEL_7:
    v5 = CommunicationsSetupUIBundle();
    v6 = CNFRegStringTableName();
    v4 = [v5 localizedStringForKey:@"YOUR_NUMBER_STRING" value:&stru_2856D3978 table:v6];

    goto LABEL_8;
  }

  v2 = CNFRegFormattedPhoneNumberForString(v1);
  v3 = v2;
  if (!v2)
  {
    goto LABEL_7;
  }

  v4 = v2;
  if (![v2 length])
  {
    goto LABEL_7;
  }

LABEL_8:

  return v4;
}

uint64_t CNFRegSupportsLocalPhoneNumberSentinelAlias()
{
  v0 = [MEMORY[0x277D18998] sharedInstance];
  v1 = [v0 supportsIdentification];

  return v1;
}

id CNFRegLocalizedSplashScreenURL()
{
  v0 = CommunicationsSetupUIBundle();
  v1 = CNFRegStringTableName();
  v2 = [v0 localizedStringForKey:@"FACETIME_SPLASH_LEARN_MORE_URL" value:&stru_2856D3978 table:v1];

  v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];

  return v3;
}

id CNFRegiForgotURL()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D07DF0] sharedInstance];
  v1 = [v0 urlWithKey:@"ds-iforgot-url"];
  if (!v1)
  {
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = @"https://iforgot.apple.com";
      _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Could not obtain iForgot url from bag. Falling back to %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v5 = @"https://iforgot.apple.com";
      IMLogString();
    }

    v1 = [MEMORY[0x277CBEBC0] URLWithString:{@"https://iforgot.apple.com", v5}];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v1;
}

id CNFRegAppleIDLearnMoreURL()
{
  v0 = CNFRegStringTableName();
  v1 = CommunicationsSetupUIBundle();
  v2 = CNFLocalizedStringFromTableInBundleWithFallback(@"FACETIME_APPLE_ID_LEARN_MORE_URL", v0, v1);

  v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];

  return v3;
}

uint64_t CNFRegGlobalAppearanceStyle()
{
  result = _sGlobalAppearanceStyle;
  if (!_sGlobalAppearanceStyle)
  {
    result = 1;
    _sGlobalAppearanceStyle = 1;
  }

  return result;
}

uint64_t FTCServiceTypeForService(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 name];
  if ([v1 isEqualToString:*MEMORY[0x277D07D60]])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D07D68]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D07D58]])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_243BEFA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243BF861C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x243BF849CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_243C0191C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x243C0182CLL);
  }

  _Unwind_Resume(a1);
}

__CFString *CKStringFromCTLazuliToggleStateType(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return @"???";
  }

  else
  {
    return off_278DE8300[a1 + 1];
  }
}

id CNFRegGetSSAccountStoreClass()
{
  if (CNFRegControllerLoadStoreServicesLibraryIfNecessary_predicate != -1)
  {
    CNFRegGetSSAccountStoreClass_cold_1();
  }

  if (CNFRegControllerLoadStoreServicesLibraryIfNecessary___SSLibraryHandle)
  {
    v1 = __SSAccountStoreClass;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void __CNFRegControllerLoadStoreServicesLibraryIfNecessary_block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = GSSystemRootDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/StoreServices.framework/StoreServices"];

  v2 = [v1 fileSystemRepresentation];
  CNFRegControllerLoadStoreServicesLibraryIfNecessary___SSLibraryHandle = dlopen(v2, 2);
  if (CNFRegControllerLoadStoreServicesLibraryIfNecessary___SSLibraryHandle)
  {
    __SSAccountStoreClass = NSClassFromString(&cfstr_Ssaccountstore.isa);
  }

  else
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v6 = v2;
      v7 = 2080;
      v8 = dlerror();
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Could not load framework {%s} : %s", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      dlerror();
      IMLogString();
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_243C0DF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _cacheSpecifierMatchingID(void *a1, void *a2, id *a3)
{
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (a1 && v6 && a3)
  {
    v9 = a1;
    v10 = [v7 identifier];
    v11 = [v10 isEqualToString:v9];

    if (v11)
    {
      if (*a3 != v7)
      {
        objc_storeStrong(a3, a2);
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

uint64_t _cacheSpecifierGroupMatchingID(void *a1, void *a2, void *a3, void **a4)
{
  v7 = a3;
  v8 = v7;
  v9 = 0;
  if (a1 && a2 && v7 && a4)
  {
    v10 = a1;
    v11 = [a2 identifier];
    v12 = [v11 isEqualToString:v10];

    if (v12)
    {
      if (*a4 != v8)
      {
        v13 = [v8 copy];
        v14 = *a4;
        *a4 = v13;
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

void sub_243C15F00(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x243C15AECLL);
  }

  _Unwind_Resume(a1);
}

void sub_243C168F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243C16DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_243C1BD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  if (v14)
  {
    objc_destroyWeak(v15);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t TelephonyUtilitiesFrameworkHandle()
{
  result = TelephonyUtilitiesFrameworkHandle___TelephonyUtilitiesHandle;
  if (!TelephonyUtilitiesFrameworkHandle___TelephonyUtilitiesHandle)
  {
    v1 = [GSSystemRootDirectory() stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/TelephonyUtilities.framework/TelephonyUtilities"];
    TelephonyUtilitiesFrameworkHandle___TelephonyUtilitiesHandle = dlopen([v1 fileSystemRepresentation], 2);

    return TelephonyUtilitiesFrameworkHandle___TelephonyUtilitiesHandle;
  }

  return result;
}

void *FTLiveCaptionsActivatable()
{
  result = FTLiveCaptionsActivatable___ftlcSupportedFunction;
  if (!FTLiveCaptionsActivatable___ftlcSupportedFunction)
  {
    v1 = TelephonyUtilitiesFrameworkHandle();
    if (v1)
    {
      result = dlsym(v1, "TUFTLiveCaptionsActivatable");
      FTLiveCaptionsActivatable___ftlcSupportedFunction = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = FTLiveCaptionsActivatable___ftlcSupportedFunction;
      if (!FTLiveCaptionsActivatable___ftlcSupportedFunction)
      {
        return result;
      }
    }
  }

  return (result)();
}

void sub_243C1CEF4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x243C1CE60);
  }

  _Unwind_Resume(a1);
}

uint64_t _parseKeyValuePair(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = v5;
  if (v5 && [v5 length])
  {
    v7 = [v6 componentsSeparatedByString:@"="];
    if ([v7 count] == 2)
    {
      v8 = [v7 objectAtIndex:0];
      v9 = [v7 objectAtIndex:1];
      if ([v8 length] && objc_msgSend(v9, "length"))
      {
        v10 = [v8 stringByRemovingPercentEncoding];

        v11 = [v9 stringByRemovingPercentEncoding];

        if (a2 && v10)
        {
          v12 = v10;
          *a2 = v10;
        }

        v13 = 1;
        if (a3 && v11)
        {
          v14 = v11;
          *a3 = v11;
        }

        v8 = v10;
        v9 = v11;
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
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

__CFString *_queryStringFromCNFQueryDictionary(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___queryStringFromCNFQueryDictionary_block_invoke;
    v7[3] = &unk_278DE86E0;
    v8 = v3;
    v4 = v3;
    [v2 enumerateKeysAndObjectsUsingBlock:v7];
    v5 = [v4 componentsJoinedByString:@"&"];
  }

  else
  {
    v5 = &stru_2856D3978;
  }

  return v5;
}

void ___queryStringFromCNFQueryDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a3;
  v7 = a2;
  v8 = [v5 URLQueryAllowedCharacterSet];
  v12 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v8];

  v9 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v10 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v9];

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@=%@", v12, v10];
  [*(a1 + 32) addObject:v11];
}

void _handleSIMSubscriptionsUpdateNotification(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  im_dispatch_after();
}

uint64_t ___handleSIMSubscriptionsUpdateNotification_block_invoke(uint64_t a1)
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Subscriptions changed. Resetting extension matching", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  [*(a1 + 32) endMatchingExtensions];
  return [*(a1 + 32) findSpamExtensions];
}

void sub_243C30000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKSettingsHostingViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MessagesSettingsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MessagesSettingsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278DE8800;
    v6 = 0;
    MessagesSettingsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MessagesSettingsUILibraryCore_frameworkLibrary)
  {
    __getCKSettingsHostingViewControllerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CKSettingsHostingViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKSettingsHostingViewControllerClass_block_invoke_cold_1();
  }

  getCKSettingsHostingViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MessagesSettingsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MessagesSettingsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t csui_log()
{
  if (csui_log_onceToken != -1)
  {
    csui_log_cold_1();
  }

  return csui_log_sLog;
}

os_log_t __csui_log_block_invoke()
{
  result = os_log_create("com.apple.CommunicationsSetupUI", "default");
  csui_log_sLog = result;
  return result;
}

void sub_243C37FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_243C39244(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x243C39210);
  }

  _Unwind_Resume(a1);
}

void sub_243C396B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MadridLocalizedString(void *a1)
{
  v1 = a1;
  v2 = CommunicationsSetupUIBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"MadridRegistration"];

  return v3;
}

void sub_243C39B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243C3A5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243C3A738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243C3EA20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_243C3ECEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243C420D4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x243C41E2CLL);
  }

  _Unwind_Resume(a1);
}

void sub_243C47B94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_243C4D39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_243C4D524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243C4E4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243C50F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_243C54088(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x243C54028);
  }

  _Unwind_Resume(a1);
}

BOOL CNFShouldShowTechnicalFailureUI()
{
  v0 = gShouldShowTechnicalFailureUI;
  if (gShouldShowTechnicalFailureUI == -1)
  {
    if ((CNFShouldShowTechnicalFailureUI_sIsObserving & 1) == 0)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _TechnicalFailureUIPrefChangedCallback, @"kCNFTechnicalFailureUIPrefChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      CNFShouldShowTechnicalFailureUI_sIsObserving = 1;
    }

    CNFSyncPreferences();
    v0 = CNFGetAppBooleanValueForKey(@"showDebugErrorDialogs");
    gShouldShowTechnicalFailureUI = v0;
  }

  return v0 != 0;
}

CFIndex CNFiMessageLogLevel()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CNFiMessageDebugLoggingDefaults();
  if ([v0 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v1 = v0;
    v2 = [v1 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v20;
      do
      {
        v5 = 0;
        do
        {
          if (*v20 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = *(*(&v19 + 1) + 8 * v5);
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v7 = [v1 objectForKey:{v6, 0}];
          v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v16;
            while (2)
            {
              v11 = 0;
              do
              {
                if (*v16 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                if (!CFPreferencesGetAppBooleanValue(*(*(&v15 + 1) + 8 * v11), v6, 0))
                {

                  goto LABEL_19;
                }

                ++v11;
              }

              while (v9 != v11);
              v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
              if (v9)
              {
                continue;
              }

              break;
            }
          }

          ++v5;
        }

        while (v5 != v3);
        v3 = [v1 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v3);
    }

    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MadridLoggingLevel", @"com.apple.logging", 0);
  }

  else
  {
LABEL_19:
    AppIntegerValue = -1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return AppIntegerValue;
}

id _CNFiMessageDebugLoggingDefaults()
{
  v0 = _CNFiMessageDebugLoggingDefaults_defaults;
  if (!_CNFiMessageDebugLoggingDefaults_defaults)
  {
    v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"MadridLogging", 0}];
    [v1 setObject:v2 forKey:@"com.apple.logging"];

    v3 = [v1 copy];
    v4 = _CNFiMessageDebugLoggingDefaults_defaults;
    _CNFiMessageDebugLoggingDefaults_defaults = v3;

    v0 = _CNFiMessageDebugLoggingDefaults_defaults;
  }

  return v0;
}

void CNFSetiMessageLogLevel(uint64_t a1)
{
  v2 = _CNFiMessageDebugLoggingDefaults();
  _CNFSetDefaultsDictionary(a1 >= 0, v2);

  if (CNFSetiMessageLogLevel__pred_MMCSSetLogLevelMMCS == -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
LABEL_3:
      v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a1];
      CFPreferencesSetAppValue(@"MadridLoggingLevel", v3, @"com.apple.logging");
      v4 = [MEMORY[0x277CCABB0] numberWithInt:3];
      CFPreferencesSetAppValue(@"DebugLevel", v4, @"com.apple.mmcs");

      CFPreferencesSetAppValue(@"fig_notes", @"public", @"com.apple.coremedia");
      if (CNFSetiMessageLogLevel__MMCSSetLogLevel)
      {
        CNFSetiMessageLogLevel__MMCSSetLogLevel(7, 4);
      }

      goto LABEL_9;
    }
  }

  else
  {
    CNFSetiMessageLogLevel_cold_1();
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  CFPreferencesSetAppValue(@"MadridLoggingLevel", 0, @"com.apple.logging");
  CFPreferencesSetAppValue(@"DebugLevel", 0, @"com.apple.mmcs");
  CFPreferencesSetAppValue(@"fig_notes", 0, @"com.apple.coremedia");
  if (CNFSetiMessageLogLevel__MMCSSetLogLevel)
  {
    CNFSetiMessageLogLevel__MMCSSetLogLevel(3, 3);
  }

LABEL_9:
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  CFPreferencesAppSynchronize(@"com.apple.mmcs");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kMarcoSyncLoggingPrefs", 0, 0, 1u);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(v6, @"PCLoggingSettingsDidChangeNotification", 0, 0, 1u);
}

void _CNFSetDefaultsDictionary(int a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [v3 allKeys];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    if (a1)
    {
      v7 = *MEMORY[0x277CBED28];
    }

    else
    {
      v7 = 0;
    }

    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = [v3 objectForKey:v9];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            v14 = 0;
            do
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              CFPreferencesSetAppValue(*(*(&v17 + 1) + 8 * v14++), v7, v9);
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }

        CFPreferencesAppSynchronize(v9);
        ++v8;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void CNFDumpiMessageLogs(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"CNFDumpiMessageLogs";
  }

  v3 = v2;
  MarcoAction();
}

uint64_t CNFRegistrationLogLevel()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CNFRegistrationLoggingDefaults();
  if ([v0 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v1 = v0;
    v2 = [v1 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v20;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v20 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = *(*(&v19 + 1) + 8 * i);
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v7 = [v1 objectForKey:{v6, 0}];
          v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v16;
            while (2)
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v16 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                if (!CFPreferencesGetAppBooleanValue(*(*(&v15 + 1) + 8 * j), v6, 0))
                {

                  v12 = -1;
                  goto LABEL_21;
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
              if (v9)
              {
                continue;
              }

              break;
            }
          }
        }

        v3 = [v1 countByEnumeratingWithState:&v19 objects:v24 count:16];
        v12 = 0;
      }

      while (v3);
    }

    else
    {
      v12 = 0;
    }

LABEL_21:
  }

  else
  {
    v12 = -1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

id _CNFRegistrationLoggingDefaults()
{
  v0 = _CNFRegistrationLoggingDefaults_defaults;
  if (!_CNFRegistrationLoggingDefaults_defaults)
  {
    v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"RegistrationLogging", 0}];
    [v1 setObject:v2 forKey:@"com.apple.logging"];

    v3 = [v1 copy];
    v4 = _CNFRegistrationLoggingDefaults_defaults;
    _CNFRegistrationLoggingDefaults_defaults = v3;

    v0 = _CNFRegistrationLoggingDefaults_defaults;
  }

  return v0;
}

uint64_t CNFSetRegistrationLogLevel(uint64_t a1)
{
  v2 = _CNFRegistrationLoggingDefaults();
  _CNFSetDefaultsDictionary(a1 >= 0, v2);

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kMarcoSyncLoggingPrefs", 0, 0, 1u);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v4, @"PCLoggingSettingsDidChangeNotification", 0, 0, 1u);

  return MEMORY[0x2821736B0]("killall -USR2 imagent");
}

void CNFDumpRegistrationLogs(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"CNFDumpRegistrationLogs";
  }

  v3 = v2;
  MarcoAction();
}

uint64_t CNFIsPushLoggingEnabled()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CNFPushLoggingDefaults();
  if ([v0 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v1 = v0;
    v2 = [v1 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v20;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v20 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = *(*(&v19 + 1) + 8 * i);
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v7 = [v1 objectForKey:{v6, 0}];
          v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v16;
            while (2)
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v16 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                if (!CFPreferencesGetAppBooleanValue(*(*(&v15 + 1) + 8 * j), v6, 0))
                {

                  v12 = 0;
                  goto LABEL_21;
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
              if (v9)
              {
                continue;
              }

              break;
            }
          }
        }

        v3 = [v1 countByEnumeratingWithState:&v19 objects:v24 count:16];
        v12 = 1;
      }

      while (v3);
    }

    else
    {
      v12 = 1;
    }

LABEL_21:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

id _CNFPushLoggingDefaults()
{
  v0 = _CNFPushLoggingDefaults_defaults;
  if (!_CNFPushLoggingDefaults_defaults)
  {
    v1 = [MEMORY[0x277CBEB38] dictionary];
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Log", @"PCWriteLogs", @"APSFullNetworkLogging", 0}];
    [v1 setObject:v2 forKey:@"com.apple.persistentconnection"];

    v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v1];
    v4 = _CNFPushLoggingDefaults_defaults;
    _CNFPushLoggingDefaults_defaults = v3;

    v0 = _CNFPushLoggingDefaults_defaults;
  }

  return v0;
}

void CNFSetPushLoggingEnabled(int a1)
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v18 = [v2 lastObject];

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = v3;
  if (!a1)
  {
    v11 = [v18 stringByAppendingPathComponent:@"Preferences/com.apple.aps.tcpdump.en0.plist"];
    [v4 removeItemAtPath:v11 error:0];

    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v18 stringByAppendingPathComponent:@"Preferences/com.apple.aps.tcpdump.pdp_ip0.plist"];
    [v12 removeItemAtPath:v13 error:0];

    v14 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = [v18 stringByAppendingPathComponent:@"Caches/com.apple.aps.tcpdump.en0.plist"];
    [v14 removeItemAtPath:v15 error:0];

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v18 stringByAppendingPathComponent:@"Caches/com.apple.aps.tcpdump.pdp_ip0.plist"];
    [v9 removeItemAtPath:v10 error:0];
    goto LABEL_6;
  }

  v5 = [v3 fileExistsAtPath:@"/usr/sbin/tcpdump"];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEA90] data];
    v7 = [v18 stringByAppendingPathComponent:@"Caches/com.apple.aps.tcpdump.en0.plist"];
    [v6 writeToFile:v7 options:0 error:0];

    v8 = [MEMORY[0x277D07DB0] sharedInstance];
    LODWORD(v7) = [v8 supportsCellularData];

    if (v7)
    {
      v9 = [MEMORY[0x277CBEA90] data];
      v10 = [v18 stringByAppendingPathComponent:@"Caches/com.apple.aps.tcpdump.pdp_ip0.plist"];
      [v9 writeToFile:v10 options:0 error:0];
LABEL_6:
    }
  }

  v16 = _CNFPushLoggingDefaults();
  _CNFSetDefaultsDictionary(a1, v16);

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PCLoggingSettingsDidChangeNotification", 0, 0, 1u);
}

void CNFSetBasebandLoggingEnabled(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
    CNFSetBasebandValue(v2);

    CNFSetBasebandValue(@"512");
    v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
    CNFSetBasebandValue(v3);

    CNFSetBasebandValue(@"1");
    CNFSetBasebandValue(@"2");
    CNFSetBasebandValue(@"512");
    v4 = @"default";
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
    CNFSetBasebandValue(v5);

    CNFSetBasebandValue(@"64");
    v6 = [MEMORY[0x277CCABB0] numberWithBool:0];
    CNFSetBasebandValue(v6);

    CNFSetBasebandValue(@"0");
    v4 = @"0";
  }

  CNFSetBasebandValue(v4);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  CNFSetBasebandValue(v7);
}

void CNFSetBasebandValue(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277CBECE8];
  v3 = _CTServerConnectionCreate();
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = v1;
    if ((isKindOfClass & 1) == 0)
    {
      v7 = [(__CFString *)v1 BOOLValue:0];
      v6 = @"false";
      if (v7)
      {
        v6 = @"true";
      }
    }

    v8 = v6;
    _CTServerConnectionSetTraceProperty();
    CFRelease(v4);
  }
}

void CNFSetIDSLoggingEnabled(int a1)
{
  if (a1)
  {
    CFPreferencesSetAppValue(@"IDSLogging", [MEMORY[0x277CCABB0] numberWithBool:1], @"com.apple.logging");
    v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  }

  else
  {
    CFPreferencesSetAppValue(@"IDSLogging", 0, @"com.apple.logging");
    v1 = 0;
  }

  CFPreferencesSetAppValue(@"IDSIDQuery", v1, @"com.apple.logging");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kMarcoSyncLoggingPrefs", 0, 0, 1u);
}

void _reloadSpecifiersFromNotification(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 reloadSpecifiers];
  }
}

void sub_243C5B494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 40));
  _Unwind_Resume(a1);
}

void _removeSpecifiersWithIdentifiers(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 specifierForID:*(*(&v11 + 1) + 8 * v8)];
        [v3 removeObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_243C6581C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243C65D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__917(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CNFGetSharedBooleanValueForKey(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v3)
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v2, v3, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v5 = AppBooleanValue == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = !v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL CNFGetDomainBooleanValueForKey(CFStringRef applicationID, CFStringRef key)
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(key, applicationID, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

uint64_t CNFGetDomainBooleanValueForKeyDefaultValue(CFStringRef applicationID, CFStringRef key, unsigned int a3)
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

uint64_t CNFSetDomainBooleanForKey(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = a1;
  v8 = [v5 numberWithBool:a3];
  _CNFSetDomainValueForKey(v7, v6, v8);

  return 1;
}

void _CNFSetDomainValueForKey(void *a1, const __CFString *a2, const void *a3)
{
  applicationID = a1;
  CFPreferencesSetAppValue(a2, a3, applicationID);
  CFPreferencesAppSynchronize(applicationID);
}

BOOL CNFSetSharedBooleanValueForKey(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = CPCopySharedResourcesPreferencesDomainForDomain();
  v6 = v5;
  if (v5)
  {
    CNFSetDomainBooleanForKey(v5, v4, a3);
  }

  return v6 != 0;
}

double CNFGetDomainCGSizeForKey(CFStringRef applicationID, CFStringRef key, double a3)
{
  v4 = CFPreferencesCopyAppValue(key, applicationID);
  if (v4)
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *&a3 = *&CGSizeFromString(v5);
    }

    CFRelease(v5);
  }

  return a3;
}

double CNFGetSharedCGSizeForKey(double a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v5)
  {
    v6 = v5;
    a1 = CNFGetDomainCGSizeForKey(v5, v4, a1);
    CFRelease(v6);
  }

  return a1;
}

id CNFCopyDomainStringForKey(const __CFString *a1, const __CFString *a2, void *a3)
{
  v5 = a3;
  v6 = CFPreferencesCopyAppValue(a2, a1);
  v7 = v5;
  if (v6)
  {
    v8 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v8;
    }

    else
    {
      CFRelease(v8);
      v7 = v5;
    }
  }

  return v7;
}

id CNFCopySharedStringForKey(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = CPCopySharedResourcesPreferencesDomainForDomain();
  v7 = v5;
  v8 = v7;
  if (v6)
  {
    v8 = CNFCopyDomainStringForKey(v6, v4, v7);
  }

  return v8;
}

uint64_t CNFGetDomainIntegerForKey(CFStringRef applicationID, CFStringRef key, uint64_t a3)
{
  v4 = CFPreferencesCopyAppValue(key, applicationID);
  if (v4)
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      a3 = [v5 integerValue];
    }

    CFRelease(v5);
  }

  return a3;
}

uint64_t CNFGetSharedIntegerForKey(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v5)
  {
    v6 = v5;
    a3 = CNFGetDomainIntegerForKey(v5, v4, a3);
    CFRelease(v6);
  }

  return a3;
}

uint64_t CNFSetDomainIntegerForKey(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = a1;
  v8 = [v5 numberWithInteger:a3];
  _CNFSetDomainValueForKey(v7, v6, v8);

  return 1;
}

BOOL CNFSetSharedIntegerForKey(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = CPCopySharedResourcesPreferencesDomainForDomain();
  v6 = v5;
  if (v5)
  {
    CNFSetDomainIntegerForKey(v5, v4, a3);
    CFRelease(v6);
  }

  return v6 != 0;
}

double CNFGetDomainFloatForKey(CFStringRef applicationID, CFStringRef key, double a3)
{
  v4 = CFPreferencesCopyAppValue(key, applicationID);
  if (v4)
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v5 floatValue];
      a3 = v6;
    }

    CFRelease(v5);
  }

  return a3;
}

double CNFGetSharedFloatForKey(double a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v5)
  {
    v6 = v5;
    a1 = CNFGetDomainFloatForKey(v5, v4, a1);
    CFRelease(v6);
  }

  return a1;
}

void CNFAssert(char a1, int a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    _CNFLogv(a2, a3);
  }
}

void _CNFLogv(int a1, void *a2)
{
  v4 = a2;
  v3 = logNameForType_kLogNames[a1];
  if (DLCSessionShouldLogLevel())
  {
    DLCSessionLogWithLevelV();
  }
}

id CNFCopyBacktraceToDepth(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if ((a1 + 1) < 0x80)
  {
    v1 = a1 + 1;
  }

  else
  {
    v1 = 128;
  }

  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v1];
  MEMORY[0x28223BE20]();
  v5 = (v17 - v4);
  if (v3 >= 0x200)
  {
    v6 = 512;
  }

  else
  {
    v6 = v3;
  }

  bzero(v17 - v4, v6);
  v7 = backtrace(v5, v1);
  v8 = backtrace_symbols(v5, v7);
  v9 = v8;
  if (v7 >= 2)
  {
    v10 = (v8 + 1);
    v11 = v7 - 1;
    do
    {
      v12 = objc_alloc(MEMORY[0x277CCACA8]);
      v13 = *v10++;
      v14 = [v12 initWithUTF8String:v13];
      [v2 addObject:v14];

      --v11;
    }

    while (v11);
  }

  free(v9);
  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

void CNFLogBacktraceToDepth(int a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (DLCSessionShouldLogLevel())
  {
    v4 = CNFCopyBacktraceToDepth(a2);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          _CNFLog(a1, *(*(&v10 + 1) + 8 * v8++));
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

id CommunicationsSetupUIBundle()
{
  v0 = CommunicationsSetupUIBundle___communicationsSetupUIBundle;
  if (!CommunicationsSetupUIBundle___communicationsSetupUIBundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = CommunicationsSetupUIBundle___communicationsSetupUIBundle;
    CommunicationsSetupUIBundle___communicationsSetupUIBundle = v1;

    v0 = CommunicationsSetupUIBundle___communicationsSetupUIBundle;
  }

  return v0;
}

BOOL CNFSyncSharedPreferences()
{
  v0 = CPCopySharedResourcesPreferencesDomainForDomain();
  v1 = v0;
  if (v0)
  {
    v2 = CFPreferencesAppSynchronize(v0) != 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CNFSyncLoggingPrefs()
{
  CNFSyncSharedPreferences();
  CNFGetSharedBooleanValueForKey(@"com.apple.conference", @"Log");

  return CNFGetSharedBooleanValueForKey(@"com.apple.conference", @"Log.Everything");
}

id CNFStringKeyForProduct(void *a1)
{
  v1 = a1;
  if (CNFProductName_onceToken != -1)
  {
    CNFStringKeyForProduct_cold_1();
  }

  v2 = v1;
  if (CNFProductName_sProductName)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v1, CNFProductName_sProductName];
  }

  return v2;
}

id CNFStringKeyForIdiom(void *a1)
{
  v1 = a1;
  if (CNFIdiomName_onceToken != -1)
  {
    CNFStringKeyForIdiom_cold_1();
  }

  v2 = v1;
  if (CNFIdiomName_sIdiomName)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v1, CNFIdiomName_sIdiomName];
  }

  return v2;
}

id CNFStringKeyForNetwork(void *a1)
{
  v1 = MEMORY[0x277D07DB0];
  v2 = a1;
  v3 = [v1 sharedInstance];
  v4 = [v3 supportsWLAN];

  if (v4)
  {
    v5 = @"%@_WLAN";
  }

  else
  {
    v5 = @"%@_WIFI";
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v5, v2];

  return v6;
}

id CNFStringKeyForNetworkAndProduct(void *a1)
{
  v1 = CNFStringKeyForNetwork(a1);
  v2 = CNFStringKeyForProduct(v1);

  return v2;
}

id CNFLocalizedStringFromTableInBundleWithFallback(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = CNFStringKeyForProduct(v5);
  v9 = CommunicationsSetupUIBundle();
  v10 = CNFRegStringTableName();
  v11 = [v9 localizedStringForKey:v8 value:&stru_2856D3978 table:v10];

  if (v11 && ([v11 isEqualToString:v8] & 1) == 0)
  {
    v16 = v11;
    v18 = v16;
  }

  else
  {
    v12 = csui_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      CNFLocalizedStringFromTableInBundleWithFallback_cold_1(v5, v8, v12);
    }

    v13 = CNFStringKeyForIdiom(v5);
    v14 = [v7 localizedStringForKey:v13 value:&stru_2856D3978 table:v6];

    if (v14 && ([v14 isEqualToString:v13] & 1) == 0)
    {
      NSLog(&cfstr_WeDidAFallback.isa, v13, v8);
      v16 = v14;
      v18 = v16;
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v5, @"_iphone"];
      v16 = [v7 localizedStringForKey:v15 value:&stru_2856D3978 table:v6];

      if (v16 && ([v16 isEqualToString:v15] & 1) == 0)
      {
        NSLog(&cfstr_WeDidAFallback.isa, v15, v8);
        v18 = v16;
      }

      else
      {
        NSLog(&cfstr_ErrorWeAreMiss.isa, v5);
        v17 = CNFStringKeyForProduct(v5);
        v18 = [v7 localizedStringForKey:v17 value:&stru_2856D3978 table:v6];
      }
    }
  }

  return v18;
}

void __CNFProductName_block_invoke()
{
  v7 = _CFGetProductName();
  if ([v7 length])
  {
    v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"_%@", v7];
    v1 = CNFProductName_sProductName;
    CNFProductName_sProductName = v0;
  }

  else
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    v1 = [v2 model];

    if (v1)
    {
      [v1 rangeOfString:@"iPad" options:9];
      if (v3)
      {
        v4 = @"_ipad";
      }

      else
      {
        [v1 rangeOfString:@"iPod" options:9];
        v4 = @"_ipod";
        if (!v5)
        {
          v4 = @"_iphone";
        }
      }

      v6 = CNFProductName_sProductName;
      CNFProductName_sProductName = v4;
    }
  }
}

void __CNFIdiomName_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = v1 == 1 || v1 == 6;
  v3 = @"_iphone";
  if (v2)
  {
    v3 = @"_ipad";
  }

  v4 = CNFIdiomName_sIdiomName;
  CNFIdiomName_sIdiomName = v3;
}

uint64_t sub_243C6B938(unsigned __int8 a1)
{
  sub_243C6F0B8();
  MEMORY[0x245D4CB60](a1);
  return sub_243C6F0D8();
}

uint64_t sub_243C6B994()
{
  v1 = *v0;
  sub_243C6F0B8();
  MEMORY[0x245D4CB60](v1);
  return sub_243C6F0D8();
}

uint64_t sub_243C6BA08()
{
  v1 = *v0;
  sub_243C6F0B8();
  MEMORY[0x245D4CB60](v1);
  return sub_243C6F0D8();
}

id CKSettingsCheckInDevicesList.__allocating_init(fullDataSharing:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [objc_opt_self() mainScreen];
  [v5 bounds];
  v7 = v6;

  v8 = &v3[OBJC_IVAR____TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList_view];
  *v8 = v7;
  v8[8] = v4;
  v10.receiver = v3;
  v10.super_class = v1;
  return objc_msgSendSuper2(&v10, sel_init);
}

id CKSettingsCheckInDevicesList.init(fullDataSharing:)(char a1)
{
  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = [objc_opt_self() mainScreen];
  [v3 bounds];
  v5 = v4;

  v6 = &v1[OBJC_IVAR____TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList_view];
  *v6 = v5;
  v6[8] = v2;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CKSettingsCheckInDevicesList();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_243C6BC88()
{
  v1 = *(*(sub_243C6EF78() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = *(v0 + OBJC_IVAR____TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList_view);
  v6 = *(v0 + OBJC_IVAR____TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList_view + 8);
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8BB0, &qword_243C83AF0));
  v3 = sub_243C6EF38();
  sub_243C6EF68();
  sub_243C6EF28();
  return v3;
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

id CKSettingsCheckInDevicesList.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKSettingsCheckInDevicesList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSettingsCheckInDevicesList();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243C6BF40@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_243C6EF18();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8BB8, &qword_243C83AF8) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8BC0, &qword_243C83B00);
  sub_243C6DC14(&qword_27EDA8BC8, &qword_27EDA8BC0, &qword_243C83B00);
  sub_243C6F068();
  v3 = sub_243C6EF88();
  sub_243C6EEC8();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8BD0, &qword_243C83B08) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v14 = sub_243C6F018();
  v15 = sub_243C6EF88();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8BD8, &qword_243C83B10);
  v17 = a1 + *(result + 36);
  *v17 = v14;
  *(v17 + 8) = v15;
  return result;
}

uint64_t sub_243C6C0D0@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = sub_243C6F058();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-v10];
  sub_243C6F048();
  v19 = 0;
  v12 = v5[2];
  v12(v9, v11, v4);
  v18 = 1;
  *a2 = v19;
  a2[1] = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8C78, &qword_243C83DF8);
  v12(&a2[*(v13 + 48)], v9, v4);
  v14 = &a2[*(v13 + 64)];
  *v14 = v18;
  v14[1] = a1;
  v15 = v5[1];
  v15(v11, v4);
  return (v15)(v9, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_243C6C2E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *a1 = sub_243C6EF18();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8BB8, &qword_243C83AF8) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8BC0, &qword_243C83B00);
  sub_243C6DC14(&qword_27EDA8BC8, &qword_27EDA8BC0, &qword_243C83B00);
  sub_243C6F068();
  v6 = sub_243C6EF88();
  sub_243C6EEC8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8BD0, &qword_243C83B08) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v17 = sub_243C6F018();
  v18 = sub_243C6EF88();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8BD8, &qword_243C83B10);
  v20 = a1 + *(result + 36);
  *v20 = v17;
  *(v20 + 8) = v18;
  return result;
}

void *sub_243C6C488@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_243C6EF08();
  v10 = 1;
  sub_243C6C564(a1 & 0xFF01, __src);
  memcpy(__dst, __src, 0x184uLL);
  memcpy(v12, __src, 0x184uLL);
  sub_243C6DD48(__dst, v7, &qword_27EDA8BE0, &qword_243C83B18);
  sub_243C6DDB0(v12, &qword_27EDA8BE0, &qword_243C83B18);
  memcpy(&v9[7], __dst, 0x184uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x18BuLL);
}

uint64_t sub_243C6C564@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = sub_243C6F038();
  v50 = sub_243C6EF98();
  KeyPath = swift_getKeyPath();
  if ((a1 & 0xFF00) != 0x200)
  {
    v46 = sub_243C6EF18();
    v55 = 1;
    sub_243C6CE64();
    sub_243C6DCDC();
    v17 = sub_243C6EFD8();
    v43 = v18;
    v44 = v17;
    v20 = v19;
    v45 = v21;
    sub_243C6F078();
    sub_243C6EED8();
    v42 = v20 & 1;
    v69 = v20 & 1;
    DWORD1(v57[0]) = sub_243C6D040(SHIBYTE(a1), a1 & 1) >> 32;
    *(&v57[0] + 1) = v22;
    v23 = sub_243C6EFD8();
    v25 = v24;
    v27 = v26;
    LODWORD(v57[0]) = sub_243C6EF58();
    v28 = sub_243C6EFB8();
    v30 = v29;
    v47 = v3;
    v32 = v31;
    sub_243C6DD38(v23, v25, v27 & 1);

    sub_243C6EFA8();
    v33 = sub_243C6EFC8();
    v35 = v34;
    LOBYTE(v23) = v36;
    v38 = v37;

    sub_243C6DD38(v28, v30, v32 & 1);

    sub_243C6F078();
    sub_243C6EED8();
    *&v52[0] = v44;
    *(&v52[0] + 1) = v43;
    LOBYTE(v52[1]) = v42;
    *(&v52[1] + 1) = *v68;
    DWORD1(v52[1]) = *&v68[3];
    *(&v52[1] + 1) = v45;
    v52[6] = v51[4];
    v52[7] = v51[5];
    v52[8] = v51[6];
    v52[2] = v51[0];
    v52[3] = v51[1];
    v52[4] = v51[2];
    v52[5] = v51[3];
    v58[6] = v51[4];
    v58[7] = v51[5];
    v58[2] = v51[0];
    v58[3] = v51[1];
    v58[5] = v51[3];
    v58[4] = v51[2];
    v58[1] = v52[1];
    v58[0] = v52[0];
    *&__dst[0] = v33;
    *(&__dst[0] + 1) = v35;
    LOBYTE(__dst[1]) = v23 & 1;
    *(&__dst[1] + 1) = *v66;
    DWORD1(__dst[1]) = *&v66[3];
    *(&__dst[1] + 1) = v38;
    __dst[6] = v63;
    __dst[7] = v64;
    __dst[8] = v65;
    __dst[2] = v59;
    __dst[3] = v60;
    __dst[4] = v61;
    __dst[5] = v62;
    v58[13] = v61;
    v58[12] = v60;
    v58[11] = v59;
    v58[10] = __dst[1];
    v58[14] = v62;
    v58[15] = v63;
    v58[16] = v64;
    v58[17] = v65;
    v58[8] = v51[6];
    v58[9] = __dst[0];
    __src[6] = v63;
    __src[7] = v64;
    __src[8] = v65;
    __src[2] = v59;
    __src[3] = v60;
    v67 = v23 & 1;
    *&__src[0] = v33;
    *(&__src[0] + 1) = v35;
    LOBYTE(__src[1]) = v23 & 1;
    *(&__src[1] + 1) = *v66;
    DWORD1(__src[1]) = *&v66[3];
    *(&__src[1] + 1) = v38;
    __src[5] = v62;
    __src[4] = v61;
    sub_243C6DD48(v52, v57, &qword_27EDA8C48, &qword_243C83DE0);
    sub_243C6DD48(__dst, v57, &qword_27EDA8C48, &qword_243C83DE0);
    sub_243C6DDB0(__src, &qword_27EDA8C48, &qword_243C83DE0);
    *&v57[0] = v44;
    *(&v57[0] + 1) = v43;
    LOBYTE(v57[1]) = v42;
    *(&v57[1] + 1) = *v68;
    DWORD1(v57[1]) = *&v68[3];
    *(&v57[1] + 1) = v45;
    v57[6] = v51[4];
    v57[7] = v51[5];
    v57[8] = v51[6];
    v57[2] = v51[0];
    v57[3] = v51[1];
    v57[5] = v51[3];
    v57[4] = v51[2];
    sub_243C6DDB0(v57, &qword_27EDA8C48, &qword_243C83DE0);
    memcpy(v51, v58, 0x120uLL);
    memcpy(v52, v58, 0x120uLL);
    sub_243C6DD48(v51, v57, &qword_27EDA8C40, &qword_243C83DD8);
    sub_243C6DDB0(v52, &qword_27EDA8C40, &qword_243C83DD8);
    memcpy(&v54[7], v51, 0x120uLL);
    __src[0] = v46;
    LOBYTE(__src[1]) = v55;
    memcpy(&__src[1] + 1, v54, 0x127uLL);
    sub_243C6DB84(__src);
    memcpy(__dst, __src, 0x139uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8C48, &qword_243C83DE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8C50, &qword_243C83DE8);
    sub_243C6DB90();
    v3 = v47;
    sub_243C6DC14(&qword_27EDA8C60, &qword_27EDA8C50, &qword_243C83DE8);
    sub_243C6EF48();
    if ((a1 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    v16 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_6;
  }

  *&v57[0] = sub_243C6CE64();
  *(&v57[0] + 1) = v4;
  sub_243C6DCDC();
  v5 = sub_243C6EFD8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_243C6F078();
  sub_243C6EED8();
  LOBYTE(v52[0]) = v9 & 1;
  *&__src[0] = v5;
  *(&__src[0] + 1) = v7;
  LOBYTE(__src[1]) = v9 & 1;
  *(&__src[1] + 1) = v11;
  sub_243C6DD30(__src);
  memcpy(__dst, __src, 0x139uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8C48, &qword_243C83DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8C50, &qword_243C83DE8);
  sub_243C6DB90();
  sub_243C6DC14(&qword_27EDA8C60, &qword_27EDA8C50, &qword_243C83DE8);
  sub_243C6EF48();
  if (a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_243C6F028();
  v13 = sub_243C6EF58();
  v14 = sub_243C6F028();
  v15 = sub_243C6EF58();
  v16 = v13;

LABEL_6:
  v39 = sub_243C6F038();
  v40 = sub_243C6EF58();
  memcpy(v51, v57, 0x139uLL);
  memcpy(v52, v57, 0x139uLL);
  memcpy(__dst, v57, 0x139uLL);

  sub_243C6DD48(v52, __src, &qword_27EDA8C68, &qword_243C83DF0);
  sub_243C6DC5C(v12);

  sub_243C6DC9C(v12);
  *a2 = v3;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v50;
  memcpy((a2 + 24), __dst, 0x139uLL);
  *(a2 + 344) = v12;
  *(a2 + 352) = v16;
  *(a2 + 360) = v14;
  *(a2 + 368) = v15;
  *(a2 + 376) = v39;
  *(a2 + 384) = v40;

  sub_243C6DC9C(v12);
  memcpy(__src, v51, 0x139uLL);
  sub_243C6DDB0(__src, &qword_27EDA8C68, &qword_243C83DF0);
}

uint64_t sub_243C6CE20(char a1)
{
  if (a1)
  {
    return 0x746177656C707061;
  }

  else
  {
    return 0x672E656E6F687069;
  }
}

uint64_t sub_243C6CE64()
{
  v0 = sub_243C6EE98();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_243C6F098();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_243C6F088();
  sub_243C6CFF4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_243C6EE88();
  return sub_243C6F0A8();
}

unint64_t sub_243C6CFF4()
{
  result = qword_27EDA8BE8;
  if (!qword_27EDA8BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDA8BE8);
  }

  return result;
}

uint64_t sub_243C6D040(char a1, char a2)
{
  v4 = sub_243C6EE98();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_243C6F098();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (a2)
  {
    if (a1 != 2)
    {
LABEL_3:
      sub_243C6F088();
      sub_243C6CFF4();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v9 = [objc_opt_self() bundleForClass_];
      sub_243C6EE88();
      return sub_243C6F0A8();
    }
  }

  else if (a1 != 2)
  {
    goto LABEL_3;
  }

  return 0;
}

void *sub_243C6D234@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_243C6EF08();
  v11 = 1;
  sub_243C6C564(v3 | (v4 << 8), __src);
  memcpy(__dst, __src, 0x184uLL);
  memcpy(v13, __src, 0x184uLL);
  sub_243C6DD48(__dst, v8, &qword_27EDA8BE0, &qword_243C83B18);
  sub_243C6DDB0(v13, &qword_27EDA8BE0, &qword_243C83B18);
  memcpy(&v10[7], __dst, 0x184uLL);
  v6 = v11;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  return memcpy((a1 + 17), v10, 0x18BuLL);
}

uint64_t sub_243C6D33C(char a1)
{
  sub_243C6F0B8();
  MEMORY[0x245D4CB60](a1 & 1);
  return sub_243C6F0D8();
}

unint64_t sub_243C6D3A0()
{
  result = qword_27EDA8BF0;
  if (!qword_27EDA8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA8BF0);
  }

  return result;
}

unint64_t sub_243C6D430()
{
  result = qword_27EDA8BF8;
  if (!qword_27EDA8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA8BF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataSharingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataSharingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CKSettingsDevicesListView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CKSettingsDevicesListView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKSettingsSampleDeviceListRow(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for CKSettingsSampleDeviceListRow(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKSettingsSampleDeviceData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CKSettingsSampleDeviceData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243C6D9BC()
{
  result = qword_27EDA8C00;
  if (!qword_27EDA8C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA8BD8, &qword_243C83B10);
    sub_243C6DA74();
    sub_243C6DC14(&qword_27EDA8C20, &qword_27EDA8C28, &qword_243C83D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA8C00);
  }

  return result;
}

unint64_t sub_243C6DA74()
{
  result = qword_27EDA8C08;
  if (!qword_27EDA8C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA8BD0, &qword_243C83B08);
    sub_243C6DC14(&qword_27EDA8C10, &qword_27EDA8C18, &qword_243C83D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA8C08);
  }

  return result;
}

uint64_t sub_243C6DB2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243C6EEE8();
  *a1 = result;
  return result;
}

uint64_t sub_243C6DB58(uint64_t *a1)
{
  v1 = *a1;

  return sub_243C6EEF8();
}

unint64_t sub_243C6DB90()
{
  result = qword_27EDA8C58;
  if (!qword_27EDA8C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA8C48, &qword_243C83DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA8C58);
  }

  return result;
}

uint64_t sub_243C6DC14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243C6DC5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243C6DC9C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_243C6DCDC()
{
  result = qword_27EDA8C70;
  if (!qword_27EDA8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA8C70);
  }

  return result;
}

uint64_t sub_243C6DD38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_243C6DD48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_243C6DDB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_243C6DE30()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EDA92D0 = result;
  return result;
}

uint64_t sub_243C6DE84()
{
  v0 = sub_243C6EEB8();
  __swift_allocate_value_buffer(v0, qword_27EDA92E8);
  __swift_project_value_buffer(v0, qword_27EDA92E8);
  if (qword_27EDA92C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27EDA92D0;
  return sub_243C6EEA8();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_243C6DFAC()
{
  v0 = sub_243C6EEB8();
  __swift_allocate_value_buffer(v0, qword_27EDA9300);
  __swift_project_value_buffer(v0, qword_27EDA9300);
  if (qword_27EDA92C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27EDA92D0;
  return sub_243C6EEA8();
}

uint64_t sub_243C6E078(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_243C6EEB8();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_243C6E0F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_243C6EEB8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void __getCKSettingsHostingViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKSettingsHostingViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKModernSettingsViewController.m" lineNumber:12 description:{@"Unable to find class %s", "CKSettingsHostingViewController"}];

  __break(1u);
}

void __getCKSettingsHostingViewControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MessagesSettingsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKModernSettingsViewController.m" lineNumber:10 description:{@"%s", *a1}];

  __break(1u);
}

void CNFLocalizedStringFromTableInBundleWithFallback_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_243BE5000, log, OS_LOG_TYPE_FAULT, "ERROR! We are missing a string in our bundle for the key %@ for our current platform (key = %@). This means the user could be seeing the incorrect copy text.", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

CGSize CGSizeFromString(NSString *string)
{
  MEMORY[0x2821DE310](string);
  result.height = v2;
  result.width = v1;
  return result;
}