@interface DYVMBufferSubRegion
- (DYVMBufferSubRegion)initWithDYVMBuffer:(id)a3 range:(_NSRange)a4;
- (const)bytes;
- (id)DYGPUToolsData;
- (id)subdataWithRange:(_NSRange)a3;
- (void)dealloc;
@end

@implementation DYVMBufferSubRegion

- (DYVMBufferSubRegion)initWithDYVMBuffer:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9.receiver = self;
  v9.super_class = DYVMBufferSubRegion;
  v7 = [(DYVMBufferSubRegion *)&v9 init];
  if (v7)
  {
    v7->_parent = a3;
    v7->_range.location = location;
    v7->_range.length = length;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYVMBufferSubRegion;
  [(DYVMBufferSubRegion *)&v3 dealloc];
}

- (const)bytes
{
  result = [(DYVMBuffer *)self->_parent bytes];
  if (result)
  {
    return result + self->_range.location;
  }

  return result;
}

- (id)subdataWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location + a3.length > [(DYVMBufferSubRegion *)self length])
  {
    return 0;
  }

  v7 = [[DYVMBufferSubRegion alloc] initWithDYVMBuffer:self->_parent range:self->_range.location + location, length];

  return v7;
}

- (id)DYGPUToolsData
{
  v3 = [(DYVMBufferSubRegion *)self bytes];
  if (v3)
  {
    v4 = v3;
    v5 = self;
    v6 = objc_alloc(MEMORY[0x277CBEA90]);
    v7 = [(DYVMBufferSubRegion *)self length];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__DYVMBufferSubRegion_DYGPUToolsData__block_invoke;
    v10[3] = &unk_27930D1C8;
    v10[4] = self;
    return [v6 initWithBytesNoCopy:v4 length:v7 deallocator:v10];
  }

  else
  {
    v9 = MEMORY[0x277CBEA90];

    return [v9 data];
  }
}

@end