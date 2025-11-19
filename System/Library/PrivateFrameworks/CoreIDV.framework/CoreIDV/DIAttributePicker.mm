@interface DIAttributePicker
- (DIAttributePicker)init;
- (DIAttributePicker)initWithCoder:(id)a3;
- (DIAttributePickerItem)defaultValue;
- (DIAttributePickerItem)getCurrentValue;
- (NSArray)pickerItems;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setCurrentValue:(id)a3;
- (void)setDefaultValue:(id)a3;
- (void)setPickerItems:(id)a3;
@end

@implementation DIAttributePicker

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = DIAttributePicker;
  v4 = a3;
  [(DIAttribute *)&v5 encodeWithCoder:v4];
  os_unfair_lock_lock(&self->super._lock);
  [v4 encodeObject:self->_pickerItems forKey:{@"pickerItems", v5.receiver, v5.super_class}];

  os_unfair_lock_unlock(&self->super._lock);
}

- (DIAttributePicker)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DIAttributePicker;
  v5 = [(DIAttribute *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"pickerItems"];
    pickerItems = v5->_pickerItems;
    v5->_pickerItems = v9;
  }

  return v5;
}

- (DIAttributePicker)init
{
  v5.receiver = self;
  v5.super_class = DIAttributePicker;
  v2 = [(DIAttribute *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DIAttribute *)v2 setAttributeType:5];
  }

  return v3;
}

- (void)setCurrentValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = DIAttributePicker;
  [(DIAttribute *)&v3 setCurrentValue:a3];
}

- (void)setDefaultValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = DIAttributePicker;
  [(DIAttribute *)&v3 setDefaultValue:a3];
}

- (void)setPickerItems:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_pickerItems != v6)
  {
    v4 = [(NSArray *)v6 copyWithZone:0];
    pickerItems = self->_pickerItems;
    self->_pickerItems = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (DIAttributePickerItem)getCurrentValue
{
  v4.receiver = self;
  v4.super_class = DIAttributePicker;
  v2 = [(DIAttribute *)&v4 getCurrentValue];

  return v2;
}

- (DIAttributePickerItem)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributePicker;
  v2 = [(DIAttribute *)&v4 defaultValue];

  return v2;
}

- (NSArray)pickerItems
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_pickerItems;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v21.receiver = self;
  v21.super_class = DIAttributePicker;
  v4 = [(DIAttribute *)&v21 description];
  [v3 appendFormat:@"%@", v4];

  v5 = [(DIAttributePicker *)self defaultValue];
  v6 = [v5 description];
  [v3 appendFormat:@"defaultValue: '%@'; ", v6];

  v7 = [(DIAttributePicker *)self getCurrentValue];
  v8 = [v7 description];
  [v3 appendFormat:@"currentValue: '%@'; ", v8];

  os_unfair_lock_lock(&self->super._lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_pickerItems;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) description];
        [v3 appendFormat:@"    picker item: '%@'\n", v14];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v11);
  }

  os_unfair_lock_unlock(&self->super._lock);
  [v3 appendFormat:@">"];
  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

@end