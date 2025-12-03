@interface GTFileEntry
- (GTFileEntry)initWithCoder:(id)coder;
- (GTFileEntry)initWithLink:(id)link destination:(id)destination;
- (GTFileEntry)initWithPath:(id)path fileSize:(unint64_t)size;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTFileEntry

- (GTFileEntry)initWithPath:(id)path fileSize:(unint64_t)size
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = GTFileEntry;
  v8 = [(GTFileEntry *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_path, path);
    destination = v9->_destination;
    v9->_destination = 0;

    v9->_fileSize = size;
  }

  return v9;
}

- (GTFileEntry)initWithLink:(id)link destination:(id)destination
{
  linkCopy = link;
  destinationCopy = destination;
  v12.receiver = self;
  v12.super_class = GTFileEntry;
  v9 = [(GTFileEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, link);
    objc_storeStrong(&v10->_destination, destination);
    v10->_fileSize = 0;
  }

  return v10;
}

- (GTFileEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = GTFileEntry;
  v5 = [(GTFileEntry *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
    destination = v5->_destination;
    v5->_destination = v8;

    v5->_fileSize = [coderCopy decodeIntegerForKey:@"fileSize"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  path = self->_path;
  coderCopy = coder;
  [coderCopy encodeObject:path forKey:@"path"];
  [coderCopy encodeObject:self->_destination forKey:@"destination"];
  [coderCopy encodeInteger:self->_fileSize forKey:@"fileSize"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  path = [(GTFileEntry *)self path];
  destination = [(GTFileEntry *)self destination];
  v8 = [v3 stringWithFormat:@"<%@: %p, Path: %@, Destination: %@, Size: %lu>", v5, self, path, destination, -[GTFileEntry fileSize](self, "fileSize")];

  return v8;
}

@end