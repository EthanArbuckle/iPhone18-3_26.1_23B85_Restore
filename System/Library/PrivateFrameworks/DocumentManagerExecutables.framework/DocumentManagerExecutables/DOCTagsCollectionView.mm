@interface DOCTagsCollectionView
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)intrinsicContentSize;
- (CGSize)lastIntrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)result;
- (DOCTagsCollectionView)init;
- (DOCTagsCollectionViewDelegate)delegate;
- (id)_cellMenuTargetForIndexPath:(id)path;
- (id)_indexPathOfTag:(id)tag;
- (id)cellForIndexPath:(id)path dequeueCell:(id)cell;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (void)_reloadData;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)doc_commonInit;
- (void)layoutSubviews;
- (void)setShowsAddTagButton:(BOOL)button;
- (void)setupCells:(id)cells registerClasses:(BOOL)classes;
- (void)tagsCollectionItem:(id)item didDeleteTag:(id)tag;
- (void)updateForChangedTraitsAffectingFonts;
@end

@implementation DOCTagsCollectionView

- (DOCTagsCollectionView)init
{
  v5.receiver = self;
  v5.super_class = DOCTagsCollectionView;
  v2 = [(DOCTagsCollectionView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DOCTagsCollectionView *)v2 doc_commonInit];
  }

  return v3;
}

