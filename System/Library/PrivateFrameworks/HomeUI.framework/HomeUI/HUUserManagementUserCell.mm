@interface HUUserManagementUserCell
- (HUUserManagementUserCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setDisplayName:(id)name;
- (void)setInvitationStatusString:(id)string;
@end

@implementation HUUserManagementUserCell

- (HUUserManagementUserCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = HUUserManagementUserCell;
  v4 = [(HUUserManagementUserCell *)&v10 initWithStyle:1 reuseIdentifier:identifier];
  if (v4)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    textLabel = [(HUUserManagementUserCell *)v4 textLabel];
    [textLabel setTextColor:labelColor];

    systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
    detailTextLabel = [(HUUserManagementUserCell *)v4 detailTextLabel];
    [detailTextLabel setTextColor:systemLightGrayColor];

    [(HUUserManagementUserCell *)v4 setAccessoryType:1];
    [(HUUserManagementUserCell *)v4 setSelectionStyle:3];
  }

  return v4;
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  if (self->_displayName != nameCopy)
  {
    v7 = nameCopy;
    objc_storeStrong(&self->_displayName, name);
    textLabel = [(HUUserManagementUserCell *)self textLabel];
    [textLabel setText:v7];

    nameCopy = v7;
  }
}

- (void)setInvitationStatusString:(id)string
{
  stringCopy = string;
  if (self->_invitationStatusString != stringCopy)
  {
    v7 = stringCopy;
    objc_storeStrong(&self->_invitationStatusString, string);
    detailTextLabel = [(HUUserManagementUserCell *)self detailTextLabel];
    [detailTextLabel setText:v7];

    stringCopy = v7;
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = HUUserManagementUserCell;
  [(HUUserManagementUserCell *)&v13 layoutSubviews];
  textLabel = [(HUUserManagementUserCell *)self textLabel];
  [textLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  textLabel2 = [(HUUserManagementUserCell *)self textLabel];
  [textLabel2 setFrame:{v5, v7 + -1.0, v9, v11}];
}

@end