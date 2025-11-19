@interface HUQuickControlButtonRowView
- (BOOL)hasCenteredContent;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (HUQuickControlButtonRowView)initWithButtonViews:(id)a3;
- (void)_clearButtonConstraints;
- (void)addButtonView:(id)a3;
- (void)insertButtonView:(id)a3 atIndex:(unint64_t)a4;
- (void)removeButtonView:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPreferredContentAlignment:(int64_t)a3;
- (void)updateConstraints;
@end

@implementation HUQuickControlButtonRowView

- (void)setPreferredContentAlignment:(int64_t)a3
{
  if (self->_preferredContentAlignment != a3)
  {
    self->_preferredContentAlignment = a3;
    v4 = [(HUQuickControlButtonRowView *)self buttonViews];
    v5 = [v4 count];

    if (v5 == 1)
    {

      [(HUQuickControlButtonRowView *)self _clearButtonConstraints];
    }
  }
}

- (HUQuickControlButtonRowView)initWithButtonViews:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v10 = v4;
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

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v6 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];
  }

  return v6;
}

- (void)addButtonView:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlButtonRowView *)self mutableButtonViews];
  -[HUQuickControlButtonRowView insertButtonView:atIndex:](self, "insertButtonView:atIndex:", v4, [v5 count]);
}

- (void)insertButtonView:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(HUQuickControlButtonRowView *)self mutableButtonViews];
  [v7 insertObject:v6 atIndex:a4];

  v8 = [(HUQuickControlButtonRowView *)self scrollView];
  [v8 addSubview:v6];

  [(HUQuickControlButtonRowView *)self _clearButtonConstraints];
}

- (void)removeButtonView:(id)a3
{
  v4 = a3;
  [v4 removeFromSuperview];
  v5 = [(HUQuickControlButtonRowView *)self mutableButtonViews];
  [v5 removeObject:v4];

  [(HUQuickControlButtonRowView *)self _clearButtonConstraints];
}

- (void)updateConstraints
{
  v4 = objc_opt_new();
  v5 = [(HUQuickControlButtonRowView *)self scrollView];
  v6 = [v5 topAnchor];
  v7 = [(HUQuickControlButtonRowView *)self topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v4 addObject:v8];

  v9 = [(HUQuickControlButtonRowView *)self scrollView];
  v10 = [v9 bottomAnchor];
  v11 = [(HUQuickControlButtonRowView *)self bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v4 addObject:v12];

  v13 = [(HUQuickControlButtonRowView *)self scrollView];
  v14 = [v13 leadingAnchor];
  v15 = [(HUQuickControlButtonRowView *)self leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v4 addObject:v16];

  v17 = [(HUQuickControlButtonRowView *)self scrollView];
  v18 = [v17 trailingAnchor];
  v19 = [(HUQuickControlButtonRowView *)self trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v4 addObject:v20];

  v21 = [(HUQuickControlButtonRowView *)self buttonViews];
  v22 = [v21 count];

  v23 = [(HUQuickControlButtonRowView *)self buttonViews];
  v24 = v23;
  if (v22 == 1)
  {
    v25 = [v23 firstObject];

    v26 = [v25 widthAnchor];
    v27 = [(HUQuickControlButtonRowView *)self widthAnchor];
    v28 = [v26 constraintLessThanOrEqualToAnchor:v27];
    [v4 addObject:v28];

    v29 = [v25 topAnchor];
    v30 = [(HUQuickControlButtonRowView *)self topAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [v4 addObject:v31];

    v32 = [v25 bottomAnchor];
    v33 = [(HUQuickControlButtonRowView *)self bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v4 addObject:v34];

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __48__HUQuickControlButtonRowView_updateConstraints__block_invoke;
    v44[3] = &unk_277DBF9E0;
    v44[4] = self;
    v45 = v25;
    v46 = a2;
    v35 = v25;
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
    v43 = self;
    [v24 enumerateObjectsUsingBlock:v41];

    v35 = v42;
  }

  v37 = [(HUQuickControlButtonRowView *)self scrollView];
  v38 = [v37 heightAnchor];
  v39 = [v38 constraintEqualToConstant:30.0];
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  v7 = [(HUQuickControlButtonRowView *)self buttonViews];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HUQuickControlButtonRowView_pointInside_withEvent___block_invoke;
  v9[3] = &unk_277DBFA30;
  v9[4] = v6;
  *&v9[5] = x;
  *&v9[6] = y;
  LOBYTE(v6) = [v7 na_any:v9];

  return v6;
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

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = HUQuickControlButtonRowView;
  [(HUQuickControlButtonRowView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(HUQuickControlButtonRowView *)self _updateLayoutIfNecessary];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = HUQuickControlButtonRowView;
  [(HUQuickControlButtonRowView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(HUQuickControlButtonRowView *)self _updateLayoutIfNecessary];
}

- (BOOL)hasCenteredContent
{
  v3 = [(HUQuickControlButtonRowView *)self buttonViews];
  v4 = [v3 count];

  if (v4 == 1)
  {
    return [(HUQuickControlButtonRowView *)self preferredContentAlignment]== 3;
  }

  v6 = [(HUQuickControlButtonRowView *)self buttonViews];
  v5 = [v6 count] > 2;

  return v5;
}

- (void)_clearButtonConstraints
{
  v3 = [(HUQuickControlButtonRowView *)self buttonConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(HUQuickControlButtonRowView *)self buttonConstraints];
    [v4 deactivateConstraints:v5];

    [(HUQuickControlButtonRowView *)self setButtonConstraints:0];
  }

  [(HUQuickControlButtonRowView *)self setNeedsUpdateConstraints];
}

@end