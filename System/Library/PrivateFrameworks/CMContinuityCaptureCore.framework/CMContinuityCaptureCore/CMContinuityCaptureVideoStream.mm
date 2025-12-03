@interface CMContinuityCaptureVideoStream
- (BOOL)_setStreamProperties:(id)properties error:(id *)error;
- (BOOL)_startStreamAndReturnError:(id *)error;
- (BOOL)_stopStreamAndReturnError:(id *)error;
- (BOOL)setStreamProperties:(id)properties error:(id *)error;
- (BOOL)setupStreams:(id)streams;
- (BOOL)startStreamAndReturnError:(id *)error;
- (BOOL)stopStreamAndReturnError:(id *)error;
- (CMContinuityCaptureVideoDevice)device;
- (CMContinuityCaptureVideoStream)initWithDevice:(id)device streamFormats:(id)formats deviceID:(id)d queue:(id)queue;
- (NSSet)availableProperties;
- (NSString)description;
- (id)_availableProperties;
- (id)_getResolvedStillCaptureConfigs:(id)configs;
- (id)_streamPropertiesForProperties:(id)properties error:(id *)error;
- (id)createFormatToPublish:(id)publish;
- (id)streamPropertiesForProperties:(id)properties error:(id *)error;
- (void)_availableProperties;
- (void)_disconnectClient:(id)client;
- (void)_setValueForControl:(id)control completion:(id)completion;
- (void)captureAsyncStillImage:(int64_t)image options:(id)options completionHandler:(id)handler;
- (void)disconnectClient:(id)client;
- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion;
- (void)enqueueReactionEffect:(id)effect completionHandler:(id)handler;
- (void)setValueForControl:(id)control completion:(id)completion;
- (void)setupControls;
- (void)terminateComplete:(id)complete;
@end

@implementation CMContinuityCaptureVideoStream

- (void)terminateComplete:(id)complete
{
  completeCopy = complete;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2080;
    v9 = "[CMContinuityCaptureVideoStream terminateComplete:]";
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_INFO, "%{public}@ %s", &v6, 0x16u);
  }

  completeCopy[2](completeCopy);
}

- (CMContinuityCaptureVideoDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (void)disconnectClient:(id)client
{
  clientCopy = client;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureVideoStream *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CMContinuityCaptureVideoStream_disconnectClient___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__CMContinuityCaptureVideoStream_disconnectClient___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _disconnectClient:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)setupControls
{
  device = [(CMContinuityCaptureVideoStream *)self device];
  capabilities = [device capabilities];
  obja = [capabilities controls];

  self->_activeFormatIndex = 0;
  v5 = [CMContinuityCaptureControl alloc];
  device2 = [(CMContinuityCaptureVideoStream *)self device];
  entity = [device2 entity];
  firstObject = [(NSArray *)self->_continuityStreamFormats firstObject];
  v71 = 0;
  v72 = 0;
  v70 = 1;
  v9 = [(CMContinuityCaptureControl *)v5 initWithName:@"ActiveFormat" attributes:0 entity:entity minimumSupportedVersion:&v70 value:firstObject];

  v61 = v9;
  [(NSMutableDictionary *)self->_cmControlByName setObject:v9 forKeyedSubscript:@"ActiveFormat"];
  v10 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"ActiveFormat"];
  [device setValueForControl:v10 completion:0];

  v11 = [CMContinuityCaptureControl alloc];
  device3 = [(CMContinuityCaptureVideoStream *)self device];
  entity2 = [device3 entity];
  v14 = MEMORY[0x277CCABB0];
  v15 = [(NSArray *)self->_continuityStreamFormats objectAtIndexedSubscript:self->_activeFormatIndex];
  v16 = [v14 numberWithUnsignedInt:{objc_msgSend(v15, "maxFrameRate")}];
  v71 = 0;
  v72 = 0;
  v70 = 1;
  v17 = [(CMContinuityCaptureControl *)v11 initWithName:@"CMIOExtensionPropertyStreamFrameDuration" attributes:0 entity:entity2 minimumSupportedVersion:&v70 value:v16];

  v60 = v17;
  [(NSMutableDictionary *)self->_cmControlByName setObject:v17 forKeyedSubscript:@"CMIOExtensionPropertyStreamFrameDuration"];
  v18 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"CMIOExtensionPropertyStreamFrameDuration"];
  [device setValueForControl:v18 completion:0];

  v19 = [CMContinuityCaptureControl alloc];
  device4 = [(CMContinuityCaptureVideoStream *)self device];
  entity3 = [device4 entity];
  v22 = MEMORY[0x277CCABB0];
  v23 = [(NSArray *)self->_continuityStreamFormats objectAtIndexedSubscript:self->_activeFormatIndex];
  v24 = [v22 numberWithUnsignedInt:{objc_msgSend(v23, "minFrameRate")}];
  v71 = 0;
  v72 = 0;
  v70 = 1;
  v25 = [(CMContinuityCaptureControl *)v19 initWithName:@"CMIOExtensionPropertyStreamMaxFrameDuration" attributes:0 entity:entity3 minimumSupportedVersion:&v70 value:v24];

  v59 = v25;
  [(NSMutableDictionary *)self->_cmControlByName setObject:v25 forKeyedSubscript:@"CMIOExtensionPropertyStreamMaxFrameDuration"];
  v26 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"CMIOExtensionPropertyStreamMaxFrameDuration"];
  v64 = device;
  [device setValueForControl:v26 completion:0];

  v27 = [CMContinuityCaptureControl alloc];
  device5 = [(CMContinuityCaptureVideoStream *)self device];
  entity4 = [device5 entity];
  v71 = 0;
  v72 = 0;
  v70 = 1;
  v30 = [(CMContinuityCaptureControl *)v27 initWithName:@"ReactionsInProgress" attributes:0 entity:entity4 minimumSupportedVersion:&v70 value:MEMORY[0x277CBEBF8]];

  v58 = v30;
  [(NSMutableDictionary *)self->_cmControlByName setObject:v30 forKeyedSubscript:@"ReactionsInProgress"];
  v31 = [CMContinuityCaptureControl alloc];
  device6 = [(CMContinuityCaptureVideoStream *)self device];
  entity5 = [device6 entity];
  v71 = 0;
  v72 = 0;
  v70 = 1;
  v34 = [(CMContinuityCaptureControl *)v31 initWithName:@"SuppressedGesture" attributes:0 entity:entity5 minimumSupportedVersion:&v70 value:MEMORY[0x277CBEC28]];

  v57 = v34;
  [(NSMutableDictionary *)self->_cmControlByName setObject:v34 forKeyedSubscript:@"SuppressedGesture"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  clientsRequestingBooleanControlOnByControlName = self->_clientsRequestingBooleanControlOnByControlName;
  self->_clientsRequestingBooleanControlOnByControlName = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  maxPhotoQualityPrioritizationByClients = self->_maxPhotoQualityPrioritizationByClients;
  selfCopy = self;
  self->_maxPhotoQualityPrioritizationByClients = dictionary2;

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = obja;
  v40 = [obj countByEnumeratingWithState:&v66 objects:v65 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v67;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v67 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v66 + 1) + 8 * i);
        cmControlByName = selfCopy->_cmControlByName;
        name = [v44 name];
        [(NSMutableDictionary *)cmControlByName setObject:v44 forKeyedSubscript:name];

        name2 = [v44 name];
        v48 = [name2 isEqualToString:@"FaceDetectionEnabled"];

        v49 = @"FaceDetectionEnabled";
        if (v48)
        {
          goto LABEL_10;
        }

        name3 = [v44 name];
        v51 = [name3 isEqualToString:@"AsyncStillCaptureEnabled"];

        v49 = @"AsyncStillCaptureEnabled";
        if (v51)
        {
          goto LABEL_10;
        }

        name4 = [v44 name];
        v49 = @"HumanBodyDetectionEnabled";
        v53 = [name4 isEqualToString:@"HumanBodyDetectionEnabled"];

        if ((v53 & 1) != 0 || ([v44 name], v54 = objc_claimAutoreleasedReturnValue(), v49 = @"HumanFullBodyDetectionEnabled", v55 = objc_msgSend(v54, "isEqualToString:", @"HumanFullBodyDetectionEnabled"), v54, v55))
        {
LABEL_10:
          v56 = [MEMORY[0x277CBEB58] set];
          [(NSMutableDictionary *)selfCopy->_clientsRequestingBooleanControlOnByControlName setObject:v56 forKeyedSubscript:v49];
        }

        [v64 setValueForControl:v44 completion:0];
      }

      v41 = [obj countByEnumeratingWithState:&v66 objects:v65 count:16];
    }

    while (v41);
  }
}

