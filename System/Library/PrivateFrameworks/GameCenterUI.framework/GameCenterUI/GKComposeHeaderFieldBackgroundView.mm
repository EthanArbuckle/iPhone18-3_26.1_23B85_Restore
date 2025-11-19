@interface GKComposeHeaderFieldBackgroundView
- (GKComposeHeaderFieldBackgroundView)init;
- (void)layoutSubviews;
- (void)resetBackgroundImage;
- (void)setLocation:(unsigned int)a3;
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
  v3 = [MEMORY[0x277D0C868] sharedPalette];
  v4 = [v3 viewBackgroundColor];
  [(GKComposeHeaderFieldBackgroundView *)self setBackgroundColor:v4];

  [(GKComposeHeaderFieldBackgroundView *)self setImage:0];
}

- (void)setLocation:(unsigned int)a3
{
  if (self->_location != a3)
  {
    self->_location = a3;
    [(GKComposeHeaderFieldBackgroundView *)self setImage:0];

    [(GKComposeHeaderFieldBackgroundView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = GKComposeHeaderFieldBackgroundView;
  [(GKComposeHeaderFieldBackgroundView *)&v4 layoutSubviews];
  v3 = [(GKComposeHeaderFieldBackgroundView *)self image];

  if (!v3)
  {
    [(GKComposeHeaderFieldBackgroundView *)self resetBackgroundImage];
  }
}

@end