@interface PKTransactionReleasedDataApplication
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReleasedDataApplication:(id)application;
- (PKTransactionReleasedDataApplication)initWithCoder:(id)coder;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransactionReleasedDataApplication

- (void)encodeWithCoder:(id)coder
{
  client = self->_client;
  coderCopy = coder;
  [coderCopy encodeInteger:client forKey:@"client"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_usageDescription forKey:@"usageDescription"];
}

- (PKTransactionReleasedDataApplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKTransactionReleasedDataApplication;
  v5 = [(PKTransactionReleasedDataApplication *)&v11 init];
  if (v5)
  {
    v5->_client = [coderCopy decodeIntegerForKey:@"client"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usageDescription"];
    usageDescription = v5->_usageDescription;
    v5->_usageDescription = v8;
  }

  return v5;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_bundleIdentifier];
  [array safelyAddObject:self->_usageDescription];
  v4 = PKCombinedHash(17, array);
  v5 = self->_client - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransactionReleasedDataApplication *)self isEqualToReleasedDataApplication:v5];
  }

  return v6;
}

- (BOOL)isEqualToReleasedDataApplication:(id)application
{
  applicationCopy = application;
  if (self->_client != applicationCopy[1])
  {
    goto LABEL_8;
  }

  bundleIdentifier = self->_bundleIdentifier;
  v6 = applicationCopy[2];
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
  v11 = applicationCopy[3];
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