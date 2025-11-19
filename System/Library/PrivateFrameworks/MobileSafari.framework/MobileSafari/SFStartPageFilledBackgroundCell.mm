@interface SFStartPageFilledBackgroundCell
- (SFStartPageFilledBackgroundCell)initWithFrame:(CGRect)a3;
- (id)defaultBackgroundConfiguration;
- (void)setBackdropCaptureView:(id)a3;
@end

@implementation SFStartPageFilledBackgroundCell

- (id)defaultBackgroundConfiguration
{
  v5.receiver = self;
  v5.super_class = SFStartPageFilledBackgroundCell;
  v3 = [(SFStartPageFilledBackgroundCell *)&v5 defaultBackgroundConfiguration];
  [v3 setCustomView:self->_backgroundEffectView];

  return v3;
}

- (SFStartPageFilledBackgroundCell)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = SFStartPageFilledBackgroundCell;
  v3 = [(SFStartPageFilledBackgroundCell *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DD298] sf_startPageCellBackgroundEffectViewWithShadow:1 shadowRadius:8.0];
    backgroundEffectView = v3->_backgroundEffectView;
    v3->_backgroundEffectView = v4;

    [(UIVisualEffectView *)v3->_backgroundEffectView sf_configureAsStartPageBackground];
    v6 = v3->_backgroundEffectView;
    v7 = [MEMORY[0x1E69DD298] sf_startPageBackgroundTraits];
    v8 = [(UIVisualEffectView *)v6 registerForTraitChanges:v7 withTarget:v3->_backgroundEffectView action:sel_sf_configureAsStartPageBackground];

    v9 = [(SFStartPageFilledBackgroundCell *)v3 defaultBackgroundConfiguration];
    [(SFStartPageFilledBackgroundCell *)v3 setBackgroundConfiguration:v9];

    v10 = v3;
  }

  return v3;
}

- (void)setBackdropCaptureView:(id)a3
{
  v6 = a3;
  v4 = [(UIVisualEffectView *)self->_backgroundEffectView _captureView];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(UIVisualEffectView *)self->_backgroundEffectView _setCaptureView:v6];
  }
}

@end