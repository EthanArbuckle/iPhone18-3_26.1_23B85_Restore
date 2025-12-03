@interface HUQuickControlButtonRowView
- (BOOL)hasCenteredContent;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (HUQuickControlButtonRowView)initWithButtonViews:(id)views;
- (void)_clearButtonConstraints;
- (void)addButtonView:(id)view;
- (void)insertButtonView:(id)view atIndex:(unint64_t)index;
- (void)removeButtonView:(id)view;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setPreferredContentAlignment:(int64_t)alignment;
- (void)updateConstraints;
@end

@implementation HUQuickControlButtonRowView

- (void)setPreferredContentAlignment:(int64_t)alignment
{
  if (self->_preferredContentAlignment != alignment)
  {
    self->_preferredContentAlignment = alignment;
    buttonViews = [(HUQuickControlButtonRowView *)self buttonViews];
    v5 = [buttonViews count];

    if (v5 == 1)
    {

      [(HUQuickControlButtonRowView *)self _clearButtonConstraints];
    }
  }
}

- (HUQuickControlButtonRowView)initWithButtonViews:(id)views
{
  v23 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  v21.receiver = self;
  v21.super_class = HUQuickControlButtonRowView;
  v5 = [(HUQuickControlButtonRowView *)&v21 init];
  v6 = v5;
  if (v5)
  {
    v5->_preferredContentAlignment = 3;
    v7 = objc_alloc_init(MEMORY[0x277D759D8]);
    scrollView = v6->_scrollView;
    v6->_scrollView = v7;

    [(UIScrollView *)v6->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)v6->_scrollView setAlwaysBounceHorizontal:1];
    [(UIScrollView *)v6->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v6->_scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v6->_scrollView setDelaysContentTouches:1];
    [(HUQuickControlButtonRowView *)v6 addSubview:v6->_scrollView];
    v9 = objc_opt_new();
    [(HUQuickControlButtonRowView *)v6 setMutableButtonViews:v9];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = viewsCopy;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(HUQuickControlButtonRowView *)v6 addButtonView:*(*(&v17 + 1) + 8 * v14++), v17];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];
  }

  return v6;
}

- (void)addButtonView:(id)view
{
  viewCopy = view;
  mutableButtonViews = [(HUQuickControlButtonRowView *)self mutableButtonViews];
  -[HUQuickControlButtonRowView insertButtonView:atIndex:](self, "insertButtonView:atIndex:", viewCopy, [mutableButtonViews count]);
}

- (void)insertButtonView:(id)view atIndex:(unint64_t)index
{
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  mutableButtonViews = [(HUQuickControlButtonRowView *)self mutableButtonViews];
  [mutableButtonViews insertObject:viewCopy atIndex:index];

  scrollView = [(HUQuickControlButtonRowView *)self scrollView];
  [scrollView addSubview:viewCopy];

  [(HUQuickControlButtonRowView *)self _clearButtonConstraints];
}

- (void)removeButtonView:(id)view
{
  viewCopy = view;
  [viewCopy removeFromSuperview];
  mutableButtonViews = [(HUQuickControlButtonRowView *)self mutableButtonViews];
  [mutableButtonViews removeObject:viewCopy];

  [(HUQuickControlButtonRowView *)self _clearButtonConstraints];
}

- (void)updateConstraints
{
  v4 = objc_opt_new();
  scrollView = [(HUQuickControlButtonRowView *)self scrollView];
  topAnchor = [scrollView topAnchor];
  topAnchor2 = [(HUQuickControlButtonRowView *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v4 addObject:v8];

  scrollView2 = [(HUQuickControlButtonRowView *)self scrollView];
  bottomAnchor = [scrollView2 bottomAnchor];
  bottomAnchor2 = [(HUQuickControlButtonRowView *)self bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v4 addObject:v12];

  scrollView3 = [(HUQuickControlButtonRowView *)self scrollView];
  leadingAnchor = [scrollView3 leadingAnchor];
  leadingAnchor2 = [(HUQuickControlButtonRowView *)self leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v4 addObject:v16];

  scrollView4 = [(HUQuickControlButtonRowView *)self scrollView];
  trailingAnchor = [scrollView4 trailingAnchor];
  trailingAnchor2 = [(HUQuickControlButtonRowView *)self trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v4 addObject:v20];

  buttonViews = [(HUQuickControlButtonRowView *)self buttonViews];
  v22 = [buttonViews count];

  buttonViews2 = [(HUQuickControlButtonRowView *)self buttonViews];
  v24 = buttonViews2;
  if (v22 == 1)
  {
    firstObject = [buttonViews2 firstObject];

    widthAnchor = [firstObject widthAnchor];
    widthAnchor2 = [(HUQuickControlButtonRowView *)self widthAnchor];
    v28 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    [v4 addObject:v28];

    topAnchor3 = [firstObject topAnchor];
    topAnchor4 = [(HUQuickControlButtonRowView *)self topAnchor];
    v31 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [v4 addObject:v31];

    bottomAnchor3 = [firstObject bottomAnchor];
    bottomAnchor4 = [(HUQuickControlButtonRowView *)self bottomAnchor];
    v34 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [v4 addObject:v34];

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __48__HUQuickControlButtonRowView_updateConstraints__block_invoke;
    v44[3] = &unk_277DBF9E0;
    v44[4] = self;
    v45 = firstObject;
    v46 = a2;
    v35 = firstObject;
    v36 = __48__HUQuickControlButtonRowView_updateConstraints__block_invoke(v44);
    [v4 addObject:v36];
  }

  else
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __48__HUQuickControlButtonRowView_updateConstraints__block_invoke_2;
    v41[3] = &unk_277DBFA08;
    v42 = v4;
    selfCopy = self;
    [v24 enumerateObjectsUsingBlock:v41];

    v35 = v42;
  }

  scrollView5 = [(HUQuickControlButtonRowView *)self scrollView];
  heightAnchor = [scrollView5 heightAnchor];
  v39 = [heightAnchor constraintEqualToConstant:30.0];
  [v4 addObject:v39];

  [MEMORY[0x277CCAAD0] activateConstraints:v4];
  [(HUQuickControlButtonRowView *)self setButtonConstraints:v4];
  v40.receiver = self;
  v40.super_class = HUQuickControlButtonRowView;
  [(HUQuickControlButtonRowView *)&v40 updateConstraints];
}

