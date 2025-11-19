@interface ODCurareCoreDuetStorage
+ (id)predicateWithIdentifier:(id)a3 withDate:(id)a4;
- (BOOL)deleteAllData;
- (BOOL)deleteData:(id)a3;
- (BOOL)deleteDataWithPredicate:(id)a3;
- (BOOL)saveDictionaries:(id)a3 date:(id)a4 eventIdentifier:(id)a5;
- (BOOL)saveMetadata:(id)a3 date:(id)a4 eventIdentifier:(id)a5;
- (id)init:(id)a3;
- (id)queryDataWithPredicate:(id)a3;
- (unint64_t)deleteMultipleData:(id)a3;
- (unint64_t)deleteMultipleDataWithPredicate:(id)a3;
- (void)deleteDirectory:(id)a3;
@end

@implementation ODCurareCoreDuetStorage

- (id)init:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ODCurareCoreDuetStorage;
  v5 = [(ODCurareCoreDuetStorage *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(ODCurareCoreDuetStorage *)v5 setName:v4];
    v7 = [MEMORY[0x277CFE1E8] eventStreamWithName:v4];
    [(ODCurareCoreDuetStorage *)v6 setStream:v7];

    v8 = [MEMORY[0x277CCAC38] processInfo];
    v9 = [v8 environment];
    v10 = [v9 objectForKeyedSubscript:@"XCTestBundlePath"];

    if (v10)
    {
      NSLog(&cfstr_RunningOnTest.isa);
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/tmp/test-interactiondir/%@", v4];
      [(ODCurareCoreDuetStorage *)v6 deleteDirectory:v11];
      v12 = [MEMORY[0x277CFE200] storageWithDirectory:v11 readOnly:0];
      [(ODCurareCoreDuetStorage *)v6 setKnowledgeStore:v12];
    }

    else
    {
      v11 = [MEMORY[0x277CFE208] userKnowledgeStore];
      [(ODCurareCoreDuetStorage *)v6 setKnowledgeStore:v11];
    }
  }

  return v6;
}

- (void)deleteDirectory:(id)a3
{
  v4 = a3;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v3 fileExistsAtPath:v4 isDirectory:0])
  {
    [v3 removeItemAtPath:v4 error:0];
  }
}

