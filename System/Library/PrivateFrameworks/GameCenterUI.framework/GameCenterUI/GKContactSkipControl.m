@interface GKContactSkipControl
- (GKContactSkipControl)initWithFrame:(CGRect)a3;
- (id)compactPhoneValues:(int64_t)a3;
- (id)nextTitleFollowingValue:(id)a3;
- (int64_t)valueButtonCountThatFitsHeight:(double)a3;
- (void)awakeFromNib;
- (void)determineButtonFromGesture:(id)a3;
- (void)setValues:(id)a3;
- (void)setupButtonView;
- (void)setupValueButtons;
- (void)valueSelected:(id)a3;
@end

@implementation GKContactSkipControl

- (GKContactSkipControl)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = GKContactSkipControl;
  v3 = [(GKContactSkipControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(GKContactSkipControl *)v3 setupButtonView];
  }

  return v4;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = GKContactSkipControl;
  [(GKContactSkipControl *)&v3 awakeFromNib];
  [(GKContactSkipControl *)self setupButtonView];
}

- (void)setupButtonView
{
  if (!self->_buttonView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    [(GKContactSkipControl *)self bounds];
    v4 = [v3 initWithFrame:?];
    [(GKContactSkipControl *)self setButtonView:v4];

    v5 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)self->_buttonView setBackgroundColor:v5];

    [(UIView *)self->_buttonView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKContactSkipControl *)self addSubview:self->_buttonView];
    v6 = *MEMORY[0x277D768C8];
    v7 = *(MEMORY[0x277D768C8] + 8);
    v8 = *(MEMORY[0x277D768C8] + 16);
    v9 = *(MEMORY[0x277D768C8] + 24);
    v10 = [MEMORY[0x277CCAAD0] _gkConstraintsForView:self->_buttonView withinView:self insets:{*MEMORY[0x277D768C8], v7, v8, v9}];
    [(GKContactSkipControl *)self addConstraints:v10];

    v11 = objc_alloc(MEMORY[0x277D75D18]);
    [(UIView *)self->_buttonView bounds];
    v12 = [v11 initWithFrame:?];
    [(GKContactSkipControl *)self setCenteringView:v12];

    [(UIView *)self->_centeringView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_buttonView addSubview:self->_centeringView];
    centeringView = self->_centeringView;
    v14 = [MEMORY[0x277CCAAD0] constraintWithItem:centeringView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0];
    [(UIView *)centeringView addConstraint:v14];

    buttonView = self->_buttonView;
    v16 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_centeringView attribute:1 relatedBy:0 toItem:buttonView attribute:1 multiplier:1.0 constant:0.0];
    [(UIView *)buttonView addConstraint:v16];

    v17 = self->_buttonView;
    v18 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_centeringView attribute:10 relatedBy:0 toItem:v17 attribute:10 multiplier:1.0 constant:0.0];
    [(UIView *)v17 addConstraint:v18];

    [(UIView *)self->_centeringView setHidden:1];
    v19 = objc_alloc(MEMORY[0x277D75D18]);
    [(GKContactSkipControl *)self bounds];
    v24 = [v19 initWithFrame:?];
    v20 = [MEMORY[0x277D75348] clearColor];
    [v24 setBackgroundColor:v20];

    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_determineButtonFromGesture_];
    [v24 addGestureRecognizer:v21];

    v22 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_determineButtonFromGesture_];
    [v24 addGestureRecognizer:v22];

    [(GKContactSkipControl *)self addSubview:v24];
    v23 = [MEMORY[0x277CCAAD0] _gkConstraintsForView:v24 withinView:self insets:{v6, v7, v8, v9}];
    [(GKContactSkipControl *)self addConstraints:v23];
  }
}

- (void)setValues:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToArray:self->_values] & 1) == 0)
  {
    objc_storeStrong(&self->_values, a3);
    [(GKContactSkipControl *)self setupValueButtons];
  }
}

