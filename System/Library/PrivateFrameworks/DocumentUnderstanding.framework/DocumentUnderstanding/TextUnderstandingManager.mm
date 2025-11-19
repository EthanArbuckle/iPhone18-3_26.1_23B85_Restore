@interface TextUnderstandingManager
+ (_TtC21DocumentUnderstanding24TextUnderstandingManager)shared;
+ (id)filterOrderExtractionsWithExtractions:(id)a3 error:(id *)a4;
+ (int64_t)getExtractionCategoryFrom:(id)a3;
+ (void)_extractPersonalIDWithLines:(NSArray *)a3 pid:(int64_t)a4 completionHandler:(id)a5;
- (void)addOrUpdateSearchableItems:(id)a3 bundleID:(id)a4 completion:(id)a5;
- (void)addSerializedDocument:(id)a3 documentType:(int64_t)a4 completion:(id)a5;
- (void)extractEventWithSerializedDocument:(id)a3 documentType:(int64_t)a4 pid:(int64_t)a5 completion:(id)a6;
- (void)extractPersonalIDWithLines:(id)a3 pid:(int64_t)a4 completion:(id)a5;
- (void)foundInEventResultWithSerializedDocument:(id)a3 documentType:(int64_t)a4 completion:(id)a5;
- (void)incrementallyUpdatePoem;
- (void)onBoardPoem;
@end

@implementation TextUnderstandingManager

+ (_TtC21DocumentUnderstanding24TextUnderstandingManager)shared
{
  v2 = static TextUnderstandingManager.shared.getter();

  return v2;
}

- (void)addOrUpdateSearchableItems:(id)a3 bundleID:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  sub_232BA4DEC(0, &qword_27DDC6928, 0x277CC34B0);
  v7 = sub_232CE9FE0();
  v8 = sub_232CE9D50();
  v10 = v9;
  _Block_copy(v6);
  v11 = self;
  sub_232C7029C(v7, v8, v10, v11, v6);
  _Block_release(v6);
}

- (void)addSerializedDocument:(id)a3 documentType:(int64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v13 = self;
  v10 = sub_232CE8C80();
  v12 = v11;

  _Block_copy(v8);
  sub_232C70DF8(v10, v12, a4, v13, v8);
  _Block_release(v8);
  sub_232B41BEC(v10, v12);
}

- (void)foundInEventResultWithSerializedDocument:(id)a3 documentType:(int64_t)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = a3;
  v12 = self;
  v9 = sub_232CE8C80();
  v11 = v10;

  *(swift_allocObject() + 16) = v7;
  sub_232C719CC();

  sub_232B41BEC(v9, v11);
}

- (void)onBoardPoem
{
  v2 = self;
  sub_232C728F4();
}

- (void)incrementallyUpdatePoem
{
  v2 = self;
  sub_232C73098();
}

+ (int64_t)getExtractionCategoryFrom:(id)a3
{
  sub_232B124A8(&qword_27DDC6C58, &qword_232CF89A0);
  v3 = sub_232CE9FE0();
  v4 = sub_232C732C0(v3);

  return v4;
}

+ (void)_extractPersonalIDWithLines:(NSArray *)a3 pid:(int64_t)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;

  sub_232C6F124(&unk_232CFF8D0, v9);
}

- (void)extractPersonalIDWithLines:(id)a3 pid:(int64_t)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  sub_232CE9FE0();
  *(swift_allocObject() + 16) = v6;
  v7 = self;
  sub_232C742D8();
}

+ (id)filterOrderExtractionsWithExtractions:(id)a3 error:(id *)a4
{
  sub_232B124A8(&qword_27DDC6C58, &qword_232CF89A0);
  v4 = sub_232CE9FE0();
  static TextUnderstandingManager.filterOrderExtractions(extractions:)(v4);

  v5 = sub_232CE9FD0();

  return v5;
}

- (void)extractEventWithSerializedDocument:(id)a3 documentType:(int64_t)a4 pid:(int64_t)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = a3;
  v13 = self;
  v10 = sub_232CE8C80();
  v12 = v11;

  *(swift_allocObject() + 16) = v8;
  sub_232C76D60();

  sub_232B41BEC(v10, v12);
}

@end