@interface HUQuickControlCollectionViewCellContainerView
+ (double)preferredChromeHeightForTitlePosition:(unint64_t)position;
+ (id)_titleFont;
- (HUQuickControlCollectionViewCellContainerView)initWithFrame:(CGRect)frame;
- (HUQuickControlCollectionViewCellContainerView)initWithFrame:(CGRect)frame titlePosition:(unint64_t)position;
- (NSString)title;
- (UIEdgeInsets)preferredContentLayoutFrameInset;
- (void)_configureConstraintSets;
- (void)setContentView:(id)view;
- (void)setPreferredContentLayoutFrameInset:(UIEdgeInsets)inset;
- (void)setTitle:(id)title;
- (void)setTitlePosition:(unint64_t)position;
- (void)updateConstraints;
@end

@implementation HUQuickControlCollectionViewCellContainerView

+ (id)_titleFont
{
  v2 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76938] addingSymbolicTraits:2 options:0];
  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (HUQuickControlCollectionViewCellContainerView)initWithFrame:(CGRect)frame titlePosition:(unint64_t)position
{
  result = [(HUQuickControlCollectionViewCellContainerView *)self initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_titlePosition = position;
  }

  return result;
}

- (HUQuickControlCollectionViewCellContainerView)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = HUQuickControlCollectionViewCellContainerView;
  v3 = [(HUQuickControlCollectionViewCellContainerView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    _titleFont = [objc_opt_class() _titleFont];
    titleLabel = [(HUQuickControlCollectionViewCellContainerView *)v3 titleLabel];
    [titleLabel setFont:_titleFont];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    titleLabel2 = [(HUQuickControlCollectionViewCellContainerView *)v3 titleLabel];
    [titleLabel2 setTextColor:systemGrayColor];

    titleLabel3 = [(HUQuickControlCollectionViewCellContainerView *)v3 titleLabel];
    [titleLabel3 setTextAlignment:1];

    titleLabel4 = [(HUQuickControlCollectionViewCellContainerView *)v3 titleLabel];
    [titleLabel4 setAdjustsFontSizeToFitWidth:1];

    titleLabel5 = [(HUQuickControlCollectionViewCellContainerView *)v3 titleLabel];
    [titleLabel5 setMinimumScaleFactor:0.5];

    titleLabel6 = [(HUQuickControlCollectionViewCellContainerView *)v3 titleLabel];
    [titleLabel6 setAllowsDefaultTighteningForTruncation:1];

    titleLabel7 = [(HUQuickControlCollectionViewCellContainerView *)v3 titleLabel];
    LODWORD(v15) = 1148846080;
    [titleLabel7 setContentCompressionResistancePriority:1 forAxis:v15];

    titleLabel8 = [(HUQuickControlCollectionViewCellContainerView *)v3 titleLabel];
    LODWORD(v17) = 1148846080;
    [titleLabel8 setContentHuggingPriority:1 forAxis:v17];

    titleLabel9 = [(HUQuickControlCollectionViewCellContainerView *)v3 titleLabel];
    [(HUQuickControlCollectionViewCellContainerView *)v3 naui_addAutoLayoutSubview:titleLabel9];

    v19 = objc_alloc_init(MEMORY[0x277D756D0]);
    preferredContentFrameLayoutGuide = v3->_preferredContentFrameLayoutGuide;
    v3->_preferredContentFrameLayoutGuide = v19;

    preferredContentFrameLayoutGuide = [(HUQuickControlCollectionViewCellContainerView *)v3 preferredContentFrameLayoutGuide];
    [(HUQuickControlCollectionViewCellContainerView *)v3 addLayoutGuide:preferredContentFrameLayoutGuide];

    [(HUQuickControlCollectionViewCellContainerView *)v3 _configureConstraintSets];
  }

  return v3;
}

- (NSString)title
{
  titleLabel = [(HUQuickControlCollectionViewCellContainerView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(HUQuickControlCollectionViewCellContainerView *)self title];
  v6 = [title length] != 0;

  titleLabel = [(HUQuickControlCollectionViewCellContainerView *)self titleLabel];
  [titleLabel setText:titleCopy];

  v8 = [titleCopy length];
  if (((v6 ^ (v8 == 0)) & 1) == 0)
  {
    constraintSet = [(HUQuickControlCollectionViewCellContainerView *)self constraintSet];
    [constraintSet invalidate];
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v9 = viewCopy;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    [(HUQuickControlCollectionViewCellContainerView *)self naui_addAutoLayoutSubview:v9];
    [(HUQuickControlCollectionViewCellContainerView *)self bringSubviewToFront:v9];
    constraintSet = [(HUQuickControlCollectionViewCellContainerView *)self constraintSet];
    [constraintSet invalidate];

    preferredContentFrameConstraintSet = [(HUQuickControlCollectionViewCellContainerView *)self preferredContentFrameConstraintSet];
    [preferredContentFrameConstraintSet invalidate];

    viewCopy = v9;
  }
}

- (void)setPreferredContentLayoutFrameInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_preferredContentLayoutFrameInset.top, v3), vceqq_f64(*&self->_preferredContentLayoutFrameInset.bottom, v4)))) & 1) == 0)
  {
    self->_preferredContentLayoutFrameInset = inset;
    preferredContentFrameConstraintSet = [(HUQuickControlCollectionViewCellContainerView *)self preferredContentFrameConstraintSet];
    [preferredContentFrameConstraintSet updateConstraintConstants];
  }
}