- (BOOL)setupStreams:(id)streams
{
  v4 = MEMORY[0x277CBEB18];
  streamsCopy = streams;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__CMContinuityCaptureVideoStream_setupStreams___block_invoke;
  v13[3] = &unk_278D5C610;
  v13[4] = self;
  v8 = v6;
  v14 = v8;
  v9 = v7;
  v15 = v9;
  [streamsCopy enumerateObjectsUsingBlock:v13];

  objc_storeStrong(&self->_extensionStreamFormats, v6);
  objc_storeStrong(&self->_continuityStreamFormats, v7);
  self->_activeFormatIndex = 0;
  extensionStreamFormats = self->_extensionStreamFormats;
  if (extensionStreamFormats && [(NSArray *)extensionStreamFormats count])
  {
    v11 = 1;
  }

  else
  {
    [CMContinuityCaptureVideoStream setupStreams:];
    v11 = 0;
  }

  return v11;
}

void __47__CMContinuityCaptureVideoStream_setupStreams___block_invoke(id *a1, void *a2)
{
  v4 = a2;
  v3 = [a1[4] createFormatToPublish:?];
  if (v3)
  {
    [a1[5] addObject:v3];
    [a1[6] addObject:v4];
  }
}

- (id)createFormatToPublish:(id)publish
{
  publishCopy = publish;
  CMTimeMake(&v15, 1, [publishCopy maxFrameRate]);
  value = v15.value;
  epoch = v15.epoch;
  v6 = *&v15.timescale;
  CMTimeMake(&v15, 1, [publishCopy minFrameRate]);
  v7 = v15.value;
  v8 = v15.epoch;
  v9 = *&v15.timescale;
  v10 = objc_alloc(MEMORY[0x277CC1BA8]);
  formatDescription = [publishCopy formatDescription];

  v14[2] = epoch;
  v15.value = v7;
  *&v15.timescale = v9;
  v15.epoch = v8;
  v14[0] = value;
  v14[1] = v6;
  v12 = [v10 initWithFormatDescription:formatDescription maxFrameDuration:&v15 minFrameDuration:v14 validFrameDurations:0];

  return v12;
}

- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion
{
  entityCopy = entity;
  if (CMContinityCaptureDebugLogEnabled())
  {
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v17.value) = 138412802;
      *(&v17.value + 4) = self;
      LOWORD(v17.flags) = 2112;
      *(&v17.flags + 2) = frame;
      HIWORD(v17.epoch) = 1024;
      v18 = entityCopy;
      _os_log_debug_impl(&dword_242545000, v8, OS_LOG_TYPE_DEBUG, "%@ dispatchFrame %@ entity %u", &v17, 0x1Cu);
    }
  }

  memset(&v17, 170, sizeof(v17));
  CMSampleBufferGetPresentationTimeStamp(&v17, frame);
  v9 = CMGetAttachment(frame, @"ContinuityCaptureTimeDiscontinuity", 0);
  bOOLValue = [v9 BOOLValue];
  CMRemoveAttachment(frame, @"ContinuityCaptureTimeDiscontinuity");
  v11 = *MEMORY[0x277CF3FC8];
  v12 = CMGetAttachment(frame, *MEMORY[0x277CF3FC8], 0);
  if (v12)
  {
    v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v12];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v13];
    CMSetAttachment(frame, v11, v14, 1u);
  }

  if (bOOLValue)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  v16 = v17;
  [(CMIOExtensionStream *)self sendSampleBuffer:frame discontinuity:v15 hostTimeInNanoseconds:(CMTimeGetSeconds(&v16) * 1000000000.0)];
}

- (NSSet)availableProperties
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__CMContinuityCaptureVideoStream_availableProperties__block_invoke;
  v6[3] = &unk_278D5C438;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __53__CMContinuityCaptureVideoStream_availableProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _availableProperties];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_availableProperties
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v3 addObject:*MEMORY[0x277CC1B68]];
  allKeys = [(NSMutableDictionary *)self->_cmControlByName allKeys];
  [v3 addObjectsFromArray:allKeys];

  if ([v3 containsObject:@"ActiveFormat"])
  {
    [v3 removeObject:@"ActiveFormat"];
  }

  if (CMContinityCaptureDebugLogEnabled())
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(CMContinuityCaptureVideoStream *)self _availableProperties];
    }
  }

  return v3;
}

- (id)streamPropertiesForProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__CMContinuityCaptureVideoStream_streamPropertiesForProperties_error___block_invoke;
  v11[3] = &unk_278D5C638;
  v13 = &v21;
  v11[4] = self;
  v8 = propertiesCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_async_and_wait(queue, v11);

  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v9;
}

