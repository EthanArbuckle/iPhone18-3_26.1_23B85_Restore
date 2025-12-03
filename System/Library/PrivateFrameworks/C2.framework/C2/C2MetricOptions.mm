@interface C2MetricOptions
- (BOOL)clientOperationTriggered:(id)triggered;
- (BOOL)isEqual:(id)equal;
- (BOOL)operationGroupTriggered:(id)triggered;
- (C2MetricOptions)init;
- (C2MetricOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)generateCloudKitInfo;
- (int)generateTriggerWithResponseHeader:(unsigned __int8)header;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setC2MetricsEndpoint:(id)endpoint;
@end

@implementation C2MetricOptions

- (C2MetricOptions)init
{
  v19.receiver = self;
  v19.super_class = C2MetricOptions;
  v2 = [(C2MetricOptions *)&v19 init];
  v3 = v2;
  if (v2)
  {
    c2MetricsEndpoint = v2->_c2MetricsEndpoint;
    v2->_c2MetricsEndpoint = 0;

    *&v3->_reportOperationGroupFrequency = 0u;
    *&v3->_reportClientOperationFrequency = 0u;
    *&v3->_reportFrequency = 0u;
    clientProcessVersion = v3->_clientProcessVersion;
    v3->_clientProcessVersion = 0;

    clientProcessBundleId = v3->_clientProcessBundleId;
    v3->_clientProcessBundleId = 0;

    container = v3->_container;
    v3->_container = 0;

    environment = v3->_environment;
    v3->_environment = 0;

    databaseScope = v3->_databaseScope;
    v3->_databaseScope = 0;

    v3->_anonymous = 1;
    containerScopedUserIdentifier = v3->_containerScopedUserIdentifier;
    v3->_containerScopedUserIdentifier = 0;

    containerScopedDeviceIdentifier = v3->_containerScopedDeviceIdentifier;
    v3->_containerScopedDeviceIdentifier = 0;

    applicationBundleIdentifierOverrideForContainerAccess = v3->_applicationBundleIdentifierOverrideForContainerAccess;
    v3->_applicationBundleIdentifierOverrideForContainerAccess = 0;

    applicationBundleIdentifierOverrideForNetworkAttribution = v3->_applicationBundleIdentifierOverrideForNetworkAttribution;
    v3->_applicationBundleIdentifierOverrideForNetworkAttribution = 0;

    operationGroups = v3->_operationGroups;
    v3->_operationGroups = 0;

    clientOperations = v3->_clientOperations;
    v3->_clientOperations = 0;

    v3->_pushTrigger = 0;
    didCompleteWithError = v3->_didCompleteWithError;
    v3->_didCompleteWithError = 0;

    testBehavior_reportMetric = v3->_testBehavior_reportMetric;
    v3->_testBehavior_reportMetric = 0;

    v3->_reportFrequencyRandomValue = arc4random();
  }

  return v3;
}

