@interface MNNavigationAlertButtonInfo
- (MNNavigationAlertButtonInfo)initWithAction:(unint64_t)action title:(id)title buttonDisplay:(int)display isDefaultButton:(BOOL)button;
- (MNNavigationAlertButtonInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNNavigationAlertButtonInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  title = [(MNNavigationAlertButtonInfo *)self title];
  action = self->_action;
  v6 = @"Unknown";
  if (action == 1)
  {
    v6 = @"Reject";
  }

  if (action == 2)
  {
    v7 = @"Accept";
  }

  else
  {
    v7 = v6;
  }

  buttonDisplay = self->_buttonDisplay;
  if (buttonDisplay >= 3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_buttonDisplay];
  }

  else
  {
    v9 = off_1E842B6F0[buttonDisplay];
  }

  v10 = [v3 stringWithFormat:@"MNNavigationAlertButtonInfo %@ (%@) | %@ | default: %d", title, v7, v9, self->_isDefaultButton];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  action = self->_action;
  coderCopy = coder;
  [coderCopy encodeInteger:action forKey:@"_action"];
  [coderCopy encodeObject:self->_formattedTitle forKey:@"_formattedTitle"];
  [coderCopy encodeInteger:self->_buttonDisplay forKey:@"_buttonDisplay"];
  [coderCopy encodeBool:self->_isDefaultButton forKey:@"_isDefaultButton"];
}

- (MNNavigationAlertButtonInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MNNavigationAlertButtonInfo;
  v5 = [(MNNavigationAlertButtonInfo *)&v10 init];
  if (v5)
  {
    v5->_action = [coderCopy decodeIntegerForKey:@"_action"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_formattedTitle"];
    formattedTitle = v5->_formattedTitle;
    v5->_formattedTitle = v6;

    v5->_buttonDisplay = [coderCopy decodeIntegerForKey:@"_buttonDisplay"];
    v5->_isDefaultButton = [coderCopy decodeBoolForKey:@"_isDefaultButton"];
    v8 = v5;
  }

  return v5;
}

- (MNNavigationAlertButtonInfo)initWithAction:(unint64_t)action title:(id)title buttonDisplay:(int)display isDefaultButton:(BOOL)button
{
  titleCopy = title;
  v16.receiver = self;
  v16.super_class = MNNavigationAlertButtonInfo;
  v12 = [(MNNavigationAlertButtonInfo *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_action = action;
    objc_storeStrong(&v12->_formattedTitle, title);
    v13->_buttonDisplay = display;
    v13->_isDefaultButton = button;
    v14 = v13;
  }

  return v13;
}

@end