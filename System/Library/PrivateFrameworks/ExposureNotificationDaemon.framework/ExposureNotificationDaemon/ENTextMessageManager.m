@interface ENTextMessageManager
- (BOOL)_readIfNecessaryWithError:(id *)a3;
- (BOOL)_verifyTextMessage:(id)a3 phoneNumber:(id)a4 verificationDate:(id)a5 publicKey:(id)a6 publicKeyVersion:(id)a7 reportType:(id)a8 outError:(id *)a9;
- (BOOL)verifyTextMessage:(id)a3 phoneNumber:(id)a4 verificationDate:(id)a5 publicKey:(id)a6 publicKeyVersion:(id)a7 userReport:(BOOL *)a8 outError:(id *)a9;
- (ENTextMessageManager)initWithDirectoryURL:(id)a3;
- (ENTextMessageManagerDelegate)delegate;
- (uint64_t)activateIfNeeded;
- (void)_purgeOldHashes;
- (void)activateIfNeeded;
- (void)invalidate;
- (void)purgeAllHashes;
- (void)purgeOldHashes;
@end

@implementation ENTextMessageManager

- (ENTextMessageManager)initWithDirectoryURL:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = ENTextMessageManager;
  v6 = [(ENTextMessageManager *)&v23 init];
  if (v6)
  {
    v7 = [v5 path];
    if (!v7)
    {
      [(ENTextMessageManager *)a2 initWithDirectoryURL:v6];
    }

    v8 = [v5 URLByAppendingPathComponent:@"verificationHashes.dat"];
    v9 = [v8 path];

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CCAA08]);
      v22 = 0;
      v11 = [v10 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v22];
      v12 = v22;
      v13 = v12;
      if (v11)
      {
        v14 = *MEMORY[0x277CBE870];
        v21 = v12;
        v15 = [v5 setResourceValue:MEMORY[0x277CBEC20] forKey:v14 error:&v21];
        v16 = v21;

        if ((v15 & 1) == 0 && gLogCategory_ENTextMessageManager <= 90 && (gLogCategory_ENTextMessageManager != -1 || _LogCategory_Initialize()))
        {
          [ENTextMessageManager initWithDirectoryURL:];
        }

        v17 = [[ENSecureArchiveFileWrapper alloc] initWithPath:v9];
        textMessageHistoryFileWrapper = v6->_textMessageHistoryFileWrapper;
        v6->_textMessageHistoryFileWrapper = v17;

        v13 = v16;
      }

      else if (gLogCategory_ENTextMessageManager <= 90 && (gLogCategory_ENTextMessageManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v19 = 0;
    goto LABEL_20;
  }

LABEL_16:
  v19 = v6;
LABEL_20:

  return v19;
}

- (void)activateIfNeeded
{
  v4 = 0;
  v2 = [(ENTextMessageManager *)self _readIfNecessaryWithError:&v4];
  v3 = v4;
  if (!v2)
  {
    [ENTextMessageManager activateIfNeeded];
  }
}

- (void)invalidate
{
  [(ENSecureArchiveFileWrapper *)self->_textMessageHistoryFileWrapper close];
  textMessageHashes = self->_textMessageHashes;
  self->_textMessageHashes = 0;
}

- (void)purgeAllHashes
{
  v3 = [MEMORY[0x277CCAA08] defaultManager];
  v4 = [(ENSecureArchiveFileWrapper *)self->_textMessageHistoryFileWrapper path];
  v7 = 0;
  v5 = [v3 removeItemAtPath:v4 error:&v7];
  v6 = v7;

  if ((v5 & 1) == 0 && gLogCategory__ENTextMessageManager <= 90 && (gLogCategory__ENTextMessageManager != -1 || _LogCategory_Initialize()))
  {
    [ENTextMessageManager purgeAllHashes];
  }
}

