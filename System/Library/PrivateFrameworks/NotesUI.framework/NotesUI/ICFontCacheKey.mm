@interface ICFontCacheKey
- (BOOL)isEqual:(id)equal;
- (ICFontCacheKey)initWithFont:(id)font;
@end

@implementation ICFontCacheKey

- (ICFontCacheKey)initWithFont:(id)font
{
  fontCopy = font;
  v14.receiver = self;
  v14.super_class = ICFontCacheKey;
  v5 = [(ICFontCacheKey *)&v14 init];
  if (v5)
  {
    fontName = [fontCopy fontName];
    v7 = [fontName copy];
    fontName = v5->_fontName;
    v5->_fontName = v7;

    v5->_traits = [fontCopy traits];
    [fontCopy pointSize];
    v5->_pointSize = v9;
    fontDescriptor = [fontCopy fontDescriptor];
    v11 = [fontDescriptor copy];
    fontDescriptor = v5->_fontDescriptor;
    v5->_fontDescriptor = v11;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [(ICFontCacheKey *)self hash];
  if (v6 == [equalCopy hash])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      fontName = self->_fontName;
      fontName = [equalCopy fontName];
      if (fontName == fontName || (v9 = self->_fontName, [equalCopy fontName], v3 = objc_claimAutoreleasedReturnValue(), -[NSString isEqualToString:](v9, "isEqualToString:", v3)))
      {
        traits = self->_traits;
        if (traits == [equalCopy traits] && (pointSize = self->_pointSize, objc_msgSend(equalCopy, "pointSize"), vabdd_f64(pointSize, v13) < 0.00000011920929))
        {
          fontDescriptor = self->_fontDescriptor;
          fontDescriptor = [equalCopy fontDescriptor];
          v16 = fontDescriptor;
          if (fontDescriptor == fontDescriptor)
          {

            v10 = 1;
          }

          else
          {
            v17 = self->_fontDescriptor;
            fontDescriptor2 = [equalCopy fontDescriptor];
            v10 = [(UIFontDescriptor *)v17 isEqual:fontDescriptor2];
          }
        }

        else
        {
          v10 = 0;
        }

        if (fontName == fontName)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_14:
      goto LABEL_15;
    }
  }

  v10 = 0;
LABEL_15:

  return v10;
}

@end