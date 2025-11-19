@interface NNMKBatchedRequest
- (NNMKBatchedRequest)init;
- (id)diffFromMessages:(id)a3 maxMessagesToAdd:(unint64_t)a4;
@end

@implementation NNMKBatchedRequest

- (NNMKBatchedRequest)init
{
  v6.receiver = self;
  v6.super_class = NNMKBatchedRequest;
  v2 = [(NNMKBatchedRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    messagesToBeSentInBatch = v2->_messagesToBeSentInBatch;
    v2->_messagesToBeSentInBatch = v3;
  }

  return v2;
}

- (id)diffFromMessages:(id)a3 maxMessagesToAdd:(unint64_t)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NNMKBatchedRequest *)self latestFetchRequest];
  v8 = [v7 currentMessageIdsAndStatus];
  v9 = [v8 decompressedData];

  v51 = v9;
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
  v11 = v10;
  v12 = &stru_286C69F68;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v49 = a4;
  v50 = v13;
  if ([(__CFString *)v13 length])
  {
    [(__CFString *)v13 componentsSeparatedByString:@"\n"];
  }

  else
  {
    [MEMORY[0x277CBEA60] array];
  }
  v14 = ;
  v15 = MEMORY[0x277CBEB58];
  v16 = [v6 allKeys];
  v54 = [v15 setWithArray:v16];

  v52 = [MEMORY[0x277CBEB58] set];
  v53 = [MEMORY[0x277CBEB58] set];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v60;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v60 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v59 + 1) + 8 * i);
        if ([v22 length])
        {
          v23 = [v22 componentsSeparatedByString:@"|"];
          v24 = [v23 objectAtIndexedSubscript:0];
          v25 = [v24 integerValue];

          v26 = [v23 objectAtIndexedSubscript:1];
          v27 = [v6 objectForKeyedSubscript:v26];

          if (v27)
          {
            v28 = [v6 objectForKeyedSubscript:v26];
            if ([v28 status] != v25)
            {
              [v52 addObject:v26];
            }

            [v54 removeObject:v26];
          }

          else
          {
            [v53 addObject:v26];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v19);
  }

  v29 = objc_alloc_init(NNMKDiffMessageResult);
  v30 = v54;
  [(NNMKDiffMessageResult *)v29 setMessageIdsToAddToWatch:v54];
  [(NNMKDiffMessageResult *)v29 setMessageIdsToUpdateOnWatch:v52];
  [(NNMKDiffMessageResult *)v29 setMessageIdsToDeleteFromWatch:v53];
  v31 = [(NNMKDiffMessageResult *)v29 messageIdsToAddToWatch];
  v32 = [v31 count];

  if (v32 > v49)
  {
    v48 = v29;
    v33 = [MEMORY[0x277CBEB18] array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v34 = v54;
    v35 = [v34 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v56;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v56 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [v6 objectForKeyedSubscript:*(*(&v55 + 1) + 8 * j)];
          if (v39)
          {
            [v33 insertObject:v39 atIndex:{objc_msgSend(v33, "indexOfObject:inSortedRange:options:usingComparator:", v39, 0, objc_msgSend(v33, "count"), 1024, &__block_literal_global_4)}];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v36);
    }

    v40 = [v33 subarrayWithRange:{0, v49}];
    v29 = v48;
    [(NNMKDiffMessageResult *)v48 setMessageToAddToWatch:v40];

    v41 = [(NNMKDiffMessageResult *)v48 messageToAddToWatch];
    v42 = [v41 nnmk_map:&__block_literal_global_15];

    v43 = [MEMORY[0x277CBEB58] setWithArray:v42];
    [(NNMKDiffMessageResult *)v48 setMessageIdsToAddToWatch:v43];

    v44 = [(NNMKDiffMessageResult *)v48 messageIdsToUpdateOnWatch];
    [v44 removeAllObjects];

    v45 = [(NNMKDiffMessageResult *)v48 messageIdsToDeleteFromWatch];
    [v45 removeAllObjects];

    [(NNMKDiffMessageResult *)v48 setTrimed:1];
    v30 = v54;
  }

  v46 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __56__NNMKBatchedRequest_diffFromMessages_maxMessagesToAdd___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 dateReceived];
  v6 = [v4 dateReceived];

  v7 = [v5 compare:v6];
  return v7;
}

@end