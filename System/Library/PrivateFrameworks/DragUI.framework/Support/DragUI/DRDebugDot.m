@interface DRDebugDot
+ (id)dotWithTitle:(id)a3 color:(id)a4 diameter:(double)a5;
- (void)setTitle:(id)a3;
- (void)tintColorDidChange;
@end

@implementation DRDebugDot

+ (id)dotWithTitle:(id)a3 color:(id)a4 diameter:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [DRDebugDot alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = [(DRDebugDot *)v9 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(DRDebugDot *)v13 setTintColor:v7];
  v14 = [[UIView alloc] initWithFrame:{0.0, 0.0, a5, a5}];
  v15 = [v14 layer];
  [v15 setCornerRadius:a5 * 0.5];

  v16 = +[UIColor tintColor];
  [v14 setBackgroundColor:v16];

  v17 = CGPointZero.y;
  [v14 setCenter:{CGPointZero.x, v17}];
  v18 = [v14 layer];
  [v18 setAllowsEdgeAntialiasing:1];

  [(DRDebugDot *)v13 addSubview:v14];
  v19 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UILabel *)v19 setText:v8];

  [(UILabel *)v19 setTextAlignment:1];
  v20 = +[UIColor whiteColor];
  [(UILabel *)v19 setTextColor:v20];

  v21 = [UIFont boldSystemFontOfSize:9.0];
  [(UILabel *)v19 setFont:v21];

  v22 = [(UILabel *)v19 layer];
  [v22 setAnchorPoint:{CGPointZero.x, v17}];

  v23 = +[UIColor tintColor];
  [(UILabel *)v19 setBackgroundColor:v23];

  [(UILabel *)v19 sizeToFit];
  [(UILabel *)v19 bounds];
  v34 = CGRectInset(v33, -3.0, -1.0);
  [(UILabel *)v19 setBounds:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
  [(UILabel *)v19 setCenter:9.0, 3.0];
  v24 = [v7 CGColor];

  v25 = [(UILabel *)v19 layer];
  [v25 setBorderColor:v24];

  v26 = [(UILabel *)v19 layer];
  [v26 setBorderWidth:1.0];

  v27 = [(UILabel *)v19 layer];
  [v27 setAllowsEdgeAntialiasing:1];

  v28 = [(UILabel *)v19 layer];
  [v28 setCornerRadius:3.0];

  v29 = [(UILabel *)v19 layer];
  [v29 setCornerCurve:kCACornerCurveContinuous];

  [(UILabel *)v19 setClipsToBounds:1];
  [(DRDebugDot *)v13 addSubview:v19];
  label = v13->_label;
  v13->_label = v19;

  return v13;
}

- (void)setTitle:(id)a3
{
  [(UILabel *)self->_label setText:a3];
  [(UILabel *)self->_label sizeToFit];
  [(UILabel *)self->_label bounds];
  v7 = CGRectInset(v6, -3.0, -1.0);
  label = self->_label;

  [(UILabel *)label setBounds:v7.origin.x, v7.origin.y, v7.size.width, v7.size.height];
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = DRDebugDot;
  [(DRDebugDot *)&v6 tintColorDidChange];
  v3 = [(DRDebugDot *)self tintColor];
  v4 = [v3 CGColor];
  v5 = [(UILabel *)self->_label layer];
  [v5 setBorderColor:v4];
}

@end