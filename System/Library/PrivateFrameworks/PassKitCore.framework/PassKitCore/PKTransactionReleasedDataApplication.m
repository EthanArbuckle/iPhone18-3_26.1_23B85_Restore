@interface PKTransactionReleasedDataApplication
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToReleasedDataApplication:(id)a3;
- (PKTransactionReleasedDataApplication)initWithCoder:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransactionReleasedDataApplication

- (void)encodeWithCoder:(id)a3
{
  client = self->_client;
  v5 = a3;
  [v5 encodeInteger:client forKey:@"client"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeObject:self->_usageDescription forKey:@"usageDescription"];
}

- (PKTransactionReleasedDataApplication)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKTransactionReleasedDataApplication;
  v5 = [(PKTransactionReleasedDataApplication *)&v11 init];
  if (v5)
  {
    v5->_client = [v4 decodeIntegerForKey:@"client"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usageDescription"];
    usageDescription = v5->_usageDescription;
    v5->_usageDescription = v8;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_bundleIdentifier];
  [v3 safelyAddObject:self->_usageDescription];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_client - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransactionReleasedDataApplication *)self isEqualToReleasedDataApplication:v5];
  }

  return v6;
}

- (BOOL)isEqualToReleasedDataApplication:(id)a3
{
  v4 = a3;
  if (self->_client != v4[1])
  {
    goto LABEL_8;
  }

  bundleIdentifier = self->_bundleIdentifier;
  v6 = v4[2];
  if (bundleIdentifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (([(NSString *)bundleIdentifier isEqual:?]& 1) != 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (bundleIdentifier != v6)
  {
    goto LABEL_8;
  }

LABEL_11:
  usageDescription = self->_usageDescription;
  v11 = v4[3];
  if (usageDescription && v11)
  {
    v8 = [(NSString *)usageDescription isEqual:?];
  }

  else
  {
    v8 = usageDescription == v11;
  }

LABEL_9:

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"client: '%lu'; ", self->_client];
  v4 = [(NSString *)self->_bundleIdentifier description];
  [v3 appendFormat:@"bundleIdentifier: '%@'; ", v4];

  v5 = [(NSString *)self->_usageDescription description];
  [v3 appendFormat:@"usageDescription: '%@'; ", v5];

  [v3 appendFormat:@">"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_client];
  v5 = [v3 initWithObjectsAndKeys:{v4, @"client", self->_bundleIdentifier, @"bundleIdentifier", self->_usageDescription, @"usageDescription", 0}];

  return v5;
}

@end