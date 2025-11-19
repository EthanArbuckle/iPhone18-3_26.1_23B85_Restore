@interface MFSearchFetchResponseQueue
- (MFSearchFetchResponseQueue)init;
- (id)messageToSyncFlagsForUID:(unsigned int)a3;
@end

@implementation MFSearchFetchResponseQueue

- (MFSearchFetchResponseQueue)init
{
  v3.receiver = self;
  v3.super_class = MFSearchFetchResponseQueue;
  result = [(MFFetchResponseQueue *)&v3 init];
  if (result)
  {
    result->super._isSearching = 1;
  }

  return result;
}

- (id)messageToSyncFlagsForUID:(unsigned int)a3
{
  store = self->super._store;
  v4 = EFStringWithInt();

  return [(MFLibraryIMAPStore *)store messageForRemoteID:v4];
}

@end