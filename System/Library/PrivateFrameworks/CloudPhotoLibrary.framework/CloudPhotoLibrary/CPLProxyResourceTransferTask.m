@interface CPLProxyResourceTransferTask
- (void)cancelTask;
@end

@implementation CPLProxyResourceTransferTask

- (void)cancelTask
{
  v3.receiver = self;
  v3.super_class = CPLProxyResourceTransferTask;
  [(CPLResourceTransferTask *)&v3 cancelTask];
  [(CPLProxyLibraryManager *)self->_proxyLibraryManager cancelTask:self];
}

@end