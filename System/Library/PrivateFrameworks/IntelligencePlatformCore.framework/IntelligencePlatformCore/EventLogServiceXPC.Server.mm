@interface EventLogServiceXPC.Server
- (void)logEndWithId:(int64_t)id timestamp:(id)timestamp dependencies:(id)dependencies payloadType:(id)type payloadVariant:(id)variant payload:(id)payload completion:(id)completion;
- (void)logInstantWithId:(int64_t)id timestamp:(id)timestamp name:(id)name parent:(int64_t)parent dependencies:(id)dependencies payloadType:(id)type payloadVariant:(id)variant payload:(id)self0 completion:(id)self1;
- (void)logStartWithId:(int64_t)id timestamp:(id)timestamp name:(id)name parent:(int64_t)parent completion:(id)completion;
@end

@implementation EventLogServiceXPC.Server

- (void)logStartWithId:(int64_t)id timestamp:(id)timestamp name:(id)name parent:(int64_t)parent completion:(id)completion
{
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(completion);
  sub_1C4EF9C78();
  sub_1C4F01138();
  *(swift_allocObject() + 16) = v14;
  selfCopy = self;
  EventLogServiceXPC.Server.logStart(withId:timestamp:name:parent:completion:)();

  (*(v10 + 8))(v13, v9);
}

- (void)logEndWithId:(int64_t)id timestamp:(id)timestamp dependencies:(id)dependencies payloadType:(id)type payloadVariant:(id)variant payload:(id)payload completion:(id)completion
{
  idCopy = id;
  v31 = sub_1C4EF9CD8();
  v12 = *(v31 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _Block_copy(completion);
  sub_1C4EF9C78();
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v16 = sub_1C4F01678();
  v28 = sub_1C4F01138();
  v18 = v17;
  if (variant)
  {
    v19 = sub_1C4F01138();
    variant = v20;
  }

  else
  {
    v19 = 0;
  }

  payloadCopy = payload;
  selfCopy = self;
  v23 = sub_1C4EF9A68();
  v25 = v24;

  v26 = swift_allocObject();
  *(v26 + 16) = v29;
  EventLogServiceXPC.Server.logEnd(withId:timestamp:dependencies:payloadType:payloadVariant:payload:completion:)(idCopy, v15, v16, v28, v18, v19, variant, v23, v25, sub_1C478812C, v26, v27, v28, v29, idCopy, v31, v32, v33, v34, v35, v36, v37, v38);

  sub_1C4434000(v23, v25);

  (*(v12 + 8))(v15, v31);
}

- (void)logInstantWithId:(int64_t)id timestamp:(id)timestamp name:(id)name parent:(int64_t)parent dependencies:(id)dependencies payloadType:(id)type payloadVariant:(id)variant payload:(id)self0 completion:(id)self1
{
  idCopy = id;
  parentCopy = parent;
  variantCopy = variant;
  v13 = sub_1C4EF9CD8();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = _Block_copy(completion);
  sub_1C4EF9C78();
  v31 = sub_1C4F01138();
  v32 = v17;
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v18 = sub_1C4F01678();
  v29 = sub_1C4F01138();
  v20 = v19;
  if (variant)
  {
    v21 = sub_1C4F01138();
    variantCopy = v22;
  }

  else
  {
    v21 = 0;
  }

  payloadCopy = payload;
  selfCopy = self;
  v25 = sub_1C4EF9A68();
  v27 = v26;

  v28 = swift_allocObject();
  *(v28 + 16) = v30;
  EventLogServiceXPC.Server.logInstant(withId:timestamp:name:parent:dependencies:payloadType:payloadVariant:payload:completion:)(idCopy, v16, v31, v32, parentCopy, v18, v29, v20, v21, variantCopy, v25, v27, sub_1C47880C0, v28, v29, v30, v31, v32, idCopy, parentCopy, v35, v36, v37, v38, v39, v40);

  sub_1C4434000(v25, v27);

  (*(v35 + 8))(v16, v36);
}

@end