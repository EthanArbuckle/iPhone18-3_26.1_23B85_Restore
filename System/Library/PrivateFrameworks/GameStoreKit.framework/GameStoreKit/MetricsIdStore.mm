@interface MetricsIdStore
- (void)storeAccountDidChange;
@end

@implementation MetricsIdStore

- (void)storeAccountDidChange
{
  if (qword_27F210CA0 != -1)
  {
    swift_once();
  }

  v2 = sub_24E60CADC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234F88);
  swift_allocObject();
  off_27F234F38 = sub_24EA50028(v2);
}

@end