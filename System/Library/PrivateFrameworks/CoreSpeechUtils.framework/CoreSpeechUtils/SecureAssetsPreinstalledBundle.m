@interface SecureAssetsPreinstalledBundle
- (SecureAssetsPreinstalledBundle)init;
- (id)assetVersion:(id)a3;
- (id)resourcePathURL:(id)a3;
@end

@implementation SecureAssetsPreinstalledBundle

- (id)resourcePathURL:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59398, &qword_247996518);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_247994E84();
  v10 = v9;
  v11 = self;
  SecureAssetsPreinstalledBundle.resourcePathURLForLocale(locale:)(v8, v10, v7);

  v12 = sub_247994C14();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v7, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_247994BB4();
    (*(v13 + 8))(v7, v12);
    v15 = v16;
  }

  return v15;
}

- (id)assetVersion:(id)a3
{
  v4 = sub_247994E84();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = SecureAssetsPreinstalledBundle.assetVersionForLocale(locale:)(v8).value._object;

  if (object)
  {
    v10 = sub_247994E74();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (SecureAssetsPreinstalledBundle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end