- (id)generateCloudKitInfo
{
  v3 = objc_alloc_init(C2MPCloudKitInfo);
  v4 = v3;
  if (v3)
  {
    [(C2MPCloudKitInfo *)v3 setClientProcessVersion:self->_clientProcessVersion];
    [(C2MPCloudKitInfo *)v4 setClientBundleId:self->_clientProcessBundleId];
    [(C2MPCloudKitInfo *)v4 setContainer:self->_container];
    [(C2MPCloudKitInfo *)v4 setEnvironment:self->_environment];
    [(C2MPCloudKitInfo *)v4 setDatabaseScope:self->_databaseScope];
    [(C2MPCloudKitInfo *)v4 setAnonymous:self->_anonymous];
    [(C2MPCloudKitInfo *)v4 setContainerScopedUserIdentifier:self->_containerScopedUserIdentifier];
    [(C2MPCloudKitInfo *)v4 setContainerScopedDeviceIdentifier:self->_containerScopedDeviceIdentifier];
    [(C2MPCloudKitInfo *)v4 setApplicationBundleIdentifierOverrideForContainerAccess:self->_applicationBundleIdentifierOverrideForContainerAccess];
    [(C2MPCloudKitInfo *)v4 setApplicationBundleIdentifierOverrideForNetworkAttribution:self->_applicationBundleIdentifierOverrideForNetworkAttribution];
    v5 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:1282 capacity:0];
    if ([(NSArray *)self->_operationGroups count])
    {
      operationGroups = self->_operationGroups;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __39__C2MetricOptions_generateCloudKitInfo__block_invoke;
      v19[3] = &unk_278D40000;
      v19[4] = self;
      v7 = v4;
      v20 = v7;
      v21 = v5;
      [(NSArray *)operationGroups enumerateObjectsUsingBlock:v19];
      [(C2MPCloudKitInfo *)v7 setReportOperationGroupFrequency:self->_reportOperationGroupFrequency];
      [(C2MPCloudKitInfo *)v7 setReportOperationGroupFrequencyBase:self->_reportOperationGroupFrequencyBase];
    }

    if ([(NSArray *)self->_clientOperations count])
    {
      clientOperations = self->_clientOperations;
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __39__C2MetricOptions_generateCloudKitInfo__block_invoke_2;
      v15 = &unk_278D40028;
      selfCopy = self;
      v17 = v5;
      v9 = v4;
      v18 = v9;
      [(NSArray *)clientOperations enumerateObjectsUsingBlock:&v12];
      [(C2MPCloudKitInfo *)v9 setReportClientOperationFrequency:self->_reportClientOperationFrequency, v12, v13, v14, v15, selfCopy];
      [(C2MPCloudKitInfo *)v9 setReportClientOperationFrequencyBase:self->_reportClientOperationFrequencyBase];
    }

    v10 = v4;
  }

  return v4;
}

void __39__C2MetricOptions_generateCloudKitInfo__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = objc_alloc_init(C2MPCloudKitOperationInfo);
  v4 = [v11 operationId];
  [(C2MPCloudKitOperationInfo *)v3 setOperationId:v4];

  v5 = [v11 operationType];
  [(C2MPCloudKitOperationInfo *)v3 setOperationType:v5];

  -[C2MPCloudKitOperationInfo setOperationTriggered:](v3, "setOperationTriggered:", [*(a1 + 32) clientOperationTriggered:v11]);
  v6 = [v11 operationGroup];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v11 operationGroup];
    v9 = [v8 operationGroupId];
    v10 = NSMapGet(v7, v9);

    if (v10)
    {
      [(C2MPCloudKitOperationInfo *)v3 setOperationGroupIndex:(v10 - 1)];
    }
  }

  if (v3)
  {
    [*(a1 + 48) addClientOperation:v3];
  }
}

