@interface _LNMetadataProviderDirect
- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)identifier error:(id *)error;
- (id)actionsConformingToSystemProtocol:(id)protocol withParametersOfTypes:(id)types bundleIdentifier:(id)identifier error:(id *)error;
- (id)actionsConformingToSystemProtocols:(id)protocols logicalType:(unint64_t)type bundleIdentifier:(id)identifier error:(id *)error;
- (id)actionsWithFullyQualifiedIdentifiers:(id)identifiers error:(id *)error;
- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)identifier error:(id *)error;
- (id)autoShortcutsForLocaleIdentifier:(id)identifier error:(id *)error;
- (id)bundleRegistrationsWithError:(id *)error;
- (id)bundlesWithError:(id *)error;
- (id)openCollectionActionsForEntityTypeIdentifier:(id)identifier capabilities:(int64_t)capabilities bundleIdentifier:(id)bundleIdentifier error:(id *)error;
- (id)propertiesForIdentifiers:(id)identifiers error:(id *)error;
- (id)queriesForBundleIdentifier:(id)identifier ofType:(id)type error:(id *)error;
- (id)queriesWithCapabilities:(unint64_t)capabilities inputValueType:(id)type resultValueType:(id)valueType error:(id *)error;
- (id)suggestionPhrasesForQueries:(id)queries error:(id *)error;
- (int64_t)metadataVersionForBundleIdentifier:(id)identifier error:(id *)error;
- (void)autoShortcutsForBundleIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier completion:(id)completion;
- (void)autoShortcutsForLocaleIdentifier:(id)identifier completion:(id)completion;
- (void)diagnoseBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
@end

@implementation _LNMetadataProviderDirect

- (id)autoShortcutsForLocaleIdentifier:(id)identifier error:(id *)error
{
  sub_19774EF50();
  selfCopy = self;
  _LNMetadataProviderDirect.autoShortcuts(forLocaleIdentifier:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FDF0, &qword_19775DF20);
  v6 = sub_19774EE20();

  return v6;
}

- (id)actionsConformingToSystemProtocols:(id)protocols logicalType:(unint64_t)type bundleIdentifier:(id)identifier error:(id *)error
{
  sub_197648238(0, &qword_1ED696D90, 0x1E69ACA48);
  sub_197665D90(&qword_1ED696D40, &qword_1ED696D90, 0x1E69ACA48);
  sub_19774F1E0();
  if (identifier)
  {
    sub_19774EF50();
  }

  selfCopy = self;
  _LNMetadataProviderDirect.actionsConforming(to:logicalType:bundleIdentifier:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FE48, &qword_19775DF48);
  v9 = sub_19774EE20();

  return v9;
}

- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)identifier error:(id *)error
{
  if (identifier)
  {
    sub_19774EF50();
  }

  selfCopy = self;
  _LNMetadataProviderDirect.actionsAndSystemProtocolDefaults(forBundleIdentifier:)();

  sub_197648238(0, &qword_1EAF3FE58, 0x1E69AC730);
  v6 = sub_19774EE20();

  return v6;
}

- (id)actionsConformingToSystemProtocol:(id)protocol withParametersOfTypes:(id)types bundleIdentifier:(id)identifier error:(id *)error
{
  sub_197648238(0, &qword_1EAF3EE40, 0x1E69ACA98);
  sub_19774EE30();
  if (identifier)
  {
    sub_19774EF50();
  }

  protocolCopy = protocol;
  selfCopy = self;
  _LNMetadataProviderDirect.actionsConforming(to:withParametersOfTypes:bundleIdentifier:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FE48, &qword_19775DF48);
  v11 = sub_19774EE20();

  return v11;
}

- (id)actionsWithFullyQualifiedIdentifiers:(id)identifiers error:(id *)error
{
  sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
  v5 = sub_19774F120();
  selfCopy = self;
  _LNMetadataProviderDirect.actions(withFullyQualifiedIdentifiers:)(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FE48, &qword_19775DF48);
  v7 = sub_19774EE20();

  return v7;
}

