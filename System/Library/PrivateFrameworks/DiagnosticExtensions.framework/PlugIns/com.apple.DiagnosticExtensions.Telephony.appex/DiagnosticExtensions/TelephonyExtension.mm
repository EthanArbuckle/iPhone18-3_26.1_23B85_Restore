@interface TelephonyExtension
- (TelephonyExtension)init;
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters;
- (void)addToAttachmentList:(id)list allowDelete:(id)delete;
- (void)dealloc;
- (void)setupWithParameters:(id)parameters;
- (void)teardownWithParameters:(id)parameters;
- (void)validateCommands:(id)commands;
@end

@implementation TelephonyExtension

- (TelephonyExtension)init
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[TelephonyExtension init]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v11.receiver = self;
  v11.super_class = TelephonyExtension;
  v4 = [(TelephonyExtension *)&v11 init];
  v5 = v4;
  if (v4)
  {
    if (capabilities::radio::radioUnknown(v4))
    {
      fBasebandLogDEHelper = v5->fBasebandLogDEHelper;
      v5->fBasebandLogDEHelper = 0;

      v7 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Radio not supported", buf, 2u);
      }
    }

    else
    {
      v8 = objc_alloc_init(BasebandLogDEHelper);
      v9 = v5->fBasebandLogDEHelper;
      v5->fBasebandLogDEHelper = v8;
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[TelephonyExtension dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = TelephonyExtension;
  [(TelephonyExtension *)&v4 dealloc];
}

- (void)setupWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[TelephonyExtension setupWithParameters:]";
    v10 = 2112;
    v11 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v8, 0x16u);
  }

  if (self->fBasebandLogDEHelper)
  {
    if ((TelephonyUtilIsInternalBuild() & 1) == 0 && ![self->fBasebandLogDEHelper checkifDefaultBasebandProfileInstalled])
    {
      v6 = [NSString stringWithUTF8String:"/System/Library/PrivateFrameworks/DiagnosticExtensions.framework/PlugIns/com.apple.DiagnosticExtensions.Telephony.appex/basebandlog.plist"];
      [self->fBasebandLogDEHelper enableBasebandLog:v6];
    }
  }

  else
  {
    v7 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "No BasebanadLog DE Helper", &v8, 2u);
    }
  }
}

- (void)teardownWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[TelephonyExtension teardownWithParameters:]";
    v8 = 2112;
    v9 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v6, 0x16u);
  }

  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && ![self->fBasebandLogDEHelper checkifDefaultBasebandProfileInstalled])
  {
    [self->fBasebandLogDEHelper disableBasebandLog];
  }
}

- (void)validateCommands:(id)commands
{
  commandsCopy = commands;
  v4 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[TelephonyExtension validateCommands:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  v5 = [commandsCopy valueForKey:@"DEExtensionHostAppKey"];
  v6 = [commandsCopy valueForKey:@"CellularExtensionCommandKey"];
  v7 = [commandsCopy valueForKey:@"CellularExtensionFindLogsKey"];
  if (v6)
  {
    v8 = [(__CFString *)v6 isEqualToString:@"attach"];
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if (v9 == 1)
    {
      v10 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CellularExtensionCommandKey is 'attach' but no CellularExtensionFindLogsKey provided, will attach the last log dump", &v12, 2u);
      }

      goto LABEL_12;
    }
  }

  else
  {
    if ([v5 isEqualToString:@"com.apple.symptomsd"])
    {

      v6 = @"attach";
LABEL_12:
      v7 = @"basebandLogLastDumped";
      goto LABEL_16;
    }

    v11 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CellularExtensionCommandKey is null, will attach the last dumped log and new dump", &v12, 2u);
    }

    v6 = @"dump_attach";
    v7 = @"basebandLogPrevious";
  }

LABEL_16:
  [commandsCopy setValue:v6 forKey:@"CellularExtensionCommandKey"];
  [commandsCopy setValue:v7 forKey:@"CellularExtensionFindLogsKey"];
}

