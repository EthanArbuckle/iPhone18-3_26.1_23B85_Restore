@interface DTUVShellPipeService
- (id)createExternalService:(id)a3 error:(id *)a4;
@end

@implementation DTUVShellPipeService

- (id)createExternalService:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = DTUVSharedServiceFactory(a4);
  if (objc_opt_respondsToSelector())
  {
    v14 = [v6 newShellPipeService:v5 error:a4];
  }

  else if (a4)
  {
    DTUVServiceError(@"This version of PreviewsOSSupport doesn't support shell message streams. Please update your OS.", v7, v8, v9, v10, v11, v12, v13, v16);
    *a4 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end