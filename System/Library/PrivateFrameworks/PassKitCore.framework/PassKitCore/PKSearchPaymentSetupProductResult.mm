@interface PKSearchPaymentSetupProductResult
- (BOOL)isEqual:(id)equal;
- (PKSearchPaymentSetupProductResult)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSearchPaymentSetupProductResult

- (void)encodeWithCoder:(id)coder
{
  productIdentifier = self->_productIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:productIdentifier forKey:@"productIdentifier"];
  [coderCopy encodeObject:self->_thumbnailData forKey:@"thumbnailData"];
  [coderCopy encodeObject:self->_thumbnailURL forKey:@"thumbnailURL"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_contentDescription forKey:@"contentDescription"];
}

- (PKSearchPaymentSetupProductResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKSearchPaymentSetupProductResult *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productIdentifier"];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailData"];
    thumbnailData = v5->_thumbnailData;
    v5->_thumbnailData = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailURL"];
    thumbnailURL = v5->_thumbnailURL;
    v5->_thumbnailURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentDescription"];
    contentDescription = v5->_contentDescription;
    v5->_contentDescription = v14;
  }

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PKSearchPaymentSetupProductResult;
  v3 = [(PKSearchPaymentSetupProductResult *)&v7 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"productIdentifier: '%@'; ", self->_productIdentifier];
  thumbnailData = self->_thumbnailData;
  if (thumbnailData)
  {
    thumbnailData = [(NSData *)thumbnailData length];
  }

  [v4 appendFormat:@"thumbnailData: %lu", thumbnailData];
  [v4 appendFormat:@"thumbnailURL: %@", self->_thumbnailURL];
  [v4 appendFormat:@"displayName: %@", self->_displayName];
  [v4 appendFormat:@"contentDescription: %@", self->_contentDescription];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  productIdentifier = self->_productIdentifier;
  v6 = equalCopy[1];
  if (productIdentifier && v6)
  {
    if (([(NSString *)productIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (productIdentifier != v6)
  {
    goto LABEL_24;
  }

  thumbnailData = self->_thumbnailData;
  v8 = equalCopy[3];
  if (thumbnailData && v8)
  {
    if (([(NSData *)thumbnailData isEqual:?]& 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (thumbnailData != v8)
  {
    goto LABEL_24;
  }

  thumbnailURL = self->_thumbnailURL;
  v10 = equalCopy[2];
  if (thumbnailURL && v10)
  {
    if (([(NSURL *)thumbnailURL isEqual:?]& 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (thumbnailURL != v10)
  {
    goto LABEL_24;
  }

  displayName = self->_displayName;
  v12 = equalCopy[4];
  if (!displayName || !v12)
  {
    if (displayName == v12)
    {
      goto LABEL_20;
    }

LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

  if (([(NSString *)displayName isEqual:?]& 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  contentDescription = self->_contentDescription;
  v14 = equalCopy[5];
  if (contentDescription && v14)
  {
    v15 = [(NSString *)contentDescription isEqual:?];
  }

  else
  {
    v15 = contentDescription == v14;
  }

LABEL_25:

  return v15;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_productIdentifier];
  [v3 safelyAddObject:self->_thumbnailData];
  [v3 safelyAddObject:self->_thumbnailURL];
  [v3 safelyAddObject:self->_displayName];
  [v3 safelyAddObject:self->_contentDescription];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

@end