@interface BDSNBPinningManager
- (BDSNBPinningManager)init;
- (id)updateReadingNowWithCompletion:(id)a3;
- (id)updateWantToReadWithCompletion:(id)a3;
- (void)audiobookStoreEnabledWithCompletion:(id)a3;
- (void)fetchMostRecentAudiobookWithCompletion:(id)a3;
- (void)updateBitrateForItemWithAdamID:(id)a3 completion:(id)a4;
@end

@implementation BDSNBPinningManager

- (BDSNBPinningManager)init
{
  v6.receiver = self;
  v6.super_class = BDSNBPinningManager;
  v2 = [(BDSNBPinningManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BDSServiceProxy);
    serviceProxy = v2->_serviceProxy;
    v2->_serviceProxy = v3;
  }

  return v2;
}

- (void)fetchMostRecentAudiobookWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSNBPinningManager *)self serviceProxy];
  [v5 fetchMostRecentAudiobookWithCompletion:v4];
}

- (id)updateWantToReadWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSNBPinningManager *)self serviceProxy];
  v6 = [v5 updateWantToReadWithCompletion:v4];

  return v6;
}

- (id)updateReadingNowWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSNBPinningManager *)self serviceProxy];
  v6 = [v5 updateReadingNowWithCompletion:v4];

  return v6;
}

- (void)updateBitrateForItemWithAdamID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSNBPinningManager *)self serviceProxy];
  [v8 updateBitrateForItemWithAdamID:v7 completion:v6];
}

- (void)audiobookStoreEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSNBPinningManager *)self serviceProxy];
  [v5 audiobookStoreEnabledWithCompletion:v4];
}

@end