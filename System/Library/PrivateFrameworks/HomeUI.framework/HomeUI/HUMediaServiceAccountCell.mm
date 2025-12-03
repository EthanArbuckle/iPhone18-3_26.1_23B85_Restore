@interface HUMediaServiceAccountCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HFItem)item;
- (HUMediaServiceAccountCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setItem:(id)item;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUMediaServiceAccountCell

- (HUMediaServiceAccountCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = HUMediaServiceAccountCell;
  v4 = [(HUMediaServiceAccountCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HUMediaServiceAccountCell *)v4 setSelectionStyle:0];
    [(HUMediaServiceAccountCell *)v5 setUserInteractionEnabled:0];
    v6 = [HUMediaServiceAccountView alloc];
    contentView = [(HUMediaServiceAccountCell *)v5 contentView];
    [contentView bounds];
    v8 = [(HUMediaServiceAccountView *)v6 initWithFrame:?];
    mediaServiceAccountView = v5->_mediaServiceAccountView;
    v5->_mediaServiceAccountView = v8;

    contentView2 = [(HUMediaServiceAccountCell *)v5 contentView];
    [contentView2 addSubview:v5->_mediaServiceAccountView];
  }

  return v5;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = HUMediaServiceAccountCell;
  [(HUMediaServiceAccountCell *)&v13 layoutSubviews];
  contentView = [(HUMediaServiceAccountCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  mediaServiceAccountView = [(HUMediaServiceAccountCell *)self mediaServiceAccountView];
  [mediaServiceAccountView setFrame:{v5, v7, v9, v11}];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  mediaServiceAccountView = [(HUMediaServiceAccountCell *)self mediaServiceAccountView];
  *&v10 = priority;
  *&v11 = fittingPriority;
  [mediaServiceAccountView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
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
  mediaServiceAccountView = [(HUMediaServiceAccountCell *)self mediaServiceAccountView];
  item = [mediaServiceAccountView item];

  return item;
}

- (void)setItem:(id)item
{
  itemCopy = item;
  mediaServiceAccountView = [(HUMediaServiceAccountCell *)self mediaServiceAccountView];
  [mediaServiceAccountView setItem:itemCopy];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  mediaServiceAccountView = [(HUMediaServiceAccountCell *)self mediaServiceAccountView];
  [mediaServiceAccountView updateUIWithAnimation:animationCopy];
}

@end