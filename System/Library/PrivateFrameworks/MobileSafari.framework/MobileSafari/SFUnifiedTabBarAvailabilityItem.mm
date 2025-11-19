@interface SFUnifiedTabBarAvailabilityItem
- (SFUnifiedTabBarAvailabilityItem)initWithTitle:(id)a3 image:(id)a4 buttonType:(int64_t)a5 action:(id)a6;
- (void)performAction;
@end

@implementation SFUnifiedTabBarAvailabilityItem

- (SFUnifiedTabBarAvailabilityItem)initWithTitle:(id)a3 image:(id)a4 buttonType:(int64_t)a5 action:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = SFUnifiedTabBarAvailabilityItem;
  v13 = [(SFUnifiedTabBarAvailabilityItem *)&v20 init];
  if (v13)
  {
    v14 = [v10 copy];
    title = v13->_title;
    v13->_title = v14;

    objc_storeStrong(&v13->_image, a4);
    v13->_buttonType = a5;
    v16 = [v12 copy];
    action = v13->_action;
    v13->_action = v16;

    v18 = v13;
  }

  return v13;
}

- (void)performAction
{
  action = self->_action;
  if (action)
  {
    action[2]();
  }
}

@end