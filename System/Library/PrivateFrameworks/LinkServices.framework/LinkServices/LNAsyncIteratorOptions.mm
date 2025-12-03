@interface LNAsyncIteratorOptions
- (BOOL)isEqual:(id)equal;
- (LNAsyncIteratorOptions)initWithCoder:(id)coder;
- (LNAsyncIteratorOptions)initWithPageSize:(id)size;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAsyncIteratorOptions

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    exportConfiguration = [(LNAsyncIteratorOptions *)self exportConfiguration];
    exportConfiguration2 = [(LNAsyncIteratorOptions *)v6 exportConfiguration];
    v9 = exportConfiguration;
    v10 = exportConfiguration2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    pageSize = [(LNAsyncIteratorOptions *)self pageSize];
    pageSize2 = [(LNAsyncIteratorOptions *)v6 pageSize];
    v14 = pageSize;
    v17 = pageSize2;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v17)
      {
        LOBYTE(v12) = [v14 isEqual:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  exportConfiguration = [(LNAsyncIteratorOptions *)self exportConfiguration];
  v4 = [exportConfiguration hash];
  pageSize = [(LNAsyncIteratorOptions *)self pageSize];
  v6 = [pageSize hash];

  return v6 ^ v4;
}

- (LNAsyncIteratorOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pageSize"];
  if (v5)
  {
    self = [(LNAsyncIteratorOptions *)self initWithPageSize:v5];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exportConfiguration"];
    [(LNAsyncIteratorOptions *)self setExportConfiguration:v6];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  exportConfiguration = [(LNAsyncIteratorOptions *)self exportConfiguration];
  [coderCopy encodeObject:exportConfiguration forKey:@"exportConfiguration"];

  pageSize = [(LNAsyncIteratorOptions *)self pageSize];
  [coderCopy encodeObject:pageSize forKey:@"pageSize"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  exportConfiguration = [(LNAsyncIteratorOptions *)self exportConfiguration];
  pageSize = [(LNAsyncIteratorOptions *)self pageSize];
  v8 = [v3 stringWithFormat:@"<%@: %p, exportConfiguration: %@, pageSize: %@>", v5, self, exportConfiguration, pageSize];

  return v8;
}

- (LNAsyncIteratorOptions)initWithPageSize:(id)size
{
  sizeCopy = size;
  if (!sizeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorOptions.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"pageSize"}];
  }

  v12.receiver = self;
  v12.super_class = LNAsyncIteratorOptions;
  v7 = [(LNAsyncIteratorOptions *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_pageSize, size);
    v9 = v8;
  }

  return v8;
}

@end