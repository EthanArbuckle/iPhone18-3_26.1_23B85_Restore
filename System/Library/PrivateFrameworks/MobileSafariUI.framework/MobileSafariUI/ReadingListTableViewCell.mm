@interface ReadingListTableViewCell
- (ReadingListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_createImageViewIfNeeded;
- (void)_initializeAutoLayoutConstraints;
- (void)_setFetchingStatusTextForBookmark:(id)bookmark;
- (void)_setOpaque:(BOOL)opaque forSubview:(id)subview;
- (void)_updateMaximumContentSizeCategory;
- (void)_updateNumberOfLines;
- (void)_updateSelectedAnimated:(BOOL)animated;
- (void)_updateVibrantEffect;
- (void)displayThumbnailIconForBookmark:(id)bookmark synchronously:(BOOL)synchronously;
- (void)dragStateDidChange:(int64_t)change;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAlpha:(double)alpha;
- (void)setBookmark:(id)bookmark;
- (void)setBookmark:(id)bookmark isArchiving:(BOOL)archiving;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setUsesVibrantEffect:(BOOL)effect;
@end

@implementation ReadingListTableViewCell

- (ReadingListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v26[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = ReadingListTableViewCell;
  v4 = [(ReadingListTableViewCell *)&v24 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(ReadingListTableViewCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    textLabel = v5->_textLabel;
    v5->_textLabel = v7;

    [(UILabel *)v5->_textLabel setAdjustsFontForContentSizeCategory:1];
    v9 = *MEMORY[0x277D769D0];
    v10 = [MEMORY[0x277D74300] _sf_preferredFontForTextStyle:*MEMORY[0x277D769D0] symbolicTraits:2];
    [(UILabel *)v5->_textLabel setFont:v10];

    [contentView addSubview:v5->_textLabel];
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    detailTextLabel = v5->_detailTextLabel;
    v5->_detailTextLabel = v11;

    [(UILabel *)v5->_detailTextLabel setAdjustsFontForContentSizeCategory:1];
    v13 = [MEMORY[0x277D74300] _sf_preferredFontForTextStyle:*MEMORY[0x277D769E0] symbolicTraits:0x8000];
    [(UILabel *)v5->_detailTextLabel setFont:v13];

    [(UILabel *)v5->_detailTextLabel setNumberOfLines:2];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v5->_detailTextLabel setTextColor:secondaryLabelColor];

    [contentView addSubview:v5->_detailTextLabel];
    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    siteNameLabel = v5->_siteNameLabel;
    v5->_siteNameLabel = v15;

    [(UILabel *)v5->_siteNameLabel setAdjustsFontForContentSizeCategory:1];
    v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:v9];
    [(UILabel *)v5->_siteNameLabel setFont:v17];

    [contentView addSubview:v5->_siteNameLabel];
    [(ReadingListTableViewCell *)v5 setSeparatorInset:0.0, 15.0, 0.0, 0.0];
    [(ReadingListTableViewCell *)v5 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(ReadingListTableViewCell *)v5 setPreservesSuperviewLayoutMargins:0];
    [(ReadingListTableViewCell *)v5 _initializeAutoLayoutConstraints];
    [(ReadingListTableViewCell *)v5 _updateNumberOfLines];
    [(ReadingListTableViewCell *)v5 _updateMaximumContentSizeCategory];
    v26[0] = objc_opt_class();
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v19 = [(ReadingListTableViewCell *)v5 registerForTraitChanges:v18 withTarget:v5 action:sel__updateNumberOfLines];

    v25 = objc_opt_class();
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v21 = [(ReadingListTableViewCell *)v5 registerForTraitChanges:v20 withTarget:v5 action:sel__updateMaximumContentSizeCategory];

    v22 = v5;
  }

  return v5;
}

- (void)setAlpha:(double)alpha
{
  v7.receiver = self;
  v7.super_class = ReadingListTableViewCell;
  [(ReadingListTableViewCell *)&v7 setAlpha:?];
  if (alpha >= 1.0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(VibrantTableViewCell *)self usesVibrantEffect]^ 1;
  }

  layer = [(ReadingListTableViewCell *)self layer];
  [layer setAllowsGroupBlending:v5];
  [layer setAllowsGroupOpacity:v5];
}

