@interface CardDAVMultiPutTask
- (CardDAVMultiPutTask)initWithURL:(id)l checkCTag:(id)tag uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions;
@end

@implementation CardDAVMultiPutTask

- (CardDAVMultiPutTask)initWithURL:(id)l checkCTag:(id)tag uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions
{
  actionsCopy = actions;
  deleteActionsCopy = deleteActions;
  v15.receiver = self;
  v15.super_class = CardDAVMultiPutTask;
  v12 = [(CoreDAVMultiPutTask *)&v15 initWithURL:l checkCTag:tag uuidsToAddActions:actionsCopy hrefsToModDeleteActions:deleteActionsCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->super._appSpecificNamespace, @"urn:ietf:params:xml:ns:carddav");
    objc_storeStrong(&v13->super._appSpecificDataProp, @"address-data");
  }

  [(CoreDAVMultiPutTask *)v13 fillOutDataWithUUIDsToAddActions:actionsCopy hrefsToModDeleteActions:deleteActionsCopy];

  return v13;
}

@end