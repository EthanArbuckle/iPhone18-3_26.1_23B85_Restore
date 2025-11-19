@interface ReportAConcernObjCBridge
+ (void)evaluateWithInteraction:(id)a3 action:(int64_t)a4 showFeedbackForm:(BOOL)a5 associateWithAppleAccount:(BOOL)a6 sceneID:(id)a7 presentingBundleId:(id)a8 completion:(id)a9;
+ (void)presentedWithInteraction:(id)a3 completion:(id)a4;
- (_TtC15FeedbackService24ReportAConcernObjCBridge)init;
@end

@implementation ReportAConcernObjCBridge

+ (void)evaluateWithInteraction:(id)a3 action:(int64_t)a4 showFeedbackForm:(BOOL)a5 associateWithAppleAccount:(BOOL)a6 sceneID:(id)a7 presentingBundleId:(id)a8 completion:(id)a9
{
  v31 = a6;
  v32 = a5;
  v30 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4100, &qword_1B01511B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v30 - v14;
  v16 = _Block_copy(a9);
  if (!a7)
  {
    v18 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 0;
    v21 = 0;
    goto LABEL_6;
  }

  a7 = sub_1B014CC1C();
  v18 = v17;
  if (!a8)
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
  v24 = a3;
  v25 = sub_1B00F76D4(v24);
  v26 = sub_1B014CEAC();
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v28 = v30;
  *(v27 + 32) = ObjCClassMetadata;
  *(v27 + 40) = v28;
  *(v27 + 48) = v25;
  *(v27 + 56) = a7;
  *(v27 + 64) = v18;
  *(v27 + 72) = v19;
  *(v27 + 80) = v21;
  LOBYTE(v28) = v32;
  *(v27 + 88) = v31;
  *(v27 + 89) = v28;
  *(v27 + 96) = sub_1B00F9900;
  *(v27 + 104) = v22;
  v29 = v25;
  sub_1B00F8B5C(0, 0, v15, &unk_1B0151210, v27);
}

+ (void)presentedWithInteraction:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for FBKSInteraction(0);
  _Block_copy(v5);
  v7 = a3;
  v6 = sub_1B00F76D4(v7);
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