- (void)setUsesVibrantEffect:(BOOL)effect
{
  effectCopy = effect;
  if ([(VibrantTableViewCell *)self usesVibrantEffect]!= effect)
  {
    v5.receiver = self;
    v5.super_class = ReadingListTableViewCell;
    [(VibrantTableViewCell *)&v5 setUsesVibrantEffect:effectCopy];
    [(ReadingListTableViewCell *)self _updateVibrantEffect];
  }
}

- (void)_updateVibrantEffect
{
  if ([(VibrantTableViewCell *)self usesVibrantEffect])
  {
    v3 = self->_dragState != 0;
  }

  else
  {
    v3 = 1;
  }

  contentView = [(ReadingListTableViewCell *)self contentView];
  layer = [contentView layer];

  [layer setAllowsGroupBlending:v3];
  [layer setAllowsGroupOpacity:v3];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = ReadingListTableViewCell;
  [(ReadingListTableViewCell *)&v3 prepareForReuse];
  [(_SFSiteIconView *)self->_imageView setBookmark:0];
}

- (void)_initializeAutoLayoutConstraints
{
  v18[2] = *MEMORY[0x277D85DE8];
  [(UILabel *)self->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_siteNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ReadingListTableViewCell *)self _createImageViewIfNeeded];
  v3 = MEMORY[0x277CCAAD0];
  widthAnchor = [(_SFSiteIconView *)self->_imageView widthAnchor];
  heightAnchor = [(_SFSiteIconView *)self->_imageView heightAnchor];
  v5 = [widthAnchor constraintEqualToAnchor:?];
  v18[0] = v5;
  widthAnchor2 = [(_SFSiteIconView *)self->_imageView widthAnchor];
  v7 = [widthAnchor2 constraintEqualToConstant:72.0];
  v18[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [v3 activateConstraints:v8];

  v9 = _NSDictionaryOfVariableBindings(@"_textLabel, _detailTextLabel, _siteNameLabel, _imageView", self->_textLabel, self->_detailTextLabel, self->_siteNameLabel, self->_imageView, 0);
  v10 = _NSDictionaryOfVariableBindings(@"vInterLabelSpacing, vImageViewSpacing, vLabelSpacing, hLabelSpacing, hLeadingImageViewSpacing", &unk_2827FC6A0, &unk_2827FC6B0, &unk_2827FC6C0, &unk_2827FC6B0, &unk_2827FC6D0, 0);
  v11 = MEMORY[0x277CCAAD0];
  v12 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-(vImageViewSpacing)-[_imageView]-(>=vImageViewSpacing)-|" options:0 metrics:v10 views:v9];
  [v11 activateConstraints:v12];

  v13 = MEMORY[0x277CCAAD0];
  v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-(vLabelSpacing)-[_textLabel]-(vInterLabelSpacing)-[_siteNameLabel]-(vInterLabelSpacing)-[_detailTextLabel]-(>=vLabelSpacing)-|" options:96 metrics:v10 views:v9];
  [v13 activateConstraints:v14];

  v15 = MEMORY[0x277CCAAD0];
  v16 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(hLeadingImageViewSpacing)-[_imageView]-(hLabelSpacing)-[_textLabel]-(hLabelSpacing)-|" options:0 metrics:v10 views:v9];
  [v15 activateConstraints:v16];
}

- (void)_createImageViewIfNeeded
{
  if (!self->_imageView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D28F50]);
    imageView = self->_imageView;
    self->_imageView = v3;

    contentView = [(ReadingListTableViewCell *)self contentView];
    [contentView addSubview:self->_imageView];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(_SFSiteIconView *)self->_imageView setBackgroundColor:whiteColor];

    [(_SFSiteIconView *)self->_imageView setClipsToBounds:1];
    v7 = self->_imageView;

    [(_SFSiteIconView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  }
}

