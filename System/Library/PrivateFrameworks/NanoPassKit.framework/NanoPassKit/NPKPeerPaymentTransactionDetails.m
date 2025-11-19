@interface NPKPeerPaymentTransactionDetails
- (id)description;
@end

@implementation NPKPeerPaymentTransactionDetails

- (id)description
{
  v11.receiver = self;
  v11.super_class = NPKPeerPaymentTransactionDetails;
  v3 = [(NPKPeerPaymentTransactionDetails *)&v11 description];
  v4 = [(NPKPeerPaymentTransactionDetails *)self serviceIdentifier];
  v5 = NSStringWithNPKPeerPaymentStatus([(NPKPeerPaymentTransactionDetails *)self paymentStatus]);
  v6 = [(NPKPeerPaymentTransactionDetails *)self availableActions];
  v7 = [(NPKPeerPaymentTransactionDetails *)self transaction];
  v8 = [(NPKPeerPaymentTransactionDetails *)self availableActionsFetchDate];
  v9 = [v3 stringByAppendingFormat:@" (service identifier: %@, payment status: %@, available actions: %@, transaction: %@, actionFetchDate: %@)", v4, v5, v6, v7, v8];

  return v9;
}

@end