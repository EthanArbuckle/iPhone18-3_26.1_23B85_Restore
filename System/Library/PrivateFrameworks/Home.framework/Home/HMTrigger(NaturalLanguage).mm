@interface HMTrigger(NaturalLanguage)
- (id)_hf_naturalLanguageDetailsSentenceElementsWithOptions:()NaturalLanguage;
- (id)hf_naturalLangugeDetailsWithOptions:()NaturalLanguage;
@end

@implementation HMTrigger(NaturalLanguage)

- (id)hf_naturalLangugeDetailsWithOptions:()NaturalLanguage
{
  v1 = [a1 _hf_naturalLanguageDetailsSentenceElementsWithOptions:?];
  v2 = [v1 mutableCopy];

  if ([v2 count])
  {
    if (_MergedGlobals_239 != -1)
    {
      dispatch_once(&_MergedGlobals_239, &__block_literal_global_13_3);
    }

    v3 = qword_280E02DD8;
    [v3 setListStyle:2];
    v4 = [v2 array];
    v5 = [v3 stringForObjectValue:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_hf_naturalLanguageDetailsSentenceElementsWithOptions:()NaturalLanguage
{
  if (qword_280E02DE0 != -1)
  {
    dispatch_once(&qword_280E02DE0, &__block_literal_global_17_3);
  }

  v1 = qword_280E02DE8;

  return v1;
}

@end