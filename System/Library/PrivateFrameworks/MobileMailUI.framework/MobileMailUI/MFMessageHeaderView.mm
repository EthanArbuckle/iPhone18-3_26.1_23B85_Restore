@interface MFMessageHeaderView
+ (id)log;
- (CGRect)draggableArea;
- (ConversationSearchOverlayView)findOverlayView;
- (MFMessageHeaderView)initWithFrame:(CGRect)frame;
- (MFMessageHeaderViewDelegate)delegate;
- (id)_animationConstraintsForBlockAtIndex:(unint64_t)index;
- (int64_t)_pinnedBlockIndex;
- (void)_updateSeparators;
- (void)addConversationSearchOverlay;
- (void)displayMessageUsingViewModel:(id)model;
- (void)drawRect:(CGRect)rect forViewPrintFormatter:(id)formatter;
- (void)insertHeaderBlock:(id)block atIndex:(unint64_t)index animated:(BOOL)animated;
- (void)layoutSubviews;
- (void)removeAllHeaderBlocksAnimated:(BOOL)animated;
- (void)removeConversationSearchOverlay;
- (void)removeHeaderBlock:(id)block animated:(BOOL)animated;
- (void)setBounds:(CGRect)bounds;
- (void)setDisplayMetrics:(id)metrics;
- (void)setMessageFlags:(unint64_t)flags conversationFlags:(unint64_t)conversationFlags;
- (void)setPinnedBlock:(id)block;
@end

@implementation MFMessageHeaderView

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__MFMessageHeaderView_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_6 != -1)
  {
    dispatch_once(&log_onceToken_6, block);
  }

  v2 = log_log_6;

  return v2;
}

void __26__MFMessageHeaderView_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_6;
  log_log_6 = v1;
}

- (MFMessageHeaderView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = MFMessageHeaderView;
  v3 = [(MFMessageHeaderView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(MFMessageHeaderView *)v3 setBackgroundColor:clearColor];

    [(MFMessageHeaderView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFMessageHeaderView *)v3 setPreservesSuperviewLayoutMargins:1];
    [(MFMessageHeaderView *)v3 setInsetsLayoutMarginsFromSafeArea:0];
    [(MFMessageHeaderView *)v3 setDistribution:0];
    [(MFMessageHeaderView *)v3 setAxis:1];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    headerBlocks = v3->_headerBlocks;
    v3->_headerBlocks = v5;

    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v3->_draggableArea.origin = *MEMORY[0x277CBF3A0];
    v3->_draggableArea.size = v7;
    v3->_hideTopSeparator = 1;
  }

  return v3;
}

- (ConversationSearchOverlayView)findOverlayView
{
  findOverlayView = self->_findOverlayView;
  if (!findOverlayView)
  {
    v4 = [ConversationSearchOverlayView alloc];
    [(MFMessageHeaderView *)self bounds];
    v5 = [(ConversationSearchOverlayView *)v4 initWithFrame:?];
    v6 = self->_findOverlayView;
    self->_findOverlayView = v5;

    [(MFMessageHeaderView *)self addSubview:self->_findOverlayView];
    findOverlayView = self->_findOverlayView;
  }

  return findOverlayView;
}

