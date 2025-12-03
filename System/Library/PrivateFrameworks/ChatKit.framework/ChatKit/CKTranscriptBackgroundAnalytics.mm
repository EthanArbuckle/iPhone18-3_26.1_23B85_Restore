@interface CKTranscriptBackgroundAnalytics
+ (void)trackBackgroundChangedFrom:(id)from to:(id)to inConversation:(id)conversation context:(int64_t)context;
+ (void)trackBackgroundChangedFrom:(id)from to:(id)to withNewPosterConfiguration:(id)configuration inConversation:(id)conversation context:(int64_t)context;
+ (void)trackTranscriptBackgroundChangedIn:(id)in withOutboundBackground:(id)background;
- (_TtC7ChatKit31CKTranscriptBackgroundAnalytics)init;
@end

@implementation CKTranscriptBackgroundAnalytics

+ (void)trackTranscriptBackgroundChangedIn:(id)in withOutboundBackground:(id)background
{
  inCopy = in;
  backgroundCopy = background;
  transcriptBackground = [inCopy transcriptBackground];
  _s7ChatKit31CKTranscriptBackgroundAnalyticsC05trackD7Changed4from2to2in7contextyAA0cD0CSg_AKSo14CKConversationCAC13ChangeContextOtFZ_0(background, transcriptBackground, inCopy, 2);
}

+ (void)trackBackgroundChangedFrom:(id)from to:(id)to inConversation:(id)conversation context:(int64_t)context
{
  fromCopy = from;
  toCopy = to;
  conversationCopy = conversation;
  _s7ChatKit31CKTranscriptBackgroundAnalyticsC05trackD7Changed4from2to2in7contextyAA0cD0CSg_AKSo14CKConversationCAC13ChangeContextOtFZ_0(from, to, conversationCopy, context);
}

+ (void)trackBackgroundChangedFrom:(id)from to:(id)to withNewPosterConfiguration:(id)configuration inConversation:(id)conversation context:(int64_t)context
{
  if (configuration)
  {
    fromCopy = from;
    toCopy = to;
    conversationCopy = conversation;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    fromCopy2 = from;
    toCopy2 = to;
    conversationCopy2 = conversation;
  }

  _s7ChatKit31CKTranscriptBackgroundAnalyticsC05trackD7Changed4from2to26withNewPosterConfiguration14inConversation7contextyAA0cD0CSg_ALypSgSo14CKConversationCAC13ChangeContextOtFZ_0(from, to, v17, conversation, context);

  sub_19021E7D8(v17);
}

- (_TtC7ChatKit31CKTranscriptBackgroundAnalytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKTranscriptBackgroundAnalytics();
  return [(CKTranscriptBackgroundAnalytics *)&v3 init];
}

@end