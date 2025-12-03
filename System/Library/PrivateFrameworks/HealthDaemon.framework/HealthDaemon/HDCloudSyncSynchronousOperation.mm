@interface HDCloudSyncSynchronousOperation
- (BOOL)performWithError:(id *)error;
- (void)main;
@end

@implementation HDCloudSyncSynchronousOperation

- (void)main
{
  v5 = 0;
  v3 = [(HDCloudSyncSynchronousOperation *)self performWithError:&v5];
  v4 = v5;
  [(HDCloudSyncOperation *)self finishWithSuccess:v3 error:v4];
}

- (BOOL)performWithError:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end