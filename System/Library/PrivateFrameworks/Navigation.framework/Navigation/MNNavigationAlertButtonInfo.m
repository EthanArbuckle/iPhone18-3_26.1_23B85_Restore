@interface MNNavigationAlertButtonInfo
- (MNNavigationAlertButtonInfo)initWithAction:(unint64_t)a3 title:(id)a4 buttonDisplay:(int)a5 isDefaultButton:(BOOL)a6;
- (MNNavigationAlertButtonInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNNavigationAlertButtonInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MNNavigationAlertButtonInfo *)self title];
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

  v10 = [v3 stringWithFormat:@"MNNavigationAlertButtonInfo %@ (%@) | %@ | default: %d", v4, v7, v9, self->_isDefaultButton];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  action = self->_action;
  v5 = a3;
  [v5 encodeInteger:action forKey:@"_action"];
  [v5 encodeObject:self->_formattedTitle forKey:@"_formattedTitle"];
  [v5 encodeInteger:self->_buttonDisplay forKey:@"_buttonDisplay"];
  [v5 encodeBool:self->_isDefaultButton forKey:@"_isDefaultButton"];
}

- (MNNavigationAlertButtonInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MNNavigationAlertButtonInfo;
  v5 = [(MNNavigationAlertButtonInfo *)&v10 init];
  if (v5)
  {
    v5->_action = [v4 decodeIntegerForKey:@"_action"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_formattedTitle"];
    formattedTitle = v5->_formattedTitle;
    v5->_formattedTitle = v6;

    v5->_buttonDisplay = [v4 decodeIntegerForKey:@"_buttonDisplay"];
    v5->_isDefaultButton = [v4 decodeBoolForKey:@"_isDefaultButton"];
    v8 = v5;
  }

  return v5;
}

- (MNNavigationAlertButtonInfo)initWithAction:(unint64_t)a3 title:(id)a4 buttonDisplay:(int)a5 isDefaultButton:(BOOL)a6
{
  v11 = a4;
  v16.receiver = self;
  v16.super_class = MNNavigationAlertButtonInfo;
  v12 = [(MNNavigationAlertButtonInfo *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_action = a3;
    objc_storeStrong(&v12->_formattedTitle, a4);
    v13->_buttonDisplay = a5;
    v13->_isDefaultButton = a6;
    v14 = v13;
  }

  return v13;
}

@end