@interface DSArchivedItemDescriptor
- (DSArchivedItemDescriptor)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DSArchivedItemDescriptor

- (DSArchivedItemDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DSArchivedItemDescriptor;
  v5 = [(DSArchivedItemDescriptor *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filePath"];
    filePath = v5->_filePath;
    v5->_filePath = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileSize"];
    fileSize = v5->_fileSize;
    v5->_fileSize = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typeIdentifier"];
    typeIdentifier = v5->_typeIdentifier;
    v5->_typeIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_filePath forKey:@"filePath"];
  [coderCopy encodeObject:self->_fileSize forKey:@"fileSize"];
  [coderCopy encodeObject:self->_typeIdentifier forKey:@"typeIdentifier"];
}

@end