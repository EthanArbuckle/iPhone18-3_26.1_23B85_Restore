@interface BMSocialHighlightFeedbackEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSocialHighlightFeedbackEvent)initWithClientIdentifier:(id)identifier feedbackType:(unint64_t)type feedbackCreationDate:(id)date highlight:(id)highlight clientVariant:(id)variant;
- (BMSocialHighlightFeedbackEvent)initWithProto:(id)proto;
- (BMSocialHighlightFeedbackEvent)initWithProtoData:(id)data;
- (id)encodeAsProto;
- (id)proto;
- (int)_protoFeedbackType;
@end

@implementation BMSocialHighlightFeedbackEvent

- (int)_protoFeedbackType
{
  feedbackType = [(BMSocialHighlightFeedbackEvent *)self feedbackType];
  if (feedbackType >= 0xB)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(BMSocialHighlightFeedbackEvent *)self _protoFeedbackType];
    }

    LODWORD(feedbackType) = -1;
  }

  return feedbackType;
}

- (BMSocialHighlightFeedbackEvent)initWithClientIdentifier:(id)identifier feedbackType:(unint64_t)type feedbackCreationDate:(id)date highlight:(id)highlight clientVariant:(id)variant
{
  identifierCopy = identifier;
  dateCopy = date;
  highlightCopy = highlight;
  variantCopy = variant;
  v20.receiver = self;
  v20.super_class = BMSocialHighlightFeedbackEvent;
  v17 = [(BMEventBase *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientIdentifier, identifier);
    v18->_feedbackType = type;
    objc_storeStrong(&v18->_feedbackCreationDate, date);
    objc_storeStrong(&v18->_highlight, highlight);
    objc_storeStrong(&v18->_clientVariant, variant);
  }

  return v18;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 4)
  {
    v6 = off_1E6E520D8;
    goto LABEL_5;
  }

  if (version == 3)
  {
    v6 = off_1E6E520D0;
LABEL_5:
    v7 = [objc_alloc(*v6) initWithProtoData:dataCopy];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)encodeAsProto
{
  proto = [(BMSocialHighlightFeedbackEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMSocialHighlightFeedbackEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = MEMORY[0x1E695DF00];
    v6 = protoCopy;
    v7 = [v5 alloc];
    [v6 feedbackCreationSecondsSinceReferenceDate];
    v8 = [v7 initWithTimeIntervalSinceReferenceDate:?];
    v9 = [BMRankableSocialHighlight alloc];
    highlight = [v6 highlight];
    v11 = [(BMRankableSocialHighlight *)v9 initWithProto:highlight];

    clientIdentifier = [v6 clientIdentifier];
    feedbackType = [v6 feedbackType];

    v14 = [(BMSocialHighlightFeedbackEvent *)self _feedbackTypeForProtoType:feedbackType];
    clientVariant = [(BMRankableSocialHighlight *)v11 clientVariant];
    self = [(BMSocialHighlightFeedbackEvent *)self initWithClientIdentifier:clientIdentifier feedbackType:v14 feedbackCreationDate:v8 highlight:v11 clientVariant:clientVariant];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMSocialHighlightFeedbackEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSocialHighlightFeedbackEvent alloc] initWithData:dataCopy];

    self = [(BMSocialHighlightFeedbackEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  clientIdentifier = [(BMSocialHighlightFeedbackEvent *)self clientIdentifier];
  [v3 setClientIdentifier:clientIdentifier];

  [v3 setFeedbackType:{-[BMSocialHighlightFeedbackEvent _protoFeedbackType](self, "_protoFeedbackType")}];
  feedbackCreationDate = [(BMSocialHighlightFeedbackEvent *)self feedbackCreationDate];
  [feedbackCreationDate timeIntervalSinceReferenceDate];
  [v3 setFeedbackCreationSecondsSinceReferenceDate:?];

  highlight = [(BMSocialHighlightFeedbackEvent *)self highlight];
  proto = [highlight proto];
  [v3 setHighlight:proto];

  clientVariant = [(BMSocialHighlightFeedbackEvent *)self clientVariant];
  [v3 setClientVariant:clientVariant];

  return v3;
}

@end