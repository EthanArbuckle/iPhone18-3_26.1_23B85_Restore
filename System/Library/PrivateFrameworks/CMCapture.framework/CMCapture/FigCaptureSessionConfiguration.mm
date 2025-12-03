@interface FigCaptureSessionConfiguration
- (BOOL)allCameraSourcesAreMetadataCameras;
- (BOOL)eligibleToAttachToExistingCaptureSession;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsAttachingSessionConfiguration:(id)configuration;
- (FigCaptureSessionConfiguration)init;
- (FigCaptureSessionConfiguration)initWithXPCEncoding:(id)encoding;
- (NSArray)connectionConfigurations;
- (NSArray)sinkConfigurations;
- (NSArray)sourceConfigurations;
- (NSString)description;
- (id)briefDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)osStatePropertyList;
- (void)_descriptionWithoutConnections;
- (void)dealloc;
@end

@implementation FigCaptureSessionConfiguration

- (BOOL)allCameraSourcesAreMetadataCameras
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  connectionConfigurations = [(FigCaptureSessionConfiguration *)self connectionConfigurations];
  v3 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v12;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(connectionConfigurations);
      }

      sourceConfiguration = [*(*(&v11 + 1) + 8 * i) sourceConfiguration];
      if ([sourceConfiguration sourceType] == 1)
      {
        if ([sourceConfiguration sourceDeviceType] - 17 > 3)
        {
          return 0;
        }

        v5 = 1;
      }
    }

    v4 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v11 objects:v10 count:16];
  }

  while (v4);
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionConfiguration;
  [(FigCaptureSessionConfiguration *)&v3 dealloc];
}

