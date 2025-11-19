@interface SGMultiHeadPredictionItem
- (SGMultiHeadPredictionItem)initWithScore:(id)a3 label:(id)a4;
@end

@implementation SGMultiHeadPredictionItem

- (SGMultiHeadPredictionItem)initWithScore:(id)a3 label:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGMultiHeadInference.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"score"}];
  }

  v14.receiver = self;
  v14.super_class = SGMultiHeadPredictionItem;
  v10 = [(SGMultiHeadPredictionItem *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_score, a3);
    objc_storeStrong(&v11->_label, a4);
  }

  return v11;
}

@end