- (void)purgeOldHashes
{
  if (gLogCategory__ENTextMessageManager <= 90 && (gLogCategory__ENTextMessageManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)_purgeOldHashes
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = self->_textMessageHashes;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(NSMutableDictionary *)v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)v3 objectForKey:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [MEMORY[0x277CBEAA0] date];
          [v11 timeIntervalSinceDate:v10];
          v13 = v12;

          if (v13 > 172800.0)
          {
            [(NSMutableDictionary *)self->_textMessageHashes removeObjectForKey:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  textMessageHashes = self->_textMessageHashes;
  if (textMessageHashes)
  {
    textMessageHistoryFileWrapper = self->_textMessageHistoryFileWrapper;
    v19 = 0;
    v16 = [(ENSecureArchiveFileWrapper *)textMessageHistoryFileWrapper saveObject:textMessageHashes error:&v19];
    v17 = v19;
    if (!v16 && gLogCategory__ENTextMessageManager <= 90 && (gLogCategory__ENTextMessageManager != -1 || _LogCategory_Initialize()))
    {
      [ENTextMessageManager _purgeOldHashes];
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_verifyTextMessage:(id)a3 phoneNumber:(id)a4 verificationDate:(id)a5 publicKey:(id)a6 publicKeyVersion:(id)a7 reportType:(id)a8 outError:(id *)a9
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = MEMORY[0x277CBEA88];
  v18 = *MEMORY[0x277CBE5B8];
  v19 = a8;
  v20 = a5;
  v21 = a4;
  v22 = [v17 calendarWithIdentifier:v18];
  v23 = [MEMORY[0x277CBEBA8] timeZoneForSecondsFromGMT:0];
  [v22 setTimeZone:v23];
  v24 = objc_alloc_init(MEMORY[0x277CCA960]);
  [v24 setDateFormat:@"yyyy-MM-dd"];
  [v24 setCalendar:v22];
  v25 = [v24 stringFromDate:v20];

  v66 = v25;
  v69 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@.%@.%@", v19, v21, v25];

  v26 = +[ENLoggingPrefs sharedENLoggingPrefs];
  LODWORD(v21) = [v26 isSensitiveLoggingAllowed];

  if (v21 && gLogCategory_ENTextMessageManager <= 30 && (gLogCategory_ENTextMessageManager != -1 || _LogCategory_Initialize()))
  {
    [ENTextMessageManager _verifyTextMessage:phoneNumber:verificationDate:publicKey:publicKeyVersion:reportType:outError:];
  }

  v27 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v28 = [v27 isSensitiveLoggingAllowed];

  if (v28 && gLogCategory_ENTextMessageManager <= 10 && (gLogCategory_ENTextMessageManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v67 = v15;
  if (v15 && v16)
  {
    v29 = [v14 verificationString];
    v30 = v29;
    if (!v29)
    {
      v55 = v23;
      if (a9)
      {
        ENErrorF();
        *a9 = v57 = 0;
      }

      else
      {
        v57 = 0;
      }

      v56 = v66;
      goto LABEL_41;
    }

    v65 = v29;
    v31 = MEMORY[0x277CCACA0];
    v32 = [v14 verificationString];
    v33 = [v31 stringWithFormat:@"%@.%@", v69, v32];

    v34 = +[ENLoggingPrefs sharedENLoggingPrefs];
    LODWORD(v32) = [v34 isSensitiveLoggingAllowed];

    if (v32 && gLogCategory_ENTextMessageManager <= 30 && (gLogCategory_ENTextMessageManager != -1 || _LogCategory_Initialize()))
    {
      [ENTextMessageManager _verifyTextMessage:phoneNumber:verificationDate:publicKey:publicKeyVersion:reportType:outError:];
    }

    v68 = [v14 signature];
    v35 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v36 = [v35 isSensitiveLoggingAllowed];

    if (v36 && gLogCategory_ENTextMessageManager <= 30 && (gLogCategory_ENTextMessageManager != -1 || _LogCategory_Initialize()))
    {
      [ENTextMessageManager _verifyTextMessage:phoneNumber:verificationDate:publicKey:publicKeyVersion:reportType:outError:];
    }

    if (!v68)
    {
      v55 = v23;
      v56 = v25;
      if (a9)
      {
        ENErrorF();
        *a9 = v57 = 0;
      }

      else
      {
        v57 = 0;
      }

      v30 = v65;
      goto LABEL_40;
    }

    v37 = [v14 message];
    if (([v37 containsString:v16] & 1) == 0)
    {
      v55 = v23;
      if (a9)
      {
        ENErrorF();
        *a9 = v50 = 0;
      }

      else
      {
        v50 = 0;
      }

      v30 = v65;
      v56 = v66;
LABEL_39:

      v57 = v50;
LABEL_40:

LABEL_41:
      goto LABEL_42;
    }

    v62 = v37;
    v63 = v23;
    v64 = v16;
    v38 = [v33 dataUsingEncoding:4];
    v39 = [v14 signature];
    v40 = [v39 en_base64PaddedString];

    v61 = v40;
    v41 = [objc_alloc(MEMORY[0x277CBEA98]) initWithBase64EncodedString:v40 options:1];
    error = 0;
    v42 = [v15 keyRef];
    v43 = SecKeyVerifySignature(v42, *MEMORY[0x277CDC2F8], v38, v41, &error);
    v44 = error;
    if (!error)
    {
LABEL_34:
      v50 = v43 != 0;
      if (v43)
      {
        v59 = v41;
        v51 = v38;
        v52 = [v14 testVerificationCode];
        textMessageHashes = self->_textMessageHashes;
        v54 = [MEMORY[0x277CBEAA0] date];
        [(NSMutableDictionary *)textMessageHashes setObject:v54 forKey:v52];

        [(ENTextMessageManager *)self purgeOldHashes];
        if (a9)
        {
          *a9 = 0;
        }

        v38 = v51;
        v41 = v59;
      }

      v55 = v63;
      v16 = v64;
      v30 = v65;
      v56 = v66;
      v37 = v62;
      goto LABEL_39;
    }

    v45 = [(__CFError *)error domain];
    if ([v45 isEqualToString:*MEMORY[0x277CCA598]])
    {
      v46 = v38;
      v47 = [(__CFError *)v44 code];

      v48 = v47 + 0x10000;
      v38 = v46;
      if (v48 == -2272)
      {
LABEL_31:
        if (a9)
        {
          v49 = v44;
          *a9 = v44;
        }

        goto LABEL_34;
      }
    }

    else
    {
    }

    if (gLogCategory__ENTextMessageManager <= 90 && (gLogCategory__ENTextMessageManager != -1 || _LogCategory_Initialize()))
    {
      [ENTextMessageManager _verifyTextMessage:phoneNumber:verificationDate:publicKey:publicKeyVersion:reportType:outError:];
    }

    goto LABEL_31;
  }

  v55 = v23;
  v56 = v25;
  if (a9)
  {
    ENErrorF();
    *a9 = v57 = 0;
  }

  else
  {
    v57 = 0;
  }

LABEL_42:

  return v57;
}

- (ENTextMessageManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_readIfNecessaryWithError:(id *)a3
{
  v24[3] = *MEMORY[0x277D85DE8];
  v5 = [(ENSecureArchiveFileWrapper *)self->_textMessageHistoryFileWrapper openWithError:?];
  if (v5)
  {
    if (!self->_textMessageHashes)
    {
      v6 = MEMORY[0x277CBEB90];
      v24[0] = objc_opt_class();
      v24[1] = objc_opt_class();
      v24[2] = objc_opt_class();
      v7 = [MEMORY[0x277CBEA68] arrayWithObjects:v24 count:3];
      v8 = [v6 setWithArray:v7];

      textMessageHistoryFileWrapper = self->_textMessageHistoryFileWrapper;
      v23 = 0;
      v10 = [(ENSecureArchiveFileWrapper *)textMessageHistoryFileWrapper readObject:&v23 ofClasses:v8 error:a3];
      v11 = v23;
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = [MEMORY[0x277CBEB30] dictionaryWithDictionary:v11];
      }

      else
      {
        v13 = *a3;
        v14 = [v13 domain];
        if ([v14 isEqualToString:*MEMORY[0x277CC5BD0]])
        {
          v15 = [v13 code];

          if (v15 == 16)
          {

            LOBYTE(v5) = 0;
            goto LABEL_18;
          }
        }

        else
        {
        }

        v12 = [MEMORY[0x277CBEB30] dictionaryWithCapacity:1];
      }

      textMessageHashes = self->_textMessageHashes;
      self->_textMessageHashes = v12;
    }

    v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v18 = [v17 isSensitiveLoggingAllowed];

    if (v18 && gLogCategory_ENTextMessageManager <= 10 && (gLogCategory_ENTextMessageManager != -1 || _LogCategory_Initialize()))
    {
      v21 = self->_textMessageHashes;
      v22 = *a3;
      LogPrintF();
    }

    LOBYTE(v5) = 1;
  }

LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)verifyTextMessage:(id)a3 phoneNumber:(id)a4 verificationDate:(id)a5 publicKey:(id)a6 publicKeyVersion:(id)a7 userReport:(BOOL *)a8 outError:(id *)a9
{
  v70 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v64 = a4;
  v16 = a5;
  v63 = a6;
  v17 = a7;
  if (!self->_textMessageHashes && ![(ENTextMessageManager *)self _readIfNecessaryWithError:a9])
  {
    v44 = 0;
    goto LABEL_58;
  }

  v18 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v19 = [v18 isSensitiveLoggingAllowed];

  if (v19 && gLogCategory_ENTextMessageManager <= 10 && (gLogCategory_ENTextMessageManager != -1 || _LogCategory_Initialize()))
  {
    textMessageHashes = self->_textMessageHashes;
    LogPrintF();
  }

  v20 = [v15 testVerificationCode];
  if (v20)
  {
    v21 = [(NSMutableDictionary *)self->_textMessageHashes objectForKey:v20];

    if (!v21)
    {
      v60 = v20;
      v22 = v16;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v23 = [&unk_285D6E108 countByEnumeratingWithState:&v65 objects:v69 count:16];
      v62 = v15;
      if (v23)
      {
        v24 = v23;
        v59 = a8;
        v25 = 0;
        v61 = *v66;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v66 != v61)
            {
              objc_enumerationMutation(&unk_285D6E108);
            }

            v27 = *(*(&v65 + 1) + 8 * i);
            v28 = +[ENLoggingPrefs sharedENLoggingPrefs];
            v29 = [v28 isSensitiveLoggingAllowed];

            if (v29 && gLogCategory_ENTextMessageManager <= 30 && (gLogCategory_ENTextMessageManager != -1 || _LogCategory_Initialize()))
            {
              v57 = v63;
              v58 = v17;
              v55 = v64;
              v56 = v22;
              v52 = v27;
              v54 = v15;
              LogPrintF();
            }

            v30 = [OUTLINED_FUNCTION_0() _verifyTextMessage:? phoneNumber:? verificationDate:? publicKey:? publicKeyVersion:? reportType:? outError:?];
            v31 = 0;
            v25 = v31;
            if (v30)
            {
              goto LABEL_27;
            }

            v32 = [v22 dateByAddingTimeInterval:-86400.0];
            v33 = +[ENLoggingPrefs sharedENLoggingPrefs];
            v34 = [v33 isSensitiveLoggingAllowed];

            if (v34 && gLogCategory_ENTextMessageManager <= 30 && (gLogCategory_ENTextMessageManager != -1 || _LogCategory_Initialize()))
            {
              v52 = v32;
              LogPrintF();
            }

            v35 = [OUTLINED_FUNCTION_0() _verifyTextMessage:? phoneNumber:? verificationDate:? publicKey:? publicKeyVersion:? reportType:? outError:?];
            v25 = 0;

            if (v35)
            {
LABEL_27:
              v36 = 1;
            }

            else
            {

              v37 = [v22 dateByAddingTimeInterval:86400.0];
              v38 = +[ENLoggingPrefs sharedENLoggingPrefs];
              v39 = [v38 isSensitiveLoggingAllowed];

              if (v39 && gLogCategory_ENTextMessageManager <= 30 && (gLogCategory_ENTextMessageManager != -1 || _LogCategory_Initialize()))
              {
                v52 = v37;
                LogPrintF();
              }

              v36 = [OUTLINED_FUNCTION_0() _verifyTextMessage:? phoneNumber:? verificationDate:? publicKey:? publicKeyVersion:? reportType:? outError:?];
              v25 = 0;
            }

            v40 = [ENLoggingPrefs sharedENLoggingPrefs:v52];
            v41 = [v40 isSensitiveLoggingAllowed];

            if (v41 && gLogCategory_ENTextMessageManager <= 40 && (gLogCategory_ENTextMessageManager != -1 || _LogCategory_Initialize()))
            {
              v42 = "no";
              if (v36)
              {
                v42 = "yes";
              }

              v51 = v42;
              v54 = v27;
              LogPrintF();
            }

            if (v36)
            {
              v43 = [v27 isEqualToString:@"User Report"];
              v44 = 1;
              if (v43)
              {
                *v59 = 1;
              }

              goto LABEL_51;
            }

            v15 = v62;
          }

          v24 = [&unk_285D6E108 countByEnumeratingWithState:&v65 objects:v69 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v25 = 0;
      }

      if (a9)
      {
        v45 = v25;
        v44 = 0;
        *a9 = v25;
      }

      else
      {
        v44 = 0;
      }

LABEL_51:
      v16 = v22;
      v20 = v60;
      v46 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v47 = [v46 isSensitiveLoggingAllowed];

      if (v47 && gLogCategory_ENTextMessageManager <= 10 && (gLogCategory_ENTextMessageManager != -1 || _LogCategory_Initialize()))
      {
        v53 = self->_textMessageHashes;
        LogPrintF();
      }

      v15 = v62;
      goto LABEL_57;
    }

    if (a9)
    {
      goto LABEL_62;
    }

LABEL_63:
    v44 = 0;
    goto LABEL_57;
  }

  if (!a9)
  {
    goto LABEL_63;
  }

LABEL_62:
  ENErrorF();
  *a9 = v44 = 0;
LABEL_57:

LABEL_58:
  v48 = *MEMORY[0x277D85DE8];
  return v44;
}

- (void)initWithDirectoryURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENTextMessageManager.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"directoryPath != nil"}];
}

- (uint64_t)activateIfNeeded
{
  if (gLogCategory__ENTextMessageManager <= 90)
  {
    if (gLogCategory__ENTextMessageManager != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

@end