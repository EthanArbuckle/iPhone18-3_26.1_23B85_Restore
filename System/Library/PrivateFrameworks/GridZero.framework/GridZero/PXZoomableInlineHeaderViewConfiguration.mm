@interface PXZoomableInlineHeaderViewConfiguration
- (BOOL)isEqual:(id)equal;
- (PXZoomableInlineHeaderViewConfiguration)init;
- (PXZoomableInlineHeaderViewConfiguration)initWithTitle:(id)title subtitle:(id)subtitle swapTitleAndSubtitle:(BOOL)andSubtitle style:(unint64_t)style;
- (unint64_t)hash;
@end

@implementation PXZoomableInlineHeaderViewConfiguration

- (unint64_t)hash
{
  style = [(PXZoomableInlineHeaderViewConfiguration *)self style];
  title = [(PXZoomableInlineHeaderViewConfiguration *)self title];
  v5 = [title hash] ^ style;
  subtitle = [(PXZoomableInlineHeaderViewConfiguration *)self subtitle];
  v7 = [subtitle hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      style = [(PXZoomableInlineHeaderViewConfiguration *)v5 style];
      if (style == [(PXZoomableInlineHeaderViewConfiguration *)self style])
      {
        title = [(PXZoomableInlineHeaderViewConfiguration *)self title];
        title2 = [(PXZoomableInlineHeaderViewConfiguration *)v5 title];
        v9 = title2;
        if (title == title2)
        {
        }

        else
        {
          v10 = [title isEqual:title2];

          if ((v10 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        subtitle = [(PXZoomableInlineHeaderViewConfiguration *)self subtitle];
        subtitle2 = [(PXZoomableInlineHeaderViewConfiguration *)v5 subtitle];
        if (subtitle == subtitle2)
        {
          v11 = 1;
        }

        else
        {
          v11 = [subtitle isEqual:subtitle2];
        }

        goto LABEL_14;
      }

LABEL_6:
      v11 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (PXZoomableInlineHeaderViewConfiguration)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomableInlineHeaderView.m" lineNumber:78 description:{@"%s is not available as initializer", "-[PXZoomableInlineHeaderViewConfiguration init]"}];

  abort();
}

- (PXZoomableInlineHeaderViewConfiguration)initWithTitle:(id)title subtitle:(id)subtitle swapTitleAndSubtitle:(BOOL)andSubtitle style:(unint64_t)style
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v16.receiver = self;
  v16.super_class = PXZoomableInlineHeaderViewConfiguration;
  v13 = [(PXZoomableInlineHeaderViewConfiguration *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_title, title);
    objc_storeStrong(&v14->_subtitle, subtitle);
    v14->_swapTitleAndSubtitle = andSubtitle;
    v14->_style = style;
  }

  return v14;
}

@end