- (void)doc_commonInit
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D752F0]);
  v4 = *MEMORY[0x277D768F0];
  v20[0] = *MEMORY[0x277D768E8];
  v20[1] = v4;
  v21[0] = &unk_285CE9F88;
  v21[1] = &unk_285CE9F88;
  v20[2] = *MEMORY[0x277D768F8];
  v21[2] = &unk_285CE9F88;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  [v3 _setRowAlignmentsOptions:v5];

  v6 = +[DOCTagAppearance infoCollection];
  [v6 verticalTagSpacing];
  [v3 setMinimumLineSpacing:?];

  v7 = +[DOCTagAppearance infoCollection];
  [v7 horizontalTagSpacing];
  [v3 setMinimumInteritemSpacing:?];

  array = [MEMORY[0x277CBEA60] array];
  nodes = self->_nodes;
  self->_nodes = array;

  self->_showsAddTagButton = 1;
  v10 = objc_alloc(MEMORY[0x277D752A0]);
  [(DOCTagsCollectionView *)self bounds];
  v11 = [v10 initWithFrame:v3 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v11;

  [(UICollectionView *)self->_collectionView setOpaque:0];
  [(UICollectionView *)self->_collectionView setBackgroundColor:0];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  v18[0] = @"TagCellIdentifier";
  v18[1] = @"AddTagCellIdentifier";
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [(DOCTagsCollectionView *)self setupCells:v13 registerClasses:1];

  [(UICollectionView *)self->_collectionView setAutoresizingMask:2];
  v14 = objc_alloc_init(_TtC26DocumentManagerExecutables25DOCTagsCollectionViewData);
  tagsData = self->_tagsData;
  self->_tagsData = v14;

  [(DOCTagsCollectionViewData *)self->_tagsData setDelegate:self];
  [(DOCTagsCollectionView *)self updateForChangedTraitsAffectingFonts];
  doc_traitsAffectingFonts = [MEMORY[0x277D75C80] doc_traitsAffectingFonts];
  v17 = [(DOCTagsCollectionView *)self registerForTraitChanges:doc_traitsAffectingFonts withAction:sel_updateForChangedTraitsAffectingFonts];

  [(DOCTagsCollectionView *)self addSubview:self->_collectionView];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = DOCTagsCollectionView;
  [(DOCTagsCollectionView *)&v20 layoutSubviews];
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v5 = v4;
  v7 = v6;
  p_lastIntrinsicContentSize = &self->_lastIntrinsicContentSize;
  width = self->_lastIntrinsicContentSize.width;
  height = self->_lastIntrinsicContentSize.height;

  if (v5 != width || v7 != height)
  {
    collectionViewLayout2 = [(UICollectionView *)self->_collectionView collectionViewLayout];
    [collectionViewLayout2 collectionViewContentSize];
    p_lastIntrinsicContentSize->width = v13;
    self->_lastIntrinsicContentSize.height = v14;

    [(UICollectionView *)self->_collectionView frame];
    v16 = v15;
    v17 = self->_lastIntrinsicContentSize.height;
    if (p_lastIntrinsicContentSize->width != v18 || v17 != v16)
    {
      [(UICollectionView *)self->_collectionView setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), p_lastIntrinsicContentSize->width, v17];
    }

    [(DOCTagsCollectionView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setShowsAddTagButton:(BOOL)button
{
  if (self->_showsAddTagButton != button)
  {
    self->_showsAddTagButton = button;
    [(DOCTagsCollectionView *)self _reloadData];
  }
}

- (CGSize)intrinsicContentSize
{
  width = self->_lastIntrinsicContentSize.width;
  height = self->_lastIntrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)result
{
  height = self->_lastIntrinsicContentSize.height;
  result.height = height;
  return result;
}

- (void)_reloadData
{
  [(UICollectionView *)self->_collectionView reloadData];

  [(DOCTagsCollectionView *)self setNeedsLayout];
}

- (void)setupCells:(id)cells registerClasses:(BOOL)classes
{
  classesCopy = classes;
  v22 = *MEMORY[0x277D85DE8];
  cellsCopy = cells;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(cellsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = cellsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:{v13, v17}];
        v15 = objc_alloc_init(v14);
        [(NSDictionary *)v7 setObject:v15 forKeyedSubscript:v13];
        if (classesCopy)
        {
          [(UICollectionView *)self->_collectionView registerClass:v14 forCellWithReuseIdentifier:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  sizingCells = self->_sizingCells;
  self->_sizingCells = v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__DOCTagsCollectionView_collectionView_cellForItemAtIndexPath___block_invoke;
  v12[3] = &unk_278FA2448;
  v13 = viewCopy;
  v14 = pathCopy;
  v8 = pathCopy;
  v9 = viewCopy;
  v10 = [(DOCTagsCollectionView *)self cellForIndexPath:v8 dequeueCell:v12];

  return v10;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__DOCTagsCollectionView_collectionView_layout_sizeForItemAtIndexPath___block_invoke;
  v12[3] = &unk_278FA2470;
  v12[4] = self;
  v5 = [(DOCTagsCollectionView *)self cellForIndexPath:path dequeueCell:v12];
  [v5 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

id __70__DOCTagsCollectionView_collectionView_layout_sizeForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sizingCells];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  item = [pathCopy item];
  if (item == [(DOCTagsCollectionViewData *)self->_tagsData countOfTags])
  {
    delegate = [(DOCTagsCollectionView *)self delegate];
    v9 = [viewCopy cellForItemAtIndexPath:pathCopy];
    [delegate tagsCollectionView:self didSelectAddTagButton:v9];
  }
}

- (id)cellForIndexPath:(id)path dequeueCell:(id)cell
{
  pathCopy = path;
  cellCopy = cell;
  item = [pathCopy item];
  countOfTags = [(DOCTagsCollectionViewData *)self->_tagsData countOfTags];
  v10 = cellCopy[2];
  if (item == countOfTags)
  {
    v11 = v10(cellCopy, @"AddTagCellIdentifier");
  }

  else
  {
    v11 = v10(cellCopy, @"TagCellIdentifier");

    cellCopy = -[DOCTagsCollectionViewData tagAtIndex:](self->_tagsData, "tagAtIndex:", [pathCopy item]);
    tagView = [v11 tagView];
    [tagView setDelegate:self];

    tagView2 = [v11 tagView];
    [tagView2 setTagValue:cellCopy];

    v14 = [(DOCTagsCollectionViewData *)self->_tagsData presenceOf:cellCopy]== 1;
    tagView3 = [v11 tagView];
    [tagView3 setIsMixed:v14];
  }

  return v11;
}

- (void)updateForChangedTraitsAffectingFonts
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"TagCellIdentifier";
  v6[1] = @"AddTagCellIdentifier";
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(DOCTagsCollectionView *)self setupCells:v3 registerClasses:0];

  self->_lastIntrinsicContentSize.width = 0.0;
  self->_lastIntrinsicContentSize.height = 0.0;
  _layout = [(DOCTagsCollectionView *)self _layout];
  v5 = +[DOCTagAppearance infoCollection];
  [v5 horizontalTagSpacing];
  [_layout setMinimumInteritemSpacing:?];

  [_layout invalidateLayout];
  [(DOCTagsCollectionView *)self invalidateIntrinsicContentSize];
  [(DOCTagsCollectionView *)self setNeedsLayout];
}

- (void)tagsCollectionItem:(id)item didDeleteTag:(id)tag
{
  v15[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  tagCopy = tag;
  v8 = [(DOCTagsCollectionView *)self _indexPathOfTag:tagCopy];
  if (v8)
  {
    v9 = objc_opt_new();
    v15[0] = tagCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v9 setDeletions:v10];

    [(DOCTagsCollectionViewData *)self->_tagsData applyPendingExternalChange:v9 timeout:1.0];
    collectionView = [(DOCTagsCollectionView *)self collectionView];
    v14 = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [collectionView deleteItemsAtIndexPaths:v12];

    delegate = [(DOCTagsCollectionView *)self delegate];
    [delegate tagsCollectionItem:itemCopy didDeleteTag:tagCopy];
  }
}

- (id)_indexPathOfTag:(id)tag
{
  v3 = [(DOCTagsCollectionViewData *)self->_tagsData indexOfTag:tag];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCAA70] indexPathForRow:v3 inSection:0];
  }

  return v4;
}

