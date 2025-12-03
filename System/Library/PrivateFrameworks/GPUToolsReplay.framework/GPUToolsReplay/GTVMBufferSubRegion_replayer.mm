@interface GTVMBufferSubRegion_replayer
- (GTVMBufferSubRegion_replayer)initWithGTVMBuffer:(id)buffer range:(_NSRange)range;
- (const)bytes;
- (id)GTGPUToolsData;
- (id)subdataWithRange:(_NSRange)range;
- (void)dealloc;
@end

@implementation GTVMBufferSubRegion_replayer

- (id)GTGPUToolsData
{
  bytes = [(GTVMBufferSubRegion_replayer *)self bytes];
  if (bytes)
  {
    v4 = bytes;
    selfCopy = self;
    v6 = objc_alloc(MEMORY[0x277CBEA90]);
    v7 = [(GTVMBufferSubRegion_replayer *)self length];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__GTVMBufferSubRegion_GTGPUToolsData__block_invoke;
    v10[3] = &unk_279658278;
    v10[4] = self;
    return [v6 initWithBytesNoCopy:v4 length:v7 deallocator:v10];
  }

  else
  {
    v9 = MEMORY[0x277CBEA90];

    return [v9 data];
  }
}

- (id)subdataWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location + range.length > [(GTVMBufferSubRegion_replayer *)self length])
  {
    return 0;
  }

  v7 = [[GTVMBufferSubRegion_replayer alloc] initWithGTVMBuffer:self->_parent range:self->_range.location + location, length];

  return v7;
}

- (const)bytes
{
  result = [(GTVMBuffer_replayer *)self->_parent bytes];
  if (result)
  {
    return result + self->_range.location;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GTVMBufferSubRegion_replayer;
  [(GTVMBufferSubRegion_replayer *)&v3 dealloc];
}

- (GTVMBufferSubRegion_replayer)initWithGTVMBuffer:(id)buffer range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9.receiver = self;
  v9.super_class = GTVMBufferSubRegion_replayer;
  v7 = [(GTVMBufferSubRegion_replayer *)&v9 init];
  if (v7)
  {
    v7->_parent = buffer;
    v7->_range.location = location;
    v7->_range.length = length;
  }

  return v7;
}

@end