@interface HDCloudSyncSynchronousOperation
- (BOOL)performWithError:(id *)a3;
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

- (BOOL)performWithError:(id *)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end