@interface PXPhotosLensControl
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXPhotosLensControl)init;
- (PXPhotosLensControlDelegate)delegate;
- (UIColor)contentBackgroundColor;
- (void)_handleSegmentedControlAction:(id)a3;
- (void)_updateSegmentedControl;
- (void)_updateSegments;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackdropGroupName:(id)a3;
- (void)setContentBackgroundColor:(id)a3;
- (void)setDefaultTextColor:(id)a3;
- (void)setEnabledItems:(id)a3;
- (void)setHideSymbols:(BOOL)a3;
- (void)setItems:(id)a3;
- (void)setSelectedItem:(id)a3;
- (void)setShrinkLevel:(int64_t)a3;
@end

@implementation PXPhotosLensControl

- (PXPhotosLensControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleSegmentedControlAction:(id)a3
{
  v4 = [(PXPhotosLensControl *)self items];
  v10 = [v4 objectAtIndexedSubscript:{-[_PXPhotosLensSegmentedControl selectedSegmentIndex](self->_segmentedControl, "selectedSegmentIndex")}];

  v5 = [(PXPhotosLensControl *)self selectedItem];
  if (v10 == v5)
  {
  }

  else
  {
    v6 = [v10 isEqual:v5];

    if (!v6)
    {
      [(PXPhotosLensControl *)self setSelectedItem:v10];
      goto LABEL_8;
    }
  }

  if ([(_PXPhotosLensSegmentedControl *)self->_segmentedControl lastTouchRemainedOnSelectedSegment])
  {
    v7 = [(PXPhotosLensControl *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(PXPhotosLensControl *)self delegate];
      [v9 photosLensControl:self didTapOnAlreadySelectedItem:v10];
    }
  }

LABEL_8:
}

- (void)_updateSegmentedControl
{
  v56[2] = *MEMORY[0x277D85DE8];
  v3 = [(PXPhotosLensControl *)self shrinkLevel];
  v4 = v3;
  if (v3 <= 1)
  {
    if (v3 > 1)
    {
      goto LABEL_27;
    }

LABEL_7:
    v5 = MEMORY[0x277D769C0];
    goto LABEL_8;
  }

  if (v3 == 2 || v3 == 3)
  {
    goto LABEL_7;
  }

  if (v3 == 4)
  {
    v5 = MEMORY[0x277D76968];
LABEL_8:
    v6 = *v5;
    v7 = -1.0;
    goto LABEL_9;
  }

LABEL_27:
  v6 = *MEMORY[0x277D76968];
  v7 = 13.0 - (v4 - 4);
LABEL_9:
  v8 = [(PXPhotosLensControl *)self traitCollection];
  v9 = MEMORY[0x277D74300];
  v10 = [v8 preferredContentSizeCategory];
  v11 = [v9 px_preferredFontForTextStyle:v6 preferredContentSizeCategory:v10 maxContentSizeCategory:*MEMORY[0x277D76820] withSymbolicTraits:2];

  if (v7 > 0.0)
  {
    v12 = [v11 fontWithSize:v7];

    v11 = v12;
  }

  v13 = [v8 userInterfaceIdiom];
  v14 = MEMORY[0x21CEE04B0]();
  v41 = v8;
  if (!v14 || v13 == 1)
  {
    v15 = [(PXPhotosLensControl *)self defaultTextColor];
    if (v14 && v13 == 1)
    {
      v16 = [MEMORY[0x277D75348] labelColor];
    }

    else
    {
      v16 = [MEMORY[0x277D75348] whiteColor];
    }
  }

  else
  {
    v15 = [MEMORY[0x277D75348] labelColor];
    v16 = [MEMORY[0x277D75348] systemBlueColor];
  }

  v17 = v16;
  v18 = [v15 colorWithAlphaComponent:0.3];
  segmentedControl = self->_segmentedControl;
  v21 = *MEMORY[0x277D740C0];
  v55[0] = *MEMORY[0x277D740A8];
  v20 = v55[0];
  v55[1] = v21;
  v56[0] = v11;
  v56[1] = v15;
  v40 = v15;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
  [(_PXPhotosLensSegmentedControl *)segmentedControl setTitleTextAttributes:v22 forState:0];

  v23 = self->_segmentedControl;
  v53[0] = v20;
  v53[1] = v21;
  v54[0] = v11;
  v54[1] = v17;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
  [(_PXPhotosLensSegmentedControl *)v23 setTitleTextAttributes:v24 forState:4];

  v25 = self->_segmentedControl;
  v51[0] = v20;
  v51[1] = v21;
  v52[0] = v11;
  v52[1] = v18;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
  [(_PXPhotosLensSegmentedControl *)v25 setTitleTextAttributes:v26 forState:2];

  if ((MEMORY[0x21CEE04B0]() & 1) == 0)
  {
    v27 = [MEMORY[0x277D75210] effectWithStyle:1202];
    [(UIVisualEffectView *)self->_backgroundEffectView setEffect:v27];

    v28 = [MEMORY[0x277D75348] tertiarySystemFillColor];
    v29 = [(UIVisualEffectView *)self->_backgroundEffectView contentView];
    [v29 setBackgroundColor:v28];
  }

  *&self->_padding.top = xmmword_21AC7D630;
  *&self->_padding.bottom = xmmword_21AC7D630;
  self->_minimumInterTextSpacing = 16.0;
  self->_intrinsicSize = *MEMORY[0x277CBF3A8];
  v30 = [(PXPhotosLensControl *)self hideSymbols];
  v31 = [(PXPhotosLensControl *)self items];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __46__PXPhotosLensControl__updateSegmentedControl__block_invoke;
  v42[3] = &unk_278297F88;
  v46 = v30;
  v32 = v6;
  v43 = v32;
  v44 = self;
  v33 = v11;
  v45 = v33;
  [v31 enumerateObjectsUsingBlock:v42];
  v34 = fmax(self->_intrinsicSize.height + self->_padding.top + self->_padding.bottom, 44.0);
  self->_intrinsicSize.width = self->_intrinsicSize.width + self->_padding.left + self->_padding.right - self->_minimumInterTextSpacing;
  self->_intrinsicSize.height = v34;
  v35 = [(PXPhotosLensControl *)self selectedItem];
  v36 = [v31 indexOfObject:v35];

  if ((v36 & 0x8000000000000000) != 0 || v36 >= [(_PXPhotosLensSegmentedControl *)self->_segmentedControl numberOfSegments])
  {
    v38 = PXAssertGetLog();
    v37 = v41;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [(PXPhotosLensControl *)self selectedItem];
      *buf = 138412546;
      v48 = v39;
      v49 = 2112;
      v50 = v31;
      _os_log_error_impl(&dword_21ABF3000, v38, OS_LOG_TYPE_ERROR, "item %@ not found in %@", buf, 0x16u);
    }
  }

  else
  {
    [(_PXPhotosLensSegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:v36];
    v37 = v41;
  }
}

void __46__PXPhotosLensControl__updateSegmentedControl__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if ((*(a1 + 56) & 1) != 0 || ([v5 symbolName], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = [v6 title];
    [*(*(a1 + 40) + 488) setTitle:v8 forSegmentAtIndex:a3];
    v17 = *(a1 + 48);
    v25 = *MEMORY[0x277D740A8];
    v26[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [v8 sizeWithAttributes:v18];
    v14 = v19;
    v16 = v20;
  }

  else
  {
    v8 = [MEMORY[0x277D755D0] configurationWithTextStyle:*(a1 + 32) scale:2];
    v9 = MEMORY[0x277D755B8];
    v10 = [v6 symbolName];
    v11 = [v9 systemImageNamed:v10];
    v12 = [v11 imageWithSymbolConfiguration:v8];

    [*(*(a1 + 40) + 488) setImage:v12 forSegmentAtIndex:a3];
    [v12 size];
    v14 = v13;
    v16 = v15;
  }

  v21 = ceil(v14);
  v22 = *(*(a1 + 40) + 448) + 16 * a3;
  *v22 = v21;
  *(v22 + 8) = v16;
  *(*(a1 + 40) + 464) = v21 + *(*(a1 + 40) + 456) + *(*(a1 + 40) + 464);
  v23 = *(*(a1 + 40) + 472);
  v24 = ceil(v16);
  if (v23 < v24)
  {
    v23 = v24;
  }

  *(*(a1 + 40) + 472) = v23;
}

- (void)_updateSegments
{
  [(_PXPhotosLensSegmentedControl *)self->_segmentedControl removeAllSegments];
  if ([(NSArray *)self->_items count])
  {
    v3 = 0;
    do
    {
      [(_PXPhotosLensSegmentedControl *)self->_segmentedControl insertSegmentWithTitle:&stru_282C2F4D0 atIndex:v3++ animated:0];
    }

    while (v3 < [(NSArray *)self->_items count]);
  }

  [(PXPhotosLensControl *)self _invalidateSegmentedControl];
}

- (void)setDefaultTextColor:(id)a3
{
  v8 = a3;
  v5 = self->_defaultTextColor;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(UIColor *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_defaultTextColor, a3);
      [(PXPhotosLensControl *)self _invalidateSegmentedControl];
    }
  }
}

