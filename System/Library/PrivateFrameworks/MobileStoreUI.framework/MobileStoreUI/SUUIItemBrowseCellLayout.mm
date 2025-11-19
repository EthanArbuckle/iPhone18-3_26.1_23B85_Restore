@interface SUUIItemBrowseCellLayout
- (CGSize)imageBoundingSize;
- (NSString)indexNumberString;
- (NSString)subtitle;
- (NSString)title;
- (SUUIItemBrowseCellLayout)initWithCollectionViewCell:(id)a3;
- (SUUIItemBrowseCellLayout)initWithParentView:(id)a3;
- (SUUIItemBrowseCellLayout)initWithTableViewCell:(id)a3;
- (id)_decimalNumberFormatter;
- (void)_initSUUIItemBrowseCellLayout;
- (void)_reloadUserRatingViews;
- (void)layoutForItemOfferChange;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setIconImage:(id)a3;
- (void)setImageBoundingSize:(CGSize)a3;
- (void)setIndexNumberString:(id)a3;
- (void)setLargeSpacing:(BOOL)a3;
- (void)setNumberOfUserRatings:(int64_t)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUserRating:(double)a3;
@end

@implementation SUUIItemBrowseCellLayout

- (SUUIItemBrowseCellLayout)initWithCollectionViewCell:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUUIItemBrowseCellLayout;
  v3 = [(SUUICellLayout *)&v6 initWithCollectionViewCell:a3];
  v4 = v3;
  if (v3)
  {
    [(SUUIItemBrowseCellLayout *)v3 _initSUUIItemBrowseCellLayout];
  }

  return v4;
}

- (SUUIItemBrowseCellLayout)initWithParentView:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUUIItemBrowseCellLayout;
  v3 = [(SUUICellLayout *)&v6 initWithParentView:a3];
  v4 = v3;
  if (v3)
  {
    [(SUUIItemBrowseCellLayout *)v3 _initSUUIItemBrowseCellLayout];
  }

  return v4;
}

- (SUUIItemBrowseCellLayout)initWithTableViewCell:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUUIItemBrowseCellLayout;
  v3 = [(SUUICellLayout *)&v6 initWithTableViewCell:a3];
  v4 = v3;
  if (v3)
  {
    [(SUUIItemBrowseCellLayout *)v3 _initSUUIItemBrowseCellLayout];
  }

  return v4;
}

- (NSString)indexNumberString
{
  v2 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setColoringWithColorScheme:(id)a3
{
  v4 = a3;
  v5 = [v4 primaryTextColor];
  primaryTextColor = self->_primaryTextColor;
  self->_primaryTextColor = v5;

  v7 = [(SUUIItemCellLayout *)self itemOfferNoticeLabel];
  v8 = v7;
  if (self->_primaryTextColor)
  {
    [v7 setTextColor:?];
  }

  else
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [v8 setTextColor:v9];
  }

  v10 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
  v11 = v10;
  if (self->_primaryTextColor)
  {
    [v10 setTextColor:?];
  }

  else
  {
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [v11 setTextColor:v12];
  }

  v13 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
  v14 = v13;
  if (self->_primaryTextColor)
  {
    [v13 setTextColor:?];
  }

  else
  {
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
    [v14 setTextColor:v15];
  }

  v16 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];
  v17 = v16;
  if (self->_primaryTextColor)
  {
    [v16 setTextColor:?];
  }

  else
  {
    v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [v17 setTextColor:v18];
  }

  v19 = [v4 secondaryTextColor];

  v20 = v19;
  if (!v19)
  {
    v20 = self->_primaryTextColor;
  }

  objc_storeStrong(&self->_secondaryTextColor, v20);

  v21 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
  v23 = v21;
  if (self->_secondaryTextColor)
  {
    [v21 setTextColor:?];
  }

  else
  {
    v22 = [MEMORY[0x277D75348] blackColor];
    [v23 setTextColor:v22];
  }
}

- (void)setImageBoundingSize:(CGSize)a3
{
  if (self->_imageBoundingSize.width != a3.width || self->_imageBoundingSize.height != a3.height)
  {
    self->_imageBoundingSize = a3;
    [(SUUICellLayout *)self setNeedsLayout];
  }
}

