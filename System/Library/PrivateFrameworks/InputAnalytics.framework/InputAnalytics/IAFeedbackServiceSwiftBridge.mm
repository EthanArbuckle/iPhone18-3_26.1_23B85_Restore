@interface IAFeedbackServiceSwiftBridge
- (IAFeedbackServiceSwiftBridge)init;
- (IAFeedbackServiceSwiftBridge)initWithFeatureDomain:(int64_t)domain action:(int64_t)action originalContent:(id)content generatedContent:(id)generatedContent modelInfo:(id)info;
- (NSString)modelInfo;
- (void)launchFeedbackWithCompletionHandler:(id)handler;
- (void)reportPresentedWithCompletionHandler:(id)handler;
- (void)setModelInfo:(id)info;
@end

@implementation IAFeedbackServiceSwiftBridge

- (NSString)modelInfo
{
  if (*(self + OBJC_IVAR___IAFeedbackServiceSwiftBridge_modelInfo + 8))
  {
    v2 = *(self + OBJC_IVAR___IAFeedbackServiceSwiftBridge_modelInfo);
    v3 = *(self + OBJC_IVAR___IAFeedbackServiceSwiftBridge_modelInfo + 8);

    v4 = sub_1D462EF94();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setModelInfo:(id)info
{
  if (info)
  {
    v4 = sub_1D462EFA4();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___IAFeedbackServiceSwiftBridge_modelInfo);
  v7 = *(self + OBJC_IVAR___IAFeedbackServiceSwiftBridge_modelInfo + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (IAFeedbackServiceSwiftBridge)initWithFeatureDomain:(int64_t)domain action:(int64_t)action originalContent:(id)content generatedContent:(id)generatedContent modelInfo:(id)info
{
  generatedContentCopy = generatedContent;
  if (content)
  {
    v11 = sub_1D462EFA4();
    v13 = v12;
    if (generatedContentCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (info)
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    return sub_1D4628F08(domain, action, v11, v13, generatedContentCopy, v15, v16, v18);
  }

  v11 = 0;
  v13 = 0;
  if (!generatedContent)
  {
    goto LABEL_6;
  }

LABEL_3:
  generatedContentCopy = sub_1D462EFA4();
  v15 = v14;
  if (!info)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = sub_1D462EFA4();
  v18 = v17;
  return sub_1D4628F08(domain, action, v11, v13, generatedContentCopy, v15, v16, v18);
}

- (void)reportPresentedWithCompletionHandler:(id)handler
{
  v5 = (*(*(sub_1D462AD20(&qword_1EC7D65A0, &qword_1D4631EB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1D462F004();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1D4631F30;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1D4631F38;
  v12[5] = v11;
  selfCopy = self;
  sub_1D462B264(0, 0, v7, &unk_1D4631F40, v12);
}

- (void)launchFeedbackWithCompletionHandler:(id)handler
{
  v5 = (*(*(sub_1D462AD20(&qword_1EC7D65A0, &qword_1D4631EB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1D462F004();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1D4631EC0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1D4631ED0;
  v12[5] = v11;
  selfCopy = self;
  sub_1D462B264(0, 0, v7, &unk_1D4631EE0, v12);
}

- (IAFeedbackServiceSwiftBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end