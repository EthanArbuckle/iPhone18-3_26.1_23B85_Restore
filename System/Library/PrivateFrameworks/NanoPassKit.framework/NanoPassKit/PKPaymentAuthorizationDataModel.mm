@interface PKPaymentAuthorizationDataModel
@end

@implementation PKPaymentAuthorizationDataModel

void __86__PKPaymentAuthorizationDataModel_NanoPassKit__npkSetPassAndPaymentApplicationForAID___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [v6 deviceInAppPaymentApplications];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__PKPaymentAuthorizationDataModel_NanoPassKit__npkSetPassAndPaymentApplicationForAID___block_invoke_2;
  v9[3] = &unk_279946A98;
  v10 = *(a1 + 32);
  v11 = v6;
  v12 = *(a1 + 40);
  v13 = a4;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v9];
}

void __86__PKPaymentAuthorizationDataModel_NanoPassKit__npkSetPassAndPaymentApplicationForAID___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 applicationIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
    v7 = [*(a1 + 40) devicePrimaryInAppPaymentApplication];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a3 = 1;
    **(a1 + 64) = 1;
  }
}

@end