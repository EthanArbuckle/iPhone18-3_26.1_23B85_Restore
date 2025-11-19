@interface CPUIImageRowCellItem
- (CGSize)intrinsicContentSize;
- (CPUIImageRowCellItem)initWithFrame:(CGRect)a3;
- (void)_handleContentSizeCategoryChanged:(id)a3;
- (void)_updateArtworkBorderColorWithTraitCollection:(int64_t)a3;
- (void)_updateLabelsContentSizeCategory:(id)a3;
- (void)configureWithArtwork:(id)a3 title:(id)a4 subtitle:(id)a5 imageSize:(double)a6 fallbackImage:(id)a7 enabled:(BOOL)a8;
- (void)configureWithConfiguration:(id)a3 imageSize:(double)a4 fallbackImage:(id)a5;
- (void)prepareForReuse;
@end

@implementation CPUIImageRowCellItem

- (CPUIImageRowCellItem)initWithFrame:(CGRect)a3
{
  v50[1] = *MEMORY[0x277D85DE8];
  v47.receiver = self;
  v47.super_class = CPUIImageRowCellItem;
  v3 = [(CPUIImageRowCellItem *)&v47 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CPUIImageRowCellItem *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIImageRowCellItem *)v4 setAxis:1];
    [(CPUIImageRowCellItem *)v4 setAlignment:1];
    v5 = objc_opt_new();
    [v5 setContentCornerRadius:5.0];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setContentHorizontalAlignment:3];
    [v5 setContentVerticalAlignment:3];
    v6 = [v5 imageView];
    [v6 setContentMode:2];

    v7 = [v5 imageView];
    [v7 setClipsToBounds:1];

    v8 = [v5 imageView];
    [v8 _setContinuousCornerRadius:5.0];

    v9 = [(CPUIImageRowCellItem *)v4 traitCollection];
    -[CPUIImageRowCellItem _updateArtworkBorderColorWithTraitCollection:](v4, "_updateArtworkBorderColorWithTraitCollection:", [v9 userInterfaceStyle]);

    v10 = [v5 imageView];
    v11 = [v10 layer];
    [v11 setBorderWidth:0.5];

    v50[0] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __38__CPUIImageRowCellItem_initWithFrame___block_invoke;
    v45[3] = &unk_278D9C288;
    v44 = v4;
    v13 = v4;
    v46 = v13;
    v14 = [(CPUIImageRowCellItem *)v13 registerForTraitChanges:v12 withHandler:v45];

    [(CPUIImageRowCellItem *)v13 setButton:v5];
    v15 = [(CPUIImageRowCellItem *)v13 button];
    [v15 setAccessibilityIdentifier:@"CPListImageRowItemImage"];

    [(CPUIImageRowCellItem *)v13 addArrangedSubview:v5];
    [(CPUIImageRowCellItem *)v13 setCustomSpacing:v5 afterView:4.0];
    v16 = MEMORY[0x277CCAAD0];
    v17 = [v5 heightAnchor];
    v43 = v5;
    v18 = [v5 widthAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v49 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    [v16 activateConstraints:v20];

    LODWORD(v21) = 1148846080;
    [(CPUIImageRowCellItem *)v13 setContentCompressionResistancePriority:0 forAxis:v21];
    LODWORD(v22) = 1148846080;
    [(CPUIImageRowCellItem *)v13 setContentHuggingPriority:0 forAxis:v22];
    if (_os_feature_enabled_impl())
    {
      v23 = [MEMORY[0x277CCAB98] defaultCenter];
      [v23 addObserver:v13 selector:sel__handleContentSizeCategoryChanged_ name:*MEMORY[0x277D767B8] object:0];
    }

    v24 = objc_alloc(MEMORY[0x277D75D18]);
    v25 = [v24 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    v42 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v13 action:sel__handleTapGestureRecognizer];
    [v25 addGestureRecognizer:v42];
    v26 = [MEMORY[0x277D75348] clearColor];
    [v25 setBackgroundColor:v26];

    [(CPUIImageRowCellItem *)v13 insertSubview:v25 atIndex:0];
    v36 = MEMORY[0x277CCAAD0];
    v41 = [v25 leadingAnchor];
    v40 = [(CPUIImageRowCellItem *)v13 leadingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v48[0] = v39;
    v38 = [v25 trailingAnchor];
    v37 = [(CPUIImageRowCellItem *)v13 trailingAnchor];
    v27 = [v38 constraintEqualToAnchor:v37];
    v48[1] = v27;
    v28 = [v25 topAnchor];
    v29 = [(CPUIImageRowCellItem *)v13 topAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v48[2] = v30;
    v31 = [v25 bottomAnchor];
    v32 = [(CPUIImageRowCellItem *)v13 bottomAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    v48[3] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
    [v36 activateConstraints:v34];

    [(CPUIImageRowCellItem *)v13 set_absorbTapView:v25];
    return v44;
  }

  return v4;
}

void __38__CPUIImageRowCellItem_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 traitCollection];
  [v2 _updateArtworkBorderColorWithTraitCollection:{objc_msgSend(v3, "userInterfaceStyle")}];
}

