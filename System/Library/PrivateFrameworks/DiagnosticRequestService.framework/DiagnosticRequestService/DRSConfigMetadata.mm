@interface DRSConfigMetadata
+ (BOOL)_isValidState:(unsigned __int8)a3 completionType:(unint64_t)a4 receivedDate:(id)a5 appliedDate:(id)a6 completedDate:(id)a7 completionDescription:(id)a8;
+ (id)_ON_CONTEXT_QUEUE_configMetadataForFilterPredicate:(id)a3 context:(id)a4 sortDescriptors:(id)a5 fetchLimit:(unint64_t)a6 errorOut:(id *)a7;
+ (id)_ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:(id)a3 context:(id)a4 errorOut:(id *)a5;
+ (unint64_t)_ON_CONTEXT_QUEUE_countForFilterPredicate:(id)a3 context:(id)a4 errorOut:(id *)a5;
- (BOOL)_updateContextWithMORepresentation:(id)a3 errorOut:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)_ON_CONTEXT_QUEUE_initWithConfigMetadataMO:(id)a3;
- (id)_ON_CONTEXT_QUEUE_moRepresentationInContext:(id)a3 createIfMissing:(BOOL)a4 errorOut:(id *)a5;
- (id)_uuidPredicate;
- (id)jsonDictionaryRepresentation;
@end

@implementation DRSConfigMetadata

+ (BOOL)_isValidState:(unsigned __int8)a3 completionType:(unint64_t)a4 receivedDate:(id)a5 appliedDate:(id)a6 completedDate:(id)a7 completionDescription:(id)a8
{
  v12 = a3;
  v28 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = v16;
  if (v13)
  {
    if ((v12 - 1) < 2 != (a4 != 4097))
    {
      if (v12 == 3 || !v16)
      {
        switch(v12)
        {
          case 3:
            if (!v14)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError();
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v25[0]) = 0;
              v19 = "Missing applied date";
              goto LABEL_9;
            }

            if (!v15)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError();
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v25[0]) = 0;
              v19 = "Complete state must have a non-nil completed date";
              goto LABEL_9;
            }

            if ([v14 compare:v13] == -1)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError();
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v25[0]) = 0;
              v19 = "Applied date < received date";
              goto LABEL_9;
            }

            if ([v15 compare:v14] == -1)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError();
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v25[0]) = 0;
              v19 = "Completed date > applied date";
              goto LABEL_9;
            }

            break;
          case 2:
            if (!v14)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError();
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v25[0]) = 0;
              v19 = "Missing applied date";
              goto LABEL_9;
            }

            if (v15)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError();
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v25[0]) = 0;
              v19 = "Active state must have a nil completed date";
              goto LABEL_9;
            }

            if ([v14 compare:v13] == -1)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError();
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v25[0]) = 0;
              v19 = "Applied date > received date";
              goto LABEL_9;
            }

            break;
          case 1:
            if (v14)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError();
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v25[0]) = 0;
              v19 = "Waiting state must have nil applied date";
              goto LABEL_9;
            }

            if (v15)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError();
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v25[0]) = 0;
              v19 = "Waiting state must have nil completed date";
              goto LABEL_9;
            }

            break;
        }

        v22 = 1;
        goto LABEL_14;
      }

      v18 = DPLogHandle_ConfigPersistedStoreError();
      if (os_signpost_enabled(v18))
      {
        LOWORD(v25[0]) = 0;
        v19 = "Waiting state must have nil completion description";
LABEL_9:
        v20 = v18;
        v21 = 2;
LABEL_12:
        _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidMetadataConfiguration", v19, v25, v21);
      }
    }

    else
    {
      v18 = DPLogHandle_ConfigPersistedStoreError();
      if (os_signpost_enabled(v18))
      {
        v25[0] = 67109376;
        v25[1] = v12;
        v26 = 2048;
        v27 = a4;
        v19 = "State %u is incompatible with completion type: %llu";
        v20 = v18;
        v21 = 18;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v18 = DPLogHandle_ConfigPersistedStoreError();
    if (os_signpost_enabled(v18))
    {
      LOWORD(v25[0]) = 0;
      v19 = "Missing received date";
      goto LABEL_9;
    }
  }

LABEL_13:

  v22 = 0;
LABEL_14:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_23;
  }

  if (v4 == self)
  {
    v47 = 1;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(DRSConfigMetadata *)self state];
    if (v7 != [(DRSConfigMetadata *)v6 state])
    {
      goto LABEL_21;
    }

    v8 = [(DRSConfigMetadata *)self completionType];
    if (v8 != [(DRSConfigMetadata *)v6 completionType])
    {
      goto LABEL_21;
    }

    v9 = [(DRSConfigMetadata *)self logTelemetry];
    if (v9 != [(DRSConfigMetadata *)v6 logTelemetry])
    {
      goto LABEL_21;
    }

    v10 = [(DRSConfigMetadata *)self reportToDecisionServer];
    if (v10 != [(DRSConfigMetadata *)v6 reportToDecisionServer])
    {
      goto LABEL_21;
    }

    v11 = [(DRSConfigMetadata *)self teamID];
    v12 = [(DRSConfigMetadata *)v6 teamID];
    v13 = [v11 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_21;
    }

    v14 = [(DRSConfigMetadata *)self configUUID];
    v15 = [(DRSConfigMetadata *)v6 configUUID];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = [(DRSConfigMetadata *)self receivedDate];
    v18 = [(DRSConfigMetadata *)v6 receivedDate];
    v19 = [v17 isEqualToDate:v18];

    if (!v19)
    {
      goto LABEL_21;
    }

    v20 = [(DRSConfigMetadata *)self appliedDate];
    v21 = [(DRSConfigMetadata *)v6 appliedDate];
    IsNil = _oneIsNil(v20, v21);

    if (IsNil)
    {
      goto LABEL_21;
    }

    v23 = [(DRSConfigMetadata *)self appliedDate];
    if (v23)
    {
      v24 = v23;
      v25 = [(DRSConfigMetadata *)self appliedDate];
      v26 = [(DRSConfigMetadata *)v6 appliedDate];
      v27 = [v25 isEqualToDate:v26];

      if (!v27)
      {
        goto LABEL_21;
      }
    }

    v28 = [(DRSConfigMetadata *)self completedDate];
    v29 = [(DRSConfigMetadata *)v6 completedDate];
    v30 = _oneIsNil(v28, v29);

    if (v30)
    {
      goto LABEL_21;
    }

    v31 = [(DRSConfigMetadata *)self completedDate];
    if (v31)
    {
      v32 = v31;
      v33 = [(DRSConfigMetadata *)self completedDate];
      v34 = [(DRSConfigMetadata *)v6 completedDate];
      v35 = [v33 isEqualToDate:v34];

      if (!v35)
      {
        goto LABEL_21;
      }
    }

    v36 = [(DRSConfigMetadata *)self completionDescription];
    v37 = [(DRSConfigMetadata *)v6 completionDescription];
    v38 = _oneIsNil(v36, v37);

    if (v38)
    {
      goto LABEL_21;
    }

    v39 = [(DRSConfigMetadata *)self completionDescription];
    if (v39)
    {
      v40 = v39;
      v41 = [(DRSConfigMetadata *)self completionDescription];
      v42 = [(DRSConfigMetadata *)v6 completionDescription];
      v43 = [v41 isEqualToString:v42];

      if (!v43)
      {
        goto LABEL_21;
      }
    }

    v44 = [(DRSConfigMetadata *)self config];
    v45 = [(DRSConfigMetadata *)v6 config];
    v46 = _oneIsNil(v44, v45);

    if ((v46 & 1) == 0)
    {
      v49 = [(DRSConfigMetadata *)self config];
      if (v49)
      {
        v50 = v49;
        v51 = [(DRSConfigMetadata *)self config];
        v52 = [(DRSConfigMetadata *)v6 config];
        v47 = [v51 isEqual:v52];
      }

      else
      {
        v47 = 1;
      }
    }

    else
    {
LABEL_21:
      v47 = 0;
    }
  }

  else
  {
LABEL_23:
    v47 = 0;
  }