- (void)setTitlePosition:(unint64_t)position
{
  v5 = position == 2;
  titleLabel = [(HUQuickControlCollectionViewCellContainerView *)self titleLabel];
  [titleLabel setHidden:v5];

  if (self->_titlePosition != position)
  {
    self->_titlePosition = position;
    constraintSet = [(HUQuickControlCollectionViewCellContainerView *)self constraintSet];
    [constraintSet invalidate];
  }
}

- (void)updateConstraints
{
  constraintSet = [(HUQuickControlCollectionViewCellContainerView *)self constraintSet];
  [constraintSet activateIfNeeded];

  preferredContentFrameConstraintSet = [(HUQuickControlCollectionViewCellContainerView *)self preferredContentFrameConstraintSet];
  [preferredContentFrameConstraintSet activateIfNeeded];

  v5.receiver = self;
  v5.super_class = HUQuickControlCollectionViewCellContainerView;
  [(HUQuickControlCollectionViewCellContainerView *)&v5 updateConstraints];
}

- (void)_configureConstraintSets
{
  v3 = [objc_alloc(MEMORY[0x277D2C958]) initWithOwningView:self constraintBuilder:&__block_literal_global_208];
  preferredContentFrameConstraintSet = self->_preferredContentFrameConstraintSet;
  self->_preferredContentFrameConstraintSet = v3;

  v5 = [objc_alloc(MEMORY[0x277D2C958]) initWithOwningView:self constraintBuilder:&__block_literal_global_57_1];
  constraintSet = self->_constraintSet;
  self->_constraintSet = v5;
}

id __73__HUQuickControlCollectionViewCellContainerView__configureConstraintSets__block_invoke(uint64_t a1, void *a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 contentView];

  if (v3)
  {
    [v2 preferredContentLayoutFrameInset];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v31 = [v2 preferredContentFrameLayoutGuide];
    v30 = [v31 leadingAnchor];
    v29 = [v2 leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29 constant:v7];
    v32[0] = v28;
    v27 = [v2 preferredContentFrameLayoutGuide];
    v26 = [v27 trailingAnchor];
    v25 = [v2 trailingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25 constant:-v11];
    v32[1] = v24;
    v23 = [v2 preferredContentFrameLayoutGuide];
    v22 = [v23 topAnchor];
    v12 = [v2 contentView];
    v13 = [v12 topAnchor];
    v14 = [v22 constraintEqualToAnchor:v13 constant:v5];
    v32[2] = v14;
    v15 = [v2 preferredContentFrameLayoutGuide];
    v16 = [v15 bottomAnchor];
    v17 = [v2 contentView];
    v18 = [v17 bottomAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 constant:-v9];
    v32[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  return v20;
}

id __73__HUQuickControlCollectionViewCellContainerView__configureConstraintSets__block_invoke_2(uint64_t a1, void *a2)
{
  v64[7] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 contentView];

  if (v3)
  {
    v4 = [v2 title];
    if ([v4 length])
    {
      v48 = [v2 titlePosition] != 2;
    }

    else
    {
      v48 = 0;
    }

    v6 = [v2 contentView];
    v7 = [v6 leadingAnchor];
    v8 = [v2 leadingAnchor];
    v37 = [v7 constraintEqualToAnchor:v8];

    v9 = [v2 contentView];
    v10 = [v9 trailingAnchor];
    v11 = [v2 trailingAnchor];
    v35 = [v10 constraintEqualToAnchor:v11];

    v46 = [v2 titleLabel];
    v45 = [v46 leadingAnchor];
    v44 = [v2 leadingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v64[0] = v43;
    v42 = [v2 titleLabel];
    v41 = [v42 trailingAnchor];
    v40 = [v2 trailingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v64[1] = v39;
    v64[2] = v37;
    v64[3] = v35;
    v38 = [v2 contentView];
    v36 = [v38 leadingAnchor];
    v34 = [v2 leadingAnchor];
    v12 = [v36 constraintGreaterThanOrEqualToAnchor:v34];
    v64[4] = v12;
    v13 = [v2 contentView];
    v14 = [v13 trailingAnchor];
    v15 = [v2 trailingAnchor];
    v16 = [v14 constraintLessThanOrEqualToAnchor:v15];
    v64[5] = v16;
    v17 = [v2 contentView];
    v18 = [v17 centerXAnchor];
    v19 = [v2 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v64[6] = v20;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:7];

    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __73__HUQuickControlCollectionViewCellContainerView__configureConstraintSets__block_invoke_3;
    v59[3] = &unk_277DC1680;
    v61 = v48;
    v21 = v2;
    v60 = v21;
    v22 = __73__HUQuickControlCollectionViewCellContainerView__configureConstraintSets__block_invoke_3(v59);
    v23 = [v22 mutableCopy];

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __73__HUQuickControlCollectionViewCellContainerView__configureConstraintSets__block_invoke_4;
    v56[3] = &unk_277DC16A8;
    v58 = v48;
    v24 = v21;
    v57 = v24;
    v25 = __73__HUQuickControlCollectionViewCellContainerView__configureConstraintSets__block_invoke_4(v56);
    [v23 addObject:v25];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __73__HUQuickControlCollectionViewCellContainerView__configureConstraintSets__block_invoke_5;
    v53[3] = &unk_277DC16A8;
    v55 = v48;
    v54 = v24;
    v26 = __73__HUQuickControlCollectionViewCellContainerView__configureConstraintSets__block_invoke_5(v53);
    [v23 addObject:v26];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v62[0] = v37;
    v62[1] = v35;
    v62[2] = v25;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:3];
    v28 = [v27 countByEnumeratingWithState:&v49 objects:v63 count:16];
    if (v28)
    {
      v30 = v28;
      v31 = *v50;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(v27);
          }

          LODWORD(v29) = 1111752704;
          [*(*(&v49 + 1) + 8 * i) setPriority:v29];
        }

        v30 = [v27 countByEnumeratingWithState:&v49 objects:v63 count:16];
      }

      while (v30);
    }

    v5 = [v47 arrayByAddingObjectsFromArray:v23];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

