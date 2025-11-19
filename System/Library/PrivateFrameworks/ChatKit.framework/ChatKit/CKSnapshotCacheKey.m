@interface CKSnapshotCacheKey
+ (id)keyWithIdentifier:(id)a3 interfaceStyle:(int64_t)a4 bounds:(CGRect)a5;
- (BOOL)isEqual:(id)a3;
- (CGRect)bounds;
- (CKSnapshotCacheKey)initWithIdentifier:(id)a3 interfaceStyle:(int64_t)a4 bounds:(CGRect)a5;
- (CKSnapshotCacheKey)keyWithOppositeInterfaceStyle;
- (NSString)stringValue;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CKSnapshotCacheKey

+ (id)keyWithIdentifier:(id)a3 interfaceStyle:(int64_t)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a3;
  v11 = [[CKSnapshotCacheKey alloc] initWithIdentifier:v10 interfaceStyle:a4 bounds:x, y, width, height];

  return v11;
}

- (CKSnapshotCacheKey)initWithIdentifier:(id)a3 interfaceStyle:(int64_t)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3;
  v16.receiver = self;
  v16.super_class = CKSnapshotCacheKey;
  v13 = [(CKSnapshotCacheKey *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    v14->_interfaceStyle = a4;
    v14->_bounds.origin.x = x;
    v14->_bounds.origin.y = y;
    v14->_bounds.size.width = width;
    v14->_bounds.size.height = height;
  }

  return v14;
}

- (CKSnapshotCacheKey)keyWithOppositeInterfaceStyle
{
  v3 = [(CKSnapshotCacheKey *)self copy];
  if ([(CKSnapshotCacheKey *)self interfaceStyle]== 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v3 setInterfaceStyle:v4];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(CKSnapshotCacheKey *)self identifier];
  v5 = [(CKSnapshotCacheKey *)self interfaceStyle];
  [(CKSnapshotCacheKey *)self bounds];
  v6 = [CKSnapshotCacheKey keyWithIdentifier:v4 interfaceStyle:v5 bounds:?];

  return v6;
}

- (NSString)stringValue
{
  v3 = [(CKSnapshotCacheKey *)self interfaceStyle];
  v4 = @"light";
  if (v3 == 2)
  {
    v4 = @"dark";
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = v4;
  v7 = [(CKSnapshotCacheKey *)self identifier];
  [(CKSnapshotCacheKey *)self bounds];
  v9 = v8;
  v11 = v10;
  if (CKMainScreenScale_once_66 != -1)
  {
    [CKSnapshotCacheKey stringValue];
  }

  v12 = 1.0;
  if (*&CKMainScreenScale_sMainScreenScale_66 != 0.0)
  {
    v12 = *&CKMainScreenScale_sMainScreenScale_66;
  }

  v17.width = round(v9 * v12) / v12;
  v17.height = round(v11 * v12) / v12;
  v13 = NSStringFromCGSize(v17);
  v14 = [v5 stringWithFormat:@"%@-%@-<%@>", v7, v6, v13];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CKSnapshotCacheKey *)self stringValue];
      v6 = [(CKSnapshotCacheKey *)v4 stringValue];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end