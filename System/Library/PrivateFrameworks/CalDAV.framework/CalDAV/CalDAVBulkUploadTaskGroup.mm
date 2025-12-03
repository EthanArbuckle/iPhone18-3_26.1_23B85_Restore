@interface CalDAVBulkUploadTaskGroup
- (CalDAVBulkUploadTaskGroup)initWithFolderURL:(id)l checkCTag:(id)tag uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions context:(id)context accountInfoProvider:(id)provider taskManager:(id)manager;
@end

@implementation CalDAVBulkUploadTaskGroup

- (CalDAVBulkUploadTaskGroup)initWithFolderURL:(id)l checkCTag:(id)tag uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions context:(id)context accountInfoProvider:(id)provider taskManager:(id)manager
{
  v10.receiver = self;
  v10.super_class = CalDAVBulkUploadTaskGroup;
  return [(CoreDAVBulkUploadTaskGroup *)&v10 initWithFolderURL:l checkCTag:tag uuidsToAddActions:actions hrefsToModDeleteActions:deleteActions context:context accountInfoProvider:provider taskManager:manager];
}

@end