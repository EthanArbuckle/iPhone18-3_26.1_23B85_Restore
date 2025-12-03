@interface CellularExtension
- (CellularExtension)init;
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters;
- (void)addToAttachmentList:(id)list allowDelete:(id)delete;
- (void)dealloc;
- (void)validateCommands:(id)commands;
@end

@implementation CellularExtension

- (CellularExtension)init
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cellular Diagnostic Extension init", buf, 2u);
  }

  v14.receiver = self;
  v14.super_class = CellularExtension;
  v4 = [(CellularExtension *)&v14 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  if (capabilities::radio::radioUnknown(v4))
  {
    fAttachmentsList = v5->fAttachmentsList;
    v5->fAttachmentsList = 0;

    fBasebandLogDEHelper = v5->fBasebandLogDEHelper;
    v5->fBasebandLogDEHelper = 0;

    v8 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Radio not supported", buf, 2u);
    }

    return v5;
  }

  v10 = objc_alloc_init(NSMutableArray);
  v11 = v5->fAttachmentsList;
  v5->fAttachmentsList = v10;

  v12 = objc_alloc_init(BasebandLogDEHelper);
  v13 = v5->fBasebandLogDEHelper;
  v5->fBasebandLogDEHelper = v12;

  return v5;
}

- (void)dealloc
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cellular Diagnostic Extension dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = CellularExtension;
  [(CellularExtension *)&v4 dealloc];
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

- (void)validateCommands:(id)commands
{
  commandsCopy = commands;
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  v5 = [commandsCopy valueForKey:@"DEExtensionHostAppKey"];
  v6 = [commandsCopy valueForKey:@"CellularExtensionCommandKey"];
  v7 = [commandsCopy valueForKey:@"CellularExtensionFindLogsKey"];
  v8 = [commandsCopy valueForKey:@"CellularExtensionSnapshotOsLogKey"];
  if (v6)
  {
LABEL_7:
    if (!IsInternalBuild)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (![v5 isEqualToString:@"Feedback Assistant"])
  {
    if (![v5 isEqualToString:@"com.apple.symptomsd"])
    {
      v10 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CellularExtensionCommandKey is null, will attach the last dumped log and new dump", buf, 2u);
      }

      v6 = @"dump_attach";
      v7 = @"basebandLogPrevious";
      if (!IsInternalBuild)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    v6 = @"attach";
    v7 = @"basebandLogLastDumped";
    goto LABEL_7;
  }

  v6 = @"runBasebandDiagnostics";
  v7 = @"basebandLogLastDumped";
  if (!IsInternalBuild)
  {
LABEL_15:
    v11 = [(__CFString *)v6 isEqualToString:@"attach"];
    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    if (v12 == 1)
    {
      v13 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "CellularExtensionCommandKey is 'attach' but no CellularExtensionFindLogsKey provided, will attach the last log dump", v15, 2u);
      }

      v7 = @"basebandLogLastDumped";
    }

    goto LABEL_22;
  }

LABEL_8:
  if (![(__CFString *)v6 isEqualToString:@"runBasebandDiagnostics"])
  {
    goto LABEL_15;
  }

  v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Baseband diagnostics is not allowed for internal build, will dump and attach the log", v16, 2u);
  }

  v6 = @"dump_attach";
