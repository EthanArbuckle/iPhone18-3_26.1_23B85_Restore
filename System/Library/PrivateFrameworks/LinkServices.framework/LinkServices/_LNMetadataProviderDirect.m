@interface _LNMetadataProviderDirect
- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)actionsConformingToSystemProtocol:(id)a3 withParametersOfTypes:(id)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)actionsConformingToSystemProtocols:(id)a3 logicalType:(unint64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)actionsWithFullyQualifiedIdentifiers:(id)a3 error:(id *)a4;
- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)autoShortcutsForLocaleIdentifier:(id)a3 error:(id *)a4;
- (id)bundleRegistrationsWithError:(id *)a3;
- (id)bundlesWithError:(id *)a3;
- (id)openCollectionActionsForEntityTypeIdentifier:(id)a3 capabilities:(int64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)propertiesForIdentifiers:(id)a3 error:(id *)a4;
- (id)queriesForBundleIdentifier:(id)a3 ofType:(id)a4 error:(id *)a5;
- (id)queriesWithCapabilities:(unint64_t)a3 inputValueType:(id)a4 resultValueType:(id)a5 error:(id *)a6;
- (id)suggestionPhrasesForQueries:(id)a3 error:(id *)a4;
- (int64_t)metadataVersionForBundleIdentifier:(id)a3 error:(id *)a4;
- (void)autoShortcutsForBundleIdentifier:(id)a3 localeIdentifier:(id)a4 completion:(id)a5;
- (void)autoShortcutsForLocaleIdentifier:(id)a3 completion:(id)a4;
- (void)diagnoseBundleIdentifier:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation _LNMetadataProviderDirect

- (id)autoShortcutsForLocaleIdentifier:(id)a3 error:(id *)a4
{
  sub_19774EF50();
  v5 = self;
  _LNMetadataProviderDirect.autoShortcuts(forLocaleIdentifier:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FDF0, &qword_19775DF20);
  v6 = sub_19774EE20();

  return v6;
}

- (id)actionsConformingToSystemProtocols:(id)a3 logicalType:(unint64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  sub_197648238(0, &qword_1ED696D90, 0x1E69ACA48);
  sub_197665D90(&qword_1ED696D40, &qword_1ED696D90, 0x1E69ACA48);
  sub_19774F1E0();
  if (a5)
  {
    sub_19774EF50();
  }

  v8 = self;
  _LNMetadataProviderDirect.actionsConforming(to:logicalType:bundleIdentifier:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FE48, &qword_19775DF48);
  v9 = sub_19774EE20();

  return v9;
}

- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)a3 error:(id *)a4
{
  if (a3)
  {
    sub_19774EF50();
  }

  v5 = self;
  _LNMetadataProviderDirect.actionsAndSystemProtocolDefaults(forBundleIdentifier:)();

  sub_197648238(0, &qword_1EAF3FE58, 0x1E69AC730);
  v6 = sub_19774EE20();

  return v6;
}

- (id)actionsConformingToSystemProtocol:(id)a3 withParametersOfTypes:(id)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  sub_197648238(0, &qword_1EAF3EE40, 0x1E69ACA98);
  sub_19774EE30();
  if (a5)
  {
    sub_19774EF50();
  }

  v9 = a3;
  v10 = self;
  _LNMetadataProviderDirect.actionsConforming(to:withParametersOfTypes:bundleIdentifier:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FE48, &qword_19775DF48);
  v11 = sub_19774EE20();

  return v11;
}

- (id)actionsWithFullyQualifiedIdentifiers:(id)a3 error:(id *)a4
{
  sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
  v5 = sub_19774F120();
  v6 = self;
  _LNMetadataProviderDirect.actions(withFullyQualifiedIdentifiers:)(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FE48, &qword_19775DF48);
  v7 = sub_19774EE20();

  return v7;
}

