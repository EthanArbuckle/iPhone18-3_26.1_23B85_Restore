@interface CKDURLRequest
- (BOOL)_onLifecycleQueue;
- (BOOL)allowsCellularAccess;
- (BOOL)allowsExpensiveNetworkAccess;
- (BOOL)allowsPowerNapScheduling;
- (BOOL)expectDelayBeforeRequestBegins;
- (BOOL)isErrorInducerRequest;
- (BOOL)isFinished;
- (BOOL)markAsFinished;
- (BOOL)performOnLifecycleQueueIfNotFinished:(id)finished;
- (BOOL)preferAnonymousRequests;
- (BOOL)requiresCKAnonymousUserIDs;
- (BOOL)resolvedAutomaticallyRetryNetworkFailures;
- (BOOL)sendRequestAnonymously;
- (BOOL)shouldCompressBody;
- (BOOL)usesBackgroundSession;
- (C2RequestOptions)requestOptions;
- (CKDOperation)operation;
- (CKDProtobufStreamWriter)streamWriter;
- (CKDURLRequest)initWithOperation:(id)operation;
- (CKRoughlyEquivalentProperties)equivalencyProperties;
- (CKTestRequestProperties)testRequestProperties;
- (NSArray)requestOperationClasses;
- (NSArray)requestOperations;
- (NSDictionary)responseHeaders;
- (NSInputStream)requestBodyStream;
- (NSNumber)operationGroupQuantity;
- (NSString)applicationBundleIdentifierForContainerAccess;
- (NSString)applicationBundleIdentifierForNetworkAttribution;
- (NSString)authPromptReason;
- (NSString)operationGroupID;
- (NSString)operationGroupName;
- (NSString)operationID;
- (NSString)operationIDForProtobuf;
- (NSString)path;
- (NSString)requestContentType;
- (NSString)sourceApplicationSecondaryIdentifier;
- (NSURL)url;
- (OS_dispatch_queue)lifecycleQueue;
- (double)timeoutIntervalForRequest;
- (double)timeoutIntervalForResource;
- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand;
- (id)_CFNetworkTaskIdentifierString;
- (id)_parseErrorDictionaryForJson:(id)json;
- (id)_protobufObjectParsedBlock;
- (id)_wrapErrorIfNecessary:(id)necessary;
- (id)ckShortDescription;
- (id)createAssetAuthorizeGetRequestOptionsHeaderInfoWithKey:(id)key value:(id)value;
- (id)defaultParserForContentType:(id)type;
- (id)generateRequestOperations;
- (id)privacyProxyFailClosedOverride;
- (id)recordIDs:(id)ds filteredByZones:(id)zones;
- (id)recordIDsUsedInZones:(id)zones;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationCountsByOperationType;
- (id)statusReportWithIndent:(unint64_t)indent;
- (id)traceHeaderValues;
- (int)operationType;
- (int64_t)_handleServerProtobufResult:(id)result rawData:(id)data;
- (int64_t)databaseScope;
- (int64_t)partitionType;
- (int64_t)qualityOfService;
- (int64_t)serverType;
- (unint64_t)duetPreClearedMode;
- (unint64_t)networkServiceType;
- (unint64_t)resolvedDiscretionaryNetworkBehavior;
- (void)URLSession:(id)session _taskIsWaitingForConnection:(id)connection;
- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error;
- (void)URLSession:(id)session dataTask:(id)task _didReceiveData:(id)data completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task _conditionalRequirementsChanged:(BOOL)changed;
- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_acquireZoneGates;
- (void)_authTokenWithCompletionHandler:(id)handler;
- (void)_fetchContainerScopedUserID;
- (void)_fetchDeviceID;
- (void)_fetchServerCertificatesIfNeeded;
- (void)_finalizeRequestOperations:(id)operations request:(id)request;
- (void)_finishOnLifecycleQueueWithError:(id)error;
- (void)_handleAuthFailure;
- (void)_handlePlistResult:(id)result;
- (void)_handleServerJSONResult:(id)result;
- (void)_loadRequest:(id)request;
- (void)_performRequest;
- (void)_performWillSendTestCallback;
- (void)_prepareAuthTokens;
- (void)_prepareCloudKitAuthToken;
- (void)_registerPushTokens;
- (void)_registerRequestOperationTypesForOperations:(id)operations;
- (void)_renewAuthTokenWithCompletionHandler:(id)handler;
- (void)_setupConfiguration;
- (void)_setupPrivateDatabaseURL;
- (void)_setupPublicDatabaseURL;
- (void)_tearDownStreamWriter;
- (void)_triggerAutoBugCaptureWithErrorPayload:(id)payload;
- (void)_validateAccountAccess;
- (void)cancel;
- (void)dealloc;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)finishWithError:(id)error;
- (void)invokeCompletionBlock;
- (void)performASyncOnLifecycleQueueIfNotFinished:(id)finished fallbackBlock:(id)block;
- (void)performRequest;
- (void)prepareRequestOperationsForRequest:(id)request;
- (void)requestDidParse509CertObject:(id)object;
- (void)requestDidParseJSONObject:(id)object;
- (void)requestDidParseNodeFailure:(id)failure;
- (void)requestDidParsePlaintextObject:(id)object;
- (void)requestDidParsePlistObject:(id)object;
- (void)requestDidParseProtobufObject:(id)object completionHandler:(id)handler;
- (void)retryRequest;
- (void)setRequestOptions:(id)options;
- (void)tearDownResources;
- (void)updateShareIDCacheWithDeletedRecordID:(id)d;
- (void)updateShareIDCacheWithDeletedZoneID:(id)d;
- (void)updateShareIDCacheWithRecord:(id)record;
- (void)validateAnonymousUserIDPropagation;
@end

@implementation CKDURLRequest

- (BOOL)isFinished
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  finished = selfCopy->_finished;
  objc_sync_exit(selfCopy);

  return finished;
}

- (void)_registerPushTokens
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_22507878C;
  v2[3] = &unk_278546110;
  v2[4] = self;
  v2[5] = a2;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(self, a2, v2);
}

- (int64_t)partitionType
{
  selfCopy = self;
  v67 = *MEMORY[0x277D85DE8];
  if (!self->_haveCachedPartitionType)
  {
    v5 = objc_msgSend_requestOperationClasses(self, a2, v2);
    if (!objc_msgSend_count(v5, v6, v7))
    {
      cachedPartitionType = 3;
LABEL_30:
      selfCopy->_cachedPartitionType = cachedPartitionType;
      selfCopy->_haveCachedPartitionType = 1;

      goto LABEL_31;
    }

    Object = objc_msgSend_firstObject(v5, v8, v9);
    v13 = objc_msgSend_options(Object, v11, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"partitionType");

    if (objc_msgSend_count(v5, v16, v17) >= 2)
    {
      v50 = selfCopy;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v49 = v5;
      v20 = v5;
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v54, v66, 16);
      if (v22)
      {
        v25 = v22;
        v26 = *v55;
        v27 = MEMORY[0x277CBC880];
        do
        {
          v28 = 0;
          do
          {
            if (*v55 != v26)
            {
              objc_enumerationMutation(v20);
            }

            v29 = *(*(&v54 + 1) + 8 * v28);
            v30 = objc_msgSend_options(v29, v23, v24);
            v32 = objc_msgSend_objectForKeyedSubscript_(v30, v31, @"partitionType");

            if ((objc_msgSend_isEqualToString_(v32, v33, v15) & 1) == 0)
            {
              if (*v27 != -1)
              {
                dispatch_once(v27, *MEMORY[0x277CBC878]);
              }

              v34 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
              {
                log = v34;
                v51 = objc_msgSend_requestUUID(v50, v35, v36);
                v52 = objc_msgSend_requestOperationClasses(v50, v37, v38);
                v41 = objc_msgSend_firstObject(v52, v39, v40);
                *buf = 138544130;
                v59 = v51;
                v60 = 2112;
                v61 = v50;
                v62 = 2114;
                v63 = v41;
                v64 = 2114;
                v65 = v29;
                v42 = v41;
                _os_log_error_impl(&dword_22506F000, log, OS_LOG_TYPE_ERROR, "req: %{public}@, %@ attempted to send request %{public}@ along with %{public}@, but they hit different partitions", buf, 0x2Au);

                v27 = MEMORY[0x277CBC880];
              }
            }

            ++v28;
          }

          while (v25 != v28);
          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v54, v66, 16);
        }

        while (v25);
      }

      selfCopy = v50;
      v5 = v49;
    }

    if (!objc_msgSend_length(v15, v18, v19))
    {
      goto LABEL_24;
    }

    v43 = sub_225081324(v15);
    v46 = objc_msgSend_databaseScope(selfCopy, v44, v45);
    switch(v43)
    {
      case 0:
        cachedPartitionType = 1;
        break;
      case 2:
        if (v46 == 1)
        {
          cachedPartitionType = 2;
        }

        else
        {
          cachedPartitionType = 1;
        }

        break;
      case 1:
        cachedPartitionType = 2;
        break;
      default:
LABEL_24:
        cachedPartitionType = 3;
        break;
    }

    goto LABEL_30;
  }

  cachedPartitionType = self->_cachedPartitionType;
LABEL_31:
  v47 = *MEMORY[0x277D85DE8];
  return cachedPartitionType;
}

- (OS_dispatch_queue)lifecycleQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_lifecycleQueue)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v3, @"%s.%p", "com.apple.cloudkit.urlrequestlifecycle", selfCopy);
    v5 = v4;
    v8 = objc_msgSend_UTF8String(v5, v6, v7);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_msgSend_qualityOfService(selfCopy, v10, v11);
    v12 = CKQoSClassFromNSQualityOfService();
    v13 = dispatch_queue_attr_make_with_qos_class(v9, v12, 0);
    v14 = dispatch_queue_create(v8, v13);
    lifecycleQueue = selfCopy->_lifecycleQueue;
    selfCopy->_lifecycleQueue = v14;

    dispatch_queue_set_specific(selfCopy->_lifecycleQueue, selfCopy->_lifecycleQueue, 1, 0);
  }

  objc_sync_exit(selfCopy);

  v16 = selfCopy->_lifecycleQueue;

  return v16;
}

- (id)ckShortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_requestUUID(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@: %p %@>", v5, self, v8);

  return v10;
}

- (BOOL)sendRequestAnonymously
{
  if (objc_msgSend_allowsAnonymousAccount(self, a2, v2) && (objc_msgSend_preferAnonymousRequests(self, v4, v5) & 1) != 0)
  {
    return 1;
  }

  return objc_msgSend_requiresCKAnonymousUserIDs(self, v4, v5);
}

- (int64_t)databaseScope
{
  v3 = objc_msgSend_operation(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_databaseScope(v3, v4, v5);
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

- (CKDOperation)operation
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_operation);
  if (!WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_FAULT))
    {
      v7 = v4;
      v10 = objc_msgSend_requestUUID(self, v8, v9);
      v11 = 138543362;
      v12 = v10;
      _os_log_fault_impl(&dword_22506F000, v7, OS_LOG_TYPE_FAULT, "req: %{public}@, CKDURLRequest with no owning operation", &v11, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return WeakRetained;
}

- (NSString)operationIDForProtobuf
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_topmostParentOperation(v3, v4, v5);
  v9 = objc_msgSend_operationID(v6, v7, v8);

  return v9;
}

- (NSString)applicationBundleIdentifierForContainerAccess
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_applicationBundleIdentifierForContainerAccess(v3, v4, v5);

  return v6;
}

- (id)traceHeaderValues
{
  v2 = objc_opt_new();
  v5 = objc_msgSend_sharedMonitor(CKDSystemAvailabilityMonitor, v3, v4);
  v8 = objc_msgSend_availabilityState(v5, v6, v7);

  if ((v8 & 1) == 0)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v2, v9, @"true", 0x28387C7E0);
    v10 = CKDeviceClass();
    isEqualToString = objc_msgSend_isEqualToString_(v10, v11, @"AudioAccessory");

    if (isEqualToString)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v2, v13, @"true", 0x28387C800);
    }
  }

  if ((CKIsBundleIDForeground(@"com.apple.HDSViewService") & 1) != 0 || (objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v14, v15), v16 = objc_claimAutoreleasedReturnValue(), isAppleInternalInstall = objc_msgSend_isAppleInternalInstall(v16, v17, v18), v16, isAppleInternalInstall) && CKPIDForProcessNamed() >= 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v2, v14, @"true", 0x28387C800);
  }

  return v2;
}

- (BOOL)shouldCompressBody
{
  v3 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  v6 = objc_msgSend_compressRequests(v3, v4, v5);

  return v6;
}

- (unint64_t)duetPreClearedMode
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_duetPreClearedMode(v3, v4, v5);

  return v6;
}

- (NSString)operationGroupID
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_operationGroupID(v3, v4, v5);

  return v6;
}

- (NSString)operationGroupName
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_operationGroupName(v3, v4, v5);

  return v6;
}

- (unint64_t)networkServiceType
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_networkServiceType(v3, v4, v5);

  return v6;
}

- (void)performRequest
{
  v3 = _os_activity_create(&dword_22506F000, "url-request", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225080264;
  block[3] = &unk_278545A00;
  block[4] = self;
  os_activity_apply(v3, block);
  osActivity = self->_osActivity;
  self->_osActivity = v3;
}

- (void)validateAnonymousUserIDPropagation
{
  v5 = objc_msgSend_handlesAnonymousCKUserIDPropagation(self, a2, v2);
  if (objc_msgSend_requiresCKAnonymousUserIDs(self, v6, v7) && (v5 & 1) == 0)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v12, a2, self, @"CKDURLRequest.m", 1497, @"%@ must propagate anonymous userIDs, then override this and return YES", v11);
  }
}

- (void)_validateAccountAccess
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_225080AA0;
  v2[3] = &unk_278545A00;
  v2[4] = self;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(self, a2, v2);
}

- (NSString)operationID
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_operationID(v3, v4, v5);

  return v6;
}

- (void)_setupPublicDatabaseURL
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2250810B4;
  v2[3] = &unk_278546110;
  v2[4] = self;
  v2[5] = a2;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(self, a2, v2);
}

- (void)_setupPrivateDatabaseURL
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_225081540;
  v2[3] = &unk_278546110;
  v2[4] = self;
  v2[5] = a2;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(self, a2, v2);
}

- (int64_t)serverType
{
  selfCopy = self;
  v64 = *MEMORY[0x277D85DE8];
  if (self->_haveCachedServerType)
  {
    cachedServerType = self->_cachedServerType;
  }

  else
  {
    v5 = objc_msgSend_requestOperationClasses(self, a2, v2);
    if (objc_msgSend_count(v5, v6, v7))
    {
      Object = objc_msgSend_firstObject(v5, v8, v9);
      v13 = objc_msgSend_options(Object, v11, v12);
      v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"serverType");

      if (objc_msgSend_count(v5, v16, v17) >= 2)
      {
        v47 = selfCopy;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v46 = v5;
        v20 = v5;
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v51, v63, 16);
        if (v22)
        {
          v25 = v22;
          v26 = *v52;
          v27 = MEMORY[0x277CBC880];
          do
          {
            v28 = 0;
            do
            {
              if (*v52 != v26)
              {
                objc_enumerationMutation(v20);
              }

              v29 = *(*(&v51 + 1) + 8 * v28);
              v30 = objc_msgSend_options(v29, v23, v24);
              v32 = objc_msgSend_objectForKeyedSubscript_(v30, v31, @"serverType");

              if ((objc_msgSend_isEqualToString_(v32, v33, v15) & 1) == 0)
              {
                if (*v27 != -1)
                {
                  dispatch_once(v27, *MEMORY[0x277CBC878]);
                }

                v34 = *MEMORY[0x277CBC860];
                if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
                {
                  log = v34;
                  v48 = objc_msgSend_requestUUID(v47, v35, v36);
                  v49 = objc_msgSend_requestOperationClasses(v47, v37, v38);
                  v41 = objc_msgSend_firstObject(v49, v39, v40);
                  *buf = 138544130;
                  v56 = v48;
                  v57 = 2112;
                  v58 = v47;
                  v59 = 2114;
                  v60 = v41;
                  v61 = 2114;
                  v62 = v29;
                  v42 = v41;
                  _os_log_error_impl(&dword_22506F000, log, OS_LOG_TYPE_ERROR, "req: %{public}@, %@ attempted to send request %{public}@ along with %{public}@, but they hit different servers", buf, 0x2Au);

                  v27 = MEMORY[0x277CBC880];
                }
              }

              ++v28;
            }

            while (v25 != v28);
            v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v51, v63, 16);
          }

          while (v25);
        }

        selfCopy = v47;
        v5 = v46;
      }

      cachedServerType = 5;
      if (objc_msgSend_length(v15, v18, v19))
      {
        v43 = sub_225081AAC(v15);
        if (v43 >= 4)
        {
          cachedServerType = 5;
        }

        else
        {
          cachedServerType = v43;
        }
      }
    }

    else
    {
      cachedServerType = 5;
    }

    selfCopy->_cachedServerType = cachedServerType;
    selfCopy->_haveCachedServerType = 1;
  }

  v44 = *MEMORY[0x277D85DE8];
  return cachedServerType;
}

