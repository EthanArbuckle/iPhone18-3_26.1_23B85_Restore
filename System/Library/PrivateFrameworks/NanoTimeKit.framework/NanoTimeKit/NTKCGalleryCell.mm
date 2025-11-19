@interface NTKCGalleryCell
+ (double)estimatedRowHeight;
+ (id)reuseIdentifier;
- (CGPoint)_contentInsetPoint;
- (CGPoint)contentOffset;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (NTKCGalleryCell)init;
- (NTKCGalleryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NTKCGalleryCellDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)containerViewForFace:(id)a3;
- (id)faceForLocation:(CGPoint)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_configureViews;
- (void)_fontSizeDidChange;
- (void)_resetSnapshotRequests;
- (void)clearSelectedFaces;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)selectFace:(id)a3;
- (void)setAllSnapshotsLoaded:(BOOL)a3;
- (void)setCollection:(id)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)updateFaceAtIndex:(unint64_t)a3;
@end

@implementation NTKCGalleryCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (double)estimatedRowHeight
{
  v2 = [MEMORY[0x277D756E0] prominentInsetGroupedHeaderConfiguration];
  v3 = [v2 textProperties];
  v4 = [v3 font];
  [v4 lineHeight];
  v6 = v5 + 9.0;

  [NTKCFaceContainerView sizeForFaceSize:1 style:FaceSize()];
  return v6 + 11.0 + v7 + 25.0;
}

- (NTKCGalleryCell)init
{
  v3 = [objc_opt_class() reuseIdentifier];
  v4 = [(NTKCGalleryCell *)self initWithStyle:0 reuseIdentifier:v3];

  return v4;
}

