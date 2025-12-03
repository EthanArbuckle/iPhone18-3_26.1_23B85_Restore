@interface PKSearchDisplayNameResult
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKSearchDisplayNameResult)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSearchDisplayNameResult

- (void)encodeWithCoder:(id)coder
{
  displayName = self->_displayName;
  coderCopy = coder;
  [coderCopy encodeObject:displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_merchant forKey:@"merchant"];
  [coderCopy encodeObject:self->_orderSpotlightDisplayName forKey:@"orderSpotlightDisplayName"];
}

- (PKSearchDisplayNameResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKSearchDisplayNameResult *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchant"];
    merchant = v5->_merchant;
    v5->_merchant = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orderSpotlightDisplayName"];
    orderSpotlightDisplayName = v5->_orderSpotlightDisplayName;
    v5->_orderSpotlightDisplayName = v10;
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PKSearchDisplayNameResult;
  v3 = [(PKSearchDisplayNameResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"displayName: '%@'; ", self->_displayName];
  [v4 appendFormat:@"merchant: '%@'; ", self->_merchant];
  [v4 appendFormat:@"orderSpotlightDisplayName: '%@'; ", self->_orderSpotlightDisplayName];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  displayName = self->_displayName;
  v6 = equalCopy[1];
  if (displayName && v6)
  {
    if (([(NSString *)displayName isEqual:?]& 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (displayName != v6)
  {
    goto LABEL_14;
  }

  merchant = self->_merchant;
  v8 = equalCopy[2];
  if (!merchant || !v8)
  {
    if (merchant == v8)
    {
      goto LABEL_10;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (![(PKMerchant *)merchant isEqual:?])
  {
    goto LABEL_14;
  }

LABEL_10:
  orderSpotlightDisplayName = self->_orderSpotlightDisplayName;
  v10 = equalCopy[3];
  if (orderSpotlightDisplayName && v10)
  {
    v11 = [(NSString *)orderSpotlightDisplayName isEqual:?];
  }

  else
  {
    v11 = orderSpotlightDisplayName == v10;
  }

LABEL_15:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_displayName];
  [v3 safelyAddObject:self->_merchant];
  [v3 safelyAddObject:self->_orderSpotlightDisplayName];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

@end