- (void)_setupConfiguration
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_225081CE4;
  v2[3] = &unk_278546110;
  v2[4] = self;
  v2[5] = a2;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(self, a2, v2);
}

- (int64_t)qualityOfService
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_qualityOfService(v3, v4, v5);

  return v6;
}

- (BOOL)requiresCKAnonymousUserIDs
{
  v4 = objc_msgSend_operation(self, a2, v2);
  v7 = objc_msgSend_container(v4, v5, v6);
  v10 = objc_msgSend_options(v7, v8, v9);
  if (objc_msgSend_useAnonymousToServerShareParticipants(v10, v11, v12))
  {
    v15 = objc_msgSend_databaseScope(self, v13, v14) == 3;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)markAsFinished
{
  v14 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
  {
    v8 = v3;
    v11 = objc_msgSend_requestUUID(self, v9, v10);
    v12 = 138543362;
    v13 = v11;
    _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "req: %{public}@, Marking as finished", &v12, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  finished = selfCopy->_finished;
  selfCopy->_finished = 1;
  objc_sync_exit(selfCopy);

  v6 = *MEMORY[0x277D85DE8];
  return !finished;
}

- (BOOL)_onLifecycleQueue
{
  v3 = objc_msgSend_lifecycleQueue(self, a2, v2);
  v4 = dispatch_get_specific(v3) != 0;

  return v4;
}

- (void)_fetchContainerScopedUserID
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_225084290;
  v2[3] = &unk_278546110;
  v2[4] = self;
  v2[5] = a2;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(self, a2, v2);
}

- (void)_fetchServerCertificatesIfNeeded
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_22508378C;
  v2[3] = &unk_278545A00;
  v2[4] = self;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(self, a2, v2);
}

- (void)_fetchDeviceID
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_225083A14;
  v2[3] = &unk_278546110;
  v2[4] = self;
  v2[5] = a2;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(self, a2, v2);
}

- (void)_acquireZoneGates
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_225083C10;
  v2[3] = &unk_278545A00;
  v2[4] = self;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(self, a2, v2);
}

- (BOOL)isErrorInducerRequest
{
  if (*MEMORY[0x277CBC810] != 1)
  {
    return 0;
  }

  v3 = objc_msgSend_container(self, a2, v2);
  v6 = objc_msgSend_deviceID(v3, v4, v5);
  hasPrefix = objc_msgSend_hasPrefix_(v6, v7, @"__error_inducer__");

  return hasPrefix;
}

- (void)_prepareAuthTokens
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_225084B70;
  v2[3] = &unk_278545A00;
  v2[4] = self;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(self, a2, v2);
}

- (void)_prepareCloudKitAuthToken
{
  v5 = objc_msgSend_usesiCloudAuthToken(self, a2, v2);
  if (v5 == objc_msgSend_usesCloudKitAuthToken(self, v6, v7))
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKDURLRequest.m", 1962, @"You can't set both usesiCloudAuthToken and usesCloudKitAuthToken to the same value");
  }

  v10 = dispatch_group_create();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_2250741EC;
  v26[4] = sub_225073674;
  v27 = 0;
  objc_initWeak(&location, self);
  if ((objc_msgSend_sendRequestAnonymously(self, v11, v12) & 1) == 0)
  {
    dispatch_group_enter(v10);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_225083E94;
    v21[3] = &unk_27854DA38;
    v21[4] = self;
    objc_copyWeak(&v24, &location);
    v23 = v26;
    v22 = v10;
    objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(self, v15, v21);

    objc_destroyWeak(&v24);
  }

  v16 = objc_msgSend_lifecycleQueue(self, v13, v14);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253F131C;
  block[3] = &unk_27854DA60;
  objc_copyWeak(&v20, &location);
  block[4] = v26;
  dispatch_group_notify(v10, v16, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  _Block_object_dispose(v26, 8);
}

- (id)requestOperationCountsByOperationType
{
  v3 = objc_msgSend_countsByRequestOperationType(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (void)_performRequest
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_22507AE18;
  v2[3] = &unk_278545A00;
  v2[4] = self;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(self, a2, v2);
}

- (void)tearDownResources
{
  v24 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
  {
    v18 = v3;
    v21 = objc_msgSend_requestUUID(self, v19, v20);
    v22 = 138543362;
    v23 = v21;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "req: %{public}@, tearDownResources", &v22, 0xCu);
  }

  v6 = objc_msgSend_urlSessionTask(self, v4, v5);
  objc_msgSend_cancel(v6, v7, v8);

  objc_msgSend_setUrlSessionTask_(self, v9, 0);
  objc_msgSend__tearDownStreamWriter(self, v10, v11);
  responseBodyParser = self->_responseBodyParser;
  self->_responseBodyParser = 0;

  requestOperations = self->_requestOperations;
  self->_requestOperations = 0;

  objc_msgSend_setResponse_(self, v14, 0);
  objc_msgSend_setRequest_(self, v15, 0);
  objc_msgSend_setRequestOptions_(self, v16, 0);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)invokeCompletionBlock
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_completionBlock(self, a2, v2);

  if (v4)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
    {
      v11 = v5;
      v14 = objc_msgSend_requestUUID(self, v12, v13);
      v15 = 138543362;
      v16 = v14;
      _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "req: %{public}@, Calling completion block", &v15, 0xCu);
    }

    v8 = objc_msgSend_completionBlock(self, v6, v7);
    v8[2]();

    objc_msgSend_setCompletionBlock_(self, v9, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownStreamWriter
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = selfCopy->_streamWriter;
  if (v6)
  {
    streamWriter = selfCopy->_streamWriter;
    selfCopy->_streamWriter = 0;

    objc_sync_exit(selfCopy);
    objc_msgSend_tearDown(v6, v4, v5);
  }

  else
  {
    objc_sync_exit(selfCopy);
  }
}

- (NSURL)url
{
  v47 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_serverType(self, a2, v2) == 5)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKDURLRequest.m", 1348, @"If you set a server type of CKServerTypeOther, you must provide your own url");

    v9 = 0;
  }

  else
  {
    v10 = objc_msgSend_container(self, v5, v6);
    v13 = objc_msgSend_serverType(self, v11, v12);
    v16 = objc_msgSend_partitionType(self, v14, v15);
    v18 = objc_msgSend_baseURLForServerType_partitionType_(v10, v17, v13, v16);

    if (v18)
    {
      v21 = objc_msgSend_path(self, v19, v20);
      v9 = objc_msgSend_URLByAppendingPathComponent_(v18, v22, v21);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v23 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
      {
        v26 = v23;
        v29 = objc_msgSend_requestUUID(self, v27, v28);
        v32 = objc_msgSend_serverType(self, v30, v31);
        v35 = objc_msgSend_partitionType(self, v33, v34);
        v38 = objc_msgSend_container(self, v36, v37);
        v39 = 138544130;
        v40 = v29;
        v41 = 2048;
        v42 = v32;
        v43 = 2048;
        v44 = v35;
        v45 = 2112;
        v46 = v38;
        _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "req: %{public}@, Couldn't determine base URL for server type %ld partition type %ld off container %@", &v39, 0x2Au);
      }

      v9 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSString)path
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_requestOperationClasses(self, a2, v2);
  if (objc_msgSend_count(v3, v4, v5))
  {
    Object = objc_msgSend_firstObject(v3, v6, v7);
    v11 = objc_msgSend_options(Object, v9, v10);
    v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"endpoint");

    if (objc_msgSend_count(v3, v14, v15) >= 2)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = v3;
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v30, v34, 16);
      if (v18)
      {
        v21 = v18;
        v22 = *v31;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(v16);
            }

            v24 = objc_msgSend_options(*(*(&v30 + 1) + 8 * i), v19, v20, v30);
            v26 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"endpoint");

            if ((objc_msgSend_isEqualToString_(v26, v27, v13) & 1) == 0)
            {

              v13 = @"/api/client/batch";
              goto LABEL_14;
            }
          }

          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v30, v34, 16);
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  else
  {
    v13 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)usesBackgroundSession
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_usesBackgroundSession(v3, v4, v5);

  return v6;
}

- (BOOL)allowsCellularAccess
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_allowsCellularAccess(v3, v4, v5);

  return v6;
}

- (BOOL)allowsExpensiveNetworkAccess
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_allowsExpensiveNetworkAccess(v3, v4, v5);

  return v6;
}

- (double)timeoutIntervalForRequest
{
  v3 = objc_msgSend_operation(self, a2, v2);
  objc_msgSend_timeoutIntervalForRequest(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)timeoutIntervalForResource
{
  v3 = objc_msgSend_operation(self, a2, v2);
  objc_msgSend_timeoutIntervalForResource(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (NSString)requestContentType
{
  v4 = objc_msgSend_url(self, a2, v2);
  v9 = objc_msgSend_port(v4, v5, v6);
  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_msgSend_url(self, v7, v8);
    v14 = objc_msgSend_port(v11, v12, v13);
    v16 = objc_msgSend_stringWithFormat_(v10, v15, @":%@", v14);
  }

  else
  {
    v16 = &stru_28385ED00;
  }

  v17 = MEMORY[0x277CCACA8];
  v20 = objc_msgSend_url(self, v18, v19);
  v23 = objc_msgSend_scheme(v20, v21, v22);
  v26 = objc_msgSend_url(self, v24, v25);
  v29 = objc_msgSend_host(v26, v27, v28);
  v32 = objc_msgSend_protobufOperationName(self, v30, v31);
  v34 = objc_msgSend_stringWithFormat_(v17, v33, @"%@ desc=%@://%@%@/static/protobuf/CloudDB/CloudDBClient.desc; messageType=%@; delimited=true", @"application/x-protobuf", v23, v29, v16, v32);;

  return v34;
}

- (BOOL)expectDelayBeforeRequestBegins
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_expectDelayBeforeRequestBegins(v3, v4, v5);

  return v6;
}

- (NSArray)requestOperations
{
  if (!objc_msgSend_count(self->_requestOperations, a2, v2))
  {
    v6 = objc_msgSend_generateRequestOperations(self, v4, v5);
    requestOperations = self->_requestOperations;
    self->_requestOperations = v6;
  }

  v8 = self->_requestOperations;

  return v8;
}

- (int)operationType
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_operation(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_operationType(v4, v5, v6);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      v12 = v9;
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v15;
      _os_log_fault_impl(&dword_22506F000, v12, OS_LOG_TYPE_FAULT, "%{public}@ called on %{public}@ but no operation is set", &v16, 0x16u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)preferAnonymousRequests
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_preferAnonymousRequests(v3, v4, v5);

  return v6;
}

- (NSNumber)operationGroupQuantity
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_operationGroupQuantityNumber(v3, v4, v5);

  return v6;
}

- (void)dealloc
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
  {
    v16 = v5;
    v19 = objc_msgSend_requestUUID(self, v17, v18);
    *buf = 138543362;
    v33 = v19;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "req: %{public}@, dealloc", buf, 0xCu);
  }

  objc_msgSend__tearDownStreamWriter(self, v6, v7);
  if ((objc_msgSend_isFinished(self, v8, v9) & 1) == 0 && self->_didSendRequest)
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v30, a2, self, @"CKDURLRequest.m", 314, @"<%@ %p>: Requests must be finished before deallocation", v29, self);
  }

  v12 = objc_msgSend_urlSessionTask(self, v10, v11);

  if (v12)
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v25 = objc_msgSend_urlSessionTask(self, v23, v24);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v26, a2, self, @"CKDURLRequest.m", 315, @"<%@ %p>: The URL session data task should be nil: %p", v22, self, v25);
  }

  objc_autoreleasePoolPop(v4);
  v31.receiver = self;
  v31.super_class = CKDURLRequest;
  [(CKDURLRequest *)&v31 dealloc];
  v15 = *MEMORY[0x277D85DE8];
}

- (C2RequestOptions)requestOptions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  requestOptions = selfCopy->_requestOptions;
  if (!requestOptions)
  {
    v4 = objc_alloc_init(MEMORY[0x277CF36E0]);
    v5 = selfCopy->_requestOptions;
    selfCopy->_requestOptions = v4;

    v8 = objc_msgSend_container(selfCopy, v6, v7);
    v11 = objc_msgSend_containerID(v8, v9, v10);
    v14 = objc_msgSend_c2ContainerType(v11, v12, v13);
    objc_msgSend_setContainerType_(selfCopy->_requestOptions, v15, v14);

    v16 = MEMORY[0x277CCACA8];
    v17 = objc_opt_class();
    v20 = objc_msgSend_requestUUID(selfCopy, v18, v19);
    v22 = objc_msgSend_stringWithFormat_(v16, v21, @"%@ requestUUID:%@", v17, v20);
    objc_msgSend_setIdentifier_(selfCopy->_requestOptions, v23, v22);

    v26 = objc_msgSend_qualityOfService(selfCopy, v24, v25);
    objc_msgSend_setQualityOfService_(selfCopy->_requestOptions, v27, v26);
    v30 = objc_msgSend_sharedURLSessionPool(CKDURLSessionPool, v28, v29);
    LODWORD(v22) = objc_msgSend_backgroundSessionConnectionPoolLimit(v30, v31, v32);

    if (v22)
    {
      v35 = objc_msgSend_backgroundSessionConnectionPoolName(CKDURLSessionPool, v33, v34);
      objc_msgSend_setOutOfProcessPoolName_(selfCopy->_requestOptions, v36, v35);
    }

    v37 = objc_msgSend_allowsCellularAccess(selfCopy, v33, v34);
    objc_msgSend_setAllowsCellularAccess_(selfCopy->_requestOptions, v38, v37);
    v41 = objc_msgSend_allowsExpensiveNetworkAccess(selfCopy, v39, v40);
    objc_msgSend_set_allowsExpensiveAccess_(selfCopy->_requestOptions, v42, v41);
    v45 = objc_msgSend_allowsPowerNapScheduling(selfCopy, v43, v44);
    objc_msgSend_set_allowsPowerNapScheduling_(selfCopy->_requestOptions, v46, v45);
    objc_msgSend_timeoutIntervalForRequest(selfCopy, v47, v48);
    objc_msgSend_set_timeoutIntervalForRequest_(selfCopy->_requestOptions, v49, v50);
    objc_msgSend_timeoutIntervalForResource(selfCopy, v51, v52);
    objc_msgSend_set_timeoutIntervalForResource_(selfCopy->_requestOptions, v53, v54);
    v57 = objc_msgSend_applicationBundleIdentifierForNetworkAttribution(selfCopy, v55, v56);
    objc_msgSend_set_sourceApplicationBundleIdentifier_(selfCopy->_requestOptions, v58, v57);

    v61 = objc_msgSend_sourceApplicationSecondaryIdentifier(selfCopy, v59, v60);
    objc_msgSend_set_sourceApplicationSecondaryIdentifier_(selfCopy->_requestOptions, v62, v61);

    v65 = objc_msgSend_privacyProxyFailClosedOverride(selfCopy, v63, v64);
    objc_msgSend_setPrivacyProxyFailClosedOverride_(selfCopy->_requestOptions, v66, v65);

    if ((objc_msgSend_sendRequestAnonymously(selfCopy, v67, v68) & 1) == 0)
    {
      objc_msgSend_set_appleIDContextSessionIdentifier_(selfCopy->_requestOptions, v69, @"com.apple.cloudkit");
    }

    objc_msgSend_setTlsPinning_(selfCopy->_requestOptions, v69, 1);
    objc_msgSend_setAllowRouting_(selfCopy->_requestOptions, v70, 1);
    v73 = objc_msgSend_container(selfCopy, v71, v72);
    v76 = objc_msgSend_serverConfig(v73, v74, v75);
    v79 = objc_msgSend_container(selfCopy, v77, v78);
    v82 = objc_msgSend_containerID(v79, v80, v81);
    v84 = objc_msgSend_allowExpiredDNSBehavior_(v76, v83, v82);
    objc_msgSend_setAllowExpiredDNSBehavior_(selfCopy->_requestOptions, v85, v84);

    v89 = objc_msgSend_resolvedDiscretionaryNetworkBehavior(selfCopy, v86, v87);
    if (v89 <= 2)
    {
      objc_msgSend_setDiscretionaryNetworkBehavior_(selfCopy->_requestOptions, v88, v89);
    }

    v91 = objc_msgSend_duetPreClearedMode(selfCopy, v88, v89);
    if (v91 <= 2)
    {
      objc_msgSend_setDuetPreClearedMode_(selfCopy->_requestOptions, v90, v91);
    }

    v92 = objc_msgSend_resolvedAutomaticallyRetryNetworkFailures(selfCopy, v90, v91);
    objc_msgSend_set_allowsRetryForBackgroundDataTasks_(selfCopy->_requestOptions, v93, v92);
    v95 = objc_msgSend_metricOptionsForNetworkRequest_(MEMORY[0x277CF36B8], v94, selfCopy);
    objc_msgSend_setMetricOptions_(selfCopy->_requestOptions, v96, v95);

    v99 = objc_msgSend_container(selfCopy, v97, v98);
    v102 = objc_msgSend_deviceContext(v99, v100, v101);
    v105 = objc_msgSend_testServer(v102, v103, v104);

    if (v105 && (objc_msgSend_useLiveServer(v105, v106, v107) & 1) == 0)
    {
      v110 = objc_msgSend_networkingDelegate(v105, v108, v109);
      c2NetworkingDelegate = selfCopy->_c2NetworkingDelegate;
      selfCopy->_c2NetworkingDelegate = v110;

      objc_msgSend_setNetworkingDelegate_(selfCopy->_requestOptions, v112, selfCopy->_c2NetworkingDelegate);
    }

    requestOptions = selfCopy->_requestOptions;
  }

  v113 = requestOptions;
  objc_sync_exit(selfCopy);

  return v113;
}

