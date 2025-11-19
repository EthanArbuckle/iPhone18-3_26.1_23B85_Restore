@interface DaemonHealthExperienceStoreOracle
- (void)dealloc;
- (void)debuggingInfoRequestedWithNote:(id)a3;
@end

@implementation DaemonHealthExperienceStoreOracle

- (void)dealloc
{
  v2 = self;
  sub_2284549F0();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for DaemonHealthExperienceStoreOracle();
  [(DaemonHealthExperienceStoreOracle *)&v3 dealloc];
}

- (void)debuggingInfoRequestedWithNote:(id)a3
{
  v4 = sub_22855BE9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855BE3C();
  v9 = self;
  DaemonHealthExperienceStoreOracle.debuggingInfoRequested(note:)();

  (*(v5 + 8))(v8, v4);
}

@end