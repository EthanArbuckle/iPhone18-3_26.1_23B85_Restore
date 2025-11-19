@interface _UIDocumentPickerCell
+ (CGSize)defaultSizeForCellStyle:(int64_t)a3 traitCollection:(id)a4;
+ (CGSize)thumbnailSizeForTraits:(id)a3 cellStyle:(int64_t)a4;
+ (id)_subtitleFontForTable:(BOOL)a3;
+ (id)_titleFontForTable:(BOOL)a3;
- (NSArray)availableActions;
- (_UIDocumentPickerCell)initWithFrame:(CGRect)a3;
- (_UIDocumentPickerDocumentCollectionViewController)collectionView;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (void)_activityAction:(id)a3;
- (void)_deleteAction:(id)a3;
- (void)_dynamicTypeSizeChanged:(id)a3;
- (void)_infoAction:(id)a3;
- (void)_moreAction:(id)a3;
- (void)_moveAction:(id)a3;
- (void)_renameAction:(id)a3;
- (void)_showActions:(id)a3;
- (void)_udpateLabelAlpha;
- (void)_updateAccessoryType;
- (void)_updateConstraintsForCellStyle;
- (void)_updateFonts;
- (void)_updateIconSize;
- (void)_updateSelectionState:(BOOL)a3;
- (void)_updateSeparatorInset;
- (void)applyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)didTransitionFromLayout:(id)a3 toLayout:(id)a4;
- (void)prepareForReuse;
- (void)setCollectionView:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setItem:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateActionGestureRecognizer;
- (void)updateForEditingState:(BOOL)a3;
- (void)willTransitionFromLayout:(id)a3 toLayout:(id)a4;
@end

@implementation _UIDocumentPickerCell

