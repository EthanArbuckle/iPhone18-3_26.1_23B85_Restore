@interface VCPFrameWithLabels
- (BOOL)isAnimalMergableWith:(id)with;
- (BOOL)isEmbeddingMergableWith:(id)with;
- (BOOL)isFaceMergableWith:(id)with;
- (VCPFrameWithLabels)initWithTimestamp:(id *)timestamp score:(float)score;
- (id)filterSceneSet:(id)set;
- (unint64_t)compareWith:(id)with;
- (unint64_t)getActionMergeType:(id)type;
- (unint64_t)getSceneMergeType:(id)type;
- (void)addAnimalIDs:(id)ds;
- (void)addFaceIDs:(id)ds;
- (void)mergeWith:(id)with;
- (void)setActionTypeWithConfidence:(id)confidence;
- (void)setEmbeddingRepresentativeIDs:(id)ds embeddingArray:(id)array;
- (void)setSceneIDsWithConfidence:(id)confidence;
- (void)setStartTime:(id *)time;
- (void)setTimestamp:(id *)timestamp;
@end

@implementation VCPFrameWithLabels

- (VCPFrameWithLabels)initWithTimestamp:(id *)timestamp score:(float)score
{
  v21.receiver = self;
  v21.super_class = VCPFrameWithLabels;
  v6 = [(VCPFrameWithLabels *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v8 = *&timestamp->var0;
    *(v6 + 10) = timestamp->var3;
    *(v6 + 4) = v8;
    v9 = *&timestamp->var0;
    *(v6 + 13) = timestamp->var3;
    *(v6 + 88) = v9;
    *(v6 + 12) = score;
    *(v6 + 13) = -1082130432;
    array = [MEMORY[0x1E695DF70] array];
    embeddingRepresentativeIDs = v7->_embeddingRepresentativeIDs;
    v7->_embeddingRepresentativeIDs = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    sceneIDsWithConfidence = v7->_sceneIDsWithConfidence;
    v7->_sceneIDsWithConfidence = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    actionTypeWithConfidence = v7->_actionTypeWithConfidence;
    v7->_actionTypeWithConfidence = dictionary2;

    array2 = [MEMORY[0x1E695DF70] array];
    faceIDs = v7->_faceIDs;
    v7->_faceIDs = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    animalIDs = v7->_animalIDs;
    v7->_animalIDs = array3;
  }

  return v7;
}

- (void)setEmbeddingRepresentativeIDs:(id)ds embeddingArray:(id)array
{
  v34 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  arrayCopy = array;
  if (arrayCopy)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = dsCopy;
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = *v29;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v8);
        }

        unsignedIntValue = [*(*(&v28 + 1) + 8 * v11) unsignedIntValue];
        if ([arrayCopy count] <= unsignedIntValue)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v14)
      {
        v15 = *v25;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            memset(&v23, 0, sizeof(v23));
            v18 = [arrayCopy objectAtIndexedSubscript:{objc_msgSend(v17, "unsignedIntValue")}];
            CMTimeRangeMakeFromDictionary(&v23, v18);

            range = v23;
            timestamp = self->_timestamp;
            if (CMTimeRangeContainsTime(&range, &timestamp))
            {
              v19 = [MEMORY[0x1E695DF70] arrayWithObject:v17];
              embeddingRepresentativeIDs = self->_embeddingRepresentativeIDs;
              self->_embeddingRepresentativeIDs = v19;

              goto LABEL_20;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_20:
  }
}

- (void)setSceneIDsWithConfidence:(id)confidence
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = confidence;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = *v27;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        memset(&v25, 0, sizeof(v25));
        CMTimeRangeMakeFromDictionary(&v25, v7);
        range = v25;
        time = self->_timestamp;
        if (CMTimeRangeContainsTime(&range, &time))
        {
          v8 = [(__CFDictionary *)v7 objectForKeyedSubscript:@"attributes"];
          v9 = [v8 mutableCopy];
          sceneIDsWithConfidence = self->_sceneIDsWithConfidence;
          self->_sceneIDsWithConfidence = v9;

          array = [MEMORY[0x1E695DF70] array];
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v12 = self->_sceneIDsWithConfidence;
          v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v19 objects:v30 count:16];
          if (v13)
          {
            v14 = *v20;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v20 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v19 + 1) + 8 * j);
                vcp_sharedTaxonomy = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
                [vcp_sharedTaxonomy nodeRefForExtendedSceneClassId:{objc_msgSend(v16, "longLongValue")}];

                if ((PFSceneTaxonomyNodeIsIndexed() & 1) == 0)
                {
                  [array addObject:v16];
                }
              }

              v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v19 objects:v30 count:16];
            }

            while (v13);
          }

          [(NSMutableDictionary *)self->_sceneIDsWithConfidence removeObjectsForKeys:array];
          goto LABEL_20;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
}

