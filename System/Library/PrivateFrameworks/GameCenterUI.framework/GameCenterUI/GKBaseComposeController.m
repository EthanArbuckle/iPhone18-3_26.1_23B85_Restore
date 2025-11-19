@interface GKBaseComposeController
- (CGRect)lastKnownKeyboardFrame;
- (GKBaseComposeController)init;
- (UIEdgeInsets)margins;
- (id)viewMetricsForContainerView:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_adjustContentInsetForShowingKeyboard:(BOOL)a3;
- (void)_scrollSelectedTextToVisible;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)keyboardWillHideShow:(id)a3;
- (void)loadView;
- (void)setComposeHeaderFields:(id)a3;
- (void)setMessageFieldText:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GKBaseComposeController

- (GKBaseComposeController)init
{
  v28[1] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = GKBaseComposeController;
  v2 = [(GKLoadableContentViewController *)&v27 init];
  v3 = v2;
  if (v2)
  {
    [(GKBaseComposeController *)v2 setShowHeaderFieldContainer:1];
    v4 = objc_alloc_init(MEMORY[0x277D759D8]);
    v5 = [MEMORY[0x277D0C868] sharedPalette];
    [v4 setBounces:1];
    [v4 setAlwaysBounceVertical:1];
    [v4 setContentSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_alloc(MEMORY[0x277D75D18]);
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
    contentView = v3->_contentView;
    v3->_contentView = v11;

    [(UIView *)v3->_contentView setBackgroundColor:0];
    [(UIView *)v3->_contentView setOpaque:0];
    [(UIView *)v3->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addSubview:v3->_contentView];
    objc_storeStrong(&v3->_backgroundView, v4);
    v13 = [[GKTextView alloc] initWithFrame:v7, v8, v9, v10];
    [(GKTextView *)v13 setDelegate:v3];
    [(GKTextView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKTextView *)v13 setBackgroundColor:0];
    [(GKTextView *)v13 setOpaque:0];
    [(GKTextView *)v13 setScrollEnabled:0];
    v14 = [MEMORY[0x277D0C8B0] textStyle];
    v15 = [v14 composeMessage];
    v16 = [v15 emphasized];
    [(GKTextView *)v13 applyTextStyle:v16];

    [(UIView *)v3->_contentView addSubview:v13];
    objc_storeStrong(&v3->_messageField, v13);
    LODWORD(v17) = 1148846080;
    [(GKTextView *)v3->_messageField setContentCompressionResistancePriority:1 forAxis:v17];
    v18 = [GKContiguousContainerView containerViewForViews:0 overlap:1 vertical:0.0];
    headerFieldContainer = v3->_headerFieldContainer;
    v3->_headerFieldContainer = v18;

    [(UIView *)v3->_contentView addSubview:v3->_headerFieldContainer];
    [(GKBaseComposeController *)v3 setIntendedFirstResponder:v13];
    v20 = [MEMORY[0x277D75418] currentDevice];
    v21 = [v20 userInterfaceIdiom];

    if (v21 == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
    {
      [v4 setOpaque:0];
      [v4 setBackgroundColor:0];
    }

    else
    {
      [v4 setOpaque:1];
      v22 = [v5 viewBackgroundColor];
      [v4 setBackgroundColor:v22];
    }

    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 addObserver:v3 selector:sel_keyboardWillHideShow_ name:*MEMORY[0x277D76C60] object:0];

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 addObserver:v3 selector:sel_keyboardWillHideShow_ name:*MEMORY[0x277D76C50] object:0];

    v28[0] = v3->_backgroundView;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    [(GKLoadableContentViewController *)v3 setViewsToHideWhileLoading:v25];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKBaseComposeController;
  [(GKBaseComposeController *)&v4 dealloc];
}

- (void)setComposeHeaderFields:(id)a3
{
  v5 = a3;
  if (self->_composeHeaderFields != v5)
  {
    v7 = v5;
    v6 = [(GKBaseComposeController *)self headerFieldContainer];
    [v6 replaceSubviews:v7];
    objc_storeStrong(&self->_composeHeaderFields, a3);

    v5 = v7;
  }
}

- (void)_adjustContentInsetForShowingKeyboard:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 1)
  {
    scrollContentInsetAdjustY = self->_scrollContentInsetAdjustY;
    if (v3)
    {
      if (scrollContentInsetAdjustY > 0.0)
      {
        [(GKBaseComposeController *)self _adjustContentInsetForShowingKeyboard:0];
      }

      [(UIScrollView *)self->_backgroundView contentInset];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      height = self->_lastKnownKeyboardFrame.size.height;
      self->_scrollContentInsetAdjustY = height;
      v16 = v15 + height;
      [(UIScrollView *)self->_backgroundView setContentInset:v9];
      [(UIScrollView *)self->_backgroundView setScrollIndicatorInsets:v9, v11, v16, v13];
      scrollContentInsetAdjustY = self->_scrollContentInsetAdjustY;
    }

    else if (scrollContentInsetAdjustY > 0.0)
    {
      [(UIScrollView *)self->_backgroundView contentInset];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23 - self->_scrollContentInsetAdjustY;
      [(UIScrollView *)self->_backgroundView setContentInset:v17];
      [(UIScrollView *)self->_backgroundView setScrollIndicatorInsets:v18, v20, v24, v22];
      self->_scrollContentInsetAdjustY = 0.0;
      scrollContentInsetAdjustY = 0.0;
    }

    v25 = -scrollContentInsetAdjustY;
    contentHeightConstraint = self->_contentHeightConstraint;

    [(NSLayoutConstraint *)contentHeightConstraint setConstant:v25];
  }
}

