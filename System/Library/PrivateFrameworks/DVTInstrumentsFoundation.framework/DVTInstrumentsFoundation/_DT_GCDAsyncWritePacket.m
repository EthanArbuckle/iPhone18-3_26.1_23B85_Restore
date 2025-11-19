@interface _DT_GCDAsyncWritePacket
- (_DT_GCDAsyncWritePacket)initWithData:(id)a3 timeout:(double)a4 tag:(int64_t)a5;
@end

@implementation _DT_GCDAsyncWritePacket

- (_DT_GCDAsyncWritePacket)initWithData:(id)a3 timeout:(double)a4 tag:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _DT_GCDAsyncWritePacket;
  v10 = [(_DT_GCDAsyncWritePacket *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->buffer, a3);
    v11->timeout = a4;
    v11->bytesDone = 0;
    v11->tag = a5;
  }

  return v11;
}

@end