@interface NDOUniversalLinkConverter
+ (id)convertUrl:(id)a3;
- (NDOUniversalLinkConverter)init;
@end

@implementation NDOUniversalLinkConverter

+ (id)convertUrl:(id)a3
{
  v3 = sub_25BD79678();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  sub_25BD79658();
  static NDOUniversalLinkConverter.convertUrl(_:)(v7, v11);
  v12 = *(v4 + 8);
  v12(v7, v3);
  v13 = (*(v4 + 48))(v11, 1, v3);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_25BD79638();
    v12(v11, v3);
    v14 = v15;
  }

  return v14;
}

- (NDOUniversalLinkConverter)init
{
  v3.receiver = self;
  v3.super_class = NDOUniversalLinkConverter;
  return [(NDOUniversalLinkConverter *)&v3 init];
}

@end