@interface HUTitleControlCell
- (HUControlView)controlView;
- (HUTitleControlCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)controlTitle;
- (id)allControlViews;
- (void)prepareForReuse;
- (void)setControlTitle:(id)title;
- (void)setControlView:(id)view;
@end

@implementation HUTitleControlCell

- (HUTitleControlCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HUTitleControlCell;
  v4 = [(HUTitleControlCell *)&v7 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HUTitleControlCell *)v4 setSelectionStyle:0];
  }

  return v5;
}

- (id)allControlViews
{
  v2 = MEMORY[0x277CBEB98];
  controlView = [(HUTitleControlCell *)self controlView];
  v4 = [v2 na_setWithSafeObject:controlView];

  return v4;
}

- (HUControlView)controlView
{
  accessoryView = [(HUTitleControlCell *)self accessoryView];
  v3 = &unk_2824E6B40;
  v4 = accessoryView;
  v5 = v4;
  if (v4)
  {
    if ([v4 conformsToProtocol:v3])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v5;
    if (v6)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v10 = NSStringFromProtocol(v3);
    [currentHandler handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v10}];
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)setControlView:(id)view
{
  viewCopy = view;
  [viewCopy sizeToFit];
  [(HUTitleControlCell *)self setAccessoryView:viewCopy];
}

- (NSString)controlTitle
{
  textLabel = [(HUTitleControlCell *)self textLabel];
  text = [textLabel text];

  return text;
}

- (void)setControlTitle:(id)title
{
  titleCopy = title;
  textLabel = [(HUTitleControlCell *)self textLabel];
  [textLabel setText:titleCopy];
}

- (void)prepareForReuse
{
  [(HUTitleControlCell *)self setControlView:0];
  [(HUTitleControlCell *)self setControlTitle:0];
  v3.receiver = self;
  v3.super_class = HUTitleControlCell;
  [(HUTitleControlCell *)&v3 prepareForReuse];
}

@end