+ (CGSize)defaultSizeForCellStyle:(int64_t)a3 traitCollection:(id)a4
{
  v6 = a4;
  v7 = +[_UIDocumentPickerCellFontManager sharedFontManager];
  v8 = v7;
  if (a3 == 1)
  {
    v9 = [v7 titleFontForGridLayout];
    v10 = [v8 subtitleFontForGridLayout];
    [v9 _scaledValueForValue:16.0];
    v12 = v11;
    [v10 _scaledValueForValue:32.0];
    v14 = v12 + v13;
    [a1 thumbnailSizeForTraits:v6 cellStyle:1];
    v16 = v15;
    v18 = v14 + v17;
  }

  else
  {
    v19 = [v7 titleFontForTableLayout];
    v9 = v19;
    if (a3 == 2)
    {
      v20 = [v8 subtitleFontForTableLayout];
      [v9 _scaledValueForValue:28.0];
      v22 = v21;
      [v20 _scaledValueForValue:20.0];
      v24 = v22 + v23;
      [v9 _scaledValueForValue:16.0];
      v18 = v24 + v25;
    }

    else
    {
      [v19 _scaledValueForValue:28.0];
      v27 = v26;
      [v9 _scaledValueForValue:16.0];
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

+ (id)_titleFontForTable:(BOOL)a3
{
  v3 = MEMORY[0x277D74300];
  v4 = MEMORY[0x277D76938];
  if (a3)
  {
    v4 = MEMORY[0x277D76918];
  }

  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*v4 addingSymbolicTraits:0 options:1];
  v6 = [v3 fontWithDescriptor:v5 size:0.0];

  return v6;
}

+ (id)_subtitleFontForTable:(BOOL)a3
{
  v3 = MEMORY[0x277D74300];
  v4 = MEMORY[0x277D76940];
  if (a3)
  {
    v4 = MEMORY[0x277D76938];
  }

  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*v4 addingSymbolicTraits:0 options:1];
  v6 = [v3 fontWithDescriptor:v5 size:0.0];

  return v6;
}

+ (CGSize)thumbnailSizeForTraits:(id)a3 cellStyle:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 3)
  {
    v7 = 20.0;
  }

  else if (a4 == 2)
  {
    v7 = 44.0;
  }

  else
  {
    v8 = [v5 _valueForTraitNamed:@"CompactIcons"];
    v9 = [v8 BOOLValue];

    if (v9)
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

- (_UIDocumentPickerCell)initWithFrame:(CGRect)a3
{
  v72.receiver = self;
  v72.super_class = _UIDocumentPickerCell;
  v3 = [(UICollectionViewTableCell *)&v72 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v3 action:sel__showPickableDiagnostic];
    [(_UIDocumentPickerCell *)v3 setPickableDiagnosticGestureRecognizer:v4];

    v5 = [(_UIDocumentPickerCell *)v3 pickableDiagnosticGestureRecognizer];
    [v5 setMinimumPressDuration:2.0];

    v6 = [(_UIDocumentPickerCell *)v3 pickableDiagnosticGestureRecognizer];
    [(_UIDocumentPickerCell *)v3 addGestureRecognizer:v6];

    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(_UIDocumentPickerCell *)v3 setTitleLabel:v7];

    v8 = [(_UIDocumentPickerCell *)v3 titleLabel];
    [v8 setTextAlignment:1];

    v9 = [(_UIDocumentPickerCell *)v3 titleLabel];
    [v9 setLineBreakMode:5];

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(_UIDocumentPickerCell *)v3 setSubtitleLabel:v10];

    v11 = [MEMORY[0x277D75348] secondaryLabelColor];
    v12 = [(_UIDocumentPickerCell *)v3 subtitleLabel];
    [v12 setTextColor:v11];

    v13 = [(_UIDocumentPickerCell *)v3 subtitleLabel];
    [v13 setTextAlignment:1];

    v14 = [(_UIDocumentPickerCell *)v3 subtitleLabel];
    [v14 setLineBreakMode:5];

    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(_UIDocumentPickerCell *)v3 setSubtitle2Label:v15];

    v16 = [MEMORY[0x277D75348] secondaryLabelColor];
    v17 = [(_UIDocumentPickerCell *)v3 subtitle2Label];
    [v17 setTextColor:v16];

    v18 = [(_UIDocumentPickerCell *)v3 subtitle2Label];
    [v18 setTextAlignment:1];

    v19 = [(_UIDocumentPickerCell *)v3 subtitle2Label];
    [v19 setLineBreakMode:5];

    v20 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(_UIDocumentPickerCell *)v3 setSubtitleJoiner:v20];

    v21 = [MEMORY[0x277D75348] secondaryLabelColor];
    v22 = [(_UIDocumentPickerCell *)v3 subtitleJoiner];
    [v22 setTextColor:v21];

    v23 = [(_UIDocumentPickerCell *)v3 subtitleJoiner];
    [v23 setTextAlignment:1];

    v24 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(_UIDocumentPickerCell *)v3 setIndentationHelperView:v24];

    v25 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v26 = [v25 localizedStringForKey:@"SUBTITLE_JOINER" value:@"–" table:@"Localizable"];
    v27 = [(_UIDocumentPickerCell *)v3 subtitleJoiner];
    [v27 setText:v26];

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
    v36 = [(_UIDocumentPickerCell *)v3 thumbnailView];
    [v36 frame];
    v38 = [v35 initWithFrame:{0.0, v37, v29, 0.0}];
    [(_UIDocumentPickerCell *)v3 setProgressView:v38];

    v39 = [(_UIDocumentPickerCell *)v3 progressView];
    [v39 setHidden:1];

    v40 = [(_UIDocumentPickerCell *)v3 titleLabel];
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

    v41 = [(_UIDocumentPickerCell *)v3 subtitleLabel];
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];

    v42 = [(_UIDocumentPickerCell *)v3 thumbnailView];
    [v42 setTranslatesAutoresizingMaskIntoConstraints:0];

    v43 = [(_UIDocumentPickerCell *)v3 subtitleLabel];
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];

    v44 = [(_UIDocumentPickerCell *)v3 subtitle2Label];
    [v44 setTranslatesAutoresizingMaskIntoConstraints:0];

    v45 = [(_UIDocumentPickerCell *)v3 subtitleJoiner];
    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];

    v46 = [(_UIDocumentPickerCell *)v3 tagView];
    [v46 setTranslatesAutoresizingMaskIntoConstraints:0];

    v47 = [(_UIDocumentPickerCell *)v3 indentationHelperView];
    [v47 setTranslatesAutoresizingMaskIntoConstraints:0];

    v48 = [(_UIDocumentPickerCell *)v3 contentView];
    v49 = [(_UIDocumentPickerCell *)v3 thumbnailView];
    [v48 addSubview:v49];

    v50 = [(_UIDocumentPickerCell *)v3 contentView];
    v51 = [(_UIDocumentPickerCell *)v3 progressView];
    [v50 addSubview:v51];

    v52 = [(_UIDocumentPickerCell *)v3 contentView];
    v53 = [(_UIDocumentPickerCell *)v3 subtitleLabel];
    [v52 addSubview:v53];

    v54 = [(_UIDocumentPickerCell *)v3 contentView];
    v55 = [(_UIDocumentPickerCell *)v3 subtitle2Label];
    [v54 addSubview:v55];

    v56 = [(_UIDocumentPickerCell *)v3 contentView];
    v57 = [(_UIDocumentPickerCell *)v3 subtitleJoiner];
    [v56 addSubview:v57];

    v58 = [(_UIDocumentPickerCell *)v3 contentView];
    v59 = [(_UIDocumentPickerCell *)v3 titleLabel];
    [v58 addSubview:v59];

    v60 = [(_UIDocumentPickerCell *)v3 contentView];
    v61 = [(_UIDocumentPickerCell *)v3 tagView];
    [v60 addSubview:v61];

    v62 = [(_UIDocumentPickerCell *)v3 contentView];
    v63 = [(_UIDocumentPickerCell *)v3 indentationHelperView];
    [v62 addSubview:v63];

    v64 = [(_UIDocumentPickerCell *)v3 subtitleJoiner];
    LODWORD(v65) = 1148846080;
    [v64 setContentCompressionResistancePriority:0 forAxis:v65];

    v66 = [(_UIDocumentPickerCell *)v3 subtitleLabel];
    LODWORD(v67) = 1144750080;
    [v66 setContentCompressionResistancePriority:0 forAxis:v67];

    v68 = [(_UIDocumentPickerCell *)v3 subtitle2Label];
    LODWORD(v69) = 1132068864;
    [v68 setContentCompressionResistancePriority:0 forAxis:v69];

    [(UICollectionViewTableCell *)v3 setIndentationWidth:25.0];
    v70 = [MEMORY[0x277CCAB98] defaultCenter];
    [v70 addObserver:v3 selector:sel__dynamicTypeSizeChanged_ name:*MEMORY[0x277D76810] object:0];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIDocumentPickerCell;
  [(_UIDocumentPickerCell *)&v4 traitCollectionDidChange:a3];
  [(_UIDocumentPickerCell *)self _updateIconSize];
}

- (void)_dynamicTypeSizeChanged:(id)a3
{
  v4 = MEMORY[0x277CCAAD0];
  v5 = [(_UIDocumentPickerCell *)self gridConstraints];
  [v4 deactivateConstraints:v5];

  v6 = MEMORY[0x277CCAAD0];
  v7 = [(_UIDocumentPickerCell *)self tableConstraints];
  [v6 deactivateConstraints:v7];

  v8 = MEMORY[0x277CCAAD0];
  v9 = [(_UIDocumentPickerCell *)self indentedConstraints];
  [v8 deactivateConstraints:v9];

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
  v3 = [(_UIDocumentPickerCell *)self progressView];
  [v3 setHidden:1];

  v4 = [(_UIDocumentPickerCell *)self titleLabel];
  [v4 setText:&stru_285690698];

  v5 = [(_UIDocumentPickerCell *)self subtitleLabel];
  [v5 setText:&stru_285690698];

  v6 = [(_UIDocumentPickerCell *)self subtitle2Label];
  [v6 setText:&stru_285690698];

  v7 = [(_UIDocumentPickerCell *)self thumbnailView];
  [v7 setImage:0];

  v8 = [(_UIDocumentPickerCell *)self tagView];
  [v8 setImage:0];

  [(_UIDocumentPickerCell *)self setCollectionView:0];
  [(_UIDocumentPickerCell *)self setItem:0];
}

