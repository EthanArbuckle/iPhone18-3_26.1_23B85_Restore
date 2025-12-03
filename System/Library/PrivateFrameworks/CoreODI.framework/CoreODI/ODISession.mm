@interface ODISession
+ (void)_initLogCategories;
- (NSString)availablePartialAssessment;
- (ODISession)initWithServiceIdentifier:(id)identifier forDSIDType:(unint64_t)type;
- (ODISession)initWithServiceIdentifier:(id)identifier forDSIDType:(unint64_t)type andLocationBundle:(id)bundle;
- (ODISession)initWithServiceIdentifier:(id)identifier forDSIDType:(unint64_t)type andLocationBundleIdentifier:(id)bundleIdentifier;
- (id)initForTransaction;
- (void)dealloc;
- (void)didChangeStateWith:(id)with assessmentID:(id)d;
- (void)getAssessment:(id)assessment;
- (void)getAssessmentForTransaction:(id)transaction;
- (void)provideFeedbackOnPayloadOutcome:(unint64_t)outcome;
- (void)setAvailablePartialAssessment:(id)assessment;
- (void)updateWithAdditionalAttributes:(id)attributes;
@end

@implementation ODISession

+ (void)_initLogCategories
{
  if (once != -1)
  {
    +[ODISession _initLogCategories];
  }
}

uint64_t __32__ODISession__initLogCategories__block_invoke()
{
  v0 = os_log_create("com.apple.CoreODI", "ODISession");
  v1 = mlog;
  mlog = v0;

  v2 = os_log_create("com.apple.CoreODI", "SessionInitialisation");
  v3 = initLog;
  initLog = v2;

  apiLog = os_log_create("com.apple.CoreODI", "APIInterface");

  return MEMORY[0x2821F96F8]();
}

