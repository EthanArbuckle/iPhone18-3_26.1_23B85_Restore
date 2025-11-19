@interface DSArchivedItemDescriptor
- (DSArchivedItemDescriptor)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DSArchivedItemDescriptor

- (DSArchivedItemDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DSArchivedItemDescriptor;
  v5 = [(DSArchivedItemDescriptor *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filePath"];
    filePath = v5->_filePath;
    v5->_filePath = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileSize"];
    fileSize = v5->_fileSize;
    v5->_fileSize = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typeIdentifier"];
    typeIdentifier = v5->_typeIdentifier;
    v5->_typeIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_filePath forKey:@"filePath"];
  [v4 encodeObject:self->_fileSize forKey:@"fileSize"];
  [v4 encodeObject:self->_typeIdentifier forKey:@"typeIdentifier"];
}

@end