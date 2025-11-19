@interface CalDAVNotificationContainerSyncTaskGroup
- (BOOL)shouldFetchResourceWithEtag:(id)a3 propertiesToValues:(id)a4;
- (CalDAVNotificationContainerSyncTaskGroup)initWithFolderURL:(id)a3 previousCTag:(id)a4 previousSyncToken:(id)a5 accountInfoProvider:(id)a6 taskManager:(id)a7;
- (id)copyAdditionalResourcePropertiesToFetch;
- (id)copyGetTaskWithURL:(id)a3;
@end

@implementation CalDAVNotificationContainerSyncTaskGroup

- (CalDAVNotificationContainerSyncTaskGroup)initWithFolderURL:(id)a3 previousCTag:(id)a4 previousSyncToken:(id)a5 accountInfoProvider:(id)a6 taskManager:(id)a7
{
  v12.receiver = self;
  v12.super_class = CalDAVNotificationContainerSyncTaskGroup;
  v7 = [(CoreDAVContainerSyncTaskGroup *)&v12 initWithFolderURL:a3 previousCTag:a4 previousSyncToken:a5 actions:0 syncItemOrder:0 context:0 accountInfoProvider:a6 taskManager:a7];
  v8 = v7;
  if (v7)
  {
    [(CoreDAVContainerSyncTaskGroup *)v7 setUseMultiGet:0];
    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"invite-notification", 0}];
    notificationTypeNamesToFetch = v8->_notificationTypeNamesToFetch;
    v8->_notificationTypeNamesToFetch = v9;
  }

  return v8;
}

- (id)copyGetTaskWithURL:(id)a3
{
  v3 = a3;
  v4 = [[CalDAVGetNotificationItemTask alloc] initWithURL:v3];

  return v4;
}

- (BOOL)shouldFetchResourceWithEtag:(id)a3 propertiesToValues:(id)a4
{
  v5 = [a4 CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDE90] andName:@"notificationtype"];
  v6 = [(CalDAVNotificationContainerSyncTaskGroup *)self notificationTypeNamesToFetch];
  v7 = [v5 notificationNameIn:v6];

  return v7;
}

- (id)copyAdditionalResourcePropertiesToFetch
{
  v2 = objc_opt_new();
  [v2 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDE90] name:@"notificationtype" parseClass:objc_opt_class()];
  return v2;
}

@end