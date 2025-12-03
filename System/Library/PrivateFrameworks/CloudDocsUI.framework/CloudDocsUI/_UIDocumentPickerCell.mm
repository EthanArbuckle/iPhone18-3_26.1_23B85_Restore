@interface _UIDocumentPickerCell
+ (CGSize)defaultSizeForCellStyle:(int64_t)style traitCollection:(id)collection;
+ (CGSize)thumbnailSizeForTraits:(id)traits cellStyle:(int64_t)style;
+ (id)_subtitleFontForTable:(BOOL)table;
+ (id)_titleFontForTable:(BOOL)table;
- (NSArray)availableActions;
- (_UIDocumentPickerCell)initWithFrame:(CGRect)frame;
- (_UIDocumentPickerDocumentCollectionViewController)collectionView;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (void)_activityAction:(id)action;
- (void)_deleteAction:(id)action;
- (void)_dynamicTypeSizeChanged:(id)changed;
- (void)_infoAction:(id)action;
- (void)_moreAction:(id)action;
- (void)_moveAction:(id)action;
- (void)_renameAction:(id)action;
- (void)_showActions:(id)actions;
- (void)_udpateLabelAlpha;
- (void)_updateAccessoryType;
- (void)_updateConstraintsForCellStyle;
- (void)_updateFonts;
- (void)_updateIconSize;
- (void)_updateSelectionState:(BOOL)state;
- (void)_updateSeparatorInset;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)didTransitionFromLayout:(id)layout toLayout:(id)toLayout;
- (void)prepareForReuse;
- (void)setCollectionView:(id)view;
- (void)setEditing:(BOOL)editing;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setItem:(id)item;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
- (void)updateActionGestureRecognizer;
- (void)updateForEditingState:(BOOL)state;
- (void)willTransitionFromLayout:(id)layout toLayout:(id)toLayout;
@end

@implementation _UIDocumentPickerCell

+ (CGSize)defaultSizeForCellStyle:(int64_t)style traitCollection:(id)collection
{
  collectionCopy = collection;
  v7 = +[_UIDocumentPickerCellFontManager sharedFontManager];
  v8 = v7;
  if (style == 1)
  {
    titleFontForGridLayout = [v7 titleFontForGridLayout];
    subtitleFontForGridLayout = [v8 subtitleFontForGridLayout];
    [titleFontForGridLayout _scaledValueForValue:16.0];
    v12 = v11;
    [subtitleFontForGridLayout _scaledValueForValue:32.0];
    v14 = v12 + v13;
    [self thumbnailSizeForTraits:collectionCopy cellStyle:1];
    v16 = v15;
    v18 = v14 + v17;
  }

  else
  {
    titleFontForTableLayout = [v7 titleFontForTableLayout];
    titleFontForGridLayout = titleFontForTableLayout;
    if (style == 2)
    {
      subtitleFontForTableLayout = [v8 subtitleFontForTableLayout];
      [titleFontForGridLayout _scaledValueForValue:28.0];
      v22 = v21;
      [subtitleFontForTableLayout _scaledValueForValue:20.0];
      v24 = v22 + v23;
      [titleFontForGridLayout _scaledValueForValue:16.0];
      v18 = v24 + v25;
    }

    else
    {
      [titleFontForTableLayout _scaledValueForValue:28.0];
      v27 = v26;
      [titleFontForGridLayout _scaledValueForValue:16.0];
      v18 = v27 + v28;
    }

    v16 = 0.0;
  }

  v29 = v16;
  v30 = v18;
  result.height = v30;
  result.width = v29;
  return result;
}

+ (id)_titleFontForTable:(BOOL)table
{
  v3 = MEMORY[0x277D74300];
  v4 = MEMORY[0x277D76938];
  if (table)
  {
    v4 = MEMORY[0x277D76918];
  }

  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*v4 addingSymbolicTraits:0 options:1];
  v6 = [v3 fontWithDescriptor:v5 size:0.0];

  return v6;
}

+ (id)_subtitleFontForTable:(BOOL)table
{
  v3 = MEMORY[0x277D74300];
  v4 = MEMORY[0x277D76940];
  if (table)
  {
    v4 = MEMORY[0x277D76938];
  }

  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*v4 addingSymbolicTraits:0 options:1];
  v6 = [v3 fontWithDescriptor:v5 size:0.0];

  return v6;
}

