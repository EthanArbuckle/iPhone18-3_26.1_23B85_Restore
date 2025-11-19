@interface EventLogServiceXPC.Server
- (void)logEndWithId:(int64_t)a3 timestamp:(id)a4 dependencies:(id)a5 payloadType:(id)a6 payloadVariant:(id)a7 payload:(id)a8 completion:(id)a9;
- (void)logInstantWithId:(int64_t)a3 timestamp:(id)a4 name:(id)a5 parent:(int64_t)a6 dependencies:(id)a7 payloadType:(id)a8 payloadVariant:(id)a9 payload:(id)a10 completion:(id)a11;
- (void)logStartWithId:(int64_t)a3 timestamp:(id)a4 name:(id)a5 parent:(int64_t)a6 completion:(id)a7;
@end

@implementation EventLogServiceXPC.Server

- (void)logStartWithId:(int64_t)a3 timestamp:(id)a4 name:(id)a5 parent:(int64_t)a6 completion:(id)a7
{
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a7);
  sub_1C4EF9C78();
  sub_1C4F01138();
  *(swift_allocObject() + 16) = v14;
  v15 = self;
  EventLogServiceXPC.Server.logStart(withId:timestamp:name:parent:completion:)();

  (*(v10 + 8))(v13, v9);
}

- (void)logEndWithId:(int64_t)a3 timestamp:(id)a4 dependencies:(id)a5 payloadType:(id)a6 payloadVariant:(id)a7 payload:(id)a8 completion:(id)a9
{
  v30 = a3;
  v31 = sub_1C4EF9CD8();
  v12 = *(v31 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _Block_copy(a9);
  sub_1C4EF9C78();
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v16 = sub_1C4F01678();
  v28 = sub_1C4F01138();
  v18 = v17;
  if (a7)
  {
    v19 = sub_1C4F01138();
    a7 = v20;
  }

  else
  {
    v19 = 0;
  }

  v21 = a8;
  v22 = self;
  v23 = sub_1C4EF9A68();
  v25 = v24;

  v26 = swift_allocObject();
  *(v26 + 16) = v29;
  EventLogServiceXPC.Server.logEnd(withId:timestamp:dependencies:payloadType:payloadVariant:payload:completion:)(v30, v15, v16, v28, v18, v19, a7, v23, v25, sub_1C478812C, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);

  sub_1C4434000(v23, v25);

  (*(v12 + 8))(v15, v31);
}

- (void)logInstantWithId:(int64_t)a3 timestamp:(id)a4 name:(id)a5 parent:(int64_t)a6 dependencies:(id)a7 payloadType:(id)a8 payloadVariant:(id)a9 payload:(id)a10 completion:(id)a11
{
  v33 = a3;
  v34 = a6;
  v12 = a9;
  v13 = sub_1C4EF9CD8();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = _Block_copy(a11);
  sub_1C4EF9C78();
  v31 = sub_1C4F01138();
  v32 = v17;
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v18 = sub_1C4F01678();
  v29 = sub_1C4F01138();
  v20 = v19;
  if (a9)
  {
    v21 = sub_1C4F01138();
    v12 = v22;
  }

  else
  {
    v21 = 0;
  }

  v23 = a10;
  v24 = self;
  v25 = sub_1C4EF9A68();
  v27 = v26;

  v28 = swift_allocObject();
  *(v28 + 16) = v30;
  EventLogServiceXPC.Server.logInstant(withId:timestamp:name:parent:dependencies:payloadType:payloadVariant:payload:completion:)(v33, v16, v31, v32, v34, v18, v29, v20, v21, v12, v25, v27, sub_1C47880C0, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);

  sub_1C4434000(v25, v27);

  (*(v35 + 8))(v16, v36);
}

@end