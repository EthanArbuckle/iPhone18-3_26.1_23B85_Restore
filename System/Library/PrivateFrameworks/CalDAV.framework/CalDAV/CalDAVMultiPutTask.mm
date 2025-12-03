@interface CalDAVMultiPutTask
- (CalDAVMultiPutTask)initWithURL:(id)l checkCTag:(id)tag uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions;
@end

@implementation CalDAVMultiPutTask

- (CalDAVMultiPutTask)initWithURL:(id)l checkCTag:(id)tag uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions
{
  actionsCopy = actions;
  deleteActionsCopy = deleteActions;
  v15.receiver = self;
  v15.super_class = CalDAVMultiPutTask;
  v12 = [(CoreDAVMultiPutTask *)&v15 initWithURL:l checkCTag:tag uuidsToAddActions:actionsCopy hrefsToModDeleteActions:deleteActionsCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong((&v12->super.super.super.isa + *MEMORY[0x277CFDD30]), *MEMORY[0x277CFDDC0]);
    objc_storeStrong((&v13->super.super.super.isa + *MEMORY[0x277CFDD28]), @"calendar-data");
  }

  [(CoreDAVMultiPutTask *)v13 fillOutDataWithUUIDsToAddActions:actionsCopy hrefsToModDeleteActions:deleteActionsCopy];

  return v13;
}

@end