@interface CKTranscriptBackgroundAnalytics
+ (void)trackBackgroundChangedFrom:(id)a3 to:(id)a4 inConversation:(id)a5 context:(int64_t)a6;
+ (void)trackBackgroundChangedFrom:(id)a3 to:(id)a4 withNewPosterConfiguration:(id)a5 inConversation:(id)a6 context:(int64_t)a7;
+ (void)trackTranscriptBackgroundChangedIn:(id)a3 withOutboundBackground:(id)a4;
- (_TtC7ChatKit31CKTranscriptBackgroundAnalytics)init;
@end

@implementation CKTranscriptBackgroundAnalytics

+ (void)trackTranscriptBackgroundChangedIn:(id)a3 withOutboundBackground:(id)a4
{
  v5 = a3;
  v7 = a4;
  v6 = [v5 transcriptBackground];
  _s7ChatKit31CKTranscriptBackgroundAnalyticsC05trackD7Changed4from2to2in7contextyAA0cD0CSg_AKSo14CKConversationCAC13ChangeContextOtFZ_0(a4, v6, v5, 2);
}

+ (void)trackBackgroundChangedFrom:(id)a3 to:(id)a4 inConversation:(id)a5 context:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  _s7ChatKit31CKTranscriptBackgroundAnalyticsC05trackD7Changed4from2to2in7contextyAA0cD0CSg_AKSo14CKConversationCAC13ChangeContextOtFZ_0(a3, a4, v12, a6);
}

+ (void)trackBackgroundChangedFrom:(id)a3 to:(id)a4 withNewPosterConfiguration:(id)a5 inConversation:(id)a6 context:(int64_t)a7
{
  if (a5)
  {
    v11 = a3;
    v12 = a4;
    v13 = a6;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    v14 = a3;
    v15 = a4;
    v16 = a6;
  }

  _s7ChatKit31CKTranscriptBackgroundAnalyticsC05trackD7Changed4from2to26withNewPosterConfiguration14inConversation7contextyAA0cD0CSg_ALypSgSo14CKConversationCAC13ChangeContextOtFZ_0(a3, a4, v17, a6, a7);

  sub_19021E7D8(v17);
}

- (_TtC7ChatKit31CKTranscriptBackgroundAnalytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKTranscriptBackgroundAnalytics();
  return [(CKTranscriptBackgroundAnalytics *)&v3 init];
}

@end