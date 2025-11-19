@interface NTKCFaceDetailRowActionCell
- (NTKCFaceDetailRowActionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setShowsTopSeparator:(BOOL)a3;
@end

@implementation NTKCFaceDetailRowActionCell

- (NTKCFaceDetailRowActionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = NTKCFaceDetailRowActionCell;
  v4 = [(NTKCDetailTableViewCell *)&v7 initWithStyle:1 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(NTKCDetailTableViewCell *)v4 setShowsSeparator:1];
  }

  return v5;
}

- (void)setShowsTopSeparator:(BOOL)a3
{
  if (self->_showsTopSeparator != a3)
  {
    self->_showsTopSeparator = a3;
    topSeparator = self->_topSeparator;
    if (a3)
    {
      if (!topSeparator)
      {
        v5 = objc_opt_new();
        v6 = self->_topSeparator;
        self->_topSeparator = v5;

        topSeparator = self->_topSeparator;
      }

      [(NTKCFaceDetailRowActionCell *)self addSubview:topSeparator];
    }

    else
    {
      v7 = self->_topSeparator;

      [(NTKCSeparatorView *)v7 removeFromSuperview];
    }
  }
}

- (void)layoutSubviews
{
  *&rect.origin.y = self;
  *&rect.size.width = NTKCFaceDetailRowActionCell;
  [(CGFloat *)&rect.origin.y layoutSubviews];
  [(NTKCFaceDetailRowActionCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  IsRTL = CLKLayoutIsRTL();
  [(NTKCSeparatorView *)self->_topSeparator frame];
  rect.origin.x = v12;
  v14 = v13;
  v16 = v15;
  [(NTKCFaceDetailRowActionCell *)self separatorInset];
  v18 = v17;
  v19 = v4 + v17;
  v27.origin.y = v6 + v20;
  v22 = v8 - (v18 + v21);
  v27.size.height = v10 - (v20 + v23);
  v27.origin.x = v19;
  v27.size.width = v22;
  Width = CGRectGetWidth(v27);
  if (IsRTL)
  {
    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    v25 = CGRectGetWidth(v28);
    v29.origin.x = rect.origin.x;
    v29.origin.y = v14;
    v29.size.width = Width;
    v29.size.height = v16;
    v18 = v25 - CGRectGetWidth(v29) - v18;
  }

  [(NTKCSeparatorView *)self->_topSeparator setFrame:v18, 0.0, Width, v16];
}

@end