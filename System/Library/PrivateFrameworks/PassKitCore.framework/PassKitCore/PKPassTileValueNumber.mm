@interface PKPassTileValueNumber
+ (id)createWithContent:(id)content currencyCode:(id)code numberStyle:(int64_t)style;
- (BOOL)_isEqual:(id)equal;
- (BOOL)_setUpWithDictionary:(id)dictionary;
- (PKPassTileValueNumber)initWithCoder:(id)coder;
- (id)createResolvedValueWithBundle:(id)bundle privateBundle:(id)privateBundle;
- (id)displayableStringWithPassState:(id)state inContext:(int64_t)context;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileValueNumber

- (BOOL)_setUpWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PKPassTileValueNumber;
  if (-[PKPassTileValue _setUpWithDictionary:](&v16, sel__setUpWithDictionary_, dictionaryCopy) && ([dictionaryCopy PKNumberForKey:@"content"], v5 = objc_claimAutoreleasedReturnValue(), content = self->_content, self->_content = v5, content, self->_content))
  {
    v7 = [dictionaryCopy PKStringForKey:@"currencyCode"];
    currencyCode = self->_currencyCode;
    self->_currencyCode = v7;

    v9 = [dictionaryCopy PKStringForKey:@"numberStyle"];
    v10 = 1;
    self->_numberStyle = _PKEnumValueFromString(v9, 0, @"PKNumberStyle", @"PKNumberStyleDecimal, WLNumberStyleDecimal, PKNumberStylePercent, WLNumberStylePercent, PKNumberStyleScientific, WLNumberStyleScientific, PKNumberStyleSpellOut, WLNumberStyleSpellOut", v11, v12, v13, v14, 1u);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)createWithContent:(id)content currencyCode:(id)code numberStyle:(int64_t)style
{
  contentCopy = content;
  codeCopy = code;
  if (contentCopy)
  {
    v10 = [PKPassTileValue _createForType:2 resolved:1];
    objc_storeStrong(v10 + 3, content);
    objc_storeStrong(v10 + 4, code);
    v10[5] = style;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createResolvedValueWithBundle:(id)bundle privateBundle:(id)privateBundle
{
  v7.receiver = self;
  v7.super_class = PKPassTileValueNumber;
  v5 = [(PKPassTileValue *)&v7 createResolvedValueWithBundle:bundle privateBundle:privateBundle];
  objc_storeStrong(v5 + 3, self->_content);
  objc_storeStrong(v5 + 4, self->_currencyCode);
  v5[5] = self->_numberStyle;
  return v5;
}

- (id)displayableStringWithPassState:(id)state inContext:(int64_t)context
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

- (PKPassTileValueNumber)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKPassTileValueNumber;
  v5 = [(PKPassTileValue *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberStyle"];
    v5->_numberStyle = _PKEnumValueFromString(v10, 0, @"PKNumberStyle", @"PKNumberStyleDecimal, WLNumberStyleDecimal, PKNumberStylePercent, WLNumberStylePercent, PKNumberStyleScientific, WLNumberStyleScientific, PKNumberStyleSpellOut, WLNumberStyleSpellOut", v11, v12, v13, v14, 1u);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = PKPassTileValueNumber;
  coderCopy = coder;
  [(PKPassTileValue *)&v11 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_content forKey:@"content"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  v10 = _PKEnumValueToString(self->_numberStyle, @"PKNumberStyle", @"PKNumberStyleDecimal, WLNumberStyleDecimal, PKNumberStylePercent, WLNumberStylePercent, PKNumberStyleScientific, WLNumberStyleScientific, PKNumberStyleSpellOut, WLNumberStyleSpellOut", v5, v6, v7, v8, v9, 1);
  [coderCopy encodeObject:v10 forKey:@"numberStyle"];
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

- (BOOL)_isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = PKPassTileValueNumber;
  if ([(PKPassTileValue *)&v14 _isEqual:equalCopy])
  {
    v5 = equalCopy;
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