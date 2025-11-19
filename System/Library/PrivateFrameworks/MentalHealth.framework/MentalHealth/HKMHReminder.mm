@interface HKMHReminder
- (HKMHReminder)initWithCoder:(id)a3;
- (HKMHReminder)initWithDateComponents:(id)a3 isEnabled:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMHReminder

- (HKMHReminder)initWithDateComponents:(id)a3 isEnabled:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HKMHReminder;
  v7 = [(HKMHReminder *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    dateComponents = v7->_dateComponents;
    v7->_dateComponents = v8;

    v7->_isEnabled = a4;
  }

  return v7;
}

- (HKMHReminder)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"EnabledKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DateComponentsKey"];

  v7 = [(HKMHReminder *)self initWithDateComponents:v6 isEnabled:v5];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  isEnabled = self->_isEnabled;
  v5 = a3;
  [v5 encodeBool:isEnabled forKey:@"EnabledKey"];
  [v5 encodeObject:self->_dateComponents forKey:@"DateComponentsKey"];
}

@end