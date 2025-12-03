@interface MRURoutingTableViewCell
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGRect)expandRect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRURoutingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (MRURoutingTableViewCellDelegate)delegate;
- (MRUVolumeController)volumeController;
- (UIEdgeInsets)contentEdgeInsets;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_setShouldHaveFullLengthBottomSeparator:(BOOL)separator;
- (void)didTapToExpand;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)routingSubtitleStateController:(id)controller didUpdateText:(id)text icon:(id)icon accessory:(int64_t)accessory;
- (void)setContentEdgeInsets:(UIEdgeInsets)insets;
- (void)setIcon:(id)icon;
- (void)setIconImage:(id)image;
- (void)setShowChevron:(BOOL)chevron;
- (void)setShowChevronExpanded:(BOOL)expanded;
- (void)setStylingProvider:(id)provider;
- (void)setSubtitle:(id)subtitle;
- (void)setSubtitleAccessory:(int64_t)accessory;
- (void)setTitle:(id)title;
- (void)setVolumeController:(id)controller;
- (void)sliderValueChanged:(id)changed;
- (void)transitionToNextVisibleStateWithDuration:(double)duration;
- (void)updateContentSizeCategory;
- (void)updateVisibility;
- (void)updateVisualStyling;
- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change;
- (void)volumeController:(id)controller volumeValueDidChange:(float)change;
@end

@implementation MRURoutingTableViewCell

- (MRURoutingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v47[1] = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = MRURoutingTableViewCell;
  v4 = [(MRURoutingTableViewCell *)&v45 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MRURoutingTableViewCell *)v4 setBackgroundColor:clearColor];

    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(MRURoutingTableViewCell *)v4 setSelectedBackgroundView:v6];

    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    selectedBackgroundView = [(MRURoutingTableViewCell *)v4 selectedBackgroundView];
    [selectedBackgroundView setBackgroundColor:v7];

    v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    outlineImageView = v4->_outlineImageView;
    v4->_outlineImageView = v9;

    v11 = +[MRUAssetsProvider collapsedRoutingChevron];
    [(UIImageView *)v4->_outlineImageView setImage:v11];

    v12 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:1 scale:17.0];
    [(UIImageView *)v4->_outlineImageView setPreferredSymbolConfiguration:v12];

    contentView = [(MRURoutingTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_outlineImageView];

    v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v14;

    [(UIImageView *)v4->_iconImageView setContentMode:1];
    v16 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:2 scale:20.0];
    [(UIImageView *)v4->_iconImageView setPreferredSymbolConfiguration:v16];

    contentView2 = [(MRURoutingTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_iconImageView];

    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v18;

    [(UILabel *)v4->_titleLabel setNumberOfLines:1];
    [(UILabel *)v4->_titleLabel _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
    contentView3 = [(MRURoutingTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_titleLabel];

    v21 = objc_alloc_init(MRURoutingSubtitleView);
    subtitleView = v4->_subtitleView;
    v4->_subtitleView = v21;

    contentView4 = [(MRURoutingTableViewCell *)v4 contentView];
    [contentView4 addSubview:v4->_subtitleView];

    v24 = objc_alloc_init(MRURoutingAccessoryView);
    routingAccessoryView = v4->_routingAccessoryView;
    v4->_routingAccessoryView = v24;

    contentView5 = [(MRURoutingTableViewCell *)v4 contentView];
    [contentView5 addSubview:v4->_routingAccessoryView];

    v27 = objc_alloc_init(MRUSlider);
    volumeSlider = v4->_volumeSlider;
    v4->_volumeSlider = v27;

    [(MRUSlider *)v4->_volumeSlider setHitRectInset:-10.0, 0.0, -10.0, 10.0];
    [(MRUSlider *)v4->_volumeSlider setExpansionFactor:1.75];
    [(MRUSlider *)v4->_volumeSlider addTarget:v4 action:sel_sliderValueChanged_ forControlEvents:4096];
    [(MRURoutingTableViewCell *)v4 addSubview:v4->_volumeSlider];
    v29 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separatorView = v4->_separatorView;
    v4->_separatorView = v29;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v4->_separatorView setBackgroundColor:whiteColor];

    contentView6 = [(MRURoutingTableViewCell *)v4 contentView];
    [contentView6 addSubview:v4->_separatorView];

    v33 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_didTapToExpand];
    expandGestureRecognizer = v4->_expandGestureRecognizer;
    v4->_expandGestureRecognizer = v33;

    [(UITapGestureRecognizer *)v4->_expandGestureRecognizer setDelegate:v4];
    [(UITapGestureRecognizer *)v4->_expandGestureRecognizer setEnabled:0];
    contentView7 = [(MRURoutingTableViewCell *)v4 contentView];
    [contentView7 addGestureRecognizer:v4->_expandGestureRecognizer];

    v36 = objc_alloc_init(MRURoutingSubtitleController);
    subtitleStateController = v4->_subtitleStateController;
    v4->_subtitleStateController = v36;

    [(MRURoutingSubtitleController *)v4->_subtitleStateController setDelegate:v4];
    v38 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v4];
    contentView8 = [(MRURoutingTableViewCell *)v4 contentView];
    [contentView8 addInteraction:v38];

    v47[0] = objc_opt_class();
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    v41 = [(MRURoutingTableViewCell *)v4 registerForTraitChanges:v40 withAction:sel_updateVisualStyling];

    v46 = objc_opt_class();
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    v43 = [(MRURoutingTableViewCell *)v4 registerForTraitChanges:v42 withAction:sel_updateContentSizeCategory];

    [(MRURoutingTableViewCell *)v4 updateContentSizeCategory];
    [(MRURoutingTableViewCell *)v4 updateVisibility];
  }

  return v4;
}

