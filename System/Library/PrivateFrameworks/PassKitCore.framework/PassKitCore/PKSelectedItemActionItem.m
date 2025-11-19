@interface PKSelectedItemActionItem
- (PKSelectedItemActionItem)initWithCoder:(id)a3;
- (PKSelectedItemActionItem)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_processLocalizableStrings:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)serviceProviderDataWithPass:(id)a3 currentLocalBalance:(id)a4 completion:(id)a5;
@end

@implementation PKSelectedItemActionItem

- (PKSelectedItemActionItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PKSelectedItemActionItem;
  v5 = [(PKSelectedItemActionItem *)&v27 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 PKStringForKey:@"title"];
    v10 = [v9 copy];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 PKDecimalNumberForKey:@"amount"];
    v13 = [v12 copy];
    amount = v5->_amount;
    v5->_amount = v13;

    v15 = [v4 PKStringForKey:@"currency"];
    v16 = [v15 copy];
    currency = v5->_currency;
    v5->_currency = v16;

    v18 = [v4 PKDateForKey:@"newExpirationDate"];
    v19 = [v18 copy];
    newExpirationDate = v5->_newExpirationDate;
    v5->_newExpirationDate = v19;

    v21 = [v4 PKDictionaryForKey:@"serviceProviderData"];
    v22 = [v21 copy];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v22;

    v5->_serviceProviderDataRequiresLocalBalance = [v4 PKBoolForKey:@"serviceProviderDataRequiresLocalBalance"];
    v5->_serviceProviderDataRequiresAppletData = [v4 PKBoolForKey:@"serviceProviderDataRequiresAppletData"];
    v24 = +[PKPassLibrary sharedInstance];
    sharedLibrary = v5->_sharedLibrary;
    v5->_sharedLibrary = v24;
  }

  return v5;
}

- (void)_processLocalizableStrings:(id)a3
{
  v4 = a3;
  if (v4 && self->_title)
  {
    v7 = v4;
    v5 = v4[2]();
    title = self->_title;
    self->_title = v5;

    v4 = v7;
  }
}

- (void)serviceProviderDataWithPass:(id)a3 currentLocalBalance:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSDictionary *)self->_serviceProviderData mutableCopy];
  v12 = v11;
  if (v9 && self->_serviceProviderDataRequiresLocalBalance)
  {
    [v11 setObject:v9 forKeyedSubscript:@"localBalance"];
  }

  if (self->_serviceProviderDataRequiresAppletData)
  {
    sharedLibrary = self->_sharedLibrary;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __87__PKSelectedItemActionItem_serviceProviderDataWithPass_currentLocalBalance_completion___block_invoke;
    v15[3] = &unk_1E79C4518;
    v16 = v12;
    v17 = v10;
    [(PKPassLibrary *)sharedLibrary encryptedServiceProviderDataForSecureElementPass:v8 completion:v15];
  }

  else
  {
    v14 = [v12 copy];
    (*(v10 + 2))(v10, v14);
  }
}

void __87__PKSelectedItemActionItem_serviceProviderDataWithPass_currentLocalBalance_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKeyedSubscript:@"appletData"];
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) copy];
  (*(v3 + 16))(v3, v4);
}

- (PKSelectedItemActionItem)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PKSelectedItemActionItem;
  v5 = [(PKSelectedItemActionItem *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v10 = [v9 copy];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    v13 = [v12 copy];
    amount = v5->_amount;
    v5->_amount = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    v16 = [v15 copy];
    currency = v5->_currency;
    v5->_currency = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"newExpirationDate"];
    newExpirationDate = v5->_newExpirationDate;
    v5->_newExpirationDate = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v20 setWithObjects:{v21, v22, v23, v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"serviceProviderData"];
    v27 = [v26 copy];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v27;

    v5->_serviceProviderDataRequiresLocalBalance = [v4 decodeBoolForKey:@"serviceProviderDataRequiresLocalBalance"];
    v5->_serviceProviderDataRequiresAppletData = [v4 decodeBoolForKey:@"serviceProviderDataRequiresAppletData"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_amount forKey:@"amount"];
  [v5 encodeObject:self->_currency forKey:@"currency"];
  [v5 encodeObject:self->_newExpirationDate forKey:@"newExpirationDate"];
  [v5 encodeObject:self->_serviceProviderData forKey:@"serviceProviderData"];
  [v5 encodeBool:self->_serviceProviderDataRequiresLocalBalance forKey:@"serviceProviderDataRequiresLocalBalance"];
  [v5 encodeBool:self->_serviceProviderDataRequiresAppletData forKey:@"serviceProviderDataRequiresAppletData"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_title copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSDecimalNumber *)self->_amount copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_currency copyWithZone:a3];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSDate *)self->_newExpirationDate copyWithZone:a3];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v16 = [(NSDictionary *)self->_serviceProviderData copyWithZone:a3];
  v17 = *(v5 + 64);
  *(v5 + 64) = v16;

  *(v5 + 16) = self->_serviceProviderDataRequiresLocalBalance;
  *(v5 + 17) = self->_serviceProviderDataRequiresAppletData;
  return v5;
}

@end