@interface LNContentType
- (BOOL)isEqual:(id)equal;
- (LNContentType)initWithCoder:(id)coder;
- (LNContentType)initWithContentType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNContentType

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contentType = [(LNContentType *)self contentType];
  [coderCopy encodeObject:contentType forKey:@"contentType"];
}

- (LNContentType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];

  v6 = [(LNContentType *)self initWithContentType:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      contentType = [(LNContentType *)self contentType];
      contentType2 = [(LNContentType *)v6 contentType];
      v9 = contentType;
      v10 = contentType2;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqualToString:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  contentType = [(LNContentType *)self contentType];
  v3 = [contentType hash];

  return v3;
}

- (LNContentType)initWithContentType:(id)type
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = LNContentType;
  v6 = [(LNContentType *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentType, type);
    v8 = v7;
  }

  return v7;
}

@end