- (void)_updateNumberOfLines
{
  traitCollection = [(ReadingListTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  if (IsAccessibilityCategory)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [(UILabel *)self->_textLabel setNumberOfLines:v6];
  siteNameLabel = self->_siteNameLabel;

  [(UILabel *)siteNameLabel setNumberOfLines:v7];
}

- (void)_updateMaximumContentSizeCategory
{
  traitCollection = [(ReadingListTableViewCell *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if (verticalSizeClass == 1)
  {
    v5 = *MEMORY[0x277D76800];
  }

  else
  {
    v5 = 0;
  }

  [(ReadingListTableViewCell *)self setMaximumContentSizeCategory:v5];
}

- (void)displayThumbnailIconForBookmark:(id)bookmark synchronously:(BOOL)synchronously
{
  bookmarkCopy = bookmark;
  bookmarkID = self->_bookmarkID;
  if (bookmarkID == [bookmarkCopy identifier])
  {
    image = [(_SFSiteIconView *)self->_imageView image];

    if (!image)
    {
      iconData = [bookmarkCopy iconData];
      if (iconData)
      {
        reuseIdentifier = [(ReadingListTableViewCell *)self reuseIdentifier];
        v11 = [reuseIdentifier isEqualToString:@"ReadingListTableViewCellWithImage"];

        if (v11)
        {
          v12 = self->_imageView;
          if (synchronously)
          {
            v13 = [MEMORY[0x277D755B8] imageWithData:iconData];
            [(_SFSiteIconView *)v12 setLeadingImage:v13];
          }

          else
          {
            v14 = dispatch_get_global_queue(0, 0);
            v15[0] = MEMORY[0x277D85DD0];
            v15[1] = 3221225472;
            v15[2] = __74__ReadingListTableViewCell_displayThumbnailIconForBookmark_synchronously___block_invoke;
            v15[3] = &unk_2781D6180;
            v16 = iconData;
            selfCopy = self;
            v18 = bookmarkCopy;
            v19 = v12;
            dispatch_async(v14, v15);
          }
        }
      }
    }
  }
}

void __74__ReadingListTableViewCell_displayThumbnailIconForBookmark_synchronously___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] imageWithData:*(a1 + 32)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__ReadingListTableViewCell_displayThumbnailIconForBookmark_synchronously___block_invoke_2;
  v5[3] = &unk_2781D6180;
  v3 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v6 = v3;
  v7 = *(a1 + 56);
  v8 = v2;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __74__ReadingListTableViewCell_displayThumbnailIconForBookmark_synchronously___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) bookmarkID];
  result = [*(a1 + 40) identifier];
  if (v2 == result)
  {
    [*(a1 + 48) setLeadingImage:*(a1 + 56)];
    v4 = *(a1 + 32);

    return [v4 setNeedsDisplay];
  }

  return result;
}

- (void)setBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  self->_bookmarkID = [bookmarkCopy identifier];
  previewText = [bookmarkCopy previewText];
  if (previewText)
  {
    [bookmarkCopy previewText];
  }

  else
  {
    [bookmarkCopy localPreviewText];
  }
  v5 = ;
  objc_storeStrong(&self->_previewText, v5);

  address = [bookmarkCopy address];
  safari_userVisibleURL = [address safari_userVisibleURL];
  v8 = [safari_userVisibleURL safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];
  siteName = self->_siteName;
  self->_siteName = v8;

  v10 = objc_opt_respondsToSelector();
  previewText = self->_previewText;
  if (v10)
  {
    _isNaturallyRTL = [(NSString *)previewText _isNaturallyRTL];
  }

  else
  {
    _isNaturallyRTL = [(NSString *)previewText isNaturallyRTL];
  }

  if (_isNaturallyRTL)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  textLabel = self->_textLabel;
  title = [bookmarkCopy title];
  [(UILabel *)textLabel setText:title];

  [(UILabel *)self->_detailTextLabel setText:self->_previewText];
  [(UILabel *)self->_detailTextLabel setTextAlignment:v13];
  [(UILabel *)self->_siteNameLabel setText:self->_siteName];
  bookmark = [(_SFSiteIconView *)self->_imageView bookmark];
  LOBYTE(title) = [bookmark isEqualToBookmark:bookmarkCopy];

  if ((title & 1) == 0)
  {
    [(_SFSiteIconView *)self->_imageView setBookmark:bookmarkCopy];
  }

  [(ReadingListTableViewCell *)self _setFetchingStatusTextForBookmark:bookmarkCopy];
}