- (void)layoutSubviews
{
  v75.receiver = self;
  v75.super_class = MRURoutingTableViewCell;
  [(MRURoutingTableViewCell *)&v75 layoutSubviews];
  traitCollection = [(MRURoutingTableViewCell *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  contentView = [(MRURoutingTableViewCell *)self contentView];
  [contentView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  v17 = v8 + left;
  v18 = v10 + top;
  v19 = v12 - (left + self->_contentEdgeInsets.right);
  v20 = v14 - (top + self->_contentEdgeInsets.bottom);
  v21 = 28.0 * [(MRURoutingTableViewCell *)self indentationLevel];
  v73 = v5;
  v76.origin.x = v17;
  v76.origin.y = v18;
  v76.size.width = v19;
  v76.size.height = v20;
  CGRectGetMinX(v76);
  v74 = v21;
  v77.origin.x = v17;
  v77.origin.y = v18;
  v77.size.width = v19;
  v77.size.height = v20;
  CGRectGetMaxY(v77);
  v78.origin.x = v17;
  v78.origin.y = v18;
  v78.size.width = v19;
  v78.size.height = v20;
  CGRectGetWidth(v78);
  UIRectInset();
  [(MRURoutingTableViewCell *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(UIView *)self->_separatorView setFrame:?];
  [(UIImageView *)self->_outlineImageView sizeThatFits:v19, v20];
  v79.origin.x = v17;
  v79.origin.y = v18;
  v79.size.width = v19;
  v79.size.height = v20;
  CGRectGetMinX(v79);
  UIRectCenteredYInRect();
  [(MRURoutingTableViewCell *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(UIImageView *)self->_outlineImageView setFrame:?];
  if ([(UIImage *)self->_iconImage isSymbolImage])
  {
    [(UIImageView *)self->_iconImageView sizeThatFits:v19, v20];
  }

  v80.origin.x = v17;
  v80.origin.y = v18;
  v80.size.width = v19;
  v80.size.height = v20;
  CGRectGetMinX(v80);
  UIRectCenteredYInRect();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  UIRectCenteredIntegralRectScale();
  [(MRURoutingTableViewCell *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(UIImageView *)self->_iconImageView setFrame:?];
  v81.origin.x = v23;
  v81.origin.y = v25;
  v81.size.width = v27;
  v81.size.height = v29;
  CGRectGetWidth(v81);
  UIRectInset();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [(MRURoutingAccessoryView *)self->_routingAccessoryView sizeThatFits:v34, v36];
  v82.origin.x = v31;
  v82.origin.y = v33;
  v82.size.width = v35;
  v82.size.height = v37;
  CGRectGetMaxX(v82);
  UIRectCenteredYInRect();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  [(MRURoutingTableViewCell *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRURoutingAccessoryView *)self->_routingAccessoryView setFrame:?];
  if ([(MRURoutingAccessoryView *)self->_routingAccessoryView state]|| v74 > 0.0)
  {
    v83.origin.x = v39;
    v83.origin.y = v41;
    v83.size.width = v43;
    v83.size.height = v45;
    CGRectGetWidth(v83);
    UIRectInset();
    v31 = v46;
    v33 = v47;
    v35 = v48;
    v37 = v49;
  }

  [(UILabel *)self->_titleLabel sizeThatFits:v35, v37];
  v50 = MRUSizeCeilToViewScale(self);
  v52 = v51;
  [(MRURoutingSubtitleView *)self->_subtitleView sizeThatFits:v35, v37];
  v84.origin.x = v31;
  v84.origin.y = v33;
  v84.size.width = v35;
  v84.size.height = v37;
  CGRectGetHeight(v84);
  if (![(MRURoutingSubtitleController *)self->_subtitleStateController hasText])
  {
    WeakRetained = objc_loadWeakRetained(&self->_volumeController);
    [WeakRetained isVolumeControlAvailable];
  }

  UIRectInset();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  UIFloorToScale();
  v61 = v60;
  v85.origin.x = v55;
  v85.origin.y = v61;
  v85.size.width = v57;
  v85.size.height = v59;
  v62 = v74 + CGRectGetMinX(v85);
  v86.origin.x = v55;
  v86.origin.y = v61;
  v86.size.width = v57;
  v86.size.height = v59;
  MinY = CGRectGetMinY(v86);
  v87.origin.x = v55;
  v87.origin.y = v61;
  v87.size.width = v57;
  v87.size.height = v59;
  Width = CGRectGetWidth(v87);
  if (v50 >= Width)
  {
    v50 = Width;
  }

  [(MRURoutingTableViewCell *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(UILabel *)self->_titleLabel setFrame:?];
  v88.origin.x = v62;
  v88.origin.y = MinY;
  v88.size.width = v50;
  v88.size.height = v52;
  CGRectGetHeight(v88);
  UIRectInset();
  x = v89.origin.x;
  y = v89.origin.y;
  v67 = v89.size.width;
  height = v89.size.height;
  CGRectGetMinX(v89);
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = v67;
  v90.size.height = height;
  CGRectGetMinY(v90);
  [(MRURoutingTableViewCell *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRURoutingSubtitleView *)self->_subtitleView setFrame:?];
  UIRectInset();
  v69 = v91.origin.x;
  v70 = v91.origin.y;
  v71 = v91.size.width;
  v72 = v91.size.height;
  CGRectGetMinX(v91);
  v92.origin.x = v69;
  v92.origin.y = v70;
  v92.size.width = v71;
  v92.size.height = v72;
  CGRectGetWidth(v92);
  UIRectCenteredYInRectScale();
  [(MRURoutingTableViewCell *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRUSlider *)self->_volumeSlider setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UILabel *)self->_titleLabel sizeThatFits:?];
  MRUSizeCeilToViewScale(self);
  v7 = v6 + 0.0;
  v8 = height - v6;
  WeakRetained = objc_loadWeakRetained(&self->_volumeController);
  isVolumeControlAvailable = [WeakRetained isVolumeControlAvailable];

  if (isVolumeControlAvailable)
  {
    [(MRUSlider *)self->_volumeSlider sizeThatFits:width, v8];
    v7 = v7 + v11;
  }

  else if ([(MRURoutingSubtitleController *)self->_subtitleStateController hasText])
  {
    [(MRURoutingSubtitleView *)self->_subtitleView sizeThatFits:width, v8];
    v7 = v7 + v12 + 4.0;
  }

  v13 = 28.0;
  if (v7 >= 28.0)
  {
    v13 = v7;
  }

  v14 = v13 + 11.0 * 2.0;
  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = MRURoutingTableViewCell;
  [(MRURoutingTableViewCell *)&v4 prepareForReuse];
  [(MRURoutingSubtitleView *)self->_subtitleView prepareForReuse];
  [(MRURoutingSubtitleController *)self->_subtitleStateController prepareForReuse];
  layer = [(MRURoutingSubtitleView *)self->_subtitleView layer];
  [layer removeAllAnimations];

  [(MRURoutingAccessoryView *)self->_routingAccessoryView setState:0];
  objc_storeWeak(&self->_volumeController, 0);
  [(MRURoutingTableViewCell *)self setIndentationLevel:0];
  self->_showChevron = 0;
  self->_showChevronExpanded = 0;
  [(MRURoutingTableViewCell *)self updateVisibility];
}

- (void)setIconImage:(id)image
{
  objc_storeStrong(&self->_iconImage, image);
  imageCopy = image;
  [(UIImageView *)self->_iconImageView setImage:imageCopy];
  if ([imageCopy isSymbolImage])
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  [(UIImageView *)self->_iconImageView setContentMode:v6];

  [(MRURoutingTableViewCell *)self setNeedsLayout];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  [(UILabel *)self->_titleLabel setText:titleCopy];

  [(MRURoutingTableViewCell *)self setNeedsLayout];
}

- (void)setSubtitle:(id)subtitle
{
  [(MRURoutingSubtitleView *)self->_subtitleView setText:subtitle];

  [(MRURoutingTableViewCell *)self setNeedsLayout];
}

- (void)setIcon:(id)icon
{
  [(MRURoutingSubtitleView *)self->_subtitleView setIcon:icon];

  [(MRURoutingTableViewCell *)self setNeedsLayout];
}

- (void)setSubtitleAccessory:(int64_t)accessory
{
  if (accessory <= 3)
  {
    [(MRURoutingSubtitleView *)self->_subtitleView setState:?];
  }

  [(MRURoutingTableViewCell *)self setNeedsLayout];
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRURoutingTableViewCell *)self updateVisualStyling];
    [(MRURoutingSubtitleView *)self->_subtitleView setStylingProvider:v6];
    [(MRURoutingAccessoryView *)self->_routingAccessoryView setStylingProvider:v6];
    [(MRUSlider *)self->_volumeSlider setStylingProvider:v6];
    providerCopy = v6;
  }
}

- (void)setShowChevron:(BOOL)chevron
{
  if (self->_showChevron != chevron)
  {
    self->_showChevron = chevron;
    [(UITapGestureRecognizer *)self->_expandGestureRecognizer setEnabled:?];

    [(MRURoutingTableViewCell *)self updateVisibility];
  }
}

- (void)setShowChevronExpanded:(BOOL)expanded
{
  if (self->_showChevronExpanded != expanded)
  {
    v9 = v4;
    v10 = v3;
    self->_showChevronExpanded = expanded;
    if (expanded)
    {
      +[MRUAssetsProvider expandedRoutingChevron];
    }

    else
    {
      +[MRUAssetsProvider collapsedRoutingChevron];
    }
    v8 = ;
    [(UIImageView *)self->_outlineImageView setImage:v8, v9, v10, v5];

    [(MRURoutingTableViewCell *)self setNeedsLayout];
  }
}

- (void)setVolumeController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_volumeController);
  delegate = [WeakRetained delegate];

  if (delegate == self)
  {
    v6 = objc_loadWeakRetained(&self->_volumeController);
    [v6 setDelegate:0];
  }

  v7 = objc_storeWeak(&self->_volumeController, obj);
  [obj setDelegate:self];

  [obj volumeValue];
  [(MRUSlider *)self->_volumeSlider setValue:?];
  [(MRURoutingTableViewCell *)self updateVisibility];
  [(MRURoutingTableViewCell *)self setNeedsLayout];
}

- (void)setContentEdgeInsets:(UIEdgeInsets)insets
{
  self->_contentEdgeInsets.top = 0.0;
  self->_contentEdgeInsets.left = insets.left;
  self->_contentEdgeInsets.bottom = 0.0;
  self->_contentEdgeInsets.right = insets.right;
  [(MRURoutingTableViewCell *)self setNeedsLayout];
}

- (void)_setShouldHaveFullLengthBottomSeparator:(BOOL)separator
{
  separatorCopy = separator;
  v5.receiver = self;
  v5.super_class = MRURoutingTableViewCell;
  [(MRURoutingTableViewCell *)&v5 _setShouldHaveFullLengthBottomSeparator:?];
  [(UIView *)self->_separatorView setHidden:separatorCopy];
}

- (void)didTapToExpand
{
  self->_showChevronExpanded ^= 1u;
  delegate = [(MRURoutingTableViewCell *)self delegate];
  [delegate routingCellDidTapToExpand:self];
}

- (void)sliderValueChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_volumeController);
  [changedCopy value];
  v6 = v5;

  LODWORD(v7) = 1036831949;
  LODWORD(v8) = v6;
  [WeakRetained setVolume:v8 withNotificationDelay:v7];
}