- (BOOL)allowsPowerNapScheduling
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_allowsPowerNapScheduling(v3, v4, v5);

  return v6;
}

- (NSString)applicationBundleIdentifierForNetworkAttribution
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_applicationBundleIdentifierForNetworkAttribution(v3, v4, v5);

  return v6;
}

- (NSString)sourceApplicationSecondaryIdentifier
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_sourceApplicationSecondaryIdentifier(v3, v4, v5);

  return v6;
}

- (id)privacyProxyFailClosedOverride
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_privacyProxyFailClosedOverride(v3, v4, v5);

  return v6;
}

- (unint64_t)resolvedDiscretionaryNetworkBehavior
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_resolvedDiscretionaryNetworkBehavior(v3, v4, v5);

  return v6;
}

- (BOOL)resolvedAutomaticallyRetryNetworkFailures
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_resolvedAutomaticallyRetryNetworkFailures(v3, v4, v5);

  return v6;
}

- (id)_CFNetworkTaskIdentifierString
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_msgSend_urlSessionTask(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@", v4);

  return v6;
}

- (NSInputStream)requestBodyStream
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_requestOperations(self, a2, v2);
  if (!objc_msgSend_count(v4, v5, v6))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v37 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v39 = v37;
      v42 = objc_msgSend_requestUUID(self, v40, v41);
      *buf = 138543362;
      v58 = v42;
      _os_log_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Not returning a request body stream because there are no items to stream", buf, 0xCu);
    }

    v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v38, *MEMORY[0x277CBC120], 2005, @"there is no operation associated with this request");
    objc_msgSend_finishWithError_(self, v43, v9);
    goto LABEL_13;
  }

  v9 = objc_msgSend_container(self, v7, v8);
  v12 = objc_msgSend_serverConfig(v9, v10, v11);
  v15 = objc_msgSend_containerID(v9, v13, v14);
  v17 = objc_msgSend_maxBatchSize_(v12, v16, v15);

  if (objc_msgSend_count(v4, v18, v19) > v17)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v25 = v22;
      v28 = objc_msgSend_requestUUID(self, v26, v27);
      *buf = 138543874;
      v58 = v28;
      v59 = 2048;
      v60 = objc_msgSend_count(v4, v29, v30);
      v61 = 2048;
      v62 = v17;
      _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEFAULT, "req: %{public}@, This request has too many operations: %lu/%lu", buf, 0x20u);
    }

    v31 = MEMORY[0x277CBC560];
    v32 = *MEMORY[0x277CBC120];
    v33 = objc_msgSend_count(v4, v23, v24);
    v35 = objc_msgSend_errorWithDomain_code_format_(v31, v34, v32, 1020, @"Your request contains %ld items which is more than the maximum number of items in a single request (%ld)", v33, v17);
    objc_msgSend_finishWithError_(self, v36, v35);

LABEL_13:
    v44 = 0;
    goto LABEL_15;
  }

  objc_msgSend__tearDownStreamWriter(self, v20, v21);
  objc_msgSend__registerRequestOperationTypesForOperations_(self, v45, v4);
  v48 = objc_msgSend_streamWriter(self, v46, v47);
  objc_msgSend_setStreamedObjects_(v48, v49, v4);

  v52 = objc_msgSend_streamWriter(self, v50, v51);
  v44 = objc_msgSend_open(v52, v53, v54);

LABEL_15:
  v55 = *MEMORY[0x277D85DE8];

  return v44;
}

- (CKDProtobufStreamWriter)streamWriter
{
  streamWriter = self->_streamWriter;
  if (!streamWriter)
  {
    v4 = [CKDProtobufStreamWriter alloc];
    shouldCompressBody = objc_msgSend_shouldCompressBody(self, v5, v6);
    v9 = objc_msgSend_initWithCompression_(v4, v8, shouldCompressBody);
    v10 = self->_streamWriter;
    self->_streamWriter = v9;

    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22508CB80;
    v13[3] = &unk_27854D900;
    objc_copyWeak(&v14, &location);
    objc_msgSend_setLogRequestObjectBlock_(self->_streamWriter, v11, v13);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    streamWriter = self->_streamWriter;
  }

  return streamWriter;
}

- (id)_protobufObjectParsedBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_225090C10;
  v4[3] = &unk_27854D8B0;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (NSDictionary)responseHeaders
{
  v3 = objc_msgSend_response(self, a2, v2);
  v6 = objc_msgSend_allHeaderFields(v3, v4, v5);

  return v6;
}

- (CKDURLRequest)initWithOperation:(id)operation
{
  v52 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v45.receiver = self;
  v45.super_class = CKDURLRequest;
  v5 = [(CKDURLRequest *)&v45 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_operation, operationCopy);
    v9 = objc_msgSend_container(operationCopy, v7, v8);
    container = v6->_container;
    v6->_container = v9;

    v6->_responseStatusCode = -1;
    v6->_allowAutomaticRedirects = 1;
    v11 = CKCreateGUID();
    requestUUID = v6->_requestUUID;
    v6->_requestUUID = v11;

    v13 = objc_opt_new();
    metrics = v6->_metrics;
    v6->_metrics = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    responseObjectUUIDs = v6->_responseObjectUUIDs;
    v6->_responseObjectUUIDs = v15;

    v19 = objc_msgSend_operationInfo(operationCopy, v17, v18);
    v22 = objc_msgSend_requestOriginator(v19, v20, v21);
    if ((v22 - 1) >= 5)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22 + 1;
    }

    v6->_requestOriginator = v23;

    v24 = objc_alloc(MEMORY[0x277CBC6C0]);
    v26 = objc_msgSend_initWithLog_(v24, v25, *MEMORY[0x277CBC860]);
    signpost = v6->_signpost;
    v6->_signpost = v26;

    if (*MEMORY[0x277CBC810] == 1)
    {
      v30 = objc_msgSend_unitTestOverrides(operationCopy, v28, v29);
      v32 = objc_msgSend_objectForKey_(v30, v31, @"HTTPResponseBodyOverride");
      fakeResponseData = v6->_fakeResponseData;
      v6->_fakeResponseData = v32;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v34 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v35 = v34;
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v39 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v6, v38, 1, 0, 0);
      v42 = objc_msgSend_CKPropertiesStyleString(v39, v40, v41);
      *buf = 138543874;
      v47 = v37;
      v48 = 2048;
      v49 = v6;
      v50 = 2114;
      v51 = v42;
      _os_log_impl(&dword_22506F000, v35, OS_LOG_TYPE_INFO, "<%{public}@: %p; %{public}@> Request Initializing", buf, 0x20u);
    }
  }

  v43 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand
{
  privateCopy = private;
  publicCopy = public;
  v9 = objc_alloc(MEMORY[0x277CBEB38]);
  v13 = objc_msgSend_initWithCapacity_(v9, v10, 7);
  if (publicCopy)
  {
    v14 = objc_msgSend_requestUUID(self, v11, v12);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v13, v15, @"UUID", v14);
  }

  if (privateCopy)
  {
    v16 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v11, 2);
    if (objc_msgSend_isFinished(self, v17, v18))
    {
      objc_msgSend_addObject_(v16, v19, @"finished");
    }

    if (objc_msgSend_isCancelled(self, v19, v20))
    {
      objc_msgSend_addObject_(v16, v21, @"cancelled");
    }

    if (objc_msgSend_count(v16, v21, v22))
    {
      v25 = objc_msgSend_componentsJoinedByString_(v16, v23, @"|");
      objc_msgSend_CKAddPropertySafelyForKey_value_(v13, v26, @"stateFlags", v25);
    }

    v27 = objc_msgSend_urlSessionTask(self, v23, v24);
    v30 = v27;
    if (v27)
    {
      v31 = MEMORY[0x277CCABB0];
      v32 = objc_msgSend_taskIdentifier(v27, v28, v29);
      v34 = objc_msgSend_numberWithUnsignedInteger_(v31, v33, v32);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v13, v35, @"dataTaskID", v34);

      objc_msgSend_CKAddPropertySafelyForKey_value_(v13, v36, @"dataTask", v30);
    }

    v37 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v28, 2);
    if (objc_msgSend_usesBackgroundSession(self, v38, v39))
    {
      objc_msgSend_addObject_(v37, v40, @"background");
    }

    else
    {
      objc_msgSend_addObject_(v37, v40, @"foreground");
    }

    if (objc_msgSend_allowsCellularAccess(self, v41, v42))
    {
      objc_msgSend_addObject_(v37, v43, @"allows-cellular");
    }

    else
    {
      objc_msgSend_addObject_(v37, v43, @"deny-cellular");
    }

    if (objc_msgSend_allowsExpensiveNetworkAccess(self, v44, v45))
    {
      objc_msgSend_addObject_(v37, v46, @"allows-expensive");
    }

    else
    {
      objc_msgSend_addObject_(v37, v46, @"deny-expensive");
    }

    v48 = objc_msgSend_componentsJoinedByString_(v37, v47, @"|");
    objc_msgSend_CKAddPropertySafelyForKey_value_(v13, v49, @"flags", v48);

    v52 = objc_msgSend_error(self, v50, v51);
    v55 = v52;
    if (v52)
    {
      if (expand)
      {
        v56 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v52, v53, 1, 1, 1);
        objc_msgSend_CKAddPropertySafelyForKey_value_(v13, v57, @"error", v56);
      }

      else
      {
        objc_msgSend_CKAddPropertySafelyForKey_value_(v13, v53, @"error", v52);
      }
    }

    v60 = objc_msgSend_request(self, v53, v54);
    if (v60)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v13, v58, @"request", v60);
    }

    if (objc_msgSend_isErrorInducerRequest(self, v58, v59))
    {
      objc_msgSend_addObject_(v37, v61, @"errorInducer");
    }
  }

  return v13;
}

- (id)generateRequestOperations
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKDURLRequest.m", 431, @"To be overridden by subclass");

  return 0;
}

- (void)prepareRequestOperationsForRequest:(id)request
{
  v226 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v8 = objc_msgSend_container(self, v6, v7);
  v11 = objc_msgSend_operation(self, v9, v10);
  v14 = objc_msgSend_databaseScope(self, v12, v13);
  if (v14 == 3)
  {
    v17 = objc_msgSend_sharedManager(CKDDeviceCapabilityManager, v15, v16);
    objc_msgSend_noteShareUsageForRequest_container_(v17, v19, self, v8);
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_6;
    }

    v17 = objc_msgSend_sharedManager(CKDDeviceCapabilityManager, v15, v16);
    objc_msgSend_noteZoneUsageForOperation_container_(v17, v18, v11, v8);
  }

LABEL_6:
  v20 = objc_msgSend_requestOperations(self, v15, v16);
  v23 = objc_msgSend_containerID(v8, v21, v22);
  v26 = objc_msgSend_containerIdentifier(v23, v24, v25);

  if (*MEMORY[0x277CBC810] == 1)
  {
    v29 = v11;
    v30 = objc_msgSend_unitTestOverrides(self, v27, v28);
    v32 = objc_msgSend_objectForKeyedSubscript_(v30, v31, @"FakeContainerIdentifier");

    if (v32)
    {
      v33 = v32;

      v26 = v33;
    }

    v11 = v29;
  }

  v34 = objc_msgSend_firstObject(v20, v27, v28);
  v37 = v34;
  if (v34)
  {
    v214 = a2;
    v40 = objc_msgSend_header(v34, v35, v36);
    if (!v40)
    {
      v40 = objc_opt_new();
      objc_msgSend_setHeader_(v37, v41, v40);
    }

    v218 = v37;
    v44 = objc_msgSend_applicationBundleIdentifierForContainerAccess(self, v38, v39);
    if (v44)
    {
      objc_msgSend_setApplicationBundle_(v40, v42, v44);
    }

    else
    {
      v45 = objc_msgSend_applicationBundleIdentifierForContainerAccess(v8, v42, v43);
      objc_msgSend_setApplicationBundle_(v40, v46, v45);
    }

    v49 = objc_msgSend_applicationVersion(v8, v47, v48);
    objc_msgSend_setApplicationVersion_(v40, v50, v49);

    if (objc_msgSend_includeContainerServerInfo(self, v51, v52))
    {
      objc_msgSend_setApplicationContainer_(v40, v53, v26);
      v57 = objc_msgSend_containerID(v8, v55, v56);
      if (objc_msgSend_environment(v57, v58, v59) == 1)
      {
        objc_msgSend_setApplicationContainerEnvironment_(v40, v60, 1);
      }

      else
      {
        objc_msgSend_setApplicationContainerEnvironment_(v40, v60, 2);
      }
    }

    v61 = objc_msgSend_databaseScope(self, v53, v54);
    v217 = requestCopy;
    v215 = v26;
    if (v61 > 4)
    {
      objc_msgSend_setTargetDatabase_(v40, v62, 1);
    }

    else
    {
      objc_msgSend_setTargetDatabase_(v40, v62, dword_225448050[v61]);
    }

    v63 = CKProductType();
    objc_msgSend_setDeviceHardwareVersion_(v40, v64, v63);

    v65 = CKProductVersion();
    objc_msgSend_setDeviceSoftwareVersion_(v40, v66, v65);

    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v216 = v11;
    v69 = objc_msgSend_deviceContext(v11, v67, v68);
    v72 = objc_msgSend_throttleManager(v69, v70, v71);
    v75 = objc_msgSend_allThrottles(v72, v73, v74);

    v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v76, &v221, v225, 16);
    if (v77)
    {
      v80 = v77;
      v81 = *v222;
      do
      {
        for (i = 0; i != v80; ++i)
        {
          if (*v222 != v81)
          {
            objc_enumerationMutation(v75);
          }

          v83 = *(*(&v221 + 1) + 8 * i);
          if (objc_msgSend_isServerThrottle(v83, v78, v79))
          {
            v86 = objc_msgSend_label(v83, v78, v79);
            if (v86)
            {
              v87 = objc_msgSend_label(v83, v84, v85);
              objc_msgSend_addActiveThrottlingLabel_(v40, v88, v87);
            }
          }
        }

        v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v78, &v221, v225, 16);
      }

      while (v80);
    }

    if ((objc_msgSend_sendRequestAnonymously(self, v89, v90) & 1) == 0)
    {
      v93 = objc_msgSend_hardwareID(v8, v91, v92);
      objc_msgSend_setDeviceHardwareID_(v40, v94, v93);

      v97 = objc_msgSend_deviceID(v8, v95, v96);
      if (objc_msgSend_length(v97, v98, v99))
      {
        v102 = objc_msgSend_CKDPIdentifier_Device(v97, v100, v101);
        objc_msgSend_setDeviceIdentifier_(v40, v103, v102);
      }

      v104 = CKDeviceUDID();
      objc_msgSend_setDeviceUDID_(v40, v105, v104);

      v106 = CKDeviceSerialNumber();
      objc_msgSend_setDeviceSerialNumber_(v40, v107, v106);

      v110 = objc_msgSend_deviceName(v8, v108, v109);
      objc_msgSend_setDeviceAssignedName_(v40, v111, v110);
    }

    v112 = objc_msgSend_isolationLevel(self, v91, v92);
    objc_msgSend_setIsolationLevel_(v40, v113, v112);
    v116 = objc_msgSend_requestOriginator(self, v114, v115);
    objc_msgSend_setRequestOriginator_(v40, v117, v116);
    v120 = objc_msgSend_operationGroupName(self, v118, v119);

    if (v120)
    {
      v123 = objc_msgSend_operationGroupName(self, v121, v122);
      objc_msgSend_setOperationGroupName_(v40, v124, v123);
    }

    v125 = objc_msgSend_operationGroupQuantity(self, v121, v122);

    if (v125)
    {
      v128 = objc_msgSend_operationGroupQuantity(self, v126, v127);
      v131 = objc_msgSend_unsignedLongLongValue(v128, v129, v130);
      objc_msgSend_setOperationGroupQuantity_(v40, v132, v131);
    }

    v133 = MEMORY[0x277CCA8D8];
    v134 = objc_opt_class();
    v136 = objc_msgSend_bundleForClass_(v133, v135, v134);
    v139 = objc_msgSend_infoDictionary(v136, v137, v138);
    v141 = objc_msgSend_objectForKeyedSubscript_(v139, v140, *MEMORY[0x277CBED38]);
    objc_msgSend_setDeviceLibraryName_(v40, v142, v141);

    v144 = objc_msgSend_objectForKeyedSubscript_(v139, v143, *MEMORY[0x277CBEC50]);
    objc_msgSend_setDeviceLibraryVersion_(v40, v145, v144);

    v148 = objc_msgSend_request(v218, v146, v147);
    v151 = objc_msgSend_type(v148, v149, v150);

    v11 = v216;
    if (v151 > 299)
    {
      if (v151 != 800 && v151 != 300)
      {
        goto LABEL_50;
      }
    }

    else if (v151 != 210 && v151 != 220)
    {
      goto LABEL_50;
    }

    v154 = objc_opt_new();
    objc_msgSend_setLocale_(v40, v155, v154);

    v158 = objc_msgSend_languageCode(v8, v156, v157);
    v161 = objc_msgSend_locale(v40, v159, v160);
    objc_msgSend_setLanguageCode_(v161, v162, v158);

    v165 = objc_msgSend_regionCode(v8, v163, v164);
    v168 = objc_msgSend_locale(v40, v166, v167);
    objc_msgSend_setRegionCode_(v168, v169, v165);

