@interface ESDBlipContext
- (BOOL)loadDelayedNode:(id)a3;
- (ESDBlipContext)initWithOffset:(unsigned int)a3 byteCount:(unsigned int)a4 stream:(SsrwOOStream *)a5 streamID:(unsigned int)a6;
- (NSString)description;
@end

@implementation ESDBlipContext

- (ESDBlipContext)initWithOffset:(unsigned int)a3 byteCount:(unsigned int)a4 stream:(SsrwOOStream *)a5 streamID:(unsigned int)a6
{
  v11.receiver = self;
  v11.super_class = ESDBlipContext;
  result = [(ESDBlipContext *)&v11 init];
  if (result)
  {
    result->mStartOffset = a3;
    result->mByteCount = a4;
    result->mStream = a5;
    result->mStreamID = a6;
  }

  return result;
}

- (BOOL)loadDelayedNode:(id)a3
{
  v4 = a3;
  mStream = self->mStream;
  if (mStream)
  {
    (*(mStream->var0 + 3))(mStream, self->mStreamID, self->mStartOffset, 0);
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:self->mByteCount];
    [v6 setLength:self->mByteCount];
    (*(self->mStream->var0 + 7))(self->mStream, [v6 mutableBytes], &self->mByteCount);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v4 setData:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 setSoundData:v6];
      }
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = ESDBlipContext;
  v2 = [(ESDBlipContext *)&v4 description];

  return v2;
}

@end