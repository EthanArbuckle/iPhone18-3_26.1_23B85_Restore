@interface NPKPeerPaymentTransactionDetails
- (id)description;
@end

@implementation NPKPeerPaymentTransactionDetails

- (id)description
{
  v11.receiver = self;
  v11.super_class = NPKPeerPaymentTransactionDetails;
  v3 = [(NPKPeerPaymentTransactionDetails *)&v11 description];
  serviceIdentifier = [(NPKPeerPaymentTransactionDetails *)self serviceIdentifier];
  v5 = NSStringWithNPKPeerPaymentStatus([(NPKPeerPaymentTransactionDetails *)self paymentStatus]);
  availableActions = [(NPKPeerPaymentTransactionDetails *)self availableActions];
  transaction = [(NPKPeerPaymentTransactionDetails *)self transaction];
  availableActionsFetchDate = [(NPKPeerPaymentTransactionDetails *)self availableActionsFetchDate];
  v9 = [v3 stringByAppendingFormat:@" (service identifier: %@, payment status: %@, available actions: %@, transaction: %@, actionFetchDate: %@)", serviceIdentifier, v5, availableActions, transaction, availableActionsFetchDate];

  return v9;
}

@end