- (ODISession)initWithServiceIdentifier:(id)identifier forDSIDType:(unint64_t)type andLocationBundleIdentifier:(id)bundleIdentifier
{
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  +[ODISession _initLogCategories];
  v10 = apiLog;
  if (os_log_type_enabled(apiLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v29 = "[ODISession initWithServiceIdentifier:forDSIDType:andLocationBundleIdentifier:]";
    v30 = 2112;
    typeCopy3 = identifierCopy;
    v32 = 2048;
    typeCopy = type;
    v34 = 2112;
    v35 = bundleIdentifierCopy;
    _os_log_impl(&dword_246157000, v10, OS_LOG_TYPE_DEFAULT, "Call to %s | identifier: %@, dsidType: %lu, locationBundleID: %@", buf, 0x2Au);
  }

  v11 = initLog;
  if (os_log_type_enabled(initLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = identifierCopy;
    v30 = 2048;
    typeCopy3 = type;
    _os_log_impl(&dword_246157000, v11, OS_LOG_TYPE_INFO, "Initializing ODISession with identifier %@ for DSID of type %lu", buf, 0x16u);
  }

  v12 = initLog;
  if (os_log_type_enabled(initLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = bundleIdentifierCopy;
    _os_log_impl(&dword_246157000, v12, OS_LOG_TYPE_INFO, "Initializing ODISession: Location bundle identifier: %@", buf, 0xCu);
  }

  v27.receiver = self;
  v27.super_class = ODISession;
  v13 = [(ODISession *)&v27 init];
  if (v13)
  {
    v14 = [[_TtC7CoreODI29ODIPartialAssessmentInitiator alloc] initWithProviderID:identifierCopy];
    makeInitialPartialAssessmentPayload = [(ODIPartialAssessmentInitiator *)v14 makeInitialPartialAssessmentPayload];
    availablePartialAssessment = v13->_availablePartialAssessment;
    v13->_availablePartialAssessment = makeInitialPartialAssessmentPayload;

    makeInitialPartialAssessmentID = [(ODIPartialAssessmentInitiator *)v14 makeInitialPartialAssessmentID];
    partialAssessmentID = v13->_partialAssessmentID;
    v13->_partialAssessmentID = makeInitialPartialAssessmentID;

    v19 = dispatch_queue_create("com.apple.CoreODI.apa", 0);
    partial_assessment_queue = v13->_partial_assessment_queue;
    v13->_partial_assessment_queue = v19;

    v21 = [[_TtC7CoreODI18ODISessionInternal alloc] initWithServiceIdentifier:identifierCopy forDSIDType:type locationBundle:0 andLocationBundleIdentifier:bundleIdentifierCopy sessionStateDelegate:v13];
    internalSession = v13->_internalSession;
    v13->_internalSession = v21;

    if (v13->_internalSession)
    {
      v23 = v13;
    }

    else
    {
      v24 = initLog;
      if (identifierCopy)
      {
        if (os_log_type_enabled(initLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v29 = identifierCopy;
          v30 = 2050;
          typeCopy3 = type;
          v32 = 2114;
          typeCopy = bundleIdentifierCopy;
          _os_log_error_impl(&dword_246157000, v24, OS_LOG_TYPE_ERROR, "Internal session failed to init, returning nil. identifier: %{public}@, for DSID: %{public}lu, location bundle: %{public}@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(initLog, OS_LOG_TYPE_FAULT))
      {
        [ODISession initWithServiceIdentifier:forDSIDType:andLocationBundleIdentifier:];
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

- (ODISession)initWithServiceIdentifier:(id)identifier forDSIDType:(unint64_t)type andLocationBundle:(id)bundle
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  bundleCopy = bundle;
  +[ODISession _initLogCategories];
  v10 = apiLog;
  if (os_log_type_enabled(apiLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v31 = "[ODISession initWithServiceIdentifier:forDSIDType:andLocationBundle:]";
    v32 = 2112;
    typeCopy3 = identifierCopy;
    v34 = 2048;
    typeCopy = type;
    v36 = 2112;
    v37 = bundleCopy;
    _os_log_impl(&dword_246157000, v10, OS_LOG_TYPE_DEFAULT, "Call to %s | identifier: %@, dsidType: %lu, locationBundle: %@", buf, 0x2Au);
  }

  v11 = initLog;
  if (os_log_type_enabled(initLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v31 = identifierCopy;
    v32 = 2048;
    typeCopy3 = type;
    _os_log_impl(&dword_246157000, v11, OS_LOG_TYPE_INFO, "Initializing ODISession with bundle with identifier %@ for DSID of type %lu", buf, 0x16u);
  }

  v12 = initLog;
  if (os_log_type_enabled(initLog, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    bundleIdentifier = [bundleCopy bundleIdentifier];
    *buf = 138412290;
    v31 = bundleIdentifier;
    _os_log_impl(&dword_246157000, v13, OS_LOG_TYPE_INFO, "Initializing ODISession: Location bundle identifier: %@", buf, 0xCu);
  }

  v29.receiver = self;
  v29.super_class = ODISession;
  v15 = [(ODISession *)&v29 init];
  if (v15)
  {
    v16 = [[_TtC7CoreODI29ODIPartialAssessmentInitiator alloc] initWithProviderID:identifierCopy];
    makeInitialPartialAssessmentPayload = [(ODIPartialAssessmentInitiator *)v16 makeInitialPartialAssessmentPayload];
    availablePartialAssessment = v15->_availablePartialAssessment;
    v15->_availablePartialAssessment = makeInitialPartialAssessmentPayload;

    makeInitialPartialAssessmentID = [(ODIPartialAssessmentInitiator *)v16 makeInitialPartialAssessmentID];
    partialAssessmentID = v15->_partialAssessmentID;
    v15->_partialAssessmentID = makeInitialPartialAssessmentID;

    v21 = dispatch_queue_create("com.apple.CoreODI.apa", 0);
    partial_assessment_queue = v15->_partial_assessment_queue;
    v15->_partial_assessment_queue = v21;

    v23 = [[_TtC7CoreODI18ODISessionInternal alloc] initWithServiceIdentifier:identifierCopy forDSIDType:type locationBundle:bundleCopy andLocationBundleIdentifier:0 sessionStateDelegate:v15];
    internalSession = v15->_internalSession;
    v15->_internalSession = v23;

    if (v15->_internalSession)
    {
      v25 = v15;
    }

    else
    {
      v26 = initLog;
      if (identifierCopy)
      {
        if (os_log_type_enabled(initLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v31 = identifierCopy;
          v32 = 2050;
          typeCopy3 = type;
          v34 = 2114;
          typeCopy = bundleCopy;
          _os_log_error_impl(&dword_246157000, v26, OS_LOG_TYPE_ERROR, "Internal session failed to init, returning nil. identifier: %{public}@, for DSID: %{public}lu, location bundle: %{public}@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(initLog, OS_LOG_TYPE_FAULT))
      {
        [ODISession initWithServiceIdentifier:forDSIDType:andLocationBundleIdentifier:];
      }

      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

- (ODISession)initWithServiceIdentifier:(id)identifier forDSIDType:(unint64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = apiLog;
  if (os_log_type_enabled(apiLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[ODISession initWithServiceIdentifier:forDSIDType:]";
    v14 = 2112;
    v15 = identifierCopy;
    v16 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_246157000, v7, OS_LOG_TYPE_DEFAULT, "Call to %s | identifier: %@, dsidType: %lu", &v12, 0x20u);
  }

  v8 = mlog;
  if (os_log_type_enabled(mlog, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_246157000, v8, OS_LOG_TYPE_INFO, "Called initWithServiceIdentifier", &v12, 2u);
  }

  v9 = [(ODISession *)self initWithServiceIdentifier:identifierCopy forDSIDType:type andLocationBundleIdentifier:0];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)initForTransaction
{
  v23 = *MEMORY[0x277D85DE8];
  +[ODISession _initLogCategories];
  v3 = initLog;
  if (os_log_type_enabled(initLog, OS_LOG_TYPE_FAULT))
  {
    [(ODISession *)v3 initForTransaction];
  }

  v4 = apiLog;
  if (os_log_type_enabled(apiLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[ODISession initForTransaction]";
    _os_log_impl(&dword_246157000, v4, OS_LOG_TYPE_DEFAULT, "Call to %s", buf, 0xCu);
  }

  v5 = initLog;
  if (os_log_type_enabled(initLog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_246157000, v5, OS_LOG_TYPE_INFO, "Initializing ODISession for transaction mode", buf, 2u);
  }

  v20.receiver = self;
  v20.super_class = ODISession;
  v6 = [(ODISession *)&v20 init];
  if (v6)
  {
    v7 = [[_TtC7CoreODI29ODIPartialAssessmentInitiator alloc] initWithProviderID:@"com.apple.apc.sp.tier1"];
    makeInitialPartialAssessmentPayload = [(ODIPartialAssessmentInitiator *)v7 makeInitialPartialAssessmentPayload];
    availablePartialAssessment = v6->_availablePartialAssessment;
    v6->_availablePartialAssessment = makeInitialPartialAssessmentPayload;

    makeInitialPartialAssessmentID = [(ODIPartialAssessmentInitiator *)v7 makeInitialPartialAssessmentID];
    partialAssessmentID = v6->_partialAssessmentID;
    v6->_partialAssessmentID = makeInitialPartialAssessmentID;

    v12 = dispatch_queue_create("com.apple.CoreODI.apa", 0);
    partial_assessment_queue = v6->_partial_assessment_queue;
    v6->_partial_assessment_queue = v12;

    v14 = [[_TtC7CoreODI18ODISessionInternal alloc] initWithServiceIdentifier:@"com.apple.apc.sp.tier1" forDSIDType:1 locationBundle:0 andLocationBundleIdentifier:0 sessionStateDelegate:v6];
    internalSession = v6->_internalSession;
    v6->_internalSession = v14;

    if (v6->_internalSession)
    {
      v16 = v6;
    }

    else
    {
      v17 = initLog;
      if (os_log_type_enabled(initLog, OS_LOG_TYPE_ERROR))
      {
        [(ODISession *)v17 initForTransaction];
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (NSString)availablePartialAssessment
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = apiLog;
  if (os_log_type_enabled(apiLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ODISession availablePartialAssessment]";
    _os_log_impl(&dword_246157000, v3, OS_LOG_TYPE_DEFAULT, "Call to %s", &v8, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ODISessionInternal *)selfCopy->_internalSession provideFeedbackOnPartialAssessmentID:selfCopy->_partialAssessmentID];
  v5 = selfCopy->_availablePartialAssessment;
  objc_sync_exit(selfCopy);

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setAvailablePartialAssessment:(id)assessment
{
  assessmentCopy = assessment;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [assessmentCopy copy];
  availablePartialAssessment = selfCopy->_availablePartialAssessment;
  selfCopy->_availablePartialAssessment = v5;

  objc_sync_exit(selfCopy);
}

- (void)updateWithAdditionalAttributes:(id)attributes
{
  v16 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v5 = apiLog;
  if (os_log_type_enabled(apiLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[ODISession updateWithAdditionalAttributes:]";
    v14 = 2112;
    v15 = attributesCopy;
    _os_log_impl(&dword_246157000, v5, OS_LOG_TYPE_DEFAULT, "Call to %s | attributes: %@", &v12, 0x16u);
  }

  v6 = mlog;
  if (os_log_type_enabled(mlog, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    attributes = [attributesCopy attributes];
    allKeys = [attributes allKeys];
    v12 = 138412290;
    v13 = allKeys;
    _os_log_impl(&dword_246157000, v7, OS_LOG_TYPE_INFO, "Updating with attributes - Keys: %@", &v12, 0xCu);
  }

  [(ODISessionInternal *)self->_internalSession updateWithAdditionalAttributes:attributesCopy];
  v10 = mlog;
  if (os_log_type_enabled(mlog, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_246157000, v10, OS_LOG_TYPE_INFO, "Update with attribute completed", &v12, 2u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getAssessment:(id)assessment
{
  v11 = *MEMORY[0x277D85DE8];
  assessmentCopy = assessment;
  v5 = apiLog;
  if (os_log_type_enabled(apiLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[ODISession getAssessment:]";
    _os_log_impl(&dword_246157000, v5, OS_LOG_TYPE_DEFAULT, "Call to %s", &v9, 0xCu);
  }

  v6 = mlog;
  if (os_log_type_enabled(mlog, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_246157000, v6, OS_LOG_TYPE_INFO, "Called getAssessment", &v9, 2u);
  }

  [(ODISessionInternal *)self->_internalSession getAssessment:assessmentCopy];
  v7 = mlog;
  if (os_log_type_enabled(mlog, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_246157000, v7, OS_LOG_TYPE_INFO, "GetAssessment completed", &v9, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getAssessmentForTransaction:(id)transaction
{
  v11 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v5 = apiLog;
  if (os_log_type_enabled(apiLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[ODISession getAssessmentForTransaction:]";
    _os_log_impl(&dword_246157000, v5, OS_LOG_TYPE_DEFAULT, "Call to %s", &v9, 0xCu);
  }

  v6 = mlog;
  if (os_log_type_enabled(mlog, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_246157000, v6, OS_LOG_TYPE_INFO, "Called getAssessmentForTransaction", &v9, 2u);
  }

  [(ODISessionInternal *)self->_internalSession getAssessment:transactionCopy];
  v7 = mlog;
  if (os_log_type_enabled(mlog, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_246157000, v7, OS_LOG_TYPE_INFO, "GetAssessmentForTransaction completed", &v9, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)provideFeedbackOnPayloadOutcome:(unint64_t)outcome
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = apiLog;
  if (os_log_type_enabled(apiLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ODISession provideFeedbackOnPayloadOutcome:]";
    *&buf[12] = 2048;
    *&buf[14] = outcome;
    _os_log_impl(&dword_246157000, v5, OS_LOG_TYPE_DEFAULT, "Call to %s | outcomeType: %lu", buf, 0x16u);
  }

  v6 = mlog;
  if (os_log_type_enabled(mlog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_246157000, v6, OS_LOG_TYPE_INFO, "Called provideFeedbackOnPayloadOutcome", buf, 2u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  selfCopy = self;
  internalSession = selfCopy->_internalSession;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__ODISession_provideFeedbackOnPayloadOutcome___block_invoke;
  v9[3] = &unk_278E9C098;
  v9[4] = buf;
  [(ODISessionInternal *)internalSession provideFeedbackOnPayloadOutcome:outcome feedbackRecorded:v9];
  _Block_object_dispose(buf, 8);

  v8 = *MEMORY[0x277D85DE8];
}

void __46__ODISession_provideFeedbackOnPayloadOutcome___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;

  v3 = mlog;
  if (os_log_type_enabled(mlog, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_246157000, v3, OS_LOG_TYPE_INFO, "provideFeedbackOnPayloadOutcome completed", v4, 2u);
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = apiLog;
  if (os_log_type_enabled(apiLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[ODISession dealloc]";
    _os_log_impl(&dword_246157000, v3, OS_LOG_TYPE_DEFAULT, "Call to %s", buf, 0xCu);
  }

  v4 = mlog;
  if (os_log_type_enabled(mlog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_246157000, v4, OS_LOG_TYPE_INFO, "ODISession dealloc", buf, 2u);
  }

  [(ODISessionInternal *)self->_internalSession validateForDeinit];
  v6.receiver = self;
  v6.super_class = ODISession;
  [(ODISession *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)didChangeStateWith:(id)with assessmentID:(id)d
{
  withCopy = with;
  dCopy = d;
  partial_assessment_queue = self->_partial_assessment_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ODISession_didChangeStateWith_assessmentID___block_invoke;
  block[3] = &unk_278E9C0C0;
  block[4] = self;
  v12 = withCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = withCopy;
  dispatch_async(partial_assessment_queue, block);
}

uint64_t __46__ODISession_didChangeStateWith_assessmentID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAvailablePartialAssessment:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setPartialAssessmentID:v2];
}

- (void)initWithServiceIdentifier:forDSIDType:andLocationBundleIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_246157000, v0, v1, "Tried to init session with NULL identifier, returning nil. identifier: %{public}@, for DSID: %{public}lu, location bundle: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end