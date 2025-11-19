@interface HDHeadphoneAudioExposurePolicyDeterminer
+ (id)determinePreviousFireDateWithStore:(id)a3 error:(id *)a4;
@end

@implementation HDHeadphoneAudioExposurePolicyDeterminer

+ (id)determinePreviousFireDateWithStore:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v27 = 0;
  v6 = [v5 _fetchPreviousSevenDayLocalNotificationFireDateWithError:&v27];
  v7 = v27;
  if (!v7)
  {
    v26 = 0;
    v11 = [v5 _fetchPreviousSevenDayRemoteNotificationFireDateWithError:&v26];
    v8 = v26;
    if (v8)
    {
      if (a4)
      {
        v12 = v8;
        v10 = 0;
        *a4 = v8;
LABEL_29:

        goto LABEL_30;
      }

      _HKLogDroppedError();
LABEL_12:
      v10 = 0;
      goto LABEL_29;
    }

    if (!(v6 | v11))
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = objc_opt_class();
        *buf = 138543362;
        v29 = v15;
        _os_log_impl(&dword_251764000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Determiner returning nil", buf, 0xCu);
      }

      goto LABEL_12;
    }

    if (v6 && !v11)
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2C8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
      {
LABEL_17:
        v19 = v6;
LABEL_28:
        v10 = v19;
        goto LABEL_29;
      }

LABEL_16:
      v17 = v16;
      v18 = objc_opt_class();
      *buf = 138543362;
      v29 = v18;
      _os_log_impl(&dword_251764000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Determiner returning local notification fire date", buf, 0xCu);

      goto LABEL_17;
    }

    if (v6 || !v11)
    {
      v20 = [v6 hk_isAfterDate:v11];
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2C8];
      v21 = os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (!v21)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (v21)
      {
        goto LABEL_26;
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:
        v22 = v16;
        v23 = objc_opt_class();
        *buf = 138543362;
        v29 = v23;
        _os_log_impl(&dword_251764000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Determiner returning remote notification fire date", buf, 0xCu);
      }
    }

    v19 = v11;
    goto LABEL_28;
  }

  v8 = v7;
  if (a4)
  {
    v9 = v7;
    v10 = 0;
    *a4 = v8;
  }

  else
  {
    _HKLogDroppedError();
    v10 = 0;
  }

LABEL_30:

  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

@end