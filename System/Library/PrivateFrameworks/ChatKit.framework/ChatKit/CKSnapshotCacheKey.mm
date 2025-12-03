@interface CKSnapshotCacheKey
+ (id)keyWithIdentifier:(id)identifier interfaceStyle:(int64_t)style bounds:(CGRect)bounds;
- (BOOL)isEqual:(id)equal;
- (CGRect)bounds;
- (CKSnapshotCacheKey)initWithIdentifier:(id)identifier interfaceStyle:(int64_t)style bounds:(CGRect)bounds;
- (CKSnapshotCacheKey)keyWithOppositeInterfaceStyle;
- (NSString)stringValue;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CKSnapshotCacheKey

+ (id)keyWithIdentifier:(id)identifier interfaceStyle:(int64_t)style bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  identifierCopy = identifier;
  height = [[CKSnapshotCacheKey alloc] initWithIdentifier:identifierCopy interfaceStyle:style bounds:x, y, width, height];

  return height;
}

- (CKSnapshotCacheKey)initWithIdentifier:(id)identifier interfaceStyle:(int64_t)style bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = CKSnapshotCacheKey;
  v13 = [(CKSnapshotCacheKey *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    v14->_interfaceStyle = style;
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

- (id)copyWithZone:(_NSZone *)zone
{
  identifier = [(CKSnapshotCacheKey *)self identifier];
  interfaceStyle = [(CKSnapshotCacheKey *)self interfaceStyle];
  [(CKSnapshotCacheKey *)self bounds];
  v6 = [CKSnapshotCacheKey keyWithIdentifier:identifier interfaceStyle:interfaceStyle bounds:?];

  return v6;
}

- (NSString)stringValue
{
  interfaceStyle = [(CKSnapshotCacheKey *)self interfaceStyle];
  v4 = @"light";
  if (interfaceStyle == 2)
  {
    v4 = @"dark";
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = v4;
  identifier = [(CKSnapshotCacheKey *)self identifier];
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
  v14 = [v5 stringWithFormat:@"%@-%@-<%@>", identifier, v6, v13];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [(CKSnapshotCacheKey *)self stringValue];
      stringValue2 = [(CKSnapshotCacheKey *)equalCopy stringValue];
      v7 = [stringValue isEqualToString:stringValue2];
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