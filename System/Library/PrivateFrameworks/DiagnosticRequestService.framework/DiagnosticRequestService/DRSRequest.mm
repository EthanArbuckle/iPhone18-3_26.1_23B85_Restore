@interface DRSRequest
+ (BOOL)_requestMOHasRequiredFields_ON_MOC_QUEUE:(id)e;
+ (BOOL)cleanRequestRecordsFromPersistentContainer:(id)container removeFiles:(BOOL)files removeRecord:(BOOL)record matchingPredicate:(id)predicate errorOut:(id *)out;
+ (BOOL)cullOldRequestRecordsFromPersistentContainer:(id)container currentDate:(id)date errorOut:(id *)out;
+ (BOOL)isExpeditedTeamID:(id)d issueCategory:(id)category;
+ (BOOL)unblockStrandedUploadingRecordsFromPersistentContainer:(id)container errorOut:(id *)out;
+ (id)_requestWithRequestMO_ON_MOC_QUEUE:(id)e;
+ (id)leastRecentDateFirstSortDescriptor;
+ (id)migrateRequestDataStoreAtPath:(id)path errorOut:(id *)out;
+ (id)mostRecentDateFirstSortDescriptor;
+ (id)requestForMessage:(id)message;
+ (id)requestsForFilterPredicate:(id)predicate context:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out;
+ (id)unreportedTerminalRequestsFromContext:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out;
+ (id)uploadedBytesSinceDate:(id)date context:(id)context errorOut:(id *)out;
+ (unint64_t)requestCountForFilterPredicate:(id)predicate context:(id)context fetchLimit:(unint64_t)limit errorOut:(id *)out;
- (BOOL)_addContextMetadataKey:(id)key value:(id)value expectedClass:(Class)class errorOut:(id *)out;
- (BOOL)_deleteLogs;
- (BOOL)_markLogsAsPurgeableWithUrgencyWithDeleteFallback:(unint64_t)fallback;
- (BOOL)_performPostClientLogWork:(id)work dampeningOutcome:(unint64_t)outcome isLogUploadEnabled:(BOOL)enabled;
- (BOOL)_populateLogsArray_ON_MOC_QUEUE:(id)e;
- (BOOL)_updateLogFileStateForTransitionFromPreviousState:(unint64_t)state;
- (BOOL)_updateLogStateToExpectedState:(unsigned __int8)state;
- (BOOL)addContextMetadataKey:(id)key numberValue:(id)value errorOut:(id *)out;
- (BOOL)addContextMetadataKey:(id)key stringValue:(id)value errorOut:(id *)out;
- (BOOL)hasUploadableContent;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (BOOL)isNonPurgeableInFlightUntilUploadAttempt;
- (BOOL)performOnReceiptWork:(id)work dampeningOutcome:(unint64_t)outcome;
- (BOOL)updateToState:(unint64_t)state errorDescription:(id)description errorOut:(id *)out;
- (BOOL)uploadStarted;
- (DRSDecisionServerBatchRequest)pbBatchInstance;
- (DRSRequest)initWithXPCDict:(id)dict;
- (NSDictionary)metadataDictionary;
- (NSNumber)isLikeCarryDevice;
- (NSString)automatedDeviceGroup;
- (NSString)debugDescription;
- (NSString)decisionServerDecisionString;
- (NSString)hwModel;
- (NSString)requestOutcomeString;
- (NSString)requestStateString;
- (id)_initWithRequestMO_ON_MOC_QUEUE:(id)e;
- (id)_logsDescription;
- (id)_processSubmittedLogInfo:(id)info workingDirectory:(id)directory;
- (id)fileAssets;
- (id)fileNames;
- (id)filePaths;
- (id)fileURLs;
- (id)jsonCompatibleDictionaryRepresentationVerbose:(BOOL)verbose;
- (id)logPath;
- (id)newRequestMOInContext_ON_MOC_QUEUE:(id)e;
- (id)protoFileDescriptions;
- (id)protoRequestDescription;
- (id)recordRepresentation;
- (id)uploadRequest;
- (unint64_t)logSizeLimitBytes;
- (unint64_t)totalLogSizeBytes;
- (unsigned)requestOutcome;
- (void)_addLogMOs:(id)os;
- (void)_configureRequestMO:(id)o;
- (void)addAutomatedDeviceGroupContext;
- (void)addHWModelContextMetadata;
- (void)addIsLikelyCarryContextMetadata;
- (void)makeTerminalDueToMissingLog;
- (void)updateContextWithRequest_ON_MOC_QUEUE:(id)e;
- (void)uploadAbortedDueToLogSize;
- (void)uploadCompleteWithError:(id)error ckOperationID:(id)d ckRecordID:(id)iD;
- (void)uploadDeniedByDecisionServerWithReason:(id)reason;
- (void)uploadFailedDueToReason:(id)reason ckOperationID:(id)d;
@end

@implementation DRSRequest

- (id)logPath
{
  logs = [(DRSRequest *)self logs];
  v4 = [logs count];

  if (v4 == 1)
  {
    logs2 = [(DRSRequest *)self logs];
    firstObject = [logs2 firstObject];
    path = [firstObject path];
  }

  else
  {
    path = 0;
  }

  return path;
}

- (unint64_t)totalLogSizeBytes
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  logs = [(DRSRequest *)self logs];
  v3 = [logs countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(logs);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) size];
      }

      v4 = [logs countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unint64_t)logSizeLimitBytes
{
  v2 = +[DRSSystemProfile sharedInstance];
  uploadSessionUploadCapBytes = [v2 uploadSessionUploadCapBytes];

  return uploadSessionUploadCapBytes;
}

- (NSString)decisionServerDecisionString
{
  decisionServerDecision = [(DRSRequest *)self decisionServerDecision];
  if (decisionServerDecision > 2)
  {
    return @"Unknown";
  }

  else
  {
    return &off_27899EE50[decisionServerDecision]->isa;
  }
}

- (unsigned)requestOutcome
{
  requestState = [(DRSRequest *)self requestState];

  return DRSRequestOutcomeForState(requestState);
}

- (BOOL)_markLogsAsPurgeableWithUrgencyWithDeleteFallback:(unint64_t)fallback
{
  v55 = *MEMORY[0x277D85DE8];
  if ([(DRSRequest *)self hasUploadableContent])
  {
    v4 = DPLogHandle_LogManagement();
    if (os_signpost_enabled(v4))
    {
      requestID = [(DRSRequest *)self requestID];
      v6 = requestID;
      switch(fallback)
      {
        case 0x200uLL:
          v7 = @"Low";
          break;
        case 0x800uLL:
          v7 = @"High";
          break;
        case 0x400uLL:
          v7 = @"Medium";
          break;
        default:
          v7 = @"Unknown";
          break;
      }

      *buf = 138543618;
      v47 = requestID;
      v48 = 2114;
      v49 = v7;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MarkingCasePurgeability", "Request %{public}@: Marking files as purgeable with urgency %{public}@", buf, 0x16u);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    logs = [(DRSRequest *)self logs];
    v10 = [logs countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v43;
      *&v11 = 138543874;
      v38 = v11;
LABEL_14:
      v14 = 0;
      while (1)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(logs);
        }

        path = [*(*(&v42 + 1) + 8 * v14) path];
        v41 = 0;
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v17 = [defaultManager fileExistsAtPath:path isDirectory:&v41];

        if (v17)
        {
          if (v41 == 1)
          {
            v18 = DPLogHandle_LogManagementError();
            if (os_signpost_enabled(v18))
            {
              requestID2 = [(DRSRequest *)self requestID];
              *buf = 138543618;
              v47 = requestID2;
              v48 = 2114;
              v49 = path;
              _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PurgeabilityFailure", "%{public}@: File %{public}@ is a directory", buf, 0x16u);
            }

            v20 = DPLogHandle_LogManagementError();
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_41;
            }

            requestID3 = [(DRSRequest *)self requestID];
            *buf = 138543618;
            v47 = requestID3;
            v48 = 2114;
            v49 = path;
            _os_log_fault_impl(&dword_232906000, v20, OS_LOG_TYPE_FAULT, "ERROR: %{public}@: File %{public}@ is a directory", buf, 0x16u);
            goto LABEL_40;
          }

          v26 = open([(__CFString *)path UTF8String], 0);
          if ((v26 & 0x80000000) == 0)
          {
            v27 = v26;
            v40 = fallback | 0x10005;
            v28 = ffsctl(v26, 0xC0084A44uLL, &v40, 0);
            close(v27);
            if (v28)
            {
              v31 = DPLogHandle_RequestError();
              if (os_signpost_enabled(v31))
              {
                requestID4 = [(DRSRequest *)self requestID];
                switch(fallback)
                {
                  case 0x200uLL:
                    v33 = @"Low";
                    break;
                  case 0x800uLL:
                    v33 = @"High";
                    break;
                  case 0x400uLL:
                    v33 = @"Medium";
                    break;
                  default:
                    v33 = @"Unknown";
                    break;
                }

                v34 = __error();
                v35 = strerror(*v34);
                *buf = 138544130;
                v47 = requestID4;
                v48 = 2114;
                v49 = path;
                v50 = 2114;
                v51 = v33;
                v52 = 2082;
                v53 = v35;
                _os_signpost_emit_with_name_impl(&dword_232906000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MarkingLogFilePurgeabilityFailure", "Request %{public}@: Failed to mark '%{public}@' as purgeable with urgency %{public}@ due to error: %{public}s. Attempting to delete to prevent accumulating files.", buf, 0x2Au);
              }

              [(DRSRequest *)self _deleteLogs];
              v8 = 0;
              goto LABEL_54;
            }

            v20 = DPLogHandle_Request();
            if (!os_signpost_enabled(v20))
            {
              goto LABEL_41;
            }

            requestID5 = [(DRSRequest *)self requestID];
            requestID3 = requestID5;
            switch(fallback)
            {
              case 0x200uLL:
                v30 = @"Low";
                break;
              case 0x800uLL:
                v30 = @"High";
                break;
              case 0x400uLL:
                v30 = @"Medium";
                break;
              default:
                v30 = @"Unknown";
                break;
            }

            *buf = v38;
            v47 = requestID5;
            v48 = 2114;
            v49 = path;
            v50 = 2114;
            v51 = v30;
            v22 = v20;
            v23 = "MarkedLogFilePurgeability";
            v24 = "Request %{public}@: Marked '%{public}@' as purgeable with urgency %{public}@";
            v25 = 32;
            goto LABEL_39;
          }

          v20 = DPLogHandle_RequestError();
          if (os_signpost_enabled(v20))
          {
            requestID3 = [(DRSRequest *)self requestID];
            *buf = 138543618;
            v47 = requestID3;
            v48 = 2114;
            v49 = path;
            v22 = v20;
            v23 = "OpenFileFailure";
            v24 = "Request %{public}@: Failed to open file with path %{public}@ to tag it as purgeable";
LABEL_25:
            v25 = 22;
LABEL_39:
            _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v23, v24, buf, v25);
LABEL_40:
          }
        }

        else
        {
          v20 = DPLogHandle_LogManagementError();
          if (os_signpost_enabled(v20))
          {
            requestID3 = [(DRSRequest *)self requestID];
            *buf = 138543618;
            v47 = requestID3;
            v48 = 2114;
            v49 = path;
            v22 = v20;
            v23 = "PurgeabilityFailure";
            v24 = "%{public}@: File %{public}@ does not exist";
            goto LABEL_25;
          }
        }

LABEL_41:

        if (v12 == ++v14)
        {
          v12 = [logs countByEnumeratingWithState:&v42 objects:v54 count:16];
          if (v12)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }

    v8 = 1;
LABEL_54:
  }

  else
  {
    v8 = 1;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_logsDescription
{
  v21 = *MEMORY[0x277D85DE8];
  logs = [(DRSRequest *)self logs];
  v4 = [logs count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    logs2 = [(DRSRequest *)self logs];
    v7 = [logs2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      v10 = 1;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(logs2);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) debugDescription];
          v13 = v12;
          if (v10)
          {
            [(__CFString *)v5 appendString:v12];
          }

          else
          {
            [(__CFString *)v5 appendFormat:@", %@", v12];
          }

          v10 = 0;
        }

        v8 = [logs2 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v10 = 0;
      }

      while (v8);
    }
  }

  else
  {
    v5 = @"No logs";
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSString)debugDescription
{
  v32 = objc_autoreleasePoolPush();
  totalLogSizeBytes = [(DRSRequest *)self totalLogSizeBytes];
  if (totalLogSizeBytes)
  {
    v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%zuB", totalLogSizeBytes];
  }

  else
  {
    v36 = @"<No cached log size>";
  }

  v28 = objc_alloc(MEMORY[0x277CCACA8]);
  build = [(DRSRequest *)self build];
  requestID = [(DRSRequest *)self requestID];
  uUIDString = [requestID UUIDString];
  ckRecordID = [(DRSRequest *)self ckRecordID];
  if (ckRecordID)
  {
    v4 = MEMORY[0x277CCACA8];
    ckRecordID2 = [(DRSRequest *)self ckRecordID];
    v33 = [v4 stringWithFormat:@"CKRecordID: %@", ckRecordID2];
  }

  else
  {
    v33 = @"-";
  }

  requestStateString = [(DRSRequest *)self requestStateString];
  errorDescription = [(DRSRequest *)self errorDescription];
  v27 = errorDescription;
  v6 = @"<No error>";
  if (errorDescription)
  {
    v6 = errorDescription;
  }

  v25 = v6;
  requestType = [(DRSRequest *)self requestType];
  uploadAttemptCount = [(DRSRequest *)self uploadAttemptCount];
  hasBeenCountedByTelemetry = [(DRSRequest *)self hasBeenCountedByTelemetry];
  v8 = &stru_2847F1D58;
  if (hasBeenCountedByTelemetry)
  {
    v8 = @"(Reported to telemetry)";
  }

  v22 = v8;
  decisionServerDecisionString = [(DRSRequest *)self decisionServerDecisionString];
  if ([(DRSRequest *)self isExpedited])
  {
    v10 = @"ExpeditedUpload";
  }

  else
  {
    v10 = @"NormalUpload";
  }

  teamID = [(DRSRequest *)self teamID];
  issueCategory = [(DRSRequest *)self issueCategory];
  issueDescription = [(DRSRequest *)self issueDescription];
  _logsDescription = [(DRSRequest *)self _logsDescription];
  logType = [(DRSRequest *)self logType];
  contextDictionary = [(DRSRequest *)self contextDictionary];
  v17 = [contextDictionary debugDescription];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"-";
  }

  v29 = [v28 initWithFormat:@"%@ %@ %@ (%@, %@) %@ %u %@ %@ %@ %@/%@ %@ %@(%@, %@) %@", build, uUIDString, v33, requestStateString, v25, requestType, uploadAttemptCount, v22, decisionServerDecisionString, v10, teamID, issueCategory, issueDescription, _logsDescription, logType, v36, v19];

  if (ckRecordID)
  {
  }

  objc_autoreleasePoolPop(v32);

  return v29;
}

