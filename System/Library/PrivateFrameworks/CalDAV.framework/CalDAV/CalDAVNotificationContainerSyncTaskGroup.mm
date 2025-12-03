@interface CalDAVNotificationContainerSyncTaskGroup
- (BOOL)shouldFetchResourceWithEtag:(id)etag propertiesToValues:(id)values;
- (CalDAVNotificationContainerSyncTaskGroup)initWithFolderURL:(id)l previousCTag:(id)tag previousSyncToken:(id)token accountInfoProvider:(id)provider taskManager:(id)manager;
- (id)copyAdditionalResourcePropertiesToFetch;
- (id)copyGetTaskWithURL:(id)l;
@end

@implementation CalDAVNotificationContainerSyncTaskGroup

- (CalDAVNotificationContainerSyncTaskGroup)initWithFolderURL:(id)l previousCTag:(id)tag previousSyncToken:(id)token accountInfoProvider:(id)provider taskManager:(id)manager
{
  v12.receiver = self;
  v12.super_class = CalDAVNotificationContainerSyncTaskGroup;
  v7 = [(CoreDAVContainerSyncTaskGroup *)&v12 initWithFolderURL:l previousCTag:tag previousSyncToken:token actions:0 syncItemOrder:0 context:0 accountInfoProvider:provider taskManager:manager];
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

- (id)copyGetTaskWithURL:(id)l
{
  lCopy = l;
  v4 = [[CalDAVGetNotificationItemTask alloc] initWithURL:lCopy];

  return v4;
}

- (BOOL)shouldFetchResourceWithEtag:(id)etag propertiesToValues:(id)values
{
  v5 = [values CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDE90] andName:@"notificationtype"];
  notificationTypeNamesToFetch = [(CalDAVNotificationContainerSyncTaskGroup *)self notificationTypeNamesToFetch];
  v7 = [v5 notificationNameIn:notificationTypeNamesToFetch];

  return v7;
}

- (id)copyAdditionalResourcePropertiesToFetch
{
  v2 = objc_opt_new();
  [v2 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDE90] name:@"notificationtype" parseClass:objc_opt_class()];
  return v2;
}

@end