LABEL_50:
    if (!v8)
    {
      v212 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v152, v153);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v212, v213, v214, self, @"CKDURLRequest.m", 572, @"Expected non-nil container");
    }

    v170 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v152, v153);
    isAppleInternalInstall = objc_msgSend_isAppleInternalInstall(v170, v171, v172);
    objc_msgSend_setDeviceSoftwareIsAppleInternal_(v40, v174, isAppleInternalInstall);

    v177 = objc_msgSend_protocolVersion(CKDMMCS, v175, v176);
    objc_msgSend_setMmcsProtocolVersion_(v40, v178, v177);

    v181 = objc_msgSend_operationInfo(v216, v179, v180);
    HasValidatedEntitlements = objc_msgSend_clientHasValidatedEntitlements(v181, v182, v183);
    objc_msgSend_setEntitlementsValidated_(v40, v185, HasValidatedEntitlements);

    if (objc_msgSend_requestGETPreAuth(self, v186, v187))
    {
      v188 = objc_opt_new();
      objc_msgSend_setAssetAuthorizeGetRequestOptions_(v40, v189, v188);

      RequestOptions = MMCSICloudAuthGetRequestOptions();
      v193 = objc_msgSend_assetAuthorizeGetRequestOptions(v40, v191, v192);
      objc_msgSend_setContentRequestAuthorizeGetOptions_(v193, v194, RequestOptions);

      v195 = objc_opt_new();
      v198 = objc_msgSend_assetAuthorizeGetRequestOptions(v40, v196, v197);
      objc_msgSend_setContentRequestHeaders_(v198, v199, v195);

      v202 = objc_msgSend_protocolHeaders(CKDMMCS, v200, v201);
      v219[0] = MEMORY[0x277D85DD0];
      v219[1] = 3221225472;
      v219[2] = sub_2253EB074;
      v219[3] = &unk_27854D810;
      v219[4] = self;
      v220 = v40;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v202, v203, v219);
    }

    requestCopy = v217;
    v37 = v218;
    v26 = v215;
  }

  v204 = objc_msgSend_lastObject(v20, v35, v36);
  v207 = objc_msgSend_request(v204, v205, v206);
  objc_msgSend_setLast_(v207, v208, 1);

  objc_msgSend__finalizeRequestOperations_request_(self, v209, v20, requestCopy);
  requestOperations = self->_requestOperations;
  self->_requestOperations = v20;

  v211 = *MEMORY[0x277D85DE8];
}

- (void)updateShareIDCacheWithRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    if (objc_msgSend_databaseScope(self, v4, v5) == 3)
    {
      v8 = objc_msgSend_container(self, v6, v7);
      v11 = objc_msgSend_allowsDeviceCapabilitiesReporting(v8, v9, v10);

      if (v11)
      {
        v14 = objc_msgSend_container(self, v12, v13);
        v16 = objc_msgSend_cacheForContainer_(CKDShareIDCache, v15, v14);

        objc_msgSend_addRecord_(v16, v17, recordCopy);
      }
    }
  }
}

- (void)updateShareIDCacheWithDeletedRecordID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    if (objc_msgSend_databaseScope(self, v4, v5) == 3)
    {
      v8 = objc_msgSend_container(self, v6, v7);
      v11 = objc_msgSend_allowsDeviceCapabilitiesReporting(v8, v9, v10);

      if (v11)
      {
        v14 = objc_msgSend_container(self, v12, v13);
        v16 = objc_msgSend_cacheForContainer_(CKDShareIDCache, v15, v14);

        objc_msgSend_removeRecordID_(v16, v17, dCopy);
      }
    }
  }
}

- (void)updateShareIDCacheWithDeletedZoneID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    if (objc_msgSend_databaseScope(self, v4, v5) == 3)
    {
      v8 = objc_msgSend_container(self, v6, v7);
      v11 = objc_msgSend_allowsDeviceCapabilitiesReporting(v8, v9, v10);

      if (v11)
      {
        v14 = objc_msgSend_container(self, v12, v13);
        v16 = objc_msgSend_cacheForContainer_(CKDShareIDCache, v15, v14);

        objc_msgSend_removeZone_(v16, v17, dCopy);
      }
    }
  }
}

- (id)recordIDsUsedInZones:(id)zones
{
  v3 = objc_opt_new();

  return v3;
}

- (id)recordIDs:(id)ds filteredByZones:(id)zones
{
  v27 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  zonesCopy = zones;
  v7 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = dsCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = objc_msgSend_zoneID(v16, v11, v12, v22);
        v19 = objc_msgSend_containsObject_(zonesCopy, v18, v17);

        if (v19)
        {
          objc_msgSend_addObject_(v7, v11, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v22, v26, 16);
    }

    while (v13);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_finalizeRequestOperations:(id)operations request:(id)request
{
  v85 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  requestCopy = request;
  if (objc_msgSend_requiresCKAnonymousUserIDs(self, v7, v8) && objc_msgSend_requiresCKAnonymousSignature(self, v9, v10))
  {
    v64 = objc_msgSend_uncompressedDataForStreamedObjects_(CKDProtobufStreamWriter, v11, operationsCopy);
    v65 = objc_opt_new();
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = operationsCopy;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v73, v84, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v74;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v74 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v73 + 1) + 8 * i);
          v72 = 0;
          v19 = objc_msgSend_returnVerificationKeyAndSignatureForRequestOperation_dataToBeSigned_error_(self, v14, v18, v64, &v72);
          v20 = v72;
          if (v20)
          {
            v23 = 1;
          }

          else
          {
            v23 = v19 == 0;
          }

          if (v23)
          {
            v50 = v20;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v51 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              v60 = v51;
              v63 = objc_msgSend_requestUUID(self, v61, v62);
              *buf = 138543618;
              v81 = v63;
              v82 = 2114;
              v83 = v50;
              _os_log_error_impl(&dword_22506F000, v60, OS_LOG_TYPE_ERROR, "Failed to generate signature for A2A request %{public}@: %{public}@", buf, 0x16u);
            }

            v53 = MEMORY[0x277CCA9B8];
            v54 = *MEMORY[0x277CBC120];
            if (v50)
            {
              v78 = *MEMORY[0x277CCA7E8];
              v79 = v50;
              v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v52, &v79, &v78, 1);
              objc_msgSend_errorWithDomain_code_userInfo_(v53, v56, v54, 5002, v55);
            }

            else
            {
              v55 = 0;
              objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v52, v54, 5002, 0);
            }
            v57 = ;
            objc_msgSend_finishWithError_(self, v58, v57);

            if (v50)
            {
            }

            goto LABEL_34;
          }

          v24 = objc_msgSend_v1(v19, v21, v22);
          v27 = objc_msgSend_v2(v19, v25, v26);
          v29 = objc_msgSend_objectForKeyedSubscript_(v65, v28, v24);

          if (!v29)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v65, v30, v27, v24);
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v73, v84, 16);
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v65;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v68, v77, 16);
    if (v32)
    {
      v34 = v32;
      v35 = 0;
      v36 = *v69;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v69 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v68 + 1) + 8 * j);
          v39 = objc_msgSend_objectForKeyedSubscript_(obj, v33, v38);
          v40 = MEMORY[0x277CCACA8];
          v42 = objc_msgSend_base64EncodedStringWithOptions_(v38, v41, 0);
          v44 = objc_msgSend_base64EncodedStringWithOptions_(v39, v43, 0);
          v46 = objc_msgSend_stringWithFormat_(v40, v45, @"key=%@,signature=%@", v42, v44);

          v48 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v47, @"X-CloudKit-A2A-Share-Auth%lu", v35);
          objc_msgSend_setValue_forHTTPHeaderField_(requestCopy, v49, v46, v48);
          ++v35;
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v68, v77, 16);
      }

      while (v34);
    }

LABEL_34:
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (void)_registerRequestOperationTypesForOperations:(id)operations
{
  v51 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  v5 = objc_opt_new();
  objc_msgSend_setCountsByRequestOperationType_(self, v6, v5);

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = operationsCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v46, v50, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v47;
    do
    {
      v13 = 0;
      do
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v46 + 1) + 8 * v13);
        v15 = objc_msgSend_countsByRequestOperationType(self, v9, v10);
        v16 = MEMORY[0x277CCABB0];
        v19 = objc_msgSend_request(v14, v17, v18);
        v22 = objc_msgSend_type(v19, v20, v21);
        v24 = objc_msgSend_numberWithInt_(v16, v23, v22);
        v26 = objc_msgSend_objectForKeyedSubscript_(v15, v25, v24);

        if (v26)
        {
          v29 = MEMORY[0x277CCABB0];
          v30 = objc_msgSend_integerValue(v26, v27, v28);
          v32 = objc_msgSend_numberWithInteger_(v29, v31, v30 + 1);
        }

        else
        {
          v32 = &unk_2838C8550;
        }

        v33 = objc_msgSend_countsByRequestOperationType(self, v27, v28);
        v34 = MEMORY[0x277CCABB0];
        v37 = objc_msgSend_request(v14, v35, v36);
        v40 = objc_msgSend_type(v37, v38, v39);
        v42 = objc_msgSend_numberWithInt_(v34, v41, v40);
        objc_msgSend_setObject_forKeyedSubscript_(v33, v43, v32, v42);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v46, v50, 16);
    }

    while (v11);
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_authTokenWithCompletionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
  {
    v9 = v6;
    v12 = objc_msgSend_requestUUID(self, v10, v11);
    v30 = 138543362;
    v31 = v12;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "req: %{public}@, Fetching auth token", &v30, 0xCu);
  }

  v13 = objc_msgSend_usesiCloudAuthToken(self, v7, v8);
  if (v13 == objc_msgSend_usesCloudKitAuthToken(self, v14, v15))
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, a2, self, @"CKDURLRequest.m", 700, @"You can't set both usesiCloudAuthToken and usesCloudKitAuthToken to the same value");
  }

  v18 = objc_msgSend_container(self, v16, v17);
  v21 = objc_msgSend_usesCloudKitAuthToken(self, v19, v20);
  v24 = objc_msgSend_account(v18, v22, v23);
  v26 = v24;
  if (v21)
  {
    objc_msgSend_cloudKitAuthTokenWithContainer_completionHandler_(v24, v25, v18, handlerCopy);
  }

  else
  {
    objc_msgSend_iCloudAuthTokenWithContainer_completionHandler_(v24, v25, v18, handlerCopy);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_renewAuthTokenWithCompletionHandler:(id)handler
{
  v77 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  objc_msgSend_setIsWaitingOnAuthRenew_(self, v6, 1);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v7;
    v13 = objc_msgSend_requestUUID(self, v11, v12);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v17 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v16, 1, 0, 0);
    v20 = objc_msgSend_CKPropertiesStyleString(v17, v18, v19);
    v22 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v21, 0, 1, 0);
    v25 = objc_msgSend_CKPropertiesStyleString(v22, v23, v24);
    *buf = 138544386;
    v68 = v13;
    v69 = 2114;
    v70 = v15;
    v71 = 2048;
    selfCopy = self;
    v73 = 2114;
    v74 = v20;
    v75 = 2112;
    v76 = v25;
    _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Preparing auth token for request  <%{public}@: %p; %{public}@, %@>", buf, 0x34u);
  }

  v26 = objc_msgSend_usesiCloudAuthToken(self, v8, v9);
  if (v26 == objc_msgSend_usesCloudKitAuthToken(self, v27, v28))
  {
    v59 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v29, v30);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v59, v60, a2, self, @"CKDURLRequest.m", 715, @"You can't set both usesiCloudAuthToken and usesCloudKitAuthToken to the same value");
  }

  objc_initWeak(buf, self);
  v61 = MEMORY[0x277D85DD0];
  v62 = 3221225472;
  v63 = sub_2253EC0E8;
  v64 = &unk_27854D838;
  objc_copyWeak(&v66, buf);
  v31 = handlerCopy;
  v65 = v31;
  v32 = _Block_copy(&v61);
  v35 = objc_msgSend_container(self, v33, v34, v61, v62, v63, v64);
  if (objc_msgSend_usesCloudKitAuthToken(self, v36, v37))
  {
    v40 = objc_msgSend_account(v35, v38, v39);
    v43 = objc_msgSend_authPromptReason(self, v41, v42);
    v46 = objc_msgSend_cloudKitAuthToken(self, v44, v45);
    objc_msgSend_renewCloudKitAuthTokenWithReason_shouldForce_container_failedToken_completionHandler_(v40, v47, v43, 0, v35, v46, v32);
  }

  if (objc_msgSend_usesiCloudAuthToken(self, v38, v39))
  {
    v50 = objc_msgSend_account(v35, v48, v49);
    v53 = objc_msgSend_authPromptReason(self, v51, v52);
    v56 = objc_msgSend_iCloudAuthToken(self, v54, v55);
    objc_msgSend_renewiCloudAuthTokenWithReason_shouldForce_container_failedToken_completionHandler_(v50, v57, v53, 0, v35, v56, v32);
  }

  objc_destroyWeak(&v66);
  objc_destroyWeak(buf);

  v58 = *MEMORY[0x277D85DE8];
}

- (void)_handleAuthFailure
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = MEMORY[0x277CBC860];
  v5 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v5;
    v11 = objc_msgSend_requestUUID(self, v9, v10);
    *buf = 138543362;
    v49 = v11;
    _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Handling authentication failure", buf, 0xCu);
  }

  objc_msgSend_invalidateCachedAccountInfo(MEMORY[0x277CBC160], v6, v7);
  if (objc_msgSend_isCancelled(self, v12, v13))
  {
    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v16;
      v21 = objc_msgSend_requestUUID(self, v19, v20);
      *buf = 138543362;
      v49 = v21;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Auth failed but this request is already finished", buf, 0xCu);
    }

    objc_msgSend_finishWithError_(self, v17, 0);
  }

  else if (objc_msgSend_didRetryAuth(self, v14, v15))
  {
    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v42 = v23;
      v45 = objc_msgSend_requestUUID(self, v43, v44);
      *buf = 138543618;
      v49 = v45;
      v50 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "req: %{public}@, Our token auth is bad and we've already retried it. Giving up on request %@", buf, 0x16u);
    }

    v28 = objc_msgSend_lastRetryAuthError(self, v24, v25);
    if (!v28)
    {
      v28 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v26, *MEMORY[0x277CBC120], 2011, @"Couldn't get an authentication token");
    }

    v29 = objc_msgSend_container(self, v26, v27);
    v31 = objc_msgSend_possiblyWrappedAuthTokenErrorGivenError_(v29, v30, v28);

    objc_msgSend_finishWithError_(self, v32, v31);
  }

  else
  {
    objc_msgSend_setDidRetryAuth_(self, v22, 1);
    objc_msgSend_setIsHandlingAuthRetry_(self, v33, 1);
    objc_msgSend_tearDownResourcesAndReleaseTheZoneLocks_(self, v34, 0);
    v37 = objc_msgSend_operation(self, v35, v36);
    objc_msgSend_operationWillWaitOnAuthToken(v37, v38, v39);

    objc_initWeak(buf, self);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_2253EC528;
    v46[3] = &unk_27854D860;
    objc_copyWeak(&v47, buf);
    objc_msgSend__renewAuthTokenWithCompletionHandler_(self, v40, v46);
    objc_destroyWeak(&v47);
    objc_destroyWeak(buf);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)retryRequest
{
  v5 = objc_msgSend_container(self, a2, v2);
  objc_msgSend_performRequest_(v5, v4, self);
}

