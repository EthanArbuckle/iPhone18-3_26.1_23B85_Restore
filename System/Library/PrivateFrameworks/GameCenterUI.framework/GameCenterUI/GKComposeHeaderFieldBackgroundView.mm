@interface GKComposeHeaderFieldBackgroundView
- (GKComposeHeaderFieldBackgroundView)init;
- (void)layoutSubviews;
- (void)resetBackgroundImage;
- (void)setLocation:(unsigned int)location;
@end

@implementation GKComposeHeaderFieldBackgroundView

- (GKComposeHeaderFieldBackgroundView)init
{
  v5.receiver = self;
  v5.super_class = GKComposeHeaderFieldBackgroundView;
  v2 = [(GKComposeHeaderFieldBackgroundView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(GKComposeHeaderFieldBackgroundView *)v2 setOpaque:0];
    [(GKComposeHeaderFieldBackgroundView *)v3 setBackgroundColor:0];
    [(GKComposeHeaderFieldBackgroundView *)v3 setContentMode:0];
    v3->_location = 6;
  }

  return v3;
}

- (void)resetBackgroundImage
{
  mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
  viewBackgroundColor = [mEMORY[0x277D0C868] viewBackgroundColor];
  [(GKComposeHeaderFieldBackgroundView *)self setBackgroundColor:viewBackgroundColor];

  [(GKComposeHeaderFieldBackgroundView *)self setImage:0];
}

- (void)setLocation:(unsigned int)location
{
  if (self->_location != location)
  {
    self->_location = location;
    [(GKComposeHeaderFieldBackgroundView *)self setImage:0];

    [(GKComposeHeaderFieldBackgroundView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = GKComposeHeaderFieldBackgroundView;
  [(GKComposeHeaderFieldBackgroundView *)&v4 layoutSubviews];
  image = [(GKComposeHeaderFieldBackgroundView *)self image];

  if (!image)
  {
    [(GKComposeHeaderFieldBackgroundView *)self resetBackgroundImage];
  }
}

@end