void __39__C2MetricOptions_generateCloudKitInfo__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_alloc_init(C2MPCloudKitOperationGroupInfo);
  v4 = [v9 operationGroupId];
  [(C2MPCloudKitOperationGroupInfo *)v3 setOperationGroupId:v4];

  v5 = [v9 operationGroupName];
  [(C2MPCloudKitOperationGroupInfo *)v3 setOperationGroupName:v5];

  -[C2MPCloudKitOperationGroupInfo setOperationGroupTriggered:](v3, "setOperationGroupTriggered:", [*(a1 + 32) operationGroupTriggered:v9]);
  if (v3)
  {
    [*(a1 + 40) addOperationGroup:v3];
    v6 = *(a1 + 48);
    v7 = [v9 operationGroupId];
    v8 = [*(a1 + 40) operationGroups];
    NSMapInsert(v6, v7, [v8 count]);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [C2MetricOptions allocWithZone:zone];
  if (v4)
  {
    c2MetricsEndpoint = [(C2MetricOptions *)self c2MetricsEndpoint];
    [(C2MetricOptions *)v4 setC2MetricsEndpoint:c2MetricsEndpoint];

    [(C2MetricOptions *)v4 setReportFrequency:[(C2MetricOptions *)self reportFrequency]];
    [(C2MetricOptions *)v4 setReportFrequencyBase:[(C2MetricOptions *)self reportFrequencyBase]];
    [(C2MetricOptions *)v4 setReportClientOperationFrequency:[(C2MetricOptions *)self reportClientOperationFrequency]];
    [(C2MetricOptions *)v4 setReportClientOperationFrequencyBase:[(C2MetricOptions *)self reportClientOperationFrequencyBase]];
    [(C2MetricOptions *)v4 setReportOperationGroupFrequency:[(C2MetricOptions *)self reportOperationGroupFrequency]];
    [(C2MetricOptions *)v4 setReportOperationGroupFrequencyBase:[(C2MetricOptions *)self reportOperationGroupFrequencyBase]];
    clientProcessVersion = [(C2MetricOptions *)self clientProcessVersion];
    [(C2MetricOptions *)v4 setClientProcessVersion:clientProcessVersion];

    clientProcessBundleId = [(C2MetricOptions *)self clientProcessBundleId];
    [(C2MetricOptions *)v4 setClientProcessBundleId:clientProcessBundleId];

    container = [(C2MetricOptions *)self container];
    [(C2MetricOptions *)v4 setContainer:container];

    environment = [(C2MetricOptions *)self environment];
    [(C2MetricOptions *)v4 setEnvironment:environment];

    databaseScope = [(C2MetricOptions *)self databaseScope];
    [(C2MetricOptions *)v4 setDatabaseScope:databaseScope];

    [(C2MetricOptions *)v4 setAnonymous:[(C2MetricOptions *)self anonymous]];
    containerScopedUserIdentifier = [(C2MetricOptions *)self containerScopedUserIdentifier];
    [(C2MetricOptions *)v4 setContainerScopedUserIdentifier:containerScopedUserIdentifier];

    containerScopedDeviceIdentifier = [(C2MetricOptions *)self containerScopedDeviceIdentifier];
    [(C2MetricOptions *)v4 setContainerScopedDeviceIdentifier:containerScopedDeviceIdentifier];

    applicationBundleIdentifierOverrideForContainerAccess = [(C2MetricOptions *)self applicationBundleIdentifierOverrideForContainerAccess];
    [(C2MetricOptions *)v4 setApplicationBundleIdentifierOverrideForContainerAccess:applicationBundleIdentifierOverrideForContainerAccess];

    applicationBundleIdentifierOverrideForNetworkAttribution = [(C2MetricOptions *)self applicationBundleIdentifierOverrideForNetworkAttribution];
    [(C2MetricOptions *)v4 setApplicationBundleIdentifierOverrideForNetworkAttribution:applicationBundleIdentifierOverrideForNetworkAttribution];

    operationGroups = [(C2MetricOptions *)self operationGroups];
    [(C2MetricOptions *)v4 setOperationGroups:operationGroups];

    clientOperations = [(C2MetricOptions *)self clientOperations];
    [(C2MetricOptions *)v4 setClientOperations:clientOperations];

    [(C2MetricOptions *)v4 setPushTrigger:[(C2MetricOptions *)self pushTrigger]];
    didCompleteWithError = [(C2MetricOptions *)self didCompleteWithError];
    [(C2MetricOptions *)v4 setDidCompleteWithError:didCompleteWithError];

    testBehavior_reportMetric = [(C2MetricOptions *)self testBehavior_reportMetric];
    [(C2MetricOptions *)v4 setTestBehavior_reportMetric:testBehavior_reportMetric];

    [(C2MetricOptions *)v4 setReportFrequencyRandomValue:[(C2MetricOptions *)self reportFrequencyRandomValue]];
  }

  return v4;
}

