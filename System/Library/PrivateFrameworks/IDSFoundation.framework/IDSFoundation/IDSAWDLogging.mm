@interface IDSAWDLogging
+ (id)sharedInstance;
- (IDSAWDLogging)init;
- (id)_metricContainerForMetricType:(unsigned int)a3;
- (void)IDSQuickRelayEventType:(id)a3 eventSubType:(id)a4 duration:(id)a5 resultCode:(id)a6 providerType:(id)a7 transportType:(id)a8 interfaceType:(id)a9 skeEnabled:(id)a10 isInitiator:(id)a11 protocolVersion:(id)a12 retryCount:(id)a13 serviceName:(id)a14 subServiceName:(id)a15 participantCount:(id)a16;
- (void)_submitAWDMetric:(id)a3 withContainer:(id)a4;
- (void)submitMetric:(id)a3 withIdentifier:(unsigned int)a4;
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

- (id)_metricContainerForMetricType:(unsigned int)a3
{
  v3 = [self->_AWDServerConnection newMetricContainerWithIdentifier:*&a3];

  return v3;
}

- (void)_submitAWDMetric:(id)a3 withContainer:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    [v7 setMetric:v6];
    v9 = [self->_AWDServerConnection submitMetric:v8];
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v8 metricId];
      v12 = @"NO";
      if (v9)
      {
        v12 = @"YES";
      }

      *buf = 67109378;
      v14 = v11;
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

- (void)submitMetric:(id)a3 withIdentifier:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [self->_AWDServerConnection newMetricContainerWithIdentifier:v4];
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A7BF4E70;
  v11[3] = &unk_1E77E0E18;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  IDSAWDSubmitBlockAsync(queue, v11);
}

- (void)IDSQuickRelayEventType:(id)a3 eventSubType:(id)a4 duration:(id)a5 resultCode:(id)a6 providerType:(id)a7 transportType:(id)a8 interfaceType:(id)a9 skeEnabled:(id)a10 isInitiator:(id)a11 protocolVersion:(id)a12 retryCount:(id)a13 serviceName:(id)a14 subServiceName:(id)a15 participantCount:(id)a16
{
  v64 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v63 = a7;
  v62 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v61 = a13;
  v60 = a14;
  v59 = a15;
  v58 = a16;
  v28 = [MEMORY[0x1E69A60F0] sharedInstance];
  v29 = [v28 isInternalInstall];

  if (!v26 || (v29 & 1) != 0 || IDSAWDLogShouldSubmitHotShipQuickRelayMetric([v26 BOOLValue]))
  {
    queue = self->_queue;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = sub_1A7C8D74C;
    v65[3] = &unk_1E77E27F8;
    v65[4] = self;
    v51 = v64;
    v66 = v51;
    v50 = v21;
    v67 = v50;
    v49 = v22;
    v68 = v49;
    v79 = v29;
    v48 = v23;
    v69 = v48;
    v47 = v63;
    v70 = v47;
    v54 = v23;
    v46 = v62;
    v71 = v46;
    v55 = v22;
    v30 = v24;
    v72 = v30;
    v56 = v21;
    v31 = v25;
    v73 = v31;
    v53 = v26;
    v32 = v26;
    v74 = v32;
    v33 = v27;
    v75 = v33;
    v34 = v25;
    v35 = v61;
    v76 = v35;
    v36 = v24;
    v37 = v60;
    v77 = v37;
    v38 = v27;
    v39 = v59;
    v78 = v39;
    IDSAWDSubmitBlockAsync(queue, v65);
    v45 = v39;
    v27 = v38;
    v43 = v35;
    v44 = v37;
    v24 = v36;
    v25 = v34;
    v42 = v32;
    v26 = v53;
    v23 = v54;
    v40 = v30;
    v41 = v31;
    v22 = v55;
    v21 = v56;
    [(IDSAWDLogging *)self IDSCoreAnalyticsQuickRelayEventType:v51 eventSubType:v50 duration:v49 resultCode:v48 providerType:v47 transportType:v46 interfaceType:v40 skeEnabled:v41 isInitiator:v42 protocolVersion:v33 retryCount:v43 serviceName:v44 subServiceName:v45 participantCount:v58];
  }
}

@end