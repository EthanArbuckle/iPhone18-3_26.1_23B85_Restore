@interface SGMultiHeadPredictionItem
- (SGMultiHeadPredictionItem)initWithScore:(id)score label:(id)label;
@end

@implementation SGMultiHeadPredictionItem

- (SGMultiHeadPredictionItem)initWithScore:(id)score label:(id)label
{
  scoreCopy = score;
  labelCopy = label;
  if (!scoreCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMultiHeadInference.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"score"}];
  }

  v14.receiver = self;
  v14.super_class = SGMultiHeadPredictionItem;
  v10 = [(SGMultiHeadPredictionItem *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_score, score);
    objc_storeStrong(&v11->_label, label);
  }

  return v11;
}

@end