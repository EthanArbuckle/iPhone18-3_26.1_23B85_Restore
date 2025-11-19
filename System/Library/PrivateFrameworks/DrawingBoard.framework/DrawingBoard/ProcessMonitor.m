@interface ProcessMonitor
- (void)processManager:(id)a3 didRemoveProcess:(id)a4;
@end

@implementation ProcessMonitor

- (void)processManager:(id)a3 didRemoveProcess:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF1C1A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_249D73294();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_249D73274();
  v10 = a4;
  v11 = self;
  v12 = v10;
  v13 = sub_249D73264();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  v14[5] = v12;
  sub_249D41820(0, 0, v8, &unk_249D79BD8, v14);
}

@end