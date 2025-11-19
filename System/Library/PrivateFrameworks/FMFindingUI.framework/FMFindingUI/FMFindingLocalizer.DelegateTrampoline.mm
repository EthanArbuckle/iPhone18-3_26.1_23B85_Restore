@interface FMFindingLocalizer.DelegateTrampoline
- (_TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline)init;
- (void)didFailWithError:(id)a3 onItem:(id)a4;
- (void)didFindItem:(id)a3;
- (void)didUpdateBTProximity:(id)a3;
- (void)invalidPoseDetected;
- (void)willIntegrateBTRSSI:(id)a3;
@end

@implementation FMFindingLocalizer.DelegateTrampoline

- (_TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline)init
{
  swift_unknownObjectWeakInit();
  *&self->owner[OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_updateRangeEstimateWatchdogWorkItem) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMFindingLocalizer.DelegateTrampoline();
  return [(FMFindingLocalizer.DelegateTrampoline *)&v4 init];
}

- (void)willIntegrateBTRSSI:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A55AD54(v4);
}

- (void)didUpdateBTProximity:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A54DF58(v4);
}

- (void)didFindItem:(id)a3
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A62E1F4();
  v9 = self;
  sub_24A54E4BC(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)didFailWithError:(id)a3 onItem:(id)a4
{
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A62E1F4();
  v11 = a3;
  v12 = self;
  sub_24A54E8DC(v11, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)invalidPoseDetected
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v0 = sub_24A62E314();
  sub_24A506EB8(v0, qword_27EF5C118);
  oslog = sub_24A62E2F4();
  v1 = sub_24A62EF64();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24A503000, oslog, v1, "🧭 FMFindingLocalizer: Invalid pose detected", v2, 2u);
    MEMORY[0x24C21BBE0](v2, -1, -1);
  }
}

@end