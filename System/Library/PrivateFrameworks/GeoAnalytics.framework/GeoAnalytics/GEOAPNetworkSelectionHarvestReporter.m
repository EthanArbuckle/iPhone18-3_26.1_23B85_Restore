@interface GEOAPNetworkSelectionHarvestReporter
+ (void)reportCellConnectionQualityHarvestRecord:(id)a3;
@end

@implementation GEOAPNetworkSelectionHarvestReporter

+ (void)reportCellConnectionQualityHarvestRecord:(id)a3
{
  v3 = [a3 data];
  [GEOAPPortal captureNetSelectionHarvestWithHarvestData:v3];
}

@end