@interface CalOpenFileURLWrapper
- (BOOL)isEqual:(id)a3;
- (CalOpenFileURLWrapper)initWithCoder:(id)a3;
- (CalOpenFileURLWrapper)initWithURL:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CalOpenFileURLWrapper

- (CalOpenFileURLWrapper)initWithURL:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CalOpenFileURLWrapper;
  v6 = [(CalOpenFileURLWrapper *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
    v8 = [v5 startAccessingSecurityScopedResource];
    v9 = [v5 path];
    v10 = open([v9 fileSystemRepresentation], 0);

    if (v10 == -1)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v11 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v10 closeOnDealloc:1];
    file = v7->_file;
    v7->_file = v11;

    if (v8)
    {
      [v5 stopAccessingSecurityScopedResource];
    }
  }

  v13 = v7;
LABEL_7:

  return v13;
}

- (CalOpenFileURLWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CalOpenFileURLWrapper;
  v5 = [(CalOpenFileURLWrapper *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"file"];
    file = v5->_file;
    v5->_file = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v5 = a3;
  [v5 encodeObject:url forKey:@"url"];
  [v5 encodeObject:self->_file forKey:@"file"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [v4[1] isEqual:self->_url];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end