- (void)willTransitionFromLayout:(id)a3 toLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_UIDocumentPickerCell *)self setTransitioningLayout:1];
  v8.receiver = self;
  v8.super_class = _UIDocumentPickerCell;
  [(UICollectionViewTableCell *)&v8 willTransitionFromLayout:v7 toLayout:v6];
}

- (void)didTransitionFromLayout:(id)a3 toLayout:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerCell;
  [(UICollectionViewTableCell *)&v5 didTransitionFromLayout:a3 toLayout:a4];
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
  v4 = [(_UIDocumentPickerCell *)self traitCollection];
  [v3 thumbnailSizeForTraits:v4 cellStyle:{-[_UIDocumentPickerCell cellStyle](self, "cellStyle")}];
  v6 = v5;
  v8 = v7;

  v9 = [(_UIDocumentPickerCell *)self thumbnailCenterHeightConstraint];
  [v9 setConstant:v8];

  v10 = [(_UIDocumentPickerCell *)self thumbnailCenterWidthConstraint];
  [v10 setConstant:v6];
}

- (void)_updateSelectionState:(BOOL)a3
{
  v3 = a3;
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
      if (v3)
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
    if (!v3)
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
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  v10 = [(UIImageView *)selectionView superview];
  v11 = [(_UIDocumentPickerCell *)self contentView];

  selectionView = self->_selectionView;
  if (v10 != v11)
  {
    [(UIImageView *)selectionView setAlpha:0.0];
    selectionView = self->_selectionView;
    v12 = 1;
    goto LABEL_18;
  }

LABEL_17:
  v12 = 0;
LABEL_18:
  v13 = [(UIImageView *)selectionView superview];
  v14 = [(_UIDocumentPickerCell *)self contentView];

  if (v13 != v14)
  {
    v15 = [(_UIDocumentPickerCell *)self contentView];
    [v15 addSubview:self->_selectionView];
  }

  if (!self->_selectionViewConstraints)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    selectionViewConstraints = self->_selectionViewConstraints;
    self->_selectionViewConstraints = v16;
  }

  if (self->_thumbnailView == self->_selectionViewsThumbnailView)
  {
    if (v13 == v14)
    {
      goto LABEL_26;
    }
  }

  else
  {
    [(NSMutableArray *)self->_selectionViewConstraints removeAllObjects];
    v18 = self->_selectionViewConstraints;
    v19 = [(UIImageView *)self->_selectionView bottomAnchor];
    v20 = [(UIImageView *)self->_thumbnailView bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:-3.0];
    [(NSMutableArray *)v18 addObject:v21];

    v22 = self->_selectionViewConstraints;
    v23 = [(UIImageView *)self->_selectionView centerXAnchor];
    v24 = [(UIImageView *)self->_thumbnailView centerXAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
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

  v26 = [(UICollectionViewTableCell *)self isSelected];
  v27 = MEMORY[0x277D755B8];
  if (v26)
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
  v30 = [(_UIDocumentPickerCell *)self traitCollection];
  v31 = [v27 imageNamed:@"DocumentSelectionCheckmarkUnchecked" inBundle:v29 compatibleWithTraitCollection:v30];
  [(UIImageView *)self->_selectionView setImage:v31];

  if (v6)
  {
    goto LABEL_35;
  }

LABEL_37:
  v32 = [(_UIDocumentPickerCell *)self cachedSelectedBackgroundView];

  if (!v32)
  {
    v33 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(_UIDocumentPickerCell *)self setCachedSelectedBackgroundView:v33];
  }

  v34 = [(_UIDocumentPickerCell *)self cachedSelectedBackgroundView];
  [(UICollectionViewTableCell *)self setSelectedBackgroundView:v34];
}

- (void)_updateFonts
{
  v3 = [(UICollectionViewTableCell *)self isInTableLayout];
  v10 = +[_UIDocumentPickerCellFontManager sharedFontManager];
  if (v3)
  {
    v4 = [v10 titleFontForTableLayout];
    [v10 subtitleFontForTableLayout];
  }

  else
  {
    v4 = [v10 titleFontForGridLayout];
    [v10 subtitleFontForGridLayout];
  }
  v5 = ;
  v6 = [(_UIDocumentPickerCell *)self titleLabel];
  [v6 setFont:v4];

  v7 = [(_UIDocumentPickerCell *)self subtitleLabel];
  [v7 setFont:v5];

  v8 = [(_UIDocumentPickerCell *)self subtitle2Label];
  [v8 setFont:v5];

  v9 = [(_UIDocumentPickerCell *)self subtitleJoiner];
  [v9 setFont:v5];
}

- (void)_updateAccessoryType
{
  if ([(UICollectionViewTableCell *)self isEditing]|| [(_UIDocumentPickerCell *)self cellStyle]== 3)
  {
    goto LABEL_3;
  }

  v4 = [(_UIDocumentPickerCell *)self item];
  if ([v4 type] == 2)
  {

LABEL_10:
    v3 = 1;
    goto LABEL_4;
  }

  v5 = [(_UIDocumentPickerCell *)self item];
  v6 = [v5 type];

  if (v6 == 1)
  {
    goto LABEL_10;
  }

  v7 = [(_UIDocumentPickerCell *)self collectionView];
  if (([v7 supportsActions] & 1) == 0)
  {

    goto LABEL_3;
  }

  v8 = [(_UIDocumentPickerCell *)self collectionView];
  v9 = [v8 serviceViewController];
  v10 = [v9 shouldShowAction:2];

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
  v3 = [(UICollectionViewTableCell *)self isEditing];
  v4 = 24.0;
  if (v3)
  {
    v4 = 60.0;
  }

  [(UICollectionViewTableCell *)self setSeparatorInset:0.0, v4, 0.0, 0.0];
}

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  if ([(UICollectionViewTableCell *)self isEditing]!= a3)
  {
    v5.receiver = self;
    v5.super_class = _UIDocumentPickerCell;
    [(UICollectionViewTableCell *)&v5 setEditing:v3];
    [(_UIDocumentPickerCell *)self updateForEditingState:1];
  }
}

