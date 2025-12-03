@interface ISGenerationReport
+ (id)generationReportWithCustomRenderedTag:(unsigned __int16)tag;
- (ISGenerationReport)initWithIconTreatment:(unint64_t)treatment hasLightingEffects:(BOOL)effects;
- (unsigned)customRenderedTag;
@end

@implementation ISGenerationReport

- (ISGenerationReport)initWithIconTreatment:(unint64_t)treatment hasLightingEffects:(BOOL)effects
{
  v7.receiver = self;
  v7.super_class = ISGenerationReport;
  result = [(ISGenerationReport *)&v7 init];
  if (result)
  {
    result->_iconTreatment = treatment;
    result->_hasLightingEffects = effects;
  }

  return result;
}

- (unsigned)customRenderedTag
{
  iconTreatment = [(ISGenerationReport *)self iconTreatment];
  if ([(ISGenerationReport *)self hasLightingEffects])
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  return (v4 | iconTreatment) + 256;
}

+ (id)generationReportWithCustomRenderedTag:(unsigned __int16)tag
{
  if ((tag & 0xFF00) == 0x100)
  {
    v4 = [[ISGenerationReport alloc] initWithIconTreatment:(tag - 256) & 0xF hasLightingEffects:((tag - 256) >> 4) & 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end