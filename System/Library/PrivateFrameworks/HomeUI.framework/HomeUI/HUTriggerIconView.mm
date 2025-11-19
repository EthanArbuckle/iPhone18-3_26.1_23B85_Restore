@interface HUTriggerIconView
- (CGSize)intrinsicContentSize;
- (HUTriggerIconView)initWithIconDescriptor:(id)a3;
- (void)layoutSubviews;
@end

@implementation HUTriggerIconView

- (HUTriggerIconView)initWithIconDescriptor:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HUTriggerIconView;
  v5 = [(HUTriggerIconView *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D180D0]);
    iconView = v5->_iconView;
    v5->_iconView = v6;

    [(HUIconView *)v5->_iconView setIconSize:3];
    v8 = [v4 identifier];
    v9 = [v8 isEqualToString:@"HFImageIconIdentifierSeparatorArrow"];

    if ((v9 & 1) == 0)
    {
      [(HUIconView *)v5->_iconView setContentMode:1];
    }

    [(HUIconView *)v5->_iconView updateWithIconDescriptor:v4 displayStyle:1 animated:0];
    [(HUTriggerIconView *)v5 addSubview:v5->_iconView];
  }

  return v5;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = HUTriggerIconView;
  [(HUTriggerIconView *)&v12 layoutSubviews];
  [(HUTriggerIconView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(HUTriggerIconView *)self iconView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(HUTriggerIconView *)self iconView];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end