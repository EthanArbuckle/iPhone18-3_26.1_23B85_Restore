@interface FigMetadataObjectCaptureConnectionConfiguration
- (BOOL)isEqual:(id)a3;
- (CGRect)metadataRectOfInterest;
- (FigMetadataObjectCaptureConnectionConfiguration)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)description;
- (void)dealloc;
@end

@implementation FigMetadataObjectCaptureConnectionConfiguration

- (CGRect)metadataRectOfInterest
{
  x = self->_metadataRectOfInterest.origin.x;
  y = self->_metadataRectOfInterest.origin.y;
  width = self->_metadataRectOfInterest.size.width;
  height = self->_metadataRectOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v3 = [(FigCaptureConnectionConfiguration *)self underlyingDeviceType];
  if (v3 == [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] sourceDeviceType])
  {
    v41 = &stru_1F216A3D0;
  }

  else
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (SUB-DEVICE:%@)", +[FigCaptureSourceConfiguration stringForSourceDeviceType:](FigCaptureSourceConfiguration, "stringForSourceDeviceType:", -[FigCaptureConnectionConfiguration underlyingDeviceType](self, "underlyingDeviceType"))];
  }

  v4 = [(FigMetadataObjectCaptureConnectionConfiguration *)self metadataIdentifiers];
  v5 = *MEMORY[0x1E6960388];
  if ([(NSArray *)v4 containsObject:*MEMORY[0x1E6960388]])
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@", attention:%d", self->_attentionDetectionEnabled];
  }

  else
  {
    v40 = &stru_1F216A3D0;
  }

  v6 = [(FigMetadataObjectCaptureConnectionConfiguration *)self metadataIdentifiers];
  v7 = *off_1E798D130;
  if ([(NSArray *)v6 containsObject:*off_1E798D130])
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@", periocular:%d, attention:%d", self->_periocularForFaceIDReadinessEnabled, self->_attentionForFaceIDReadinessRequired];
  }

  else
  {
    v39 = &stru_1F216A3D0;
  }

  if ([(NSArray *)[(FigMetadataObjectCaptureConnectionConfiguration *)self metadataIdentifiers] containsObject:v5])
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@", occlusionDetection:%d", self->_faceOcclusionDetectionEnabled];
  }

  else
  {
    v38 = &stru_1F216A3D0;
  }

  v8 = [MEMORY[0x1E696AD60] string];
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v10 = [(FigMetadataObjectCaptureConnectionConfiguration *)self metadataIdentifiers];
  v11 = *off_1E798D140;
  v37 = v9;
  if ([(NSArray *)v10 containsObject:*off_1E798D140]&& (motionToWakeTargetFrameRate = self->_motionToWakeTargetFrameRate, motionToWakeTargetFrameRate > 0.0))
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@", motionToWakeTargetFrameRate:%.2f", motionToWakeTargetFrameRate];
  }

  else
  {
    v36 = &stru_1F216A3D0;
  }

  v35 = [MEMORY[0x1E696AD60] string];
  v13 = *off_1E798D0E0;
  v47[0] = v5;
  v47[1] = v13;
  v48[0] = @"face";
  v48[1] = @"head";
  v14 = *MEMORY[0x1E6960390];
  v47[2] = *off_1E798D0D8;
  v47[3] = v14;
  v48[2] = @"hand";
  v48[3] = @"body";
  v15 = *MEMORY[0x1E6960368];
  v47[4] = *off_1E798D0D0;
  v47[5] = v15;
  v48[4] = @"fullBody";
  v48[5] = @"cat";
  v16 = *MEMORY[0x1E6960378];
  v47[6] = *MEMORY[0x1E6960370];
  v47[7] = v16;
  v48[6] = @"catHead";
  v48[7] = @"dog";
  v17 = *MEMORY[0x1E6960398];
  v47[8] = *MEMORY[0x1E6960380];
  v47[9] = v17;
  v48[8] = @"dogHead";
  v48[9] = @"salientObject";
  v18 = *MEMORY[0x1E69629E8];
  v19 = *off_1E798D128;
  v47[10] = *MEMORY[0x1E69629E8];
  v47[11] = v19;
  v48[10] = @"trackedFaces";
  v48[11] = @"eyeRelief";
  v47[12] = v7;
  v47[13] = v11;
  v48[12] = @"faceIDReadiness";
  v48[13] = @"motionToWake";
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:14];
  v21 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v22 = [(FigMetadataObjectCaptureConnectionConfiguration *)self metadataIdentifiers];
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v43 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v44;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v43 + 1) + 8 * i);
        if ([v20 objectForKeyedSubscript:v27])
        {
          v28 = [v20 objectForKeyedSubscript:v27];
        }

        else
        {
          v28 = v27;
        }

        [v21 appendString:v28];
        if (v27 != [(NSArray *)[(FigMetadataObjectCaptureConnectionConfiguration *)self metadataIdentifiers] lastObject])
        {
          [v21 appendString:{@", "}];
        }
      }

      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v43 objects:v42 count:16];
    }

    while (v24);
  }

  objectDetectionTargetFrameRate = self->_objectDetectionTargetFrameRate;
  if (objectDetectionTargetFrameRate > 0.0)
  {
    [v21 appendFormat:@", targetFrameRate:%.2f", objectDetectionTargetFrameRate];
  }

  if ([(NSArray *)[(FigMetadataObjectCaptureConnectionConfiguration *)self metadataIdentifiers] count])
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@", roi:{{%.2f, %.2f}{%.2fx%.2f}}", *&self->_metadataRectOfInterest.origin.x, *&self->_metadataRectOfInterest.origin.y, *&self->_metadataRectOfInterest.size.width, *&self->_metadataRectOfInterest.size.height];
  }

  else
  {
    v30 = &stru_1F216A3D0;
  }

  if ([(NSArray *)[(FigMetadataObjectCaptureConnectionConfiguration *)self metadataIdentifiers] count])
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@", attachMetadataToVideoBuffers:%d", self->_attachMetadataToVideoBuffers];
  }

  else
  {
    v31 = &stru_1F216A3D0;
  }

  if ([(NSArray *)[(FigMetadataObjectCaptureConnectionConfiguration *)self metadataIdentifiers] containsObject:v18])
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@", faceTracking:{MaxFaces:%d, UsesFaceRecognition:%d, Plus:%d, FailureThresholdMultiplier:%.2f, FailureFOVModifier:%.2f, Suspended: %d}", self->_faceTrackingMaxFaces, self->_faceTrackingUsesFaceRecognition, self->_faceTrackingPlusEnabled, self->_faceTrackingNetworkFailureThresholdMultiplier, self->_faceTrackingFailureFieldOfViewModifier, self->_faceTrackingSuspended];
  }

  else
  {
    v32 = &stru_1F216A3D0;
  }

  if ([(NSArray *)[(FigMetadataObjectCaptureConnectionConfiguration *)self metadataIdentifiers] count])
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@", emitsEmptyMetadata:%d", self->_emitsEmptyObjectDetectionMetadata];
  }

  else
  {
    v33 = &stru_1F216A3D0;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"MOC %p: <%@>%@ -> <%@> E:%d MetadataIdentifiers:{%@}%@%@%@%@%@%@%@%@%@%@%@%@", self, -[FigCaptureConnectionConfiguration sourceConfiguration](self, "sourceConfiguration"), v41, -[FigCaptureConnectionConfiguration sinkConfiguration](self, "sinkConfiguration"), -[FigCaptureConnectionConfiguration enabled](self, "enabled"), v21, v30, v31, v32, v40, v39, v38, &stru_1F216A3D0, v37, v33, v36, v35, v8];
}

