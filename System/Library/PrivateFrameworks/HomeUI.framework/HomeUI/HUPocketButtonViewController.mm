@interface HUPocketButtonViewController
+ (CGSize)calculatePreferredContentSizeForDescriptors:(id)a3;
- (HUPocketButtonViewController)initWithButtonDescriptors:(id)a3;
- (HUPocketButtonViewController)initWithCoder:(id)a3;
- (HUPocketButtonViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_buttonHit:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUPocketButtonViewController

+ (CGSize)calculatePreferredContentSizeForDescriptors:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 bounds];
    v6 = v5;

    v7 = [v3 count];
    if (v7)
    {
      v8 = 10.0;
      do
      {
        v8 = v8 + 50.0 + 10.0;
        --v7;
      }

      while (v7);
    }

    else
    {
      v8 = 10.0;
    }
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (HUPocketButtonViewController)initWithButtonDescriptors:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HUPocketButtonViewController.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"descriptors"}];
  }

  v11.receiver = self;
  v11.super_class = HUPocketButtonViewController;
  v6 = [(HUPocketButtonViewController *)&v11 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = [v5 copy];
    descriptors = v6->_descriptors;
    v6->_descriptors = v7;

    [objc_opt_class() calculatePreferredContentSizeForDescriptors:v5];
    [(HUPocketButtonViewController *)v6 setPreferredContentSize:?];
  }

  return v6;
}

- (HUPocketButtonViewController)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithButtonDescriptors_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUPocketButtonViewController.m" lineNumber:154 description:{@"%s is unavailable; use %@ instead", "-[HUPocketButtonViewController initWithCoder:]", v6}];

  return 0;
}

- (HUPocketButtonViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithButtonDescriptors_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUPocketButtonViewController.m" lineNumber:159 description:{@"%s is unavailable; use %@ instead", "-[HUPocketButtonViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (void)viewDidLoad
{
  v35 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = HUPocketButtonViewController;
  [(HUPocketButtonViewController *)&v33 viewDidLoad];
  v3 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(HUPocketButtonViewController *)self descriptors];
  v4 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        v13 = [[_HUPocketButton alloc] initWithFrame:v7 highlightedAlpha:v8 highlightedTextAlpha:v9, v10, 0.75, 0.5];
        v14 = [v12 title];
        [(_HUPocketButton *)v13 setTitle:v14 forState:0];

        v15 = [v12 backgroundColor];

        if (v15)
        {
          v16 = [v12 backgroundColor];
          [(HUColoredButton *)v13 setBackgroundColor:v16];
        }

        else
        {
          [(HUColoredButton *)v13 setBackgroundColorFollowsTintColor:1];
        }

        v17 = [v12 textColor];

        if (v17)
        {
          v18 = [v12 textColor];
          [(_HUPocketButton *)v13 setTitleColor:v18 forState:0];
        }

        v19 = [(HUPocketButtonViewController *)self descriptors];
        -[_HUPocketButton setTag:](v13, "setTag:", [v19 indexOfObject:v12]);

        [(_HUPocketButton *)v13 addTarget:self action:sel__buttonHit_ forControlEvents:64];
        [v3 addObject:v13];

        ++v11;
      }

      while (v5 != v11);
      v5 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v5);
  }

  v20 = [objc_alloc(MEMORY[0x277D75A68]) initWithArrangedSubviews:v3];
  [v20 setAxis:1];
  [v20 setDistribution:4];
  [v20 setAlignment:3];
  [v20 setLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  [v20 setSpacing:10.0];
  [v20 setLayoutMarginsRelativeArrangement:1];
  [v20 setInsetsLayoutMarginsFromSafeArea:0];
  v21 = [(HUPocketButtonViewController *)self view];
  [v21 naui_addAutoLayoutSubview:v20];

  v22 = MEMORY[0x277CCAAD0];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __43__HUPocketButtonViewController_viewDidLoad__block_invoke;
  v26[3] = &unk_277DC0BD8;
  v27 = v20;
  v28 = self;
  v23 = v20;
  v24 = __43__HUPocketButtonViewController_viewDidLoad__block_invoke(v26);
  [v22 activateConstraints:v24];
}

id __43__HUPocketButtonViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) leadingAnchor];
  v4 = [*(a1 + 40) view];
  v5 = [v4 layoutMarginsGuide];
  v6 = [v5 leadingAnchor];
  v7 = [v3 constraintEqualToAnchor:v6];
  [v2 addObject:v7];

  v8 = [*(a1 + 32) trailingAnchor];
  v9 = [*(a1 + 40) view];
  v10 = [v9 layoutMarginsGuide];
  v11 = [v10 trailingAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];
  [v2 addObject:v12];

  v13 = [*(a1 + 32) bottomAnchor];
  v14 = [*(a1 + 40) view];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v2 addObject:v16];

  v17 = [*(a1 + 32) topAnchor];
  v18 = [*(a1 + 40) view];
  v19 = [v18 topAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v2 addObject:v20];

  return v2;
}

- (void)_buttonHit:(id)a3
{
  v4 = [a3 tag];
  v5 = [(HUPocketButtonViewController *)self descriptors];
  v6 = [v5 objectAtIndexedSubscript:v4];

  [v6 execute];
}

@end