- (NTKCGalleryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v73[3] = *MEMORY[0x277D85DE8];
  v71.receiver = self;
  v71.super_class = NTKCGalleryCell;
  v4 = [(NTKCGalleryCell *)&v71 initWithStyle:0 reuseIdentifier:a4];
  if (v4)
  {
    v5 = BPSBackgroundColor();
    [(NTKCGalleryCell *)v4 setBackgroundColor:v5];

    v6 = NTKCScreenEdgeMargin();
    v7 = objc_opt_new();
    v8 = BPSTextColor();
    [v7 setTextColor:v8];

    [v7 setNumberOfLines:0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v9) = 1053609165;
    [v7 _setHyphenationFactor:v9];
    [v7 setLineBreakMode:0];
    [(NTKCGalleryCell *)v4 setTitle:v7];

    v10 = objc_opt_new();
    [(NTKCGalleryCell *)v4 setTitleStack:v10];

    [(UIStackView *)v4->_titleStack setLayoutMargins:0.0, v6, 0.0, v6];
    [(UIStackView *)v4->_titleStack setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)v4->_titleStack addArrangedSubview:v4->_title];
    v11 = objc_opt_new();
    v12 = BPSTextColor();
    [v11 setTextColor:v12];

    [v11 setNumberOfLines:0];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v13) = 1053609165;
    [v11 _setHyphenationFactor:v13];
    [v11 setLineBreakMode:0];
    [(NTKCGalleryCell *)v4 setFooter:v11];

    v14 = objc_opt_new();
    [(NTKCGalleryCell *)v4 setFooterStack:v14];

    [(UIStackView *)v4->_footerStack setLayoutMargins:0.0, v6, 0.0, v6];
    [(UIStackView *)v4->_footerStack setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)v4->_footerStack addArrangedSubview:v4->_footer];
    v15 = objc_opt_new();
    [(NTKCGalleryCell *)v4 setLayout:v15];

    [(UICollectionViewFlowLayout *)v4->_layout _setWantsRightToLeftHorizontalMirroringIfNeeded:1];
    [(UICollectionViewFlowLayout *)v4->_layout setScrollDirection:1];
    v16 = NTKCScreenStyle();
    v17 = 15.0;
    if (v16 == -1)
    {
      v17 = 11.0;
    }

    [(UICollectionViewFlowLayout *)v4->_layout setMinimumLineSpacing:v17];
    v18 = objc_alloc(MEMORY[0x277D752A0]);
    v19 = [v18 initWithFrame:v4->_layout collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(NTKCGalleryCell *)v4 setCollectionView:v19];

    v20 = [(NTKCGalleryCell *)v4 collectionView];
    v21 = [v20 layer];
    [v21 setAllowsGroupOpacity:0];

    collectionView = v4->_collectionView;
    v23 = objc_opt_class();
    v24 = +[_NTKCGalleryCollectionCell classicReuseIdentifier];
    [(UICollectionView *)collectionView registerClass:v23 forCellWithReuseIdentifier:v24];

    v25 = v4->_collectionView;
    v26 = objc_opt_class();
    v27 = +[_NTKCGalleryCollectionCell luxoReuseIdentifier];
    [(UICollectionView *)v25 registerClass:v26 forCellWithReuseIdentifier:v27];

    v28 = v4->_collectionView;
    v29 = objc_opt_class();
    v30 = +[_NTKCGalleryCollectionCell aloeReuseIdentifier];
    [(UICollectionView *)v28 registerClass:v29 forCellWithReuseIdentifier:v30];

    v31 = v4->_collectionView;
    v32 = objc_opt_class();
    v33 = +[_NTKCGalleryCollectionCell agaveReuseIdentifier];
    [(UICollectionView *)v31 registerClass:v32 forCellWithReuseIdentifier:v33];

    v34 = v4->_collectionView;
    v35 = objc_opt_class();
    v36 = +[_NTKCGalleryCollectionCell avoniaReuseIdentifier];
    [(UICollectionView *)v34 registerClass:v35 forCellWithReuseIdentifier:v36];

    v37 = v4->_collectionView;
    v38 = objc_opt_class();
    v39 = +[_NTKCGalleryCollectionCell begoniaReuseIdentifier];
    [(UICollectionView *)v37 registerClass:v38 forCellWithReuseIdentifier:v39];

    v40 = v4->_collectionView;
    v41 = objc_opt_class();
    v42 = *MEMORY[0x277D767D0];
    v43 = +[_NTKCGalleryCollectionFooter reuseIdentifier];
    [(UICollectionView *)v40 registerClass:v41 forSupplementaryViewOfKind:v42 withReuseIdentifier:v43];

    [(UICollectionView *)v4->_collectionView setContentInset:0.0, v6, 0.0, v6];
    [(UICollectionView *)v4->_collectionView setBackgroundColor:0];
    [(UICollectionView *)v4->_collectionView setAlwaysBounceHorizontal:1];
    [(UICollectionView *)v4->_collectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)v4->_collectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)v4->_collectionView setDelegate:v4];
    [(UICollectionView *)v4->_collectionView setDataSource:v4];
    [(UICollectionView *)v4->_collectionView setClipsToBounds:0];
    v4->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v44 = objc_alloc(MEMORY[0x277D75A68]);
    v73[0] = v4->_titleStack;
    v73[1] = v4->_collectionView;
    v73[2] = v4->_footerStack;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
    v46 = [v44 initWithArrangedSubviews:v45];
    [(NTKCGalleryCell *)v4 setContentStack:v46];

    [(UIStackView *)v4->_contentStack setAxis:1];
    [(UIStackView *)v4->_contentStack setCustomSpacing:v4->_titleStack afterView:11.0];
    [(UIStackView *)v4->_contentStack setCustomSpacing:v4->_collectionView afterView:15.0];
    [(UIStackView *)v4->_contentStack setTranslatesAutoresizingMaskIntoConstraints:0];
    v47 = [(NTKCGalleryCell *)v4 contentView];
    [v47 addSubview:v4->_contentStack];

    v48 = [(NTKCGalleryCell *)v4 contentView];
    v49 = [v48 leadingAnchor];
    v50 = [(UIStackView *)v4->_contentStack leadingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    v52 = [(NTKCGalleryCell *)v4 contentView];
    v53 = [v52 trailingAnchor];
    v54 = [(UIStackView *)v4->_contentStack trailingAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];

    v56 = [(UIStackView *)v4->_contentStack topAnchor];
    v57 = [(NTKCGalleryCell *)v4 contentView];
    v58 = [v57 topAnchor];
    v59 = [v56 constraintEqualToAnchor:v58 constant:9.0];

    v60 = [(NTKCGalleryCell *)v4 contentView];
    v61 = [v60 bottomAnchor];
    v62 = [(UIStackView *)v4->_contentStack bottomAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:25.0];

    LODWORD(v64) = 1132068864;
    [v63 setPriority:v64];
    v65 = [(UICollectionView *)v4->_collectionView heightAnchor];
    v66 = [v65 constraintEqualToConstant:0.0];
    cvHeightConstraint = v4->_cvHeightConstraint;
    v4->_cvHeightConstraint = v66;

    v72[0] = v51;
    v72[1] = v55;
    v72[2] = v59;
    v72[3] = v63;
    v72[4] = v4->_cvHeightConstraint;
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:5];
    [MEMORY[0x277CCAAD0] activateConstraints:v68];
    v69 = [MEMORY[0x277CCAB98] defaultCenter];
    [v69 addObserver:v4 selector:sel__fontSizeDidChange name:*MEMORY[0x277D76810] object:0];

    [(NTKCGalleryCell *)v4 _fontSizeDidChange];
  }

  return v4;
}

