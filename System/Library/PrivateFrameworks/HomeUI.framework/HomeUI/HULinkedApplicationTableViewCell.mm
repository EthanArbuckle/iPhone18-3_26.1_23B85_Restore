@interface HULinkedApplicationTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HFItem)item;
- (HULinkedApplicationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setItem:(id)item;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HULinkedApplicationTableViewCell

- (HULinkedApplicationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = HULinkedApplicationTableViewCell;
  v4 = [(HULinkedApplicationTableViewCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [HULinkedApplicationView alloc];
    contentView = [(HULinkedApplicationTableViewCell *)v4 contentView];
    [contentView bounds];
    v7 = [(HULinkedApplicationView *)v5 initWithFrame:?];
    linkedApplicationView = v4->_linkedApplicationView;
    v4->_linkedApplicationView = v7;

    contentView2 = [(HULinkedApplicationTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_linkedApplicationView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = HULinkedApplicationTableViewCell;
  [(HULinkedApplicationTableViewCell *)&v13 layoutSubviews];
  contentView = [(HULinkedApplicationTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  linkedApplicationView = [(HULinkedApplicationTableViewCell *)self linkedApplicationView];
  [linkedApplicationView setFrame:{v5, v7, v9, v11}];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  linkedApplicationView = [(HULinkedApplicationTableViewCell *)self linkedApplicationView];
  *&v10 = priority;
  *&v11 = fittingPriority;
  [linkedApplicationView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (HFItem)item
{
  linkedApplicationView = [(HULinkedApplicationTableViewCell *)self linkedApplicationView];
  item = [linkedApplicationView item];

  return item;
}

- (void)setItem:(id)item
{
  itemCopy = item;
  linkedApplicationView = [(HULinkedApplicationTableViewCell *)self linkedApplicationView];
  [linkedApplicationView setItem:itemCopy];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  linkedApplicationView = [(HULinkedApplicationTableViewCell *)self linkedApplicationView];
  [linkedApplicationView updateUIWithAnimation:animationCopy];
}

@end