- (void)setC2MetricsEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (!endpointCopy || ([endpointCopy scheme], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqual:", @"https"), v5, v7 = endpointCopy, v6))
  {
    objc_storeStrong(&self->_c2MetricsEndpoint, endpoint);
    v7 = endpointCopy;
  }
}

- (int)generateTriggerWithResponseHeader:(unsigned __int8)header
{
  headerCopy = header;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  c2DefaultsDomain = [MEMORY[0x277CBEBD0] c2DefaultsDomain];
  v6 = [c2DefaultsDomain BOOLForKey:@"C2Metrics"];

  if (v6)
  {
    *(v16 + 6) |= 1u;
  }

  if (headerCopy)
  {
    *(v16 + 6) |= 4u;
  }

  if (self->_pushTrigger)
  {
    *(v16 + 6) |= 0x20u;
  }

  reportFrequencyBase = self->_reportFrequencyBase;
  if (reportFrequencyBase)
  {
    reportFrequency = self->_reportFrequency;
    if (reportFrequency)
    {
      if (self->_reportFrequencyRandomValue % reportFrequencyBase < reportFrequency)
      {
        *(v16 + 6) |= 2u;
      }

      clientOperations = self->_clientOperations;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __53__C2MetricOptions_generateTriggerWithResponseHeader___block_invoke;
      v14[3] = &unk_278D40050;
      v14[4] = self;
      v14[5] = &v15;
      [(NSArray *)clientOperations enumerateObjectsUsingBlock:v14];
      operationGroups = self->_operationGroups;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __53__C2MetricOptions_generateTriggerWithResponseHeader___block_invoke_2;
      v13[3] = &unk_278D40078;
      v13[4] = self;
      v13[5] = &v15;
      [(NSArray *)operationGroups enumerateObjectsUsingBlock:v13];
    }
  }

  v11 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  return v11;
}

uint64_t __53__C2MetricOptions_generateTriggerWithResponseHeader___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) clientOperationTriggered:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) |= 8u;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __53__C2MetricOptions_generateTriggerWithResponseHeader___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) operationGroupTriggered:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x10u;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return result;
}

