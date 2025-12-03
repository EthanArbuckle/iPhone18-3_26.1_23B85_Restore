@interface PKCloudRecordPass
- (PKCloudRecordPass)initWithCoder:(id)coder;
- (id)_descriptionWithIncludeItem:(BOOL)item;
- (id)description;
- (id)descriptionWithItem:(BOOL)item;
- (int64_t)compare:(id)compare;
- (void)applyCloudRecordObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudRecordPass

- (PKCloudRecordPass)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKCloudRecordPass;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pass"];
    pass = v5->_pass;
    v5->_pass = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKCloudRecordPass;
  coderCopy = coder;
  [(PKCloudRecordObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_pass forKey:{@"pass", v5.receiver, v5.super_class}];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (compareCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    pass = [(PKCloudRecordPass *)self pass];
    organizationName = [pass organizationName];
    pass2 = [compareCopy pass];
    organizationName2 = [pass2 organizationName];
    v9 = [organizationName compare:organizationName2];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)descriptionWithItem:(BOOL)item
{
  itemCopy = item;
  v5 = [(PKCloudRecordPass *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordPass;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:itemCopy];
  [v5 appendFormat:@"\n%@", v6];

  return v5;
}

- (id)description
{
  v3 = [(PKCloudRecordPass *)self _descriptionWithIncludeItem:0];
  v6.receiver = self;
  v6.super_class = PKCloudRecordPass;
  v4 = [(PKCloudRecordObject *)&v6 description];
  [v3 appendFormat:@"\n%@", v4];

  return v3;
}

- (id)_descriptionWithIncludeItem:(BOOL)item
{
  itemCopy = item;
  string = [MEMORY[0x1E696AD60] string];
  pass = self->_pass;
  if (pass)
  {
    if (itemCopy)
    {
      organizationName = [(PKPass *)pass organizationName];
      localizedName = [(PKPass *)self->_pass localizedName];
      uniqueID = [(PKObject *)self->_pass uniqueID];
      [string appendFormat:@"pass: name: %@, type: %@, unique id: %@\n%@\n", organizationName, localizedName, uniqueID, self->_pass];
    }
  }

  else
  {
    [string appendFormat:@"No associated pass in database\n"];
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
    v10.super_class = PKCloudRecordPass;
    [(PKCloudRecordObject *)&v10 applyCloudRecordObject:objectCopy];
    v5 = objectCopy;
    v6 = v5;
    if (!self->_pass)
    {
      pass = [v5 pass];

      if (pass)
      {
        pass2 = [v6 pass];
        pass = self->_pass;
        self->_pass = pass2;
      }
    }
  }
}

@end