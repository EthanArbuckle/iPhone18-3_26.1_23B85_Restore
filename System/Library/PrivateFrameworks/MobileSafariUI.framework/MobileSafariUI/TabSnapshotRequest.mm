@interface TabSnapshotRequest
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (TabSnapshotRequest)initWithSize:(CGSize)size options:(unint64_t)options identifier:(id)identifier;
@end

@implementation TabSnapshotRequest

- (TabSnapshotRequest)initWithSize:(CGSize)size options:(unint64_t)options identifier:(id)identifier
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = TabSnapshotRequest;
  v10 = [(TabSnapshotRequest *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_size.width = width;
    v10->_size.height = height;
    v10->_options = options;
    v12 = [identifierCopy copyWithZone:0];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = v11;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      identifier = [(TabSnapshotRequest *)v5 identifier];
      if ([(NSUUID *)identifier isEqual:identifier])
      {
        [(TabSnapshotRequest *)v5 size];
        v9 = 0;
        if (self->_size.width == v10 && self->_size.height == v8)
        {
          options = self->_options;
          v9 = options == [(TabSnapshotRequest *)v5 options];
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
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