- (BOOL)clientOperationTriggered:(id)triggered
{
  triggeredCopy = triggered;
  v5 = triggeredCopy;
  if (!self->_reportClientOperationFrequencyBase)
  {
    goto LABEL_6;
  }

  if (!self->_reportClientOperationFrequency)
  {
    goto LABEL_6;
  }

  operationId = [triggeredCopy operationId];

  if (!operationId)
  {
    goto LABEL_6;
  }

  operationId2 = [v5 operationId];
  c2UniformlyDistributedIdentifier = [operationId2 c2UniformlyDistributedIdentifier];
  p_reportClientOperationFrequency = &self->_reportClientOperationFrequency;
  reportClientOperationFrequency = self->_reportClientOperationFrequency;
  v11 = c2UniformlyDistributedIdentifier % p_reportClientOperationFrequency[1];

  if (v11 < reportClientOperationFrequency)
  {
    v12 = 1;
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12;
}

- (BOOL)operationGroupTriggered:(id)triggered
{
  triggeredCopy = triggered;
  v5 = triggeredCopy;
  if (!self->_reportOperationGroupFrequencyBase)
  {
    goto LABEL_6;
  }

  if (!self->_reportOperationGroupFrequency)
  {
    goto LABEL_6;
  }

  operationGroupId = [triggeredCopy operationGroupId];

  if (!operationGroupId)
  {
    goto LABEL_6;
  }

  operationGroupId2 = [v5 operationGroupId];
  c2UniformlyDistributedIdentifier = [operationGroupId2 c2UniformlyDistributedIdentifier];
  p_reportOperationGroupFrequency = &self->_reportOperationGroupFrequency;
  reportOperationGroupFrequency = self->_reportOperationGroupFrequency;
  v11 = c2UniformlyDistributedIdentifier % p_reportOperationGroupFrequency[1];

  if (v11 < reportOperationGroupFrequency)
  {
    v12 = 1;
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      c2MetricsEndpoint = self->_c2MetricsEndpoint;
      c2MetricsEndpoint = [(C2MetricOptions *)v5 c2MetricsEndpoint];
      v8 = c2MetricsEndpoint;
      if (c2MetricsEndpoint == c2MetricsEndpoint)
      {
      }

      else
      {
        v9 = self->_c2MetricsEndpoint;
        if (!v9)
        {
          goto LABEL_71;
        }

        c2MetricsEndpoint2 = [(C2MetricOptions *)v5 c2MetricsEndpoint];
        v11 = [(NSURL *)v9 isEqual:c2MetricsEndpoint2];

        if (!v11)
        {
          goto LABEL_72;
        }
      }

      reportFrequency = self->_reportFrequency;
      if (reportFrequency != [(C2MetricOptions *)v5 reportFrequency])
      {
        goto LABEL_72;
      }

      reportFrequencyBase = self->_reportFrequencyBase;
      if (reportFrequencyBase != [(C2MetricOptions *)v5 reportFrequencyBase])
      {
        goto LABEL_72;
      }

      reportClientOperationFrequency = self->_reportClientOperationFrequency;
      if (reportClientOperationFrequency != [(C2MetricOptions *)v5 reportClientOperationFrequency])
      {
        goto LABEL_72;
      }

      reportClientOperationFrequencyBase = self->_reportClientOperationFrequencyBase;
      if (reportClientOperationFrequencyBase != [(C2MetricOptions *)v5 reportClientOperationFrequencyBase])
      {
        goto LABEL_72;
      }

      reportOperationGroupFrequency = self->_reportOperationGroupFrequency;
      if (reportOperationGroupFrequency != [(C2MetricOptions *)v5 reportOperationGroupFrequency])
      {
        goto LABEL_72;
      }

      reportOperationGroupFrequencyBase = self->_reportOperationGroupFrequencyBase;
      if (reportOperationGroupFrequencyBase != [(C2MetricOptions *)v5 reportOperationGroupFrequencyBase])
      {
        goto LABEL_72;
      }

      clientProcessVersion = self->_clientProcessVersion;
      clientProcessVersion = [(C2MetricOptions *)v5 clientProcessVersion];
      v8 = clientProcessVersion;
      if (clientProcessVersion == clientProcessVersion)
      {
      }

      else
      {
        v21 = self->_clientProcessVersion;
        if (!v21)
        {
          goto LABEL_71;
        }

        clientProcessVersion2 = [(C2MetricOptions *)v5 clientProcessVersion];
        v23 = [(NSString *)v21 isEqual:clientProcessVersion2];

        if (!v23)
        {
          goto LABEL_72;
        }
      }

      clientProcessBundleId = self->_clientProcessBundleId;
      clientProcessBundleId = [(C2MetricOptions *)v5 clientProcessBundleId];
      v8 = clientProcessBundleId;
      if (clientProcessBundleId == clientProcessBundleId)
      {
      }

      else
      {
        v26 = self->_clientProcessBundleId;
        if (!v26)
        {
          goto LABEL_71;
        }

        clientProcessBundleId2 = [(C2MetricOptions *)v5 clientProcessBundleId];
        v28 = [(NSString *)v26 isEqual:clientProcessBundleId2];

        if (!v28)
        {
          goto LABEL_72;
        }
      }

      container = self->_container;
      container = [(C2MetricOptions *)v5 container];
      v8 = container;
      if (container == container)
      {
      }

      else
      {
        v31 = self->_container;
        if (!v31)
        {
          goto LABEL_71;
        }

        container2 = [(C2MetricOptions *)v5 container];
        v33 = [(NSString *)v31 isEqual:container2];

        if (!v33)
        {
          goto LABEL_72;
        }
      }

      environment = self->_environment;
      environment = [(C2MetricOptions *)v5 environment];
      v8 = environment;
      if (environment == environment)
      {
      }

      else
      {
        v36 = self->_environment;
        if (!v36)
        {
          goto LABEL_71;
        }

        environment2 = [(C2MetricOptions *)v5 environment];
        v38 = [(NSString *)v36 isEqual:environment2];

        if (!v38)
        {
          goto LABEL_72;
        }
      }

      databaseScope = self->_databaseScope;
      databaseScope = [(C2MetricOptions *)v5 databaseScope];
      v8 = databaseScope;
      if (databaseScope == databaseScope)
      {
      }

      else
      {
        v41 = self->_databaseScope;
        if (!v41)
        {
          goto LABEL_71;
        }

        databaseScope2 = [(C2MetricOptions *)v5 databaseScope];
        v43 = [(NSString *)v41 isEqual:databaseScope2];

        if (!v43)
        {
          goto LABEL_72;
        }
      }

      anonymous = self->_anonymous;
      if (anonymous != [(C2MetricOptions *)v5 anonymous])
      {
        goto LABEL_72;
      }

      containerScopedUserIdentifier = self->_containerScopedUserIdentifier;
      containerScopedUserIdentifier = [(C2MetricOptions *)v5 containerScopedUserIdentifier];
      v8 = containerScopedUserIdentifier;
      if (containerScopedUserIdentifier == containerScopedUserIdentifier)
      {
      }

      else
      {
        v47 = self->_containerScopedUserIdentifier;
        if (!v47)
        {
          goto LABEL_71;
        }

        containerScopedUserIdentifier2 = [(C2MetricOptions *)v5 containerScopedUserIdentifier];
        v49 = [(NSString *)v47 isEqual:containerScopedUserIdentifier2];

        if (!v49)
        {
          goto LABEL_72;
        }
      }

      containerScopedDeviceIdentifier = self->_containerScopedDeviceIdentifier;
      containerScopedDeviceIdentifier = [(C2MetricOptions *)v5 containerScopedDeviceIdentifier];
      v8 = containerScopedDeviceIdentifier;
      if (containerScopedDeviceIdentifier == containerScopedDeviceIdentifier)
      {
      }

      else
      {
        v52 = self->_containerScopedDeviceIdentifier;
        if (!v52)
        {
          goto LABEL_71;
        }

        containerScopedDeviceIdentifier2 = [(C2MetricOptions *)v5 containerScopedDeviceIdentifier];
        v54 = [(NSString *)v52 isEqual:containerScopedDeviceIdentifier2];

        if (!v54)
        {
          goto LABEL_72;
        }
      }

      applicationBundleIdentifierOverrideForContainerAccess = self->_applicationBundleIdentifierOverrideForContainerAccess;
      applicationBundleIdentifierOverrideForContainerAccess = [(C2MetricOptions *)v5 applicationBundleIdentifierOverrideForContainerAccess];
      v8 = applicationBundleIdentifierOverrideForContainerAccess;
      if (applicationBundleIdentifierOverrideForContainerAccess == applicationBundleIdentifierOverrideForContainerAccess)
      {
      }

      else
      {
        v57 = self->_applicationBundleIdentifierOverrideForContainerAccess;
        if (!v57)
        {
          goto LABEL_71;
        }

        applicationBundleIdentifierOverrideForContainerAccess2 = [(C2MetricOptions *)v5 applicationBundleIdentifierOverrideForContainerAccess];
        v59 = [(NSString *)v57 isEqual:applicationBundleIdentifierOverrideForContainerAccess2];

        if (!v59)
        {
          goto LABEL_72;
        }
      }

      applicationBundleIdentifierOverrideForNetworkAttribution = self->_applicationBundleIdentifierOverrideForNetworkAttribution;
      applicationBundleIdentifierOverrideForNetworkAttribution = [(C2MetricOptions *)v5 applicationBundleIdentifierOverrideForNetworkAttribution];
      v8 = applicationBundleIdentifierOverrideForNetworkAttribution;
      if (applicationBundleIdentifierOverrideForNetworkAttribution == applicationBundleIdentifierOverrideForNetworkAttribution)
      {
      }

      else
      {
        v62 = self->_applicationBundleIdentifierOverrideForNetworkAttribution;
        if (!v62)
        {
          goto LABEL_71;
        }

        applicationBundleIdentifierOverrideForNetworkAttribution2 = [(C2MetricOptions *)v5 applicationBundleIdentifierOverrideForNetworkAttribution];
        v64 = [(NSString *)v62 isEqual:applicationBundleIdentifierOverrideForNetworkAttribution2];

        if (!v64)
        {
          goto LABEL_72;
        }
      }

      operationGroups = self->_operationGroups;
      operationGroups = [(C2MetricOptions *)v5 operationGroups];
      v8 = operationGroups;
      if (operationGroups == operationGroups)
      {
      }

      else
      {
        v67 = self->_operationGroups;
        if (!v67)
        {
          goto LABEL_71;
        }

        operationGroups2 = [(C2MetricOptions *)v5 operationGroups];
        v69 = [(NSArray *)v67 isEqual:operationGroups2];

        if (!v69)
        {
          goto LABEL_72;
        }
      }

      clientOperations = self->_clientOperations;
      clientOperations = [(C2MetricOptions *)v5 clientOperations];
      v8 = clientOperations;
      if (clientOperations == clientOperations)
      {

LABEL_76:
        pushTrigger = self->_pushTrigger;
        if (pushTrigger == [(C2MetricOptions *)v5 pushTrigger])
        {
          didCompleteWithError = self->_didCompleteWithError;
          didCompleteWithError = [(C2MetricOptions *)v5 didCompleteWithError];

          if (didCompleteWithError == didCompleteWithError)
          {
            testBehavior_reportMetric = self->_testBehavior_reportMetric;
            testBehavior_reportMetric = [(C2MetricOptions *)v5 testBehavior_reportMetric];

            if (testBehavior_reportMetric == testBehavior_reportMetric)
            {
              reportFrequencyRandomValue = self->_reportFrequencyRandomValue;
              v12 = reportFrequencyRandomValue == [(C2MetricOptions *)v5 reportFrequencyRandomValue];
              goto LABEL_73;
            }
          }
        }

LABEL_72:
        v12 = 0;
LABEL_73:

        goto LABEL_74;
      }

      v72 = self->_clientOperations;
      if (v72)
      {
        clientOperations2 = [(C2MetricOptions *)v5 clientOperations];
        v74 = [(NSArray *)v72 isEqual:clientOperations2];

        if (!v74)
        {
          goto LABEL_72;
        }

        goto LABEL_76;
      }

LABEL_71:

      goto LABEL_72;
    }

    v12 = 0;
  }

LABEL_74:

  return v12;
}

