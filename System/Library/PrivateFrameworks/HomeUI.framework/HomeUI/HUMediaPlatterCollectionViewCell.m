@interface HUMediaPlatterCollectionViewCell
- (CGRect)iconViewTileFrame;
- (CGRect)prefixLabelTileFrame;
- (CGRect)primaryLabelTileFrame;
- (CGRect)secondaryLabelTileFrame;
- (CGRect)tileFrame;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (id)backgroundColor;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)prepareForReuse;
@end

@implementation HUMediaPlatterCollectionViewCell

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = HUMediaPlatterCollectionViewCell;
  [(HUViewControllerCollectionViewCell *)&v2 prepareForReuse];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  if (![(HUViewControllerCollectionViewCell *)self allowSelfSizing])
  {
    v43.receiver = self;
    v43.super_class = HUMediaPlatterCollectionViewCell;
    *&v10 = a4;
    *&v11 = a5;
    [(HUViewControllerCollectionViewCell *)&v43 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
    v28 = v41;
    v30 = v42;
LABEL_6:
    v39 = v28;
    v40 = v30;
    goto LABEL_7;
  }

  [(HUMediaPlatterCollectionViewCell *)self setClipsToBounds:1];
  v12 = [(HUViewControllerCollectionViewCell *)self viewController];
  v13 = [v12 view];
  [v13 sizeThatFits:{width, 3.40282347e38}];
  v15 = v14;

  v16 = [(HUViewControllerCollectionViewCell *)self viewController];
  v17 = [v16 view];
  [v17 frame];
  v19 = v18;
  v21 = v20;

  v22 = [(HUViewControllerCollectionViewCell *)self viewController];
  v23 = [v22 view];
  [v23 setFrame:{v19, v21, width, v15}];

  v24 = [(HUViewControllerCollectionViewCell *)self viewController];
  v25 = [v24 view];
  [v25 layoutIfNeeded];

  [(HUMediaPlatterCollectionViewCell *)self _setContinuousCornerRadius:16.0];
  v26 = [(HUViewControllerCollectionViewCell *)self viewController];
  [v26 preferredContentSize];
  v28 = v27;
  v30 = v29;

  if (*MEMORY[0x277CBF3A8] != v28 || *(MEMORY[0x277CBF3A8] + 8) != v30)
  {
    goto LABEL_6;
  }

  v31 = [(HUViewControllerCollectionViewCell *)self viewController];
  v32 = [v31 view];
  *&v33 = a4;
  *&v34 = a5;
  [v32 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v33, v34}];
  v36 = v35;
  v38 = v37;

  v39 = v36;
  v40 = v38;
LABEL_7:
  result.height = v40;
  result.width = v39;
  return result;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  if ([(HUViewControllerCollectionViewCell *)self allowSelfSizing])
  {
    v8.receiver = self;
    v8.super_class = HUMediaPlatterCollectionViewCell;
    v5 = [(HUViewControllerCollectionViewCell *)&v8 preferredLayoutAttributesFittingAttributes:v4];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (CGRect)iconViewTileFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)prefixLabelTileFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)primaryLabelTileFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)secondaryLabelTileFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)tileFrame
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  [(HUMediaPlatterCollectionViewCell *)self frame];
  v6 = v2;
  v7 = v3;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)backgroundColor
{
  v2 = [(HUMediaPlatterCollectionViewCell *)self traitCollection];
  if ([v2 userInterfaceStyle] == 1)
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBlackColor];
  }
  v3 = ;

  v4 = [v3 colorWithAlphaComponent:0.9];

  return v4;
}

@end