@interface BSBrandManagerObjcShim
- (BOOL)isBrandRegisteredWithIdentifier:(id)a3 forService:(id)a4 timeout:(double)a5 error:(id *)a6;
- (BSBrandManagerObjcShim)init;
- (BSBrandManagerObjcShim)initWithCachingEnabled:(BOOL)a3 cacheURL:(id)a4 brandDataSourceWrapper:(id)a5;
- (void)brandAssetWithIdentifier:(id)a3 forService:(id)a4 completion:(id)a5;
- (void)brandWithIdentifier:(id)a3 forService:(id)a4 completion:(id)a5;
- (void)brandWithURI:(id)a3 completion:(id)a4;
- (void)brandWithURI:(id)a3 usingSim:(id)a4 completion:(id)a5;
- (void)clearUnusedCachedLogos:(id)a3;
- (void)fetchAssetWithURL:(id)a3 assetType:(int64_t)a4 completion:(id)a5;
- (void)isBrandRegisteredWithIdentifier:(id)a3 forService:(id)a4 completion:(id)a5;
@end

@implementation BSBrandManagerObjcShim

- (BSBrandManagerObjcShim)initWithCachingEnabled:(BOOL)a3 cacheURL:(id)a4 brandDataSourceWrapper:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v18 - v11;
  if (a4)
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

  v15 = a5;
  v16 = sub_2155B1194(a3, v12, v15);

  return v16;
}

- (void)brandWithURI:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_2155DA80C();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = *(&self->super.isa + OBJC_IVAR___BSBrandManagerObjcShim_brandManager);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2155C5B54;
  *(v11 + 24) = v9;
  v12 = self;

  sub_2155BB7DC(v6, v8, 0, 0, sub_2155C5B60, v11);
}

- (void)brandWithURI:(id)a3 usingSim:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_2155DA80C();
  v10 = v9;
  if (a4)
  {
    v11 = sub_2155DA80C();
    a4 = v12;
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
  v16 = self;

  sub_2155BB7DC(v8, v10, v11, a4, sub_2155C5B60, v15);
}

- (void)clearUnusedCachedLogos:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (*(&self->super.isa + OBJC_IVAR___BSBrandManagerObjcShim_brandManager))[7];
  v7 = self;

  sub_2155BE974(sub_2155C5B4C, v5);
}

- (void)fetchAssetWithURL:(id)a3 assetType:(int64_t)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
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
  v17 = self;

  sub_2155BDB24(v13, a4, sub_2155C5B5C, v16);

  (*(v9 + 8))(v13, v8);
}

- (void)isBrandRegisteredWithIdentifier:(id)a3 forService:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_2155DA80C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = (*(&self->super.isa + OBJC_IVAR___BSBrandManagerObjcShim_brandManager))[7];
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2155C5B28;
  *(v13 + 24) = v11;
  v14 = a4;
  v15 = self;

  sub_2155BEABC(v8, v10, v14, sub_2155C5B64, v13);
}

- (BOOL)isBrandRegisteredWithIdentifier:(id)a3 forService:(id)a4 timeout:(double)a5 error:(id *)a6
{
  v9 = sub_2155DA80C();
  v11 = v10;
  v12 = a4;
  v13 = self;
  v14 = sub_2155C5274(v9, v11, v12, a5);

  return v14 & 1;
}

- (void)brandWithIdentifier:(id)a3 forService:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_2155DA80C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = *(&self->super.isa + OBJC_IVAR___BSBrandManagerObjcShim_brandManager);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2155C5B10;
  *(v13 + 24) = v11;
  v14 = a4;
  v15 = self;

  sub_2155BBD90(v8, v10, v14, sub_2155C5B60, v13);
}

- (void)brandAssetWithIdentifier:(id)a3 forService:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_2155DA80C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = *(&self->super.isa + OBJC_IVAR___BSBrandManagerObjcShim_brandManager);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2155C5B54;
  *(v13 + 24) = v11;
  v14 = a4;
  v15 = self;

  sub_2155BBDB0(v8, v10, v14, sub_2155C5B58, v13);
}

- (BSBrandManagerObjcShim)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end