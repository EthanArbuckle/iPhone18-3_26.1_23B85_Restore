@interface SFUnifiedTabBarAvailabilityItem
- (SFUnifiedTabBarAvailabilityItem)initWithTitle:(id)title image:(id)image buttonType:(int64_t)type action:(id)action;
- (void)performAction;
@end

@implementation SFUnifiedTabBarAvailabilityItem

- (SFUnifiedTabBarAvailabilityItem)initWithTitle:(id)title image:(id)image buttonType:(int64_t)type action:(id)action
{
  titleCopy = title;
  imageCopy = image;
  actionCopy = action;
  v20.receiver = self;
  v20.super_class = SFUnifiedTabBarAvailabilityItem;
  v13 = [(SFUnifiedTabBarAvailabilityItem *)&v20 init];
  if (v13)
  {
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    objc_storeStrong(&v13->_image, image);
    v13->_buttonType = type;
    v16 = [actionCopy copy];
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