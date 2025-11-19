@interface IFImage(GenerationReport)
- (void)setGenerationReport:()GenerationReport;
@end

@implementation IFImage(GenerationReport)

- (void)setGenerationReport:()GenerationReport
{
  v4 = a3;
  v5 = [a1 generationReport];

  if (v4 && v5)
  {
    v6 = _ISDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [IFImage(GenerationReport) setGenerationReport:v6];
    }
  }

  else
  {
    objc_setAssociatedObject(a1, &_ISImageGenerationReportKey, v4, 1);
  }
}

@end