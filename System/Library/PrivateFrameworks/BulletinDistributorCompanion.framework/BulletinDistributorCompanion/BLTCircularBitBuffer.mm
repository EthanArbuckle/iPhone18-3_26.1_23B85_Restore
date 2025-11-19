@interface BLTCircularBitBuffer
- (BLTCircularBitBuffer)initWithCapacity:(unint64_t)a3;
- (BLTCircularBitBuffer)initWithData:(id)a3 andIndex:(unint64_t)a4;
- (unsigned)bitAtIndex:(unint64_t)a3;
- (void)_setBit:(BOOL)a3 atIndex:(unint64_t)a4;
- (void)clear;
@end

@implementation BLTCircularBitBuffer

- (BLTCircularBitBuffer)initWithCapacity:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = BLTCircularBitBuffer;
  v4 = [(BLTCircularBitBuffer *)&v9 init];
  if (v4)
  {
    v5 = [objc_opt_class() actualCapacity:a3];
    v4->_beginIndex = 0;
    v4->_capacity = v5;
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v4->_capacity >> 3];
    bitVector = v4->_bitVector;
    v4->_bitVector = v6;
  }

  return v4;
}

- (BLTCircularBitBuffer)initWithData:(id)a3 andIndex:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = BLTCircularBitBuffer;
  v7 = [(BLTCircularBitBuffer *)&v12 init];
  if (v7)
  {
    v8 = [v6 length];
    v7->_beginIndex = a4;
    v7->_capacity = 8 * v8;
    v9 = [MEMORY[0x277CBEB28] dataWithData:v6];
    bitVector = v7->_bitVector;
    v7->_bitVector = v9;
  }

  return v7;
}

- (void)_setBit:(BOOL)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = a4 >> 3;
  v7 = [(NSMutableData *)self->_bitVector bytes];
  v8 = 1 << (v4 & 7);
  if (v5)
  {
    v9 = *(v7 + v6) | v8;
  }

  else
  {
    v9 = *(v7 + v6) & ~v8;
  }

  *(v7 + v6) = v9;
}

- (unsigned)bitAtIndex:(unint64_t)a3
{
  capacity = self->_capacity;
  if (a3 - self->_beginIndex >= capacity)
  {
    LOBYTE(v5) = 2;
  }

  else
  {
    v4 = a3 % capacity;
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