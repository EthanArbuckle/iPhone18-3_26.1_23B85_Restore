@interface SGQuickResponsesRecords
- (SGQuickResponsesRecords)initWithReplyRecords:(id)a3 totalOpportunities:(double)a4 totalDisplayed:(double)a5 totalSelected:(double)a6 totalMatched:(double)a7 totalUnmatched:(double)a8;
@end

@implementation SGQuickResponsesRecords

- (SGQuickResponsesRecords)initWithReplyRecords:(id)a3 totalOpportunities:(double)a4 totalDisplayed:(double)a5 totalSelected:(double)a6 totalMatched:(double)a7 totalUnmatched:(double)a8
{
  v16 = a3;
  if (a4 < 0.0)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1294 description:{@"Invalid parameter not satisfying: %@", @"totalOpportunities >= 0"}];
  }

  if (a5 < 0.0)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1295 description:{@"Invalid parameter not satisfying: %@", @"totalDisplayed >= 0"}];
  }

  if (a6 < 0.0)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1296 description:{@"Invalid parameter not satisfying: %@", @"totalSelected >= 0"}];
  }

  if (a7 < 0.0)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1297 description:{@"Invalid parameter not satisfying: %@", @"totalMatched >= 0"}];
  }

  if (a8 < 0.0)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1298 description:{@"Invalid parameter not satisfying: %@", @"totalUnmatched >= 0"}];
  }

  v25.receiver = self;
  v25.super_class = SGQuickResponsesRecords;
  v17 = [(SGQuickResponsesRecords *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_replyRecords, a3);
    v18->_totalOpportunities = a4;
    v18->_totalDisplayed = a5;
    v18->_totalSelected = a6;
    v18->_totalMatched = a7;
    v18->_totalUnmatched = a8;
  }

  return v18;
}

@end