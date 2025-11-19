@interface PKCloudRecordAccount
- (PKCloudRecordAccount)initWithCoder:(id)a3;
- (id)_descriptionWithIncludeItem:(BOOL)a3;
- (id)description;
- (id)descriptionWithItem:(BOOL)a3;
- (int64_t)compare:(id)a3;
- (void)applyCloudRecordObject:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudRecordAccount

- (PKCloudRecordAccount)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKCloudRecordAccount;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKCloudRecordAccount;
  v4 = a3;
  [(PKCloudRecordObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_account forKey:{@"account", v5.receiver, v5.super_class}];
}

- (int64_t)compare:(id)a3
{
  account = self->_account;
  v4 = a3;
  v5 = [(PKAccount *)account accountIdentifier];
  v6 = [v4 account];

  v7 = [v6 accountIdentifier];
  v8 = [v5 compare:v7];

  return v8;
}

- (id)descriptionWithItem:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKCloudRecordAccount *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordAccount;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:v3];
  [v5 appendFormat:@"\n%@", v6];

  return v5;
}

- (id)description
{
  v3 = [(PKCloudRecordAccount *)self _descriptionWithIncludeItem:0];
  v6.receiver = self;
  v6.super_class = PKCloudRecordAccount;
  v4 = [(PKCloudRecordObject *)&v6 description];
  [v3 appendFormat:@"\n%@", v4];

  return v3;
}

- (id)_descriptionWithIncludeItem:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  account = self->_account;
  if (account)
  {
    if (v3)
    {
      v7 = [(PKAccount *)account accountIdentifier];
      v8 = PKFeatureIdentifierToString([(PKAccount *)self->_account feature]);
      [v5 appendFormat:@"account: id: %@, feature: %@\n", v7, v8];
    }
  }

  else
  {
    [v5 appendFormat:@"No associated account in database\n"];
  }

  return v5;
}

- (void)applyCloudRecordObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = PKCloudRecordAccount;
    [(PKCloudRecordObject *)&v10 applyCloudRecordObject:v4];
    v5 = v4;
    v6 = v5;
    if (!self->_account)
    {
      v7 = [v5 account];

      if (v7)
      {
        v8 = [v6 account];
        account = self->_account;
        self->_account = v8;
      }
    }
  }
}

@end