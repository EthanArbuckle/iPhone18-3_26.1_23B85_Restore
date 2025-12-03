@interface _OSLogChunkStore
- (_OSLogChunkStore)initWithBytes:(const void *)bytes size:(unint64_t)size;
- (void)enumerateChunksInRange:(_NSRange)range usingBlock:(id)block;
@end

@implementation _OSLogChunkStore

- (void)enumerateChunksInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  if (location + length > self->_sz)
  {
    qword_27DA52778 = "BUG IN LIBTRACE: enumerateChunksInRange:options:usingBlock: called with range larger than mapped file";
    qword_27DA527A8 = location + length;
    __break(1u);
  }

  else
  {
    v8 = self->_ptr + location;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v14 = __54___OSLogChunkStore_enumerateChunksInRange_usingBlock___block_invoke;
    v15 = &unk_2787ADCD8;
    selfCopy = self;
    v9 = blockCopy;
    v17 = v9;
    v10 = v13;
    v11 = 0;
    do
    {
      if (length - v11 < 0x10)
      {
        break;
      }

      v12 = *&v8[v11 + 8];
      if (length - v11 - 16 < v12)
      {
        break;
      }

      if (!(v14)(v10))
      {
        break;
      }

      v11 = (v11 + v12 + 23) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v11 - 1 < length);
  }
}

- (_OSLogChunkStore)initWithBytes:(const void *)bytes size:(unint64_t)size
{
  v10.receiver = self;
  v10.super_class = _OSLogChunkStore;
  v6 = [(_OSLogChunkStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_ptr = bytes;
    v6->_sz = size;
    fileName = v6->fileName;
    v6->fileName = 0;
  }

  return v7;
}

@end