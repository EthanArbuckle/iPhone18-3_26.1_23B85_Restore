@interface NSAttributedString
@end

@implementation NSAttributedString

void __107__NSAttributedString_MPUDynamicType__MPU_attributedStringByUpdatingTextStyleFontsToPreferredTextStyleFonts__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = [a2 fontDescriptor];
  v7 = [v13 objectForKey:*MEMORY[0x277D74378]];
  if (v7)
  {
    v8 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v7];
    v9 = [v8 fontDescriptorWithSymbolicTraits:{objc_msgSend(v13, "symbolicTraits")}];

    v10 = *(a1 + 32);
    v11 = *MEMORY[0x277D740A8];
    v12 = [MEMORY[0x277D74300] fontWithDescriptor:v9 size:0.0];
    [v10 addAttribute:v11 value:v12 range:{a3, a4}];
  }
}

void __67__NSAttributedString_MPUDynamicType__MPU_tallestFontFromAttributes__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    [v6 _bodyLeading];
    v5 = *(*(a1 + 32) + 8);
    if (v4 > *(v5 + 24))
    {
      *(v5 + 24) = v4;
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

@end