+ (CGSize)thumbnailSizeForTraits:(id)traits cellStyle:(int64_t)style
{
  traitsCopy = traits;
  v6 = traitsCopy;
  if (style == 3)
  {
    v7 = 20.0;
  }

  else if (style == 2)
  {
    v7 = 44.0;
  }

  else
  {
    v8 = [traitsCopy _valueForTraitNamed:@"CompactIcons"];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      v7 = 84.0;
    }

    else
    {
      v7 = 128.0;
    }
  }

  v10 = v7;
  v11 = v7;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_UIDocumentPickerCell)initWithFrame:(CGRect)frame
{
  v72.receiver = self;
  v72.super_class = _UIDocumentPickerCell;
  v3 = [(UICollectionViewTableCell *)&v72 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v3 action:sel__showPickableDiagnostic];
    [(_UIDocumentPickerCell *)v3 setPickableDiagnosticGestureRecognizer:v4];

    pickableDiagnosticGestureRecognizer = [(_UIDocumentPickerCell *)v3 pickableDiagnosticGestureRecognizer];
    [pickableDiagnosticGestureRecognizer setMinimumPressDuration:2.0];

    pickableDiagnosticGestureRecognizer2 = [(_UIDocumentPickerCell *)v3 pickableDiagnosticGestureRecognizer];
    [(_UIDocumentPickerCell *)v3 addGestureRecognizer:pickableDiagnosticGestureRecognizer2];

    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(_UIDocumentPickerCell *)v3 setTitleLabel:v7];

    titleLabel = [(_UIDocumentPickerCell *)v3 titleLabel];
    [titleLabel setTextAlignment:1];

    titleLabel2 = [(_UIDocumentPickerCell *)v3 titleLabel];
    [titleLabel2 setLineBreakMode:5];

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(_UIDocumentPickerCell *)v3 setSubtitleLabel:v10];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    subtitleLabel = [(_UIDocumentPickerCell *)v3 subtitleLabel];
    [subtitleLabel setTextColor:secondaryLabelColor];

    subtitleLabel2 = [(_UIDocumentPickerCell *)v3 subtitleLabel];
    [subtitleLabel2 setTextAlignment:1];

    subtitleLabel3 = [(_UIDocumentPickerCell *)v3 subtitleLabel];
    [subtitleLabel3 setLineBreakMode:5];

    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(_UIDocumentPickerCell *)v3 setSubtitle2Label:v15];

    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    subtitle2Label = [(_UIDocumentPickerCell *)v3 subtitle2Label];
    [subtitle2Label setTextColor:secondaryLabelColor2];

    subtitle2Label2 = [(_UIDocumentPickerCell *)v3 subtitle2Label];
    [subtitle2Label2 setTextAlignment:1];

    subtitle2Label3 = [(_UIDocumentPickerCell *)v3 subtitle2Label];
    [subtitle2Label3 setLineBreakMode:5];

    v20 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(_UIDocumentPickerCell *)v3 setSubtitleJoiner:v20];

    secondaryLabelColor3 = [MEMORY[0x277D75348] secondaryLabelColor];
    subtitleJoiner = [(_UIDocumentPickerCell *)v3 subtitleJoiner];
    [subtitleJoiner setTextColor:secondaryLabelColor3];

    subtitleJoiner2 = [(_UIDocumentPickerCell *)v3 subtitleJoiner];
    [subtitleJoiner2 setTextAlignment:1];

    v24 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(_UIDocumentPickerCell *)v3 setIndentationHelperView:v24];

    v25 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v26 = [v25 localizedStringForKey:@"SUBTITLE_JOINER" value:@"–" table:@"Localizable"];
    subtitleJoiner3 = [(_UIDocumentPickerCell *)v3 subtitleJoiner];
    [subtitleJoiner3 setText:v26];

    [(_UIDocumentPickerCell *)v3 _updateFonts];
    [objc_opt_class() defaultSizeForCellStyle:1 traitCollection:0];
    v29 = v28;
    v30 = objc_alloc(MEMORY[0x277D755E8]);
    v31 = [v30 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(_UIDocumentPickerCell *)v3 setThumbnailView:v31];

    [(UIImageView *)v3->_thumbnailView setContentMode:1];
    v32 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(_UIDocumentPickerCell *)v3 setTagView:v32];

    LODWORD(v33) = 1148829696;
    [(UIImageView *)v3->_tagView setContentCompressionResistancePriority:0 forAxis:v33];
    LODWORD(v34) = 1148829696;
    [(UIImageView *)v3->_tagView setContentHuggingPriority:0 forAxis:v34];
    v35 = objc_alloc(MEMORY[0x277D758F0]);
    thumbnailView = [(_UIDocumentPickerCell *)v3 thumbnailView];
    [thumbnailView frame];
    v38 = [v35 initWithFrame:{0.0, v37, v29, 0.0}];
    [(_UIDocumentPickerCell *)v3 setProgressView:v38];

    progressView = [(_UIDocumentPickerCell *)v3 progressView];
    [progressView setHidden:1];

    titleLabel3 = [(_UIDocumentPickerCell *)v3 titleLabel];
    [titleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    subtitleLabel4 = [(_UIDocumentPickerCell *)v3 subtitleLabel];
    [subtitleLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    thumbnailView2 = [(_UIDocumentPickerCell *)v3 thumbnailView];
    [thumbnailView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    subtitleLabel5 = [(_UIDocumentPickerCell *)v3 subtitleLabel];
    [subtitleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

    subtitle2Label4 = [(_UIDocumentPickerCell *)v3 subtitle2Label];
    [subtitle2Label4 setTranslatesAutoresizingMaskIntoConstraints:0];

    subtitleJoiner4 = [(_UIDocumentPickerCell *)v3 subtitleJoiner];
    [subtitleJoiner4 setTranslatesAutoresizingMaskIntoConstraints:0];

    tagView = [(_UIDocumentPickerCell *)v3 tagView];
    [tagView setTranslatesAutoresizingMaskIntoConstraints:0];

    indentationHelperView = [(_UIDocumentPickerCell *)v3 indentationHelperView];
    [indentationHelperView setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(_UIDocumentPickerCell *)v3 contentView];
    thumbnailView3 = [(_UIDocumentPickerCell *)v3 thumbnailView];
    [contentView addSubview:thumbnailView3];

    contentView2 = [(_UIDocumentPickerCell *)v3 contentView];
    progressView2 = [(_UIDocumentPickerCell *)v3 progressView];
    [contentView2 addSubview:progressView2];

    contentView3 = [(_UIDocumentPickerCell *)v3 contentView];
    subtitleLabel6 = [(_UIDocumentPickerCell *)v3 subtitleLabel];
    [contentView3 addSubview:subtitleLabel6];

    contentView4 = [(_UIDocumentPickerCell *)v3 contentView];
    subtitle2Label5 = [(_UIDocumentPickerCell *)v3 subtitle2Label];
    [contentView4 addSubview:subtitle2Label5];

    contentView5 = [(_UIDocumentPickerCell *)v3 contentView];
    subtitleJoiner5 = [(_UIDocumentPickerCell *)v3 subtitleJoiner];
    [contentView5 addSubview:subtitleJoiner5];

    contentView6 = [(_UIDocumentPickerCell *)v3 contentView];
    titleLabel4 = [(_UIDocumentPickerCell *)v3 titleLabel];
    [contentView6 addSubview:titleLabel4];

    contentView7 = [(_UIDocumentPickerCell *)v3 contentView];
    tagView2 = [(_UIDocumentPickerCell *)v3 tagView];
    [contentView7 addSubview:tagView2];

    contentView8 = [(_UIDocumentPickerCell *)v3 contentView];
    indentationHelperView2 = [(_UIDocumentPickerCell *)v3 indentationHelperView];
    [contentView8 addSubview:indentationHelperView2];

    subtitleJoiner6 = [(_UIDocumentPickerCell *)v3 subtitleJoiner];
    LODWORD(v65) = 1148846080;
    [subtitleJoiner6 setContentCompressionResistancePriority:0 forAxis:v65];

    subtitleLabel7 = [(_UIDocumentPickerCell *)v3 subtitleLabel];
    LODWORD(v67) = 1144750080;
    [subtitleLabel7 setContentCompressionResistancePriority:0 forAxis:v67];

    subtitle2Label6 = [(_UIDocumentPickerCell *)v3 subtitle2Label];
    LODWORD(v69) = 1132068864;
    [subtitle2Label6 setContentCompressionResistancePriority:0 forAxis:v69];

    [(UICollectionViewTableCell *)v3 setIndentationWidth:25.0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__dynamicTypeSizeChanged_ name:*MEMORY[0x277D76810] object:0];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = _UIDocumentPickerCell;
  [(_UIDocumentPickerCell *)&v4 traitCollectionDidChange:change];
  [(_UIDocumentPickerCell *)self _updateIconSize];
}

- (void)_dynamicTypeSizeChanged:(id)changed
{
  v4 = MEMORY[0x277CCAAD0];
  gridConstraints = [(_UIDocumentPickerCell *)self gridConstraints];
  [v4 deactivateConstraints:gridConstraints];

  v6 = MEMORY[0x277CCAAD0];
  tableConstraints = [(_UIDocumentPickerCell *)self tableConstraints];
  [v6 deactivateConstraints:tableConstraints];

  v8 = MEMORY[0x277CCAAD0];
  indentedConstraints = [(_UIDocumentPickerCell *)self indentedConstraints];
  [v8 deactivateConstraints:indentedConstraints];

  v10 = +[_UIDocumentPickerCellFontManager sharedFontManager];
  [v10 cacheFonts];

  [(_UIDocumentPickerCell *)self setGridConstraints:0];
  [(_UIDocumentPickerCell *)self setTableConstraints:0];
  [(_UIDocumentPickerCell *)self setIndentedConstraints:0];

  [(_UIDocumentPickerCell *)self _updateConstraintsForCellStyle];
}

- (void)prepareForReuse
{
  v9.receiver = self;
  v9.super_class = _UIDocumentPickerCell;
  [(UICollectionViewTableCell *)&v9 prepareForReuse];
  [(_UIDocumentPickerCell *)self setAvailableActions:0];
  progressView = [(_UIDocumentPickerCell *)self progressView];
  [progressView setHidden:1];

  titleLabel = [(_UIDocumentPickerCell *)self titleLabel];
  [titleLabel setText:&stru_285690698];

  subtitleLabel = [(_UIDocumentPickerCell *)self subtitleLabel];
  [subtitleLabel setText:&stru_285690698];

  subtitle2Label = [(_UIDocumentPickerCell *)self subtitle2Label];
  [subtitle2Label setText:&stru_285690698];

  thumbnailView = [(_UIDocumentPickerCell *)self thumbnailView];
  [thumbnailView setImage:0];

  tagView = [(_UIDocumentPickerCell *)self tagView];
  [tagView setImage:0];

  [(_UIDocumentPickerCell *)self setCollectionView:0];
  [(_UIDocumentPickerCell *)self setItem:0];
}

- (void)willTransitionFromLayout:(id)layout toLayout:(id)toLayout
{
  toLayoutCopy = toLayout;
  layoutCopy = layout;
  [(_UIDocumentPickerCell *)self setTransitioningLayout:1];
  v8.receiver = self;
  v8.super_class = _UIDocumentPickerCell;
  [(UICollectionViewTableCell *)&v8 willTransitionFromLayout:layoutCopy toLayout:toLayoutCopy];
}

- (void)didTransitionFromLayout:(id)layout toLayout:(id)toLayout
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerCell;
  [(UICollectionViewTableCell *)&v5 didTransitionFromLayout:layout toLayout:toLayout];
  [(_UIDocumentPickerCell *)self setTransitioningLayout:0];
}

- (void)dealloc
{
  [(_UIDocumentPickerContainerItem *)self->_item decrementModelDisplayCount];
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerCell;
  [(_UIDocumentPickerCell *)&v3 dealloc];
}

- (void)_updateIconSize
{
  v3 = objc_opt_class();
  traitCollection = [(_UIDocumentPickerCell *)self traitCollection];
  [v3 thumbnailSizeForTraits:traitCollection cellStyle:{-[_UIDocumentPickerCell cellStyle](self, "cellStyle")}];
  v6 = v5;
  v8 = v7;

  thumbnailCenterHeightConstraint = [(_UIDocumentPickerCell *)self thumbnailCenterHeightConstraint];
  [thumbnailCenterHeightConstraint setConstant:v8];

  thumbnailCenterWidthConstraint = [(_UIDocumentPickerCell *)self thumbnailCenterWidthConstraint];
  [thumbnailCenterWidthConstraint setConstant:v6];
}

- (void)_updateSelectionState:(BOOL)state
{
  stateCopy = state;
  if ([(UICollectionViewTableCell *)self isEditing])
  {
    v5 = ![(UICollectionViewTableCell *)self isInTableLayout];
  }

  else
  {
    v5 = 0;
  }

  if ([(UICollectionViewTableCell *)self isInTableLayout])
  {
    v6 = ![(UICollectionViewTableCell *)self isEditing];
  }

  else
  {
    v6 = 0;
  }

  selectionView = self->_selectionView;
  if (!v5)
  {
    if (selectionView)
    {
      if (stateCopy)
      {
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __47___UIDocumentPickerCell__updateSelectionState___block_invoke_2;
        v37[3] = &unk_278DD61B0;
        v37[4] = self;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __47___UIDocumentPickerCell__updateSelectionState___block_invoke_3;
        v36[3] = &unk_278DD61D8;
        v36[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v37 animations:v36 completion:0.3];
      }

      else
      {
        [(UIImageView *)selectionView removeFromSuperview];
      }

      [MEMORY[0x277CCAAD0] deactivateConstraints:self->_selectionViewConstraints];
    }

LABEL_34:
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_37;
  }

  if (selectionView)
  {
    if (!stateCopy)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D755E8]);
    v9 = self->_selectionView;
    self->_selectionView = v8;

    [(UIImageView *)self->_selectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    selectionView = self->_selectionView;
    if (!stateCopy)
    {
      goto LABEL_17;
    }
  }

  superview = [(UIImageView *)selectionView superview];
  contentView = [(_UIDocumentPickerCell *)self contentView];

  selectionView = self->_selectionView;
  if (superview != contentView)
  {
    [(UIImageView *)selectionView setAlpha:0.0];
    selectionView = self->_selectionView;
    v12 = 1;
    goto LABEL_18;
  }

LABEL_17:
  v12 = 0;
LABEL_18:
  superview2 = [(UIImageView *)selectionView superview];
  contentView2 = [(_UIDocumentPickerCell *)self contentView];

  if (superview2 != contentView2)
  {
    contentView3 = [(_UIDocumentPickerCell *)self contentView];
    [contentView3 addSubview:self->_selectionView];
  }

  if (!self->_selectionViewConstraints)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    selectionViewConstraints = self->_selectionViewConstraints;
    self->_selectionViewConstraints = v16;
  }

  if (self->_thumbnailView == self->_selectionViewsThumbnailView)
  {
    if (superview2 == contentView2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    [(NSMutableArray *)self->_selectionViewConstraints removeAllObjects];
    v18 = self->_selectionViewConstraints;
    bottomAnchor = [(UIImageView *)self->_selectionView bottomAnchor];
    bottomAnchor2 = [(UIImageView *)self->_thumbnailView bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-3.0];
    [(NSMutableArray *)v18 addObject:v21];

    v22 = self->_selectionViewConstraints;
    centerXAnchor = [(UIImageView *)self->_selectionView centerXAnchor];
    centerXAnchor2 = [(UIImageView *)self->_thumbnailView centerXAnchor];
    v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [(NSMutableArray *)v22 addObject:v25];

    [(_UIDocumentPickerCell *)self setSelectionViewsThumbnailView:self->_thumbnailView];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:self->_selectionViewConstraints];
LABEL_26:
  if (v12)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __47___UIDocumentPickerCell__updateSelectionState___block_invoke;
    v38[3] = &unk_278DD61B0;
    v38[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v38 animations:0 completion:0.3];
  }

  if (!self->_selectionView)
  {
    goto LABEL_34;
  }

  isSelected = [(UICollectionViewTableCell *)self isSelected];
  v27 = MEMORY[0x277D755B8];
  if (isSelected)
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __47___UIDocumentPickerCell__updateSelectionState___block_invoke_4;
    v35[3] = &unk_278DD6228;
    v35[4] = self;
    v28 = [MEMORY[0x277D755B8] _cachedImageForKey:@"DocPickerCollectionCheck" fromBlock:v35];
    [(UIImageView *)self->_selectionView setImage:v28];

    if (!v6)
    {
      goto LABEL_37;
    }

LABEL_35:
    [(UICollectionViewTableCell *)self setSelectedBackgroundView:0];
    return;
  }

  v29 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  traitCollection = [(_UIDocumentPickerCell *)self traitCollection];
  v31 = [v27 imageNamed:@"DocumentSelectionCheckmarkUnchecked" inBundle:v29 compatibleWithTraitCollection:traitCollection];
  [(UIImageView *)self->_selectionView setImage:v31];

  if (v6)
  {
    goto LABEL_35;
  }

