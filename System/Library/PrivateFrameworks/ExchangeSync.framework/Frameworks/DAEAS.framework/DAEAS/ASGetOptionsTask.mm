@interface ASGetOptionsTask
- (BOOL)processContext:(id)context;
- (id)_url;
- (void)finishWithError:(id)error;
- (void)setCommandArray:(id)array;
- (void)setVersionArray:(id)array;
@end

@implementation ASGetOptionsTask

- (BOOL)processContext:(id)context
{
  allHeaderFields = [(NSHTTPURLResponse *)self->super._response allHeaderFields];
  v5 = [allHeaderFields DAObjectForKeyCaseInsensitive:@"ms-asprotocolcommands"];
  v6 = [allHeaderFields DAObjectForKeyCaseInsensitive:@"ms-asprotocolversions"];
  v7 = [v6 componentsSeparatedByString:{@", "}];
  v8 = [v5 componentsSeparatedByString:{@", "}];
  [(ASGetOptionsTask *)self setVersionArray:v7];
  [(ASGetOptionsTask *)self setCommandArray:v8];

  return 1;
}

- (id)_url
{
  if (__usePort == 1)
  {
    taskManager = [(ASTask *)self taskManager];
    if ([taskManager port])
    {
      v4 = MEMORY[0x277CCACA8];
      taskManager2 = [(ASTask *)self taskManager];
      taskManager5 = [v4 stringWithFormat:@":%ld", objc_msgSend(taskManager2, "port")];
    }

    else
    {
      taskManager5 = &stru_285D39BD0;
    }

    v12 = MEMORY[0x277CCACA8];
    taskManager3 = [(ASTask *)self taskManager];
    if ([taskManager3 useSSL])
    {
      v13 = @"s";
    }

    else
    {
      v13 = &stru_285D39BD0;
    }

    taskManager4 = [(ASTask *)self taskManager];
    server = [taskManager4 server];
    v11 = [v12 stringWithFormat:@"http%@://%@%@/Microsoft-Server-ActiveSync?", v13, server, taskManager5];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    taskManager5 = [(ASTask *)self taskManager];
    if ([(__CFString *)taskManager5 useSSL])
    {
      v8 = @"s";
    }

    else
    {
      v8 = &stru_285D39BD0;
    }

    taskManager3 = [(ASTask *)self taskManager];
    taskManager4 = [taskManager3 server];
    v11 = [v7 stringWithFormat:@"http%@://%@/Microsoft-Server-ActiveSync", v8, taskManager4];
  }

  return v11;
}