id __48__HUQuickControlButtonRowView_updateConstraints__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) preferredContentAlignment];
  if (v2 == 4)
  {
    v3 = [*(a1 + 40) trailingAnchor];
    v4 = [*(a1 + 32) trailingAnchor];
  }

  else
  {
    if (v2 != 3)
    {
      if (v2 == 1)
      {
        v3 = [*(a1 + 40) leadingAnchor];
        v4 = [*(a1 + 32) leadingAnchor];
        goto LABEL_8;
      }

      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "preferredContentAlignment")}];
      [v5 handleFailureInMethod:v6 object:v7 file:@"HUQuickControlButtonRowView.m" lineNumber:116 description:{@"Unsupported alignment %@", v8}];
    }

    v3 = [*(a1 + 40) centerXAnchor];
    v4 = [*(a1 + 32) centerXAnchor];
  }

LABEL_8:
  v9 = v4;
  v10 = [v3 constraintEqualToAnchor:v4];

  return v10;
}

void __48__HUQuickControlButtonRowView_updateConstraints__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v30 = v5;
  if (a3)
  {
    v6 = [*(a1 + 40) buttonViews];
    v7 = [v6 count] - 1;

    v8 = [*(a1 + 40) buttonViews];
    v9 = [v8 objectAtIndexedSubscript:a3 - 1];

    v10 = *(a1 + 32);
    v11 = [v30 leadingAnchor];
    v12 = [v9 trailingAnchor];
    v13 = [v11 constraintGreaterThanOrEqualToAnchor:v12 constant:16.0];
    [v10 addObject:v13];

    if (v7 != a3)
    {
      goto LABEL_6;
    }

    v14 = *(a1 + 32);
    v15 = [v30 trailingAnchor];
    v16 = [*(a1 + 40) scrollView];
    v17 = [v16 trailingAnchor];
    v18 = [v15 constraintGreaterThanOrEqualToAnchor:v17 constant:-16.0];
    [v14 addObject:v18];
  }

  else
  {
    v19 = *(a1 + 32);
    v9 = [v5 leadingAnchor];
    v15 = [*(a1 + 40) scrollView];
    v16 = [v15 leadingAnchor];
    v17 = [v9 constraintEqualToAnchor:v16 constant:16.0];
    [v19 addObject:v17];
  }

LABEL_6:
  v20 = *(a1 + 32);
  v21 = [v30 topAnchor];
  v22 = [*(a1 + 40) scrollView];
  v23 = [v22 topAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  [v20 addObject:v24];

  v25 = *(a1 + 32);
  v26 = [v30 bottomAnchor];
  v27 = [*(a1 + 40) scrollView];
  v28 = [v27 bottomAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  [v25 addObject:v29];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  buttonViews = [(HUQuickControlButtonRowView *)self buttonViews];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HUQuickControlButtonRowView_pointInside_withEvent___block_invoke;
  v9[3] = &unk_277DBFA30;
  v9[4] = selfCopy;
  *&v9[5] = x;
  *&v9[6] = y;
  LOBYTE(selfCopy) = [buttonViews na_any:v9];

  return selfCopy;
}

uint64_t __53__HUQuickControlButtonRowView_pointInside_withEvent___block_invoke(double *a1, void *a2)
{
  v2 = *(a1 + 4);
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  [v2 convertPoint:v5 toView:{v3, v4}];
  v6 = [v5 pointInside:0 withEvent:?];

  return v6;
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = HUQuickControlButtonRowView;
  [(HUQuickControlButtonRowView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(HUQuickControlButtonRowView *)self _updateLayoutIfNecessary];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = HUQuickControlButtonRowView;
  [(HUQuickControlButtonRowView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(HUQuickControlButtonRowView *)self _updateLayoutIfNecessary];
}

- (BOOL)hasCenteredContent
{
  buttonViews = [(HUQuickControlButtonRowView *)self buttonViews];
  v4 = [buttonViews count];

  if (v4 == 1)
  {
    return [(HUQuickControlButtonRowView *)self preferredContentAlignment]== 3;
  }

  buttonViews2 = [(HUQuickControlButtonRowView *)self buttonViews];
  v5 = [buttonViews2 count] > 2;

  return v5;
}

- (void)_clearButtonConstraints
{
  buttonConstraints = [(HUQuickControlButtonRowView *)self buttonConstraints];

  if (buttonConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    buttonConstraints2 = [(HUQuickControlButtonRowView *)self buttonConstraints];
    [v4 deactivateConstraints:buttonConstraints2];

    [(HUQuickControlButtonRowView *)self setButtonConstraints:0];
  }

  [(HUQuickControlButtonRowView *)self setNeedsUpdateConstraints];
}

@end