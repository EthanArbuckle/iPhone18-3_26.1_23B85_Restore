@interface OSActivityEventMessage
- (NSString)format;
- (void)fillEventData:(const char *)a3 length:(unint64_t)a4 privateBuffer:(const char *)a5 length:(unint64_t)a6;
@end

@implementation OSActivityEventMessage

- (NSString)format
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [(OSActivityEvent *)self traceID]>> 32;
  v10[0] = 0;
  v10[1] = 0;
  v4 = [(OSActivityEvent *)self senderImageUUID];
  [v4 getUUIDBytes:v10];

  v5 = uuidpath_resolve(0, v10, v3, 0, &v9, 0, 0, 0);
  v6 = 0;
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)fillEventData:(const char *)a3 length:(unint64_t)a4 privateBuffer:(const char *)a5 length:(unint64_t)a6
{
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:a4];
  bufferData = self->_bufferData;
  self->_bufferData = v9;

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:a5 length:a6];
  bufferPrivateData = self->_bufferPrivateData;
  self->_bufferPrivateData = v11;

  MEMORY[0x2821F96F8]();
}

@end