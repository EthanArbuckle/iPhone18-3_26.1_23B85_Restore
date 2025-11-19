@interface CCUIModuleContentMetrics
+ (id)defaultMetricsForGridGeometryInfo:(CCUIGridGeometryInfo)a3;
- (CCUIGridGeometryInfo)gridGeometryInfo;
- (CCUIModuleContentMetrics)init;
- (CCUIModuleContentMetrics)initWithSymbolConfiguration:(id)a3 symbolFont:(id)a4 symbolScaleFactor:(double)a5 metricsScaleFactor:(double)a6 gridGeometryInfo:(CCUIGridGeometryInfo)a7;
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

- (CCUIModuleContentMetrics)initWithSymbolConfiguration:(id)a3 symbolFont:(id)a4 symbolScaleFactor:(double)a5 metricsScaleFactor:(double)a6 gridGeometryInfo:(CCUIGridGeometryInfo)a7
{
  *(&self->super.isa + OBJC_IVAR___CCUIModuleContentMetrics_symbolConfiguration) = a3;
  *(&self->super.isa + OBJC_IVAR___CCUIModuleContentMetrics_symbolFont) = a4;
  *(&self->super.isa + OBJC_IVAR___CCUIModuleContentMetrics_symbolScaleFactor) = a5;
  *(&self->super.isa + OBJC_IVAR___CCUIModuleContentMetrics_metricsScaleFactor) = a6;
  *(&self->super.isa + OBJC_IVAR___CCUIModuleContentMetrics_gridGeometryInfo) = a7;
  v11.receiver = self;
  v11.super_class = CCUIModuleContentMetrics;
  v8 = a3;
  v9 = a4;
  return [(CCUIModuleContentMetrics *)&v11 init];
}

+ (id)defaultMetricsForGridGeometryInfo:(CCUIGridGeometryInfo)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  swift_getObjCClassMetadata();
  v5 = sub_1D16C39CC(var0, var1);

  return v5;
}

- (NSString)description
{
  v2 = self;
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