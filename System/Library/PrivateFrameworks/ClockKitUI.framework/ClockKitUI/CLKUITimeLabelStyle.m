@interface CLKUITimeLabelStyle
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CLKUITimeLabelStyle

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setThreeDigitFont:self->_threeDigitFont];
  [v4 setFourDigitFont:self->_fourDigitFont];
  [v4 setDesignatorFont:self->_designatorFont];
  [v4 setStringAttributes:self->_stringAttributes];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CLKUITimeLabelStyle *)v4 threeDigitFont];
      if ([v5 isEqual:self->_threeDigitFont])
      {
        v6 = [(CLKUITimeLabelStyle *)v4 fourDigitFont];
        if ([v6 isEqual:self->_fourDigitFont])
        {
          v7 = [(CLKUITimeLabelStyle *)v4 designatorFont];
          if ([v7 isEqual:self->_designatorFont])
          {
            v8 = [(CLKUITimeLabelStyle *)v4 stringAttributes];
            v9 = CLKEqualObjects();
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(CLKFont *)self->_threeDigitFont hash];
  v4 = [(CLKFont *)self->_fourDigitFont hash]* 1000.0 + v3 * 100.0;
  v5 = v4 + [(CLKFont *)self->_designatorFont hash]* 10000.0;
  return (v5 + [(NSDictionary *)self->_stringAttributes hash]* 100000.0);
}

@end