- (void)finishWithError:(id)error
{
  v54[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = [(ASTask *)self taskStatusForError:errorCopy];
  v6 = errorCopy;
  if (v6)
  {
    v7 = DALoggingwithCategory();
    v8 = v7;
    if (v5 == -1)
    {
      v23 = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(v7, v23))
      {
        goto LABEL_14;
      }

      *buf = 138412290;
      v46 = objc_opt_class();
      v10 = v46;
      v11 = "%@ cancelled";
      v12 = v8;
      v13 = v23;
      v14 = 12;
    }

    else
    {
      v9 = *(MEMORY[0x277D03988] + 3);
      if (!os_log_type_enabled(v7, v9))
      {
        goto LABEL_14;
      }

      *buf = 138412546;
      v46 = objc_opt_class();
      v47 = 2112;
      v48 = v6;
      v10 = v46;
      v11 = "%@ failed: %@";
      v12 = v8;
      v13 = v9;
      v14 = 22;
    }

    _os_log_impl(&dword_24A0AC000, v12, v13, v11, buf, v14);

LABEL_14:
    v24 = *MEMORY[0x277CCA7E8];
    v54[0] = v6;
    v25 = *MEMORY[0x277D038E8];
    v53[0] = v24;
    v53[1] = v25;
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v54[1] = v26;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];

    domain = [v6 domain];
    v28 = [domain isEqualToString:*MEMORY[0x277CCA738]];

    if (v28)
    {
      code = [v6 code];
      if ((code + 1012) <= 0xC)
      {
        if (((1 << (code - 12)) & 0x1A08) != 0)
        {
          v30 = 101;
LABEL_32:
          v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03700] code:v30 userInfo:v17];

          versionArray = 0;
          commandArray = 0;
          goto LABEL_33;
        }

        if (code == -1012)
        {
LABEL_27:
          v30 = 102;
          goto LABEL_32;
        }
      }

      v33 = DALoggingwithCategory();
      v34 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v33, v34))
      {
        code2 = [v6 code];
        *buf = 134217984;
        v46 = code2;
        v36 = "Unhandled url error code of %ld";
        goto LABEL_30;
      }
    }

    else
    {
      domain2 = [v6 domain];
      v32 = [domain2 isEqualToString:@"ASHTTPConnectionErrorDomain"];

      if (!v32)
      {
        versionArray = 0;
        commandArray = 0;
        v22 = v6;
        goto LABEL_33;
      }

      if ([v6 code] == 401)
      {
        goto LABEL_27;
      }

      v33 = DALoggingwithCategory();
      v34 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v33, v34))
      {
        code3 = [v6 code];
        *buf = 134217984;
        v46 = code3;
        v36 = "Unhandled ASHTTP error code of %ld";
LABEL_30:
        _os_log_impl(&dword_24A0AC000, v33, v34, v36, buf, 0xCu);
      }
    }

    v30 = 100;
    goto LABEL_32;
  }

  commandArray = [(ASGetOptionsTask *)self commandArray];
  versionArray = [(ASGetOptionsTask *)self versionArray];
  if (([MEMORY[0x277D03910] ignoreSupportedCommands] || commandArray) && versionArray)
  {
    v17 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = objc_opt_class();
      v20 = MEMORY[0x277D03910];
      v21 = v19;
      *buf = 138413058;
      v46 = v19;
      v47 = 2112;
      v48 = commandArray;
      v49 = 2112;
      v50 = versionArray;
      v51 = 1024;
      ignoreSupportedCommands = [v20 ignoreSupportedCommands];
      _os_log_impl(&dword_24A0AC000, v17, v18, "%@ Parsed response with supportedCommands %@, supportedVersions %@.  IgnoreSupportedCommands = %d", buf, 0x26u);
    }

    v22 = 0;
    v5 = 2;
  }

  else
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:0 userInfo:0];
    v17 = DALoggingwithCategory();
    v37 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v17, v37))
    {
      *buf = 138412802;
      v46 = commandArray;
      v47 = 2112;
      v48 = versionArray;
      v49 = 1024;
      LODWORD(v50) = [MEMORY[0x277D03910] ignoreSupportedCommands];
      _os_log_impl(&dword_24A0AC000, v17, v37, "GetOptions request returned no error, but is missing one or more of supportedCommands (%@) or supportedVersions (%@).  IgnoreSupportedCommands = %d", buf, 0x1Cu);
    }

    v5 = 0;
  }

LABEL_33:

  if ([(ASTask *)self attemptRetryWithStatus:v5 error:v22])
  {
    [(ASTask *)self setCurrentlyParsingItem:0];
  }

  else
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __36__ASGetOptionsTask_finishWithError___block_invoke;
    v40[3] = &unk_278FC8028;
    v40[4] = self;
    v44 = v5;
    v41 = commandArray;
    v42 = versionArray;
    v43 = v22;
    [(ASTask *)self finishWithError:v6 afterDelegateCallout:v40];
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __36__ASGetOptionsTask_finishWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained getOptionsTask:a1[4] completedWithStatus:a1[8] supportedCommands:a1[5] supportedVersions:a1[6] error:a1[7]];
}

- (void)setVersionArray:(id)array
{
  if (self->_versionArray != array)
  {
    v4 = [array copy];
    versionArray = self->_versionArray;
    self->_versionArray = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setCommandArray:(id)array
{
  if (self->_commandArray != array)
  {
    v4 = [array copy];
    commandArray = self->_commandArray;
    self->_commandArray = v4;

    MEMORY[0x2821F96F8]();
  }
}

@end