@interface PKCloudRecordPass
- (PKCloudRecordPass)initWithCoder:(id)a3;
- (id)_descriptionWithIncludeItem:(BOOL)a3;
- (id)description;
- (id)descriptionWithItem:(BOOL)a3;
- (int64_t)compare:(id)a3;
- (void)applyCloudRecordObject:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudRecordPass

- (PKCloudRecordPass)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKCloudRecordPass;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pass"];
    pass = v5->_pass;
    v5->_pass = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKCloudRecordPass;
  v4 = a3;
  [(PKCloudRecordObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_pass forKey:{@"pass", v5.receiver, v5.super_class}];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(PKCloudRecordPass *)self pass];
    v6 = [v5 organizationName];
    v7 = [v4 pass];
    v8 = [v7 organizationName];
    v9 = [v6 compare:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)descriptionWithItem:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKCloudRecordPass *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordPass;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:v3];
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

- (id)_descriptionWithIncludeItem:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  pass = self->_pass;
  if (pass)
  {
    if (v3)
    {
      v7 = [(PKPass *)pass organizationName];
      v8 = [(PKPass *)self->_pass localizedName];
      v9 = [(PKObject *)self->_pass uniqueID];
      [v5 appendFormat:@"pass: name: %@, type: %@, unique id: %@\n%@\n", v7, v8, v9, self->_pass];
    }
  }

  else
  {
    [v5 appendFormat:@"No associated pass in database\n"];
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
    v10.super_class = PKCloudRecordPass;
    [(PKCloudRecordObject *)&v10 applyCloudRecordObject:v4];
    v5 = v4;
    v6 = v5;
    if (!self->_pass)
    {
      v7 = [v5 pass];

      if (v7)
      {
        v8 = [v6 pass];
        pass = self->_pass;
        self->_pass = v8;
      }
    }
  }
}

@end