@interface _OSLogEnumeratorOversizeChunk
- (BOOL)matches:(unsigned int)a3 procinfo:(catalog_procinfo_s *)a4;
- (_OSLogEnumeratorOversizeChunk)initWithSubchunk:(id)a3 chunk:(tracev3_chunk_s *)a4;
- (int64_t)compare:(id)a3;
- (unint64_t)timestamp;
- (void)fillMessage:(os_log_message_s *)a3;
- (void)fillProxy:(id)a3;
@end

@implementation _OSLogEnumeratorOversizeChunk

- (unint64_t)timestamp
{
  chunk = self->_chunk;
  if (chunk->var0.var0 == 24578)
  {
    return chunk->var1.var2.var6;
  }

  else
  {
    return -1;
  }
}

- (void)fillProxy:(id)a3
{
  chunk = self->_chunk;
  v4 = 32;
  if (chunk->var0.var0 == 24578)
  {
    v4 = 48;
  }

  v5 = 28;
  if (chunk->var0.var0 == 24578)
  {
    v5 = 44;
  }

  v6 = 30;
  if (chunk->var0.var0 == 24578)
  {
    v6 = 46;
  }

  [a3 _setBuffer:chunk + v4 size:*(&chunk->var0.var0 + v5) privateBuffer:chunk + v4 + *(&chunk->var0.var0 + v5) privateSize:*(&chunk->var0.var0 + v6)];
}

- (void)fillMessage:(os_log_message_s *)a3
{
  chunk = self->_chunk;
  v4 = 32;
  if (chunk->var0.var0 == 24578)
  {
    v4 = 48;
  }

  v5 = 28;
  if (chunk->var0.var0 == 24578)
  {
    v5 = 44;
  }

  v6 = 30;
  if (chunk->var0.var0 == 24578)
  {
    v6 = 46;
  }

  v7 = *(&chunk->var0.var0 + v5);
  v8 = *(&chunk->var0.var0 + v6);
  v9 = chunk + v4;
  a3->var11 = v9;
  a3->var12 = v7;
  a3->var13 = &v9[v7];
  a3->var14 = v8;
}

- (BOOL)matches:(unsigned int)a3 procinfo:(catalog_procinfo_s *)a4
{
  chunk = self->_chunk;
  var0 = chunk->var1.var3.var0;
  var3 = a4->var3;
  if (chunk->var0.var0 == 24578)
  {
    if (var0 == var3 && chunk->var1.var3.var1 == a4->var4)
    {
      v7 = 40;
      return *(&chunk->var0.var0 + v7) == a3;
    }
  }

  else if (var0 == var3)
  {
    v7 = 24;
    return *(&chunk->var0.var0 + v7) == a3;
  }

  return 0;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(_OSLogEnumeratorOversizeChunk *)self timestamp];
  if (v5 == [v4 timestamp])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(_OSLogEnumeratorOversizeChunk *)self timestamp];
    if (v7 < [v4 timestamp])
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (_OSLogEnumeratorOversizeChunk)initWithSubchunk:(id)a3 chunk:(tracev3_chunk_s *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _OSLogEnumeratorOversizeChunk;
  v8 = [(_OSLogEnumeratorOversizeChunk *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_subchunk, a3);
    v9->_chunk = a4;
  }

  return v9;
}

@end