- (void)setIndexNumberString:(id)a3
{
  v22 = a3;
  v4 = [(SUUIItemBrowseCellLayout *)self indexNumberString];
  if (v4 != v22 && ([v4 isEqualToString:v22] & 1) == 0)
  {
    cellContentView = self->_cellContentView;
    if (v22)
    {
      v6 = [(_SUUIItemBrowseCellContentView *)cellContentView indexNumberLabel];

      if (!v6)
      {
        v7 = self->_cellContentView;
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        [(_SUUIItemBrowseCellContentView *)v7 setIndexNumberLabel:v8];

        v9 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
        [v9 setAdjustsFontSizeToFitWidth:1];

        v10 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
        v11 = [(SUUICellLayout *)self parentCellView];
        v12 = [v11 backgroundColor];
        [v10 setBackgroundColor:v12];

        v13 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
        [v13 setTextAlignment:1];

        v14 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
        v15 = v14;
        if (self->_primaryTextColor)
        {
          [v14 setTextColor:?];
        }

        else
        {
          v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
          [v15 setTextColor:v16];
        }

        largeSpacing = self->_largeSpacing;
        v18 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
        v19 = 15.0;
        if (largeSpacing)
        {
          v19 = 20.0;
        }

        v20 = [MEMORY[0x277D74300] systemFontOfSize:v19];
        [v18 setFont:v20];
      }

      v21 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
      [v21 setText:v22];
    }

    else
    {
      [(_SUUIItemBrowseCellContentView *)cellContentView setIndexNumberLabel:0];
    }

    [(SUUICellLayout *)self setNeedsLayout];
  }
}

- (void)setLargeSpacing:(BOOL)a3
{
  if (self->_largeSpacing != a3)
  {
    self->_largeSpacing = a3;
    [(SUUICellLayout *)self setNeedsLayout];
  }
}