void __70__CMContinuityCaptureVideoStream_streamPropertiesForProperties_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _streamPropertiesForProperties:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)setStreamProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = [(CMContinuityCaptureVideoStream *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(CMContinuityCaptureVideoStream *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__CMContinuityCaptureVideoStream_setStreamProperties_error___block_invoke;
  v12[3] = &unk_278D5C638;
  v14 = &v16;
  v12[4] = self;
  v9 = propertiesCopy;
  v13 = v9;
  v15 = &v20;
  dispatch_async_and_wait(queue2, v12);

  if (error)
  {
    *error = v21[5];
  }

  v10 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __60__CMContinuityCaptureVideoStream_setStreamProperties_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _setStreamProperties:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (BOOL)_setStreamProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  device = [(CMContinuityCaptureVideoStream *)self device];
  if (!device)
  {
    v17 = 0;
    v52 = 0;
    v8 = 0;
    goto LABEL_101;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  dispatch_assert_queue_V2(self->_queue);
  v8 = propertiesCopy != 0;
  if (!propertiesCopy)
  {
    v53 = 0;
    v17 = 0;
    v52 = 0;
    goto LABEL_100;
  }

  v122 = device;
  propertiesDictionary = [propertiesCopy propertiesDictionary];
  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    propertiesDictionary2 = [propertiesCopy propertiesDictionary];
    *buf = 138412802;
    *&buf[4] = self;
    v130 = 2112;
    *v131 = propertiesDictionary2;
    *&v131[8] = 2112;
    *&v131[10] = propertiesCopy;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ SetProperties %@ %@", buf, 0x20u);
  }

  v124 = propertiesDictionary;
  v120 = propertiesCopy;
  v121 = v7;

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  selfCopy = self;
  allKeys = [(NSMutableDictionary *)self->_cmControlByName allKeys];
  v13 = [allKeys countByEnumeratingWithState:&v135 objects:v134 count:16];
  v15 = 0x277CCA000uLL;
  if (!v13)
  {
    v17 = 0;
    v126 = 0;
    goto LABEL_58;
  }

  v16 = v13;
  v17 = 0;
  v126 = 0;
  v18 = *v136;
  v19 = *MEMORY[0x277CC1B70];
  v20 = *MEMORY[0x277CC1B78];
  *&v14 = 138413058;
  v114 = v14;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v136 != v18)
      {
        objc_enumerationMutation(allKeys);
      }

      v22 = *(*(&v135 + 1) + 8 * i);
      if ([v22 isEqualToString:{v19, v114}] & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", v20) & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"PortraitEffectAperture") & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"StudioLightingIntensity") & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"GesturesEnabled") & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"SuppressedGesturesEnabled") & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"BackgroundReplacementPixelBuffer"))
      {
        continue;
      }

      v23 = [v124 objectForKey:v22];

      if (!v23)
      {
        v15 = 0x277CCA000;
        continue;
      }

      v24 = [(NSMutableDictionary *)selfCopy->_cmControlByName objectForKeyedSubscript:v22];

      v127 = [v124 objectForKeyedSubscript:v22];

      v123 = v24;
      value = [v24 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        value2 = [v127 value];
        log = [value2 BOOLValue];

        client = [v120 client];
        v29 = [(NSMutableDictionary *)selfCopy->_clientsRequestingBooleanControlOnByControlName objectForKeyedSubscript:v22];

        if (!v29 || !client)
        {
          goto LABEL_41;
        }

        v30 = [(NSMutableDictionary *)selfCopy->_clientsRequestingBooleanControlOnByControlName objectForKeyedSubscript:v22];
        v31 = [v30 containsObject:client];
        if (log)
        {
          if (v31)
          {
            v32 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = [v30 count];
              *buf = v114;
              *&buf[4] = selfCopy;
              v130 = 2112;
              *v131 = client;
              *&v131[8] = 2112;
              *&v131[10] = v22;
              v132 = 1024;
              v133 = v33;
              v34 = v32;
              v35 = "%@ Client %@ already wants %@ on. %d total clients.";
              goto LABEL_31;
            }
          }

          else
          {
            [v30 addObject:client];
            v32 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v39 = [v30 count];
              *buf = v114;
              *&buf[4] = selfCopy;
              v130 = 2112;
              *v131 = client;
              *&v131[8] = 2112;
              *&v131[10] = v22;
              v132 = 1024;
              v133 = v39;
              v34 = v32;
              v35 = "%@ Client %@ wants %@ on. %d total clients.";
LABEL_31:
              _os_log_impl(&dword_242545000, v34, OS_LOG_TYPE_INFO, v35, buf, 0x26u);
            }
          }

LABEL_40:
LABEL_41:

          goto LABEL_42;
        }

        if (v31)
        {
          [v30 removeObject:client];
          loga = CMContinuityCaptureLog(2);
          v15 = 0x277CCA000;
          if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
          {
            v36 = [v30 count];
            *buf = v114;
            *&buf[4] = selfCopy;
            v130 = 2112;
            *v131 = client;
            *&v131[8] = 2112;
            *&v131[10] = v22;
            v132 = 1024;
            v133 = v36;
            v37 = loga;
            v38 = "%@ Client %@ no longer wants %@ on. %d total clients.";
            goto LABEL_35;
          }
        }

        else
        {
          loga = CMContinuityCaptureLog(2);
          v15 = 0x277CCA000;
          if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
          {
            v40 = [v30 count];
            *buf = v114;
            *&buf[4] = selfCopy;
            v130 = 2112;
            *v131 = client;
            *&v131[8] = 2112;
            *&v131[10] = v22;
            v132 = 1024;
            v133 = v40;
            v37 = loga;
            v38 = "%@ Client %@ doesn't want %@ on. %d total clients.";
LABEL_35:
            _os_log_impl(&dword_242545000, v37, OS_LOG_TYPE_INFO, v38, buf, 0x26u);
          }
        }

        if ([v30 count])
        {
          logb = v30;
          v41 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = [logb count];
            *buf = 138412802;
            *&buf[4] = selfCopy;
            v130 = 1024;
            *v131 = v42;
            *&v131[4] = 2112;
            *&v131[6] = v22;
            _os_log_impl(&dword_242545000, v41, OS_LOG_TYPE_INFO, "%@ There are still %d clients that want %@ on. Ignoring call to turn off.", buf, 0x1Cu);
          }

          v17 = v127;
          v43 = v123;
          goto LABEL_47;
        }

        goto LABEL_40;
      }

LABEL_42:
      [v22 isEqualToString:@"AsyncStillCaptureConfigurations"];
      value3 = [v123 value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v123 value];
        v45 = logc = value3;
        [v127 value];
        v47 = v46 = v123;
        v115 = [v45 isEqualToNumber:v47];

        v15 = 0x277CCA000;
        if (v115)
        {
          v48 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            *&buf[4] = selfCopy;
            v130 = 2080;
            *v131 = "[CMContinuityCaptureVideoStream _setStreamProperties:error:]";
            *&v131[8] = 2112;
            *&v131[10] = v123;
            _os_log_impl(&dword_242545000, v48, OS_LOG_TYPE_INFO, "%@ %s Skip setting value for %@ as it's not updated", buf, 0x20u);
          }

          v43 = v123;
          v17 = v127;
