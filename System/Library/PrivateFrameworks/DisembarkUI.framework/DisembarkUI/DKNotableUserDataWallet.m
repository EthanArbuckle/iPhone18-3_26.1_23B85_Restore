@interface DKNotableUserDataWallet
- (DKNotableUserDataWallet)initWithContext:(id)a3 localCards:(id)a4;
- (NSArray)walletCards;
- (id)passSnapshotForCredential:(id)a3;
@end

@implementation DKNotableUserDataWallet

- (DKNotableUserDataWallet)initWithContext:(id)a3 localCards:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DKNotableUserDataWallet;
  v9 = [(DKNotableUserDataWallet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paymentProvisioningContext, a3);
    objc_storeStrong(&v10->_localPaymentCards, a4);
  }

  return v10;
}

- (NSArray)walletCards
{
  v2 = [(DKNotableUserDataWallet *)self paymentProvisioningContext];
  v3 = [v2 setupAssistantCredentials];

  return v3;
}

- (id)passSnapshotForCredential:(id)a3
{
  v4 = a3;
  v5 = [(DKNotableUserDataWallet *)self paymentProvisioningContext];
  v6 = [v5 passSnapshotForCredential:v4];

  return v6;
}

@end