@interface IOUserNotificationOption
- (IOUserNotificationOption)initWithTitle:(id)title selected:(BOOL)selected;
- (id)description;
@end

@implementation IOUserNotificationOption

- (IOUserNotificationOption)initWithTitle:(id)title selected:(BOOL)selected
{
  titleCopy = title;
  v11.receiver = self;
  v11.super_class = IOUserNotificationOption;
  v7 = [(IOUserNotificationOption *)&v11 init];
  if (v7)
  {
    v8 = [titleCopy copy];
    title = v7->_title;
    v7->_title = v8;

    v7->_selected = selected;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  title = [(IOUserNotificationOption *)self title];
  v7 = [v3 stringWithFormat:@"<%@: %p, title: %@, selected: %d>", v5, self, title, -[IOUserNotificationOption selected](self, "selected")];

  return v7;
}

@end