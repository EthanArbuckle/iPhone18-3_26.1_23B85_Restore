@interface MSIncidentReportRequest
- (MSIncidentReportRequest)init;
- (MSIncidentReportRequest)initWithStore:(id)store;
- (id)fetchSyncAndReturnError:(id *)error;
- (id)fetchSyncWithOptions:(id)options error:(id *)error;
- (void)fetchWithCompletionHandler:(id)handler;
- (void)fetchWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)options completionHandler:(id)handler;
@end

@implementation MSIncidentReportRequest

- (MSIncidentReportRequest)init
{
  if (qword_1EDB0F2A0 != -1)
  {
    selfCopy = self;
    swift_once();
    self = selfCopy;
  }

  v3 = qword_1EDB0F2A8;

  return [(MSIncidentReportRequest *)self initWithStore:v3];
}

- (MSIncidentReportRequest)initWithStore:(id)store
{
  v5 = type metadata accessor for IncidentReport();
  *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store) = store;
  *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type) = v5;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MapsSyncRequest();
  storeCopy = store;
  return [(MapsSyncRequest *)&v8 init];
}

- (id)fetchSyncAndReturnError:(id *)error
{
  selfCopy = self;
  sub_1B636F4A4();

  type metadata accessor for IncidentReport();
  v4 = sub_1B63BEC94();

  return v4;
}

- (id)fetchSyncWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  selfCopy = self;
  sub_1B636F4A4();

  type metadata accessor for IncidentReport();
  v7 = sub_1B63BEC94();

  return v7;
}

- (void)fetchWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1B63BED34();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B63C5D58;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C5530;
  v13[5] = v12;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v8, &unk_1B63C5320, v13);
}

- (void)fetchWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)options completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = options;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B63BED34();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C5D48;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B63C5510;
  v15[5] = v14;
  optionsCopy = options;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v10, &unk_1B63C5120, v15);
}

@end