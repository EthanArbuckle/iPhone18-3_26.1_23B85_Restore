@interface NTKWidgetRichComplicationCircularView
- (NTKWidgetRichComplicationCircularView)initWithFamily:(int64_t)a3;
- (void)layoutSubviews;
- (void)setPlatterColor:(id)a3;
- (void)setPlatterVisualEffect:(id)a3;
@end

@implementation NTKWidgetRichComplicationCircularView

- (NTKWidgetRichComplicationCircularView)initWithFamily:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = NTKWidgetRichComplicationCircularView;
  v3 = [(NTKWidgetRichComplicationView *)&v9 initWithFamily:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKWidgetRichComplicationCircularView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    platterView = v3->_platterView;
    v3->_platterView = v5;

    [(UIView *)v3->_platterView setBackgroundColor:v3->_platterColor];
    [(NTKWidgetRichComplicationCircularView *)v3 addSubview:v3->_platterView];
    v7 = [MEMORY[0x277D75348] blackColor];
    [(NTKWidgetRichComplicationCircularView *)v3 setPlatterColor:v7];
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
  v10 = [(UIView *)self->_platterView layer];
  [v10 setCornerRadius:Width * 0.5];
}

- (void)setPlatterColor:(id)a3
{
  objc_storeStrong(&self->_platterColor, a3);
  v5 = a3;
  [(UIView *)self->_platterView setBackgroundColor:v5];
}

- (void)setPlatterVisualEffect:(id)a3
{
  v13 = a3;
  if (([(UIVisualEffect *)self->_platterVisualEffect isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_platterVisualEffect, a3);
    platterVisualEffectView = self->_platterVisualEffectView;
    if (v13)
    {
      if (platterVisualEffectView)
      {
        [(UIVisualEffectView *)platterVisualEffectView setEffect:v13];
      }

      else
      {
        v7 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v13];
        v8 = self->_platterVisualEffectView;
        self->_platterVisualEffectView = v7;

        v9 = self->_platterVisualEffectView;
        [(NTKWidgetRichComplicationCircularView *)self bounds];
        [(UIVisualEffectView *)v9 setBounds:?];
        [(UIVisualEffectView *)self->_platterVisualEffectView setAutoresizingMask:18];
        v10 = [(CDRichComplicationView *)self device];
        v11 = NTKWhistlerSubdialComplicationDiameter();

        v12 = [(UIVisualEffectView *)self->_platterVisualEffectView layer];
        [v12 setCornerRadius:v11 * 0.5];

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