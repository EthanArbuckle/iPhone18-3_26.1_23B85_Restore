@interface BSBrandObjcShim
+ (NSString)placeholderName;
+ (id)mockBrand;
- (BOOL)isRCSChatBot;
- (BOOL)isVerified;
- (BSBrandObjcShim)init;
- (NSArray)categories;
- (NSData)logoFingerprint;
- (NSDictionary)brandInfo;
- (NSString)address;
- (NSString)brandURI;
- (NSString)emailAddress;
- (NSString)localizedDescription;
- (NSString)localizedResponseTime;
- (NSString)messageNumber;
- (NSString)name;
- (NSString)primaryBrandColorHexString;
- (NSString)primaryPhoneNumber;
- (NSString)secondaryBrandColorHexString;
- (NSString)verifiedBy;
- (NSURL)genericCSSTemplateURL;
- (NSURL)secondaryLogoURL;
- (NSURL)termsAndConditionsURL;
- (NSURL)website;
- (int64_t)brandType;
- (void)assetDataOfType:(int64_t)a3 usingSim:(id)a4 completion:(id)a5;
- (void)clearCachedAssets:(id)a3;
- (void)logoDataOfType:(int64_t)a3 desiredSize:(CGSize)a4 completion:(id)a5;
- (void)logoDataOfType:(int64_t)a3 desiredSize:(CGSize)a4 usingSim:(id)a5 completion:(id)a6;
- (void)logoFileURLOfType:(int64_t)a3 desiredSize:(CGSize)a4 completionHandler:(id)a5;
- (void)permissions:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation BSBrandObjcShim

+ (NSString)placeholderName
{
  if (qword_27CA64B08 != -1)
  {
    swift_once();
  }

  v2 = sub_2155DA7DC();

  return v2;
}

- (NSString)brandURI
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 32);
  v7 = self;
  v6(v4, v5);

  v8 = sub_2155DA7DC();

  return v8;
}

- (int64_t)brandType
{
  v2 = self;
  v3 = sub_2155CC608();

  return v3;
}

- (NSDictionary)brandInfo
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 88);
  v7 = self;
  v8 = v6(v4, v5);
  if (v8)
  {
    sub_2155D003C(v8);

    v9 = sub_2155DA7AC();
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (BOOL)isRCSChatBot
{
  v2 = self;
  v3 = sub_2155CC810();

  return v3;
}

- (NSString)name
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 48);
  v7 = self;
  v6(v4, v5);

  v8 = sub_2155DA7DC();

  return v8;
}

- (NSArray)categories
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 56);
  v7 = self;
  v8 = v6(v4, v5);

  if (v8)
  {
    v9 = sub_2155DA8EC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)primaryPhoneNumber
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 96);
  v7 = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2155DA7DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSURL)secondaryLogoURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v19 - v6;
  v8 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v9 = v8[5];
  v10 = v8[6];
  __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
  v11 = *(v10 + 80);
  v12 = self;
  v11(v9, v10);

  v13 = sub_2155DA67C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v7, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_2155DA63C();
    (*(v14 + 8))(v7, v13);
    v16 = v17;
  }

  return v16;
}

- (NSString)primaryBrandColorHexString
{
  sub_2155B0E68(*(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand) + 16, v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v5 = *(v4 + 104);
  v6 = self;
  v5(v3, v4);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(v11);

  if (v8)
  {
    v9 = sub_2155DA7DC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)secondaryBrandColorHexString
{
  sub_2155B0E68(*(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand) + 16, v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v5 = *(v4 + 112);
  v6 = self;
  v5(v3, v4);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(v11);

  if (v8)
  {
    v9 = sub_2155DA7DC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isVerified
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 120);
  v7 = self;
  v8 = v6(v4, v5);

  return v8 & 1;
}

- (NSString)verifiedBy
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 128);
  v7 = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2155DA7DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSURL)website
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v19 - v6;
  v8 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v9 = v8[5];
  v10 = v8[6];
  __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
  v11 = *(v10 + 136);
  v12 = self;
  v11(v9, v10);

  v13 = sub_2155DA67C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v7, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_2155DA63C();
    (*(v14 + 8))(v7, v13);
    v16 = v17;
  }

  return v16;
}

- (NSString)messageNumber
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 144);
  v7 = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2155DA7DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)emailAddress
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 152);
  v7 = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2155DA7DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)address
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 160);
  v7 = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2155DA7DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSURL)termsAndConditionsURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v19 - v6;
  v8 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v9 = v8[5];
  v10 = v8[6];
  __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
  v11 = *(v10 + 168);
  v12 = self;
  v11(v9, v10);

  v13 = sub_2155DA67C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v7, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_2155DA63C();
    (*(v14 + 8))(v7, v13);
    v16 = v17;
  }

  return v16;
}

- (NSURL)genericCSSTemplateURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v19 - v6;
  v8 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v9 = v8[5];
  v10 = v8[6];
  __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
  v11 = *(v10 + 176);
  v12 = self;
  v11(v9, v10);

  v13 = sub_2155DA67C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v7, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_2155DA63C();
    (*(v14 + 8))(v7, v13);
    v16 = v17;
  }

  return v16;
}

- (NSString)localizedDescription
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 64);
  v7 = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2155DA7DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)localizedResponseTime
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 184);
  v7 = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2155DA7DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSData)logoFingerprint
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 192);
  v7 = self;
  v8 = v6(v4, v5);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = sub_2155DA68C();
    sub_2155B4528(v8, v10);
    v11 = v12;
  }

  return v11;
}

- (void)logoFileURLOfType:(int64_t)a3 desiredSize:(CGSize)a4 completionHandler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65040, &qword_2155DD4C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v21 - v13;
  v15 = _Block_copy(a5);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  v16[3] = width;
  v16[4] = height;
  *(v16 + 5) = v15;
  *(v16 + 6) = self;
  v17 = sub_2155DA94C();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2155DD518;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_2155DD520;
  v19[5] = v18;
  v20 = self;
  sub_2155D057C(0, 0, v14, &unk_2155DD528, v19);
}

- (void)logoDataOfType:(int64_t)a3 desiredSize:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = _Block_copy(a5);
  v10 = swift_allocObject();
  v10[2] = v9;
  v11 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v12 = self;
  sub_2155D7894(a3, 0, 0, v11, sub_2155D1ED0, v10, width, height);
}

- (void)logoDataOfType:(int64_t)a3 desiredSize:(CGSize)a4 usingSim:(id)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = _Block_copy(a6);
  if (a5)
  {
    v12 = sub_2155DA80C();
    a5 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = swift_allocObject();
  v14[2] = v11;
  v15 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);

  v16 = self;
  sub_2155D7894(a3, v12, a5, v15, sub_2155D1ED0, v14, width, height);
}

- (void)assetDataOfType:(int64_t)a3 usingSim:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_2155DA80C();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  v11[2] = v8;
  v12 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);

  v13 = self;
  sub_2155D7F30(a3, v9, a4, v12, sub_2155C5B44, v11);
}

- (void)clearCachedAssets:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2155D1C24;
  *(v7 + 24) = v5;
  v8 = self;

  sub_2155D55D4();
}

+ (id)mockBrand
{
  v2 = _s16BusinessServices13BrandObjcShimC04mockC0ACyFZ_0();

  return v2;
}

- (BSBrandObjcShim)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)permissions:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65040, &qword_2155DD4C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_2155DA94C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2155DD4D0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2155DD4E0;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_2155D057C(0, 0, v11, &unk_2155DD4F0, v16);
}

@end