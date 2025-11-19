@interface BMSocialHighlightFeedbackEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSocialHighlightFeedbackEvent)initWithClientIdentifier:(id)a3 feedbackType:(unint64_t)a4 feedbackCreationDate:(id)a5 highlight:(id)a6 clientVariant:(id)a7;
- (BMSocialHighlightFeedbackEvent)initWithProto:(id)a3;
- (BMSocialHighlightFeedbackEvent)initWithProtoData:(id)a3;
- (id)encodeAsProto;
- (id)proto;
- (int)_protoFeedbackType;
@end

@implementation BMSocialHighlightFeedbackEvent

- (int)_protoFeedbackType
{
  v3 = [(BMSocialHighlightFeedbackEvent *)self feedbackType];
  if (v3 >= 0xB)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(BMSocialHighlightFeedbackEvent *)self _protoFeedbackType];
    }

    LODWORD(v3) = -1;
  }

  return v3;
}

- (BMSocialHighlightFeedbackEvent)initWithClientIdentifier:(id)a3 feedbackType:(unint64_t)a4 feedbackCreationDate:(id)a5 highlight:(id)a6 clientVariant:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMSocialHighlightFeedbackEvent;
  v17 = [(BMEventBase *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientIdentifier, a3);
    v18->_feedbackType = a4;
    objc_storeStrong(&v18->_feedbackCreationDate, a5);
    objc_storeStrong(&v18->_highlight, a6);
    objc_storeStrong(&v18->_clientVariant, a7);
  }

  return v18;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  if (a4 == 4)
  {
    v6 = off_1E6E520D8;
    goto LABEL_5;
  }

  if (a4 == 3)
  {
    v6 = off_1E6E520D0;
LABEL_5:
    v7 = [objc_alloc(*v6) initWithProtoData:v5];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)encodeAsProto
{
  v2 = [(BMSocialHighlightFeedbackEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSocialHighlightFeedbackEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = MEMORY[0x1E695DF00];
    v6 = v4;
    v7 = [v5 alloc];
    [v6 feedbackCreationSecondsSinceReferenceDate];
    v8 = [v7 initWithTimeIntervalSinceReferenceDate:?];
    v9 = [BMRankableSocialHighlight alloc];
    v10 = [v6 highlight];
    v11 = [(BMRankableSocialHighlight *)v9 initWithProto:v10];

    v12 = [v6 clientIdentifier];
    v13 = [v6 feedbackType];

    v14 = [(BMSocialHighlightFeedbackEvent *)self _feedbackTypeForProtoType:v13];
    v15 = [(BMRankableSocialHighlight *)v11 clientVariant];
    self = [(BMSocialHighlightFeedbackEvent *)self initWithClientIdentifier:v12 feedbackType:v14 feedbackCreationDate:v8 highlight:v11 clientVariant:v15];

    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BMSocialHighlightFeedbackEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSocialHighlightFeedbackEvent alloc] initWithData:v4];

    self = [(BMSocialHighlightFeedbackEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMSocialHighlightFeedbackEvent *)self clientIdentifier];
  [v3 setClientIdentifier:v4];

  [v3 setFeedbackType:{-[BMSocialHighlightFeedbackEvent _protoFeedbackType](self, "_protoFeedbackType")}];
  v5 = [(BMSocialHighlightFeedbackEvent *)self feedbackCreationDate];
  [v5 timeIntervalSinceReferenceDate];
  [v3 setFeedbackCreationSecondsSinceReferenceDate:?];

  v6 = [(BMSocialHighlightFeedbackEvent *)self highlight];
  v7 = [v6 proto];
  [v3 setHighlight:v7];

  v8 = [(BMSocialHighlightFeedbackEvent *)self clientVariant];
  [v3 setClientVariant:v8];

  return v3;
}

@end