@interface PKCloudRecordIssuerMessagingFlag
- (PKCloudRecordIssuerMessagingFlag)initWithCoder:(id)a3;
- (id)_descriptionWithIncludeItem:(BOOL)a3;
- (id)description;
- (id)descriptionWithItem:(BOOL)a3;
- (int64_t)compare:(id)a3;
- (void)applyCloudRecordObject:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudRecordIssuerMessagingFlag

- (PKCloudRecordIssuerMessagingFlag)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKCloudRecordIssuerMessagingFlag;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"issuerMessagingFlag"];
    issuerMessagingFlag = v5->_issuerMessagingFlag;
    v5->_issuerMessagingFlag = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKCloudRecordIssuerMessagingFlag;
  v4 = a3;
  [(PKCloudRecordObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_issuerMessagingFlag forKey:{@"issuerMessagingFlag", v5.receiver, v5.super_class}];
}

- (int64_t)compare:(id)a3
{
  issuerMessagingFlag = self->_issuerMessagingFlag;
  v4 = a3;
  v5 = [(PKIssuerMessagingFlag *)issuerMessagingFlag identifier];
  v6 = [v4 issuerMessagingFlag];

  v7 = [v6 identifier];
  v8 = [v5 compare:v7];

  return v8;
}

- (id)descriptionWithItem:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKCloudRecordIssuerMessagingFlag *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordIssuerMessagingFlag;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:v3];
  [v5 appendFormat:@"\n%@", v6];

  return v5;
}

- (id)description
{
  v3 = [(PKCloudRecordIssuerMessagingFlag *)self _descriptionWithIncludeItem:0];
  v6.receiver = self;
  v6.super_class = PKCloudRecordIssuerMessagingFlag;
  v4 = [(PKCloudRecordObject *)&v6 description];
  [v3 appendFormat:@"\n%@", v4];

  return v3;
}

- (id)_descriptionWithIncludeItem:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  v6 = v5;
  if (self->_issuerMessagingFlag)
  {
    if (v3)
    {
      [v5 appendFormat:@"issuerMessagingFlag: %@\n", self->_issuerMessagingFlag];
    }
  }

  else
  {
    [v5 appendFormat:@"No associated issuerMessagingFlag in database\n", v8];
  }

  return v6;
}

- (void)applyCloudRecordObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = PKCloudRecordIssuerMessagingFlag;
    [(PKCloudRecordObject *)&v10 applyCloudRecordObject:v4];
    v5 = v4;
    v6 = v5;
    if (!self->_issuerMessagingFlag)
    {
      v7 = [v5 issuerMessagingFlag];

      if (v7)
      {
        v8 = [v6 issuerMessagingFlag];
        issuerMessagingFlag = self->_issuerMessagingFlag;
        self->_issuerMessagingFlag = v8;
      }
    }
  }
}

@end