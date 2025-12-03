@interface PKPaymentAuthorizationDataModel(NanoPassKit)
- (BOOL)_hasNonPeerPaymentAcceptedPasses;
- (BOOL)npkIsCardOnFilePayment;
- (BOOL)npkIsCompanionAuthForTvOS;
- (BOOL)npkIsExternalContextAuthorization;
- (BOOL)npkIsOutgoingPeerPayment;
- (BOOL)npkIsPeerPayment;
- (BOOL)npkIsSkeletonPeerPayment;
- (BOOL)npkIsSplitPeerPayment;
- (BOOL)npkIsTopUp;
- (uint64_t)npkIsNearbyPeerPayment;
- (uint64_t)npkIsSplitPeerPaymentWithAnotherPaymentMethod;
- (uint64_t)npkIsSplitPeerPaymentWithoutAnotherPaymentMethod;
- (void)npkSetPassAndPaymentApplicationForAID:()NanoPassKit;
@end

@implementation PKPaymentAuthorizationDataModel(NanoPassKit)

- (void)npkSetPassAndPaymentApplicationForAID:()NanoPassKit
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  acceptedPasses = [self acceptedPasses];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__PKPaymentAuthorizationDataModel_NanoPassKit__npkSetPassAndPaymentApplicationForAID___block_invoke;
  v10[3] = &unk_279946AC0;
  v6 = v4;
  v11 = v6;
  v12 = &v20;
  v13 = &v14;
  [acceptedPasses enumerateObjectsUsingBlock:v10];

  [self beginUpdates];
  if ([v21[5] isPeerPaymentPass])
  {
    v7 = NPKSharedPeerPaymentAccountManager();
    account = [v7 account];
    currentBalance = [account currentBalance];
    [v21[5] setPeerPaymentBalance:currentBalance];
  }

  [self setPass:v21[5]];
  [self setPaymentApplication:v15[5]];
  [self endUpdates];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

- (BOOL)npkIsPeerPayment
{
  peerPaymentQuote = [self peerPaymentQuote];
  v2 = peerPaymentQuote != 0;

  return v2;
}

- (uint64_t)npkIsNearbyPeerPayment
{
  paymentRequest = [self paymentRequest];
  peerPaymentRequest = [paymentRequest peerPaymentRequest];

  if (peerPaymentRequest)
  {
    isDeviceTap = [peerPaymentRequest isDeviceTap];
  }

  else
  {
    isDeviceTap = 0;
  }

  return isDeviceTap;
}

- (BOOL)npkIsSkeletonPeerPayment
{
  if (![self npkIsPeerPayment])
  {
    return 0;
  }

  paymentRequest = [self paymentRequest];
  paymentSummaryItems = [paymentRequest paymentSummaryItems];
  lastObject = [paymentSummaryItems lastObject];
  v5 = [lastObject type] == 1;

  return v5;
}

- (BOOL)npkIsTopUp
{
  peerPaymentQuote = [self peerPaymentQuote];
  v3 = [peerPaymentQuote firstQuoteItemOfType:1];
  if (v3)
  {
    peerPaymentQuote2 = [self peerPaymentQuote];
    v5 = [peerPaymentQuote2 firstQuoteItemOfType:2];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)npkIsSplitPeerPayment
{
  peerPaymentQuote = [self peerPaymentQuote];
  v3 = [peerPaymentQuote firstQuoteItemOfType:1];
  if (v3)
  {
    peerPaymentQuote2 = [self peerPaymentQuote];
    v5 = [peerPaymentQuote2 firstQuoteItemOfType:2];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)npkIsSplitPeerPaymentWithAnotherPaymentMethod
{
  result = [self npkIsSplitPeerPayment];
  if (result)
  {

    return [self _hasNonPeerPaymentAcceptedPasses];
  }

  return result;
}

- (uint64_t)npkIsSplitPeerPaymentWithoutAnotherPaymentMethod
{
  result = [self npkIsSplitPeerPayment];
  if (result)
  {
    return [self _hasNonPeerPaymentAcceptedPasses] ^ 1;
  }

  return result;
}

- (BOOL)_hasNonPeerPaymentAcceptedPasses
{
  acceptedPasses = [self acceptedPasses];
  v2 = [acceptedPasses npkFindFirstObjectMatchingCondition:&__block_literal_global_9];

  return v2 != 0;
}

- (BOOL)npkIsOutgoingPeerPayment
{
  if (![self npkIsPeerPayment])
  {
    return 0;
  }

  peerPaymentQuote = [self peerPaymentQuote];
  recipient = [peerPaymentQuote recipient];
  v4 = recipient != 0;

  return v4;
}

- (BOOL)npkIsCardOnFilePayment
{
  paymentRequest = [self paymentRequest];
  v2 = [paymentRequest requestType] == 1;

  return v2;
}

- (BOOL)npkIsExternalContextAuthorization
{
  paymentRequest = [self paymentRequest];
  v2 = [paymentRequest requestType] == 7;

  return v2;
}

- (BOOL)npkIsCompanionAuthForTvOS
{
  paymentRequest = [self paymentRequest];
  v2 = [paymentRequest requestorDeviceType] == 1;

  return v2;
}

@end