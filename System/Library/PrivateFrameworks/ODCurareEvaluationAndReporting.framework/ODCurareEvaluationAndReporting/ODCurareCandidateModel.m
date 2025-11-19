@interface ODCurareCandidateModel
- (BOOL)hasStreamFilter;
- (ODCurareCandidateModel)initWithModelURL:(id)a3 withBiomeStream:(id)a4 withBiomeStreamIdentifier:(id)a5 withModelTag:(id)a6 andMetadata:(id)a7;
- (ODCurareCandidateModel)initWithModelURL:(id)a3 withCoreDuetStream:(id)a4 withCoreDuetStreamIdentifier:(id)a5 withModelTag:(id)a6 andMetadata:(id)a7;
- (id)description;
- (id)getDatesOfEventsForStream;
- (void)_setBiomeFilter:(id)a3 fromInclusive:(id)a4 toDate:(id)a5 toInclusive:(id)a6;
- (void)_setCoreDuetQuery:(id)a3 fromInclusive:(id)a4 toDate:(id)a5 toInclusive:(id)a6;
- (void)setStreamFilter:(id)a3 fromInclusive:(id)a4 toDate:(id)a5 toInclusive:(id)a6;
@end

@implementation ODCurareCandidateModel

- (ODCurareCandidateModel)initWithModelURL:(id)a3 withBiomeStream:(id)a4 withBiomeStreamIdentifier:(id)a5 withModelTag:(id)a6 andMetadata:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(ODCurareCandidateModel *)self init];
  v18 = v17;
  if (v17)
  {
    [(ODCurareCandidateModel *)v17 setModelTag:v15];
    [(ODCurareCandidateModel *)v18 setModelURL:v12];
    [(ODCurareCandidateModel *)v18 setModelConfiguration:v16];
    [(ODCurareCandidateModel *)v18 setBMModelDataStream:v13];
    [(ODCurareCandidateModel *)v18 setBMModelDataStreamIdentifier:v14];
    [(ODCurareCandidateModel *)v18 setCDModelDataStream:0];
    [(ODCurareCandidateModel *)v18 setCDModelDataStreamIdentifier:0];
  }

  return v18;
}

- (ODCurareCandidateModel)initWithModelURL:(id)a3 withCoreDuetStream:(id)a4 withCoreDuetStreamIdentifier:(id)a5 withModelTag:(id)a6 andMetadata:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(ODCurareCandidateModel *)self init];
  v18 = v17;
  if (v17)
  {
    [(ODCurareCandidateModel *)v17 setModelTag:v15];
    [(ODCurareCandidateModel *)v18 setModelURL:v12];
    [(ODCurareCandidateModel *)v18 setModelConfiguration:v16];
    [(ODCurareCandidateModel *)v18 setBMModelDataStream:0];
    [(ODCurareCandidateModel *)v18 setBMModelDataStreamIdentifier:0];
    [(ODCurareCandidateModel *)v18 setCDModelDataStream:v13];
    [(ODCurareCandidateModel *)v18 setCDModelDataStreamIdentifier:v14];
  }

  return v18;
}

