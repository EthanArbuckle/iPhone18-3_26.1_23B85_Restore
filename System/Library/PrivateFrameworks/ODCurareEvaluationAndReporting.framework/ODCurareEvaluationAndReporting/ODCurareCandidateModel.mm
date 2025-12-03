@interface ODCurareCandidateModel
- (BOOL)hasStreamFilter;
- (ODCurareCandidateModel)initWithModelURL:(id)l withBiomeStream:(id)stream withBiomeStreamIdentifier:(id)identifier withModelTag:(id)tag andMetadata:(id)metadata;
- (ODCurareCandidateModel)initWithModelURL:(id)l withCoreDuetStream:(id)stream withCoreDuetStreamIdentifier:(id)identifier withModelTag:(id)tag andMetadata:(id)metadata;
- (id)description;
- (id)getDatesOfEventsForStream;
- (void)_setBiomeFilter:(id)filter fromInclusive:(id)inclusive toDate:(id)date toInclusive:(id)toInclusive;
- (void)_setCoreDuetQuery:(id)query fromInclusive:(id)inclusive toDate:(id)date toInclusive:(id)toInclusive;
- (void)setStreamFilter:(id)filter fromInclusive:(id)inclusive toDate:(id)date toInclusive:(id)toInclusive;
@end

@implementation ODCurareCandidateModel

- (ODCurareCandidateModel)initWithModelURL:(id)l withBiomeStream:(id)stream withBiomeStreamIdentifier:(id)identifier withModelTag:(id)tag andMetadata:(id)metadata
{
  lCopy = l;
  streamCopy = stream;
  identifierCopy = identifier;
  tagCopy = tag;
  metadataCopy = metadata;
  v17 = [(ODCurareCandidateModel *)self init];
  v18 = v17;
  if (v17)
  {
    [(ODCurareCandidateModel *)v17 setModelTag:tagCopy];
    [(ODCurareCandidateModel *)v18 setModelURL:lCopy];
    [(ODCurareCandidateModel *)v18 setModelConfiguration:metadataCopy];
    [(ODCurareCandidateModel *)v18 setBMModelDataStream:streamCopy];
    [(ODCurareCandidateModel *)v18 setBMModelDataStreamIdentifier:identifierCopy];
    [(ODCurareCandidateModel *)v18 setCDModelDataStream:0];
    [(ODCurareCandidateModel *)v18 setCDModelDataStreamIdentifier:0];
  }

  return v18;
}

- (ODCurareCandidateModel)initWithModelURL:(id)l withCoreDuetStream:(id)stream withCoreDuetStreamIdentifier:(id)identifier withModelTag:(id)tag andMetadata:(id)metadata
{
  lCopy = l;
  streamCopy = stream;
  identifierCopy = identifier;
  tagCopy = tag;
  metadataCopy = metadata;
  v17 = [(ODCurareCandidateModel *)self init];
  v18 = v17;
  if (v17)
  {
    [(ODCurareCandidateModel *)v17 setModelTag:tagCopy];
    [(ODCurareCandidateModel *)v18 setModelURL:lCopy];
    [(ODCurareCandidateModel *)v18 setModelConfiguration:metadataCopy];
    [(ODCurareCandidateModel *)v18 setBMModelDataStream:0];
    [(ODCurareCandidateModel *)v18 setBMModelDataStreamIdentifier:0];
    [(ODCurareCandidateModel *)v18 setCDModelDataStream:streamCopy];
    [(ODCurareCandidateModel *)v18 setCDModelDataStreamIdentifier:identifierCopy];
  }

  return v18;
}

