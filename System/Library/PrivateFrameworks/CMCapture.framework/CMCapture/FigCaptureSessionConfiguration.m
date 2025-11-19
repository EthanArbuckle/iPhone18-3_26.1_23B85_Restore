@interface FigCaptureSessionConfiguration
- (BOOL)allCameraSourcesAreMetadataCameras;
- (BOOL)eligibleToAttachToExistingCaptureSession;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsAttachingSessionConfiguration:(id)a3;
- (FigCaptureSessionConfiguration)init;
- (FigCaptureSessionConfiguration)initWithXPCEncoding:(id)a3;
- (NSArray)connectionConfigurations;
- (NSArray)sinkConfigurations;
- (NSArray)sourceConfigurations;
- (NSString)description;
- (id)briefDescription;
- (id)copyWithZone:(_NSZone *)a3;
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
  v2 = [(FigCaptureSessionConfiguration *)self connectionConfigurations];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
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
        objc_enumerationMutation(v2);
      }

      v8 = [*(*(&v11 + 1) + 8 * i) sourceConfiguration];
      if ([v8 sourceType] == 1)
      {
        if ([v8 sourceDeviceType] - 17 > 3)
        {
          return 0;
        }

        v5 = 1;
      }
    }

    v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
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
  v3 = [(FigCaptureSessionConfiguration *)self _descriptionWithoutConnections];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(FigCaptureSessionConfiguration *)self connectionConfigurations];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"\n\t%@", *(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_descriptionWithoutConnections
{
  if (!a1)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@ %p: ID %lld, sdk %llu, %@ multiCam: %d, appAudio: %d, autoConfig: %d, mixesWithOthers: %d, hqBluetooth: %d, runWhileMultitasking: %d, checkIfFileAlreadyExistForMFO: %d autoRunDeferredStart: %d", objc_opt_class(), a1, objc_msgSend(a1, "configurationID"), objc_msgSend(a1, "clientSDKVersionToken"), objc_msgSend(a1, "sessionPreset"), objc_msgSend(a1, "isMultiCamSession"), objc_msgSend(a1, "usesAppAudioSession"), objc_msgSend(a1, "configuresAppAudioSession"), objc_msgSend(a1, "configuresAppAudioSessionToMixWithOthers"), objc_msgSend(a1, "configuresAppAudioSessionForBluetoothHighQualityRecording"), objc_msgSend(a1, "allowedToRunInMultitaskingMode"), objc_msgSend(a1, "checkIfFileAlreadyExistForMFO"), objc_msgSend(a1, "automaticallyRunsDeferredStart")];
  if ([a1 xctestAuthorizedToStealDevice])
  {
    [v2 appendString:{@", xctestSteals: 1"}];
  }

  if ([a1 continuityCameraIsWired])
  {
    [v2 appendString:{@", continuityCameraIsWired: YES"}];
  }

  if ([a1 continuityCameraClientDeviceClass])
  {
    [v2 appendFormat:@", continuityCameraClientDeviceClass: %@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(a1, "continuityCameraClientDeviceClass"))];
  }

  if ([a1 suppressVideoEffects])
  {
    [v2 appendString:{@", suppressVideoEffects: YES"}];
  }

  if ([a1 smartStyleRenderingEnabled])
  {
    [v2 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @", smartStyle:%@ controlMode:%d", objc_msgSend(a1, "smartStyle"), objc_msgSend(a1, "smartStyleControlMode"))}];
  }

  return v2;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "configurationID", [(FigCaptureSessionConfiguration *)self configurationID]);
  xpc_dictionary_set_uint64(v3, "clientSDKVersionTokenKey", [(FigCaptureSessionConfiguration *)self clientSDKVersionToken]);
  xpc_dictionary_set_BOOL(v3, "clientExpectsCameraMountedInLandscapeOrientation", [(FigCaptureSessionConfiguration *)self clientExpectsCameraMountedInLandscapeOrientation]);
  v4 = [(FigCaptureSessionConfiguration *)self sourceConfigurations];
  v5 = xpc_array_create(0, 0);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [(NSArray *)v4 countByEnumeratingWithState:&v34 objects:v33 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v34 + 1) + 8 * i) copyXPCEncoding];
        xpc_array_append_value(v5, v10);
        xpc_release(v10);
      }

      v7 = [(NSArray *)v4 countByEnumeratingWithState:&v34 objects:v33 count:16];
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
  v27 = self;
  v12 = [(FigCaptureSessionConfiguration *)self connectionConfigurations];
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v29 objects:v28 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * j);
        v18 = -[NSArray indexOfObject:](v4, "indexOfObject:", [v17 sourceConfiguration]);
        if (v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = v18;
          v20 = [v17 copyXPCEncoding];
          xpc_dictionary_set_int64(v20, "sourceIndex", v19);
          xpc_array_append_value(v11, v20);
          xpc_release(v20);
        }
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v14);
  }

  xpc_dictionary_set_value(v3, "connections", v11);
  xpc_release(v11);
  v21 = [(FigCaptureSessionConfiguration *)v27 sessionPreset];
  if (v21)
  {
    xpc_dictionary_set_string(v3, "sessionPreset", [(NSString *)v21 UTF8String]);
  }

  xpc_dictionary_set_BOOL(v3, "usesAppAudioSession", [(FigCaptureSessionConfiguration *)v27 usesAppAudioSession]);
  xpc_dictionary_set_BOOL(v3, "configuresAppAudioSession", [(FigCaptureSessionConfiguration *)v27 configuresAppAudioSession]);
  xpc_dictionary_set_BOOL(v3, "configuresAppAudioSessionToMixWithOthers", [(FigCaptureSessionConfiguration *)v27 configuresAppAudioSessionToMixWithOthers]);
  xpc_dictionary_set_BOOL(v3, "configuresAppAudioSessionForBluetoothHighQualityRecording", [(FigCaptureSessionConfiguration *)v27 configuresAppAudioSessionForBluetoothHighQualityRecording]);
  xpc_dictionary_set_BOOL(v3, "allowedToRunInMultitaskingMode", [(FigCaptureSessionConfiguration *)v27 allowedToRunInMultitaskingMode]);
  xpc_dictionary_set_BOOL(v3, "isMultiCamSession", [(FigCaptureSessionConfiguration *)v27 isMultiCamSession]);
  xpc_dictionary_set_BOOL(v3, "xctestAuthorizedToStealDevice", [(FigCaptureSessionConfiguration *)v27 xctestAuthorizedToStealDevice]);
  xpc_dictionary_set_BOOL(v3, "checkIfFileAlreadyExistForMFO", [(FigCaptureSessionConfiguration *)v27 checkIfFileAlreadyExistForMFO]);
  xpc_dictionary_set_BOOL(v3, "continuityCameraIsWired", [(FigCaptureSessionConfiguration *)v27 continuityCameraIsWired]);
  xpc_dictionary_set_int64(v3, "continuityCameraClientDeviceClass", [(FigCaptureSessionConfiguration *)v27 continuityCameraClientDeviceClass]);
  xpc_dictionary_set_BOOL(v3, "clientIsVOIP", [(FigCaptureSessionConfiguration *)v27 clientIsVOIP]);
  xpc_dictionary_set_BOOL(v3, "suppressVideoEffects", [(FigCaptureSessionConfiguration *)v27 suppressVideoEffects]);
  if ([(FigCaptureSessionConfiguration *)v27 tccIdentity])
  {
    [(FigCaptureSessionConfiguration *)v27 tccIdentity];
    v22 = tcc_identity_copy_external_representation();
    v23 = _CFXPCCreateXPCObjectFromCFObject();

    xpc_dictionary_set_value(v3, "tccIdentity", v23);
  }

  xpc_dictionary_set_BOOL(v3, "smartStyleRenderingEnabled", [(FigCaptureSessionConfiguration *)v27 smartStyleRenderingEnabled]);
  xpc_dictionary_set_int64(v3, "smartStyleControlMode", [(FigCaptureSessionConfiguration *)v27 smartStyleControlMode]);
  smartStyle = v27->_smartStyle;
  if (smartStyle)
  {
    v25 = [(FigCaptureSmartStyle *)smartStyle copyXPCEncoding];
    xpc_dictionary_set_value(v3, "smartStyle", v25);
    xpc_release(v25);
  }

  xpc_dictionary_set_BOOL(v3, "automaticallyRunsDeferredStart", [(FigCaptureSessionConfiguration *)v27 automaticallyRunsDeferredStart]);
  return v3;
}

