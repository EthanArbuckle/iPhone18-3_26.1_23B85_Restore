@interface HKDisplayTypePresentation
- (BOOL)isEqual:(id)a3;
- (HKDisplayTypePresentation)init;
- (HKDisplayTypePresentation)initWithDefaultConfiguration:(id)a3 configurationOverrides:(id)a4 scaleFactor:(double)a5 showAllDataHierarchically:(BOOL)a6 showAppDataHierarchically:(BOOL)a7 shouldDisplayUnitStringOnYAxis:(BOOL)a8 useSecondsWhenDisplayingDuration:(BOOL)a9 isCriticalForAutoscale:(BOOL)a10 dataTypeIconImageName:(id)a11 detailImageName:(id)a12 listIconImageNameOverride:(id)a13 summaryAttribution:(id)a14;
- (double)adjustedDoubleForClientDouble:(double)result;
- (double)adjustedDoubleForDaemonDouble:(double)result;
- (id)adjustedValueForClientValue:(id)a3;
- (id)adjustedValueForDaemonValue:(id)a3;
- (id)configurationForTimeScope:(int64_t)a3;
- (id)copyWithListIconImageNameOverride:(id)a3;
- (unint64_t)hash;
@end

@implementation HKDisplayTypePresentation

- (HKDisplayTypePresentation)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKDisplayTypePresentation)initWithDefaultConfiguration:(id)a3 configurationOverrides:(id)a4 scaleFactor:(double)a5 showAllDataHierarchically:(BOOL)a6 showAppDataHierarchically:(BOOL)a7 shouldDisplayUnitStringOnYAxis:(BOOL)a8 useSecondsWhenDisplayingDuration:(BOOL)a9 isCriticalForAutoscale:(BOOL)a10 dataTypeIconImageName:(id)a11 detailImageName:(id)a12 listIconImageNameOverride:(id)a13 summaryAttribution:(id)a14
{
  v20 = a3;
  v21 = a4;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v41.receiver = self;
  v41.super_class = HKDisplayTypePresentation;
  v26 = [(HKDisplayTypePresentation *)&v41 init];
  if (v26)
  {
    v27 = [v20 copy];
    defaultConfiguration = v26->_defaultConfiguration;
    v26->_defaultConfiguration = v27;

    v29 = [v21 copy];
    configurationOverrides = v26->_configurationOverrides;
    v26->_configurationOverrides = v29;

    v26->_scaleFactor = a5;
    v26->_showAllDataHierarchically = a6;
    v26->_showAppDataHierarchically = a7;
    v26->_shouldDisplayUnitStringOnYAxis = a8;
    v26->_useSecondsWhenDisplayingDuration = a9;
    v26->_isCriticalForAutoscale = a10;
    v31 = [v22 copy];
    dataTypeIconImageName = v26->_dataTypeIconImageName;
    v26->_dataTypeIconImageName = v31;

    v33 = [v23 copy];
    detailImageName = v26->_detailImageName;
    v26->_detailImageName = v33;

    v35 = [v24 copy];
    listIconImageNameOverride = v26->_listIconImageNameOverride;
    v26->_listIconImageNameOverride = v35;

    v37 = [v25 copy];
    summaryAttribution = v26->_summaryAttribution;
    v26->_summaryAttribution = v37;
  }

  return v26;
}

- (id)configurationForTimeScope:(int64_t)a3
{
  configurationOverrides = self->_configurationOverrides;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(NSDictionary *)configurationOverrides objectForKeyedSubscript:v5];

  defaultConfiguration = v6;
  if (!v6)
  {
    defaultConfiguration = self->_defaultConfiguration;
  }

  v8 = defaultConfiguration;

  return v8;
}

- (id)adjustedValueForDaemonValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (fabs(self->_scaleFactor + -1.0) >= 0.00000011920929)
    {
      [v4 doubleValue];
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:v8 * self->_scaleFactor];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)adjustedValueForClientValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (fabs(self->_scaleFactor + -1.0) >= 0.00000011920929)
    {
      [v4 doubleValue];
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:v8 / self->_scaleFactor];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)adjustedDoubleForDaemonDouble:(double)result
{
  scaleFactor = self->_scaleFactor;
  v4 = fabs(scaleFactor + -1.0);
  v5 = scaleFactor * result;
  if (v4 >= 0.00000011920929)
  {
    return v5;
  }

  return result;
}

- (double)adjustedDoubleForClientDouble:(double)result
{
  scaleFactor = self->_scaleFactor;
  v4 = fabs(scaleFactor + -1.0);
  v5 = result / scaleFactor;
  if (v4 >= 0.00000011920929)
  {
    return v5;
  }

  return result;
}