- (unint64_t)hash
{
  v22 = [(NSURL *)self->_c2MetricsEndpoint hash];
  v3 = *&self->_reportFrequency;
  v17 = v3;
  v18 = *&self->_reportClientOperationFrequency;
  reportOperationGroupFrequencyBase = self->_reportOperationGroupFrequencyBase;
  reportOperationGroupFrequency = self->_reportOperationGroupFrequency;
  v21 = [(NSString *)self->_clientProcessVersion hash];
  v16 = [(NSString *)self->_clientProcessBundleId hash];
  v4 = [(NSString *)self->_container hash];
  v5 = [(NSString *)self->_environment hash];
  v6 = [(NSString *)self->_databaseScope hash];
  anonymous = self->_anonymous;
  v8 = [(NSString *)self->_containerScopedUserIdentifier hash];
  v9 = [(NSString *)self->_containerScopedDeviceIdentifier hash];
  v10 = [(NSString *)self->_applicationBundleIdentifierOverrideForContainerAccess hash];
  v11 = [(NSString *)self->_applicationBundleIdentifierOverrideForNetworkAttribution hash];
  v12 = [(NSArray *)self->_operationGroups hash];
  v13 = [(NSArray *)self->_clientOperations hash];
  v14 = veorq_s8(v17, v18);
  return *&veor_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) ^ reportOperationGroupFrequency ^ reportOperationGroupFrequencyBase ^ anonymous ^ v13 ^ v12 ^ self->_reportFrequencyRandomValue ^ self->_pushTrigger ^ v11 ^ v10 ^ v9 ^ v8 ^ v6 ^ v5 ^ v4 ^ v16 ^ v21 ^ v22;
}

