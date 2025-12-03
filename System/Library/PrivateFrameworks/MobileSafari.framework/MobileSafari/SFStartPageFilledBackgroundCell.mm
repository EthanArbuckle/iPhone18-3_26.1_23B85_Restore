@interface SFStartPageFilledBackgroundCell
- (SFStartPageFilledBackgroundCell)initWithFrame:(CGRect)frame;
- (id)defaultBackgroundConfiguration;
- (void)setBackdropCaptureView:(id)view;
@end

@implementation SFStartPageFilledBackgroundCell

- (id)defaultBackgroundConfiguration
{
  v5.receiver = self;
  v5.super_class = SFStartPageFilledBackgroundCell;
  defaultBackgroundConfiguration = [(SFStartPageFilledBackgroundCell *)&v5 defaultBackgroundConfiguration];
  [defaultBackgroundConfiguration setCustomView:self->_backgroundEffectView];

  return defaultBackgroundConfiguration;
}

- (SFStartPageFilledBackgroundCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = SFStartPageFilledBackgroundCell;
  v3 = [(SFStartPageFilledBackgroundCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DD298] sf_startPageCellBackgroundEffectViewWithShadow:1 shadowRadius:8.0];
    backgroundEffectView = v3->_backgroundEffectView;
    v3->_backgroundEffectView = v4;

    [(UIVisualEffectView *)v3->_backgroundEffectView sf_configureAsStartPageBackground];
    v6 = v3->_backgroundEffectView;
    sf_startPageBackgroundTraits = [MEMORY[0x1E69DD298] sf_startPageBackgroundTraits];
    v8 = [(UIVisualEffectView *)v6 registerForTraitChanges:sf_startPageBackgroundTraits withTarget:v3->_backgroundEffectView action:sel_sf_configureAsStartPageBackground];

    defaultBackgroundConfiguration = [(SFStartPageFilledBackgroundCell *)v3 defaultBackgroundConfiguration];
    [(SFStartPageFilledBackgroundCell *)v3 setBackgroundConfiguration:defaultBackgroundConfiguration];

    v10 = v3;
  }

  return v3;
}

- (void)setBackdropCaptureView:(id)view
{
  viewCopy = view;
  _captureView = [(UIVisualEffectView *)self->_backgroundEffectView _captureView];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(UIVisualEffectView *)self->_backgroundEffectView _setCaptureView:viewCopy];
  }
}

@end