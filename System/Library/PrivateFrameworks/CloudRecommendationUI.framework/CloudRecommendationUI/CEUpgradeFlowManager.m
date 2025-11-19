@interface CEUpgradeFlowManager
- (CEUpgradeFlowManager)init;
- (CEUpgradeFlowManagerDelegate)delegate;
- (void)beginAppleOneUpgradeFlowWithPresenter:(id)a3 url:(id)a4;
- (void)beginLiftUIUpgradeFlowWithPresenter:(id)a3 url:(id)a4;
- (void)beginRemoteUIUpgradeFlowWithPresenter:(id)a3 url:(id)a4;
- (void)upgradeFlowManager:(id)a3 didPresentViewController:(id)a4;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
- (void)upgradeFlowManagerDidFail:(id)a3 error:(id)a4;
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

- (void)beginLiftUIUpgradeFlowWithPresenter:(id)a3 url:(id)a4
{
  if (a4)
  {
    offer = self->_offer;
    v7 = a4;
    v8 = a3;
    [(ICQOffer *)offer _updateRequestedServerUIURLWithURL:v7];
    upgradeFlowManager = self->_upgradeFlowManager;
    if (!upgradeFlowManager)
    {
      v10 = [objc_alloc(getICQUpgradeFlowManagerClass()) initWithOffer:self->_offer];
      v11 = self->_upgradeFlowManager;
      self->_upgradeFlowManager = v10;

      upgradeFlowManager = self->_upgradeFlowManager;
    }

    [(ICQUpgradeFlowManager *)upgradeFlowManager setDelegate:self];
    v12 = [objc_alloc(getICQLinkClass()) initWithAction:115 url:v7];

    [(ICQUpgradeFlowManager *)self->_upgradeFlowManager beginRemoteUpgradeFlowWithICQLink:v12 presenter:v8];
  }
}

- (void)beginRemoteUIUpgradeFlowWithPresenter:(id)a3 url:(id)a4
{
  if (a4)
  {
    offer = self->_offer;
    v7 = a4;
    v8 = a3;
    [(ICQOffer *)offer _updateRequestedServerUIURLWithURL:v7];
    upgradeFlowManager = self->_upgradeFlowManager;
    if (!upgradeFlowManager)
    {
      v10 = [objc_alloc(getICQUpgradeFlowManagerClass()) initWithOffer:self->_offer];
      v11 = self->_upgradeFlowManager;
      self->_upgradeFlowManager = v10;

      upgradeFlowManager = self->_upgradeFlowManager;
    }

    [(ICQUpgradeFlowManager *)upgradeFlowManager setDelegate:self];
    v12 = [objc_alloc(getICQLinkClass()) initWithAction:112 url:v7];

    [(ICQUpgradeFlowManager *)self->_upgradeFlowManager beginRemoteUpgradeFlowWithICQLink:v12 presenter:v8];
  }
}

- (void)beginAppleOneUpgradeFlowWithPresenter:(id)a3 url:(id)a4
{
  if (a4)
  {
    offer = self->_offer;
    v7 = a4;
    v8 = a3;
    [(ICQOffer *)offer _updateRequestedServerUIURLWithURL:v7];
    upgradeFlowManager = self->_upgradeFlowManager;
    if (!upgradeFlowManager)
    {
      v10 = [objc_alloc(getICQUpgradeFlowManagerClass()) initWithOffer:self->_offer];
      v11 = self->_upgradeFlowManager;
      self->_upgradeFlowManager = v10;

      upgradeFlowManager = self->_upgradeFlowManager;
    }

    [(ICQUpgradeFlowManager *)upgradeFlowManager setDelegate:self];
    v12 = [objc_alloc(getICQLinkClass()) initWithAction:122 url:v7];

    [(ICQUpgradeFlowManager *)self->_upgradeFlowManager beginRemoteUpgradeFlowWithICQLink:v12 presenter:v8];
  }
}

- (void)upgradeFlowManager:(id)a3 didPresentViewController:(id)a4
{
  v5 = a4;
  v6 = [(CEUpgradeFlowManager *)self delegate];
  [v6 upgradeFlowManager:self didPresentViewController:v5];
}

- (void)upgradeFlowManagerDidFail:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = [(CEUpgradeFlowManager *)self delegate];
  [v6 upgradeFlowManagerDidFail:self error:v5];
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v4 = [(CEUpgradeFlowManager *)self delegate];
  [v4 upgradeFlowManagerDidComplete:self];
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v4 = [(CEUpgradeFlowManager *)self delegate];
  [v4 upgradeFlowManagerDidCancel:self];
}

- (CEUpgradeFlowManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end