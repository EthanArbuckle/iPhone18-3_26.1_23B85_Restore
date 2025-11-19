@interface BLDAAPBuffer
- (BLDAAPBuffer)init;
- (NSData)data;
- (int64_t)appendHeader:(unsigned int)a3 size:(unsigned int)a4;
@end

@implementation BLDAAPBuffer

- (BLDAAPBuffer)init
{
  v6.receiver = self;
  v6.super_class = BLDAAPBuffer;
  v2 = [(BLDAAPBuffer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    data = v2->_data;
    v2->_data = v3;
  }

  return v2;
}

- (int64_t)appendHeader:(unsigned int)a3 size:(unsigned int)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = self->_data;
  v7 = [(NSData *)v6 length];
  v10[0] = bswap32(a3);
  v10[1] = bswap32(a4);
  [(NSData *)v6 appendBytes:v10 length:8];

  v8 = *MEMORY[0x277D85DE8];
  return v7 + 4;
}

- (NSData)data
{
  v2 = [(NSData *)self->_data copy];

  return v2;
}

@end