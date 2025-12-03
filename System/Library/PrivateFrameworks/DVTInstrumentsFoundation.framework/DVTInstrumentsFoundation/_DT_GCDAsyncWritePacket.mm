@interface _DT_GCDAsyncWritePacket
- (_DT_GCDAsyncWritePacket)initWithData:(id)data timeout:(double)timeout tag:(int64_t)tag;
@end

@implementation _DT_GCDAsyncWritePacket

- (_DT_GCDAsyncWritePacket)initWithData:(id)data timeout:(double)timeout tag:(int64_t)tag
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = _DT_GCDAsyncWritePacket;
  v10 = [(_DT_GCDAsyncWritePacket *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->buffer, data);
    v11->timeout = timeout;
    v11->bytesDone = 0;
    v11->tag = tag;
  }

  return v11;
}

@end