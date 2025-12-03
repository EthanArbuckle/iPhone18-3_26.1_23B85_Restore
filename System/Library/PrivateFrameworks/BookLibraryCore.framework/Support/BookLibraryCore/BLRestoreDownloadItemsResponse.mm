@interface BLRestoreDownloadItemsResponse
- (void)setServerResponseWithError:(id)error;
@end

@implementation BLRestoreDownloadItemsResponse

- (void)setServerResponseWithError:(id)error
{
  errorCopy = error;
  v5 = [[BLStoreDownloadQueueResponse alloc] initWithError:errorCopy userIdentifier:0];

  serverResponse = self->_serverResponse;
  self->_serverResponse = v5;
}

@end