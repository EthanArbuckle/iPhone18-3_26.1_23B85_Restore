@interface MFSearchFetchResponseQueue
- (BOOL)shouldAddUID:(unsigned int)a3;
- (MFSearchFetchResponseQueue)init;
@end

@implementation MFSearchFetchResponseQueue

- (MFSearchFetchResponseQueue)init
{
  v6.receiver = self;
  v6.super_class = MFSearchFetchResponseQueue;
  v2 = [(MFFetchResponseQueue *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._isSearching = 1;
    v4 = v2;
  }

  return v3;
}

- (BOOL)shouldAddUID:(unsigned int)a3
{
  store = self->super._store;
  v4 = EFStringWithInt();
  v5 = [(MFLibraryIMAPStore *)store messageForRemoteID:v4];

  return v5 == 0;
}

@end