- (void)layoutSubviews
{
  displayMetrics = [(MFMessageHeaderView *)self displayMetrics];

  if (displayMetrics)
  {
    v13.receiver = self;
    v13.super_class = MFMessageHeaderView;
    [(MFMessageHeaderView *)&v13 layoutSubviews];
    [(MFMessageHeaderView *)self _updateSeparators];
    if (self->_findOverlayView)
    {
      [(MFMessageHeaderView *)self bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      findOverlayView = [(MFMessageHeaderView *)self findOverlayView];
      [findOverlayView setFrame:{v5, v7, v9, v11}];
    }

    [(MFMessageHeaderView *)self setDraggableArea:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(MFMessageHeaderView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v19.receiver = self;
  v19.super_class = MFMessageHeaderView;
  [(MFMessageHeaderView *)&v19 setBounds:x, y, width, height];
  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v16 = CGRectGetHeight(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v17 = v16 - CGRectGetHeight(v21);
  if (v17 < 0.0)
  {
    v17 = -v17;
  }

  if (v17 >= 2.22044605e-16)
  {
    delegate = [(MFMessageHeaderView *)self delegate];
    [delegate headerViewDidChangeHeight:self];
  }
}

- (void)drawRect:(CGRect)rect forViewPrintFormatter:(id)formatter
{
  v4 = [(MFMessageHeaderView *)self layer:formatter];
  [v4 renderInContext:UIGraphicsGetCurrentContext()];
}

- (CGRect)draggableArea
{
  p_draggableArea = &self->_draggableArea;
  if (CGRectIsEmpty(self->_draggableArea))
  {
    headerBlocks = [(MFMessageHeaderView *)self headerBlocks];
    v5 = [headerBlocks ef_firstObjectPassingTest:&__block_literal_global_8];

    if (v5)
    {
      bottomSeparator = [v5 bottomSeparator];
      [bottomSeparator frame];
      [(MFMessageHeaderView *)self convertRect:v5 fromView:?];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v23.origin.x = v8;
      v23.origin.y = v10;
      v23.size.width = v12;
      v23.size.height = v14;
      MaxY = CGRectGetMaxY(v23);
      [(MFMessageHeaderView *)self bounds];
      p_draggableArea->origin.x = v16;
      p_draggableArea->origin.y = v17;
      p_draggableArea->size.width = v18;
      p_draggableArea->size.height = MaxY - v17;
    }
  }

  x = p_draggableArea->origin.x;
  y = p_draggableArea->origin.y;
  width = p_draggableArea->size.width;
  height = p_draggableArea->size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)insertHeaderBlock:(id)block atIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  v32 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  headerBlocks = [(MFMessageHeaderView *)self headerBlocks];
  v10 = [headerBlocks containsObject:blockCopy];

  if ((v10 & 1) == 0)
  {
    _pinnedBlockIndex = [(MFMessageHeaderView *)self _pinnedBlockIndex];
    headerBlocks2 = [(MFMessageHeaderView *)self headerBlocks];
    if ([headerBlocks2 count] > index && (-[MFMessageHeaderView pinnedBlock](self, "pinnedBlock"), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      pinnedBlock = [(MFMessageHeaderView *)self pinnedBlock];

      if (_pinnedBlockIndex <= index && pinnedBlock != blockCopy)
      {
        index = _pinnedBlockIndex + 1;
      }
    }

    else
    {
    }

    [(NSMutableArray *)self->_headerBlocks insertObject:blockCopy atIndex:index];
    displayMetrics = [(MFMessageHeaderView *)self displayMetrics];
    [blockCopy setDisplayMetrics:displayMetrics];

    viewModel = [(MFMessageHeaderView *)self viewModel];

    if (viewModel)
    {
      viewModel2 = [(MFMessageHeaderView *)self viewModel];
      [blockCopy displayMessageUsingViewModel:viewModel2];
    }

    if (animatedCopy)
    {
      [(MFMessageHeaderView *)self insertSubview:blockCopy atIndex:0];
      v19 = [(MFMessageHeaderView *)self _animationConstraintsForBlockAtIndex:index];
      [MEMORY[0x277CCAAD0] activateConstraints:v19];
      [(MFMessageHeaderView *)self layoutIfNeeded];
      [MEMORY[0x277CCAAD0] deactivateConstraints:v19];
      [(MFMessageHeaderView *)self insertArrangedSubview:blockCopy atIndex:index];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __58__MFMessageHeaderView_insertHeaderBlock_atIndex_animated___block_invoke;
      v25[3] = &unk_2781816C0;
      v25[4] = self;
      [(MFMessageHeaderView *)self _layoutAnimatedBlock:v25 completion:0];
    }

    else
    {
      [(MFMessageHeaderView *)self insertArrangedSubview:blockCopy atIndex:index];
    }

    v20 = +[MFMessageHeaderView log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      viewModel3 = [(MFMessageHeaderView *)self viewModel];
      itemID = [viewModel3 itemID];
      *buf = 138412802;
      v27 = v21;
      v28 = 2048;
      v29 = blockCopy;
      v30 = 2114;
      v31 = itemID;
      _os_log_impl(&dword_2149C9000, v20, OS_LOG_TYPE_DEFAULT, "Inserting headerView block <%@: %p> for itemID: %{public}@", buf, 0x20u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)removeHeaderBlock:(id)block animated:(BOOL)animated
{
  animatedCopy = animated;
  blockCopy = block;
  headerBlocks = [(MFMessageHeaderView *)self headerBlocks];
  v8 = [headerBlocks containsObject:blockCopy];

  if (v8)
  {
    pinnedBlock = [(MFMessageHeaderView *)self pinnedBlock];

    if (pinnedBlock == blockCopy)
    {
      [(MFMessageHeaderView *)self setPinnedBlock:0];
    }

    if (animatedCopy)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __50__MFMessageHeaderView_removeHeaderBlock_animated___block_invoke;
      v12[3] = &unk_278181710;
      v12[4] = self;
      v13 = blockCopy;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __50__MFMessageHeaderView_removeHeaderBlock_animated___block_invoke_2;
      v10[3] = &unk_278181DE0;
      v10[4] = self;
      v11 = v13;
      [(MFMessageHeaderView *)self _layoutAnimatedBlock:v12 completion:v10];
    }

    else
    {
      [(NSMutableArray *)self->_headerBlocks removeObject:blockCopy];
      [(MFMessageHeaderView *)self removeArrangedSubview:blockCopy];
      [blockCopy removeFromSuperview];
    }
  }
}

uint64_t __50__MFMessageHeaderView_removeHeaderBlock_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeArrangedSubview:*(a1 + 40)];
  [*(a1 + 40) removeFromSuperview];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)removeAllHeaderBlocksAnimated:(BOOL)animated
{
  v15 = *MEMORY[0x277D85DE8];
  [(MFMessageHeaderView *)self setPinnedBlock:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  headerBlocks = [(MFMessageHeaderView *)self headerBlocks];
  v5 = [headerBlocks countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(headerBlocks);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 removeFromSuperview];
        [(MFMessageHeaderView *)self removeArrangedSubview:v8];
      }

      v5 = [headerBlocks countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_headerBlocks removeAllObjects];
  v9 = *MEMORY[0x277D85DE8];
}

void __48__MFMessageHeaderView_setHeaderBlocks_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v4[55] objectAtIndexedSubscript:{objc_msgSend(v3, "index")}];
  [v4 removeHeaderBlock:v5 animated:*(a1 + 40)];
}

- (void)setPinnedBlock:(id)block
{
  blockCopy = block;
  if (self->_pinnedBlock != blockCopy)
  {
    objc_storeStrong(&self->_pinnedBlock, block);
    if (self->_pinnedBlock)
    {
      headerBlocks = [(MFMessageHeaderView *)self headerBlocks];
      v7 = [headerBlocks indexOfObject:self->_pinnedBlock];

      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"MFMessageHeaderView.m" lineNumber:262 description:@"Blocks must be added to MFMessageHeaderViewBlock before they can be pinned."];
      }

      else if (v7 < 1)
      {
        goto LABEL_6;
      }

      [(NSMutableArray *)self->_headerBlocks removeObject:self->_pinnedBlock];
      [(MFMessageHeaderView *)self removeArrangedSubview:self->_pinnedBlock];
      [(NSMutableArray *)self->_headerBlocks insertObject:self->_pinnedBlock atIndex:0];
      [(MFMessageHeaderView *)self insertArrangedSubview:self->_pinnedBlock atIndex:0];
      [(MFMessageHeaderView *)self setNeedsLayout];
    }
  }

LABEL_6:
}

- (int64_t)_pinnedBlockIndex
{
  if (!self->_pinnedBlock)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  headerBlocks = [(MFMessageHeaderView *)self headerBlocks];
  v4 = [headerBlocks indexOfObject:self->_pinnedBlock];

  return v4;
}

- (id)_animationConstraintsForBlockAtIndex:(unint64_t)index
{
  v26[3] = *MEMORY[0x277D85DE8];
  if (index)
  {
    headerBlocks = [(MFMessageHeaderView *)self headerBlocks];
    v6 = [headerBlocks objectAtIndexedSubscript:index - 1];

    v25 = v6;
    [v6 bottomAnchor];
  }

  else
  {
    v25 = 0;
    [(MFMessageHeaderView *)self topAnchor];
  }
  v24 = ;
  headerBlocks2 = [(MFMessageHeaderView *)self headerBlocks];
  v8 = [headerBlocks2 objectAtIndexedSubscript:index];

  bottomAnchor = [v8 bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:v24];
  v26[0] = v9;
  leadingAnchor = [v8 leadingAnchor];
  leadingAnchor2 = [(MFMessageHeaderView *)self leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[1] = v12;
  trailingAnchor = [v8 trailingAnchor];
  trailingAnchor2 = [(MFMessageHeaderView *)self trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  v17 = [v16 mutableCopy];

  backgroundColor = [v25 backgroundColor];
  LOBYTE(trailingAnchor) = [backgroundColor mf_isTranslucent];

  if (trailingAnchor)
  {
    heightAnchor = [v8 heightAnchor];
    v20 = [heightAnchor constraintEqualToConstant:0.0];
    [v17 addObject:v20];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)displayMessageUsingViewModel:(id)model
{
  v25 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  viewModel = [(MFMessageHeaderView *)self viewModel];

  if (viewModel != modelCopy)
  {
    [(MFMessageHeaderView *)self setViewModel:modelCopy];
    v6 = +[MFMessageHeaderView log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      itemID = [modelCopy itemID];
      *buf = 138412802;
      v20 = v7;
      v21 = 2048;
      selfCopy = self;
      v23 = 2114;
      v24 = itemID;
      _os_log_impl(&dword_2149C9000, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> Setting up view model for itemID: %{public}@", buf, 0x20u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    headerBlocks = [(MFMessageHeaderView *)self headerBlocks];
    v10 = [headerBlocks countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(headerBlocks);
          }

          [*(*(&v14 + 1) + 8 * v12++) displayMessageUsingViewModel:modelCopy];
        }

        while (v10 != v12);
        v10 = [headerBlocks countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    [(MFMessageHeaderView *)self setNeedsLayout];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setMessageFlags:(unint64_t)flags conversationFlags:(unint64_t)conversationFlags
{
  viewModel = [(MFMessageHeaderView *)self viewModel];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__MFMessageHeaderView_setMessageFlags_conversationFlags___block_invoke;
  v9[3] = &__block_descriptor_48_e44_v16__0___MessageItemFlagsViewModelBuilder__8l;
  v9[4] = flags;
  v9[5] = conversationFlags;
  v8 = [viewModel updatedFlagsModelWithBuilder:v9];
  [(MFMessageHeaderView *)self setViewModel:v8];
}

void __57__MFMessageHeaderView_setMessageFlags_conversationFlags___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRead:*(a1 + 32) & 1];
  [v3 setFlagged:(*(a1 + 32) >> 4) & 1];
  [v3 setReplied:(*(a1 + 32) >> 2) & 1];
  [v3 setForwarded:(*(a1 + 32) >> 8) & 1];
  [v3 setRedirected:(*(a1 + 32) >> 9) & 1];
  [v3 setJunk:(*(a1 + 32) >> 21) & 1];
  [v3 setVIP:(*(a1 + 32) >> 24) & 1];
  [v3 setNotify:*(a1 + 40) & 1];
  [v3 setMute:(*(a1 + 40) >> 2) & 1];
}

- (void)setDisplayMetrics:(id)metrics
{
  v18 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  if (![(MFMessageDisplayMetrics *)self->_displayMetrics isEqual:metricsCopy])
  {
    objc_storeStrong(&self->_displayMetrics, metrics);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    headerBlocks = [(MFMessageHeaderView *)self headerBlocks];
    v7 = [headerBlocks countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(headerBlocks);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          displayMetrics = [(MFMessageHeaderView *)self displayMetrics];
          [v10 setDisplayMetrics:displayMetrics];

          ++v9;
        }

        while (v7 != v9);
        v7 = [headerBlocks countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [(MFMessageHeaderView *)self setNeedsUpdateConstraints];
    [(MFMessageHeaderView *)self setNeedsLayout];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateSeparators
{
  displayMetrics = [(MFMessageHeaderView *)self displayMetrics];
  if ([displayMetrics hasCompactLayout])
  {
    v4 = 0;
  }

  else
  {
    v4 = ![(MFMessageHeaderView *)self bottomSeparatorDrawsFlushWithLeadingEdge];
  }

  headerBlocks = [(MFMessageHeaderView *)self headerBlocks];
  lastObject = [headerBlocks lastObject];

  headerBlocks2 = [(MFMessageHeaderView *)self headerBlocks];
  v8 = [headerBlocks2 ef_firstObjectPassingTest:&__block_literal_global_44];

  if (v8)
  {
    headerBlocks3 = [(MFMessageHeaderView *)self headerBlocks];
    v10 = [headerBlocks3 indexOfObject:v8];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  headerBlocks4 = [(MFMessageHeaderView *)self headerBlocks];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__MFMessageHeaderView__updateSeparators__block_invoke_2;
  v13[3] = &unk_278182350;
  v13[4] = self;
  v12 = lastObject;
  v17 = v4;
  v15 = v18;
  v16 = v10;
  v14 = v12;
  [headerBlocks4 enumerateObjectsUsingBlock:v13];

  _Block_object_dispose(v18, 8);
}

uint64_t __40__MFMessageHeaderView__updateSeparators__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __40__MFMessageHeaderView__updateSeparators__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = a2;
  v5 = [*(a1 + 32) displayMetrics];
  v6 = [v5 prefersFlushSeparator];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v25;
  if (*(a1 + 40) == v25)
  {
    v11 = *(a1 + 64);
  }

  else
  {
    v9 = isKindOfClass;
    v10 = [*(a1 + 32) pinnedBlock];

    v8 = v25;
    if (v10 == v25)
    {
      v12 = [*(a1 + 32) headerBlocks];
      v13 = [v12 objectAtIndexedSubscript:a3 + 1];

      v14 = [*(a1 + 32) _blockHasWhiteOrClearBackground:v13];
      v11 = v14;
      if (!(v14 & 1 | ((v9 & 1) == 0)))
      {
        v11 = __40__MFMessageHeaderView__updateSeparators__block_invoke_3(v14, v13);
      }

      v6 = 1;
      v8 = v25;
    }

    else
    {
      v11 = 0;
    }
  }

  if (*(a1 + 56) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [*(a1 + 32) headerBlocks];
    v16 = [v15 indexOfObject:v25];

    v17 = [*(a1 + 32) headerBlocks];
    v18 = [v17 indexOfObject:v25];

    v19 = [*(a1 + 32) headerBlocks];
    v20 = [v19 indexOfObject:v25];

    v8 = v25;
    if (v16 == v18 + 1 || v16 == v20 - 1 || v16 == *(a1 + 56))
    {
      v11 = 1;
    }
  }

  v21 = __40__MFMessageHeaderView__updateSeparators__block_invoke_3(isKindOfClass, v8);
  v22 = MUISolariumFeatureEnabled();
  if (!(v21 & 1 | ((v22 & 1) == 0)))
  {
    v22 = *(*(*(a1 + 48) + 8) + 24);
  }

  v23 = [*(a1 + 32) hideTopSeparator] | v22;
  if ((v23 & 1) != 0 || !a3)
  {
    [v25 setTopSeparatorHidden:v23 & 1];
  }

  [v25 setBottomSeparatorIsHidden:v11 & 1];
  [v25 setSeparatorDrawsFlushWithTrailingEdge:v6];
  v24 = [*(a1 + 32) displayMetrics];
  [v25 setSeparatorDrawsFlushWithLeadingEdge:{objc_msgSend(v24, "prefersFlushSeparatorForLeadingEdge")}];

  *(*(*(a1 + 48) + 8) + 24) = v21;
}

uint64_t __40__MFMessageHeaderView__updateSeparators__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)addConversationSearchOverlay
{
  findOverlayView = [(MFMessageHeaderView *)self findOverlayView];
  [(MFMessageHeaderView *)self bringSubviewToFront:?];

  findOverlayView2 = [(MFMessageHeaderView *)self findOverlayView];
  [findOverlayView2 show];
}

- (void)removeConversationSearchOverlay
{
  findOverlayView = [(MFMessageHeaderView *)self findOverlayView];
  [findOverlayView hide];

  findOverlayView2 = [(MFMessageHeaderView *)self findOverlayView];
  [(MFMessageHeaderView *)self sendSubviewToBack:?];
}

- (MFMessageHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end