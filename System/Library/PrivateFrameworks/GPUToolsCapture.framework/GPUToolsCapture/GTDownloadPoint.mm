@interface GTDownloadPoint
- (void)createContext:(apr_array_header_t *)a3;
@end

@implementation GTDownloadPoint

- (void)createContext:(apr_array_header_t *)a3
{
  v4 = [[GTDownloadContext alloc] initWithQueue:self->_downloadQueue forRequest:a3];
  downloadContext = self->_downloadContext;
  self->_downloadContext = v4;

  _objc_release_x1(v4, downloadContext);
}

@end