LABEL_37:
  cachedSelectedBackgroundView = [(_UIDocumentPickerCell *)self cachedSelectedBackgroundView];

  if (!cachedSelectedBackgroundView)
  {
    v33 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(_UIDocumentPickerCell *)self setCachedSelectedBackgroundView:v33];
  }

  cachedSelectedBackgroundView2 = [(_UIDocumentPickerCell *)self cachedSelectedBackgroundView];
  [(UICollectionViewTableCell *)self setSelectedBackgroundView:cachedSelectedBackgroundView2];
}

- (void)_updateFonts
{
  isInTableLayout = [(UICollectionViewTableCell *)self isInTableLayout];
  v10 = +[_UIDocumentPickerCellFontManager sharedFontManager];
  if (isInTableLayout)
  {
    titleFontForTableLayout = [v10 titleFontForTableLayout];
    [v10 subtitleFontForTableLayout];
  }

  else
  {
    titleFontForTableLayout = [v10 titleFontForGridLayout];
    [v10 subtitleFontForGridLayout];
  }
  v5 = ;
  titleLabel = [(_UIDocumentPickerCell *)self titleLabel];
  [titleLabel setFont:titleFontForTableLayout];

  subtitleLabel = [(_UIDocumentPickerCell *)self subtitleLabel];
  [subtitleLabel setFont:v5];

  subtitle2Label = [(_UIDocumentPickerCell *)self subtitle2Label];
  [subtitle2Label setFont:v5];

  subtitleJoiner = [(_UIDocumentPickerCell *)self subtitleJoiner];
  [subtitleJoiner setFont:v5];
}

