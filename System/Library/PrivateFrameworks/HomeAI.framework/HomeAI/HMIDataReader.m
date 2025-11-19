@interface HMIDataReader
- (HMIDataReader)initWithData:(id)a3;
- (id)readData:(unint64_t)a3;
- (unint64_t)readUInt64;
- (unsigned)readUInt32;
@end

@implementation HMIDataReader

- (HMIDataReader)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMIDataReader;
  v6 = [(HMIDataReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
    v7->_position = 0;
  }

  return v7;
}

- (unsigned)readUInt32
{
  v3 = [(NSData *)self->_data bytes];
  position = self->_position;
  self->_position = position + 4;
  return bswap32(*&v3[position]);
}

- (unint64_t)readUInt64
{
  v3 = [(NSData *)self->_data bytes];
  position = self->_position;
  self->_position = position + 8;
  return bswap64(*&v3[position]);
}

- (id)readData:(unint64_t)a3
{
  result = [(NSData *)self->_data subdataWithRange:self->_position, a3];
  self->_position += a3;
  return result;
}

@end