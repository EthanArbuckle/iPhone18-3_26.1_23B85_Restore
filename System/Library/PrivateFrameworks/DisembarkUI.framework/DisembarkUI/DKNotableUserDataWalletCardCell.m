@interface DKNotableUserDataWalletCardCell
- (DKNotableUserDataWalletCardCell)initWithTitle:(id)a3 subtitle:(id)a4 accessoryView:(id)a5;
@end

@implementation DKNotableUserDataWalletCardCell

- (DKNotableUserDataWalletCardCell)initWithTitle:(id)a3 subtitle:(id)a4 accessoryView:(id)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = DKNotableUserDataWalletCardCell;
  v9 = [(DKNotableUserDataCardCell *)&v15 initWithTitle:a3 subtitle:v8 accessoryView:a5];
  if (v9 && ![v8 length])
  {
    v14.receiver = v9;
    v14.super_class = DKNotableUserDataWalletCardCell;
    v10 = [(DKNotableUserDataCardCell *)&v14 labelContainer];
    v13.receiver = v9;
    v13.super_class = DKNotableUserDataWalletCardCell;
    v11 = [(DKNotableUserDataCardCell *)&v13 subtitleLabel];
    [v10 removeArrangedSubview:v11];
  }

  return v9;
}

@end