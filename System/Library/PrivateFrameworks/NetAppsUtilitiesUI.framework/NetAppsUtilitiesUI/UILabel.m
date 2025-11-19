@interface UILabel
@end

@implementation UILabel

void __72__UILabel_NAUIAdditions__naui_reloadDynamicFontWithTextStyleDescriptor___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = [a2 fontDescriptor];
  v7 = [v12 objectForKey:*MEMORY[0x277D74378]];
  if (v7)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v8 = -[NAUITextStyleDescriptor initWithTextStyle:symbolicTraits:allowsAccessibilitySizes:allowsSmallSizes:]([NAUITextStyleDescriptor alloc], "initWithTextStyle:symbolicTraits:allowsAccessibilitySizes:allowsSmallSizes:", v7, [v12 symbolicTraits], objc_msgSend(*(a1 + 32), "allowsAccessibilitySizes"), objc_msgSend(*(a1 + 32), "allowsSmallSizes"));
    v9 = *(a1 + 40);
    v10 = *MEMORY[0x277D740A8];
    v11 = [NAUITextStyleDescriptor fontWithTextStyleDescriptor:v8];
    [v9 addAttribute:v10 value:v11 range:{a3, a4}];
  }

  else
  {
    [*(a1 + 40) addAttribute:*MEMORY[0x277D740A8] value:*(a1 + 48) range:{a3, a4}];
  }
}

@end