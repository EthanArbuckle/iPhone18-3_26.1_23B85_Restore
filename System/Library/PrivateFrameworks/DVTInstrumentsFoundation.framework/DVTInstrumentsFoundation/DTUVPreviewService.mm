@interface DTUVPreviewService
- (id)createExternalService:(id)service error:(id *)error;
@end

@implementation DTUVPreviewService

- (id)createExternalService:(id)service error:(id *)error
{
  serviceCopy = service;
  v6 = DTUVSharedServiceFactory(error);
  v7 = [v6 newPreviewService:serviceCopy error:error];

  return v7;
}

@end