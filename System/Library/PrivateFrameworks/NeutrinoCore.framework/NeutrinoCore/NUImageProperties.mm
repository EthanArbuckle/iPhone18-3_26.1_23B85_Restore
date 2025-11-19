@interface NUImageProperties
@end

@implementation NUImageProperties

void __56___NUImageProperties_enumerateAuxiliaryImageProperties___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v8 = a3;
  v7 = NUAuxiliaryImageTypeFromString(a2);
  (*(v6 + 16))(v6, v7, v8, a4);
}

@end