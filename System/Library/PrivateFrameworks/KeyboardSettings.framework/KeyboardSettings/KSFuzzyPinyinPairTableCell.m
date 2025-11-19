@interface KSFuzzyPinyinPairTableCell
- (KSFuzzyPinyinPairTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation KSFuzzyPinyinPairTableCell

- (KSFuzzyPinyinPairTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = KSFuzzyPinyinPairTableCell;
  v6 = [(PSTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4 specifier:?];
  if (v6)
  {
    -[PSTableCell setChecked:](v6, "setChecked:", [objc_msgSend(a5 propertyForKey:{*MEMORY[0x277D401A8]), "BOOLValue"}]);
  }

  return v6;
}

@end