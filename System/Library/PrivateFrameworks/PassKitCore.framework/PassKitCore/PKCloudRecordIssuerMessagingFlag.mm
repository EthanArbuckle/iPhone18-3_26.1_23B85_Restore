@interface PKCloudRecordIssuerMessagingFlag
- (PKCloudRecordIssuerMessagingFlag)initWithCoder:(id)coder;
- (id)_descriptionWithIncludeItem:(BOOL)item;
- (id)description;
- (id)descriptionWithItem:(BOOL)item;
- (int64_t)compare:(id)compare;
- (void)applyCloudRecordObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudRecordIssuerMessagingFlag

- (PKCloudRecordIssuerMessagingFlag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKCloudRecordIssuerMessagingFlag;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuerMessagingFlag"];
    issuerMessagingFlag = v5->_issuerMessagingFlag;
    v5->_issuerMessagingFlag = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKCloudRecordIssuerMessagingFlag;
  coderCopy = coder;
  [(PKCloudRecordObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_issuerMessagingFlag forKey:{@"issuerMessagingFlag", v5.receiver, v5.super_class}];
}

- (int64_t)compare:(id)compare
{
  issuerMessagingFlag = self->_issuerMessagingFlag;
  compareCopy = compare;
  identifier = [(PKIssuerMessagingFlag *)issuerMessagingFlag identifier];
  issuerMessagingFlag = [compareCopy issuerMessagingFlag];

  identifier2 = [issuerMessagingFlag identifier];
  v8 = [identifier compare:identifier2];

  return v8;
}

- (id)descriptionWithItem:(BOOL)item
{
  itemCopy = item;
  v5 = [(PKCloudRecordIssuerMessagingFlag *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordIssuerMessagingFlag;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:itemCopy];
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

- (id)_descriptionWithIncludeItem:(BOOL)item
{
  itemCopy = item;
  string = [MEMORY[0x1E696AD60] string];
  v6 = string;
  if (self->_issuerMessagingFlag)
  {
    if (itemCopy)
    {
      [string appendFormat:@"issuerMessagingFlag: %@\n", self->_issuerMessagingFlag];
    }
  }

  else
  {
    [string appendFormat:@"No associated issuerMessagingFlag in database\n", v8];
  }

  return v6;
}

- (void)applyCloudRecordObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = PKCloudRecordIssuerMessagingFlag;
    [(PKCloudRecordObject *)&v10 applyCloudRecordObject:objectCopy];
    v5 = objectCopy;
    v6 = v5;
    if (!self->_issuerMessagingFlag)
    {
      issuerMessagingFlag = [v5 issuerMessagingFlag];

      if (issuerMessagingFlag)
      {
        issuerMessagingFlag2 = [v6 issuerMessagingFlag];
        issuerMessagingFlag = self->_issuerMessagingFlag;
        self->_issuerMessagingFlag = issuerMessagingFlag2;
      }
    }
  }
}

@end