LABEL_25:

  return v47 & 1;
}

- (id)_ON_CONTEXT_QUEUE_initWithConfigMetadataMO:(id)a3
{
  v4 = a3;
  v5 = [v4 configMO];
  v22 = v5;
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc(MEMORY[0x277D051F8]);
    v23 = [v7 ON_CONTEXT_QUEUE_initWithConfigMO:v6];
  }

  else
  {
    v23 = 0;
  }

  v21 = self;
  v20 = [v4 teamID];
  v8 = [v4 configUUID];
  v9 = [v4 state];
  v10 = [v4 completionType];
  v11 = [v4 receivedDate];
  v12 = [v4 appliedDate];
  v13 = [v4 completedDate];
  v14 = [v4 completionDescription];
  v15 = [v4 logTelemetry];
  v16 = [v4 reportToDecisionServer];

  BYTE1(v19) = v16;
  LOBYTE(v19) = v15;
  v17 = [(DRSConfigMetadata *)v21 initWithTeamID:v20 configUUID:v8 state:v9 completionType:v10 receivedDate:v11 appliedDate:v12 completedDate:v13 completionDescription:v14 config:v23 logTelemetry:v19 reportToDecisionServer:?];

  return v17;
}

- (id)_uuidPredicate
{
  v2 = MEMORY[0x277CCAC30];
  v3 = [(DRSConfigMetadata *)self configUUID];
  v4 = [v2 predicateWithFormat:@"configUUID == %@", v3];

  return v4;
}

