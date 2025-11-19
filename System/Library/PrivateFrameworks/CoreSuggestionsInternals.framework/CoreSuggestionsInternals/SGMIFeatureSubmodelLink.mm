@interface SGMIFeatureSubmodelLink
- (id)initFor:(int64_t)a3 fromUnigram:(int64_t)a4 andBigram:(int64_t)a5;
@end

@implementation SGMIFeatureSubmodelLink

- (id)initFor:(int64_t)a3 fromUnigram:(int64_t)a4 andBigram:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = SGMIFeatureSubmodelLink;
  result = [(SGMIFeatureSubmodelLink *)&v9 init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 2) = a4;
    *(result + 3) = a5;
  }

  return result;
}

@end