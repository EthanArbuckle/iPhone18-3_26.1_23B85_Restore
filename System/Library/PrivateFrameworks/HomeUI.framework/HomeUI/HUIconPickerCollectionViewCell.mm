@interface HUIconPickerCollectionViewCell
- (HFIconDescriptor)iconDescriptor;
- (HUIconPickerCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setIconDescriptor:(id)descriptor;
- (void)setSelected:(BOOL)selected;
@end

@implementation HUIconPickerCollectionViewCell

- (HUIconPickerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = HUIconPickerCollectionViewCell;
  v3 = [(HUIconPickerCollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [HUIconButton alloc];
    [(HUIconPickerCollectionViewCell *)v3 bounds];
    v5 = [(HUIconButton *)v4 initWithFrame:?];
    [(HUIconPickerCollectionViewCell *)v3 setIconButton:v5];

    iconButton = [(HUIconPickerCollectionViewCell *)v3 iconButton];
    [iconButton setUserInteractionEnabled:0];

    contentView = [(HUIconPickerCollectionViewCell *)v3 contentView];
    iconButton2 = [(HUIconPickerCollectionViewCell *)v3 iconButton];
    [contentView addSubview:iconButton2];
  }

  return v3;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUIconPickerCollectionViewCell;
  [(HUIconPickerCollectionViewCell *)&v4 prepareForReuse];
  iconButton = [(HUIconPickerCollectionViewCell *)self iconButton];
  [iconButton updateWithIconDescriptor:0 animated:0];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = HUIconPickerCollectionViewCell;
  [(HUIconPickerCollectionViewCell *)&v8 layoutSubviews];
  [(HUIconPickerCollectionViewCell *)self bounds];
  v10 = CGRectInset(v9, 20.0, 20.0);
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  iconButton = [(HUIconPickerCollectionViewCell *)self iconButton];
  [iconButton setFrame:{x, y, width, height}];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  iconButton = [(HUIconPickerCollectionViewCell *)self iconButton];
  [iconButton setSelected:selectedCopy];
}

- (HFIconDescriptor)iconDescriptor
{
  iconButton = [(HUIconPickerCollectionViewCell *)self iconButton];
  iconDescriptor = [iconButton iconDescriptor];

  return iconDescriptor;
}

- (void)setIconDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  iconButton = [(HUIconPickerCollectionViewCell *)self iconButton];
  [iconButton updateWithIconDescriptor:descriptorCopy animated:1];
}

@end