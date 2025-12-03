@interface DOCThumbnailKey
- (BOOL)isEqual:(id)equal;
- (DOCThumbnailKey)initWithPrimaryKey:(id)key descriptor:(id)descriptor;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation DOCThumbnailKey

- (DOCThumbnailKey)initWithPrimaryKey:(id)key descriptor:(id)descriptor
{
  keyCopy = key;
  descriptorCopy = descriptor;
  v12.receiver = self;
  v12.super_class = DOCThumbnailKey;
  v9 = [(DOCThumbnailKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_primaryKey, key);
    objc_storeStrong(&v10->_descriptor, descriptor);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_7;
  }

  if (![(DOCThumbnailKey *)equalCopy isMemberOfClass:objc_opt_class()]|| (primaryKey = self->_primaryKey, primaryKey != equalCopy->_primaryKey) && ![(DOCNodeThumbnailIdentifier *)primaryKey isEqual:?])
  {
    v7 = 0;
    goto LABEL_9;
  }

  descriptor = self->_descriptor;
  if (descriptor == equalCopy->_descriptor)
  {
LABEL_7:
    v7 = 1;
  }

  else
  {
    v7 = [(DOCThumbnailDescriptor *)descriptor isEqual:?];
  }

LABEL_9:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [DOCThumbnailKey allocWithZone:?];
  primaryKey = [(DOCThumbnailKey *)self primaryKey];
  v7 = [primaryKey copyWithZone:zone];
  v8 = [(DOCThumbnailKey *)v5 initWithPrimaryKey:v7 descriptor:self->_descriptor];

  return v8;
}

@end