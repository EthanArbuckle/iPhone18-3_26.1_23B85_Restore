@interface CalOpenFileURLWrapper
- (BOOL)isEqual:(id)equal;
- (CalOpenFileURLWrapper)initWithCoder:(id)coder;
- (CalOpenFileURLWrapper)initWithURL:(id)l;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CalOpenFileURLWrapper

- (CalOpenFileURLWrapper)initWithURL:(id)l
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = CalOpenFileURLWrapper;
  v6 = [(CalOpenFileURLWrapper *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
    path = [lCopy path];
    v10 = open([path fileSystemRepresentation], 0);

    if (v10 == -1)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v11 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v10 closeOnDealloc:1];
    file = v7->_file;
    v7->_file = v11;

    if (startAccessingSecurityScopedResource)
    {
      [lCopy stopAccessingSecurityScopedResource];
    }
  }

  v13 = v7;
LABEL_7:

  return v13;
}

- (CalOpenFileURLWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CalOpenFileURLWrapper;
  v5 = [(CalOpenFileURLWrapper *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"file"];
    file = v5->_file;
    v5->_file = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  url = self->_url;
  coderCopy = coder;
  [coderCopy encodeObject:url forKey:@"url"];
  [coderCopy encodeObject:self->_file forKey:@"file"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [equalCopy[1] isEqual:self->_url];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end