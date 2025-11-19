@interface ASSettingsTask
- (ASSettingsTask)init;
- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5;
- (BOOL)processContext:(id)a3;
- (id)requestBody;
- (int64_t)taskStatusForExchangeStatus:(int)a3;
- (void)finishWithError:(id)a3;
@end

@implementation ASSettingsTask

- (ASSettingsTask)init
{
  v5.receiver = self;
  v5.super_class = ASSettingsTask;
  v2 = [(ASTask *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ASSettingsTask *)v2 setGetters:0];
    [(ASSettingsTask *)v3 setSetters:0];
  }

  return v3;
}

- (id)requestBody
{
  v109 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 switchToCodePage:18];
  [v3 openTag:5];
  v4 = [(ASSettingsTask *)self getters];

  if (v4)
  {
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v5 = [(ASSettingsTask *)self getters];
    v6 = [v5 countByEnumeratingWithState:&v101 objects:v108 count:16];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = v6;
    v8 = *v102;
    v9 = *MEMORY[0x277D03EC8];
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v102 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v101 + 1) + 8 * i) intValue];
        if (v11 == 3)
        {
          v12 = 29;
          [v3 openTag:29];
          [v3 appendEmptyTag:7];
        }

        else
        {
          if (v11)
          {
            continue;
          }

          v12 = 9;
          [v3 openTag:9];
          [v3 openTag:7];
          [v3 appendTag:19 withStringContent:v9];
          [v3 closeTag:7];
        }

        [v3 closeTag:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v101 objects:v108 count:16];
      if (!v7)
      {
LABEL_14:

        break;
      }
    }
  }

  v13 = [(ASSettingsTask *)self setters];

  if (!v13)
  {
    goto LABEL_81;
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v14 = [(ASSettingsTask *)self setters];
  v15 = [v14 allKeys];

  obj = v15;
  v16 = [v15 countByEnumeratingWithState:&v97 objects:v107 count:16];
  if (!v16)
  {
    goto LABEL_80;
  }

  v17 = v16;
  v18 = *v98;
  v19 = *MEMORY[0x277D03EE8];
  v20 = *MEMORY[0x277D03EF8];
  v75 = *MEMORY[0x277D03ED8];
  v74 = *MEMORY[0x277D03EE0];
  v88 = *MEMORY[0x277D03EB8];
  v87 = *MEMORY[0x277D03ED0];
  v86 = *MEMORY[0x277D03EF0];
  v85 = *MEMORY[0x277D03EC0];
  v76 = *MEMORY[0x277D03EE8];
  v77 = *v98;
  v81 = *MEMORY[0x277D03EF8];
  do
  {
    v21 = 0;
    v78 = v17;
    do
    {
      if (*v98 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v80 = v21;
      v22 = *(*(&v97 + 1) + 8 * v21);
      v23 = [v22 intValue];
      if (v23)
      {
        if (v23 != 2)
        {
          goto LABEL_78;
        }

        v24 = [(ASSettingsTask *)self setters];
        v25 = [v24 objectForKeyedSubscript:v22];

        v26 = v25;
        if ([v25 count])
        {
          [v3 openTag:22];
          [v3 openTag:8];
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v27 = [v25 allKeys];
          v28 = [v27 countByEnumeratingWithState:&v93 objects:v106 count:16];
          if (!v28)
          {
            goto LABEL_48;
          }

          v29 = v28;
          v30 = *v94;
          while (1)
          {
            v31 = 0;
            v82 = v29;
            do
            {
              if (*v94 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v93 + 1) + 8 * v31);
              v33 = [v32 intValue];
              if (v33 <= 2)
              {
                if (v33)
                {
                  if (v33 == 1)
                  {
                    v34 = 24;
                  }

                  else
                  {
                    if (v33 != 2)
                    {
                      goto LABEL_46;
                    }

                    v34 = 25;
                  }
                }

                else
                {
                  v34 = 23;
                }

                goto LABEL_45;
              }

              if (v33 <= 4)
              {
                if (v33 == 3)
                {
                  v34 = 26;
                }

                else
                {
                  v34 = 27;
                }

                goto LABEL_45;
              }

              if (v33 == 5)
              {
                v34 = 28;
                goto LABEL_45;
              }

              if (v33 == 6)
              {
                v35 = [(ASTask *)self taskManager];
                v36 = [v35 account];
                [v36 protocol];
                v37 = v30;
                v38 = v27;
                v39 = v3;
                v40 = v26;
                v42 = v41 = self;
                v84 = [v42 sendUserAgentInDeviceInfo];

                self = v41;
                v26 = v40;
                v3 = v39;
                v27 = v38;
                v30 = v37;
                v29 = v82;

                v20 = v81;
                if (v84)
                {
                  v34 = 32;
LABEL_45:
                  v43 = [v26 objectForKeyedSubscript:v32];
                  [v3 appendTag:v34 withStringContent:v43];
                }
              }

LABEL_46:
              ++v31;
            }

            while (v29 != v31);
            v29 = [v27 countByEnumeratingWithState:&v93 objects:v106 count:16];
            if (!v29)
            {
LABEL_48:

              [v3 closeTag:8];
              v44 = 22;
              v19 = v76;
              v18 = v77;
              v17 = v78;
              goto LABEL_76;
            }
          }
        }
      }

      else
      {
        v45 = [(ASSettingsTask *)self setters];
        v46 = [v45 objectForKeyedSubscript:v22];

        v26 = v46;
        if (v46)
        {
          [v3 openTag:9];
          [v3 openTag:8];
          v47 = [v46 objectForKeyedSubscript:v19];

          v48 = v26;
          if (v47)
          {
            v49 = [v26 objectForKeyedSubscript:v19];
            [v3 appendTag:10 withIntContent:{objc_msgSend(v49, "intValue")}];
          }

          v50 = [v26 objectForKeyedSubscript:v20];

          if (v50)
          {
            v51 = [v26 objectForKeyedSubscript:v20];
            [v3 appendTag:11 withStringContent:v51];
          }

          v52 = [v26 objectForKeyedSubscript:v75];

          if (v52)
          {
            v53 = [v26 objectForKeyedSubscript:v75];
            [v3 appendTag:12 withStringContent:v53];
          }

          v54 = [v26 objectForKeyedSubscript:v74];
          v55 = v54;
          if (v54 && [v54 count])
          {
            v83 = v55;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v56 = v55;
            v57 = [v56 countByEnumeratingWithState:&v89 objects:v105 count:16];
            if (v57)
            {
              v58 = v57;
              v59 = *v90;
              do
              {
                for (j = 0; j != v58; ++j)
                {
                  if (*v90 != v59)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v61 = *(*(&v89 + 1) + 8 * j);
                  [v3 openTag:13];
                  v62 = [v61 objectForKeyedSubscript:v88];
                  v63 = v62;
                  if (v62)
                  {
                    v64 = [v62 intValue];
                    if (v64 <= 2)
                    {
                      [v3 appendEmptyTag:(v64 + 14)];
                    }
                  }

                  v65 = [v61 objectForKeyedSubscript:v87];

                  if (v65)
                  {
                    v66 = [v61 objectForKeyedSubscript:v87];
                    [v3 appendTag:17 withIntContent:{objc_msgSend(v66, "intValue")}];
                  }

                  v67 = [v61 objectForKeyedSubscript:v86];

                  if (v67)
                  {
                    v68 = [v61 objectForKeyedSubscript:v86];
                    [v3 appendTag:18 withStringContent:v68];
                  }

                  v69 = [v61 objectForKeyedSubscript:v85];

                  if (v69)
                  {
                    v70 = [v61 objectForKeyedSubscript:v85];
                    [v3 appendTag:19 withStringContent:v70];
                  }

                  [v3 closeTag:13];
                }

                v58 = [v56 countByEnumeratingWithState:&v89 objects:v105 count:16];
              }

              while (v58);
            }

            v19 = v76;
            v18 = v77;
            v17 = v78;
            v20 = v81;
            v55 = v83;
            v26 = v48;
          }

          [v3 closeTag:8];

          v44 = 9;
LABEL_76:
          [v3 closeTag:v44];
        }
      }

LABEL_78:
      v21 = v80 + 1;
    }

    while (v80 + 1 != v17);
    v17 = [obj countByEnumeratingWithState:&v97 objects:v107 count:16];
  }

  while (v17);
LABEL_80:

LABEL_81:
  [v3 closeTag:5];
  v71 = [v3 data];

  v72 = *MEMORY[0x277D85DE8];

  return v71;
}

- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5
{
  *a4 = 18;
  *a3 = 5;
  *a5 = 6;
  return 1;
}

- (BOOL)processContext:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self currentlyParsingItem];

  if (v5)
  {
    goto LABEL_4;
  }

  if (!self->super._haveSwitchedCodePage)
  {
    if (![v4 hasNumberOfTokensRemaining:2])
    {
      v10 = 0;
      goto LABEL_6;
    }

    if ([v4 currentByte])
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to Settings code page"];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASSettingsTask.m", 186, objc_msgSend(v4, "curOffset")];
      v15 = DALoggingwithCategory();
      v16 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v15, v16))
      {
        *buf = 134217984;
        v20 = [v4 curOffset];
        _os_log_impl(&dword_24A0AC000, v15, v16, "Failure at index %lld:", buf, 0xCu);
      }

      v17 = DALoggingwithCategory();
      if (!os_log_type_enabled(v17, v16))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v20 = v13;
    }

    else
    {
      [v4 advanceOffsetByAmount:1];
      if ([v4 currentByte] == 18)
      {
        [v4 advanceOffsetByAmount:1];
        [v4 setCodePage:18];
        self->super._haveSwitchedCodePage = 1;
        goto LABEL_3;
      }

      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to Settings code page"];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASSettingsTask.m", 186, objc_msgSend(v4, "curOffset")];
      v18 = DALoggingwithCategory();
      v16 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v18, v16))
      {
        *buf = 134217984;
        v20 = [v4 curOffset];
        _os_log_impl(&dword_24A0AC000, v18, v16, "Failure at index %lld:", buf, 0xCu);
      }

      v17 = DALoggingwithCategory();
      if (!os_log_type_enabled(v17, v16))
      {
LABEL_21:

        [v4 setParseErrorReason:v14];
        goto LABEL_5;
      }

      *buf = 138412290;
      v20 = v13;
    }

    _os_log_impl(&dword_24A0AC000, v17, v16, "failure reason was %@", buf, 0xCu);
    goto LABEL_21;
  }

