@interface HKMHReminder
- (HKMHReminder)initWithCoder:(id)coder;
- (HKMHReminder)initWithDateComponents:(id)components isEnabled:(BOOL)enabled;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMHReminder

- (HKMHReminder)initWithDateComponents:(id)components isEnabled:(BOOL)enabled
{
  componentsCopy = components;
  v11.receiver = self;
  v11.super_class = HKMHReminder;
  v7 = [(HKMHReminder *)&v11 init];
  if (v7)
  {
    v8 = [componentsCopy copy];
    dateComponents = v7->_dateComponents;
    v7->_dateComponents = v8;

    v7->_isEnabled = enabled;
  }

  return v7;
}

- (HKMHReminder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"EnabledKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DateComponentsKey"];

  v7 = [(HKMHReminder *)self initWithDateComponents:v6 isEnabled:v5];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  isEnabled = self->_isEnabled;
  coderCopy = coder;
  [coderCopy encodeBool:isEnabled forKey:@"EnabledKey"];
  [coderCopy encodeObject:self->_dateComponents forKey:@"DateComponentsKey"];
}

@end