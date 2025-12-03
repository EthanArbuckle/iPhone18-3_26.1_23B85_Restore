@interface SGQuickResponsesRecords
- (SGQuickResponsesRecords)initWithReplyRecords:(id)records totalOpportunities:(double)opportunities totalDisplayed:(double)displayed totalSelected:(double)selected totalMatched:(double)matched totalUnmatched:(double)unmatched;
@end

@implementation SGQuickResponsesRecords

- (SGQuickResponsesRecords)initWithReplyRecords:(id)records totalOpportunities:(double)opportunities totalDisplayed:(double)displayed totalSelected:(double)selected totalMatched:(double)matched totalUnmatched:(double)unmatched
{
  recordsCopy = records;
  if (opportunities < 0.0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1294 description:{@"Invalid parameter not satisfying: %@", @"totalOpportunities >= 0"}];
  }

  if (displayed < 0.0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1295 description:{@"Invalid parameter not satisfying: %@", @"totalDisplayed >= 0"}];
  }

  if (selected < 0.0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1296 description:{@"Invalid parameter not satisfying: %@", @"totalSelected >= 0"}];
  }

  if (matched < 0.0)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1297 description:{@"Invalid parameter not satisfying: %@", @"totalMatched >= 0"}];
  }

  if (unmatched < 0.0)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1298 description:{@"Invalid parameter not satisfying: %@", @"totalUnmatched >= 0"}];
  }

  v25.receiver = self;
  v25.super_class = SGQuickResponsesRecords;
  v17 = [(SGQuickResponsesRecords *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_replyRecords, records);
    v18->_totalOpportunities = opportunities;
    v18->_totalDisplayed = displayed;
    v18->_totalSelected = selected;
    v18->_totalMatched = matched;
    v18->_totalUnmatched = unmatched;
  }

  return v18;
}

@end