- (void)_updateAccessoryType
{
  if ([(UICollectionViewTableCell *)self isEditing]|| [(_UIDocumentPickerCell *)self cellStyle]== 3)
  {
    goto LABEL_3;
  }

  item = [(_UIDocumentPickerCell *)self item];
  if ([item type] == 2)
  {

LABEL_10:
    v3 = 1;
    goto LABEL_4;
  }

  item2 = [(_UIDocumentPickerCell *)self item];
  type = [item2 type];

  if (type == 1)
  {
    goto LABEL_10;
  }

  collectionView = [(_UIDocumentPickerCell *)self collectionView];
  if (([collectionView supportsActions] & 1) == 0)
  {

    goto LABEL_3;
  }

  collectionView2 = [(_UIDocumentPickerCell *)self collectionView];
  serviceViewController = [collectionView2 serviceViewController];
  v10 = [serviceViewController shouldShowAction:2];

  if ((v10 & 1) == 0)
  {
LABEL_3:
    v3 = 0;
    goto LABEL_4;
  }

  v3 = 4;
LABEL_4:

  [(UICollectionViewTableCell *)self setAccessoryType:v3];
}

- (void)_updateSeparatorInset
{
  isEditing = [(UICollectionViewTableCell *)self isEditing];
  v4 = 24.0;
  if (isEditing)
  {
    v4 = 60.0;
  }

  [(UICollectionViewTableCell *)self setSeparatorInset:0.0, v4, 0.0, 0.0];
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  if ([(UICollectionViewTableCell *)self isEditing]!= editing)
  {
    v5.receiver = self;
    v5.super_class = _UIDocumentPickerCell;
    [(UICollectionViewTableCell *)&v5 setEditing:editingCopy];
    [(_UIDocumentPickerCell *)self updateForEditingState:1];
  }
}

