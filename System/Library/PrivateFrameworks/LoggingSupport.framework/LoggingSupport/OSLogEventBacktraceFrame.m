@interface OSLogEventBacktraceFrame
- (NSUUID)imageUUID;
- (OSLogEventBacktraceFrame)initWithUUIDBytes:(const char *)a3 andOffset:(unint64_t)a4;
- (void)dealloc;
@end

@implementation OSLogEventBacktraceFrame

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OSLogEventBacktraceFrame;
  [(OSLogEventBacktraceFrame *)&v3 dealloc];
}

- (NSUUID)imageUUID
{
  result = self->_imageUUID;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:self->_uuid];
    self->_imageUUID = result;
  }

  return result;
}

- (OSLogEventBacktraceFrame)initWithUUIDBytes:(const char *)a3 andOffset:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = OSLogEventBacktraceFrame;
  result = [(OSLogEventBacktraceFrame *)&v7 init];
  if (result)
  {
    *result->_uuid = *a3;
    result->_imageOffset = a4;
  }

  return result;
}

@end