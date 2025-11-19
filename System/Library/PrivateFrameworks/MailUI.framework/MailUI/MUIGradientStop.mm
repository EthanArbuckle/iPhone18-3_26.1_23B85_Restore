@interface MUIGradientStop
- (BOOL)isEqual:(id)a3;
- (MUIGradientStop)initWithColor:(id)a3 location:(double)a4;
- (unint64_t)hash;
@end

@implementation MUIGradientStop

- (MUIGradientStop)initWithColor:(id)a3 location:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MUIGradientStop;
  v8 = [(MUIGradientStop *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_color, a3);
    v9->_location = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MUIGradientStop;
    if ([(MUIGradientStop *)&v13 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [(MUIGradientStop *)self color];
      v6 = [(MUIGradientStop *)v4 color];
      if ([v5 isEqual:v6])
      {
        [(MUIGradientStop *)self location];
        v8 = v7;
        [(MUIGradientStop *)v4 location];
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
  v3 = [(MUIGradientStop *)self color];
  v4 = [v3 hash];

  v5 = MEMORY[0x277CCABB0];
  [(MUIGradientStop *)self location];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 hash];

  return 33 * v4 + 5859909 + v7;
}

@end