- (id)openCollectionActionsForEntityTypeIdentifier:(id)identifier capabilities:(int64_t)capabilities bundleIdentifier:(id)bundleIdentifier error:(id *)error
{
  sub_19774EF50();
  sub_19774EF50();
  selfCopy = self;
  _LNMetadataProviderDirect.openCollectionActions(forEntityTypeIdentifier:capabilities:bundleIdentifier:)();

  sub_197648238(0, &qword_1ED696FD0, 0x1E69AC678);
  v8 = sub_19774F110();

  return v8;
}

- (id)bundlesWithError:(id *)error
{
  selfCopy = self;
  _LNMetadataProviderDirect.bundles()();

  v4 = sub_19774F110();

  return v4;
}

- (id)bundleRegistrationsWithError:(id *)error
{
  selfCopy = self;
  _LNMetadataProviderDirect.bundleRegistrations()();

  sub_197648238(0, &qword_1EAF3FE40, off_1E74AF550);
  v4 = sub_19774F110();

  return v4;
}

- (id)queriesForBundleIdentifier:(id)identifier ofType:(id)type error:(id *)error
{
  sub_19774EF50();
  if (type)
  {
    sub_19774EF50();
  }

  selfCopy = self;
  _LNMetadataProviderDirect.queries(forBundleIdentifier:ofType:)();

  sub_197648238(0, &qword_1ED696E48, 0x1E69AC988);
  v8 = sub_19774F110();

  return v8;
}

- (id)queriesWithCapabilities:(unint64_t)capabilities inputValueType:(id)type resultValueType:(id)valueType error:(id *)error
{
  typeCopy = type;
  valueTypeCopy = valueType;
  selfCopy = self;
  _LNMetadataProviderDirect.queries(with:inputValueType:resultValueType:)(capabilities, type, valueType);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FE30, &qword_19775DF40);
  v13 = sub_19774EE20();

  return v13;
}

- (int64_t)metadataVersionForBundleIdentifier:(id)identifier error:(id *)error
{
  sub_19774EF50();
  selfCopy = self;
  v6 = _LNMetadataProviderDirect.metadataVersion(forBundleIdentifier:error:)();

  return v6;
}

- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)identifier error:(id *)error
{
  v6 = sub_19774EF50();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  _LNMetadataProviderDirect.appShortcutsProviderMangledTypeName(forBundleIdentifier:)(v10);

  if (v11)
  {
    if (error)
    {
      v12 = sub_19774E9E0();

      v13 = v12;
      v14 = 0;
      *error = v12;
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

- (id)suggestionPhrasesForQueries:(id)queries error:(id *)error
{
  sub_197648238(0, &qword_1EAF3FE00, 0x1E69AC6E8);
  sub_19774F120();
  selfCopy = self;
  _LNMetadataProviderDirect.suggestionPhrases(forQueries:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FE08, &qword_19775DF28);
  sub_197665D90(&qword_1EAF3FE10, &qword_1EAF3FE00, 0x1E69AC6E8);
  v6 = sub_19774EE20();

  return v6;
}

- (void)autoShortcutsForBundleIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_19774EF50();
  v9 = v8;
  v10 = sub_19774EF50();
  v12 = v11;
  _Block_copy(v6);
  selfCopy = self;
  sub_1976A3AB4(v7, v9, v10, v12, selfCopy, v6);
  _Block_release(v6);
}

- (void)autoShortcutsForLocaleIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_19774EF50();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_1976A3D70(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

- (id)propertiesForIdentifiers:(id)identifiers error:(id *)error
{
  sub_19774EBF0();
  sub_19774F120();
  selfCopy = self;
  _LNMetadataProviderDirect.properties(forIdentifiers:)();

  sub_197648238(0, &qword_1ED696EE0, 0x1E69AC948);
  sub_1976A78AC(&qword_1ED696E30, MEMORY[0x1E69695A8]);
  v6 = sub_19774EE20();

  return v6;
}

- (void)diagnoseBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = identifier;
  v7[3] = v6;
  v7[4] = self;
  identifierCopy = identifier;
  selfCopy = self;

  sub_197693D14();
}

@end