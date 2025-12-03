@interface PKCloudRecordAccount
- (PKCloudRecordAccount)initWithCoder:(id)coder;
- (id)_descriptionWithIncludeItem:(BOOL)item;
- (id)description;
- (id)descriptionWithItem:(BOOL)item;
- (int64_t)compare:(id)compare;
- (void)applyCloudRecordObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudRecordAccount

- (PKCloudRecordAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKCloudRecordAccount;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKCloudRecordAccount;
  coderCopy = coder;
  [(PKCloudRecordObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_account forKey:{@"account", v5.receiver, v5.super_class}];
}

- (int64_t)compare:(id)compare
{
  account = self->_account;
  compareCopy = compare;
  accountIdentifier = [(PKAccount *)account accountIdentifier];
  account = [compareCopy account];

  accountIdentifier2 = [account accountIdentifier];
  v8 = [accountIdentifier compare:accountIdentifier2];

  return v8;
}

- (id)descriptionWithItem:(BOOL)item
{
  itemCopy = item;
  v5 = [(PKCloudRecordAccount *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordAccount;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:itemCopy];
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

- (id)_descriptionWithIncludeItem:(BOOL)item
{
  itemCopy = item;
  string = [MEMORY[0x1E696AD60] string];
  account = self->_account;
  if (account)
  {
    if (itemCopy)
    {
      accountIdentifier = [(PKAccount *)account accountIdentifier];
      v8 = PKFeatureIdentifierToString([(PKAccount *)self->_account feature]);
      [string appendFormat:@"account: id: %@, feature: %@\n", accountIdentifier, v8];
    }
  }

  else
  {
    [string appendFormat:@"No associated account in database\n"];
  }

  return string;
}

- (void)applyCloudRecordObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = PKCloudRecordAccount;
    [(PKCloudRecordObject *)&v10 applyCloudRecordObject:objectCopy];
    v5 = objectCopy;
    v6 = v5;
    if (!self->_account)
    {
      account = [v5 account];

      if (account)
      {
        account2 = [v6 account];
        account = self->_account;
        self->_account = account2;
      }
    }
  }
}

@end