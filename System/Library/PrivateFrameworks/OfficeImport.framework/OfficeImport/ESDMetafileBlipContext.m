@interface ESDMetafileBlipContext
- (BOOL)loadDelayedNode:(id)a3;
- (ESDMetafileBlipContext)initWithOffset:(unsigned int)a3 byteCount:(unsigned int)a4 uncompressed:(unsigned int)a5 stream:(SsrwOOStream *)a6 streamID:(unsigned int)a7;
@end

@implementation ESDMetafileBlipContext

- (ESDMetafileBlipContext)initWithOffset:(unsigned int)a3 byteCount:(unsigned int)a4 uncompressed:(unsigned int)a5 stream:(SsrwOOStream *)a6 streamID:(unsigned int)a7
{
  v9.receiver = self;
  v9.super_class = ESDMetafileBlipContext;
  result = [(ESDBlipContext *)&v9 initWithOffset:*&a3 byteCount:*&a4 stream:a6 streamID:*&a7];
  if (result)
  {
    *(&result->super.mByteCount + 1) = a5;
  }

  return result;
}

- (BOOL)loadDelayedNode:(id)a3
{
  v4 = a3;
  v5 = (self->mCb + *(&self->super.mByteCount + 1)) >> 32;
  if (!v5)
  {
    (*(self->super.mStream->var0 + 3))(self->super.mStream, self->super.mStreamID, self->super.mStartOffset, 0);
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:self->super.mByteCount];
    (*(self->super.mStream->var0 + 7))(self->super.mStream, [v6 mutableBytes], &self->super.mByteCount);
    v7 = *(&self->super.mByteCount + 1);
    v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(self->mCb + v7)];
    destLen = v7;
    v9 = uncompress(([v8 mutableBytes] + self->mCb), &destLen, objc_msgSend(v6, "mutableBytes"), self->super.mByteCount);
    v10 = v4;
    v11 = v10;
    if (v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = destLen == v7;
    }

    if (v12)
    {
      [v10 setData:v8];
    }
  }

  return v5 == 0;
}

@end