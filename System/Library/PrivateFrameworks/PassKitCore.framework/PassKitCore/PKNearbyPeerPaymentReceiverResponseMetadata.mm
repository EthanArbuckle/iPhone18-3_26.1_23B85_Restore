@interface PKNearbyPeerPaymentReceiverResponseMetadata
+ (void)receiverDataWithNonce:(id)nonce nearbyMetadata:(id)metadata appearanceData:(id)data completion:(id)completion;
- (PKNearbyPeerPaymentReceiverResponseMetadata)initWithInternalData:(id)data;
@end

@implementation PKNearbyPeerPaymentReceiverResponseMetadata

+ (void)receiverDataWithNonce:(id)nonce nearbyMetadata:(id)metadata appearanceData:(id)data completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __110__PKNearbyPeerPaymentReceiverResponseMetadata_receiverDataWithNonce_nearbyMetadata_appearanceData_completion___block_invoke;
  v11[3] = &unk_1E79E2F88;
  v12 = completionCopy;
  v10 = completionCopy;
  [_PKNearbyPeerPaymentReceiverResponseMetadata receiverDataWithNonce:nonce nearbyMetadata:metadata appearanceData:data completion:v11];
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

- (PKNearbyPeerPaymentReceiverResponseMetadata)initWithInternalData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PKNearbyPeerPaymentReceiverResponseMetadata;
  v6 = [(PKNearbyPeerPaymentReceiverResponseMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalData, data);
  }

  return v7;
}

@end