LABEL_47:
          v126 = v43;
          continue;
        }
      }

      else
      {

        v46 = v123;
      }

      value4 = [v127 value];
      [v46 setValue:value4];

      [v121 setObject:v127 forKeyedSubscript:v22];
      v50 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = selfCopy;
        v130 = 2112;
        *v131 = v46;
        _os_log_impl(&dword_242545000, v50, OS_LOG_TYPE_DEFAULT, "%@ Set Control %@", buf, 0x16u);
      }

      [v122 setValueForControl:v46 completion:0];
      v51 = v46;
      v17 = v127;
      v126 = v51;
      v15 = 0x277CCA000;
    }

    v16 = [allKeys countByEnumeratingWithState:&v135 objects:v134 count:16];
  }

  while (v16);
LABEL_58:

  propertiesCopy = v120;
  activeFormatIndex = [v120 activeFormatIndex];
  if (activeFormatIndex)
  {
    v55 = activeFormatIndex;
    v128 = v17;
    activeFormatIndex2 = [v120 activeFormatIndex];
    unsignedIntegerValue = [activeFormatIndex2 unsignedIntegerValue];
    p_isa = &selfCopy->super.super.isa;
    v59 = [(NSArray *)selfCopy->_continuityStreamFormats count];

    v7 = v121;
    device = v122;
    if (unsignedIntegerValue >= v59)
    {
      v17 = v128;
    }

    else
    {
      v60 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        activeFormatIndex3 = [v120 activeFormatIndex];
        unsignedIntegerValue2 = [activeFormatIndex3 unsignedIntegerValue];
        activeFormatIndex = selfCopy->_activeFormatIndex;
        *buf = 138412802;
        *&buf[4] = selfCopy;
        v130 = 1024;
        *v131 = unsignedIntegerValue2;
        *&v131[4] = 1024;
        *&v131[6] = activeFormatIndex;
        _os_log_impl(&dword_242545000, v60, OS_LOG_TYPE_DEFAULT, " %@ set active format to %d from %d ", buf, 0x18u);
      }

      activeFormatIndex4 = [v120 activeFormatIndex];
      selfCopy->_activeFormatIndex = [activeFormatIndex4 unsignedIntegerValue];

      v65 = MEMORY[0x277CC1B90];
      v66 = [*(v15 + 2992) numberWithUnsignedInteger:selfCopy->_activeFormatIndex];
      v67 = [v65 propertyStateWithValue:v66];

      [v121 setObject:v67 forKeyedSubscript:*MEMORY[0x277CC1B68]];
      v68 = [(NSArray *)selfCopy->_continuityStreamFormats objectAtIndexedSubscript:selfCopy->_activeFormatIndex];
      v69 = [(NSMutableDictionary *)selfCopy->_cmControlByName objectForKeyedSubscript:@"ActiveFormat"];
      [v69 setValue:v68];

      v15 = 0x277CCA000;
      v70 = [(NSMutableDictionary *)selfCopy->_cmControlByName objectForKeyedSubscript:@"ActiveFormat"];
      [v122 setValueForControl:v70 completion:0];

      v17 = v67;
    }
  }

  else
  {
    v7 = v121;
    device = v122;
    p_isa = &selfCopy->super.super.isa;
  }

  frameDuration = [v120 frameDuration];

  v53 = v124;
  if (frameDuration)
  {
    v72 = v17;
    frameDuration2 = [v120 frameDuration];
    CMTimeMakeFromDictionary(buf, frameDuration2);
    v74 = *buf;
    v75 = *&buf[8];

    if (v74 >= 1)
    {
      v76 = [p_isa[29] objectForKeyedSubscript:@"CMIOExtensionPropertyStreamFrameDuration"];

      if (v76)
      {
        *&v77 = v75 / v74;
        v78 = [*(v15 + 2992) numberWithFloat:v77];
        [v76 setValue:v78];

        [device setValueForControl:v76 completion:0];
        v126 = v76;
      }

      else
      {
        v126 = 0;
      }
    }

    v17 = v72;
  }

  maxFrameDuration = [v120 maxFrameDuration];

  if (maxFrameDuration)
  {
    v80 = v17;
    maxFrameDuration2 = [v120 maxFrameDuration];
    CMTimeMakeFromDictionary(buf, maxFrameDuration2);
    v82 = *buf;
    v83 = *&buf[8];

    if (v82 >= 1)
    {
      v84 = [p_isa[29] objectForKeyedSubscript:@"CMIOExtensionPropertyStreamMaxFrameDuration"];

      if (v84)
      {
        *&v85 = v83 / v82;
        v86 = [*(v15 + 2992) numberWithFloat:v85];
        [v84 setValue:v86];

        [device setValueForControl:v84 completion:0];
        v126 = v84;
      }

      else
      {
        v126 = 0;
      }
    }

    v17 = v80;
  }

  v87 = [v124 objectForKeyedSubscript:@"PortraitEffectAperture"];

  if (v87)
  {
    v88 = [p_isa[29] objectForKeyedSubscript:@"PortraitEffectAperture"];

    if (v88)
    {
      v89 = [v124 objectForKeyedSubscript:@"PortraitEffectAperture"];

      value5 = [v89 value];
      v91 = *(v15 + 2992);
      [value5 floatValue];
      v92 = [v91 numberWithFloat:?];
      [v88 setValue:v92];

      v53 = v124;
      [device setValueForControl:v88 completion:0];

      v17 = v89;
      v126 = v88;
    }

    else
    {
      v126 = 0;
    }
  }

  v93 = [v53 objectForKeyedSubscript:@"StudioLightingIntensity"];

  if (v93)
  {
    v94 = [p_isa[29] objectForKeyedSubscript:@"StudioLightingIntensity"];

    if (v94)
    {
      v95 = [v53 objectForKeyedSubscript:@"StudioLightingIntensity"];

      value6 = [v95 value];
      v97 = *(v15 + 2992);
      [value6 floatValue];
      v98 = [v97 numberWithFloat:?];
      [v94 setValue:v98];

      v53 = v124;
      [device setValueForControl:v94 completion:0];

      v17 = v95;
      v126 = v94;
    }

    else
    {
      v126 = 0;
    }
  }

  v99 = [v53 objectForKeyedSubscript:@"GesturesEnabled"];

  if (v99)
  {
    v100 = [p_isa[29] objectForKeyedSubscript:@"GesturesEnabled"];

    if (v100)
    {
      v101 = [v53 objectForKeyedSubscript:@"GesturesEnabled"];

      value7 = [v101 value];
      v103 = [*(v15 + 2992) numberWithBool:{objc_msgSend(value7, "BOOLValue")}];
      [v100 setValue:v103];

      v53 = v124;
      [device setValueForControl:v100 completion:0];

      v17 = v101;
      v126 = v100;
    }

    else
    {
      v126 = 0;
    }
  }

  v104 = [v53 objectForKeyedSubscript:@"SuppressedGesturesEnabled"];

  if (v104)
  {
    v105 = [p_isa[29] objectForKeyedSubscript:@"SuppressedGesturesEnabled"];

    if (v105)
    {
      v106 = [v53 objectForKeyedSubscript:@"SuppressedGesturesEnabled"];

      value8 = [v106 value];
      v108 = [*(v15 + 2992) numberWithBool:{objc_msgSend(value8, "BOOLValue")}];
      [v105 setValue:v108];

      v53 = v124;
      [device setValueForControl:v105 completion:0];

      v17 = v106;
      v52 = v105;
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = v126;
  }

  v109 = [v53 objectForKeyedSubscript:@"BackgroundReplacementPixelBuffer"];

  if (v109)
  {
    v110 = [p_isa[29] objectForKeyedSubscript:@"BackgroundReplacementPixelBuffer"];

    if (v110)
    {
      v111 = [v53 objectForKeyedSubscript:@"BackgroundReplacementPixelBuffer"];

      value9 = [v111 value];
      [v110 setValue:value9];

      [device setValueForControl:v110 completion:0];
      v17 = v111;
      v52 = v110;
    }

    else
    {
      v52 = 0;
    }
  }

  v8 = 1;
  if ([v7 count])
  {
    [p_isa notifyPropertiesChanged:v7];
  }

LABEL_100:

LABEL_101:
  return v8;
}

