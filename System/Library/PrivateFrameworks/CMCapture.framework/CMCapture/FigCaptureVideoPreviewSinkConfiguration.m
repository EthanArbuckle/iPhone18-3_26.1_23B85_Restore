@interface FigCaptureVideoPreviewSinkConfiguration
- (BOOL)isEqual:(id)a3;
- (CGPoint)primaryCaptureRectCenter;
- (FigCaptureVideoPreviewSinkConfiguration)init;
- (FigCaptureVideoPreviewSinkConfiguration)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)description;
- (void)dealloc;
@end

@implementation FigCaptureVideoPreviewSinkConfiguration

- (FigCaptureVideoPreviewSinkConfiguration)init
{
  v8.receiver = self;
  v8.super_class = FigCaptureVideoPreviewSinkConfiguration;
  result = [(FigCaptureVideoPreviewSinkConfiguration *)&v8 init];
  if (result)
  {
    LODWORD(result->_filters) = 2143289344;
    __asm { FMOV            V0.2D, #0.5 }

    *&result->_primaryCaptureRectAspectRatio = _Q0;
  }

  return result;
}

- (CGPoint)primaryCaptureRectCenter
{
  primaryCaptureRectAspectRatio = self->_primaryCaptureRectAspectRatio;
  x = self->_primaryCaptureRectCenter.x;
  result.y = x;
  result.x = primaryCaptureRectAspectRatio;
  return result;
}

- (id)description
{
  v3 = BWCIFilterArrayDescription(*&self->_depthDataDeliveryEnabled);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" Portrait Lighting effect strength: %.1f", *&self->_filters];
  if (BYTE4(self->_filters) == 1)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = *&self->_portraitLightingEffectStrength;
    if (v6)
    {
      v7 = [v6 debugDescription];
    }

    else
    {
      v7 = @"None";
    }

    v8 = [v5 stringWithFormat:@", Semantic Style:{%@}", v7];
  }

  else
  {
    v8 = &stru_1F216A3D0;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@" PrimaryCaptureRectModification:%d, Aspect:%.3f:1, Center:%.3f %.3f, UniqueID:%lld", LOBYTE(self->_semanticStyle), *&self->_primaryCaptureRectModificationEnabled, *&self->_primaryCaptureRectAspectRatio, *&self->_primaryCaptureRectCenter.x, *&self->_primaryCaptureRectCenter.y];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@" ZoomPIP:%d", LOBYTE(self->_primaryCaptureRectUniqueID)];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@" PortraitAutoSuggest:%d", BYTE1(self->_primaryCaptureRectUniqueID)];
  v13.receiver = self;
  v13.super_class = FigCaptureVideoPreviewSinkConfiguration;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ depth:%d filters:%d [%@]%@%@%@%@%@", -[FigCaptureSinkConfiguration description](&v13, sel_description), -[FigCaptureVideoPreviewSinkConfiguration depthDataDeliveryEnabled](self, "depthDataDeliveryEnabled"), -[FigCaptureVideoPreviewSinkConfiguration filterRenderingEnabled](self, "filterRenderingEnabled"), v3, v4, v8, v9, v10, v11];
}

- (id)copyXPCEncoding
{
  v14.receiver = self;
  v14.super_class = FigCaptureVideoPreviewSinkConfiguration;
  v3 = [(FigCaptureSinkConfiguration *)&v14 copyXPCEncoding];
  xpc_dictionary_set_BOOL(v3, "depthDataDeliveryEnabled", [(FigCaptureVideoPreviewSinkConfiguration *)self depthDataDeliveryEnabled]);
  xpc_dictionary_set_BOOL(v3, "filterRenderingEnabled", [(FigCaptureVideoPreviewSinkConfiguration *)self filterRenderingEnabled]);
  xpc_dictionary_set_BOOL(v3, "portraitAutoSuggestEnabled", [(FigCaptureVideoPreviewSinkConfiguration *)self portraitAutoSuggestEnabled]);
  v4 = *&self->_depthDataDeliveryEnabled;
  if (v4)
  {
    v5 = csr_serializeObjectUsingNSSecureCoding(v4);
    v6 = xpc_data_create([v5 bytes], objc_msgSend(v5, "length"));
    xpc_dictionary_set_value(v3, "filters", v6);
    xpc_release(v6);
    [(FigCaptureVideoPreviewSinkConfiguration *)self portraitLightingEffectStrength];
    xpc_dictionary_set_double(v3, "portraitLightingEffectStrength", v7);
  }

  xpc_dictionary_set_BOOL(v3, "semanticStyleRenderingEnabled", [(FigCaptureVideoPreviewSinkConfiguration *)self semanticStyleRenderingEnabled]);
  v8 = *&self->_portraitLightingEffectStrength;
  if (v8)
  {
    v9 = [v8 copyXPCEncoding];
    xpc_dictionary_set_value(v3, "semanticStyle", v9);
    xpc_release(v9);
  }

  xpc_dictionary_set_BOOL(v3, "primaryCaptureRectModificationEnabled", [(FigCaptureVideoPreviewSinkConfiguration *)self primaryCaptureRectModificationEnabled]);
  [(FigCaptureVideoPreviewSinkConfiguration *)self primaryCaptureRectAspectRatio];
  xpc_dictionary_set_double(v3, "primaryCaptureRectAspectRatio", v10);
  [(FigCaptureVideoPreviewSinkConfiguration *)self primaryCaptureRectCenter];
  xpc_dictionary_set_double(v3, "primaryCaptureRectCenterX", v11);
  [(FigCaptureVideoPreviewSinkConfiguration *)self primaryCaptureRectCenter];
  xpc_dictionary_set_double(v3, "primaryCaptureRectCenterY", v12);
  xpc_dictionary_set_int64(v3, "primaryCaptureRectUniqueID", [(FigCaptureVideoPreviewSinkConfiguration *)self primaryCaptureRectUniqueID]);
  xpc_dictionary_set_BOOL(v3, "zoomPIPOverlayEnabled", [(FigCaptureVideoPreviewSinkConfiguration *)self zoomPIPOverlayEnabled]);
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureVideoPreviewSinkConfiguration;
  [(FigCaptureSinkConfiguration *)&v3 dealloc];
}

