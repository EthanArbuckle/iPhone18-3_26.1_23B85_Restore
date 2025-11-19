@interface UIFont(MobilePhoneAdditions)
+ (id)_thinSystemFontWithDialerCharacteristicsOfSize:()MobilePhoneAdditions;
+ (id)phPreferredBoldFontForTextStyle:()MobilePhoneAdditions;
+ (id)phPreferredFontForTextStyle:()MobilePhoneAdditions;
+ (id)phPreferredItalicFontForTextStyle:()MobilePhoneAdditions;
+ (id)phPreferredTightLeadingFontForTextStyle:()MobilePhoneAdditions;
- (id)withCaseSensitiveAttribute;
@end

@implementation UIFont(MobilePhoneAdditions)

+ (id)phPreferredFontForTextStyle:()MobilePhoneAdditions
{
  v0 = [MEMORY[0x277D74310] phPreferredFontDescriptorForTextStyle:?];
  v1 = [MEMORY[0x277D74300] fontWithDescriptor:v0 size:0.0];
  v2 = [v1 withCaseSensitiveAttribute];

  return v2;
}

+ (id)phPreferredBoldFontForTextStyle:()MobilePhoneAdditions
{
  v3 = [MEMORY[0x277D74310] phPreferredFontDescriptorForTextStyle:a3 addingSymbolicTraits:2];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];
  v5 = [v4 withCaseSensitiveAttribute];

  return v5;
}

+ (id)phPreferredItalicFontForTextStyle:()MobilePhoneAdditions
{
  v3 = [MEMORY[0x277D74310] phPreferredFontDescriptorForTextStyle:a3 addingSymbolicTraits:1];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];
  v5 = [v4 withCaseSensitiveAttribute];

  return v5;
}

+ (id)phPreferredTightLeadingFontForTextStyle:()MobilePhoneAdditions
{
  v3 = [MEMORY[0x277D74310] phPreferredFontDescriptorForTextStyle:a3 addingSymbolicTraits:0x8000];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];
  v5 = [v4 withCaseSensitiveAttribute];

  return v5;
}

+ (id)_thinSystemFontWithDialerCharacteristicsOfSize:()MobilePhoneAdditions
{
  v0 = [MEMORY[0x277D74300] _thinSystemFontOfSize:?];
  v1 = [v0 withCaseSensitiveAttribute];

  return v1;
}

- (id)withCaseSensitiveAttribute
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277D74338];
  v2 = *MEMORY[0x277D74388];
  v11[0] = *MEMORY[0x277D74398];
  v11[1] = v2;
  v12[0] = &unk_285537D10;
  v12[1] = &unk_285537D28;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v13 = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v15[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v6 = [a1 fontDescriptor];
  v7 = [v6 fontDescriptorByAddingAttributes:v5];

  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end