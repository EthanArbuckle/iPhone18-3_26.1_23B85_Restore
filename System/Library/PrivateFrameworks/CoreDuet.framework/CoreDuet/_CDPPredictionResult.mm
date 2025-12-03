@interface _CDPPredictionResult
- (_CDPPredictionResult)initWithMembers:(id)members andScores:(id)scores;
- (id)initByMergingPredictionResults:(id)results;
- (id)rankedMembers;
- (id)rankedMembers:(id)members;
- (id)rankedMembersPassingThreshold:(double)threshold;
- (void)commonInit;
@end

@implementation _CDPPredictionResult

- (void)commonInit
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(_CDPPredictionResult *)self setScoresForMembers:v3];

  [(_CDPPredictionResult *)self setWeight:1.0];
}

- (_CDPPredictionResult)initWithMembers:(id)members andScores:(id)scores
{
  membersCopy = members;
  scoresCopy = scores;
  v17.receiver = self;
  v17.super_class = _CDPPredictionResult;
  v8 = [(_CDPPredictionResult *)&v17 init];
  v9 = v8;
  if (v8)
  {
    [(_CDPPredictionResult *)v8 commonInit];
    v10 = [membersCopy count];
    if (v10 >= 1)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        scoresForMembers = v9->_scoresForMembers;
        v14 = [scoresCopy objectAtIndexedSubscript:i];
        v15 = [membersCopy objectAtIndexedSubscript:i];
        [(NSMutableDictionary *)scoresForMembers setObject:v14 forKey:v15];
      }
    }
  }

  return v9;
}

- (id)initByMergingPredictionResults:(id)results
{
  v74 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v68.receiver = self;
  v68.super_class = _CDPPredictionResult;
  v45 = [(_CDPPredictionResult *)&v68 init];
  if (v45)
  {
    [(_CDPPredictionResult *)v45 commonInit];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v5 = resultsCopy;
    v6 = [v5 countByEnumeratingWithState:&v64 objects:v73 count:16];
    if (!v6)
    {
LABEL_43:

      goto LABEL_44;
    }

    v7 = v6;
    v8 = *v65;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v65 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v64 + 1) + 8 * i) weight];
        v9 = v9 + v11;
      }

      v7 = [v5 countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v7);

    if (v9 > 0.0)
    {
      v43 = resultsCopy;
      v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      obj = v5;
      v13 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v61;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v61 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v60 + 1) + 8 * j);
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            scoresForMembers = [v17 scoresForMembers];
            allKeys = [scoresForMembers allKeys];

            v20 = [allKeys countByEnumeratingWithState:&v56 objects:v71 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v57;
              do
              {
                for (k = 0; k != v21; ++k)
                {
                  if (*v57 != v22)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v24 = *(*(&v56 + 1) + 8 * k);
                  if ([v24 length])
                  {
                    [v12 addObject:v24];
                  }
                }

                v21 = [allKeys countByEnumeratingWithState:&v56 objects:v71 count:16];
              }

              while (v21);
            }
          }

          v14 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
        }

        while (v14);
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v5 = v12;
      v46 = [v5 countByEnumeratingWithState:&v52 objects:v70 count:16];
      if (v46)
      {
        v44 = *v53;
        do
        {
          for (m = 0; m != v46; ++m)
          {
            if (*v53 != v44)
            {
              objc_enumerationMutation(v5);
            }

            v26 = *(*(&v52 + 1) + 8 * m);
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v27 = obj;
            v28 = [v27 countByEnumeratingWithState:&v48 objects:v69 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v49;
              v31 = 0.0;
              do
              {
                for (n = 0; n != v29; ++n)
                {
                  if (*v49 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v33 = *(*(&v48 + 1) + 8 * n);
                  scoresForMembers2 = [v33 scoresForMembers];
                  v35 = [scoresForMembers2 objectForKeyedSubscript:v26];
                  [v35 doubleValue];
                  v37 = v36;
                  [v33 weight];
                  v31 = v31 + v37 * v38;
                }

                v29 = [v27 countByEnumeratingWithState:&v48 objects:v69 count:16];
              }

              while (v29);
            }

            else
            {
              v31 = 0.0;
            }

            scoresForMembers = v45->_scoresForMembers;
            v40 = [MEMORY[0x1E696AD98] numberWithDouble:v31 / v9];
            [(NSMutableDictionary *)scoresForMembers setObject:v40 forKey:v26];
          }

          v46 = [v5 countByEnumeratingWithState:&v52 objects:v70 count:16];
        }

        while (v46);
      }

      resultsCopy = v43;
      goto LABEL_43;
    }
  }

LABEL_44:

  v41 = *MEMORY[0x1E69E9840];
  return v45;
}

- (id)rankedMembers:(id)members
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38___CDPPredictionResult_rankedMembers___block_invoke;
  v5[3] = &unk_1E73682B0;
  v5[4] = self;
  v3 = [members sortedArrayUsingComparator:v5];

  return v3;
}

- (id)rankedMembers
{
  rankedMembers = self->_rankedMembers;
  if (!rankedMembers)
  {
    allKeys = [(NSMutableDictionary *)self->_scoresForMembers allKeys];
    v5 = [(_CDPPredictionResult *)self rankedMembers:allKeys];
    v6 = self->_rankedMembers;
    self->_rankedMembers = v5;

    rankedMembers = self->_rankedMembers;
  }

  return rankedMembers;
}

- (id)rankedMembersPassingThreshold:(double)threshold
{
  allKeys = [(NSMutableDictionary *)self->_scoresForMembers allKeys];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54___CDPPredictionResult_rankedMembersPassingThreshold___block_invoke;
  v10[3] = &unk_1E73682D8;
  v10[4] = self;
  *&v10[5] = threshold;
  v6 = [allKeys indexesOfObjectsPassingTest:v10];
  v7 = [allKeys objectsAtIndexes:v6];
  v8 = [(_CDPPredictionResult *)self rankedMembers:v7];

  return v8;
}

@end