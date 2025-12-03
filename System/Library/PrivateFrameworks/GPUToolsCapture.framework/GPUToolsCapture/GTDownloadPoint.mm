@interface GTDownloadPoint
- (void)createContext:(apr_array_header_t *)context;
@end

@implementation GTDownloadPoint

- (void)createContext:(apr_array_header_t *)context
{
  v4 = [[GTDownloadContext alloc] initWithQueue:self->_downloadQueue forRequest:context];
  downloadContext = self->_downloadContext;
  self->_downloadContext = v4;

  _objc_release_x1(v4, downloadContext);
}

@end