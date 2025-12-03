@interface NUTitleViewUpdate
- (BOOL)isEqual:(id)equal;
- (NUTitleViewUpdate)initWithText:(id)text styleType:(unint64_t)type glyph:(id)glyph;
- (NUTitleViewUpdate)initWithValue:(id)value valueType:(unint64_t)type styleType:(unint64_t)styleType;
@end

@implementation NUTitleViewUpdate

- (NUTitleViewUpdate)initWithText:(id)text styleType:(unint64_t)type glyph:(id)glyph
{
  glyphCopy = glyph;
  textCopy = text;
  v10 = [[NUTextAndGlyph alloc] initWithText:textCopy glyph:glyphCopy];

  v11 = [(NUTitleViewUpdate *)self initWithValue:v10 valueType:2 styleType:type];
  return v11;
}

- (NUTitleViewUpdate)initWithValue:(id)value valueType:(unint64_t)type styleType:(unint64_t)styleType
{
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = NUTitleViewUpdate;
  v10 = [(NUTitleViewUpdate *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, value);
    typeCopy = 3;
    if (valueCopy)
    {
      typeCopy = type;
    }

    v11->_valueType = typeCopy;
    v11->_styleType = styleType;
    v11->_cancelPendingUpdates = 0;
    v11->_speakAccessibilityTitleWhenDisplayed = typeCopy == 1;
    v11->_lingerTimeInterval = 0.0;
    v11->_textAlignment = 1;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      valueType = [(NUTitleViewUpdate *)self valueType];
      if (valueType == [(NUTitleViewUpdate *)v5 valueType])
      {
        v7 = MEMORY[0x277D82BB8];
        value = [(NUTitleViewUpdate *)self value];
        value2 = [(NUTitleViewUpdate *)v5 value];
        v10 = [v7 nf_object:value isEqualToObject:value2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end