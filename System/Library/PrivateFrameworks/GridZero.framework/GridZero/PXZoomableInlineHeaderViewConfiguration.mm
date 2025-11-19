@interface PXZoomableInlineHeaderViewConfiguration
- (BOOL)isEqual:(id)a3;
- (PXZoomableInlineHeaderViewConfiguration)init;
- (PXZoomableInlineHeaderViewConfiguration)initWithTitle:(id)a3 subtitle:(id)a4 swapTitleAndSubtitle:(BOOL)a5 style:(unint64_t)a6;
- (unint64_t)hash;
@end

@implementation PXZoomableInlineHeaderViewConfiguration

- (unint64_t)hash
{
  v3 = [(PXZoomableInlineHeaderViewConfiguration *)self style];
  v4 = [(PXZoomableInlineHeaderViewConfiguration *)self title];
  v5 = [v4 hash] ^ v3;
  v6 = [(PXZoomableInlineHeaderViewConfiguration *)self subtitle];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXZoomableInlineHeaderViewConfiguration *)v5 style];
      if (v6 == [(PXZoomableInlineHeaderViewConfiguration *)self style])
      {
        v7 = [(PXZoomableInlineHeaderViewConfiguration *)self title];
        v8 = [(PXZoomableInlineHeaderViewConfiguration *)v5 title];
        v9 = v8;
        if (v7 == v8)
        {
        }

        else
        {
          v10 = [v7 isEqual:v8];

          if ((v10 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v12 = [(PXZoomableInlineHeaderViewConfiguration *)self subtitle];
        v13 = [(PXZoomableInlineHeaderViewConfiguration *)v5 subtitle];
        if (v12 == v13)
        {
          v11 = 1;
        }

        else
        {
          v11 = [v12 isEqual:v13];
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXZoomableInlineHeaderView.m" lineNumber:78 description:{@"%s is not available as initializer", "-[PXZoomableInlineHeaderViewConfiguration init]"}];

  abort();
}

- (PXZoomableInlineHeaderViewConfiguration)initWithTitle:(id)a3 subtitle:(id)a4 swapTitleAndSubtitle:(BOOL)a5 style:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = PXZoomableInlineHeaderViewConfiguration;
  v13 = [(PXZoomableInlineHeaderViewConfiguration *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_title, a3);
    objc_storeStrong(&v14->_subtitle, a4);
    v14->_swapTitleAndSubtitle = a5;
    v14->_style = a6;
  }

  return v14;
}

@end