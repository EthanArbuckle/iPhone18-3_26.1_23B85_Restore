@interface HUActivityLoadingView
+ (id)watchedKeyPaths;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HUActivityLoadingView)initWithFrame:(CGRect)a3 activityIndicatorStyle:(int64_t)a4;
- (void)_watchLabelsForContentAndResizeIfNecessary;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation HUActivityLoadingView

- (HUActivityLoadingView)initWithFrame:(CGRect)a3 activityIndicatorStyle:(int64_t)a4
{
  v45[2] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = HUActivityLoadingView;
  v5 = [(HUActivityLoadingView *)&v43 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    textLabel = v5->_textLabel;
    v5->_textLabel = v6;

    v8 = v5->_textLabel;
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v8 setFont:v9];

    v10 = v5->_textLabel;
    v11 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v10 setBackgroundColor:v11];

    v12 = v5->_textLabel;
    v13 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v12 setTextColor:v13];

    [(UILabel *)v5->_textLabel setLineBreakMode:0];
    v14 = objc_alloc_init(MEMORY[0x277D756B8]);
    detailTextLabel = v5->_detailTextLabel;
    v5->_detailTextLabel = v14;

    v16 = v5->_detailTextLabel;
    v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v16 setFont:v17];

    v18 = v5->_detailTextLabel;
    v19 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v18 setBackgroundColor:v19];

    v20 = v5->_detailTextLabel;
    v21 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v20 setTextColor:v21];

    [(UILabel *)v5->_detailTextLabel setNumberOfLines:0];
    [(UILabel *)v5->_detailTextLabel setLineBreakMode:0];
    v22 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:a4];
    activityIndicatorView = v5->_activityIndicatorView;
    v5->_activityIndicatorView = v22;

    [(UIActivityIndicatorView *)v5->_activityIndicatorView startAnimating];
    v24 = objc_alloc(MEMORY[0x277D75A68]);
    v45[0] = v5->_activityIndicatorView;
    v45[1] = v5->_textLabel;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v26 = [v24 initWithArrangedSubviews:v25];
    titleSpinnerStackView = v5->_titleSpinnerStackView;
    v5->_titleSpinnerStackView = v26;

    [(UIStackView *)v5->_titleSpinnerStackView setAxis:0];
    [(UIStackView *)v5->_titleSpinnerStackView setAlignment:3];
    [(UIStackView *)v5->_titleSpinnerStackView setSpacing:8.0];
    v28 = objc_alloc(MEMORY[0x277D75A68]);
    v44[0] = v5->_titleSpinnerStackView;
    v44[1] = v5->_detailTextLabel;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v30 = [v28 initWithArrangedSubviews:v29];
    mainStackView = v5->_mainStackView;
    v5->_mainStackView = v30;

    [(UIStackView *)v5->_mainStackView setAxis:1];
    [(UIStackView *)v5->_mainStackView setAlignment:3];
    [(UIStackView *)v5->_mainStackView setSpacing:4.0];
    [(UIStackView *)v5->_mainStackView setAutoresizingMask:18];
    [(HUActivityLoadingView *)v5 addSubview:v5->_mainStackView];
    v32 = [(HUActivityLoadingView *)v5 mainStackView];
    v33 = [v32 heightAnchor];
    v34 = [(HUActivityLoadingView *)v5 activityIndicatorView];
    v35 = [v34 heightAnchor];
    v36 = [v33 constraintGreaterThanOrEqualToAnchor:v35];
    [v36 setActive:1];

    v37 = [(HUActivityLoadingView *)v5 mainStackView];
    v38 = [v37 widthAnchor];
    v39 = [(HUActivityLoadingView *)v5 activityIndicatorView];
    v40 = [v39 widthAnchor];
    v41 = [v38 constraintGreaterThanOrEqualToAnchor:v40];
    [v41 setActive:1];

    [(HUActivityLoadingView *)v5 bounds];
    [(UIStackView *)v5->_mainStackView setFrame:?];
    [(HUActivityLoadingView *)v5 _watchLabelsForContentAndResizeIfNecessary];
  }

  return v5;
}

- (void)dealloc
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(HUActivityLoadingView *)self textLabel];
  v26[0] = v3;
  v4 = [(HUActivityLoadingView *)self detailTextLabel];
  v26[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

  v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = [objc_opt_class() watchedKeyPaths];
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v18;
          do
          {
            v15 = 0;
            do
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v10 removeObserver:self forKeyPath:*(*(&v17 + 1) + 8 * v15++)];
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }

  v16.receiver = self;
  v16.super_class = HUActivityLoadingView;
  [(HUActivityLoadingView *)&v16 dealloc];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = [(HUActivityLoadingView *)self mainStackView];
  *&v10 = a4;
  *&v11 = a5;
  [v9 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(HUActivityLoadingView *)self mainStackView];
  [v2 systemLayoutSizeFittingSize:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_watchLabelsForContentAndResizeIfNecessary
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [(HUActivityLoadingView *)self textLabel];
  v25[0] = v3;
  v4 = [(HUActivityLoadingView *)self detailTextLabel];
  v25[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = [objc_opt_class() watchedKeyPaths];
        v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v17;
          do
          {
            v15 = 0;
            do
            {
              if (*v17 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v10 addObserver:self forKeyPath:*(*(&v16 + 1) + 8 * v15++) options:1 context:0];
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [(HUActivityLoadingView *)self textLabel];
  if (v14 != v12)
  {
    v15 = [(HUActivityLoadingView *)self detailTextLabel];
    v6 = v15;
    if (v15 != v12)
    {

LABEL_8:
      v18.receiver = self;
      v18.super_class = HUActivityLoadingView;
      [(HUActivityLoadingView *)&v18 observeValueForKeyPath:v11 ofObject:v12 change:v13 context:a6];
      goto LABEL_9;
    }
  }

  v16 = [objc_opt_class() watchedKeyPaths];
  v17 = [v16 containsObject:v11];

  if (v14 == v12)
  {

    if (!v17)
    {
      goto LABEL_8;
    }
  }

  else
  {

    if ((v17 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  [v12 invalidateIntrinsicContentSize];
  [(HUActivityLoadingView *)self invalidateIntrinsicContentSize];
  [(HUActivityLoadingView *)self setNeedsUpdateConstraints];
LABEL_9:
}

+ (id)watchedKeyPaths
{
  if (_MergedGlobals_2_0 != -1)
  {
    dispatch_once(&_MergedGlobals_2_0, &__block_literal_global_12);
  }

  v3 = qword_27C837FC0;

  return v3;
}

void __40__HUActivityLoadingView_watchedKeyPaths__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"text", @"attributedText", @"font", @"numberOfLines", @"preferredMaxLayoutWidth", @"adjustsFontSizeToFitWidth", 0}];
  v1 = qword_27C837FC0;
  qword_27C837FC0 = v0;
}

@end