@interface PKCloudRecordCloudStoreZoneShareLock
- (PKCloudRecordCloudStoreZoneShareLock)initWithCoder:(id)coder;
- (id)_descriptionWithIncludeItem:(BOOL)item;
- (id)description;
- (id)descriptionWithItem:(BOOL)item;
- (int64_t)compare:(id)compare;
- (void)applyCloudRecordObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudRecordCloudStoreZoneShareLock

- (PKCloudRecordCloudStoreZoneShareLock)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKCloudRecordCloudStoreZoneShareLock;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudStoreZoneShareLock"];
    cloudStoreZoneShareLock = v5->_cloudStoreZoneShareLock;
    v5->_cloudStoreZoneShareLock = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKCloudRecordCloudStoreZoneShareLock;
  coderCopy = coder;
  [(PKCloudRecordObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_cloudStoreZoneShareLock forKey:{@"cloudStoreZoneShareLock", v5.receiver, v5.super_class}];
}

- (int64_t)compare:(id)compare
{
  cloudStoreZoneShareLock = self->_cloudStoreZoneShareLock;
  compareCopy = compare;
  originDeviceIdentifier = [(PKCloudStoreZoneShareLock *)cloudStoreZoneShareLock originDeviceIdentifier];
  cloudStoreZoneShareLock = [compareCopy cloudStoreZoneShareLock];

  originDeviceIdentifier2 = [cloudStoreZoneShareLock originDeviceIdentifier];
  v8 = [originDeviceIdentifier compare:originDeviceIdentifier2];

  return v8;
}

- (id)descriptionWithItem:(BOOL)item
{
  itemCopy = item;
  v5 = [(PKCloudRecordCloudStoreZoneShareLock *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordCloudStoreZoneShareLock;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:itemCopy];
  [v5 appendFormat:@"\n%@", v6];

  return v5;
}

- (id)description
{
  v3 = [(PKCloudRecordCloudStoreZoneShareLock *)self _descriptionWithIncludeItem:0];
  v6.receiver = self;
  v6.super_class = PKCloudRecordCloudStoreZoneShareLock;
  v4 = [(PKCloudRecordObject *)&v6 description];
  [v3 appendFormat:@"\n%@", v4];

  return v3;
}

- (id)_descriptionWithIncludeItem:(BOOL)item
{
  itemCopy = item;
  string = [MEMORY[0x1E696AD60] string];
  v6 = string;
  if (self->_cloudStoreZoneShareLock)
  {
    if (itemCopy)
    {
      [string appendFormat:@"cloudStoreZoneShareLock: %@\n", self->_cloudStoreZoneShareLock];
    }
  }

  else
  {
    [string appendFormat:@"No associated cloudStoreZoneShareLock in database\n", v8];
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
    v10.super_class = PKCloudRecordCloudStoreZoneShareLock;
    [(PKCloudRecordObject *)&v10 applyCloudRecordObject:objectCopy];
    v5 = objectCopy;
    v6 = v5;
    if (!self->_cloudStoreZoneShareLock)
    {
      cloudStoreZoneShareLock = [v5 cloudStoreZoneShareLock];

      if (cloudStoreZoneShareLock)
      {
        cloudStoreZoneShareLock2 = [v6 cloudStoreZoneShareLock];
        cloudStoreZoneShareLock = self->_cloudStoreZoneShareLock;
        self->_cloudStoreZoneShareLock = cloudStoreZoneShareLock2;
      }
    }
  }
}

@end