@interface FigCaptureVideoDataSinkConfiguration
- (BOOL)isEqual:(id)a3;
- (FigCaptureTrie)requestedBufferAttachmentsTrie;
- (FigCaptureVideoDataSinkConfiguration)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)description;
- (void)dealloc;
- (void)setRequestedBufferAttachments:(id)a3;
@end

@implementation FigCaptureVideoDataSinkConfiguration

- (FigCaptureVideoDataSinkConfiguration)initWithXPCEncoding:(id)a3
{
  v7.receiver = self;
  v7.super_class = FigCaptureVideoDataSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v7 initWithXPCEncoding:?];
  if (v4)
  {
    *(&v4->super._deferredStartEnabled + 1) = xpc_dictionary_get_BOOL(a3, "videoDataDiscardsLateVideoFrames");
    *(&v4->super._deferredStartEnabled + 2) = xpc_dictionary_get_BOOL(a3, "videoDataOptimizedForPreview");
    *(&v4->super._deferredStartEnabled + 3) = xpc_dictionary_get_BOOL(a3, "sceneStabilityMetadataEnabled");
    xpc_dictionary_get_array(a3, "requestedBufferAttachments");
    *&v4->_discardsLateVideoFrames = _CFXPCCreateCFObjectFromXPCObject();
    v5 = xpc_dictionary_get_BOOL(a3, "cinematicFramingSupported");
    LOBYTE(v4->_requestedBufferAttachmentsTrie) = v5;
    if (v5)
    {
      BYTE1(v4->_requestedBufferAttachmentsTrie) = xpc_dictionary_get_BOOL(a3, "cinematicFramingEnabled");
    }

    BYTE2(v4->_requestedBufferAttachmentsTrie) = xpc_dictionary_get_BOOL(a3, "temporalFilterLowLightBandingMitigationEnabled");
    BYTE3(v4->_requestedBufferAttachmentsTrie) = xpc_dictionary_get_BOOL(a3, "preparesCellularRadioForNetworkConnection;");
    BYTE4(v4->_requestedBufferAttachmentsTrie) = xpc_dictionary_get_BOOL(a3, "preservesDynamicHDRMetadata");
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureVideoDataSinkConfiguration;
  [(FigCaptureSinkConfiguration *)&v3 dealloc];
}

- (id)copyXPCEncoding
{
  v7.receiver = self;
  v7.super_class = FigCaptureVideoDataSinkConfiguration;
  v3 = [(FigCaptureSinkConfiguration *)&v7 copyXPCEncoding];
  xpc_dictionary_set_BOOL(v3, "videoDataDiscardsLateVideoFrames", [(FigCaptureVideoDataSinkConfiguration *)self discardsLateVideoFrames]);
  xpc_dictionary_set_BOOL(v3, "videoDataOptimizedForPreview", [(FigCaptureVideoDataSinkConfiguration *)self optimizedForPreview]);
  xpc_dictionary_set_BOOL(v3, "sceneStabilityMetadataEnabled", [(FigCaptureVideoDataSinkConfiguration *)self sceneStabilityMetadataEnabled]);
  [(FigCaptureVideoDataSinkConfiguration *)self requestedBufferAttachments];
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_value(v3, "requestedBufferAttachments", v4);
    xpc_release(v5);
  }

  xpc_dictionary_set_BOOL(v3, "cinematicFramingSupported", [(FigCaptureVideoDataSinkConfiguration *)self cinematicFramingSupported]);
  if ([(FigCaptureVideoDataSinkConfiguration *)self cinematicFramingSupported])
  {
    xpc_dictionary_set_BOOL(v3, "cinematicFramingEnabled", [(FigCaptureVideoDataSinkConfiguration *)self cinematicFramingEnabled]);
  }

  xpc_dictionary_set_BOOL(v3, "temporalFilterLowLightBandingMitigationEnabled", [(FigCaptureVideoDataSinkConfiguration *)self temporalFilterLowLightBandingMitigationEnabled]);
  xpc_dictionary_set_BOOL(v3, "preparesCellularRadioForNetworkConnection;", [(FigCaptureVideoDataSinkConfiguration *)self preparesCellularRadioForNetworkConnection]);
  xpc_dictionary_set_BOOL(v3, "preservesDynamicHDRMetadata", [(FigCaptureVideoDataSinkConfiguration *)self preservesDynamicHDRMetadata]);
  return v3;
}