- (FigCaptureVideoPreviewSinkConfiguration)initWithXPCEncoding:(id)a3
{
  v17.receiver = self;
  v17.super_class = FigCaptureVideoPreviewSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v17 initWithXPCEncoding:?];
  if (v4)
  {
    *(&v4->super._deferredStartEnabled + 1) = xpc_dictionary_get_BOOL(a3, "depthDataDeliveryEnabled");
    *(&v4->super._deferredStartEnabled + 2) = xpc_dictionary_get_BOOL(a3, "filterRenderingEnabled");
    BYTE1(v4->_primaryCaptureRectUniqueID) = xpc_dictionary_get_BOOL(a3, "portraitAutoSuggestEnabled");
    LODWORD(v4->_filters) = 2143289344;
    length = 0;
    data = xpc_dictionary_get_data(a3, "filters", &length);
    if (data)
    {
      v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:data length:length freeWhenDone:0];
      v7 = MEMORY[0x1E695DFD8];
      v8 = objc_opt_class();
      v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
      v10 = fcsc_deserializeDataUsingNSSecureCoding(v6, v9);
      *&v4->_depthDataDeliveryEnabled = v10;
      if (!v10)
      {

        return 0;
      }

      v11 = xpc_dictionary_get_double(a3, "portraitLightingEffectStrength");
      *&v4->_filters = v11;
    }

    BYTE4(v4->_filters) = xpc_dictionary_get_BOOL(a3, "semanticStyleRenderingEnabled");
    dictionary = xpc_dictionary_get_dictionary(a3, "semanticStyle");
    if (dictionary)
    {
      *&v4->_portraitLightingEffectStrength = [[FigCaptureSemanticStyle alloc] initWithXPCEncoding:dictionary];
    }

    LOBYTE(v4->_semanticStyle) = xpc_dictionary_get_BOOL(a3, "primaryCaptureRectModificationEnabled");
    *&v4->_primaryCaptureRectModificationEnabled = xpc_dictionary_get_double(a3, "primaryCaptureRectAspectRatio");
    v13 = xpc_dictionary_get_double(a3, "primaryCaptureRectCenterX");
    v14 = xpc_dictionary_get_double(a3, "primaryCaptureRectCenterY");
    v4->_primaryCaptureRectAspectRatio = v13;
    v4->_primaryCaptureRectCenter.x = v14;
    *&v4->_primaryCaptureRectCenter.y = xpc_dictionary_get_int64(a3, "primaryCaptureRectUniqueID");
    LOBYTE(v4->_primaryCaptureRectUniqueID) = xpc_dictionary_get_BOOL(a3, "zoomPIPOverlayEnabled");
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = FigCaptureVideoPreviewSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 copyWithZone:a3];
  [v4 setDepthDataDeliveryEnabled:{-[FigCaptureVideoPreviewSinkConfiguration depthDataDeliveryEnabled](self, "depthDataDeliveryEnabled")}];
  [v4 setFilterRenderingEnabled:{-[FigCaptureVideoPreviewSinkConfiguration filterRenderingEnabled](self, "filterRenderingEnabled")}];
  [v4 setFilters:{-[FigCaptureVideoPreviewSinkConfiguration filters](self, "filters")}];
  [(FigCaptureVideoPreviewSinkConfiguration *)self portraitLightingEffectStrength];
  [v4 setPortraitLightingEffectStrength:?];
  [v4 setSemanticStyleRenderingEnabled:{-[FigCaptureVideoPreviewSinkConfiguration semanticStyleRenderingEnabled](self, "semanticStyleRenderingEnabled")}];
  [v4 setSemanticStyle:{-[FigCaptureVideoPreviewSinkConfiguration semanticStyle](self, "semanticStyle")}];
  [v4 setPrimaryCaptureRectModificationEnabled:{-[FigCaptureVideoPreviewSinkConfiguration primaryCaptureRectModificationEnabled](self, "primaryCaptureRectModificationEnabled")}];
  [(FigCaptureVideoPreviewSinkConfiguration *)self primaryCaptureRectAspectRatio];
  [v4 setPrimaryCaptureRectAspectRatio:?];
  [(FigCaptureVideoPreviewSinkConfiguration *)self primaryCaptureRectCenter];
  [v4 setPrimaryCaptureRectCenter:?];
  [v4 setPrimaryCaptureRectUniqueID:{-[FigCaptureVideoPreviewSinkConfiguration primaryCaptureRectUniqueID](self, "primaryCaptureRectUniqueID")}];
  [v4 setZoomPIPOverlayEnabled:{-[FigCaptureVideoPreviewSinkConfiguration zoomPIPOverlayEnabled](self, "zoomPIPOverlayEnabled")}];
  [v4 setPortraitAutoSuggestEnabled:{-[FigCaptureVideoPreviewSinkConfiguration portraitAutoSuggestEnabled](self, "portraitAutoSuggestEnabled")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v28.receiver = self;
  v28.super_class = FigCaptureVideoPreviewSinkConfiguration;
  v5 = [(FigCaptureSinkConfiguration *)&v28 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    v6 = [(FigCaptureVideoPreviewSinkConfiguration *)self depthDataDeliveryEnabled];
    if (v6 != [a3 depthDataDeliveryEnabled])
    {
      goto LABEL_14;
    }

    v7 = [(FigCaptureVideoPreviewSinkConfiguration *)self filterRenderingEnabled];
    if (v7 != [a3 filterRenderingEnabled])
    {
      goto LABEL_14;
    }

    v8 = [(FigCaptureVideoPreviewSinkConfiguration *)self filters];
    if (v8 == [a3 filters] || (v5 = -[NSArray isEqual:](-[FigCaptureVideoPreviewSinkConfiguration filters](self, "filters"), "isEqual:", objc_msgSend(a3, "filters"))) != 0)
    {
      [(FigCaptureVideoPreviewSinkConfiguration *)self portraitLightingEffectStrength];
      v10 = v9;
      [a3 portraitLightingEffectStrength];
      if (v10 != v11)
      {
        [(FigCaptureVideoPreviewSinkConfiguration *)self portraitLightingEffectStrength];
LABEL_14:
        LOBYTE(v5) = 0;
        return v5;
      }

      v12 = [(FigCaptureVideoPreviewSinkConfiguration *)self semanticStyleRenderingEnabled];
      if (v12 != [a3 semanticStyleRenderingEnabled])
      {
        goto LABEL_14;
      }

      v13 = [(FigCaptureVideoPreviewSinkConfiguration *)self semanticStyle];
      if (v13 == [a3 semanticStyle] || (v5 = -[FigCaptureSemanticStyle isEqual:](-[FigCaptureVideoPreviewSinkConfiguration semanticStyle](self, "semanticStyle"), "isEqual:", objc_msgSend(a3, "semanticStyle"))) != 0)
      {
        v14 = [(FigCaptureVideoPreviewSinkConfiguration *)self primaryCaptureRectModificationEnabled];
        if (v14 != [a3 primaryCaptureRectModificationEnabled])
        {
          goto LABEL_14;
        }

        [(FigCaptureVideoPreviewSinkConfiguration *)self primaryCaptureRectAspectRatio];
        v16 = v15;
        [a3 primaryCaptureRectAspectRatio];
        if (v16 != v17)
        {
          goto LABEL_14;
        }

        [(FigCaptureVideoPreviewSinkConfiguration *)self primaryCaptureRectCenter];
        v19 = v18;
        v21 = v20;
        [a3 primaryCaptureRectCenter];
        LOBYTE(v5) = 0;
        if (v19 == v23 && v21 == v22)
        {
          v24 = [(FigCaptureVideoPreviewSinkConfiguration *)self primaryCaptureRectUniqueID];
          if (v24 != [a3 primaryCaptureRectUniqueID])
          {
            goto LABEL_14;
          }

          v25 = [(FigCaptureVideoPreviewSinkConfiguration *)self zoomPIPOverlayEnabled];
          if (v25 != [a3 zoomPIPOverlayEnabled])
          {
            goto LABEL_14;
          }

          v26 = [(FigCaptureVideoPreviewSinkConfiguration *)self portraitAutoSuggestEnabled];
          LOBYTE(v5) = v26 ^ [a3 portraitAutoSuggestEnabled] ^ 1;
        }
      }
    }
  }

  return v5;
}

@end