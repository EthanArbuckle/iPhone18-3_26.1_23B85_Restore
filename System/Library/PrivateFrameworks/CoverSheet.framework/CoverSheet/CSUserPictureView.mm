@interface CSUserPictureView
+ (id)_monogrammerForLegibilitySettings:(id)settings diameter:(double)diameter;
- (CSUserPictureView)initWithFrame:(CGRect)frame;
- (id)presentationRegions;
- (void)_regenerateImage;
- (void)layoutSubviews;
- (void)setContact:(id)contact;
- (void)setLegibilitySettings:(id)settings;
@end

@implementation CSUserPictureView

- (CSUserPictureView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CSUserPictureView;
  v3 = [(CSUserPictureView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_diameter = 256.0;
    v5 = [MEMORY[0x277D760A8] sharedInstanceForStyle:1];
    [(CSUserPictureView *)v4 setLegibilitySettings:v5];
  }

  return v4;
}

- (void)setContact:(id)contact
{
  v4 = [contact copy];
  contact = self->_contact;
  self->_contact = v4;

  [(CSUserPictureView *)self _regenerateImage];
}

- (void)layoutSubviews
{
  [(CSUserPictureView *)self bounds];
  [(_UILegibilityView *)self->_monogramLegibilityView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  UIRectCenteredIntegralRectScale();
  v6 = CGRectOffset(v5, 0.0, -20.0);
  [(_UILegibilityView *)self->_monogramLegibilityView setFrame:v6.origin.x, v6.origin.y, v6.size.width, v6.size.height, 0];
  [(_UILegibilityView *)self->_monogramLegibilityView setIsAccessibilityElement:1];
  monogramLegibilityView = self->_monogramLegibilityView;

  [(_UILegibilityView *)monogramLegibilityView setAccessibilityIdentifier:@"user-picture-icon"];
}

- (id)presentationRegions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [CSRegion regionForCoordinateSpace:self->_monogramLegibilityView];
  v3 = [v2 role:2];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    rootSettings = [MEMORY[0x277D65E90] rootSettings];
    [rootSettings userPictureStrengthForStyle:{-[_UILegibilitySettings style](self->_legibilitySettings, "style")}];
    self->_legibilityStrength = v6;

    [(CSUserPictureView *)self _regenerateImage];
  }
}

+ (id)_monogrammerForLegibilitySettings:(id)settings diameter:(double)diameter
{
  if ([settings style] >= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v6 = [objc_alloc(MEMORY[0x277CBDC70]) initWithStyle:v5 diameter:diameter];

  return v6;
}

- (void)_regenerateImage
{
  if (self->_contact)
  {
    v3 = objc_opt_class();
    legibilitySettings = [(CSUserPictureView *)self legibilitySettings];
    v9 = [v3 _monogrammerForLegibilitySettings:legibilitySettings diameter:self->_diameter];

    monogramLegibilityView = self->_monogramLegibilityView;
    if (!monogramLegibilityView)
    {
      v6 = [objc_alloc(MEMORY[0x277D760B8]) initWithSettings:self->_legibilitySettings strength:0 image:self->_legibilityStrength];
      v7 = self->_monogramLegibilityView;
      self->_monogramLegibilityView = v6;

      [(CSUserPictureView *)self addSubview:self->_monogramLegibilityView];
      monogramLegibilityView = self->_monogramLegibilityView;
    }

    v8 = [v9 monogramForContact:self->_contact];
    [(_UILegibilityView *)monogramLegibilityView setImage:v8 shadowImage:0];
  }
}

@end