- (id)description
{
  if ([(FigCaptureVideoDataSinkConfiguration *)self preparesCellularRadioForNetworkConnection])
  {
    v3 = @", preparesCellularRadio:1";
  }

  else
  {
    v3 = &stru_1F216A3D0;
  }

  if ([(FigCaptureVideoDataSinkConfiguration *)self preservesDynamicHDRMetadata])
  {
    v4 = @", HDRMetadata:1";
  }

  else
  {
    v4 = &stru_1F216A3D0;
  }

  v6.receiver = self;
  v6.super_class = FigCaptureVideoDataSinkConfiguration;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ discards:%d, preview:%d, stability:%d, requestedBufferAttachments.count:%d%@%@", -[FigCaptureSinkConfiguration description](&v6, sel_description), -[FigCaptureVideoDataSinkConfiguration discardsLateVideoFrames](self, "discardsLateVideoFrames"), -[FigCaptureVideoDataSinkConfiguration optimizedForPreview](self, "optimizedForPreview"), -[FigCaptureVideoDataSinkConfiguration sceneStabilityMetadataEnabled](self, "sceneStabilityMetadataEnabled"), -[NSArray count](-[FigCaptureVideoDataSinkConfiguration requestedBufferAttachments](self, "requestedBufferAttachments"), "count"), v3, v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = FigCaptureVideoDataSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 copyWithZone:a3];
  [v4 setDiscardsLateVideoFrames:{-[FigCaptureVideoDataSinkConfiguration discardsLateVideoFrames](self, "discardsLateVideoFrames")}];
  [v4 setOptimizedForPreview:{-[FigCaptureVideoDataSinkConfiguration optimizedForPreview](self, "optimizedForPreview")}];
  [v4 setSceneStabilityMetadataEnabled:{-[FigCaptureVideoDataSinkConfiguration sceneStabilityMetadataEnabled](self, "sceneStabilityMetadataEnabled")}];
  [v4 setRequestedBufferAttachments:{-[FigCaptureVideoDataSinkConfiguration requestedBufferAttachments](self, "requestedBufferAttachments")}];
  [v4 setCinematicFramingSupported:{-[FigCaptureVideoDataSinkConfiguration cinematicFramingSupported](self, "cinematicFramingSupported")}];
  [v4 setCinematicFramingEnabled:{-[FigCaptureVideoDataSinkConfiguration cinematicFramingEnabled](self, "cinematicFramingEnabled")}];
  [v4 setTemporalFilterLowLightBandingMitigationEnabled:{-[FigCaptureVideoDataSinkConfiguration temporalFilterLowLightBandingMitigationEnabled](self, "temporalFilterLowLightBandingMitigationEnabled")}];
  [v4 setPreparesCellularRadioForNetworkConnection:{-[FigCaptureVideoDataSinkConfiguration preparesCellularRadioForNetworkConnection](self, "preparesCellularRadioForNetworkConnection")}];
  [v4 setPreservesDynamicHDRMetadata:{-[FigCaptureVideoDataSinkConfiguration preservesDynamicHDRMetadata](self, "preservesDynamicHDRMetadata")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v16.receiver = self;
  v16.super_class = FigCaptureVideoDataSinkConfiguration;
  v5 = [(FigCaptureSinkConfiguration *)&v16 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v6 = -[FigCaptureVideoDataSinkConfiguration discardsLateVideoFrames](self, "discardsLateVideoFrames"), v6 != [a3 discardsLateVideoFrames]) || (v7 = -[FigCaptureVideoDataSinkConfiguration optimizedForPreview](self, "optimizedForPreview"), v7 != objc_msgSend(a3, "optimizedForPreview")) || (v8 = -[FigCaptureVideoDataSinkConfiguration sceneStabilityMetadataEnabled](self, "sceneStabilityMetadataEnabled"), v8 != objc_msgSend(a3, "sceneStabilityMetadataEnabled")))
    {
LABEL_13:
      LOBYTE(v5) = 0;
      return v5;
    }

    v9 = [(FigCaptureVideoDataSinkConfiguration *)self requestedBufferAttachments];
    if (v9 == [a3 requestedBufferAttachments] || (v5 = -[NSArray isEqual:](-[FigCaptureVideoDataSinkConfiguration requestedBufferAttachments](self, "requestedBufferAttachments"), "isEqual:", objc_msgSend(a3, "requestedBufferAttachments"))) != 0)
    {
      v10 = [(FigCaptureVideoDataSinkConfiguration *)self cinematicFramingSupported];
      if (v10 != [a3 cinematicFramingSupported])
      {
        goto LABEL_13;
      }

      if ([(FigCaptureVideoDataSinkConfiguration *)self cinematicFramingSupported])
      {
        v11 = [(FigCaptureVideoDataSinkConfiguration *)self cinematicFramingEnabled];
        if (v11 != [a3 cinematicFramingEnabled])
        {
          goto LABEL_13;
        }
      }

      v12 = [(FigCaptureVideoDataSinkConfiguration *)self temporalFilterLowLightBandingMitigationEnabled];
      if (v12 != [a3 temporalFilterLowLightBandingMitigationEnabled])
      {
        goto LABEL_13;
      }

      v13 = [(FigCaptureVideoDataSinkConfiguration *)self preparesCellularRadioForNetworkConnection];
      if (v13 != [a3 preparesCellularRadioForNetworkConnection])
      {
        goto LABEL_13;
      }

      v14 = [(FigCaptureVideoDataSinkConfiguration *)self preservesDynamicHDRMetadata];
      LOBYTE(v5) = v14 ^ [a3 preservesDynamicHDRMetadata] ^ 1;
    }
  }

  return v5;
}

- (void)setRequestedBufferAttachments:(id)a3
{
  v4 = *&self->_discardsLateVideoFrames;
  *&self->_discardsLateVideoFrames = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  self->_requestedBufferAttachments = 0;
}

- (FigCaptureTrie)requestedBufferAttachmentsTrie
{
  result = self->_requestedBufferAttachments;
  if (!result)
  {
    if (*&self->_discardsLateVideoFrames)
    {
      result = [[FigCaptureTrie alloc] initWithPathArray:*&self->_discardsLateVideoFrames];
      self->_requestedBufferAttachments = result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end