- (void)setValueForControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__CMContinuityCaptureVideoStream_setValueForControl_completion___block_invoke;
  v11[3] = &unk_278D5C490;
  objc_copyWeak(&v14, &location);
  v12 = controlCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = controlCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __64__CMContinuityCaptureVideoStream_setValueForControl_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setValueForControl:*(a1 + 32) completion:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (id)_getResolvedStillCaptureConfigs:(id)configs
{
  queue = self->_queue;
  configsCopy = configs;
  dispatch_assert_queue_V2(queue);
  v5 = [configsCopy mutableCopy];

  return v5;
}

- (BOOL)startStreamAndReturnError:(id *)error
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2080;
    v13 = "[CMContinuityCaptureVideoStream startStreamAndReturnError:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  device = [(CMContinuityCaptureVideoStream *)self device];
  if (device)
  {
    v6 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__CMContinuityCaptureVideoStream_startStreamAndReturnError___block_invoke;
    v8[3] = &unk_278D5C080;
    objc_copyWeak(&v9, buf);
    [v6 startStreamForDevice:device startCompletion:v8 startSkippedCompletion:0];

    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(buf);
  return 1;
}

void __60__CMContinuityCaptureVideoStream_startStreamAndReturnError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _startStreamAndReturnError:0];
    WeakRetained = v2;
  }
}

- (BOOL)_startStreamAndReturnError:(id *)error
{
  objc_initWeak(&location, self);
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureVideoStream _startStreamAndReturnError:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CMContinuityCaptureVideoStream__startStreamAndReturnError___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v8, &location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  return 1;
}

void __61__CMContinuityCaptureVideoStream__startStreamAndReturnError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained device];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 compositeDelegate];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __61__CMContinuityCaptureVideoStream__startStreamAndReturnError___block_invoke_2;
      v7[3] = &unk_278D5C660;
      objc_copyWeak(&v9, (a1 + 32));
      v8 = v5;
      [v6 registerStreamIntentForCaptureDevice:v8 completion:v7];

      objc_destroyWeak(&v9);
    }
  }
}

void __61__CMContinuityCaptureVideoStream__startStreamAndReturnError___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = 138543618;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ completed registerStreamIntentForCaptureDevice error %@", &v9, 0x16u);
  }

  if (a2 && [a2 code])
  {
    if ([a2 code] == -1005)
    {
      v6 = kCMContinuityCaptureEventStreamDisableForMultipleStream;
LABEL_9:
      v7 = [*(a1 + 32) compositeDelegate];
      [v7 postEvent:*v6 entity:objc_msgSend(*(a1 + 32) data:{"entity"), 0}];

      goto LABEL_10;
    }

    if ([a2 code] == -1006)
    {
      v6 = kCMContinuityCaptureEventStreamDisableForWifiContention;
      goto LABEL_9;
    }
  }

LABEL_10:
  v8 = [*(a1 + 32) compositeDelegate];
  [v8 postEvent:@"kCMContinuityCaptureEventStartStream" entity:objc_msgSend(*(a1 + 32) data:{"entity"), 0}];
}

- (BOOL)stopStreamAndReturnError:(id *)error
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2080;
    v19 = "[CMContinuityCaptureVideoStream stopStreamAndReturnError:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  device = [(CMContinuityCaptureVideoStream *)self device];
  v6 = device;
  if (device)
  {
    compositeDelegate = [device compositeDelegate];
    [compositeDelegate postEvent:@"kCMContinuityCaptureEventRemoteClientReconnect" entity:objc_msgSend(v6 data:{"entity"), 0}];

    v8 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v8 unscheduleNotification:4];

    v9 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v9 unscheduleNotification:5];

    v10 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v10 unscheduleNotification:13];

    v11 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v11 unscheduleNotification:14];

    v12 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__CMContinuityCaptureVideoStream_stopStreamAndReturnError___block_invoke;
    v14[3] = &unk_278D5C080;
    objc_copyWeak(&v15, buf);
    [v12 stopStreamForDevice:v6 option:0 completion:v14];

    objc_destroyWeak(&v15);
  }

  objc_destroyWeak(buf);
  return 1;
}

void __59__CMContinuityCaptureVideoStream_stopStreamAndReturnError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _stopStreamAndReturnError:0];
    WeakRetained = v2;
  }
}

- (BOOL)_stopStreamAndReturnError:(id *)error
{
  objc_initWeak(&location, self);
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v14 = 2080;
    v15 = "[CMContinuityCaptureVideoStream _stopStreamAndReturnError:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  device = [(CMContinuityCaptureVideoStream *)self device];
  compositeDelegate = [device compositeDelegate];
  device2 = [(CMContinuityCaptureVideoStream *)self device];
  [compositeDelegate unregisterStreamIntentForCaptureDevice:device2];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CMContinuityCaptureVideoStream__stopStreamAndReturnError___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v11, &location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return 1;
}

void __60__CMContinuityCaptureVideoStream__stopStreamAndReturnError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained device];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 compositeDelegate];
      [v4 postEvent:@"kCMContinuityCaptureEventStopStream" entity:objc_msgSend(v3 data:{"entity"), 0}];
    }

    WeakRetained = v5;
  }
}

