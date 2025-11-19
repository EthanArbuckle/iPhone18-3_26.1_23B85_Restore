@interface CalDAVMultiPutTask
- (CalDAVMultiPutTask)initWithURL:(id)a3 checkCTag:(id)a4 uuidsToAddActions:(id)a5 hrefsToModDeleteActions:(id)a6;
@end

@implementation CalDAVMultiPutTask

- (CalDAVMultiPutTask)initWithURL:(id)a3 checkCTag:(id)a4 uuidsToAddActions:(id)a5 hrefsToModDeleteActions:(id)a6
{
  v10 = a5;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = CalDAVMultiPutTask;
  v12 = [(CoreDAVMultiPutTask *)&v15 initWithURL:a3 checkCTag:a4 uuidsToAddActions:v10 hrefsToModDeleteActions:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong((&v12->super.super.super.isa + *MEMORY[0x277CFDD30]), *MEMORY[0x277CFDDC0]);
    objc_storeStrong((&v13->super.super.super.isa + *MEMORY[0x277CFDD28]), @"calendar-data");
  }

  [(CoreDAVMultiPutTask *)v13 fillOutDataWithUUIDsToAddActions:v10 hrefsToModDeleteActions:v11];

  return v13;
}

@end