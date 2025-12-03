@interface DRDebugDot
+ (id)dotWithTitle:(id)title color:(id)color diameter:(double)diameter;
- (void)setTitle:(id)title;
- (void)tintColorDidChange;
@end

@implementation DRDebugDot

+ (id)dotWithTitle:(id)title color:(id)color diameter:(double)diameter
{
  colorCopy = color;
  titleCopy = title;
  v9 = [DRDebugDot alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(DRDebugDot *)v9 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(DRDebugDot *)height setTintColor:colorCopy];
  v14 = [[UIView alloc] initWithFrame:{0.0, 0.0, diameter, diameter}];
  layer = [v14 layer];
  [layer setCornerRadius:diameter * 0.5];

  v16 = +[UIColor tintColor];
  [v14 setBackgroundColor:v16];

  v17 = CGPointZero.y;
  [v14 setCenter:{CGPointZero.x, v17}];
  layer2 = [v14 layer];
  [layer2 setAllowsEdgeAntialiasing:1];

  [(DRDebugDot *)height addSubview:v14];
  v19 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UILabel *)v19 setText:titleCopy];

  [(UILabel *)v19 setTextAlignment:1];
  v20 = +[UIColor whiteColor];
  [(UILabel *)v19 setTextColor:v20];

  v21 = [UIFont boldSystemFontOfSize:9.0];
  [(UILabel *)v19 setFont:v21];

  layer3 = [(UILabel *)v19 layer];
  [layer3 setAnchorPoint:{CGPointZero.x, v17}];

  v23 = +[UIColor tintColor];
  [(UILabel *)v19 setBackgroundColor:v23];

  [(UILabel *)v19 sizeToFit];
  [(UILabel *)v19 bounds];
  v34 = CGRectInset(v33, -3.0, -1.0);
  [(UILabel *)v19 setBounds:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
  [(UILabel *)v19 setCenter:9.0, 3.0];
  cGColor = [colorCopy CGColor];

  layer4 = [(UILabel *)v19 layer];
  [layer4 setBorderColor:cGColor];

  layer5 = [(UILabel *)v19 layer];
  [layer5 setBorderWidth:1.0];

  layer6 = [(UILabel *)v19 layer];
  [layer6 setAllowsEdgeAntialiasing:1];

  layer7 = [(UILabel *)v19 layer];
  [layer7 setCornerRadius:3.0];

  layer8 = [(UILabel *)v19 layer];
  [layer8 setCornerCurve:kCACornerCurveContinuous];

  [(UILabel *)v19 setClipsToBounds:1];
  [(DRDebugDot *)height addSubview:v19];
  label = height->_label;
  height->_label = v19;

  return height;
}

- (void)setTitle:(id)title
{
  [(UILabel *)self->_label setText:title];
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
  tintColor = [(DRDebugDot *)self tintColor];
  cGColor = [tintColor CGColor];
  layer = [(UILabel *)self->_label layer];
  [layer setBorderColor:cGColor];
}

@end