@interface RMDeviceIDCell
+ (id)specifierWithTitle:(id)title value:(id)value;
- (RMDeviceIDCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation RMDeviceIDCell

+ (id)specifierWithTitle:(id)title value:(id)value
{
  v5 = MEMORY[0x277D3FAD8];
  valueCopy = value;
  v7 = [v5 preferenceSpecifierNamed:title target:0 set:0 get:0 detail:0 cell:4 edit:0];
  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v7 setProperty:&unk_285A0E498 forKey:*MEMORY[0x277D40140]];
  [v7 setProperty:valueCopy forKey:@"RMDeviceIDValueKey"];

  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FED8]];

  return v7;
}

- (RMDeviceIDCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v18.receiver = self;
  v18.super_class = RMDeviceIDCell;
  v8 = [(PSTableCell *)&v18 initWithStyle:3 reuseIdentifier:identifier specifier:specifierCopy];
  v9 = v8;
  if (v8)
  {
    titleLabel = [(PSTableCell *)v8 titleLabel];
    v11 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [titleLabel setFont:v11];

    valueLabel = [(PSTableCell *)v9 valueLabel];
    v13 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [valueLabel setFont:v13];

    valueLabel2 = [(PSTableCell *)v9 valueLabel];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [valueLabel2 setColor:secondaryLabelColor];
  }

  v16 = [specifierCopy propertyForKey:@"RMDeviceIDValueKey"];
  [(PSTableCell *)v9 setValue:v16];

  return v9;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = RMDeviceIDCell;
  [(PSTableCell *)&v19 layoutSubviews];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  valueLabel = [(PSTableCell *)self valueLabel];
  [valueLabel frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(RMDeviceIDCell *)self bounds];
  v18 = round((v17 - (v9 + v16 + 2.0)) * 0.5);
  [titleLabel setFrame:{v5, v18, v7, v9}];
  [valueLabel setFrame:{v12, v9 + v18 + 2.0, v14, v16}];
}

@end