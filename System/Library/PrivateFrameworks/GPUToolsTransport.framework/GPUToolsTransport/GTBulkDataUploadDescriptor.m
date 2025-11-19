@interface GTBulkDataUploadDescriptor
- (GTBulkDataUploadDescriptor)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTBulkDataUploadDescriptor

- (GTBulkDataUploadDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GTBulkDataUploadDescriptor;
  v5 = [(GTBulkDataUploadDescriptor *)&v7 init];
  if (v5)
  {
    v5->_sizeHint = [v4 decodeInt64ForKey:@"sizeHint"];
    v5->_compressionAlgorithm = [v4 decodeIntegerForKey:@"compressionAlgorithm"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sizeHint = self->_sizeHint;
  v5 = a3;
  [v5 encodeInt64:sizeHint forKey:@"sizeHint"];
  [v5 encodeInteger:self->_compressionAlgorithm forKey:@"compressionAlgorithm"];
}

@end