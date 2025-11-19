@interface CardDAVBulkUploadTaskGroup
- (CardDAVBulkUploadTaskGroup)initWithFolderURL:(id)a3 checkCTag:(id)a4 uuidsToAddActions:(id)a5 hrefsToModDeleteActions:(id)a6 context:(id)a7 accountInfoProvider:(id)a8 taskManager:(id)a9;
@end

@implementation CardDAVBulkUploadTaskGroup

- (CardDAVBulkUploadTaskGroup)initWithFolderURL:(id)a3 checkCTag:(id)a4 uuidsToAddActions:(id)a5 hrefsToModDeleteActions:(id)a6 context:(id)a7 accountInfoProvider:(id)a8 taskManager:(id)a9
{
  v10.receiver = self;
  v10.super_class = CardDAVBulkUploadTaskGroup;
  return [(CoreDAVBulkUploadTaskGroup *)&v10 initWithFolderURL:a3 checkCTag:a4 uuidsToAddActions:a5 hrefsToModDeleteActions:a6 context:a7 accountInfoProvider:a8 taskManager:a9];
}

@end