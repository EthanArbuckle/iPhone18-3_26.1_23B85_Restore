@interface HUMediaPlatterCollectionViewCell
- (CGRect)iconViewTileFrame;
- (CGRect)prefixLabelTileFrame;
- (CGRect)primaryLabelTileFrame;
- (CGRect)secondaryLabelTileFrame;
- (CGRect)tileFrame;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (id)backgroundColor;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)prepareForReuse;
@end

@implementation HUMediaPlatterCollectionViewCell

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = HUMediaPlatterCollectionViewCell;
  [(HUViewControllerCollectionViewCell *)&v2 prepareForReuse];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  if (![(HUViewControllerCollectionViewCell *)self allowSelfSizing])
  {
    v43.receiver = self;
    v43.super_class = HUMediaPlatterCollectionViewCell;
    *&v10 = priority;
    *&v11 = fittingPriority;
    [(HUViewControllerCollectionViewCell *)&v43 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
    v28 = v41;
    v30 = v42;
LABEL_6:
    v39 = v28;
    v40 = v30;
    goto LABEL_7;
  }

  [(HUMediaPlatterCollectionViewCell *)self setClipsToBounds:1];
  viewController = [(HUViewControllerCollectionViewCell *)self viewController];
  view = [viewController view];
  [view sizeThatFits:{width, 3.40282347e38}];
  v15 = v14;

  viewController2 = [(HUViewControllerCollectionViewCell *)self viewController];
  view2 = [viewController2 view];
  [view2 frame];
  v19 = v18;
  v21 = v20;

  viewController3 = [(HUViewControllerCollectionViewCell *)self viewController];
  view3 = [viewController3 view];
  [view3 setFrame:{v19, v21, width, v15}];

  viewController4 = [(HUViewControllerCollectionViewCell *)self viewController];
  view4 = [viewController4 view];
  [view4 layoutIfNeeded];

  [(HUMediaPlatterCollectionViewCell *)self _setContinuousCornerRadius:16.0];
  viewController5 = [(HUViewControllerCollectionViewCell *)self viewController];
  [viewController5 preferredContentSize];
  v28 = v27;
  v30 = v29;

  if (*MEMORY[0x277CBF3A8] != v28 || *(MEMORY[0x277CBF3A8] + 8) != v30)
  {
    goto LABEL_6;
  }

  viewController6 = [(HUViewControllerCollectionViewCell *)self viewController];
  view5 = [viewController6 view];
  *&v33 = priority;
  *&v34 = fittingPriority;
  [view5 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v33, v34}];
  v36 = v35;
  v38 = v37;

  v39 = v36;
  v40 = v38;
LABEL_7:
  result.height = v40;
  result.width = v39;
  return result;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([(HUViewControllerCollectionViewCell *)self allowSelfSizing])
  {
    v8.receiver = self;
    v8.super_class = HUMediaPlatterCollectionViewCell;
    v5 = [(HUViewControllerCollectionViewCell *)&v8 preferredLayoutAttributesFittingAttributes:attributesCopy];
  }

  else
  {
    v5 = attributesCopy;
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
  traitCollection = [(HUMediaPlatterCollectionViewCell *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 1)
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