- (id)jsonCompatibleDictionaryRepresentationVerbose:(BOOL)verbose
{
  verboseCopy = verbose;
  v75 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  build = [(DRSRequest *)self build];
  [v7 setObject:build forKeyedSubscript:@"build"];

  requestDate = [(DRSRequest *)self requestDate];
  v10 = [v6 stringFromDate:requestDate];
  [v7 setObject:v10 forKeyedSubscript:@"date"];

  teamID = [(DRSRequest *)self teamID];
  [v7 setObject:teamID forKeyedSubscript:@"teamID"];

  issueCategory = [(DRSRequest *)self issueCategory];
  [v7 setObject:issueCategory forKeyedSubscript:@"issueCategory"];

  issueDescription = [(DRSRequest *)self issueDescription];
  [v7 setObject:issueDescription forKeyedSubscript:@"issueDescription"];

  logType = [(DRSRequest *)self logType];
  [v7 setObject:logType forKeyedSubscript:@"logType"];

  v15 = 0x277CCA000uLL;
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSRequest isExpedited](self, "isExpedited")}];
  [v7 setObject:v16 forKeyedSubscript:@"isExpedited"];

  contextDictionary = [(DRSRequest *)self contextDictionary];

  if (!contextDictionary)
  {
LABEL_4:
    if (!verboseCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v18 = MEMORY[0x277CCAAA0];
  contextDictionary2 = [(DRSRequest *)self contextDictionary];
  LODWORD(v18) = [v18 isValidJSONObject:contextDictionary2];

  if (v18)
  {
    contextDictionary3 = [(DRSRequest *)self contextDictionary];
    [v7 setObject:contextDictionary3 forKeyedSubscript:@"contextDictionary"];

    goto LABEL_4;
  }

  v21 = DPLogHandle_Request();
  if (os_signpost_enabled(v21))
  {
    v22 = [(DRSRequest *)self debugDescription];
    *buf = 138543362;
    v74 = v22;
    _os_signpost_emit_with_name_impl(&dword_232906000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SkippedContextDictionaryJSONSerialization", "Context dictionary for %{public}@ cannot be serialized in JSON", buf, 0xCu);
  }

  [v7 setObject:@"<Could not serialize>" forKeyedSubscript:@"contextDictionary"];
  if (verboseCopy)
  {
LABEL_9:
    requestID = [(DRSRequest *)self requestID];
    uUIDString = [requestID UUIDString];
    [v7 setObject:uUIDString forKeyedSubscript:@"requestID"];

    ckRecordID = [(DRSRequest *)self ckRecordID];

    if (ckRecordID)
    {
      ckRecordID2 = [(DRSRequest *)self ckRecordID];
      [v7 setObject:ckRecordID2 forKeyedSubscript:@"ckRecordID"];
    }

    requestStateString = [(DRSRequest *)self requestStateString];
    [v7 setObject:requestStateString forKeyedSubscript:@"requestState"];

    errorDescription = [(DRSRequest *)self errorDescription];

    if (errorDescription)
    {
      errorDescription2 = [(DRSRequest *)self errorDescription];
      [v7 setObject:errorDescription2 forKeyedSubscript:@"errorDescription"];
    }

    requestType = [(DRSRequest *)self requestType];
    [v7 setObject:requestType forKeyedSubscript:@"requestType"];

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[DRSRequest uploadAttemptCount](self, "uploadAttemptCount")}];
    [v7 setObject:v31 forKeyedSubscript:@"uploadAttemptCount"];

    decisionServerDecisionString = [(DRSRequest *)self decisionServerDecisionString];
    [v7 setObject:decisionServerDecisionString forKeyedSubscript:@"decisionServerDecision"];

    logs = [(DRSRequest *)self logs];
    v34 = [logs count];

    logs2 = [(DRSRequest *)self logs];
    v36 = logs2;
    if (v34 == 1)
    {
      firstObject = [logs2 firstObject];
      path = [firstObject path];
      [v7 setObject:path forKeyedSubscript:@"logPath"];

      v39 = MEMORY[0x277CCABB0];
      logs3 = [(DRSRequest *)self logs];
      firstObject2 = [logs3 firstObject];
      v42 = [v39 numberWithUnsignedLong:{objc_msgSend(firstObject2, "size")}];
      [v7 setObject:v42 forKeyedSubscript:@"logSizeBytes"];

      v43 = MEMORY[0x277CCABB0];
      logs4 = [(DRSRequest *)self logs];
      firstObject3 = [logs4 firstObject];
      v46 = [v43 numberWithBool:{objc_msgSend(firstObject3, "isAvailableOnDisk")}];
      [v7 setObject:v46 forKeyedSubscript:@"logAvailableOnDiskPath"];
    }

    else
    {
      v47 = [logs2 count];

      if (v47)
      {
        v63 = v6;
        v64 = v7;
        v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        selfCopy = self;
        obj = [(DRSRequest *)self logs];
        v49 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v67;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v67 != v51)
              {
                objc_enumerationMutation(obj);
              }

              v53 = *(*(&v66 + 1) + 8 * i);
              v70[0] = @"logPath";
              path2 = [v53 path];
              v71[0] = path2;
              v70[1] = @"logAvailableOnDiskPath";
              v55 = [*(v15 + 2992) numberWithBool:{objc_msgSend(v53, "isAvailableOnDisk")}];
              v71[1] = v55;
              v70[2] = @"logSizeBytes";
              v56 = v15;
              v57 = [*(v15 + 2992) numberWithUnsignedLong:{objc_msgSend(v53, "size")}];
              v71[2] = v57;
              v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:3];

              v15 = v56;
              [v48 addObject:v58];
            }

            v50 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
          }

          while (v50);
        }

        v7 = v64;
        [v64 setObject:v48 forKeyedSubscript:@"logsArray"];

        self = selfCopy;
        v6 = v63;
      }

      else
      {
        [v7 setObject:@"<No path>" forKeyedSubscript:@"logPath"];
        [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"logAvailableOnDiskPath"];
        [v7 setObject:&unk_2847FF750 forKeyedSubscript:@"logSizeBytes"];
      }
    }

    v59 = [*(v15 + 2992) numberWithBool:{-[DRSRequest hasBeenCountedByTelemetry](self, "hasBeenCountedByTelemetry")}];
    [v7 setObject:v59 forKeyedSubscript:@"hasBeenCountedByTelemetry"];
  }