- (void)_updateConstraintsForCellStyle
{
  v267[2] = *MEMORY[0x277D85DE8];
  v3 = +[_UIDocumentPickerCellFontManager sharedFontManager];
  if ([(_UIDocumentPickerCell *)self cellStyle]== 2)
  {
    v4 = [(_UIDocumentPickerCell *)self tableConstraints];

    if (!v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:19];
      v264 = [v3 titleFontForTableLayout];
      v265 = [v3 subtitleFontForTableLayout];
      v6 = [(_UIDocumentPickerCell *)self thumbnailView];
      v7 = [v6 heightAnchor];
      v8 = [v7 constraintEqualToConstant:44.0];
      [v5 addObject:v8];

      v9 = [(_UIDocumentPickerCell *)self thumbnailView];
      v10 = [v9 widthAnchor];
      v11 = [v10 constraintEqualToConstant:44.0];
      [v5 addObject:v11];

      v12 = [(_UIDocumentPickerCell *)self thumbnailView];
      v13 = [v12 centerYAnchor];
      v14 = [(_UIDocumentPickerCell *)self contentView];
      v15 = [v14 centerYAnchor];
      v16 = [v13 constraintEqualToAnchor:v15];
      [v5 addObject:v16];

      v17 = [(_UIDocumentPickerCell *)self thumbnailView];
      v18 = [v17 leadingAnchor];
      v19 = [(_UIDocumentPickerCell *)self contentView];
      v20 = [v19 leadingAnchor];
      v21 = [v18 constraintEqualToAnchor:v20 constant:24.0];
      [v5 addObject:v21];

      v22 = [(_UIDocumentPickerCell *)self thumbnailView];
      v23 = [v22 widthAnchor];
      v24 = [v23 constraintEqualToConstant:0.0];

      v266 = v24;
      LODWORD(v25) = 1111752704;
      [v24 setPriority:v25];
      [v5 addObject:v24];
      v26 = [(_UIDocumentPickerCell *)self tagView];
      v27 = [v26 widthAnchor];
      v28 = [v27 constraintEqualToConstant:0.0];

      LODWORD(v29) = 1111752704;
      [v28 setPriority:v29];
      [v5 addObject:v28];
      v30 = [(_UIDocumentPickerCell *)self tagView];
      v31 = [v30 leadingAnchor];
      v32 = [(_UIDocumentPickerCell *)self contentView];
      v33 = [v32 leadingAnchor];
      v34 = [v31 constraintEqualToAnchor:v33 constant:80.0];
      [v5 addObject:v34];

      v35 = [(_UIDocumentPickerCell *)self titleLabel];
      v36 = [v35 leadingAnchor];
      v37 = [(_UIDocumentPickerCell *)self tagView];
      v38 = [v37 trailingAnchor];
      v39 = [v36 constraintEqualToAnchor:v38];
      [v5 addObject:v39];

      v40 = [(_UIDocumentPickerCell *)self subtitleLabel];
      v41 = [v40 leadingAnchor];
      v42 = [(_UIDocumentPickerCell *)self contentView];
      v43 = [v42 leadingAnchor];
      v44 = [v41 constraintEqualToAnchor:v43 constant:80.0];
      [v5 addObject:v44];

      v45 = [(_UIDocumentPickerCell *)self subtitleJoiner];
      v46 = [v45 leadingAnchor];
      v47 = [(_UIDocumentPickerCell *)self subtitleLabel];
      v48 = [v47 trailingAnchor];
      v49 = [v46 constraintEqualToAnchor:v48 constant:5.0];
      [v5 addObject:v49];

      v50 = [(_UIDocumentPickerCell *)self subtitle2Label];
      v51 = [v50 leadingAnchor];
      v52 = [(_UIDocumentPickerCell *)self subtitleJoiner];
      v53 = [v52 trailingAnchor];
      v54 = [v51 constraintEqualToAnchor:v53 constant:5.0];
      [v5 addObject:v54];

      v55 = [(_UIDocumentPickerCell *)self titleLabel];
      v56 = [v55 lastBaselineAnchor];
      v57 = [(_UIDocumentPickerCell *)self contentView];
      v58 = [v57 topAnchor];
      [v264 _scaledValueForValue:28.0];
      v59 = [v56 constraintEqualToAnchor:v58 constant:?];
      [v5 addObject:v59];

      v60 = [(_UIDocumentPickerCell *)self tagView];
      v61 = [v60 lastBaselineAnchor];
      v62 = [(_UIDocumentPickerCell *)self titleLabel];
      v63 = [v62 lastBaselineAnchor];
      v64 = [v61 constraintEqualToAnchor:v63];
      [v5 addObject:v64];

      v65 = [(_UIDocumentPickerCell *)self subtitleLabel];
      v66 = [v65 lastBaselineAnchor];
      v67 = [(_UIDocumentPickerCell *)self titleLabel];
      v68 = [v67 lastBaselineAnchor];
      [v265 _scaledValueForValue:20.0];
      v69 = [v66 constraintEqualToAnchor:v68 constant:?];
      [v5 addObject:v69];

      v70 = [(_UIDocumentPickerCell *)self subtitle2Label];
      v71 = [v70 lastBaselineAnchor];
      v72 = [(_UIDocumentPickerCell *)self subtitleLabel];
      v73 = [v72 lastBaselineAnchor];
      v74 = [v71 constraintEqualToAnchor:v73];
      [v5 addObject:v74];

      v75 = [(_UIDocumentPickerCell *)self subtitleJoiner];
      v76 = [v75 lastBaselineAnchor];
      v77 = [(_UIDocumentPickerCell *)self subtitleLabel];
      v78 = [v77 lastBaselineAnchor];
      v79 = [v76 constraintEqualToAnchor:v78];
      [v5 addObject:v79];

      v80 = [(_UIDocumentPickerCell *)self contentView];
      v81 = [v80 bottomAnchor];
      v82 = [(UILabel *)self->_subtitleLabel lastBaselineAnchor];
      [v264 _scaledValueForValue:16.0];
      v83 = [v81 constraintEqualToAnchor:v82 constant:?];
      [v5 addObject:v83];

      v84 = [(_UIDocumentPickerCell *)self titleLabel];
      v85 = [v84 trailingAnchor];
      v86 = [(_UIDocumentPickerCell *)self contentView];
      v87 = [v86 trailingAnchor];
      v88 = [v85 constraintLessThanOrEqualToAnchor:v87];
      [v5 addObject:v88];

      v89 = [(_UIDocumentPickerCell *)self subtitle2Label];
      v90 = [v89 trailingAnchor];
      v91 = [(_UIDocumentPickerCell *)self contentView];
      v92 = [v91 trailingAnchor];
      v93 = [v90 constraintLessThanOrEqualToAnchor:v92];
      [v5 addObject:v93];

      [(_UIDocumentPickerCell *)self setTableConstraints:v5];
    }

    v94 = [(_UIDocumentPickerCell *)self tableConstraints];
  }

  else if ([(_UIDocumentPickerCell *)self cellStyle]== 3)
  {
    v95 = [(_UIDocumentPickerCell *)self indentedConstraints];

    if (!v95)
    {
      v96 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:13];
      v97 = [v3 titleFontForTableLayout];
      v98 = [(_UIDocumentPickerCell *)self thumbnailView];
      v99 = [v98 heightAnchor];
      v100 = [v99 constraintEqualToConstant:20.0];
      [v96 addObject:v100];

      v101 = [(_UIDocumentPickerCell *)self thumbnailView];
      v102 = [v101 widthAnchor];
      v103 = [v102 constraintEqualToConstant:20.0];
      [v96 addObject:v103];

      v104 = [(_UIDocumentPickerCell *)self thumbnailView];
      v105 = [v104 centerYAnchor];
      v106 = [(_UIDocumentPickerCell *)self contentView];
      v107 = [v106 centerYAnchor];
      v108 = [v105 constraintEqualToAnchor:v107];
      [v96 addObject:v108];

      v109 = [(_UIDocumentPickerCell *)self thumbnailView];
      v110 = [v109 leadingAnchor];
      v111 = [(_UIDocumentPickerCell *)self indentationHelperView];
      v112 = [v111 trailingAnchor];
      v113 = [v110 constraintEqualToAnchor:v112 constant:15.0];
      [v96 addObject:v113];

      v114 = [(_UIDocumentPickerCell *)self indentationHelperView];
      v115 = [v114 leadingAnchor];
      v116 = [(_UIDocumentPickerCell *)self contentView];
      v117 = [v116 leadingAnchor];
      v118 = [v115 constraintEqualToAnchor:v117];
      [v96 addObject:v118];

      v119 = [(_UIDocumentPickerCell *)self indentationHelperView];
      v120 = [v119 widthAnchor];
      v121 = [v120 constraintEqualToConstant:0.0];
      [(_UIDocumentPickerCell *)self setIndentationConstraint:v121];

      v122 = [(_UIDocumentPickerCell *)self indentationConstraint];
      [v96 addObject:v122];

      v123 = [(_UIDocumentPickerCell *)self tagView];
      v124 = [v123 lastBaselineAnchor];
      v125 = [(_UIDocumentPickerCell *)self titleLabel];
      v126 = [v125 lastBaselineAnchor];
      v127 = [v124 constraintEqualToAnchor:v126];
      [v96 addObject:v127];

      v128 = [(_UIDocumentPickerCell *)self tagView];
      v129 = [v128 leadingAnchor];
      v130 = [(_UIDocumentPickerCell *)self thumbnailView];
      v131 = [v130 trailingAnchor];
      v132 = [v129 constraintEqualToAnchor:v131 constant:15.0];
      [v96 addObject:v132];

      v133 = [(_UIDocumentPickerCell *)self titleLabel];
      v134 = [v133 leadingAnchor];
      v135 = [(_UIDocumentPickerCell *)self tagView];
      v136 = [v135 trailingAnchor];
      v137 = [v134 constraintEqualToAnchor:v136];
      [v96 addObject:v137];

      v138 = [(_UIDocumentPickerCell *)self titleLabel];
      v139 = [v138 trailingAnchor];
      v140 = [(_UIDocumentPickerCell *)self contentView];
      v141 = [v140 trailingAnchor];
      v142 = [v139 constraintLessThanOrEqualToAnchor:v141];
      [v96 addObject:v142];

      v143 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
      v144 = [(_UIDocumentPickerCell *)self contentView];
      v145 = [v144 topAnchor];
      [v97 _scaledValueForValue:28.0];
      v146 = [v143 constraintEqualToAnchor:v145 constant:?];
      [v96 addObject:v146];

      v147 = [(_UIDocumentPickerCell *)self contentView];
      v148 = [v147 bottomAnchor];
      v149 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
      [v97 _scaledValueForValue:16.0];
      v150 = [v148 constraintEqualToAnchor:v149 constant:?];
      [v96 addObject:v150];

      [(_UIDocumentPickerCell *)self setIndentedConstraints:v96];
    }

    v94 = [(_UIDocumentPickerCell *)self indentedConstraints];
  }

  else
  {
    v151 = [(_UIDocumentPickerCell *)self gridConstraints];

    if (!v151)
    {
      v152 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:20];
      v153 = [(_UIDocumentPickerCell *)self titleLabel];
      v154 = [v153 lastBaselineAnchor];
      v155 = [(_UIDocumentPickerCell *)self thumbnailView];
      v156 = [v155 bottomAnchor];
      v157 = [(_UIDocumentPickerCell *)self titleLabel];
      v158 = [v157 font];
      [v158 _scaledValueForValue:16.0];
      v159 = [v154 constraintEqualToAnchor:v156 constant:?];
      [v152 addObject:v159];

      v160 = [(_UIDocumentPickerCell *)self subtitleLabel];
      v161 = [v160 lastBaselineAnchor];
      v162 = [(_UIDocumentPickerCell *)self titleLabel];
      v163 = [v162 lastBaselineAnchor];
      v164 = [(_UIDocumentPickerCell *)self subtitleLabel];
      v165 = [v164 font];
      [v165 _scaledValueForValue:16.0];
      v166 = [v161 constraintEqualToAnchor:v163 constant:?];
      [v152 addObject:v166];

      v167 = [(_UIDocumentPickerCell *)self subtitle2Label];
      v168 = [v167 lastBaselineAnchor];
      v169 = [(_UIDocumentPickerCell *)self subtitleLabel];
      v170 = [v169 lastBaselineAnchor];
      v171 = [(_UIDocumentPickerCell *)self subtitleLabel];
      v172 = [v171 font];
      [v172 _scaledValueForValue:16.0];
      v173 = [v168 constraintEqualToAnchor:v170 constant:?];
      [v152 addObject:v173];

      v174 = [(_UIDocumentPickerCell *)self subtitleJoiner];
      v175 = [v174 leadingAnchor];
      v176 = [(_UIDocumentPickerCell *)self subtitleLabel];
      v177 = [v176 trailingAnchor];
      v178 = [v175 constraintEqualToAnchor:v177 constant:5.0];
      [v152 addObject:v178];

      v179 = [(_UIDocumentPickerCell *)self subtitleJoiner];
      v180 = [v179 lastBaselineAnchor];
      v181 = [(_UIDocumentPickerCell *)self subtitleLabel];
      v182 = [v181 lastBaselineAnchor];
      v183 = [v180 constraintEqualToAnchor:v182];
      [v152 addObject:v183];

      v184 = [(_UIDocumentPickerCell *)self tagView];
      v185 = [v184 lastBaselineAnchor];
      v186 = [(_UIDocumentPickerCell *)self titleLabel];
      v187 = [v186 lastBaselineAnchor];
      v188 = [v185 constraintEqualToAnchor:v187];
      [v152 addObject:v188];

      v189 = [(_UIDocumentPickerCell *)self tagView];
      v190 = [v189 trailingAnchor];
      v191 = [(_UIDocumentPickerCell *)self titleLabel];
      v192 = [v191 leadingAnchor];
      v193 = [v190 constraintEqualToAnchor:v192];
      [v152 addObject:v193];

      v194 = [(_UIDocumentPickerCell *)self tagView];
      v195 = [v194 leadingAnchor];
      v196 = [(_UIDocumentPickerCell *)self contentView];
      v197 = [v196 leadingAnchor];
      v198 = [v195 constraintGreaterThanOrEqualToAnchor:v197 constant:5.0];
      [v152 addObject:v198];

      v199 = [(_UIDocumentPickerCell *)self titleLabel];
      v200 = [v199 centerXAnchor];
      v201 = [(_UIDocumentPickerCell *)self contentView];
      v202 = [v201 centerXAnchor];
      v203 = [v200 constraintEqualToAnchor:v202];

      LODWORD(v204) = 1144750080;
      [v203 setPriority:v204];
      [v152 addObject:v203];
      v205 = [(_UIDocumentPickerCell *)self titleLabel];
      v206 = [v205 trailingAnchor];
      v207 = [(_UIDocumentPickerCell *)self contentView];
      v208 = [v207 trailingAnchor];
      v209 = [v206 constraintLessThanOrEqualToAnchor:v208 constant:-5.0];
      [v152 addObject:v209];

      v210 = [(_UIDocumentPickerCell *)self subtitleLabel];
      v211 = [v210 centerXAnchor];
      v212 = [(_UIDocumentPickerCell *)self contentView];
      v213 = [v212 centerXAnchor];
      v214 = [v211 constraintEqualToAnchor:v213];
      [v152 addObject:v214];

      v215 = [(_UIDocumentPickerCell *)self subtitleLabel];
      v216 = [v215 leadingAnchor];
      v217 = [(_UIDocumentPickerCell *)self contentView];
      v218 = [v217 leadingAnchor];
      v219 = [v216 constraintGreaterThanOrEqualToAnchor:v218 constant:5.0];
      [v152 addObject:v219];

      v220 = [(_UIDocumentPickerCell *)self subtitleLabel];
      v221 = [v220 trailingAnchor];
      v222 = [(_UIDocumentPickerCell *)self contentView];
      v223 = [v222 trailingAnchor];
      v224 = [v221 constraintLessThanOrEqualToAnchor:v223 constant:-5.0];
      [v152 addObject:v224];

      v225 = [(_UIDocumentPickerCell *)self subtitle2Label];
      v226 = [v225 centerXAnchor];
      v227 = [(_UIDocumentPickerCell *)self contentView];
      v228 = [v227 centerXAnchor];
      v229 = [v226 constraintEqualToAnchor:v228];
      [v152 addObject:v229];

      v230 = [(_UIDocumentPickerCell *)self subtitle2Label];
      v231 = [v230 leadingAnchor];
      v232 = [(_UIDocumentPickerCell *)self contentView];
      v233 = [v232 leadingAnchor];
      v234 = [v231 constraintGreaterThanOrEqualToAnchor:v233 constant:5.0];
      [v152 addObject:v234];

      v235 = [(_UIDocumentPickerCell *)self subtitle2Label];
      v236 = [v235 trailingAnchor];
      v237 = [(_UIDocumentPickerCell *)self contentView];
      v238 = [v237 trailingAnchor];
      v239 = [v236 constraintLessThanOrEqualToAnchor:v238 constant:-5.0];
      [v152 addObject:v239];

      v240 = [(_UIDocumentPickerCell *)self thumbnailView];
      v241 = [v240 heightAnchor];
      v242 = [v241 constraintEqualToConstant:0.0];
      [(_UIDocumentPickerCell *)self setThumbnailCenterHeightConstraint:v242];

      v243 = [(_UIDocumentPickerCell *)self thumbnailView];
      v244 = [v243 widthAnchor];
      v245 = [v244 constraintEqualToConstant:0.0];
      [(_UIDocumentPickerCell *)self setThumbnailCenterWidthConstraint:v245];

      v246 = [(_UIDocumentPickerCell *)self thumbnailCenterHeightConstraint];
      v267[0] = v246;
      v247 = [(_UIDocumentPickerCell *)self thumbnailCenterWidthConstraint];
      v267[1] = v247;
      v248 = [MEMORY[0x277CBEA60] arrayWithObjects:v267 count:2];
      [v152 addObjectsFromArray:v248];

      v249 = [(_UIDocumentPickerCell *)self thumbnailView];
      v250 = [v249 centerXAnchor];
      v251 = [(_UIDocumentPickerCell *)self contentView];
      v252 = [v251 centerXAnchor];
      v253 = [v250 constraintEqualToAnchor:v252];
      [v152 addObject:v253];

      v254 = [(_UIDocumentPickerCell *)self thumbnailView];
      v255 = [v254 topAnchor];
      v256 = [(_UIDocumentPickerCell *)self contentView];
      v257 = [v256 topAnchor];
      v258 = [v255 constraintEqualToAnchor:v257];
      [v152 addObject:v258];

      [(_UIDocumentPickerCell *)self setGridConstraints:v152];
    }

    [(_UIDocumentPickerCell *)self _updateIconSize];
    v94 = [(_UIDocumentPickerCell *)self gridConstraints];
  }

  v259 = v94;
  v260 = [(_UIDocumentPickerCell *)self activeConstraints];

  if (v259 != v260)
  {
    v261 = [(_UIDocumentPickerCell *)self activeConstraints];

    if (v261)
    {
      v262 = MEMORY[0x277CCAAD0];
      v263 = [(_UIDocumentPickerCell *)self activeConstraints];
      [v262 deactivateConstraints:v263];
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v259];
    [(_UIDocumentPickerCell *)self setActiveConstraints:v259];
  }
}