+ (id)_ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:(id)a3 context:(id)a4 errorOut:(id *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = MEMORY[0x277CCAC30];
  v10 = a4;
  v11 = [v9 predicateWithFormat:@"configUUID == %@", v8];
  v12 = [a1 _ON_CONTEXT_QUEUE_configMetadataForFilterPredicate:v11 context:v10 sortDescriptors:0 fetchLimit:0 errorOut:a5];

  v13 = 0;
  if (!*a5 && v12)
  {
    if ([v12 count])
    {
      if ([v12 count] == 1)
      {
        v13 = [v12 firstObject];
        goto LABEL_10;
      }

      v14 = DPLogHandle_ConfigPersistedStoreError();
      if (os_signpost_enabled(v14))
      {
        *buf = 138543362;
        v22 = v8;
        _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataQueryFailed", "Found more than 1 ConfigMetadata with UUID %{public}@", buf, 0xCu);
      }

      v15 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20 = @"Duplicate UUIDs";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      *a5 = [v15 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v16];
    }

    v13 = 0;
  }

LABEL_10:

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_ON_CONTEXT_QUEUE_configMetadataForFilterPredicate:(id)a3 context:(id)a4 sortDescriptors:(id)a5 fetchLimit:(unint64_t)a6 errorOut:(id *)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a3;
  v14 = +[DRSConfigMetadataMO fetchRequest];
  [v14 setPredicate:v13];

  [v14 setSortDescriptors:v12];
  if (a6)
  {
    [v14 setFetchLimit:a6];
  }

  v23 = 0;
  v15 = [v11 executeFetchRequest:v14 error:&v23];
  v16 = v23;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    *a7 = v17;
    v19 = DPLogHandle_ConfigPersistedStoreError();
    if (os_signpost_enabled(v19))
    {
      *buf = 138543362;
      v25 = v17;
      _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataQueryFailed", "Failed due to error %{public}@", buf, 0xCu);
    }

    v20 = 0;
  }

  else
  {
    v20 = v15;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (unint64_t)_ON_CONTEXT_QUEUE_countForFilterPredicate:(id)a3 context:(id)a4 errorOut:(id *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = +[DRSConfigMetadataMO fetchRequest];
  [v9 setPredicate:v8];

  v17 = 0;
  v10 = [v7 countForFetchRequest:v9 error:&v17];

  v11 = v17;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    *a5 = v12;
    v14 = DPLogHandle_ConfigPersistedStoreError();
    if (os_signpost_enabled(v14))
    {
      *buf = 138543362;
      v19 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataCountQueryFailed", "Failed due to error %{public}@", buf, 0xCu);
    }

    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_ON_CONTEXT_QUEUE_moRepresentationInContext:(id)a3 createIfMissing:(BOOL)a4 errorOut:(id *)a5
{
  v6 = a4;
  v35[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_opt_class();
  v10 = [(DRSConfigMetadata *)self configUUID];
  v11 = [v9 _ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:v10 context:v8 errorOut:a5];

  if (*a5)
  {
    goto LABEL_2;
  }

  v13 = v11;
  if (!v11)
  {
    if (v6)
    {
      v13 = [[DRSConfigMetadataMO alloc] initWithContext:v8];
      if (v13)
      {
        goto LABEL_4;
      }

      v25 = MEMORY[0x277CCACA8];
      v26 = [(DRSConfigMetadata *)self configUUID];
      v27 = [v25 stringWithFormat:@"Could not create DRSConfigMetadataMO instance for %@", v26];

      v28 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA450];
      v35[0] = v27;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      *a5 = [v28 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v29];

      v30 = DPLogHandle_ConfigPersistedStoreError();
      if (os_signpost_enabled(v30))
      {
        v31 = [(DRSConfigMetadata *)self configUUID];
        *buf = 138543362;
        v33 = v31;
        _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataQueryFailed", "Could not initalize DRSConfigMetadataMO instance for %{public}@", buf, 0xCu);
      }
    }

    v11 = 0;
LABEL_2:
    v12 = 0;
    goto LABEL_8;
  }

LABEL_4:
  v14 = [(DRSConfigMetadata *)self teamID];
  [(DRSConfigMetadataMO *)v13 setTeamID:v14];

  v15 = [(DRSConfigMetadata *)self configUUID];
  [(DRSConfigMetadataMO *)v13 setConfigUUID:v15];

  [(DRSConfigMetadataMO *)v13 setState:[(DRSConfigMetadata *)self state]];
  [(DRSConfigMetadataMO *)v13 setCompletionType:[(DRSConfigMetadata *)self completionType]];
  v16 = [(DRSConfigMetadata *)self receivedDate];
  [(DRSConfigMetadataMO *)v13 setReceivedDate:v16];

  v17 = [(DRSConfigMetadata *)self appliedDate];
  [(DRSConfigMetadataMO *)v13 setAppliedDate:v17];

  v18 = [(DRSConfigMetadata *)self completedDate];
  [(DRSConfigMetadataMO *)v13 setCompletedDate:v18];

  v19 = [(DRSConfigMetadata *)self completionDescription];
  [(DRSConfigMetadataMO *)v13 setCompletionDescription:v19];

  [(DRSConfigMetadataMO *)v13 setLogTelemetry:[(DRSConfigMetadata *)self logTelemetry]];
  [(DRSConfigMetadataMO *)v13 setReportToDecisionServer:[(DRSConfigMetadata *)self reportToDecisionServer]];
  if (!v11)
  {
    v20 = [(DRSConfigMetadata *)self config];

    if (v20)
    {
      v21 = [(DRSConfigMetadata *)self config];
      v22 = [v21 ON_CONTEXT_QUEUE_configMOInContext:v8];

      [(DRSConfigMetadataMO *)v13 setConfigMO:v22];
    }
  }

  v11 = v13;
  v12 = v11;
LABEL_8:

  v23 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)_updateContextWithMORepresentation:(id)a3 errorOut:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__DRSConfigMetadata__updateContextWithMORepresentation_errorOut___block_invoke;
  v10[3] = &unk_27899ED80;
  v10[4] = self;
  v7 = v6;
  v11 = v7;
  v12 = &v14;
  v13 = &v20;
  [v7 performBlockAndWait:v10];
  if (a4)
  {
    *a4 = v15[5];
  }

  v8 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __65__DRSConfigMetadata__updateContextWithMORepresentation_errorOut___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 _ON_CONTEXT_QUEUE_moRepresentationInContext:v3 createIfMissing:1 errorOut:&v7];
  v5 = v7;
  v6 = v7;
  objc_storeStrong((*(a1[6] + 8) + 40), v5);
  if (v4)
  {
    *(*(a1[7] + 8) + 24) = 1;
  }
}