- (id)attachmentList
{
  fAttachmentsList = self->fAttachmentsList;
  if (fAttachmentsList && [(NSMutableArray *)fAttachmentsList count])
  {
    v4 = [[NSMutableArray alloc] initWithArray:self->fAttachmentsList];
    [(NSMutableArray *)self->fAttachmentsList removeAllObjects];
    v5 = v4;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (void)addToAttachmentList:(id)list allowDelete:(id)delete
{
  listCopy = list;
  deleteCopy = delete;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = listCopy;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v6)
  {
    v23 = *v31;
    *&v7 = 138412546;
    v20 = v7;
    do
    {
      v24 = v6;
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = self->fAttachmentsList;
        v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v11)
        {
          v12 = *v27;
LABEL_8:
          v13 = 0;
          while (1)
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(v10);
            }

            path = [*(*(&v26 + 1) + 8 * v13) path];
            lastPathComponent = [path lastPathComponent];
            v16 = [v9 containsString:lastPathComponent];

            if (v16)
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v26 objects:v38 count:16];
              if (v11)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:

          v10 = [DEAttachmentItem attachmentWithPath:v9];
          [(NSMutableArray *)v10 setDeleteOnAttach:deleteCopy];
          if ([v9 hasSuffix:@"tar.gz"])
          {
            v17 = &__kCFBooleanFalse;
          }

          else
          {
            v17 = &__kCFBooleanTrue;
          }

          [(NSMutableArray *)v10 setShouldCompress:v17, v20];
          [(NSMutableArray *)self->fAttachmentsList addObject:v10];
          v18 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            intValue = [deleteCopy intValue];
            *buf = v20;
            v35 = v9;
            v36 = 1024;
            v37 = intValue;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Attaching file: %@, deleteOnAttach: %d", buf, 0x12u);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v6);
  }
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = "[TelephonyExtension attachmentsForParameters:]";
    v42 = 2112;
    v43 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  fBasebandLogDEHelper = self->fBasebandLogDEHelper;
  if (!fBasebandLogDEHelper)
  {
    v16 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      attachmentList = &__NSArray0__struct;
      goto LABEL_46;
    }

    *buf = 0;
    v17 = "No BasebanadLog DE Helper";
LABEL_34:
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_13;
  }

  if (![fBasebandLogDEHelper checkifBasebandTraceEnabled])
  {
    v16 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v17 = "Baseband trace is not enabled";
    goto LABEL_34;
  }

  [self->fBasebandLogDEHelper start];
  v7 = objc_alloc_init(NSMutableArray);
  fAttachmentsList = self->fAttachmentsList;
  self->fAttachmentsList = v7;

  [(TelephonyExtension *)self validateCommands:parametersCopy];
  v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "After command validation: %@", buf, 0xCu);
  }

  v10 = [parametersCopy valueForKey:@"DEExtensionHostAppKey"];
  v11 = [parametersCopy valueForKey:@"CellularExtensionCommandKey"];
  v39 = [parametersCopy valueForKey:@"CellularExtensionFindLogsKey"];
  v12 = [parametersCopy valueForKey:@"CellularExtensionSnapshotOsLogKey"];
  bOOLValue = [v12 BOOLValue];

  v14 = [parametersCopy valueForKey:@"CellularExtensionDumpReasonKey"];
  if (v10)
  {
    if ([v11 isEqualToString:@"dump"])
    {
      v15 = [self->fBasebandLogDEHelper dumpTelephonyLogs:v10];
    }

    else if ([v11 isEqualToString:@"dump_attach"])
    {
      if ([v39 isEqualToString:@"basebandLogPrevious"])
      {
        v20 = [self->fBasebandLogDEHelper dumpTelephonyLogs:v10];
        v21 = [self->fBasebandLogDEHelper previousDumpTimestamp:v20];
        if (v21)
        {
          v22 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Attaching the previous dump: %@", buf, 0xCu);
          }

          v23 = [self->fBasebandLogDEHelper collectAttachments:v21];
          [(TelephonyExtension *)self addToAttachmentList:v23 allowDelete:&__kCFBooleanFalse];
        }

        else
        {
          v34 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "No previous dump found", buf, 2u);
          }
        }

        v35 = [self->fBasebandLogDEHelper collectAttachments:v20];
        [(TelephonyExtension *)self addToAttachmentList:v35];
      }

      else
      {
        v29 = self->fBasebandLogDEHelper;
        if (v39)
        {
          v30 = [(BasebandLogDEHelper *)v29 collectAttachments:?];
          [(TelephonyExtension *)self addToAttachmentList:v30 allowDelete:&__kCFBooleanFalse];

          v31 = self->fBasebandLogDEHelper;
          [(BasebandLogDEHelper *)v31 dumpTelephonyLogs:v10];
        }

        else
        {
          v31 = self->fBasebandLogDEHelper;
          [(BasebandLogDEHelper *)v29 dumpTelephonyLogs:v10];
        }
        v20 = ;
        v21 = [(BasebandLogDEHelper *)v31 collectAttachments:v20];
        [(TelephonyExtension *)self addToAttachmentList:v21];
      }

      v36 = [self->fBasebandLogDEHelper collectAttachments:@"Crash"];
      [(TelephonyExtension *)self addToAttachmentList:v36];
    }

    else if ([v11 isEqualToString:@"dumpWithBasebandReset"])
    {
      if (v39)
      {
        v24 = [self->fBasebandLogDEHelper collectAttachments:v39];
        [(TelephonyExtension *)self addToAttachmentList:v24 allowDelete:&__kCFBooleanFalse];
      }

      v25 = [self->fBasebandLogDEHelper collectAttachments:@"Crash"];
      [(TelephonyExtension *)self addToAttachmentList:v25];

      v26 = self->fBasebandLogDEHelper;
      v27 = [(BasebandLogDEHelper *)v26 dumpLogWithBasebandReset:v10];
      v28 = [(BasebandLogDEHelper *)v26 collectAttachments:v27];
      [(TelephonyExtension *)self addToAttachmentList:v28];
    }

    else if ([v11 isEqualToString:@"attach"])
    {
      if (v39)
      {
        v32 = [self->fBasebandLogDEHelper collectAttachments:v39];
        [(TelephonyExtension *)self addToAttachmentList:v32 allowDelete:&__kCFBooleanFalse];
      }
    }

    else
    {
      v33 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v11;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Command [%@] is not supported", buf, 0xCu);
      }
    }

    v37 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Telephony Diagnostic Extension completed.", buf, 2u);
    }

    [self->fBasebandLogDEHelper stop];
    attachmentList = [(TelephonyExtension *)self attachmentList];
  }

  else
  {
    v19 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Host info is null", buf, 2u);
    }

    attachmentList = &__NSArray0__struct;
  }

LABEL_46:

  return attachmentList;
}

@end