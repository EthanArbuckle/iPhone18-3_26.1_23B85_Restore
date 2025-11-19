@interface CATConcreteIDSServiceConnectionDataChunker
- (CATConcreteIDSServiceConnectionDataChunker)initWithWorkQueue:(id)a3 maxDataLength:(int64_t)a4;
- (id)chunkDataIntoMessageContent:(id)a3;
@end

@implementation CATConcreteIDSServiceConnectionDataChunker

- (CATConcreteIDSServiceConnectionDataChunker)initWithWorkQueue:(id)a3 maxDataLength:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CATConcreteIDSServiceConnectionDataChunker;
  v8 = [(CATConcreteIDSServiceConnectionDataChunker *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mWorkQueue, a3);
    v9->mMaxDataLength = a4;
  }

  return v9;
}

- (id)chunkDataIntoMessageContent:(id)a3
{
  v4 = a3;
  CATAssertIsQueue(self->mWorkQueue);
  mNextDataNumber = self->mNextDataNumber;
  self->mNextDataNumber = mNextDataNumber + 1;
  v5 = [v4 length] / self->mMaxDataLength;
  if ([v4 length] % self->mMaxDataLength)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
  v8 = [v4 copy];
  if (v6)
  {
    v9 = 0;
    do
    {
      v10 = self->mMaxDataLength * v9;
      v11 = [v4 length];
      if (self->mMaxDataLength >= (v11 - v10))
      {
        mMaxDataLength = v11 - v10;
      }

      else
      {
        mMaxDataLength = self->mMaxDataLength;
      }

      mNextSequenceNumber = self->mNextSequenceNumber;
      self->mNextSequenceNumber = mNextSequenceNumber + 1;
      v14 = [CATActiveIDSServiceConnectionContentSendData alloc];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mNextSequenceNumber];
      v16 = [(CATActiveIDSServiceConnectionContentSendData *)v14 initWithSequenceNumber:v15 dataNumber:mNextDataNumber dataSegment:v8 segmentRange:v10 segmentNumber:mMaxDataLength totalSegments:++v9, v6];

      [v7 addObject:v16];
    }

    while (v9 < v6);
  }

  v17 = [v7 copy];

  return v17;
}

@end