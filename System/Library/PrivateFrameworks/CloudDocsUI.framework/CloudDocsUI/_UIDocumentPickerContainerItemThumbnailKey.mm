@interface _UIDocumentPickerContainerItemThumbnailKey
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (_UIDocumentPickerContainerItemThumbnailKey)initWithPrimaryKey:(id)a3 size:(CGSize)a4 scale:(double)a5;
- (unint64_t)hash;
@end

@implementation _UIDocumentPickerContainerItemThumbnailKey

- (_UIDocumentPickerContainerItemThumbnailKey)initWithPrimaryKey:(id)a3 size:(CGSize)a4 scale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = _UIDocumentPickerContainerItemThumbnailKey;
  v11 = [(_UIDocumentPickerContainerItemThumbnailKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_primaryKey, a3);
    v12->_size.width = width;
    v12->_size.height = height;
    v12->_scale = a5;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(_UIDocumentPickerContainerItemThumbnailKey *)self primaryKey];
  v4 = [v3 hash];

  [(_UIDocumentPickerContainerItemThumbnailKey *)self size];
  v6 = v5 - v4 + 32 * v4;
  [(_UIDocumentPickerContainerItemThumbnailKey *)self size];
  v8 = v7 - v6 + 32 * v6;
  [(_UIDocumentPickerContainerItemThumbnailKey *)self scale];
  return v9 - v8 + 32 * v8 + 923521;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v14 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(_UIDocumentPickerContainerItemThumbnailKey *)self primaryKey];
    v8 = [(_UIDocumentPickerContainerItemThumbnailKey *)v6 primaryKey];
    if ([v7 isEqual:v8])
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