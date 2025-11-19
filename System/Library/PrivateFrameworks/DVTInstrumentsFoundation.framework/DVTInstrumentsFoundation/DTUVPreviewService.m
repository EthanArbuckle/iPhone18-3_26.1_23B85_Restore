@interface DTUVPreviewService
- (id)createExternalService:(id)a3 error:(id *)a4;
@end

@implementation DTUVPreviewService

- (id)createExternalService:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = DTUVSharedServiceFactory(a4);
  v7 = [v6 newPreviewService:v5 error:a4];

  return v7;
}

@end