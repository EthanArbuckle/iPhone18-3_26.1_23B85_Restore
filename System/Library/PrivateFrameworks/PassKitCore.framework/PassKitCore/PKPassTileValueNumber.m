@interface PKPassTileValueNumber
+ (id)createWithContent:(id)a3 currencyCode:(id)a4 numberStyle:(int64_t)a5;
- (BOOL)_isEqual:(id)a3;
- (BOOL)_setUpWithDictionary:(id)a3;
- (PKPassTileValueNumber)initWithCoder:(id)a3;
- (id)createResolvedValueWithBundle:(id)a3 privateBundle:(id)a4;
- (id)displayableStringWithPassState:(id)a3 inContext:(int64_t)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassTileValueNumber

- (BOOL)_setUpWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKPassTileValueNumber;
  if (-[PKPassTileValue _setUpWithDictionary:](&v16, sel__setUpWithDictionary_, v4) && ([v4 PKNumberForKey:@"content"], v5 = objc_claimAutoreleasedReturnValue(), content = self->_content, self->_content = v5, content, self->_content))
  {
    v7 = [v4 PKStringForKey:@"currencyCode"];
    currencyCode = self->_currencyCode;
    self->_currencyCode = v7;

    v9 = [v4 PKStringForKey:@"numberStyle"];
    v10 = 1;
    self->_numberStyle = _PKEnumValueFromString(v9, 0, @"PKNumberStyle", @"PKNumberStyleDecimal, WLNumberStyleDecimal, PKNumberStylePercent, WLNumberStylePercent, PKNumberStyleScientific, WLNumberStyleScientific, PKNumberStyleSpellOut, WLNumberStyleSpellOut", v11, v12, v13, v14, 1u);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)createWithContent:(id)a3 currencyCode:(id)a4 numberStyle:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [PKPassTileValue _createForType:2 resolved:1];
    objc_storeStrong(v10 + 3, a3);
    objc_storeStrong(v10 + 4, a4);
    v10[5] = a5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createResolvedValueWithBundle:(id)a3 privateBundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PKPassTileValueNumber;
  v5 = [(PKPassTileValue *)&v7 createResolvedValueWithBundle:a3 privateBundle:a4];
  objc_storeStrong(v5 + 3, self->_content);
  objc_storeStrong(v5 + 4, self->_currencyCode);
  v5[5] = self->_numberStyle;
  return v5;
}

- (id)displayableStringWithPassState:(id)a3 inContext:(int64_t)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v6 = v5;
  if (self->_currencyCode)
  {
    [v5 setCurrencyCode:?];
    numberStyle = 2;
  }

  else
  {
    numberStyle = self->_numberStyle;
  }

  [v6 setNumberStyle:numberStyle];
  v8 = [v6 stringFromNumber:self->_content];

  return v8;
}

- (PKPassTileValueNumber)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKPassTileValueNumber;
  v5 = [(PKPassTileValue *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberStyle"];
    v5->_numberStyle = _PKEnumValueFromString(v10, 0, @"PKNumberStyle", @"PKNumberStyleDecimal, WLNumberStyleDecimal, PKNumberStylePercent, WLNumberStylePercent, PKNumberStyleScientific, WLNumberStyleScientific, PKNumberStyleSpellOut, WLNumberStyleSpellOut", v11, v12, v13, v14, 1u);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = PKPassTileValueNumber;
  v4 = a3;
  [(PKPassTileValue *)&v11 encodeWithCoder:v4];
  [v4 encodeObject:self->_content forKey:@"content"];
  [v4 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  v10 = _PKEnumValueToString(self->_numberStyle, @"PKNumberStyle", @"PKNumberStyleDecimal, WLNumberStyleDecimal, PKNumberStylePercent, WLNumberStylePercent, PKNumberStyleScientific, WLNumberStyleScientific, PKNumberStyleSpellOut, WLNumberStyleSpellOut", v5, v6, v7, v8, v9, 1);
  [v4 encodeObject:v10 forKey:@"numberStyle"];
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = PKPassTileValueNumber;
  v7 = [(PKPassTileValue *)&v6 hash];
  v8 = [(NSNumber *)self->_content hash];
  v3 = [(NSString *)self->_currencyCode hash];
  numberStyle = self->_numberStyle;
  v9 = v3;
  v10 = numberStyle;
  return SipHash();
}

- (BOOL)_isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPassTileValueNumber;
  if ([(PKPassTileValue *)&v14 _isEqual:v4])
  {
    v5 = v4;
    if ([v5[3] isEqualToNumber:self->_content])
    {
      currencyCode = self->_currencyCode;
      v7 = v5[4];
      v8 = currencyCode;
      v9 = v8;
      if (v7 == v8)
      {

LABEL_13:
        v11 = v5[5] == self->_numberStyle;
LABEL_15:

        goto LABEL_16;
      }

      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
      }

      else
      {
        v12 = [(NSString *)v7 isEqualToString:v8];

        if (v12)
        {
          goto LABEL_13;
        }
      }
    }

    v11 = 0;
    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

@end