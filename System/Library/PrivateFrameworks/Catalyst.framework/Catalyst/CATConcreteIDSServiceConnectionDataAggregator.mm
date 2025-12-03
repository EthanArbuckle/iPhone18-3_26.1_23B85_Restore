@interface CATConcreteIDSServiceConnectionDataAggregator
+ (id)missingContentTimerIdentifier;
- (CATConcreteIDSServiceConnectionDataAggregator)initWithWorkQueue:(id)queue timerSource:(id)source missingItemInterval:(double)interval supportsSequenceCorrection:(BOOL)correction;
- (CATIDSServiceConnectionDataAggregatorDelegate)delegate;
- (id)missingSequenceNumbers;
- (void)dataAggregationCompleted:(id)completed;
- (void)missingContentTimerDidFire:(id)fire fireCount:(unint64_t)count;
- (void)processNewDataWindowWithContent:(id)content;
- (void)receiveDataContent:(id)content;
- (void)receiveExpectedSequenceNumber:(unint64_t)number;
- (void)updateExistingDataWindowWithContent:(id)content;
- (void)updateMissingContentTrackingForDataContent:(id)content;
@end

@implementation CATConcreteIDSServiceConnectionDataAggregator

- (CATConcreteIDSServiceConnectionDataAggregator)initWithWorkQueue:(id)queue timerSource:(id)source missingItemInterval:(double)interval supportsSequenceCorrection:(BOOL)correction
{
  queueCopy = queue;
  sourceCopy = source;
  v20.receiver = self;
  v20.super_class = CATConcreteIDSServiceConnectionDataAggregator;
  v13 = [(CATConcreteIDSServiceConnectionDataAggregator *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->mWorkQueue, queue);
    objc_storeStrong(&v14->mTimerSource, source);
    v14->mMissingItemInterval = interval;
    v14->mSupportsSequenceCorrection = correction;
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

- (void)receiveDataContent:(id)content
{
  contentCopy = content;
  CATAssertIsQueue(self->mWorkQueue);
  dataNumber = [contentCopy dataNumber];
  mNextDeploymentNumber = self->mNextDeploymentNumber;
  if (dataNumber <= mNextDeploymentNumber)
  {
    v6 = self->mNextDeploymentNumber;
  }

  else
  {
    v6 = dataNumber;
  }

  if (dataNumber >= mNextDeploymentNumber)
  {
    v7 = self->mNextDeploymentNumber;
  }

  else
  {
    v7 = dataNumber;
  }

  if (v6 - v7 < 0xFFFFFFFFFFFE795FLL)
  {
    v8 = dataNumber >= mNextDeploymentNumber;
    v9 = dataNumber > mNextDeploymentNumber;
  }

  else
  {
    v8 = mNextDeploymentNumber >= dataNumber;
    v9 = mNextDeploymentNumber > dataNumber;
  }

  v10 = !v8;
  v11 = contentCopy;
  if (v9 || (v10 & 1) == 0)
  {
    [(CATConcreteIDSServiceConnectionDataAggregator *)self updateMissingContentTrackingForDataContent:contentCopy];
    mAggregationsByDataNumber = self->mAggregationsByDataNumber;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(contentCopy, "dataNumber")}];
    v14 = [(NSMutableDictionary *)mAggregationsByDataNumber objectForKeyedSubscript:v13];

    if (v14)
    {
      dataNumber = [(CATConcreteIDSServiceConnectionDataAggregator *)self updateExistingDataWindowWithContent:contentCopy];
    }

    else
    {
      dataNumber = [(CATConcreteIDSServiceConnectionDataAggregator *)self processNewDataWindowWithContent:contentCopy];
    }

    v11 = contentCopy;
  }

  MEMORY[0x2821F96F8](dataNumber, v11);
}

- (void)receiveExpectedSequenceNumber:(unint64_t)number
{
  CATAssertIsQueue(self->mWorkQueue);
  v5 = self->mNextExpectedSequenceNumber - 1;
  if (number <= v5)
  {
    numberCopy = self->mNextExpectedSequenceNumber - 1;
  }

  else
  {
    numberCopy = number;
  }

  if (number >= v5)
  {
    numberCopy2 = self->mNextExpectedSequenceNumber - 1;
  }

  else
  {
    numberCopy2 = number;
  }

  if (numberCopy - numberCopy2 < 0xFFFFFFFFFFFE795FLL)
  {
    v10 = v5 >= number;
    v9 = v5 > number;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = v5 > number;
    v9 = v5 < number;
    if (v8)
    {
      goto LABEL_15;
    }
  }

  if (v9)
  {
    delegate = [(CATConcreteIDSServiceConnectionDataAggregator *)self delegate];
    [delegate connectionDataAggregatorWantsToReportSequenceNumber:self];
    goto LABEL_16;
  }

LABEL_15:
  delegate = [(CATConcreteIDSServiceConnectionDataAggregator *)self delegate];
  missingSequenceNumbers = [(CATConcreteIDSServiceConnectionDataAggregator *)self missingSequenceNumbers];
  [delegate connectionDataAggregator:self isMissingSequenceNumbers:missingSequenceNumbers];

LABEL_16:
}