- (void)_updateConstraintsForCellStyle
{
  v267[2] = *MEMORY[0x277D85DE8];
  v3 = +[_UIDocumentPickerCellFontManager sharedFontManager];
  if ([(_UIDocumentPickerCell *)self cellStyle]== 2)
  {
    tableConstraints = [(_UIDocumentPickerCell *)self tableConstraints];

    if (!tableConstraints)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:19];
      titleFontForTableLayout = [v3 titleFontForTableLayout];
      subtitleFontForTableLayout = [v3 subtitleFontForTableLayout];
      thumbnailView = [(_UIDocumentPickerCell *)self thumbnailView];
      heightAnchor = [thumbnailView heightAnchor];
      v8 = [heightAnchor constraintEqualToConstant:44.0];
      [v5 addObject:v8];

      thumbnailView2 = [(_UIDocumentPickerCell *)self thumbnailView];
      widthAnchor = [thumbnailView2 widthAnchor];
      v11 = [widthAnchor constraintEqualToConstant:44.0];
      [v5 addObject:v11];

      thumbnailView3 = [(_UIDocumentPickerCell *)self thumbnailView];
      centerYAnchor = [thumbnailView3 centerYAnchor];
      contentView = [(_UIDocumentPickerCell *)self contentView];
      centerYAnchor2 = [contentView centerYAnchor];
      v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [v5 addObject:v16];

      thumbnailView4 = [(_UIDocumentPickerCell *)self thumbnailView];
      leadingAnchor = [thumbnailView4 leadingAnchor];
      contentView2 = [(_UIDocumentPickerCell *)self contentView];
      leadingAnchor2 = [contentView2 leadingAnchor];
      v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0];
      [v5 addObject:v21];

      thumbnailView5 = [(_UIDocumentPickerCell *)self thumbnailView];
      widthAnchor2 = [thumbnailView5 widthAnchor];
      v24 = [widthAnchor2 constraintEqualToConstant:0.0];

      v266 = v24;
      LODWORD(v25) = 1111752704;
      [v24 setPriority:v25];
      [v5 addObject:v24];
      tagView = [(_UIDocumentPickerCell *)self tagView];
      widthAnchor3 = [tagView widthAnchor];
      v28 = [widthAnchor3 constraintEqualToConstant:0.0];

      LODWORD(v29) = 1111752704;
      [v28 setPriority:v29];
      [v5 addObject:v28];
      tagView2 = [(_UIDocumentPickerCell *)self tagView];
      leadingAnchor3 = [tagView2 leadingAnchor];
      contentView3 = [(_UIDocumentPickerCell *)self contentView];
      leadingAnchor4 = [contentView3 leadingAnchor];
      v34 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:80.0];
      [v5 addObject:v34];

      titleLabel = [(_UIDocumentPickerCell *)self titleLabel];
      leadingAnchor5 = [titleLabel leadingAnchor];
      tagView3 = [(_UIDocumentPickerCell *)self tagView];
      trailingAnchor = [tagView3 trailingAnchor];
      v39 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor];
      [v5 addObject:v39];

      subtitleLabel = [(_UIDocumentPickerCell *)self subtitleLabel];
      leadingAnchor6 = [subtitleLabel leadingAnchor];
      contentView4 = [(_UIDocumentPickerCell *)self contentView];
      leadingAnchor7 = [contentView4 leadingAnchor];
      v44 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:80.0];
      [v5 addObject:v44];

      subtitleJoiner = [(_UIDocumentPickerCell *)self subtitleJoiner];
      leadingAnchor8 = [subtitleJoiner leadingAnchor];
      subtitleLabel2 = [(_UIDocumentPickerCell *)self subtitleLabel];
      trailingAnchor2 = [subtitleLabel2 trailingAnchor];
      v49 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor2 constant:5.0];
      [v5 addObject:v49];

      subtitle2Label = [(_UIDocumentPickerCell *)self subtitle2Label];
      leadingAnchor9 = [subtitle2Label leadingAnchor];
      subtitleJoiner2 = [(_UIDocumentPickerCell *)self subtitleJoiner];
      trailingAnchor3 = [subtitleJoiner2 trailingAnchor];
      v54 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor3 constant:5.0];
      [v5 addObject:v54];

      titleLabel2 = [(_UIDocumentPickerCell *)self titleLabel];
      lastBaselineAnchor = [titleLabel2 lastBaselineAnchor];
      contentView5 = [(_UIDocumentPickerCell *)self contentView];
      topAnchor = [contentView5 topAnchor];
      [titleFontForTableLayout _scaledValueForValue:28.0];
      v59 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
      [v5 addObject:v59];

      tagView4 = [(_UIDocumentPickerCell *)self tagView];
      lastBaselineAnchor2 = [tagView4 lastBaselineAnchor];
      titleLabel3 = [(_UIDocumentPickerCell *)self titleLabel];
      lastBaselineAnchor3 = [titleLabel3 lastBaselineAnchor];
      v64 = [lastBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor3];
      [v5 addObject:v64];

      subtitleLabel3 = [(_UIDocumentPickerCell *)self subtitleLabel];
      lastBaselineAnchor4 = [subtitleLabel3 lastBaselineAnchor];
      titleLabel4 = [(_UIDocumentPickerCell *)self titleLabel];
      lastBaselineAnchor5 = [titleLabel4 lastBaselineAnchor];
      [subtitleFontForTableLayout _scaledValueForValue:20.0];
      v69 = [lastBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor5 constant:?];
      [v5 addObject:v69];

      subtitle2Label2 = [(_UIDocumentPickerCell *)self subtitle2Label];
      lastBaselineAnchor6 = [subtitle2Label2 lastBaselineAnchor];
      subtitleLabel4 = [(_UIDocumentPickerCell *)self subtitleLabel];
      lastBaselineAnchor7 = [subtitleLabel4 lastBaselineAnchor];
      v74 = [lastBaselineAnchor6 constraintEqualToAnchor:lastBaselineAnchor7];
      [v5 addObject:v74];

      subtitleJoiner3 = [(_UIDocumentPickerCell *)self subtitleJoiner];
      lastBaselineAnchor8 = [subtitleJoiner3 lastBaselineAnchor];
      subtitleLabel5 = [(_UIDocumentPickerCell *)self subtitleLabel];
      lastBaselineAnchor9 = [subtitleLabel5 lastBaselineAnchor];
      v79 = [lastBaselineAnchor8 constraintEqualToAnchor:lastBaselineAnchor9];
      [v5 addObject:v79];

      contentView6 = [(_UIDocumentPickerCell *)self contentView];
      bottomAnchor = [contentView6 bottomAnchor];
      lastBaselineAnchor10 = [(UILabel *)self->_subtitleLabel lastBaselineAnchor];
      [titleFontForTableLayout _scaledValueForValue:16.0];
      v83 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor10 constant:?];
      [v5 addObject:v83];

      titleLabel5 = [(_UIDocumentPickerCell *)self titleLabel];
      trailingAnchor4 = [titleLabel5 trailingAnchor];
      contentView7 = [(_UIDocumentPickerCell *)self contentView];
      trailingAnchor5 = [contentView7 trailingAnchor];
      v88 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:trailingAnchor5];
      [v5 addObject:v88];

      subtitle2Label3 = [(_UIDocumentPickerCell *)self subtitle2Label];
      trailingAnchor6 = [subtitle2Label3 trailingAnchor];
      contentView8 = [(_UIDocumentPickerCell *)self contentView];
      trailingAnchor7 = [contentView8 trailingAnchor];
      v93 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:trailingAnchor7];
      [v5 addObject:v93];

      [(_UIDocumentPickerCell *)self setTableConstraints:v5];
    }

    tableConstraints2 = [(_UIDocumentPickerCell *)self tableConstraints];
  }

  else if ([(_UIDocumentPickerCell *)self cellStyle]== 3)
  {
    indentedConstraints = [(_UIDocumentPickerCell *)self indentedConstraints];

    if (!indentedConstraints)
    {
      v96 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:13];
      titleFontForTableLayout2 = [v3 titleFontForTableLayout];
      thumbnailView6 = [(_UIDocumentPickerCell *)self thumbnailView];
      heightAnchor2 = [thumbnailView6 heightAnchor];
      v100 = [heightAnchor2 constraintEqualToConstant:20.0];
      [v96 addObject:v100];

      thumbnailView7 = [(_UIDocumentPickerCell *)self thumbnailView];
      widthAnchor4 = [thumbnailView7 widthAnchor];
      v103 = [widthAnchor4 constraintEqualToConstant:20.0];
      [v96 addObject:v103];

      thumbnailView8 = [(_UIDocumentPickerCell *)self thumbnailView];
      centerYAnchor3 = [thumbnailView8 centerYAnchor];
      contentView9 = [(_UIDocumentPickerCell *)self contentView];
      centerYAnchor4 = [contentView9 centerYAnchor];
      v108 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      [v96 addObject:v108];

      thumbnailView9 = [(_UIDocumentPickerCell *)self thumbnailView];
      leadingAnchor10 = [thumbnailView9 leadingAnchor];
      indentationHelperView = [(_UIDocumentPickerCell *)self indentationHelperView];
      trailingAnchor8 = [indentationHelperView trailingAnchor];
      v113 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor8 constant:15.0];
      [v96 addObject:v113];

      indentationHelperView2 = [(_UIDocumentPickerCell *)self indentationHelperView];
      leadingAnchor11 = [indentationHelperView2 leadingAnchor];
      contentView10 = [(_UIDocumentPickerCell *)self contentView];
      leadingAnchor12 = [contentView10 leadingAnchor];
      v118 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
      [v96 addObject:v118];

      indentationHelperView3 = [(_UIDocumentPickerCell *)self indentationHelperView];
      widthAnchor5 = [indentationHelperView3 widthAnchor];
      v121 = [widthAnchor5 constraintEqualToConstant:0.0];
      [(_UIDocumentPickerCell *)self setIndentationConstraint:v121];

      indentationConstraint = [(_UIDocumentPickerCell *)self indentationConstraint];
      [v96 addObject:indentationConstraint];

      tagView5 = [(_UIDocumentPickerCell *)self tagView];
      lastBaselineAnchor11 = [tagView5 lastBaselineAnchor];
      titleLabel6 = [(_UIDocumentPickerCell *)self titleLabel];
      lastBaselineAnchor12 = [titleLabel6 lastBaselineAnchor];
      v127 = [lastBaselineAnchor11 constraintEqualToAnchor:lastBaselineAnchor12];
      [v96 addObject:v127];

      tagView6 = [(_UIDocumentPickerCell *)self tagView];
      leadingAnchor13 = [tagView6 leadingAnchor];
      thumbnailView10 = [(_UIDocumentPickerCell *)self thumbnailView];
      trailingAnchor9 = [thumbnailView10 trailingAnchor];
      v132 = [leadingAnchor13 constraintEqualToAnchor:trailingAnchor9 constant:15.0];
      [v96 addObject:v132];

      titleLabel7 = [(_UIDocumentPickerCell *)self titleLabel];
      leadingAnchor14 = [titleLabel7 leadingAnchor];
      tagView7 = [(_UIDocumentPickerCell *)self tagView];
      trailingAnchor10 = [tagView7 trailingAnchor];
      v137 = [leadingAnchor14 constraintEqualToAnchor:trailingAnchor10];
      [v96 addObject:v137];

      titleLabel8 = [(_UIDocumentPickerCell *)self titleLabel];
      trailingAnchor11 = [titleLabel8 trailingAnchor];
      contentView11 = [(_UIDocumentPickerCell *)self contentView];
      trailingAnchor12 = [contentView11 trailingAnchor];
      v142 = [trailingAnchor11 constraintLessThanOrEqualToAnchor:trailingAnchor12];
      [v96 addObject:v142];

      lastBaselineAnchor13 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
      contentView12 = [(_UIDocumentPickerCell *)self contentView];
      topAnchor2 = [contentView12 topAnchor];
      [titleFontForTableLayout2 _scaledValueForValue:28.0];
      v146 = [lastBaselineAnchor13 constraintEqualToAnchor:topAnchor2 constant:?];
      [v96 addObject:v146];

      contentView13 = [(_UIDocumentPickerCell *)self contentView];
      bottomAnchor2 = [contentView13 bottomAnchor];
      lastBaselineAnchor14 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
      [titleFontForTableLayout2 _scaledValueForValue:16.0];
      v150 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor14 constant:?];
      [v96 addObject:v150];

      [(_UIDocumentPickerCell *)self setIndentedConstraints:v96];
    }

    tableConstraints2 = [(_UIDocumentPickerCell *)self indentedConstraints];
  }

  else
  {
    gridConstraints = [(_UIDocumentPickerCell *)self gridConstraints];

    if (!gridConstraints)
    {
      v152 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:20];
      titleLabel9 = [(_UIDocumentPickerCell *)self titleLabel];
      lastBaselineAnchor15 = [titleLabel9 lastBaselineAnchor];
      thumbnailView11 = [(_UIDocumentPickerCell *)self thumbnailView];
      bottomAnchor3 = [thumbnailView11 bottomAnchor];
      titleLabel10 = [(_UIDocumentPickerCell *)self titleLabel];
      font = [titleLabel10 font];
      [font _scaledValueForValue:16.0];
      v159 = [lastBaselineAnchor15 constraintEqualToAnchor:bottomAnchor3 constant:?];
      [v152 addObject:v159];

      subtitleLabel6 = [(_UIDocumentPickerCell *)self subtitleLabel];
      lastBaselineAnchor16 = [subtitleLabel6 lastBaselineAnchor];
      titleLabel11 = [(_UIDocumentPickerCell *)self titleLabel];
      lastBaselineAnchor17 = [titleLabel11 lastBaselineAnchor];
      subtitleLabel7 = [(_UIDocumentPickerCell *)self subtitleLabel];
      font2 = [subtitleLabel7 font];
      [font2 _scaledValueForValue:16.0];
      v166 = [lastBaselineAnchor16 constraintEqualToAnchor:lastBaselineAnchor17 constant:?];
      [v152 addObject:v166];

      subtitle2Label4 = [(_UIDocumentPickerCell *)self subtitle2Label];
      lastBaselineAnchor18 = [subtitle2Label4 lastBaselineAnchor];
      subtitleLabel8 = [(_UIDocumentPickerCell *)self subtitleLabel];
      lastBaselineAnchor19 = [subtitleLabel8 lastBaselineAnchor];
      subtitleLabel9 = [(_UIDocumentPickerCell *)self subtitleLabel];
      font3 = [subtitleLabel9 font];
      [font3 _scaledValueForValue:16.0];
      v173 = [lastBaselineAnchor18 constraintEqualToAnchor:lastBaselineAnchor19 constant:?];
      [v152 addObject:v173];

      subtitleJoiner4 = [(_UIDocumentPickerCell *)self subtitleJoiner];
      leadingAnchor15 = [subtitleJoiner4 leadingAnchor];
      subtitleLabel10 = [(_UIDocumentPickerCell *)self subtitleLabel];
      trailingAnchor13 = [subtitleLabel10 trailingAnchor];
      v178 = [leadingAnchor15 constraintEqualToAnchor:trailingAnchor13 constant:5.0];
      [v152 addObject:v178];

      subtitleJoiner5 = [(_UIDocumentPickerCell *)self subtitleJoiner];
      lastBaselineAnchor20 = [subtitleJoiner5 lastBaselineAnchor];
      subtitleLabel11 = [(_UIDocumentPickerCell *)self subtitleLabel];
      lastBaselineAnchor21 = [subtitleLabel11 lastBaselineAnchor];
      v183 = [lastBaselineAnchor20 constraintEqualToAnchor:lastBaselineAnchor21];
      [v152 addObject:v183];

      tagView8 = [(_UIDocumentPickerCell *)self tagView];
      lastBaselineAnchor22 = [tagView8 lastBaselineAnchor];
      titleLabel12 = [(_UIDocumentPickerCell *)self titleLabel];
      lastBaselineAnchor23 = [titleLabel12 lastBaselineAnchor];
      v188 = [lastBaselineAnchor22 constraintEqualToAnchor:lastBaselineAnchor23];
      [v152 addObject:v188];

      tagView9 = [(_UIDocumentPickerCell *)self tagView];
      trailingAnchor14 = [tagView9 trailingAnchor];
      titleLabel13 = [(_UIDocumentPickerCell *)self titleLabel];
      leadingAnchor16 = [titleLabel13 leadingAnchor];
      v193 = [trailingAnchor14 constraintEqualToAnchor:leadingAnchor16];
      [v152 addObject:v193];

      tagView10 = [(_UIDocumentPickerCell *)self tagView];
      leadingAnchor17 = [tagView10 leadingAnchor];
      contentView14 = [(_UIDocumentPickerCell *)self contentView];
      leadingAnchor18 = [contentView14 leadingAnchor];
      v198 = [leadingAnchor17 constraintGreaterThanOrEqualToAnchor:leadingAnchor18 constant:5.0];
      [v152 addObject:v198];

      titleLabel14 = [(_UIDocumentPickerCell *)self titleLabel];
      centerXAnchor = [titleLabel14 centerXAnchor];
      contentView15 = [(_UIDocumentPickerCell *)self contentView];
      centerXAnchor2 = [contentView15 centerXAnchor];
      v203 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

      LODWORD(v204) = 1144750080;
      [v203 setPriority:v204];
      [v152 addObject:v203];
      titleLabel15 = [(_UIDocumentPickerCell *)self titleLabel];
      trailingAnchor15 = [titleLabel15 trailingAnchor];
      contentView16 = [(_UIDocumentPickerCell *)self contentView];
      trailingAnchor16 = [contentView16 trailingAnchor];
      v209 = [trailingAnchor15 constraintLessThanOrEqualToAnchor:trailingAnchor16 constant:-5.0];
      [v152 addObject:v209];

      subtitleLabel12 = [(_UIDocumentPickerCell *)self subtitleLabel];
      centerXAnchor3 = [subtitleLabel12 centerXAnchor];
      contentView17 = [(_UIDocumentPickerCell *)self contentView];
      centerXAnchor4 = [contentView17 centerXAnchor];
      v214 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      [v152 addObject:v214];

      subtitleLabel13 = [(_UIDocumentPickerCell *)self subtitleLabel];
      leadingAnchor19 = [subtitleLabel13 leadingAnchor];
      contentView18 = [(_UIDocumentPickerCell *)self contentView];
      leadingAnchor20 = [contentView18 leadingAnchor];
      v219 = [leadingAnchor19 constraintGreaterThanOrEqualToAnchor:leadingAnchor20 constant:5.0];
      [v152 addObject:v219];

      subtitleLabel14 = [(_UIDocumentPickerCell *)self subtitleLabel];
      trailingAnchor17 = [subtitleLabel14 trailingAnchor];
      contentView19 = [(_UIDocumentPickerCell *)self contentView];
      trailingAnchor18 = [contentView19 trailingAnchor];
      v224 = [trailingAnchor17 constraintLessThanOrEqualToAnchor:trailingAnchor18 constant:-5.0];
      [v152 addObject:v224];

      subtitle2Label5 = [(_UIDocumentPickerCell *)self subtitle2Label];
      centerXAnchor5 = [subtitle2Label5 centerXAnchor];
      contentView20 = [(_UIDocumentPickerCell *)self contentView];
      centerXAnchor6 = [contentView20 centerXAnchor];
      v229 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
      [v152 addObject:v229];

      subtitle2Label6 = [(_UIDocumentPickerCell *)self subtitle2Label];
      leadingAnchor21 = [subtitle2Label6 leadingAnchor];
      contentView21 = [(_UIDocumentPickerCell *)self contentView];
      leadingAnchor22 = [contentView21 leadingAnchor];
      v234 = [leadingAnchor21 constraintGreaterThanOrEqualToAnchor:leadingAnchor22 constant:5.0];
      [v152 addObject:v234];

      subtitle2Label7 = [(_UIDocumentPickerCell *)self subtitle2Label];
      trailingAnchor19 = [subtitle2Label7 trailingAnchor];
      contentView22 = [(_UIDocumentPickerCell *)self contentView];
      trailingAnchor20 = [contentView22 trailingAnchor];
      v239 = [trailingAnchor19 constraintLessThanOrEqualToAnchor:trailingAnchor20 constant:-5.0];
      [v152 addObject:v239];

      thumbnailView12 = [(_UIDocumentPickerCell *)self thumbnailView];
      heightAnchor3 = [thumbnailView12 heightAnchor];
      v242 = [heightAnchor3 constraintEqualToConstant:0.0];
      [(_UIDocumentPickerCell *)self setThumbnailCenterHeightConstraint:v242];

      thumbnailView13 = [(_UIDocumentPickerCell *)self thumbnailView];
      widthAnchor6 = [thumbnailView13 widthAnchor];
      v245 = [widthAnchor6 constraintEqualToConstant:0.0];
      [(_UIDocumentPickerCell *)self setThumbnailCenterWidthConstraint:v245];

      thumbnailCenterHeightConstraint = [(_UIDocumentPickerCell *)self thumbnailCenterHeightConstraint];
      v267[0] = thumbnailCenterHeightConstraint;
      thumbnailCenterWidthConstraint = [(_UIDocumentPickerCell *)self thumbnailCenterWidthConstraint];
      v267[1] = thumbnailCenterWidthConstraint;
      v248 = [MEMORY[0x277CBEA60] arrayWithObjects:v267 count:2];
      [v152 addObjectsFromArray:v248];

      thumbnailView14 = [(_UIDocumentPickerCell *)self thumbnailView];
      centerXAnchor7 = [thumbnailView14 centerXAnchor];
      contentView23 = [(_UIDocumentPickerCell *)self contentView];
      centerXAnchor8 = [contentView23 centerXAnchor];
      v253 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
      [v152 addObject:v253];

      thumbnailView15 = [(_UIDocumentPickerCell *)self thumbnailView];
      topAnchor3 = [thumbnailView15 topAnchor];
      contentView24 = [(_UIDocumentPickerCell *)self contentView];
      topAnchor4 = [contentView24 topAnchor];
      v258 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      [v152 addObject:v258];

      [(_UIDocumentPickerCell *)self setGridConstraints:v152];
    }

    [(_UIDocumentPickerCell *)self _updateIconSize];
    tableConstraints2 = [(_UIDocumentPickerCell *)self gridConstraints];
  }

  v259 = tableConstraints2;
  activeConstraints = [(_UIDocumentPickerCell *)self activeConstraints];

  if (v259 != activeConstraints)
  {
    activeConstraints2 = [(_UIDocumentPickerCell *)self activeConstraints];

    if (activeConstraints2)
    {
      v262 = MEMORY[0x277CCAAD0];
      activeConstraints3 = [(_UIDocumentPickerCell *)self activeConstraints];
      [v262 deactivateConstraints:activeConstraints3];
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v259];
    [(_UIDocumentPickerCell *)self setActiveConstraints:v259];
  }
}

