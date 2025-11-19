@interface PKPaymentTransactionArchiveLocation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToArchiveLocation:(id)a3;
- (PKPaymentTransactionArchiveLocation)initWithCoder:(id)a3;
- (PKPaymentTransactionArchiveLocation)initWithType:(unint64_t)a3 archived:(BOOL)a4 cloudStoreZone:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentTransactionArchiveLocation

- (PKPaymentTransactionArchiveLocation)initWithType:(unint64_t)a3 archived:(BOOL)a4 cloudStoreZone:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PKPaymentTransactionArchiveLocation;
  v10 = [(PKPaymentTransactionArchiveLocation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_archived = a4;
    v10->_type = a3;
    objc_storeStrong(&v10->_cloudStoreZone, a5);
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransactionArchiveLocation *)self isEqualToArchiveLocation:v5];
  }

  return v6;
}

- (BOOL)isEqualToArchiveLocation:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_12;
  }

  cloudStoreZone = self->_cloudStoreZone;
  v6 = v4[3];
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
  if (self->_archived != *(v4 + 8))
  {
    goto LABEL_12;
  }

  v8 = self->_type == v4[2];
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

- (PKPaymentTransactionArchiveLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentTransactionArchiveLocation;
  v5 = [(PKPaymentTransactionArchiveLocation *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudStoreZone"];
    cloudStoreZone = v5->_cloudStoreZone;
    v5->_cloudStoreZone = v6;

    v5->_archived = [v4 decodeBoolForKey:@"archived"];
    v5->_type = [v4 decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  cloudStoreZone = self->_cloudStoreZone;
  v5 = a3;
  [v5 encodeObject:cloudStoreZone forKey:@"cloudStoreZone"];
  [v5 encodeBool:self->_archived forKey:@"archived"];
  [v5 encodeInteger:self->_type forKey:@"type"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentTransactionArchiveLocation allocWithZone:](PKPaymentTransactionArchiveLocation init];
  v6 = [(PKCloudStoreZone *)self->_cloudStoreZone copyWithZone:a3];
  cloudStoreZone = v5->_cloudStoreZone;
  v5->_cloudStoreZone = v6;

  v5->_archived = self->_archived;
  v5->_type = self->_type;
  return v5;
}

@end