- (id)getDatesOfEventsForStream
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(ODCurareCandidateModel *)self BMModelDataStream];
  if (v4)
  {

LABEL_4:
    v6 = [(ODCurareCandidateModel *)self bmReceiveInputBlock];

    if (v6)
    {
      v7 = [(ODCurareCandidateModel *)self BMModelDataStream];

      if (!v7)
      {
        v8 = objc_alloc(MEMORY[0x277CF1B30]);
        v9 = [(ODCurareCandidateModel *)self BMModelDataStreamIdentifier];
        v10 = [v8 initWithPrivateStreamIdentifier:v9 storeConfig:0];
        [(ODCurareCandidateModel *)self setBMModelDataStream:v10];
      }

      v11 = [(ODCurareCandidateModel *)self BMModelDataStream];
      v12 = [v11 publisher];

      v13 = [(ODCurareCandidateModel *)self bmReceiveInputBlock];
      v14 = [v12 filterWithIsIncluded:v13];

      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __51__ODCurareCandidateModel_getDatesOfEventsForStream__block_invoke_2;
      v43[3] = &unk_2799B9A88;
      v15 = v3;
      v44 = v15;
      v16 = [v14 sinkWithCompletion:&__block_literal_global receiveInput:v43];
      v17 = v15;

      goto LABEL_10;
    }

    NSLog(&cfstr_Odcurarecandid.isa);
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v5 = [(ODCurareCandidateModel *)self BMModelDataStreamIdentifier];

  if (v5)
  {
    goto LABEL_4;
  }

  v20 = [(ODCurareCandidateModel *)self CDModelDataStreamIdentifier];

  if (!v20)
  {
    NSLog(&cfstr_Odcurarecandid_2.isa);
    goto LABEL_9;
  }

  v21 = [(ODCurareCandidateModel *)self CDQuery];

  if (!v21)
  {
    NSLog(&cfstr_Odcurarecandid_0.isa);
    goto LABEL_9;
  }

  v36 = [MEMORY[0x277CFE208] knowledgeStore];
  v22 = 0;
  v23 = 0;
  while (1)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = [(ODCurareCandidateModel *)self CDQuery];
    v26 = [v25 copy];

    [v26 setLimit:20];
    [v26 setOffset:v22];
    v42 = 0;
    v27 = [v36 executeQuery:v26 error:&v42];
    v28 = v42;
    if (v28)
    {
      v35 = v28;
      NSLog(&cfstr_Odcurarecandid_1.isa, v28);

      objc_autoreleasePoolPop(v24);
      v17 = 0;
      goto LABEL_32;
    }

    if (![v27 count])
    {
      break;
    }

    context = v24;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = v27;
    v30 = [v29 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v39;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v39 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v38 + 1) + 8 * i) startDate];
          [v3 addObject:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v31);
    }

    ++v23;
    objc_autoreleasePoolPop(context);
    v22 += 20;
    if (v23 == 100001)
    {
      goto LABEL_31;
    }
  }

  objc_autoreleasePoolPop(v24);
LABEL_31:
  v17 = v3;
LABEL_32:

LABEL_10:
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __51__ODCurareCandidateModel_getDatesOfEventsForStream__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  [a2 timestamp];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  [*(a1 + 32) addObject:v4];
}

- (void)setStreamFilter:(id)a3 fromInclusive:(id)a4 toDate:(id)a5 toInclusive:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(ODCurareCandidateModel *)self BMModelDataStream];
  if (v13)
  {

LABEL_4:
    [(ODCurareCandidateModel *)self _setBiomeFilter:v17 fromInclusive:v10 toDate:v11 toInclusive:v12];
    goto LABEL_5;
  }

  v14 = [(ODCurareCandidateModel *)self BMModelDataStreamIdentifier];

  if (v14)
  {
    goto LABEL_4;
  }

  v15 = [(ODCurareCandidateModel *)self CDModelDataStream];
  if (v15)
  {

LABEL_11:
    [(ODCurareCandidateModel *)self _setCoreDuetQuery:v17 fromInclusive:v10 toDate:v11 toInclusive:v12];
    goto LABEL_5;
  }

  v16 = [(ODCurareCandidateModel *)self CDModelDataStreamIdentifier];

  if (v16)
  {
    goto LABEL_11;
  }

  NSLog(&cfstr_Odcurarecandid_3.isa);
LABEL_5:
}

- (BOOL)hasStreamFilter
{
  v3 = [(ODCurareCandidateModel *)self bmReceiveInputBlock];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ODCurareCandidateModel *)self CDQuery];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)_setBiomeFilter:(id)a3 fromInclusive:(id)a4 toDate:(id)a5 toInclusive:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_new();
  v15 = [MEMORY[0x277CCABB0] numberWithLong:-1];
  [v14 addObject:v15];

  v16 = objc_opt_new();
  v17 = [MEMORY[0x277CCABB0] numberWithLong:1];
  [v16 addObject:v17];

  if (v11 && [v11 BOOLValue])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithLong:0];
    [v14 addObject:v18];
  }

  if (v13 && [v13 BOOLValue])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithLong:0];
    [v16 addObject:v19];
  }

  if (v10 && v12)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __75__ODCurareCandidateModel__setBiomeFilter_fromInclusive_toDate_toInclusive___block_invoke;
    v27[3] = &unk_2799B9AB0;
    v28 = v10;
    v29 = v12;
    v30 = v14;
    v31 = v16;
    [(ODCurareCandidateModel *)self setBmReceiveInputBlock:v27];

    v20 = v28;
  }

  else if (v10)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __75__ODCurareCandidateModel__setBiomeFilter_fromInclusive_toDate_toInclusive___block_invoke_2;
    v24[3] = &unk_2799B9AD8;
    v25 = v10;
    v26 = v14;
    [(ODCurareCandidateModel *)self setBmReceiveInputBlock:v24];

    v20 = v25;
  }

  else
  {
    if (!v12)
    {
      NSLog(&cfstr_Odcurarecandid_4.isa);
      [(ODCurareCandidateModel *)self setBmReceiveInputBlock:&__block_literal_global_199];
      goto LABEL_15;
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__ODCurareCandidateModel__setBiomeFilter_fromInclusive_toDate_toInclusive___block_invoke_3;
    v21[3] = &unk_2799B9AD8;
    v22 = v12;
    v23 = v16;
    [(ODCurareCandidateModel *)self setBmReceiveInputBlock:v21];

    v20 = v22;
  }

LABEL_15:
}

