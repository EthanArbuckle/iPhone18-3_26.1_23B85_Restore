@interface HKMCNotification
- (BOOL)isEqual:(id)a3;
- (HKMCNotification)initWithCategory:(id)a3 dueDateComponents:(id)a4;
- (HKMCNotification)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCNotification

- (HKMCNotification)initWithCategory:(id)a3 dueDateComponents:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKMCNotification;
  v8 = [(HKMCNotification *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    category = v8->_category;
    v8->_category = v9;

    v11 = [v7 copy];
    dueDateComponents = v8->_dueDateComponents;
    v8->_dueDateComponents = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      category = self->_category;
      v7 = [(HKMCNotification *)v5 category];
      if ([(NSString *)category isEqualToString:v7])
      {
        dueDateComponents = self->_dueDateComponents;
        v9 = [(HKMCNotification *)v5 dueDateComponents];
        v10 = [(NSDateComponents *)dueDateComponents isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  category = self->_category;
  v5 = a3;
  [v5 encodeObject:category forKey:@"Category"];
  [v5 encodeObject:self->_dueDateComponents forKey:@"DueDateComponents"];
}

- (HKMCNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKMCNotification;
  v5 = [(HKMCNotification *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Category"];
    category = v5->_category;
    v5->_category = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DueDateComponents"];
    dueDateComponents = v5->_dueDateComponents;
    v5->_dueDateComponents = v8;
  }

  return v5;
}

@end