LABEL_3:
  v6 = objc_opt_new();
  [(ASTask *)self setCurrentlyParsingItem:v6];

LABEL_4:
  v7 = [(ASTask *)self currentlyParsingItem];
  v8 = [(ASTask *)self taskManager];
  v9 = [v8 account];
  [v7 parseASParseContext:v4 root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:v9];

LABEL_5:
  v10 = 1;
LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)finishWithError:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self taskStatusForError:v4];
  if (v4)
  {
    v6 = DALoggingwithCategory();
    v7 = v6;
    if (v5 == -1)
    {
      v13 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v6, v13))
      {
        *buf = 138412290;
        v25 = objc_opt_class();
        v14 = v25;
        _os_log_impl(&dword_24A0AC000, v7, v13, "%@ cancelled", buf, 0xCu);
      }

      v10 = 0;
      v5 = -1;
    }

    else
    {
      v8 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v6, v8))
      {
        *buf = 138412546;
        v25 = objc_opt_class();
        v26 = 2112;
        v27 = v4;
        v9 = v25;
        _os_log_impl(&dword_24A0AC000, v7, v8, "%@ failed: %@", buf, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    v11 = [(ASTask *)self currentlyParsingItem];
    v10 = v11;
    if (v11)
    {
      v12 = [v11 status];
      v5 = -[ASSettingsTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [v12 intValue]);
    }
  }

  if (![(ASTask *)self attemptRetryWithStatus:v5 error:v4])
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __34__ASSettingsTask_finishWithError___block_invoke;
    v19 = &unk_278FC7D70;
    v20 = self;
    v23 = v5;
    v21 = v4;
    v22 = v10;
    [(ASTask *)self finishWithError:v21 afterDelegateCallout:&v16];
  }

  [(ASTask *)self setCurrentlyParsingItem:0, v16, v17, v18, v19, v20];

  v15 = *MEMORY[0x277D85DE8];
}

void __34__ASSettingsTask_finishWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained settingsTask:a1[4] completedWithStatus:a1[7] error:a1[5] response:a1[6]];
}

- (int64_t)taskStatusForExchangeStatus:(int)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if ((a3 - 1) >= 7)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138412546;
      v11 = v8;
      v12 = 1024;
      v13 = a3;
      _os_log_impl(&dword_24A0AC000, v5, v6, "%@: Unknown status code (%d)", &v10, 0x12u);
    }

    result = 10;
  }

  else
  {
    result = qword_24A14DC50[a3 - 1];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end