- (void)setBookmark:(id)bookmark isArchiving:(BOOL)archiving
{
  archivingCopy = archiving;
  bookmarkCopy = bookmark;
  v8 = bookmarkCopy;
  if (archivingCopy)
  {
    v7 = _WBSLocalizedString();
    [(ReadingListTableViewCell *)self setFetchingStatusText:v7];
  }

  else
  {
    [(ReadingListTableViewCell *)self _setFetchingStatusTextForBookmark:bookmarkCopy];
  }
}

- (void)_setFetchingStatusTextForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  if ([bookmarkCopy isFullArchiveAvailable] & 1) != 0 || (objc_msgSend(MEMORY[0x277CEC5B8], "sharedNetworkObserver"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isNetworkReachable"), v4, (v5))
  {
    [(ReadingListTableViewCell *)self setFetchingStatusText:0];
  }

  else
  {
    v6 = _WBSLocalizedString();
    [(ReadingListTableViewCell *)self setFetchingStatusText:v6];
  }
}

- (void)_setOpaque:(BOOL)opaque forSubview:(id)subview
{
  opaqueCopy = opaque;
  subviewCopy = subview;
  if (self->_imageView != subviewCopy)
  {
    v7.receiver = self;
    v7.super_class = ReadingListTableViewCell;
    [(ReadingListTableViewCell *)&v7 _setOpaque:opaqueCopy forSubview:subviewCopy];
  }
}

- (void)dragStateDidChange:(int64_t)change
{
  v5.receiver = self;
  v5.super_class = ReadingListTableViewCell;
  [(ReadingListTableViewCell *)&v5 dragStateDidChange:?];
  self->_dragState = change;
  [(ReadingListTableViewCell *)self _updateSelectedAnimated:0];
  [(ReadingListTableViewCell *)self _updateVibrantEffect];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  self->_wantsSelectedAppearance = selected;
  [(ReadingListTableViewCell *)self _updateSelectedAnimated:animated];
  wantsSelectedAppearance = self->_wantsSelectedAppearance;
  isEditing = [(ReadingListTableViewCell *)self isEditing];

  [(ReadingListTableViewCell *)self safari_updateVisualStateIsSelected:wantsSelectedAppearance isEditing:isEditing];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(ReadingListTableViewCell *)self isEditing]!= editing)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__ReadingListTableViewCell_setEditing_animated___block_invoke;
    v8[3] = &unk_2781D60B8;
    v8[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v8];
    [(ReadingListTableViewCell *)self safari_updateVisualStateIsSelected:[(ReadingListTableViewCell *)self isSelected] isEditing:editingCopy];
  }

  v7.receiver = self;
  v7.super_class = ReadingListTableViewCell;
  [(ReadingListTableViewCell *)&v7 setEditing:editingCopy animated:animatedCopy];
}

- (void)_updateSelectedAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = self->_wantsSelectedAppearance && self->_dragState == 0;
  v8 = v3;
  v9 = v4;
  v7.receiver = self;
  v7.super_class = ReadingListTableViewCell;
  [(ReadingListTableViewCell *)&v7 setSelected:v6 animated:animatedCopy];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = ReadingListTableViewCell;
  [(ReadingListTableViewCell *)&v7 layoutSubviews];
  fetchingStatusText = [(ReadingListTableViewCell *)self fetchingStatusText];
  v4 = fetchingStatusText;
  if (fetchingStatusText)
  {
    previewText = fetchingStatusText;
  }

  else
  {
    previewText = [(ReadingListTableViewCell *)self previewText];
  }

  v6 = previewText;

  [(UILabel *)self->_detailTextLabel setText:v6];
}

@end