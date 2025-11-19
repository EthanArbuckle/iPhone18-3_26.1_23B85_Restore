@interface HUSymbolIconPickerHeaderCell
- (HUSymbolIconPickerHeaderCell)initWithFrame:(CGRect)a3;
- (void)setIconDescriptor:(id)a3;
@end

@implementation HUSymbolIconPickerHeaderCell

- (HUSymbolIconPickerHeaderCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = HUSymbolIconPickerHeaderCell;
  v3 = [(HUSymbolIconPickerHeaderCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    [(HUSymbolIconPickerHeaderCell *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    [(HUSymbolIconPickerHeaderCell *)v3 setImageView:v5];

    v6 = [(HUSymbolIconPickerHeaderCell *)v3 imageView];
    [v6 setContentMode:1];

    v7 = [(HUSymbolIconPickerHeaderCell *)v3 contentView];
    v8 = [(HUSymbolIconPickerHeaderCell *)v3 imageView];
    [v7 addSubview:v8];
  }

  return v3;
}

- (void)setIconDescriptor:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v14 = v4;
  if (objc_opt_isKindOfClass())
  {
    v5 = v14;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 imageIdentifier];
  v8 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A20]];
  v9 = [v6 imageSymbolConfiguration];
  v10 = [v8 configurationByApplyingConfiguration:v9];

  v11 = [MEMORY[0x277D755B8] _systemImageNamed:v7 withConfiguration:v10];
  v12 = [v11 imageWithRenderingMode:2];
  v13 = [(HUSymbolIconPickerHeaderCell *)self imageView];
  [v13 setImage:v12];
}

@end