- (void)updateForEditingState:(BOOL)a3
{
  v3 = a3;
  [(_UIDocumentPickerCell *)self _updateSelectionState:?];
  [(_UIDocumentPickerCell *)self _updateAccessoryType];
  [(_UIDocumentPickerCell *)self updateActionGestureRecognizer];
  if (v3)
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

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _UIDocumentPickerCell;
  [(UICollectionViewTableCell *)&v20 applyLayoutAttributes:v4];
  v5 = [(UICollectionViewTableCell *)self currentLayout];
  v6 = [v5 cellStyle];

  if (v6 != [(_UIDocumentPickerCell *)self cellStyle])
  {
    [(_UIDocumentPickerCell *)self setCellStyle:v6];
    [(_UIDocumentPickerCell *)self _udpateLabelAlpha];
    [(_UIDocumentPickerCell *)self _updateConstraintsForCellStyle];
    [(_UIDocumentPickerCell *)self _updateSelectionState:1];
    [(_UIDocumentPickerCell *)self _updateFonts];
  }

  v7 = [(UICollectionViewTableCell *)self indentationLevel];
  [(UICollectionViewTableCell *)self indentationWidth];
  v9 = v8 * v7;
  [v4 size];
  v11 = v10 * 0.5;
  if (v9 > v10 * 0.5)
  {
    [(UICollectionViewTableCell *)self indentationWidth];
    v13 = v11 / v12;
    v14 = floor(v13);
    v15 = [(UICollectionViewTableCell *)self indentationLevel]- vcvtmd_u64_f64(v13);
    [(UICollectionViewTableCell *)self indentationWidth];
    v17 = v15 * 5.0 + v14 * v16;
    [v4 size];
    v9 = fmin(v17, v18 * 0.8);
  }

  v19 = [(_UIDocumentPickerCell *)self indentationConstraint];
  [v19 setConstant:v9];

  if ([(_UIDocumentPickerCell *)self isTransitioningLayout])
  {
    [(_UIDocumentPickerCell *)self layoutIfNeeded];
  }
}

