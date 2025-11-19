@interface SFNullCardSection(CRCardSection)
- (id)parametersForInteraction:()CRCardSection;
@end

@implementation SFNullCardSection(CRCardSection)

- (id)parametersForInteraction:()CRCardSection
{
  v6.receiver = a1;
  v6.super_class = &off_285602C08;
  v1 = objc_msgSendSuper2(&v6, sel_parametersForInteraction_);
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB98] set];
  }

  v4 = v3;

  return v4;
}

@end