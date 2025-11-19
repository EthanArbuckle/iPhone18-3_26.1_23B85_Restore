@interface CLKFont
@end

@implementation CLKFont

void __106__CLKFont_RichComplicationRectangularDailyGraphFont__alternatePunctuationRoundedSemiBoldSystemFontOfSize___block_invoke()
{
  v16[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D74388];
  v15[0] = *MEMORY[0x277D74398];
  v15[1] = v0;
  v16[0] = &unk_284181BD0;
  v16[1] = &unk_284181BE8;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v2 = *MEMORY[0x277D74338];
  v12 = v1;
  v13 = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v14 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v5 = MEMORY[0x277CBBB08];
  [MEMORY[0x277D74300] systemFontSize];
  v6 = [v5 systemFontOfSize:*MEMORY[0x277CBB6C0] weight:? design:?];
  v7 = [v6 fontDescriptor];
  v8 = [v7 fontDescriptorByAddingAttributes:v4];
  v9 = alternatePunctuationRoundedSemiBoldSystemFontOfSize__baseDescriptor;
  alternatePunctuationRoundedSemiBoldSystemFontOfSize__baseDescriptor = v8;

  v10 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:512];
  v11 = alternatePunctuationRoundedSemiBoldSystemFontOfSize__cache;
  alternatePunctuationRoundedSemiBoldSystemFontOfSize__cache = v10;
}

@end