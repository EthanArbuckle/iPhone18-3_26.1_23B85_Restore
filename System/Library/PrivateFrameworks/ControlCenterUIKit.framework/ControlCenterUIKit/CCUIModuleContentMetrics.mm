@interface CCUIModuleContentMetrics
+ (id)defaultMetricsForGridGeometryInfo:(CCUIGridGeometryInfo)info;
- (CCUIGridGeometryInfo)gridGeometryInfo;
- (CCUIModuleContentMetrics)init;
- (CCUIModuleContentMetrics)initWithSymbolConfiguration:(id)configuration symbolFont:(id)font symbolScaleFactor:(double)factor metricsScaleFactor:(double)scaleFactor gridGeometryInfo:(CCUIGridGeometryInfo)info;
- (NSString)description;
@end

@implementation CCUIModuleContentMetrics

- (CCUIGridGeometryInfo)gridGeometryInfo
{
  v2 = *(&self->super.isa + OBJC_IVAR___CCUIModuleContentMetrics_gridGeometryInfo);
  v3 = *(&self->symbolConfiguration + OBJC_IVAR___CCUIModuleContentMetrics_gridGeometryInfo);
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (CCUIModuleContentMetrics)initWithSymbolConfiguration:(id)configuration symbolFont:(id)font symbolScaleFactor:(double)factor metricsScaleFactor:(double)scaleFactor gridGeometryInfo:(CCUIGridGeometryInfo)info
{
  *(&self->super.isa + OBJC_IVAR___CCUIModuleContentMetrics_symbolConfiguration) = configuration;
  *(&self->super.isa + OBJC_IVAR___CCUIModuleContentMetrics_symbolFont) = font;
  *(&self->super.isa + OBJC_IVAR___CCUIModuleContentMetrics_symbolScaleFactor) = factor;
  *(&self->super.isa + OBJC_IVAR___CCUIModuleContentMetrics_metricsScaleFactor) = scaleFactor;
  *(&self->super.isa + OBJC_IVAR___CCUIModuleContentMetrics_gridGeometryInfo) = info;
  v11.receiver = self;
  v11.super_class = CCUIModuleContentMetrics;
  configurationCopy = configuration;
  fontCopy = font;
  return [(CCUIModuleContentMetrics *)&v11 init];
}

+ (id)defaultMetricsForGridGeometryInfo:(CCUIGridGeometryInfo)info
{
  var1 = info.var1;
  var0 = info.var0;
  swift_getObjCClassMetadata();
  v5 = sub_1D16C39CC(var0, var1);

  return v5;
}

- (NSString)description
{
  selfCopy = self;
  CCUIModuleContentMetrics.description.getter();

  v3 = sub_1D16CC494();

  return v3;
}

- (CCUIModuleContentMetrics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end