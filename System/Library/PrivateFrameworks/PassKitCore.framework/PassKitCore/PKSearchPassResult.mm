@interface PKSearchPassResult
- (BOOL)isEqual:(id)equal;
- (PKSearchPassResult)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSearchPassResult

- (void)encodeWithCoder:(id)coder
{
  passUniqueIdentifier = self->_passUniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [coderCopy encodeObject:self->_thumbnailData forKey:@"thumbnailData"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_contentDescription forKey:@"contentDescription"];
  [coderCopy encodeObject:self->_groupPassUniqueIdentifiers forKey:@"groupPassUniqueIdentifiers"];
}

- (PKSearchPassResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKSearchPassResult *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailData"];
    thumbnailData = v5->_thumbnailData;
    v5->_thumbnailData = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentDescription"];
    contentDescription = v5->_contentDescription;
    v5->_contentDescription = v12;

    v14 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"groupPassUniqueIdentifiers"];
    groupPassUniqueIdentifiers = v5->_groupPassUniqueIdentifiers;
    v5->_groupPassUniqueIdentifiers = v14;
  }

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PKSearchPassResult;
  v3 = [(PKSearchPassResult *)&v7 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"passUniqueIdentifier: '%@'; ", self->_passUniqueIdentifier];
  thumbnailData = self->_thumbnailData;
  if (thumbnailData)
  {
    thumbnailData = [(NSData *)thumbnailData length];
  }

  [v4 appendFormat:@"thumbnailData: %lu; ", thumbnailData];
  [v4 appendFormat:@"displayName: %@", self->_displayName];
  [v4 appendFormat:@"contentDescription: %@", self->_contentDescription];
  [v4 appendFormat:@"groupPassUniqueIdentifiers: %@", self->_groupPassUniqueIdentifiers];
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

  passUniqueIdentifier = self->_passUniqueIdentifier;
  v6 = equalCopy[1];
  if (passUniqueIdentifier && v6)
  {
    if (([(NSString *)passUniqueIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (passUniqueIdentifier != v6)
  {
    goto LABEL_24;
  }

  thumbnailData = self->_thumbnailData;
  v8 = equalCopy[2];
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

  displayName = self->_displayName;
  v10 = equalCopy[3];
  if (displayName && v10)
  {
    if (([(NSString *)displayName isEqual:?]& 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (displayName != v10)
  {
    goto LABEL_24;
  }

  contentDescription = self->_contentDescription;
  v12 = equalCopy[4];
  if (!contentDescription || !v12)
  {
    if (contentDescription == v12)
    {
      goto LABEL_20;
    }

LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

  if (([(NSString *)contentDescription isEqual:?]& 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  groupPassUniqueIdentifiers = self->_groupPassUniqueIdentifiers;
  v14 = equalCopy[5];
  if (groupPassUniqueIdentifiers && v14)
  {
    v15 = [(NSArray *)groupPassUniqueIdentifiers isEqual:?];
  }

  else
  {
    v15 = groupPassUniqueIdentifiers == v14;
  }

LABEL_25:

  return v15;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_passUniqueIdentifier];
  [v3 safelyAddObject:self->_thumbnailData];
  [v3 safelyAddObject:self->_displayName];
  [v3 safelyAddObject:self->_contentDescription];
  [v3 safelyAddObject:self->_groupPassUniqueIdentifiers];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

@end