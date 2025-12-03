@interface PKTransactionReleasedDataElement
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReleasedDataElement:(id)element;
- (PKTransactionReleasedDataElement)initWithCoder:(id)coder;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransactionReleasedDataElement

- (PKTransactionReleasedDataElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKTransactionReleasedDataElement;
  v5 = [(PKTransactionReleasedDataElement *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"elementNamespace"];
    elementNamespace = v5->_elementNamespace;
    v5->_elementNamespace = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_retentionIntent = [coderCopy decodeIntegerForKey:@"retentionIntent"];
    v5->_retentionPeriod = [coderCopy decodeIntegerForKey:@"retentionPeriod"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  elementNamespace = self->_elementNamespace;
  coderCopy = coder;
  [coderCopy encodeObject:elementNamespace forKey:@"elementNamespace"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_retentionIntent forKey:@"retentionIntent"];
  [coderCopy encodeInteger:self->_retentionPeriod forKey:@"retentionPeriod"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_elementNamespace];
  [array safelyAddObject:self->_identifier];
  v4 = PKCombinedHash(17, array);
  v5 = self->_retentionIntent - v4 + 32 * v4;
  v6 = self->_retentionPeriod - v5 + 32 * v5;

  return v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransactionReleasedDataElement *)self isEqualToReleasedDataElement:v5];
  }

  return v6;
}

- (BOOL)isEqualToReleasedDataElement:(id)element
{
  elementCopy = element;
  elementNamespace = self->_elementNamespace;
  v6 = elementCopy[1];
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
  v9 = elementCopy[2];
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
  if (self->_retentionIntent != elementCopy[3])
  {
    goto LABEL_16;
  }

  v10 = self->_retentionPeriod == elementCopy[4];
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