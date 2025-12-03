@interface DKNotableUserDataWalletCardCell
- (DKNotableUserDataWalletCardCell)initWithTitle:(id)title subtitle:(id)subtitle accessoryView:(id)view;
@end

@implementation DKNotableUserDataWalletCardCell

- (DKNotableUserDataWalletCardCell)initWithTitle:(id)title subtitle:(id)subtitle accessoryView:(id)view
{
  subtitleCopy = subtitle;
  v15.receiver = self;
  v15.super_class = DKNotableUserDataWalletCardCell;
  v9 = [(DKNotableUserDataCardCell *)&v15 initWithTitle:title subtitle:subtitleCopy accessoryView:view];
  if (v9 && ![subtitleCopy length])
  {
    v14.receiver = v9;
    v14.super_class = DKNotableUserDataWalletCardCell;
    labelContainer = [(DKNotableUserDataCardCell *)&v14 labelContainer];
    v13.receiver = v9;
    v13.super_class = DKNotableUserDataWalletCardCell;
    subtitleLabel = [(DKNotableUserDataCardCell *)&v13 subtitleLabel];
    [labelContainer removeArrangedSubview:subtitleLabel];
  }

  return v9;
}

@end