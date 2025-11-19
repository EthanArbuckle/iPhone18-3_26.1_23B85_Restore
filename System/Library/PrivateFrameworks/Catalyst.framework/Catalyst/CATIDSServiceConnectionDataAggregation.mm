@interface CATIDSServiceConnectionDataAggregation
- (CATIDSServiceConnectionDataAggregation)initWithWorkQueue:(id)a3;
- (CATIDSServiceConnectionDataAggregationDelegate)delegate;
- (id)description;
- (id)pendingSequenceNumbersDescription;
- (void)finishAggregating;
- (void)hydratePendingNumbersWithContent:(id)a3;
- (void)hydrateStartingSequenceNumber:(id)a3;
- (void)hydrateWithContentIfNeededWithContent:(id)a3;
- (void)updateWithDataContent:(id)a3;
@end

@implementation CATIDSServiceConnectionDataAggregation

- (CATIDSServiceConnectionDataAggregation)initWithWorkQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CATIDSServiceConnectionDataAggregation;
  v6 = [(CATIDSServiceConnectionDataAggregation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mWorkQueue, a3);
    v8 = objc_opt_new();
    mDataSegmentsBySegmentNumber = v7->mDataSegmentsBySegmentNumber;
    v7->mDataSegmentsBySegmentNumber = v8;
  }

  return v7;
}

- (void)updateWithDataContent:(id)a3
{
  v7 = a3;
  CATAssertIsQueue(self->mWorkQueue);
  [(CATIDSServiceConnectionDataAggregation *)self hydrateWithContentIfNeededWithContent:v7];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "segmentNumber")}];
  if ([(NSMutableSet *)self->mPendingSegmentNumbers containsObject:v4])
  {
    v5 = [(CATIDSServiceConnectionDataAggregation *)self dataNumber];
    if (v5 != [v7 dataNumber])
    {
      -[CATIDSServiceConnectionDataAggregation setDataNumber:](self, "setDataNumber:", [v7 dataNumber]);
    }

    v6 = [v7 dataSegment];
    [(NSMutableDictionary *)self->mDataSegmentsBySegmentNumber setObject:v6 forKeyedSubscript:v4];

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

  v12 = [(CATIDSServiceConnectionDataAggregation *)self delegate];
  [v12 dataAggregationCompleted:self];
}

- (void)hydrateWithContentIfNeededWithContent:(id)a3
{
  v4 = a3;
  CATAssertIsQueue(self->mWorkQueue);
  if (!self->mPerformedInitialHydration)
  {
    [(CATIDSServiceConnectionDataAggregation *)self hydratePendingNumbersWithContent:v4];
    [(CATIDSServiceConnectionDataAggregation *)self hydrateStartingSequenceNumber:v4];
    self->mPerformedInitialHydration = 1;
  }
}

- (void)hydratePendingNumbersWithContent:(id)a3
{
  v9 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{(objc_msgSend(v9, "totalSegments") * 1.5)}];
  mPendingSegmentNumbers = self->mPendingSegmentNumbers;
  self->mPendingSegmentNumbers = v4;

  if ([v9 totalSegments])
  {
    v6 = 1;
    do
    {
      v7 = self->mPendingSegmentNumbers;
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      [(NSMutableSet *)v7 addObject:v8];

      ++v6;
    }

    while (v6 <= [v9 totalSegments]);
  }
}

- (void)hydrateStartingSequenceNumber:(id)a3
{
  v12 = a3;
  CATAssertIsQueue(self->mWorkQueue);
  v4 = [v12 sequenceNumber];

  if (v4)
  {
    v5 = [v12 sequenceNumber];
    v6 = [v5 unsignedIntegerValue];
    v7 = v6 - [v12 segmentNumber];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
    mStartingSequenceNumber = self->mStartingSequenceNumber;
    self->mStartingSequenceNumber = v8;

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "totalSegments")}];
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
  v5 = [(CATIDSServiceConnectionDataAggregation *)self dataNumber];
  v6 = [(CATIDSServiceConnectionDataAggregation *)self pendingSequenceNumbersDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p { dataNumber = %lu, pendingSequenceNumbers = %@ }>", v4, self, v5, v6];

  return v7;
}

- (CATIDSServiceConnectionDataAggregationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end