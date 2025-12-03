@interface CUIMeshBuffer
- (CUIMeshBuffer)init;
- (CUIMeshBuffer)initWithBytes:(void *)bytes andLength:(unint64_t)length ofType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)map;
- (void)dealloc;
- (void)fillData:(id)data offset:(unint64_t)offset;
@end

@implementation CUIMeshBuffer

- (CUIMeshBuffer)init
{
  v4.receiver = self;
  v4.super_class = CUIMeshBuffer;
  v2 = [(CUIMeshBuffer *)&v4 init];
  if (v2)
  {
    v2->_data = objc_alloc_init(NSMutableData);
  }

  return v2;
}

- (CUIMeshBuffer)initWithBytes:(void *)bytes andLength:(unint64_t)length ofType:(unint64_t)type
{
  v8 = [(CUIMeshBuffer *)self init];
  v9 = v8;
  if (v8)
  {
    [(NSMutableData *)v8->_data appendBytes:bytes length:length];
    v9->_type = type;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIMeshBuffer;
  [(CUIMeshBuffer *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[2] = self->_type;
  data = self->_data;
  if (data)
  {
    v5[1] = [(NSMutableData *)data copyWithZone:zone];
  }

  return v5;
}

- (void)fillData:(id)data offset:(unint64_t)offset
{
  data = self->_data;
  bytes = [data bytes];
  v8 = [data length] - offset;

  [(NSMutableData *)data appendBytes:&bytes[offset] length:v8];
}

- (id)map
{
  v2 = [objc_alloc(getMDLMeshBufferMapClass[0]()) initWithBytes:-[NSMutableData bytes](self->_data deallocator:{"bytes"), 0}];

  return v2;
}

@end