id __73__HUQuickControlCollectionViewCellContainerView__configureConstraintSets__block_invoke_3(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 titlePosition];
    v5 = *(a1 + 32);
    if (v4 == 1)
    {
      v6 = [v5 contentView];
      v7 = [v6 topAnchor];
      v8 = [*(a1 + 32) topAnchor];
      v9 = [v7 constraintEqualToAnchor:v8];
      v20[0] = v9;
      v10 = [*(a1 + 32) titleLabel];
      v11 = [v10 firstBaselineAnchor];
      v12 = [*(a1 + 32) contentView];
      v13 = [v12 bottomAnchor];
      v14 = [v11 constraintEqualToAnchor:v13 constant:19.0];
      v20[1] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v20;
    }

    else
    {
      v6 = [v5 titleLabel];
      v7 = [v6 topAnchor];
      v8 = [*(a1 + 32) topAnchor];
      v9 = [v7 constraintEqualToAnchor:v8];
      v10 = [*(a1 + 32) contentView];
      v11 = [v10 topAnchor];
      v12 = [*(a1 + 32) titleLabel];
      v13 = [v12 lastBaselineAnchor];
      v14 = [v11 constraintEqualToAnchor:v13 constant:12.0];
      v19[1] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v19;
    }

    v17 = [v15 arrayWithObjects:v16 count:2];
  }

  else
  {
    v6 = [v3 contentView];
    v7 = [v6 topAnchor];
    v8 = [*(a1 + 32) topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v21[0] = v9;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  }

  return v17;
}

id __73__HUQuickControlCollectionViewCellContainerView__configureConstraintSets__block_invoke_4(uint64_t a1)
{
  if (*(a1 + 40) == 1 && (v2 = (a1 + 32), [*(a1 + 32) titlePosition]))
  {
    v3 = [*v2 titleLabel];
    v4 = [v3 lastBaselineAnchor];
  }

  else
  {
    v3 = [*(a1 + 32) contentView];
    v4 = [v3 bottomAnchor];
    v2 = (a1 + 32);
  }

  v5 = [*v2 bottomAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  return v6;
}

id __73__HUQuickControlCollectionViewCellContainerView__configureConstraintSets__block_invoke_5(uint64_t a1)
{
  if (*(a1 + 40) == 1 && (v2 = (a1 + 32), [*(a1 + 32) titlePosition]))
  {
    v3 = [*v2 titleLabel];
    v4 = [v3 lastBaselineAnchor];
  }

  else
  {
    v3 = [*(a1 + 32) contentView];
    v4 = [v3 bottomAnchor];
    v2 = (a1 + 32);
  }

  v5 = [*v2 bottomAnchor];
  v6 = [v4 constraintLessThanOrEqualToAnchor:v5];

  return v6;
}

+ (double)preferredChromeHeightForTitlePosition:(unint64_t)position
{
  if (position == 1)
  {
    _titleFont = [self _titleFont];
    [_titleFont descender];
    v5 = fabs(v7);
    v6 = 19.0;
    goto LABEL_5;
  }

  v3 = 0.0;
  if (!position)
  {
    _titleFont = [self _titleFont];
    [_titleFont ascender];
    v6 = 12.0;
LABEL_5:
    v3 = v6 + HURoundToScreenScale(v5);
  }

  return v3;
}

- (UIEdgeInsets)preferredContentLayoutFrameInset
{
  top = self->_preferredContentLayoutFrameInset.top;
  left = self->_preferredContentLayoutFrameInset.left;
  bottom = self->_preferredContentLayoutFrameInset.bottom;
  right = self->_preferredContentLayoutFrameInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end