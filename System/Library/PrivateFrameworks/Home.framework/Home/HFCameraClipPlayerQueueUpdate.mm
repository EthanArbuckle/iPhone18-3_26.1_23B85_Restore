@interface HFCameraClipPlayerQueueUpdate
- (HFCameraClipPlayerQueueUpdate)initWithClipManager:(id)manager clips:(id)clips targetPosition:(id)position queuedItems:(id)items queueLimit:(unint64_t)limit;
- (id)_buildNewClipQueueForPosition:(id)position;
- (void)_computeQueueDiff;
- (void)performUpdatesOnQueue:(id)queue;
@end

@implementation HFCameraClipPlayerQueueUpdate

- (HFCameraClipPlayerQueueUpdate)initWithClipManager:(id)manager clips:(id)clips targetPosition:(id)position queuedItems:(id)items queueLimit:(unint64_t)limit
{
  managerCopy = manager;
  clipsCopy = clips;
  positionCopy = position;
  itemsCopy = items;
  v24.receiver = self;
  v24.super_class = HFCameraClipPlayerQueueUpdate;
  v17 = [(HFCameraClipPlayerQueueUpdate *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clipManager, manager);
    objc_storeStrong(&v18->_clips, clips);
    objc_storeStrong(&v18->_targetPosition, position);
    v19 = [itemsCopy copy];
    initialQueuedItems = v18->_initialQueuedItems;
    v18->_initialQueuedItems = v19;

    v18->_queueLimit = limit;
    v21 = [itemsCopy na_dictionaryWithKeyGenerator:&__block_literal_global_1];
    initialQueuedItemsByClipID = v18->_initialQueuedItemsByClipID;
    v18->_initialQueuedItemsByClipID = v21;

    [(HFCameraClipPlayerQueueUpdate *)v18 _computeQueueDiff];
  }

  return v18;
}

