@interface SGMIFeatureSubmodelLink
- (id)initFor:(int64_t)for fromUnigram:(int64_t)unigram andBigram:(int64_t)bigram;
@end

@implementation SGMIFeatureSubmodelLink

- (id)initFor:(int64_t)for fromUnigram:(int64_t)unigram andBigram:(int64_t)bigram
{
  v9.receiver = self;
  v9.super_class = SGMIFeatureSubmodelLink;
  result = [(SGMIFeatureSubmodelLink *)&v9 init];
  if (result)
  {
    *(result + 1) = for;
    *(result + 2) = unigram;
    *(result + 3) = bigram;
  }

  return result;
}

@end