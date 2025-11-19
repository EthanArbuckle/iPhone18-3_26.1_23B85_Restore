@interface ASFolderCreateTask
- (ASFolderCreateTask)initWithFolder:(id)a3 previousSyncKey:(id)a4 completionBlock:(id)a5;
- (int64_t)taskStatusForExchangeStatus:(int)a3;
- (void)_appendRequestBodyFolderDataToWBXMLData:(id)a3;
@end

@implementation ASFolderCreateTask

- (ASFolderCreateTask)initWithFolder:(id)a3 previousSyncKey:(id)a4 completionBlock:(id)a5
{
  v6.receiver = self;
  v6.super_class = ASFolderCreateTask;
  result = [(ASFolderLocalUpdateTask *)&v6 initWithFolder:a3 previousSyncKey:a4 completionBlock:a5];
  if (result)
  {
    result->super._requestType = 19;
    result->super._commandCode = 10;
  }

  return result;
}

- (void)_appendRequestBodyFolderDataToWBXMLData:(id)a3
{
  folder = self->super._folder;
  v5 = a3;
  v6 = [(ASFolder *)folder parentID];
  v9 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"0";
  }

  [v5 appendTag:9 withStringContent:v7];
  v8 = [(ASFolder *)self->super._folder displayName];
  [v5 appendTag:7 withStringContent:v8];

  [v5 appendTag:10 withIntContent:{-[ASFolder folderType](self->super._folder, "folderType")}];
}

- (int64_t)taskStatusForExchangeStatus:(int)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 < 0xD && ((0x17E7u >> a3) & 1) != 0)
  {
    result = qword_24A14DE00[a3];
  }

  else
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

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end