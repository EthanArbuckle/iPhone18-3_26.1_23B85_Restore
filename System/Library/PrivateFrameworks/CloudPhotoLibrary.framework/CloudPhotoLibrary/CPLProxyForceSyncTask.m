@interface CPLProxyForceSyncTask
- (void)cancelTask;
@end

@implementation CPLProxyForceSyncTask

- (void)cancelTask
{
  v3.receiver = self;
  v3.super_class = CPLProxyForceSyncTask;
  [(CPLForceSyncTask *)&v3 cancelTask];
  [(CPLProxyLibraryManager *)self->_proxyLibraryManager cancelSyncTask:self];
}

@end