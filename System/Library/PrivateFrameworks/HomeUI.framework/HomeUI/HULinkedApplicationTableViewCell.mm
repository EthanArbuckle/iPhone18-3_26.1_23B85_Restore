@interface HULinkedApplicationTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HFItem)item;
- (HULinkedApplicationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setItem:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HULinkedApplicationTableViewCell

- (HULinkedApplicationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = HULinkedApplicationTableViewCell;
  v4 = [(HULinkedApplicationTableViewCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [HULinkedApplicationView alloc];
    v6 = [(HULinkedApplicationTableViewCell *)v4 contentView];
    [v6 bounds];
    v7 = [(HULinkedApplicationView *)v5 initWithFrame:?];
    linkedApplicationView = v4->_linkedApplicationView;
    v4->_linkedApplicationView = v7;

    v9 = [(HULinkedApplicationTableViewCell *)v4 contentView];
    [v9 addSubview:v4->_linkedApplicationView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = HULinkedApplicationTableViewCell;
  [(HULinkedApplicationTableViewCell *)&v13 layoutSubviews];
  v3 = [(HULinkedApplicationTableViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HULinkedApplicationTableViewCell *)self linkedApplicationView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = [(HULinkedApplicationTableViewCell *)self linkedApplicationView];
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

- (HFItem)item
{
  v2 = [(HULinkedApplicationTableViewCell *)self linkedApplicationView];
  v3 = [v2 item];

  return v3;
}

- (void)setItem:(id)a3
{
  v4 = a3;
  v5 = [(HULinkedApplicationTableViewCell *)self linkedApplicationView];
  [v5 setItem:v4];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v4 = [(HULinkedApplicationTableViewCell *)self linkedApplicationView];
  [v4 updateUIWithAnimation:v3];
}

@end