BOOL __75__ODCurareCandidateModel__setBiomeFilter_fromInclusive_toDate_toInclusive___block_invoke(id *a1, void *a2)
{
  [a2 timestamp];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  v4 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(a1[4], "compare:", v3)}];
  v5 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(a1[5], "compare:", v3)}];
  v6 = [a1[6] containsObject:v4] && (objc_msgSend(a1[7], "containsObject:", v5) & 1) != 0;

  return v6;
}

uint64_t __75__ODCurareCandidateModel__setBiomeFilter_fromInclusive_toDate_toInclusive___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 timestamp];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  v4 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(*(a1 + 32), "compare:", v3)}];
  v5 = [*(a1 + 40) containsObject:v4];

  return v5;
}

uint64_t __75__ODCurareCandidateModel__setBiomeFilter_fromInclusive_toDate_toInclusive___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 timestamp];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  v4 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(*(a1 + 32), "compare:", v3)}];
  v5 = [*(a1 + 40) containsObject:v4];

  return v5;
}

- (void)_setCoreDuetQuery:(id)a3 fromInclusive:(id)a4 toDate:(id)a5 toInclusive:(id)a6
{
  v26[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_new();
  v15 = [(ODCurareCandidateModel *)self CDModelDataStreamIdentifier];

  if (v15)
  {
    NSLog(&cfstr_Odcurarecandid_6.isa, v10, v11, v12, v13);
    v16 = MEMORY[0x277CFE1E8];
    v17 = [(ODCurareCandidateModel *)self CDModelDataStreamIdentifier];
    v18 = [v16 eventStreamWithName:v17];

    v26[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [v14 setEventStreams:v19];

    if (v10 && v12)
    {
      if (v11)
      {
        v20 = [v11 BOOLValue];
        if (v13 && v20 && [v13 BOOLValue])
        {
          [MEMORY[0x277CCAC30] predicateWithFormat:@"((startDate >= %@) AND (startDate <= %@))", v10, v12];
          goto LABEL_26;
        }

        if ([v11 BOOLValue])
        {
          [MEMORY[0x277CCAC30] predicateWithFormat:@"((startDate >= %@) AND (startDate < %@))", v10, v12];
          goto LABEL_26;
        }
      }

      if (v13 && [v13 BOOLValue])
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"((startDate > %@) AND (startDate <= %@))", v10, v12];
      }

      else
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"((startDate > %@) AND (startDate < %@))", v10, v12];
      }

      goto LABEL_26;
    }

    if (v10)
    {
      if (v11 && [v11 BOOLValue])
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"(startDate >= %@)", v10, v25];
      }

      else
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"(startDate > %@)", v10, v25];
      }
    }

    else
    {
      if (!v12)
      {
        NSLog(&cfstr_Odcurarecandid_4.isa);
        [v14 setPredicate:0];
        goto LABEL_27;
      }

      if (v13 && [v13 BOOLValue])
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"(startDate <= %@)", v12, v25];
      }

      else
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"(startDate < %@)", v12, v25];
      }
    }

    v21 = LABEL_26:;
    [v14 setPredicate:v21];

LABEL_27:
    v22 = [v14 predicate];
    v23 = [v22 predicateFormat];
    NSLog(&cfstr_Odcurarecandid_7.isa, v23);

    [(ODCurareCandidateModel *)self setCDQuery:v14];
    goto LABEL_28;
  }

  NSLog(&cfstr_Odcurarecandid_5.isa);
LABEL_28:

  v24 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  if ([(ODCurareCandidateModel *)self isDefaultModel])
  {
    v3 = @"default";
  }

  else
  {
    v3 = @"not_default";
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [(ODCurareCandidateModel *)self modelURL];
  v6 = [(ODCurareCandidateModel *)self modelTag];
  v7 = [v4 stringWithFormat:@"ODCurareCandidateModel. modelURL: %@, modelTag: %@, isDefault: %@", v5, v6, v3];

  return v7;
}

@end