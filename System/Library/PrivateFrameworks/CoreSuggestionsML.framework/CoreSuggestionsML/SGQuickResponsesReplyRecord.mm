@interface SGQuickResponsesReplyRecord
- (SGQuickResponsesReplyRecord)initWithDisplayed:(double)a3 selected:(double)a4 matched:(double)a5;
@end

@implementation SGQuickResponsesReplyRecord

- (SGQuickResponsesReplyRecord)initWithDisplayed:(double)a3 selected:(double)a4 matched:(double)a5
{
  if (a3 < 0.0)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1317 description:{@"Invalid parameter not satisfying: %@", @"displayed >= 0"}];
  }

  if (a4 < 0.0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1318 description:{@"Invalid parameter not satisfying: %@", @"selected >= 0"}];
  }

  if (a5 < 0.0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1319 description:{@"Invalid parameter not satisfying: %@", @"matched >= 0"}];
  }

  v14.receiver = self;
  v14.super_class = SGQuickResponsesReplyRecord;
  result = [(SGQuickResponsesReplyRecord *)&v14 init];
  if (result)
  {
    result->_displayed = a3;
    result->_selected = a4;
    result->_matched = a5;
  }

  return result;
}

@end