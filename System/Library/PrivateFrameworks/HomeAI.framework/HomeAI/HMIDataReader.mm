@interface HMIDataReader
- (HMIDataReader)initWithData:(id)data;
- (id)readData:(unint64_t)data;
- (unint64_t)readUInt64;
- (unsigned)readUInt32;
@end

@implementation HMIDataReader

- (HMIDataReader)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = HMIDataReader;
  v6 = [(HMIDataReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
    v7->_position = 0;
  }

  return v7;
}

- (unsigned)readUInt32
{
  bytes = [(NSData *)self->_data bytes];
  position = self->_position;
  self->_position = position + 4;
  return bswap32(*&bytes[position]);
}

- (unint64_t)readUInt64
{
  bytes = [(NSData *)self->_data bytes];
  position = self->_position;
  self->_position = position + 8;
  return bswap64(*&bytes[position]);
}

- (id)readData:(unint64_t)data
{
  result = [(NSData *)self->_data subdataWithRange:self->_position, data];
  self->_position += data;
  return result;
}

@end