- (void)transitionToNextVisibleStateWithDuration:(double)duration
{
  if ([(MRURoutingSubtitleController *)self->_subtitleStateController canTransitionToNextState])
  {
    WeakRetained = objc_loadWeakRetained(&self->_volumeController);

    if (!WeakRetained)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __68__MRURoutingTableViewCell_transitionToNextVisibleStateWithDuration___block_invoke;
      v7[3] = &unk_1E7663898;
      v7[4] = self;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __68__MRURoutingTableViewCell_transitionToNextVisibleStateWithDuration___block_invoke_2;
      v6[3] = &unk_1E7666348;
      v6[4] = self;
      *&v6[5] = duration;
      [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v6 completion:duration];
    }
  }
}

void __68__MRURoutingTableViewCell_transitionToNextVisibleStateWithDuration___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) subtitleView];
  [v1 setAlpha:0.0];
}

uint64_t __68__MRURoutingTableViewCell_transitionToNextVisibleStateWithDuration___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1072) transitionToNextAvailableState];
  v2 = [*(*(a1 + 32) + 1072) text];
  [*(a1 + 32) setSubtitle:v2];

  v3 = [*(*(a1 + 32) + 1072) icon];
  [*(a1 + 32) setIcon:v3];

  [*(a1 + 32) setSubtitleAccessory:{objc_msgSend(*(*(a1 + 32) + 1072), "accessory")}];
  [*(a1 + 32) layoutIfNeeded];
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__MRURoutingTableViewCell_transitionToNextVisibleStateWithDuration___block_invoke_3;
  v6[3] = &unk_1E7663898;
  v6[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:v4];
}

