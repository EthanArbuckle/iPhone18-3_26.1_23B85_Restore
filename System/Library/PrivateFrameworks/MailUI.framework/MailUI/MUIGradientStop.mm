@interface MUIGradientStop
- (BOOL)isEqual:(id)equal;
- (MUIGradientStop)initWithColor:(id)color location:(double)location;
- (unint64_t)hash;
@end

@implementation MUIGradientStop

- (MUIGradientStop)initWithColor:(id)color location:(double)location
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = MUIGradientStop;
  v8 = [(MUIGradientStop *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_color, color);
    v9->_location = location;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MUIGradientStop;
    if ([(MUIGradientStop *)&v13 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      color = [(MUIGradientStop *)self color];
      color2 = [(MUIGradientStop *)equalCopy color];
      if ([color isEqual:color2])
      {
        [(MUIGradientStop *)self location];
        v8 = v7;
        [(MUIGradientStop *)equalCopy location];
        v10 = v8 - v9;
        if (v10 < 0.0)
        {
          v10 = -v10;
        }

        v11 = v10 < 2.22044605e-16;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  color = [(MUIGradientStop *)self color];
  v4 = [color hash];

  v5 = MEMORY[0x277CCABB0];
  [(MUIGradientStop *)self location];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 hash];

  return 33 * v4 + 5859909 + v7;
}

@end