- (void)_udpateLabelAlpha
{
  v3 = [(_UIDocumentPickerCell *)self item];
  v4 = 0.5;
  if ([v3 pickable])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.5;
  }

  v6 = [(_UIDocumentPickerCell *)self titleLabel];
  [v6 setAlpha:v5];

  if ([(_UIDocumentPickerCell *)self cellStyle]== 3)
  {
    v7 = [(_UIDocumentPickerCell *)self subtitleLabel];
    v8 = 0.0;
    [v7 setAlpha:0.0];
LABEL_13:

    goto LABEL_14;
  }

  v9 = [(_UIDocumentPickerCell *)self item];
  if ([v9 pickable])
  {
    v4 = 1.0;
  }

  v10 = [(_UIDocumentPickerCell *)self subtitleLabel];
  [v10 setAlpha:v4];

  v8 = 0.0;
  if ([(_UIDocumentPickerCell *)self cellStyle]== 2)
  {
    v7 = [(_UIDocumentPickerCell *)self subtitle2Label];
    v11 = [v7 text];
    if ([v11 length])
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
  v12 = [(_UIDocumentPickerCell *)self subtitle2Label];
  [v12 setAlpha:v8];

  v13 = [(_UIDocumentPickerCell *)self subtitleJoiner];
  [v13 setAlpha:v8];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(UICollectionViewTableCell *)self isSelected]!= a3)
  {
    v5.receiver = self;
    v5.super_class = _UIDocumentPickerCell;
    [(UICollectionViewTableCell *)&v5 setSelected:v3];
    [(_UIDocumentPickerCell *)self _updateSelectionState:0];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(UICollectionViewTableCell *)self isHighlighted]!= a3)
  {
    if (v3)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }

    v6 = [(_UIDocumentPickerCell *)self thumbnailView];
    [v6 setDrawMode:v5];

    v7.receiver = self;
    v7.super_class = _UIDocumentPickerCell;
    [(UICollectionViewTableCell *)&v7 setHighlighted:v3];
  }
}

