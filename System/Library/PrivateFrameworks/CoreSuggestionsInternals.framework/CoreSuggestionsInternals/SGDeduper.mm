@interface SGDeduper
+ (BOOL)eventsHaveSimilarTitles:(id)a3 ekEventFromStore:(id)a4;
+ (id)_dedupeGenericContactDetails:(id)a3;
+ (id)_dedupePostalAddresses:(id)a3;
+ (id)bucketerWithEqualityTest:(id)a3;
+ (id)bucketerWithLabeledBuckets:(id)a3;
+ (id)bucketerWithMapping:(id)a3;
+ (id)dedupe:(id)a3 bucketer:(id)a4 resolver:(id)a5;
+ (id)dedupeContactDetails:(id)a3;
+ (id)resolveByPairs:(id)a3;
+ (id)resolveByScoreBreakTiesArbitrarily:(id)a3;
+ (id)splitContactDetailsByType:(id)a3;
+ (unsigned)eventsHaveIdenticalReservationIds:(id)a3 ekEventFromStore:(id)a4;
+ (void)enumerateEKEventsForPseudoEventBySimilarStartAndEndTime:(id)a3 store:(id)a4 usingBlock:(id)a5;
@end

@implementation SGDeduper

+ (id)splitContactDetailsByType:(id)a3
{
  v3 = a3;
  v4 = [SGDeduper bucketerWithLabeledBuckets:&__block_literal_global_52_5273];
  v5 = (v4)[2](v4, v3);

  return v5;
}

uint64_t __39__SGDeduper_splitContactDetailsByType___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 type];

  return [v2 numberWithUnsignedInteger:v3];
}

+ (id)dedupeContactDetails:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"SGDeduper.m" lineNumber:340 description:{@"Invalid parameter not satisfying: %@", @"details"}];
  }

  v6 = [SGDeduper bucketerWithMapping:&__block_literal_global_46];
  v7 = +[SGDeduper resolveSGContactDetailsPreferringPhraseExtractionsAndLabels];
  v8 = [SGDeduper dedupe:v5 bucketer:v6 resolver:v7];

  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        if ([v16 type] == 1)
        {
          v17 = v10;
        }

        else
        {
          v17 = v9;
        }

        [v17 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v18 = [a1 _dedupeGenericContactDetails:v9];
  v19 = [v18 mutableCopy];

  v20 = [a1 _dedupePostalAddresses:v10];
  [v19 addObjectsFromArray:v20];

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

id __34__SGDeduper_dedupeContactDetails___block_invoke(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 label];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_284703F00;
  }

  v11[0] = v5;
  v6 = [v2 value];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_284703F00;
  }

  v11[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_dedupeGenericContactDetails:(id)a3
{
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __42__SGDeduper__dedupeGenericContactDetails___block_invoke;
  v11 = &__block_descriptor_48_e35___NSString_16__0__SGContactDetail_8l;
  v12 = a2;
  v13 = a1;
  v3 = a3;
  v4 = [SGDeduper bucketerWithMapping:&v8];
  v5 = [SGDeduper resolveSGContactDetailsPreferringPhraseExtractionsAndLabels:v8];
  v6 = [SGDeduper dedupe:v3 bucketer:v4 resolver:v5];

  return v6;
}

id __42__SGDeduper__dedupeGenericContactDetails___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGDeduper.m" lineNumber:329 description:@"postal address details should be filtered out"];
  }

  v4 = [v3 normalizedValue];

  return v4;
}

+ (id)_dedupePostalAddresses:(id)a3
{
  v3 = a3;
  if ([v3 count] > 0x14)
  {
    [SGDeduper bucketerWithMapping:&__block_literal_global_30];
  }

  else
  {
    [SGDeduper bucketerWithEqualityTest:&__block_literal_global_27];
  }
  v4 = ;
  v5 = +[SGDeduper resolveSGContactDetailsPreferringPhraseExtractionsAndLabels];
  v6 = [SGDeduper dedupe:v3 bucketer:v4 resolver:v5];

  return v6;
}

id __36__SGDeduper__dedupePostalAddresses___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = SGNormalizeAddress(v2);
  v4 = [v3 lowercaseString];

  return v4;
}

uint64_t __36__SGDeduper__dedupePostalAddresses___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 value];
  v6 = [v4 value];

  v7 = SGPostalAddressesMatchWithParsed(v5, v6, 0, 0, 0, 0, 1);
  return v7;
}

