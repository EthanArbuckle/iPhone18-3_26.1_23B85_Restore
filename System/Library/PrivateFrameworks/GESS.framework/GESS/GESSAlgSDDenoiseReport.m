@interface GESSAlgSDDenoiseReport
- (GESSAlgSDDenoiseReport)init;
@end

@implementation GESSAlgSDDenoiseReport

- (GESSAlgSDDenoiseReport)init
{
  v3.receiver = self;
  v3.super_class = GESSAlgSDDenoiseReport;
  return [(GESSAlgSDSmoothReport *)&v3 init];
}

@end