- (CGSize)intrinsicContentSize
{
  preferredWidth = self->_preferredWidth;
  v3 = 0.0;
  result.height = v3;
  result.width = preferredWidth;
  return result;
}

- (void)configureWithConfiguration:(id)a3 imageSize:(double)a4 fallbackImage:(id)a5
{
  v8 = a5;
  v9 = a3;
  v12 = [v9 artworkCatalog];
  v10 = [v9 title];
  v11 = [v9 subtitle];

  [(CPUIImageRowCellItem *)self configureWithArtwork:v12 title:v10 subtitle:v11 imageSize:v8 fallbackImage:a4];
}

- (void)configureWithArtwork:(id)a3 title:(id)a4 subtitle:(id)a5 imageSize:(double)a6 fallbackImage:(id)a7 enabled:(BOOL)a8
{
  v8 = a8;
  v67[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = [(CPUIImageRowCellItem *)self button];
  v19 = [v18 artworkCatalog];

  if (!v19 || ([v19 isEqual:v14] & 1) == 0 && (objc_msgSend(v19, "isArtworkVisuallyIdenticalToCatalog:", v14) & 1) == 0)
  {
    v20 = [(CPUIImageRowCellItem *)self button];
    [v20 setImage:v17 forState:0];

    v21 = [(CPUIImageRowCellItem *)self traitCollection];
    -[CPUIImageRowCellItem _updateArtworkBorderColorWithTraitCollection:](self, "_updateArtworkBorderColorWithTraitCollection:", [v21 userInterfaceStyle]);

    [v14 setFittingSize:{a6, a6}];
    v22 = [(CPUIImageRowCellItem *)self traitCollection];
    [v22 displayScale];
    [v14 setDestinationScale:?];

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [v14 setCacheIdentifier:v24 forCacheReference:self];

    v25 = [(CPUIImageRowCellItem *)self button];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __92__CPUIImageRowCellItem_configureWithArtwork_title_subtitle_imageSize_fallbackImage_enabled___block_invoke;
    v62[3] = &unk_278D9C2B0;
    v63 = v17;
    v64 = self;
    [v14 setDestination:v25 configurationBlock:v62];
  }

  if (v15)
  {
    v26 = v16 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = v26;
  if (!v15)
  {
    v51 = [(CPUIImageRowCellItem *)self label];
    [v51 removeFromSuperview];

    v52 = [(CPUIImageRowCellItem *)self label];
    [(CPUIImageRowCellItem *)self removeArrangedSubview:v52];

    [(CPUIImageRowCellItem *)self setLabel:0];
LABEL_22:
    v53 = [(CPUIImageRowCellItem *)self subtitleLabel];
    [v53 removeFromSuperview];

    v54 = [(CPUIImageRowCellItem *)self subtitleLabel];
    [(CPUIImageRowCellItem *)self removeArrangedSubview:v54];

    [(CPUIImageRowCellItem *)self setSubtitleLabel:0];
    goto LABEL_23;
  }

  v28 = [(CPUIImageRowCellItem *)self button];
  [v28 setAccessibilityLabel:v15];

  v67[0] = v15;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
  v30 = [(CPUIImageRowCellItem *)self button];
  [v30 setAccessibilityUserInputLabels:v29];

  v31 = [(CPUIImageRowCellItem *)self label];

  if (!v31)
  {
    v32 = objc_opt_new();
    label = self->_label;
    self->_label = v32;

    [(CPUITopAlignedLabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [MEMORY[0x277D74300] systemFontOfSize:10.0 weight:*MEMORY[0x277D74410]];
    [(CPUITopAlignedLabel *)self->_label setFont:v34];

    v35 = [MEMORY[0x277D75348] labelColor];
    [(CPUITopAlignedLabel *)self->_label setTextColor:v35];

    LODWORD(v36) = 1036831949;
    [(CPUITopAlignedLabel *)self->_label _setHyphenationFactor:v36];
    v37 = [(CPUIImageRowCellItem *)self label];
    [(CPUIImageRowCellItem *)self addArrangedSubview:v37];
  }

  v38 = [(CPUIImageRowCellItem *)self label];
  [v38 setText:v15];

  if (v27)
  {
    v39 = 2;
  }

  else
  {
    v39 = 1;
  }

  v40 = [(CPUIImageRowCellItem *)self label];
  [v40 setNumberOfLines:v39];

  v41 = [(CPUIImageRowCellItem *)self label];
  [v41 setAccessibilityIdentifier:@"CPListImageRowItemImageTitle"];

  v42 = [(CPUIImageRowCellItem *)self label];
  [v42 setEnabled:v8];

  if (v27)
  {
    goto LABEL_22;
  }

  v43 = [(CPUIImageRowCellItem *)self subtitleLabel];

  if (!v43)
  {
    v44 = objc_opt_new();
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v44;

    [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_subtitleLabel setNumberOfLines:1];
    v46 = [MEMORY[0x277D74300] systemFontOfSize:10.0 weight:*MEMORY[0x277D74418]];
    [(UILabel *)self->_subtitleLabel setFont:v46];

    v47 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_subtitleLabel setTextColor:v47];

    [(UILabel *)self->_subtitleLabel setEnabled:v8];
    v48 = [(CPUIImageRowCellItem *)self subtitleLabel];
    [(CPUIImageRowCellItem *)self addArrangedSubview:v48];
  }

  v49 = [(CPUIImageRowCellItem *)self subtitleLabel];
  [v49 setText:v16];

  v50 = [(CPUIImageRowCellItem *)self subtitleLabel];
  [v50 setAccessibilityIdentifier:@"CPListImageRowItemImageSubtitle"];

LABEL_23:
  v55 = [(CPUIImageRowCellItem *)self traitCollection];
  v56 = [v55 preferredContentSizeCategory];
  [(CPUIImageRowCellItem *)self _updateLabelsContentSizeCategory:v56];

  [(CPUIOutsetHighlightButton *)self->_button setEnabled:v8];
  if (v15)
  {
    if (v27)
    {
      v65 = v15;
      v57 = MEMORY[0x277CBEA60];
      v58 = &v65;
      v59 = 1;
    }

    else
    {
      v66[0] = v15;
      v66[1] = v16;
      v57 = MEMORY[0x277CBEA60];
      v58 = v66;
      v59 = 2;
    }

    v60 = [v57 arrayWithObjects:v58 count:v59];
    v61 = [(CPUIImageRowCellItem *)self button];
    [v61 setAccessibilityUserInputLabels:v60];
  }

  else
  {
    v60 = [(CPUIImageRowCellItem *)self button];
    [v60 setAccessibilityUserInputLabels:MEMORY[0x277CBEBF8]];
  }

  [(CPUIImageRowCellItem *)self invalidateIntrinsicContentSize];
}

void __92__CPUIImageRowCellItem_configureWithArtwork_title_subtitle_imageSize_fallbackImage_enabled___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    a3 = *(a1 + 32);
  }

  [a2 setImage:a3 forState:0];
  v4 = *(a1 + 40);
  v5 = [v4 traitCollection];
  [v4 _updateArtworkBorderColorWithTraitCollection:{objc_msgSend(v5, "userInterfaceStyle")}];
}

- (void)prepareForReuse
{
  v2 = [(CPUIImageRowCellItem *)self button];
  [v2 clearArtworkCatalogs];
}

- (void)_updateArtworkBorderColorWithTraitCollection:(int64_t)a3
{
  v4 = vdup_n_s32(a3 == 2);
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  v6 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v5, 0x3FuLL)), xmmword_2431E24B0, xmmword_2431E24A0);
  v14 = *MEMORY[0x277D85DE8];
  *components = vdupq_lane_s64(v6.i64[0], 0);
  v13 = v6;
  v7 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  v8 = CGColorCreate(v7, components);
  v9 = [(CPUIImageRowCellItem *)self button];
  v10 = [v9 imageView];
  v11 = [v10 layer];
  [v11 setBorderColor:v8];
}

- (void)_updateLabelsContentSizeCategory:(id)a3
{
  v7 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = 13.0;
    if (([v7 isEqualToString:*MEMORY[0x277D76828]] & 1) == 0)
    {
      v4 = 15.0;
      if (([v7 isEqualToString:*MEMORY[0x277D76820]] & 1) == 0)
      {
        if ([v7 isEqualToString:*MEMORY[0x277D76818]])
        {
          v4 = 17.0;
        }

        else
        {
          v4 = 10.0;
        }
      }
    }

    v5 = [MEMORY[0x277D74300] systemFontOfSize:v4 weight:*MEMORY[0x277D74410]];
    [(CPUITopAlignedLabel *)self->_label setFont:v5];

    v6 = [MEMORY[0x277D74300] systemFontOfSize:v4 weight:*MEMORY[0x277D74418]];
    [(UILabel *)self->_subtitleLabel setFont:v6];
  }
}

- (void)_handleContentSizeCategoryChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D76850]];

  [(CPUIImageRowCellItem *)self _updateLabelsContentSizeCategory:v5];
}

@end