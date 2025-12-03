@interface DRSConfigMetadata
+ (BOOL)_isValidState:(unsigned __int8)state completionType:(unint64_t)type receivedDate:(id)date appliedDate:(id)appliedDate completedDate:(id)completedDate completionDescription:(id)description;
+ (id)_ON_CONTEXT_QUEUE_configMetadataForFilterPredicate:(id)predicate context:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out;
+ (id)_ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:(id)d context:(id)context errorOut:(id *)out;
+ (unint64_t)_ON_CONTEXT_QUEUE_countForFilterPredicate:(id)predicate context:(id)context errorOut:(id *)out;
- (BOOL)_updateContextWithMORepresentation:(id)representation errorOut:(id *)out;
- (BOOL)isEqual:(id)equal;
- (id)_ON_CONTEXT_QUEUE_initWithConfigMetadataMO:(id)o;
- (id)_ON_CONTEXT_QUEUE_moRepresentationInContext:(id)context createIfMissing:(BOOL)missing errorOut:(id *)out;
- (id)_uuidPredicate;
- (id)jsonDictionaryRepresentation;
@end

@implementation DRSConfigMetadata

+ (BOOL)_isValidState:(unsigned __int8)state completionType:(unint64_t)type receivedDate:(id)date appliedDate:(id)appliedDate completedDate:(id)completedDate completionDescription:(id)description
{
  stateCopy = state;
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  appliedDateCopy = appliedDate;
  completedDateCopy = completedDate;
  descriptionCopy = description;
  v17 = descriptionCopy;
  if (dateCopy)
  {
    if ((stateCopy - 1) < 2 != (type != 4097))
    {
      if (stateCopy == 3 || !descriptionCopy)
      {
        switch(stateCopy)
        {
          case 3:
            if (!appliedDateCopy)
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

            if (!completedDateCopy)
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

            if ([appliedDateCopy compare:dateCopy] == -1)
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

            if ([completedDateCopy compare:appliedDateCopy] == -1)
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
            if (!appliedDateCopy)
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

            if (completedDateCopy)
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

            if ([appliedDateCopy compare:dateCopy] == -1)
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
            if (appliedDateCopy)
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

            if (completedDateCopy)
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
        v25[1] = stateCopy;
        v26 = 2048;
        typeCopy = type;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_23;
  }

  if (equalCopy == self)
  {
    v47 = 1;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    state = [(DRSConfigMetadata *)self state];
    if (state != [(DRSConfigMetadata *)v6 state])
    {
      goto LABEL_21;
    }

    completionType = [(DRSConfigMetadata *)self completionType];
    if (completionType != [(DRSConfigMetadata *)v6 completionType])
    {
      goto LABEL_21;
    }

    logTelemetry = [(DRSConfigMetadata *)self logTelemetry];
    if (logTelemetry != [(DRSConfigMetadata *)v6 logTelemetry])
    {
      goto LABEL_21;
    }

    reportToDecisionServer = [(DRSConfigMetadata *)self reportToDecisionServer];
    if (reportToDecisionServer != [(DRSConfigMetadata *)v6 reportToDecisionServer])
    {
      goto LABEL_21;
    }

    teamID = [(DRSConfigMetadata *)self teamID];
    teamID2 = [(DRSConfigMetadata *)v6 teamID];
    v13 = [teamID isEqualToString:teamID2];

    if (!v13)
    {
      goto LABEL_21;
    }

    configUUID = [(DRSConfigMetadata *)self configUUID];
    configUUID2 = [(DRSConfigMetadata *)v6 configUUID];
    v16 = [configUUID isEqual:configUUID2];

    if (!v16)
    {
      goto LABEL_21;
    }

    receivedDate = [(DRSConfigMetadata *)self receivedDate];
    receivedDate2 = [(DRSConfigMetadata *)v6 receivedDate];
    v19 = [receivedDate isEqualToDate:receivedDate2];

    if (!v19)
    {
      goto LABEL_21;
    }

    appliedDate = [(DRSConfigMetadata *)self appliedDate];
    appliedDate2 = [(DRSConfigMetadata *)v6 appliedDate];
    IsNil = _oneIsNil(appliedDate, appliedDate2);

    if (IsNil)
    {
      goto LABEL_21;
    }

    appliedDate3 = [(DRSConfigMetadata *)self appliedDate];
    if (appliedDate3)
    {
      v24 = appliedDate3;
      appliedDate4 = [(DRSConfigMetadata *)self appliedDate];
      appliedDate5 = [(DRSConfigMetadata *)v6 appliedDate];
      v27 = [appliedDate4 isEqualToDate:appliedDate5];

      if (!v27)
      {
        goto LABEL_21;
      }
    }

    completedDate = [(DRSConfigMetadata *)self completedDate];
    completedDate2 = [(DRSConfigMetadata *)v6 completedDate];
    v30 = _oneIsNil(completedDate, completedDate2);

    if (v30)
    {
      goto LABEL_21;
    }

    completedDate3 = [(DRSConfigMetadata *)self completedDate];
    if (completedDate3)
    {
      v32 = completedDate3;
      completedDate4 = [(DRSConfigMetadata *)self completedDate];
      completedDate5 = [(DRSConfigMetadata *)v6 completedDate];
      v35 = [completedDate4 isEqualToDate:completedDate5];

      if (!v35)
      {
        goto LABEL_21;
      }
    }

    completionDescription = [(DRSConfigMetadata *)self completionDescription];
    completionDescription2 = [(DRSConfigMetadata *)v6 completionDescription];
    v38 = _oneIsNil(completionDescription, completionDescription2);

    if (v38)
    {
      goto LABEL_21;
    }

    completionDescription3 = [(DRSConfigMetadata *)self completionDescription];
    if (completionDescription3)
    {
      v40 = completionDescription3;
      completionDescription4 = [(DRSConfigMetadata *)self completionDescription];
      completionDescription5 = [(DRSConfigMetadata *)v6 completionDescription];
      v43 = [completionDescription4 isEqualToString:completionDescription5];

      if (!v43)
      {
        goto LABEL_21;
      }
    }

    config = [(DRSConfigMetadata *)self config];
    config2 = [(DRSConfigMetadata *)v6 config];
    v46 = _oneIsNil(config, config2);

    if ((v46 & 1) == 0)
    {
      config3 = [(DRSConfigMetadata *)self config];
      if (config3)
      {
        v50 = config3;
        config4 = [(DRSConfigMetadata *)self config];
        config5 = [(DRSConfigMetadata *)v6 config];
        v47 = [config4 isEqual:config5];
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

- (id)_ON_CONTEXT_QUEUE_initWithConfigMetadataMO:(id)o
{
  oCopy = o;
  configMO = [oCopy configMO];
  v22 = configMO;
  if (configMO)
  {
    v6 = configMO;
    v7 = objc_alloc(MEMORY[0x277D051F8]);
    v23 = [v7 ON_CONTEXT_QUEUE_initWithConfigMO:v6];
  }

  else
  {
    v23 = 0;
  }

  selfCopy = self;
  teamID = [oCopy teamID];
  configUUID = [oCopy configUUID];
  state = [oCopy state];
  completionType = [oCopy completionType];
  receivedDate = [oCopy receivedDate];
  appliedDate = [oCopy appliedDate];
  completedDate = [oCopy completedDate];
  completionDescription = [oCopy completionDescription];
  logTelemetry = [oCopy logTelemetry];
  reportToDecisionServer = [oCopy reportToDecisionServer];

  BYTE1(v19) = reportToDecisionServer;
  LOBYTE(v19) = logTelemetry;
  v17 = [(DRSConfigMetadata *)selfCopy initWithTeamID:teamID configUUID:configUUID state:state completionType:completionType receivedDate:receivedDate appliedDate:appliedDate completedDate:completedDate completionDescription:completionDescription config:v23 logTelemetry:v19 reportToDecisionServer:?];

  return v17;
}

- (id)_uuidPredicate
{
  v2 = MEMORY[0x277CCAC30];
  configUUID = [(DRSConfigMetadata *)self configUUID];
  v4 = [v2 predicateWithFormat:@"configUUID == %@", configUUID];

  return v4;
}

+ (id)_ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:(id)d context:(id)context errorOut:(id *)out
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = MEMORY[0x277CCAC30];
  contextCopy = context;
  dCopy = [v9 predicateWithFormat:@"configUUID == %@", dCopy];
  v12 = [self _ON_CONTEXT_QUEUE_configMetadataForFilterPredicate:dCopy context:contextCopy sortDescriptors:0 fetchLimit:0 errorOut:out];

  firstObject = 0;
  if (!*out && v12)
  {
    if ([v12 count])
    {
      if ([v12 count] == 1)
      {
        firstObject = [v12 firstObject];
        goto LABEL_10;
      }

      v14 = DPLogHandle_ConfigPersistedStoreError();
      if (os_signpost_enabled(v14))
      {
        *buf = 138543362;
        v22 = dCopy;
        _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataQueryFailed", "Found more than 1 ConfigMetadata with UUID %{public}@", buf, 0xCu);
      }

      v15 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20 = @"Duplicate UUIDs";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      *out = [v15 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v16];
    }

    firstObject = 0;
  }

LABEL_10:

  v17 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)_ON_CONTEXT_QUEUE_configMetadataForFilterPredicate:(id)predicate context:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  v14 = +[DRSConfigMetadataMO fetchRequest];
  [v14 setPredicate:predicateCopy];

  [v14 setSortDescriptors:descriptorsCopy];
  if (limit)
  {
    [v14 setFetchLimit:limit];
  }

  v23 = 0;
  v15 = [contextCopy executeFetchRequest:v14 error:&v23];
  v16 = v23;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    *out = v17;
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

+ (unint64_t)_ON_CONTEXT_QUEUE_countForFilterPredicate:(id)predicate context:(id)context errorOut:(id *)out
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  predicateCopy = predicate;
  v9 = +[DRSConfigMetadataMO fetchRequest];
  [v9 setPredicate:predicateCopy];

  v17 = 0;
  v10 = [contextCopy countForFetchRequest:v9 error:&v17];

  v11 = v17;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    *out = v12;
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

- (id)_ON_CONTEXT_QUEUE_moRepresentationInContext:(id)context createIfMissing:(BOOL)missing errorOut:(id *)out
{
  missingCopy = missing;
  v35[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v9 = objc_opt_class();
  configUUID = [(DRSConfigMetadata *)self configUUID];
  v11 = [v9 _ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:configUUID context:contextCopy errorOut:out];

  if (*out)
  {
    goto LABEL_2;
  }

  v13 = v11;
  if (!v11)
  {
    if (missingCopy)
    {
      v13 = [[DRSConfigMetadataMO alloc] initWithContext:contextCopy];
      if (v13)
      {
        goto LABEL_4;
      }

      v25 = MEMORY[0x277CCACA8];
      configUUID2 = [(DRSConfigMetadata *)self configUUID];
      v27 = [v25 stringWithFormat:@"Could not create DRSConfigMetadataMO instance for %@", configUUID2];

      v28 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA450];
      v35[0] = v27;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      *out = [v28 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v29];

      v30 = DPLogHandle_ConfigPersistedStoreError();
      if (os_signpost_enabled(v30))
      {
        configUUID3 = [(DRSConfigMetadata *)self configUUID];
        *buf = 138543362;
        v33 = configUUID3;
        _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataQueryFailed", "Could not initalize DRSConfigMetadataMO instance for %{public}@", buf, 0xCu);
      }
    }

    v11 = 0;
LABEL_2:
    v12 = 0;
    goto LABEL_8;
  }

LABEL_4:
  teamID = [(DRSConfigMetadata *)self teamID];
  [(DRSConfigMetadataMO *)v13 setTeamID:teamID];

  configUUID4 = [(DRSConfigMetadata *)self configUUID];
  [(DRSConfigMetadataMO *)v13 setConfigUUID:configUUID4];

  [(DRSConfigMetadataMO *)v13 setState:[(DRSConfigMetadata *)self state]];
  [(DRSConfigMetadataMO *)v13 setCompletionType:[(DRSConfigMetadata *)self completionType]];
  receivedDate = [(DRSConfigMetadata *)self receivedDate];
  [(DRSConfigMetadataMO *)v13 setReceivedDate:receivedDate];

  appliedDate = [(DRSConfigMetadata *)self appliedDate];
  [(DRSConfigMetadataMO *)v13 setAppliedDate:appliedDate];

  completedDate = [(DRSConfigMetadata *)self completedDate];
  [(DRSConfigMetadataMO *)v13 setCompletedDate:completedDate];

  completionDescription = [(DRSConfigMetadata *)self completionDescription];
  [(DRSConfigMetadataMO *)v13 setCompletionDescription:completionDescription];

  [(DRSConfigMetadataMO *)v13 setLogTelemetry:[(DRSConfigMetadata *)self logTelemetry]];
  [(DRSConfigMetadataMO *)v13 setReportToDecisionServer:[(DRSConfigMetadata *)self reportToDecisionServer]];
  if (!v11)
  {
    config = [(DRSConfigMetadata *)self config];

    if (config)
    {
      config2 = [(DRSConfigMetadata *)self config];
      v22 = [config2 ON_CONTEXT_QUEUE_configMOInContext:contextCopy];

      [(DRSConfigMetadataMO *)v13 setConfigMO:v22];
    }
  }

  v11 = v13;
  v12 = v11;
LABEL_8:

  v23 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)_updateContextWithMORepresentation:(id)representation errorOut:(id *)out
{
  representationCopy = representation;
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
  v7 = representationCopy;
  v11 = v7;
  v12 = &v14;
  v13 = &v20;
  [v7 performBlockAndWait:v10];
  if (out)
  {
    *out = v15[5];
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
  teamID = [(DRSConfigMetadata *)self teamID];
  v31[0] = teamID;
  v30[1] = @"configUUID";
  configUUID = [(DRSConfigMetadata *)self configUUID];
  uUIDString = [configUUID UUIDString];
  v31[1] = uUIDString;
  v30[2] = @"receivedDate";
  v5 = MEMORY[0x277CCABB0];
  receivedDate = [(DRSConfigMetadata *)self receivedDate];
  [receivedDate timeIntervalSince1970];
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

  appliedDate = [(DRSConfigMetadata *)self appliedDate];

  if (appliedDate)
  {
    v14 = MEMORY[0x277CCABB0];
    appliedDate2 = [(DRSConfigMetadata *)self appliedDate];
    [appliedDate2 timeIntervalSince1970];
    v16 = [v14 numberWithDouble:?];
    [v12 setObject:v16 forKeyedSubscript:@"appliedDate"];
  }

  completedDate = [(DRSConfigMetadata *)self completedDate];

  if (completedDate)
  {
    v18 = MEMORY[0x277CCABB0];
    completedDate2 = [(DRSConfigMetadata *)self completedDate];
    [completedDate2 timeIntervalSince1970];
    v20 = [v18 numberWithDouble:?];
    [v12 setObject:v20 forKeyedSubscript:@"completedDate"];
  }

  if ([(DRSConfigMetadata *)self completionType]!= 4097)
  {
    v21 = DRConfigCompletionTypeString([(DRSConfigMetadata *)self completionType]);
    [v12 setObject:v21 forKeyedSubscript:@"completionType"];

    completionDescription = [(DRSConfigMetadata *)self completionDescription];

    if (completionDescription)
    {
      completionDescription2 = [(DRSConfigMetadata *)self completionDescription];
      [v12 setObject:completionDescription2 forKeyedSubscript:@"completionDescription"];
    }
  }

  config = [(DRSConfigMetadata *)self config];

  if (config)
  {
    config2 = [(DRSConfigMetadata *)self config];
    jsonDictRepresentation = [config2 jsonDictRepresentation];
    [v12 setObject:jsonDictRepresentation forKeyedSubscript:@"config"];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v12;
}

@end