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
  v5 = [a1 acceptedPasses];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__PKPaymentAuthorizationDataModel_NanoPassKit__npkSetPassAndPaymentApplicationForAID___block_invoke;
  v10[3] = &unk_279946AC0;
  v6 = v4;
  v11 = v6;
  v12 = &v20;
  v13 = &v14;
  [v5 enumerateObjectsUsingBlock:v10];

  [a1 beginUpdates];
  if ([v21[5] isPeerPaymentPass])
  {
    v7 = NPKSharedPeerPaymentAccountManager();
    v8 = [v7 account];
    v9 = [v8 currentBalance];
    [v21[5] setPeerPaymentBalance:v9];
  }

  [a1 setPass:v21[5]];
  [a1 setPaymentApplication:v15[5]];
  [a1 endUpdates];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

- (BOOL)npkIsPeerPayment
{
  v1 = [a1 peerPaymentQuote];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)npkIsNearbyPeerPayment
{
  v1 = [a1 paymentRequest];
  v2 = [v1 peerPaymentRequest];

  if (v2)
  {
    v3 = [v2 isDeviceTap];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)npkIsSkeletonPeerPayment
{
  if (![a1 npkIsPeerPayment])
  {
    return 0;
  }

  v2 = [a1 paymentRequest];
  v3 = [v2 paymentSummaryItems];
  v4 = [v3 lastObject];
  v5 = [v4 type] == 1;

  return v5;
}

- (BOOL)npkIsTopUp
{
  v2 = [a1 peerPaymentQuote];
  v3 = [v2 firstQuoteItemOfType:1];
  if (v3)
  {
    v4 = [a1 peerPaymentQuote];
    v5 = [v4 firstQuoteItemOfType:2];
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
  v2 = [a1 peerPaymentQuote];
  v3 = [v2 firstQuoteItemOfType:1];
  if (v3)
  {
    v4 = [a1 peerPaymentQuote];
    v5 = [v4 firstQuoteItemOfType:2];
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
  result = [a1 npkIsSplitPeerPayment];
  if (result)
  {

    return [a1 _hasNonPeerPaymentAcceptedPasses];
  }

  return result;
}

- (uint64_t)npkIsSplitPeerPaymentWithoutAnotherPaymentMethod
{
  result = [a1 npkIsSplitPeerPayment];
  if (result)
  {
    return [a1 _hasNonPeerPaymentAcceptedPasses] ^ 1;
  }

  return result;
}

- (BOOL)_hasNonPeerPaymentAcceptedPasses
{
  v1 = [a1 acceptedPasses];
  v2 = [v1 npkFindFirstObjectMatchingCondition:&__block_literal_global_9];

  return v2 != 0;
}

- (BOOL)npkIsOutgoingPeerPayment
{
  if (![a1 npkIsPeerPayment])
  {
    return 0;
  }

  v2 = [a1 peerPaymentQuote];
  v3 = [v2 recipient];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)npkIsCardOnFilePayment
{
  v1 = [a1 paymentRequest];
  v2 = [v1 requestType] == 1;

  return v2;
}

- (BOOL)npkIsExternalContextAuthorization
{
  v1 = [a1 paymentRequest];
  v2 = [v1 requestType] == 7;

  return v2;
}

- (BOOL)npkIsCompanionAuthForTvOS
{
  v1 = [a1 paymentRequest];
  v2 = [v1 requestorDeviceType] == 1;

  return v2;
}

@end