- (NSString)description
{
  _descriptionWithoutConnections = [(FigCaptureSessionConfiguration *)self _descriptionWithoutConnections];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectionConfigurations = [(FigCaptureSessionConfiguration *)self connectionConfigurations];
  v5 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(connectionConfigurations);
        }

        [_descriptionWithoutConnections appendFormat:@"\n\t%@", *(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return _descriptionWithoutConnections;
}

- (void)_descriptionWithoutConnections
{
  if (!self)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@ %p: ID %lld, sdk %llu, %@ multiCam: %d, appAudio: %d, autoConfig: %d, mixesWithOthers: %d, hqBluetooth: %d, runWhileMultitasking: %d, checkIfFileAlreadyExistForMFO: %d autoRunDeferredStart: %d", objc_opt_class(), self, objc_msgSend(self, "configurationID"), objc_msgSend(self, "clientSDKVersionToken"), objc_msgSend(self, "sessionPreset"), objc_msgSend(self, "isMultiCamSession"), objc_msgSend(self, "usesAppAudioSession"), objc_msgSend(self, "configuresAppAudioSession"), objc_msgSend(self, "configuresAppAudioSessionToMixWithOthers"), objc_msgSend(self, "configuresAppAudioSessionForBluetoothHighQualityRecording"), objc_msgSend(self, "allowedToRunInMultitaskingMode"), objc_msgSend(self, "checkIfFileAlreadyExistForMFO"), objc_msgSend(self, "automaticallyRunsDeferredStart")];
  if ([self xctestAuthorizedToStealDevice])
  {
    [v2 appendString:{@", xctestSteals: 1"}];
  }

  if ([self continuityCameraIsWired])
  {
    [v2 appendString:{@", continuityCameraIsWired: YES"}];
  }

  if ([self continuityCameraClientDeviceClass])
  {
    [v2 appendFormat:@", continuityCameraClientDeviceClass: %@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(self, "continuityCameraClientDeviceClass"))];
  }

  if ([self suppressVideoEffects])
  {
    [v2 appendString:{@", suppressVideoEffects: YES"}];
  }

  if ([self smartStyleRenderingEnabled])
  {
    [v2 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @", smartStyle:%@ controlMode:%d", objc_msgSend(self, "smartStyle"), objc_msgSend(self, "smartStyleControlMode"))}];
  }

  return v2;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "configurationID", [(FigCaptureSessionConfiguration *)self configurationID]);
  xpc_dictionary_set_uint64(v3, "clientSDKVersionTokenKey", [(FigCaptureSessionConfiguration *)self clientSDKVersionToken]);
  xpc_dictionary_set_BOOL(v3, "clientExpectsCameraMountedInLandscapeOrientation", [(FigCaptureSessionConfiguration *)self clientExpectsCameraMountedInLandscapeOrientation]);
  sourceConfigurations = [(FigCaptureSessionConfiguration *)self sourceConfigurations];
  v5 = xpc_array_create(0, 0);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [(NSArray *)sourceConfigurations countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(sourceConfigurations);
        }

        copyXPCEncoding = [*(*(&v34 + 1) + 8 * i) copyXPCEncoding];
        xpc_array_append_value(v5, copyXPCEncoding);
        xpc_release(copyXPCEncoding);
      }

      v7 = [(NSArray *)sourceConfigurations countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v7);
  }

  xpc_dictionary_set_value(v3, "sources", v5);
  xpc_release(v5);
  v11 = xpc_array_create(0, 0);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  connectionConfigurations = [(FigCaptureSessionConfiguration *)self connectionConfigurations];
  v13 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(connectionConfigurations);
        }

        v17 = *(*(&v29 + 1) + 8 * j);
        v18 = -[NSArray indexOfObject:](sourceConfigurations, "indexOfObject:", [v17 sourceConfiguration]);
        if (v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = v18;
          copyXPCEncoding2 = [v17 copyXPCEncoding];
          xpc_dictionary_set_int64(copyXPCEncoding2, "sourceIndex", v19);
          xpc_array_append_value(v11, copyXPCEncoding2);
          xpc_release(copyXPCEncoding2);
        }
      }

      v14 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v14);
  }

  xpc_dictionary_set_value(v3, "connections", v11);
  xpc_release(v11);
  sessionPreset = [(FigCaptureSessionConfiguration *)selfCopy sessionPreset];
  if (sessionPreset)
  {
    xpc_dictionary_set_string(v3, "sessionPreset", [(NSString *)sessionPreset UTF8String]);
  }

  xpc_dictionary_set_BOOL(v3, "usesAppAudioSession", [(FigCaptureSessionConfiguration *)selfCopy usesAppAudioSession]);
  xpc_dictionary_set_BOOL(v3, "configuresAppAudioSession", [(FigCaptureSessionConfiguration *)selfCopy configuresAppAudioSession]);
  xpc_dictionary_set_BOOL(v3, "configuresAppAudioSessionToMixWithOthers", [(FigCaptureSessionConfiguration *)selfCopy configuresAppAudioSessionToMixWithOthers]);
  xpc_dictionary_set_BOOL(v3, "configuresAppAudioSessionForBluetoothHighQualityRecording", [(FigCaptureSessionConfiguration *)selfCopy configuresAppAudioSessionForBluetoothHighQualityRecording]);
  xpc_dictionary_set_BOOL(v3, "allowedToRunInMultitaskingMode", [(FigCaptureSessionConfiguration *)selfCopy allowedToRunInMultitaskingMode]);
  xpc_dictionary_set_BOOL(v3, "isMultiCamSession", [(FigCaptureSessionConfiguration *)selfCopy isMultiCamSession]);
  xpc_dictionary_set_BOOL(v3, "xctestAuthorizedToStealDevice", [(FigCaptureSessionConfiguration *)selfCopy xctestAuthorizedToStealDevice]);
  xpc_dictionary_set_BOOL(v3, "checkIfFileAlreadyExistForMFO", [(FigCaptureSessionConfiguration *)selfCopy checkIfFileAlreadyExistForMFO]);
  xpc_dictionary_set_BOOL(v3, "continuityCameraIsWired", [(FigCaptureSessionConfiguration *)selfCopy continuityCameraIsWired]);
  xpc_dictionary_set_int64(v3, "continuityCameraClientDeviceClass", [(FigCaptureSessionConfiguration *)selfCopy continuityCameraClientDeviceClass]);
  xpc_dictionary_set_BOOL(v3, "clientIsVOIP", [(FigCaptureSessionConfiguration *)selfCopy clientIsVOIP]);
  xpc_dictionary_set_BOOL(v3, "suppressVideoEffects", [(FigCaptureSessionConfiguration *)selfCopy suppressVideoEffects]);
  if ([(FigCaptureSessionConfiguration *)selfCopy tccIdentity])
  {
    [(FigCaptureSessionConfiguration *)selfCopy tccIdentity];
    v22 = tcc_identity_copy_external_representation();
    v23 = _CFXPCCreateXPCObjectFromCFObject();

    xpc_dictionary_set_value(v3, "tccIdentity", v23);
  }

  xpc_dictionary_set_BOOL(v3, "smartStyleRenderingEnabled", [(FigCaptureSessionConfiguration *)selfCopy smartStyleRenderingEnabled]);
  xpc_dictionary_set_int64(v3, "smartStyleControlMode", [(FigCaptureSessionConfiguration *)selfCopy smartStyleControlMode]);
  smartStyle = selfCopy->_smartStyle;
  if (smartStyle)
  {
    copyXPCEncoding3 = [(FigCaptureSmartStyle *)smartStyle copyXPCEncoding];
    xpc_dictionary_set_value(v3, "smartStyle", copyXPCEncoding3);
    xpc_release(copyXPCEncoding3);
  }

  xpc_dictionary_set_BOOL(v3, "automaticallyRunsDeferredStart", [(FigCaptureSessionConfiguration *)selfCopy automaticallyRunsDeferredStart]);
  return v3;
}

