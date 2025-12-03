@interface SGQuickResponsesCategoryScore
- (SGQuickResponsesCategoryScore)init;
- (void)addScore:(double)score;
@end

@implementation SGQuickResponsesCategoryScore

- (void)addScore:(double)score
{
  if (score < 0.0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesRanking.m" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"score >= 0"}];
  }

  v5 = self->_modelCount + 1;
  self->_modelCount = v5;
  maximum = self->_maximum;
  if (maximum <= score)
  {
    maximum = score;
  }

  self->_average = self->_average + (score - self->_average) / v5;
  self->_maximum = maximum;
}

- (SGQuickResponsesCategoryScore)init
{
  v3.receiver = self;
  v3.super_class = SGQuickResponsesCategoryScore;
  result = [(SGQuickResponsesCategoryScore *)&v3 init];
  if (result)
  {
    result->_modelCount = 0;
    result->_average = 0.0;
    result->_maximum = 0.0;
  }

  return result;
}

@end