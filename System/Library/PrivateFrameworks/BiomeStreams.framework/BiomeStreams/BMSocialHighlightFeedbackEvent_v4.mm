@interface BMSocialHighlightFeedbackEvent_v4
- (BMSocialHighlightFeedbackEvent_v4)initWithProto:(id)proto;
@end

@implementation BMSocialHighlightFeedbackEvent_v4

- (BMSocialHighlightFeedbackEvent_v4)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = protoCopy;
    v6 = objc_alloc(MEMORY[0x1E695DF00]);
    [v5 feedbackCreationSecondsSinceReferenceDate];
    v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    v8 = [BMRankableSocialHighlight alloc];
    highlight = [v5 highlight];
    v10 = [(BMRankableSocialHighlight *)v8 initWithProto:highlight];

    clientIdentifier = [v5 clientIdentifier];
    feedbackType = [v5 feedbackType];
    v13 = feedbackType;
    if (feedbackType >= 0xC)
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [BMSocialHighlightFeedbackEvent_v4 initWithProto:v13];
      }

      v14 = 11;
    }

    else
    {
      v14 = qword_184D27C60[feedbackType];
    }

    clientVariant = [(BMRankableSocialHighlight *)v10 clientVariant];
    self = [(BMSocialHighlightFeedbackEvent *)self initWithClientIdentifier:clientIdentifier feedbackType:v14 feedbackCreationDate:v7 highlight:v10 clientVariant:clientVariant];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end