- (NSArray)sourceConfigurations
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](-[FigCaptureSessionConfiguration connectionConfigurations](self, "connectionConfigurations"), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  connectionConfigurations = [(FigCaptureSessionConfiguration *)self connectionConfigurations];
  v5 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(connectionConfigurations);
        }

        sourceConfiguration = [*(*(&v12 + 1) + 8 * v8) sourceConfiguration];
        if (([v3 containsObject:sourceConfiguration] & 1) == 0)
        {
          [v3 addObject:sourceConfiguration];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  return v3;
}

- (FigCaptureSessionConfiguration)init
{
  v4.receiver = self;
  v4.super_class = FigCaptureSessionConfiguration;
  v2 = [(FigCaptureSessionConfiguration *)&v4 init];
  if (v2)
  {
    *(v2 + 3) = dyld_get_program_sdk_version_token();
    *(v2 + 1) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2[64] = 1;
    *(v2 + 10) = 257;
    *(v2 + 65) = 0;
    *(v2 + 9) = 0;
    v2[88] = 1;
  }

  return v2;
}

- (NSArray)connectionConfigurations
{
  v2 = self->_connections;

  return v2;
}

- (id)briefDescription
{
  _descriptionWithoutConnections = [(FigCaptureSessionConfiguration *)self _descriptionWithoutConnections];
  [_descriptionWithoutConnections appendFormat:@", connections: count = %lu", -[NSArray count](-[FigCaptureSessionConfiguration connectionConfigurations](self, "connectionConfigurations"), "count")];
  return _descriptionWithoutConnections;
}

- (NSArray)sinkConfigurations
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](-[FigCaptureSessionConfiguration connectionConfigurations](self, "connectionConfigurations"), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  connectionConfigurations = [(FigCaptureSessionConfiguration *)self connectionConfigurations];
  v5 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(connectionConfigurations);
        }

        sinkConfiguration = [*(*(&v12 + 1) + 8 * v8) sinkConfiguration];
        if (([v3 containsObject:sinkConfiguration] & 1) == 0)
        {
          [v3 addObject:sinkConfiguration];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  return v3;
}