- (void)processNewDataWindowWithContent:(id)content
{
  mWorkQueue = self->mWorkQueue;
  contentCopy = content;
  CATAssertIsQueue(mWorkQueue);
  v8 = [[CATIDSServiceConnectionDataAggregation alloc] initWithWorkQueue:self->mWorkQueue];
  [(CATIDSServiceConnectionDataAggregation *)v8 setDelegate:self];
  mAggregationsByDataNumber = self->mAggregationsByDataNumber;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(contentCopy, "dataNumber")}];
  [(NSMutableDictionary *)mAggregationsByDataNumber setObject:v8 forKeyedSubscript:v7];

  [(CATConcreteIDSServiceConnectionDataAggregator *)self updateExistingDataWindowWithContent:contentCopy];
}

- (void)updateExistingDataWindowWithContent:(id)content
{
  contentCopy = content;
  CATAssertIsQueue(self->mWorkQueue);
  mAggregationsByDataNumber = self->mAggregationsByDataNumber;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(contentCopy, "dataNumber")}];
  v7 = [(NSMutableDictionary *)mAggregationsByDataNumber objectForKeyedSubscript:v6];

  if (!v7)
  {
    [(CATConcreteIDSServiceConnectionDataAggregator *)contentCopy updateExistingDataWindowWithContent:a2, self];
  }

  [v7 updateWithDataContent:contentCopy];
}

- (void)updateMissingContentTrackingForDataContent:(id)content
{
  contentCopy = content;
  CATAssertIsQueue(self->mWorkQueue);
  if (!self->mSupportsSequenceCorrection)
  {
    goto LABEL_34;
  }

  mNextExpectedSequenceNumber = self->mNextExpectedSequenceNumber;
  sequenceNumber = [contentCopy sequenceNumber];
  unsignedIntegerValue = [sequenceNumber unsignedIntegerValue];
  if (mNextExpectedSequenceNumber <= unsignedIntegerValue)
  {
    v8 = unsignedIntegerValue;
  }

  else
  {
    v8 = mNextExpectedSequenceNumber;
  }

  if (mNextExpectedSequenceNumber >= unsignedIntegerValue)
  {
    v9 = unsignedIntegerValue;
  }

  else
  {
    v9 = mNextExpectedSequenceNumber;
  }

  if (v8 - v9 <= 0xFFFFFFFFFFFE795ELL)
  {
    if (mNextExpectedSequenceNumber <= unsignedIntegerValue)
    {
      goto LABEL_10;
    }

LABEL_19:

    goto LABEL_34;
  }

  if (unsignedIntegerValue > mNextExpectedSequenceNumber)
  {
    goto LABEL_19;
  }

LABEL_10:

  sequenceNumber2 = [contentCopy sequenceNumber];
  unsignedIntegerValue2 = [sequenceNumber2 unsignedIntegerValue];
  v12 = unsignedIntegerValue2 - [contentCopy segmentNumber];
  v13 = v12 + [contentCopy totalSegments];

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
  sequenceNumber3 = [contentCopy sequenceNumber];
  -[NSMutableIndexSet addIndex:](mPendingSequenceNumbers, "addIndex:", [sequenceNumber3 unsignedIntegerValue]);

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
    missingContentTimerIdentifier = [objc_opt_class() missingContentTimerIdentifier];
    mMissingItemInterval = self->mMissingItemInterval;
    mWorkQueue = self->mWorkQueue;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __92__CATConcreteIDSServiceConnectionDataAggregator_updateMissingContentTrackingForDataContent___block_invoke;
    v31[3] = &unk_278DA7398;
    objc_copyWeak(&v32, &location);
    v29 = [(CATTimerSource *)mTimerSource scheduleInfiniteTimerWithIdentifier:missingContentTimerIdentifier timeInterval:mWorkQueue queue:v31 fireHandler:mMissingItemInterval];
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

- (void)missingContentTimerDidFire:(id)fire fireCount:(unint64_t)count
{
  countCopy = count;
  mWorkQueue = self->mWorkQueue;
  fireCopy = fire;
  CATAssertIsQueue(mWorkQueue);
  mMissingContentTimer = self->mMissingContentTimer;

  if (mMissingContentTimer == fireCopy)
  {
    missingSequenceNumbers = [(CATConcreteIDSServiceConnectionDataAggregator *)self missingSequenceNumbers];
    v9 = [missingSequenceNumbers count];
    if ((countCopy & 1) != 0 && v9)
    {
      delegate = [(CATConcreteIDSServiceConnectionDataAggregator *)self delegate];
      [delegate connectionDataAggregator:self isMissingSequenceNumbers:missingSequenceNumbers];
    }
  }
}

- (void)dataAggregationCompleted:(id)completed
{
  completedCopy = completed;
  CATAssertIsQueue(self->mWorkQueue);
  v4 = 0;
  mNextDeploymentNumber = self->mNextDeploymentNumber;
  while (1)
  {
    mAggregationsByDataNumber = self->mAggregationsByDataNumber;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mNextDeploymentNumber];
    v8 = [(NSMutableDictionary *)mAggregationsByDataNumber objectForKeyedSubscript:v7];
    totalData = [v8 totalData];

    if (!totalData)
    {
      break;
    }

    delegate = [(CATConcreteIDSServiceConnectionDataAggregator *)self delegate];
    [delegate connectionDataAggregator:self aggregatedData:totalData withNumber:self->mNextDeploymentNumber];

    v11 = self->mAggregationsByDataNumber;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->mNextDeploymentNumber];
    [(NSMutableDictionary *)v11 setObject:0 forKeyedSubscript:v12];

    mNextDeploymentNumber = self->mNextDeploymentNumber + 1;
    self->mNextDeploymentNumber = mNextDeploymentNumber;
    v4 = totalData;
  }
}

+ (id)missingContentTimerIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromClass(self);
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