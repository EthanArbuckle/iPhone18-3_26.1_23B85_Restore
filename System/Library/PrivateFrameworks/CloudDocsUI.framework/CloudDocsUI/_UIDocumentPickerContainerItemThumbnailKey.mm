@interface _UIDocumentPickerContainerItemThumbnailKey
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (_UIDocumentPickerContainerItemThumbnailKey)initWithPrimaryKey:(id)key size:(CGSize)size scale:(double)scale;
- (unint64_t)hash;
@end

@implementation _UIDocumentPickerContainerItemThumbnailKey

- (_UIDocumentPickerContainerItemThumbnailKey)initWithPrimaryKey:(id)key size:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = _UIDocumentPickerContainerItemThumbnailKey;
  v11 = [(_UIDocumentPickerContainerItemThumbnailKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_primaryKey, key);
    v12->_size.width = width;
    v12->_size.height = height;
    v12->_scale = scale;
  }

  return v12;
}

- (unint64_t)hash
{
  primaryKey = [(_UIDocumentPickerContainerItemThumbnailKey *)self primaryKey];
  v4 = [primaryKey hash];

  [(_UIDocumentPickerContainerItemThumbnailKey *)self size];
  v6 = v5 - v4 + 32 * v4;
  [(_UIDocumentPickerContainerItemThumbnailKey *)self size];
  v8 = v7 - v6 + 32 * v6;
  [(_UIDocumentPickerContainerItemThumbnailKey *)self scale];
  return v9 - v8 + 32 * v8 + 923521;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    primaryKey = [(_UIDocumentPickerContainerItemThumbnailKey *)self primaryKey];
    primaryKey2 = [(_UIDocumentPickerContainerItemThumbnailKey *)v6 primaryKey];
    if ([primaryKey isEqual:primaryKey2])
    {
      [(_UIDocumentPickerContainerItemThumbnailKey *)self size];
      v10 = v9;
      v12 = v11;
      [(_UIDocumentPickerContainerItemThumbnailKey *)v6 size];
      v14 = 0;
      if (v10 == v15 && v12 == v13)
      {
        [(_UIDocumentPickerContainerItemThumbnailKey *)self scale];
        v17 = v16;
        [(_UIDocumentPickerContainerItemThumbnailKey *)v6 scale];
        v14 = v17 == v18;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end