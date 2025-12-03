@interface PKPaymentTransactionArchiveLocation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToArchiveLocation:(id)location;
- (PKPaymentTransactionArchiveLocation)initWithCoder:(id)coder;
- (PKPaymentTransactionArchiveLocation)initWithType:(unint64_t)type archived:(BOOL)archived cloudStoreZone:(id)zone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentTransactionArchiveLocation

- (PKPaymentTransactionArchiveLocation)initWithType:(unint64_t)type archived:(BOOL)archived cloudStoreZone:(id)zone
{
  zoneCopy = zone;
  v13.receiver = self;
  v13.super_class = PKPaymentTransactionArchiveLocation;
  v10 = [(PKPaymentTransactionArchiveLocation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_archived = archived;
    v10->_type = type;
    objc_storeStrong(&v10->_cloudStoreZone, zone);
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransactionArchiveLocation *)self isEqualToArchiveLocation:v5];
  }

  return v6;
}

- (BOOL)isEqualToArchiveLocation:(id)location
{
  locationCopy = location;
  if (!locationCopy)
  {
    goto LABEL_12;
  }

  cloudStoreZone = self->_cloudStoreZone;
  v6 = locationCopy[3];
  if (cloudStoreZone)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if ([(PKCloudStoreZone *)cloudStoreZone isEqual:?])
    {
      goto LABEL_10;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (cloudStoreZone != v6)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (self->_archived != *(locationCopy + 8))
  {
    goto LABEL_12;
  }

  v8 = self->_type == locationCopy[2];
LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_cloudStoreZone];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_archived - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"type: '%@'; ", @"cloudStore"];
  if (self->_archived)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"archived: '%@'; ", v4];
  [v3 appendFormat:@"cloudStoreZone: '%@'; ", self->_cloudStoreZone];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentTransactionArchiveLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPaymentTransactionArchiveLocation;
  v5 = [(PKPaymentTransactionArchiveLocation *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudStoreZone"];
    cloudStoreZone = v5->_cloudStoreZone;
    v5->_cloudStoreZone = v6;

    v5->_archived = [coderCopy decodeBoolForKey:@"archived"];
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  cloudStoreZone = self->_cloudStoreZone;
  coderCopy = coder;
  [coderCopy encodeObject:cloudStoreZone forKey:@"cloudStoreZone"];
  [coderCopy encodeBool:self->_archived forKey:@"archived"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentTransactionArchiveLocation allocWithZone:](PKPaymentTransactionArchiveLocation init];
  v6 = [(PKCloudStoreZone *)self->_cloudStoreZone copyWithZone:zone];
  cloudStoreZone = v5->_cloudStoreZone;
  v5->_cloudStoreZone = v6;

  v5->_archived = self->_archived;
  v5->_type = self->_type;
  return v5;
}

@end