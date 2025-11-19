@interface IOUserNotificationButton
+ (id)buttonWithTitle:(id)a3;
- (IOUserNotificationButton)initWithTitle:(id)a3;
- (id)description;
@end

@implementation IOUserNotificationButton

+ (id)buttonWithTitle:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTitle:v4];

  return v5;
}

- (IOUserNotificationButton)initWithTitle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IOUserNotificationButton;
  v5 = [(IOUserNotificationButton *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v6 = [(IOUserNotificationButton *)self title];
  v7 = [v3 stringWithFormat:@"<%@: %p, title: %@, selected: %d>", v5, self, v6, -[IOUserNotificationButton selected](self, "selected")];

  return v7;
}

@end