- (NSArray)sourceConfigurations
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](-[FigCaptureSessionConfiguration connectionConfigurations](self, "connectionConfigurations"), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(FigCaptureSessionConfiguration *)self connectionConfigurations];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) sourceConfiguration];
        if (([v3 containsObject:v9] & 1) == 0)
        {
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
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
  v3 = [(FigCaptureSessionConfiguration *)self _descriptionWithoutConnections];
  [v3 appendFormat:@", connections: count = %lu", -[NSArray count](-[FigCaptureSessionConfiguration connectionConfigurations](self, "connectionConfigurations"), "count")];
  return v3;
}

- (NSArray)sinkConfigurations
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](-[FigCaptureSessionConfiguration connectionConfigurations](self, "connectionConfigurations"), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(FigCaptureSessionConfiguration *)self connectionConfigurations];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) sinkConfiguration];
        if (([v3 containsObject:v9] & 1) == 0)
        {
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  return v3;
}

- (FigCaptureSessionConfiguration)initWithXPCEncoding:(id)a3
{
  v3 = self;
  if (!a3)
  {
    [FigCaptureSessionConfiguration initWithXPCEncoding:];
    goto LABEL_15;
  }

  v15.receiver = self;
  v15.super_class = FigCaptureSessionConfiguration;
  v3 = [(FigCaptureSessionConfiguration *)&v15 init];
  if (!v3)
  {
    return v3;
  }

  v3->_configurationID = xpc_dictionary_get_int64(a3, "configurationID");
  v3->_clientSDKVersionToken = xpc_dictionary_get_uint64(a3, "clientSDKVersionTokenKey");
  v3->_clientExpectsCameraMountedInLandscapeOrientation = xpc_dictionary_get_BOOL(a3, "clientExpectsCameraMountedInLandscapeOrientation");
  v5 = [MEMORY[0x1E695DF70] array];
  value = xpc_dictionary_get_value(a3, "sources");
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __54__FigCaptureSessionConfiguration_initWithXPCEncoding___block_invoke;
  applier[3] = &unk_1E798FA38;
  applier[4] = v5;
  if (!xpc_array_apply(value, applier))
  {
    [FigCaptureSessionConfiguration initWithXPCEncoding:];
    goto LABEL_15;
  }

  v3->_connections = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = xpc_dictionary_get_value(a3, "connections");
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__FigCaptureSessionConfiguration_initWithXPCEncoding___block_invoke_2;
  v13[3] = &unk_1E7999950;
  v13[4] = v5;
  v13[5] = v3;
  if (!xpc_array_apply(v7, v13))
  {
LABEL_15:

    return 0;
  }

  string = xpc_dictionary_get_string(a3, "sessionPreset");
  if (string)
  {
    v3->_sessionPreset = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  v3->_usesAppAudioSession = xpc_dictionary_get_BOOL(a3, "usesAppAudioSession");
  v3->_configuresAppAudioSession = xpc_dictionary_get_BOOL(a3, "configuresAppAudioSession");
  v3->_configuresAppAudioSessionToMixWithOthers = xpc_dictionary_get_BOOL(a3, "configuresAppAudioSessionToMixWithOthers");
  v3->_configuresAppAudioSessionForBluetoothHighQualityRecording = xpc_dictionary_get_BOOL(a3, "configuresAppAudioSessionForBluetoothHighQualityRecording");
  v3->_allowedToRunInMultitaskingMode = xpc_dictionary_get_BOOL(a3, "allowedToRunInMultitaskingMode");
  v3->_isMultiCamSession = xpc_dictionary_get_BOOL(a3, "isMultiCamSession");
  v3->_xctestAuthorizedToStealDevice = xpc_dictionary_get_BOOL(a3, "xctestAuthorizedToStealDevice");
  v3->_checkIfFileAlreadyExistForMFO = xpc_dictionary_get_BOOL(a3, "checkIfFileAlreadyExistForMFO");
  v3->_continuityCameraIsWired = xpc_dictionary_get_BOOL(a3, "continuityCameraIsWired");
  v3->_continuityCameraClientDeviceClass = xpc_dictionary_get_int64(a3, "continuityCameraClientDeviceClass");
  v3->_clientIsVOIP = xpc_dictionary_get_BOOL(a3, "clientIsVOIP");
  v3->_suppressVideoEffects = xpc_dictionary_get_BOOL(a3, "suppressVideoEffects");
  if (xpc_dictionary_get_value(a3, "tccIdentity"))
  {
    v9 = _CFXPCCreateCFObjectFromXPCObject();
    v10 = tcc_identity_create_from_external_representation();

    v3->_tccIdentity = v10;
  }

  v3->_smartStyleRenderingEnabled = xpc_dictionary_get_BOOL(a3, "smartStyleRenderingEnabled");
  v3->_smartStyleControlMode = xpc_dictionary_get_int64(a3, "smartStyleControlMode");
  dictionary = xpc_dictionary_get_dictionary(a3, "smartStyle");
  if (dictionary)
  {
    v3->_smartStyle = [[FigCaptureSmartStyle alloc] initWithXPCEncoding:dictionary];
  }

  v3->_automaticallyRunsDeferredStart = xpc_dictionary_get_BOOL(a3, "automaticallyRunsDeferredStart");
  return v3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v7 = [(FigCaptureSessionConfiguration *)self connectionConfigurations];
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) copyWithZone:a3];
        [v5 addConnectionConfiguration:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v9);
  }

  [v5 setAutomaticallyRunsDeferredStart:{-[FigCaptureSessionConfiguration automaticallyRunsDeferredStart](self, "automaticallyRunsDeferredStart")}];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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

  v13 = [(FigCaptureSessionConfiguration *)self configurationID];
  if (v13 != [a3 configurationID])
  {
    goto LABEL_33;
  }

  v14 = [(FigCaptureSessionConfiguration *)self clientSDKVersionToken];
  if (v14 != [a3 clientSDKVersionToken])
  {
    goto LABEL_33;
  }

  v15 = -[NSString isEqual:](-[FigCaptureSessionConfiguration sessionPreset](self, "sessionPreset"), "isEqual:", [a3 sessionPreset]);
  if (!v15)
  {
    return v15;
  }

  v16 = [(FigCaptureSessionConfiguration *)self usesAppAudioSession];
  if (v16 != [a3 usesAppAudioSession] || (v17 = -[FigCaptureSessionConfiguration configuresAppAudioSession](self, "configuresAppAudioSession"), v17 != objc_msgSend(a3, "configuresAppAudioSession")) || (v18 = -[FigCaptureSessionConfiguration configuresAppAudioSessionToMixWithOthers](self, "configuresAppAudioSessionToMixWithOthers"), v18 != objc_msgSend(a3, "configuresAppAudioSessionToMixWithOthers")) || (v19 = -[FigCaptureSessionConfiguration configuresAppAudioSessionForBluetoothHighQualityRecording](self, "configuresAppAudioSessionForBluetoothHighQualityRecording"), v19 != objc_msgSend(a3, "configuresAppAudioSessionForBluetoothHighQualityRecording")) || (v20 = -[FigCaptureSessionConfiguration allowedToRunInMultitaskingMode](self, "allowedToRunInMultitaskingMode"), v20 != objc_msgSend(a3, "allowedToRunInMultitaskingMode")) || (v21 = -[FigCaptureSessionConfiguration isMultiCamSession](self, "isMultiCamSession"), v21 != objc_msgSend(a3, "isMultiCamSession")) || (v22 = -[FigCaptureSessionConfiguration xctestAuthorizedToStealDevice](self, "xctestAuthorizedToStealDevice"), v22 != objc_msgSend(a3, "xctestAuthorizedToStealDevice")) || (v23 = -[FigCaptureSessionConfiguration clientExpectsCameraMountedInLandscapeOrientation](self, "clientExpectsCameraMountedInLandscapeOrientation"), v23 != objc_msgSend(a3, "clientExpectsCameraMountedInLandscapeOrientation")) || (v24 = -[FigCaptureSessionConfiguration smartStyleRenderingEnabled](self, "smartStyleRenderingEnabled"), v24 != objc_msgSend(a3, "smartStyleRenderingEnabled")) || (v25 = -[FigCaptureSessionConfiguration smartStyleControlMode](self, "smartStyleControlMode"), v25 != objc_msgSend(a3, "smartStyleControlMode")))
  {
LABEL_33:
    LOBYTE(v15) = 0;
    return v15;
  }

  v26 = [(FigCaptureSessionConfiguration *)self smartStyle];
  if (v26 == [a3 smartStyle] || (v15 = -[FigCaptureSmartStyle isEqual:](-[FigCaptureSessionConfiguration smartStyle](self, "smartStyle"), "isEqual:", objc_msgSend(a3, "smartStyle"))) != 0)
  {
    v27 = [(FigCaptureSessionConfiguration *)self connectionConfigurations:v8];
    if (v27 == [a3 connectionConfigurations] || (v15 = -[NSArray isEqual:](-[FigCaptureSessionConfiguration connectionConfigurations](self, "connectionConfigurations"), "isEqual:", objc_msgSend(a3, "connectionConfigurations"))) != 0)
    {
      v28 = [(FigCaptureSessionConfiguration *)self continuityCameraIsWired];
      if (v28 != [a3 continuityCameraIsWired])
      {
        goto LABEL_33;
      }

      v29 = [(FigCaptureSessionConfiguration *)self continuityCameraClientDeviceClass];
      if (v29 != [a3 continuityCameraClientDeviceClass])
      {
        goto LABEL_33;
      }

      v30 = [(FigCaptureSessionConfiguration *)self clientIsVOIP];
      if (v30 != [a3 clientIsVOIP])
      {
        goto LABEL_33;
      }

      v31 = [(FigCaptureSessionConfiguration *)self suppressVideoEffects];
      if (v31 != [a3 suppressVideoEffects])
      {
        goto LABEL_33;
      }

      if (self->_tccIdentity)
      {
        if ([a3 tccIdentity])
        {
          v32 = MEMORY[0x1E696AEC0];
          [(FigCaptureSessionConfiguration *)self tccIdentity];
          v33 = [v32 stringWithUTF8String:tcc_identity_get_identifier()];
          [(FigCaptureSessionConfiguration *)self tccIdentity];
          type = tcc_identity_get_type();
          v35 = MEMORY[0x1E696AEC0];
          [a3 tccIdentity];
          v36 = [v35 stringWithUTF8String:tcc_identity_get_identifier()];
          [a3 tccIdentity];
          v37 = tcc_identity_get_type();
          v38 = [v33 isEqualToString:v36];
          LOBYTE(v15) = 0;
          if (!v38 || type != v37)
          {
            return v15;
          }

LABEL_32:
          v39 = [(FigCaptureSessionConfiguration *)self checkIfFileAlreadyExistForMFO];
          if (v39 == [a3 checkIfFileAlreadyExistForMFO])
          {
            v40 = [(FigCaptureSessionConfiguration *)self automaticallyRunsDeferredStart];
            LOBYTE(v15) = v40 ^ [a3 automaticallyRunsDeferredStart] ^ 1;
            return v15;
          }

          goto LABEL_33;
        }

        if (self->_tccIdentity)
        {
          goto LABEL_33;
        }
      }

      if ([a3 tccIdentity])
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
  v2 = [(FigCaptureSessionConfiguration *)self sourceConfigurations];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v15 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v13 = 0;
        v9 = [v8 source];
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v10)
        {
          v10(v9, @"AttributesDictionary", v6, &v13);
        }

        v11 = [objc_msgSend(v13 objectForKeyedSubscript:{0x1F21A0070), "BOOLValue"}];

        if (!v11)
        {
          LOBYTE(v3) = 0;
          return v3;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v15 objects:v14 count:16];
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
  v2 = [(FigCaptureSessionConfiguration *)self copyXPCEncoding];
  v3 = _CFXPCCreateCFObjectFromXPCObject();
  xpc_release(v2);

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

- (BOOL)supportsAttachingSessionConfiguration:(id)a3
{
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [a3 sourceConfigurations];
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v33;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        v12 = [v11 sourceDeviceType];
        v13 = v12;
        if (v7)
        {
          if (v7 != v12)
          {
            LOBYTE(v5) = 0;
            return v5;
          }
        }

        else
        {
          v8 = [v11 sourcePosition];
          v7 = v13;
        }

        ++v10;
      }

      while (v6 != v10);
      v5 = [v4 countByEnumeratingWithState:&v32 objects:v31 count:16];
      v6 = v5;
    }

    while (v5);
    if (v7)
    {
      if (v8)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v14 = [(FigCaptureSessionConfiguration *)self sourceConfigurations];
        v5 = [(NSArray *)v14 countByEnumeratingWithState:&v27 objects:v26 count:16];
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
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v27 + 1) + 8 * i);
              v25 = 0;
              v20 = [v19 source];
              v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v21)
              {
                v21(v20, v24, v17, &v25);
              }

              if ([objc_msgSend(v25 objectForKeyedSubscript:{0x1F21833F0), "BOOLValue"}] && v8 == objc_msgSend(v19, "sourcePosition"))
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

            v15 = [(NSArray *)v14 countByEnumeratingWithState:&v27 objects:v26 count:16];
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