- (FigCaptureSessionConfiguration)initWithXPCEncoding:(id)encoding
{
  selfCopy = self;
  if (!encoding)
  {
    [FigCaptureSessionConfiguration initWithXPCEncoding:];
    goto LABEL_15;
  }

  v15.receiver = self;
  v15.super_class = FigCaptureSessionConfiguration;
  selfCopy = [(FigCaptureSessionConfiguration *)&v15 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  selfCopy->_configurationID = xpc_dictionary_get_int64(encoding, "configurationID");
  selfCopy->_clientSDKVersionToken = xpc_dictionary_get_uint64(encoding, "clientSDKVersionTokenKey");
  selfCopy->_clientExpectsCameraMountedInLandscapeOrientation = xpc_dictionary_get_BOOL(encoding, "clientExpectsCameraMountedInLandscapeOrientation");
  array = [MEMORY[0x1E695DF70] array];
  value = xpc_dictionary_get_value(encoding, "sources");
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __54__FigCaptureSessionConfiguration_initWithXPCEncoding___block_invoke;
  applier[3] = &unk_1E798FA38;
  applier[4] = array;
  if (!xpc_array_apply(value, applier))
  {
    [FigCaptureSessionConfiguration initWithXPCEncoding:];
    goto LABEL_15;
  }

  selfCopy->_connections = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = xpc_dictionary_get_value(encoding, "connections");
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__FigCaptureSessionConfiguration_initWithXPCEncoding___block_invoke_2;
  v13[3] = &unk_1E7999950;
  v13[4] = array;
  v13[5] = selfCopy;
  if (!xpc_array_apply(v7, v13))
  {
LABEL_15:

    return 0;
  }

  string = xpc_dictionary_get_string(encoding, "sessionPreset");
  if (string)
  {
    selfCopy->_sessionPreset = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  selfCopy->_usesAppAudioSession = xpc_dictionary_get_BOOL(encoding, "usesAppAudioSession");
  selfCopy->_configuresAppAudioSession = xpc_dictionary_get_BOOL(encoding, "configuresAppAudioSession");
  selfCopy->_configuresAppAudioSessionToMixWithOthers = xpc_dictionary_get_BOOL(encoding, "configuresAppAudioSessionToMixWithOthers");
  selfCopy->_configuresAppAudioSessionForBluetoothHighQualityRecording = xpc_dictionary_get_BOOL(encoding, "configuresAppAudioSessionForBluetoothHighQualityRecording");
  selfCopy->_allowedToRunInMultitaskingMode = xpc_dictionary_get_BOOL(encoding, "allowedToRunInMultitaskingMode");
  selfCopy->_isMultiCamSession = xpc_dictionary_get_BOOL(encoding, "isMultiCamSession");
  selfCopy->_xctestAuthorizedToStealDevice = xpc_dictionary_get_BOOL(encoding, "xctestAuthorizedToStealDevice");
  selfCopy->_checkIfFileAlreadyExistForMFO = xpc_dictionary_get_BOOL(encoding, "checkIfFileAlreadyExistForMFO");
  selfCopy->_continuityCameraIsWired = xpc_dictionary_get_BOOL(encoding, "continuityCameraIsWired");
  selfCopy->_continuityCameraClientDeviceClass = xpc_dictionary_get_int64(encoding, "continuityCameraClientDeviceClass");
  selfCopy->_clientIsVOIP = xpc_dictionary_get_BOOL(encoding, "clientIsVOIP");
  selfCopy->_suppressVideoEffects = xpc_dictionary_get_BOOL(encoding, "suppressVideoEffects");
  if (xpc_dictionary_get_value(encoding, "tccIdentity"))
  {
    v9 = _CFXPCCreateCFObjectFromXPCObject();
    v10 = tcc_identity_create_from_external_representation();

    selfCopy->_tccIdentity = v10;
  }

  selfCopy->_smartStyleRenderingEnabled = xpc_dictionary_get_BOOL(encoding, "smartStyleRenderingEnabled");
  selfCopy->_smartStyleControlMode = xpc_dictionary_get_int64(encoding, "smartStyleControlMode");
  dictionary = xpc_dictionary_get_dictionary(encoding, "smartStyle");
  if (dictionary)
  {
    selfCopy->_smartStyle = [[FigCaptureSmartStyle alloc] initWithXPCEncoding:dictionary];
  }

  selfCopy->_automaticallyRunsDeferredStart = xpc_dictionary_get_BOOL(encoding, "automaticallyRunsDeferredStart");
  return selfCopy;
}

BOOL __54__FigCaptureSessionConfiguration_initWithXPCEncoding___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[FigCaptureSourceConfiguration alloc] initWithXPCEncoding:a3];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    __54__FigCaptureSessionConfiguration_initWithXPCEncoding___block_invoke_cold_1();
  }

  return v4 != 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setConfigurationID:{-[FigCaptureSessionConfiguration configurationID](self, "configurationID")}];
  [v5 setClientSDKVersionToken:{-[FigCaptureSessionConfiguration clientSDKVersionToken](self, "clientSDKVersionToken")}];
  [v5 setSessionPreset:{-[FigCaptureSessionConfiguration sessionPreset](self, "sessionPreset")}];
  [v5 setUsesAppAudioSession:{-[FigCaptureSessionConfiguration usesAppAudioSession](self, "usesAppAudioSession")}];
  [v5 setConfiguresAppAudioSession:{-[FigCaptureSessionConfiguration configuresAppAudioSession](self, "configuresAppAudioSession")}];
  [v5 setConfiguresAppAudioSessionToMixWithOthers:{-[FigCaptureSessionConfiguration configuresAppAudioSessionToMixWithOthers](self, "configuresAppAudioSessionToMixWithOthers")}];
  [v5 setConfiguresAppAudioSessionForBluetoothHighQualityRecording:{-[FigCaptureSessionConfiguration configuresAppAudioSessionForBluetoothHighQualityRecording](self, "configuresAppAudioSessionForBluetoothHighQualityRecording")}];
  [v5 setAllowedToRunInMultitaskingMode:{-[FigCaptureSessionConfiguration allowedToRunInMultitaskingMode](self, "allowedToRunInMultitaskingMode")}];
  [v5 setMultiCamSession:{-[FigCaptureSessionConfiguration isMultiCamSession](self, "isMultiCamSession")}];
  [v5 setXctestAuthorizedToStealDevice:{-[FigCaptureSessionConfiguration xctestAuthorizedToStealDevice](self, "xctestAuthorizedToStealDevice")}];
  [v5 setContinuityCameraIsWired:{-[FigCaptureSessionConfiguration continuityCameraIsWired](self, "continuityCameraIsWired")}];
  [v5 setContinuityCameraClientDeviceClass:{-[FigCaptureSessionConfiguration continuityCameraClientDeviceClass](self, "continuityCameraClientDeviceClass")}];
  [v5 setClientIsVOIP:{-[FigCaptureSessionConfiguration clientIsVOIP](self, "clientIsVOIP")}];
  [v5 setSuppressVideoEffects:{-[FigCaptureSessionConfiguration suppressVideoEffects](self, "suppressVideoEffects")}];
  [v5 setCheckIfFileAlreadyExistForMFO:{-[FigCaptureSessionConfiguration checkIfFileAlreadyExistForMFO](self, "checkIfFileAlreadyExistForMFO")}];
  [v5 setClientExpectsCameraMountedInLandscapeOrientation:{-[FigCaptureSessionConfiguration clientExpectsCameraMountedInLandscapeOrientation](self, "clientExpectsCameraMountedInLandscapeOrientation")}];
  if ([(FigCaptureSessionConfiguration *)self tccIdentity])
  {
    [(FigCaptureSessionConfiguration *)self tccIdentity];
    tcc_identity_get_type();
    [(FigCaptureSessionConfiguration *)self tccIdentity];
    tcc_identity_get_identifier();
    v6 = tcc_identity_create();
    [v5 setTccIdentity:v6];
  }

  [v5 setSmartStyleRenderingEnabled:{-[FigCaptureSessionConfiguration smartStyleRenderingEnabled](self, "smartStyleRenderingEnabled")}];
  [v5 setSmartStyleControlMode:{-[FigCaptureSessionConfiguration smartStyleControlMode](self, "smartStyleControlMode")}];
  [v5 setSmartStyle:{-[FigCaptureSessionConfiguration smartStyle](self, "smartStyle")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  connectionConfigurations = [(FigCaptureSessionConfiguration *)self connectionConfigurations];
  v8 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(connectionConfigurations);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) copyWithZone:zone];
        [v5 addConnectionConfiguration:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v9);
  }

  [v5 setAutomaticallyRunsDeferredStart:{-[FigCaptureSessionConfiguration automaticallyRunsDeferredStart](self, "automaticallyRunsDeferredStart")}];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v15) = 1;
    return v15;
  }

  v42 = v5;
  v43 = v4;
  v44 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_33;
  }

  configurationID = [(FigCaptureSessionConfiguration *)self configurationID];
  if (configurationID != [equal configurationID])
  {
    goto LABEL_33;
  }

  clientSDKVersionToken = [(FigCaptureSessionConfiguration *)self clientSDKVersionToken];
  if (clientSDKVersionToken != [equal clientSDKVersionToken])
  {
    goto LABEL_33;
  }

  v15 = -[NSString isEqual:](-[FigCaptureSessionConfiguration sessionPreset](self, "sessionPreset"), "isEqual:", [equal sessionPreset]);
  if (!v15)
  {
    return v15;
  }

  usesAppAudioSession = [(FigCaptureSessionConfiguration *)self usesAppAudioSession];
  if (usesAppAudioSession != [equal usesAppAudioSession] || (v17 = -[FigCaptureSessionConfiguration configuresAppAudioSession](self, "configuresAppAudioSession"), v17 != objc_msgSend(equal, "configuresAppAudioSession")) || (v18 = -[FigCaptureSessionConfiguration configuresAppAudioSessionToMixWithOthers](self, "configuresAppAudioSessionToMixWithOthers"), v18 != objc_msgSend(equal, "configuresAppAudioSessionToMixWithOthers")) || (v19 = -[FigCaptureSessionConfiguration configuresAppAudioSessionForBluetoothHighQualityRecording](self, "configuresAppAudioSessionForBluetoothHighQualityRecording"), v19 != objc_msgSend(equal, "configuresAppAudioSessionForBluetoothHighQualityRecording")) || (v20 = -[FigCaptureSessionConfiguration allowedToRunInMultitaskingMode](self, "allowedToRunInMultitaskingMode"), v20 != objc_msgSend(equal, "allowedToRunInMultitaskingMode")) || (v21 = -[FigCaptureSessionConfiguration isMultiCamSession](self, "isMultiCamSession"), v21 != objc_msgSend(equal, "isMultiCamSession")) || (v22 = -[FigCaptureSessionConfiguration xctestAuthorizedToStealDevice](self, "xctestAuthorizedToStealDevice"), v22 != objc_msgSend(equal, "xctestAuthorizedToStealDevice")) || (v23 = -[FigCaptureSessionConfiguration clientExpectsCameraMountedInLandscapeOrientation](self, "clientExpectsCameraMountedInLandscapeOrientation"), v23 != objc_msgSend(equal, "clientExpectsCameraMountedInLandscapeOrientation")) || (v24 = -[FigCaptureSessionConfiguration smartStyleRenderingEnabled](self, "smartStyleRenderingEnabled"), v24 != objc_msgSend(equal, "smartStyleRenderingEnabled")) || (v25 = -[FigCaptureSessionConfiguration smartStyleControlMode](self, "smartStyleControlMode"), v25 != objc_msgSend(equal, "smartStyleControlMode")))
  {
LABEL_33:
    LOBYTE(v15) = 0;
    return v15;
  }

  smartStyle = [(FigCaptureSessionConfiguration *)self smartStyle];
  if (smartStyle == [equal smartStyle] || (v15 = -[FigCaptureSmartStyle isEqual:](-[FigCaptureSessionConfiguration smartStyle](self, "smartStyle"), "isEqual:", objc_msgSend(equal, "smartStyle"))) != 0)
  {
    v27 = [(FigCaptureSessionConfiguration *)self connectionConfigurations:v8];
    if (v27 == [equal connectionConfigurations] || (v15 = -[NSArray isEqual:](-[FigCaptureSessionConfiguration connectionConfigurations](self, "connectionConfigurations"), "isEqual:", objc_msgSend(equal, "connectionConfigurations"))) != 0)
    {
      continuityCameraIsWired = [(FigCaptureSessionConfiguration *)self continuityCameraIsWired];
      if (continuityCameraIsWired != [equal continuityCameraIsWired])
      {
        goto LABEL_33;
      }

      continuityCameraClientDeviceClass = [(FigCaptureSessionConfiguration *)self continuityCameraClientDeviceClass];
      if (continuityCameraClientDeviceClass != [equal continuityCameraClientDeviceClass])
      {
        goto LABEL_33;
      }

      clientIsVOIP = [(FigCaptureSessionConfiguration *)self clientIsVOIP];
      if (clientIsVOIP != [equal clientIsVOIP])
      {
        goto LABEL_33;
      }

      suppressVideoEffects = [(FigCaptureSessionConfiguration *)self suppressVideoEffects];
      if (suppressVideoEffects != [equal suppressVideoEffects])
      {
        goto LABEL_33;
      }

      if (self->_tccIdentity)
      {
        if ([equal tccIdentity])
        {
          v32 = MEMORY[0x1E696AEC0];
          [(FigCaptureSessionConfiguration *)self tccIdentity];
          v33 = [v32 stringWithUTF8String:tcc_identity_get_identifier()];
          [(FigCaptureSessionConfiguration *)self tccIdentity];
          type = tcc_identity_get_type();
          v35 = MEMORY[0x1E696AEC0];
          [equal tccIdentity];
          v36 = [v35 stringWithUTF8String:tcc_identity_get_identifier()];
          [equal tccIdentity];
          v37 = tcc_identity_get_type();
          v38 = [v33 isEqualToString:v36];
          LOBYTE(v15) = 0;
          if (!v38 || type != v37)
          {
            return v15;
          }

LABEL_32:
          checkIfFileAlreadyExistForMFO = [(FigCaptureSessionConfiguration *)self checkIfFileAlreadyExistForMFO];
          if (checkIfFileAlreadyExistForMFO == [equal checkIfFileAlreadyExistForMFO])
          {
            automaticallyRunsDeferredStart = [(FigCaptureSessionConfiguration *)self automaticallyRunsDeferredStart];
            LOBYTE(v15) = automaticallyRunsDeferredStart ^ [equal automaticallyRunsDeferredStart] ^ 1;
            return v15;
          }

          goto LABEL_33;
        }

        if (self->_tccIdentity)
        {
          goto LABEL_33;
        }
      }

      if ([equal tccIdentity])
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  return v15;
}

- (BOOL)eligibleToAttachToExistingCaptureSession
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  sourceConfigurations = [(FigCaptureSessionConfiguration *)self sourceConfigurations];
  v3 = [(NSArray *)sourceConfigurations countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = *MEMORY[0x1E695E480];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(sourceConfigurations);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v13 = 0;
        source = [v8 source];
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v10)
        {
          v10(source, @"AttributesDictionary", v6, &v13);
        }

        v11 = [objc_msgSend(v13 objectForKeyedSubscript:{0x1F21A0070), "BOOLValue"}];

        if (!v11)
        {
          LOBYTE(v3) = 0;
          return v3;
        }
      }

      v4 = [(NSArray *)sourceConfigurations countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

- (id)osStatePropertyList
{
  copyXPCEncoding = [(FigCaptureSessionConfiguration *)self copyXPCEncoding];
  v3 = _CFXPCCreateCFObjectFromXPCObject();
  xpc_release(copyXPCEncoding);

  return v3;
}

uint64_t __54__FigCaptureSessionConfiguration_initWithXPCEncoding___block_invoke_2(uint64_t a1, int a2, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "class");
  if (!string)
  {
    v7 = 0;
    goto LABEL_11;
  }

  Class = objc_getClass(string);
  if (![(objc_class *)Class isSubclassOfClass:objc_opt_class()])
  {
    v7 = 0;
    goto LABEL_8;
  }

  v7 = [[Class alloc] initWithXPCEncoding:xdict];
  if (!v7 || !xpc_dictionary_get_value(xdict, "sourceIndex") || (int64 = xpc_dictionary_get_int64(xdict, "sourceIndex"), int64 >= [*(a1 + 32) count]))
  {
LABEL_11:
    v9 = 0;
    goto LABEL_9;
  }

  [v7 setSourceConfiguration:{objc_msgSend(*(a1 + 32), "objectAtIndexedSubscript:", int64)}];
  [*(*(a1 + 40) + 8) addObject:v7];
LABEL_8:
  v9 = 1;
LABEL_9:

  return v9;
}