- (void)setHideSymbols:(BOOL)a3
{
  if (self->_hideSymbols != a3)
  {
    self->_hideSymbols = a3;
    [(PXPhotosLensControl *)self _invalidateSegmentedControl];
  }
}

- (void)setSelectedItem:(id)a3
{
  v13 = a3;
  v6 = self->_selectedItem;
  v7 = v6;
  if (v6 == v13)
  {
  }

  else
  {
    v8 = [(PXPhotosLensControlItem *)v6 isEqual:v13];

    if ((v8 & 1) == 0)
    {
      v9 = [(PXPhotosLensControl *)self items];
      v10 = [v9 containsObject:v13];

      if ((v10 & 1) == 0)
      {
        v12 = [MEMORY[0x277CCA890] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"PXPhotosLensControl.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"[self.items containsObject:selectedItem]"}];
      }

      objc_storeStrong(&self->_selectedItem, a3);
      v11 = [(PXPhotosLensControl *)self delegate];
      [v11 photosLensControl:self didSelectItem:v13];

      [(PXPhotosLensControl *)self _invalidateSegmentedControl];
    }
  }
}

- (void)setEnabledItems:(id)a3
{
  v4 = a3;
  enabledItems = self->_enabledItems;
  if (enabledItems != v4)
  {
    v8 = v4;
    if (([(NSArray *)enabledItems isEqual:v4]& 1) == 0)
    {
      v6 = [(NSArray *)v8 copy];
      v7 = self->_enabledItems;
      self->_enabledItems = v6;

      [(PXPhotosLensControl *)self _invalidateSegmentedControl];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setItems:(id)a3
{
  v4 = a3;
  items = self->_items;
  if (items != v4)
  {
    v9 = v4;
    if (([(NSArray *)items isEqual:v4]& 1) == 0)
    {
      v6 = [(NSArray *)v9 count];
      if (v6 > [(NSArray *)self->_items count])
      {
        self->_textSizes = malloc_type_realloc(self->_textSizes, 16 * [(NSArray *)v9 count], 0x1000040451B5BE8uLL);
      }

      v7 = [(NSArray *)v9 copy];
      v8 = self->_items;
      self->_items = v7;

      [(PXPhotosLensControl *)self _invalidateSegments];
      [(PXPhotosLensControl *)self _invalidateSegmentedControl];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setShrinkLevel:(int64_t)a3
{
  if (self->_shrinkLevel != a3)
  {
    self->_shrinkLevel = a3;
    [(PXPhotosLensControl *)self _updateSegmentedControl];
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = PXPhotosLensControl;
  [(PXPhotosLensControl *)&v26 layoutSubviews];
  [(PXUpdater *)self->_updater updateIfNeeded];
  [(PXPhotosLensControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = 0;
  do
  {
    [(PXPhotosLensControl *)self setShrinkLevel:v11];
    v27.origin.x = v4;
    v27.origin.y = v6;
    v27.size.width = v8;
    v27.size.height = v10;
    v12 = CGRectGetWidth(v27) - self->_intrinsicSize.width;
  }

  while (v12 < 0.0 && v11++ != 14);
  if ((MEMORY[0x21CEE04B0]() & 1) == 0)
  {
    [(UIVisualEffectView *)self->_backgroundEffectView setBounds:v4, v6, v8, v10];
    PXRectGetCenter();
    [(UIVisualEffectView *)self->_backgroundEffectView setCenter:?];
    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    [(UIVisualEffectView *)self->_backgroundEffectView _setCornerRadius:1 continuous:15 maskedCorners:CGRectGetHeight(v28) * 0.5];
  }

  [(_PXPhotosLensSegmentedControl *)self->_segmentedControl setBounds:v4, v6, v8, v10];
  PXRectGetCenter();
  [(_PXPhotosLensSegmentedControl *)self->_segmentedControl setCenter:?];
  v14 = [(PXPhotosLensControl *)self items];
  v15 = [(PXPhotosLensControl *)self enabledItems];
  v16 = [v14 count];
  minimumInterTextSpacing = self->_minimumInterTextSpacing;
  v25 = v16;
  v18 = (v16 - 1);
  v19 = round(minimumInterTextSpacing + v12 * 0.5 / v18);
  if (v16 >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = (v12 - v18 * (v19 - minimumInterTextSpacing)) / v16;
    do
    {
      [(_PXPhotosLensSegmentedControl *)self->_segmentedControl setWidth:v21 forSegmentAtIndex:self->_padding.right + round(v22 * (v21 + 1)) - round(v22 * v21) + self->_padding.left + self->_textSizes[v20].width];
      v23 = [v14 objectAtIndexedSubscript:v21];
      v24 = [v15 containsObject:v23];

      [(_PXPhotosLensSegmentedControl *)self->_segmentedControl setEnabled:v24 forSegmentAtIndex:v21];
      ++v20;
      ++v21;
    }

    while (v25 != v21);
  }

  [(_PXPhotosLensSegmentedControl *)self->_segmentedControl _setInterSegmentSpacing:v19 - self->_padding.left - self->_padding.right];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(PXUpdater *)self->_updater updateIfNeeded:a3.width];
  v6 = self->_intrinsicSize.width;
  height = self->_intrinsicSize.height;
  v7 = [(PXPhotosLensControl *)self items];
  v8 = [v7 count];

  if (width > self->_intrinsicSize.width && v8 >= 2)
  {
    minimumInterTextSpacing = self->_minimumInterTextSpacing;
    if (width >= v6 + (v8 - 1) * minimumInterTextSpacing)
    {
      v6 = v6 + (v8 - 1) * minimumInterTextSpacing;
    }

    else
    {
      v6 = width;
    }
  }

  v11 = v6;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (UIColor)contentBackgroundColor
{
  v2 = [(UIVisualEffectView *)self->_backgroundEffectView contentView];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)setContentBackgroundColor:(id)a3
{
  backgroundEffectView = self->_backgroundEffectView;
  v4 = a3;
  v5 = [(UIVisualEffectView *)backgroundEffectView contentView];
  [v5 setBackgroundColor:v4];
}

- (void)setBackdropGroupName:(id)a3
{
  v4 = [a3 copy];
  [(UIVisualEffectView *)self->_backgroundEffectView _setGroupName:v4];
}

- (void)dealloc
{
  free(self->_textSizes);
  v3.receiver = self;
  v3.super_class = PXPhotosLensControl;
  [(PXPhotosLensControl *)&v3 dealloc];
}

- (PXPhotosLensControl)init
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = PXPhotosLensControl;
  v2 = [(PXPhotosLensControl *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v2)
  {
    v3 = [[PXConcretePhotosLensControlItem alloc] initWithIdentifier:@"placeholder" title:&stru_282C2F4D0 symbolName:0];
    v22[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    items = v2->_items;
    v2->_items = v4;

    objc_storeStrong(&v2->_enabledItems, v2->_items);
    v6 = [(NSArray *)v2->_items firstObject];
    selectedItem = v2->_selectedItem;
    v2->_selectedItem = v6;

    if ((MEMORY[0x21CEE04B0]() & 1) == 0)
    {
      v8 = objc_alloc(MEMORY[0x277D75D68]);
      v9 = [MEMORY[0x277D75210] effectWithStyle:1202];
      v10 = [v8 initWithEffect:v9];
      backgroundEffectView = v2->_backgroundEffectView;
      v2->_backgroundEffectView = v10;

      [(PXPhotosLensControl *)v2 addSubview:v2->_backgroundEffectView];
    }

    v2->_textSizes = malloc_type_calloc([(NSArray *)v2->_items count], 0x10uLL, 0x1000040451B5BE8uLL);
    v12 = [MEMORY[0x277D75348] secondaryLabelColor];
    defaultTextColor = v2->_defaultTextColor;
    v2->_defaultTextColor = v12;

    v14 = objc_alloc_init(_PXPhotosLensSegmentedControl);
    segmentedControl = v2->_segmentedControl;
    v2->_segmentedControl = v14;

    [(_PXPhotosLensSegmentedControl *)v2->_segmentedControl addTarget:v2 action:sel__handleSegmentedControlAction_ forControlEvents:0x2000];
    [(PXPhotosLensControl *)v2 _updateSegments];
    [(PXPhotosLensControl *)v2 addSubview:v2->_segmentedControl];
    v16 = [objc_alloc(MEMORY[0x277D3CE28]) initWithTarget:v2 needsUpdateSelector:sel_setNeedsLayout];
    updater = v2->_updater;
    v2->_updater = v16;

    [(PXUpdater *)v2->_updater addUpdateSelector:sel__updateSegments needsUpdate:1];
    [(PXUpdater *)v2->_updater addUpdateSelector:sel__updateSegmentedControl needsUpdate:1];
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v2 selector:sel__handleContentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

    v19 = [(PXPhotosLensControl *)v2 layer];
    [v19 setAllowsGroupOpacity:0];
  }

  return v2;
}

@end