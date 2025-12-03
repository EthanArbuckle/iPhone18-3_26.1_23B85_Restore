@interface BDSNBPinningManager
- (BDSNBPinningManager)init;
- (id)updateReadingNowWithCompletion:(id)completion;
- (id)updateWantToReadWithCompletion:(id)completion;
- (void)audiobookStoreEnabledWithCompletion:(id)completion;
- (void)fetchMostRecentAudiobookWithCompletion:(id)completion;
- (void)updateBitrateForItemWithAdamID:(id)d completion:(id)completion;
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

- (void)fetchMostRecentAudiobookWithCompletion:(id)completion
{
  completionCopy = completion;
  serviceProxy = [(BDSNBPinningManager *)self serviceProxy];
  [serviceProxy fetchMostRecentAudiobookWithCompletion:completionCopy];
}

- (id)updateWantToReadWithCompletion:(id)completion
{
  completionCopy = completion;
  serviceProxy = [(BDSNBPinningManager *)self serviceProxy];
  v6 = [serviceProxy updateWantToReadWithCompletion:completionCopy];

  return v6;
}

- (id)updateReadingNowWithCompletion:(id)completion
{
  completionCopy = completion;
  serviceProxy = [(BDSNBPinningManager *)self serviceProxy];
  v6 = [serviceProxy updateReadingNowWithCompletion:completionCopy];

  return v6;
}

- (void)updateBitrateForItemWithAdamID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  serviceProxy = [(BDSNBPinningManager *)self serviceProxy];
  [serviceProxy updateBitrateForItemWithAdamID:dCopy completion:completionCopy];
}

- (void)audiobookStoreEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  serviceProxy = [(BDSNBPinningManager *)self serviceProxy];
  [serviceProxy audiobookStoreEnabledWithCompletion:completionCopy];
}

@end