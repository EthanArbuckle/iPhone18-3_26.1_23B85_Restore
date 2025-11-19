@interface NSString
@end

@implementation NSString

void __35__NSString_HFAdditions__hf_isEmail__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", @".+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*"];
  v1 = _MergedGlobals_258;
  _MergedGlobals_258 = v0;
}

void __68__NSString_HFAdditions__hf_stringByTransformingFirstWordUsingBlock___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = *(a1[5] + 8);
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  v10 = (*(a1[4] + 16))();
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  *a7 = 1;
}

@end