- (int64_t)_handleServerProtobufResult:(id)result rawData:(id)data
{
  v242 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v8 = objc_msgSend_operation(self, v6, v7);
  v11 = objc_msgSend_container(self, v9, v10);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = resultCopy;
    v15 = objc_msgSend_header(v12, v13, v14);
    v18 = objc_msgSend_throttleConfigs(v15, v16, v17);

    if (objc_msgSend_count(v18, v19, v20))
    {
      selfCopy = self;
      v230 = v12;
      v23 = v8;
      v24 = objc_msgSend_deviceContext(v8, v21, v22);
      v27 = objc_msgSend_throttleManager(v24, v25, v26);

      v235 = 0u;
      v236 = 0u;
      v233 = 0u;
      v234 = 0u;
      v28 = v18;
      v29 = v18;
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v233, v241, 16);
      if (v31)
      {
        v33 = v31;
        v34 = *v234;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v234 != v34)
            {
              objc_enumerationMutation(v29);
            }

            v37 = objc_msgSend_throttleFromPThrottlingConfig_(CKDThrottleManager, v32, *(*(&v233 + 1) + 8 * i));
            if (v37)
            {
              objc_msgSend_addThrottle_(v27, v36, v37);
            }
          }

          v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v233, v241, 16);
        }

        while (v33);
      }

      v8 = v23;
      v12 = v230;
      v18 = v28;
      self = selfCopy;
    }

    sub_2250911F4(self, v21, v22);
    v40 = objc_msgSend_response(v12, v38, v39);
    if (objc_msgSend_hasOperationUUID(v40, v41, v42))
    {
    }

    else
    {
      v48 = objc_msgSend_requiresCKAnonymousUserIDs(self, v43, v44);

      if ((v48 & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v79 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_FAULT))
        {
          v117 = v79;
          v120 = objc_msgSend_requestUUID(self, v118, v119);
          *buf = 138543618;
          v238 = v120;
          v239 = 2112;
          v240[0] = v12;
          _os_log_fault_impl(&dword_22506F000, v117, OS_LOG_TYPE_FAULT, "req: %{public}@, Parsed a response object with no operationUUID.  Result %@", buf, 0x16u);
        }

        v82 = MEMORY[0x277CCA9B8];
        v83 = *MEMORY[0x277CBC120];
        v51 = objc_msgSend_result(v12, v80, v81);
        v84 = sub_225395734(self, v51);
        v86 = objc_msgSend_errorWithDomain_code_userInfo_(v82, v85, v83, 1005, v84);
        objc_msgSend_finishWithError_(self, v87, v86);

        goto LABEL_33;
      }
    }

    if (objc_msgSend_hasResult(v12, v45, v46))
    {
      v51 = objc_msgSend_result(v12, v49, v50);
      if (!objc_msgSend_hasCode(v51, v52, v53))
      {
        goto LABEL_44;
      }

      v56 = objc_msgSend_result(v12, v54, v55);
      v59 = objc_msgSend_code(v56, v57, v58);

      if (v59 == 3)
      {
        v62 = objc_msgSend_result(v12, v60, v61);
        v51 = objc_msgSend_error(v62, v63, v64);

        if (objc_msgSend_hasClientError(v51, v65, v66))
        {
          v69 = objc_msgSend_clientError(v51, v67, v68);
          hasType = objc_msgSend_hasType(v69, v70, v71);

          if (hasType)
          {
            v73 = objc_msgSend_clientError(v51, v67, v68);
            v76 = objc_msgSend_type(v73, v74, v75);

            if (v76 <= 4)
            {
              switch(v76)
              {
                case 2:
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v155 = *MEMORY[0x277CBC860];
                  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
                  {
                    v158 = v155;
                    v161 = objc_msgSend_requestUUID(self, v159, v160);
                    *buf = 138543362;
                    v238 = v161;
                    _os_log_impl(&dword_22506F000, v158, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Expired app config", buf, 0xCu);
                  }

                  v162 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v156, v157);
                  objc_msgSend_expireConfigurationForContainer_(v162, v163, v11);
                  break;
                case 3:
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v184 = *MEMORY[0x277CBC860];
                  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
                  {
                    v187 = v184;
                    v190 = objc_msgSend_requestUUID(self, v188, v189);
                    *buf = 138543362;
                    v238 = v190;
                    _os_log_impl(&dword_22506F000, v187, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Expired global config", buf, 0xCu);
                  }

                  v162 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v185, v186);
                  objc_msgSend_expireGlobalConfiguration(v162, v191, v192);
                  break;
                case 4:
                  v130 = MEMORY[0x277CBC880];
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v131 = *MEMORY[0x277CBC860];
                  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
                  {
                    v216 = v131;
                    v219 = objc_msgSend_requestUUID(self, v217, v218);
                    *buf = 138543362;
                    v238 = v219;
                    _os_log_error_impl(&dword_22506F000, v216, OS_LOG_TYPE_ERROR, "req: %{public}@, Syntax error in request", buf, 0xCu);
                  }

                  v134 = objc_msgSend_errorDescription(v51, v132, v133);
                  v137 = objc_msgSend_lowercaseString(v134, v135, v136);

                  if (objc_msgSend_hasPrefix_(v137, v138, @"no operations present"))
                  {
                    if (*v130 != -1)
                    {
                      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                    }

                    v232 = v137;
                    v139 = *MEMORY[0x277CBC860];
                    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
                    {
                      v220 = v139;
                      v223 = objc_msgSend_requestUUID(self, v221, v222);
                      *buf = 138543362;
                      v238 = v223;
                      _os_log_error_impl(&dword_22506F000, v220, OS_LOG_TYPE_ERROR, "req: %{public}@, Server could not find any request operations in this request. Giving up.", buf, 0xCu);
                    }

                    v227 = MEMORY[0x277CCA9B8];
                    v229 = objc_msgSend_result(v12, v140, v141, *MEMORY[0x277CBC120]);
                    v142 = sub_2253962A4(v229);
                    v145 = objc_msgSend_result(v12, v143, v144);
                    v146 = sub_225395734(self, v145);
                    v148 = objc_msgSend_errorWithDomain_code_userInfo_(v227, v147, v224, v142, v146);
                    objc_msgSend_finishWithError_(self, v149, v148);

                    v47 = 2;
                    v137 = v232;
                  }

                  else
                  {
                    v47 = 1;
                  }

                  goto LABEL_106;
                default:
                  goto LABEL_87;
              }

              objc_msgSend_fetchConfigurationForOperation_withCompletionHandler_(v11, v193, v8, 0);
              goto LABEL_105;
            }

            if (v76 <= 11)
            {
              if (v76 != 5)
              {
                if (v76 != 11)
                {
                  goto LABEL_87;
                }

LABEL_77:
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v152 = *MEMORY[0x277CBC860];
                if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
                {
                  v212 = v152;
                  v215 = objc_msgSend_requestUUID(self, v213, v214);
                  *buf = 138543362;
                  v238 = v215;
                  _os_log_error_impl(&dword_22506F000, v212, OS_LOG_TYPE_ERROR, "req: %{public}@, Our auth token is bad and we should feel bad.", buf, 0xCu);
                }

                objc_msgSend__handleAuthFailure(self, v153, v154);
                goto LABEL_33;
              }

              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v173 = *MEMORY[0x277CBC860];
              if (!os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_105;
              }

              v106 = v173;
              v109 = objc_msgSend_requestUUID(self, v174, v175);
              *buf = 138543362;
              v238 = v109;
              v110 = "req: %{public}@, Forbidden resource in request";
LABEL_55:
              _os_log_error_impl(&dword_22506F000, v106, OS_LOG_TYPE_ERROR, v110, buf, 0xCu);
LABEL_56:

              goto LABEL_105;
            }

            if (v76 != 89)
            {
              if (v76 != 12)
              {
LABEL_87:
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v164 = *MEMORY[0x277CBC860];
                if (!os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_105;
                }

                v106 = v164;
                v109 = objc_msgSend_requestUUID(self, v165, v166);
                v169 = objc_msgSend_clientError(v51, v167, v168);
                v172 = objc_msgSend_type(v169, v170, v171);
                *buf = 138543874;
                v238 = v109;
                v239 = 1024;
                LODWORD(v240[0]) = v172;
                WORD2(v240[0]) = 2112;
                *(v240 + 6) = v51;
                _os_log_error_impl(&dword_22506F000, v106, OS_LOG_TYPE_ERROR, "req: %{public}@, Received error %d from the server: %@", buf, 0x1Cu);

                goto LABEL_56;
              }

              v150 = objc_msgSend_containerScopedUserID(v11, v77, v78);

              if (v150)
              {
                goto LABEL_77;
              }

              v196 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v151, *MEMORY[0x277CBC120], 2011, @"Authentication required");
              v198 = objc_msgSend_possiblyWrappedAuthTokenErrorGivenError_(v11, v197, v196);

              objc_msgSend_finishWithError_(self, v199, v198);
LABEL_33:
              v47 = 2;
LABEL_106:

              goto LABEL_107;
            }

            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v176 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
            {
              v177 = v176;
              v180 = objc_msgSend_requestUUID(self, v178, v179);
              *buf = 138543362;
              v238 = v180;
              v181 = "req: %{public}@, Server could not verify the anonymous-to-server signatures supplied. Giving up.";
              v182 = v177;
              v183 = 12;
LABEL_113:
              _os_log_error_impl(&dword_22506F000, v182, OS_LOG_TYPE_ERROR, v181, buf, v183);
            }

LABEL_60:
            v228 = MEMORY[0x277CCA9B8];
            v226 = *MEMORY[0x277CBC120];
            v231 = objc_msgSend_result(v12, v101, v102);
            v122 = sub_2253962A4(v231);
            v125 = objc_msgSend_result(v12, v123, v124);
            v126 = sub_225395734(self, v125);
            v128 = objc_msgSend_errorWithDomain_code_userInfo_(v228, v127, v226, v122, v126);
            objc_msgSend_finishWithError_(self, v129, v128);

            goto LABEL_33;
          }
        }

        if (!objc_msgSend_hasServerError(v51, v67, v68) || (objc_msgSend_serverError(v51, v88, v89), v90 = objc_claimAutoreleasedReturnValue(), v93 = objc_msgSend_hasType(v90, v91, v92), v90, !v93))
        {
          if (objc_msgSend_hasExtensionError(v51, v88, v89))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v105 = *MEMORY[0x277CBC860];
            if (!os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_105;
            }

            v106 = v105;
            v109 = objc_msgSend_requestUUID(self, v107, v108);
            *buf = 138543362;
            v238 = v109;
            v110 = "req: %{public}@, Plugin error in request";
            goto LABEL_55;
          }

          hasAuxiliaryError = objc_msgSend_hasAuxiliaryError(v51, v103, v104);
          v112 = *MEMORY[0x277CBC878];
          v113 = *MEMORY[0x277CBC880];
          if (hasAuxiliaryError)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v112);
            }

            v114 = *MEMORY[0x277CBC860];
            if (!os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_105;
            }

            v106 = v114;
            v109 = objc_msgSend_requestUUID(self, v115, v116);
            *buf = 138543362;
            v238 = v109;
            v110 = "req: %{public}@, Auxiliary error in request";
            goto LABEL_55;
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v112);
          }

          v121 = *MEMORY[0x277CBC860];
          if (!os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_60;
          }

          v177 = v121;
          v180 = objc_msgSend_requestUUID(self, v210, v211);
          *buf = 138543618;
          v238 = v180;
          v239 = 2112;
          v240[0] = v51;
          v181 = "req: %{public}@, Received unknown error from the server: %@";
          v182 = v177;
          v183 = 22;
          goto LABEL_113;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v94 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
        {
          v200 = v94;
          v203 = objc_msgSend_requestUUID(self, v201, v202);
          v206 = objc_msgSend_serverError(v51, v204, v205);
          v209 = objc_msgSend_type(v206, v207, v208);
          *buf = 138543874;
          v238 = v203;
          v239 = 1024;
          LODWORD(v240[0]) = v209;
          WORD2(v240[0]) = 2112;
          *(v240 + 6) = v51;
          _os_log_error_impl(&dword_22506F000, v200, OS_LOG_TYPE_ERROR, "req: %{public}@, Received error %d from the server: %@", buf, 0x1Cu);
        }

        v97 = objc_msgSend_serverError(v51, v95, v96);
        v100 = objc_msgSend_type(v97, v98, v99);

        if (v100 <= 9)
        {
          if (((1 << v100) & 0x3D6) != 0)
          {
            goto LABEL_60;
          }

          if (v100 == 3)
          {
LABEL_105:
            v47 = 1;
            goto LABEL_106;
          }
        }

        if (v100 - 200001 < 5)
        {
          goto LABEL_60;
        }

LABEL_44:
        v47 = 0;
        goto LABEL_106;
      }
    }

    v47 = 0;
LABEL_107:

    goto LABEL_108;
  }

  v47 = 0;
LABEL_108:

  v194 = *MEMORY[0x277D85DE8];
  return v47;
}