- (void)setNumberOfUserRatings:(int64_t)a3
{
  if (self->_numberOfUserRatings != a3 || ([(_SUUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_numberOfUserRatings = a3;

    [(SUUIItemBrowseCellLayout *)self _reloadUserRatingViews];
  }
}

- (void)setSubtitle:(id)a3
{
  v18 = a3;
  v4 = [(SUUIItemBrowseCellLayout *)self subtitle];
  if (v4 != v18 && ([v4 isEqualToString:v18] & 1) == 0)
  {
    cellContentView = self->_cellContentView;
    if (v18)
    {
      v6 = [(_SUUIItemBrowseCellContentView *)cellContentView subtitleLabel];

      if (!v6)
      {
        v7 = self->_cellContentView;
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        [(_SUUIItemBrowseCellContentView *)v7 setSubtitleLabel:v8];

        v9 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
        v10 = [(SUUICellLayout *)self parentCellView];
        v11 = [v10 backgroundColor];
        [v9 setBackgroundColor:v11];

        v12 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
        v13 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [v12 setFont:v13];

        v14 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
        v15 = v14;
        if (self->_primaryTextColor)
        {
          [v14 setTextColor:?];
        }

        else
        {
          v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
          [v15 setTextColor:v16];
        }
      }

      v17 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
      [v17 setText:v18];
    }

    else
    {
      [(_SUUIItemBrowseCellContentView *)cellContentView setSubtitleLabel:0];
    }

    [(SUUICellLayout *)self setNeedsLayout];
    [(_SUUIItemBrowseCellContentView *)self->_cellContentView setNeedsDisplay];
  }
}

- (void)setTitle:(id)a3
{
  v19 = a3;
  v4 = [(SUUIItemBrowseCellLayout *)self title];
  if (v4 != v19 && ([v4 isEqualToString:v19] & 1) == 0)
  {
    cellContentView = self->_cellContentView;
    if (v19)
    {
      v6 = [(_SUUIItemBrowseCellContentView *)cellContentView titleLabel];

      if (!v6)
      {
        v7 = self->_cellContentView;
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        [(_SUUIItemBrowseCellContentView *)v7 setTitleLabel:v8];

        v9 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
        [v9 setNumberOfLines:2];

        v10 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
        v11 = [(SUUICellLayout *)self parentCellView];
        v12 = [v11 backgroundColor];
        [v10 setBackgroundColor:v12];

        v13 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
        v14 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [v13 setFont:v14];

        v15 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
        v16 = v15;
        if (self->_secondaryTextColor)
        {
          [v15 setTextColor:?];
        }

        else
        {
          v17 = [MEMORY[0x277D75348] blackColor];
          [v16 setTextColor:v17];
        }
      }

      v18 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
      [v18 setText:v19];
    }

    else
    {
      [(_SUUIItemBrowseCellContentView *)cellContentView setTitleLabel:0];
    }

    [(SUUICellLayout *)self setNeedsLayout];
  }
}

- (void)setUserRating:(double)a3
{
  if (self->_userRating != a3 || ([(_SUUIItemBrowseCellContentView *)self->_cellContentView userRatingImageView], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_userRating = a3;

    [(SUUIItemBrowseCellLayout *)self _reloadUserRatingViews];
  }
}

- (NSString)subtitle
{
  v2 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
  v3 = [v2 text];

  return v3;
}

- (NSString)title
{
  v2 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)layoutForItemOfferChange
{
  v3 = [(SUUICellLayout *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v24 = [(SUUIItemCellLayout *)self itemOfferButton];
  [v24 frame];
  [v24 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v9 = v8;
  v11 = v10;
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  v14 = [(SUUIItemCellLayout *)self itemOfferNoticeLabel];
  if ([v14 isHidden])
  {

    v14 = 0;
  }

  else if (v14)
  {
    [v14 frame];
    [v14 sizeThatFits:{v9 + 10.0, 1.79769313e308}];
    v12 = v15;
    v13 = v16;
    v17 = v11 + v16 + 3.0;
    goto LABEL_6;
  }

  v17 = v11;
LABEL_6:
  v18 = (v7 - v17) * 0.5;
  v19 = floorf(v18);
  v20 = v5 + -15.0 - v9;
  v21 = (v9 - v12) * 0.5;
  v22 = v20 + floorf(v21);
  v26.origin.x = v20;
  v26.origin.y = v19;
  v26.size.width = v9;
  v26.size.height = v11;
  v23 = CGRectGetMaxY(v26) + 3.0;
  [v24 setFrame:{v20, v19, v9, v11}];
  [v14 setFrame:{v22, v23, v12, v13}];
}

- (void)layoutSubviews
{
  v85.receiver = self;
  v85.super_class = SUUIItemBrowseCellLayout;
  [(SUUICellLayout *)&v85 layoutSubviews];
  v3 = [(SUUICellLayout *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(_SUUIItemBrowseCellContentView *)self->_cellContentView setFrame:v5, v7, v9, v11];
  [(_SUUIItemBrowseCellContentView *)self->_cellContentView setNeedsDisplay];
  v12 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];

  if (v12)
  {
    v13 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
    [v13 frame];

    if (self->_largeSpacing)
    {
      v14 = 24.0;
    }

    else
    {
      v14 = 21.0;
    }

    if (self->_largeSpacing)
    {
      v15 = 32.0;
    }

    else
    {
      v15 = 24.0;
    }

    v16 = (v11 - v14) * 0.5;
    v17 = floorf(v16);
    v18 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
    [v18 setFrame:{10.0, v17, v15, v14}];

    v86.origin.x = 10.0;
    v86.origin.y = v17;
    v86.size.width = v15;
    v86.size.height = v14;
    v19 = CGRectGetMaxX(v86) + 10.0;
  }

  else
  {
    v19 = 15.0;
  }

  v20 = [(SUUIItemCellLayout *)self iconImageView];
  v21 = v20;
  if (v20)
  {
    [v20 frame];
    width = self->_imageBoundingSize.width;
    if (width <= 0.00000011920929)
    {
      height = v23;
      width = v22;
    }

    else
    {
      height = self->_imageBoundingSize.height;
    }

    v26 = v11;
    v27 = floor((v11 - height) * 0.5);
    [v21 setFrame:{v19, v27, width, height}];
    v87.origin.x = v19;
    v87.origin.y = v27;
    v11 = v26;
    v87.size.width = width;
    v87.size.height = height;
    v19 = CGRectGetMaxX(v87) + 10.0;
  }

  v88.origin.x = v5;
  v88.origin.y = v7;
  v88.size.width = v9;
  v88.size.height = v11;
  MaxX = CGRectGetMaxX(v88);
  v29 = [(SUUIItemCellLayout *)self itemOfferNoticeLabel];
  if ([v29 isHidden])
  {

    v29 = 0;
  }

  else if (self->_primaryTextColor)
  {
    [v29 setTextColor:?];
  }

  else
  {
    v30 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [v29 setTextColor:v30];
  }

  v31 = MaxX + -15.0;
  v32 = [(SUUIItemCellLayout *)self itemOfferButton];
  v33 = v32;
  if (v32 && ([v32 isHidden] & 1) == 0)
  {
    [v33 frame];
    v35 = v34;
    v37 = v36;
    [v33 layoutSizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v84 = v38;
    v39 = v11;
    if (v29)
    {
      [v29 sizeThatFits:{v38 + 10.0, 1.79769313e308}];
      v41 = v40;
      v83 = v42;
      v43 = v37 + v42 + 3.0;
    }

    else
    {
      v41 = *(MEMORY[0x277CBF3A0] + 16);
      v83 = *(MEMORY[0x277CBF3A0] + 24);
      v43 = v37;
    }

    v44 = v31 - v35;
    v45 = (v39 - v43) * 0.5;
    v46 = floorf(v45);
    v47 = (v35 - v41) * 0.5;
    v82 = v31;
    v48 = v31 - v35 + floorf(v47);
    v89.origin.x = v44;
    v89.origin.y = v46;
    v89.size.width = v35;
    v89.size.height = v37;
    MaxY = CGRectGetMaxY(v89);
    v50 = v37;
    v51 = MaxY + 3.0;
    v52 = v44;
    v11 = v39;
    [v33 setFrame:{v52, v46, v35, v50}];
    [v29 setFrame:{v48, v51, v41, v83}];
    v31 = v82 - v84 + -15.0;
  }

  v53 = [(SUUIItemCellLayout *)self removeControlView];
  v54 = v53;
  if (v53)
  {
    [v53 frame];
    v31 = v55 + -15.0;
  }

  v56 = v31 - v19;
  v57 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
  [v57 sizeThatFits:{v31 - v19, 1.79769313e308}];
  v59 = v58;

  v60 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView userRatingImageView];
  v61 = v60;
  v62 = 0.0;
  if (v60 && ([v60 isHidden] & 1) == 0)
  {
    [v61 frame];
    v62 = v63;
  }

  v64 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];

  if (v62 >= 16.0)
  {
    v65 = v62;
  }

  else
  {
    v65 = 16.0;
  }

  if (v64)
  {
    v62 = v65;
  }

  v66 = v62 + 1.0;
  if (v62 <= 0.00000011920929)
  {
    v66 = 0.0;
  }

  v67 = (v11 - (v59 + 1.0 + 16.0 + v66)) * 0.5;
  v68 = ceilf(v67);
  v69 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView titleLabel];

  if (v69)
  {
    v70 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
    [v70 frame];

    v71 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
    [v71 setFrame:{v19, v68, v31 - v19, v59}];

    v90.origin.x = v19;
    v90.origin.y = v68;
    v90.size.width = v31 - v19;
    v90.size.height = v59;
    v68 = CGRectGetMaxY(v90) + 1.0;
  }

  v72 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];

  if (v72)
  {
    v73 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
    [v73 frame];

    v74 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
    [v74 setFrame:{v19, v68, v31 - v19, 16.0}];

    v91.size.height = 16.0;
    v91.origin.x = v19;
    v91.origin.y = v68;
    v91.size.width = v31 - v19;
    v68 = CGRectGetMaxY(v91);
  }

  if (v61 && ([v61 isHidden] & 1) == 0)
  {
    [v61 frame];
    v76 = (v62 - v75) * 0.5;
    [v61 setFrame:{v19, v68 + 1.0 + floorf(v76)}];
  }

  v77 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];

  if (v77)
  {
    v78 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];
    [v78 frame];

    if (v61 && ([v61 isHidden] & 1) == 0)
    {
      [v61 frame];
      v19 = CGRectGetMaxX(v92) + 3.0;
      v56 = v31 - v19;
    }

    v79 = (v62 + -16.0) * 0.5;
    v80 = v68 + floorf(v79);
    v81 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];
    [v81 setFrame:{v19, v80, v56, 16.0}];
  }
}

- (void)setBackgroundColor:(id)a3
{
  cellContentView = self->_cellContentView;
  v5 = a3;
  [(_SUUIItemBrowseCellContentView *)cellContentView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIItemBrowseCellLayout;
  [(SUUIItemCellLayout *)&v6 setBackgroundColor:v5];
}

- (void)setIconImage:(id)a3
{
  v7.receiver = self;
  v7.super_class = SUUIItemBrowseCellLayout;
  [(SUUIItemCellLayout *)&v7 setIconImage:a3];
  v4 = [(SUUIItemCellLayout *)self iconImageView];
  [v4 setContentMode:4];

  v5 = [(SUUICellLayout *)self contentView];
  v6 = [(SUUIItemCellLayout *)self iconImageView];
  [v5 insertSubview:v6 aboveSubview:self->_cellContentView];
}

- (id)_decimalNumberFormatter
{
  if (_decimalNumberFormatter_sOnce_0 != -1)
  {
    [SUUIItemBrowseCellLayout _decimalNumberFormatter];
  }

  v3 = _decimalNumberFormatter_sNumberFormatter_0;

  return v3;
}

uint64_t __51__SUUIItemBrowseCellLayout__decimalNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = _decimalNumberFormatter_sNumberFormatter_0;
  _decimalNumberFormatter_sNumberFormatter_0 = v0;

  v2 = _decimalNumberFormatter_sNumberFormatter_0;

  return [v2 setNumberStyle:1];
}

- (void)_initSUUIItemBrowseCellLayout
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  self->_largeSpacing = [v3 userInterfaceIdiom] == 1;

  v4 = objc_alloc_init(_SUUIItemBrowseCellContentView);
  cellContentView = self->_cellContentView;
  self->_cellContentView = v4;

  v6 = [(SUUICellLayout *)self contentView];
  [v6 addSubview:self->_cellContentView];
}

