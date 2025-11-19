@interface GTBulkDataTransferOptions
- (GTBulkDataTransferOptions)init;
- (GTBulkDataTransferOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTBulkDataTransferOptions

- (GTBulkDataTransferOptions)init
{
  v3.receiver = self;
  v3.super_class = GTBulkDataTransferOptions;
  result = [(GTBulkDataTransferOptions *)&v3 init];
  if (result)
  {
    *&result->_chunkSize = xmmword_24DC0EE60;
  }

  return result;
}

- (GTBulkDataTransferOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GTBulkDataTransferOptions;
  v5 = [(GTBulkDataTransferOptions *)&v7 init];
  if (v5)
  {
    v5->_chunkSize = [v4 decodeInt64ForKey:@"chunkSize"];
    v5->_compressionAlgorithm = [v4 decodeIntegerForKey:@"compressionAlgorithm"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  chunkSize = self->_chunkSize;
  v5 = a3;
  [v5 encodeInt64:chunkSize forKey:@"chunkSize"];
  [v5 encodeInteger:self->_compressionAlgorithm forKey:@"compressionAlgorithm"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setChunkSize:self->_chunkSize];
  [v4 setCompressionAlgorithm:self->_compressionAlgorithm];
  return v4;
}

@end