- (void)_handleServerJSONResult:(id)result
{
  v67 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = resultCopy;
    v9 = objc_msgSend_objectForKey_(v5, v6, @"throttleConfigs");
    if (v9)
    {
      v10 = objc_msgSend_operation(self, v7, v8);
      v13 = objc_msgSend_deviceContext(v10, v11, v12);
      v16 = objc_msgSend_throttleManager(v13, v14, v15);

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = v9;
      v17 = v9;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v56, v66, 16);
      if (v19)
      {
        v21 = v19;
        v22 = *v57;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v57 != v22)
            {
              objc_enumerationMutation(v17);
            }

            v25 = objc_msgSend_throttleFromServerJSONDictionary_(CKDThrottleManager, v20, *(*(&v56 + 1) + 8 * i));
            if (v25)
            {
              objc_msgSend_addThrottle_(v16, v24, v25);
            }
          }

          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v56, v66, 16);
        }

        while (v21);
      }

      v9 = v55;
    }

    sub_2250911F4(self, v7, v8);
    v28 = objc_msgSend_response(self, v26, v27);
    v31 = objc_msgSend_statusCode(v28, v29, v30);

    if ((v31 - 200) >= 0x64)
    {
      v42 = objc_msgSend__parseErrorDictionaryForJson_(self, v32, v5);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v43 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
      {
        v46 = v43;
        v49 = objc_msgSend_requestUUID(self, v47, v48);
        *buf = 138543874;
        v61 = v49;
        v62 = 2048;
        v63 = v31;
        v64 = 2112;
        v65 = v42;
        _os_log_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Warn: request failed with http status %ld: %@", buf, 0x20u);
      }

      if (v31 == 401)
      {
        objc_msgSend__handleAuthFailure(self, v44, v45);
      }

      else
      {
        objc_msgSend_finishWithError_(self, v44, v42);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v33 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
      {
        v51 = v33;
        v54 = objc_msgSend_requestUUID(self, v52, v53);
        *buf = 138543362;
        v61 = v54;
        _os_log_debug_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEBUG, "req: %{public}@, Successfully parsed JSON object", buf, 0xCu);
      }

      objc_msgSend_requestDidParseJSONObject_(self, v34, v5);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v35 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v37 = v35;
      v40 = objc_msgSend_requestUUID(self, v38, v39);
      *buf = 138543618;
      v61 = v40;
      v62 = 2112;
      v63 = resultCopy;
      _os_log_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Warn: Cannot handle JSON response: %@", buf, 0x16u);
    }

    v5 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v36, *MEMORY[0x277CBC120], 1005, @"Cannot handle JSON response: %@", resultCopy);
    objc_msgSend_finishWithError_(self, v41, v5);
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (id)_parseErrorDictionaryForJson:(id)json
{
  jsonCopy = json;
  v6 = objc_msgSend_objectForKey_(jsonCopy, v5, @"type");
  v8 = objc_msgSend_objectForKey_(jsonCopy, v7, @"title");

  v9 = objc_opt_new();
  v12 = objc_msgSend_requestUUID(self, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_requestUUID(self, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v16, v15, *MEMORY[0x277CBC078]);
  }

  v17 = objc_msgSend_operation(self, v13, v14);
  v20 = objc_msgSend_topmostParentOperation(v17, v18, v19);
  v23 = objc_msgSend_operationID(v20, v21, v22);

  if (v23)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9, v24, v23, *MEMORY[0x277CBBF60]);
  }

  v26 = objc_msgSend_container(self, v24, v25);
  v29 = objc_msgSend_containerID(v26, v27, v28);

  if (v29)
  {
    v32 = objc_msgSend_containerIdentifier(v29, v30, v31);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v33, v32, *MEMORY[0x277CBBF18]);
  }

  if (!objc_msgSend_length(v6, v30, v31) || !objc_msgSend_hasPrefix_(v6, v34, @"/errors/ck/"))
  {
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v34, *MEMORY[0x277CBC120], 1000, v9);
    goto LABEL_248;
  }

  v36 = objc_msgSend_length(@"/errors/ck/", v34, v35);
  v38 = objc_msgSend_substringFromIndex_(v6, v37, v36);

  v40 = objc_msgSend_componentsSeparatedByString_(v38, v39, @"/");
  if (objc_msgSend_count(v40, v41, v42) == 2)
  {
    v44 = objc_msgSend_objectAtIndexedSubscript_(v40, v43, 0);
    if (objc_msgSend_isEqualToString_(v44, v45, @"client"))
    {

      goto LABEL_14;
    }

    v48 = objc_msgSend_objectAtIndexedSubscript_(v40, v46, 0);
    isEqualToString = objc_msgSend_isEqualToString_(v48, v49, @"server");

    if (isEqualToString)
    {
LABEL_14:
      v51 = objc_msgSend_objectAtIndexedSubscript_(v40, v47, 0);
      v53 = objc_msgSend_isEqualToString_(v51, v52, @"client");

      if (v53)
      {
        v55 = 1;
        v56 = objc_msgSend_objectAtIndexedSubscript_(v40, v54, 1);
        if ((objc_msgSend_isEqualToString_(v56, v57, @"unknown") & 1) == 0)
        {
          if (objc_msgSend_isEqualToString_(v56, v58, @"expiredAppConfig"))
          {
            v55 = 2;
          }

          else if (objc_msgSend_isEqualToString_(v56, v59, @"expiredGlobalConfig"))
          {
            v55 = 3;
          }

          else if (objc_msgSend_isEqualToString_(v56, v71, @"badSyntax"))
          {
            v55 = 4;
          }

          else if (objc_msgSend_isEqualToString_(v56, v73, @"forbidden"))
          {
            v55 = 5;
          }

          else if (objc_msgSend_isEqualToString_(v56, v75, @"throttled"))
          {
            v55 = 6;
          }

          else if (objc_msgSend_isEqualToString_(v56, v77, @"refused"))
          {
            v55 = 7;
          }

          else if (objc_msgSend_isEqualToString_(v56, v79, @"notSupported"))
          {
            v55 = 8;
          }

          else if (objc_msgSend_isEqualToString_(v56, v81, @"exists"))
          {
            v55 = 9;
          }

          else if (objc_msgSend_isEqualToString_(v56, v83, @"requestAlreadyProcessed"))
          {
            v55 = 10;
          }

          else if (objc_msgSend_isEqualToString_(v56, v86, @"badAuthToken"))
          {
            v55 = 11;
          }

          else if (objc_msgSend_isEqualToString_(v56, v87, @"needsAuthentication"))
          {
            v55 = 12;
          }

          else if (objc_msgSend_isEqualToString_(v56, v89, @"mescalSignatureMissing"))
          {
            v55 = 13;
          }

          else if (objc_msgSend_isEqualToString_(v56, v91, @"invalidMescalSignature"))
          {
            v55 = 14;
          }

          else if (objc_msgSend_isEqualToString_(v56, v93, @"opLockFailure"))
          {
            v55 = 15;
          }

          else if (objc_msgSend_isEqualToString_(v56, v94, @"atomicFailure"))
          {
            v55 = 16;
          }

          else if (objc_msgSend_isEqualToString_(v56, v95, @"resetNeeded"))
          {
            v55 = 17;
          }

          else if (objc_msgSend_isEqualToString_(v56, v96, @"fieldsPerTypeLimitExceeded"))
          {
            v55 = 18;
          }

          else if (objc_msgSend_isEqualToString_(v56, v97, @"typeBusy"))
          {
            v55 = 19;
          }

          else if (objc_msgSend_isEqualToString_(v56, v98, @"numRecordTypesLimitExceeded"))
          {
            v55 = 20;
          }

          else if (objc_msgSend_isEqualToString_(v56, v99, @"invalidContainer"))
          {
            v55 = 21;
          }

          else if (objc_msgSend_isEqualToString_(v56, v100, @"invalidRecordTypeName"))
          {
            v55 = 22;
          }

          else if (objc_msgSend_isEqualToString_(v56, v101, @"invalidFieldName"))
          {
            v55 = 23;
          }

          else if (objc_msgSend_isEqualToString_(v56, v102, @"invalidFieldValue"))
          {
            v55 = 24;
          }

          else if (objc_msgSend_isEqualToString_(v56, v103, @"invalidIdentifier"))
          {
            v55 = 25;
          }

          else if (objc_msgSend_isEqualToString_(v56, v104, @"fieldNotQueryable"))
          {
            v55 = 26;
          }

          else if (objc_msgSend_isEqualToString_(v56, v105, @"fieldNotSortable"))
          {
            v55 = 27;
          }

          else if (objc_msgSend_isEqualToString_(v56, v106, @"queryFilterLimitExceeded"))
          {
            v55 = 28;
          }

          else if (objc_msgSend_isEqualToString_(v56, v107, @"queryFilterValuesLimitExceeded"))
          {
            v55 = 29;
          }

          else if (objc_msgSend_isEqualToString_(v56, v108, @"membershipQueryLimitExceeded"))
          {
            v55 = 30;
          }

          else if (objc_msgSend_isEqualToString_(v56, v109, @"notificationAdditionalFieldLimitExceeded"))
          {
            v55 = 31;
          }

          else if (objc_msgSend_isEqualToString_(v56, v110, @"notificationAdditionalFieldInvalidType"))
          {
            v55 = 32;
          }

          else if (objc_msgSend_isEqualToString_(v56, v111, @"subscriptionLimitExceeded"))
          {
            v55 = 33;
          }

          else if (objc_msgSend_isEqualToString_(v56, v112, @"uniqueTriggerLimitExceeded"))
          {
            v55 = 34;
          }

          else if (objc_msgSend_isEqualToString_(v56, v113, @"triggerSubscriptionBindingTypeMismatch"))
          {
            v55 = 35;
          }

          else if (objc_msgSend_isEqualToString_(v56, v114, @"zoneSizeLimitExceeded"))
          {
            v55 = 36;
          }

          else if (objc_msgSend_isEqualToString_(v56, v115, @"zoneCountLimitExceeded"))
          {
            v55 = 37;
          }

          else if (objc_msgSend_isEqualToString_(v56, v116, @"uniqueFieldFailure"))
          {
            v55 = 38;
          }

          else if (objc_msgSend_isEqualToString_(v56, v117, @"validatingReferenceError"))
          {
            v55 = 39;
          }

          else if (objc_msgSend_isEqualToString_(v56, v118, @"fullResetNeeded"))
          {
            v55 = 40;
          }

          else if (objc_msgSend_isEqualToString_(v56, v119, @"alreadyShared"))
          {
            v55 = 41;
          }

          else if (objc_msgSend_isEqualToString_(v56, v120, @"emailOutOfNetwork"))
          {
            v55 = 42;
          }

          else if (objc_msgSend_isEqualToString_(v56, v121, @"duplicateSubscription"))
          {
            v55 = 43;
          }

          else if (objc_msgSend_isEqualToString_(v56, v122, @"expiredPutReceipt"))
          {
            v55 = 46;
          }

          else if (objc_msgSend_isEqualToString_(v56, v123, @"quotaExceeded"))
          {
            v55 = 47;
          }

          else if (objc_msgSend_isEqualToString_(v56, v124, @"zoneNotFound"))
          {
            v55 = 48;
          }

          else if (objc_msgSend_isEqualToString_(v56, v125, @"invalidBundleId"))
          {
            v55 = 49;
          }

          else if (objc_msgSend_isEqualToString_(v56, v126, @"unsupportedDevice"))
          {
            v55 = 50;
          }

          else if (objc_msgSend_isEqualToString_(v56, v127, @"blocklisted"))
          {
            v55 = 51;
          }

          else if (objc_msgSend_isEqualToString_(v56, v128, @"recordProtectionInfoTagMismatch"))
          {
            v55 = 52;
          }

          else if (objc_msgSend_isEqualToString_(v56, v129, @"zoneProtectionInfoTagMismatch"))
          {
            v55 = 53;
          }

          else if (objc_msgSend_isEqualToString_(v56, v130, @"assetSizeLimitExceeded"))
          {
            v55 = 54;
          }

          else if (objc_msgSend_isEqualToString_(v56, v131, @"batchOperationLimitExceeded"))
          {
            v55 = 55;
          }

          else if (objc_msgSend_isEqualToString_(v56, v132, @"requestSizeLimitExceeded"))
          {
            v55 = 56;
          }

          else if (objc_msgSend_isEqualToString_(v56, v133, @"recordSizeLimitExceeded"))
          {
            v55 = 57;
          }

          else if (objc_msgSend_isEqualToString_(v56, v134, @"databaseCommitSizeExceeded"))
          {
            v55 = 58;
          }

          else if (objc_msgSend_isEqualToString_(v56, v135, @"userDeletedDataForZone"))
          {
            v55 = 59;
          }

          else if (objc_msgSend_isEqualToString_(v56, v136, @"staleRecordUpdate"))
          {
            v55 = 60;
          }

          else if (objc_msgSend_isEqualToString_(v56, v137, @"shareParticipantLimitExceeded"))
          {
            v55 = 61;
          }

          else if (objc_msgSend_isEqualToString_(v56, v138, @"shareParticipantError"))
          {
            v55 = 62;
          }

          else if (objc_msgSend_isEqualToString_(v56, v139, @"pcsChainingError"))
          {
            v55 = 64;
          }

          else if (objc_msgSend_isEqualToString_(v56, v140, @"hierarchyAlreadyHasShare"))
          {
            v55 = 65;
          }

          else if (objc_msgSend_isEqualToString_(v56, v141, @"u13Restricted"))
          {
            v55 = 66;
          }

          else if (objc_msgSend_isEqualToString_(v56, v142, @"managedAppleIdRestricted"))
          {
            v55 = 67;
          }

          else if (objc_msgSend_isEqualToString_(v56, v143, @"shareParticipantContactError"))
          {
            v55 = 68;
          }

          else if (objc_msgSend_isEqualToString_(v56, v144, @"recordArchived"))
          {
            v55 = 69;
          }

          else if (objc_msgSend_isEqualToString_(v56, v145, @"databaseAccessDenied"))
          {
            v55 = 70;
          }

          else if (objc_msgSend_isEqualToString_(v56, v146, @"parentHierarchyDepthLimitExceeded"))
          {
            v55 = 71;
          }

          else if (objc_msgSend_isEqualToString_(v56, v147, @"zonePcsUserIdentityUnknown"))
          {
            v55 = 72;
          }

          else if (objc_msgSend_isEqualToString_(v56, v148, @"managedAppleIdBackupBlocked"))
          {
            v55 = 73;
          }

          else if (objc_msgSend_isEqualToString_(v56, v149, @"outOfNetworkUsersUnsupported"))
          {
            v55 = 75;
          }

          else if (objc_msgSend_isEqualToString_(v56, v150, @"gameAssignmentNotFound"))
          {
            v55 = 76;
          }

          else if (objc_msgSend_isEqualToString_(v56, v151, @"queryBeginsWithValueLengthLimitExceeded"))
          {
            v55 = 77;
          }

          else if (objc_msgSend_isEqualToString_(v56, v152, @"userResetEncryptedData"))
          {
            v55 = 78;
          }

          else if (objc_msgSend_isEqualToString_(v56, v153, @"mergeableValueNotFound"))
          {
            v55 = 79;
          }

          else if (objc_msgSend_isEqualToString_(v56, v154, @"invalidPublicKey"))
          {
            v55 = 80;
          }

          else if (objc_msgSend_isEqualToString_(v56, v155, @"mergeableDeltaSizeLimitExceeded"))
          {
            v55 = 81;
          }

          else if (objc_msgSend_isEqualToString_(v56, v156, @"mergeableDeltaNotFound"))
          {
            v55 = 82;
          }

          else if (objc_msgSend_isEqualToString_(v56, v157, @"mergeableDeltaInvalid"))
          {
            v55 = 83;
          }

          else if (objc_msgSend_isEqualToString_(v56, v158, @"mergeableValueCompactionRequired"))
          {
            v55 = 84;
          }

          else if (objc_msgSend_isEqualToString_(v56, v159, @"unprovisionedICloudAccount"))
          {
            v55 = 85;
          }

          else if (objc_msgSend_isEqualToString_(v56, v160, @"purgedICloudAccount"))
          {
            v55 = 86;
          }

          else if (objc_msgSend_isEqualToString_(v56, v161, @"invalidDsidForICloudAccount"))
          {
            v55 = 87;
          }

          else if (objc_msgSend_isEqualToString_(v56, v162, @"shareRegionUnsupported"))
          {
            v55 = 88;
          }

          else if (objc_msgSend_isEqualToString_(v56, v163, @"a2aSignatureValidationError"))
          {
            v55 = 89;
          }

          else if (objc_msgSend_isEqualToString_(v56, v164, @"participantIdMismatch"))
          {
            v55 = 90;
          }

          else if (objc_msgSend_isEqualToString_(v56, v165, @"groupKitSignatureValidationError"))
          {
            v55 = 94;
          }

          else if (objc_msgSend_isEqualToString_(v56, v166, @"shareRequestAccessError"))
          {
            v55 = 95;
          }

          else if (objc_msgSend_isEqualToString_(v56, v167, @"shareRequestAccessLimitExceeded"))
          {
            v55 = 96;
          }

          else if (objc_msgSend_isEqualToString_(v56, v168, @"shareRequestAccessShareAcceptRequired"))
          {
            v55 = 97;
          }

          else if (objc_msgSend_isEqualToString_(v56, v169, @"shareBlockedUserCanNotBeParticipant"))
          {
            v55 = 98;
          }

          else if (objc_msgSend_isEqualToString_(v56, v170, @"shareBlockedLimitExceeded"))
          {
            v55 = 100;
          }

          else if (objc_msgSend_isEqualToString_(v56, v171, @"zoneAncestryOpLockFailure"))
          {
            v55 = 101;
          }

          else if (objc_msgSend_isEqualToString_(v56, v172, @"invalidTimestamp"))
          {
            v55 = 102;
          }

          else if (objc_msgSend_isEqualToString_(v56, v173, @"invalidSignature"))
          {
            v55 = 103;
          }

          else if (objc_msgSend_isEqualToString_(v56, v174, @"unsupportedSigningIdentity"))
          {
            v55 = 104;
          }

          else if (objc_msgSend_isEqualToString_(v56, v175, @"invalidSignedBlob"))
          {
            v55 = 105;
          }

          else if (objc_msgSend_isEqualToString_(v56, v176, @"unsupportedVersion"))
          {
            v55 = 106;
          }

          else if (objc_msgSend_isEqualToString_(v56, v177, @"owningReferenceError"))
          {
            v55 = 107;
          }

          else
          {
            v55 = 1;
          }
        }

        v92 = sub_225396064(v55);
      }

      else
      {
        v61 = objc_msgSend_objectAtIndexedSubscript_(v40, v54, 0);
        v63 = objc_msgSend_isEqualToString_(v61, v62, @"server");

        if (!v63)
        {
          v60 = 1000;
LABEL_244:
          if (objc_msgSend_length(v8, v64, v65))
          {
            objc_msgSend_setObject_forKeyedSubscript_(v9, v178, v8, *MEMORY[0x277CCA450]);
            objc_msgSend_setObject_forKeyedSubscript_(v9, v180, v8, *MEMORY[0x277CBBF70]);
          }

          v181 = objc_msgSend_response(self, v178, v179);
          CKAddResponseHeaderValuesToUserInfoDictionary();

          goto LABEL_247;
        }

        v66 = 1;
        v67 = objc_msgSend_objectAtIndexedSubscript_(v40, v64, 1);
        if ((objc_msgSend_isEqualToString_(v67, v68, @"unknown") & 1) == 0)
        {
          if (objc_msgSend_isEqualToString_(v67, v69, @"overloaded"))
          {
            v66 = 2;
          }

          else if (objc_msgSend_isEqualToString_(v67, v70, @"notFound"))
          {
            v66 = 3;
          }

          else if (objc_msgSend_isEqualToString_(v67, v72, @"containerUnavailable"))
          {
            v66 = 4;
          }

          else if (objc_msgSend_isEqualToString_(v67, v74, @"mescalSignatureParseError"))
          {
            v66 = 6;
          }

          else if (objc_msgSend_isEqualToString_(v67, v76, @"zoneBusy"))
          {
            v66 = 7;
          }

          else if (objc_msgSend_isEqualToString_(v67, v78, @"zoneUnavailable"))
          {
            v66 = 8;
          }

          else if (objc_msgSend_isEqualToString_(v67, v80, @"transactionTimeout"))
          {
            v66 = 9;
          }

          else
          {
            v66 = 200001;
            if ((objc_msgSend_isEqualToString_(v67, v82, @"partitionLookupFailed") & 1) == 0)
            {
              if (objc_msgSend_isEqualToString_(v67, v84, @"timeoutOnInternalBackends"))
              {
                v66 = 200002;
              }

              else if (objc_msgSend_isEqualToString_(v67, v85, @"solrError"))
              {
                v66 = 200003;
              }

              else if (objc_msgSend_isEqualToString_(v67, v88, @"userAssignmentLocked"))
              {
                v66 = 200004;
              }

              else if (objc_msgSend_isEqualToString_(v67, v90, @"quotaServiceUnavailable"))
              {
                v66 = 200005;
              }

              else
              {
                v66 = 1;
              }
            }
          }
        }

        v92 = sub_225395F68(v66);
      }

      v60 = v92;
      goto LABEL_244;
    }
  }

  v60 = 1000;
