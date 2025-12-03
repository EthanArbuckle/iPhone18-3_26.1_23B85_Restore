@interface ProcessMonitor
- (void)processManager:(id)manager didRemoveProcess:(id)process;
@end

@implementation ProcessMonitor

- (void)processManager:(id)manager didRemoveProcess:(id)process
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF1C1A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_249D73294();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_249D73274();
  processCopy = process;
  selfCopy = self;
  v12 = processCopy;
  v13 = sub_249D73264();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = selfCopy;
  v14[5] = v12;
  sub_249D41820(0, 0, v8, &unk_249D79BD8, v14);
}

@end