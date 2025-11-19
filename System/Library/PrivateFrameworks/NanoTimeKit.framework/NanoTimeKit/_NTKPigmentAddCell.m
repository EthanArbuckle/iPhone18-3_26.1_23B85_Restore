@interface _NTKPigmentAddCell
+ (id)reuseIdentifier;
- (_NTKPigmentAddCell)initWithFrame:(CGRect)a3;
- (void)_updateCheck;
- (void)layoutSubviews;
- (void)setDevice:(id)a3;
- (void)setPrimaryColor:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation _NTKPigmentAddCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (_NTKPigmentAddCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = _NTKPigmentAddCell;
  v3 = [(_NTKPigmentAddCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    swatch = v3->_swatch;
    v3->_swatch = v4;

    [(_NTKPigmentAddCell *)v3 addSubview:v3->_swatch];
    v6 = objc_opt_new();
    check = v3->_check;
    v3->_check = v6;

    v8 = BPSBackgroundColor();
    [(UIImageView *)v3->_check setTintColor:v8];

    [(UIImageView *)v3->_check setHidden:1];
    [(_NTKPigmentAddCell *)v3 addSubview:v3->_check];
  }

  return v3;
}

- (void)setDevice:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_device] & 1) == 0)
  {
    objc_storeStrong(&self->_device, a3);
    [(_NTKPigmentAddCell *)self _updateCheck];
  }
}

- (void)setPrimaryColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_primaryColor] & 1) == 0)
  {
    objc_storeStrong(&self->_primaryColor, a3);
    [(_NTKPigmentAddCell *)self _updateCheck];
  }
}

- (void)_updateCheck
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (_LayoutConstants_onceToken != -1)
  {
    [_NTKPigmentAddCell _updateCheck];
  }

  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:*&_LayoutConstants__constants_1];
  if (self->_primaryColor)
  {
    v4 = MEMORY[0x277D755D0];
    v10[0] = self->_primaryColor;
    v5 = BPSBackgroundColor();
    v10[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v7 = [v4 configurationWithPaletteColors:v6];

    v8 = [v3 configurationByApplyingConfiguration:v7];

    v3 = v8;
  }

  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill" withConfiguration:v3];
  [(UIImageView *)self->_check setImage:v9];
  [(UIImageView *)self->_check sizeToFit];
  [(_NTKPigmentAddCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _NTKPigmentAddCell;
  [(_NTKPigmentAddCell *)&v3 layoutSubviews];
  [(_NTKPigmentAddCell *)self bounds];
  [(UIImageView *)self->_swatch setFrame:?];
  [(UIImageView *)self->_check frame];
  UIRectCenteredRect();
  [(UIImageView *)self->_check setFrame:?];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _NTKPigmentAddCell;
  [(_NTKPigmentAddCell *)&v5 setSelected:?];
  [(UIImageView *)self->_check setHidden:!v3];
}

@end