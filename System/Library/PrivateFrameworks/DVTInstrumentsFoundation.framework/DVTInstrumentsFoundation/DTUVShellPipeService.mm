@interface DTUVShellPipeService
- (id)createExternalService:(id)service error:(id *)error;
@end

@implementation DTUVShellPipeService

- (id)createExternalService:(id)service error:(id *)error
{
  serviceCopy = service;
  v6 = DTUVSharedServiceFactory(error);
  if (objc_opt_respondsToSelector())
  {
    v14 = [v6 newShellPipeService:serviceCopy error:error];
  }

  else if (error)
  {
    DTUVServiceError(@"This version of PreviewsOSSupport doesn't support shell message streams. Please update your OS.", v7, v8, v9, v10, v11, v12, v13, v16);
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end