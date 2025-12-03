@interface HUQuickControlViewControllerCollectionViewCell
+ (unint64_t)quickControlSizeForItemSize:(unint64_t)size;
- (void)_updateContentViewControllerForActiveLayoutAttributes;
- (void)applyLayoutAttributes:(id)attributes;
- (void)setActiveLayoutAttributes:(id)attributes;
- (void)setViewController:(id)controller;
@end

@implementation HUQuickControlViewControllerCollectionViewCell

+ (unint64_t)quickControlSizeForItemSize:(unint64_t)size
{
  if (size - 1 >= 3)
  {
    return 3;
  }

  else
  {
    return 3 - size;
  }
}

- (void)_updateContentViewControllerForActiveLayoutAttributes
{
  v3 = objc_opt_class();
  activeLayoutAttributes = [(HUQuickControlViewControllerCollectionViewCell *)self activeLayoutAttributes];
  v5 = [v3 quickControlSizeForItemSize:{objc_msgSend(activeLayoutAttributes, "itemSize")}];
  viewController = [(HUViewControllerCollectionViewCell *)self viewController];
  contentViewController = [viewController contentViewController];
  [contentViewController setControlSize:v5];

  activeLayoutAttributes2 = [(HUQuickControlViewControllerCollectionViewCell *)self activeLayoutAttributes];
  titlePosition = [activeLayoutAttributes2 titlePosition];
  viewController2 = [(HUViewControllerCollectionViewCell *)self viewController];
  [viewController2 setTitlePosition:titlePosition];
}

- (void)setActiveLayoutAttributes:(id)attributes
{
  objc_storeStrong(&self->_activeLayoutAttributes, attributes);

  [(HUQuickControlViewControllerCollectionViewCell *)self _updateContentViewControllerForActiveLayoutAttributes];
}

- (void)setViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = HUQuickControlViewControllerCollectionViewCell;
  [(HUViewControllerCollectionViewCell *)&v4 setViewController:controller];
  [(HUQuickControlViewControllerCollectionViewCell *)self _updateContentViewControllerForActiveLayoutAttributes];
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v8.receiver = self;
  v8.super_class = HUQuickControlViewControllerCollectionViewCell;
  [(HUQuickControlViewControllerCollectionViewCell *)&v8 applyLayoutAttributes:attributesCopy];
  objc_opt_class();
  v5 = attributesCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(HUQuickControlViewControllerCollectionViewCell *)self setActiveLayoutAttributes:v7];
}

@end