- (void)keyboardWillHideShow:(id)a3
{
  v18 = a3;
  v4 = [v18 name];
  v5 = [v4 isEqual:*MEMORY[0x277D76C60]];

  if (v5)
  {
    v6 = [(GKBaseComposeController *)self view];
    v7 = [v6 window];
    v8 = [v18 userInfo];
    v9 = [v8 objectForKey:*MEMORY[0x277D76BB8]];
    [v9 CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [v7 convertRect:0 fromWindow:{v11, v13, v15, v17}];
    [v6 convertRect:0 fromView:?];
    [(GKBaseComposeController *)self setLastKnownKeyboardFrame:?];
  }

  [(GKBaseComposeController *)self _adjustContentInsetForShowingKeyboard:v5];
}

- (id)viewMetricsForContainerView:(id)a3
{
  v10[5] = *MEMORY[0x277D85DE8];
  [a3 frame];
  v4 = v3;
  v10[0] = &unk_2861892A0;
  v9[0] = @"headerLeftMargin";
  v9[1] = @"headerWidth";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:v3 + -15.0];
  v10[1] = v5;
  v10[2] = &unk_2861892B8;
  v9[2] = @"bodyLeftMargin";
  v9[3] = @"bodyRightMargin";
  v10[3] = &unk_2861892B8;
  v9[4] = @"bodyWidth";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4 + -20.0];
  v10[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

- (void)loadView
{
  v32[4] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = GKBaseComposeController;
  [(GKViewController *)&v30 loadView];
  v3 = [(GKBaseComposeController *)self view];
  v4 = [MEMORY[0x277D0C868] sharedPalette];
  v5 = v4;
  if (*MEMORY[0x277D0C258])
  {
    [v4 viewBackgroundColor];
  }

  else
  {
    [v4 windowBackgroundColor];
  }
  v6 = ;
  [v3 setBackgroundColor:v6];

  [v3 addSubview:self->_backgroundView];
  backgroundView = self->_backgroundView;
  v31[0] = @"scroll";
  v31[1] = @"content";
  contentView = self->_contentView;
  v32[0] = backgroundView;
  v32[1] = contentView;
  headerFieldContainer = self->_headerFieldContainer;
  v31[2] = @"header";
  v31[3] = @"message";
  messageField = self->_messageField;
  v32[2] = headerFieldContainer;
  v32[3] = messageField;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
  v12 = self->_contentView;
  v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|[message]" options:0 metrics:0 views:v11];
  [(UIView *)v12 addConstraints:v13];

  if ([(GKBaseComposeController *)self showHeaderFieldContainer])
  {
    v14 = self->_contentView;
    v15 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|[header]|" options:0 metrics:0 views:v11];
    [(UIView *)v14 addConstraints:v15];

    v16 = self->_contentView;
    v17 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[header]-16-[message]|" options:0 metrics:0 views:v11];
    [(UIView *)v16 addConstraints:v17];
  }

  v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|[scroll]|" options:0 metrics:0 views:v11];
  [v3 addConstraints:v18];

  v19 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[scroll]|" options:0 metrics:0 views:v11];
  [v3 addConstraints:v19];

  v20 = self->_backgroundView;
  v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[content]|" options:0 metrics:0 views:v11];
  [(UIScrollView *)v20 addConstraints:v21];

  v22 = self->_backgroundView;
  v23 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_contentView attribute:6 relatedBy:0 toItem:v22 attribute:6 multiplier:1.0 constant:0.0];
  [(UIScrollView *)v22 addConstraint:v23];

  v24 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_contentView attribute:6 relatedBy:0 toItem:v3 attribute:6 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v24];

  v25 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_contentView attribute:8 relatedBy:1 toItem:v3 attribute:8 multiplier:1.0 constant:0.0];
  [(GKBaseComposeController *)self setContentHeightConstraint:v25];

  [v3 addConstraint:self->_contentHeightConstraint];
  if (*MEMORY[0x277D0C258])
  {
    v26 = 5;
  }

  else
  {
    v26 = 17;
  }

  if (*MEMORY[0x277D0C258])
  {
    v27 = 6;
  }

  else
  {
    v27 = 18;
  }

  v28 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_contentView attribute:5 relatedBy:0 toItem:v3 attribute:v26 multiplier:1.0 constant:0.0];
  [(GKBaseComposeController *)self setContentLeadingConstraint:v28];

  v29 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_messageField attribute:6 relatedBy:0 toItem:v3 attribute:v27 multiplier:1.0 constant:0.0];
  [(GKBaseComposeController *)self setMessageFieldTrailingConstraint:v29];

  [v3 addConstraint:self->_contentLeadingConstraint];
  [v3 addConstraint:self->_messageFieldTrailingConstraint];
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = GKBaseComposeController;
  [(GKBaseComposeController *)&v9 viewDidLayoutSubviews];
  [(UIView *)self->_contentView bounds];
  [(UIScrollView *)self->_backgroundView setContentSize:v3, v4];
  if (*MEMORY[0x277D0C258] == 1)
  {
    [(NSLayoutConstraint *)self->_contentLeadingConstraint constant];
    if (v5 == 0.0)
    {
      [(GKBaseComposeController *)self margins];
      v7 = v6;
      [(NSLayoutConstraint *)self->_contentLeadingConstraint setConstant:v8];
      [(NSLayoutConstraint *)self->_messageFieldTrailingConstraint setConstant:-v7];
    }
  }
}

