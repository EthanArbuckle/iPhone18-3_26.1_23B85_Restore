@interface _OSLogChunkBuffer
- (_OSLogChunkBuffer)initWithChunk:(tracev3_chunk_s *)chunk subchunk:(catalog_subchunk_s *)subchunk;
- (void)dealloc;
@end

@implementation _OSLogChunkBuffer

- (void)dealloc
{
  if (self->_allocated)
  {
    free(self->_data);
  }

  v3.receiver = self;
  v3.super_class = _OSLogChunkBuffer;
  [(_OSLogChunkBuffer *)&v3 dealloc];
}

- (_OSLogChunkBuffer)initWithChunk:(tracev3_chunk_s *)chunk subchunk:(catalog_subchunk_s *)subchunk
{
  v11.receiver = self;
  v11.super_class = _OSLogChunkBuffer;
  v6 = [(_OSLogChunkBuffer *)&v11 init];
  if (v6)
  {
    v10 = 0;
    v7 = _tracev3_chunk_decompress(chunk, subchunk, 0, &v10);
    v6->_data = v7;
    if (!v7)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v6->_sz = v10;
    v6->_allocated = v7 != &chunk->var1;
  }

  v8 = v6;
LABEL_6:

  return v8;
}

@end