id __97__HFCameraClipPlayerQueueUpdate_initWithClipManager_clips_targetPosition_queuedItems_queueLimit___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 clip];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (void)performUpdatesOnQueue:(id)queue
{
  v34 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  initialQueuedItems = [(HFCameraClipPlayerQueueUpdate *)self initialQueuedItems];
  queuableItems = [queueCopy queuableItems];
  v7 = [initialQueuedItems isEqualToArray:queuableItems];

  if (v7)
  {
    if ([(HFCameraClipPlayerQueueUpdate *)self hasQueueChanges])
    {
      queueDiff = [(HFCameraClipPlayerQueueUpdate *)self queueDiff];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __55__HFCameraClipPlayerQueueUpdate_performUpdatesOnQueue___block_invoke;
      v23[3] = &unk_277DF2B48;
      v9 = queueCopy;
      v24 = v9;
      selfCopy = self;
      [queueDiff enumerateDeletesUsingBlock:v23];

      queueDiff2 = [(HFCameraClipPlayerQueueUpdate *)self queueDiff];
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __55__HFCameraClipPlayerQueueUpdate_performUpdatesOnQueue___block_invoke_2;
      v20 = &unk_277DF2B48;
      selfCopy2 = self;
      v22 = v9;
      [queueDiff2 enumerateInsertsUsingBlock:&v17];
    }

    queuableItems2 = [queueCopy queuableItems];
    firstObject = [queuableItems2 firstObject];

    if (firstObject)
    {
      targetPosition = [(HFCameraClipPlayerQueueUpdate *)self targetPosition];
      [targetPosition offset];
      [queueCopy seekToOffset:firstObject inItem:?];
    }
  }

  else
  {
    firstObject = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      initialQueuedItems2 = [(HFCameraClipPlayerQueueUpdate *)self initialQueuedItems];
      queuableItems3 = [queueCopy queuableItems];
      *buf = 138413058;
      selfCopy3 = self;
      v28 = 2112;
      v29 = queueCopy;
      v30 = 2112;
      v31 = initialQueuedItems2;
      v32 = 2112;
      v33 = queuableItems3;
      _os_log_error_impl(&dword_20D9BF000, firstObject, OS_LOG_TYPE_ERROR, "Attempting to perform updates %@ on queue %@ when its items do not match our initial queued items! Expected; %@, actual: %@", buf, 0x2Au);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __55__HFCameraClipPlayerQueueUpdate_performUpdatesOnQueue___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) queuableItems];
  v5 = [v4 count];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) initialQueuedItems];
  v8 = [v7 objectAtIndexedSubscript:a2];
  [v6 removeQueueableItem:v8];

  v9 = [*(a1 + 32) queuableItems];
  v10 = [v9 count];

  if (v10 != v5 - 1)
  {
    v11 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) queuableItems];
      v14 = 134218240;
      v15 = a2;
      v16 = 2048;
      v17 = [v13 count] - v5;
      _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "Remove from queue at index %lu actually resulted in net %lu items!", &v14, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __55__HFCameraClipPlayerQueueUpdate_performUpdatesOnQueue___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) updatedClipQueue];
  v5 = [v4 objectAtIndexedSubscript:a2];

  v6 = [*(a1 + 32) initialQueuedItemsByClipID];
  v7 = [v5 uniqueIdentifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8 || ([v8 isPlayable] & 1) == 0)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) clipManager];
    v11 = [v9 createQueueableItemForClipManager:v10 clip:v5];

    v8 = v11;
  }

  v12 = [*(a1 + 40) queuableItems];
  v13 = [v12 count];

  v14 = *(a1 + 40);
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __55__HFCameraClipPlayerQueueUpdate_performUpdatesOnQueue___block_invoke_2;
  v26 = &unk_277DF2B70;
  v28 = a2;
  v15 = v14;
  v27 = v15;
  v16 = __55__HFCameraClipPlayerQueueUpdate_performUpdatesOnQueue___block_invoke_2(&v23);
  [v15 insertQueueableItem:v8 afterItem:{v16, v23, v24, v25, v26}];

  v17 = [*(a1 + 40) queuableItems];
  v18 = [v17 count];

  if (v18 != v13 + 1)
  {
    v19 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = [*(a1 + 40) queuableItems];
      v22 = [v21 count];
      *buf = 134218240;
      v30 = a2;
      v31 = 2048;
      v32 = v22 - v13;
      _os_log_error_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_ERROR, "Insert in queue at index %lu actually resulted in net %lu items!", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

id __55__HFCameraClipPlayerQueueUpdate_performUpdatesOnQueue___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) queuableItems];
  v4 = [v3 count];

  if (v2 >= v4)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) queuableItems];
    v9 = [v8 count];

    if (v7 != v9)
    {
      v10 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 40);
        v14 = [*(a1 + 32) queuableItems];
        v15 = 134218242;
        v16 = v13;
        v17 = 2112;
        v18 = v14;
        _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Insertion index %lu is out of bounds of queue %@! This likely indicates that the queue was mutated from out under the queue update.", &v15, 0x16u);
      }
    }

    v6 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) queuableItems];
    v6 = [v5 objectAtIndexedSubscript:*(a1 + 40)];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_computeQueueDiff
{
  initialQueuedItems = [(HFCameraClipPlayerQueueUpdate *)self initialQueuedItems];
  v4 = [initialQueuedItems na_map:&__block_literal_global_6];

  targetPosition = [(HFCameraClipPlayerQueueUpdate *)self targetPosition];
  v6 = [(HFCameraClipPlayerQueueUpdate *)self _buildNewClipQueueForPosition:targetPosition];
  [(HFCameraClipPlayerQueueUpdate *)self setUpdatedClipQueue:v6];

  firstObject = [v4 firstObject];
  updatedClipQueue = [(HFCameraClipPlayerQueueUpdate *)self updatedClipQueue];
  firstObject2 = [updatedClipQueue firstObject];
  if (firstObject == firstObject2)
  {
    initialQueuedItems2 = [(HFCameraClipPlayerQueueUpdate *)self initialQueuedItems];
    firstObject3 = [initialQueuedItems2 firstObject];
    -[HFCameraClipPlayerQueueUpdate setQueueChangesRequireRebuild:](self, "setQueueChangesRequireRebuild:", [firstObject3 isPlayable] ^ 1);
  }

  else
  {
    [(HFCameraClipPlayerQueueUpdate *)self setQueueChangesRequireRebuild:1];
  }

  v12 = objc_opt_new();
  [v12 setAllowMoves:0];
  if ([(HFCameraClipPlayerQueueUpdate *)self queueChangesRequireRebuild])
  {
    v13 = &__block_literal_global_9;
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50__HFCameraClipPlayerQueueUpdate__computeQueueDiff__block_invoke_3;
    v17[3] = &unk_277DF2BD8;
    v17[4] = self;
    v13 = v17;
  }

  [v12 setEqualComparator:v13];
  updatedClipQueue2 = [(HFCameraClipPlayerQueueUpdate *)self updatedClipQueue];
  v15 = [HFUniqueArrayDiff diffFromArray:v4 toArray:updatedClipQueue2 options:v12];
  [(HFCameraClipPlayerQueueUpdate *)self setQueueDiff:v15];

  queueDiff = [(HFCameraClipPlayerQueueUpdate *)self queueDiff];
  -[HFCameraClipPlayerQueueUpdate setHasQueueChanges:](self, "setHasQueueChanges:", [queueDiff numberOfOperations] != 0);
}