LABEL_22:
  [commandsCopy setValue:v6 forKey:@"CellularExtensionCommandKey"];
  [commandsCopy setValue:v7 forKey:@"CellularExtensionFindLogsKey"];
  if (!v8)
  {
    v14 = &off_100031560;
    if (([v5 isEqualToString:@"com.apple.symptomsd"] & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"Feedback Assistant"))
    {
      v14 = &off_100031578;
    }

    [commandsCopy setValue:v14 forKey:@"CellularExtensionSnapshotOsLogKey"];
  }
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  if (self->fBasebandLogDEHelper)
  {
    v5 = [[NSMutableDictionary alloc] initWithDictionary:parametersCopy];
    v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cellular Diagnostic Extension started w/ %@", buf, 0xCu);
    }

    [(CellularExtension *)self validateCommands:v5];
    v7 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "After command validation: %@", buf, 0xCu);
    }

    [self->fBasebandLogDEHelper start];
    v8 = [v5 valueForKey:@"DEExtensionHostAppKey"];
    v9 = [v5 valueForKey:@"CellularExtensionCommandKey"];
    v45 = [v5 valueForKey:@"CellularExtensionFindLogsKey"];
    v10 = [v5 valueForKey:@"CellularExtensionSnapshotOsLogKey"];
    bOOLValue = [v10 BOOLValue];

    v12 = [v5 valueForKey:@"CellularExtensionDumpReasonKey"];
    if (!v8)
    {
      v21 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Host info is null", buf, 2u);
      }

      attachmentList = &__NSArray0__struct;
      goto LABEL_52;
    }

    if ([v9 isEqualToString:@"runBasebandDiagnostics"])
    {
      if (v45)
      {
        v13 = [self->fBasebandLogDEHelper collectAttachments:v45];
        [(CellularExtension *)self addToAttachmentList:v13 allowDelete:&__kCFBooleanFalse];
      }

      checkifBasebandTraceEnabled = [self->fBasebandLogDEHelper checkifBasebandTraceEnabled];
      if ((checkifBasebandTraceEnabled & 1) == 0)
      {
        [self->fBasebandLogDEHelper installDELoggingProfile];
      }

      [self->fBasebandLogDEHelper triggerBasebandDiagnostics];
      v15 = [self->fBasebandLogDEHelper collectAttachments:@"Crash"];
      [(CellularExtension *)self addToAttachmentList:v15];

      fBasebandLogDEHelper = self->fBasebandLogDEHelper;
      v17 = [fBasebandLogDEHelper dumpTelephonyLogs:v8];
      v18 = [fBasebandLogDEHelper collectAttachments:v17];
      [(CellularExtension *)self addToAttachmentList:v18];

      if (checkifBasebandTraceEnabled)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if ([v9 isEqualToString:@"start"])
      {
        if (![self->fBasebandLogDEHelper checkifDefaultBasebandProfileInstalled])
        {
          [self->fBasebandLogDEHelper installDELoggingProfile];
        }

        goto LABEL_49;
      }

      if ([v9 isEqualToString:@"dump"])
      {
        v22 = [self->fBasebandLogDEHelper dumpTelephonyLogs:v8];
        goto LABEL_49;
      }

      if ([v9 isEqualToString:@"dump_attach"])
      {
        if ([v45 isEqualToString:@"basebandLogPrevious"])
        {
          v23 = [self->fBasebandLogDEHelper dumpTelephonyLogs:v8];
          v24 = [self->fBasebandLogDEHelper previousDumpTimestamp:v23];
          if (v24)
          {
            v25 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v47 = v24;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Attaching the previous dump: %@", buf, 0xCu);
            }

            v26 = [self->fBasebandLogDEHelper collectAttachments:v24];
            [(CellularExtension *)self addToAttachmentList:v26 allowDelete:&__kCFBooleanFalse];
          }

          else
          {
            v39 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "No previous dump found", buf, 2u);
            }
          }

          v40 = [self->fBasebandLogDEHelper collectAttachments:v23];
          [(CellularExtension *)self addToAttachmentList:v40];
        }

        else
        {
          v32 = self->fBasebandLogDEHelper;
          if (v45)
          {
            v33 = [(BasebandLogDEHelper *)v32 collectAttachments:?];
            [(CellularExtension *)self addToAttachmentList:v33 allowDelete:&__kCFBooleanFalse];

            v34 = self->fBasebandLogDEHelper;
            [(BasebandLogDEHelper *)v34 dumpTelephonyLogs:v8];
          }

          else
          {
            v34 = self->fBasebandLogDEHelper;
            [(BasebandLogDEHelper *)v32 dumpTelephonyLogs:v8];
          }
          v23 = ;
          v24 = [(BasebandLogDEHelper *)v34 collectAttachments:v23];
          [(CellularExtension *)self addToAttachmentList:v24];
        }

        v41 = [self->fBasebandLogDEHelper collectAttachments:@"Crash"];
        [(CellularExtension *)self addToAttachmentList:v41];

        goto LABEL_49;
      }

      if ([v9 isEqualToString:@"dumpWithBasebandReset"])
      {
        if (v45)
        {
          v27 = [self->fBasebandLogDEHelper collectAttachments:v45];
          [(CellularExtension *)self addToAttachmentList:v27 allowDelete:&__kCFBooleanFalse];
        }

        v28 = [self->fBasebandLogDEHelper collectAttachments:@"Crash"];
        [(CellularExtension *)self addToAttachmentList:v28];

        v29 = self->fBasebandLogDEHelper;
        v30 = [(BasebandLogDEHelper *)v29 dumpLogWithBasebandReset:v8];
        v31 = [(BasebandLogDEHelper *)v29 collectAttachments:v30];
        [(CellularExtension *)self addToAttachmentList:v31];

        goto LABEL_49;
      }

      if ([v9 isEqualToString:@"attach"])
      {
        if (v45)
        {
          v35 = [self->fBasebandLogDEHelper collectAttachments:v45];
          [(CellularExtension *)self addToAttachmentList:v35 allowDelete:&__kCFBooleanFalse];
        }

        goto LABEL_49;
      }

      if (![v9 isEqualToString:@"finish"])
      {
        v44 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v9;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Command [%@] is not supported", buf, 0xCu);
        }

        goto LABEL_49;
      }

      v36 = [self->fBasebandLogDEHelper dumpTelephonyLogs:v8];
      v37 = [self->fBasebandLogDEHelper collectAttachments:@"Crash"];
      [(CellularExtension *)self addToAttachmentList:v37];

      v38 = [self->fBasebandLogDEHelper collectAttachments:@"BasebandSnapshotFolder"];
      [(CellularExtension *)self addToAttachmentList:v38];

      if ([self->fBasebandLogDEHelper checkifDefaultBasebandProfileInstalled])
      {
LABEL_49:
        v42 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Cellular Diagnostic Extension completed.", buf, 2u);
        }

        [self->fBasebandLogDEHelper stop];
        attachmentList = [(CellularExtension *)self attachmentList];
LABEL_52:

        goto LABEL_53;
      }
    }

    [self->fBasebandLogDEHelper uninstallDELoggingProfile];
    goto LABEL_49;
  }

  v19 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "No BasebanadLog DE Helper", buf, 2u);
  }

  attachmentList = &__NSArray0__struct;
LABEL_53:

  return attachmentList;
}

@end