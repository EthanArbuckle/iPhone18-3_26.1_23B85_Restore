@interface HUTitleControlCell
- (HUControlView)controlView;
- (HUTitleControlCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)controlTitle;
- (id)allControlViews;
- (void)prepareForReuse;
- (void)setControlTitle:(id)a3;
- (void)setControlView:(id)a3;
@end

@implementation HUTitleControlCell

- (HUTitleControlCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HUTitleControlCell;
  v4 = [(HUTitleControlCell *)&v7 initWithStyle:0 reuseIdentifier:a4];
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
  v3 = [(HUTitleControlCell *)self controlView];
  v4 = [v2 na_setWithSafeObject:v3];

  return v4;
}

- (HUControlView)controlView
{
  v2 = [(HUTitleControlCell *)self accessoryView];
  v3 = &unk_2824E6B40;
  v4 = v2;
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

    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v10 = NSStringFromProtocol(v3);
    [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v10}];
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)setControlView:(id)a3
{
  v4 = a3;
  [v4 sizeToFit];
  [(HUTitleControlCell *)self setAccessoryView:v4];
}

- (NSString)controlTitle
{
  v2 = [(HUTitleControlCell *)self textLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setControlTitle:(id)a3
{
  v4 = a3;
  v5 = [(HUTitleControlCell *)self textLabel];
  [v5 setText:v4];
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