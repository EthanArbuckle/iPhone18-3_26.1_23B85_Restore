@interface PKPaymentSetupFieldPickerItem
+ (id)_itemWithDIAttributePickerItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DIAttributePickerItem)attributePickerItem;
- (PKPaymentSetupFieldPickerItem)initWithDictionary:(id)a3;
- (PKPaymentSetupFieldPickerItem)initWithName:(id)a3 value:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKPaymentSetupFieldPickerItem

- (PKPaymentSetupFieldPickerItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKStringForKey:@"localizedDisplayName"];
  v6 = [v4 PKStringForKey:@"submissionValue"];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v24.receiver = self;
    v24.super_class = PKPaymentSetupFieldPickerItem;
    v9 = [(PKPaymentSetupFieldPickerItem *)&v24 init];
    if (v9)
    {
      v10 = [v5 copy];
      localizedDisplayName = v9->_localizedDisplayName;
      v9->_localizedDisplayName = v10;

      v12 = [v7 copy];
      submissionValue = v9->_submissionValue;
      v9->_submissionValue = v12;

      v14 = [v4 PKStringForKey:@"submissionConfirmationTitle"];
      submissionConfirmationTitle = v9->_submissionConfirmationTitle;
      v9->_submissionConfirmationTitle = v14;

      v16 = [v4 PKStringForKey:@"submissionConfirmationDescription"];
      submissionConfirmationDescription = v9->_submissionConfirmationDescription;
      v9->_submissionConfirmationDescription = v16;

      v18 = [v4 PKDictionaryForKey:@"nextPickerLevel"];
      if (v18)
      {
        v19 = [PKPaymentSetupFieldPicker alloc];
        v20 = [v18 PKStringForKey:@"submissionKey"];
        v21 = [(PKPaymentSetupField *)v19 initWithIdentifier:v20 configuration:v18];
        nextLevelPicker = v9->_nextLevelPicker;
        v9->_nextLevelPicker = v21;
      }
    }

    self = v9;
    v8 = self;
  }

  return v8;
}

+ (id)_itemWithDIAttributePickerItem:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 localizedDisplayName];
  v7 = [v4 value];
  v8 = [v5 initWithName:v6 value:v7];

  [v8 setAttributePickerItem:v4];

  return v8;
}

- (DIAttributePickerItem)attributePickerItem
{
  attributePickerItem = self->_attributePickerItem;
  if (!attributePickerItem)
  {
    v4 = objc_alloc(MEMORY[0x1E6997D80]);
    v5 = [(PKPaymentSetupFieldPickerItem *)self localizedDisplayName];
    v6 = [(PKPaymentSetupFieldPickerItem *)self submissionValue];
    v7 = [v4 initWithName:v5 value:v6];
    v8 = self->_attributePickerItem;
    self->_attributePickerItem = v7;

    attributePickerItem = self->_attributePickerItem;
  }

  return attributePickerItem;
}

- (PKPaymentSetupFieldPickerItem)initWithName:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v16.receiver = self;
    v16.super_class = PKPaymentSetupFieldPickerItem;
    v10 = [(PKPaymentSetupFieldPickerItem *)&v16 init];
    if (v10)
    {
      v11 = [v6 copy];
      localizedDisplayName = v10->_localizedDisplayName;
      v10->_localizedDisplayName = v11;

      v13 = [v8 copy];
      submissionValue = v10->_submissionValue;
      v10->_submissionValue = v13;
    }

    self = v10;
    v9 = self;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  objc_storeStrong(v4 + 1, self->_localizedDisplayName);
  objc_storeStrong(v4 + 2, self->_submissionValue);
  objc_storeStrong(v4 + 3, self->_attributePickerItem);
  objc_storeStrong(v4 + 4, self->_submissionConfirmationTitle);
  objc_storeStrong(v4 + 5, self->_submissionConfirmationDescription);
  objc_storeStrong(v4 + 6, self->_nextLevelPicker);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[1];
    v7 = self->_localizedDisplayName;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (!v7 || !v8)
      {
        goto LABEL_31;
      }

      v10 = [(NSString *)v7 isEqualToString:v8];

      if (!v10)
      {
        goto LABEL_32;
      }
    }

    v12 = v5[2];
    v7 = self->_submissionValue;
    v13 = v12;
    v9 = v13;
    if (v7 == v13)
    {
    }

    else
    {
      if (!v7 || !v13)
      {
        goto LABEL_31;
      }

      v14 = [(NSString *)v7 isEqualToString:v13];

      if (!v14)
      {
        goto LABEL_32;
      }
    }

    attributePickerItem = self->_attributePickerItem;
    v16 = v5[3];
    if (attributePickerItem && v16)
    {
      if (([(DIAttributePickerItem *)attributePickerItem isEqual:?]& 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (attributePickerItem != v16)
    {
      goto LABEL_32;
    }

    v17 = v5[4];
    v7 = self->_submissionConfirmationTitle;
    v18 = v17;
    v9 = v18;
    if (v7 == v18)
    {
    }

    else
    {
      if (!v7 || !v18)
      {
        goto LABEL_31;
      }

      v19 = [(NSString *)v7 isEqualToString:v18];

      if (!v19)
      {
        goto LABEL_32;
      }
    }

    v20 = v5[5];
    v7 = self->_submissionConfirmationDescription;
    v21 = v20;
    v9 = v21;
    if (v7 == v21)
    {

LABEL_36:
      nextLevelPicker = self->_nextLevelPicker;
      v25 = v5[6];
      if (nextLevelPicker && v25)
      {
        v11 = [(PKPaymentSetupFieldPicker *)nextLevelPicker isEqual:?];
      }

      else
      {
        v11 = nextLevelPicker == v25;
      }

      goto LABEL_33;
    }

    if (v7 && v21)
    {
      v22 = [(NSString *)v7 isEqualToString:v21];

      if (v22)
      {
        goto LABEL_36;
      }

LABEL_32:
      v11 = 0;
LABEL_33:

      goto LABEL_34;
    }

LABEL_31:

    goto LABEL_32;
  }

  v11 = 0;
LABEL_34:

  return v11;
}

@end