@interface DKNotableUserDataWallet
- (DKNotableUserDataWallet)initWithContext:(id)context localCards:(id)cards;
- (NSArray)walletCards;
- (id)passSnapshotForCredential:(id)credential;
@end

@implementation DKNotableUserDataWallet

- (DKNotableUserDataWallet)initWithContext:(id)context localCards:(id)cards
{
  contextCopy = context;
  cardsCopy = cards;
  v12.receiver = self;
  v12.super_class = DKNotableUserDataWallet;
  v9 = [(DKNotableUserDataWallet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paymentProvisioningContext, context);
    objc_storeStrong(&v10->_localPaymentCards, cards);
  }

  return v10;
}

- (NSArray)walletCards
{
  paymentProvisioningContext = [(DKNotableUserDataWallet *)self paymentProvisioningContext];
  setupAssistantCredentials = [paymentProvisioningContext setupAssistantCredentials];

  return setupAssistantCredentials;
}

- (id)passSnapshotForCredential:(id)credential
{
  credentialCopy = credential;
  paymentProvisioningContext = [(DKNotableUserDataWallet *)self paymentProvisioningContext];
  v6 = [paymentProvisioningContext passSnapshotForCredential:credentialCopy];

  return v6;
}

@end