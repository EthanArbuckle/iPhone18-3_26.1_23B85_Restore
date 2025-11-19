@interface BLRestoreDownloadItemsResponse
- (void)setServerResponseWithError:(id)a3;
@end

@implementation BLRestoreDownloadItemsResponse

- (void)setServerResponseWithError:(id)a3
{
  v4 = a3;
  v5 = [[BLStoreDownloadQueueResponse alloc] initWithError:v4 userIdentifier:0];

  serverResponse = self->_serverResponse;
  self->_serverResponse = v5;
}

@end