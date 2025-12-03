@interface OSLogEventBacktraceFrame
- (NSUUID)imageUUID;
- (OSLogEventBacktraceFrame)initWithUUIDBytes:(const char *)bytes andOffset:(unint64_t)offset;
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

- (OSLogEventBacktraceFrame)initWithUUIDBytes:(const char *)bytes andOffset:(unint64_t)offset
{
  v7.receiver = self;
  v7.super_class = OSLogEventBacktraceFrame;
  result = [(OSLogEventBacktraceFrame *)&v7 init];
  if (result)
  {
    *result->_uuid = *bytes;
    result->_imageOffset = offset;
  }

  return result;
}

@end