- (id)_cellMenuTargetForIndexPath:(id)path
{
  v3 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:path];
  doc_tagsCollectionCellMenuTarget = [v3 doc_tagsCollectionCellMenuTarget];

  return doc_tagsCollectionCellMenuTarget;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  pathsCopy = paths;
  firstObject = [pathsCopy firstObject];
  v8 = [pathsCopy count];

  if (v8 == 1)
  {
    v9 = [(DOCTagsCollectionView *)self _cellMenuTargetForIndexPath:firstObject];
    menuForContextMenuPresentation = [v9 menuForContextMenuPresentation];
    v11 = menuForContextMenuPresentation;
    if (menuForContextMenuPresentation && ([menuForContextMenuPresentation children], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v13))
    {
      v14 = MEMORY[0x277D753B0];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __91__DOCTagsCollectionView_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke;
      v17[3] = &unk_278FA2498;
      v18 = v11;
      v15 = [v14 configurationWithIdentifier:0 previewProvider:0 actionProvider:v17];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path
{
  v5 = [view cellForItemAtIndexPath:{path, configuration}];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    tagView = [v5 tagView];
    [tagView cornerRadius];

    v7 = objc_alloc_init(MEMORY[0x277D758D8]);
    v8 = MEMORY[0x277D75208];
    [v5 bounds];
    v9 = [v8 bezierPathWithRoundedRect:? cornerRadius:?];
    [v7 setVisiblePath:v9];

    v10 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v5 parameters:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v7 = +[DOCTagAppearance infoCollection];
  [v7 dimmingAlphaDuringMenuPresentation];
  v9 = v8;

  if (v9 != 1.0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __89__DOCTagsCollectionView_collectionView_willDisplayContextMenuWithConfiguration_animator___block_invoke;
    v10[3] = &unk_278FA2128;
    v10[4] = self;
    *&v10[5] = v9;
    [animatorCopy addAnimations:v10];
  }
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v7 = +[DOCTagAppearance infoCollection];
  [v7 dimmingAlphaDuringMenuPresentation];
  v9 = v8;

  if (v9 != 1.0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __96__DOCTagsCollectionView_collectionView_willEndContextMenuInteractionWithConfiguration_animator___block_invoke;
    v10[3] = &unk_278FA1C30;
    v10[4] = self;
    [animatorCopy addAnimations:v10];
  }
}

- (DOCTagsCollectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)lastIntrinsicContentSize
{
  width = self->_lastIntrinsicContentSize.width;
  height = self->_lastIntrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end