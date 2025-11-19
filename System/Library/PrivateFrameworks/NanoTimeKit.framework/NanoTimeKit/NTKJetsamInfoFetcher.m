@interface NTKJetsamInfoFetcher
- (BOOL)getInfo:(jetsam_info *)a3;
- (BOOL)resetInterval;
- (void)dealloc;
@end

@implementation NTKJetsamInfoFetcher

- (BOOL)resetInterval
{
  v3 = +[_NTKSharedJetsamInfo sharedJetsamInfo];
  LOBYTE(self) = [v3 resetIntervalFor:self];

  return self;
}

- (void)dealloc
{
  v3 = +[_NTKSharedJetsamInfo sharedJetsamInfo];
  [v3 unregister:self];

  v4.receiver = self;
  v4.super_class = NTKJetsamInfoFetcher;
  [(NTKJetsamInfoFetcher *)&v4 dealloc];
}

- (BOOL)getInfo:(jetsam_info *)a3
{
  v5 = +[_NTKSharedJetsamInfo sharedJetsamInfo];
  LOBYTE(a3) = [v5 getInfoFor:self into:a3];

  return a3;
}

@end