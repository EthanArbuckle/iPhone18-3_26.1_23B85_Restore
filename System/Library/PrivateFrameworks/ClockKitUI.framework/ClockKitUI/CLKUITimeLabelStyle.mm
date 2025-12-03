@interface CLKUITimeLabelStyle
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation CLKUITimeLabelStyle

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setThreeDigitFont:self->_threeDigitFont];
  [v4 setFourDigitFont:self->_fourDigitFont];
  [v4 setDesignatorFont:self->_designatorFont];
  [v4 setStringAttributes:self->_stringAttributes];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      threeDigitFont = [(CLKUITimeLabelStyle *)equalCopy threeDigitFont];
      if ([threeDigitFont isEqual:self->_threeDigitFont])
      {
        fourDigitFont = [(CLKUITimeLabelStyle *)equalCopy fourDigitFont];
        if ([fourDigitFont isEqual:self->_fourDigitFont])
        {
          designatorFont = [(CLKUITimeLabelStyle *)equalCopy designatorFont];
          if ([designatorFont isEqual:self->_designatorFont])
          {
            stringAttributes = [(CLKUITimeLabelStyle *)equalCopy stringAttributes];
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