LABEL_247:

  v6 = v38;
  objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v182, *MEMORY[0x277CBC120], v60, v9);
  v183 = LABEL_248:;

  return v183;
}

- (void)_handlePlistResult:(id)result
{
  v24 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *MEMORY[0x277CBC878];
  v7 = *MEMORY[0x277CBC880];
  if (isKindOfClass)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v8 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
    {
      v16 = v8;
      v19 = objc_msgSend_requestUUID(self, v17, v18);
      v20 = 138543362;
      v21 = v19;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "req: %{public}@, Successfully parsed plist object", &v20, 0xCu);
    }

    objc_msgSend_requestDidParsePlistObject_(self, v9, resultCopy);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v10 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v14 = objc_msgSend_requestUUID(self, v12, v13);
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = resultCopy;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Warn: Failed to handle plist response: %@", &v20, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)defaultParserForContentType:(id)type
{
  typeCopy = type;
  if (!objc_msgSend_length(typeCopy, v5, v6))
  {
    v17 = 0;
    goto LABEL_21;
  }

  if (objc_msgSend_rangeOfString_options_(typeCopy, v7, *MEMORY[0x277CBC8E0], 1) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_rangeOfString_options_(typeCopy, v8, @"application/x-protobuf", 1) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (objc_msgSend_rangeOfString_options_(typeCopy, v9, @"application/json", 1) == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (objc_msgSend_rangeOfString_options_(typeCopy, v10, @"text/xml", 1) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_rangeOfString_options_(typeCopy, v11, @"application/x-apple-plist", 1) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_rangeOfString_options_(typeCopy, v12, @"application/xml", 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (objc_msgSend_rangeOfString_options_(typeCopy, v13, @"text/plain", 1) == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (objc_msgSend_rangeOfString_options_(typeCopy, v14, @"application/x-x509-ca-cert", 1) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = 0;
            goto LABEL_19;
          }

          v86 = [CKDPlaintextResponseBodyParser alloc];
          v89 = objc_msgSend_qualityOfService(self, v87, v88);
          v17 = objc_msgSend_initWithQoS_(v86, v90, v89);
          v96[0] = MEMORY[0x277D85DD0];
          v96[1] = 3221225472;
          v96[2] = sub_2253EF9A0;
          v96[3] = &unk_27854D8D8;
          v96[4] = self;
          objc_msgSend_setObjectParsedBlock_(v17, v91, v96);
          v35 = objc_msgSend_shared(CKDTrafficLogger, v92, v93);
          v38 = objc_msgSend_requestUUID(self, v94, v95);
          v85 = &unk_28385E760;
        }

        else
        {
          v74 = [CKDPlaintextResponseBodyParser alloc];
          v77 = objc_msgSend_qualityOfService(self, v75, v76);
          v17 = objc_msgSend_initWithQoS_(v74, v78, v77);
          v97[0] = MEMORY[0x277D85DD0];
          v97[1] = 3221225472;
          v97[2] = sub_2253EF8D0;
          v97[3] = &unk_27854D8D8;
          v97[4] = self;
          objc_msgSend_setObjectParsedBlock_(v17, v79, v97);
          v35 = objc_msgSend_shared(CKDTrafficLogger, v80, v81);
          v38 = objc_msgSend_requestUUID(self, v82, v83);
          v85 = &unk_28385E740;
        }

        objc_msgSend_logResponseConfigurationWithRequestUUID_format_messageClass_completionHandler_(v35, v84, v38, 3, 0, v85);
      }

      else
      {
        v55 = [CKDPlistResponseBodyParser alloc];
        v58 = objc_msgSend_qualityOfService(self, v56, v57);
        v17 = objc_msgSend_initWithQoS_(v55, v59, v58);
        v98[0] = MEMORY[0x277D85DD0];
        v98[1] = 3221225472;
        v98[2] = sub_2253EF800;
        v98[3] = &unk_2785486C8;
        v98[4] = self;
        objc_msgSend_setObjectParsedBlock_(v17, v60, v98);
        v35 = objc_msgSend_shared(CKDTrafficLogger, v61, v62);
        v38 = objc_msgSend_requestUUID(self, v63, v64);
        objc_msgSend_logResponseConfigurationWithRequestUUID_format_messageClass_completionHandler_(v35, v65, v38, 2, 0, &unk_28385E720);
      }
    }

    else
    {
      v44 = [CKDJSONResponseBodyParser alloc];
      v47 = objc_msgSend_qualityOfService(self, v45, v46);
      v17 = objc_msgSend_initWithQoS_(v44, v48, v47);
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = sub_2253EF730;
      v99[3] = &unk_2785486C8;
      v99[4] = self;
      objc_msgSend_setObjectParsedBlock_(v17, v49, v99);
      v35 = objc_msgSend_shared(CKDTrafficLogger, v50, v51);
      v38 = objc_msgSend_requestUUID(self, v52, v53);
      objc_msgSend_logResponseConfigurationWithRequestUUID_format_messageClass_completionHandler_(v35, v54, v38, 1, 0, &unk_28385E700);
    }
  }

  else
  {
    v18 = [CKDProtobufResponseBodyParser alloc];
    v21 = objc_msgSend_qualityOfService(self, v19, v20);
    v24 = objc_msgSend_expectedResponseClass(self, v22, v23);
    v27 = objc_msgSend_parsingStandaloneMessage(self, v25, v26);
    v17 = objc_msgSend_initWithQoS_messageClass_parsingStandaloneMessage_(v18, v28, v21, v24, v27);
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = sub_2253EF5C8;
    v100[3] = &unk_2785486C8;
    v100[4] = self;
    objc_msgSend_setObjectParsedBlock_(v17, v29, v100);
    if (objc_msgSend_parsingStandaloneMessage(self, v30, v31))
    {
      v34 = 4;
    }

    else
    {
      v34 = 0;
    }

    v35 = objc_msgSend_shared(CKDTrafficLogger, v32, v33);
    v38 = objc_msgSend_requestUUID(self, v36, v37);
    v41 = objc_msgSend_expectedResponseClass(self, v39, v40);
    v42 = NSStringFromClass(v41);
    objc_msgSend_logResponseConfigurationWithRequestUUID_format_messageClass_completionHandler_(v35, v43, v38, v34, v42, &unk_28385E6E0);
  }

LABEL_19:
  if (*MEMORY[0x277CBC810] == 1)
  {
    v66 = objc_msgSend_unitTestOverrides(self, v15, v16);
    v68 = objc_msgSend_objectForKeyedSubscript_(v66, v67, @"TestRepeatedParseResults");
    v71 = objc_msgSend_BOOLValue(v68, v69, v70);
    objc_msgSend_setTestRepeatedParseResults_(v17, v72, v71);
  }

LABEL_21:

  return v17;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, object);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKDURLRequest.m", 1235, @"To be overridden by subclass");

  v8 = MEMORY[0x277CBC560];
  v9 = *MEMORY[0x277CBBF50];

  return objc_msgSend_errorWithDomain_code_format_(v8, v7, v9, 12, @"To be overridden by subclass");
}

- (void)requestDidParseProtobufObject:(id)object completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_requestDidParseProtobufObject_(self, v6, object);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v7);
  }
}

- (void)requestDidParseJSONObject:(id)object
{
  v5 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 1005, @"Received a json payload that we weren't expecting: %@", object);
  objc_msgSend_finishWithError_(self, v4, v5);
}

- (void)requestDidParsePlistObject:(id)object
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, object);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKDURLRequest.m", 1252, @"To be overridden by subclass");
}

- (void)requestDidParsePlaintextObject:(id)object
{
  v4 = MEMORY[0x277CBC560];
  v5 = *MEMORY[0x277CBC120];
  v6 = MEMORY[0x277CCACA8];
  objectCopy = object;
  v8 = [v6 alloc];
  v13 = objc_msgSend_initWithData_encoding_(v8, v9, objectCopy, 4);

  v11 = objc_msgSend_errorWithDomain_code_format_(v4, v10, v5, 1005, @"Received a plaintext response that we weren't expecting: %@", v13);
  objc_msgSend__finishOnLifecycleQueueWithError_(self, v12, v11);
}

- (void)requestDidParse509CertObject:(id)object
{
  v5 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 1005, @"Received a 509 cert response that we weren't expecting: %@", object);
  objc_msgSend__finishOnLifecycleQueueWithError_(self, v4, v5);
}

- (void)requestDidParseNodeFailure:(id)failure
{
  failureCopy = failure;
  v6 = objc_msgSend_result(failureCopy, v4, v5);
  v9 = objc_msgSend_error(v6, v7, v8);
  if (objc_msgSend_hasExtensionError(v9, v10, v11))
  {
    v14 = objc_msgSend_result(failureCopy, v12, v13);
    v17 = objc_msgSend_error(v14, v15, v16);
    v20 = objc_msgSend_extensionError(v17, v18, v19);
    hasTypeCode = objc_msgSend_hasTypeCode(v20, v21, v22);

    if (hasTypeCode)
    {
      v26 = MEMORY[0x277CBC560];
      v27 = *MEMORY[0x277CBC120];
      v28 = objc_msgSend_result(failureCopy, v24, v25);
      v29 = sub_225395734(self, v28);
      v31 = objc_msgSend_errorWithDomain_code_userInfo_format_(v26, v30, v27, 6000, v29, @"Plugin-Specific Error");
      goto LABEL_6;
    }
  }

  else
  {
  }

  v32 = MEMORY[0x277CCA9B8];
  v33 = *MEMORY[0x277CBC120];
  v28 = objc_msgSend_result(failureCopy, v24, v25);
  v34 = sub_2253962A4(v28);
  v29 = objc_msgSend_result(failureCopy, v35, v36);
  v37 = sub_225395734(self, v29);
  v31 = objc_msgSend_errorWithDomain_code_userInfo_(v32, v38, v33, v34, v37);

LABEL_6:
  objc_msgSend__finishOnLifecycleQueueWithError_(self, v39, v31);
}

- (NSArray)requestOperationClasses
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
  v6 = NSStringFromSelector(a2);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v9, a2, self, @"CKDURLRequest.m", 1382, @"%@ should be overwritten by the subclass (%@)", v6, v8);

  return 0;
}

- (CKRoughlyEquivalentProperties)equivalencyProperties
{
  v3 = objc_alloc_init(MEMORY[0x277CBC640]);
  objc_msgSend_fillOutEquivalencyPropertiesBuilder_(self, v4, v3);
  v7 = objc_msgSend_properties(v3, v5, v6);

  return v7;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  builderCopy = builder;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v7, v6, @"super.className");

  v8 = MEMORY[0x277CCABB0];
  v11 = objc_msgSend_databaseScope(self, v9, v10);
  v13 = objc_msgSend_numberWithInteger_(v8, v12, v11);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v14, v13, @"super.databaseScope");

  v17 = objc_msgSend_container(self, v15, v16);
  v20 = objc_msgSend_containerScopedUserID(v17, v18, v19);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v21, v20, @"super.csuid");

  v28 = objc_msgSend_container(self, v22, v23);
  v26 = objc_msgSend_containerID(v28, v24, v25);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v27, v26, @"super.containerID");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v6 = objc_msgSend_databaseScope(self, v4, v5);
  objc_msgSend_setDatabaseScope_(propertiesCopy, v7, v6);
}

- (NSString)authPromptReason
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_authPromptReason(v3, v4, v5);

  return v6;
}

- (CKTestRequestProperties)testRequestProperties
{
  v4 = objc_msgSend_lifecycleQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  if (*MEMORY[0x277CBC810] == 1 && !self->_testRequestProperties)
  {
    v7 = objc_msgSend_equivalencyProperties(self, v5, v6);
    v8 = objc_alloc(NSClassFromString(&cfstr_Cktestrequestp.isa));
    v10 = objc_msgSend_initWithEquivalencyProperties_(v8, v9, v7);
    objc_msgSend_fillOutRequestProperties_(self, v11, v10);
    testRequestProperties = self->_testRequestProperties;
    self->_testRequestProperties = v10;
  }

  v13 = self->_testRequestProperties;

  return v13;
}

- (void)_performWillSendTestCallback
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2253F0A04;
  v2[3] = &unk_278545A00;
  v2[4] = self;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(self, a2, v2);
}

- (void)setRequestOptions:(id)options
{
  optionsCopy = options;
  obj = self;
  objc_sync_enter(obj);
  requestOptions = obj->_requestOptions;
  obj->_requestOptions = optionsCopy;

  objc_sync_exit(obj);
}

- (void)_loadRequest:(id)request
{
  requestCopy = request;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2253F1758;
  v8[3] = &unk_278545E20;
  v9 = requestCopy;
  v10 = a2;
  v8[4] = self;
  v6 = requestCopy;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(self, v7, v8);
}