- (void)updateForEditingState:(BOOL)state
{
  stateCopy = state;
  [(_UIDocumentPickerCell *)self _updateSelectionState:?];
  [(_UIDocumentPickerCell *)self _updateAccessoryType];
  [(_UIDocumentPickerCell *)self updateActionGestureRecognizer];
  if (stateCopy)
  {
    [(_UIDocumentPickerCell *)self layoutIfNeeded];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47___UIDocumentPickerCell_updateForEditingState___block_invoke;
    v5[3] = &unk_278DD61B0;
    v5[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.3];
  }

  else
  {

    [(_UIDocumentPickerCell *)self _updateSeparatorInset];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v20.receiver = self;
  v20.super_class = _UIDocumentPickerCell;
  [(UICollectionViewTableCell *)&v20 applyLayoutAttributes:attributesCopy];
  currentLayout = [(UICollectionViewTableCell *)self currentLayout];
  cellStyle = [currentLayout cellStyle];

  if (cellStyle != [(_UIDocumentPickerCell *)self cellStyle])
  {
    [(_UIDocumentPickerCell *)self setCellStyle:cellStyle];
    [(_UIDocumentPickerCell *)self _udpateLabelAlpha];
    [(_UIDocumentPickerCell *)self _updateConstraintsForCellStyle];
    [(_UIDocumentPickerCell *)self _updateSelectionState:1];
    [(_UIDocumentPickerCell *)self _updateFonts];
  }

  indentationLevel = [(UICollectionViewTableCell *)self indentationLevel];
  [(UICollectionViewTableCell *)self indentationWidth];
  v9 = v8 * indentationLevel;
  [attributesCopy size];
  v11 = v10 * 0.5;
  if (v9 > v10 * 0.5)
  {
    [(UICollectionViewTableCell *)self indentationWidth];
    v13 = v11 / v12;
    v14 = floor(v13);
    v15 = [(UICollectionViewTableCell *)self indentationLevel]- vcvtmd_u64_f64(v13);
    [(UICollectionViewTableCell *)self indentationWidth];
    v17 = v15 * 5.0 + v14 * v16;
    [attributesCopy size];
    v9 = fmin(v17, v18 * 0.8);
  }

  indentationConstraint = [(_UIDocumentPickerCell *)self indentationConstraint];
  [indentationConstraint setConstant:v9];

  if ([(_UIDocumentPickerCell *)self isTransitioningLayout])
  {
    [(_UIDocumentPickerCell *)self layoutIfNeeded];
  }
}

- (void)_udpateLabelAlpha
{
  item = [(_UIDocumentPickerCell *)self item];
  v4 = 0.5;
  if ([item pickable])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.5;
  }

  titleLabel = [(_UIDocumentPickerCell *)self titleLabel];
  [titleLabel setAlpha:v5];

  if ([(_UIDocumentPickerCell *)self cellStyle]== 3)
  {
    subtitleLabel = [(_UIDocumentPickerCell *)self subtitleLabel];
    v8 = 0.0;
    [subtitleLabel setAlpha:0.0];
LABEL_13:

    goto LABEL_14;
  }

  item2 = [(_UIDocumentPickerCell *)self item];
  if ([item2 pickable])
  {
    v4 = 1.0;
  }

  subtitleLabel2 = [(_UIDocumentPickerCell *)self subtitleLabel];
  [subtitleLabel2 setAlpha:v4];

  v8 = 0.0;
  if ([(_UIDocumentPickerCell *)self cellStyle]== 2)
  {
    subtitleLabel = [(_UIDocumentPickerCell *)self subtitle2Label];
    text = [subtitleLabel text];
    if ([text length])
    {
      v8 = v4;
    }

    else
    {
      v8 = 0.0;
    }

    goto LABEL_13;
  }

LABEL_14:
  subtitle2Label = [(_UIDocumentPickerCell *)self subtitle2Label];
  [subtitle2Label setAlpha:v8];

  subtitleJoiner = [(_UIDocumentPickerCell *)self subtitleJoiner];
  [subtitleJoiner setAlpha:v8];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(UICollectionViewTableCell *)self isSelected]!= selected)
  {
    v5.receiver = self;
    v5.super_class = _UIDocumentPickerCell;
    [(UICollectionViewTableCell *)&v5 setSelected:selectedCopy];
    [(_UIDocumentPickerCell *)self _updateSelectionState:0];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(UICollectionViewTableCell *)self isHighlighted]!= highlighted)
  {
    if (highlightedCopy)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }

    thumbnailView = [(_UIDocumentPickerCell *)self thumbnailView];
    [thumbnailView setDrawMode:v5];

    v7.receiver = self;
    v7.super_class = _UIDocumentPickerCell;
    [(UICollectionViewTableCell *)&v7 setHighlighted:highlightedCopy];
  }
}

