@interface HKDisplayTypePresentation
- (BOOL)isEqual:(id)equal;
- (HKDisplayTypePresentation)init;
- (HKDisplayTypePresentation)initWithDefaultConfiguration:(id)configuration configurationOverrides:(id)overrides scaleFactor:(double)factor showAllDataHierarchically:(BOOL)hierarchically showAppDataHierarchically:(BOOL)dataHierarchically shouldDisplayUnitStringOnYAxis:(BOOL)axis useSecondsWhenDisplayingDuration:(BOOL)duration isCriticalForAutoscale:(BOOL)self0 dataTypeIconImageName:(id)self1 detailImageName:(id)self2 listIconImageNameOverride:(id)self3 summaryAttribution:(id)self4;
- (double)adjustedDoubleForClientDouble:(double)result;
- (double)adjustedDoubleForDaemonDouble:(double)result;
- (id)adjustedValueForClientValue:(id)value;
- (id)adjustedValueForDaemonValue:(id)value;
- (id)configurationForTimeScope:(int64_t)scope;
- (id)copyWithListIconImageNameOverride:(id)override;
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

- (HKDisplayTypePresentation)initWithDefaultConfiguration:(id)configuration configurationOverrides:(id)overrides scaleFactor:(double)factor showAllDataHierarchically:(BOOL)hierarchically showAppDataHierarchically:(BOOL)dataHierarchically shouldDisplayUnitStringOnYAxis:(BOOL)axis useSecondsWhenDisplayingDuration:(BOOL)duration isCriticalForAutoscale:(BOOL)self0 dataTypeIconImageName:(id)self1 detailImageName:(id)self2 listIconImageNameOverride:(id)self3 summaryAttribution:(id)self4
{
  configurationCopy = configuration;
  overridesCopy = overrides;
  nameCopy = name;
  imageNameCopy = imageName;
  overrideCopy = override;
  attributionCopy = attribution;
  v41.receiver = self;
  v41.super_class = HKDisplayTypePresentation;
  v26 = [(HKDisplayTypePresentation *)&v41 init];
  if (v26)
  {
    v27 = [configurationCopy copy];
    defaultConfiguration = v26->_defaultConfiguration;
    v26->_defaultConfiguration = v27;

    v29 = [overridesCopy copy];
    configurationOverrides = v26->_configurationOverrides;
    v26->_configurationOverrides = v29;

    v26->_scaleFactor = factor;
    v26->_showAllDataHierarchically = hierarchically;
    v26->_showAppDataHierarchically = dataHierarchically;
    v26->_shouldDisplayUnitStringOnYAxis = axis;
    v26->_useSecondsWhenDisplayingDuration = duration;
    v26->_isCriticalForAutoscale = autoscale;
    v31 = [nameCopy copy];
    dataTypeIconImageName = v26->_dataTypeIconImageName;
    v26->_dataTypeIconImageName = v31;

    v33 = [imageNameCopy copy];
    detailImageName = v26->_detailImageName;
    v26->_detailImageName = v33;

    v35 = [overrideCopy copy];
    listIconImageNameOverride = v26->_listIconImageNameOverride;
    v26->_listIconImageNameOverride = v35;

    v37 = [attributionCopy copy];
    summaryAttribution = v26->_summaryAttribution;
    v26->_summaryAttribution = v37;
  }

  return v26;
}

- (id)configurationForTimeScope:(int64_t)scope
{
  configurationOverrides = self->_configurationOverrides;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
  v6 = [(NSDictionary *)configurationOverrides objectForKeyedSubscript:v5];

  defaultConfiguration = v6;
  if (!v6)
  {
    defaultConfiguration = self->_defaultConfiguration;
  }

  v8 = defaultConfiguration;

  return v8;
}

- (id)adjustedValueForDaemonValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy)
  {
    if (fabs(self->_scaleFactor + -1.0) >= 0.00000011920929)
    {
      [valueCopy doubleValue];
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:v8 * self->_scaleFactor];
    }

    else
    {
      v6 = valueCopy;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)adjustedValueForClientValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy)
  {
    if (fabs(self->_scaleFactor + -1.0) >= 0.00000011920929)
    {
      [valueCopy doubleValue];
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:v8 / self->_scaleFactor];
    }

    else
    {
      v6 = valueCopy;
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

- (id)copyWithListIconImageNameOverride:(id)override
{
  overrideCopy = override;
  v5 = [HKDisplayTypePresentation alloc];
  LOBYTE(v8) = self->_isCriticalForAutoscale;
  v6 = [(HKDisplayTypePresentation *)v5 initWithDefaultConfiguration:self->_defaultConfiguration configurationOverrides:self->_configurationOverrides scaleFactor:self->_showAllDataHierarchically showAllDataHierarchically:self->_showAppDataHierarchically showAppDataHierarchically:self->_shouldDisplayUnitStringOnYAxis shouldDisplayUnitStringOnYAxis:self->_useSecondsWhenDisplayingDuration useSecondsWhenDisplayingDuration:self->_scaleFactor isCriticalForAutoscale:v8 dataTypeIconImageName:self->_dataTypeIconImageName detailImageName:self->_detailImageName listIconImageNameOverride:overrideCopy summaryAttribution:self->_summaryAttribution];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (![(HKDisplayTypePresentationConfiguration *)self->_defaultConfiguration isEqual:*(equalCopy + 1)])
  {
    goto LABEL_22;
  }

  if (![(NSDictionary *)self->_configurationOverrides isEqual:*(equalCopy + 2)])
  {
    goto LABEL_22;
  }

  if (vabdd_f64(self->_scaleFactor, *(equalCopy + 4)) >= 0.00000011920929)
  {
    goto LABEL_22;
  }

  if (self->_showAllDataHierarchically != equalCopy[24])
  {
    goto LABEL_22;
  }

  if (self->_showAppDataHierarchically != equalCopy[25])
  {
    goto LABEL_22;
  }

  if (self->_shouldDisplayUnitStringOnYAxis != equalCopy[26])
  {
    goto LABEL_22;
  }

  if (self->_useSecondsWhenDisplayingDuration != equalCopy[27])
  {
    goto LABEL_22;
  }

  if (self->_isCriticalForAutoscale != equalCopy[28])
  {
    goto LABEL_22;
  }

  dataTypeIconImageName = self->_dataTypeIconImageName;
  v6 = *(equalCopy + 5);
  if (dataTypeIconImageName != v6 && (!v6 || ![(NSString *)dataTypeIconImageName isEqualToString:?]))
  {
    goto LABEL_22;
  }

  detailImageName = self->_detailImageName;
  v8 = *(equalCopy + 6);
  if (detailImageName != v8 && (!v8 || ![(NSString *)detailImageName isEqualToString:?]))
  {
    goto LABEL_22;
  }

  listIconImageNameOverride = self->_listIconImageNameOverride;
  v10 = *(equalCopy + 7);
  if (listIconImageNameOverride != v10 && (!v10 || ![(NSString *)listIconImageNameOverride isEqualToString:?]))
  {
    goto LABEL_22;
  }

  summaryAttribution = self->_summaryAttribution;
  v12 = *(equalCopy + 8);
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