- (void)_configureViews
{
  collection = self->_collection;
  if (collection)
  {
    v4 = [(NTKGalleryCollection *)collection title];
    [(UILabel *)self->_title setText:v4];

    v5 = [(NTKGalleryCollection *)self->_collection descriptionText];
    [(UILabel *)self->_footer setText:v5];

    [NTKCFaceContainerView sizeForFaceSize:1 style:FaceSize()];
    v7 = v6;
    v9 = v8;
    v10 = MEMORY[0x277D76620];
    v11 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v11);

    if (IsAccessibilityCategory)
    {
      v7 = v7 * 1.5;
    }

    v13 = [(NTKGalleryCollection *)self->_collection calloutName];

    if (v13)
    {
      v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
      LODWORD(v15) = 0.5;
      v16 = [MEMORY[0x277D74240] NTKHyphenationParagraphStyleWithFactor:v15];
      v17 = NTKSingleLineHeight(v14, v16);
      v9 = v9 + v17 + NTKMaxLineHeightDeltaForEnumeratableFaceCollection(self->_collection, v14, v16, 1, v7) + 10.0;
    }

    [(UICollectionViewFlowLayout *)self->_layout setItemSize:v7, v9];
    [(NSLayoutConstraint *)self->_cvHeightConstraint setConstant:v9];
    if (-[NTKGalleryCollection numberOfFaces](self->_collection, "numberOfFaces") == 1 && (-[NTKGalleryCollection descriptionText](self->_collection, "descriptionText"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 length], v18, v19))
    {
      v20 = *MEMORY[0x277D76838];
      v21 = [*v10 preferredContentSizeCategory];
      v22 = UIContentSizeCategoryCompareToCategory(v20, v21) != NSOrderedAscending;

      self->_showFooterInCollectionView = v22;
    }

    else
    {
      self->_showFooterInCollectionView = 0;
      v22 = 1;
    }

    [(UIStackView *)self->_footerStack setHidden:v22];
    collectionView = self->_collectionView;

    [(UICollectionView *)collectionView reloadData];
  }
}

- (void)setAllSnapshotsLoaded:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_allSnapshotsLoaded != a3)
  {
    v3 = a3;
    self->_allSnapshotsLoaded = a3;
    v5 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NTKGalleryCollection *)self->_collection title];
      v7 = 134218498;
      v8 = self;
      v9 = 2112;
      v10 = v6;
      v11 = 2048;
      v12 = v3;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Cell %p (%@) - snapshots loaded %lu", &v7, 0x20u);
    }
  }
}

- (void)prepareForReuse
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NTKGalleryCollection *)self->_collection title];
    *buf = 134218242;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Cell %p (%@) preparing for reuse", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = NTKCGalleryCell;
  [(NTKCGalleryCell *)&v8 prepareForReuse];
  v5 = [(NTKGalleryCollection *)self->_collection delegate];

  if (v5 == self)
  {
    [(NTKGalleryCollection *)self->_collection setDelegate:0];
  }

  v6 = [(NTKCGalleryCell *)self collectionView];
  v7 = [(NTKCGalleryCell *)self collectionView];
  [v7 contentOffset];
  [v6 setContentOffset:0 animated:?];

  [(NTKCGalleryCell *)self _resetSnapshotRequests];
}

