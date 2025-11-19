@interface CATConcreteIDSServiceConnectionDataAggregator
+ (id)missingContentTimerIdentifier;
- (CATConcreteIDSServiceConnectionDataAggregator)initWithWorkQueue:(id)a3 timerSource:(id)a4 missingItemInterval:(double)a5 supportsSequenceCorrection:(BOOL)a6;
- (CATIDSServiceConnectionDataAggregatorDelegate)delegate;
- (id)missingSequenceNumbers;
- (void)dataAggregationCompleted:(id)a3;
- (void)missingContentTimerDidFire:(id)a3 fireCount:(unint64_t)a4;
- (void)processNewDataWindowWithContent:(id)a3;
- (void)receiveDataContent:(id)a3;
- (void)receiveExpectedSequenceNumber:(unint64_t)a3;
- (void)updateExistingDataWindowWithContent:(id)a3;
- (void)updateMissingContentTrackingForDataContent:(id)a3;
@end

@implementation CATConcreteIDSServiceConnectionDataAggregator

- (CATConcreteIDSServiceConnectionDataAggregator)initWithWorkQueue:(id)a3 timerSource:(id)a4 missingItemInterval:(double)a5 supportsSequenceCorrection:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v20.receiver = self;
  v20.super_class = CATConcreteIDSServiceConnectionDataAggregator;
  v13 = [(CATConcreteIDSServiceConnectionDataAggregator *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->mWorkQueue, a3);
    objc_storeStrong(&v14->mTimerSource, a4);
    v14->mMissingItemInterval = a5;
    v14->mSupportsSequenceCorrection = a6;
    v15 = objc_opt_new();
    mAggregationsByDataNumber = v14->mAggregationsByDataNumber;
    v14->mAggregationsByDataNumber = v15;

    v17 = objc_opt_new();
    mPendingSequenceNumbers = v14->mPendingSequenceNumbers;
    v14->mPendingSequenceNumbers = v17;
  }

  return v14;
}

- (id)missingSequenceNumbers
{
  v3 = self->mGreatestExpectedSequenceNumber - self->mNextExpectedSequenceNumber;
  v4 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:?];
  [v4 removeIndexes:self->mPendingSequenceNumbers];
  v5 = [MEMORY[0x277CBEA60] cat_arrayFromIndexSet:v4];

  return v5;
}

- (void)receiveDataContent:(id)a3
{
  v15 = a3;
  CATAssertIsQueue(self->mWorkQueue);
  v4 = [v15 dataNumber];
  mNextDeploymentNumber = self->mNextDeploymentNumber;
  if (v4 <= mNextDeploymentNumber)
  {
    v6 = self->mNextDeploymentNumber;
  }

  else
  {
    v6 = v4;
  }

  if (v4 >= mNextDeploymentNumber)
  {
    v7 = self->mNextDeploymentNumber;
  }

  else
  {
    v7 = v4;
  }

  if (v6 - v7 < 0xFFFFFFFFFFFE795FLL)
  {
    v8 = v4 >= mNextDeploymentNumber;
    v9 = v4 > mNextDeploymentNumber;
  }

  else
  {
    v8 = mNextDeploymentNumber >= v4;
    v9 = mNextDeploymentNumber > v4;
  }

  v10 = !v8;
  v11 = v15;
  if (v9 || (v10 & 1) == 0)
  {
    [(CATConcreteIDSServiceConnectionDataAggregator *)self updateMissingContentTrackingForDataContent:v15];
    mAggregationsByDataNumber = self->mAggregationsByDataNumber;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "dataNumber")}];
    v14 = [(NSMutableDictionary *)mAggregationsByDataNumber objectForKeyedSubscript:v13];

    if (v14)
    {
      v4 = [(CATConcreteIDSServiceConnectionDataAggregator *)self updateExistingDataWindowWithContent:v15];
    }

    else
    {
      v4 = [(CATConcreteIDSServiceConnectionDataAggregator *)self processNewDataWindowWithContent:v15];
    }

    v11 = v15;
  }

  MEMORY[0x2821F96F8](v4, v11);
}

