@interface GTBulkDataUploadDescriptor
- (GTBulkDataUploadDescriptor)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTBulkDataUploadDescriptor

- (GTBulkDataUploadDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = GTBulkDataUploadDescriptor;
  v5 = [(GTBulkDataUploadDescriptor *)&v7 init];
  if (v5)
  {
    v5->_sizeHint = [coderCopy decodeInt64ForKey:@"sizeHint"];
    v5->_compressionAlgorithm = [coderCopy decodeIntegerForKey:@"compressionAlgorithm"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sizeHint = self->_sizeHint;
  coderCopy = coder;
  [coderCopy encodeInt64:sizeHint forKey:@"sizeHint"];
  [coderCopy encodeInteger:self->_compressionAlgorithm forKey:@"compressionAlgorithm"];
}

@end