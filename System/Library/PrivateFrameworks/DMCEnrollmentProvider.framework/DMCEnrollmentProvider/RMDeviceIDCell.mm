@interface RMDeviceIDCell
+ (id)specifierWithTitle:(id)a3 value:(id)a4;
- (RMDeviceIDCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
@end

@implementation RMDeviceIDCell

+ (id)specifierWithTitle:(id)a3 value:(id)a4
{
  v5 = MEMORY[0x277D3FAD8];
  v6 = a4;
  v7 = [v5 preferenceSpecifierNamed:a3 target:0 set:0 get:0 detail:0 cell:4 edit:0];
  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v7 setProperty:&unk_285A0E498 forKey:*MEMORY[0x277D40140]];
  [v7 setProperty:v6 forKey:@"RMDeviceIDValueKey"];

  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FED8]];

  return v7;
}

- (RMDeviceIDCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v7 = a5;
  v18.receiver = self;
  v18.super_class = RMDeviceIDCell;
  v8 = [(PSTableCell *)&v18 initWithStyle:3 reuseIdentifier:a4 specifier:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [(PSTableCell *)v8 titleLabel];
    v11 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [v10 setFont:v11];

    v12 = [(PSTableCell *)v9 valueLabel];
    v13 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [v12 setFont:v13];

    v14 = [(PSTableCell *)v9 valueLabel];
    v15 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v14 setColor:v15];
  }

  v16 = [v7 propertyForKey:@"RMDeviceIDValueKey"];
  [(PSTableCell *)v9 setValue:v16];

  return v9;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = RMDeviceIDCell;
  [(PSTableCell *)&v19 layoutSubviews];
  v3 = [(PSTableCell *)self titleLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [(PSTableCell *)self valueLabel];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(RMDeviceIDCell *)self bounds];
  v18 = round((v17 - (v9 + v16 + 2.0)) * 0.5);
  [v3 setFrame:{v5, v18, v7, v9}];
  [v10 setFrame:{v12, v9 + v18 + 2.0, v14, v16}];
}

@end