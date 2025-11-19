@interface NUTitleViewUpdate
- (BOOL)isEqual:(id)a3;
- (NUTitleViewUpdate)initWithText:(id)a3 styleType:(unint64_t)a4 glyph:(id)a5;
- (NUTitleViewUpdate)initWithValue:(id)a3 valueType:(unint64_t)a4 styleType:(unint64_t)a5;
@end

@implementation NUTitleViewUpdate

- (NUTitleViewUpdate)initWithText:(id)a3 styleType:(unint64_t)a4 glyph:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[NUTextAndGlyph alloc] initWithText:v9 glyph:v8];

  v11 = [(NUTitleViewUpdate *)self initWithValue:v10 valueType:2 styleType:a4];
  return v11;
}

- (NUTitleViewUpdate)initWithValue:(id)a3 valueType:(unint64_t)a4 styleType:(unint64_t)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = NUTitleViewUpdate;
  v10 = [(NUTitleViewUpdate *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, a3);
    v12 = 3;
    if (v9)
    {
      v12 = a4;
    }

    v11->_valueType = v12;
    v11->_styleType = a5;
    v11->_cancelPendingUpdates = 0;
    v11->_speakAccessibilityTitleWhenDisplayed = v12 == 1;
    v11->_lingerTimeInterval = 0.0;
    v11->_textAlignment = 1;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NUTitleViewUpdate *)self valueType];
      if (v6 == [(NUTitleViewUpdate *)v5 valueType])
      {
        v7 = MEMORY[0x277D82BB8];
        v8 = [(NUTitleViewUpdate *)self value];
        v9 = [(NUTitleViewUpdate *)v5 value];
        v10 = [v7 nf_object:v8 isEqualToObject:v9];
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