@interface ToolboxXPCServiceServer.Server
- (void)metadataWithPlannerType:(id)type enableAllowList:(BOOL)list with:(id)with;
- (void)queryWithPlannerType:(id)type query:(id)query k:(int64_t)k bundleIDs:(id)ds clientIdentifier:(id)identifier availableClientActions:(id)actions with:(id)aBlock;
- (void)queryWithPlannerType:(id)type query:(id)query k:(int64_t)k clientIdentifier:(id)identifier availableClientActions:(id)actions with:(id)with;
- (void)sandboxWithInjectionId:(id)id plannerType:(id)type with:(id)with;
- (void)toolMappingWithPlannerType:(id)type customKey:(id)key with:(id)with;
@end

@implementation ToolboxXPCServiceServer.Server

- (void)queryWithPlannerType:(id)type query:(id)query k:(int64_t)k bundleIDs:(id)ds clientIdentifier:(id)identifier availableClientActions:(id)actions with:(id)aBlock
{
  v10 = _Block_copy(aBlock);
  v11 = sub_22BDBABF4();
  v13 = v12;
  v14 = sub_22BDBABF4();
  v16 = v15;
  v17 = sub_22BDBB094();
  if (identifier)
  {
    identifier = sub_22BDBABF4();
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_22BDBB094();
  v21 = swift_allocObject();
  *(v21 + 16) = v10;
  selfCopy = self;
  sub_22BDA7178(v11, v13, v14, v16, k, v17, identifier, v19, v20, sub_22BDB1D64, v21, v23, self, k, v26, v27, v28, v29, v30, v31, v32, v33, v34);
}

- (void)queryWithPlannerType:(id)type query:(id)query k:(int64_t)k clientIdentifier:(id)identifier availableClientActions:(id)actions with:(id)with
{
  v10 = _Block_copy(with);
  v11 = sub_22BDBABF4();
  v13 = v12;
  v14 = sub_22BDBABF4();
  v16 = v15;
  if (identifier)
  {
    v17 = sub_22BDBABF4();
    identifier = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = sub_22BDBB094();
  v20 = swift_allocObject();
  *(v20 + 16) = v10;
  selfCopy = self;
  sub_22BDA7FE8(v11, v13, v14, v16, k, v17, identifier, v19, sub_22BDB1D64, v20, v22, k, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
}

- (void)sandboxWithInjectionId:(id)id plannerType:(id)type with:(id)with
{
  v6 = _Block_copy(with);
  sub_22BDBABF4();
  sub_22BDBABF4();
  *(swift_allocObject() + 16) = v6;
  selfCopy = self;
  sub_22BDAAB44();
}

- (void)toolMappingWithPlannerType:(id)type customKey:(id)key with:(id)with
{
  v6 = _Block_copy(with);
  sub_22BDBABF4();
  sub_22BDBABF4();
  *(swift_allocObject() + 16) = v6;
  selfCopy = self;
  sub_22BDACA50();
}

- (void)metadataWithPlannerType:(id)type enableAllowList:(BOOL)list with:(id)with
{
  v6 = _Block_copy(with);
  sub_22BDBABF4();
  *(swift_allocObject() + 16) = v6;
  selfCopy = self;
  sub_22BDAEA64();
}

@end