- (void)encodeWithCoder:(id)coder
{
  c2MetricsEndpoint = self->_c2MetricsEndpoint;
  coderCopy = coder;
  [coderCopy encodeObject:c2MetricsEndpoint forKey:@"c2MetricsEndpoint"];
  [coderCopy encodeInt64:self->_reportFrequency forKey:@"reportFrequency"];
  [coderCopy encodeInt64:self->_reportFrequencyBase forKey:@"reportFrequencyBase"];
  [coderCopy encodeInt64:self->_reportClientOperationFrequency forKey:@"reportClientOperationFrequency"];
  [coderCopy encodeInt64:self->_reportClientOperationFrequencyBase forKey:@"reportClientOperationFrequencyBase"];
  [coderCopy encodeInt64:self->_reportOperationGroupFrequency forKey:@"reportOperationGroupFrequency"];
  [coderCopy encodeInt64:self->_reportOperationGroupFrequencyBase forKey:@"reportOperationGroupFrequencyBase"];
  [coderCopy encodeObject:self->_clientProcessVersion forKey:@"clientProcessVersion"];
  [coderCopy encodeObject:self->_clientProcessBundleId forKey:@"clientProcessBundleId"];
  [coderCopy encodeObject:self->_container forKey:@"container"];
  [coderCopy encodeObject:self->_environment forKey:@"environment"];
  [coderCopy encodeObject:self->_databaseScope forKey:@"databaseScope"];
  [coderCopy encodeBool:self->_anonymous forKey:@"anonymous"];
  [coderCopy encodeObject:self->_containerScopedUserIdentifier forKey:@"containerScopedUserIdentifier"];
  [coderCopy encodeObject:self->_containerScopedDeviceIdentifier forKey:@"containerScopedDeviceIdentifier"];
  [coderCopy encodeObject:self->_applicationBundleIdentifierOverrideForContainerAccess forKey:@"applicationBundleIdentifierOverrideForContainerAccess"];
  [coderCopy encodeObject:self->_applicationBundleIdentifierOverrideForNetworkAttribution forKey:@"applicationBundleIdentifierOverrideForNetworkAttribution"];
  [coderCopy encodeObject:self->_operationGroups forKey:@"operationGroups"];
  [coderCopy encodeObject:self->_clientOperations forKey:@"clientOperations"];
  [coderCopy encodeBool:self->_pushTrigger forKey:@"pushTrigger"];
  [coderCopy encodeInt32:self->_reportFrequencyRandomValue forKey:@"reportFrequencyRandomValue"];
}

