@interface CKVAdminServiceFactory
- (CKVAdminServiceFactory)initWithQueue:(id)queue semAdministrator:(id)administrator taskManager:(id)manager;
- (id)adminService;
@end

@implementation CKVAdminServiceFactory

- (id)adminService
{
  v2 = [[CKVAdminServiceConnection alloc] initWithServiceQueue:self->_serviceQueue taskManager:self->_taskManager semAdministrator:self->_semAdministrator];

  return v2;
}

- (CKVAdminServiceFactory)initWithQueue:(id)queue semAdministrator:(id)administrator taskManager:(id)manager
{
  queueCopy = queue;
  administratorCopy = administrator;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = CKVAdminServiceFactory;
  v12 = [(CKVAdminServiceFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceQueue, queue);
    objc_storeStrong(&v13->_semAdministrator, administrator);
    objc_storeStrong(&v13->_taskManager, manager);
  }

  return v13;
}

@end