- (id)compactPhoneValues:(int64_t)a3
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:20];
  v6 = [(NSArray *)self->_values count]+ -1.0;
  if (v6 > 0.0)
  {
    v7 = 0.0;
    do
    {
      v8 = [(NSArray *)self->_values objectAtIndexedSubscript:llround(v7)];
      [v5 addObject:v8];

      [v5 addObject:@"•"];
      v7 = v6 / a3 + v7;
    }

    while (v7 < v6);
  }

  if ([v5 containsObject:@"#"])
  {
    v9 = [v5 lastObject];
    v10 = [v9 isEqualToString:@"•"];

    if (v10)
    {
      [v5 removeLastObject];
    }
  }

  else if ([(NSArray *)self->_values count])
  {
    v11 = [(NSArray *)self->_values lastObject];
    [v5 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  return v12;
}

- (id)nextTitleFollowingValue:(id)a3
{
  v4 = [(NSArray *)self->_values indexOfObject:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4 + 1, v4 + 1 >= [(NSArray *)self->_values count]))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_values objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (int64_t)valueButtonCountThatFitsHeight:(double)a3
{
  v5 = [MEMORY[0x277D75220] buttonWithType:0];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  [(UIView *)self->_buttonView frame];
  [v5 setFrame:{v7, v9}];
  v10 = MEMORY[0x277D74300];
  [MEMORY[0x277D74300] smallSystemFontSize];
  v11 = [v10 systemFontOfSize:?];
  v12 = [v5 titleLabel];
  [v12 setFont:v11];

  v13 = [v5 titleLabel];
  [v13 setAdjustsFontSizeToFitWidth:1];

  v14 = [v5 titleLabel];
  [v14 setTextAlignment:1];

  [v5 setTitle:@"A" forState:0];
  [v5 setTitleEdgeInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v5 setContentEdgeInsets:{-1.0, 0.0, -1.0, 0.0}];
  [v5 sizeToFit];
  [v5 bounds];
  v16 = (a3 / v15);

  return v16;
}

- (void)setupValueButtons
{
  v61 = *MEMORY[0x277D85DE8];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v3 = self->_buttons;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v56;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v56 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v55 + 1) + 8 * i) removeFromSuperview];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v5);
  }

  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_values, "count")}];
  [(GKContactSkipControl *)self setButtonsToTitles:v8];

  v9 = self->_values;
  [(UIView *)self->_buttonView frame];
  v11 = [(GKContactSkipControl *)self valueButtonCountThatFitsHeight:v10];
  if (v11 < [(NSArray *)self->_values count])
  {
    v12 = [(GKContactSkipControl *)self compactPhoneValues:v11 / 2];

    v9 = v12;
  }

  v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v9, "count")}];
  v50 = [(NSArray *)self->_values objectAtIndexedSubscript:0];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v13 = v9;
  v49 = [(NSArray *)v13 countByEnumeratingWithState:&v51 objects:v59 count:16];
  v14 = 0;
  if (!v49)
  {
    v45 = v13;
    goto LABEL_26;
  }

  v47 = *v52;
  v15 = *MEMORY[0x277D768C8];
  v16 = *(MEMORY[0x277D768C8] + 8);
  v17 = 1;
  v18 = *(MEMORY[0x277D768C8] + 16);
  v19 = *(MEMORY[0x277D768C8] + 24);
  obj = v13;
  do
  {
    v20 = 0;
    v21 = v14;
    do
    {
      if (*v52 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v51 + 1) + 8 * v20);
      v14 = [MEMORY[0x277D75220] buttonWithType:0];
      v23 = MEMORY[0x277D74300];
      [MEMORY[0x277D74300] smallSystemFontSize];
      v24 = [v23 systemFontOfSize:?];
      v25 = [(UIView *)v14 titleLabel];
      [v25 setFont:v24];

      v26 = [(UIView *)v14 titleLabel];
      [v26 setAdjustsFontSizeToFitWidth:1];

      v27 = [(UIView *)v14 titleLabel];
      [v27 setTextAlignment:1];

      v28 = [(GKContactSkipControl *)self tintColor];
      [(UIView *)v14 setTitleColor:v28 forState:0];

      [(UIView *)v14 setTitle:v22 forState:0];
      [(UIView *)v14 setTitleEdgeInsets:v15, v16, v18, v19];
      [(UIView *)v14 setContentEdgeInsets:-1.0, 0.0, -1.0, 0.0];
      v29 = [MEMORY[0x277D75348] clearColor];
      [(UIView *)v14 setBackgroundColor:v29];

      [(UIView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      v30 = v22;
      if ([v30 isEqualToString:@"•"])
      {
        v31 = [(GKContactSkipControl *)self nextTitleFollowingValue:v50];
      }

      else
      {
        v31 = v30;
        v30 = v50;
        v50 = v31;
      }

      [(UIView *)v14 setTag:v17];
      buttonsToTitles = self->_buttonsToTitles;
      v33 = [MEMORY[0x277CCABB0] numberWithInteger:{-[UIView tag](v14, "tag")}];
      [(NSMutableDictionary *)buttonsToTitles setObject:v31 forKey:v33];

      [v48 addObject:v14];
      [(UIView *)self->_buttonView addSubview:v14];
      buttonView = self->_buttonView;
      v35 = [MEMORY[0x277CCAAD0] constraintWithItem:v14 attribute:1 relatedBy:0 toItem:buttonView attribute:1 multiplier:1.0 constant:0.0];
      [(UIView *)buttonView addConstraint:v35];

      v36 = self->_buttonView;
      v37 = [MEMORY[0x277CCAAD0] constraintWithItem:v14 attribute:2 relatedBy:0 toItem:v36 attribute:2 multiplier:1.0 constant:0.0];
      [(UIView *)v36 addConstraint:v37];

      v38 = self->_buttonView;
      if (v21)
      {
        v39 = 1.0;
        v40 = v14;
        centeringView = v21;
        v42 = 4;
      }

      else
      {
        centeringView = self->_centeringView;
        v39 = 1.0;
        v40 = v14;
        v42 = 3;
      }

      v43 = [MEMORY[0x277CCAAD0] constraintWithItem:v40 attribute:3 relatedBy:0 toItem:centeringView attribute:v42 multiplier:v39 constant:0.0];
      [(UIView *)v38 addConstraint:v43];

      ++v20;
      ++v17;
      v21 = v14;
    }

    while (v49 != v20);
    v13 = obj;
    v49 = [(NSArray *)obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  }

  while (v49);

  if (v14)
  {
    v44 = self->_buttonView;
    v45 = [MEMORY[0x277CCAAD0] constraintWithItem:v14 attribute:4 relatedBy:0 toItem:self->_centeringView attribute:4 multiplier:1.0 constant:0.0];
    [(UIView *)v44 addConstraint:v45];
LABEL_26:
  }

  [(GKContactSkipControl *)self setButtons:v48];
}

- (void)determineButtonFromGesture:(id)a3
{
  [a3 locationInView:self->_buttonView];
  v4 = [(UIView *)self->_buttonView hitTest:0 withEvent:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(GKContactSkipControl *)self valueSelected:v4];
  }
}

- (void)valueSelected:(id)a3
{
  buttonsToTitles = self->_buttonsToTitles;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "tag")}];
  v7 = [(NSMutableDictionary *)buttonsToTitles objectForKey:v5];

  v6 = [(GKContactSkipControl *)self lastSelectedValue];
  LOBYTE(v5) = [v6 isEqualToString:v7];

  if ((v5 & 1) == 0)
  {
    [(GKContactSkipControl *)self setLastSelectedValue:v7];
    [(GKContactSkipControl *)self sendActionsForControlEvents:4096];
  }
}

@end