- (C2MetricOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = C2MetricOptions;
  v5 = [(C2MetricOptions *)&v39 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"c2MetricsEndpoint"];
    c2MetricsEndpoint = v5->_c2MetricsEndpoint;
    v5->_c2MetricsEndpoint = v6;

    v5->_reportFrequency = [coderCopy decodeInt64ForKey:@"reportFrequency"];
    v5->_reportFrequencyBase = [coderCopy decodeInt64ForKey:@"reportFrequencyBase"];
    v5->_reportClientOperationFrequency = [coderCopy decodeInt64ForKey:@"reportClientOperationFrequency"];
    v5->_reportClientOperationFrequencyBase = [coderCopy decodeInt64ForKey:@"reportClientOperationFrequencyBase"];
    v5->_reportOperationGroupFrequency = [coderCopy decodeInt64ForKey:@"reportOperationGroupFrequency"];
    v5->_reportOperationGroupFrequencyBase = [coderCopy decodeInt64ForKey:@"reportOperationGroupFrequencyBase"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientProcessVersion"];
    clientProcessVersion = v5->_clientProcessVersion;
    v5->_clientProcessVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientProcessBundleId"];
    clientProcessBundleId = v5->_clientProcessBundleId;
    v5->_clientProcessBundleId = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    container = v5->_container;
    v5->_container = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    environment = v5->_environment;
    v5->_environment = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"databaseScope"];
    databaseScope = v5->_databaseScope;
    v5->_databaseScope = v16;

    v5->_anonymous = [coderCopy decodeBoolForKey:@"anonymous"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerScopedUserIdentifier"];
    containerScopedUserIdentifier = v5->_containerScopedUserIdentifier;
    v5->_containerScopedUserIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerScopedDeviceIdentifier"];
    containerScopedDeviceIdentifier = v5->_containerScopedDeviceIdentifier;
    v5->_containerScopedDeviceIdentifier = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifierOverrideForContainerAccess"];
    applicationBundleIdentifierOverrideForContainerAccess = v5->_applicationBundleIdentifierOverrideForContainerAccess;
    v5->_applicationBundleIdentifierOverrideForContainerAccess = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifierOverrideForNetworkAttribution"];
    applicationBundleIdentifierOverrideForNetworkAttribution = v5->_applicationBundleIdentifierOverrideForNetworkAttribution;
    v5->_applicationBundleIdentifierOverrideForNetworkAttribution = v24;

    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"operationGroups"];
    operationGroups = v5->_operationGroups;
    v5->_operationGroups = v29;

    v31 = MEMORY[0x277CBEB98];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"clientOperations"];
    clientOperations = v5->_clientOperations;
    v5->_clientOperations = v34;

    v5->_pushTrigger = [coderCopy decodeBoolForKey:@"pushTrigger"];
    v5->_reportFrequencyRandomValue = [coderCopy decodeInt32ForKey:@"reportFrequencyRandomValue"];
    didCompleteWithError = v5->_didCompleteWithError;
    v5->_didCompleteWithError = 0;

    testBehavior_reportMetric = v5->_testBehavior_reportMetric;
    v5->_testBehavior_reportMetric = 0;
  }

  return v5;
}

@end