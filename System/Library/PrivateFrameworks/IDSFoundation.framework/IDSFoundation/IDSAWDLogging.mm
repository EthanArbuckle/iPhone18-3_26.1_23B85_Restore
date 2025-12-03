@interface IDSAWDLogging
+ (id)sharedInstance;
- (IDSAWDLogging)init;
- (id)_metricContainerForMetricType:(unsigned int)type;
- (void)IDSQuickRelayEventType:(id)type eventSubType:(id)subType duration:(id)duration resultCode:(id)code providerType:(id)providerType transportType:(id)transportType interfaceType:(id)interfaceType skeEnabled:(id)self0 isInitiator:(id)self1 protocolVersion:(id)self2 retryCount:(id)self3 serviceName:(id)self4 subServiceName:(id)self5 participantCount:(id)self6;
- (void)_submitAWDMetric:(id)metric withContainer:(id)container;
- (void)submitMetric:(id)metric withIdentifier:(unsigned int)identifier;
@end

@implementation IDSAWDLogging

+ (id)sharedInstance
{
  if (qword_1ED5DF6D0 != -1)
  {
    sub_1A7E1ACBC();
  }

  v3 = qword_1ED5DF720;

  return v3;
}

- (id)_metricContainerForMetricType:(unsigned int)type
{
  v3 = [self->_AWDServerConnection newMetricContainerWithIdentifier:*&type];

  return v3;
}

- (void)_submitAWDMetric:(id)metric withContainer:(id)container
{
  v17 = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  containerCopy = container;
  v8 = containerCopy;
  if (metricCopy && containerCopy)
  {
    [containerCopy setMetric:metricCopy];
    v9 = [self->_AWDServerConnection submitMetric:v8];
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      metricId = [v8 metricId];
      v12 = @"NO";
      if (v9)
      {
        v12 = @"YES";
      }

      *buf = 67109378;
      v14 = metricId;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEBUG, "Submitted metric: 0x%x succeeded? %@", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v8 metricId];
      _IDSLogV(1, @"IDSFoundation", @"IDSAWDLogging", @"Submitted metric: 0x%x succeeded? %@");
    }
  }
}

- (IDSAWDLogging)init
{
  v10.receiver = self;
  v10.super_class = IDSAWDLogging;
  v2 = [(IDSAWDLogging *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(CUTWeakLinkClass()) initWithComponentId:39 andBlockOnConfiguration:1];
    AWDServerConnection = v2->_AWDServerConnection;
    v2->_AWDServerConnection = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_get_global_queue(-32768, 0);
    v7 = dispatch_queue_create_with_target_V2("com.apple.IDS.AWDLogging", v5, v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (void)submitMetric:(id)metric withIdentifier:(unsigned int)identifier
{
  v4 = *&identifier;
  metricCopy = metric;
  v7 = [self->_AWDServerConnection newMetricContainerWithIdentifier:v4];
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A7BF4E70;
  v11[3] = &unk_1E77E0E18;
  v11[4] = self;
  v12 = metricCopy;
  v13 = v7;
  v9 = v7;
  v10 = metricCopy;
  IDSAWDSubmitBlockAsync(queue, v11);
}

- (void)IDSQuickRelayEventType:(id)type eventSubType:(id)subType duration:(id)duration resultCode:(id)code providerType:(id)providerType transportType:(id)transportType interfaceType:(id)interfaceType skeEnabled:(id)self0 isInitiator:(id)self1 protocolVersion:(id)self2 retryCount:(id)self3 serviceName:(id)self4 subServiceName:(id)self5 participantCount:(id)self6
{
  typeCopy = type;
  subTypeCopy = subType;
  durationCopy = duration;
  codeCopy = code;
  providerTypeCopy = providerType;
  transportTypeCopy = transportType;
  interfaceTypeCopy = interfaceType;
  enabledCopy = enabled;
  initiatorCopy = initiator;
  versionCopy = version;
  countCopy = count;
  nameCopy = name;
  serviceNameCopy = serviceName;
  participantCountCopy = participantCount;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!initiatorCopy || (isInternalInstall & 1) != 0 || IDSAWDLogShouldSubmitHotShipQuickRelayMetric([initiatorCopy BOOLValue]))
  {
    queue = self->_queue;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = sub_1A7C8D74C;
    v65[3] = &unk_1E77E27F8;
    v65[4] = self;
    v51 = typeCopy;
    v66 = v51;
    v50 = subTypeCopy;
    v67 = v50;
    v49 = durationCopy;
    v68 = v49;
    v79 = isInternalInstall;
    v48 = codeCopy;
    v69 = v48;
    v47 = providerTypeCopy;
    v70 = v47;
    v54 = codeCopy;
    v46 = transportTypeCopy;
    v71 = v46;
    v55 = durationCopy;
    v30 = interfaceTypeCopy;
    v72 = v30;
    v56 = subTypeCopy;
    v31 = enabledCopy;
    v73 = v31;
    v53 = initiatorCopy;
    v32 = initiatorCopy;
    v74 = v32;
    v33 = versionCopy;
    v75 = v33;
    v34 = enabledCopy;
    v35 = countCopy;
    v76 = v35;
    v36 = interfaceTypeCopy;
    v37 = nameCopy;
    v77 = v37;
    v38 = versionCopy;
    v39 = serviceNameCopy;
    v78 = v39;
    IDSAWDSubmitBlockAsync(queue, v65);
    v45 = v39;
    versionCopy = v38;
    v43 = v35;
    v44 = v37;
    interfaceTypeCopy = v36;
    enabledCopy = v34;
    v42 = v32;
    initiatorCopy = v53;
    codeCopy = v54;
    v40 = v30;
    v41 = v31;
    durationCopy = v55;
    subTypeCopy = v56;
    [(IDSAWDLogging *)self IDSCoreAnalyticsQuickRelayEventType:v51 eventSubType:v50 duration:v49 resultCode:v48 providerType:v47 transportType:v46 interfaceType:v40 skeEnabled:v41 isInitiator:v42 protocolVersion:v33 retryCount:v43 serviceName:v44 subServiceName:v45 participantCount:participantCountCopy];
  }
}

@end