- (BOOL)supportsAttachingSessionConfiguration:(id)configuration
{
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  sourceConfigurations = [configuration sourceConfigurations];
  v5 = [sourceConfigurations countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    sourcePosition = 0;
    v9 = *v33;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(sourceConfigurations);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        sourceDeviceType = [v11 sourceDeviceType];
        v13 = sourceDeviceType;
        if (v7)
        {
          if (v7 != sourceDeviceType)
          {
            LOBYTE(v5) = 0;
            return v5;
          }
        }

        else
        {
          sourcePosition = [v11 sourcePosition];
          v7 = v13;
        }

        ++v10;
      }

      while (v6 != v10);
      v5 = [sourceConfigurations countByEnumeratingWithState:&v32 objects:v31 count:16];
      v6 = v5;
    }

    while (v5);
    if (v7)
    {
      if (sourcePosition)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        sourceConfigurations2 = [(FigCaptureSessionConfiguration *)self sourceConfigurations];
        v5 = [(NSArray *)sourceConfigurations2 countByEnumeratingWithState:&v27 objects:v26 count:16];
        if (v5)
        {
          v15 = v5;
          v16 = *v28;
          v24 = @"AttributesDictionary";
          v17 = *MEMORY[0x1E695E480];
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v28 != v16)
              {
                objc_enumerationMutation(sourceConfigurations2);
              }

              v19 = *(*(&v27 + 1) + 8 * i);
              v25 = 0;
              source = [v19 source];
              v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v21)
              {
                v21(source, v24, v17, &v25);
              }

              if ([objc_msgSend(v25 objectForKeyedSubscript:{0x1F21833F0), "BOOLValue"}] && sourcePosition == objc_msgSend(v19, "sourcePosition"))
              {
                IsSubsetOfDeviceType = FigCaptureSourceDeviceTypeIsSubsetOfDeviceType(v7, [v19 sourceDeviceType], objc_msgSend(v19, "sourcePosition"));

                if (IsSubsetOfDeviceType)
                {
                  LOBYTE(v5) = 1;
                  return v5;
                }
              }

              else
              {
              }
            }

            v15 = [(NSArray *)sourceConfigurations2 countByEnumeratingWithState:&v27 objects:v26 count:16];
            LOBYTE(v5) = 0;
          }

          while (v15);
        }
      }
    }
  }

  return v5;
}

- (uint64_t)initWithXPCEncoding:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithXPCEncoding:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t __54__FigCaptureSessionConfiguration_initWithXPCEncoding___block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end