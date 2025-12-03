@interface IOUserNotificationButton
+ (id)buttonWithTitle:(id)title;
- (IOUserNotificationButton)initWithTitle:(id)title;
- (id)description;
@end

@implementation IOUserNotificationButton

+ (id)buttonWithTitle:(id)title
{
  titleCopy = title;
  v5 = [[self alloc] initWithTitle:titleCopy];

  return v5;
}

- (IOUserNotificationButton)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = IOUserNotificationButton;
  v5 = [(IOUserNotificationButton *)&v9 init];
  if (v5)
  {
    v6 = [titleCopy copy];
    title = v5->_title;
    v5->_title = v6;

    v5->_selected = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  title = [(IOUserNotificationButton *)self title];
  v7 = [v3 stringWithFormat:@"<%@: %p, title: %@, selected: %d>", v5, self, title, -[IOUserNotificationButton selected](self, "selected")];

  return v7;
}

@end