@interface ToolboxXPCServiceServer.Server
- (void)metadataWithPlannerType:(id)a3 enableAllowList:(BOOL)a4 with:(id)a5;
- (void)queryWithPlannerType:(id)a3 query:(id)a4 k:(int64_t)a5 bundleIDs:(id)a6 clientIdentifier:(id)a7 availableClientActions:(id)a8 with:(id)aBlock;
- (void)queryWithPlannerType:(id)a3 query:(id)a4 k:(int64_t)a5 clientIdentifier:(id)a6 availableClientActions:(id)a7 with:(id)a8;
- (void)sandboxWithInjectionId:(id)a3 plannerType:(id)a4 with:(id)a5;
- (void)toolMappingWithPlannerType:(id)a3 customKey:(id)a4 with:(id)a5;
@end

@implementation ToolboxXPCServiceServer.Server

- (void)queryWithPlannerType:(id)a3 query:(id)a4 k:(int64_t)a5 bundleIDs:(id)a6 clientIdentifier:(id)a7 availableClientActions:(id)a8 with:(id)aBlock
{
  v10 = _Block_copy(aBlock);
  v11 = sub_22BDBABF4();
  v13 = v12;
  v14 = sub_22BDBABF4();
  v16 = v15;
  v17 = sub_22BDBB094();
  if (a7)
  {
    a7 = sub_22BDBABF4();
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_22BDBB094();
  v21 = swift_allocObject();
  *(v21 + 16) = v10;
  v22 = self;
  sub_22BDA7178(v11, v13, v14, v16, a5, v17, a7, v19, v20, sub_22BDB1D64, v21, v23, self, a5, v26, v27, v28, v29, v30, v31, v32, v33, v34);
}

- (void)queryWithPlannerType:(id)a3 query:(id)a4 k:(int64_t)a5 clientIdentifier:(id)a6 availableClientActions:(id)a7 with:(id)a8
{
  v10 = _Block_copy(a8);
  v11 = sub_22BDBABF4();
  v13 = v12;
  v14 = sub_22BDBABF4();
  v16 = v15;
  if (a6)
  {
    v17 = sub_22BDBABF4();
    a6 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = sub_22BDBB094();
  v20 = swift_allocObject();
  *(v20 + 16) = v10;
  v21 = self;
  sub_22BDA7FE8(v11, v13, v14, v16, a5, v17, a6, v19, sub_22BDB1D64, v20, v22, a5, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
}

- (void)sandboxWithInjectionId:(id)a3 plannerType:(id)a4 with:(id)a5
{
  v6 = _Block_copy(a5);
  sub_22BDBABF4();
  sub_22BDBABF4();
  *(swift_allocObject() + 16) = v6;
  v7 = self;
  sub_22BDAAB44();
}

- (void)toolMappingWithPlannerType:(id)a3 customKey:(id)a4 with:(id)a5
{
  v6 = _Block_copy(a5);
  sub_22BDBABF4();
  sub_22BDBABF4();
  *(swift_allocObject() + 16) = v6;
  v7 = self;
  sub_22BDACA50();
}

- (void)metadataWithPlannerType:(id)a3 enableAllowList:(BOOL)a4 with:(id)a5
{
  v6 = _Block_copy(a5);
  sub_22BDBABF4();
  *(swift_allocObject() + 16) = v6;
  v7 = self;
  sub_22BDAEA64();
}

@end