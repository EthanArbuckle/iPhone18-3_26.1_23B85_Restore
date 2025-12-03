@interface NTKCFaceDetailPigmentColorSliderCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailPigmentColorSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NTKCFaceDetailPigmentColorSliderCellDelegate)delegate;
- (void)colorSlider:(id)slider valueChanged:(double)changed phase:(int64_t)phase;
- (void)layoutSubviews;
@end

@implementation NTKCFaceDetailPigmentColorSliderCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCFaceDetailPigmentColorSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = NTKCFaceDetailPigmentColorSliderCell;
  v4 = [(NTKCFaceDetailRowActionCell *)&v11 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(NTKCDetailTableViewCell *)v4 setShowsSeparator:0];
    v6 = [NTKColorSlider alloc];
    v7 = [(NTKColorSlider *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    slider = v5->_slider;
    v5->_slider = v7;

    [(NTKColorSlider *)v5->_slider setDelegate:v5];
    contentView = [(NTKCFaceDetailPigmentColorSliderCell *)v5 contentView];
    [contentView addSubview:v5->_slider];
  }

  return v5;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NTKCFaceDetailPigmentColorSliderCell;
  [(NTKCFaceDetailRowActionCell *)&v13 layoutSubviews];
  [(NTKCFaceDetailPigmentColorSliderCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [NTKCFaceDetailEditOptionCell insetSpacingForStyle:0];
  v12 = v11;
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  v15 = CGRectInset(v14, v12, 0.0);
  [(NTKColorSlider *)self->_slider setFrame:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
}

- (void)colorSlider:(id)slider valueChanged:(double)changed phase:(int64_t)phase
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pigmentColorSliderCell:self colorFractionChanged:phase != 2 transiently:phase == 3 canceled:changed];
}

- (NTKCFaceDetailPigmentColorSliderCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end