- (void)setItem:(id)a3
{
  v5 = a3;
  item = self->_item;
  if (item != v5)
  {
    v8 = v5;
    [(_UIDocumentPickerContainerItem *)item decrementModelDisplayCount];
    objc_storeStrong(&self->_item, a3);
    [(_UIDocumentPickerContainerItem *)self->_item incrementModelDisplayCount];
    availableActions = self->_availableActions;
    self->_availableActions = 0;

    [(_UIDocumentPickerCell *)self reloadItem:0];
    [(_UIDocumentPickerCell *)self updateActionGestureRecognizer];
    item = [(_UIDocumentPickerCell *)self _udpateLabelAlpha];
    v5 = v8;
  }

  MEMORY[0x2821F96F8](item, v5);
}

- (void)setCollectionView:(id)a3
{
  obj = a3;
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
  v3 = [(_UIDocumentPickerCell *)self collectionView];
  v4 = [v3 serviceViewController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_7;
  }

  v5 = [(_UIDocumentPickerCell *)self collectionView];
  v6 = [v5 serviceViewController];
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
    v22 = self;
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

- (void)_deleteAction:(id)a3
{
  v7 = [(_UIDocumentPickerCell *)self collectionView];
  v4 = [v7 serviceViewController];
  v5 = [(_UIDocumentPickerCell *)self item];
  v6 = [(_UIDocumentPickerCell *)self thumbnailView];
  [v4 performAction:0 item:v5 view:v6 completion:&__block_literal_global];
}

- (void)_infoAction:(id)a3
{
  v7 = [(_UIDocumentPickerCell *)self collectionView];
  v4 = [v7 serviceViewController];
  v5 = [(_UIDocumentPickerCell *)self item];
  v6 = [(_UIDocumentPickerCell *)self thumbnailView];
  [v4 performAction:2 item:v5 view:v6 completion:&__block_literal_global_101];
}

- (void)_moreAction:(id)a3
{
  v7 = [(_UIDocumentPickerCell *)self collectionView];
  v4 = [v7 serviceViewController];
  v5 = [(_UIDocumentPickerCell *)self item];
  v6 = [(_UIDocumentPickerCell *)self thumbnailView];
  [v4 performAction:1 item:v5 view:v6 completion:&__block_literal_global_103];
}

- (void)_renameAction:(id)a3
{
  v7 = [(_UIDocumentPickerCell *)self collectionView];
  v4 = [v7 serviceViewController];
  v5 = [(_UIDocumentPickerCell *)self item];
  v6 = [(_UIDocumentPickerCell *)self thumbnailView];
  [v4 performAction:3 item:v5 view:v6 completion:&__block_literal_global_105];
}

- (void)_activityAction:(id)a3
{
  v7 = [(_UIDocumentPickerCell *)self collectionView];
  v4 = [v7 serviceViewController];
  v5 = [(_UIDocumentPickerCell *)self item];
  v6 = [(_UIDocumentPickerCell *)self thumbnailView];
  [v4 performAction:4 item:v5 view:v6 completion:&__block_literal_global_107];
}

- (void)_moveAction:(id)a3
{
  v7 = [(_UIDocumentPickerCell *)self collectionView];
  v4 = [v7 serviceViewController];
  v5 = [(_UIDocumentPickerCell *)self item];
  v6 = [(_UIDocumentPickerCell *)self thumbnailView];
  [v4 performAction:5 item:v5 view:v6 completion:&__block_literal_global_109];
}

- (void)updateActionGestureRecognizer
{
  v3 = [(_UIDocumentPickerCell *)self actionGestureRecognizer];

  if (v3)
  {
    v4 = [(_UIDocumentPickerCell *)self actionGestureRecognizer];
    [(_UIDocumentPickerCell *)self removeGestureRecognizer:v4];
  }

  if (![(UICollectionViewTableCell *)self isEditing])
  {
    v5 = [(_UIDocumentPickerCell *)self availableActions];

    if (v5)
    {
      v6 = [(_UIDocumentPickerCell *)self actionGestureRecognizer];

      if (!v6)
      {
        v7 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__showActions_];
        [(_UIDocumentPickerCell *)self setActionGestureRecognizer:v7];
      }

      v8 = [(_UIDocumentPickerCell *)self actionGestureRecognizer];
      [(_UIDocumentPickerCell *)self addGestureRecognizer:v8];
    }
  }

  v9 = [(_UIDocumentPickerCell *)self actionGestureRecognizer];

  v10 = [(_UIDocumentPickerCell *)self pickableDiagnosticGestureRecognizer];
  if (v9)
  {
    [(_UIDocumentPickerCell *)self removeGestureRecognizer:v10];
  }

  else
  {
    [(_UIDocumentPickerCell *)self addGestureRecognizer:v10];
  }
}

