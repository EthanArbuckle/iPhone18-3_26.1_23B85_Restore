@interface ICFontCacheKey
- (BOOL)isEqual:(id)a3;
- (ICFontCacheKey)initWithFont:(id)a3;
@end

@implementation ICFontCacheKey

- (ICFontCacheKey)initWithFont:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ICFontCacheKey;
  v5 = [(ICFontCacheKey *)&v14 init];
  if (v5)
  {
    v6 = [v4 fontName];
    v7 = [v6 copy];
    fontName = v5->_fontName;
    v5->_fontName = v7;

    v5->_traits = [v4 traits];
    [v4 pointSize];
    v5->_pointSize = v9;
    v10 = [v4 fontDescriptor];
    v11 = [v10 copy];
    fontDescriptor = v5->_fontDescriptor;
    v5->_fontDescriptor = v11;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = [(ICFontCacheKey *)self hash];
  if (v6 == [v5 hash])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      fontName = self->_fontName;
      v8 = [v5 fontName];
      if (fontName == v8 || (v9 = self->_fontName, [v5 fontName], v3 = objc_claimAutoreleasedReturnValue(), -[NSString isEqualToString:](v9, "isEqualToString:", v3)))
      {
        traits = self->_traits;
        if (traits == [v5 traits] && (pointSize = self->_pointSize, objc_msgSend(v5, "pointSize"), vabdd_f64(pointSize, v13) < 0.00000011920929))
        {
          fontDescriptor = self->_fontDescriptor;
          v15 = [v5 fontDescriptor];
          v16 = v15;
          if (fontDescriptor == v15)
          {

            v10 = 1;
          }

          else
          {
            v17 = self->_fontDescriptor;
            v18 = [v5 fontDescriptor];
            v10 = [(UIFontDescriptor *)v17 isEqual:v18];
          }
        }

        else
        {
          v10 = 0;
        }

        if (fontName == v8)
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