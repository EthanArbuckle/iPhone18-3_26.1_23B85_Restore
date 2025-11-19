@interface ReadingListTableViewCell
- (ReadingListTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_createImageViewIfNeeded;
- (void)_initializeAutoLayoutConstraints;
- (void)_setFetchingStatusTextForBookmark:(id)a3;
- (void)_setOpaque:(BOOL)a3 forSubview:(id)a4;
- (void)_updateMaximumContentSizeCategory;
- (void)_updateNumberOfLines;
- (void)_updateSelectedAnimated:(BOOL)a3;
- (void)_updateVibrantEffect;
- (void)displayThumbnailIconForBookmark:(id)a3 synchronously:(BOOL)a4;
- (void)dragStateDidChange:(int64_t)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAlpha:(double)a3;
- (void)setBookmark:(id)a3;
- (void)setBookmark:(id)a3 isArchiving:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setUsesVibrantEffect:(BOOL)a3;
@end

@implementation ReadingListTableViewCell

- (ReadingListTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = ReadingListTableViewCell;
  v4 = [(ReadingListTableViewCell *)&v24 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(ReadingListTableViewCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    textLabel = v5->_textLabel;
    v5->_textLabel = v7;

    [(UILabel *)v5->_textLabel setAdjustsFontForContentSizeCategory:1];
    v9 = *MEMORY[0x277D769D0];
    v10 = [MEMORY[0x277D74300] _sf_preferredFontForTextStyle:*MEMORY[0x277D769D0] symbolicTraits:2];
    [(UILabel *)v5->_textLabel setFont:v10];

    [v6 addSubview:v5->_textLabel];
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    detailTextLabel = v5->_detailTextLabel;
    v5->_detailTextLabel = v11;

    [(UILabel *)v5->_detailTextLabel setAdjustsFontForContentSizeCategory:1];
    v13 = [MEMORY[0x277D74300] _sf_preferredFontForTextStyle:*MEMORY[0x277D769E0] symbolicTraits:0x8000];
    [(UILabel *)v5->_detailTextLabel setFont:v13];

    [(UILabel *)v5->_detailTextLabel setNumberOfLines:2];
    v14 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v5->_detailTextLabel setTextColor:v14];

    [v6 addSubview:v5->_detailTextLabel];
    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    siteNameLabel = v5->_siteNameLabel;
    v5->_siteNameLabel = v15;

    [(UILabel *)v5->_siteNameLabel setAdjustsFontForContentSizeCategory:1];
    v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:v9];
    [(UILabel *)v5->_siteNameLabel setFont:v17];

    [v6 addSubview:v5->_siteNameLabel];
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

- (void)setAlpha:(double)a3
{
  v7.receiver = self;
  v7.super_class = ReadingListTableViewCell;
  [(ReadingListTableViewCell *)&v7 setAlpha:?];
  if (a3 >= 1.0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(VibrantTableViewCell *)self usesVibrantEffect]^ 1;
  }

  v6 = [(ReadingListTableViewCell *)self layer];
  [v6 setAllowsGroupBlending:v5];
  [v6 setAllowsGroupOpacity:v5];
}

- (void)setUsesVibrantEffect:(BOOL)a3
{
  v3 = a3;
  if ([(VibrantTableViewCell *)self usesVibrantEffect]!= a3)
  {
    v5.receiver = self;
    v5.super_class = ReadingListTableViewCell;
    [(VibrantTableViewCell *)&v5 setUsesVibrantEffect:v3];
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

  v4 = [(ReadingListTableViewCell *)self contentView];
  v5 = [v4 layer];

  [v5 setAllowsGroupBlending:v3];
  [v5 setAllowsGroupOpacity:v3];
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
  v4 = [(_SFSiteIconView *)self->_imageView widthAnchor];
  v17 = [(_SFSiteIconView *)self->_imageView heightAnchor];
  v5 = [v4 constraintEqualToAnchor:?];
  v18[0] = v5;
  v6 = [(_SFSiteIconView *)self->_imageView widthAnchor];
  v7 = [v6 constraintEqualToConstant:72.0];
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

    v5 = [(ReadingListTableViewCell *)self contentView];
    [v5 addSubview:self->_imageView];

    v6 = [MEMORY[0x277D75348] whiteColor];
    [(_SFSiteIconView *)self->_imageView setBackgroundColor:v6];

    [(_SFSiteIconView *)self->_imageView setClipsToBounds:1];
    v7 = self->_imageView;

    [(_SFSiteIconView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  }
}

- (void)_updateNumberOfLines
{
  v3 = [(ReadingListTableViewCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

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
  v3 = [(ReadingListTableViewCell *)self traitCollection];
  v4 = [v3 verticalSizeClass];

  if (v4 == 1)
  {
    v5 = *MEMORY[0x277D76800];
  }

  else
  {
    v5 = 0;
  }

  [(ReadingListTableViewCell *)self setMaximumContentSizeCategory:v5];
}

- (void)displayThumbnailIconForBookmark:(id)a3 synchronously:(BOOL)a4
{
  v6 = a3;
  bookmarkID = self->_bookmarkID;
  if (bookmarkID == [v6 identifier])
  {
    v8 = [(_SFSiteIconView *)self->_imageView image];

    if (!v8)
    {
      v9 = [v6 iconData];
      if (v9)
      {
        v10 = [(ReadingListTableViewCell *)self reuseIdentifier];
        v11 = [v10 isEqualToString:@"ReadingListTableViewCellWithImage"];

        if (v11)
        {
          v12 = self->_imageView;
          if (a4)
          {
            v13 = [MEMORY[0x277D755B8] imageWithData:v9];
            [(_SFSiteIconView *)v12 setLeadingImage:v13];
          }

          else
          {
            v14 = dispatch_get_global_queue(0, 0);
            v15[0] = MEMORY[0x277D85DD0];
            v15[1] = 3221225472;
            v15[2] = __74__ReadingListTableViewCell_displayThumbnailIconForBookmark_synchronously___block_invoke;
            v15[3] = &unk_2781D6180;
            v16 = v9;
            v17 = self;
            v18 = v6;
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

- (void)setBookmark:(id)a3
{
  v17 = a3;
  self->_bookmarkID = [v17 identifier];
  v4 = [v17 previewText];
  if (v4)
  {
    [v17 previewText];
  }

  else
  {
    [v17 localPreviewText];
  }
  v5 = ;
  objc_storeStrong(&self->_previewText, v5);

  v6 = [v17 address];
  v7 = [v6 safari_userVisibleURL];
  v8 = [v7 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];
  siteName = self->_siteName;
  self->_siteName = v8;

  v10 = objc_opt_respondsToSelector();
  previewText = self->_previewText;
  if (v10)
  {
    v12 = [(NSString *)previewText _isNaturallyRTL];
  }

  else
  {
    v12 = [(NSString *)previewText isNaturallyRTL];
  }

  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  textLabel = self->_textLabel;
  v15 = [v17 title];
  [(UILabel *)textLabel setText:v15];

  [(UILabel *)self->_detailTextLabel setText:self->_previewText];
  [(UILabel *)self->_detailTextLabel setTextAlignment:v13];
  [(UILabel *)self->_siteNameLabel setText:self->_siteName];
  v16 = [(_SFSiteIconView *)self->_imageView bookmark];
  LOBYTE(v15) = [v16 isEqualToBookmark:v17];

  if ((v15 & 1) == 0)
  {
    [(_SFSiteIconView *)self->_imageView setBookmark:v17];
  }

  [(ReadingListTableViewCell *)self _setFetchingStatusTextForBookmark:v17];
}

- (void)setBookmark:(id)a3 isArchiving:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = v6;
  if (v4)
  {
    v7 = _WBSLocalizedString();
    [(ReadingListTableViewCell *)self setFetchingStatusText:v7];
  }

  else
  {
    [(ReadingListTableViewCell *)self _setFetchingStatusTextForBookmark:v6];
  }
}

- (void)_setFetchingStatusTextForBookmark:(id)a3
{
  v7 = a3;
  if ([v7 isFullArchiveAvailable] & 1) != 0 || (objc_msgSend(MEMORY[0x277CEC5B8], "sharedNetworkObserver"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isNetworkReachable"), v4, (v5))
  {
    [(ReadingListTableViewCell *)self setFetchingStatusText:0];
  }

  else
  {
    v6 = _WBSLocalizedString();
    [(ReadingListTableViewCell *)self setFetchingStatusText:v6];
  }
}

- (void)_setOpaque:(BOOL)a3 forSubview:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_imageView != v6)
  {
    v7.receiver = self;
    v7.super_class = ReadingListTableViewCell;
    [(ReadingListTableViewCell *)&v7 _setOpaque:v4 forSubview:v6];
  }
}

- (void)dragStateDidChange:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ReadingListTableViewCell;
  [(ReadingListTableViewCell *)&v5 dragStateDidChange:?];
  self->_dragState = a3;
  [(ReadingListTableViewCell *)self _updateSelectedAnimated:0];
  [(ReadingListTableViewCell *)self _updateVibrantEffect];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  self->_wantsSelectedAppearance = a3;
  [(ReadingListTableViewCell *)self _updateSelectedAnimated:a4];
  wantsSelectedAppearance = self->_wantsSelectedAppearance;
  v6 = [(ReadingListTableViewCell *)self isEditing];

  [(ReadingListTableViewCell *)self safari_updateVisualStateIsSelected:wantsSelectedAppearance isEditing:v6];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(ReadingListTableViewCell *)self isEditing]!= a3)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__ReadingListTableViewCell_setEditing_animated___block_invoke;
    v8[3] = &unk_2781D60B8;
    v8[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v8];
    [(ReadingListTableViewCell *)self safari_updateVisualStateIsSelected:[(ReadingListTableViewCell *)self isSelected] isEditing:v5];
  }

  v7.receiver = self;
  v7.super_class = ReadingListTableViewCell;
  [(ReadingListTableViewCell *)&v7 setEditing:v5 animated:v4];
}

- (void)_updateSelectedAnimated:(BOOL)a3
{
  v5 = a3;
  v6 = self->_wantsSelectedAppearance && self->_dragState == 0;
  v8 = v3;
  v9 = v4;
  v7.receiver = self;
  v7.super_class = ReadingListTableViewCell;
  [(ReadingListTableViewCell *)&v7 setSelected:v6 animated:v5];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = ReadingListTableViewCell;
  [(ReadingListTableViewCell *)&v7 layoutSubviews];
  v3 = [(ReadingListTableViewCell *)self fetchingStatusText];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(ReadingListTableViewCell *)self previewText];
  }

  v6 = v5;

  [(UILabel *)self->_detailTextLabel setText:v6];
}

@end