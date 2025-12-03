@interface DBScrollButton
+ (id)buttonWithDirection:(unint64_t)direction;
- (void)_updateImage;
- (void)setEnabled:(BOOL)enabled;
- (void)setScrollImage:(id)image;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DBScrollButton

- (void)_updateImage
{
  scrollImage = [(DBScrollButton *)self scrollImage];
  _labelColor = [MEMORY[0x277D75348] _labelColor];
  v5 = [scrollImage _flatImageWithColor:_labelColor];
  [(DBScrollButton *)self setImage:v5 forState:0];

  scrollImage2 = [(DBScrollButton *)self scrollImage];
  _carSystemTertiaryColor = [MEMORY[0x277D75348] _carSystemTertiaryColor];
  v7 = [scrollImage2 _flatImageWithColor:_carSystemTertiaryColor];
  [(DBScrollButton *)self setImage:v7 forState:2];
}

+ (id)buttonWithDirection:(unint64_t)direction
{
  v4 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceIdiom:3];
  v5 = [DBScrollButton buttonWithType:0];
  v6 = @"chevron.forward";
  if (!direction)
  {
    v6 = @"chevron.backward";
  }

  v7 = MEMORY[0x277D755D0];
  v8 = v6;
  v9 = [v7 configurationWithPointSize:6 weight:15.0];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:v8 compatibleWithTraitCollection:v4];

  v11 = [v10 imageWithConfiguration:v9];

  [v5 setScrollImage:v11];

  return v5;
}

- (void)setScrollImage:(id)image
{
  objc_storeStrong(&self->_scrollImage, image);

  [(DBScrollButton *)self _updateImage];
}

- (void)setEnabled:(BOOL)enabled
{
  v6.receiver = self;
  v6.super_class = DBScrollButton;
  [(DBScrollButton *)&v6 setEnabled:?];
  if (enabled)
  {
    [MEMORY[0x277D75348] _labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] _carSystemTertiaryColor];
  }
  v5 = ;
  [(DBScrollButton *)self setTintColor:v5];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = DBScrollButton;
  [(DBScrollButton *)&v4 traitCollectionDidChange:change];
  [(DBScrollButton *)self _updateImage];
}

@end