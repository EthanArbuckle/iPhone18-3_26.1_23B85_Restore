@interface CUIiPhoneOSThemeSchema
@end

@implementation CUIiPhoneOSThemeSchema

void __52___CUIiPhoneOSThemeSchema__sortedElementDefinitions__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) elementDefinitionCount];
  v2 = malloc_type_malloc(0x1BC0uLL, 0x10500404E17A541uLL);
  _sortedElementDefinitions__sortedElements = v2;
  memcpy(v2, gElementDefinitionsEmbedded, 0x1BC0uLL);

  qsort_b(v2, v1, 0xDE0uLL, &__block_literal_global_16);
}

void __51___CUIiPhoneOSThemeSchema__sortedEffectDefinitions__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) effectDefinitionCount];
  v2 = malloc_type_malloc(0x1BC0uLL, 0x10500404E17A541uLL);
  _sortedEffectDefinitions__sortedEffects = v2;
  memcpy(v2, gEffectDefinitionsEmbedded, 0x1BC0uLL);

  qsort_b(v2, v1, 0xDE0uLL, &__block_literal_global_512);
}

@end