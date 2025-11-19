@interface BMSocialHighlightFeedbackEvent_v4
- (BMSocialHighlightFeedbackEvent_v4)initWithProto:(id)a3;
@end

@implementation BMSocialHighlightFeedbackEvent_v4

- (BMSocialHighlightFeedbackEvent_v4)initWithProto:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = objc_alloc(MEMORY[0x1E695DF00]);
    [v5 feedbackCreationSecondsSinceReferenceDate];
    v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    v8 = [BMRankableSocialHighlight alloc];
    v9 = [v5 highlight];
    v10 = [(BMRankableSocialHighlight *)v8 initWithProto:v9];

    v11 = [v5 clientIdentifier];
    v12 = [v5 feedbackType];
    v13 = v12;
    if (v12 >= 0xC)
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
      v14 = qword_184D27C60[v12];
    }

    v17 = [(BMRankableSocialHighlight *)v10 clientVariant];
    self = [(BMSocialHighlightFeedbackEvent *)self initWithClientIdentifier:v11 feedbackType:v14 feedbackCreationDate:v7 highlight:v10 clientVariant:v17];

    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end