- (BOOL)saveDictionaries:(id)a3 date:(id)a4 eventIdentifier:(id)a5
{
  v30[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v27 = @"ODCurareEvaluationAndReporting-MetadataDataKey";
    v28 = v8;
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v28;
    v13 = &v27;
  }

  else
  {
    v29 = @"ODCurareEvaluationAndReporting-MetadataDataKey";
    v30[0] = MEMORY[0x277CBEBF8];
    v11 = MEMORY[0x277CBEAC0];
    v12 = v30;
    v13 = &v29;
  }

  v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
  v15 = MEMORY[0x277CFE1D8];
  v16 = [(ODCurareCoreDuetStorage *)self stream];
  v17 = [v15 eventWithStream:v16 startDate:v9 endDate:v9 identifierStringValue:v10 metadata:v14];

  v18 = [(ODCurareCoreDuetStorage *)self knowledgeStore];
  v26 = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v25 = 0;
  v20 = [v18 saveObjects:v19 error:&v25];
  v21 = v25;

  if ((v20 & 1) == 0)
  {
    v22 = [v21 localizedDescription];
    NSLog(&stru_286E6B670.isa, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)saveMetadata:(id)a3 date:(id)a4 eventIdentifier:(id)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v25 = @"ODCurareEvaluationAndReporting-MetadataDataKey";
  v26[0] = v8;
  v9 = MEMORY[0x277CBEAC0];
  v10 = a5;
  v11 = a4;
  v12 = [v9 dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v13 = MEMORY[0x277CFE1D8];
  v14 = [(ODCurareCoreDuetStorage *)self stream];
  v15 = [v13 eventWithStream:v14 startDate:v11 endDate:v11 identifierStringValue:v10 metadata:v12];

  v16 = [(ODCurareCoreDuetStorage *)self knowledgeStore];
  v24 = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v23 = 0;
  v18 = [v16 saveObjects:v17 error:&v23];
  v19 = v23;

  if ((v18 & 1) == 0)
  {
    v20 = [v19 localizedDescription];
    NSLog(&cfstr_Odcurarecoredu.isa, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)queryDataWithPredicate:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CFE1E0]);
  v6 = [(ODCurareCoreDuetStorage *)self stream];
  v27[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [v5 setEventStreams:v7];

  [v5 setLimit:100];
  [v5 setPredicate:v4];
  v8 = [(ODCurareCoreDuetStorage *)self knowledgeStore];
  v25 = 0;
  v9 = [v8 executeQuery:v5 error:&v25];
  v10 = v25;

  v11 = 0;
  if (!v10)
  {
    v20 = v4;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [[ODCurareDKEvent alloc] initWithDKEvent:*(*(&v21 + 1) + 8 * i)];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    v4 = v20;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)predicateWithIdentifier:(id)a3 withDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  if (v5)
  {
    v8 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:v5];
    [v7 addObject:v8];
  }

  if (v6)
  {
    v9 = [MEMORY[0x277CFE260] predicateForEventsWithStartInDateRangeFrom:v6 to:v6];
    [v7 addObject:v9];
  }

  if ([v7 count])
  {
    v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)deleteData:(id)a3
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CFE1E0]);
  v6 = [(ODCurareCoreDuetStorage *)self stream];
  v35[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  [v5 setEventStreams:v7];

  [v5 setLimit:100];
  v8 = [(ODCurareCoreDuetStorage *)self knowledgeStore];
  v32 = 0;
  v9 = [v8 executeQuery:v5 error:&v32];
  v10 = v32;

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v10)
    {
      v23 = self;
      v24 = v9;
      v25 = v5;
      v12 = *v29;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          if (v14)
          {
            v15 = [*(*(&v28 + 1) + 8 * i) startDate];
            v16 = [v14 metadata];
            v17 = [v16 objectForKeyedSubscript:@"ODCurareEvaluationAndReporting-MetadataDataKey"];
            v18 = v4[2](v4, v15, v17);

            if (v18)
            {
              v19 = [(ODCurareCoreDuetStorage *)v23 knowledgeStore];
              v33 = v14;
              v11 = 1;
              v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
              v27 = 0;
              [v19 deleteObjects:v20 error:&v27];
              v10 = v27;

              goto LABEL_14;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v11 = 0;
LABEL_14:
      v9 = v24;
      v5 = v25;
    }

    else
    {
      v11 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)deleteMultipleData:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CFE1E0]);
  v6 = [(ODCurareCoreDuetStorage *)self stream];
  v39[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  [v5 setEventStreams:v7];

  [v5 setLimit:100];
  v8 = [(ODCurareCoreDuetStorage *)self knowledgeStore];
  v36 = 0;
  v9 = [v8 executeQuery:v5 error:&v36];
  v10 = v36;

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v26 = v9;
    v27 = v5;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v9;
    v12 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v28 = self;
      v10 = 0;
      v14 = *v33;
      v30 = 0;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v32 + 1) + 8 * i);
          if (v16)
          {
            v17 = [*(*(&v32 + 1) + 8 * i) startDate];
            v18 = [v16 metadata];
            v19 = [v18 objectForKeyedSubscript:@"ODCurareEvaluationAndReporting-MetadataDataKey"];
            v20 = v4[2](v4, v17, v19);

            if (v20)
            {
              v21 = [(ODCurareCoreDuetStorage *)v28 knowledgeStore];
              v37 = v16;
              v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
              v31 = v10;
              [v21 deleteObjects:v22 error:&v31];
              v23 = v31;

              ++v30;
              v10 = v23;
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v13);
    }

    else
    {
      v10 = 0;
      v30 = 0;
    }

    v9 = v26;
    v5 = v27;
    v11 = v30;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)deleteDataWithPredicate:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CFE1E0]);
  v6 = [(ODCurareCoreDuetStorage *)self stream];
  v28[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [v5 setEventStreams:v7];

  [v5 setLimit:100];
  [v5 setPredicate:v4];
  v8 = [(ODCurareCoreDuetStorage *)self knowledgeStore];
  v25 = 0;
  v9 = [v8 executeQuery:v5 error:&v25];
  v10 = v25;

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v9;
    v10 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v10)
    {
      v13 = *v22;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          if (v15)
          {
            v16 = [(ODCurareCoreDuetStorage *)self knowledgeStore];
            v26 = v15;
            v11 = 1;
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
            v20 = 0;
            [v16 deleteObjects:v17 error:&v20];
            v10 = v20;

            goto LABEL_13;
          }
        }

        v10 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)deleteMultipleDataWithPredicate:(id)a3
{
  v37[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CFE1E0]);
  v6 = [(ODCurareCoreDuetStorage *)self stream];
  v37[0] = v6;
  v7 = 0x277CBE000uLL;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  [v5 setEventStreams:v8];

  [v5 setLimit:100];
  [v5 setPredicate:v4];
  v9 = [(ODCurareCoreDuetStorage *)self knowledgeStore];
  v34 = 0;
  v10 = [v9 executeQuery:v5 error:&v34];
  v11 = v34;

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v26 = v5;
    v27 = v4;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v10;
    obj = v10;
    v13 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v11 = 0;
      v12 = 0;
      v15 = *v31;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          if (v17)
          {
            v18 = [(ODCurareCoreDuetStorage *)self knowledgeStore];
            v35 = v17;
            [*(v7 + 2656) arrayWithObjects:&v35 count:1];
            v19 = self;
            v21 = v20 = v7;
            v29 = v11;
            [v18 deleteObjects:v21 error:&v29];
            v22 = v29;

            v7 = v20;
            self = v19;

            ++v12;
            v11 = v22;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v14);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v5 = v26;
    v4 = v27;
    v10 = v25;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)deleteAllData
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CFE1E0]);
  v4 = [(ODCurareCoreDuetStorage *)self stream];
  v31[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [v3 setEventStreams:v5];

  [v3 setLimit:100];
  v6 = [(ODCurareCoreDuetStorage *)self knowledgeStore];
  v28 = 0;
  v7 = [v6 executeQuery:v3 error:&v28];
  v8 = v28;

  v9 = v8;
  if (!v8)
  {
    v21 = v7;
    v22 = v3;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v9 = 0;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if (v15)
          {
            v16 = [(ODCurareCoreDuetStorage *)self knowledgeStore];
            v29 = v15;
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
            v23 = v9;
            [v16 deleteObjects:v17 error:&v23];
            v18 = v23;

            v9 = v18;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v12);
    }

    else
    {
      v9 = 0;
    }

    v7 = v21;
    v3 = v22;
    v8 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8 == 0;
}

@end