- (void)setItem:(id)item
{
  itemCopy = item;
  item = self->_item;
  if (item != itemCopy)
  {
    v8 = itemCopy;
    [(_UIDocumentPickerContainerItem *)item decrementModelDisplayCount];
    objc_storeStrong(&self->_item, item);
    [(_UIDocumentPickerContainerItem *)self->_item incrementModelDisplayCount];
    availableActions = self->_availableActions;
    self->_availableActions = 0;

    [(_UIDocumentPickerCell *)self reloadItem:0];
    [(_UIDocumentPickerCell *)self updateActionGestureRecognizer];
    item = [(_UIDocumentPickerCell *)self _udpateLabelAlpha];
    itemCopy = v8;
  }

  MEMORY[0x2821F96F8](item, itemCopy);
}

- (void)setCollectionView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_collectionView, obj);
    [(_UIDocumentPickerCell *)self updateActionGestureRecognizer];
    v5 = obj;
  }
}

- (NSArray)availableActions
{
  collectionView = [(_UIDocumentPickerCell *)self collectionView];
  serviceViewController = [collectionView serviceViewController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_7;
  }

  collectionView2 = [(_UIDocumentPickerCell *)self collectionView];
  serviceViewController2 = [collectionView2 serviceViewController];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  availableActions = self->_availableActions;
  if (!availableActions)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:7];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __41___UIDocumentPickerCell_availableActions__block_invoke;
    v21 = &unk_278DD6250;
    selfCopy = self;
    v10 = v9;
    v23 = v10;
    v11 = MEMORY[0x245D41DF0](&v18);
    v11[2](v11, 0, 0);
    v11[2](v11, 3, 1);
    v11[2](v11, 4, 2);
    v11[2](v11, 5, 3);
    v11[2](v11, 2, 4);
    v11[2](v11, 1, 5);
    v12 = [(_UIDocumentPickerCell *)self actions:v18];
    v13 = [v12 objectAtIndex:6];
    [(NSArray *)v10 addObject:v13];

    v14 = self->_availableActions;
    self->_availableActions = v10;
    v15 = v10;

    availableActions = self->_availableActions;
  }

  v16 = availableActions;
