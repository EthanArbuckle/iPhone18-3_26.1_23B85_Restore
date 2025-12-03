@interface EDIndexingDiagnosticsGatherer
- (EDIndexingDiagnosticsGatherer)init;
- (EDIndexingDiagnosticsGatherer)initWithPersistence:(id)persistence;
- (void)gatherWithRedaction:(int64_t)redaction completionHandler:(id)handler;
@end

@implementation EDIndexingDiagnosticsGatherer

- (EDIndexingDiagnosticsGatherer)initWithPersistence:(id)persistence
{
  *(&self->super.isa + OBJC_IVAR___EDIndexingDiagnosticsGatherer_persistence) = persistence;
  v5.receiver = self;
  v5.super_class = EDIndexingDiagnosticsGatherer;
  persistenceCopy = persistence;
  return [(EDIndexingDiagnosticsGatherer *)&v5 init];
}

- (void)gatherWithRedaction:(int64_t)redaction completionHandler:(id)handler
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C3F20, &qword_1C6472680) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_1C645CA74();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = redaction;
  v13[6] = sub_1C64057F0;
  v13[7] = v11;
  selfCopy = self;
  sub_1C6405184(0, 0, v9, &unk_1C6472690, v13);
}

- (EDIndexingDiagnosticsGatherer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end