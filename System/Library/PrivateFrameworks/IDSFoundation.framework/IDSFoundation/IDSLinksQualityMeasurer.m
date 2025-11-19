@interface IDSLinksQualityMeasurer
- (IDSLinksQualityMeasurer)init;
- (IDSLinksQualityMeasurer)initWithTimeFn:(id)a3;
- (void)addLink:(IDSTestableLinkWithScheduler *)a3 uniqueID:(NSUUID *)a4 completionHandler:(id)a5;
- (void)deltaSince:(IDSLinksQualityMeasurerSyncToken *)a3 completionHandler:(id)a4;
- (void)generateReportWithCompletionHandler:(id)a3;
- (void)importDelta:(IDSLinksQualityMeasurerDelta *)a3 sourceName:(NSString *)a4 completionHandler:(id)a5;
- (void)removeAllLinksWithCompletionHandler:(id)a3;
- (void)removeLink:(IDSTestableLinkWithScheduler *)a3 completionHandler:(id)a4;
- (void)startCapturingBasicStats:(BOOL)a3 sendBursts:(BOOL)a4 completionHandler:(id)a5;
- (void)stopWithCompletionHandler:(id)a3;
@end

@implementation IDSLinksQualityMeasurer

- (IDSLinksQualityMeasurer)initWithTimeFn:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for _IDSLinksQualityMeasurer(0);
  swift_allocObject();

  *(&self->super.isa + OBJC_IVAR___IDSLinksQualityMeasurer_measurer) = _IDSLinksQualityMeasurer.init(timeFn:)(sub_1A7D53CC8, v5);
  v8.receiver = self;
  v8.super_class = IDSLinksQualityMeasurer;
  v6 = [(IDSLinksQualityMeasurer *)&v8 init];

  return v6;
}

- (void)addLink:(IDSTestableLinkWithScheduler *)a3 uniqueID:(NSUUID *)a4 completionHandler:(id)a5
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1A7E226D0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A7E49C38;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1A7E49C40;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1A7DE5274(0, 0, v12, &unk_1A7E49C48, v17);
}

- (void)removeLink:(IDSTestableLinkWithScheduler *)a3 completionHandler:(id)a4
{
  v7 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1A7E226D0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A7E49C10;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A7E49C18;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1A7DE5274(0, 0, v10, &unk_1A7E49C20, v15);
}

- (void)removeAllLinksWithCompletionHandler:(id)a3
{
  v5 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1A7E226D0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A7E49BE8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A7E49BF0;
  v13[5] = v12;
  v14 = self;
  sub_1A7DE5274(0, 0, v8, &unk_1A7E49BF8, v13);
}

- (void)startCapturingBasicStats:(BOOL)a3 sendBursts:(BOOL)a4 completionHandler:(id)a5
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 17) = a4;
  *(v14 + 24) = v13;
  *(v14 + 32) = self;
  v15 = sub_1A7E226D0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A7E49BC8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1A7E49BD0;
  v17[5] = v16;
  v18 = self;
  sub_1A7DE5274(0, 0, v12, &unk_1A7E49BD8, v17);
}

- (void)stopWithCompletionHandler:(id)a3
{
  v5 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1A7E226D0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A7E49BA8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A7E49BB0;
  v13[5] = v12;
  v14 = self;
  sub_1A7DE5274(0, 0, v8, &unk_1A7E49BB8, v13);
}

- (void)generateReportWithCompletionHandler:(id)a3
{
  v5 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1A7E226D0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A7E49B80;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A7E49B88;
  v13[5] = v12;
  v14 = self;
  sub_1A7DE5274(0, 0, v8, &unk_1A7E49B90, v13);
}

- (void)deltaSince:(IDSLinksQualityMeasurerSyncToken *)a3 completionHandler:(id)a4
{
  v7 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1A7E226D0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A7E49B58;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A7E49B60;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1A7DE5274(0, 0, v10, &unk_1A7E49B68, v15);
}

- (void)importDelta:(IDSLinksQualityMeasurerDelta *)a3 sourceName:(NSString *)a4 completionHandler:(id)a5
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1A7E226D0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A7E49B48;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1A7E48E60;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1A7DE5274(0, 0, v12, &unk_1A7E45700, v17);
}

- (IDSLinksQualityMeasurer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end