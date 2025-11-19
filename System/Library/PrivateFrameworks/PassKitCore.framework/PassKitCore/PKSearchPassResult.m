@interface PKSearchPassResult
- (BOOL)isEqual:(id)a3;
- (PKSearchPassResult)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSearchPassResult

- (void)encodeWithCoder:(id)a3
{
  passUniqueIdentifier = self->_passUniqueIdentifier;
  v5 = a3;
  [v5 encodeObject:passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [v5 encodeObject:self->_thumbnailData forKey:@"thumbnailData"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_contentDescription forKey:@"contentDescription"];
  [v5 encodeObject:self->_groupPassUniqueIdentifiers forKey:@"groupPassUniqueIdentifiers"];
}

- (PKSearchPassResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKSearchPassResult *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailData"];
    thumbnailData = v5->_thumbnailData;
    v5->_thumbnailData = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentDescription"];
    contentDescription = v5->_contentDescription;
    v5->_contentDescription = v12;

    v14 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"groupPassUniqueIdentifiers"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  passUniqueIdentifier = self->_passUniqueIdentifier;
  v6 = v4[1];
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
  v8 = v4[2];
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
  v10 = v4[3];
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
  v12 = v4[4];
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
  v14 = v4[5];
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