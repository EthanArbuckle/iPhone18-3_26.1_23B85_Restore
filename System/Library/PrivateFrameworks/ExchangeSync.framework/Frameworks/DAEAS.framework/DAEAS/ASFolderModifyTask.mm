@interface ASFolderModifyTask
- (ASFolderModifyTask)initWithFolder:(id)folder previousSyncKey:(id)key completionBlock:(id)block;
- (int64_t)taskStatusForExchangeStatus:(int)status;
- (void)_appendRequestBodyFolderDataToWBXMLData:(id)data;
@end

@implementation ASFolderModifyTask

- (ASFolderModifyTask)initWithFolder:(id)folder previousSyncKey:(id)key completionBlock:(id)block
{
  v6.receiver = self;
  v6.super_class = ASFolderModifyTask;
  result = [(ASFolderLocalUpdateTask *)&v6 initWithFolder:folder previousSyncKey:key completionBlock:block];
  if (result)
  {
    result->super._requestType = 21;
    result->super._commandCode = 12;
  }

  return result;
}

- (void)_appendRequestBodyFolderDataToWBXMLData:(id)data
{
  folder = self->super._folder;
  dataCopy = data;
  parentID = [(ASFolder *)folder parentID];
  serverID = [(ASFolder *)self->super._folder serverID];
  [dataCopy appendTag:8 withStringContent:serverID];

  if (parentID)
  {
    v7 = parentID;
  }

  else
  {
    v7 = @"0";
  }

  [dataCopy appendTag:9 withStringContent:v7];
  displayName = [(ASFolder *)self->super._folder displayName];
  [dataCopy appendTag:7 withStringContent:displayName];
}

- (int64_t)taskStatusForExchangeStatus:(int)status
{
  v14 = *MEMORY[0x277D85DE8];
  if (status >= 0xC)
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
      statusCopy = status;
      _os_log_impl(&dword_24A0AC000, v5, v6, "%@: Unknown status code (%d)", &v10, 0x12u);
    }

    result = 10;
  }

  else
  {
    result = qword_24A14DE68[status];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end