- (void)_resetSnapshotRequests
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NTKGalleryCollection *)self->_collection title];
    *buf = 134218242;
    v18 = self;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Resetting snapshot requests for cell %p (%@)", buf, 0x16u);
  }

  v5 = +[NTKFaceSnapshotCache snapshotCache];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_snapshotRequests;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 cancelSnapshotRequest:{*(*(&v12 + 1) + 8 * v10++), v12}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  snapshotRequests = self->_snapshotRequests;
  self->_snapshotRequests = 0;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = NTKCGalleryCell;
  [(NTKCGalleryCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = NTKCGalleryCell;
  [(NTKCGalleryCell *)&v6 layoutSubviews];
  [(UICollectionView *)self->_collectionView frame];
  if (CGRectIsEmpty(v7))
  {
    selectedIndex = self->_selectedIndex;
    if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      collectionView = self->_collectionView;
      v5 = [MEMORY[0x277CCAA70] indexPathForItem:selectedIndex inSection:0];
      [(UICollectionView *)collectionView scrollToItemAtIndexPath:v5 atScrollPosition:16 animated:0];
    }
  }
}

- (void)setCollection:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v48 = self;
    v49 = 2112;
    v50 = self;
    v51 = 2112;
    v52 = v4;
    v53 = 2048;
    v54 = v4;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Cell %p (%@) setting collection to %@ (%p)", buf, 0x2Au);
  }

  objc_storeStrong(&self->_collection, a3);
  v6 = [v4 delegate];
  v7 = v6 == 0;

  if (v7)
  {
    [v4 setDelegate:self];
  }

  [(NTKCGalleryCell *)self _configureViews];
  [(NTKCGalleryCell *)self _resetSnapshotRequests];
  v8 = +[NTKFaceSnapshotCache snapshotCache];
  v9 = [v4 numberOfFaces];
  v10 = v9;
  if (v9 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v9;
  }

  if (v9)
  {
    v12 = [v4 faceAtIndex:0];
    v13 = [v8 cachedSnapshotOfFace:v12];
    v14 = v13 == 0;

    if (v14)
    {
      v20 = 0;
    }

    else
    {
      v15 = 1;
      do
      {
        v16 = v15;
        if (v11 == v15)
        {
          break;
        }

        v17 = [v4 faceAtIndex:v15];
        v18 = [v8 cachedSnapshotOfFace:v17];
        v19 = v18 == 0;

        v15 = v16 + 1;
      }

      while (!v19);
      v20 = v16 >= v11;
    }
  }

  else
  {
    v20 = 1;
  }

  [(NTKCGalleryCell *)self setAllSnapshotsLoaded:v20];
  v21 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(&self->super.super.super.super.isa + v36) title];
    *buf = 134218242;
    v48 = self;
    v49 = 2112;
    v50 = v22;
    _os_log_impl(&dword_22D9C5000, v21, OS_LOG_TYPE_DEFAULT, "Cell %p (%@) - reloading data", buf, 0x16u);
  }

  if (v20)
  {
    v23 = 1.0;
  }

  else
  {
    v23 = 0.0;
  }

  [(UICollectionView *)self->_collectionView setAlpha:v23];
  [(UILabel *)self->_footer setAlpha:v23];
  v37 = [MEMORY[0x277CBEB18] array];
  if (!v20)
  {
    v24 = dispatch_group_create();
    dispatch_group_enter(v24);
    if (v10)
    {
      v25 = 0;
      do
      {
        v26 = [v4 faceAtIndex:v25];
        v27 = [v8 cachedSnapshotOfFace:v26];
        if (!v27)
        {
          dispatch_group_enter(v24);
          v28 = [[NTKFaceSnapshotCacheRequestOptions alloc] initWithPriority:3];
          v29 = [NTKFaceSnapshotCacheRequest alloc];
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __33__NTKCGalleryCell_setCollection___block_invoke;
          v45[3] = &unk_278781EF8;
          v46 = v24;
          v30 = [(NTKFaceSnapshotCacheRequest *)v29 initWithFace:v26 options:v28 completion:v45];
          [v37 addObject:v30];
          [v8 fetchSnapshotWithRequest:v30];
        }

        ++v25;
      }

      while (v11 != v25);
    }

    objc_initWeak(buf, self);
    v31 = [*(&self->super.super.super.super.isa + v36) title];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__NTKCGalleryCell_setCollection___block_invoke_2;
    block[3] = &unk_278781F40;
    objc_copyWeak(v44, buf);
    v40 = v4;
    v32 = v31;
    v41 = v32;
    v44[1] = v11;
    v42 = v8;
    v33 = v37;
    v43 = v33;
    dispatch_group_notify(v24, MEMORY[0x277D85CD0], block);
    v34 = [v33 copy];
    snapshotRequests = self->_snapshotRequests;
    self->_snapshotRequests = v34;

    dispatch_group_leave(v24);
    objc_destroyWeak(v44);

    objc_destroyWeak(buf);
  }
}