- (id)jsonDictionaryRepresentation
{
  v31[6] = *MEMORY[0x277D85DE8];
  v30[0] = @"teamID";
  v29 = [(DRSConfigMetadata *)self teamID];
  v31[0] = v29;
  v30[1] = @"configUUID";
  v3 = [(DRSConfigMetadata *)self configUUID];
  v4 = [v3 UUIDString];
  v31[1] = v4;
  v30[2] = @"receivedDate";
  v5 = MEMORY[0x277CCABB0];
  v6 = [(DRSConfigMetadata *)self receivedDate];
  [v6 timeIntervalSince1970];
  v7 = [v5 numberWithDouble:?];
  v31[2] = v7;
  v30[3] = @"state";
  [(DRSConfigMetadata *)self state];
  v8 = DRConfigStringForState();
  v31[3] = v8;
  v30[4] = @"logTelemetry";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSConfigMetadata logTelemetry](self, "logTelemetry")}];
  v31[4] = v9;
  v30[5] = @"reportToDPDS";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSConfigMetadata reportToDecisionServer](self, "reportToDecisionServer")}];
  v31[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:6];
  v12 = [v11 mutableCopy];

  v13 = [(DRSConfigMetadata *)self appliedDate];

  if (v13)
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = [(DRSConfigMetadata *)self appliedDate];
    [v15 timeIntervalSince1970];
    v16 = [v14 numberWithDouble:?];
    [v12 setObject:v16 forKeyedSubscript:@"appliedDate"];
  }

  v17 = [(DRSConfigMetadata *)self completedDate];

  if (v17)
  {
    v18 = MEMORY[0x277CCABB0];
    v19 = [(DRSConfigMetadata *)self completedDate];
    [v19 timeIntervalSince1970];
    v20 = [v18 numberWithDouble:?];
    [v12 setObject:v20 forKeyedSubscript:@"completedDate"];
  }

  if ([(DRSConfigMetadata *)self completionType]!= 4097)
  {
    v21 = DRConfigCompletionTypeString([(DRSConfigMetadata *)self completionType]);
    [v12 setObject:v21 forKeyedSubscript:@"completionType"];

    v22 = [(DRSConfigMetadata *)self completionDescription];

    if (v22)
    {
      v23 = [(DRSConfigMetadata *)self completionDescription];
      [v12 setObject:v23 forKeyedSubscript:@"completionDescription"];
    }
  }

  v24 = [(DRSConfigMetadata *)self config];

  if (v24)
  {
    v25 = [(DRSConfigMetadata *)self config];
    v26 = [v25 jsonDictRepresentation];
    [v12 setObject:v26 forKeyedSubscript:@"config"];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v12;
}

@end