- (void)_showActions:(id)a3
{
  if ([a3 state] == 1)
  {
    [(_UIDocumentPickerCell *)self becomeFirstResponder];
    v4 = [MEMORY[0x277D75718] sharedMenuController];
    v5 = [(_UIDocumentPickerCell *)self availableActions];
    [v4 setMenuItems:v5];

    v6 = [MEMORY[0x277D75718] sharedMenuController];
    [(_UIDocumentPickerCell *)self bounds];
    [v6 setTargetRect:self inView:?];

    v7 = [MEMORY[0x277D75718] sharedMenuController];
    LOBYTE(v6) = [v7 isMenuVisible];

    if ((v6 & 1) == 0)
    {
      v8 = [MEMORY[0x277D75718] sharedMenuController];
      [v8 setMenuVisible:1 animated:1];
    }
  }
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v11 = sel__deleteAction_ == a3 || sel__moreAction_ == a3 || sel__renameAction_ == a3 || sel__activityAction_ == a3 || sel__moveAction_ == a3 || sel__infoAction_ == a3;
  if (v11 || sel__showPickableDiagnostic == a3 && CPIsInternalDevice() && (-[_UIDocumentPickerCell item](self, "item"), v14 = objc_claimAutoreleasedReturnValue(), [v14 pickabilityReason], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_UIDocumentPickerDocumentCollectionViewController)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end