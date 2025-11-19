@interface ItalicTextProviderForText
@end

@implementation ItalicTextProviderForText

id ___ItalicTextProviderForText_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = 0;
  if (v6 && !a3)
  {
    v8 = a4;
    if ([v8 uppercase])
    {
      v9 = [MEMORY[0x277CBEAF8] currentLocale];
      v10 = [v6 uppercaseStringWithLocale:v9];

      v6 = v10;
    }

    v11 = MEMORY[0x277CBBB08];
    v12 = [v8 font];
    v13 = [v12 fontDescriptor];
    v14 = [v13 fontDescriptorWithSymbolicTraits:1];
    v15 = [v8 font];

    [v15 pointSize];
    v16 = [v11 fontWithDescriptor:v14 size:?];

    v19 = *MEMORY[0x277D740A8];
    v20[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v7 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6 attributes:v17];
  }

  return v7;
}

@end