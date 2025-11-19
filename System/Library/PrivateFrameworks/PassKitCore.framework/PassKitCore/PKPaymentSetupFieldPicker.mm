@interface PKPaymentSetupFieldPicker
+ (id)pickerItemMatchingValue:(id)a3 pickerItems:(id)a4;
- (BOOL)submissionStringMeetsAllRequirements;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultPickerItem;
- (void)_commonUpdate;
- (void)_updateCurrentValuePickerItem;
- (void)setCurrentValue:(id)a3;
- (void)setDefaultValue:(id)a3;
- (void)setPickerItems:(id)a3;
- (void)updateWithAttribute:(id)a3;
- (void)updateWithConfiguration:(id)a3;
@end

@implementation PKPaymentSetupFieldPicker

- (void)updateWithAttribute:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPaymentSetupFieldPicker;
  [(PKPaymentSetupField *)&v21 updateWithAttribute:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v5 pickerItems];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [PKPaymentSetupFieldPickerItem _itemWithDIAttributePickerItem:*(*(&v17 + 1) + 8 * v11)];
          if (v12)
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v13 = [v6 copy];
      pickerItems = self->_pickerItems;
      self->_pickerItems = v13;
    }

    v15 = [v5 defaultValue];
    v16 = [v15 value];

    if ([v16 length])
    {
      [(PKPaymentSetupFieldPicker *)self setDefaultValue:v16];
    }
  }

  [(PKPaymentSetupFieldPicker *)self _commonUpdate];
}

- (void)updateWithConfiguration:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = PKPaymentSetupFieldPicker;
  [(PKPaymentSetupField *)&v35 updateWithConfiguration:v4];
  v5 = [v4 PKArrayContaining:objc_opt_class() forKey:@"pickerItems"];
  v6 = [v5 count];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = [PKPaymentSetupFieldPickerItem alloc];
          v15 = [(PKPaymentSetupFieldPickerItem *)v14 initWithDictionary:v13, v31];
          if (v15)
          {
            [v7 addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    v16 = [v7 copy];
    pickerItems = self->_pickerItems;
    self->_pickerItems = v16;
  }

  v18 = [v4 PKStringForKey:{@"pickerType", v31}];
  v19 = v18;
  if (v18 == @"radio")
  {
    goto LABEL_15;
  }

  if (!v18)
  {
    goto LABEL_22;
  }

  v20 = [(__CFString *)v18 isEqualToString:@"radio"];

  if (v20)
  {
LABEL_15:
    v21 = 1;
    goto LABEL_23;
  }

  v22 = v19;
  if (v22 == @"multilevelList" || (v23 = v22, v24 = [(__CFString *)v22 isEqualToString:@"multilevelList"], v23, (v24 & 1) != 0))
  {
    v21 = 2;
    goto LABEL_23;
  }

  v25 = v23;
  if (v25 == @"menu" || (v26 = v25, v27 = [(__CFString *)v25 isEqualToString:@"menu"], v26, v27))
  {
    v21 = 3;
  }

  else
  {
LABEL_22:
    v21 = 0;
  }

LABEL_23:

  self->_pickerType = v21;
  v28 = [v4 PKStringForKey:@"localizedDescription"];
  v29 = [v28 length];
  if (v29)
  {
    v30 = [v28 copy];
  }

  else
  {
    v30 = 0;
  }

  objc_storeStrong(&self->_localizedDescription, v30);
  if (v29)
  {
  }

  [(PKPaymentSetupFieldPicker *)self _commonUpdate];
}

- (void)_commonUpdate
{
  [(PKPaymentSetupField *)self setLocalizedPlaceholder:0];
  [(PKPaymentSetupField *)self setDisplayFormat:0];

  [(PKPaymentSetupFieldPicker *)self _updateCurrentValuePickerItem];
}

- (void)setCurrentValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->super._currentValue != v4)
  {
    v11 = v4;
    if (!v4 || (v6 = [(NSArray *)self->_pickerItems containsObject:v4], v5 = v11, v6))
    {
      v7 = [(PKPaymentSetupField *)self attribute];
      v8 = [v11 attributePickerItem];
      [v7 setCurrentValue:v8];

      v9 = [v11 copyWithZone:0];
      currentValue = self->super._currentValue;
      self->super._currentValue = v9;

      [(PKPaymentSetupField *)self noteCurrentValueChanged];
      v5 = v11;
    }
  }
}

- (void)setDefaultValue:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupFieldPicker;
  [(PKPaymentSetupField *)&v4 setDefaultValue:a3];
  [(PKPaymentSetupFieldPicker *)self _updateCurrentValuePickerItem];
}

- (id)defaultPickerItem
{
  v3 = [(PKPaymentSetupField *)self defaultValue];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [(PKPaymentSetupField *)self defaultValue];
    v6 = [v4 pickerItemMatchingValue:v5 pickerItems:self->_pickerItems];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPickerItems:(id)a3
{
  v5 = a3;
  pickerItems = self->_pickerItems;
  v7 = v5;
  if (!v5 || !pickerItems)
  {
    if (pickerItems == v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (([(NSArray *)v5 isEqual:?]& 1) == 0)
  {
LABEL_6:
    objc_storeStrong(&self->_pickerItems, a3);
    [(PKPaymentSetupFieldPicker *)self _updateCurrentValuePickerItem];
  }

LABEL_7:
}

+ (id)pickerItemMatchingValue:(id)a3 pickerItems:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PKPaymentSetupFieldPicker_pickerItemMatchingValue_pickerItems___block_invoke;
  v9[3] = &unk_1E79C8418;
  v10 = v5;
  v6 = v5;
  v7 = [a4 pk_firstObjectPassingTest:v9];

  return v7;
}

BOOL __65__PKPaymentSetupFieldPicker_pickerItemMatchingValue_pickerItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 submissionValue];
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v10 = 1;
    v11 = v6;
LABEL_14:

    goto LABEL_15;
  }

  if (!v6 || !v7)
  {

    goto LABEL_8;
  }

  v9 = [v6 caseInsensitiveCompare:v7];

  if (v9)
  {
LABEL_8:
    v12 = [v3 localizedDisplayName];
    v13 = *(a1 + 32);
    v8 = v12;
    v14 = v13;
    v15 = v14;
    if (v8 == v14)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v8 && v14)
      {
        v10 = [v8 caseInsensitiveCompare:v14] == 0;
      }
    }

    v11 = v8;
    goto LABEL_14;
  }

  v10 = 1;
LABEL_15:

  return v10;
}

- (void)_updateCurrentValuePickerItem
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentSetupField *)self defaultValue];
  if (v3)
  {
    v4 = [objc_opt_class() pickerItemMatchingValue:v3 pickerItems:self->_pickerItems];
    if (v4)
    {
      v5 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v4 submissionValue];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Setting picker currentValue to %@", &v7, 0xCu);
      }

      [(PKPaymentSetupFieldPicker *)self setCurrentValue:v4];
    }
  }
}

- (BOOL)submissionStringMeetsAllRequirements
{
  v2 = [(PKPaymentSetupField *)self submissionString];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupFieldPicker;
  v4 = [(PKPaymentSetupField *)&v6 copyWithZone:a3];
  *(v4 + 22) = self->_pickerType;
  objc_storeStrong(v4 + 21, self->_pickerItems);
  return v4;
}

@end