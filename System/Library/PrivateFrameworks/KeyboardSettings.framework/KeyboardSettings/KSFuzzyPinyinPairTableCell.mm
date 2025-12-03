@interface KSFuzzyPinyinPairTableCell
- (KSFuzzyPinyinPairTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation KSFuzzyPinyinPairTableCell

- (KSFuzzyPinyinPairTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = KSFuzzyPinyinPairTableCell;
  v6 = [(PSTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier specifier:?];
  if (v6)
  {
    -[PSTableCell setChecked:](v6, "setChecked:", [objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D401A8]), "BOOLValue"}]);
  }

  return v6;
}

@end