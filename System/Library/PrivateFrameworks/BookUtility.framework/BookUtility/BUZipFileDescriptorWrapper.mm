@interface BUZipFileDescriptorWrapper
- (BUZipFileDescriptorWrapper)init;
- (BUZipFileDescriptorWrapper)initWithFileDescriptor:(int)descriptor queue:(id)queue;
- (void)dealloc;
@end

@implementation BUZipFileDescriptorWrapper

- (BUZipFileDescriptorWrapper)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@: %s", @"Do not call method", "[BUZipFileDescriptorWrapper init]");
  v6 = objc_msgSend_exceptionWithName_reason_userInfo_(v2, v5, v3, v4, 0);
  v7 = v6;

  objc_exception_throw(v6);
}

- (BUZipFileDescriptorWrapper)initWithFileDescriptor:(int)descriptor queue:(id)queue
{
  v4 = *&descriptor;
  queueCopy = queue;
  if ((v4 & 0x80000000) == 0)
  {
    v18.receiver = self;
    v18.super_class = BUZipFileDescriptorWrapper;
    v7 = [(BUZipFileDescriptorWrapper *)&v18 init];
    self = v7;
    if (!v7)
    {
      close(v4);
      goto LABEL_7;
    }

    v7->_fileDescriptor = v4;
    v8 = [BUFileIOChannel alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_241DBA500;
    v16[3] = &unk_278D1D518;
    v17 = v4;
    v10 = objc_msgSend_initForReadingDescriptor_queue_cleanupHandler_(v8, v9, v4, queueCopy, v16);
    readChannel = self->_readChannel;
    self->_readChannel = v10;

    if (self->_readChannel)
    {
      v12 = dispatch_group_create();
      accessGroup = self->_accessGroup;
      self->_accessGroup = v12;

LABEL_7:
      self = self;
      selfCopy = self;
      goto LABEL_8;
    }
  }

  selfCopy = 0;
LABEL_8:

  return selfCopy;
}

- (void)dealloc
{
  objc_msgSend_close(self->_readChannel, a2, v2);
  v4.receiver = self;
  v4.super_class = BUZipFileDescriptorWrapper;
  [(BUZipFileDescriptorWrapper *)&v4 dealloc];
}

@end