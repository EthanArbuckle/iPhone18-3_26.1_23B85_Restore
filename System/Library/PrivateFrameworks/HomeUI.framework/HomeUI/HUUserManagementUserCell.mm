@interface HUUserManagementUserCell
- (HUUserManagementUserCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setDisplayName:(id)a3;
- (void)setInvitationStatusString:(id)a3;
@end

@implementation HUUserManagementUserCell

- (HUUserManagementUserCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = HUUserManagementUserCell;
  v4 = [(HUUserManagementUserCell *)&v10 initWithStyle:1 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] labelColor];
    v6 = [(HUUserManagementUserCell *)v4 textLabel];
    [v6 setTextColor:v5];

    v7 = [MEMORY[0x277D75348] systemLightGrayColor];
    v8 = [(HUUserManagementUserCell *)v4 detailTextLabel];
    [v8 setTextColor:v7];

    [(HUUserManagementUserCell *)v4 setAccessoryType:1];
    [(HUUserManagementUserCell *)v4 setSelectionStyle:3];
  }

  return v4;
}

- (void)setDisplayName:(id)a3
{
  v5 = a3;
  if (self->_displayName != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_displayName, a3);
    v6 = [(HUUserManagementUserCell *)self textLabel];
    [v6 setText:v7];

    v5 = v7;
  }
}

- (void)setInvitationStatusString:(id)a3
{
  v5 = a3;
  if (self->_invitationStatusString != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_invitationStatusString, a3);
    v6 = [(HUUserManagementUserCell *)self detailTextLabel];
    [v6 setText:v7];

    v5 = v7;
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = HUUserManagementUserCell;
  [(HUUserManagementUserCell *)&v13 layoutSubviews];
  v3 = [(HUUserManagementUserCell *)self textLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(HUUserManagementUserCell *)self textLabel];
  [v12 setFrame:{v5, v7 + -1.0, v9, v11}];
}

@end