@interface ContactResolver
@end

@implementation ContactResolver

void ___ContactResolver_block_invoke()
{
  v3 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v0 = +[PKPeerPaymentCounterpartHandleFormatter requiredContactKeys];
  v1 = [[PKContactResolver alloc] initWithContactStore:v3 keysToFetch:v0];
  v2 = qword_1EB5A0450;
  qword_1EB5A0450 = v1;
}

@end