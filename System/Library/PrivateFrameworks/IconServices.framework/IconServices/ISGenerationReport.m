@interface ISGenerationReport
+ (id)generationReportWithCustomRenderedTag:(unsigned __int16)a3;
- (ISGenerationReport)initWithIconTreatment:(unint64_t)a3 hasLightingEffects:(BOOL)a4;
- (unsigned)customRenderedTag;
@end

@implementation ISGenerationReport

- (ISGenerationReport)initWithIconTreatment:(unint64_t)a3 hasLightingEffects:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = ISGenerationReport;
  result = [(ISGenerationReport *)&v7 init];
  if (result)
  {
    result->_iconTreatment = a3;
    result->_hasLightingEffects = a4;
  }

  return result;
}

- (unsigned)customRenderedTag
{
  v3 = [(ISGenerationReport *)self iconTreatment];
  if ([(ISGenerationReport *)self hasLightingEffects])
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  return (v4 | v3) + 256;
}

+ (id)generationReportWithCustomRenderedTag:(unsigned __int16)a3
{
  if ((a3 & 0xFF00) == 0x100)
  {
    v4 = [[ISGenerationReport alloc] initWithIconTreatment:(a3 - 256) & 0xF hasLightingEffects:((a3 - 256) >> 4) & 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end