- (id)copyXPCEncoding
{
  v6.receiver = self;
  v6.super_class = FigMetadataObjectCaptureConnectionConfiguration;
  v3 = [(FigCaptureConnectionConfiguration *)&v6 copyXPCEncoding];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(self->_metadataRectOfInterest);
  FigXPCMessageSetCFArray();
  FigXPCMessageSetCFDictionary();
  xpc_dictionary_set_int64(v3, "faceTrackingMaxFaces", self->_faceTrackingMaxFaces);
  xpc_dictionary_set_BOOL(v3, "faceTrackingUsesFaceRecognition", self->_faceTrackingUsesFaceRecognition);
  xpc_dictionary_set_BOOL(v3, "faceTrackingPlusEnabled", self->_faceTrackingPlusEnabled);
  xpc_dictionary_set_BOOL(v3, "faceTrackingSuspended", self->_faceTrackingSuspended);
  xpc_dictionary_set_double(v3, "faceTrackingNetworkFailureThresholdMultiplier", self->_faceTrackingNetworkFailureThresholdMultiplier);
  xpc_dictionary_set_double(v3, "faceTrackingFailureFieldOfViewModifier", self->_faceTrackingFailureFieldOfViewModifier);
  xpc_dictionary_set_BOOL(v3, "attentionDetectionEnabled", self->_attentionDetectionEnabled);
  xpc_dictionary_set_BOOL(v3, "periocularForFaceIDReadinessEnabled", self->_periocularForFaceIDReadinessEnabled);
  xpc_dictionary_set_BOOL(v3, "attentionForFaceIDReadinessRequired", self->_attentionForFaceIDReadinessRequired);
  xpc_dictionary_set_BOOL(v3, "faceOcclusionDetectionEnabled", self->_faceOcclusionDetectionEnabled);
  xpc_dictionary_set_double(v3, "motionToWakeTargetFrameRate", self->_motionToWakeTargetFrameRate);
  xpc_dictionary_set_double(v3, "objectDetectionTargetFrameRate", self->_objectDetectionTargetFrameRate);
  xpc_dictionary_set_BOOL(v3, "attachMetadataToVideoBuffers", [(FigMetadataObjectCaptureConnectionConfiguration *)self attachMetadataToVideoBuffers]);
  xpc_dictionary_set_BOOL(v3, "emitsEmptyObjectDetectionMetadata", [(FigMetadataObjectCaptureConnectionConfiguration *)self emitsEmptyObjectDetectionMetadata]);
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigMetadataObjectCaptureConnectionConfiguration;
  [(FigCaptureConnectionConfiguration *)&v3 dealloc];
}

