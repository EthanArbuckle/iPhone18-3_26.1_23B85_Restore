@interface HKMCNotification
- (BOOL)isEqual:(id)equal;
- (HKMCNotification)initWithCategory:(id)category dueDateComponents:(id)components;
- (HKMCNotification)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCNotification

- (HKMCNotification)initWithCategory:(id)category dueDateComponents:(id)components
{
  categoryCopy = category;
  componentsCopy = components;
  v14.receiver = self;
  v14.super_class = HKMCNotification;
  v8 = [(HKMCNotification *)&v14 init];
  if (v8)
  {
    v9 = [categoryCopy copy];
    category = v8->_category;
    v8->_category = v9;

    v11 = [componentsCopy copy];
    dueDateComponents = v8->_dueDateComponents;
    v8->_dueDateComponents = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      category = self->_category;
      category = [(HKMCNotification *)v5 category];
      if ([(NSString *)category isEqualToString:category])
      {
        dueDateComponents = self->_dueDateComponents;
        dueDateComponents = [(HKMCNotification *)v5 dueDateComponents];
        v10 = [(NSDateComponents *)dueDateComponents isEqual:dueDateComponents];
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

- (void)encodeWithCoder:(id)coder
{
  category = self->_category;
  coderCopy = coder;
  [coderCopy encodeObject:category forKey:@"Category"];
  [coderCopy encodeObject:self->_dueDateComponents forKey:@"DueDateComponents"];
}

- (HKMCNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKMCNotification;
  v5 = [(HKMCNotification *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Category"];
    category = v5->_category;
    v5->_category = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DueDateComponents"];
    dueDateComponents = v5->_dueDateComponents;
    v5->_dueDateComponents = v8;
  }

  return v5;
}

@end