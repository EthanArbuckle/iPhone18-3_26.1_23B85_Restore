@interface DBIconBadgeView
- (DBIconBadgeView)init;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setControlState:(unint64_t)a3;
@end

@implementation DBIconBadgeView

- (DBIconBadgeView)init
{
  v6.receiver = self;
  v6.super_class = DBIconBadgeView;
  v2 = [(DBIconBadgeView *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF90D8]);
    dimmingView = v2->_dimmingView;
    v2->_dimmingView = v3;

    [(CPUIDimmingEffectView *)v2->_dimmingView setHidden:1];
    [(DBIconBadgeView *)v2 addSubview:v2->_dimmingView];
  }

  return v2;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = DBIconBadgeView;
  [(DBIconBadgeView *)&v14 layoutSubviews];
  [(DBIconBadgeView *)self bounds];
  BSRectWithSize();
  v16 = CGRectInset(v15, 1.0, 1.0);
  width = v16.size.width;
  height = v16.size.height;
  dimmingView = self->_dimmingView;
  BSRectWithSize();
  [(CPUIDimmingEffectView *)dimmingView setBounds:?];
  v6 = self->_dimmingView;
  UIRectGetCenter();
  [(CPUIDimmingEffectView *)v6 setCenter:?];
  v7 = BSFloatEqualToFloat();
  v8 = MEMORY[0x277CDA130];
  if (!v7)
  {
    v8 = MEMORY[0x277CDA138];
  }

  v9 = *v8;
  v10 = [(CPUIDimmingEffectView *)self->_dimmingView layer];
  [v10 setCornerCurve:v9];

  if (width <= height)
  {
    v11 = width;
  }

  else
  {
    v11 = height;
  }

  v12 = v11 * 0.5;
  v13 = [(CPUIDimmingEffectView *)self->_dimmingView layer];
  [v13 setCornerRadius:v12];
}

- (void)setControlState:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = DBIconBadgeView;
  [(DBIconBadgeView *)&v5 setControlState:?];
  [(CPUIDimmingEffectView *)self->_dimmingView setHidden:a3 != 131073];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = DBIconBadgeView;
  [(DBIconBadgeView *)&v3 prepareForReuse];
  [(CPUIDimmingEffectView *)self->_dimmingView setHidden:1];
}

@end