LABEL_8:

  return v16;
}

- (void)_deleteAction:(id)action
{
  collectionView = [(_UIDocumentPickerCell *)self collectionView];
  serviceViewController = [collectionView serviceViewController];
  item = [(_UIDocumentPickerCell *)self item];
  thumbnailView = [(_UIDocumentPickerCell *)self thumbnailView];
  [serviceViewController performAction:0 item:item view:thumbnailView completion:&__block_literal_global];
}

- (void)_infoAction:(id)action
{
  collectionView = [(_UIDocumentPickerCell *)self collectionView];
  serviceViewController = [collectionView serviceViewController];
  item = [(_UIDocumentPickerCell *)self item];
  thumbnailView = [(_UIDocumentPickerCell *)self thumbnailView];
  [serviceViewController performAction:2 item:item view:thumbnailView completion:&__block_literal_global_101];
}

- (void)_moreAction:(id)action
{
  collectionView = [(_UIDocumentPickerCell *)self collectionView];
  serviceViewController = [collectionView serviceViewController];
  item = [(_UIDocumentPickerCell *)self item];
  thumbnailView = [(_UIDocumentPickerCell *)self thumbnailView];
  [serviceViewController performAction:1 item:item view:thumbnailView completion:&__block_literal_global_103];
}

- (void)_renameAction:(id)action
{
  collectionView = [(_UIDocumentPickerCell *)self collectionView];
  serviceViewController = [collectionView serviceViewController];
  item = [(_UIDocumentPickerCell *)self item];
  thumbnailView = [(_UIDocumentPickerCell *)self thumbnailView];
  [serviceViewController performAction:3 item:item view:thumbnailView completion:&__block_literal_global_105];
}

- (void)_activityAction:(id)action
{
  collectionView = [(_UIDocumentPickerCell *)self collectionView];
  serviceViewController = [collectionView serviceViewController];
  item = [(_UIDocumentPickerCell *)self item];
  thumbnailView = [(_UIDocumentPickerCell *)self thumbnailView];
  [serviceViewController performAction:4 item:item view:thumbnailView completion:&__block_literal_global_107];
}

- (void)_moveAction:(id)action
{
  collectionView = [(_UIDocumentPickerCell *)self collectionView];
  serviceViewController = [collectionView serviceViewController];
  item = [(_UIDocumentPickerCell *)self item];
  thumbnailView = [(_UIDocumentPickerCell *)self thumbnailView];
  [serviceViewController performAction:5 item:item view:thumbnailView completion:&__block_literal_global_109];
}

- (void)updateActionGestureRecognizer
{
  actionGestureRecognizer = [(_UIDocumentPickerCell *)self actionGestureRecognizer];

  if (actionGestureRecognizer)
  {
    actionGestureRecognizer2 = [(_UIDocumentPickerCell *)self actionGestureRecognizer];
    [(_UIDocumentPickerCell *)self removeGestureRecognizer:actionGestureRecognizer2];
  }

  if (![(UICollectionViewTableCell *)self isEditing])
  {
    availableActions = [(_UIDocumentPickerCell *)self availableActions];

    if (availableActions)
    {
      actionGestureRecognizer3 = [(_UIDocumentPickerCell *)self actionGestureRecognizer];

      if (!actionGestureRecognizer3)
      {
        v7 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__showActions_];
        [(_UIDocumentPickerCell *)self setActionGestureRecognizer:v7];
      }

      actionGestureRecognizer4 = [(_UIDocumentPickerCell *)self actionGestureRecognizer];
      [(_UIDocumentPickerCell *)self addGestureRecognizer:actionGestureRecognizer4];
    }
  }

  actionGestureRecognizer5 = [(_UIDocumentPickerCell *)self actionGestureRecognizer];

  pickableDiagnosticGestureRecognizer = [(_UIDocumentPickerCell *)self pickableDiagnosticGestureRecognizer];
  if (actionGestureRecognizer5)
  {
    [(_UIDocumentPickerCell *)self removeGestureRecognizer:pickableDiagnosticGestureRecognizer];
  }

  else
  {
    [(_UIDocumentPickerCell *)self addGestureRecognizer:pickableDiagnosticGestureRecognizer];
  }
}

- (void)_showActions:(id)actions
{
  if ([actions state] == 1)
  {
    [(_UIDocumentPickerCell *)self becomeFirstResponder];
    mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
    availableActions = [(_UIDocumentPickerCell *)self availableActions];
    [mEMORY[0x277D75718] setMenuItems:availableActions];

    mEMORY[0x277D75718]2 = [MEMORY[0x277D75718] sharedMenuController];
    [(_UIDocumentPickerCell *)self bounds];
    [mEMORY[0x277D75718]2 setTargetRect:self inView:?];

    mEMORY[0x277D75718]3 = [MEMORY[0x277D75718] sharedMenuController];
    LOBYTE(mEMORY[0x277D75718]2) = [mEMORY[0x277D75718]3 isMenuVisible];

    if ((mEMORY[0x277D75718]2 & 1) == 0)
    {
      mEMORY[0x277D75718]4 = [MEMORY[0x277D75718] sharedMenuController];
      [mEMORY[0x277D75718]4 setMenuVisible:1 animated:1];
    }
  }
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  v11 = sel__deleteAction_ == action || sel__moreAction_ == action || sel__renameAction_ == action || sel__activityAction_ == action || sel__moveAction_ == action || sel__infoAction_ == action;
  if (v11 || sel__showPickableDiagnostic == action && CPIsInternalDevice() && (-[_UIDocumentPickerCell item](self, "item"), v14 = objc_claimAutoreleasedReturnValue(), [v14 pickabilityReason], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UIDocumentPickerDocumentCollectionViewController)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end