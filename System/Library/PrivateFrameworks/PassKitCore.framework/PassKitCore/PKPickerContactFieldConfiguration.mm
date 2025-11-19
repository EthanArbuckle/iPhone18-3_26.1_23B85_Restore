@interface PKPickerContactFieldConfiguration
- (PKPickerContactFieldConfiguration)initWithCoder:(id)a3;
- (PKPickerContactFieldConfiguration)initWithDictionary:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPickerContactFieldConfiguration

- (PKPickerContactFieldConfiguration)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKPickerContactFieldConfiguration;
  v5 = [(PKContactFieldConfiguration *)&v23 initWithType:2];
  if (v5)
  {
    v6 = [v4 PKArrayForKey:@"items"];
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = [PKContactPickerItem alloc];
          v15 = [(PKContactPickerItem *)v14 initWithDictionary:v13, v19];
          if (v15)
          {
            [v7 addObject:v15];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    v16 = [v7 copy];
    pickerItems = v5->_pickerItems;
    v5->_pickerItems = v16;
  }

  return v5;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"%@: '%@'; ", @"items", self->_pickerItems];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPickerContactFieldConfiguration;
  v4 = a3;
  [(PKContactFieldConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_pickerItems forKey:{@"items", v5.receiver, v5.super_class}];
}

- (PKPickerContactFieldConfiguration)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPickerContactFieldConfiguration;
  v5 = [(PKContactFieldConfiguration *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 initWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"items"];
    pickerItems = v5->_pickerItems;
    v5->_pickerItems = v9;
  }

  return v5;
}

@end