- (UIEdgeInsets)margins
{
  v3 = [(GKBaseComposeController *)self view];
  [v3 layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (v7 == 0.0)
  {
    v12 = [(GKBaseComposeController *)self view];
    [v12 _contentMargin];
    v7 = v13;

    if (v7 == 0.0)
    {
      v14 = [MEMORY[0x277D75418] currentDevice];
      v15 = [v14 userInterfaceIdiom];

      if (v15 != 1 || (v7 = 20.0, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
      {
        v16 = [MEMORY[0x277D75418] currentDevice];
        v17 = [v16 userInterfaceIdiom];

        v7 = 15.0;
        if (!v17)
        {
          if (([MEMORY[0x277D759A0] mainScreen], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "bounds"), v20 = v19, v22 = v21, v18, v20 >= 414.0) && v22 >= 736.0 || (v22 >= 414.0 ? (v23 = v20 < 736.0) : (v23 = 1), !v23))
          {
            v7 = 20.0;
          }
        }
      }
    }
  }

  if (v11 == 0.0)
  {
    v24 = v7;
  }

  else
  {
    v24 = v11;
  }

  v25 = v5;
  v26 = v7;
  v27 = v9;
  result.right = v24;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = GKBaseComposeController;
  [(GKViewController *)&v5 viewWillAppear:a3];
  v4 = [(GKLoadableContentViewController *)self loadingState];

  if (v4 == @"Initial")
  {
    [(GKLoadableContentViewController *)self setLoadingState:@"LoadingState"];
    [(GKLoadableContentViewController *)self setLoadingState:@"LoadedState"];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = GKBaseComposeController;
  [(GKViewController *)&v7 viewDidAppear:?];
  if (v3)
  {
    v5 = [(GKBaseComposeController *)self backgroundView];
    [v5 flashScrollIndicators];
  }

  v6 = [(GKBaseComposeController *)self intendedFirstResponder];
  [v6 becomeFirstResponder];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = MEMORY[0x277D0C258];
  if (*MEMORY[0x277D0C258])
  {
    return 30;
  }

  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 1 || (result = 30, *v2 == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (!v7)
    {
      v8 = [MEMORY[0x277D759A0] mainScreen];
      [v8 bounds];
      v10 = v9;
      v12 = v11;

      if (v10 >= 414.0 && v12 >= 736.0)
      {
        return 30;
      }

      if (v12 >= 414.0 && v10 >= 736.0)
      {
        return 30;
      }
    }

    return 2;
  }

  return result;
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = GKBaseComposeController;
  [(GKBaseComposeController *)&v5 didRotateFromInterfaceOrientation:a3];
  v4 = [(GKBaseComposeController *)self view];
  [v4 setNeedsUpdateConstraints];
}

- (void)setMessageFieldText:(id)a3
{
  v4 = a3;
  v5 = [(GKBaseComposeController *)self messageField];
  [v5 setText:v4];

  [(GKBaseComposeController *)self messageFieldTextDidChange];
}

- (void)_scrollSelectedTextToVisible
{
  v13 = [(GKBaseComposeController *)self messageField];
  v3 = [v13 selectedTextRange];
  v4 = [v3 start];
  [v13 caretRectForPosition:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v15.origin.x = v6;
  v15.origin.y = v8;
  v15.size.width = v10;
  v15.size.height = v12;
  if (!CGRectIsEmpty(v15))
  {
    [(UIScrollView *)self->_backgroundView convertRect:v13 fromView:v6, v8, v10, v12];
    [(UIScrollView *)self->_backgroundView scrollRectToVisible:1 animated:?];
  }
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v10 = [(GKBaseComposeController *)self messageField];

  v5 = v10;
  if (v10 == v4)
  {
    v6 = [v10 text];
    v7 = [v6 length];

    if (v7 >= 141)
    {
      v8 = [v10 text];
      v9 = [v8 substringToIndex:140];
      [v10 setText:v9];
    }

    [(GKBaseComposeController *)self _scrollSelectedTextToVisible];
    [(GKBaseComposeController *)self messageFieldTextDidChange];
    v5 = v10;
  }
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = a3;
  v6 = [(GKBaseComposeController *)self messageField];

  v5 = v6;
  if (v6 == v4)
  {
    [(GKBaseComposeController *)self _scrollSelectedTextToVisible];
    v5 = v6;
  }
}

- (CGRect)lastKnownKeyboardFrame
{
  x = self->_lastKnownKeyboardFrame.origin.x;
  y = self->_lastKnownKeyboardFrame.origin.y;
  width = self->_lastKnownKeyboardFrame.size.width;
  height = self->_lastKnownKeyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end