@interface ESDBlipContext
- (BOOL)loadDelayedNode:(id)node;
- (ESDBlipContext)initWithOffset:(unsigned int)offset byteCount:(unsigned int)count stream:(SsrwOOStream *)stream streamID:(unsigned int)d;
- (NSString)description;
@end

@implementation ESDBlipContext

- (ESDBlipContext)initWithOffset:(unsigned int)offset byteCount:(unsigned int)count stream:(SsrwOOStream *)stream streamID:(unsigned int)d
{
  v11.receiver = self;
  v11.super_class = ESDBlipContext;
  result = [(ESDBlipContext *)&v11 init];
  if (result)
  {
    result->mStartOffset = offset;
    result->mByteCount = count;
    result->mStream = stream;
    result->mStreamID = d;
  }

  return result;
}

- (BOOL)loadDelayedNode:(id)node
{
  nodeCopy = node;
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
      [nodeCopy setData:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [nodeCopy setSoundData:v6];
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