- (id)copyWithListIconImageNameOverride:(id)a3
{
  v4 = a3;
  v5 = [HKDisplayTypePresentation alloc];
  LOBYTE(v8) = self->_isCriticalForAutoscale;
  v6 = [(HKDisplayTypePresentation *)v5 initWithDefaultConfiguration:self->_defaultConfiguration configurationOverrides:self->_configurationOverrides scaleFactor:self->_showAllDataHierarchically showAllDataHierarchically:self->_showAppDataHierarchically showAppDataHierarchically:self->_shouldDisplayUnitStringOnYAxis shouldDisplayUnitStringOnYAxis:self->_useSecondsWhenDisplayingDuration useSecondsWhenDisplayingDuration:self->_scaleFactor isCriticalForAutoscale:v8 dataTypeIconImageName:self->_dataTypeIconImageName detailImageName:self->_detailImageName listIconImageNameOverride:v4 summaryAttribution:self->_summaryAttribution];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(HKDisplayTypePresentationConfiguration *)self->_defaultConfiguration hash];
  v4 = [(NSDictionary *)self->_configurationOverrides hash];
  scaleFactor = self->_scaleFactor;
  v6 = scaleFactor;
  LODWORD(scaleFactor) = *&self->_showAllDataHierarchically;
  v7 = vshl_u16(*&vmovl_u8(*&scaleFactor), 0x4000300020001);
  isCriticalForAutoscale = self->_isCriticalForAutoscale;
  v9 = [(NSString *)self->_dataTypeIconImageName hash];
  v10 = [(NSString *)self->_detailImageName hash];
  v11 = [(NSString *)self->_listIconImageNameOverride hash];
  v12 = [(HKDisplayTypeSummaryAttribution *)self->_summaryAttribution hash];
  v13 = vmovl_u16(v7);
  v14.i64[0] = 255;
  v14.i64[1] = 255;
  *v13.i8 = veor_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
  v15.i64[0] = v13.u32[0];
  v15.i64[1] = v13.u32[1];
  v16 = vandq_s8(v15, v14);
  return *&veor_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) ^ (32 * isCriticalForAutoscale) ^ v12 ^ v11 ^ v10 ^ v9 ^ v3 ^ v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (![(HKDisplayTypePresentationConfiguration *)self->_defaultConfiguration isEqual:*(v4 + 1)])
  {
    goto LABEL_22;
  }

  if (![(NSDictionary *)self->_configurationOverrides isEqual:*(v4 + 2)])
  {
    goto LABEL_22;
  }

  if (vabdd_f64(self->_scaleFactor, *(v4 + 4)) >= 0.00000011920929)
  {
    goto LABEL_22;
  }

  if (self->_showAllDataHierarchically != v4[24])
  {
    goto LABEL_22;
  }

  if (self->_showAppDataHierarchically != v4[25])
  {
    goto LABEL_22;
  }

  if (self->_shouldDisplayUnitStringOnYAxis != v4[26])
  {
    goto LABEL_22;
  }

  if (self->_useSecondsWhenDisplayingDuration != v4[27])
  {
    goto LABEL_22;
  }

  if (self->_isCriticalForAutoscale != v4[28])
  {
    goto LABEL_22;
  }

  dataTypeIconImageName = self->_dataTypeIconImageName;
  v6 = *(v4 + 5);
  if (dataTypeIconImageName != v6 && (!v6 || ![(NSString *)dataTypeIconImageName isEqualToString:?]))
  {
    goto LABEL_22;
  }

  detailImageName = self->_detailImageName;
  v8 = *(v4 + 6);
  if (detailImageName != v8 && (!v8 || ![(NSString *)detailImageName isEqualToString:?]))
  {
    goto LABEL_22;
  }

  listIconImageNameOverride = self->_listIconImageNameOverride;
  v10 = *(v4 + 7);
  if (listIconImageNameOverride != v10 && (!v10 || ![(NSString *)listIconImageNameOverride isEqualToString:?]))
  {
    goto LABEL_22;
  }

  summaryAttribution = self->_summaryAttribution;
  v12 = *(v4 + 8);
  if (summaryAttribution == v12)
  {
    v13 = 1;
    goto LABEL_23;
  }

  if (v12)
  {
    v13 = [(HKDisplayTypeSummaryAttribution *)summaryAttribution isEqual:?];
  }

  else
  {
LABEL_22:
    v13 = 0;
  }

LABEL_23:

  return v13;
}

@end