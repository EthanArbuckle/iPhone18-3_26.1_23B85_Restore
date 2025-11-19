@interface IOUserNotificationOption
- (IOUserNotificationOption)initWithTitle:(id)a3 selected:(BOOL)a4;
- (id)description;
@end

@implementation IOUserNotificationOption

- (IOUserNotificationOption)initWithTitle:(id)a3 selected:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = IOUserNotificationOption;
  v7 = [(IOUserNotificationOption *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    title = v7->_title;
    v7->_title = v8;

    v7->_selected = a4;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(IOUserNotificationOption *)self title];
  v7 = [v3 stringWithFormat:@"<%@: %p, title: %@, selected: %d>", v5, self, v6, -[IOUserNotificationOption selected](self, "selected")];

  return v7;
}

@end