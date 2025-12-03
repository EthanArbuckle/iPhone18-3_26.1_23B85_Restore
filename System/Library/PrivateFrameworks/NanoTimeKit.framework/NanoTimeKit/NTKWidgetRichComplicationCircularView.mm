@interface NTKWidgetRichComplicationCircularView
- (NTKWidgetRichComplicationCircularView)initWithFamily:(int64_t)family;
- (void)layoutSubviews;
- (void)setPlatterColor:(id)color;
- (void)setPlatterVisualEffect:(id)effect;
@end

@implementation NTKWidgetRichComplicationCircularView

- (NTKWidgetRichComplicationCircularView)initWithFamily:(int64_t)family
{
  v9.receiver = self;
  v9.super_class = NTKWidgetRichComplicationCircularView;
  v3 = [(NTKWidgetRichComplicationView *)&v9 initWithFamily:family];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKWidgetRichComplicationCircularView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    platterView = v3->_platterView;
    v3->_platterView = v5;

    [(UIView *)v3->_platterView setBackgroundColor:v3->_platterColor];
    [(NTKWidgetRichComplicationCircularView *)v3 addSubview:v3->_platterView];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(NTKWidgetRichComplicationCircularView *)v3 setPlatterColor:blackColor];
  }

  return v3;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = NTKWidgetRichComplicationCircularView;
  [(NTKWidgetRichComplicationView *)&v11 layoutSubviews];
  [(NTKWidgetRichComplicationCircularView *)self sendSubviewToBack:self->_platterView];
  if (self->_platterVisualEffectView)
  {
    [(NTKWidgetRichComplicationCircularView *)self sendSubviewToBack:?];
  }

  [(NTKWidgetRichComplicationCircularView *)self bounds];
  Width = CGRectGetWidth(v12);
  [(NTKWidgetRichComplicationCircularView *)self bounds];
  Height = CGRectGetHeight(v13);
  if (Width >= Height)
  {
    Width = Height;
  }

  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  [(NTKWidgetRichComplicationCircularView *)self bounds];
  [(UIView *)self->_platterView setFrame:NTKRectCenteredInRect(v5, v6, Width, Width, v7, v8, v9)];
  layer = [(UIView *)self->_platterView layer];
  [layer setCornerRadius:Width * 0.5];
}

- (void)setPlatterColor:(id)color
{
  objc_storeStrong(&self->_platterColor, color);
  colorCopy = color;
  [(UIView *)self->_platterView setBackgroundColor:colorCopy];
}

- (void)setPlatterVisualEffect:(id)effect
{
  effectCopy = effect;
  if (([(UIVisualEffect *)self->_platterVisualEffect isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_platterVisualEffect, effect);
    platterVisualEffectView = self->_platterVisualEffectView;
    if (effectCopy)
    {
      if (platterVisualEffectView)
      {
        [(UIVisualEffectView *)platterVisualEffectView setEffect:effectCopy];
      }

      else
      {
        v7 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:effectCopy];
        v8 = self->_platterVisualEffectView;
        self->_platterVisualEffectView = v7;

        v9 = self->_platterVisualEffectView;
        [(NTKWidgetRichComplicationCircularView *)self bounds];
        [(UIVisualEffectView *)v9 setBounds:?];
        [(UIVisualEffectView *)self->_platterVisualEffectView setAutoresizingMask:18];
        device = [(CDRichComplicationView *)self device];
        v11 = NTKWhistlerSubdialComplicationDiameter();

        layer = [(UIVisualEffectView *)self->_platterVisualEffectView layer];
        [layer setCornerRadius:v11 * 0.5];

        [(UIVisualEffectView *)self->_platterVisualEffectView setClipsToBounds:1];
        [(NTKWidgetRichComplicationCircularView *)self insertSubview:self->_platterVisualEffectView belowSubview:self->_platterView];
      }
    }

    else
    {
      [(UIVisualEffectView *)platterVisualEffectView removeFromSuperview];
      v6 = self->_platterVisualEffectView;
      self->_platterVisualEffectView = 0;
    }
  }
}

@end