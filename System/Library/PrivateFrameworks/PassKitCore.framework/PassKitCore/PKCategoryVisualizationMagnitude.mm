@interface PKCategoryVisualizationMagnitude
- (BOOL)isEqual:(id)equal;
- (PKCategoryVisualizationMagnitude)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCategoryVisualizationMagnitude

- (PKCategoryVisualizationMagnitude)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKCategoryVisualizationMagnitude;
  v5 = [(PKCategoryVisualizationMagnitude *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v6;

    v5->_bucket = [coderCopy decodeIntegerForKey:@"bucket"];
    [coderCopy decodeDoubleForKey:@"magnitude"];
    v5->_magnitude = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      passUniqueIdentifier = self->_passUniqueIdentifier;
      v7 = v5->_passUniqueIdentifier;
      if (passUniqueIdentifier && v7)
      {
        if (([(NSString *)passUniqueIdentifier isEqual:?]& 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (passUniqueIdentifier != v7)
      {
        goto LABEL_12;
      }

      if (self->_bucket == v5->_bucket)
      {
        v8 = self->_magnitude == v5->_magnitude;
LABEL_13:

        goto LABEL_14;
      }

LABEL_12:
      v8 = 0;
      goto LABEL_13;
    }

    v8 = 0;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_passUniqueIdentifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_bucket - v4 + 32 * v4;
  v6 = self->_magnitude - v5 + 32 * v5;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  passUniqueIdentifier = self->_passUniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [coderCopy encodeInteger:self->_bucket forKey:@"bucket"];
  [coderCopy encodeDouble:@"magnitude" forKey:self->_magnitude];
}

@end