@interface GTVMBufferSubRegion_capture
- (GTVMBufferSubRegion_capture)initWithGTVMBuffer:(id)a3 range:(_NSRange)a4;
- (const)bytes;
- (id)GTGPUToolsData;
- (id)subdataWithRange:(_NSRange)a3;
- (void)dealloc;
@end

@implementation GTVMBufferSubRegion_capture

- (id)GTGPUToolsData
{
  v3 = [(GTVMBufferSubRegion_capture *)self bytes];
  if (v3)
  {
    v4 = v3;
    v5 = self;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __37__GTVMBufferSubRegion_GTGPUToolsData__block_invoke;
    v7[3] = &unk_2F1628;
    v7[4] = self;
    return [[NSData alloc] initWithBytesNoCopy:v4 length:-[GTVMBufferSubRegion_capture length](self deallocator:{"length"), v7}];
  }

  else
  {

    return +[NSData data];
  }
}

- (id)subdataWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location + a3.length > [(GTVMBufferSubRegion_capture *)self length])
  {
    return 0;
  }

  v7 = [[GTVMBufferSubRegion_capture alloc] initWithGTVMBuffer:self->_parent range:self->_range.location + location, length];

  return v7;
}

- (const)bytes
{
  result = [(GTVMBuffer_capture *)self->_parent bytes];
  if (result)
  {
    return result + self->_range.location;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GTVMBufferSubRegion_capture;
  [(GTVMBufferSubRegion_capture *)&v3 dealloc];
}

- (GTVMBufferSubRegion_capture)initWithGTVMBuffer:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9.receiver = self;
  v9.super_class = GTVMBufferSubRegion_capture;
  v7 = [(GTVMBufferSubRegion_capture *)&v9 init];
  if (v7)
  {
    v7->_parent = a3;
    v7->_range.location = location;
    v7->_range.length = length;
  }

  return v7;
}

@end