void __68__MRURoutingTableViewCell_transitionToNextVisibleStateWithDuration___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1088));
  if ([WeakRetained isVolumeControlAvailable])
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = [*(a1 + 32) subtitleView];
  [v3 setAlpha:v2];
}

- (void)routingSubtitleStateController:(id)controller didUpdateText:(id)text icon:(id)icon accessory:(int64_t)accessory
{
  iconCopy = icon;
  [(MRURoutingTableViewCell *)self setSubtitle:text];
  [(MRURoutingTableViewCell *)self setIcon:iconCopy];

  [(MRURoutingTableViewCell *)self setSubtitleAccessory:accessory];
}

- (void)volumeController:(id)controller volumeValueDidChange:(float)change
{
  if (([(MRUSlider *)self->_volumeSlider isTracking]& 1) == 0)
  {
    volumeSlider = self->_volumeSlider;
    *&v6 = change;

    [(MRUSlider *)volumeSlider setValue:1 animated:v6];
  }
}

- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change
{
  [(MRURoutingTableViewCell *)self updateVisibility:controller];

  [(MRURoutingTableViewCell *)self setNeedsLayout];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  contentView = [(MRURoutingTableViewCell *)self contentView];
  [touchCopy locationInView:contentView];
  v8 = v7;
  v10 = v9;

  [(MRURoutingTableViewCell *)self expandRect];
  v15 = v8;
  v16 = v10;

  return CGRectContainsPoint(*&v11, *&v15);
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  if (self->_showChevron && (-[MRURoutingTableViewCell expandRect](self, "expandRect"), v12 = v11, v14 = v13, v16 = v15, v18 = v17, [requestCopy location], v26.x = v19, v26.y = v20, v27.origin.x = v12, v27.origin.y = v14, v27.size.width = v16, v27.size.height = v18, CGRectContainsPoint(v27, v26)))
  {
    v21 = MEMORY[0x1E69DCDC0];
    [(MRURoutingTableViewCell *)self expandRect];
    v22 = [v21 regionWithRect:@"outline" identifier:?];
  }

  else
  {
    v22 = regionCopy;
  }

  v23 = v22;

  return v23;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  identifier = [region identifier];
  v6 = [identifier isEqual:@"outline"];

  v7 = objc_alloc(MEMORY[0x1E69DD070]);
  v8 = v7;
  if (v6)
  {
    v9 = [v7 initWithView:self->_outlineImageView];
    v10 = [MEMORY[0x1E69DCDA0] effectWithPreview:v9];
    v11 = MEMORY[0x1E69DCDC8];
    [(UIImageView *)self->_outlineImageView frame];
    v18 = CGRectInset(v17, -3.0, -3.0);
    v12 = [v11 shapeWithRoundedRect:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
    v13 = [MEMORY[0x1E69DCDD0] styleWithEffect:v10 shape:v12];
  }

  else
  {
    contentView = [(MRURoutingTableViewCell *)self contentView];
    v9 = [v8 initWithView:contentView];

    v10 = [MEMORY[0x1E69DCDA8] effectWithPreview:v9];
    [v10 setPrefersScaledContent:0];
    v13 = [MEMORY[0x1E69DCDD0] styleWithEffect:v10 shape:0];
  }

  return v13;
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  titleLabel = self->_titleLabel;
  traitCollection = [(MRURoutingTableViewCell *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:titleLabel traitCollection:traitCollection];

  v6 = self->_stylingProvider;
  outlineImageView = self->_outlineImageView;
  traitCollection2 = [(MRURoutingTableViewCell *)self traitCollection];
  [(MRUVisualStylingProvider *)v6 applyStyle:2 toView:outlineImageView traitCollection:traitCollection2];

  v9 = self->_stylingProvider;
  iconImageView = self->_iconImageView;
  traitCollection3 = [(MRURoutingTableViewCell *)self traitCollection];
  [(MRUVisualStylingProvider *)v9 applyStyle:0 toView:iconImageView traitCollection:traitCollection3];

  v12 = self->_stylingProvider;
  separatorView = self->_separatorView;
  traitCollection4 = [(MRURoutingTableViewCell *)self traitCollection];
  [(MRUVisualStylingProvider *)v12 applyStyle:4 toView:separatorView traitCollection:traitCollection4];
}

- (void)updateContentSizeCategory
{
  mru_routingTitleFont = [MEMORY[0x1E69DB878] mru_routingTitleFont];
  [(UILabel *)self->_titleLabel setFont:mru_routingTitleFont];
}

- (void)updateVisibility
{
  [(UIImageView *)self->_outlineImageView setHidden:!self->_showChevron];
  WeakRetained = objc_loadWeakRetained(&self->_volumeController);
  if ([WeakRetained isVolumeControlAvailable])
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  [(MRUSlider *)self->_volumeSlider setAlpha:v4];

  v6 = objc_loadWeakRetained(&self->_volumeController);
  if ([v6 isVolumeControlAvailable])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  [(MRURoutingSubtitleView *)self->_subtitleView setAlpha:v5];
}

- (CGRect)expandRect
{
  if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[MRURoutingTableViewCell semanticContentAttribute](self, "semanticContentAttribute")}] == 1)
  {
    [(UIImageView *)self->_iconImageView frame];
    MinX = CGRectGetMinX(v18);
    contentView = [(MRURoutingTableViewCell *)self contentView];
    [contentView bounds];
    MinY = CGRectGetMinY(v19);
    contentView2 = [(MRURoutingTableViewCell *)self contentView];
    [contentView2 bounds];
  }

  else
  {
    contentView = [(MRURoutingTableViewCell *)self contentView];
    [contentView bounds];
    MinX = CGRectGetMinX(v20);
    contentView2 = [(MRURoutingTableViewCell *)self contentView];
    [contentView2 bounds];
    MinY = CGRectGetMinY(v21);
    [(UIImageView *)self->_iconImageView frame];
  }

  MaxX = CGRectGetMaxX(*&v7);
  contentView3 = [(MRURoutingTableViewCell *)self contentView];
  [contentView3 bounds];
  Height = CGRectGetHeight(v22);

  v14 = MinX;
  v15 = MinY;
  v16 = MaxX;
  v17 = Height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (MRURoutingTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MRUVolumeController)volumeController
{
  WeakRetained = objc_loadWeakRetained(&self->_volumeController);

  return WeakRetained;
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end