- (void)addFaceIDs:(id)ds
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dsCopy = ds;
  v5 = [dsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(dsCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        memset(&v13, 0, sizeof(v13));
        CMTimeRangeMakeFromDictionary(&v13, v8);
        v9 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"attributes"];
        v10 = [v9 objectForKeyedSubscript:@"faceId"];

        if (([(NSMutableArray *)self->_faceIDs containsObject:v10]& 1) == 0)
        {
          range = v13;
          timestamp = self->_timestamp;
          if (CMTimeRangeContainsTime(&range, &timestamp))
          {
            [(NSMutableArray *)self->_faceIDs addObject:v10];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [dsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)addAnimalIDs:(id)ds
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dsCopy = ds;
  v5 = [dsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(dsCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        memset(&v13, 0, sizeof(v13));
        CMTimeRangeMakeFromDictionary(&v13, v8);
        v9 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"attributes"];
        v10 = [v9 objectForKeyedSubscript:@"animalId"];

        if (([(NSMutableArray *)self->_animalIDs containsObject:v10]& 1) == 0)
        {
          range = v13;
          timestamp = self->_timestamp;
          if (CMTimeRangeContainsTime(&range, &timestamp))
          {
            [(NSMutableArray *)self->_animalIDs addObject:v10];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [dsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)setActionTypeWithConfidence:(id)confidence
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  confidenceCopy = confidence;
  v5 = [confidenceCopy countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = *v31;
    v22 = confidenceCopy;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(confidenceCopy);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        memset(&v29, 0, sizeof(v29));
        CMTimeRangeMakeFromDictionary(&v29, v8);
        range = v29;
        time = self->_timestamp;
        if (CMTimeRangeContainsTime(&range, &time))
        {
          v9 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"attributes"];
          v10 = [v9 objectForKeyedSubscript:@"humanActions"];

          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          allKeys = [v10 allKeys];
          v12 = [allKeys countByEnumeratingWithState:&v23 objects:v34 count:16];
          if (v12)
          {
            v13 = *v24;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v24 != v13)
                {
                  objc_enumerationMutation(allKeys);
                }

                v15 = *(*(&v23 + 1) + 8 * j);
                [VCPVideoCNNActionClassifier thresholdForClass:v15 isHighPrecision:1];
                v17 = v16;
                v18 = [v10 objectForKeyedSubscript:v15];
                [v18 floatValue];
                v20 = v19 < v17;

                if (!v20)
                {
                  v21 = [v10 objectForKeyedSubscript:v15];
                  [(NSMutableDictionary *)self->_actionTypeWithConfidence setObject:v21 forKeyedSubscript:v15];
                }
              }

              v12 = [allKeys countByEnumeratingWithState:&v23 objects:v34 count:16];
            }

            while (v12);
          }

          confidenceCopy = v22;
          goto LABEL_20;
        }
      }

      v5 = [confidenceCopy countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
}

- (unint64_t)compareWith:(id)with
{
  withCopy = with;
  {
    CMTimeMakeWithSeconds([VCPFrameWithLabels compareWith:]::kMaxShift, 1.0, 600);
  }

  if ([(VCPFrameWithLabels *)self isEmbeddingMergableWith:withCopy]&& [(VCPFrameWithLabels *)self isFaceMergableWith:withCopy]&& [(VCPFrameWithLabels *)self isAnimalMergableWith:withCopy])
  {
    v5 = [(VCPFrameWithLabels *)self getActionMergeType:withCopy];
    v6 = [(VCPFrameWithLabels *)self getSceneMergeType:withCopy];
    v7 = 0;
    if (v5 && v6)
    {
      if (v5 == 1 && v6 == 1)
      {
        if (withCopy)
        {
          [withCopy startTime];
        }

        else
        {
          memset(&v11, 0, sizeof(v11));
        }

        lhs = self->_timestamp;
        rhs = v11;
        CMTimeSubtract(&v12, &lhs, &rhs);
        lhs = v12;
        rhs = *[VCPFrameWithLabels compareWith:]::kMaxShift;
        if (CMTimeCompare(&lhs, &rhs) <= 0 && (frameScore = self->_frameScore, [withCopy frameScore], frameScore >= v10))
        {
          v7 = 3;
        }

        else
        {
          v7 = 2;
        }
      }

      else if (v5 == v6)
      {
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEmbeddingMergableWith:(id)with
{
  withCopy = with;
  embeddingRepresentativeIDs = [withCopy embeddingRepresentativeIDs];
  if ([embeddingRepresentativeIDs count] && -[NSMutableArray count](self->_embeddingRepresentativeIDs, "count"))
  {
    embeddingRepresentativeIDs2 = [withCopy embeddingRepresentativeIDs];
    v7 = [embeddingRepresentativeIDs2 objectAtIndexedSubscript:0];
    v8 = [(NSMutableArray *)self->_embeddingRepresentativeIDs objectAtIndexedSubscript:0];
    v9 = v7 == v8;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)filterSceneSet:(id)set
{
  v29 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v4 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [setCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        vcp_sharedTaxonomy = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
        v11 = [vcp_sharedTaxonomy nodeForExtendedSceneClassId:{objc_msgSend(v9, "longLongValue")}];

        if (v11)
        {
          [v11 highPrecisionThreshold];
          v13 = v12;
          [v11 highRecallThreshold];
          v15 = v14;
          [v11 searchThreshold];
          v17 = v15 >= v13 ? v13 : v15;
          v18 = v16 >= v17 ? v17 : v16;
          v19 = [(NSMutableDictionary *)self->_sceneIDsWithConfidence objectForKeyedSubscript:v9];
          [v19 floatValue];
          v21 = v20;

          if (v18 < v21)
          {
            [v4 addObject:v9];
          }
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  return v4;
}

- (unint64_t)getSceneMergeType:(id)type
{
  v20 = *MEMORY[0x1E69E9840];
  sceneIDsWithConfidence = [type sceneIDsWithConfidence];
  v5 = [(VCPFrameWithLabels *)self filterSceneSet:sceneIDsWithConfidence];

  v6 = [(VCPFrameWithLabels *)self filterSceneSet:self->_sceneIDsWithConfidence];
  if ([v5 isEqualToSet:v6])
  {
    v7 = 1;
  }

  else if ([v5 isSubsetOfSet:v6])
  {
    v7 = 3;
  }

  else if ([v6 isSubsetOfSet:v5])
  {
    v7 = 2;
  }

  else
  {
    v8 = [v5 mutableCopy];
    [v8 unionSet:v6];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      v7 = 1;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if (![v5 containsObject:{v13, v15}] || (objc_msgSend(v6, "containsObject:", v13) & 1) == 0)
          {
            v7 = 0;
            goto LABEL_19;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 1;
    }

LABEL_19:
  }

  return v7;
}

- (BOOL)isFaceMergableWith:(id)with
{
  withCopy = with;
  v5 = [MEMORY[0x1E695DFA8] setWithArray:self->_faceIDs];
  v6 = MEMORY[0x1E695DFD8];
  faceIDs = [withCopy faceIDs];
  v8 = [v6 setWithArray:faceIDs];
  [v5 unionSet:v8];

  v9 = [v5 count];
  LOBYTE(self) = v9 <= [(NSMutableArray *)self->_faceIDs count];

  return self;
}

- (BOOL)isAnimalMergableWith:(id)with
{
  withCopy = with;
  v5 = [MEMORY[0x1E695DFA8] setWithArray:self->_animalIDs];
  v6 = MEMORY[0x1E695DFD8];
  animalIDs = [withCopy animalIDs];
  v8 = [v6 setWithArray:animalIDs];
  [v5 unionSet:v8];

  v9 = [v5 count];
  LOBYTE(self) = v9 <= [(NSMutableArray *)self->_animalIDs count];

  return self;
}

- (unint64_t)getActionMergeType:(id)type
{
  v25 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  allKeys = [(NSMutableDictionary *)self->_actionTypeWithConfidence allKeys];
  actionTypeWithConfidence = [typeCopy actionTypeWithConfidence];
  allKeys2 = [actionTypeWithConfidence allKeys];

  v7 = [MEMORY[0x1E695DFD8] setWithArray:allKeys];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:allKeys2];
  if ([v7 isEqualToSet:v8])
  {
    v9 = 1;
  }

  else if ([v8 isSubsetOfSet:v7])
  {
    v9 = 3;
  }

  else if ([v7 isSubsetOfSet:v8])
  {
    v9 = 2;
  }

  else
  {
    v10 = [MEMORY[0x1E695DFA8] setWithArray:allKeys];
    v11 = [MEMORY[0x1E695DFD8] setWithArray:allKeys2];
    [v10 unionSet:v11];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v18 = v10;
      v14 = *v21;
      v9 = 1;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if (![allKeys containsObject:{v16, v18}] || (objc_msgSend(allKeys2, "containsObject:", v16) & 1) == 0)
          {
            v9 = 0;
            goto LABEL_19;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 1;
    }

LABEL_19:
  }

  return v9;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  v5 = withCopy;
  if (withCopy)
  {
    [withCopy startTime];
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  time1 = v6;
  time2 = self->_startTime;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    if (v5)
    {
      [v5 startTime];
    }

    else
    {
      v7 = 0uLL;
      epoch = 0;
    }
  }

  else
  {
    v7 = *&self->_startTime.value;
    epoch = self->_startTime.epoch;
  }

  *&self->_startTime.value = v7;
  self->_startTime.epoch = epoch;
}

- (void)setTimestamp:(id *)timestamp
{
  v3 = *&timestamp->var0;
  self->_timestamp.epoch = timestamp->var3;
  *&self->_timestamp.value = v3;
}

- (void)setStartTime:(id *)time
{
  v3 = *&time->var0;
  self->_startTime.epoch = time->var3;
  *&self->_startTime.value = v3;
}

@end