@interface SGQuickResponsesReplyRecord
- (SGQuickResponsesReplyRecord)initWithDisplayed:(double)displayed selected:(double)selected matched:(double)matched;
@end

@implementation SGQuickResponsesReplyRecord

- (SGQuickResponsesReplyRecord)initWithDisplayed:(double)displayed selected:(double)selected matched:(double)matched
{
  if (displayed < 0.0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1317 description:{@"Invalid parameter not satisfying: %@", @"displayed >= 0"}];
  }

  if (selected < 0.0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1318 description:{@"Invalid parameter not satisfying: %@", @"selected >= 0"}];
  }

  if (matched < 0.0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1319 description:{@"Invalid parameter not satisfying: %@", @"matched >= 0"}];
  }

  v14.receiver = self;
  v14.super_class = SGQuickResponsesReplyRecord;
  result = [(SGQuickResponsesReplyRecord *)&v14 init];
  if (result)
  {
    result->_displayed = displayed;
    result->_selected = selected;
    result->_matched = matched;
  }

  return result;
}

@end