@interface CKTranscriptScrollIntentTriggerUpdateContext
- (CKTranscriptScrollIntentTriggerUpdateContext)initWithContentOffsetScrollIntent:(int64_t)intent currentScrollIntent:(int64_t)scrollIntent;
- (id)description;
@end

@implementation CKTranscriptScrollIntentTriggerUpdateContext

- (CKTranscriptScrollIntentTriggerUpdateContext)initWithContentOffsetScrollIntent:(int64_t)intent currentScrollIntent:(int64_t)scrollIntent
{
  v7.receiver = self;
  v7.super_class = CKTranscriptScrollIntentTriggerUpdateContext;
  result = [(CKTranscriptScrollIntentTriggerUpdateContext *)&v7 init];
  if (result)
  {
    result->_contentOffsetScrollIntent = intent;
    result->_currentScrollIntent = scrollIntent;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = CKDebugNameForCKTranscriptScrollIntent([(CKTranscriptScrollIntentTriggerUpdateContext *)self contentOffsetScrollIntent]);
  [v3 appendFormat:@" contentOffsetScrollIntent=%@", v4];

  v5 = CKDebugNameForCKTranscriptScrollIntent([(CKTranscriptScrollIntentTriggerUpdateContext *)self currentScrollIntent]);
  [v3 appendFormat:@" currentScrollIntent=%@", v5];

  [v3 appendString:@">"];
  v6 = [v3 copy];

  return v6;
}

@end