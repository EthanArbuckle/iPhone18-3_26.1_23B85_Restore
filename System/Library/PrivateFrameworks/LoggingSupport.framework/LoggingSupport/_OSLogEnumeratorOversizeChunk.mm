@interface _OSLogEnumeratorOversizeChunk
- (BOOL)matches:(unsigned int)matches procinfo:(catalog_procinfo_s *)procinfo;
- (_OSLogEnumeratorOversizeChunk)initWithSubchunk:(id)subchunk chunk:(tracev3_chunk_s *)chunk;
- (int64_t)compare:(id)compare;
- (unint64_t)timestamp;
- (void)fillMessage:(os_log_message_s *)message;
- (void)fillProxy:(id)proxy;
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

- (void)fillProxy:(id)proxy
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

  [proxy _setBuffer:chunk + v4 size:*(&chunk->var0.var0 + v5) privateBuffer:chunk + v4 + *(&chunk->var0.var0 + v5) privateSize:*(&chunk->var0.var0 + v6)];
}

- (void)fillMessage:(os_log_message_s *)message
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
  message->var11 = v9;
  message->var12 = v7;
  message->var13 = &v9[v7];
  message->var14 = v8;
}

- (BOOL)matches:(unsigned int)matches procinfo:(catalog_procinfo_s *)procinfo
{
  chunk = self->_chunk;
  var0 = chunk->var1.var3.var0;
  var3 = procinfo->var3;
  if (chunk->var0.var0 == 24578)
  {
    if (var0 == var3 && chunk->var1.var3.var1 == procinfo->var4)
    {
      v7 = 40;
      return *(&chunk->var0.var0 + v7) == matches;
    }
  }

  else if (var0 == var3)
  {
    v7 = 24;
    return *(&chunk->var0.var0 + v7) == matches;
  }

  return 0;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  timestamp = [(_OSLogEnumeratorOversizeChunk *)self timestamp];
  if (timestamp == [compareCopy timestamp])
  {
    v6 = 0;
  }

  else
  {
    timestamp2 = [(_OSLogEnumeratorOversizeChunk *)self timestamp];
    if (timestamp2 < [compareCopy timestamp])
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

- (_OSLogEnumeratorOversizeChunk)initWithSubchunk:(id)subchunk chunk:(tracev3_chunk_s *)chunk
{
  subchunkCopy = subchunk;
  v11.receiver = self;
  v11.super_class = _OSLogEnumeratorOversizeChunk;
  v8 = [(_OSLogEnumeratorOversizeChunk *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_subchunk, subchunk);
    v9->_chunk = chunk;
  }

  return v9;
}

@end