LABEL_26:

  objc_autoreleasePoolPop(v5);
  v60 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_addLogMOs:(id)os
{
  v20 = *MEMORY[0x277D85DE8];
  osCopy = os;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  logs = [(DRSRequest *)self logs];
  v6 = [logs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(logs);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [DRSLogMO alloc];
        managedObjectContext = [osCopy managedObjectContext];
        v13 = [(DRSLogMO *)v11 initWithContext:managedObjectContext];

        [v10 _configureLogMO:v13];
        [osCopy addLogsObject:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [logs countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_configureRequestMO:(id)o
{
  oCopy = o;
  teamID = [(DRSRequest *)self teamID];
  [oCopy setTeamID:teamID];

  issueCategory = [(DRSRequest *)self issueCategory];
  [oCopy setIssueCategory:issueCategory];

  issueDescription = [(DRSRequest *)self issueDescription];
  [oCopy setIssueDescription:issueDescription];

  contextDictionaryData = [(DRSRequest *)self contextDictionaryData];
  [oCopy setContextDictionaryData:contextDictionaryData];

  requestDate = [(DRSRequest *)self requestDate];
  [oCopy setRequestDate:requestDate];

  requestID = [(DRSRequest *)self requestID];
  [oCopy setRequestID:requestID];

  [oCopy setRequestMCT:{-[DRSRequest requestMCT](self, "requestMCT")}];
  [oCopy setRequestState:{-[DRSRequest requestState](self, "requestState")}];
  errorDescription = [(DRSRequest *)self errorDescription];
  [oCopy setErrorDescription:errorDescription];

  build = [(DRSRequest *)self build];
  [oCopy setBuild:build];

  [oCopy setUploadAttemptCount:{-[DRSRequest uploadAttemptCount](self, "uploadAttemptCount")}];
  [oCopy setDecisionServerDecision:{-[DRSRequest decisionServerDecision](self, "decisionServerDecision")}];
  [oCopy setHasBeenCountedByTelemetry:{-[DRSRequest hasBeenCountedByTelemetry](self, "hasBeenCountedByTelemetry")}];
  [oCopy setIsExpedited:{-[DRSRequest isExpedited](self, "isExpedited")}];
  ckRecordID = [(DRSRequest *)self ckRecordID];
  [oCopy setCkRecordID:ckRecordID];

  logs = [oCopy logs];
  v14 = [logs count];
  logs2 = [(DRSRequest *)self logs];
  v16 = [logs2 count];

  if (v14 != v16)
  {
    logs3 = [oCopy logs];
    [oCopy removeLogs:logs3];

    [(DRSRequest *)self _addLogMOs:oCopy];
  }
}

- (NSString)requestStateString
{
  requestState = [(DRSRequest *)self requestState];

  return DRRequestStateWithOutcomeStringForState(requestState);
}

- (NSString)requestOutcomeString
{
  v2 = [(DRSRequest *)self requestOutcome]- 1;
  if (v2 > 2)
  {
    return @"In-Flight";
  }

  else
  {
    return &off_27899EE68[v2]->isa;
  }
}

- (id)newRequestMOInContext_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v5 = [objc_alloc(objc_msgSend(objc_opt_class() "_moClass"))];

  [(DRSRequest *)self _configureRequestMO:v5];
  return v5;
}

- (void)updateContextWithRequest_ON_MOC_QUEUE:(id)e
{
  v25 = *MEMORY[0x277D85DE8];
  eCopy = e;
  v5 = MEMORY[0x277CCAC30];
  requestID = [(DRSRequest *)self requestID];
  v7 = [v5 predicateWithFormat:@"requestID == %@", requestID];

  v8 = MEMORY[0x277CBE428];
  entityName = [objc_opt_class() entityName];
  v10 = [v8 fetchRequestWithEntityName:entityName];

  [v10 setFetchLimit:1];
  [v10 setPredicate:v7];
  v20 = 0;
  v11 = [eCopy executeFetchRequest:v10 error:&v20];
  v12 = v20;
  if (!v11 || ![v11 count])
  {
    if (v12)
    {
      v14 = DPLogHandle_CoreDataError();
      if (os_signpost_enabled(v14))
      {
        requestID2 = [(DRSRequest *)self debugDescription];
        localizedDescription = [v12 localizedDescription];
        v17 = localizedDescription;
        v18 = @"Unknown";
        if (localizedDescription)
        {
          v18 = localizedDescription;
        }

        *buf = 138543618;
        v22 = requestID2;
        v23 = 2114;
        v24 = v18;
        _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestMangedObjectFetchFailure", "Failed to fetch a request object for %{public}@ due to error: %{public}@", buf, 0x16u);

        goto LABEL_11;
      }
    }

    else
    {
      v14 = DPLogHandle_Request();
      if (os_signpost_enabled(v14))
      {
        requestID2 = [(DRSRequest *)self requestID];
        *buf = 138543362;
        v22 = requestID2;
        _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestMangedObjectFetchMiss", "No cached request with ID %{public}@", buf, 0xCu);
LABEL_11:
      }
    }

    v12 = [(DRSRequest *)self newRequestMOInContext_ON_MOC_QUEUE:eCopy];
    goto LABEL_13;
  }

  firstObject = [v11 firstObject];
  [(DRSRequest *)self _configureRequestMO:firstObject];

LABEL_13:
  v19 = *MEMORY[0x277D85DE8];
}

+ (id)requestForMessage:(id)message
{
  messageCopy = message;
  v4 = xpc_dictionary_get_uint64(messageCopy, "ClientMessageType") - 1;
  if (v4 <= 4 && ((0x1Bu >> v4) & 1) != 0)
  {
    v5 = [objc_alloc(*off_27899EE80[v4]) initWithXPCDict:messageCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addAutomatedDeviceGroupContext
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = +[DRSSystemProfile sharedInstance];
  automatedDeviceGroup = [v3 automatedDeviceGroup];

  if (automatedDeviceGroup)
  {
    v14 = 0;
    v5 = [(DRSRequest *)self addContextMetadataKey:@"ADG" stringValue:automatedDeviceGroup errorOut:&v14];
    v6 = v14;
    requestID2 = DPLogHandle_Request();
    v8 = os_signpost_enabled(requestID2);
    if (v5)
    {
      if (v8)
      {
        requestID = [(DRSRequest *)self requestID];
        uUIDString = [(__CFString *)requestID UUIDString];
        v15 = 138543618;
        v16 = automatedDeviceGroup;
        v17 = 2114;
        v18 = uUIDString;
        _os_signpost_emit_unreliably_with_name_impl();

LABEL_12:
      }

LABEL_13:

      goto LABEL_14;
    }

    if (!v8)
    {
      goto LABEL_13;
    }

    localizedDescription = [v6 localizedDescription];
    requestID = localizedDescription;
    v12 = @"Unknown error";
    if (localizedDescription)
    {
      v12 = localizedDescription;
    }

    v15 = 138543362;
    v16 = v12;
LABEL_11:
    _os_signpost_emit_unreliably_with_name_impl();
    goto LABEL_12;
  }

  v6 = DPLogHandle_Request();
  if (os_signpost_enabled(v6))
  {
    requestID2 = [(DRSRequest *)self requestID];
    requestID = [requestID2 UUIDString];
    v15 = 138543362;
    v16 = requestID;
    goto LABEL_11;
  }

LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)metadataDictionary
{
  contextDictionary = [(DRSRequest *)self contextDictionary];
  v3 = [contextDictionary objectForKeyedSubscript:@"__DPMD__"];

  return v3;
}

- (NSString)hwModel
{
  metadataDictionary = [(DRSRequest *)self metadataDictionary];
  v3 = [metadataDictionary objectForKeyedSubscript:@"HWModel"];

  return v3;
}

- (NSNumber)isLikeCarryDevice
{
  metadataDictionary = [(DRSRequest *)self metadataDictionary];
  v3 = [metadataDictionary objectForKeyedSubscript:@"LikelyCarry"];

  return v3;
}

- (NSString)automatedDeviceGroup
{
  metadataDictionary = [(DRSRequest *)self metadataDictionary];
  v3 = [metadataDictionary objectForKeyedSubscript:@"ADG"];

  return v3;
}

- (void)addHWModelContextMetadata
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[DRSSystemProfile sharedInstance];
  isInternal = [v3 isInternal];

  if (isInternal)
  {
    v5 = +[DRSSystemProfile sharedInstance];
    hwModel = [v5 hwModel];

    if (hwModel)
    {
      v15 = 0;
      v7 = [(DRSRequest *)self addContextMetadataKey:@"HWModel" stringValue:hwModel errorOut:&v15];
      v8 = v15;
      v9 = DPLogHandle_Request();
      v10 = os_signpost_enabled(v9);
      if (v7)
      {
        if (v10)
        {
          v16 = 138543362;
          v17 = hwModel;
          _os_signpost_emit_unreliably_with_name_impl();
        }
      }

      else if (v10)
      {
        localizedDescription = [v8 localizedDescription];
        v12 = localizedDescription;
        v13 = @"Unknown error";
        if (localizedDescription)
        {
          v13 = localizedDescription;
        }

        v16 = 138543362;
        v17 = v13;
        _os_signpost_emit_unreliably_with_name_impl();
      }
    }

    else
    {
      v8 = DPLogHandle_Request();
      if (os_signpost_enabled(v8))
      {
        LOWORD(v16) = 0;
        _os_signpost_emit_unreliably_with_name_impl();
      }
    }
  }

  else
  {
    hwModel = DPLogHandle_Request();
    if (os_signpost_enabled(hwModel))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_unreliably_with_name_impl();
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addIsLikelyCarryContextMetadata
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[DRSSystemProfile sharedInstance];
  isInternal = [v3 isInternal];

  if (isInternal)
  {
    v5 = +[DRSSystemProfile sharedInstance];
    isLikelyCarryGroupNum = [v5 isLikelyCarryGroupNum];

    if (isLikelyCarryGroupNum)
    {
      v15 = 0;
      v7 = [(DRSRequest *)self addContextMetadataKey:@"LikelyCarry" numberValue:isLikelyCarryGroupNum errorOut:&v15];
      v8 = v15;
      v9 = DPLogHandle_Request();
      v10 = os_signpost_enabled(v9);
      if (v7)
      {
        if (v10)
        {
          v16 = 138543362;
          v17 = isLikelyCarryGroupNum;
          _os_signpost_emit_unreliably_with_name_impl();
        }
      }

      else if (v10)
      {
        localizedDescription = [v8 localizedDescription];
        v12 = localizedDescription;
        v13 = @"Unknown error";
        if (localizedDescription)
        {
          v13 = localizedDescription;
        }

        v16 = 138543362;
        v17 = v13;
        _os_signpost_emit_unreliably_with_name_impl();
      }
    }

    else
    {
      v8 = DPLogHandle_Request();
      if (os_signpost_enabled(v8))
      {
        LOWORD(v16) = 0;
        _os_signpost_emit_unreliably_with_name_impl();
      }
    }
  }

  else
  {
    isLikelyCarryGroupNum = DPLogHandle_Request();
    if (os_signpost_enabled(isLikelyCarryGroupNum))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_unreliably_with_name_impl();
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_addContextMetadataKey:(id)key value:(id)value expectedClass:(Class)class errorOut:(id *)out
{
  v47 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  if (objc_opt_isKindOfClass())
  {
    contextDictionary = [(DRSRequest *)self contextDictionary];

    if (contextDictionary)
    {
      contextDictionary2 = [(DRSRequest *)self contextDictionary];
      v13 = [contextDictionary2 mutableCopy];
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v19 = [v13 objectForKeyedSubscript:@"__DPMD__"];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 mutableCopy];
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v22 = v21;

    v23 = [v22 objectForKeyedSubscript:keyCopy];

    if (v23)
    {
      v24 = DPLogHandle_Request();
      if (os_signpost_enabled(v24))
      {
        v45 = 138543362;
        v46 = keyCopy;
        _os_signpost_emit_unreliably_with_name_impl();
      }
    }

    [v22 setObject:valueCopy forKeyedSubscript:keyCopy];
    [v13 setObject:v22 forKeyedSubscript:@"__DPMD__"];
    v16 = v13;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = 0;
      v25 = [MEMORY[0x277CCAC58] dataWithPropertyList:v16 format:200 options:0 error:&v40];
      v26 = v40;
      if (v26)
      {
        v27 = DPLogHandle_RequestError();
        if (os_signpost_enabled(v27))
        {
          [v26 localizedDescription];
          v28 = v39 = out;
          v45 = 138543362;
          v46 = v28;
          _os_signpost_emit_unreliably_with_name_impl();

          out = v39;
        }

        v29 = 0;
      }

      else
      {
        v29 = v25;
      }
    }

    else
    {
      v26 = DPLogHandle_RequestError();
      if (os_signpost_enabled(v26))
      {
        v30 = objc_opt_class();
        NSStringFromClass(v30);
        v46 = v45 = 138543362;
        _os_signpost_emit_unreliably_with_name_impl();
      }

      v29 = 0;
    }

    v18 = v29 != 0;
    if (v29)
    {
      objc_storeStrong(&self->_contextDictionary, v13);
      objc_storeStrong(&self->_contextDictionaryData, v29);
      v31 = DPLogHandle_RequestError();
      if (os_signpost_enabled(v31))
      {
        v45 = 138543362;
        v46 = keyCopy;
        _os_signpost_emit_unreliably_with_name_impl();
      }
    }

    else
    {
      v32 = DPLogHandle_RequestError();
      if (os_signpost_enabled(v32))
      {
        v45 = 138543362;
        v46 = keyCopy;
        _os_signpost_emit_unreliably_with_name_impl();
      }

      if (!out)
      {
        goto LABEL_33;
      }

      outCopy = out;
      v34 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA450];
      v42 = @"Could not serialized updated context as plist";
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v31 = [v34 errorWithDomain:@"DRSRequestContextMetadataError" code:0 userInfo:v35];

      v36 = v31;
      *outCopy = v31;
    }

LABEL_33:
    goto LABEL_34;
  }

  if (out)
  {
    v14 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA450];
    v44 = @"'recordDictionary' is nil or empty";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v16 = [v14 errorWithDomain:@"DRSRequestContextMetadataError" code:0 userInfo:v15];

    v17 = v16;
    v18 = 0;
    *out = v16;
LABEL_34:

    goto LABEL_35;
  }

  v18 = 0;
LABEL_35:

  v37 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)addContextMetadataKey:(id)key numberValue:(id)value errorOut:(id *)out
{
  valueCopy = value;
  keyCopy = key;
  LOBYTE(out) = [(DRSRequest *)self _addContextMetadataKey:keyCopy value:valueCopy expectedClass:objc_opt_class() errorOut:out];

  return out;
}

- (BOOL)addContextMetadataKey:(id)key stringValue:(id)value errorOut:(id *)out
{
  valueCopy = value;
  keyCopy = key;
  LOBYTE(out) = [(DRSRequest *)self _addContextMetadataKey:keyCopy value:valueCopy expectedClass:objc_opt_class() errorOut:out];

  return out;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(DRSRequest *)self isEqualToRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  if (self == requestCopy)
  {
    goto LABEL_40;
  }

  requestMCT = [(DRSRequest *)self requestMCT];
  if (requestMCT == [(DRSRequest *)requestCopy requestMCT])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      teamID = [(DRSRequest *)self teamID];
      teamID2 = [(DRSRequest *)requestCopy teamID];
      v8 = [teamID isEqualToString:teamID2];

      if (v8)
      {
        build = [(DRSRequest *)self build];
        build2 = [(DRSRequest *)requestCopy build];
        v11 = [build isEqualToString:build2];

        if (v11)
        {
          issueCategory = [(DRSRequest *)self issueCategory];
          issueCategory2 = [(DRSRequest *)requestCopy issueCategory];
          v14 = [issueCategory isEqualToString:issueCategory2];

          if (v14)
          {
            issueDescription = [(DRSRequest *)self issueDescription];
            issueDescription2 = [(DRSRequest *)requestCopy issueDescription];
            v17 = [issueDescription isEqualToString:issueDescription2];

            if (v17)
            {
              teamID3 = [(DRSRequest *)self teamID];
              teamID4 = [(DRSRequest *)requestCopy teamID];
              v20 = [teamID3 isEqualToString:teamID4];

              if (v20)
              {
                logType = [(DRSRequest *)self logType];
                logType2 = [(DRSRequest *)requestCopy logType];
                v23 = [logType isEqualToString:logType2];

                if (v23)
                {
                  logPath = [(DRSRequest *)self logPath];
                  logPath2 = [(DRSRequest *)requestCopy logPath];
                  IsNil = _oneIsNil(logPath, logPath2);

                  if ((IsNil & 1) == 0)
                  {
                    logPath3 = [(DRSRequest *)self logPath];
                    if (!logPath3)
                    {
                      goto LABEL_13;
                    }

                    v28 = logPath3;
                    logPath4 = [(DRSRequest *)self logPath];
                    logPath5 = [(DRSRequest *)requestCopy logPath];
                    v31 = [logPath4 isEqualToString:logPath5];

                    if (v31)
                    {
LABEL_13:
                      contextDictionary = [(DRSRequest *)self contextDictionary];
                      contextDictionary2 = [(DRSRequest *)requestCopy contextDictionary];
                      v34 = _oneIsNil(contextDictionary, contextDictionary2);

                      if ((v34 & 1) == 0)
                      {
                        contextDictionary3 = [(DRSRequest *)self contextDictionary];
                        if (!contextDictionary3)
                        {
                          goto LABEL_44;
                        }

                        v36 = contextDictionary3;
                        contextDictionary4 = [(DRSRequest *)self contextDictionary];
                        contextDictionary5 = [(DRSRequest *)requestCopy contextDictionary];
                        v39 = [contextDictionary4 isEqualToDictionary:contextDictionary5];

                        if (v39)
                        {
LABEL_44:
                          contextDictionaryData = [(DRSRequest *)self contextDictionaryData];
                          contextDictionaryData2 = [(DRSRequest *)requestCopy contextDictionaryData];
                          v42 = _oneIsNil(contextDictionaryData, contextDictionaryData2);

                          if ((v42 & 1) == 0)
                          {
                            contextDictionaryData3 = [(DRSRequest *)self contextDictionaryData];
                            if (!contextDictionaryData3)
                            {
                              goto LABEL_45;
                            }

                            v44 = contextDictionaryData3;
                            contextDictionaryData4 = [(DRSRequest *)self contextDictionaryData];
                            contextDictionaryData5 = [(DRSRequest *)requestCopy contextDictionaryData];
                            v47 = [contextDictionaryData4 isEqualToData:contextDictionaryData5];

                            if (v47)
                            {
LABEL_45:
                              requestDate = [(DRSRequest *)self requestDate];
                              requestDate2 = [(DRSRequest *)requestCopy requestDate];
                              v50 = _oneIsNil(requestDate, requestDate2);

                              if ((v50 & 1) == 0)
                              {
                                requestDate3 = [(DRSRequest *)self requestDate];
                                if (!requestDate3)
                                {
                                  goto LABEL_46;
                                }

                                v52 = requestDate3;
                                requestDate4 = [(DRSRequest *)self requestDate];
                                requestDate5 = [(DRSRequest *)requestCopy requestDate];
                                v55 = [requestDate4 isEqualToDate:requestDate5];

                                if (v55)
                                {
LABEL_46:
                                  requestID = [(DRSRequest *)self requestID];
                                  requestID2 = [(DRSRequest *)requestCopy requestID];
                                  v58 = _oneIsNil(requestID, requestID2);

                                  if ((v58 & 1) == 0)
                                  {
                                    requestID3 = [(DRSRequest *)self requestID];
                                    if (!requestID3)
                                    {
                                      goto LABEL_47;
                                    }

                                    v60 = requestID3;
                                    requestID4 = [(DRSRequest *)self requestID];
                                    requestID5 = [(DRSRequest *)requestCopy requestID];
                                    v63 = [requestID4 isEqual:requestID5];

                                    if (v63)
                                    {
LABEL_47:
                                      ckRecordID = [(DRSRequest *)self ckRecordID];
                                      ckRecordID2 = [(DRSRequest *)requestCopy ckRecordID];
                                      v66 = _oneIsNil(ckRecordID, ckRecordID2);

                                      if ((v66 & 1) == 0)
                                      {
                                        ckRecordID3 = [(DRSRequest *)self ckRecordID];
                                        if (!ckRecordID3)
                                        {
                                          goto LABEL_48;
                                        }

                                        v68 = ckRecordID3;
                                        ckRecordID4 = [(DRSRequest *)self ckRecordID];
                                        ckRecordID5 = [(DRSRequest *)requestCopy ckRecordID];
                                        v71 = [ckRecordID4 isEqualToString:ckRecordID5];

                                        if (v71)
                                        {
LABEL_48:
                                          requestState = [(DRSRequest *)self requestState];
                                          if (requestState == [(DRSRequest *)requestCopy requestState])
                                          {
                                            uploadAttemptCount = [(DRSRequest *)self uploadAttemptCount];
                                            if (uploadAttemptCount == [(DRSRequest *)requestCopy uploadAttemptCount])
                                            {
                                              decisionServerDecision = [(DRSRequest *)self decisionServerDecision];
                                              if (decisionServerDecision == [(DRSRequest *)requestCopy decisionServerDecision])
                                              {
                                                hasBeenCountedByTelemetry = [(DRSRequest *)self hasBeenCountedByTelemetry];
                                                if (hasBeenCountedByTelemetry == [(DRSRequest *)requestCopy hasBeenCountedByTelemetry])
                                                {
                                                  isExpedited = [(DRSRequest *)self isExpedited];
                                                  if (isExpedited == [(DRSRequest *)requestCopy isExpedited])
                                                  {
                                                    errorDescription = [(DRSRequest *)self errorDescription];
                                                    errorDescription2 = [(DRSRequest *)requestCopy errorDescription];
                                                    v79 = _oneIsNil(errorDescription, errorDescription2);

                                                    if ((v79 & 1) == 0)
                                                    {
                                                      errorDescription3 = [(DRSRequest *)self errorDescription];
                                                      if (!errorDescription3)
                                                      {
                                                        goto LABEL_49;
                                                      }

                                                      v81 = errorDescription3;
                                                      errorDescription4 = [(DRSRequest *)self errorDescription];
                                                      errorDescription5 = [(DRSRequest *)requestCopy errorDescription];
                                                      v84 = [errorDescription4 isEqualToString:errorDescription5];

                                                      if (v84)
                                                      {
LABEL_49:
                                                        logs = [(DRSRequest *)self logs];
                                                        logs2 = [(DRSRequest *)requestCopy logs];
                                                        v87 = _oneIsNil(logs, logs2);

                                                        if ((v87 & 1) == 0)
                                                        {
                                                          logs3 = [(DRSRequest *)self logs];
                                                          if (logs3)
                                                          {
                                                            v90 = logs3;
                                                            logs4 = [(DRSRequest *)self logs];
                                                            logs5 = [(DRSRequest *)requestCopy logs];
                                                            v88 = [logs4 isEqualToArray:logs5];

                                                            goto LABEL_41;
                                                          }

LABEL_40:
                                                          v88 = 1;
                                                          goto LABEL_41;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v88 = 0;
LABEL_41:

  return v88 & 1;
}

+ (BOOL)isExpeditedTeamID:(id)d issueCategory:(id)category
{
  dCopy = d;
  categoryCopy = category;
  if ([dCopy isEqualToString:kDRSDMRapidTeamID[0]] && (objc_msgSend(categoryCopy, "isEqualToString:", kDRSDMRapidMicroDiagnosticIssueCategory[0]) & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [dCopy isEqualToString:kDRSDMPPSTeamID[0]];
  }

  return v7;
}

- (BOOL)isNonPurgeableInFlightUntilUploadAttempt
{
  teamID = [(DRSRequest *)self teamID];
  v3 = [teamID isEqualToString:kDRSDMNandTeamID[0]];

  return v3;
}

- (DRSRequest)initWithXPCDict:(id)dict
{
  dictCopy = dict;
  v5 = xpc_dictionary_get_value(dictCopy, "ClientMessageType");

  if (!v5)
  {
    goto LABEL_19;
  }

  uint64 = xpc_dictionary_get_uint64(dictCopy, "ClientMessageType");
  if (uint64 != [(DRSRequest *)self expectedType])
  {
    goto LABEL_19;
  }

  v45.receiver = self;
  v45.super_class = DRSRequest;
  self = [(DRSRequest *)&v45 init];
  if (self)
  {
    string = xpc_dictionary_get_string(dictCopy, "TeamID");
    if (!string)
    {
      goto LABEL_19;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    teamID = self->_teamID;
    self->_teamID = v8;

    v10 = xpc_dictionary_get_string(dictCopy, "Category");
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
    issueCategory = self->_issueCategory;
    self->_issueCategory = v11;

    v13 = xpc_dictionary_get_string(dictCopy, "Description");
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
    issueDescription = self->_issueDescription;
    self->_issueDescription = v14;

    v16 = xpc_dictionary_get_string(dictCopy, "LogType");
    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
    logType = self->_logType;
    self->_logType = v17;

    v44 = 0;
    v19 = xpc_dictionary_get_array(dictCopy, "LogArray");
    v20 = xpc_dictionary_get_array(dictCopy, "SandboxExtensions");
    v21 = xpc_dictionary_get_array(dictCopy, "TransferOwnership");
    v22 = [DRSSubmittedLogInfo submittedLogInfosFromPaths:v19 sandboxExtensions:v20 transferOwnerships:v21 successOut:&v44];
    submittedLogInfos = self->_submittedLogInfos;
    self->_submittedLogInfos = v22;

    if (v44)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      requestID = self->_requestID;
      self->_requestID = uUID;

      date = [MEMORY[0x277CBEAA8] date];
      requestDate = self->_requestDate;
      self->_requestDate = date;

      self->_requestState = 0;
      v28 = +[DRSSystemProfile sharedInstance];
      build = [v28 build];
      build = self->_build;
      self->_build = build;

      self->_uploadAttemptCount = 0;
      self->_decisionServerDecision = 0;
      v43 = 0;
      data = xpc_dictionary_get_data(dictCopy, "ContextDict", &v43);
      if (!data || !v43)
      {
LABEL_13:
        v38 = xpc_dictionary_get_value(dictCopy, "RequestMCT");

        if (v38)
        {
          self->_requestMCT = xpc_dictionary_get_uint64(dictCopy, "RequestMCT");
          teamID = [(DRSRequest *)self teamID];
          issueCategory = [(DRSRequest *)self issueCategory];
          self->_isExpedited = [DRSRequest isExpeditedTeamID:teamID issueCategory:issueCategory];

          goto LABEL_15;
        }

LABEL_19:
        selfCopy = 0;
        goto LABEL_20;
      }

      v32 = [MEMORY[0x277CBEA90] dataWithBytes:data length:?];
      v33 = DRSDictionaryForData(v32);
      if (v33)
      {
        v34 = v33;
        contextDictionaryData = self->_contextDictionaryData;
        self->_contextDictionaryData = v32;
        v36 = v32;

        contextDictionary = self->_contextDictionary;
        self->_contextDictionary = v34;

        goto LABEL_13;
      }
    }

    else
    {
      v32 = DPLogHandle_ServiceXPCError();
      if (os_signpost_enabled(&v32->super))
      {
        LOWORD(v43) = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, &v32->super, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MalformedDictionary", "Failed to extract log infos from XPC dictionary", &v43, 2u);
      }
    }

    goto LABEL_19;
  }

LABEL_15:
  self = self;
  selfCopy = self;
LABEL_20:

  return selfCopy;
}

- (id)_processSubmittedLogInfo:(id)info workingDirectory:(id)directory
{
  v135 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  directoryCopy = directory;
  path = [infoCopy path];
  sandboxExtension = [infoCopy sandboxExtension];
  v118 = 0;
  v10 = [[DRSSandboxExtensionHelper alloc] initWithSandboxExtensionToken:sandboxExtension logPath:path errorOut:&v118];
  v11 = v118;
  if (!v10)
  {
    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    localizedDescription = [v11 localizedDescription];
    defaultManager = localizedDescription;
    v25 = @"Unknown";
    if (localizedDescription)
    {
      v25 = localizedDescription;
    }

    v22 = [v23 initWithFormat:@"Failed to consume sandbox extension for file at '%@' due to error: %@", path, v25];
    goto LABEL_13;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v117 = 0;
  if (([defaultManager fileExistsAtPath:path isDirectory:&v117] & 1) == 0)
  {
    v26 = DPLogHandle_SubmitLogError();
    if (os_signpost_enabled(v26))
    {
      [(DRSRequest *)self requestID];
      v27 = v112 = defaultManager;
      teamID = [(DRSRequest *)self teamID];
      [(DRSRequest *)self issueCategory];
      v109 = infoCopy;
      v29 = v11;
      v30 = v10;
      v31 = sandboxExtension;
      v33 = v32 = directoryCopy;
      issueDescription = [(DRSRequest *)self issueDescription];
      *buf = 138544386;
      v122 = v27;
      v123 = 2114;
      v124 = path;
      v125 = 2114;
      v126 = teamID;
      v127 = 2114;
      v128 = v33;
      v129 = 2114;
      v130 = issueDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubmittedLogMissing", "%{public, name=requestID}@: Log with path %{public}@ submitted by %{public}@/%{public}@/%{public}@ missing", buf, 0x34u);

      directoryCopy = v32;
      sandboxExtension = v31;
      v10 = v30;
      v11 = v29;
      infoCopy = v109;

      defaultManager = v112;
    }

    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Specified file path '%@' missing", path, v94];
    goto LABEL_13;
  }

  if (v117 == 1)
  {
    v13 = DPLogHandle_SubmitLogError();
    if (os_signpost_enabled(v13))
    {
      [(DRSRequest *)self requestID];
      v14 = v111 = defaultManager;
      teamID2 = [(DRSRequest *)self teamID];
      [(DRSRequest *)self issueCategory];
      v108 = infoCopy;
      v16 = v11;
      v17 = v10;
      v18 = sandboxExtension;
      v20 = v19 = directoryCopy;
      issueDescription2 = [(DRSRequest *)self issueDescription];
      *buf = 138544386;
      v122 = v14;
      v123 = 2114;
      v124 = path;
      v125 = 2114;
      v126 = teamID2;
      v127 = 2114;
      v128 = v20;
      v129 = 2114;
      v130 = issueDescription2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubmittedLogIsDirectory", "%{public, name=requestID}@: Log with path %{public}@ submitted by %{public}@/%{public}@/%{public}@ is a directory rather than a file", buf, 0x34u);

      directoryCopy = v19;
      sandboxExtension = v18;
      v10 = v17;
      v11 = v16;
      infoCopy = v108;

      defaultManager = v111;
    }

    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Specified file path '%@' is a directory not a file", path, v94];
LABEL_13:
    v35 = v22;
    goto LABEL_14;
  }

  v113 = defaultManager;
  v38 = objc_alloc(MEMORY[0x277CCACA8]);
  [(DRSRequest *)self requestID];
  v39 = v110 = directoryCopy;
  uUIDString = [v39 UUIDString];
  lastPathComponent = [path lastPathComponent];
  v42 = [v38 initWithFormat:@"submitLog%@_%@", uUIDString, lastPathComponent];

  directoryCopy = v110;
  v106 = v42;
  v43 = [v110 stringByAppendingPathComponent:v42];
  v107 = v43;
  if ([infoCopy transferOwnership])
  {
    v116 = 0;
    v44 = [v113 moveItemAtPath:path toPath:v43 error:&v116];
    v45 = v116;
    v46 = v45;
    if (v44)
    {
      v103 = v45;
      v47 = DPLogHandle_SubmitLog();
      if (!os_signpost_enabled(v47))
      {
        goto LABEL_25;
      }

      requestID = [(DRSRequest *)self requestID];
      teamID3 = [(DRSRequest *)self teamID];
      issueCategory = [(DRSRequest *)self issueCategory];
      issueDescription3 = [(DRSRequest *)self issueDescription];
      *buf = 138544642;
      v122 = requestID;
      v123 = 2114;
      v124 = path;
      v125 = 2114;
      v126 = teamID3;
      v127 = 2114;
      v128 = issueCategory;
      v51 = issueCategory;
      v129 = 2114;
      v130 = issueDescription3;
      v52 = issueDescription3;
      v131 = 2114;
      v132 = v107;
      v53 = "LogMove";
      v54 = "%{public, name=requestID}@: Moved %{public}@ submitted by %{public}@/%{public}@/%{public}@ to %{public}@";
      goto LABEL_24;
    }

    v67 = DPLogHandle_SubmitLogError();
    if (os_signpost_enabled(v67))
    {
      requestID2 = [(DRSRequest *)self requestID];
      teamID4 = [(DRSRequest *)self teamID];
      [(DRSRequest *)self issueCategory];
      v68 = v104 = v46;
      issueDescription4 = [(DRSRequest *)self issueDescription];
      localizedDescription2 = [v104 localizedDescription];
      *buf = 138544898;
      v122 = requestID2;
      v123 = 2114;
      v124 = path;
      v125 = 2114;
      v126 = teamID4;
      v127 = 2114;
      v128 = v68;
      v129 = 2114;
      v130 = issueDescription4;
      v131 = 2114;
      v132 = v107;
      v133 = 2114;
      v134 = localizedDescription2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v67, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LogMoveFailed", "%{public, name=requestID}@: Attempt to move %{public}@ submitted by %{public}@/%{public}@/%{public}@ to %{public}@ failed due to error: %{public}@", buf, 0x48u);

      directoryCopy = v110;
      v46 = v104;
    }

    v71 = objc_alloc(MEMORY[0x277CCACA8]);
    localizedDescription3 = [v46 localizedDescription];
    v73 = v46;
    v63 = localizedDescription3;
    v74 = @"Unknown";
    if (localizedDescription3)
    {
      v74 = localizedDescription3;
    }

    v43 = v107;
    v75 = [v71 initWithFormat:@"Moving '%@' to '%@' failed due to error: %@", path, v107, v74];
  }

  else
  {
    v115 = 0;
    v55 = [v113 copyItemAtPath:path toPath:v43 error:&v115];
    v56 = v115;
    v57 = v56;
    if (v55)
    {
      v103 = v56;
      v47 = DPLogHandle_SubmitLog();
      if (!os_signpost_enabled(v47))
      {
        goto LABEL_25;
      }

      requestID = [(DRSRequest *)self requestID];
      teamID3 = [(DRSRequest *)self teamID];
      issueCategory2 = [(DRSRequest *)self issueCategory];
      issueDescription5 = [(DRSRequest *)self issueDescription];
      *buf = 138544642;
      v122 = requestID;
      v123 = 2114;
      v124 = path;
      v125 = 2114;
      v126 = teamID3;
      v127 = 2114;
      v128 = issueCategory2;
      v51 = issueCategory2;
      v129 = 2114;
      v130 = issueDescription5;
      v52 = issueDescription5;
      v131 = 2114;
      v132 = v107;
      v53 = "LogCopy";
      v54 = "%{public, name=requestID}@: Copied %{public}@ submitted by %{public}@/%{public}@/%{public}@ to %{public}@";
LABEL_24:
      _os_signpost_emit_with_name_impl(&dword_232906000, v47, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v53, v54, buf, 0x3Eu);

      directoryCopy = v110;
      v43 = v107;

LABEL_25:
      v119 = *MEMORY[0x277CCA180];
      v120 = &unk_2847FF768;
      v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v114 = 0;
      v61 = [v113 setAttributes:v60 ofItemAtPath:v43 error:&v114];
      v62 = v114;
      if (v61)
      {

        v63 = -[DRSLog _initWithLogPath:transferOwnership:]([DRSLog alloc], "_initWithLogPath:transferOwnership:", v43, [infoCopy transferOwnership]);
        if (v63)
        {
          logs = [(DRSRequest *)self logs];

          if (!logs)
          {
            v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [(DRSRequest *)self setLogs:v65];
          }

          logs2 = [(DRSRequest *)self logs];
          [logs2 addObject:v63];

          v35 = 0;
        }

        else
        {
          v92 = DPLogHandle_SubmitLogError();
          if (os_signpost_enabled(v92))
          {
            requestID3 = [(DRSRequest *)self requestID];
            *buf = 138543618;
            v122 = requestID3;
            v123 = 2114;
            v124 = v43;
            _os_signpost_emit_with_name_impl(&dword_232906000, v92, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LogSizeLookupFailed", "%{public, name=requestID}@: Attempt to lookup log size for %{public}@ failed", buf, 0x16u);

            directoryCopy = v110;
          }

          v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Size lookup on '%@' failed", v43];
        }

        v73 = v103;
      }

      else
      {
        v98 = v60;
        v102 = v62;
        v83 = DPLogHandle_SubmitLogError();
        if (os_signpost_enabled(v83))
        {
          requestID4 = [(DRSRequest *)self requestID];
          teamID5 = [(DRSRequest *)self teamID];
          issueCategory3 = [(DRSRequest *)self issueCategory];
          issueDescription6 = [(DRSRequest *)self issueDescription];
          localizedDescription4 = [v102 localizedDescription];
          *buf = 138544898;
          v122 = requestID4;
          v123 = 2114;
          v124 = path;
          v125 = 2114;
          v126 = teamID5;
          v127 = 2114;
          v128 = issueCategory3;
          v129 = 2114;
          v130 = issueDescription6;
          v131 = 2114;
          v132 = v107;
          v133 = 2112;
          v134 = localizedDescription4;
          _os_signpost_emit_with_name_impl(&dword_232906000, v83, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LogPermissionsUpdateFailed", "%{public, name=requestID}@: Attempt to set permissions to '600' on %{public}@ submitted by %{public}@/%{public}@/%{public}@ to %{public}@ failed due to error: %@{public}", buf, 0x48u);
        }

        v88 = objc_alloc(MEMORY[0x277CCACA8]);
        v73 = v103;
        localizedDescription5 = [v103 localizedDescription];
        v90 = localizedDescription5;
        v91 = @"Unknown";
        if (localizedDescription5)
        {
          v91 = localizedDescription5;
        }

        v43 = v107;
        v35 = [v88 initWithFormat:@"Updating permissions on '%@' failed due to error: %@", v107, v91];

        directoryCopy = v110;
        v63 = v98;
      }

      goto LABEL_50;
    }

    v76 = DPLogHandle_SubmitLogError();
    if (os_signpost_enabled(v76))
    {
      requestID5 = [(DRSRequest *)self requestID];
      teamID6 = [(DRSRequest *)self teamID];
      [(DRSRequest *)self issueCategory];
      v77 = v105 = v57;
      issueDescription7 = [(DRSRequest *)self issueDescription];
      localizedDescription6 = [v105 localizedDescription];
      *buf = 138544898;
      v122 = requestID5;
      v123 = 2114;
      v124 = path;
      v125 = 2114;
      v126 = teamID6;
      v127 = 2114;
      v128 = v77;
      v129 = 2114;
      v130 = issueDescription7;
      v131 = 2114;
      v132 = v107;
      v133 = 2112;
      v134 = localizedDescription6;
      _os_signpost_emit_with_name_impl(&dword_232906000, v76, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LogCopyFailed", "%{public, name=requestID}@: Attempt to copy %{public}@ submitted by %{public}@/%{public}@/%{public}@ to %{public}@ failed due to error: %@{public}", buf, 0x48u);

      directoryCopy = v110;
      v57 = v105;
    }

    v80 = objc_alloc(MEMORY[0x277CCACA8]);
    localizedDescription7 = [v57 localizedDescription];
    v73 = v57;
    v63 = localizedDescription7;
    v82 = @"Unknown";
    if (localizedDescription7)
    {
      v82 = localizedDescription7;
    }

    v43 = v107;
    v75 = [v80 initWithFormat:@"Copying '%@' to '%@' failed due to error: %@", path, v107, v82];
  }

  v35 = v75;
LABEL_50:

  defaultManager = v113;
LABEL_14:

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (BOOL)performOnReceiptWork:(id)work dampeningOutcome:(unint64_t)outcome
{
  v54 = *MEMORY[0x277D85DE8];
  workCopy = work;
  v7 = +[DRSSystemProfile sharedInstance];
  isLogUploadEnabled = [v7 isLogUploadEnabled];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  submittedLogInfos = [(DRSRequest *)self submittedLogInfos];
  v10 = [submittedLogInfos countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v48;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(submittedLogInfos);
        }

        if ([*(*(&v47 + 1) + 8 * i) transferOwnership])
        {

          goto LABEL_13;
        }
      }

      v11 = [submittedLogInfos countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (((outcome == 0) & isLogUploadEnabled) != 0)
  {
LABEL_13:
    submittedLogInfos2 = [(DRSRequest *)self submittedLogInfos];
    submittedLogInfos = self->_submittedLogInfos;
    self->_submittedLogInfos = 0;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v18 = submittedLogInfos2;
    v19 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v44;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(DRSRequest *)self _processSubmittedLogInfo:*(*(&v43 + 1) + 8 * j) workingDirectory:workCopy];
          if (v23)
          {
            [v17 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v20);
    }

    if ([v17 count])
    {
      v38 = v18;
      v24 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v25 = v17;
      v26 = [v25 countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v40;
        v29 = 1;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v40 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v39 + 1) + 8 * k);
            if ((v29 & 1) == 0)
            {
              [v24 appendString:{@", "}];
            }

            [v24 appendString:v31];
            v29 = 0;
          }

          v27 = [v25 countByEnumeratingWithState:&v39 objects:v51 count:16];
          v29 = 0;
        }

        while (v27);
      }

      [(DRSRequest *)self updateToState:4352 errorDescription:v24 errorOut:0];
      v32 = 0;
      v18 = v38;
    }

    else
    {
      totalLogSizeBytes = [(DRSRequest *)self totalLogSizeBytes];
      totalLogSizeBytes2 = [(DRSRequest *)self totalLogSizeBytes];
      if (totalLogSizeBytes2 <= [(DRSRequest *)self logSizeLimitBytes])
      {
        v32 = [(DRSRequest *)self _performPostClientLogWork:workCopy dampeningOutcome:outcome isLogUploadEnabled:isLogUploadEnabled];
      }

      else
      {
        v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Log(s) exceed size cap. Submitted size %zuB vs. cap %lluB", totalLogSizeBytes, -[DRSRequest logSizeLimitBytes](self, "logSizeLimitBytes")];
        [(DRSRequest *)self updateToState:4357 errorDescription:v35 errorOut:0];

        v32 = 0;
      }
    }
  }

  else
  {
    if (outcome)
    {
      v14 = DRSRequestStateForDampeningOutcome(outcome);
    }

    else
    {
      v14 = 4103;
    }

    v32 = [(DRSRequest *)self updateToState:v14 errorDescription:0 errorOut:0];
  }

  v36 = *MEMORY[0x277D85DE8];
  return v32;
}

- (BOOL)_performPostClientLogWork:(id)work dampeningOutcome:(unint64_t)outcome isLogUploadEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  workCopy = work;
  if (outcome)
  {
    v9 = DRSRequestStateForDampeningOutcome(outcome);
    v10 = @"Request denied due to dampening";
    selfCopy3 = self;
  }

  else if (enabledCopy)
  {
    selfCopy3 = self;
    v9 = 1;
    v10 = 0;
  }

  else
  {
    v10 = @"Log upload is disabled";
    selfCopy3 = self;
    v9 = 4103;
  }

  v12 = [(DRSRequest *)selfCopy3 updateToState:v9 errorDescription:v10 errorOut:0];

  return v12;
}

- (BOOL)hasUploadableContent
{
  v18 = *MEMORY[0x277D85DE8];
  logs = [(DRSRequest *)self logs];
  v4 = [logs count];

  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    logs2 = [(DRSRequest *)self logs];
    v6 = [logs2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(logs2);
          }

          if (![*(*(&v13 + 1) + 8 * i) isAvailableOnDisk])
          {
            v10 = 0;
            goto LABEL_12;
          }
        }

        v7 = [logs2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_12:
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_updateLogStateToExpectedState:(unsigned __int8)state
{
  v14 = *MEMORY[0x277D85DE8];
  if (state <= 1)
  {
    if (state)
    {
      if (state == 1)
      {
        v4 = *MEMORY[0x277D85DE8];
        v5 = 1024;
LABEL_15:

        return [(DRSRequest *)self _markLogsAsPurgeableWithUrgencyWithDeleteFallback:v5];
      }
    }

    else
    {
      v8 = DPLogHandle_RequestError();
      if (os_signpost_enabled(v8))
      {
        v9 = [(DRSRequest *)self debugDescription];
        v12 = 138543362;
        v13 = v9;
        _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidLogStateUpdate", "Tried to update to non-purgeable state: %{public}@", &v12, 0xCu);
      }
    }

    goto LABEL_13;
  }

  if (state == 2)
  {
    v11 = *MEMORY[0x277D85DE8];
    v5 = 512;
    goto LABEL_15;
  }

  if (state != 3)
  {
LABEL_13:
    v10 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return [(DRSRequest *)self _deleteLogs];
}

- (BOOL)_deleteLogs
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = DPLogHandle_LogManagement();
  if (os_signpost_enabled(v3))
  {
    requestID = [(DRSRequest *)self requestID];
    logs = [(DRSRequest *)self logs];
    *buf = 138543618;
    v21 = requestID;
    v22 = 2048;
    v23 = [logs count];
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LogDelete", "Request ID %{public}@: Deleting %lu logs", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  logs2 = [(DRSRequest *)self logs];
  v7 = [logs2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(logs2);
        }

        v9 |= [*(*(&v15 + 1) + 8 * v11++) _deleteOnDiskLog] ^ 1;
      }

      while (v8 != v11);
      v8 = [logs2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
    v12 = v9 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

- (BOOL)_updateLogFileStateForTransitionFromPreviousState:(unint64_t)state
{
  v4 = DRSRequestExpectedLogStateForState(state, [(DRSRequest *)self isNonPurgeableInFlightUntilUploadAttempt], [(DRSRequest *)self uploadAttemptCount]);
  v5 = DRSRequestExpectedLogStateForState([(DRSRequest *)self requestState], [(DRSRequest *)self isNonPurgeableInFlightUntilUploadAttempt], [(DRSRequest *)self uploadAttemptCount]);
  if ([(DRSRequest *)self isNonPurgeableInFlightUntilUploadAttempt]&& v4 == 1 && !v5)
  {
    v6 = DPLogHandle_Request();
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LogStateTransitionEdgeCase", "Avoiding purgeable to non-purgeable transition", buf, 2u);
    }

    return 1;
  }

  if (v4 == v5 || [(DRSRequest *)self _updateLogStateToExpectedState:v5])
  {
    return 1;
  }

  self->_requestState = 4359;
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  logPath = [(DRSRequest *)self logPath];
  v10 = logPath;
  v11 = @"<Missing path>";
  if (logPath)
  {
    v11 = logPath;
  }

  v12 = [v8 initWithFormat:@"Failed to update log purgeability state or failed to delete file: %@", v11];
  errorDescription = self->_errorDescription;
  self->_errorDescription = v12;

  return 0;
}

- (BOOL)updateToState:(unint64_t)state errorDescription:(id)description errorOut:(id *)out
{
  v46 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  requestState = [(DRSRequest *)self requestState];
  v11 = DPLogHandle_Request();
  if (os_signpost_enabled(v11))
  {
    v12 = DRRequestStateWithoutOutcomeStringForState(requestState);
    v13 = DRRequestStateWithoutOutcomeStringForState(state);
    v14 = [(DRSRequest *)self debugDescription];
    *buf = 138543874;
    v41 = v12;
    v42 = 2114;
    v43 = v13;
    v44 = 2114;
    v45 = v14;
    _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestStateTransition", "Transitioning from %{public}@ to %{public}@\n%{public}@", buf, 0x20u);
  }

  if (!DRSRequestOutcomeForState([(DRSRequest *)self requestState]))
  {
    if (state != 2 || requestState == 1)
    {
      self->_requestState = state;
      objc_storeStrong(&self->_errorDescription, description);
      if ([(DRSRequest *)self requestState]!= 4352)
      {
LABEL_20:
        v23 = [(DRSRequest *)self _updateLogFileStateForTransitionFromPreviousState:requestState];
        goto LABEL_21;
      }

      requestStateString = DPLogHandle_RequestError();
      if (os_log_type_enabled(requestStateString, OS_LOG_TYPE_FAULT))
      {
        [DRSRequest updateToState:descriptionCopy errorDescription:requestStateString errorOut:?];
      }
    }

    else
    {
      if (out)
      {
        v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Cannot start upload if not awaiting upload"];
        v25 = MEMORY[0x277CCA9B8];
        v36 = *MEMORY[0x277CCA450];
        v37 = v24;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        *out = [v25 errorWithDomain:@"DRSRequestStateTransitionError" code:0 userInfo:v26];
      }

      v27 = DPLogHandle_RequestError();
      if (os_signpost_enabled(v27))
      {
        v28 = [(DRSRequest *)self debugDescription];
        *buf = 138543362;
        v41 = v28;
        _os_signpost_emit_with_name_impl(&dword_232906000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestStateTransitionError", "Cannot start upload if not awaiting upload for request:%{public}@", buf, 0xCu);
      }

      self->_requestState = 4358;
      v29 = objc_alloc(MEMORY[0x277CCACA8]);
      requestStateString = [(DRSRequest *)self requestStateString];
      v31 = DRRequestStateWithOutcomeStringForState(2);
      v32 = [v29 initWithFormat:@"Invalid state transition: %@ (%#llx) -> %@ (%#llx)", requestStateString, requestState, v31, 2];
      errorDescription = self->_errorDescription;
      self->_errorDescription = v32;
    }

    goto LABEL_20;
  }

  if (out)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    requestStateString2 = [(DRSRequest *)self requestStateString];
    v17 = [v15 initWithFormat:@"Cannot transition out of terminal state %@ (%#llx)", requestStateString2, -[DRSRequest requestState](self, "requestState")];

    v18 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v39 = v17;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *out = [v18 errorWithDomain:@"DRSRequestStateTransitionError" code:0 userInfo:v19];
  }

  v20 = DPLogHandle_RequestError();
  if (os_signpost_enabled(v20))
  {
    requestStateString3 = [(DRSRequest *)self requestStateString];
    v22 = [(DRSRequest *)self debugDescription];
    *buf = 138543874;
    v41 = requestStateString3;
    v42 = 2048;
    v43 = requestState;
    v44 = 2114;
    v45 = v22;
    _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestStateTransitionError", "Cannot transition out of terminal state %{public}@ (%#llx) for request: %{public}@", buf, 0x20u);
  }

  v23 = 0;
LABEL_21:

  v34 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)uploadStarted
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(DRSRequest *)self uploadID])
  {
    v3 = DPLogHandle_RequestError();
    if (os_signpost_enabled(v3))
    {
      requestID = [(DRSRequest *)self requestID];
      *buf = 138543362;
      v17 = requestID;
      _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidUploadID", "Request ID %{public}@: Trying to start an upload when we already have an upload ID", buf, 0xCu);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    self->_uploadID = atomic_fetch_add(&_uniqueSignpostID_nextSerialNumber, 1uLL);
    v15 = 0;
    v5 = [(DRSRequest *)self updateToState:2 errorDescription:0 errorOut:&v15];
    v3 = v15;
    if (v5)
    {
      v6 = DPLogHandle_CKRecordUpload();
      uploadID = [(DRSRequest *)self uploadID];
      if (uploadID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v8 = uploadID;
        if (os_signpost_enabled(v6))
        {
          requestID2 = [(DRSRequest *)self requestID];
          teamID = [(DRSRequest *)self teamID];
          issueCategory = [(DRSRequest *)self issueCategory];
          issueDescription = [(DRSRequest *)self issueDescription];
          *buf = 138413058;
          v17 = requestID2;
          v18 = 2114;
          v19 = teamID;
          v20 = 2114;
          v21 = issueCategory;
          v22 = 2114;
          v23 = issueDescription;
          _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "LogUpload", "Began upload of log with request ID %@, %{public, name=teamID}@/%{public, name=issueCategory}@/%{public, name=issueDescription}@", buf, 0x2Au);
        }
      }

      ++self->_uploadAttemptCount;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)uploadFailedDueToReason:(id)reason ckOperationID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  dCopy = d;
  if (dCopy)
  {
    v8 = dCopy;
  }

  else
  {
    v8 = @"-";
  }

  uploadAttemptCount = [(DRSRequest *)self uploadAttemptCount];
  maxUploadAttemptCount = [objc_opt_class() maxUploadAttemptCount];
  v11 = DPLogHandle_CKRecordUpload();
  uploadID = [(DRSRequest *)self uploadID];
  v13 = uploadID - 1;
  if (uploadAttemptCount >= maxUploadAttemptCount)
  {
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = reasonCopy;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_INTERVAL_END, uploadID, "LogUpload", "Upload failure. CKOperationID: %{public}@, Error: %{public}@", buf, 0x16u);
    }

    reasonCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Stopped trying to upload after %u attempts. Upload error: %@", -[DRSRequest uploadAttemptCount](self, "uploadAttemptCount"), reasonCopy];
    [(DRSRequest *)self updateToState:4355 errorDescription:reasonCopy errorOut:0];
  }

  else
  {
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = reasonCopy;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_INTERVAL_END, uploadID, "LogUpload", "Upload failed. Will retry. CKOperationID: %{public}@, Error: %{public}@", buf, 0x16u);
    }

    [(DRSRequest *)self updateToState:1 errorDescription:0 errorOut:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)uploadCompleteWithError:(id)error ckOperationID:(id)d ckRecordID:(id)iD
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  if (error)
  {
    localizedDescription = [error localizedDescription];
    v11 = localizedDescription;
    if (localizedDescription)
    {
      v12 = localizedDescription;
    }

    else
    {
      v12 = @"Unknown";
    }

    [(DRSRequest *)self uploadFailedDueToReason:v12 ckOperationID:dCopy];
  }

  else
  {
    objc_storeStrong(&self->_ckRecordID, iD);
    v13 = DPLogHandle_CKRecordUpload();
    uploadID = [(DRSRequest *)self uploadID];
    if (uploadID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = uploadID;
      if (os_signpost_enabled(v13))
      {
        v17[0] = 67240450;
        v17[1] = 1;
        v18 = 2114;
        v19 = iDCopy;
        _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_INTERVAL_END, v15, "LogUpload", "Upload success. %{public, name=uploadSuccess}u CK Record ID: %{public}@", v17, 0x12u);
      }
    }

    [(DRSRequest *)self updateToState:0x2000 errorDescription:0 errorOut:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)makeTerminalDueToMissingLog
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = DPLogHandle_CKRecordUpload();
  uploadID = [(DRSRequest *)self uploadID];
  if (uploadID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = uploadID;
    if (os_signpost_enabled(v3))
    {
      requestID = [(DRSRequest *)self requestID];
      *buf = 138543362;
      v14 = requestID;
      _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, v5, "MakingTerminalDueToLogsMissing", "Moving %{public}@ to terminal state due to missing uploadable content", buf, 0xCu);
    }
  }

  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  logPath = [(DRSRequest *)self logPath];
  v9 = logPath;
  v10 = @"Unknown";
  if (logPath)
  {
    v10 = logPath;
  }

  v11 = [v7 initWithFormat:@"Log file is missing (path: %@)", v10];

  [(DRSRequest *)self updateToState:4354 errorDescription:v11 errorOut:0];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)uploadAbortedDueToLogSize
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = DPLogHandle_CKRecordUpload();
  uploadID = [(DRSRequest *)self uploadID];
  if (uploadID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = uploadID;
    if (os_signpost_enabled(v3))
    {
      requestID = [(DRSRequest *)self requestID];
      v8 = 138543362;
      v9 = requestID;
      _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_INTERVAL_END, v5, "LogUpload", "Log size for %{public}@ exceeds cap", &v8, 0xCu);
    }
  }

  [(DRSRequest *)self updateToState:4357 errorDescription:@"Log size is too large or could not be determined" errorOut:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)uploadDeniedByDecisionServerWithReason:(id)reason
{
  v13 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = DPLogHandle_CKRecordUpload();
  uploadID = [(DRSRequest *)self uploadID];
  if (uploadID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = uploadID;
    if (os_signpost_enabled(v5))
    {
      if (reasonCopy)
      {
        v8 = reasonCopy;
      }

      else
      {
        v8 = @"Unknown";
      }

      v11 = 138543362;
      v12 = v8;
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_INTERVAL_END, v7, "LogUpload", "Upload denied by decision server due to reason %{public}@", &v11, 0xCu);
    }
  }

  if (reasonCopy)
  {
    v9 = reasonCopy;
  }

  else
  {
    v9 = @"Unknown";
  }

  [(DRSRequest *)self updateToState:4353 errorDescription:v9 errorOut:0];

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)_requestWithRequestMO_ON_MOC_QUEUE:(id)e
{
  v13 = *MEMORY[0x277D85DE8];
  eCopy = e;
  if ([eCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = [[DRSTailspinRequest alloc] _initWithTailspinRequestMO_ON_MOC_QUEUE:eCopy];
LABEL_9:
    v5 = v4;
    goto LABEL_10;
  }

  if ([eCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = [[DRSSubmitLogRequest alloc] _initWithSubmitLogRequestMO_ON_MOC_QUEUE:eCopy];
    goto LABEL_9;
  }

  if ([eCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = [[DRSSubmitLogToCKContainerRequest alloc] _initWithSubmitLogToCKContainerRequestMO_ON_MOC_QUEUE:eCopy];
    goto LABEL_9;
  }

  if ([eCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = [[DRSSubmitRapidLogRequest alloc] _initWithSubmitRapidLogRequestMO_ON_MOC_QUEUE:eCopy];
    goto LABEL_9;
  }

  v8 = DPLogHandle_CoreDataError();
  if (os_signpost_enabled(v8))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = 138543362;
    v12 = v10;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnexpectedManagedObjectClass", "Tried to create a DRSRequest instance with an unknown ManagedObject class: %{public}@", &v11, 0xCu);
  }

  v5 = 0;
LABEL_10:

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_populateLogsArray_ON_MOC_QUEUE:(id)e
{
  v41 = *MEMORY[0x277D85DE8];
  eCopy = e;
  logs = [eCopy logs];
  v6 = [logs count];

  if (v6)
  {
    managedObjectModel = objc_alloc_init(MEMORY[0x277CBEB18]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    logs = [eCopy logs];
    v9 = [logs countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(logs);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = [[DRSLog alloc] _initWithLogMO_ON_MOC_QUEUE:v13];
          if (!v14)
          {
            v17 = DPLogHandle_CoreDataError();
            if (os_signpost_enabled(v17))
            {
              path = [v13 path];
              v19 = [v13 size];
              *buf = 138412546;
              v37 = path;
              v38 = 2048;
              v39 = v19;
              _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSLogCreationFailure", "Failed to create a DRSLog from a DRSLogMO: Path: %@ Size: %llu", buf, 0x16u);
            }

            v16 = 0;
            goto LABEL_34;
          }

          v15 = v14;
          [(NSArray *)managedObjectModel addObject:v14];
        }

        v10 = [logs countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    managedObjectModel = managedObjectModel;
    logs = self->_logs;
    self->_logs = managedObjectModel;
    v16 = 1;
    goto LABEL_34;
  }

  managedObjectContext = [eCopy managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];

  versionIdentifiers = [(NSArray *)managedObjectModel versionIdentifiers];
  LOBYTE(persistentStoreCoordinator) = [versionIdentifiers containsObject:@"3"];

  if ((persistentStoreCoordinator & 1) == 0)
  {
    logs = [eCopy valueForKey:@"logPath"];
    v23 = [eCopy valueForKey:@"cachedLogSize"];
    v24 = [eCopy valueForKey:@"transferOwnership"];
    if (!logs)
    {
      v16 = 1;
LABEL_33:

LABEL_34:
      goto LABEL_35;
    }

    if (!v23)
    {
      v23 = &unk_2847FF750;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = -[DRSLog _initWithLogPath:transferOwnership:size:]([DRSLog alloc], "_initWithLogPath:transferOwnership:size:", logs, [v24 BOOLValue], objc_msgSend(v23, "unsignedLongLongValue"));
          v35 = v25;
          v16 = 1;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
          v27 = self->_logs;
          self->_logs = v26;

LABEL_32:
          goto LABEL_33;
        }

        v25 = DPLogHandle_CoreDataError();
        if (os_signpost_enabled(v25))
        {
          *buf = 0;
          v28 = "Unexpected class for 'transferOwnership'";
          goto LABEL_30;
        }

LABEL_31:
        v16 = 0;
        goto LABEL_32;
      }

      v25 = DPLogHandle_CoreDataError();
      if (!os_signpost_enabled(v25))
      {
        goto LABEL_31;
      }

      *buf = 0;
      v28 = "Unexpected class for 'cachedLogSize'";
    }

    else
    {
      v25 = DPLogHandle_CoreDataError();
      if (!os_signpost_enabled(v25))
      {
        goto LABEL_31;
      }

      *buf = 0;
      v28 = "Unexpected class for 'logPath'";
    }

LABEL_30:
    _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSLogCreationFailure", v28, buf, 2u);
    goto LABEL_31;
  }

  v16 = 1;
LABEL_35:

  v29 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (BOOL)_requestMOHasRequiredFields_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v4 = eCopy;
  if (eCopy)
  {
    issueCategory = [eCopy issueCategory];

    if (issueCategory)
    {
      issueCategory = [v4 issueDescription];

      if (issueCategory)
      {
        issueCategory = [v4 requestDate];

        if (issueCategory)
        {
          issueCategory = [v4 requestID];

          if (issueCategory)
          {
            teamID = [v4 teamID];
            LOBYTE(issueCategory) = teamID != 0;
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(issueCategory) = 0;
  }

  return issueCategory;
}

- (id)_initWithRequestMO_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  if (![objc_opt_class() _requestMOHasRequiredFields_ON_MOC_QUEUE:eCopy])
  {
    goto LABEL_13;
  }

  v31.receiver = self;
  v31.super_class = DRSRequest;
  v5 = [(DRSRequest *)&v31 init];
  self = v5;
  if (!v5)
  {
LABEL_12:
    self = self;
    selfCopy = self;
    goto LABEL_14;
  }

  if (![(DRSRequest *)v5 _populateLogsArray_ON_MOC_QUEUE:eCopy])
  {
LABEL_13:
    selfCopy = 0;
    goto LABEL_14;
  }

  teamID = [eCopy teamID];
  teamID = self->_teamID;
  self->_teamID = teamID;

  issueCategory = [eCopy issueCategory];
  issueCategory = self->_issueCategory;
  self->_issueCategory = issueCategory;

  issueDescription = [eCopy issueDescription];
  issueDescription = self->_issueDescription;
  self->_issueDescription = issueDescription;

  self->_requestMCT = [eCopy requestMCT];
  contextDictionaryData = [eCopy contextDictionaryData];
  contextDictionaryData = self->_contextDictionaryData;
  self->_contextDictionaryData = contextDictionaryData;

  requestDate = [eCopy requestDate];
  requestDate = self->_requestDate;
  self->_requestDate = requestDate;

  build = [eCopy build];
  v17 = build;
  if (build)
  {
    v18 = build;
  }

  else
  {
    v18 = @"Unknown";
  }

  objc_storeStrong(&self->_build, v18);

  self->_uploadAttemptCount = [eCopy uploadAttemptCount];
  self->_hasBeenCountedByTelemetry = [eCopy hasBeenCountedByTelemetry];
  self->_decisionServerDecision = [eCopy decisionServerDecision];
  contextDictionaryData2 = [(DRSRequest *)self contextDictionaryData];

  if (!contextDictionaryData2)
  {
    goto LABEL_9;
  }

  contextDictionaryData3 = [(DRSRequest *)self contextDictionaryData];
  v21 = DRSDictionaryForData(contextDictionaryData3);
  contextDictionary = self->_contextDictionary;
  self->_contextDictionary = v21;

  selfCopy = [(DRSRequest *)self contextDictionary];

  if (selfCopy)
  {
LABEL_9:
    requestID = [eCopy requestID];
    requestID = self->_requestID;
    self->_requestID = requestID;

    self->_requestState = [eCopy requestState];
    if ([(DRSRequest *)self requestState]== 4353)
    {
      self->_decisionServerDecision = 1;
    }

    errorDescription = [eCopy errorDescription];
    errorDescription = self->_errorDescription;
    self->_errorDescription = errorDescription;

    self->_isExpedited = [eCopy isExpedited];
    ckRecordID = [eCopy ckRecordID];
    ckRecordID = self->_ckRecordID;
    self->_ckRecordID = ckRecordID;

    goto LABEL_12;
  }

LABEL_14:

  return selfCopy;
}

+ (id)requestsForFilterPredicate:(id)predicate context:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out
{
  v42 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  contextCopy = context;
  descriptorsCopy = descriptors;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __85__DRSRequest_requestsForFilterPredicate_context_sortDescriptors_fetchLimit_errorOut___block_invoke;
  v26[3] = &unk_27899ECE8;
  selfCopy = self;
  v16 = predicateCopy;
  v27 = v16;
  v17 = descriptorsCopy;
  v28 = v17;
  limitCopy = limit;
  v18 = contextCopy;
  v29 = v18;
  v31 = &v34;
  v19 = v15;
  v30 = v19;
  [v18 performBlockAndWait:v26];
  if (v35[5])
  {

    v20 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v20))
    {
      localizedDescription = [v35[5] localizedDescription];
      *buf = 138543362;
      v41 = localizedDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestFetchFailure", "Failed to fetch requests due to error: %{public}@", buf, 0xCu);
    }

    v19 = 0;
  }

  if (out)
  {
    *out = v35[5];
  }

  v22 = v30;
  v23 = v19;

  _Block_object_dispose(&v34, 8);
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __85__DRSRequest_requestsForFilterPredicate_context_sortDescriptors_fetchLimit_errorOut___block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = [*(a1 + 72) entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setPredicate:*(a1 + 32)];
  [v4 setSortDescriptors:*(a1 + 40)];
  if (*(a1 + 80))
  {
    [v4 setFetchLimit:?];
  }

  v5 = *(a1 + 48);
  v28 = 0;
  v6 = [v5 executeFetchRequest:v4 error:&v28];
  v7 = v28;
  v8 = v7;
  if (v6)
  {
    if ([v6 count])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v25;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [DRSRequest _requestWithRequestMO_ON_MOC_QUEUE:*(*(&v24 + 1) + 8 * i), v24];
            if (!v14)
            {
              v18 = MEMORY[0x277CCA9B8];
              v29 = *MEMORY[0x277CCA450];
              v30 = @"Failed to create request for requestMO";
              v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
              v20 = [v18 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v19];
              v21 = *(*(a1 + 64) + 8);
              v22 = *(v21 + 40);
              *(v21 + 40) = v20;

              goto LABEL_18;
            }

            v15 = v14;
            [*(a1 + 56) addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v24 objects:v31 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }
  }

  else
  {
    if (!v7)
    {
      v16 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v33[0] = @"Unknown fetch error";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v8 = [v16 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v17];
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v8);
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (id)unreportedTerminalRequestsFromContext:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out
{
  v9 = MEMORY[0x277CCAC30];
  descriptorsCopy = descriptors;
  contextCopy = context;
  4096 = [v9 predicateWithFormat:@"(requestState >= %llu) AND (hasBeenCountedByTelemetry == NO)", 4096];
  v13 = [DRSRequest requestsForFilterPredicate:4096 context:contextCopy sortDescriptors:descriptorsCopy fetchLimit:limit errorOut:out];

  return v13;
}

+ (id)uploadedBytesSinceDate:(id)date context:(id)context errorOut:(id *)out
{
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  0x2000 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(requestDate >= %@) AND (requestState == %llu)", date, 0x2000];
  v9 = [DRSRequest requestsForFilterPredicate:0x2000 context:contextCopy sortDescriptors:0 fetchLimit:0 errorOut:out];
  v10 = v9;
  v11 = 0;
  if (!*out)
  {
    if ([v9 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v21;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v15 += [*(*(&v20 + 1) + 8 * i) totalLogSizeBytes];
          }

          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }

      else
      {
        v15 = 0;
      }

      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
    }

    else
    {
      v11 = &unk_2847FF750;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (unint64_t)requestCountForFilterPredicate:(id)predicate context:(id)context fetchLimit:(unint64_t)limit errorOut:(id *)out
{
  v44 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  contextCopy = context;
  v12 = MEMORY[0x277CBE428];
  entityName = [self entityName];
  v14 = [v12 fetchRequestWithEntityName:entityName];

  [v14 setPredicate:predicateCopy];
  [v14 setResultType:4];
  if (limit)
  {
    [v14 setFetchLimit:limit];
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __73__DRSRequest_requestCountForFilterPredicate_context_fetchLimit_errorOut___block_invoke;
  v27 = &unk_27899ED10;
  v30 = &v38;
  v15 = contextCopy;
  v28 = v15;
  v16 = v14;
  v29 = v16;
  v31 = &v32;
  [v15 performBlockAndWait:&v24];
  if (out)
  {
    *out = v33[5];
  }

  if (v33[5])
  {
    v17 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v17))
    {
      localizedDescription = [v33[5] localizedDescription];
      v19 = localizedDescription;
      v20 = @"Unknown";
      if (localizedDescription)
      {
        v20 = localizedDescription;
      }

      *buf = 138543362;
      v43 = v20;
      _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestCountFailure", "Encountered failure when fetching count: %{public}@", buf, 0xCu);
    }

    v21 = 0;
  }

  else
  {
    v21 = v39[3];
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void __73__DRSRequest_requestCountForFilterPredicate_context_fetchLimit_errorOut___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 countForFetchRequest:v3 error:&obj];
  v5 = obj;
  *(*(a1[6] + 8) + 24) = v4;
  objc_storeStrong((*(a1[7] + 8) + 40), v5);
}

+ (id)leastRecentDateFirstSortDescriptor
{
  if (leastRecentDateFirstSortDescriptor_onceToken != -1)
  {
    +[DRSRequest leastRecentDateFirstSortDescriptor];
  }

  v3 = leastRecentDateFirstSortDescriptor_leastRecentDateSortDescriptor;

  return v3;
}

void __48__DRSRequest_leastRecentDateFirstSortDescriptor__block_invoke()
{
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"requestDate" ascending:1];
  v1 = leastRecentDateFirstSortDescriptor_leastRecentDateSortDescriptor;
  leastRecentDateFirstSortDescriptor_leastRecentDateSortDescriptor = v0;
}

+ (id)mostRecentDateFirstSortDescriptor
{
  if (mostRecentDateFirstSortDescriptor_onceToken != -1)
  {
    +[DRSRequest mostRecentDateFirstSortDescriptor];
  }

  v3 = mostRecentDateFirstSortDescriptor_mostRecentDateSortDescriptor;

  return v3;
}

void __47__DRSRequest_mostRecentDateFirstSortDescriptor__block_invoke()
{
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"requestDate" ascending:0];
  v1 = mostRecentDateFirstSortDescriptor_mostRecentDateSortDescriptor;
  mostRecentDateFirstSortDescriptor_mostRecentDateSortDescriptor = v0;
}

+ (BOOL)cleanRequestRecordsFromPersistentContainer:(id)container removeFiles:(BOOL)files removeRecord:(BOOL)record matchingPredicate:(id)predicate errorOut:(id *)out
{
  recordCopy = record;
  containerCopy = container;
  predicateCopy = predicate;
  if (files || recordCopy)
  {
    newBackgroundContext = [containerCopy newBackgroundContext];
    v16 = MEMORY[0x277CBE428];
    entityName = [self entityName];
    v18 = [v16 fetchRequestWithEntityName:entityName];

    [v18 setPredicate:predicateCopy];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __109__DRSRequest_cleanRequestRecordsFromPersistentContainer_removeFiles_removeRecord_matchingPredicate_errorOut___block_invoke;
    v22[3] = &unk_27899ED58;
    v19 = newBackgroundContext;
    v23 = v19;
    v20 = v18;
    v24 = v20;
    v25 = &v28;
    filesCopy = files;
    v27 = recordCopy;
    [v19 performBlockAndWait:v22];
    if (out)
    {
      *out = v29[5];
    }

    v14 = v29[5] == 0;

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

void __109__DRSRequest_cleanRequestRecordsFromPersistentContainer_removeFiles_removeRecord_matchingPredicate_errorOut___block_invoke(uint64_t a1)
{
  v65[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v53 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v53];
  v5 = v53;
  v6 = v5;
  if (v4)
  {
    v41 = v5;
    v42 = v4;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v49 objects:v63 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v50;
      do
      {
        v10 = 0;
        do
        {
          if (*v50 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v49 + 1) + 8 * v10);
          if (*(a1 + 56) == 1)
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v12 = [v11 logs];
            v13 = [v12 countByEnumeratingWithState:&v45 objects:v62 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v46;
              do
              {
                v16 = 0;
                do
                {
                  if (*v46 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = [*(*(&v45 + 1) + 8 * v16) path];
                  _deleteFileWithPath(v17);

                  ++v16;
                }

                while (v14 != v16);
                v14 = [v12 countByEnumeratingWithState:&v45 objects:v62 count:16];
              }

              while (v14);
            }
          }

          if (*(a1 + 57) == 1)
          {
            [*(a1 + 32) deleteObject:v11];
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v49 objects:v63 count:16];
      }

      while (v8);
    }

    if ([*(a1 + 32) hasChanges])
    {
      v18 = *(a1 + 32);
      v44 = 0;
      v19 = [v18 save:&v44];
      v20 = v44;
      if ((v19 & 1) == 0)
      {
        v21 = DPLogHandle_CoreDataError();
        if (os_signpost_enabled(v21))
        {
          v22 = [v20 localizedDescription];
          v23 = v22;
          v24 = @"Unknown";
          if (v22)
          {
            v24 = v22;
          }

          *buf = 138543362;
          v55 = v24;
          _os_signpost_emit_with_name_impl(&dword_232906000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearRecordsFailure", "Failed to save deletion of records due to error: %{public}@", buf, 0xCu);
        }

        if (!v20)
        {
          v25 = MEMORY[0x277CCA9B8];
          v60 = *MEMORY[0x277CCA450];
          v61 = @"Unknown save error";
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          v20 = [v25 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v26];
        }
      }
    }

    v27 = DPLogHandle_CoreData();
    v28 = v41;
    if (os_signpost_enabled(v27))
    {
      v29 = [obj count];
      v30 = @"NO";
      v31 = *(a1 + 57);
      if (*(a1 + 56))
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      *buf = 134218498;
      v55 = v29;
      if (v31)
      {
        v30 = @"YES";
      }

      v56 = 2114;
      v57 = v32;
      v58 = 2114;
      v59 = v30;
      _os_signpost_emit_with_name_impl(&dword_232906000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearRecordsSuccess", "Cleaned %lu requests (Remove files: %{public}@, remove records: %{public}@", buf, 0x20u);
    }

    v4 = v42;
  }

  else
  {
    v33 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v33))
    {
      v34 = [v6 localizedDescription];
      v35 = v34;
      v36 = @"Unknown";
      if (v34)
      {
        v36 = v34;
      }

      *buf = 138543362;
      v55 = v36;
      _os_signpost_emit_with_name_impl(&dword_232906000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearRecordsFailure", "Fetch records due to error: %{public}@", buf, 0xCu);
    }

    if (!v6)
    {
      v37 = MEMORY[0x277CCA9B8];
      v64 = *MEMORY[0x277CCA450];
      v65[0] = @"Unknown fetch error";
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
      v6 = [v37 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v38];
    }

    v39 = *(*(a1 + 48) + 8);
    v28 = v6;
    v27 = *(v39 + 40);
    *(v39 + 40) = v28;
  }

  v40 = *MEMORY[0x277D85DE8];
}

+ (BOOL)unblockStrandedUploadingRecordsFromPersistentContainer:(id)container errorOut:(id *)out
{
  containerCopy = container;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"requestState == %llu", 2];
  newBackgroundContext = [containerCopy newBackgroundContext];
  v9 = MEMORY[0x277CBE428];
  entityName = [self entityName];
  v11 = [v9 fetchRequestWithEntityName:entityName];

  [v11 setPredicate:v7];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__DRSRequest_unblockStrandedUploadingRecordsFromPersistentContainer_errorOut___block_invoke;
  v16[3] = &unk_27899ED80;
  v12 = newBackgroundContext;
  v17 = v12;
  v13 = v11;
  v18 = v13;
  v19 = &v22;
  v20 = v21;
  [v12 performBlockAndWait:v16];
  if (out)
  {
    *out = v23[5];
  }

  v14 = v23[5] == 0;

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v22, 8);

  return v14;
}

void __78__DRSRequest_unblockStrandedUploadingRecordsFromPersistentContainer_errorOut___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v45 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v45];
  v5 = v45;
  v6 = v5;
  if (v4)
  {
    v38 = v5;
    v39 = v4;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v41 + 1) + 8 * i);
          v13 = DPLogHandle_CoreDataError();
          if (os_signpost_enabled(v13))
          {
            v14 = [v12 requestID];
            v15 = [v14 UUIDString];
            v16 = v15;
            v17 = @"Unknown";
            if (v15)
            {
              v17 = v15;
            }

            *buf = 138543362;
            v52 = v17;
            _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnblockingRecord", "Moved record back to awaiting upload: %{public}@", buf, 0xCu);
          }

          ++*(*(*(a1 + 56) + 8) + 24);
          [v12 setRequestState:1];
        }

        v9 = [v7 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v9);
    }

    v18 = v38;
    if ([*(a1 + 32) hasChanges])
    {
      v19 = *(a1 + 32);
      v40 = 0;
      v20 = [v19 save:&v40];
      v21 = v40;
      if ((v20 & 1) == 0)
      {
        v22 = DPLogHandle_CoreDataError();
        if (os_signpost_enabled(v22))
        {
          v23 = [v21 localizedDescription];
          v24 = v23;
          v25 = @"Unknown";
          if (v23)
          {
            v25 = v23;
          }

          *buf = 138543362;
          v52 = v25;
          _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnblockUploadingRecordsFailure", "Failed to save deletion of records due to error: %{public}@", buf, 0xCu);
        }

        if (!v21)
        {
          v26 = MEMORY[0x277CCA9B8];
          v46 = *MEMORY[0x277CCA450];
          v47 = @"Unknown save error";
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          v21 = [v26 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v27];
        }
      }
    }

    v28 = DPLogHandle_CoreData();
    if (os_signpost_enabled(v28))
    {
      v29 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 134217984;
      v52 = v29;
      _os_signpost_emit_with_name_impl(&dword_232906000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnblockUploadingRecordsSuccess", "Unblocked %llu stuck requests", buf, 0xCu);
    }

    v4 = v39;
  }

  else
  {
    v30 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v30))
    {
      v31 = [v6 localizedDescription];
      v32 = v31;
      v33 = @"Unknown";
      if (v31)
      {
        v33 = v31;
      }

      *buf = 138543362;
      v52 = v33;
      _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnblockUploadingRecordsFailure", "Fetch records due to error: %{public}@", buf, 0xCu);
    }

    if (!v6)
    {
      v34 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA450];
      v50 = @"Unknown fetch error";
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v6 = [v34 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v35];
    }

    v36 = *(*(a1 + 48) + 8);
    v18 = v6;
    v28 = *(v36 + 40);
    *(v36 + 40) = v18;
  }

  v37 = *MEMORY[0x277D85DE8];
}

+ (BOOL)cullOldRequestRecordsFromPersistentContainer:(id)container currentDate:(id)date errorOut:(id *)out
{
  v43[2] = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v8 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  v10 = [[v8 alloc] initWithTimeInterval:dateCopy sinceDate:-259200.0];
  v11 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:dateCopy sinceDate:-864000.0];
  v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:dateCopy sinceDate:-2592000.0];
  v13 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:dateCopy sinceDate:-5184000.0];

  0x2000 = [MEMORY[0x277CCAC30] predicateWithFormat:@"requestDate < %@ AND requestState >= %llu", v11, 0x2000];
  v15 = [DRSRequest cleanRequestRecordsFromPersistentContainer:containerCopy removeFiles:1 removeRecord:0 matchingPredicate:0x2000 errorOut:out];

  if (v15)
  {
    v38 = v13;
    0x20002 = [MEMORY[0x277CCAC30] predicateWithFormat:@"requestState >= %llu AND requestState < %llu", 4096, 0x2000];
    v40 = v10;
    [MEMORY[0x277CCAC30] predicateWithFormat:@"hasBeenCountedByTelemetry == YES AND requestDate < %@", v10];
    v17 = v37 = out;
    v39 = v11;
    [MEMORY[0x277CCAC30] predicateWithFormat:@"hasBeenCountedByTelemetry == YES AND requestDate < %@", v11];
    v18 = containerCopy;
    v20 = v19 = v12;
    v21 = MEMORY[0x277CCA920];
    v43[0] = v17;
    v43[1] = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v23 = [v21 orPredicateWithSubpredicates:v22];

    v24 = MEMORY[0x277CCA920];
    v42[0] = 0x20002;
    v42[1] = v23;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v26 = [v24 andPredicateWithSubpredicates:v25];

    v12 = v19;
    containerCopy = v18;

    v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"requestState >= %llu AND requestDate < %@", 0x2000, v12];
    v28 = MEMORY[0x277CCA920];
    v41[0] = v26;
    v41[1] = v27;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    v30 = [v28 orPredicateWithSubpredicates:v29];

    LODWORD(v29) = [DRSRequest cleanRequestRecordsFromPersistentContainer:v18 removeFiles:1 removeRecord:1 matchingPredicate:v30 errorOut:v37];
    if (v29 && ([MEMORY[0x277CCAC30] predicateWithFormat:@"requestState >= %llu AND requestState < %llu", 4096, 0x2000], v31 = objc_claimAutoreleasedReturnValue(), v32 = +[DRSRequest cleanRequestRecordsFromPersistentContainer:removeFiles:removeRecord:matchingPredicate:errorOut:](DRSRequest, "cleanRequestRecordsFromPersistentContainer:removeFiles:removeRecord:matchingPredicate:errorOut:", v18, 1, 0, v31, v37), v31, v32))
    {
      v13 = v38;
      v33 = [MEMORY[0x277CCAC30] predicateWithFormat:@"requestDate < %@", v38];
      v34 = [DRSRequest cleanRequestRecordsFromPersistentContainer:v18 removeFiles:1 removeRecord:1 matchingPredicate:v33 errorOut:v37];

      v11 = v39;
      v10 = v40;
    }

    else
    {
      v34 = 0;
      v11 = v39;
      v10 = v40;
      v13 = v38;
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

+ (id)migrateRequestDataStoreAtPath:(id)path errorOut:(id *)out
{
  v37 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = DRSRequestPersistentContainerForVersion(2, pathCopy, 0, 1, out);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

  newBackgroundContext = [v7 newBackgroundContext];
  v10 = MEMORY[0x277CBE428];
  entityName = [self entityName];
  v12 = [v10 fetchRequestWithEntityName:entityName];

  *v33 = 0;
  *&v33[8] = v33;
  *&v33[16] = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __53__DRSRequest_migrateRequestDataStoreAtPath_errorOut___block_invoke;
  v25[3] = &unk_27899EDA8;
  v13 = newBackgroundContext;
  v26 = v13;
  v14 = v12;
  v27 = v14;
  v28 = v33;
  [v13 performBlockAndWait:v25];
  v15 = *(*&v33[8] + 40);
  if (v15)
  {
    if (out)
    {
      v16 = v15;
      *out = v15;
    }

    v17 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v17))
    {
      localizedDescription = [*(*&v33[8] + 40) localizedDescription];
      v19 = localizedDescription;
      v20 = @"Unknown error";
      if (localizedDescription)
      {
        v20 = localizedDescription;
      }

      *buf = 138543618;
      v30 = pathCopy;
      v31 = 2112;
      v32 = v20;
      _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MigrationFailed", "Migration of '%{public}@' failed. Encountered error: %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(v33, 8);
  if (!v15)
  {
    v21 = DRSRequestPersistentContainerForVersion(3, pathCopy, 0, 1, out);
    v22 = DPLogHandle_CoreData();
    if (os_signpost_enabled(v22))
    {
      *v33 = 138543618;
      *&v33[4] = pathCopy;
      *&v33[12] = 1024;
      *&v33[14] = 3;
      _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MigrationSucceeded", "Migration of '%{public}@' to version %hu succeeded", v33, 0x12u);
    }
  }

  else
  {
LABEL_11:
    v21 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

void __53__DRSRequest_migrateRequestDataStoreAtPath_errorOut___block_invoke(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v29 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v29];
  v5 = v29;
  v6 = v29;
  objc_storeStrong((*(a1[6] + 8) + 40), v5);
  if (!*(*(a1[6] + 8) + 40))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [DRSRequest _requestWithRequestMO_ON_MOC_QUEUE:v12];
          if (!v13)
          {
            v18 = MEMORY[0x277CCA9B8];
            v30 = *MEMORY[0x277CCA450];
            v31 = @"Failed to create request for requestMO";
            v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
            v20 = [v18 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v19];
            v21 = *(a1[6] + 8);
            v22 = *(v21 + 40);
            *(v21 + 40) = v20;

            goto LABEL_12;
          }

          v14 = v13;
          [v13 _configureRequestMO:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = a1[4];
    v24 = v6;
    [v15 save:&v24];
    v16 = v24;

    v17 = *(a1[6] + 8);
    v6 = v16;
    v7 = *(v17 + 40);
    *(v17 + 40) = v6;
LABEL_12:
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)fileURLs
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  filePaths = [(DRSRequest *)self filePaths];
  v5 = [filePaths countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(filePaths);
        }

        v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:*(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [filePaths countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)fileNames
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  filePaths = [(DRSRequest *)self filePaths];
  v5 = [filePaths countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(filePaths);
        }

        lastPathComponent = [*(*(&v12 + 1) + 8 * i) lastPathComponent];
        [v3 addObject:lastPathComponent];
      }

      v6 = [filePaths countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)filePaths
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  logs = [(DRSRequest *)self logs];
  v5 = [logs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(logs);
        }

        path = [*(*(&v12 + 1) + 8 * i) path];
        [v3 addObject:path];
      }

      v6 = [logs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)fileAssets
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  fileURLs = [(DRSRequest *)self fileURLs];
  v5 = [fileURLs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(fileURLs);
        }

        v9 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:*(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [fileURLs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)recordRepresentation
{
  v32 = *MEMORY[0x277D85DE8];
  logs = [(DRSRequest *)self logs];
  v4 = [logs count];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"DPLog"];
    v6 = +[DRSSystemProfile sharedInstance];
    buildVariant = [v6 buildVariant];
    [v5 setObject:buildVariant forKeyedSubscript:@"buildVariant"];

    deviceCategory = [v6 deviceCategory];
    [v5 setObject:deviceCategory forKeyedSubscript:@"deviceCategory"];

    deviceModel = [v6 deviceModel];
    [v5 setObject:deviceModel forKeyedSubscript:@"deviceModel"];

    platformString = [v6 platformString];
    [v5 setObject:platformString forKeyedSubscript:@"platform"];

    build = [(DRSRequest *)self build];
    [v5 setObject:build forKeyedSubscript:@"build"];

    teamID = [(DRSRequest *)self teamID];
    [v5 setObject:teamID forKeyedSubscript:@"teamID"];

    issueCategory = [(DRSRequest *)self issueCategory];
    [v5 setObject:issueCategory forKeyedSubscript:@"issueCategory"];

    issueDescription = [(DRSRequest *)self issueDescription];
    [v5 setObject:issueDescription forKeyedSubscript:@"issueDescription"];

    logType = [(DRSRequest *)self logType];
    [v5 setObject:logType forKeyedSubscript:@"logType"];

    requestDate = [(DRSRequest *)self requestDate];
    [v5 setObject:requestDate forKeyedSubscript:@"requestDate"];

    contextDictionaryData = [(DRSRequest *)self contextDictionaryData];

    if (contextDictionaryData)
    {
      contextDictionaryData2 = [(DRSRequest *)self contextDictionaryData];
      [v5 setObject:contextDictionaryData2 forKeyedSubscript:@"contextDictionaryData"];
    }

    fileAssets = [(DRSRequest *)self fileAssets];
    [v5 setObject:fileAssets forKeyedSubscript:@"fileAssets"];

    fileNames = [(DRSRequest *)self fileNames];
    [v5 setObject:fileNames forKeyedSubscript:@"fileNames"];

    requestID = [(DRSRequest *)self requestID];
    uUIDString = [requestID UUIDString];
    [v5 setObject:uUIDString forKeyedSubscript:@"requestID"];

    v23 = DPLogHandle_CKRecord();
    if (os_signpost_enabled(v23))
    {
      requestID2 = [(DRSRequest *)self requestID];
      requestType = [(DRSRequest *)self requestType];
      v28 = 138543618;
      v29 = requestID2;
      v30 = 2114;
      v31 = requestType;
      _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKRecordCreation", "%{public, name=requestID}@ %{public, name=requestType}@", &v28, 0x16u);
    }
  }

  else
  {
    v6 = DPLogHandle_CKRecordError();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v28) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MissingFilePaths", "No file paths found", &v28, 2u);
    }

    v5 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)protoRequestDescription
{
  v3 = objc_alloc_init(DRSProtoRequestDescription);
  teamID = [(DRSRequest *)self teamID];
  [(DRSProtoRequestDescription *)v3 setTeamId:teamID];

  issueCategory = [(DRSRequest *)self issueCategory];
  [(DRSProtoRequestDescription *)v3 setIssueCategory:issueCategory];

  contextDictionaryData = [(DRSRequest *)self contextDictionaryData];
  [(DRSProtoRequestDescription *)v3 setContextDictionaryData:contextDictionaryData];

  requestDate = [(DRSRequest *)self requestDate];
  [requestDate timeIntervalSince1970];
  [(DRSProtoRequestDescription *)v3 setRequestTime:v8];

  build = [(DRSRequest *)self build];
  [(DRSProtoRequestDescription *)v3 setBuild:build];

  return v3;
}

- (id)protoFileDescriptions
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  logs = [(DRSRequest *)self logs];
  v5 = [logs countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    *&v6 = 138543618;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(logs);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        fileDescription = [v10 fileDescription];
        if (fileDescription)
        {
          [v3 addObject:fileDescription];
        }

        else
        {
          v12 = DPLogHandle_CKRecord();
          if (os_signpost_enabled(v12))
          {
            requestID = [(DRSRequest *)self requestID];
            path = [v10 path];
            *buf = v17;
            v23 = requestID;
            v24 = 2114;
            v25 = path;
            _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProtoFileDescriptionFailure", "%{public, name=requestID}@ Failed to create description for path '%{public}@'", buf, 0x16u);
          }
        }
      }

      v7 = [logs countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)uploadRequest
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(DRSRequest *)self requestState]!= 2)
  {
    v9 = DPLogHandle_CKCodeServerError();
    if (!os_signpost_enabled(v9))
    {
      goto LABEL_12;
    }

    v10 = [(DRSRequest *)self debugDescription];
    v14 = 138543362;
    v15 = v10;
    v11 = "Tried to create an upload request for a request that was not in the middle of the upload flow (%{public}@)";
LABEL_11:
    _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UploadRequestCreationError", v11, &v14, 0xCu);

    goto LABEL_12;
  }

  logs = [(DRSRequest *)self logs];
  v4 = [logs count];

  if (!v4)
  {
    v9 = DPLogHandle_CKCodeServerError();
    if (!os_signpost_enabled(v9))
    {
      goto LABEL_12;
    }

    v10 = [(DRSRequest *)self debugDescription];
    v14 = 138543362;
    v15 = v10;
    v11 = "Tried to create an upload request for a request with no file: %{public}@";
    goto LABEL_11;
  }

  if ([(DRSRequest *)self totalLogSizeBytes])
  {
    protoRequestDescription = [(DRSRequest *)self protoRequestDescription];
    v6 = objc_alloc_init(DRSProtoDiagnosticUploadRequest);
    [(DRSProtoDiagnosticUploadRequest *)v6 setRequestDescription:protoRequestDescription];
    issueDescription = [(DRSRequest *)self issueDescription];
    [(DRSProtoDiagnosticUploadRequest *)v6 setIssueDescription:issueDescription];

    protoFileDescriptions = [(DRSRequest *)self protoFileDescriptions];
    [(DRSProtoDiagnosticUploadRequest *)v6 setLogs:protoFileDescriptions];

    goto LABEL_13;
  }

  v9 = DPLogHandle_CKCodeServerError();
  if (os_signpost_enabled(v9))
  {
    v10 = [(DRSRequest *)self debugDescription];
    v14 = 138543362;
    v15 = v10;
    v11 = "Tried to create an upload request for a request with no net file size: %{public}@";
    goto LABEL_11;
  }

LABEL_12:

  v6 = 0;
LABEL_13:
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (DRSDecisionServerBatchRequest)pbBatchInstance
{
  v2 = objc_alloc_init(DRSProtoDiagnosticUploadRequestBatch);

  return v2;
}

- (void)updateToState:(__CFString *)a1 errorDescription:(NSObject *)a2 errorOut:.cold.1(__CFString *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = @"Unknown";
  if (a1)
  {
    v2 = a1;
  }

  v4 = 138543362;
  v5 = v2;
  _os_log_fault_impl(&dword_232906000, a2, OS_LOG_TYPE_FAULT, "On-receipt error encountered: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end