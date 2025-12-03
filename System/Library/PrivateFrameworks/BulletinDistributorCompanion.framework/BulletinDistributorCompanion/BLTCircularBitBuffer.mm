@interface BLTCircularBitBuffer
- (BLTCircularBitBuffer)initWithCapacity:(unint64_t)capacity;
- (BLTCircularBitBuffer)initWithData:(id)data andIndex:(unint64_t)index;
- (unsigned)bitAtIndex:(unint64_t)index;
- (void)_setBit:(BOOL)bit atIndex:(unint64_t)index;
- (void)clear;
@end

@implementation BLTCircularBitBuffer

- (BLTCircularBitBuffer)initWithCapacity:(unint64_t)capacity
{
  v9.receiver = self;
  v9.super_class = BLTCircularBitBuffer;
  v4 = [(BLTCircularBitBuffer *)&v9 init];
  if (v4)
  {
    v5 = [objc_opt_class() actualCapacity:capacity];
    v4->_beginIndex = 0;
    v4->_capacity = v5;
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v4->_capacity >> 3];
    bitVector = v4->_bitVector;
    v4->_bitVector = v6;
  }

  return v4;
}

- (BLTCircularBitBuffer)initWithData:(id)data andIndex:(unint64_t)index
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = BLTCircularBitBuffer;
  v7 = [(BLTCircularBitBuffer *)&v12 init];
  if (v7)
  {
    v8 = [dataCopy length];
    v7->_beginIndex = index;
    v7->_capacity = 8 * v8;
    v9 = [MEMORY[0x277CBEB28] dataWithData:dataCopy];
    bitVector = v7->_bitVector;
    v7->_bitVector = v9;
  }

  return v7;
}

- (void)_setBit:(BOOL)bit atIndex:(unint64_t)index
{
  indexCopy = index;
  bitCopy = bit;
  v6 = index >> 3;
  bytes = [(NSMutableData *)self->_bitVector bytes];
  v8 = 1 << (indexCopy & 7);
  if (bitCopy)
  {
    v9 = *(bytes + v6) | v8;
  }

  else
  {
    v9 = *(bytes + v6) & ~v8;
  }

  *(bytes + v6) = v9;
}

- (unsigned)bitAtIndex:(unint64_t)index
{
  capacity = self->_capacity;
  if (index - self->_beginIndex >= capacity)
  {
    LOBYTE(v5) = 2;
  }

  else
  {
    v4 = index % capacity;
    return (*([(NSMutableData *)self->_bitVector bytes]+ (v4 >> 3)) >> (v4 & 7)) & 1;
  }

  return v5;
}

- (void)clear
{
  bitVector = self->_bitVector;
  v3 = [(NSMutableData *)bitVector length];

  [(NSMutableData *)bitVector resetBytesInRange:0, v3];
}

@end