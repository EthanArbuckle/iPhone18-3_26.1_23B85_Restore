@interface TextUnderstandingManager
+ (_TtC21DocumentUnderstanding24TextUnderstandingManager)shared;
+ (id)filterOrderExtractionsWithExtractions:(id)extractions error:(id *)error;
+ (int64_t)getExtractionCategoryFrom:(id)from;
+ (void)_extractPersonalIDWithLines:(NSArray *)lines pid:(int64_t)pid completionHandler:(id)handler;
- (void)addOrUpdateSearchableItems:(id)items bundleID:(id)d completion:(id)completion;
- (void)addSerializedDocument:(id)document documentType:(int64_t)type completion:(id)completion;
- (void)extractEventWithSerializedDocument:(id)document documentType:(int64_t)type pid:(int64_t)pid completion:(id)completion;
- (void)extractPersonalIDWithLines:(id)lines pid:(int64_t)pid completion:(id)completion;
- (void)foundInEventResultWithSerializedDocument:(id)document documentType:(int64_t)type completion:(id)completion;
- (void)incrementallyUpdatePoem;
- (void)onBoardPoem;
@end

@implementation TextUnderstandingManager

+ (_TtC21DocumentUnderstanding24TextUnderstandingManager)shared
{
  v2 = static TextUnderstandingManager.shared.getter();

  return v2;
}

- (void)addOrUpdateSearchableItems:(id)items bundleID:(id)d completion:(id)completion
{
  v6 = _Block_copy(completion);
  sub_232BA4DEC(0, &qword_27DDC6928, 0x277CC34B0);
  v7 = sub_232CE9FE0();
  v8 = sub_232CE9D50();
  v10 = v9;
  _Block_copy(v6);
  selfCopy = self;
  sub_232C7029C(v7, v8, v10, selfCopy, v6);
  _Block_release(v6);
}

- (void)addSerializedDocument:(id)document documentType:(int64_t)type completion:(id)completion
{
  v8 = _Block_copy(completion);
  documentCopy = document;
  selfCopy = self;
  v10 = sub_232CE8C80();
  v12 = v11;

  _Block_copy(v8);
  sub_232C70DF8(v10, v12, type, selfCopy, v8);
  _Block_release(v8);
  sub_232B41BEC(v10, v12);
}

- (void)foundInEventResultWithSerializedDocument:(id)document documentType:(int64_t)type completion:(id)completion
{
  v7 = _Block_copy(completion);
  documentCopy = document;
  selfCopy = self;
  v9 = sub_232CE8C80();
  v11 = v10;

  *(swift_allocObject() + 16) = v7;
  sub_232C719CC();

  sub_232B41BEC(v9, v11);
}

- (void)onBoardPoem
{
  selfCopy = self;
  sub_232C728F4();
}

- (void)incrementallyUpdatePoem
{
  selfCopy = self;
  sub_232C73098();
}

+ (int64_t)getExtractionCategoryFrom:(id)from
{
  sub_232B124A8(&qword_27DDC6C58, &qword_232CF89A0);
  v3 = sub_232CE9FE0();
  v4 = sub_232C732C0(v3);

  return v4;
}

+ (void)_extractPersonalIDWithLines:(NSArray *)lines pid:(int64_t)pid completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = lines;
  v9[3] = pid;
  v9[4] = v8;
  v9[5] = self;
  linesCopy = lines;

  sub_232C6F124(&unk_232CFF8D0, v9);
}

- (void)extractPersonalIDWithLines:(id)lines pid:(int64_t)pid completion:(id)completion
{
  v6 = _Block_copy(completion);
  sub_232CE9FE0();
  *(swift_allocObject() + 16) = v6;
  selfCopy = self;
  sub_232C742D8();
}

+ (id)filterOrderExtractionsWithExtractions:(id)extractions error:(id *)error
{
  sub_232B124A8(&qword_27DDC6C58, &qword_232CF89A0);
  v4 = sub_232CE9FE0();
  static TextUnderstandingManager.filterOrderExtractions(extractions:)(v4);

  v5 = sub_232CE9FD0();

  return v5;
}

- (void)extractEventWithSerializedDocument:(id)document documentType:(int64_t)type pid:(int64_t)pid completion:(id)completion
{
  v8 = _Block_copy(completion);
  documentCopy = document;
  selfCopy = self;
  v10 = sub_232CE8C80();
  v12 = v11;

  *(swift_allocObject() + 16) = v8;
  sub_232C76D60();

  sub_232B41BEC(v10, v12);
}

@end