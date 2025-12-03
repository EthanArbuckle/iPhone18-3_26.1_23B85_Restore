@interface ROI
- (ROI)initWithBbox:(ROI *)self;
- (ROI)initWithBbox:(id *)bbox descriptor:;
- (double)getReflectedBboxAroundCenter:(void *)center;
- (float)getLocationMatchCostWith:(id)with;
- (float)getPixelFeatureMatchCostWith:(id)with;
- (float32x2_t)getReflectedBboxCenterAroundCenter:(void *)center;
- (int64_t)compareSelfAsLSWithAnotherLS:(id)s;
- (void)generateLocationFromBBox;
- (void)reflectAroundCenter:(ROI *)self;
- (void)setLumaFeatureVector:(ROI *)self;
- (void)setLumaFeatureVectorPredictedLocation:(ROI *)self;
- (void)setLumaFeatureVectorReflection:(ROI *)self;
@end

@implementation ROI

- (float)getLocationMatchCostWith:(id)with
{
  withCopy = with;
  [(ROI *)self descriptor];
  if (withCopy)
  {
    [withCopy descriptor];
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  v6 = vsub_f32(v9, v5);
  return sqrtf(vaddv_f32(vmul_f32(v6, v6)));
}

- (float)getPixelFeatureMatchCostWith:(id)with
{
  v38 = *MEMORY[0x277D85DE8];
  withCopy = with;
  [(ROI *)self descriptor];
  if (!withCopy)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
LABEL_11:
    [ROI getPixelFeatureMatchCostWith:?];
LABEL_12:
    v8 = v10;
    goto LABEL_9;
  }

  [withCopy descriptor];
  v5 = v35;
  if (v37 < v35)
  {
    v5 = v37;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  [withCopy descriptor];
  v6 = vaddvq_s16(vaddq_s16(vaddq_s16(v23, v25), vaddq_s16(v24, v26)));
  [(ROI *)self descriptor];
  v7 = vaddvq_s16(vaddq_s16(vaddq_s16(v19, v21), vaddq_s16(v20, v22)));
  if (v6 > v7)
  {
    v7 = v6;
  }

  if (v7 <= 0)
  {
    [ROI getPixelFeatureMatchCostWith:?];
    goto LABEL_12;
  }

  [withCopy descriptor];
  [(ROI *)self descriptor];
  v8 = vaddvq_s16(vaddq_s16(vaddq_s16(vabsq_s16(vsubq_s16(v17, v13)), vabsq_s16(vsubq_s16(v15, v11))), vaddq_s16(vabsq_s16(vsubq_s16(v18, v14)), vabsq_s16(vsubq_s16(v16, v12))))) / 8160.0;
LABEL_9:

  return v8;
}

- (void)reflectAroundCenter:(ROI *)self
{
  v3 = v2;
  v21 = *MEMORY[0x277D85DE8];
  [(ROI *)self bbox];
  v7 = v5;
  [(ROI *)self bbox];
  v8 = COERCE_DOUBLE(vadd_f32(vsub_f32(v3, vadd_f32(v7, *&vextq_s8(v6, v6, 8uLL))), v3));
  [(ROI *)self bbox];
  [(ROI *)self setBbox:v8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  [(ROI *)self descriptor];
  [(ROI *)self descriptor];
  *&v11 = vadd_f32(vsub_f32(v3, v10), v3);
  v9[6] = v17;
  v9[7] = v18;
  v9[8] = v19;
  v9[9] = v20;
  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v9[5] = v16;
  v9[0] = v11;
  v9[1] = v12;
  [(ROI *)self setDescriptor:v9];
}

- (double)getReflectedBboxAroundCenter:(void *)center
{
  [center bbox];
  v7 = v4;
  [center bbox];
  v8 = COERCE_DOUBLE(vadd_f32(vsub_f32(a2, vadd_f32(v7, *&vextq_s8(v5, v5, 8uLL))), a2));
  [center bbox];
  return v8;
}

- (void)generateLocationFromBBox
{
  [(ROI *)self bbox];
  v5 = v3;
  [(ROI *)self bbox];
  self[1].super.isa = vadd_f32(v5, vmul_f32(*&vextq_s8(v4, v4, 8uLL), 0x3F0000003F000000));
}

- (float32x2_t)getReflectedBboxCenterAroundCenter:(void *)center
{
  [center bbox];
  v7 = v4;
  [center bbox];
  return vmla_f32(vneg_f32(vmla_f32(v7, 0x3F0000003F000000, *&vextq_s8(v5, v5, 8uLL))), 0x4000000040000000, a2);
}

- (int64_t)compareSelfAsLSWithAnotherLS:(id)s
{
  sCopy = s;
  [sCopy dist2ghost];
  v6 = v5;
  [(ROI *)self dist2ghost];
  if (v6 > (v7 + 32.0) || (([sCopy dist2ghost], v8 == INFINITY) || (objc_msgSend(sCopy, "dist2ghost"), v10 = v9, -[ROI dist2ghost](self, "dist2ghost"), vabds_f32(v10, v11) <= 32.0)) && ((objc_msgSend(sCopy, "area"), v13 = v12, -[ROI area](self, "area"), v13 < (v14 + -256.0)) || (objc_msgSend(sCopy, "area"), v17 = v16, -[ROI area](self, "area"), vabds_f32(v17, v18) <= 256.0) && (objc_msgSend(sCopy, "dist2opticalCenter"), v20 = v19, -[ROI dist2opticalCenter](self, "dist2opticalCenter"), v20 > v21)))
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)setLumaFeatureVector:(ROI *)self
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v6[2] = v2[2];
  v6[3] = v5;
  v6[0] = v3;
  v6[1] = v4;
  objc_copyStruct(self->_lumaFeatureVector, v6, 64, 1, 0);
}

- (void)setLumaFeatureVectorReflection:(ROI *)self
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v6[2] = v2[2];
  v6[3] = v5;
  v6[0] = v3;
  v6[1] = v4;
  objc_copyStruct(self->_lumaFeatureVectorReflection, v6, 64, 1, 0);
}

- (void)setLumaFeatureVectorPredictedLocation:(ROI *)self
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v6[2] = v2[2];
  v6[3] = v5;
  v6[0] = v3;
  v6[1] = v4;
  objc_copyStruct(self->_lumaFeatureVectorPredictedLocation, v6, 64, 1, 0);
}

- (ROI)initWithBbox:(ROI *)self
{
  v7 = v2;
  v8.receiver = self;
  v8.super_class = ROI;
  v3 = [(ROI *)&v8 init];
  v4 = v3;
  if (v3)
  {
    [(ROI *)v3 setBbox:v7];
    v5 = v4;
  }

  return v4;
}

- (ROI)initWithBbox:(id *)bbox descriptor:
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [(ROI *)self initWithBbox:?];
  if (v4)
  {
    memcpy(v7, bbox, 0xA0uLL);
    [(ROI *)v4 setDescriptor:v7];
    v5 = v4;
  }

  return v4;
}

- (void)getPixelFeatureMatchCostWith:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  if ((global_logLevel & 4) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_4_8(&dword_24874B000, v2, v3, "Unable to create feature descriptor, feature sums are zero", v4, v5, v6, v7, 0);
  }

  *a1 = 2139095040;
}

- (void)getPixelFeatureMatchCostWith:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  if ((global_logLevel & 4) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_4_8(&dword_24874B000, v2, v3, "Unable to create feature descriptor, feature length is zero", v4, v5, v6, v7, 0);
  }

  *a1 = 2139095040;
}

@end