@interface ReportAConcernObjCBridge
+ (void)evaluateWithInteraction:(id)interaction action:(int64_t)action showFeedbackForm:(BOOL)form associateWithAppleAccount:(BOOL)account sceneID:(id)d presentingBundleId:(id)id completion:(id)completion;
+ (void)presentedWithInteraction:(id)interaction completion:(id)completion;
- (_TtC15FeedbackService24ReportAConcernObjCBridge)init;
@end

@implementation ReportAConcernObjCBridge

+ (void)evaluateWithInteraction:(id)interaction action:(int64_t)action showFeedbackForm:(BOOL)form associateWithAppleAccount:(BOOL)account sceneID:(id)d presentingBundleId:(id)id completion:(id)completion
{
  accountCopy = account;
  formCopy = form;
  actionCopy = action;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4100, &qword_1B01511B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &actionCopy - v14;
  v16 = _Block_copy(completion);
  if (!d)
  {
    v18 = 0;
    if (id)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 0;
    v21 = 0;
    goto LABEL_6;
  }

  d = sub_1B014CC1C();
  v18 = v17;
  if (!id)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = sub_1B014CC1C();
  v21 = v20;
LABEL_6:
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  type metadata accessor for FBKSInteraction(0);
  interactionCopy = interaction;
  v25 = sub_1B00F76D4(interactionCopy);
  v26 = sub_1B014CEAC();
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v28 = actionCopy;
  *(v27 + 32) = ObjCClassMetadata;
  *(v27 + 40) = v28;
  *(v27 + 48) = v25;
  *(v27 + 56) = d;
  *(v27 + 64) = v18;
  *(v27 + 72) = v19;
  *(v27 + 80) = v21;
  LOBYTE(v28) = formCopy;
  *(v27 + 88) = accountCopy;
  *(v27 + 89) = v28;
  *(v27 + 96) = sub_1B00F9900;
  *(v27 + 104) = v22;
  v29 = v25;
  sub_1B00F8B5C(0, 0, v15, &unk_1B0151210, v27);
}

+ (void)presentedWithInteraction:(id)interaction completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for FBKSInteraction(0);
  _Block_copy(v5);
  interactionCopy = interaction;
  v6 = sub_1B00F76D4(interactionCopy);
  sub_1B011B80C(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (_TtC15FeedbackService24ReportAConcernObjCBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ReportAConcernObjCBridge();
  return [(ReportAConcernObjCBridge *)&v3 init];
}

@end