- (void)receiveExpectedSequenceNumber:(unint64_t)a3
{
  CATAssertIsQueue(self->mWorkQueue);
  v5 = self->mNextExpectedSequenceNumber - 1;
  if (a3 <= v5)
  {
    v6 = self->mNextExpectedSequenceNumber - 1;
  }

  else
  {
    v6 = a3;
  }

  if (a3 >= v5)
  {
    v7 = self->mNextExpectedSequenceNumber - 1;
  }

  else
  {
    v7 = a3;
  }

  if (v6 - v7 < 0xFFFFFFFFFFFE795FLL)
  {
    v10 = v5 >= a3;
    v9 = v5 > a3;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = v5 > a3;
    v9 = v5 < a3;
    if (v8)
    {
      goto LABEL_15;
    }
  }

  if (v9)
  {
    v12 = [(CATConcreteIDSServiceConnectionDataAggregator *)self delegate];
    [v12 connectionDataAggregatorWantsToReportSequenceNumber:self];
    goto LABEL_16;
  }

LABEL_15:
  v12 = [(CATConcreteIDSServiceConnectionDataAggregator *)self delegate];
  v11 = [(CATConcreteIDSServiceConnectionDataAggregator *)self missingSequenceNumbers];
  [v12 connectionDataAggregator:self isMissingSequenceNumbers:v11];

LABEL_16:
}

- (void)processNewDataWindowWithContent:(id)a3
{
  mWorkQueue = self->mWorkQueue;
  v5 = a3;
  CATAssertIsQueue(mWorkQueue);
  v8 = [[CATIDSServiceConnectionDataAggregation alloc] initWithWorkQueue:self->mWorkQueue];
  [(CATIDSServiceConnectionDataAggregation *)v8 setDelegate:self];
  mAggregationsByDataNumber = self->mAggregationsByDataNumber;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "dataNumber")}];
  [(NSMutableDictionary *)mAggregationsByDataNumber setObject:v8 forKeyedSubscript:v7];

  [(CATConcreteIDSServiceConnectionDataAggregator *)self updateExistingDataWindowWithContent:v5];
}

- (void)updateExistingDataWindowWithContent:(id)a3
{
  v8 = a3;
  CATAssertIsQueue(self->mWorkQueue);
  mAggregationsByDataNumber = self->mAggregationsByDataNumber;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "dataNumber")}];
  v7 = [(NSMutableDictionary *)mAggregationsByDataNumber objectForKeyedSubscript:v6];

  if (!v7)
  {
    [(CATConcreteIDSServiceConnectionDataAggregator *)v8 updateExistingDataWindowWithContent:a2, self];
  }

  [v7 updateWithDataContent:v8];
}

