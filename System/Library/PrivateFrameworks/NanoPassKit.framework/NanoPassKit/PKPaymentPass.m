@interface PKPaymentPass
@end

@implementation PKPaymentPass

void __64__PKPaymentPass_NanoPassKit__npkDevicePaymentApplicationForAID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 applicationIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

@end