- (void)captureAsyncStillImage:(int64_t)image options:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureVideoStream *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__CMContinuityCaptureVideoStream_captureAsyncStillImage_options_completionHandler___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v16[1] = image;
  v14 = optionsCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = optionsCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __83__CMContinuityCaptureVideoStream_captureAsyncStillImage_options_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(CMContinuityCaptureStillImageRequest);
    [(CMContinuityCaptureStillImageRequest *)v3 setUniqueID:*(a1 + 56)];
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"CompressedFormat"];
    [(CMContinuityCaptureStillImageRequest *)v3 setCompressedFormat:v4];

    v5 = [*(a1 + 32) objectForKeyedSubscript:@"HighResolutionCapture"];
    -[CMContinuityCaptureStillImageRequest setHighResolutionPhotoEnabled:](v3, "setHighResolutionPhotoEnabled:", [v5 BOOLValue]);

    v6 = [*(a1 + 32) objectForKeyedSubscript:@"FlashMode"];
    -[CMContinuityCaptureStillImageRequest setFlashMode:](v3, "setFlashMode:", [v6 intValue]);

    v7 = [*(a1 + 32) objectForKeyedSubscript:@"PhotoQualityPrioritization"];
    -[CMContinuityCaptureStillImageRequest setPhotoQualityPrioritization:](v3, "setPhotoQualityPrioritization:", [v7 intValue]);

    v8 = [*(a1 + 32) objectForKeyedSubscript:@"MaxPhotoDimensionsWidth"];
    if (v8 && (v9 = v8, [*(a1 + 32) objectForKeyedSubscript:@"MaxPhotoDimensionsHeight"], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      v11 = [*(a1 + 32) objectForKeyedSubscript:@"MaxPhotoDimensionsWidth"];
      v12 = [v11 intValue];

      v13 = [*(a1 + 32) objectForKeyedSubscript:@"MaxPhotoDimensionsHeight"];
      v14 = [v13 intValue];

      v15 = v12 | (v14 << 32);
    }

    else
    {
      v15 = 0;
    }

    [(CMContinuityCaptureStillImageRequest *)v3 setMaxPhotoDimensions:v15];
    [(CMContinuityCaptureStillImageRequest *)v3 setCompletionHandler:*(a1 + 40)];
    v16 = objc_loadWeakRetained(WeakRetained + 34);
    v17 = [WeakRetained device];
    v18 = [v17 entity];
    v20 = @"ImageRequest";
    v21 = v3;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [v16 postEvent:@"kCMContinuityCaptureEventImageCapture" entity:v18 data:v19];
  }
}

- (void)enqueueReactionEffect:(id)effect completionHandler:(id)handler
{
  effectCopy = effect;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v8 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v18 = 2080;
    v19 = "[CMContinuityCaptureVideoStream enqueueReactionEffect:completionHandler:]";
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  queue = [(CMContinuityCaptureVideoStream *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CMContinuityCaptureVideoStream_enqueueReactionEffect_completionHandler___block_invoke;
  block[3] = &unk_278D5C490;
  objc_copyWeak(&v15, &location);
  v13 = effectCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = effectCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureVideoStream_enqueueReactionEffect_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained device];
    if (v4)
    {
      v5 = [v3 device];
      v6 = [v5 entity];
      v7 = *(a1 + 32);
      v10 = @"ReactionType";
      v11 = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      [v4 postEvent:@"kCMContinuityCaptureEventEnqueueReactionEffect" entity:v6 data:v8];

      v9 = *(a1 + 40);
      if (v9)
      {
        (*(v9 + 16))(v9, 0);
      }
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  device = [(CMContinuityCaptureVideoStream *)self device];
  v7 = [v3 stringWithFormat:@"%@: %@ [%p]", v5, device, self];

  return v7;
}

- (CMContinuityCaptureVideoStream)initWithDevice:(id)device streamFormats:(id)formats deviceID:(id)d queue:(id)queue
{
  deviceCopy = device;
  formatsCopy = formats;
  dCopy = d;
  queueCopy = queue;
  compositeDelegate = [deviceCopy compositeDelegate];
  objc_storeWeak(&self->_compositeDevice, compositeDelegate);

  v13 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_compositeDevice);
  client = [WeakRetained client];
  device = [client device];
  deviceName = [device deviceName];
  v17 = [v13 stringWithFormat:@"CMContinuityCaptureVideoStream-%@"];
  v18 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v52.receiver = self;
  v52.super_class = CMContinuityCaptureVideoStream;
  v19 = [(CMIOExtensionStream *)&v52 initWithLocalizedName:v17 streamID:v18 direction:0 clockType:0 source:self];

  if (!v19)
  {
LABEL_11:
    v28 = 0;
    v25 = dCopy;
    goto LABEL_7;
  }

  objc_storeStrong(&v19->_queue, queue);
  v20 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v49 = v19;
    v50 = 2112;
    v51 = formatsCopy;
    _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, " %@ setup stream for formats %@", buf, 0x16u);
  }

  if (!v19->_queue)
  {
    v30 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v49) = HIDWORD(v19);
      OUTLINED_FUNCTION_11(&dword_242545000, v31, v32, " %@ Invalid queue", v33, v34, v35, v36, deviceName, v45, queueCopy, dCopy, 2u);
    }

    goto LABEL_11;
  }

  objc_storeWeak(&v19->_device, deviceCopy);
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cmControlByName = v19->_cmControlByName;
  v19->_cmControlByName = v21;

  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  clientsRequestingBooleanControlOnByControlName = v19->_clientsRequestingBooleanControlOnByControlName;
  v19->_clientsRequestingBooleanControlOnByControlName = v23;

  if ([(CMContinuityCaptureVideoStream *)v19 setupStreams:formatsCopy])
  {
    v25 = dCopy;
    v26 = [dCopy copy];
    deviceID = v19->_deviceID;
    v19->_deviceID = v26;

    [(CMContinuityCaptureVideoStream *)v19 setupControls];
    v28 = v19;
  }

  else
  {
    v37 = CMContinuityCaptureLog(2);
    v25 = dCopy;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v49) = HIDWORD(v19);
      OUTLINED_FUNCTION_11(&dword_242545000, v38, v39, " %@ Failed to setup streams", v40, v41, v42, v43, deviceName, v45, queueCopy, dCopy, 2u);
    }

    v28 = 0;
  }

LABEL_7:

  return v28;
}

