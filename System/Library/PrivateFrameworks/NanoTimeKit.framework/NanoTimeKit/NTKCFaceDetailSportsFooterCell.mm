@interface NTKCFaceDetailSportsFooterCell
+ (id)_attributedFooterText;
+ (id)reuseIdentifier;
- (NTKCFaceDetailSportsFooterCell)init;
@end

@implementation NTKCFaceDetailSportsFooterCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)_attributedFooterText
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = NTKCCustomizationLocalizedString(@"SPORTS_OPEN_TITLE", @"Open TV app", v2);
  v4 = objc_alloc(MEMORY[0x277CCAB48]);
  v17 = *MEMORY[0x277D740E8];
  v18[0] = @"com.apple.tv://sportsfavorites";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v6 = [v4 initWithString:v3 attributes:v5];

  v8 = NTKCCustomizationLocalizedString(@"SPORTS_HELPER_TEXT", @"You can select your favorite teams in the TV app.", v7);
  v9 = objc_alloc(MEMORY[0x277CCAB48]);
  v15 = *MEMORY[0x277D740C0];
  v10 = BPSDetailTextColor();
  v16 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v12 = [v9 initWithString:v8 attributes:v11];

  v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
  [v12 appendAttributedString:v13];

  [v12 appendAttributedString:v6];

  return v12;
}

- (NTKCFaceDetailSportsFooterCell)init
{
  v5.receiver = self;
  v5.super_class = NTKCFaceDetailSportsFooterCell;
  v2 = [(NTKCFaceDetailDescriptionCell *)&v5 init];
  if (v2)
  {
    v3 = +[NTKCFaceDetailSportsFooterCell _attributedFooterText];
    [(NTKCFaceDetailDescriptionCell *)v2 setAttributedText:v3];
  }

  return v2;
}

@end