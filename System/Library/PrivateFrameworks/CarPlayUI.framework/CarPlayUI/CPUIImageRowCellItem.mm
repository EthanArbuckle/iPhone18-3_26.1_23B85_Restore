@interface CPUIImageRowCellItem
- (CGSize)intrinsicContentSize;
- (CPUIImageRowCellItem)initWithFrame:(CGRect)frame;
- (void)_handleContentSizeCategoryChanged:(id)changed;
- (void)_updateArtworkBorderColorWithTraitCollection:(int64_t)collection;
- (void)_updateLabelsContentSizeCategory:(id)category;
- (void)configureWithArtwork:(id)artwork title:(id)title subtitle:(id)subtitle imageSize:(double)size fallbackImage:(id)image enabled:(BOOL)enabled;
- (void)configureWithConfiguration:(id)configuration imageSize:(double)size fallbackImage:(id)image;
- (void)prepareForReuse;
@end

@implementation CPUIImageRowCellItem

- (CPUIImageRowCellItem)initWithFrame:(CGRect)frame
{
  v50[1] = *MEMORY[0x277D85DE8];
  v47.receiver = self;
  v47.super_class = CPUIImageRowCellItem;
  v3 = [(CPUIImageRowCellItem *)&v47 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    imageView = [v5 imageView];
    [imageView setContentMode:2];

    imageView2 = [v5 imageView];
    [imageView2 setClipsToBounds:1];

    imageView3 = [v5 imageView];
    [imageView3 _setContinuousCornerRadius:5.0];

    traitCollection = [(CPUIImageRowCellItem *)v4 traitCollection];
    -[CPUIImageRowCellItem _updateArtworkBorderColorWithTraitCollection:](v4, "_updateArtworkBorderColorWithTraitCollection:", [traitCollection userInterfaceStyle]);

    imageView4 = [v5 imageView];
    layer = [imageView4 layer];
    [layer setBorderWidth:0.5];

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
    button = [(CPUIImageRowCellItem *)v13 button];
    [button setAccessibilityIdentifier:@"CPListImageRowItemImage"];

    [(CPUIImageRowCellItem *)v13 addArrangedSubview:v5];
    [(CPUIImageRowCellItem *)v13 setCustomSpacing:v5 afterView:4.0];
    v16 = MEMORY[0x277CCAAD0];
    heightAnchor = [v5 heightAnchor];
    v43 = v5;
    widthAnchor = [v5 widthAnchor];
    v19 = [heightAnchor constraintEqualToAnchor:widthAnchor];
    v49 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    [v16 activateConstraints:v20];

    LODWORD(v21) = 1148846080;
    [(CPUIImageRowCellItem *)v13 setContentCompressionResistancePriority:0 forAxis:v21];
    LODWORD(v22) = 1148846080;
    [(CPUIImageRowCellItem *)v13 setContentHuggingPriority:0 forAxis:v22];
    if (_os_feature_enabled_impl())
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v13 selector:sel__handleContentSizeCategoryChanged_ name:*MEMORY[0x277D767B8] object:0];
    }

    v24 = objc_alloc(MEMORY[0x277D75D18]);
    v25 = [v24 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    v42 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v13 action:sel__handleTapGestureRecognizer];
    [v25 addGestureRecognizer:v42];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v25 setBackgroundColor:clearColor];

    [(CPUIImageRowCellItem *)v13 insertSubview:v25 atIndex:0];
    v36 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v25 leadingAnchor];
    leadingAnchor2 = [(CPUIImageRowCellItem *)v13 leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v48[0] = v39;
    trailingAnchor = [v25 trailingAnchor];
    trailingAnchor2 = [(CPUIImageRowCellItem *)v13 trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v48[1] = v27;
    topAnchor = [v25 topAnchor];
    topAnchor2 = [(CPUIImageRowCellItem *)v13 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v48[2] = v30;
    bottomAnchor = [v25 bottomAnchor];
    bottomAnchor2 = [(CPUIImageRowCellItem *)v13 bottomAnchor];
    v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

- (void)configureWithConfiguration:(id)configuration imageSize:(double)size fallbackImage:(id)image
{
  imageCopy = image;
  configurationCopy = configuration;
  artworkCatalog = [configurationCopy artworkCatalog];
  title = [configurationCopy title];
  subtitle = [configurationCopy subtitle];

  [(CPUIImageRowCellItem *)self configureWithArtwork:artworkCatalog title:title subtitle:subtitle imageSize:imageCopy fallbackImage:size];
}

- (void)configureWithArtwork:(id)artwork title:(id)title subtitle:(id)subtitle imageSize:(double)size fallbackImage:(id)image enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v67[1] = *MEMORY[0x277D85DE8];
  artworkCopy = artwork;
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  button = [(CPUIImageRowCellItem *)self button];
  artworkCatalog = [button artworkCatalog];

  if (!artworkCatalog || ([artworkCatalog isEqual:artworkCopy] & 1) == 0 && (objc_msgSend(artworkCatalog, "isArtworkVisuallyIdenticalToCatalog:", artworkCopy) & 1) == 0)
  {
    button2 = [(CPUIImageRowCellItem *)self button];
    [button2 setImage:imageCopy forState:0];

    traitCollection = [(CPUIImageRowCellItem *)self traitCollection];
    -[CPUIImageRowCellItem _updateArtworkBorderColorWithTraitCollection:](self, "_updateArtworkBorderColorWithTraitCollection:", [traitCollection userInterfaceStyle]);

    [artworkCopy setFittingSize:{size, size}];
    traitCollection2 = [(CPUIImageRowCellItem *)self traitCollection];
    [traitCollection2 displayScale];
    [artworkCopy setDestinationScale:?];

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [artworkCopy setCacheIdentifier:v24 forCacheReference:self];

    button3 = [(CPUIImageRowCellItem *)self button];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __92__CPUIImageRowCellItem_configureWithArtwork_title_subtitle_imageSize_fallbackImage_enabled___block_invoke;
    v62[3] = &unk_278D9C2B0;
    v63 = imageCopy;
    selfCopy = self;
    [artworkCopy setDestination:button3 configurationBlock:v62];
  }

  if (titleCopy)
  {
    v26 = subtitleCopy == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = v26;
  if (!titleCopy)
  {
    label = [(CPUIImageRowCellItem *)self label];
    [label removeFromSuperview];

    label2 = [(CPUIImageRowCellItem *)self label];
    [(CPUIImageRowCellItem *)self removeArrangedSubview:label2];

    [(CPUIImageRowCellItem *)self setLabel:0];
LABEL_22:
    subtitleLabel = [(CPUIImageRowCellItem *)self subtitleLabel];
    [subtitleLabel removeFromSuperview];

    subtitleLabel2 = [(CPUIImageRowCellItem *)self subtitleLabel];
    [(CPUIImageRowCellItem *)self removeArrangedSubview:subtitleLabel2];

    [(CPUIImageRowCellItem *)self setSubtitleLabel:0];
    goto LABEL_23;
  }

  button4 = [(CPUIImageRowCellItem *)self button];
  [button4 setAccessibilityLabel:titleCopy];

  v67[0] = titleCopy;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
  button5 = [(CPUIImageRowCellItem *)self button];
  [button5 setAccessibilityUserInputLabels:v29];

  label3 = [(CPUIImageRowCellItem *)self label];

  if (!label3)
  {
    v32 = objc_opt_new();
    label = self->_label;
    self->_label = v32;

    [(CPUITopAlignedLabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [MEMORY[0x277D74300] systemFontOfSize:10.0 weight:*MEMORY[0x277D74410]];
    [(CPUITopAlignedLabel *)self->_label setFont:v34];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [(CPUITopAlignedLabel *)self->_label setTextColor:labelColor];

    LODWORD(v36) = 1036831949;
    [(CPUITopAlignedLabel *)self->_label _setHyphenationFactor:v36];
    label4 = [(CPUIImageRowCellItem *)self label];
    [(CPUIImageRowCellItem *)self addArrangedSubview:label4];
  }

  label5 = [(CPUIImageRowCellItem *)self label];
  [label5 setText:titleCopy];

  if (v27)
  {
    v39 = 2;
  }

  else
  {
    v39 = 1;
  }

  label6 = [(CPUIImageRowCellItem *)self label];
  [label6 setNumberOfLines:v39];

  label7 = [(CPUIImageRowCellItem *)self label];
  [label7 setAccessibilityIdentifier:@"CPListImageRowItemImageTitle"];

  label8 = [(CPUIImageRowCellItem *)self label];
  [label8 setEnabled:enabledCopy];

  if (v27)
  {
    goto LABEL_22;
  }

  subtitleLabel3 = [(CPUIImageRowCellItem *)self subtitleLabel];

  if (!subtitleLabel3)
  {
    v44 = objc_opt_new();
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v44;

    [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_subtitleLabel setNumberOfLines:1];
    v46 = [MEMORY[0x277D74300] systemFontOfSize:10.0 weight:*MEMORY[0x277D74418]];
    [(UILabel *)self->_subtitleLabel setFont:v46];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_subtitleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)self->_subtitleLabel setEnabled:enabledCopy];
    subtitleLabel4 = [(CPUIImageRowCellItem *)self subtitleLabel];
    [(CPUIImageRowCellItem *)self addArrangedSubview:subtitleLabel4];
  }

  subtitleLabel5 = [(CPUIImageRowCellItem *)self subtitleLabel];
  [subtitleLabel5 setText:subtitleCopy];

  subtitleLabel6 = [(CPUIImageRowCellItem *)self subtitleLabel];
  [subtitleLabel6 setAccessibilityIdentifier:@"CPListImageRowItemImageSubtitle"];

LABEL_23:
  traitCollection3 = [(CPUIImageRowCellItem *)self traitCollection];
  preferredContentSizeCategory = [traitCollection3 preferredContentSizeCategory];
  [(CPUIImageRowCellItem *)self _updateLabelsContentSizeCategory:preferredContentSizeCategory];

  [(CPUIOutsetHighlightButton *)self->_button setEnabled:enabledCopy];
  if (titleCopy)
  {
    if (v27)
    {
      v65 = titleCopy;
      v57 = MEMORY[0x277CBEA60];
      v58 = &v65;
      v59 = 1;
    }

    else
    {
      v66[0] = titleCopy;
      v66[1] = subtitleCopy;
      v57 = MEMORY[0x277CBEA60];
      v58 = v66;
      v59 = 2;
    }

    button7 = [v57 arrayWithObjects:v58 count:v59];
    button6 = [(CPUIImageRowCellItem *)self button];
    [button6 setAccessibilityUserInputLabels:button7];
  }

  else
  {
    button7 = [(CPUIImageRowCellItem *)self button];
    [button7 setAccessibilityUserInputLabels:MEMORY[0x277CBEBF8]];
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
  button = [(CPUIImageRowCellItem *)self button];
  [button clearArtworkCatalogs];
}

- (void)_updateArtworkBorderColorWithTraitCollection:(int64_t)collection
{
  v4 = vdup_n_s32(collection == 2);
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  v6 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v5, 0x3FuLL)), xmmword_2431E24B0, xmmword_2431E24A0);
  v14 = *MEMORY[0x277D85DE8];
  *components = vdupq_lane_s64(v6.i64[0], 0);
  v13 = v6;
  v7 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  v8 = CGColorCreate(v7, components);
  button = [(CPUIImageRowCellItem *)self button];
  imageView = [button imageView];
  layer = [imageView layer];
  [layer setBorderColor:v8];
}

- (void)_updateLabelsContentSizeCategory:(id)category
{
  categoryCopy = category;
  if (_os_feature_enabled_impl())
  {
    v4 = 13.0;
    if (([categoryCopy isEqualToString:*MEMORY[0x277D76828]] & 1) == 0)
    {
      v4 = 15.0;
      if (([categoryCopy isEqualToString:*MEMORY[0x277D76820]] & 1) == 0)
      {
        if ([categoryCopy isEqualToString:*MEMORY[0x277D76818]])
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

- (void)_handleContentSizeCategoryChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76850]];

  [(CPUIImageRowCellItem *)self _updateLabelsContentSizeCategory:v5];
}

@end