- (void)_disconnectClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_device);

  if (WeakRetained)
  {
    v6 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_3_0();
      _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_INFO, "%@ Client %{private}@ has disconnected.", buf, 0x16u);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v7 = self->_clientsRequestingBooleanControlOnByControlName;
    v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v57 objects:v56 count:16];
    if (v8)
    {
      v10 = v8;
      v49 = 0;
      v11 = *v58;
      *&v9 = 138412546;
      v47 = v9;
      v48 = v7;
      do
      {
        v12 = 0;
        v50 = v10;
        do
        {
          if (*v58 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v57 + 1) + 8 * v12);
          v14 = [(NSMutableDictionary *)selfCopy->_clientsRequestingBooleanControlOnByControlName objectForKeyedSubscript:v13, v47];
          if ([v14 containsObject:clientCopy])
          {
            v15 = v11;
            [v14 removeObject:clientCopy];
            v16 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              [v14 count];
              OUTLINED_FUNCTION_3_0();
              OUTLINED_FUNCTION_5_0();
              OUTLINED_FUNCTION_10();
              _os_log_impl(v17, v18, v19, "%@ Client %{private}@ no longer needs %@ on. %d total clients.", v20, 0x26u);
            }

            v21 = [v14 count];
            v22 = CMContinuityCaptureLog(2);
            v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
            if (v21)
            {
              v11 = v15;
              if (v23)
              {
                v24 = [v14 count];
                *buf = 138412802;
                v53 = selfCopy;
                v54 = 1024;
                LODWORD(v55[0]) = v24;
                WORD2(v55[0]) = 2112;
                *(v55 + 6) = v13;
                OUTLINED_FUNCTION_10();
                _os_log_impl(v25, v26, v27, "%@ There are still %d clients that want %@ on. Keeping on.", v28, 0x1Cu);
              }
            }

            else
            {
              if (v23)
              {
                *buf = v47;
                v53 = selfCopy;
                v54 = 2112;
                v55[0] = v13;
                OUTLINED_FUNCTION_10();
                _os_log_impl(v33, v34, v35, "%@ No more clients need %@ on. Turning off.", v36, 0x16u);
              }

              v22 = [(NSMutableDictionary *)selfCopy->_cmControlByName objectForKeyedSubscript:v13];
              v37 = [MEMORY[0x277CCABB0] numberWithBool:0];
              [v22 setValue:v37];

              v38 = objc_loadWeakRetained(&selfCopy->_device);
              [v38 setValueForControl:v22 completion:0];

              v39 = v49;
              if (!v49)
              {
                v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              v40 = MEMORY[0x277CC1B90];
              [MEMORY[0x277CCABB0] numberWithBool:0];
              v41 = v49 = v39;
              v42 = [v40 propertyStateWithValue:v41];
              [v39 setObject:v42 forKeyedSubscript:v13];

              v7 = v48;
              v11 = v15;
            }

            v10 = v50;
          }

          else
          {
            v22 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              [v14 count];
              OUTLINED_FUNCTION_3_0();
              OUTLINED_FUNCTION_5_0();
              OUTLINED_FUNCTION_10();
              _os_log_impl(v29, v30, v31, "%@ Client %{private}@ didn't want %@ on. %d total clients.", v32, 0x26u);
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v57 objects:v56 count:16];
      }

      while (v10);
    }

    else
    {
      v49 = 0;
    }

    v43 = [(NSMutableDictionary *)selfCopy->_cmControlByName objectForKeyedSubscript:@"AsyncStillCaptureConfigurations"];
    v44 = v49;
    if (v43)
    {
      [(NSMutableDictionary *)selfCopy->_maxPhotoQualityPrioritizationByClients setObject:0 forKeyedSubscript:clientCopy];
      v45 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        maxPhotoQualityPrioritizationByClients = selfCopy->_maxPhotoQualityPrioritizationByClients;
        *buf = 138412546;
        v53 = selfCopy;
        v54 = 2112;
        v55[0] = maxPhotoQualityPrioritizationByClients;
        _os_log_impl(&dword_242545000, v45, OS_LOG_TYPE_INFO, "%@ Updated maxPhotoQualityPrioritizationByClients to %@", buf, 0x16u);
      }
    }

    if (v49)
    {
      [(CMIOExtensionStream *)selfCopy notifyPropertiesChanged:v49];
    }
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }
}

- (id)_streamPropertiesForProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  v5 = [MEMORY[0x277CC1BB0] streamPropertiesWithDictionary:MEMORY[0x277CBEC10]];
  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (!propertiesCopy || !v5)
  {
    goto LABEL_46;
  }

  if ([propertiesCopy containsObject:*MEMORY[0x277CC1B68]])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_activeFormatIndex];
    [v6 setActiveFormatIndex:v11];
  }

  v12 = *MEMORY[0x277CC1B70];
  if ([propertiesCopy containsObject:*MEMORY[0x277CC1B70]])
  {
    device = [(CMContinuityCaptureVideoStream *)self device];
    activeConfiguration = [device activeConfiguration];
    CMTimeMake(&v53, 1, [activeConfiguration maxFrameRate]);

    v15 = OUTLINED_FUNCTION_9_0();
    if (v15)
    {
      [v6 setFrameDuration:v15];
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277CC1B78];
  v45 = *MEMORY[0x277CC1B78];
  v44 = v6;
  v42 = v15;
  if ([propertiesCopy containsObject:*MEMORY[0x277CC1B78]])
  {
    device2 = [(CMContinuityCaptureVideoStream *)self device];
    activeConfiguration2 = [device2 activeConfiguration];
    CMTimeMake(&v53, 1, [activeConfiguration2 minFrameRate]);

    v19 = OUTLINED_FUNCTION_9_0();
    if (v19)
    {
      v40 = v19;
      [v6 setMaxFrameDuration:?];
    }

    else
    {
      v40 = 0;
    }

    v16 = v45;
  }

  else
  {
    v40 = 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  allKeys = [(NSMutableDictionary *)self->_cmControlByName allKeys];
  v21 = [allKeys countByEnumeratingWithState:&v49 objects:v48 count:16];
  if (!v21)
  {
    v46 = 0;
    v9 = 0;
    goto LABEL_40;
  }

  v22 = v21;
  v46 = 0;
  v9 = 0;
  v23 = *v50;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v50 != v23)
      {
        objc_enumerationMutation(allKeys);
      }

      v25 = *(*(&v49 + 1) + 8 * i);
      if (([v25 isEqualToString:v12] & 1) == 0 && (objc_msgSend(v25, "isEqualToString:", v16) & 1) == 0 && objc_msgSend(propertiesCopy, "containsObject:", v25))
      {
        v26 = propertiesCopy;
        v27 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:v25];

        name = [v27 name];
        v29 = [name isEqualToString:@"ActiveFormat"];

        if (v29)
        {
          v9 = v27;
          propertiesCopy = v26;
LABEL_35:
          v16 = v45;
          continue;
        }

        if (v27)
        {
          if ([v25 isEqualToString:@"4cc_cfri_glob_0000"] && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0))
          {
            value2 = [MEMORY[0x277CC1B88] propertyAttributesWithSharedStreamDefaultValue:0x2854ECD88 minValue:0 maxValue:0 validValues:0];
            v31 = MEMORY[0x277CC1B90];
            value = [v27 value];
            v32 = [v31 propertyStateWithValue:value attributes:value2];

            v33 = value;
          }

          else
          {
            v34 = MEMORY[0x277CC1B90];
            value2 = [v27 value];
            v32 = [v34 propertyStateWithValue:value2 attributes:0];
            v33 = v46;
          }

          v35 = v32;
          propertiesCopy = v26;
          if (v35)
          {
LABEL_31:
            v46 = v35;
            [v44 setPropertyState:v35 forProperty:v25];
LABEL_34:
            v9 = v27;
            goto LABEL_35;
          }
        }

        else
        {
          propertiesCopy = v26;
          v35 = v46;
          if (v46)
          {
            goto LABEL_31;
          }
        }

        v46 = 0;
        goto LABEL_34;
      }
    }

    v22 = [allKeys countByEnumeratingWithState:&v49 objects:v48 count:16];
  }

  while (v22);
