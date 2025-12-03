@interface CATConcreteIDSServiceConnectionDataChunker
- (CATConcreteIDSServiceConnectionDataChunker)initWithWorkQueue:(id)queue maxDataLength:(int64_t)length;
- (id)chunkDataIntoMessageContent:(id)content;
@end

@implementation CATConcreteIDSServiceConnectionDataChunker

- (CATConcreteIDSServiceConnectionDataChunker)initWithWorkQueue:(id)queue maxDataLength:(int64_t)length
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = CATConcreteIDSServiceConnectionDataChunker;
  v8 = [(CATConcreteIDSServiceConnectionDataChunker *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mWorkQueue, queue);
    v9->mMaxDataLength = length;
  }

  return v9;
}

- (id)chunkDataIntoMessageContent:(id)content
{
  contentCopy = content;
  CATAssertIsQueue(self->mWorkQueue);
  mNextDataNumber = self->mNextDataNumber;
  self->mNextDataNumber = mNextDataNumber + 1;
  v5 = [contentCopy length] / self->mMaxDataLength;
  if ([contentCopy length] % self->mMaxDataLength)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
  v8 = [contentCopy copy];
  if (v6)
  {
    v9 = 0;
    do
    {
      v10 = self->mMaxDataLength * v9;
      v11 = [contentCopy length];
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