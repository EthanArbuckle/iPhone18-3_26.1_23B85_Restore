@interface HUMediaServiceAccountCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HFItem)item;
- (HUMediaServiceAccountCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setItem:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUMediaServiceAccountCell

- (HUMediaServiceAccountCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = HUMediaServiceAccountCell;
  v4 = [(HUMediaServiceAccountCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HUMediaServiceAccountCell *)v4 setSelectionStyle:0];
    [(HUMediaServiceAccountCell *)v5 setUserInteractionEnabled:0];
    v6 = [HUMediaServiceAccountView alloc];
    v7 = [(HUMediaServiceAccountCell *)v5 contentView];
    [v7 bounds];
    v8 = [(HUMediaServiceAccountView *)v6 initWithFrame:?];
    mediaServiceAccountView = v5->_mediaServiceAccountView;
    v5->_mediaServiceAccountView = v8;

    v10 = [(HUMediaServiceAccountCell *)v5 contentView];
    [v10 addSubview:v5->_mediaServiceAccountView];
  }

  return v5;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = HUMediaServiceAccountCell;
  [(HUMediaServiceAccountCell *)&v13 layoutSubviews];
  v3 = [(HUMediaServiceAccountCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HUMediaServiceAccountCell *)self mediaServiceAccountView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = [(HUMediaServiceAccountCell *)self mediaServiceAccountView];
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
  v2 = [(HUMediaServiceAccountCell *)self mediaServiceAccountView];
  v3 = [v2 item];

  return v3;
}

- (void)setItem:(id)a3
{
  v4 = a3;
  v5 = [(HUMediaServiceAccountCell *)self mediaServiceAccountView];
  [v5 setItem:v4];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUMediaServiceAccountCell *)self mediaServiceAccountView];
  [v4 updateUIWithAnimation:v3];
}

@end