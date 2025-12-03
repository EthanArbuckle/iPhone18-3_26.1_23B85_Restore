@interface HUSymbolIconPickerHeaderCell
- (HUSymbolIconPickerHeaderCell)initWithFrame:(CGRect)frame;
- (void)setIconDescriptor:(id)descriptor;
@end

@implementation HUSymbolIconPickerHeaderCell

- (HUSymbolIconPickerHeaderCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = HUSymbolIconPickerHeaderCell;
  v3 = [(HUSymbolIconPickerHeaderCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    [(HUSymbolIconPickerHeaderCell *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    [(HUSymbolIconPickerHeaderCell *)v3 setImageView:v5];

    imageView = [(HUSymbolIconPickerHeaderCell *)v3 imageView];
    [imageView setContentMode:1];

    contentView = [(HUSymbolIconPickerHeaderCell *)v3 contentView];
    imageView2 = [(HUSymbolIconPickerHeaderCell *)v3 imageView];
    [contentView addSubview:imageView2];
  }

  return v3;
}

- (void)setIconDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  objc_opt_class();
  v14 = descriptorCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v14;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  imageIdentifier = [v6 imageIdentifier];
  v8 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A20]];
  imageSymbolConfiguration = [v6 imageSymbolConfiguration];
  v10 = [v8 configurationByApplyingConfiguration:imageSymbolConfiguration];

  v11 = [MEMORY[0x277D755B8] _systemImageNamed:imageIdentifier withConfiguration:v10];
  v12 = [v11 imageWithRenderingMode:2];
  imageView = [(HUSymbolIconPickerHeaderCell *)self imageView];
  [imageView setImage:v12];
}

@end