uint64_t __50__HFCameraClipPlayerQueueUpdate__computeQueueDiff__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) initialQueuedItemsByClipID];
  v8 = [v5 uniqueIdentifier];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 isPlayable];

  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = [*(a1 + 32) initialQueuedItemsByClipID];
  v12 = [v6 uniqueIdentifier];
  v13 = [v11 objectForKeyedSubscript:v12];
  v14 = [v13 isPlayable];

  if (v14)
  {
    v15 = [v5 isEqual:v6];
  }

  else
  {
LABEL_4:
    v15 = 0;
  }

  return v15;
}

- (id)_buildNewClipQueueForPosition:(id)position
{
  v35 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0x7FFFFFFFFFFFFFFFLL;
  clips = [(HFCameraClipPlayerQueueUpdate *)self clips];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __63__HFCameraClipPlayerQueueUpdate__buildNewClipQueueForPosition___block_invoke;
  v24 = &unk_277DF2C00;
  v6 = positionCopy;
  v25 = v6;
  v26 = &v27;
  [clips enumerateObjectsUsingBlock:&v21];

  if (v28[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      clip = [v6 clip];
      uniqueIdentifier = [clip uniqueIdentifier];
      clips2 = [(HFCameraClipPlayerQueueUpdate *)self clips];
      v20 = [clips2 count];
      *buf = 138412546;
      v32 = uniqueIdentifier;
      v33 = 2048;
      v34 = v20;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Could not find matching playlist for clip %@ in clips %ld", buf, 0x16u);
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if ([(HFCameraClipPlayerQueueUpdate *)self queueLimit:v21])
    {
      queueLimit = [(HFCameraClipPlayerQueueUpdate *)self queueLimit];
    }

    else
    {
      queueLimit = -1;
    }

    clips3 = [(HFCameraClipPlayerQueueUpdate *)self clips];
    v11 = [clips3 count];
    v12 = v28[3];

    clips4 = [(HFCameraClipPlayerQueueUpdate *)self clips];
    v7 = clips4;
    if (queueLimit >= v11 - v12)
    {
      v14 = v11 - v12;
    }

    else
    {
      v14 = queueLimit;
    }

    v8 = [clips4 subarrayWithRange:v28[3], v14];
  }

  _Block_object_dispose(&v27, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

void __63__HFCameraClipPlayerQueueUpdate__buildNewClipQueueForPosition___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 uniqueIdentifier];
  v8 = [v7 UUIDString];
  v9 = [*(a1 + 32) clip];
  v10 = [v9 uniqueIdentifier];
  v11 = [v10 UUIDString];
  v12 = [v8 isEqualToString:v11];

  if (v12)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

@end