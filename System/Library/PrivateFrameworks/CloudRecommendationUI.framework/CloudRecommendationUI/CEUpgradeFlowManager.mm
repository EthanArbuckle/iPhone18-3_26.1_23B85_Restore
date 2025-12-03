@interface CEUpgradeFlowManager
- (CEUpgradeFlowManager)init;
- (CEUpgradeFlowManagerDelegate)delegate;
- (void)beginAppleOneUpgradeFlowWithPresenter:(id)presenter url:(id)url;
- (void)beginLiftUIUpgradeFlowWithPresenter:(id)presenter url:(id)url;
- (void)beginRemoteUIUpgradeFlowWithPresenter:(id)presenter url:(id)url;
- (void)upgradeFlowManager:(id)manager didPresentViewController:(id)controller;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
- (void)upgradeFlowManagerDidFail:(id)fail error:(id)error;
@end

@implementation CEUpgradeFlowManager

- (CEUpgradeFlowManager)init
{
  v8.receiver = self;
  v8.super_class = CEUpgradeFlowManager;
  v2 = [(CEUpgradeFlowManager *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getICQOfferClass_softClass;
    v13 = getICQOfferClass_softClass;
    if (!getICQOfferClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getICQOfferClass_block_invoke;
      v9[3] = &unk_278DE1BE8;
      v9[4] = &v10;
      __getICQOfferClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    offer = v2->_offer;
    v2->_offer = v5;
  }

  return v2;
}

- (void)beginLiftUIUpgradeFlowWithPresenter:(id)presenter url:(id)url
{
  if (url)
  {
    offer = self->_offer;
    urlCopy = url;
    presenterCopy = presenter;
    [(ICQOffer *)offer _updateRequestedServerUIURLWithURL:urlCopy];
    upgradeFlowManager = self->_upgradeFlowManager;
    if (!upgradeFlowManager)
    {
      v10 = [objc_alloc(getICQUpgradeFlowManagerClass()) initWithOffer:self->_offer];
      v11 = self->_upgradeFlowManager;
      self->_upgradeFlowManager = v10;

      upgradeFlowManager = self->_upgradeFlowManager;
    }

    [(ICQUpgradeFlowManager *)upgradeFlowManager setDelegate:self];
    v12 = [objc_alloc(getICQLinkClass()) initWithAction:115 url:urlCopy];

    [(ICQUpgradeFlowManager *)self->_upgradeFlowManager beginRemoteUpgradeFlowWithICQLink:v12 presenter:presenterCopy];
  }
}

- (void)beginRemoteUIUpgradeFlowWithPresenter:(id)presenter url:(id)url
{
  if (url)
  {
    offer = self->_offer;
    urlCopy = url;
    presenterCopy = presenter;
    [(ICQOffer *)offer _updateRequestedServerUIURLWithURL:urlCopy];
    upgradeFlowManager = self->_upgradeFlowManager;
    if (!upgradeFlowManager)
    {
      v10 = [objc_alloc(getICQUpgradeFlowManagerClass()) initWithOffer:self->_offer];
      v11 = self->_upgradeFlowManager;
      self->_upgradeFlowManager = v10;

      upgradeFlowManager = self->_upgradeFlowManager;
    }

    [(ICQUpgradeFlowManager *)upgradeFlowManager setDelegate:self];
    v12 = [objc_alloc(getICQLinkClass()) initWithAction:112 url:urlCopy];

    [(ICQUpgradeFlowManager *)self->_upgradeFlowManager beginRemoteUpgradeFlowWithICQLink:v12 presenter:presenterCopy];
  }
}

- (void)beginAppleOneUpgradeFlowWithPresenter:(id)presenter url:(id)url
{
  if (url)
  {
    offer = self->_offer;
    urlCopy = url;
    presenterCopy = presenter;
    [(ICQOffer *)offer _updateRequestedServerUIURLWithURL:urlCopy];
    upgradeFlowManager = self->_upgradeFlowManager;
    if (!upgradeFlowManager)
    {
      v10 = [objc_alloc(getICQUpgradeFlowManagerClass()) initWithOffer:self->_offer];
      v11 = self->_upgradeFlowManager;
      self->_upgradeFlowManager = v10;

      upgradeFlowManager = self->_upgradeFlowManager;
    }

    [(ICQUpgradeFlowManager *)upgradeFlowManager setDelegate:self];
    v12 = [objc_alloc(getICQLinkClass()) initWithAction:122 url:urlCopy];

    [(ICQUpgradeFlowManager *)self->_upgradeFlowManager beginRemoteUpgradeFlowWithICQLink:v12 presenter:presenterCopy];
  }
}

- (void)upgradeFlowManager:(id)manager didPresentViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(CEUpgradeFlowManager *)self delegate];
  [delegate upgradeFlowManager:self didPresentViewController:controllerCopy];
}

- (void)upgradeFlowManagerDidFail:(id)fail error:(id)error
{
  errorCopy = error;
  delegate = [(CEUpgradeFlowManager *)self delegate];
  [delegate upgradeFlowManagerDidFail:self error:errorCopy];
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  delegate = [(CEUpgradeFlowManager *)self delegate];
  [delegate upgradeFlowManagerDidComplete:self];
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  delegate = [(CEUpgradeFlowManager *)self delegate];
  [delegate upgradeFlowManagerDidCancel:self];
}

- (CEUpgradeFlowManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end