LABEL_40:

  if (CMContinityCaptureDebugLogEnabled())
  {
    v36 = CMContinuityCaptureLog(2);
    v6 = v44;
    v7 = v41;
    v10 = v42;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      propertiesDictionary = [v44 propertiesDictionary];
      LODWORD(v53.value) = 138412546;
      *(&v53.value + 4) = self;
      LOWORD(v53.flags) = 2112;
      *(&v53.flags + 2) = propertiesDictionary;
      _os_log_debug_impl(&dword_242545000, v36, OS_LOG_TYPE_DEBUG, "%@ GetProperties %@", &v53, 0x16u);
    }
  }

  else
  {
    v6 = v44;
    v7 = v41;
    v10 = v42;
  }

  v8 = v46;
LABEL_46:
  v37 = v6;

  return v6;
}

- (void)_setValueForControl:(id)control completion:(id)completion
{
  controlCopy = control;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  dispatch_assert_queue_V2(self->_queue);
  cmControlByName = self->_cmControlByName;
  [controlCopy name];
  objc_claimAutoreleasedReturnValue();
  v9 = [OUTLINED_FUNCTION_2_0() objectForKeyedSubscript:?];

  if (!v9)
  {
    goto LABEL_37;
  }

  v10 = self->_cmControlByName;
  [controlCopy name];
  objc_claimAutoreleasedReturnValue();
  v9 = [OUTLINED_FUNCTION_2_0() objectForKeyedSubscript:?];

  name = [controlCopy name];
  v12 = [name isEqualToString:@"CMIOExtensionPropertyStreamFrameDuration"];

  if (v12)
  {
    [controlCopy value];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_0() setValue:?];

    v13 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_8_0(v13))
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  name = [controlCopy name];
  v14 = [name isEqualToString:@"CMIOExtensionPropertyStreamMaxFrameDuration"];

  if (v14)
  {
    [controlCopy value];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_0() setValue:?];

    v15 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_8_0(v15))
    {
LABEL_7:
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v16, v17, v18, v19, v20, 0x20u);
    }

LABEL_8:

    value = [v9 value];
    CMTimeMake(&v58, 1, [value unsignedIntValue]);
    value4 = CMTimeCopyAsDictionary(&v58, 0);
    if (value4)
    {
      v23 = [MEMORY[0x277CC1B90] propertyStateWithValue:value4 attributes:0];
      if (v23)
      {
        name2 = [controlCopy name];
        [v7 setObject:v23 forKeyedSubscript:name2];
      }
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_13;
  }

  name3 = [controlCopy name];
  if (![name3 isEqualToString:@"4cc_cfri_glob_0000"] || (objc_msgSend(controlCopy, "value"), (v26 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_24;
  }

  v27 = v26;
  value2 = [controlCopy value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_24:
    name4 = [controlCopy name];
    if ([name4 isEqualToString:@"ReactionsInProgress"] && (objc_msgSend(controlCopy, "value"), (v33 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v34 = v33;
      value3 = [controlCopy value];
      objc_opt_class();
      v36 = objc_opt_isKindOfClass();

      if (v36)
      {
        value4 = [v9 value];
        [controlCopy value];
        objc_claimAutoreleasedReturnValue();
        v37 = [OUTLINED_FUNCTION_7_0() isEqualToArray:?];

        if (!v37)
        {
          [controlCopy value];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_2_0() setValue:?];

          v38 = CMContinuityCaptureLog(2);
          if (!OUTLINED_FUNCTION_8_0(v38))
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v52 = CMContinuityCaptureLog(2);
        if (OUTLINED_FUNCTION_8_0(v52))
        {
          goto LABEL_43;
        }

        goto LABEL_44;
      }
    }

    else
    {
    }

    value5 = [v9 value];
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();

    if (v40)
    {
      value4 = [v9 value];
      [controlCopy value];
      objc_claimAutoreleasedReturnValue();
      v41 = [OUTLINED_FUNCTION_7_0() isEqualToNumber:?];

      if (!v41)
      {
        [controlCopy value];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_2_0() setValue:?];

        v42 = CMContinuityCaptureLog(2);
        if (!OUTLINED_FUNCTION_8_0(v42))
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      v50 = CMContinuityCaptureLog(2);
      if (OUTLINED_FUNCTION_8_0(v50))
      {
        goto LABEL_43;
      }

      goto LABEL_44;
    }

LABEL_37:
    v23 = 0;
    goto LABEL_14;
  }

  value4 = [v9 value];
  [controlCopy value];
  objc_claimAutoreleasedReturnValue();
  v30 = [OUTLINED_FUNCTION_7_0() isEqualToDictionary:?];

  if (v30)
  {
    v51 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_8_0(v51))
    {
LABEL_43:
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
    }

LABEL_44:
    v23 = 0;
    goto LABEL_13;
  }

  [controlCopy value];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() setValue:?];

  v31 = CMContinuityCaptureLog(2);
  if (!OUTLINED_FUNCTION_8_0(v31))
  {
    goto LABEL_35;
  }

LABEL_34:
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_impl(v43, v44, v45, v46, v47, 0x20u);
LABEL_35:

  v48 = MEMORY[0x277CC1B90];
  value6 = [controlCopy value];
  v23 = [v48 propertyStateWithValue:value6 attributes:0];

  if (v23)
  {
    value4 = [controlCopy name];
    [v7 setObject:v23 forKeyedSubscript:value4];
LABEL_13:
  }

LABEL_14:
  if ([v7 count])
  {
    [(CMIOExtensionStream *)self notifyPropertiesChanged:v7];
  }
}

- (void)setupStreams:.cold.1()
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(&dword_242545000, v0, OS_LOG_TYPE_ERROR, "%@ Invalid stream formats", v1, 0xCu);
  }
}

- (void)_availableProperties
{
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_242545000, log, OS_LOG_TYPE_DEBUG, "%@ AvailableProperties %@", &v3, 0x16u);
}

@end