- (id)getDatesOfEventsForStream
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  bMModelDataStream = [(ODCurareCandidateModel *)self BMModelDataStream];
  if (bMModelDataStream)
  {

LABEL_4:
    bmReceiveInputBlock = [(ODCurareCandidateModel *)self bmReceiveInputBlock];

    if (bmReceiveInputBlock)
    {
      bMModelDataStream2 = [(ODCurareCandidateModel *)self BMModelDataStream];

      if (!bMModelDataStream2)
      {
        v8 = objc_alloc(MEMORY[0x277CF1B30]);
        bMModelDataStreamIdentifier = [(ODCurareCandidateModel *)self BMModelDataStreamIdentifier];
        v10 = [v8 initWithPrivateStreamIdentifier:bMModelDataStreamIdentifier storeConfig:0];
        [(ODCurareCandidateModel *)self setBMModelDataStream:v10];
      }

      bMModelDataStream3 = [(ODCurareCandidateModel *)self BMModelDataStream];
      publisher = [bMModelDataStream3 publisher];

      bmReceiveInputBlock2 = [(ODCurareCandidateModel *)self bmReceiveInputBlock];
      v14 = [publisher filterWithIsIncluded:bmReceiveInputBlock2];

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

  bMModelDataStreamIdentifier2 = [(ODCurareCandidateModel *)self BMModelDataStreamIdentifier];

  if (bMModelDataStreamIdentifier2)
  {
    goto LABEL_4;
  }

  cDModelDataStreamIdentifier = [(ODCurareCandidateModel *)self CDModelDataStreamIdentifier];

  if (!cDModelDataStreamIdentifier)
  {
    NSLog(&cfstr_Odcurarecandid_2.isa);
    goto LABEL_9;
  }

  cDQuery = [(ODCurareCandidateModel *)self CDQuery];

  if (!cDQuery)
  {
    NSLog(&cfstr_Odcurarecandid_0.isa);
    goto LABEL_9;
  }

  knowledgeStore = [MEMORY[0x277CFE208] knowledgeStore];
  v22 = 0;
  v23 = 0;
  while (1)
  {
    v24 = objc_autoreleasePoolPush();
    cDQuery2 = [(ODCurareCandidateModel *)self CDQuery];
    v26 = [cDQuery2 copy];

    [v26 setLimit:20];
    [v26 setOffset:v22];
    v42 = 0;
    v27 = [knowledgeStore executeQuery:v26 error:&v42];
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

          startDate = [*(*(&v38 + 1) + 8 * i) startDate];
          [v3 addObject:startDate];
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

- (void)setStreamFilter:(id)filter fromInclusive:(id)inclusive toDate:(id)date toInclusive:(id)toInclusive
{
  filterCopy = filter;
  inclusiveCopy = inclusive;
  dateCopy = date;
  toInclusiveCopy = toInclusive;
  bMModelDataStream = [(ODCurareCandidateModel *)self BMModelDataStream];
  if (bMModelDataStream)
  {

LABEL_4:
    [(ODCurareCandidateModel *)self _setBiomeFilter:filterCopy fromInclusive:inclusiveCopy toDate:dateCopy toInclusive:toInclusiveCopy];
    goto LABEL_5;
  }

  bMModelDataStreamIdentifier = [(ODCurareCandidateModel *)self BMModelDataStreamIdentifier];

  if (bMModelDataStreamIdentifier)
  {
    goto LABEL_4;
  }

  cDModelDataStream = [(ODCurareCandidateModel *)self CDModelDataStream];
  if (cDModelDataStream)
  {

LABEL_11:
    [(ODCurareCandidateModel *)self _setCoreDuetQuery:filterCopy fromInclusive:inclusiveCopy toDate:dateCopy toInclusive:toInclusiveCopy];
    goto LABEL_5;
  }

  cDModelDataStreamIdentifier = [(ODCurareCandidateModel *)self CDModelDataStreamIdentifier];

  if (cDModelDataStreamIdentifier)
  {
    goto LABEL_11;
  }

  NSLog(&cfstr_Odcurarecandid_3.isa);
LABEL_5:
}

- (BOOL)hasStreamFilter
{
  bmReceiveInputBlock = [(ODCurareCandidateModel *)self bmReceiveInputBlock];
  if (bmReceiveInputBlock)
  {
    v4 = 1;
  }

  else
  {
    cDQuery = [(ODCurareCandidateModel *)self CDQuery];
    v4 = cDQuery != 0;
  }

  return v4;
}

- (void)_setBiomeFilter:(id)filter fromInclusive:(id)inclusive toDate:(id)date toInclusive:(id)toInclusive
{
  filterCopy = filter;
  inclusiveCopy = inclusive;
  dateCopy = date;
  toInclusiveCopy = toInclusive;
  v14 = objc_opt_new();
  v15 = [MEMORY[0x277CCABB0] numberWithLong:-1];
  [v14 addObject:v15];

  v16 = objc_opt_new();
  v17 = [MEMORY[0x277CCABB0] numberWithLong:1];
  [v16 addObject:v17];

  if (inclusiveCopy && [inclusiveCopy BOOLValue])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithLong:0];
    [v14 addObject:v18];
  }

  if (toInclusiveCopy && [toInclusiveCopy BOOLValue])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithLong:0];
    [v16 addObject:v19];
  }

  if (filterCopy && dateCopy)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __75__ODCurareCandidateModel__setBiomeFilter_fromInclusive_toDate_toInclusive___block_invoke;
    v27[3] = &unk_2799B9AB0;
    v28 = filterCopy;
    v29 = dateCopy;
    v30 = v14;
    v31 = v16;
    [(ODCurareCandidateModel *)self setBmReceiveInputBlock:v27];

    v20 = v28;
  }

  else if (filterCopy)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __75__ODCurareCandidateModel__setBiomeFilter_fromInclusive_toDate_toInclusive___block_invoke_2;
    v24[3] = &unk_2799B9AD8;
    v25 = filterCopy;
    v26 = v14;
    [(ODCurareCandidateModel *)self setBmReceiveInputBlock:v24];

    v20 = v25;
  }

  else
  {
    if (!dateCopy)
    {
      NSLog(&cfstr_Odcurarecandid_4.isa);
      [(ODCurareCandidateModel *)self setBmReceiveInputBlock:&__block_literal_global_199];
      goto LABEL_15;
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__ODCurareCandidateModel__setBiomeFilter_fromInclusive_toDate_toInclusive___block_invoke_3;
    v21[3] = &unk_2799B9AD8;
    v22 = dateCopy;
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

- (void)_setCoreDuetQuery:(id)query fromInclusive:(id)inclusive toDate:(id)date toInclusive:(id)toInclusive
{
  v26[1] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  inclusiveCopy = inclusive;
  dateCopy = date;
  toInclusiveCopy = toInclusive;
  v14 = objc_opt_new();
  cDModelDataStreamIdentifier = [(ODCurareCandidateModel *)self CDModelDataStreamIdentifier];

  if (cDModelDataStreamIdentifier)
  {
    NSLog(&cfstr_Odcurarecandid_6.isa, queryCopy, inclusiveCopy, dateCopy, toInclusiveCopy);
    v16 = MEMORY[0x277CFE1E8];
    cDModelDataStreamIdentifier2 = [(ODCurareCandidateModel *)self CDModelDataStreamIdentifier];
    v18 = [v16 eventStreamWithName:cDModelDataStreamIdentifier2];

    v26[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [v14 setEventStreams:v19];

    if (queryCopy && dateCopy)
    {
      if (inclusiveCopy)
      {
        bOOLValue = [inclusiveCopy BOOLValue];
        if (toInclusiveCopy && bOOLValue && [toInclusiveCopy BOOLValue])
        {
          [MEMORY[0x277CCAC30] predicateWithFormat:@"((startDate >= %@) AND (startDate <= %@))", queryCopy, dateCopy];
          goto LABEL_26;
        }

        if ([inclusiveCopy BOOLValue])
        {
          [MEMORY[0x277CCAC30] predicateWithFormat:@"((startDate >= %@) AND (startDate < %@))", queryCopy, dateCopy];
          goto LABEL_26;
        }
      }

      if (toInclusiveCopy && [toInclusiveCopy BOOLValue])
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"((startDate > %@) AND (startDate <= %@))", queryCopy, dateCopy];
      }

      else
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"((startDate > %@) AND (startDate < %@))", queryCopy, dateCopy];
      }

      goto LABEL_26;
    }

    if (queryCopy)
    {
      if (inclusiveCopy && [inclusiveCopy BOOLValue])
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"(startDate >= %@)", queryCopy, v25];
      }

      else
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"(startDate > %@)", queryCopy, v25];
      }
    }

    else
    {
      if (!dateCopy)
      {
        NSLog(&cfstr_Odcurarecandid_4.isa);
        [v14 setPredicate:0];
        goto LABEL_27;
      }

      if (toInclusiveCopy && [toInclusiveCopy BOOLValue])
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"(startDate <= %@)", dateCopy, v25];
      }

      else
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"(startDate < %@)", dateCopy, v25];
      }
    }

    v21 = LABEL_26:;
    [v14 setPredicate:v21];

LABEL_27:
    predicate = [v14 predicate];
    predicateFormat = [predicate predicateFormat];
    NSLog(&cfstr_Odcurarecandid_7.isa, predicateFormat);

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
  modelURL = [(ODCurareCandidateModel *)self modelURL];
  modelTag = [(ODCurareCandidateModel *)self modelTag];
  v7 = [v4 stringWithFormat:@"ODCurareCandidateModel. modelURL: %@, modelTag: %@, isDefault: %@", modelURL, modelTag, v3];

  return v7;
}

@end