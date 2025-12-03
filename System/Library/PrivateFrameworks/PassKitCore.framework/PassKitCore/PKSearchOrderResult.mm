@interface PKSearchOrderResult
- (BOOL)isEqual:(id)equal;
- (PKSearchOrderResult)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSearchOrderResult

- (void)encodeWithCoder:(id)coder
{
  uri = self->_uri;
  coderCopy = coder;
  [coderCopy encodeObject:uri forKey:@"uri"];
  [coderCopy encodeObject:self->_orderTypeIdentifier forKey:@"orderTypeIdentifier"];
  [coderCopy encodeObject:self->_orderIdentifier forKey:@"orderIdentifier"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_spotlightDisplayName forKey:@"spotlightDisplayName"];
  [coderCopy encodeObject:self->_contentDescription forKey:@"contentDescription"];
  [coderCopy encodeObject:self->_thumbnailData forKey:@"thumbnailData"];
}

- (PKSearchOrderResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKSearchOrderResult *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
    uri = v5->_uri;
    v5->_uri = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orderTypeIdentifier"];
    orderTypeIdentifier = v5->_orderTypeIdentifier;
    v5->_orderTypeIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orderIdentifier"];
    orderIdentifier = v5->_orderIdentifier;
    v5->_orderIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spotlightDisplayName"];
    spotlightDisplayName = v5->_spotlightDisplayName;
    v5->_spotlightDisplayName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentDescription"];
    contentDescription = v5->_contentDescription;
    v5->_contentDescription = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailData"];
    thumbnailData = v5->_thumbnailData;
    v5->_thumbnailData = v18;
  }

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PKSearchOrderResult;
  v3 = [(PKSearchOrderResult *)&v7 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"uri: '%@'; ", self->_uri];
  [v4 appendFormat:@"orderTypeIdentifier: '%@'; ", self->_orderTypeIdentifier];
  [v4 appendFormat:@"orderIdentifier: '%@'; ", self->_orderIdentifier];
  [v4 appendFormat:@"displayName: '%@'; ", self->_displayName];
  [v4 appendFormat:@"spotlightDisplayName: '%@'; ", self->_spotlightDisplayName];
  [v4 appendFormat:@"contentDescription: '%@'; ", self->_contentDescription];
  thumbnailData = self->_thumbnailData;
  if (thumbnailData)
  {
    thumbnailData = [(NSData *)thumbnailData length];
  }

  [v4 appendFormat:@"thumbnailData: %lu", thumbnailData];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_34;
  }

  uri = self->_uri;
  v6 = equalCopy[1];
  if (uri && v6)
  {
    if (([(NSString *)uri isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (uri != v6)
  {
    goto LABEL_34;
  }

  orderTypeIdentifier = self->_orderTypeIdentifier;
  v8 = equalCopy[2];
  if (orderTypeIdentifier && v8)
  {
    if (([(NSString *)orderTypeIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (orderTypeIdentifier != v8)
  {
    goto LABEL_34;
  }

  orderIdentifier = self->_orderIdentifier;
  v10 = equalCopy[3];
  if (orderIdentifier && v10)
  {
    if (([(NSString *)orderIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (orderIdentifier != v10)
  {
    goto LABEL_34;
  }

  displayName = self->_displayName;
  v12 = equalCopy[4];
  if (displayName && v12)
  {
    if (([(NSString *)displayName isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (displayName != v12)
  {
    goto LABEL_34;
  }

  spotlightDisplayName = self->_spotlightDisplayName;
  v14 = equalCopy[5];
  if (spotlightDisplayName && v14)
  {
    if (([(NSString *)spotlightDisplayName isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (spotlightDisplayName != v14)
  {
    goto LABEL_34;
  }

  contentDescription = self->_contentDescription;
  v16 = equalCopy[6];
  if (!contentDescription || !v16)
  {
    if (contentDescription == v16)
    {
      goto LABEL_30;
    }

LABEL_34:
    v19 = 0;
    goto LABEL_35;
  }

  if (([(NSString *)contentDescription isEqual:?]& 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  thumbnailData = self->_thumbnailData;
  v18 = equalCopy[7];
  if (thumbnailData && v18)
  {
    v19 = [(NSData *)thumbnailData isEqual:?];
  }

  else
  {
    v19 = thumbnailData == v18;
  }

LABEL_35:

  return v19;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_uri];
  [v3 safelyAddObject:self->_orderTypeIdentifier];
  [v3 safelyAddObject:self->_orderIdentifier];
  [v3 safelyAddObject:self->_displayName];
  [v3 safelyAddObject:self->_spotlightDisplayName];
  [v3 safelyAddObject:self->_contentDescription];
  [v3 safelyAddObject:self->_thumbnailData];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

@end