- (void)updateMissingContentTrackingForDataContent:(id)a3
{
  v4 = a3;
  CATAssertIsQueue(self->mWorkQueue);
  if (!self->mSupportsSequenceCorrection)
  {
    goto LABEL_34;
  }

  mNextExpectedSequenceNumber = self->mNextExpectedSequenceNumber;
  v6 = [v4 sequenceNumber];
  v7 = [v6 unsignedIntegerValue];
  if (mNextExpectedSequenceNumber <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = mNextExpectedSequenceNumber;
  }

  if (mNextExpectedSequenceNumber >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = mNextExpectedSequenceNumber;
  }

  if (v8 - v9 <= 0xFFFFFFFFFFFE795ELL)
  {
    if (mNextExpectedSequenceNumber <= v7)
    {
      goto LABEL_10;
    }

LABEL_19:

    goto LABEL_34;
  }

  if (v7 > mNextExpectedSequenceNumber)
  {
    goto LABEL_19;
  }

LABEL_10:

  v10 = [v4 sequenceNumber];
  v11 = [v10 unsignedIntegerValue];
  v12 = v11 - [v4 segmentNumber];
  v13 = v12 + [v4 totalSegments];

  mGreatestExpectedSequenceNumber = self->mGreatestExpectedSequenceNumber;
  if (mGreatestExpectedSequenceNumber <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = self->mGreatestExpectedSequenceNumber;
  }

  if (mGreatestExpectedSequenceNumber >= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = self->mGreatestExpectedSequenceNumber;
  }

  if (v15 - v16 <= 0xFFFFFFFFFFFE795ELL)
  {
    v17 = mGreatestExpectedSequenceNumber >= v13;
    v18 = mGreatestExpectedSequenceNumber > v13;
  }

  else
  {
    v17 = v13 >= mGreatestExpectedSequenceNumber;
    v18 = v13 > mGreatestExpectedSequenceNumber;
  }

  v19 = !v17;
  if (!v18 && v19)
  {
    self->mGreatestExpectedSequenceNumber = v13;
  }

  mPendingSequenceNumbers = self->mPendingSequenceNumbers;
  v21 = [v4 sequenceNumber];
  -[NSMutableIndexSet addIndex:](mPendingSequenceNumbers, "addIndex:", [v21 unsignedIntegerValue]);

  v22 = [(NSMutableIndexSet *)self->mPendingSequenceNumbers containsIndex:self->mNextExpectedSequenceNumber];
  if (v22)
  {
    do
    {
      v23 = self->mPendingSequenceNumbers;
      ++self->mNextExpectedSequenceNumber;
      [(NSMutableIndexSet *)v23 removeIndex:?];
    }

    while (([(NSMutableIndexSet *)self->mPendingSequenceNumbers containsIndex:self->mNextExpectedSequenceNumber]& 1) != 0);
  }

  v24 = self->mGreatestExpectedSequenceNumber <= self->mNextDeploymentNumber && self->mMissingContentTimer == 0;
  if ((v22 | v24))
  {
    objc_initWeak(&location, self);
    [(CATTimer *)self->mMissingContentTimer invalidate];
    mTimerSource = self->mTimerSource;
    v26 = [objc_opt_class() missingContentTimerIdentifier];
    mMissingItemInterval = self->mMissingItemInterval;
    mWorkQueue = self->mWorkQueue;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __92__CATConcreteIDSServiceConnectionDataAggregator_updateMissingContentTrackingForDataContent___block_invoke;
    v31[3] = &unk_278DA7398;
    objc_copyWeak(&v32, &location);
    v29 = [(CATTimerSource *)mTimerSource scheduleInfiniteTimerWithIdentifier:v26 timeInterval:mWorkQueue queue:v31 fireHandler:mMissingItemInterval];
    mMissingContentTimer = self->mMissingContentTimer;
    self->mMissingContentTimer = v29;

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

LABEL_34:
}

void __92__CATConcreteIDSServiceConnectionDataAggregator_updateMissingContentTrackingForDataContent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained missingContentTimerDidFire:v5 fireCount:a3];
}

- (void)missingContentTimerDidFire:(id)a3 fireCount:(unint64_t)a4
{
  v4 = a4;
  mWorkQueue = self->mWorkQueue;
  v7 = a3;
  CATAssertIsQueue(mWorkQueue);
  mMissingContentTimer = self->mMissingContentTimer;

  if (mMissingContentTimer == v7)
  {
    v11 = [(CATConcreteIDSServiceConnectionDataAggregator *)self missingSequenceNumbers];
    v9 = [v11 count];
    if ((v4 & 1) != 0 && v9)
    {
      v10 = [(CATConcreteIDSServiceConnectionDataAggregator *)self delegate];
      [v10 connectionDataAggregator:self isMissingSequenceNumbers:v11];
    }
  }
}

- (void)dataAggregationCompleted:(id)a3
{
  v13 = a3;
  CATAssertIsQueue(self->mWorkQueue);
  v4 = 0;
  mNextDeploymentNumber = self->mNextDeploymentNumber;
  while (1)
  {
    mAggregationsByDataNumber = self->mAggregationsByDataNumber;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mNextDeploymentNumber];
    v8 = [(NSMutableDictionary *)mAggregationsByDataNumber objectForKeyedSubscript:v7];
    v9 = [v8 totalData];

    if (!v9)
    {
      break;
    }

    v10 = [(CATConcreteIDSServiceConnectionDataAggregator *)self delegate];
    [v10 connectionDataAggregator:self aggregatedData:v9 withNumber:self->mNextDeploymentNumber];

    v11 = self->mAggregationsByDataNumber;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->mNextDeploymentNumber];
    [(NSMutableDictionary *)v11 setObject:0 forKeyedSubscript:v12];

    mNextDeploymentNumber = self->mNextDeploymentNumber + 1;
    self->mNextDeploymentNumber = mNextDeploymentNumber;
    v4 = v9;
  }
}

+ (id)missingContentTimerIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromClass(a1);
  v4 = [v2 stringWithFormat:@"%@-MissingContentTimer", v3];

  return v4;
}

- (CATIDSServiceConnectionDataAggregatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateExistingDataWindowWithContent:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"CATIDSServiceConnectionDataAggregator.m" lineNumber:138 description:{@"Should have an aggregation for window number %ld", objc_msgSend(a1, "dataNumber")}];
}

@end