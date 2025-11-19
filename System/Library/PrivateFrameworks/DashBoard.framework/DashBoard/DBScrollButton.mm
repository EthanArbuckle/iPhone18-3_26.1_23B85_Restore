@interface DBScrollButton
+ (id)buttonWithDirection:(unint64_t)a3;
- (void)_updateImage;
- (void)setEnabled:(BOOL)a3;
- (void)setScrollImage:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DBScrollButton

- (void)_updateImage
{
  v3 = [(DBScrollButton *)self scrollImage];
  v4 = [MEMORY[0x277D75348] _labelColor];
  v5 = [v3 _flatImageWithColor:v4];
  [(DBScrollButton *)self setImage:v5 forState:0];

  v8 = [(DBScrollButton *)self scrollImage];
  v6 = [MEMORY[0x277D75348] _carSystemTertiaryColor];
  v7 = [v8 _flatImageWithColor:v6];
  [(DBScrollButton *)self setImage:v7 forState:2];
}

+ (id)buttonWithDirection:(unint64_t)a3
{
  v4 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceIdiom:3];
  v5 = [DBScrollButton buttonWithType:0];
  v6 = @"chevron.forward";
  if (!a3)
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

- (void)setScrollImage:(id)a3
{
  objc_storeStrong(&self->_scrollImage, a3);

  [(DBScrollButton *)self _updateImage];
}

- (void)setEnabled:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = DBScrollButton;
  [(DBScrollButton *)&v6 setEnabled:?];
  if (a3)
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

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = DBScrollButton;
  [(DBScrollButton *)&v4 traitCollectionDidChange:a3];
  [(DBScrollButton *)self _updateImage];
}

@end