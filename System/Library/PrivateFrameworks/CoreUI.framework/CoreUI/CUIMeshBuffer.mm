@interface CUIMeshBuffer
- (CUIMeshBuffer)init;
- (CUIMeshBuffer)initWithBytes:(void *)a3 andLength:(unint64_t)a4 ofType:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)map;
- (void)dealloc;
- (void)fillData:(id)a3 offset:(unint64_t)a4;
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

- (CUIMeshBuffer)initWithBytes:(void *)a3 andLength:(unint64_t)a4 ofType:(unint64_t)a5
{
  v8 = [(CUIMeshBuffer *)self init];
  v9 = v8;
  if (v8)
  {
    [(NSMutableData *)v8->_data appendBytes:a3 length:a4];
    v9->_type = a5;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIMeshBuffer;
  [(CUIMeshBuffer *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[2] = self->_type;
  data = self->_data;
  if (data)
  {
    v5[1] = [(NSMutableData *)data copyWithZone:a3];
  }

  return v5;
}

- (void)fillData:(id)a3 offset:(unint64_t)a4
{
  data = self->_data;
  v7 = [a3 bytes];
  v8 = [a3 length] - a4;

  [(NSMutableData *)data appendBytes:&v7[a4] length:v8];
}

- (id)map
{
  v2 = [objc_alloc(getMDLMeshBufferMapClass[0]()) initWithBytes:-[NSMutableData bytes](self->_data deallocator:{"bytes"), 0}];

  return v2;
}

@end