@interface CESRSpeechProfileAdminServiceFactory
- (CESRSpeechProfileAdminServiceFactory)initWithQueue:(id)a3 speechProfileSiteManager:(id)a4;
- (id)adminService;
@end

@implementation CESRSpeechProfileAdminServiceFactory

- (id)adminService
{
  v2 = [[CESRSpeechProfileAdminServiceConnection alloc] initWithServiceQueue:self->_serviceQueue speechProfileSiteManager:self->_speechProfileSiteManager];

  return v2;
}

- (CESRSpeechProfileAdminServiceFactory)initWithQueue:(id)a3 speechProfileSiteManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CESRSpeechProfileAdminServiceFactory;
  v9 = [(CESRSpeechProfileAdminServiceFactory *)&v13 init];
  v10 = v9;
  if (!v9 || (objc_storeStrong(&v9->_serviceQueue, a3), v10->_serviceQueue) && (objc_storeStrong(&v10->_speechProfileSiteManager, a4), v10->_speechProfileSiteManager))
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end