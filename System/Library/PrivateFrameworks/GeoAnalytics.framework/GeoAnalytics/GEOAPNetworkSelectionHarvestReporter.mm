@interface GEOAPNetworkSelectionHarvestReporter
+ (void)reportCellConnectionQualityHarvestRecord:(id)record;
@end

@implementation GEOAPNetworkSelectionHarvestReporter

+ (void)reportCellConnectionQualityHarvestRecord:(id)record
{
  data = [record data];
  [GEOAPPortal captureNetSelectionHarvestWithHarvestData:data];
}

@end