+ (void)enumerateEKEventsForPseudoEventBySimilarStartAndEndTime:(id)a3 store:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 timeRange];
  v12 = [v11 absoluteRange];
  [v12 start];
  v14 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v13];

  v15 = [v8 timeRange];
  v16 = [v15 absoluteRange];
  [v16 end];
  v18 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v17];

  v19 = [v10 predicateForEventsWithStartDate:v14 endDate:v18 calendars:0];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __86__SGDeduper_enumerateEKEventsForPseudoEventBySimilarStartAndEndTime_store_usingBlock___block_invoke;
  v23[3] = &unk_27894C1E0;
  v24 = v14;
  v25 = v8;
  v26 = v9;
  v27 = a1;
  v20 = v9;
  v21 = v8;
  v22 = v14;
  [v10 enumerateEventsMatchingPredicate:v19 usingBlock:v23];
}

void __86__SGDeduper_enumerateEKEventsForPseudoEventBySimilarStartAndEndTime_store_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 startDate];
  LODWORD(v4) = [v4 isEqualToDate:v5];

  if (v4 && ([*(a1 + 56) eventsHaveIdenticalReservationIds:*(a1 + 40) ekEventFromStore:v6] == 2 || objc_msgSend(*(a1 + 56), "eventsHaveSimilarTitles:ekEventFromStore:", *(a1 + 40), v6) && objc_msgSend(v6, "status") != 3))
  {
    (*(*(a1 + 48) + 16))();
  }
}

+ (BOOL)eventsHaveSimilarTitles:(id)a3 ekEventFromStore:(id)a4
{
  v5 = a4;
  v6 = [a3 title];
  v7 = [v5 title];
  if (([v6 isEqualToString:v7] & 1) == 0)
  {
    v10 = [SGLevenshtein distanceBetweenStrings:v6 and:v7];
    v11 = [v6 length];
    v12 = [v7 length];
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    if (v10 / v13 < 0.5)
    {
      v8 = _PASGetNounsAndNames();
      v14 = v7;
      if ([v8 count])
      {
        v15 = _PASGetNounsAndNames();
        if ([v8 isEqualToArray:v15])
        {
LABEL_10:

          goto LABEL_3;
        }

        v16 = [v8 count];
        v17 = [v15 count];
        if (v16 >= v17)
        {
          v18 = v15;
        }

        else
        {
          v18 = v8;
        }

        if (v16 >= v17)
        {
          v19 = v8;
        }

        else
        {
          v19 = v15;
        }

        v20 = v18;
        v21 = v19;
        if ([v20 count] >= 3)
        {
          v22 = [v20 count] + 1;
          if (v22 == [v21 count])
          {
            if (![v21 count])
            {

              goto LABEL_10;
            }

            v32 = v5;
            v33 = v15;
            v34 = v14;
            v23 = 0;
            v24 = 0;
            do
            {
              if (v24 < [v20 count])
              {
                v25 = [v20 objectAtIndexedSubscript:v24];
                v26 = [v21 objectAtIndexedSubscript:v23];
                v27 = v21;
                v28 = v20;
                v29 = [v25 isEqualToString:v26];

                v30 = v29 & 1;
                v20 = v28;
                v21 = v27;
                v24 += v30;
              }

              ++v23;
            }

            while (v23 < [v21 count]);

            if (v23 - v24 < 2)
            {
              v9 = 1;
              v5 = v32;
              goto LABEL_30;
            }

            v5 = v32;
LABEL_29:
            v9 = 0;
            goto LABEL_30;
          }
        }
      }

      goto LABEL_29;
    }

    v8 = 0;
    goto LABEL_29;
  }

  v8 = 0;
LABEL_3:
  v9 = 1;
LABEL_30:

  return v9;
}

+ (unsigned)eventsHaveIdenticalReservationIds:(id)a3 ekEventFromStore:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [a3 tags];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v22 + 1) + 8 * v9);
      if ([v10 isEventMetadata])
      {
        v11 = [v10 eventMetadata];
        if (v11)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v14 = v11;
    v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277D02450]];
    v16 = [v15 firstObject];
    v7 = [v16 objectForKeyedSubscript:@"reservationId"];

    if (!v7)
    {
      v12 = 0;
      v13 = 1;
      goto LABEL_18;
    }

    v6 = [MEMORY[0x277D01FC8] eventMetadataFromEKEvent:v5];
    v17 = [v6 schemaOrg];
    v18 = [v17 firstObject];
    v12 = [v18 objectForKeyedSubscript:@"reservationId"];

    if (v12 && [v7 isEqualToString:v12])
    {

      v19 = 2;
      goto LABEL_21;
    }

    v13 = 0;
  }

  else
  {
LABEL_10:
    v12 = 0;
    v13 = 1;
  }

LABEL_18:
  if (v12)
  {
    v19 = v13;
  }

  else
  {
    v19 = 1;
  }