- (void)_reloadUserRatingViews
{
  v20 = [(SUUICellLayout *)self parentCellView];
  v3 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = [v20 backgroundColor];
    [v4 setBackgroundColor:v5];

    v6 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    [v4 setFont:v6];

    if (self->_primaryTextColor)
    {
      [v4 setTextColor:?];
    }

    else
    {
      v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      [v4 setTextColor:v7];
    }

    [(_SUUIItemBrowseCellContentView *)self->_cellContentView setUserRatingLabel:v4];
  }

  if (self->_numberOfUserRatings)
  {
    v8 = [(SUUIItemBrowseCellLayout *)self _decimalNumberFormatter];
    v9 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfUserRatings];
    v12 = [v8 stringFromNumber:v11];
    v13 = [v10 stringWithFormat:@"(%@)", v12];
    [v9 setText:v13];

    v14 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView userRatingImageView];
    if (!v14)
    {
      v14 = objc_alloc_init(SUUICellImageView);
      [(_SUUIItemBrowseCellContentView *)self->_cellContentView setUserRatingImageView:v14];
      v15 = [v20 backgroundColor];
      [(SUUICellImageView *)v14 setBackgroundColor:v15];
    }

    v16 = [SUUIRatingStarsCache cacheWithProperties:1];
    [(SUUICellImageView *)v14 setHidden:0];
    v17 = [v16 ratingStarsImageForRating:self->_userRating];
    [(SUUICellImageView *)v14 setImage:v17];

    [(SUUICellImageView *)v14 sizeToFit];
  }

  else
  {
    v18 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView userRatingImageView];
    [v18 setHidden:1];

    v8 = [(_SUUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];
    v19 = [(SUUICellLayout *)self clientContext];
    v14 = v19;
    if (v19)
    {
      [(SUUICellImageView *)v19 localizedStringForKey:@"NO_RATINGS"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"NO_RATINGS" inBundles:0];
    }
    v16 = ;
    [v8 setText:v16];
  }

  [(SUUICellLayout *)self setNeedsLayout];
}

- (CGSize)imageBoundingSize
{
  width = self->_imageBoundingSize.width;
  height = self->_imageBoundingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end