- (void)cancel
{
  v4 = objc_msgSend_lifecycleQueue(self, a2, v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253F1F20;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  if (objc_msgSend__onLifecycleQueue(self, v5, v6))
  {
    objc_msgSend__finishOnLifecycleQueueWithError_(self, v7, errorCopy);
  }

  else
  {
    v9 = objc_msgSend_lifecycleQueue(self, v7, v8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2253F21D4;
    v10[3] = &unk_278545898;
    v10[4] = self;
    v11 = errorCopy;
    dispatch_sync(v9, v10);
  }
}

- (id)_wrapErrorIfNecessary:(id)necessary
{
  v33[1] = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  v4 = necessaryCopy;
  if (!necessaryCopy)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v5 = necessaryCopy;
  v8 = objc_msgSend_domain(v5, v6, v7);
  if (!objc_msgSend_isEqualToString_(v8, v9, *MEMORY[0x277CCA5B8]))
  {

    goto LABEL_9;
  }

  if (objc_msgSend_code(v5, v10, v11) == 100)
  {
  }

  else
  {
    v16 = objc_msgSend_code(v5, v12, v13);

    if (v16 != 6)
    {
      goto LABEL_9;
    }
  }

  v17 = MEMORY[0x277CBC560];
  v18 = *MEMORY[0x277CBC120];
  v32 = *MEMORY[0x277CBBF68];
  v19 = MEMORY[0x277CCABB0];
  v20 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v14, v15);
  v23 = objc_msgSend_defaultRetryAfter(v20, v21, v22);
  v25 = objc_msgSend_numberWithInt_(v19, v24, v23);
  v33[0] = v25;
  v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v33, &v32, 1);
  v29 = objc_msgSend_errorWithDomain_code_userInfo_format_(v17, v28, v18, 1013, v27, @"Received a networking protocol error. Please try again");

  v5 = v29;
LABEL_9:

  v30 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_finishOnLifecycleQueueWithError:(id)error
{
  v154 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = objc_msgSend_lifecycleQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v9 = objc_msgSend__wrapErrorIfNecessary_(self, v8, errorCopy);

  v10 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = MEMORY[0x277CBC860];
  v12 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v12;
    v18 = objc_msgSend_requestUUID(self, v16, v17);
    *buf = 138543618;
    v149 = v18;
    v150 = 2112;
    v151 = v9;
    _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Finishing with error %@", buf, 0x16u);
  }

  v19 = objc_msgSend_serverProvidedAutoBugCaptureReason(self, v13, v14);

  if (v19)
  {
    objc_msgSend__triggerAutoBugCaptureWithErrorPayload_(self, v20, v9);
  }

  v22 = objc_msgSend_serverProvidedTapToRadarRequest(self, v20, v21);
  if (v22)
  {
    v25 = v22;
    v26 = objc_msgSend_currentProcess(CKDDaemonProcess, v23, v24);
    v29 = objc_msgSend_processType(v26, v27, v28);

    if (!v29)
    {
      v30 = objc_msgSend_sharedManager(MEMORY[0x277CBC778], v23, v24);
      v33 = objc_msgSend_serverProvidedTapToRadarRequest(self, v31, v32);
      objc_msgSend_triggerTapToRadarWithRequest_(v30, v34, v33);
    }
  }

  if (objc_msgSend_markAsFinished(self, v23, v24))
  {
    if (objc_msgSend_isCancelled(self, v35, v36))
    {
      v39 = MEMORY[0x277CBC560];
      v40 = *MEMORY[0x277CBC120];
      v41 = objc_msgSend_requestUUID(self, v37, v38);
      v43 = objc_msgSend_errorWithDomain_code_format_(v39, v42, v40, 1, @"Request %@ was cancelled", v41);

      v9 = v43;
    }

    if (*v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v44 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
    {
      v141 = v44;
      v144 = objc_msgSend_requestUUID(self, v142, v143);
      v147 = objc_msgSend_ckShortDescription(self, v145, v146);
      *buf = 138543874;
      v149 = v144;
      v150 = 2114;
      v151 = v147;
      v152 = 2112;
      v153 = v9;
      _os_log_debug_impl(&dword_22506F000, v141, OS_LOG_TYPE_DEBUG, "req: %{public}@, Will finish request %{public}@ with error %@", buf, 0x20u);
    }

    objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x277D82BB8], v45, self, sel_performRequest, 0);
    v48 = objc_msgSend_shared(CKDTrafficLogger, v46, v47);
    v51 = objc_msgSend_requestUUID(self, v49, v50);
    objc_msgSend_finishRequestLogWithRequestUUID_completionHandler_(v48, v52, v51, &unk_28385E7E0);

    objc_msgSend_setError_(self, v53, v9);
    selfCopy = self;
    v57 = objc_msgSend_operation(selfCopy, v55, v56);
    v60 = objc_msgSend_dateRequestWentOut(selfCopy, v58, v59);

    if (v60)
    {
      v63 = objc_msgSend_metrics(selfCopy, v61, v62);
      v66 = objc_msgSend_metrics(selfCopy, v64, v65);
      v69 = objc_msgSend_dateRequestWentOut(selfCopy, v67, v68);
      v72 = objc_msgSend_date(MEMORY[0x277CBEAA8], v70, v71);
      v75 = objc_msgSend_dateRequestWentOut(selfCopy, v73, v74);
      objc_msgSend_timeIntervalSinceDate_(v72, v76, v75);
      started = objc_msgSend_newRangeWithOperationState_startDate_duration_(v66, v77, 1, v69);
      objc_msgSend_addRange_(v63, v79, started);

      v11 = MEMORY[0x277CBC860];
    }

    v80 = objc_msgSend_date(MEMORY[0x277CBEAA8], v61, v62);
    v83 = objc_msgSend_metrics(selfCopy, v81, v82);
    v86 = objc_msgSend_startDate(v83, v84, v85);
    objc_msgSend_timeIntervalSinceDate_(v80, v87, v86);
    v89 = v88;
    v92 = objc_msgSend_metrics(selfCopy, v90, v91);
    objc_msgSend_setDuration_(v92, v93, v94, v89);

    v97 = objc_msgSend_metrics(selfCopy, v95, v96);
    v100 = objc_msgSend_timingData(selfCopy, v98, v99);
    objc_msgSend_request_didFinishWithMetrics_w3cNavigationTiming_(v57, v101, selfCopy, v97, v100);

    objc_msgSend_invokeCompletionBlock(selfCopy, v102, v103);
    objc_msgSend_setRequestProgressBlock_(selfCopy, v104, 0);
    objc_msgSend_setResponseProgressBlock_(selfCopy, v105, 0);
    v108 = objc_msgSend_dateRequestWentOut(selfCopy, v106, v107);
    if (v108)
    {
      v109 = !selfCopy->_didFinishLoading;
    }

    else
    {
      v109 = 0;
    }

    objc_msgSend_tearDownResourcesAndReleaseTheZoneLocks_(selfCopy, v118, v109);
    objc_msgSend_setDateRequestWentOut_(selfCopy, v119, 0);
    if (*v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v120 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      v123 = v120;
      v126 = objc_msgSend_requestUUID(selfCopy, v124, v125);
      *buf = 138543874;
      v149 = v126;
      v150 = 2112;
      v151 = selfCopy;
      v152 = 2112;
      v153 = v9;
      _os_log_impl(&dword_22506F000, v123, OS_LOG_TYPE_INFO, "req: %{public}@, Did finish request %@ with error %@", buf, 0x20u);
    }

    v127 = objc_msgSend_signpost(selfCopy, v121, v122);

    if (v127)
    {
      v130 = objc_msgSend_signpost(selfCopy, v128, v129);
      v133 = objc_msgSend_log(v130, v131, v132);

      v136 = objc_msgSend_signpost(selfCopy, v134, v135);
      v139 = objc_msgSend_identifier(v136, v137, v138);

      if (v139 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v133))
      {
        *buf = 138412290;
        v149 = v9;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v133, OS_SIGNPOST_INTERVAL_END, v139, "CKDURLRequest", "Error=%{signpost.description:attribute}@ ", buf, 0xCu);
      }
    }
  }

  else
  {
    if (*v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v110 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      v111 = v110;
      v114 = objc_msgSend_requestUUID(self, v112, v113);
      v117 = objc_msgSend_ckShortDescription(self, v115, v116);
      *buf = 138543618;
      v149 = v114;
      v150 = 2114;
      v151 = v117;
      _os_log_impl(&dword_22506F000, v111, OS_LOG_TYPE_INFO, "req: %{public}@, Warn: request %{public}@ was already marked as finished", buf, 0x16u);
    }
  }

  v140 = *MEMORY[0x277D85DE8];
}

- (void)_triggerAutoBugCaptureWithErrorPayload:(id)payload
{
  v80 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v7 = objc_msgSend_container(self, v5, v6);
  v10 = objc_msgSend_containerID(v7, v8, v9);
  v13 = objc_msgSend_containerIdentifier(v10, v11, v12);

  v16 = objc_msgSend_serverProvidedAutoBugCaptureReason(self, v14, v15);
  v17 = objc_opt_class();
  objc_sync_enter(v17);
  if (qword_280D586F0 && (objc_msgSend_timeIntervalSinceNow(qword_280D586F0, v18, v19), v20 > -10.0))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v68 = objc_msgSend_container(self, v22, v23);
      v71 = objc_msgSend_processName(v68, v69, v70);
      *buf = 138544130;
      v73 = v16;
      v74 = 2114;
      v75 = v71;
      v76 = 2114;
      v77 = v13;
      v78 = 2114;
      v79 = payloadCopy;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "Too many server triggered ABCs. Logging locally: %{public}@. proc: %{public}@. containerID: %{public}@. error: %{public}@.", buf, 0x2Au);
    }

    objc_sync_exit(v17);
  }

  else
  {
    v24 = objc_msgSend_date(MEMORY[0x277CBEAA8], v18, v19);
    v25 = qword_280D586F0;
    qword_280D586F0 = v24;

    objc_sync_exit(v17);
    if (objc_msgSend_length(v13, v26, v27))
    {
      v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"%@: %@", v13, v16);

      v16 = v30;
    }

    if (objc_msgSend_length(v16, v28, v29) >= 0x65)
    {
      v33 = MEMORY[0x277CCACA8];
      v34 = objc_msgSend_hash(v16, v31, v32);
      v36 = objc_msgSend_stringWithFormat_(v33, v35, @":0x%lx", v34);
      v39 = objc_msgSend_length(v36, v37, v38);
      v41 = objc_msgSend_substringToIndex_(v16, v40, 100 - v39);
      v43 = objc_msgSend_stringByAppendingString_(v41, v42, v36);

      v16 = v43;
    }

    v17 = objc_alloc_init(MEMORY[0x277D6AFC8]);
    v46 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v44, v45);
    v49 = objc_msgSend_processName(v46, v47, v48);
    v51 = objc_msgSend_signatureWithDomain_type_subType_detectedProcess_triggerThresholdValues_(v17, v50, @"CloudKit", @"Functional", @"ServerTriggered", v49, 0);

    objc_msgSend_setObject_forKeyedSubscript_(v51, v52, v16, *MEMORY[0x277D6B1F0]);
    v55 = objc_msgSend_container(self, v53, v54);
    v58 = objc_msgSend_processName(v55, v56, v57);
    objc_msgSend_setObject_forKeyedSubscript_(v51, v59, v58, *MEMORY[0x277D6B1D0]);

    objc_msgSend_setObject_forKeyedSubscript_(v51, v60, v13, @"ckContainerID");
    v62 = objc_msgSend_snapshotWithSignature_duration_event_payload_reply_(v17, v61, v51, 0, 0, &unk_28385E800, 15.0);
    v63 = *MEMORY[0x277CBC878];
    v64 = *MEMORY[0x277CBC880];
    if (v62)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v63);
      }

      v65 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v73 = v16;
        _os_log_debug_impl(&dword_22506F000, v65, OS_LOG_TYPE_DEBUG, "Diagnostic Reporter took a snapshot for signature %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v63);
      }

      v66 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v73 = v16;
        _os_log_error_impl(&dword_22506F000, v66, OS_LOG_TYPE_ERROR, "Diagnostic Reporter failed to take snapshot for signature %{public}@", buf, 0xCu);
      }
    }
  }

  v67 = *MEMORY[0x277D85DE8];
}

- (BOOL)performOnLifecycleQueueIfNotFinished:(id)finished
{
  finishedCopy = finished;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  objc_initWeak(&location, self);
  v7 = objc_msgSend_lifecycleQueue(self, v5, v6);
  dispatch_assert_queue_not_V2(v7);

  v10 = objc_msgSend_lifecycleQueue(self, v8, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2253F3300;
  v13[3] = &unk_27854DAA8;
  objc_copyWeak(&v16, &location);
  v14 = finishedCopy;
  v15 = &v18;
  v11 = finishedCopy;
  dispatch_sync(v10, v13);

  LOBYTE(v10) = *(v19 + 24);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v18, 8);
  return v10;
}

- (void)performASyncOnLifecycleQueueIfNotFinished:(id)finished fallbackBlock:(id)block
{
  finishedCopy = finished;
  blockCopy = block;
  objc_initWeak(&location, self);
  v10 = objc_msgSend_lifecycleQueue(self, v8, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2253F35C8;
  v13[3] = &unk_27854DAD0;
  objc_copyWeak(&v16, &location);
  v14 = blockCopy;
  v15 = finishedCopy;
  v11 = finishedCopy;
  v12 = blockCopy;
  dispatch_async(v10, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  v17 = objc_msgSend_signpost(self, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_signpost(self, v18, v19);
    v23 = objc_msgSend_log(v20, v21, v22);

    v26 = objc_msgSend_signpost(self, v24, v25);
    v29 = objc_msgSend_identifier(v26, v27, v28);

    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v23, OS_SIGNPOST_EVENT, v29, "CKDURLRequest", "Performing HTTP redirection", buf, 2u);
    }
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_2253F395C;
  v35[3] = &unk_27854DAF8;
  v36 = taskCopy;
  selfCopy = self;
  v30 = handlerCopy;
  v40 = v30;
  v38 = redirectionCopy;
  v31 = requestCopy;
  v39 = v31;
  v32 = redirectionCopy;
  v33 = taskCopy;
  if ((objc_msgSend_performOnLifecycleQueueIfNotFinished_(self, v34, v35) & 1) == 0)
  {
    (*(v30 + 2))(v30, v31);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2253F40AC;
  v20[3] = &unk_2785488E0;
  v21 = responseCopy;
  selfCopy = self;
  v23 = taskCopy;
  v24 = handlerCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2253F4A60;
  v16[3] = &unk_278546C30;
  v17 = v21;
  selfCopy2 = self;
  v19 = v24;
  v12 = v24;
  v13 = v21;
  v14 = taskCopy;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_fallbackBlock_(self, v15, v20, v16);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  v35 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v15 = objc_msgSend_requestUUID(self, v13, v14);
    *buf = 138543618;
    v32 = v15;
    v33 = 2048;
    v34 = objc_msgSend_length(dataCopy, v16, v17);
    _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEFAULT, "req: %{public}@, URLSession:dataTask:didReceiveData: %ld bytes", buf, 0x16u);
  }

  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2253F4DA0;
  v29[3] = &unk_278545A00;
  v30 = v18;
  v19 = v18;
  objc_msgSend_URLSession_dataTask__didReceiveData_completionHandler_(self, v20, sessionCopy, taskCopy, dataCopy, v29);
  objc_msgSend_timeoutIntervalForResource(self, v21, v22);
  v24 = v23 * 1000000000.0;
  v25 = v23 <= 0.0;
  v26 = 1.84467441e19;
  if (!v25)
  {
    v26 = v24;
  }

  v27 = dispatch_time(0, v26);
  dispatch_group_wait(v19, v27);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session dataTask:(id)task _didReceiveData:(id)data completionHandler:(id)handler
{
  taskCopy = task;
  dataCopy = data;
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2253F4E8C;
  v16[3] = &unk_2785488E0;
  v16[4] = self;
  v17 = dataCopy;
  v18 = taskCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = taskCopy;
  v14 = dataCopy;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_fallbackBlock_(self, v15, v16, v12);
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  v23 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  streamCopy = stream;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2253F56AC;
  v18[3] = &unk_278546C30;
  v18[4] = self;
  v9 = taskCopy;
  v19 = v9;
  v10 = streamCopy;
  v20 = v10;
  if ((objc_msgSend_performOnLifecycleQueueIfNotFinished_(self, v11, v18) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v16 = objc_msgSend_requestUUID(self, v14, v15);
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Asked for a new body stream while already cancelled.  Soldiering on without a request body", buf, 0xCu);
    }

    (*(v10 + 2))(v10, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  taskCopy = task;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2253F5AAC;
  v14[3] = &unk_27854DB48;
  dataCopy = data;
  sentCopy = sent;
  sendCopy = send;
  v14[4] = self;
  v15 = taskCopy;
  v12 = taskCopy;
  objc_msgSend_performOnLifecycleQueueIfNotFinished_(self, v13, v14);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2253F5EDC;
  v12[3] = &unk_278546990;
  v12[4] = self;
  v13 = errorCopy;
  v14 = taskCopy;
  v9 = taskCopy;
  v10 = errorCopy;
  objc_msgSend_performOnLifecycleQueueIfNotFinished_(self, v11, v12);
}

- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  handlerCopy = handler;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2253F7280;
  v19[3] = &unk_278546C30;
  v19[4] = self;
  v10 = connectionCopy;
  v20 = v10;
  v11 = handlerCopy;
  v21 = v11;
  if ((objc_msgSend_performOnLifecycleQueueIfNotFinished_(self, v12, v19) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v17 = objc_msgSend_requestUUID(self, v15, v16);
      *buf = 138543362;
      v23 = v17;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Cancelling request on established connection due to cancelled CKDURLRequest", buf, 0xCu);
    }

    (*(v11 + 2))(v11, 0);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session _taskIsWaitingForConnection:(id)connection
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2253F7878;
  v4[3] = &unk_278545A00;
  v4[4] = self;
  objc_msgSend_performOnLifecycleQueueIfNotFinished_(self, a2, v4, connection);
}

- (void)URLSession:(id)session task:(id)task _conditionalRequirementsChanged:(BOOL)changed
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2253F7A8C;
  v5[3] = &unk_278547970;
  changedCopy = changed;
  v5[4] = self;
  objc_msgSend_performOnLifecycleQueueIfNotFinished_(self, a2, v5, task);
}

- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error
{
  errorCopy = error;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2253F7D70;
  v9[3] = &unk_278545898;
  v9[4] = self;
  v10 = errorCopy;
  v7 = errorCopy;
  objc_msgSend_performOnLifecycleQueueIfNotFinished_(self, v8, v9);
}

- (id)statusReportWithIndent:(unint64_t)indent
{
  v4 = MEMORY[0x277CCAB68];
  v5 = CKTabIndentAtDepth();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v10 = objc_msgSend_requestUUID(self, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"%s<%@ %@ ", v5, v7, v10);

  v14 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v13, 2);
  if (objc_msgSend_isFinished(self, v15, v16))
  {
    objc_msgSend_addObject_(v14, v17, @"finished");
  }

  if (objc_msgSend_isCancelled(self, v17, v18))
  {
    objc_msgSend_addObject_(v14, v19, @"cancelled");
  }

  if (objc_msgSend_count(v14, v19, v20))
  {
    v23 = objc_msgSend_componentsJoinedByString_(v14, v21, @"|");
    objc_msgSend_appendFormat_(v12, v24, @"stateFlags=%@ ", v23);
  }

  if (objc_msgSend_isWaitingOnAuthRenew(self, v21, v22))
  {
    objc_msgSend_appendString_(v12, v25, @"(waiting on auth)");
  }

  v29 = objc_msgSend_urlSessionTask(self, v25, v26);
  if (v29)
  {
    v30 = objc_msgSend__CFNetworkTaskIdentifierString(self, v27, v28);
    objc_msgSend_appendFormat_(v12, v31, @"CFNetwork task: %@ ", v30);
  }

  objc_msgSend_appendString_(v12, v27, @">\n");

  return v12;
}

- (id)createAssetAuthorizeGetRequestOptionsHeaderInfoWithKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v7 = objc_opt_new();
  objc_msgSend_setHeaderKey_(v7, v8, keyCopy);

  objc_msgSend_setHeaderValue_(v7, v9, valueCopy);

  return v7;
}

@end