@interface PKNearbyPeerPaymentReceiverResponseMetadata
+ (void)receiverDataWithNonce:(id)a3 nearbyMetadata:(id)a4 appearanceData:(id)a5 completion:(id)a6;
- (PKNearbyPeerPaymentReceiverResponseMetadata)initWithInternalData:(id)a3;
@end

@implementation PKNearbyPeerPaymentReceiverResponseMetadata

+ (void)receiverDataWithNonce:(id)a3 nearbyMetadata:(id)a4 appearanceData:(id)a5 completion:(id)a6
{
  v9 = a6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __110__PKNearbyPeerPaymentReceiverResponseMetadata_receiverDataWithNonce_nearbyMetadata_appearanceData_completion___block_invoke;
  v11[3] = &unk_1E79E2F88;
  v12 = v9;
  v10 = v9;
  [_PKNearbyPeerPaymentReceiverResponseMetadata receiverDataWithNonce:a3 nearbyMetadata:a4 appearanceData:a5 completion:v11];
}

void __110__PKNearbyPeerPaymentReceiverResponseMetadata_receiverDataWithNonce_nearbyMetadata_appearanceData_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[PKNearbyPeerPaymentReceiverResponseMetadata alloc] initWithInternalData:v3];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (PKNearbyPeerPaymentReceiverResponseMetadata)initWithInternalData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKNearbyPeerPaymentReceiverResponseMetadata;
  v6 = [(PKNearbyPeerPaymentReceiverResponseMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalData, a3);
  }

  return v7;
}

@end