- (FigMetadataObjectCaptureConnectionConfiguration)initWithXPCEncoding:(id)a3
{
  if (a3)
  {
    v10.receiver = self;
    v10.super_class = FigMetadataObjectCaptureConnectionConfiguration;
    v4 = [(FigCaptureConnectionConfiguration *)&v10 initWithXPCEncoding:?];
    if (v4)
    {
      FigXPCMessageCopyCFArray();
      FigXPCMessageCopyCFDictionary();
      CGRectMakeWithDictionaryRepresentation(0, &v4->_metadataRectOfInterest);
      v4->_faceTrackingMaxFaces = xpc_dictionary_get_int64(a3, "faceTrackingMaxFaces");
      v4->_faceTrackingUsesFaceRecognition = xpc_dictionary_get_BOOL(a3, "faceTrackingUsesFaceRecognition");
      v4->_faceTrackingPlusEnabled = xpc_dictionary_get_BOOL(a3, "faceTrackingPlusEnabled");
      v4->_faceTrackingSuspended = xpc_dictionary_get_BOOL(a3, "faceTrackingSuspended");
      v5 = xpc_dictionary_get_double(a3, "faceTrackingNetworkFailureThresholdMultiplier");
      v4->_faceTrackingNetworkFailureThresholdMultiplier = v5;
      v6 = xpc_dictionary_get_double(a3, "faceTrackingFailureFieldOfViewModifier");
      v4->_faceTrackingFailureFieldOfViewModifier = v6;
      v4->_attentionDetectionEnabled = xpc_dictionary_get_BOOL(a3, "attentionDetectionEnabled");
      v4->_periocularForFaceIDReadinessEnabled = xpc_dictionary_get_BOOL(a3, "periocularForFaceIDReadinessEnabled");
      v4->_attentionForFaceIDReadinessRequired = xpc_dictionary_get_BOOL(a3, "attentionForFaceIDReadinessRequired");
      v4->_faceOcclusionDetectionEnabled = xpc_dictionary_get_BOOL(a3, "faceOcclusionDetectionEnabled");
      v7 = xpc_dictionary_get_double(a3, "motionToWakeTargetFrameRate");
      v4->_motionToWakeTargetFrameRate = v7;
      v8 = xpc_dictionary_get_double(a3, "objectDetectionTargetFrameRate");
      v4->_objectDetectionTargetFrameRate = v8;
      v4->_attachMetadataToVideoBuffers = xpc_dictionary_get_BOOL(a3, "attachMetadataToVideoBuffers");
      v4->_emitsEmptyObjectDetectionMetadata = xpc_dictionary_get_BOOL(a3, "emitsEmptyObjectDetectionMetadata");
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = FigMetadataObjectCaptureConnectionConfiguration;
  v4 = [(FigCaptureConnectionConfiguration *)&v6 copyWithZone:a3];
  [v4 setMetadataIdentifiers:{-[FigMetadataObjectCaptureConnectionConfiguration metadataIdentifiers](self, "metadataIdentifiers")}];
  [(FigMetadataObjectCaptureConnectionConfiguration *)self metadataRectOfInterest];
  [v4 setMetadataRectOfInterest:?];
  [v4 setFaceTrackingMaxFaces:{-[FigMetadataObjectCaptureConnectionConfiguration faceTrackingMaxFaces](self, "faceTrackingMaxFaces")}];
  [v4 setFaceTrackingUsesFaceRecognition:{-[FigMetadataObjectCaptureConnectionConfiguration faceTrackingUsesFaceRecognition](self, "faceTrackingUsesFaceRecognition")}];
  [v4 setFaceTrackingPlusEnabled:{-[FigMetadataObjectCaptureConnectionConfiguration faceTrackingPlusEnabled](self, "faceTrackingPlusEnabled")}];
  [v4 setFaceTrackingSuspended:{-[FigMetadataObjectCaptureConnectionConfiguration faceTrackingSuspended](self, "faceTrackingSuspended")}];
  [(FigMetadataObjectCaptureConnectionConfiguration *)self faceTrackingNetworkFailureThresholdMultiplier];
  [v4 setFaceTrackingNetworkFailureThresholdMultiplier:?];
  [(FigMetadataObjectCaptureConnectionConfiguration *)self faceTrackingFailureFieldOfViewModifier];
  [v4 setFaceTrackingFailureFieldOfViewModifier:?];
  [v4 setAttentionDetectionEnabled:{-[FigMetadataObjectCaptureConnectionConfiguration attentionDetectionEnabled](self, "attentionDetectionEnabled")}];
  [v4 setPeriocularForFaceIDReadinessEnabled:{-[FigMetadataObjectCaptureConnectionConfiguration periocularForFaceIDReadinessEnabled](self, "periocularForFaceIDReadinessEnabled")}];
  [v4 setAttentionForFaceIDReadinessRequired:{-[FigMetadataObjectCaptureConnectionConfiguration attentionForFaceIDReadinessRequired](self, "attentionForFaceIDReadinessRequired")}];
  [v4 setFaceOcclusionDetectionEnabled:{-[FigMetadataObjectCaptureConnectionConfiguration faceOcclusionDetectionEnabled](self, "faceOcclusionDetectionEnabled")}];
  [(FigMetadataObjectCaptureConnectionConfiguration *)self motionToWakeTargetFrameRate];
  [v4 setMotionToWakeTargetFrameRate:?];
  [(FigMetadataObjectCaptureConnectionConfiguration *)self objectDetectionTargetFrameRate];
  [v4 setObjectDetectionTargetFrameRate:?];
  [v4 setAttachMetadataToVideoBuffers:{-[FigMetadataObjectCaptureConnectionConfiguration attachMetadataToVideoBuffers](self, "attachMetadataToVideoBuffers")}];
  [v4 setEmitsEmptyObjectDetectionMetadata:{-[FigMetadataObjectCaptureConnectionConfiguration emitsEmptyObjectDetectionMetadata](self, "emitsEmptyObjectDetectionMetadata")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v42.receiver = self;
  v42.super_class = FigMetadataObjectCaptureConnectionConfiguration;
  v5 = [(FigCaptureConnectionConfiguration *)&v42 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    v6 = [(FigMetadataObjectCaptureConnectionConfiguration *)self metadataIdentifiers];
    if (v6 == [a3 metadataIdentifiers] || (v5 = -[NSArray isEqual:](-[FigMetadataObjectCaptureConnectionConfiguration metadataIdentifiers](self, "metadataIdentifiers"), "isEqual:", objc_msgSend(a3, "metadataIdentifiers"))) != 0)
    {
      [(FigMetadataObjectCaptureConnectionConfiguration *)self metadataRectOfInterest];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [a3 metadataRectOfInterest];
      v44.origin.x = v15;
      v44.origin.y = v16;
      v44.size.width = v17;
      v44.size.height = v18;
      v43.origin.x = v8;
      v43.origin.y = v10;
      v43.size.width = v12;
      v43.size.height = v14;
      v5 = CGRectEqualToRect(v43, v44);
      if (v5)
      {
        v19 = [(FigMetadataObjectCaptureConnectionConfiguration *)self faceTrackingMaxFaces];
        if (v19 != [a3 faceTrackingMaxFaces])
        {
          goto LABEL_19;
        }

        v20 = [(FigMetadataObjectCaptureConnectionConfiguration *)self faceTrackingUsesFaceRecognition];
        if (v20 != [a3 faceTrackingUsesFaceRecognition])
        {
          goto LABEL_19;
        }

        v21 = [(FigMetadataObjectCaptureConnectionConfiguration *)self faceTrackingPlusEnabled];
        if (v21 != [a3 faceTrackingPlusEnabled])
        {
          goto LABEL_19;
        }

        v22 = [(FigMetadataObjectCaptureConnectionConfiguration *)self faceTrackingSuspended];
        if (v22 != [a3 faceTrackingSuspended])
        {
          goto LABEL_19;
        }

        [(FigMetadataObjectCaptureConnectionConfiguration *)self faceTrackingNetworkFailureThresholdMultiplier];
        v24 = v23;
        [a3 faceTrackingNetworkFailureThresholdMultiplier];
        if (v24 != v25)
        {
          goto LABEL_19;
        }

        [(FigMetadataObjectCaptureConnectionConfiguration *)self faceTrackingFailureFieldOfViewModifier];
        v27 = v26;
        [a3 faceTrackingFailureFieldOfViewModifier];
        if (v27 != v28)
        {
          goto LABEL_19;
        }

        v29 = [(FigMetadataObjectCaptureConnectionConfiguration *)self attentionDetectionEnabled];
        if (v29 != [a3 attentionDetectionEnabled])
        {
          goto LABEL_19;
        }

        v30 = [(FigMetadataObjectCaptureConnectionConfiguration *)self periocularForFaceIDReadinessEnabled];
        if (v30 != [a3 periocularForFaceIDReadinessEnabled])
        {
          goto LABEL_19;
        }

        v31 = [(FigMetadataObjectCaptureConnectionConfiguration *)self attentionForFaceIDReadinessRequired];
        if (v31 != [a3 attentionForFaceIDReadinessRequired])
        {
          goto LABEL_19;
        }

        v32 = [(FigMetadataObjectCaptureConnectionConfiguration *)self faceOcclusionDetectionEnabled];
        if (v32 != [a3 faceOcclusionDetectionEnabled])
        {
          goto LABEL_19;
        }

        [(FigMetadataObjectCaptureConnectionConfiguration *)self motionToWakeTargetFrameRate];
        v34 = v33;
        [a3 motionToWakeTargetFrameRate];
        if (v34 != v35)
        {
          goto LABEL_19;
        }

        [(FigMetadataObjectCaptureConnectionConfiguration *)self objectDetectionTargetFrameRate];
        v37 = v36;
        [a3 objectDetectionTargetFrameRate];
        if (v37 != v38)
        {
          goto LABEL_19;
        }

        v39 = [(FigMetadataObjectCaptureConnectionConfiguration *)self attachMetadataToVideoBuffers];
        if (v39 != [a3 attachMetadataToVideoBuffers])
        {
          goto LABEL_19;
        }

        v40 = [(FigMetadataObjectCaptureConnectionConfiguration *)self emitsEmptyObjectDetectionMetadata];
        LOBYTE(v5) = v40 ^ [a3 emitsEmptyObjectDetectionMetadata] ^ 1;
      }
    }
  }

  return v5;
}

@end