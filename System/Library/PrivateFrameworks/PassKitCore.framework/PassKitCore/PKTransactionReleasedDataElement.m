@interface PKTransactionReleasedDataElement
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToReleasedDataElement:(id)a3;
- (PKTransactionReleasedDataElement)initWithCoder:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransactionReleasedDataElement

- (PKTransactionReleasedDataElement)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKTransactionReleasedDataElement;
  v5 = [(PKTransactionReleasedDataElement *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"elementNamespace"];
    elementNamespace = v5->_elementNamespace;
    v5->_elementNamespace = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_retentionIntent = [v4 decodeIntegerForKey:@"retentionIntent"];
    v5->_retentionPeriod = [v4 decodeIntegerForKey:@"retentionPeriod"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  elementNamespace = self->_elementNamespace;
  v5 = a3;
  [v5 encodeObject:elementNamespace forKey:@"elementNamespace"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_retentionIntent forKey:@"retentionIntent"];
  [v5 encodeInteger:self->_retentionPeriod forKey:@"retentionPeriod"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_elementNamespace];
  [v3 safelyAddObject:self->_identifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_retentionIntent - v4 + 32 * v4;
  v6 = self->_retentionPeriod - v5 + 32 * v5;

  return v6;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransactionReleasedDataElement *)self isEqualToReleasedDataElement:v5];
  }

  return v6;
}

- (BOOL)isEqualToReleasedDataElement:(id)a3
{
  v4 = a3;
  elementNamespace = self->_elementNamespace;
  v6 = v4[1];
  if (elementNamespace)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (elementNamespace != v6)
    {
      goto LABEL_16;
    }
  }

  else if (([(NSString *)elementNamespace isEqual:?]& 1) == 0)
  {
    goto LABEL_16;
  }

  identifier = self->_identifier;
  v9 = v4[2];
  if (!identifier || !v9)
  {
    if (identifier == v9)
    {
      goto LABEL_14;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  if (([(NSString *)identifier isEqual:?]& 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (self->_retentionIntent != v4[3])
  {
    goto LABEL_16;
  }

  v10 = self->_retentionPeriod == v4[4];
LABEL_17:

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"namespace: '%@'; ", self->_elementNamespace];
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"retention: '%lu'; ", self->_retentionIntent];
  [v3 appendFormat:@"retentionPeriod: '%lu'; ", self->_retentionPeriod];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  elementNamespace = self->_elementNamespace;
  identifier = self->_identifier;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_retentionIntent];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_retentionPeriod];
  v8 = [v3 initWithObjectsAndKeys:{elementNamespace, @"namespace", identifier, @"identifier", v6, @"retentionIntent", v7, @"retentionPeriod", 0}];

  return v8;
}

@end