LABEL_21:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __72__SGDeduper_resolveSGContactDetailsPreferringPhraseExtractionsAndLabels__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 label];
  v4 = [v3 length];

  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 extractionInfo];
  v7 = [v6 extractionType];

  if (v7)
  {
    v8 = [v2 extractionInfo];
    v9 = [v8 extractionType];

    if (v9 == 2)
    {
      v5 = (v5 + 2);
    }

    else
    {
      v5 = (v5 + 1);
    }
  }

  return v5;
}

+ (id)resolveByScoreBreakTiesArbitrarily:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SGDeduper_resolveByScoreBreakTiesArbitrarily___block_invoke;
  v7[3] = &unk_27894C198;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x2383809F0](v7);

  return v5;
}

id __48__SGDeduper_resolveByScoreBreakTiesArbitrarily___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v18;
  v8 = 0x80000000;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v17 + 1) + 8 * i);
      v11 = (*(*(a1 + 32) + 16))();
      if (v11 > v8)
      {
        v12 = v11;
        v13 = v10;

        v6 = v13;
        v8 = v12;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  }

  while (v5);
  if (v6)
  {
    v21 = v6;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  }

  else
  {
LABEL_12:
    v14 = MEMORY[0x277CBEBF8];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)resolveByPairs:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__SGDeduper_resolveByPairs___block_invoke;
  v7[3] = &unk_27894C198;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x2383809F0](v7);

  return v5;
}

id __28__SGDeduper_resolveByPairs___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v14;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v3);
      }

      if (v6)
      {
        v9 = (*(*(a1 + 32) + 16))();

        v6 = v9;
      }

      else
      {
        v6 = *(*(&v13 + 1) + 8 * i);
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
  }

  while (v5);
  if (v6)
  {
    v17 = v6;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  }

  else
  {
LABEL_13:
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)bucketerWithEqualityTest:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SGDeduper_bucketerWithEqualityTest___block_invoke;
  v7[3] = &unk_27894C170;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x2383809F0](v7);

  return v5;
}

id __38__SGDeduper_bucketerWithEqualityTest___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v6 = v19;
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v22;
          while (2)
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v21 + 1) + 8 * j);
              v12 = *(a1 + 32);
              v13 = [v11 objectAtIndexedSubscript:0];
              LODWORD(v12) = (*(v12 + 16))(v12, v5, v13);

              if (v12)
              {
                [v11 addObject:v5];
                goto LABEL_16;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v5, 0}];
        [v6 addObject:v14];
        v6 = v14;
LABEL_16:
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)bucketerWithLabeledBuckets:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SGDeduper_bucketerWithLabeledBuckets___block_invoke;
  v7[3] = &unk_27894C148;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x2383809F0](v7);

  return v5;
}

id __40__SGDeduper_bucketerWithLabeledBuckets___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = (*(*(a1 + 32) + 16))(*(a1 + 32));
        v12 = [v4 objectForKeyedSubscript:{v11, v15}];
        if (!v12)
        {
          v12 = objc_opt_new();
          [v4 setObject:v12 forKeyedSubscript:v11];
        }

        [v12 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)bucketerWithMapping:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SGDeduper_bucketerWithMapping___block_invoke;
  v7[3] = &unk_27894C120;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x2383809F0](v7);

  return v5;
}

id __33__SGDeduper_bucketerWithMapping___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = (*(*(a1 + 32) + 16))(*(a1 + 32));
        objc_autoreleasePoolPop(v11);
        v13 = [v4 objectForKeyedSubscript:{v12, v18}];
        if (!v13)
        {
          v13 = objc_opt_new();
          [v4 setObject:v13 forKeyedSubscript:v12];
        }

        [v13 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = objc_autoreleasePoolPush();
  v15 = [v4 allValues];
  objc_autoreleasePoolPop(v14);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)dedupe:(id)a3 bucketer:(id)a4 resolver:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v31 = a5;
  Mutable = CFSetCreateMutable(0, 16, 0);
  if (!Mutable)
  {
    v26 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v26);
  }

  v10 = Mutable;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v29 = v8;
  v30 = v7;
  v11 = (*(v8 + 2))(v8, v7);
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v12)
  {
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        if ([v15 count] < 2)
        {
          v16 = [v15 objectAtIndexedSubscript:0];
          CFSetAddValue(v10, v16);
        }

        else
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v16 = v31[2](v31, v15);
          v17 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v17)
          {
            v18 = *v37;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v37 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                CFSetAddValue(v10, *(*(&v36 + 1) + 8 * j));
              }

              v17 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v17);
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v12);
  }

  v20 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v30;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v22)
  {
    v23 = *v33;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v32 + 1) + 8 * k);
        if (CFSetContainsValue(v10, v25))
        {
          [v20 addObject:v25];
          CFSetRemoveValue(v10, v25);
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v22);
  }

  CFRelease(v10);
  v27 = *MEMORY[0x277D85DE8];

  return v20;
}

@end