void __33__NTKCGalleryCell_setCollection___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[129] == *(a1 + 32))
  {
    [WeakRetained setAllSnapshotsLoaded:1];
    v6 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 134218242;
      v18 = v3;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Cell %p (%@) - reloading data with snapshots", buf, 0x16u);
    }

    [v3[133] reloadData];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __33__NTKCGalleryCell_setCollection___block_invoke_88;
    v16[3] = &unk_27877DB10;
    v16[4] = v3;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __33__NTKCGalleryCell_setCollection___block_invoke_2_90;
    v15[3] = &unk_2787802F8;
    v15[4] = v3;
    [MEMORY[0x277D75D18] animateWithDuration:2 delay:v16 options:v15 animations:0.3 completion:0.0];
    v8 = [*(a1 + 32) numberOfFaces];
    v9 = *(a1 + 72);
    if (v9 < v8)
    {
      v10 = v8;
      do
      {
        v11 = [*(a1 + 32) faceAtIndex:v9];
        v12 = [*(a1 + 48) cachedSnapshotOfFace:v11];
        if (!v12)
        {
          v13 = [[NTKFaceSnapshotCacheRequestOptions alloc] initWithPriority:2];
          v14 = [[NTKFaceSnapshotCacheRequest alloc] initWithFace:v11 options:v13 completion:&__block_literal_global_67];
          [*(a1 + 56) addObject:v14];
          [*(a1 + 48) fetchSnapshotWithRequest:v14];
        }

        ++v9;
      }

      while (v10 != v9);
    }
  }

  else
  {
    v4 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 134218242;
      v18 = v3;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Cell %p (%@) - skipping notify", buf, 0x16u);
    }
  }
}

uint64_t __33__NTKCGalleryCell_setCollection___block_invoke_88(uint64_t a1)
{
  [*(*(a1 + 32) + 1064) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 1112);

  return [v2 setAlpha:1.0];
}

uint64_t __33__NTKCGalleryCell_setCollection___block_invoke_2_90(uint64_t a1)
{
  [*(*(a1 + 32) + 1064) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 1112);

  return [v2 setAlpha:1.0];
}

- (CGPoint)contentOffset
{
  [(UICollectionView *)self->_collectionView contentOffset];
  v4 = v3;
  v6 = v5;
  [(NTKCGalleryCell *)self _contentInsetPoint];
  v8 = v4 + v7;
  v10 = v6 + v9;
  result.y = v10;
  result.x = v8;
  return result;
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(NTKCGalleryCell *)self layoutIfNeeded];
  [(NTKCGalleryCell *)self _contentInsetPoint];
  v7 = x - v6;
  v9 = y - v8;
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView setContentOffset:v7, v9];
}

- (CGPoint)_contentInsetPoint
{
  [(UICollectionView *)self->_collectionView contentInset];
  v4 = v3;
  [(UICollectionView *)self->_collectionView contentInset];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)updateFaceAtIndex:(unint64_t)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  collectionView = self->_collectionView;
  v4 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(UICollectionView *)collectionView reloadItemsAtIndexPaths:v5];
}

- (void)selectFace:(id)a3
{
  v4 = a3;
  v5 = [(NTKCGalleryCell *)self collection];
  v6 = [v5 indexOfFace:v4];

  collectionView = self->_collectionView;
  v8 = [MEMORY[0x277CCAA70] indexPathForItem:v6 inSection:0];
  [(UICollectionView *)collectionView selectItemAtIndexPath:v8 animated:1 scrollPosition:0];
}

