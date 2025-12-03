@interface DTUVAgentPipeService
- (id)createExternalService:(id)service error:(id *)error;
@end

@implementation DTUVAgentPipeService

- (id)createExternalService:(id)service error:(id *)error
{
  serviceCopy = service;
  v6 = DTUVSharedServiceFactory(error);
  v7 = [v6 newAgentPipeService:serviceCopy error:error];

  return v7;
}

@end