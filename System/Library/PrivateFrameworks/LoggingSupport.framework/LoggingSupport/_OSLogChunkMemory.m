@interface _OSLogChunkMemory
- (_OSLogChunkMemory)initWithBytes:(const void *)a3 size:(unint64_t)a4 deallocator:(id)a5;
- (void)dealloc;
@end

@implementation _OSLogChunkMemory

- (void)dealloc
{
  ptr = self->super._ptr;
  sz = self->super._sz;
  (*(self->_deallocator + 2))();
  v5.receiver = self;
  v5.super_class = _OSLogChunkMemory;
  [(_OSLogChunkMemory *)&v5 dealloc];
}

- (_OSLogChunkMemory)initWithBytes:(const void *)a3 size:(unint64_t)a4 deallocator:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = _OSLogChunkMemory;
  v9 = [(_OSLogChunkStore *)&v13 initWithBytes:a3 size:a4];
  if (v9)
  {
    v10 = [v8 copy];
    deallocator = v9->_deallocator;
    v9->_deallocator = v10;
  }

  return v9;
}

@end