- (void)clearSelectedFaces
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:*(*(&v8 + 1) + 8 * v7++) animated:1];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)faceForLocation:(CGPoint)a3
{
  collectionView = self->_collectionView;
  [(NTKCGalleryCell *)self convertPoint:collectionView toView:a3.x, a3.y];
  v5 = [(UICollectionView *)collectionView indexPathForItemAtPoint:?];
  v6 = v5;
  if (v5)
  {
    v7 = -[NTKGalleryCollection faceAtIndex:](self->_collection, "faceAtIndex:", [v5 item]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)containerViewForFace:(id)a3
{
  v4 = [MEMORY[0x277CCAA70] indexPathForItem:-[NTKGalleryCollection indexOfFace:](self->_collection inSection:{"indexOfFace:", a3), 0}];
  v5 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v4];
  v6 = [v5 faceContainerView];

  return v6;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NTKCGalleryCell *)self allSnapshotsLoaded:a3])
  {
    v5 = [(NTKGalleryCollection *)self->_collection numberOfFaces];
    v6 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NTKGalleryCollection *)self->_collection title];
      v10 = 134218498;
      v11 = self;
      v12 = 2112;
      v13 = v7;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Cell %p (%@)- number of items - %ld", &v10, 0x20u);
    }
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NTKGalleryCollection *)self->_collection title];
      v10 = 134218242;
      v11 = self;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Cell %p (%@) - number of items - NOT loaded", &v10, 0x16u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  collectionView = self->_collectionView;
  v7 = +[_NTKCGalleryCollectionCell reuseIdentifier];
  v8 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v5];

  v9 = [v5 item];
  v10 = [(NTKGalleryCollection *)self->_collection faceAtIndex:v9];
  v11 = [(NTKCGalleryCell *)self delegate];
  v12 = [v11 galleryCell:self viewForFace:v10 atIndex:v9];
  [v8 setFaceView:v12];

  v13 = [(NTKGalleryCollection *)self->_collection calloutName];

  if (v13)
  {
    v14 = [(NTKGalleryCollection *)self->_collection calloutName];
    v15 = (v14)[2](v14, v10);
    [v8 setCalloutName:v15];
  }

  else
  {
    [v8 setCalloutName:0];
  }

  [v8 setActive:{objc_msgSend(v5, "item") == self->_selectedIndex}];

  return v8;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[_NTKCGalleryCollectionFooter reuseIdentifier];
  v12 = [v10 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v11 forIndexPath:v8];

  v13 = [(NTKGalleryCollection *)self->_collection descriptionText];
  [v12 setText:v13];

  return v12;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[NTKGalleryCollection faceAtIndex:](self->_collection, "faceAtIndex:", [v7 item]);
  v9 = [(NTKCGalleryCell *)self delegate];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__NTKCGalleryCell_collectionView_didSelectItemAtIndexPath___block_invoke;
  v12[3] = &unk_27877E438;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 galleryCell:self didSelectFace:v8 finishedSelectionHandler:v12];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  v6 = a3;
  v7 = v6;
  if (self->_showFooterInCollectionView)
  {
    [v6 bounds];
    Width = CGRectGetWidth(v19);
    [v7 contentInset];
    v10 = v9;
    [v7 contentInset];
    v12 = Width - (v10 + v11);
    [NTKCFaceContainerView sizeForFaceSize:1 style:FaceSize()];
    v14 = v12 - v13;
    v15 = 0.0;
  }

  else
  {
    v14 = *MEMORY[0x277CBF3A8];
    v15 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v16 = v14;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)_fontSizeDidChange
{
  v10 = [MEMORY[0x277D756E0] prominentInsetGroupedHeaderConfiguration];
  v3 = [v10 textProperties];
  v4 = [v3 font];
  [(UILabel *)self->_title setFont:v4];

  v5 = NTKCScreenStyle();
  v6 = MEMORY[0x277D76968];
  if (v5 != -1)
  {
    v6 = MEMORY[0x277D769C0];
  }

  v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*v6];
  v8 = [v7 fontDescriptorWithSymbolicTraits:0x8000];

  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];

  [(UILabel *)self->_footer setFont:v9];
  [(NTKCGalleryCell *)self _configureViews];
}

- (NTKCGalleryCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end