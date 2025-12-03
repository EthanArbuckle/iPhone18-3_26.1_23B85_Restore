@interface CATIDSServiceConnectionDataAggregation
- (CATIDSServiceConnectionDataAggregation)initWithWorkQueue:(id)queue;
- (CATIDSServiceConnectionDataAggregationDelegate)delegate;
- (id)description;
- (id)pendingSequenceNumbersDescription;
- (void)finishAggregating;
- (void)hydratePendingNumbersWithContent:(id)content;
- (void)hydrateStartingSequenceNumber:(id)number;
- (void)hydrateWithContentIfNeededWithContent:(id)content;
- (void)updateWithDataContent:(id)content;
@end

@implementation CATIDSServiceConnectionDataAggregation

- (CATIDSServiceConnectionDataAggregation)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = CATIDSServiceConnectionDataAggregation;
  v6 = [(CATIDSServiceConnectionDataAggregation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mWorkQueue, queue);
    v8 = objc_opt_new();
    mDataSegmentsBySegmentNumber = v7->mDataSegmentsBySegmentNumber;
    v7->mDataSegmentsBySegmentNumber = v8;
  }

  return v7;
}

- (void)updateWithDataContent:(id)content
{
  contentCopy = content;
  CATAssertIsQueue(self->mWorkQueue);
  [(CATIDSServiceConnectionDataAggregation *)self hydrateWithContentIfNeededWithContent:contentCopy];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(contentCopy, "segmentNumber")}];
  if ([(NSMutableSet *)self->mPendingSegmentNumbers containsObject:v4])
  {
    dataNumber = [(CATIDSServiceConnectionDataAggregation *)self dataNumber];
    if (dataNumber != [contentCopy dataNumber])
    {
      -[CATIDSServiceConnectionDataAggregation setDataNumber:](self, "setDataNumber:", [contentCopy dataNumber]);
    }

    dataSegment = [contentCopy dataSegment];
    [(NSMutableDictionary *)self->mDataSegmentsBySegmentNumber setObject:dataSegment forKeyedSubscript:v4];

    [(NSMutableSet *)self->mPendingSegmentNumbers removeObject:v4];
    if (![(NSMutableSet *)self->mPendingSegmentNumbers count])
    {
      [(CATIDSServiceConnectionDataAggregation *)self finishAggregating];
    }
  }
}

- (void)finishAggregating
{
  v13 = objc_opt_new();
  v3 = [(NSMutableDictionary *)self->mDataSegmentsBySegmentNumber count];
  if (v3)
  {
    v4 = v3;
    for (i = 1; i <= v4; ++i)
    {
      mDataSegmentsBySegmentNumber = self->mDataSegmentsBySegmentNumber;
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      v8 = [(NSMutableDictionary *)mDataSegmentsBySegmentNumber objectForKeyedSubscript:v7];

      v9 = self->mDataSegmentsBySegmentNumber;
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      [(NSMutableDictionary *)v9 setObject:0 forKeyedSubscript:v10];

      [v13 appendData:v8];
    }
  }

  v11 = [v13 copy];
  [(CATIDSServiceConnectionDataAggregation *)self setTotalData:v11];

  delegate = [(CATIDSServiceConnectionDataAggregation *)self delegate];
  [delegate dataAggregationCompleted:self];
}

- (void)hydrateWithContentIfNeededWithContent:(id)content
{
  contentCopy = content;
  CATAssertIsQueue(self->mWorkQueue);
  if (!self->mPerformedInitialHydration)
  {
    [(CATIDSServiceConnectionDataAggregation *)self hydratePendingNumbersWithContent:contentCopy];
    [(CATIDSServiceConnectionDataAggregation *)self hydrateStartingSequenceNumber:contentCopy];
    self->mPerformedInitialHydration = 1;
  }
}

- (void)hydratePendingNumbersWithContent:(id)content
{
  contentCopy = content;
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{(objc_msgSend(contentCopy, "totalSegments") * 1.5)}];
  mPendingSegmentNumbers = self->mPendingSegmentNumbers;
  self->mPendingSegmentNumbers = v4;

  if ([contentCopy totalSegments])
  {
    v6 = 1;
    do
    {
      v7 = self->mPendingSegmentNumbers;
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      [(NSMutableSet *)v7 addObject:v8];

      ++v6;
    }

    while (v6 <= [contentCopy totalSegments]);
  }
}

- (void)hydrateStartingSequenceNumber:(id)number
{
  numberCopy = number;
  CATAssertIsQueue(self->mWorkQueue);
  sequenceNumber = [numberCopy sequenceNumber];

  if (sequenceNumber)
  {
    sequenceNumber2 = [numberCopy sequenceNumber];
    unsignedIntegerValue = [sequenceNumber2 unsignedIntegerValue];
    v7 = unsignedIntegerValue - [numberCopy segmentNumber];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
    mStartingSequenceNumber = self->mStartingSequenceNumber;
    self->mStartingSequenceNumber = v8;

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(numberCopy, "totalSegments")}];
    mTotalSegments = self->mTotalSegments;
    self->mTotalSegments = v10;
  }
}

- (id)pendingSequenceNumbersDescription
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v13[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v5 = [(NSMutableSet *)self->mPendingSegmentNumbers sortedArrayUsingDescriptors:v4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__CATIDSServiceConnectionDataAggregation_pendingSequenceNumbersDescription__block_invoke;
  v12[3] = &unk_278DA7348;
  v12[4] = self;
  v6 = [v5 cat_map:v12];

  v7 = MEMORY[0x277CCACA8];
  v8 = [v6 componentsJoinedByString:{@", "}];
  v9 = [v7 stringWithFormat:@"[%@]", v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __75__CATIDSServiceConnectionDataAggregation_pendingSequenceNumbersDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(*(a1 + 32) + 32);
  v4 = a2;
  v5 = [v3 unsignedIntegerValue];
  v6 = [v4 unsignedIntegerValue];

  return [v2 numberWithUnsignedInteger:v5 + v6 - 1];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dataNumber = [(CATIDSServiceConnectionDataAggregation *)self dataNumber];
  pendingSequenceNumbersDescription = [(CATIDSServiceConnectionDataAggregation *)self pendingSequenceNumbersDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p { dataNumber = %lu, pendingSequenceNumbers = %@ }>", v4, self, dataNumber, pendingSequenceNumbersDescription];

  return v7;
}

- (CATIDSServiceConnectionDataAggregationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end