@interface BSBrandManagerObjcShim
- (BOOL)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service timeout:(double)timeout error:(id *)error;
- (BSBrandManagerObjcShim)init;
- (BSBrandManagerObjcShim)initWithCachingEnabled:(BOOL)enabled cacheURL:(id)l brandDataSourceWrapper:(id)wrapper;
- (void)brandAssetWithIdentifier:(id)identifier forService:(id)service completion:(id)completion;
- (void)brandWithIdentifier:(id)identifier forService:(id)service completion:(id)completion;
- (void)brandWithURI:(id)i completion:(id)completion;
- (void)brandWithURI:(id)i usingSim:(id)sim completion:(id)completion;
- (void)clearUnusedCachedLogos:(id)logos;
- (void)fetchAssetWithURL:(id)l assetType:(int64_t)type completion:(id)completion;
- (void)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service completion:(id)completion;
@end

@implementation BSBrandManagerObjcShim

- (BSBrandManagerObjcShim)initWithCachingEnabled:(BOOL)enabled cacheURL:(id)l brandDataSourceWrapper:(id)wrapper
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v18 - v11;
  if (l)
  {
    sub_2155DA64C();
    v13 = sub_2155DA67C();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_2155DA67C();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  wrapperCopy = wrapper;
  v16 = sub_2155B1194(enabled, v12, wrapperCopy);

  return v16;
}

- (void)brandWithURI:(id)i completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_2155DA80C();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = *(&self->super.isa + OBJC_IVAR___BSBrandManagerObjcShim_brandManager);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2155C5B54;
  *(v11 + 24) = v9;
  selfCopy = self;

  sub_2155BB7DC(v6, v8, 0, 0, sub_2155C5B60, v11);
}

- (void)brandWithURI:(id)i usingSim:(id)sim completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_2155DA80C();
  v10 = v9;
  if (sim)
  {
    v11 = sub_2155DA80C();
    sim = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  v14 = *(&self->super.isa + OBJC_IVAR___BSBrandManagerObjcShim_brandManager);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2155C5B54;
  *(v15 + 24) = v13;
  selfCopy = self;

  sub_2155BB7DC(v8, v10, v11, sim, sub_2155C5B60, v15);
}

- (void)clearUnusedCachedLogos:(id)logos
{
  v4 = _Block_copy(logos);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (*(&self->super.isa + OBJC_IVAR___BSBrandManagerObjcShim_brandManager))[7];
  selfCopy = self;

  sub_2155BE974(sub_2155C5B4C, v5);
}

- (void)fetchAssetWithURL:(id)l assetType:(int64_t)type completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_2155DA67C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2155DA64C();
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  v15 = (*(&self->super.isa + OBJC_IVAR___BSBrandManagerObjcShim_brandManager))[7];
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2155C5B44;
  *(v16 + 24) = v14;
  selfCopy = self;

  sub_2155BDB24(v13, type, sub_2155C5B5C, v16);

  (*(v9 + 8))(v13, v8);
}

- (void)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_2155DA80C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = (*(&self->super.isa + OBJC_IVAR___BSBrandManagerObjcShim_brandManager))[7];
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2155C5B28;
  *(v13 + 24) = v11;
  serviceCopy = service;
  selfCopy = self;

  sub_2155BEABC(v8, v10, serviceCopy, sub_2155C5B64, v13);
}

- (BOOL)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service timeout:(double)timeout error:(id *)error
{
  v9 = sub_2155DA80C();
  v11 = v10;
  serviceCopy = service;
  selfCopy = self;
  v14 = sub_2155C5274(v9, v11, serviceCopy, timeout);

  return v14 & 1;
}

- (void)brandWithIdentifier:(id)identifier forService:(id)service completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_2155DA80C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = *(&self->super.isa + OBJC_IVAR___BSBrandManagerObjcShim_brandManager);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2155C5B10;
  *(v13 + 24) = v11;
  serviceCopy = service;
  selfCopy = self;

  sub_2155BBD90(v8, v10, serviceCopy, sub_2155C5B60, v13);
}

- (void)brandAssetWithIdentifier:(id)identifier forService:(id)service completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_2155DA80C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = *(&self->super.isa + OBJC_IVAR___BSBrandManagerObjcShim_brandManager);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2155C5B54;
  *(v13 + 24) = v11;
  serviceCopy = service;
  selfCopy = self;

  sub_2155BBDB0(v8, v10, serviceCopy, sub_2155C5B58, v13);
}

- (BSBrandManagerObjcShim)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end