- (id)openCollectionActionsForEntityTypeIdentifier:(id)a3 capabilities:(int64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  sub_19774EF50();
  sub_19774EF50();
  v7 = self;
  _LNMetadataProviderDirect.openCollectionActions(forEntityTypeIdentifier:capabilities:bundleIdentifier:)();

  sub_197648238(0, &qword_1ED696FD0, 0x1E69AC678);
  v8 = sub_19774F110();

  return v8;
}

- (id)bundlesWithError:(id *)a3
{
  v3 = self;
  _LNMetadataProviderDirect.bundles()();

  v4 = sub_19774F110();

  return v4;
}

- (id)bundleRegistrationsWithError:(id *)a3
{
  v3 = self;
  _LNMetadataProviderDirect.bundleRegistrations()();

  sub_197648238(0, &qword_1EAF3FE40, off_1E74AF550);
  v4 = sub_19774F110();

  return v4;
}

- (id)queriesForBundleIdentifier:(id)a3 ofType:(id)a4 error:(id *)a5
{
  sub_19774EF50();
  if (a4)
  {
    sub_19774EF50();
  }

  v7 = self;
  _LNMetadataProviderDirect.queries(forBundleIdentifier:ofType:)();

  sub_197648238(0, &qword_1ED696E48, 0x1E69AC988);
  v8 = sub_19774F110();

  return v8;
}

- (id)queriesWithCapabilities:(unint64_t)a3 inputValueType:(id)a4 resultValueType:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = self;
  _LNMetadataProviderDirect.queries(with:inputValueType:resultValueType:)(a3, a4, a5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FE30, &qword_19775DF40);
  v13 = sub_19774EE20();

  return v13;
}

- (int64_t)metadataVersionForBundleIdentifier:(id)a3 error:(id *)a4
{
  sub_19774EF50();
  v5 = self;
  v6 = _LNMetadataProviderDirect.metadataVersion(forBundleIdentifier:error:)();

  return v6;
}

- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = sub_19774EF50();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  _LNMetadataProviderDirect.appShortcutsProviderMangledTypeName(forBundleIdentifier:)(v10);

  if (v11)
  {
    if (a4)
    {
      v12 = sub_19774E9E0();

      v13 = v12;
      v14 = 0;
      *a4 = v12;
    }

    else
    {

      v14 = 0;
    }
  }

  else
  {
    v14 = sub_19774EF20();
  }

  return v14;
}

- (id)suggestionPhrasesForQueries:(id)a3 error:(id *)a4
{
  sub_197648238(0, &qword_1EAF3FE00, 0x1E69AC6E8);
  sub_19774F120();
  v5 = self;
  _LNMetadataProviderDirect.suggestionPhrases(forQueries:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FE08, &qword_19775DF28);
  sub_197665D90(&qword_1EAF3FE10, &qword_1EAF3FE00, 0x1E69AC6E8);
  v6 = sub_19774EE20();

  return v6;
}

- (void)autoShortcutsForBundleIdentifier:(id)a3 localeIdentifier:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_19774EF50();
  v9 = v8;
  v10 = sub_19774EF50();
  v12 = v11;
  _Block_copy(v6);
  v13 = self;
  sub_1976A3AB4(v7, v9, v10, v12, v13, v6);
  _Block_release(v6);
}

- (void)autoShortcutsForLocaleIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_19774EF50();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_1976A3D70(v6, v8, v9, v5);
  _Block_release(v5);
}

- (id)propertiesForIdentifiers:(id)a3 error:(id *)a4
{
  sub_19774EBF0();
  sub_19774F120();
  v5 = self;
  _LNMetadataProviderDirect.properties(forIdentifiers:)();

  sub_197648238(0, &qword_1ED696EE0, 0x1E69AC948);
  sub_1976A78AC(&qword_1ED696E30, MEMORY[0x1E69695A8]);
  v6 = sub_19774EE20();

  return v6;
}

- (void)diagnoseBundleIdentifier:(NSString *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_197693D14();
}

@end