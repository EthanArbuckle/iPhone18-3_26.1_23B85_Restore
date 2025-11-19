@interface DOCThumbnailKey
- (BOOL)isEqual:(id)a3;
- (DOCThumbnailKey)initWithPrimaryKey:(id)a3 descriptor:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DOCThumbnailKey

- (DOCThumbnailKey)initWithPrimaryKey:(id)a3 descriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DOCThumbnailKey;
  v9 = [(DOCThumbnailKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_primaryKey, a3);
    objc_storeStrong(&v10->_descriptor, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_7;
  }

  if (![(DOCThumbnailKey *)v4 isMemberOfClass:objc_opt_class()]|| (primaryKey = self->_primaryKey, primaryKey != v4->_primaryKey) && ![(DOCNodeThumbnailIdentifier *)primaryKey isEqual:?])
  {
    v7 = 0;
    goto LABEL_9;
  }

  descriptor = self->_descriptor;
  if (descriptor == v4->_descriptor)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [DOCThumbnailKey allocWithZone:?];
  v6 = [(DOCThumbnailKey *)self primaryKey];
  v7 = [v6 copyWithZone:a3];
  v8 = [(DOCThumbnailKey *)v5 initWithPrimaryKey:v7 descriptor:self->_descriptor];

  return v8;
}

@end