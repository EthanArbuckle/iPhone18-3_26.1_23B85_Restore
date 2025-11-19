@interface _DT_GCDAsyncSocketPreBuffer
- (_DT_GCDAsyncSocketPreBuffer)initWithCapacity:(unint64_t)a3;
- (void)dealloc;
- (void)didRead:(unint64_t)a3;
- (void)ensureCapacityForWrite:(unint64_t)a3;
- (void)getReadBuffer:(char *)a3 availableBytes:(unint64_t *)a4;
- (void)getWriteBuffer:(char *)a3 availableSpace:(unint64_t *)a4;
- (void)reset;
@end

@implementation _DT_GCDAsyncSocketPreBuffer

- (_DT_GCDAsyncSocketPreBuffer)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = _DT_GCDAsyncSocketPreBuffer;
  v4 = [(_DT_GCDAsyncSocketPreBuffer *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->preBufferSize = a3;
    v6 = malloc_type_malloc(a3, 0xB9023898uLL);
    v5->preBuffer = v6;
    v5->readPointer = v6;
    v5->writePointer = v6;
  }

  return v5;
}

- (void)dealloc
{
  preBuffer = self->preBuffer;
  if (preBuffer)
  {
    free(preBuffer);
  }

  v4.receiver = self;
  v4.super_class = _DT_GCDAsyncSocketPreBuffer;
  [(_DT_GCDAsyncSocketPreBuffer *)&v4 dealloc];
}

- (void)ensureCapacityForWrite:(unint64_t)a3
{
  v5 = [(_DT_GCDAsyncSocketPreBuffer *)self availableSpace];
  if (a3 > v5)
  {
    v6 = self->preBufferSize + a3 - v5;
    v7 = malloc_type_realloc(self->preBuffer, v6, 0xBDD06E98uLL);
    preBuffer = self->preBuffer;
    writePointer = self->writePointer;
    v10 = (self->readPointer - preBuffer);
    self->preBuffer = v7;
    self->preBufferSize = v6;
    self->readPointer = &v10[v7];
    self->writePointer = &v7[writePointer - preBuffer];
  }
}

- (void)getReadBuffer:(char *)a3 availableBytes:(unint64_t *)a4
{
  if (a3)
  {
    *a3 = self->readPointer;
  }

  if (a4)
  {
    *a4 = [(_DT_GCDAsyncSocketPreBuffer *)self availableBytes];
  }
}

- (void)didRead:(unint64_t)a3
{
  writePointer = self->writePointer;
  v4 = &self->readPointer[a3];
  self->readPointer = v4;
  if (v4 == writePointer)
  {
    preBuffer = self->preBuffer;
    self->readPointer = preBuffer;
    self->writePointer = preBuffer;
  }
}

- (void)getWriteBuffer:(char *)a3 availableSpace:(unint64_t *)a4
{
  if (a3)
  {
    *a3 = self->writePointer;
  }

  if (a4)
  {
    *a4 = [(_DT_GCDAsyncSocketPreBuffer *)self availableSpace];
  }
}

- (void)reset
{
  preBuffer = self->preBuffer;
  self->readPointer = preBuffer;
  self->writePointer = preBuffer;
}

@end