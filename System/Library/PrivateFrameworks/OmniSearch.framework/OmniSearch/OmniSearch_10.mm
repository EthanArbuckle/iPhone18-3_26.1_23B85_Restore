uint64_t static PersonalCardEntity.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, static PersonalCardEntity.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t PersonalCardEntity.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(16);
  EntityProperty.wrappedValue.getter();
  if (v6)
  {
    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

  if (v6)
  {
    v3 = v6;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x25F89F6C0](v2, v3);

  MEMORY[0x25F89F6C0](0x7469746E65646920, 0xEE00647261632079);
  return 0;
}

uint64_t PersonalCardEntity.cardData.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v3, v4);
  return OUTLINED_FUNCTION_94();
}

uint64_t PersonalCardEntity.cardData.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 176), *(v2 + 184));
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

OmniSearch::Sex_optional __swiftcall Sex.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Sex.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

BOOL static PersonalCardEntity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v69 = a1[4];
  v70 = a1[3];
  v68 = a1[5];
  v66 = a1[6];
  v64 = a1[7];
  v62 = a1[8];
  v60 = a1[9];
  v58 = a1[10];
  v56 = a1[11];
  v54 = a1[12];
  v52 = a1[13];
  v50 = a1[14];
  v48 = a1[15];
  v46 = a1[16];
  v44 = a1[17];
  v42 = a1[18];
  v40 = a1[19];
  v38 = a1[20];
  v32 = a1[21];
  v30 = a1[22];
  v36 = a1[23];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v67 = a2[5];
  v65 = a2[6];
  v63 = a2[7];
  v61 = a2[8];
  v59 = a2[9];
  v57 = a2[10];
  v55 = a2[11];
  v53 = a2[12];
  v51 = a2[13];
  v49 = a2[14];
  v47 = a2[15];
  v45 = a2[16];
  v43 = a2[17];
  v41 = a2[18];
  v39 = a2[19];
  v37 = a2[20];
  v31 = a2[21];
  v27 = a2[22];
  v33 = a2[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMd, &_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMR);
  lazy protocol witness table accessor for type CLPlacemark? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch3SexOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch3SexOGMR);
  lazy protocol witness table accessor for type Sex and conformance Sex();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_55_3() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  lazy protocol witness table accessor for type IntentFile? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v10 = static EntityProperty<>.== infix(_:_:)();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  if (v36 >> 60 != 15)
  {
    if (v33 >> 60 != 15)
    {
      outlined copy of Data?(v30, v36);
      OUTLINED_FUNCTION_11_12(v27, v33);
      OUTLINED_FUNCTION_72_1();
      v23 = MEMORY[0x25F899380]();
      outlined consume of Data?(v27, v33);
      v24 = OUTLINED_FUNCTION_62_3();
      outlined consume of Data?(v24, v25);
      return (v23 & 1) != 0;
    }

LABEL_27:
    OUTLINED_FUNCTION_98_3(v10, v11, v12, v13, v14, v15, v16, v17, v26, v27, v30, v31, v32, v33, v36);
    outlined copy of Data?(v29, v35);
    v20 = OUTLINED_FUNCTION_107();
    outlined consume of Data?(v20, v21);
    outlined consume of Data?(v29, v35);
    return 0;
  }

  if (v33 >> 60 != 15)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_98_3(v10, v11, v12, v13, v14, v15, v16, v17, v26, v27, v30, v31, v32, v33, v36);
  outlined copy of Data?(v28, v34);
  v18 = OUTLINED_FUNCTION_107();
  outlined consume of Data?(v18, v19);
  return 1;
}

uint64_t (*protocol witness for SpotlightItemProviding.encodedSearchableItem.modify in conformance PersonalCardEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 160);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*protocol witness for SpotlightItemProviding.openCommand.modify in conformance PersonalCardEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 168);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance PersonalCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance PersonalCardEntity()
{
  lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();

  return UUID.init()();
}

uint64_t protocol witness for InstanceDisplayRepresentable.displayRepresentation(with:) in conformance PersonalCardEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for InstanceDisplayRepresentable.displayRepresentation(with:) in conformance PersonalCardEntity;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance PersonalCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance PersonalCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t BusinessCardEntity.cardName.getter()
{
  v1 = *v0;
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*BusinessCardEntity.cardName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t BusinessCardEntity.cardSubType.getter()
{
  v1 = *(v0 + 8);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*BusinessCardEntity.cardSubType.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t BusinessCardEntity.expirationDate.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*BusinessCardEntity.expirationDate.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for BusinessCardEntity.expirationDate : BusinessCardEntity(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(_BYTE *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  v16 = &__dst[-v15];
  v17 = OUTLINED_FUNCTION_64_0();
  outlined init with copy of ResourceBundle?(v17, v18, a5, a6);
  memcpy(__dst, a2, sizeof(__dst));
  outlined init with copy of BusinessCardEntity(__dst, v21);
  a7(v16);
  memcpy(v21, a2, sizeof(v21));
  return outlined destroy of BusinessCardEntity(v21);
}

uint64_t BusinessCardEntity.issueDate.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 24);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*BusinessCardEntity.issueDate.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t BusinessCardEntity.issuingBusiness.getter()
{
  v1 = *(v0 + 32);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*BusinessCardEntity.issuingBusiness.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t BusinessCardEntity.memberIDNumber.getter()
{
  v1 = *(v0 + 40);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*BusinessCardEntity.memberIDNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t BusinessCardEntity.membershipType.getter()
{
  v1 = *(v0 + 48);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*BusinessCardEntity.membershipType.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t BusinessCardEntity.personName.getter()
{
  v1 = *(v0 + 56);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for BusinessCardEntity.cardName : BusinessCardEntity(uint64_t *a1)
{
  OUTLINED_FUNCTION_96_2(a1);
  memcpy(v3, v4, 0x60uLL);

  outlined init with copy of BusinessCardEntity(&v7, __dst);
  v5 = OUTLINED_FUNCTION_34_11();
  v1(v5);
  memcpy(__dst, v2, sizeof(__dst));
  return outlined destroy of BusinessCardEntity(__dst);
}

uint64_t (*BusinessCardEntity.personName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t BusinessCardEntity.encodedSearchableItem.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 64);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*BusinessCardEntity.encodedSearchableItem.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t BusinessCardEntity.openCommand.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 72);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*BusinessCardEntity.openCommand.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 72);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

double BusinessCardEntity.init()()
{
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for LocalizedStringResource();
  v2 = OUTLINED_FUNCTION_114(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_92_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_10_11();
  LocalizedStringResource.init(stringLiteral:)();
  *v0 = OUTLINED_FUNCTION_80_4();
  OUTLINED_FUNCTION_1_29();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  OUTLINED_FUNCTION_0_26();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_78_3();
  *(v0 + 24) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_57_4();
  *(v0 + 32) = OUTLINED_FUNCTION_80_4();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_57_4();
  *(v0 + 40) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_14_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_3_18();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 64) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 72) = EntityProperty<>.init(title:)();
  result = 0.0;
  *(v0 + 80) = xmmword_25DBC9410;
  return result;
}

uint64_t static BusinessCardEntity.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, static BusinessCardEntity.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t BusinessCardEntity.description.getter()
{
  v1 = *v0;
  v2 = 0xE000000000000000;
  EntityProperty.wrappedValue.getter();
  if (v6)
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    v2 = v6;
  }

  MEMORY[0x25F89F6C0](v3, v2);

  MEMORY[0x25F89F6C0](0x6472616320, 0xE500000000000000);
  return 0;
}

uint64_t BusinessCardEntity.cardData.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v3, v4);
  return OUTLINED_FUNCTION_94();
}

uint64_t BusinessCardEntity.cardData.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

BOOL static BusinessCardEntity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v43 = a1[4];
  v41 = a1[5];
  v39 = a1[6];
  v37 = a1[7];
  v35 = a1[8];
  v33 = a1[9];
  v30 = a1[10];
  v31 = a1[11];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v42 = a2[4];
  v40 = a2[5];
  v38 = a2[6];
  v36 = a2[7];
  v34 = a2[8];
  v32 = a2[9];
  v28 = a2[10];
  v29 = a2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  OUTLINED_FUNCTION_30_5();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  lazy protocol witness table accessor for type IntentFile? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0 || (static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v31 >> 60 != 15)
  {
    if (v29 >> 60 != 15)
    {
      v23 = OUTLINED_FUNCTION_62_3();
      outlined copy of Data?(v23, v24);
      OUTLINED_FUNCTION_11_12(v28, v29);
      OUTLINED_FUNCTION_72_1();
      v25 = MEMORY[0x25F899380]();
      outlined consume of Data?(v28, v29);
      v26 = OUTLINED_FUNCTION_62_3();
      outlined consume of Data?(v26, v27);
      return (v25 & 1) != 0;
    }

LABEL_15:
    v14 = OUTLINED_FUNCTION_94();
    outlined copy of Data?(v14, v15);
    v16 = OUTLINED_FUNCTION_34_11();
    outlined copy of Data?(v16, v17);
    v18 = OUTLINED_FUNCTION_94();
    outlined consume of Data?(v18, v19);
    v20 = OUTLINED_FUNCTION_34_11();
    outlined consume of Data?(v20, v21);
    return 0;
  }

  if (v29 >> 60 != 15)
  {
    goto LABEL_15;
  }

  v10 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v10, v11);
  outlined copy of Data?(v28, v29);
  v12 = OUTLINED_FUNCTION_94();
  outlined consume of Data?(v12, v13);
  return 1;
}

uint64_t (*protocol witness for SpotlightItemProviding.encodedSearchableItem.modify in conformance BusinessCardEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 64);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*protocol witness for SpotlightItemProviding.openCommand.modify in conformance BusinessCardEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 72);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance BusinessCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance BusinessCardEntity()
{
  lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance BusinessCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance BusinessCardEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t one-time initialization function for typeDisplayRepresentation(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_59_4();
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = OUTLINED_FUNCTION_17(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v10 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v10, a2);
  __swift_project_value_buffer(v10, a2);
  OUTLINED_FUNCTION_107();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  OUTLINED_FUNCTION_90_3();
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23_1();
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = OUTLINED_FUNCTION_17(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v11 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v11, a2);
  __swift_project_value_buffer(v11, a2);
  OUTLINED_FUNCTION_98_2();
  LocalizedStringResource.init(stringLiteral:)();
  v12 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  OUTLINED_FUNCTION_1_28();
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_1();
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = OUTLINED_FUNCTION_10_20(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_27();
  v12 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  OUTLINED_FUNCTION_188_2();
  LocalizedStringResource.init(stringLiteral:)();
  v13 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v2);
  OUTLINED_FUNCTION_1_28();
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59_4();
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = OUTLINED_FUNCTION_17(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v11 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v11, a2);
  __swift_project_value_buffer(v11, a2);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  OUTLINED_FUNCTION_232();
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_1();
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = OUTLINED_FUNCTION_10_20(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_27();
  v12 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  OUTLINED_FUNCTION_188_2();
  LocalizedStringResource.init(stringLiteral:)();
  v13 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v2);
  OUTLINED_FUNCTION_1_28();
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t IdCardEntity.typeDisplayRepresentation.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static IdCardEntity.typeDisplayRepresentation.getter(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v3, a2);
  OUTLINED_FUNCTION_91_3();
  swift_beginAccess();
  v4 = *(*(v3 - 8) + 16);
  v5 = OUTLINED_FUNCTION_94();
  return v6(v5);
}

uint64_t static IdCardEntity.typeDisplayRepresentation.setter(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v5, a3);
  OUTLINED_FUNCTION_91_3();
  swift_beginAccess();
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v8 = OUTLINED_FUNCTION_107();
  v9(v8);
  swift_endAccess();
  return (*(v6 + 8))(a1, v5);
}

uint64_t static Sex.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, static Sex.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

void static Sex.caseDisplayRepresentations.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_101_2();
  v11 = OUTLINED_FUNCTION_17(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch3SexO_10AppIntents21DisplayRepresentationVtGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch3SexO_10AppIntents21DisplayRepresentationVtGMR);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch3SexO_10AppIntents21DisplayRepresentationVtMd, &_s10OmniSearch3SexO_10AppIntents21DisplayRepresentationVtMR);
  OUTLINED_FUNCTION_95_2(v14);
  v16 = *(v15 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_88_3(v40, xmmword_25DBC8400);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v10);
  v22 = type metadata accessor for DisplayRepresentation.Image();
  v23 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_50_4();
  v26 = *(v0 + 56);
  *(v1 + v16) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v10);
  v30 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v22);
  OUTLINED_FUNCTION_50_4();
  v33 = *(v0 + 56);
  *(v1 + 2 * v16) = 2;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v10);
  v37 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v22);
  OUTLINED_FUNCTION_50_4();
  type metadata accessor for DisplayRepresentation();
  lazy protocol witness table accessor for type Sex and conformance Sex();
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_148();
}

uint64_t Sex.rawValue.getter()
{
  v1 = 0x656C616D6566;
  if (*v0 != 1)
  {
    v1 = 1701601645;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Sex@<X0>(uint64_t *a1@<X8>)
{
  result = Sex.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance Sex(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Sex and conformance Sex();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance Sex(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Sex and conformance Sex();

  return MEMORY[0x28210C300](a1, v2);
}

void IdCardEntity.init(preExtractedCard:card:encodedSearchableItem:)()
{
  OUTLINED_FUNCTION_155();
  v73 = v0;
  v74 = v1;
  v71 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v6 = OUTLINED_FUNCTION_114(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_109();
  v69 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v68 = &v67 - v12;
  OUTLINED_FUNCTION_78_0();
  v13 = type metadata accessor for PreExtractedCard();
  v14 = OUTLINED_FUNCTION_14(v13);
  v75 = v15;
  v76 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v70 = v19 - v18;
  OUTLINED_FUNCTION_78_0();
  v20 = type metadata accessor for LocalizedStringResource();
  v21 = OUTLINED_FUNCTION_114(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_92_4();
  v24 = type metadata accessor for IdCardEntity();
  v25 = OUTLINED_FUNCTION_17(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_36();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch11CardSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch11CardSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_106_2();
  lazy protocol witness table accessor for type CardSubType and conformance CardSubType();
  OUTLINED_FUNCTION_54_5();
  *v30 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012PersonalCardC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012PersonalCardC0VSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();
  OUTLINED_FUNCTION_54_5();
  *(v30 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012BusinessCardC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012BusinessCardC0VSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();
  OUTLINED_FUNCTION_54_5();
  v31 = EntityProperty<>.init(title:)();
  *(v30 + 16) = v31;
  *(v30 + 24) = xmmword_25DBC9410;
  v72 = v24;
  v32 = *(v24 + 32);
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  PreExtractedCard.cardType.getter();
  v37 = v4;
  PreExtractedCard.cardSubType.getter();
  static IdCardEntity.cardSubtype(preExtractedCardType:preExtractedCardSubType:)();

  v38 = LOBYTE(v78[0]);
  if (LOBYTE(v78[0]) != 2)
  {
    LOBYTE(v78[0]) &= 1u;
    EntityProperty.wrappedValue.setter();
    v49 = v75;
    v50 = OUTLINED_FUNCTION_60_3((v75 + 16));
    v51(v50);
    OUTLINED_FUNCTION_93_3();
    if (v38)
    {
      BusinessCardEntity.init(preExtractedCard:)();
    }

    else
    {
      PersonalCardEntity.init(preExtractedCard:)();
      _s10OmniSearch11GeoLocationVSgWOi_(v78);
      memcpy(v77, v78, sizeof(v77));
    }

    EntityProperty.wrappedValue.setter();
    v52 = v73;
    IdCardEntity.representedEntity.getter(v77);
    if (!*(&v77[1] + 1))
    {

      outlined destroy of IntentApplication?(v52, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
      (*(v49 + 8))(v37, v76);
      outlined destroy of IntentApplication?(v77, &_s10AppIntents0A6Entity_10OmniSearch15CardDisplayableAC22SpotlightItemProvidingpSgMd, &_s10AppIntents0A6Entity_10OmniSearch15CardDisplayableAC22SpotlightItemProvidingpSgMR);
LABEL_23:
      v48 = v74;
      _s10OmniSearch0B6ResultVWObTm_4(v30, v74, type metadata accessor for IdCardEntity);
      v47 = 0;
      goto LABEL_24;
    }

    v73 = v37;
    outlined init with take of AppEntity & CardDisplayable & SpotlightItemProviding(v77, v78);
    v53 = v68;
    outlined init with copy of ResourceBundle?(v52, v68, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    OUTLINED_FUNCTION_99_3();
    (*(v38 + 16))(v53, v31, v38);
    v54 = v78[3];
    v55 = v78[5];
    __swift_mutable_project_boxed_opaque_existential_1(v78, v78[3]);
    v56 = *(v55 + 16);
    v57 = *(v56 + 16);
    v58 = v71;
    v59 = v71;
    v57(v58, v54, v56);
    if (v58)
    {
      v60 = outlined bridged method (ob) of @objc SFCard.cardSections.getter(v59);
      v61 = v69;
      if (v60)
      {
        v62 = v60;
        if (specialized Array.count.getter(v60))
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v62 & 0xC000000000000001) == 0, v62);
          if ((v62 & 0xC000000000000001) != 0)
          {
            v63 = MEMORY[0x25F89FFD0](0, v62);
          }

          else
          {
            v63 = *(v62 + 32);
          }

          v54 = v63;

          v64 = [v54 command];

          if (v64)
          {
            v54 = 0;
            SFCommand.asIntentFile()();

            v66 = 0;
LABEL_22:
            v65 = type metadata accessor for IntentFile();
            __swift_storeEnumTagSinglePayload(v61, v66, 1, v65);
            OUTLINED_FUNCTION_99_3();
            (*(v56 + 40))(v61, v54, v56);

            outlined destroy of IntentApplication?(v52, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
            (*(v75 + 8))(v73, v76);
            __swift_destroy_boxed_opaque_existential_0Tm(v78);
            goto LABEL_23;
          }
        }

        else
        {
        }
      }

      v66 = 1;
      goto LABEL_22;
    }

    v66 = 1;
    v61 = v69;
    goto LABEL_22;
  }

  v39 = v75;
  if (one-time initialization token for utilities != -1)
  {
    OUTLINED_FUNCTION_12_12();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logging.utilities);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  v43 = OUTLINED_FUNCTION_77_5(v42);
  v44 = v73;
  if (v43)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_100_3(&dword_25D85C000, v45, v46, "Unsupported subType in PreExtractedCard. Returning nil for IdCardEntity.");
    OUTLINED_FUNCTION_42_0();
  }

  outlined destroy of IntentApplication?(v44, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  (*(v39 + 8))(v4, v76);
  _s10OmniSearch0B6ResultVWOhTm_2(v30, type metadata accessor for IdCardEntity);
  v47 = 1;
  v48 = v74;
LABEL_24:
  __swift_storeEnumTagSinglePayload(v48, v47, 1, v72);
  OUTLINED_FUNCTION_148();
}

void static IdCardEntity.cardSubtype(preExtractedCardType:preExtractedCardSubType:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  if (!v4)
  {
    if (one-time initialization token for utilities != -1)
    {
      OUTLINED_FUNCTION_12_12();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logging.utilities);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_77_5(v16))
    {
      goto LABEL_34;
    }

    *swift_slowAlloc() = 0;
    v19 = "preExtractedCardSubType is nil. Returning nil CardSubType.";
    goto LABEL_33;
  }

  v5 = v1;
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8930;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000025DBF11D0;
  *(inited + 48) = 0x70737361705F6469;
  *(inited + 56) = 0xEB0000000074726FLL;
  strcpy((inited + 64), "id_green_card");
  *(inited + 78) = -4864;
  *(inited + 80) = 0x6E73735F6469;
  *(inited + 88) = 0xE600000000000000;
  v8 = *MEMORY[0x277CC2288];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v5)
  {

    goto LABEL_17;
  }

  if (v9 == v6 && v10 == v5)
  {
  }

  else
  {
    v12 = OUTLINED_FUNCTION_102_3();

    if ((v12 & 1) == 0)
    {
LABEL_17:
      v22 = *MEMORY[0x277CC2280];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v5)
      {
        if (v23 == v6 && v24 == v5)
        {

          goto LABEL_27;
        }

        v26 = OUTLINED_FUNCTION_102_3();

        if (v26)
        {
LABEL_27:
          MEMORY[0x28223BE20](v27);
          OUTLINED_FUNCTION_61_4();
          v29 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v28, inited);
          swift_setDeallocating();
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          if (v29)
          {
            v21 = 0;
            goto LABEL_35;
          }

          goto LABEL_29;
        }
      }

      else
      {
      }

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
LABEL_29:
      if (one-time initialization token for utilities != -1)
      {
        OUTLINED_FUNCTION_12_12();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logging.utilities);
      v15 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_77_5(v31))
      {
        goto LABEL_34;
      }

      *swift_slowAlloc() = 0;
      v19 = "preExtractedCardType is not supported. Returning nil CardSubType.";
LABEL_33:
      OUTLINED_FUNCTION_100_3(&dword_25D85C000, v17, v18, v19);
      OUTLINED_FUNCTION_42_0();
LABEL_34:

      v21 = 2;
      goto LABEL_35;
    }
  }

  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_61_4();
  if (!specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v20, &outlined read-only object #0 of static IdCardEntity.cardSubtype(preExtractedCardType:preExtractedCardSubType:)))
  {
    goto LABEL_17;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v21 = 1;
LABEL_35:
  *v3 = v21;
  OUTLINED_FUNCTION_148();
}

void *IdCardEntity.representedEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  EntityProperty.wrappedValue.getter();
  if ((v16 & 1) == 0)
  {
    v12 = v2[1];
    EntityProperty.wrappedValue.getter();
    memcpy(__dst, __src, sizeof(__dst));
    result = _s10OmniSearch0B7ContextVSgWOg(__dst);
    if (result != 1)
    {
      *(a1 + 24) = &type metadata for PersonalCardEntity;
      *(a1 + 32) = lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();
      *(a1 + 40) = lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();
      *(a1 + 48) = &protocol witness table for PersonalCardEntity;
      v13 = swift_allocObject();
      *a1 = v13;
      v9 = (v13 + 16);
      v10 = __dst;
      v11 = 192;
      return memcpy(v9, v10, v11);
    }

LABEL_5:
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  v5 = v2[2];
  result = EntityProperty.wrappedValue.getter();
  v7 = __dst[0];
  if (!__dst[0])
  {
    goto LABEL_5;
  }

  *(a1 + 24) = &type metadata for BusinessCardEntity;
  *(a1 + 32) = lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();
  *(a1 + 40) = lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();
  *(a1 + 48) = &protocol witness table for BusinessCardEntity;
  v8 = swift_allocObject();
  *a1 = v8;
  *(v8 + 16) = v7;
  OUTLINED_FUNCTION_89_4();
  return memcpy(v9, v10, v11);
}

void PersonalCardEntity.init(cardName:personName:idNumber:idType:memberIDNumber:issueDate:issuingBusiness:issuingRegion:issuingCountry:expirationDate:birthday:placeOfBirth:address:sex:height:eyeColor:weight:licenseClass:licenseRestrictions:cardSubType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, unsigned __int8 *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  OUTLINED_FUNCTION_155();
  a19 = v47;
  a20 = v48;
  v105 = v49;
  v104 = v50;
  v103 = v51;
  v102 = v52;
  v100 = v53;
  v99 = v54;
  v96 = v55;
  v95 = v56;
  v58 = v57;
  v128 = a46;
  v129 = a47;
  v126 = a44;
  v127 = a45;
  v124 = a42;
  v125 = a43;
  v122 = a40;
  v123 = a41;
  v120 = a38;
  v121 = a39;
  v119 = a37;
  v116 = a33;
  v117 = a34;
  v114 = a31;
  v115 = a32;
  v111 = a29;
  v112 = a30;
  v110 = a28;
  v109 = a27;
  v108 = a26;
  v107 = a25;
  v106 = a24;
  v101 = a23;
  v98 = a22;
  v97 = a21;
  v59 = a35;
  v118 = a36;
  v60 = OUTLINED_FUNCTION_64_0();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
  v63 = OUTLINED_FUNCTION_114(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v66);
  v68 = &v77 - v67;
  v69 = type metadata accessor for LocalizedStringResource();
  v70 = OUTLINED_FUNCTION_114(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_36();
  v113 = *v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_10_11();
  LocalizedStringResource.init(stringLiteral:)();
  v94 = OUTLINED_FUNCTION_104_2();
  *v58 = v94;
  OUTLINED_FUNCTION_3_18();
  LocalizedStringResource.init(stringLiteral:)();
  v93 = EntityProperty<>.init(title:)();
  *(v58 + 8) = v93;
  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_75_2();
  v92 = EntityProperty<>.init(title:)();
  *(v58 + 16) = v92;
  OUTLINED_FUNCTION_46_6();
  LocalizedStringResource.init(stringLiteral:)();
  v91 = EntityProperty<>.init(title:)();
  *(v58 + 24) = v91;
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_57_4();
  v90 = EntityProperty<>.init(title:)();
  *(v58 + 32) = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_78_3();
  v89 = EntityProperty<>.init(title:)();
  *(v58 + 40) = v89;
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_57_4();
  v86 = OUTLINED_FUNCTION_104_2();
  *(v58 + 48) = v86;
  OUTLINED_FUNCTION_45_5();
  LocalizedStringResource.init(stringLiteral:)();
  v85 = EntityProperty<>.init(title:)();
  *(v58 + 56) = v85;
  OUTLINED_FUNCTION_44_7();
  LocalizedStringResource.init(stringLiteral:)();
  v83 = EntityProperty<>.init(title:)();
  *(v58 + 64) = v83;
  OUTLINED_FUNCTION_0_26();
  LocalizedStringResource.init(stringLiteral:)();
  v79 = EntityProperty<>.init(title:)();
  *(v58 + 72) = v79;
  OUTLINED_FUNCTION_43_6();
  LocalizedStringResource.init(stringLiteral:)();
  v88 = EntityProperty<>.init(title:)();
  *(v58 + 80) = v88;
  OUTLINED_FUNCTION_13_7();
  LocalizedStringResource.init(stringLiteral:)();
  v87 = OUTLINED_FUNCTION_104_2();
  *(v58 + 88) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMd, &_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMR);
  OUTLINED_FUNCTION_31_11();
  LocalizedStringResource.init(stringLiteral:)();
  v84 = EntityProperty<>.init(title:)();
  *(v58 + 96) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch3SexOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch3SexOGMR);
  OUTLINED_FUNCTION_74_5();
  lazy protocol witness table accessor for type Sex and conformance Sex();
  v82 = EntityProperty<>.init(title:)();
  *(v58 + 104) = v82;
  LocalizedStringResource.init(stringLiteral:)();
  v81 = OUTLINED_FUNCTION_104_2();
  *(v58 + 112) = v81;
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_75_2();
  v80 = EntityProperty<>.init(title:)();
  *(v58 + 120) = v80;
  LocalizedStringResource.init(stringLiteral:)();
  v78 = EntityProperty<>.init(title:)();
  *(v58 + 128) = v78;
  OUTLINED_FUNCTION_16_13();
  LocalizedStringResource.init(stringLiteral:)();
  v77 = EntityProperty<>.init(title:)();
  *(v58 + 136) = v77;
  LocalizedStringResource.init(stringLiteral:)();
  *(v58 + 144) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_1_29();
  LocalizedStringResource.init(stringLiteral:)();
  *(v58 + 152) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(v58 + 160) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v58 + 168) = EntityProperty<>.init(title:)();
  *(v58 + 176) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_18_10(&v128);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&v131);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&a11);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&a13);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&v130);
  EntityProperty.wrappedValue.setter();
  v73 = v101;
  OUTLINED_FUNCTION_82_4(v101);
  OUTLINED_FUNCTION_56_5();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_73_3(v68);
  OUTLINED_FUNCTION_18_10(&a15);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&a17);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v111);
  EntityProperty.wrappedValue.setter();
  v74 = v112;
  OUTLINED_FUNCTION_82_4(v112);
  OUTLINED_FUNCTION_56_5();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_73_3(v68);
  v75 = v114;
  OUTLINED_FUNCTION_82_4(v114);
  OUTLINED_FUNCTION_56_5();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_73_3(v68);
  OUTLINED_FUNCTION_26_5(v116);
  EntityProperty.wrappedValue.setter();
  v130 = v117;
  v76 = v117;
  EntityProperty.wrappedValue.setter();
  LOBYTE(v130) = v113;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v119);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v121);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v123);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v125);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v127);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v129);
  EntityProperty.wrappedValue.setter();

  OUTLINED_FUNCTION_73_3(v75);
  OUTLINED_FUNCTION_73_3(v74);
  OUTLINED_FUNCTION_73_3(v73);
  OUTLINED_FUNCTION_148();
}

void BusinessCardEntity.init(cardName:cardSubType:expirationDate:issueDate:issuingBusiness:memberIDNumber:membershipType:personName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_155();
  v61 = v26;
  v62 = v27;
  v57 = v28;
  v58 = v29;
  v55 = v30;
  v56 = v31;
  v53 = v32;
  v54 = v33;
  v35 = v34;
  v65 = a25;
  v66 = a26;
  v63 = a23;
  v64 = a24;
  v59 = a21;
  v60 = a22;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v37 = OUTLINED_FUNCTION_114(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v40);
  v42 = &v50 - v41;
  v43 = type metadata accessor for LocalizedStringResource();
  v44 = OUTLINED_FUNCTION_114(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_10_11();
  LocalizedStringResource.init(stringLiteral:)();
  v52 = EntityProperty<>.init(title:)();
  *v35 = v52;
  OUTLINED_FUNCTION_1_29();
  LocalizedStringResource.init(stringLiteral:)();
  *(v35 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  OUTLINED_FUNCTION_0_26();
  LocalizedStringResource.init(stringLiteral:)();
  *(v35 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_78_3();
  v51 = EntityProperty<>.init(title:)();
  *(v35 + 24) = v51;
  OUTLINED_FUNCTION_27_7();
  v50 = EntityProperty<>.init(title:)();
  *(v35 + 32) = v50;
  OUTLINED_FUNCTION_27_7();
  *(v35 + 40) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_14_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v35 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_3_18();
  LocalizedStringResource.init(stringLiteral:)();
  *(v35 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_63_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v35 + 64) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v35 + 72) = EntityProperty<>.init(title:)();
  *(v35 + 80) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_26_5(v54);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v56);
  EntityProperty.wrappedValue.setter();
  v47 = v57;
  outlined init with copy of ResourceBundle?(v57, v42, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_97_2();
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v42, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of ResourceBundle?(v58, v42, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_97_2();
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v42, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_26_5(v62);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v60);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v64);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v66);
  EntityProperty.wrappedValue.setter();
  v48 = OUTLINED_FUNCTION_64_0();
  outlined destroy of IntentApplication?(v48, v49, &_s10Foundation4DateVSgMR);
  outlined destroy of IntentApplication?(v47, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_148();
}

uint64_t outlined assign with take of SearchResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SearchPreExtractedCardStandardRepresentation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Sex and conformance Sex()
{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Sex and conformance Sex;
  if (!lazy protocol witness table cache variable for type Sex and conformance Sex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sex and conformance Sex);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    lazy protocol witness table accessor for type String and conformance String();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Date? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Date? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Date? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type Date and conformance Date);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLPlacemark? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CLPlacemark? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CLPlacemark? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo11CLPlacemarkCSgMd, &_sSo11CLPlacemarkCSgMR);
    lazy protocol witness table accessor for type CLPlacemark and conformance NSObject();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLPlacemark? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLPlacemark? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CLPlacemark? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo11CLPlacemarkCSgMd, &_sSo11CLPlacemarkCSgMR);
    lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type CLPlacemark and conformance CLPlacemark);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLPlacemark? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLPlacemark and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type CLPlacemark and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CLPlacemark and conformance NSObject)
  {
    type metadata accessor for TRIClient(255, &lazy cache variable for type metadata for CLPlacemark, 0x277CBFC40);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLPlacemark and conformance NSObject);
  }

  return result;
}

uint64_t specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_4_15(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_83_5();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_62_3();
    v8 = MEMORY[0x25F89FFD0](v10);
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_58_2();
}

{
  v7 = OUTLINED_FUNCTION_4_15(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_62_3();
    v11 = MEMORY[0x25F89FFD0](v13);
  }

  *v3 = v11;
  return OUTLINED_FUNCTION_58_2();
}

{
  v5 = OUTLINED_FUNCTION_4_15(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_83_5();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_62_3();
    v8 = MEMORY[0x25F89FFD0](v10);
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_58_2();
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s10OmniSearch0B6ResultVWObTm_4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t outlined init with take of AppEntity & CardDisplayable & SpotlightItemProviding(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_49_7(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined bridged method (ob) of @objc SFCard.cardSections.getter(void *a1)
{
  v2 = [a1 cardSections];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for IdCardEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel(&lazy protocol witness table cache variable for type IdCardEntity and conformance IdCardEntity, type metadata accessor for IdCardEntity);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PersonalCardEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for BusinessCardEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for IdCardEntity()
{
  type metadata accessor for EntityProperty<CardSubType>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EntityProperty<PersonalCardEntity?>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EntityProperty<BusinessCardEntity?>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Data?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SearchResult?();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for EntityProperty<CardSubType>()
{
  if (!lazy cache variable for type metadata for EntityProperty<CardSubType>)
  {
    lazy protocol witness table accessor for type CardSubType and conformance CardSubType();
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityProperty<CardSubType>);
    }
  }
}

void type metadata accessor for EntityProperty<PersonalCardEntity?>()
{
  if (!lazy cache variable for type metadata for EntityProperty<PersonalCardEntity?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR);
    lazy protocol witness table accessor for type BusinessCardEntity? and conformance <A> A?(&lazy protocol witness table cache variable for type PersonalCardEntity? and conformance <A> A?, &_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR, lazy protocol witness table accessor for type PersonalCardEntity and conformance PersonalCardEntity);
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityProperty<PersonalCardEntity?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type BusinessCardEntity? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for EntityProperty<BusinessCardEntity?>()
{
  if (!lazy cache variable for type metadata for EntityProperty<BusinessCardEntity?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch18BusinessCardEntityVSgMd, &_s10OmniSearch18BusinessCardEntityVSgMR);
    lazy protocol witness table accessor for type BusinessCardEntity? and conformance <A> A?(&lazy protocol witness table cache variable for type BusinessCardEntity? and conformance <A> A?, &_s10OmniSearch18BusinessCardEntityVSgMd, &_s10OmniSearch18BusinessCardEntityVSgMR, lazy protocol witness table accessor for type BusinessCardEntity and conformance BusinessCardEntity);
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityProperty<BusinessCardEntity?>);
    }
  }
}

void type metadata accessor for Data?()
{
  if (!lazy cache variable for type metadata for Data?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Data?);
    }
  }
}

void type metadata accessor for SearchResult?()
{
  if (!lazy cache variable for type metadata for SearchResult?)
  {
    type metadata accessor for SearchResult(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SearchResult?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CardSubType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for PersonalCardEntity(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalCardEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BusinessCardEntity(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BusinessCardEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Sex(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

id OUTLINED_FUNCTION_5_13()
{
  outlined copy of Data?(v1, v0);

  return SFCard.init(data:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_12_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_10()
{

  return outlined init with copy of ResourceBundle?(v0, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_18_10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 104) = v1;
  *(v2 - 96) = v3;
  return v2 - 104;
}

uint64_t OUTLINED_FUNCTION_26_5@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = a1;
  return v2 - 104;
}

uint64_t OUTLINED_FUNCTION_27_7()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_30_10(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_7()
{

  return outlined destroy of IntentApplication?(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_35_9(uint64_t a1, uint64_t a2)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;
  return v2 - 104;
}

uint64_t OUTLINED_FUNCTION_41_4()
{

  return _s10OmniSearch0B6ResultVWOhTm_2(v0, type metadata accessor for SearchResult);
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t OUTLINED_FUNCTION_53_4()
{

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_55_3()
{

  return static EntityProperty<>.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_56_5()
{

  return outlined init with copy of ResourceBundle?(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_57_4()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_60_3@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  result = *(v1 + 24);
  v4 = *(v1 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_62_5(uint64_t a1, uint64_t a2)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;
  return v2 - 96;
}

uint64_t OUTLINED_FUNCTION_73_3(uint64_t a1)
{

  return outlined destroy of IntentApplication?(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_74_5()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_76_4()
{

  return static EntityProperty<>.== infix(_:_:)();
}

BOOL OUTLINED_FUNCTION_77_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_78_3()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

void *OUTLINED_FUNCTION_79_3@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 8), (v1 + 32), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_80_4()
{

  return EntityProperty<>.init(title:)();
}

void *OUTLINED_FUNCTION_81_5(void *a1)
{

  return memcpy(a1, (v1 + 1272), 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_82_4(uint64_t a1)
{

  return outlined init with copy of ResourceBundle?(a1, v3, v1, v2);
}

id OUTLINED_FUNCTION_83_5()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

__n128 *OUTLINED_FUNCTION_88_3(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = *(v2 + 56);
  result->n128_u8[v3] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_97_2()
{

  return outlined init with copy of ResourceBundle?(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_98_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{

  return outlined copy of Data?(a11, a15);
}

uint64_t OUTLINED_FUNCTION_99_3()
{
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 272, v3);
}

void OUTLINED_FUNCTION_100_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_101_2()
{

  return type metadata accessor for LocalizedStringResource();
}

uint64_t OUTLINED_FUNCTION_102_3()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_103_3()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_104_2()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_106_2()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t static DerivedType.make(preferredType:filterType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (result)
  {
    v5 = *(result + 16);
    if (v5)
    {
      v6 = (result + 32);
      v7 = MEMORY[0x277D84F90];
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (v9 <= 0x38)
        {
          if (((1 << v8) & 0x19C860000000000) != 0)
          {
            v10 = 2;
LABEL_7:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = *(v7 + 16);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v7 = v13;
            }

            v11 = *(v7 + 16);
            if (v11 >= *(v7 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v7 = v14;
            }

            *(v7 + 16) = v11 + 1;
            *(v7 + v11 + 32) = v10;
            goto LABEL_12;
          }

          if (v8 == 2)
          {
            v10 = 1;
            goto LABEL_7;
          }

          if (v8 == 30)
          {
            v10 = 0;
            goto LABEL_7;
          }
        }

LABEL_12:
        if (!--v5)
        {
          goto LABEL_19;
        }
      }
    }

    v7 = MEMORY[0x277D84F90];
LABEL_19:
    if (*(v7 + 16))
    {
      v15 = *(v7 + 32);

      *a3 = v15;
      return result;
    }
  }

  if (!a2)
  {
    goto LABEL_39;
  }

  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = (a2 + 32);
    v18 = MEMORY[0x277D84F90];
    do
    {
      v19 = *v17++;
      if (v19 == 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = *(v18 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v18 = v22;
        }

        v20 = *(v18 + 16);
        if (v20 >= *(v18 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v18 = v23;
        }

        *(v18 + 16) = v20 + 1;
        *(v18 + v20 + 32) = 1;
      }

      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  if (!*(v18 + 16))
  {

LABEL_39:
    *a3 = 3;
    return result;
  }

  *a3 = *(v18 + 32);
}

unsigned __int8 *static DerivedType.make(preferredType:)@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 > 0x38)
  {
    goto LABEL_8;
  }

  if (((1 << v2) & 0x19C860000000000) == 0)
  {
    if (v2 == 2)
    {
      v3 = 1;
      goto LABEL_4;
    }

    if (v2 == 30)
    {
      v3 = 0;
      goto LABEL_4;
    }

LABEL_8:
    v3 = 3;
    goto LABEL_4;
  }

  v3 = 2;
LABEL_4:
  *a2 = v3;
  return result;
}

_BYTE *static DerivedType.make(filterType:)@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

Swift::Int DerivedType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DerivedType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DerivedType and conformance DerivedType()
{
  result = lazy protocol witness table cache variable for type DerivedType and conformance DerivedType;
  if (!lazy protocol witness table cache variable for type DerivedType and conformance DerivedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DerivedType and conformance DerivedType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DerivedType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized CardDisplayable.card.setter(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v1;
  *(v1 + 32) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 176), *(v1 + 184));
  *(v1 + 176) = v1;
  *(v1 + 184) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v1;
  *(v1 + 88) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 72), *(v1 + 80));
  *(v1 + 72) = v1;
  *(v1 + 80) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v1;
  *(v1 + 40) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 120), *(v1 + 128));
  *(v1 + 120) = v1;
  *(v1 + 128) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 224), *(v1 + 232));
  *(v1 + 224) = v1;
  *(v1 + 232) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 200), *(v1 + 208));
  *(v1 + 200) = v1;
  *(v1 + 208) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 136), *(v1 + 144));
  *(v1 + 136) = v1;
  *(v1 + 144) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 112), *(v1 + 120));
  *(v1 + 112) = v1;
  *(v1 + 120) = v2;
  return result;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_187_1();
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
  }

  result = outlined consume of Data?(*(v1 + 96), *(v1 + 104));
  *(v1 + 96) = v1;
  *(v1 + 104) = v2;
  return result;
}

void EventEntity.init(result:card:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v23;
  a20 = v24;
  v261 = v26;
  v262 = v25;
  v264 = v27;
  v255 = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v29 = OUTLINED_FUNCTION_114(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_2();
  v35 = OUTLINED_FUNCTION_28_2(v34);
  v36 = type metadata accessor for SearchResult(v35);
  v37 = OUTLINED_FUNCTION_17(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_36();
  v260 = v41 - v40;
  OUTLINED_FUNCTION_78_0();
  v251 = type metadata accessor for ShippingOrder();
  v42 = OUTLINED_FUNCTION_14(v251);
  v250 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v47);
  v48 = type metadata accessor for Trip();
  v49 = OUTLINED_FUNCTION_248(v48);
  v50 = OUTLINED_FUNCTION_14(v49);
  v249 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v55);
  v248 = type metadata accessor for Party();
  v56 = OUTLINED_FUNCTION_14(v248);
  v247 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v61);
  v62 = type metadata accessor for Appointment();
  v63 = OUTLINED_FUNCTION_146_1(v62);
  v64 = OUTLINED_FUNCTION_14(v63);
  v246 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v69);
  v70 = type metadata accessor for TicketedShow();
  v71 = OUTLINED_FUNCTION_114_3(v70);
  v72 = OUTLINED_FUNCTION_14(v71);
  v245 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v77);
  v78 = type metadata accessor for TicketedTransportation();
  v79 = OUTLINED_FUNCTION_176_1(v78);
  v80 = OUTLINED_FUNCTION_14(v79);
  v244 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v85);
  v243 = type metadata accessor for RentalCarReservation();
  v86 = OUTLINED_FUNCTION_14(v243);
  v242 = v87;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v91);
  v241 = type metadata accessor for RestaurantReservation();
  v92 = OUTLINED_FUNCTION_14(v241);
  v240[7] = v93;
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v97);
  v98 = type metadata accessor for HotelReservation();
  v99 = OUTLINED_FUNCTION_245_0(v98);
  v100 = OUTLINED_FUNCTION_14(v99);
  v240[3] = v101;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v105);
  v106 = type metadata accessor for FlightReservation();
  v107 = OUTLINED_FUNCTION_144_0(v106);
  v108 = OUTLINED_FUNCTION_14(v107);
  v254[0] = v109;
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_109();
  v114 = v112 - v113;
  MEMORY[0x28223BE20](v115);
  v116 = OUTLINED_FUNCTION_85_4();
  v117 = type metadata accessor for SearchResultItem(v116);
  v118 = OUTLINED_FUNCTION_17(v117);
  v120 = *(v119 + 64);
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_7_4();
  v259 = v122;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v123);
  v125 = v240 - v124;
  v126 = type metadata accessor for LocalizedStringResource();
  v127 = OUTLINED_FUNCTION_114(v126);
  v129 = *(v128 + 64);
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_208();
  v130 = type metadata accessor for EventEntity();
  v131 = OUTLINED_FUNCTION_17(v130);
  v133 = *(v132 + 64);
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_95_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_74_6();
  *v22 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_21_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v22[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_53_5();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_74_6();
  v22[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_61_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v22[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_38_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v22[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_37_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_74_6();
  v22[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v22[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_53_5();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_74_6();
  v22[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_74_6();
  v22[8] = EntityProperty<>.init(title:)();
  *(v22 + 9) = xmmword_25DBC9410;
  v263 = v130;
  v135 = v130[14];
  OUTLINED_FUNCTION_92();
  v257 = v36;
  __swift_storeEnumTagSinglePayload(v136, v137, v138, v36);
  OUTLINED_FUNCTION_44_8();
  v139 = v264;
  _s10OmniSearch0B10ResultItemOWOcTm_2(v264, v125, v140);
  OUTLINED_FUNCTION_1_28();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v145 = type metadata accessor for MobileSMSDocument();
      goto LABEL_53;
    case 2u:
      v145 = type metadata accessor for CalendarEvent();
      goto LABEL_53;
    case 3u:
      v145 = type metadata accessor for Photo();
      goto LABEL_53;
    case 4u:
      v145 = type metadata accessor for NoteDocument();
      goto LABEL_53;
    case 5u:
      v145 = type metadata accessor for Reminder();
      goto LABEL_53;
    case 6u:
      v145 = type metadata accessor for PhoneHistory();
      goto LABEL_53;
    case 7u:
      v145 = type metadata accessor for VoicemailTranscript();
      goto LABEL_53;
    case 8u:
      v145 = type metadata accessor for JournalEntry();
      goto LABEL_53;
    case 9u:
      v145 = type metadata accessor for VoiceMemo();
      goto LABEL_53;
    case 0xAu:
      v145 = type metadata accessor for Safari();
      goto LABEL_53;
    case 0xBu:
      v145 = type metadata accessor for FileDocument();
      goto LABEL_53;
    case 0xCu:
      v145 = type metadata accessor for WalletTransaction();
      goto LABEL_53;
    case 0xDu:
      v145 = type metadata accessor for WalletPass();
      goto LABEL_53;
    case 0xEu:
      v145 = type metadata accessor for Contact();
      goto LABEL_53;
    case 0xFu:
      v260 = v117;
      OUTLINED_FUNCTION_47_8(v266);
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v150();
      OUTLINED_FUNCTION_106_3();
      v151 = OUTLINED_FUNCTION_27_8();
      v152(v151);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(appointment:)();
      goto LABEL_30;
    case 0x10u:
      v260 = v117;
      v142 = *&v125[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48)];

      OUTLINED_FUNCTION_47_8(&a12);
      OUTLINED_FUNCTION_105_4();
      v143();
      OUTLINED_FUNCTION_106_3();
      v144(v114, v21, v117);
      v36 = v258;
      EventEntity.init(reservation:)();
      (*(v20 + 8))(v21, v117);
      goto LABEL_31;
    case 0x11u:
      v260 = v117;
      OUTLINED_FUNCTION_47_8(&v250);
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v153();
      OUTLINED_FUNCTION_106_3();
      v154 = OUTLINED_FUNCTION_27_8();
      v155(v154);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(reservation:)();
      goto LABEL_30;
    case 0x12u:
      v260 = v117;
      OUTLINED_FUNCTION_47_8(&v267);
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v162();
      OUTLINED_FUNCTION_106_3();
      v163 = OUTLINED_FUNCTION_27_8();
      v164(v163);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(party:)();
      goto LABEL_30;
    case 0x13u:
      v260 = v117;
      OUTLINED_FUNCTION_47_8(v254);
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v168();
      OUTLINED_FUNCTION_106_3();
      v169 = OUTLINED_FUNCTION_27_8();
      v170(v169);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(reservation:)();
      goto LABEL_30;
    case 0x14u:
      v260 = v117;
      OUTLINED_FUNCTION_47_8(&v256);
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v156();
      OUTLINED_FUNCTION_106_3();
      v157 = OUTLINED_FUNCTION_27_8();
      v158(v157);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(reservation:)();
      goto LABEL_30;
    case 0x15u:
      v260 = v117;
      OUTLINED_FUNCTION_47_8(&v271);
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v159();
      OUTLINED_FUNCTION_106_3();
      v160 = OUTLINED_FUNCTION_27_8();
      v161(v160);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(shippingOrder:)();
      goto LABEL_30;
    case 0x16u:
      v260 = v117;
      OUTLINED_FUNCTION_47_8(&v260);
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v165();
      OUTLINED_FUNCTION_106_3();
      v166 = OUTLINED_FUNCTION_27_8();
      v167(v166);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(reservation:)();
      goto LABEL_30;
    case 0x17u:
      v260 = v117;
      OUTLINED_FUNCTION_47_8(&v264);
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v171();
      OUTLINED_FUNCTION_106_3();
      v172 = OUTLINED_FUNCTION_27_8();
      v173(v172);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(reservation:)();
      goto LABEL_30;
    case 0x18u:
      v260 = v117;
      OUTLINED_FUNCTION_47_8(v269);
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_105_4();
      v147();
      OUTLINED_FUNCTION_106_3();
      v148 = OUTLINED_FUNCTION_27_8();
      v149(v148);
      OUTLINED_FUNCTION_28_8();
      EventEntity.init(trip:)();
LABEL_30:
      (*(v20 + 8))(v21, v117);
LABEL_31:
      v175 = v261;
      v174 = v262;
      v176 = v263;
      OUTLINED_FUNCTION_7_13();
      _s10OmniSearch0B10ResultItemOWOhTm_3(v22, v177);
      outlined init with take of EventEntity(v36, v22);
      if (v174)
      {
        v178 = v174;
        v179 = SFCard.data.getter();
        v181 = v180;
      }

      else
      {
        v179 = 0;
        v181 = 0xF000000000000000;
      }

      outlined consume of Data?(v22[9], v22[10]);
      v22[9] = v179;
      v22[10] = v181;
      EventEntity.representedEntity.getter();
      if (!v266[1])
      {
        OUTLINED_FUNCTION_116_2();

        OUTLINED_FUNCTION_7_13();
        _s10OmniSearch0B10ResultItemOWOhTm_3(v22, v195);
        outlined destroy of EagerResolutionService?(&v265, &_s10AppIntents0A6Entity_10OmniSearch15CardDisplayableAC22SpotlightItemProvidingpSgMd, &_s10AppIntents0A6Entity_10OmniSearch15CardDisplayableAC22SpotlightItemProvidingpSgMR);
        v196 = 1;
        goto LABEL_72;
      }

      outlined init with take of AppEntity & CardDisplayable & SpotlightItemProviding(&v265, v268);
      v182 = v269[2];
      v183 = __swift_mutable_project_boxed_opaque_existential_1(v268, v269[0]);
      v184 = *(*(v182 + 16) + 16);
      v263 = v174;
      OUTLINED_FUNCTION_86_4();
      v184();
      OUTLINED_FUNCTION_44_8();
      OUTLINED_FUNCTION_131_2(&a14);
      _s10OmniSearch0B10ResultItemOWOcTm_2(v185, v186, v187);
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        _s10OmniSearch0B10ResultItemOWOhTm_3(v183, type metadata accessor for SearchResultItem);
        v193 = v255;
        if (v174)
        {
          v197 = outlined bridged method (ob) of @objc SFCard.cardSections.getter(v263);
          v198 = v253;
          if (v197)
          {
            v199 = v197;
            specialized Array.count.getter(v197);
            OUTLINED_FUNCTION_244_0();
            if (v200)
            {
              specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v199 & 0xC000000000000001) == 0, v199);
              if ((v199 & 0xC000000000000001) != 0)
              {
                v201 = MEMORY[0x25F89FFD0](0, v199);
              }

              else
              {
                v201 = *(v199 + 32);
              }

              v202 = v201;

              v203 = [v202 command];

              if (v203)
              {
                SFCommand.asIntentFile()();
                if (!v193)
                {

                  v207 = 0;
                  goto LABEL_63;
                }

                v193 = 0;
              }
            }

            else
            {
            }

            v207 = 1;
          }

          else
          {
            v207 = 1;
            OUTLINED_FUNCTION_244_0();
          }
        }

        else
        {
          v207 = 1;
          OUTLINED_FUNCTION_244_0();
          v198 = v253;
        }

LABEL_63:
        v204 = type metadata accessor for IntentFile();
        v205 = v198;
        v206 = v207;
        goto LABEL_64;
      }

      v188 = *(v183 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48));

      (*(v254[0] + 8))(v183, v254[1]);
      type metadata accessor for DefaultSpotlightCardBuilder();
      v189 = *(v257 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v190 = CodableNSSecureCoding.wrappedValue.getter();
      v191 = static DefaultSpotlightCardBuilder.buildCommand(item:)(v190);

      v192 = v252;
      v193 = v255;
      SFCommand.asIntentFile()();
      OUTLINED_FUNCTION_244_0();
      if (v193)
      {

        v193 = 0;
        v194 = 1;
      }

      else
      {
        v194 = 0;
      }

      v204 = type metadata accessor for IntentFile();
      v205 = v192;
      v206 = v194;
LABEL_64:
      __swift_storeEnumTagSinglePayload(v205, v206, 1, v204);
      v220 = v270;
      __swift_mutable_project_boxed_opaque_existential_1(v268, v269[0]);
      v221 = *(v220 + 40);
      OUTLINED_FUNCTION_53_1();
      v222();
      v223 = *(v257 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v224 = CodableNSSecureCoding.wrappedValue.getter();
      CSSearchableItem.asIntentFile()();
      if (v193)
      {

        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_35_0();
        }

        v225 = type metadata accessor for Logger();
        __swift_project_value_buffer(v225, static Logging.search);
        v226 = v193;
        v227 = Logger.logObject.getter();
        v228 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v227, v228))
        {
          v229 = swift_slowAlloc();
          v230 = swift_slowAlloc();
          *v229 = 138412290;
          v231 = v193;
          v232 = _swift_stdlib_bridgeErrorToNSError();
          *(v229 + 4) = v232;
          *v230 = v232;
          _os_log_impl(&dword_25D85C000, v227, v228, "Unable to encode CSSI for Event document: %@", v229, 0xCu);
          outlined destroy of EagerResolutionService?(v230, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {
        }
      }

      else
      {

        type metadata accessor for IntentFile();
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v233, v234, v235, v236);
        v237 = v270;
        __swift_mutable_project_boxed_opaque_existential_1(v268, v269[0]);
        v238 = *(v237 + 16);
        OUTLINED_FUNCTION_86_4();
        v239();
      }

      OUTLINED_FUNCTION_116_2();
      __swift_destroy_boxed_opaque_existential_1Tm(v268);
      outlined init with take of EventEntity(v22, v175);
      v196 = 0;
LABEL_72:
      __swift_storeEnumTagSinglePayload(v175, v196, 1, v176);
      OUTLINED_FUNCTION_148();
      return;
    case 0x19u:
      v146 = *&v125[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR) + 48)];

      v141 = type metadata accessor for GlobalItem;
      goto LABEL_51;
    case 0x1Au:
    case 0x1Bu:
      v141 = type metadata accessor for SearchResultItem;
      goto LABEL_51;
    case 0x1Cu:
      v141 = type metadata accessor for Answer;
LABEL_51:
      _s10OmniSearch0B10ResultItemOWOhTm_3(v125, v141);
      goto LABEL_54;
    case 0x1Du:
      v145 = type metadata accessor for OnScreen();
      goto LABEL_53;
    case 0x1Eu:
      v145 = type metadata accessor for GenericSpotlightItem();
      goto LABEL_53;
    default:
      v145 = type metadata accessor for EmailDocument();
LABEL_53:
      OUTLINED_FUNCTION_2(v145);
      (*(v208 + 8))(v125);
LABEL_54:
      v209 = v260;
      v175 = v261;
      v210 = v139;
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0();
      }

      v211 = type metadata accessor for Logger();
      __swift_project_value_buffer(v211, static Logging.search);
      _s10OmniSearch0B10ResultItemOWOcTm_2(v139, v209, type metadata accessor for SearchResult);
      v212 = Logger.logObject.getter();
      v213 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v212, v213))
      {
        v214 = swift_slowAlloc();
        v215 = swift_slowAlloc();
        v268[0] = v215;
        *v214 = 136642819;
        OUTLINED_FUNCTION_44_8();
        _s10OmniSearch0B10ResultItemOWOcTm_2(v209, v259, v216);
        String.init<A>(describing:)();
        _s10OmniSearch0B10ResultItemOWOhTm_3(v209, type metadata accessor for SearchResult);
        v217 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v214 + 4) = v217;
        _os_log_impl(&dword_25D85C000, v212, v213, "Unhandled event type: %{sensitive}s - dropping", v214, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v215);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();

        v218 = v210;
      }

      else
      {

        _s10OmniSearch0B10ResultItemOWOhTm_3(v139, type metadata accessor for SearchResult);
        v218 = v209;
      }

      _s10OmniSearch0B10ResultItemOWOhTm_3(v218, type metadata accessor for SearchResult);
      OUTLINED_FUNCTION_7_13();
      _s10OmniSearch0B10ResultItemOWOhTm_3(v22, v219);
      v196 = 1;
      v176 = v263;
      goto LABEL_72;
  }
}

void EventEntity.init(reservation:)()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_98_4(v1);
  v2 = type metadata accessor for FlightReservation();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_113_3();
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = OUTLINED_FUNCTION_114(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_208();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_74_6();
  *v0 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_21_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v0[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_53_5();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_74_6();
  v0[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_61_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v0[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_38_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v0[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_37_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_74_6();
  v0[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v0[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_53_5();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_74_6();
  v0[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_74_6();
  v0[8] = EntityProperty<>.init(title:)();
  v12 = OUTLINED_FUNCTION_220_0(xmmword_25DBC9410);
  OUTLINED_FUNCTION_202_1(v12);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v23[0] = 0;
  EntityProperty.wrappedValue.setter();
  v17 = OUTLINED_FUNCTION_29_7();
  v18(v17);
  FlightReservationEntity.init(reservation:)();
  _s10OmniSearch11GeoLocationVSgWOi_(v23);
  memcpy(v22, v23, sizeof(v22));
  EntityProperty.wrappedValue.setter();
  v19 = *(v5 + 8);
  v20 = OUTLINED_FUNCTION_34_11();
  v21(v20);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_98_4(v1);
  v2 = type metadata accessor for HotelReservation();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_113_3();
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = OUTLINED_FUNCTION_114(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_233_0();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_67_4();
  v12 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_207_0(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_21_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_67_4();
  v0[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_38_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_37_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_67_4();
  v0[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_67_4();
  v0[8] = EntityProperty<>.init(title:)();
  v13 = OUTLINED_FUNCTION_220_0(xmmword_25DBC9410);
  OUTLINED_FUNCTION_202_1(v13);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v24[0] = 2;
  EntityProperty.wrappedValue.setter();
  v18 = OUTLINED_FUNCTION_29_7();
  v19(v18);
  HotelReservationEntity.init(reservation:)();
  _s10OmniSearch11GeoLocationVSgWOi_(v24);
  memcpy(v23, v24, sizeof(v23));
  OUTLINED_FUNCTION_262();
  v20 = *(v5 + 8);
  v21 = OUTLINED_FUNCTION_34_11();
  v22(v21);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_98_4(v1);
  v2 = type metadata accessor for RestaurantReservation();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_113_3();
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = OUTLINED_FUNCTION_114(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_233_0();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_67_4();
  v15 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_207_0(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_21_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_67_4();
  v0[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_38_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_37_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_67_4();
  v0[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_67_4();
  v0[8] = EntityProperty<>.init(title:)();
  v16 = OUTLINED_FUNCTION_220_0(xmmword_25DBC9410);
  OUTLINED_FUNCTION_202_1(v16);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v35[0] = 1;
  EntityProperty.wrappedValue.setter();
  v21 = OUTLINED_FUNCTION_29_7();
  v22(v21);
  RestaurantReservationEntity.init(reservation:)(v10, v23, v24, v25, v26, v27, v28, v29, v33, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10]);
  _s10OmniSearch11GeoLocationVSgWOi_(v35);
  memcpy(v34, v35, sizeof(v34));
  OUTLINED_FUNCTION_262();
  v30 = *(v5 + 8);
  v31 = OUTLINED_FUNCTION_34_11();
  v32(v31);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_98_4(v1);
  v2 = type metadata accessor for RentalCarReservation();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_113_3();
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = OUTLINED_FUNCTION_114(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_233_0();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_67_4();
  v15 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_207_0(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_21_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_67_4();
  v0[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_38_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_37_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_67_4();
  v0[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_67_4();
  v0[8] = EntityProperty<>.init(title:)();
  v16 = OUTLINED_FUNCTION_220_0(xmmword_25DBC9410);
  OUTLINED_FUNCTION_202_1(v16);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v35[0] = 3;
  EntityProperty.wrappedValue.setter();
  v21 = OUTLINED_FUNCTION_29_7();
  v22(v21);
  VehicleReservationEntity.init(reservation:)(v10, v23, v24, v25, v26, v27, v28, v29, v33, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10]);
  _s10OmniSearch11GeoLocationVSgWOi_(v35);
  memcpy(v34, v35, sizeof(v34));
  OUTLINED_FUNCTION_262();
  v30 = *(v5 + 8);
  v31 = OUTLINED_FUNCTION_34_11();
  v32(v31);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for TicketedTransportation();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v12 = v11 - v10;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = OUTLINED_FUNCTION_114(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_215();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_121_2();
  *v3 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 16) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 24) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 32) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 40) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 48) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_121_2();
  *(v3 + 64) = EntityProperty<>.init(title:)();
  *(v3 + 72) = xmmword_25DBC9410;
  v17 = type metadata accessor for EventEntity();
  OUTLINED_FUNCTION_202_1(v17);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  LOBYTE(v32) = 5;
  EntityProperty.wrappedValue.setter();
  v22 = *(v7 + 16);
  v23 = OUTLINED_FUNCTION_1_28();
  v24(v23);
  TicketedTransportationEntity.init(reservation:)(v12, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
  EntityProperty.wrappedValue.setter();
  (*(v7 + 8))(v1, v4);
  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_98_4(v1);
  v2 = type metadata accessor for TicketedShow();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_113_3();
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = OUTLINED_FUNCTION_114(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_233_0();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_67_4();
  v15 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_207_0(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_21_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_67_4();
  v0[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_38_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_37_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v0[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_67_4();
  v0[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_67_4();
  v0[8] = EntityProperty<>.init(title:)();
  v16 = OUTLINED_FUNCTION_220_0(xmmword_25DBC9410);
  OUTLINED_FUNCTION_202_1(v16);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v35[0] = 6;
  EntityProperty.wrappedValue.setter();
  v21 = OUTLINED_FUNCTION_29_7();
  v22(v21);
  TicketedShowEntity.init(reservation:)(v10, v23, v24, v25, v26, v27, v28, v29, v33, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10]);
  _s10OmniSearch11GeoLocationVSgWOi_(v35);
  memcpy(v34, v35, sizeof(v34));
  OUTLINED_FUNCTION_262();
  v30 = *(v5 + 8);
  v31 = OUTLINED_FUNCTION_34_11();
  v32(v31);
  OUTLINED_FUNCTION_148();
}

void EventEntity.init(appointment:)()
{
  EventEntity.init(appointment:)();
}

{
  OUTLINED_FUNCTION_155();
  v27[1] = v0;
  v28 = v1;
  v3 = v2;
  v5 = v4(0);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = OUTLINED_FUNCTION_114(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_208();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_74_6();
  *v3 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_21_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_53_5();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 16) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_61_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 24) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_38_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 32) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_37_8();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 40) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 48) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_53_5();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_74_6();
  *(v3 + 64) = EntityProperty<>.init(title:)();
  *(v3 + 72) = xmmword_25DBC9410;
  v17 = type metadata accessor for EventEntity();
  OUTLINED_FUNCTION_202_1(v17);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  LOBYTE(v30[0]) = 7;
  EntityProperty.wrappedValue.setter();
  v22 = *(v7 + 16);
  OUTLINED_FUNCTION_86_4();
  v23();
  v28(v30, v12);
  _s10OmniSearch11GeoLocationVSgWOi_(v30);
  memcpy(v29, v30, sizeof(v29));
  EntityProperty.wrappedValue.setter();
  v24 = *(v7 + 8);
  v25 = OUTLINED_FUNCTION_34_11();
  v26(v25);
  OUTLINED_FUNCTION_148();
}

void EventEntity.init(shippingOrder:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = type metadata accessor for ShippingOrder();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_113_3();
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = OUTLINED_FUNCTION_114(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_233_0();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_67_4();
  v12 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_207_0(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v1[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_67_4();
  v1[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v1[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v1[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_67_4();
  v1[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_67_4();
  v1[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_40_9();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_67_4();
  v1[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_67_4();
  v1[8] = EntityProperty<>.init(title:)();
  v13 = OUTLINED_FUNCTION_220_0(xmmword_25DBC9410);
  OUTLINED_FUNCTION_202_1(v13);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v24[0] = 4;
  EntityProperty.wrappedValue.setter();
  v18 = *(v5 + 16);
  OUTLINED_FUNCTION_86_4();
  v19();
  ShippingOrderEntity.init(shippingOrder:)();
  _s10OmniSearch11GeoLocationVSgWOi_(v24);
  memcpy(v23, v24, sizeof(v23));
  EntityProperty.wrappedValue.setter();
  v20 = *(v5 + 8);
  v21 = OUTLINED_FUNCTION_34_11();
  v22(v21);
  OUTLINED_FUNCTION_148();
}

void FlightReservationEntity.init(reservation:)()
{
  OUTLINED_FUNCTION_155();
  v302 = v0;
  v237 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_49_3();
  v208[2] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v8 = OUTLINED_FUNCTION_114(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39_0();
  v208[1] = v11;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_2();
  v273 = v13;
  OUTLINED_FUNCTION_78_0();
  v301 = type metadata accessor for Calendar();
  v14 = OUTLINED_FUNCTION_14(v301);
  v280 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v276 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents20IntentCurrencyAmountVSgMd, &_s10AppIntents20IntentCurrencyAmountVSgMR);
  v21 = OUTLINED_FUNCTION_114(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_39_0();
  v275 = v24;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_4();
  v274 = v26;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_2();
  v303 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v30 = OUTLINED_FUNCTION_114(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_39_0();
  v272 = v33;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_4();
  v271 = v35;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_14_2();
  v305 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v39 = OUTLINED_FUNCTION_114(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_39_0();
  v278 = v42;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_4();
  v279 = v44;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_2();
  v304 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
  v48 = OUTLINED_FUNCTION_114(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_39_0();
  v299 = v51;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_4();
  v298 = v53;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_4();
  v292 = v55;
  OUTLINED_FUNCTION_174();
  v57 = MEMORY[0x28223BE20](v56);
  v59 = v208 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = v208 - v60;
  v307 = type metadata accessor for DateComponents();
  v62 = OUTLINED_FUNCTION_14(v307);
  v308 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_39_0();
  v306 = v66;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_7_4();
  v300 = v68;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_7_4();
  v309 = v70;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v71);
  v73 = v208 - v72;
  v74 = type metadata accessor for LocalizedStringResource();
  v75 = OUTLINED_FUNCTION_114(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_22_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v236 = OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_118_2();
  LocalizedStringResource.init(stringLiteral:)();
  v235 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_164_0();
  LocalizedStringResource.init(stringLiteral:)();
  v297 = 0x6E20746867696C46;
  v234 = EntityProperty<>.init(title:)();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  v296 = "Shipping Order Entity";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v233 = EntityProperty<>.init(title:)();
  v295 = "Boarding Date Time";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v232 = OUTLINED_FUNCTION_200_0();
  v294 = "Departure Airport Code";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v231 = EntityProperty<>.init(title:)();
  v293 = "Departure Airport Name";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v230 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_82_5();
  LocalizedStringResource.init(stringLiteral:)();
  v229 = EntityProperty<>.init(title:)();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMR);
  v291 = "Departure Terminal";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v228 = EntityProperty<>.init(title:)();
  v290 = "Departure Date Time";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v227 = OUTLINED_FUNCTION_200_0();
  v289 = "Arrival Airport Code";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v226 = EntityProperty<>.init(title:)();
  v287 = "Arrival Airport Name";
  OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_57_4();
  v225 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_81_6();
  LocalizedStringResource.init(stringLiteral:)();
  v224 = EntityProperty<>.init(title:)();
  v285 = "Arrival Terminal";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v223 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  v288 = v79;
  v222 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_48_4();
  v221 = EntityProperty<>.init(title:)();
  v80 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_39_8(v80 & 0xFFFF0000FFFFFFFFLL | 0x4E2000000000);
  LocalizedStringResource.init(stringLiteral:)();
  v286 = v79;
  v220 = EntityProperty<>.init(title:)();
  v284 = "Arrival Date Time";
  OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_57_4();
  v219 = OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_185_0();
  v218 = EntityProperty<>.init(title:)();
  v283 = "Booking Provider";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v217 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_183_0();
  v282 = v79;
  v216 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_97_3(0x206C61746F54);
  LocalizedStringResource.init(stringLiteral:)();
  v281 = v78;
  v215 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA20IntentCurrencyAmountVSgGMd, &_s10AppIntents14EntityPropertyCyAA20IntentCurrencyAmountVSgGMR);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_88_4();
  v266 = v78;
  v214 = EntityProperty<>.init(title:)();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  v265 = "Member ID Number";
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v213 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v277 = v81;
  v212 = EntityProperty<>.init(title:)();
  v82 = FlightReservation.flightArrivalAirportCode.getter();
  v261 = v83;
  v262 = v82;
  v84 = FlightReservation.flightArrivalAirportName.getter();
  v263 = v85;
  v264 = v84;
  v310 = v73;
  FlightReservation.flightArrivalDateComponents.getter();
  FlightReservation.leg.getter(v61);
  v86 = type metadata accessor for FlightSnippet.Leg(0);
  OUTLINED_FUNCTION_109_3(v61);
  if (v87)
  {
    outlined destroy of EagerResolutionService?(v61, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v259 = 0;
    v260 = 0;
  }

  else
  {
    v88 = (*&v61[*(v86 + 20)] + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalGate);
    OUTLINED_FUNCTION_89_0();
    v89 = *v88;
    v259 = v88[1];
    v260 = v89;

    OUTLINED_FUNCTION_6_8();
    _s10OmniSearch0B10ResultItemOWOhTm_3(v61, v90);
  }

  FlightReservation.leg.getter(v59);
  OUTLINED_FUNCTION_109_3(v59);
  v91 = v298;
  v92 = v292;
  if (v87)
  {
    outlined destroy of EagerResolutionService?(v59, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v246 = 0;
    v243 = 0;
  }

  else
  {
    v93 = (*&v59[*(v86 + 20)] + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalTerminal);
    OUTLINED_FUNCTION_89_0();
    v94 = v93[1];
    v246 = *v93;
    v243 = v94;

    OUTLINED_FUNCTION_6_8();
    _s10OmniSearch0B10ResultItemOWOhTm_3(v59, v95);
  }

  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v307);
  v99 = FlightReservation.flightBookingProvider.getter();
  v244 = v100;
  v245 = v99;
  v101 = FlightReservation.flightCarrier.getter();
  v247 = v102;
  v248 = v101;
  FlightReservation.flightCheckInUrl.getter();
  v103 = FlightReservation.flightConfirmationNumber.getter();
  v253 = v104;
  v254 = v103;
  v105 = FlightReservation.flightDepartureAirportCode.getter();
  v255 = v106;
  v256 = v105;
  v107 = FlightReservation.flightDepartureAirportName.getter();
  v257 = v108;
  v258 = v107;
  FlightReservation.flightDepartureDateComponents.getter();
  FlightReservation.leg.getter(v92);
  OUTLINED_FUNCTION_109_3(v92);
  v109 = v299;
  if (v87)
  {
    outlined destroy of EagerResolutionService?(v92, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v252 = 0;
    v249 = 0;
  }

  else
  {
    v110 = *(v92 + *(v86 + 20));
    OUTLINED_FUNCTION_89_0();
    v111 = *(v110 + 88);
    v252 = *(v110 + 80);
    v249 = v111;

    OUTLINED_FUNCTION_6_8();
    _s10OmniSearch0B10ResultItemOWOhTm_3(v92, v112);
  }

  FlightReservation.leg.getter(v91);
  OUTLINED_FUNCTION_109_3(v91);
  if (v87)
  {
    outlined destroy of EagerResolutionService?(v91, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v240 = 0;
    v241 = 0;
  }

  else
  {
    v113 = *(v91 + *(v86 + 20));
    OUTLINED_FUNCTION_89_0();
    v114 = *(v113 + 64);
    v240 = *(v113 + 72);
    v241 = v114;

    OUTLINED_FUNCTION_6_8();
    _s10OmniSearch0B10ResultItemOWOhTm_3(v91, v115);
  }

  v116 = FlightReservation.flightDesignator.getter();
  v238 = v117;
  v239 = v116;
  v118 = ShippingOrder.eventType.getter();
  v267 = v119;
  v268 = v118;
  v269 = FlightReservation.flightPassengerNames.getter();
  v270 = FlightReservation.flightPassengerSeatNumbers.getter();
  FlightReservation.leg.getter(v109);
  OUTLINED_FUNCTION_109_3(v109);
  if (v87)
  {
    outlined destroy of EagerResolutionService?(v109, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v121 = 0;
    v122 = 1;
  }

  else
  {
    v120 = *(v109 + *(v86 + 20));
    OUTLINED_FUNCTION_89_0();
    v121 = *(v120 + 16);
    v122 = *(v120 + 24);
    OUTLINED_FUNCTION_6_8();
    _s10OmniSearch0B10ResultItemOWOhTm_3(v109, v123);
  }

  v311 = v121;
  LOBYTE(v312) = v122;
  v124 = String.init<A>(describing:)();
  v250 = v125;
  v251 = v124;
  FlightReservation.flightCostAmount.getter();
  if ((v126 & 0x100000000) != 0 || (FlightReservation.flightCostCurrency.getter(), !v127))
  {
    v128 = 1;
  }

  else
  {
    IntentCurrencyAmount.init(amount:currencyCode:)();
    v128 = 0;
  }

  v129 = type metadata accessor for IntentCurrencyAmount();
  __swift_storeEnumTagSinglePayload(v303, v128, 1, v129);
  *&v208[0] = FlightReservation.flightDuration.getter();
  v242 = v130;
  LocalizedStringResource.init(stringLiteral:)();
  v299 = OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_118_2();
  LocalizedStringResource.init(stringLiteral:)();
  v298 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  v297 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v296 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v295 = OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v294 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v293 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_82_5();
  LocalizedStringResource.init(stringLiteral:)();
  v292 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v291 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v131 = OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v132 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_57_4();
  v290 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_81_6();
  LocalizedStringResource.init(stringLiteral:)();
  v289 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v133 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  v288 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_48_4();
  v287 = EntityProperty<>.init(title:)();
  v134 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_39_8(v134 & 0xFFFF0000FFFFFFFFLL | 0x4E2000000000);
  LocalizedStringResource.init(stringLiteral:)();
  v286 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_57_4();
  v285 = OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_185_0();
  v284 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v283 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_183_0();
  v282 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_97_3(0x206C61746F54);
  LocalizedStringResource.init(stringLiteral:)();
  v211 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_88_4();
  v281 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v210 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v209 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_41_5(v261);
  v265 = v131;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_41_5(v263);
  v264 = v132;
  EntityProperty.wrappedValue.setter();
  v135 = v308;
  v136 = *(v308 + 16);
  v266 = v308 + 16;
  v137 = v300;
  v138 = v307;
  v136(v300, v310, v307);
  v139 = OUTLINED_FUNCTION_196_1();
  (v136)(v139);
  v263 = v133;
  EntityProperty.wrappedValue.setter();
  v277 = *(v135 + 8);
  v277(v137, v138);
  OUTLINED_FUNCTION_41_5(v259);
  EntityProperty.wrappedValue.setter();
  v311 = v246;
  v312 = v243;
  EntityProperty.wrappedValue.setter();
  v140 = v279;
  OUTLINED_FUNCTION_179_1();
  outlined init with copy of Date?(v141, v142, v143, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_177_1(v140);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_263(v140);
  OUTLINED_FUNCTION_41_5(v244);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_41_5(v247);
  EntityProperty.wrappedValue.setter();
  v144 = v271;
  OUTLINED_FUNCTION_179_1();
  outlined init with copy of Date?(v145, v146, v147, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_177_1(v144);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_263(v144);
  OUTLINED_FUNCTION_41_5(v253);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_41_5(v255);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_41_5(v257);
  EntityProperty.wrappedValue.setter();
  v136(v137, v309, v138);
  v148 = OUTLINED_FUNCTION_196_1();
  v272 = v136;
  (v136)(v148);
  v149 = v277;
  EntityProperty.wrappedValue.setter();
  v308 = v135 + 8;
  v149(v137, v138);
  v311 = v252;
  v312 = v249;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_41_5(v240);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_41_5(v238);
  EntityProperty.wrappedValue.setter();
  v150 = v273;
  DateComponents.calendar.getter();
  v151 = v301;
  if (__swift_getEnumTagSinglePayload(v150, 1, v301) == 1)
  {
    v152 = v276;
    static Calendar.current.getter();
    if (__swift_getEnumTagSinglePayload(v150, 1, v151) != 1)
    {
      outlined destroy of EagerResolutionService?(v150, &_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
    }
  }

  else
  {
    v152 = v276;
    (*(v280 + 32))(v276, v150, v151);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
  v153 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_14(v153);
  v155 = v154;
  v157 = *(v156 + 72);
  v158 = (*(v154 + 80) + 32) & ~*(v154 + 80);
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_25DBC8930;
  v160 = v159 + v158;
  v161 = *(v155 + 104);
  v161(v160, *MEMORY[0x277CC9968], v153);
  v161(v160 + v157, *MEMORY[0x277CC9980], v153);
  v161(v160 + 2 * v157, *MEMORY[0x277CC99A0], v153);
  v161(v160 + 3 * v157, *MEMORY[0x277CC99A8], v153);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5();
  v162 = v300;
  Calendar.dateComponents(_:from:to:)();

  v163 = OUTLINED_FUNCTION_196_1();
  v164 = v307;
  v272(v163);
  EntityProperty.wrappedValue.setter();
  v149(v162, v164);
  OUTLINED_FUNCTION_41_5(v267);
  EntityProperty.wrappedValue.setter();
  v311 = v269;
  EntityProperty.wrappedValue.setter();
  v311 = v270;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_41_5(v250);
  EntityProperty.wrappedValue.setter();
  v165 = v303;
  v166 = v274;
  outlined init with copy of Date?(v303, v274, &_s10AppIntents20IntentCurrencyAmountVSgMd, &_s10AppIntents20IntentCurrencyAmountVSgMR);
  OUTLINED_FUNCTION_177_1(v166);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_263(v166);
  if (v242)
  {
    v167 = type metadata accessor for FlightReservation();
    OUTLINED_FUNCTION_2(v167);
    (*(v168 + 8))(v302);
    (*(v280 + 8))(v152, v301);
    outlined destroy of EagerResolutionService?(v165, &_s10AppIntents20IntentCurrencyAmountVSgMd, &_s10AppIntents20IntentCurrencyAmountVSgMR);
    v149(v309, v164);
    outlined destroy of EagerResolutionService?(v305, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of EagerResolutionService?(v304, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v149(v310, v164);
    OUTLINED_FUNCTION_70_5();
    v313 = xmmword_25DBC9410;
    outlined destroy of FlightReservationEntity(&v311);
    v169 = v211;
LABEL_31:
    v194 = v237;
    v195 = v298;
    *v237 = v299;
    v194[1] = v195;
    v196 = v296;
    v194[2] = v297;
    v194[3] = v196;
    v197 = v294;
    v194[4] = v295;
    v194[5] = v197;
    v198 = v292;
    v194[6] = v293;
    v194[7] = v198;
    v199 = v264;
    v200 = v265;
    v194[8] = v291;
    v194[9] = v200;
    v194[10] = v199;
    v201 = v289;
    v194[11] = v290;
    v194[12] = v201;
    v202 = v288;
    v194[13] = v263;
    v194[14] = v202;
    v203 = v286;
    v194[15] = v287;
    v194[16] = v203;
    v204 = v284;
    v194[17] = v285;
    v194[18] = v204;
    v205 = v282;
    v194[19] = v283;
    v194[20] = v205;
    v206 = v281;
    v194[21] = v169;
    v194[22] = v206;
    v207 = v209;
    v194[23] = v210;
    v194[24] = v207;
    *(v194 + 25) = xmmword_25DBC9410;
    OUTLINED_FUNCTION_148();
    return;
  }

  OUTLINED_FUNCTION_92();
  v170 = v301;
  OUTLINED_FUNCTION_237_0(v171, v172, v173, v301);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v174, v175, v176, v177);
  v178 = v302;
  if ((~*&v208[0] & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v208[0] <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_75_3();
  if (v179)
  {
    OUTLINED_FUNCTION_1_30();
    v180 = v279;
    OUTLINED_FUNCTION_43_7();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v181, v182, v183, v164);
    outlined init with copy of Date?(v180, v278, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v184 = v211;
    EntityProperty.wrappedValue.setter();
    v185 = type metadata accessor for FlightReservation();
    OUTLINED_FUNCTION_2(v185);
    (*(v186 + 8))(v178);
    v169 = v184;
    OUTLINED_FUNCTION_104_3();
    outlined destroy of EagerResolutionService?(v187, v188, v189);
    (*(v280 + 8))(v152, v170);
    outlined destroy of EagerResolutionService?(v303, &_s10AppIntents20IntentCurrencyAmountVSgMd, &_s10AppIntents20IntentCurrencyAmountVSgMR);
    v190 = v277;
    v277(v309, v164);
    outlined destroy of EagerResolutionService?(v305, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_104_3();
    outlined destroy of EagerResolutionService?(v191, v192, v193);
    v190(v310, v164);
    OUTLINED_FUNCTION_70_5();
    v313 = xmmword_25DBC9410;
    outlined destroy of FlightReservationEntity(&v311);
    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
}

void HotelReservationEntity.init(reservation:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v67 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_49_3();
  v66 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v10 = OUTLINED_FUNCTION_114(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_109();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_85_4();
  v17 = type metadata accessor for LocalizedStringResource();
  v18 = OUTLINED_FUNCTION_114(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_255_0();
  LocalizedStringResource.init(stringLiteral:)();
  v65 = OUTLINED_FUNCTION_264();
  LocalizedStringResource.init(stringLiteral:)();
  v64 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_10_12();
  LocalizedStringResource.init(stringLiteral:)();
  v63 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_223_0();
  v62 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_223_0();
  v61 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMR);
  v21 = OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_97_3(v21);
  LocalizedStringResource.init(stringLiteral:)();
  v60 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_195_1();
  LocalizedStringResource.init(stringLiteral:)();
  v59 = OUTLINED_FUNCTION_264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiSgGMd, &_s10AppIntents14EntityPropertyCySiSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v58 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  v56 = OUTLINED_FUNCTION_264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_39_8(0x4E206D6F6F52);
  LocalizedStringResource.init(stringLiteral:)();
  v54 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v52 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_54_6();
  LocalizedStringResource.init(stringLiteral:)();
  v50 = OUTLINED_FUNCTION_264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_52_5();
  LocalizedStringResource.init(stringLiteral:)();
  v48 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v46 = EntityProperty<>.init(title:)();
  v22 = ShippingOrder.eventType.getter();
  v44 = v23;
  v45 = v22;
  v24 = HotelReservation.hotelUnderName.getter();
  v42 = v25;
  v43 = v24;
  v26 = HotelReservation.hotelReservationForName.getter();
  v40 = v27;
  v41 = v26;
  v28 = HotelReservation.hotelReservationForAddress.getter();
  v30 = v29;
  HotelReservation.hotelCheckinDateComponents.getter();
  HotelReservation.hotelCheckoutDateComponents.getter();
  v31 = HotelReservation.hotelReservationForTelephone.getter();
  v33 = v32;
  HotelReservation.hotelModifyReservationUrl.getter();
  URL.init(string:)();

  HotelReservationEntity.init(confirmationNumber:guest:bookingProvider:businessName:roomNumbers:address:checkInDateTime:checkOutDateTime:phoneNumber:url:)(v45, v44, v43, v42, 0, 0, v41, v40, MEMORY[0x277D84F90], v28, v30, v0, v15, v31, v33, v66, v40, v41, v42, v43, v44, v45, v46, v48, v50, v52, v54, v56);
  v34 = type metadata accessor for HotelReservation();
  OUTLINED_FUNCTION_2(v34);
  (*(v35 + 8))(v2);
  v68[0] = v65;
  v68[1] = v64;
  v68[2] = v63;
  v68[3] = v62;
  v68[4] = v61;
  v68[5] = v60;
  v68[6] = v59;
  v68[7] = v58;
  v68[8] = v57;
  v68[9] = v55;
  v68[10] = v53;
  v68[11] = v51;
  v68[12] = v49;
  v68[13] = v47;
  v69 = xmmword_25DBC9410;
  outlined destroy of HotelReservationEntity(v68);
  v36 = v71;
  *v67 = v70;
  v67[1] = v36;
  v37 = v73;
  v67[2] = v72;
  v67[3] = v37;
  v38 = v75;
  v67[4] = v74;
  v67[5] = v38;
  v39 = v77;
  v67[6] = v76;
  v67[7] = v39;
  OUTLINED_FUNCTION_148();
}

void RestaurantReservationEntity.init(reservation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v140 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v26 = OUTLINED_FUNCTION_114(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v31);
  v32 = type metadata accessor for LocalizedStringResource();
  v33 = OUTLINED_FUNCTION_114(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_22_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v36 = OUTLINED_FUNCTION_189_1();
  OUTLINED_FUNCTION_163_0(v36);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v37 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_159_1(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  OUTLINED_FUNCTION_164_0();
  LocalizedStringResource.init(stringLiteral:)();
  v38 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_144_0(v38);
  OUTLINED_FUNCTION_57_4();
  v39 = OUTLINED_FUNCTION_189_1();
  OUTLINED_FUNCTION_102_4(v39, &a12);
  LocalizedStringResource.init(stringLiteral:)();
  v40 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_102_4(v40, &a11);
  LocalizedStringResource.init(stringLiteral:)();
  v136 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiSgGMd, &_s10AppIntents14EntityPropertyCySiSgGMR);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198_0();
  v41 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_102_4(v41, &v155);
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  v135[0] = OUTLINED_FUNCTION_189_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_3_19();
  LocalizedStringResource.init(stringLiteral:)();
  v134 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v42 = OUTLINED_FUNCTION_189_1();
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  v43 = EntityProperty<>.init(title:)();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  v45 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v46 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_195_1();
  LocalizedStringResource.init(stringLiteral:)();
  v131[0] = OUTLINED_FUNCTION_189_1();
  v47 = ShippingOrder.eventType.getter();
  OUTLINED_FUNCTION_155_1(v47);
  HotelReservation.hotelUnderName.getter();
  v48 = RestaurantReservation.restaurantCustomerNames.getter();
  OUTLINED_FUNCTION_114_3(v48);
  v49 = RestaurantReservation.restaurantPartySize.getter();
  if (v50)
  {
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0xE000000000000000;
  }

  v52 = HIBYTE(v51) & 0xF;
  v53 = v49 & 0xFFFFFFFFFFFFLL;
  if ((v51 & 0x2000000000000000) != 0)
  {
    v54 = HIBYTE(v51) & 0xF;
  }

  else
  {
    v54 = v49 & 0xFFFFFFFFFFFFLL;
  }

  v133[1] = v42;
  v133[0] = v43;
  v132 = v45;
  v131[1] = v46;
  if (!v54)
  {

    v129 = 0;
    LODWORD(v141) = 1;
LABEL_77:
    v74 = RestaurantReservation.restaurantReservationForName.getter();
    OUTLINED_FUNCTION_245_0(v74);
    v75 = RestaurantReservation.restaurantReservationForAddress.getter();
    OUTLINED_FUNCTION_135_2(v75, v76);
    v77 = RestaurantReservation.restaurantReservationForTelephone.getter();
    OUTLINED_FUNCTION_80_5(v77, v78);
    v79 = v135[2];
    RestaurantReservation.restaurantStartDateComponents.getter();
    v80 = RestaurantReservation.restaurantMealType.getter();
    OUTLINED_FUNCTION_137_1(v80, v81);
    v82 = RestaurantReservation.restaurantStatus.getter();
    OUTLINED_FUNCTION_197_1(v82);
    *(v84 - 256) = v83;
    v85 = HotelReservation.hotelUnderName.getter();
    OUTLINED_FUNCTION_138_1(v85, v86);
    OUTLINED_FUNCTION_255_0();
    LocalizedStringResource.init(stringLiteral:)();
    v87 = OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_58_3();
    LocalizedStringResource.init(stringLiteral:)();
    v88 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_102_4(v88, v133);
    OUTLINED_FUNCTION_33_8();
    LocalizedStringResource.init(stringLiteral:)();
    v122 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_182_1();
    OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_57_4();
    v89 = OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_102_4(v89, &v141 + 8);
    OUTLINED_FUNCTION_10_12();
    LocalizedStringResource.init(stringLiteral:)();
    v90 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_102_4(v90, &v134);
    LocalizedStringResource.init(stringLiteral:)();
    v91 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_102_4(v91, v152);
    OUTLINED_FUNCTION_198_0();
    v92 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_102_4(v92, v131);
    OUTLINED_FUNCTION_4_16();
    LocalizedStringResource.init(stringLiteral:)();
    v93 = OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_102_4(v93, &v132);
    OUTLINED_FUNCTION_3_19();
    LocalizedStringResource.init(stringLiteral:)();
    v125 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_58_3();
    LocalizedStringResource.init(stringLiteral:)();
    v94 = OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_102_4(v94, &v149);
    OUTLINED_FUNCTION_60_4();
    LocalizedStringResource.init(stringLiteral:)();
    v95 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_160_1(v95);
    OUTLINED_FUNCTION_58_3();
    LocalizedStringResource.init(stringLiteral:)();
    v96 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_102_4(v96, &v151);
    OUTLINED_FUNCTION_2_17();
    LocalizedStringResource.init(stringLiteral:)();
    v97 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_102_4(v97, v150);
    OUTLINED_FUNCTION_195_1();
    LocalizedStringResource.init(stringLiteral:)();
    v98 = OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_180_1(v98);
    OUTLINED_FUNCTION_206_0();
    OUTLINED_FUNCTION_63_5(&v142);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_63_5(&v144);
    EntityProperty.wrappedValue.setter();
    v145 = v130;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_63_5(v135);
    EntityProperty.wrappedValue.setter();
    v145 = v129;
    LOBYTE(v146) = v141 & 1;
    EntityProperty.wrappedValue.setter();
    v145 = 0;
    v146 = 0;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_63_5(&v136);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_63_5(&v137);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_63_5(&v138);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_205_1();
    OUTLINED_FUNCTION_251_0(v99);
    outlined init with copy of Date?(v100, v101, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_131_2(&a17);
    outlined init with copy of Date?(v102, v103, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    EntityProperty.wrappedValue.setter();
    outlined destroy of EagerResolutionService?(v98, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_63_5(&v139);
    EntityProperty.wrappedValue.setter();
    v143 = v128;
    v144 = v127;
    EntityProperty.wrappedValue.setter();
    v104 = type metadata accessor for RestaurantReservation();
    OUTLINED_FUNCTION_2(v104);
    (*(v105 + 8))(v23);
    outlined destroy of EagerResolutionService?(v79, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_127_3(&a15);
    v145 = v107;
    v146 = v106;
    OUTLINED_FUNCTION_125_2();
    v147 = v109;
    v148 = v108;
    OUTLINED_FUNCTION_123_3();
    v149 = v111;
    v150[0] = v110;
    OUTLINED_FUNCTION_250_0();
    v150[1] = v113;
    v151 = v112;
    OUTLINED_FUNCTION_122_2();
    v152[0] = v115;
    v152[1] = v114;
    OUTLINED_FUNCTION_128_3(v153);
    v152[2] = v117;
    v152[3] = v116;
    OUTLINED_FUNCTION_249_0();
    v153[0] = v118;
    v153[1] = v131[0];
    v141 = xmmword_25DBC9410;
    v154 = xmmword_25DBC9410;
    outlined destroy of RestaurantReservationEntity(&v145);
    v119 = v140;
    *v140 = v87;
    v119[1] = v124;
    v119[2] = v122;
    v119[3] = "Arrival Date Time";
    v119[4] = v126;
    v119[5] = "Checkout Date Time";
    v119[6] = v121;
    v119[7] = v123;
    v119[8] = v125;
    v119[9] = 0x73736572646441;
    v119[10] = "Booking Provider";
    v119[11] = 0x73736572646441;
    v119[12] = v44;
    v119[13] = "Member ID Number";
    *(v119 + 7) = v141;
    OUTLINED_FUNCTION_148();
    return;
  }

  if ((v51 & 0x1000000000000000) != 0)
  {
    v57 = specialized _parseInteger<A, B>(ascii:radix:)(v49, v51, 10);
    LODWORD(v141) = v120;
    goto LABEL_73;
  }

  if ((v51 & 0x2000000000000000) == 0)
  {
    if ((v49 & 0x1000000000000000) != 0)
    {
      v55 = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v55 = _StringObject.sharedUTF8.getter();
    }

    v56 = *v55;
    if (v56 == 43)
    {
      if (v53 >= 1)
      {
        if (v53 != 1)
        {
          v57 = 0;
          if (v55)
          {
            while (1)
            {
              OUTLINED_FUNCTION_91_4();
              if (!v59 & v58)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_51_6();
              if (!v59)
              {
                goto LABEL_71;
              }

              v57 = v66 + v65;
              if (__OFADD__(v66, v65))
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_204_1();
              if (v59)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_71;
      }

      goto LABEL_83;
    }

    if (v56 != 45)
    {
      if (v53)
      {
        v57 = 0;
        if (v55)
        {
          while (1)
          {
            v69 = *v55 - 48;
            if (v69 > 9)
            {
              goto LABEL_71;
            }

            v70 = 10 * v57;
            if ((v57 * 10) >> 64 != (10 * v57) >> 63)
            {
              goto LABEL_71;
            }

            v57 = v70 + v69;
            if (__OFADD__(v70, v69))
            {
              goto LABEL_71;
            }

            ++v55;
            if (!--v53)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_71:
      v57 = 0;
      v62 = 1;
      goto LABEL_72;
    }

    if (v53 >= 1)
    {
      if (v53 != 1)
      {
        v57 = 0;
        if (v55)
        {
          while (1)
          {
            OUTLINED_FUNCTION_91_4();
            if (!v59 & v58)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_51_6();
            if (!v59)
            {
              goto LABEL_71;
            }

            v57 = v61 - v60;
            if (__OFSUB__(v61, v60))
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_204_1();
            if (v59)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_62:
        v62 = 0;
LABEL_72:
        LOBYTE(v143) = v62;
        LODWORD(v141) = v62;
LABEL_73:

        if (v141)
        {
          v73 = 0;
        }

        else
        {
          v73 = v57;
        }

        v129 = v73;
        goto LABEL_77;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v145 = v49;
  v146 = v51 & 0xFFFFFFFFFFFFFFLL;
  if (v49 != 43)
  {
    if (v49 != 45)
    {
      if (v52)
      {
        while (1)
        {
          OUTLINED_FUNCTION_91_4();
          if (!v59 & v58)
          {
            break;
          }

          OUTLINED_FUNCTION_51_6();
          if (!v59)
          {
            break;
          }

          v57 = v72 + v71;
          if (__OFADD__(v72, v71))
          {
            break;
          }

          OUTLINED_FUNCTION_204_1();
          if (v59)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v52)
    {
      if (v52 != 1)
      {
        OUTLINED_FUNCTION_239();
        while (1)
        {
          OUTLINED_FUNCTION_91_4();
          if (!v59 & v58)
          {
            break;
          }

          OUTLINED_FUNCTION_51_6();
          if (!v59)
          {
            break;
          }

          v57 = v64 - v63;
          if (__OFSUB__(v64, v63))
          {
            break;
          }

          OUTLINED_FUNCTION_204_1();
          if (v59)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_82;
  }

  if (v52)
  {
    if (v52 != 1)
    {
      OUTLINED_FUNCTION_239();
      while (1)
      {
        OUTLINED_FUNCTION_91_4();
        if (!v59 & v58)
        {
          break;
        }

        OUTLINED_FUNCTION_51_6();
        if (!v59)
        {
          break;
        }

        v57 = v68 + v67;
        if (__OFADD__(v68, v67))
        {
          break;
        }

        OUTLINED_FUNCTION_204_1();
        if (v59)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_84:
  __break(1u);
}

void VehicleReservationEntity.init(reservation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v37 = OUTLINED_FUNCTION_114(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_85_4();
  v44 = type metadata accessor for LocalizedStringResource();
  v45 = OUTLINED_FUNCTION_114(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_215();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_36_8("Arrival Date Time");
  OUTLINED_FUNCTION_57_4();
  v48 = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_56_6(v48, &v175);
  v154 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_8("Reservation Under Name");
  OUTLINED_FUNCTION_57_4();
  v49 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_248(v49);
  OUTLINED_FUNCTION_36_8("Drop-off Address");
  LocalizedStringResource.init(stringLiteral:)();
  v153[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_36_8("Drop-off Business Name");
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_112_3();
  v50 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_216_0(v50);
  OUTLINED_FUNCTION_36_8("Drop-off Date Time");
  LocalizedStringResource.init(stringLiteral:)();
  v51 = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_59_5(v51, v172);
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_112_3();
  v52 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v52, &v171);
  OUTLINED_FUNCTION_168_1();
  v152[0] = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_36_8("Drop-off Phone Number");
  LocalizedStringResource.init(stringLiteral:)();
  v53 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_145_1(v53);
  OUTLINED_FUNCTION_36_8("Pick-up Business Name");
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_112_3();
  v54 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_156_1(v54);
  OUTLINED_FUNCTION_36_8("Pick-up Date Time");
  LocalizedStringResource.init(stringLiteral:)();
  v55 = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_59_5(v55, v170);
  OUTLINED_FUNCTION_178_1();
  v56 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v56, &v169);
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  v57 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v57, &v168);
  OUTLINED_FUNCTION_166_0();
  v58 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_180_1(v58);
  OUTLINED_FUNCTION_36_8("Booking Provider");
  LocalizedStringResource.init(stringLiteral:)();
  v59 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_114_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_36_8("Member ID Number");
  LocalizedStringResource.init(stringLiteral:)();
  v61 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v61, &v166);
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v147 = v60;
  v62 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_162_1(v62);
  v63 = Appointment.startLocationAddress.getter();
  OUTLINED_FUNCTION_138_1(v63, v64);
  v65 = RentalCarReservation.totalCost.getter();
  OUTLINED_FUNCTION_234_0(v65, v66);
  v67 = RentalCarReservation.endLocationAddress.getter();
  OUTLINED_FUNCTION_135_2(v67, v68);
  v69 = RentalCarReservation.endLocationName.getter();
  OUTLINED_FUNCTION_80_5(v69, v70);
  v71 = type metadata accessor for DateComponents();
  v159 = v20;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v71);
  v75 = RentalCarReservation.endLocationTelephone.getter();
  OUTLINED_FUNCTION_148_0(v75);
  OUTLINED_FUNCTION_154_0(v76, v162);
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_237_0(v77, v78, v79, v80);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  v85 = RentalCarReservation.durationInSeconds.getter();
  OUTLINED_FUNCTION_55_4(v85);
  OUTLINED_FUNCTION_93_4();
  if (!v88 && !v86)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v87 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_75_3();
  if (v89)
  {
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_43_7();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v71);
    RentalCarReservation.startLocationAddress.getter();
    RentalCarReservation.startLocationName.getter();
    v93 = OUTLINED_FUNCTION_62_6(&a16);
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v71);
    v96 = RentalCarReservation.endLocationTelephone.getter();
    OUTLINED_FUNCTION_242_0(v96, v97);
    TicketedShow.startLocationAddress.getter();
    RentalCarReservation.status.getter();
    Appointment.startLocationName.getter();
    OUTLINED_FUNCTION_26_6(&a13);
    OUTLINED_FUNCTION_57_4();
    v98 = OUTLINED_FUNCTION_165_1();
    OUTLINED_FUNCTION_56_6(v98, &v148);
    v140 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_26_6(&a12);
    OUTLINED_FUNCTION_57_4();
    v139 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_26_6(&a11);
    LocalizedStringResource.init(stringLiteral:)();
    v99 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_159_1(v99);
    OUTLINED_FUNCTION_26_6(&a10);
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_112_3();
    v100 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_144_0(v100);
    OUTLINED_FUNCTION_26_6(&a9);
    LocalizedStringResource.init(stringLiteral:)();
    v101 = OUTLINED_FUNCTION_165_1();
    OUTLINED_FUNCTION_59_5(v101, &a12);
    OUTLINED_FUNCTION_17_11();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_112_3();
    v102 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v102, &a11);
    OUTLINED_FUNCTION_168_1();
    v156[1] = OUTLINED_FUNCTION_165_1();
    OUTLINED_FUNCTION_26_6(&v163);
    LocalizedStringResource.init(stringLiteral:)();
    v156[0] = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_26_6(&v161 + 8);
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_112_3();
    v138 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_26_6(&v161);
    LocalizedStringResource.init(stringLiteral:)();
    v103 = OUTLINED_FUNCTION_165_1();
    OUTLINED_FUNCTION_59_5(v103, &v161 + 8);
    OUTLINED_FUNCTION_178_1();
    v104 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v104, &v161);
    OUTLINED_FUNCTION_60_4();
    LocalizedStringResource.init(stringLiteral:)();
    v105 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v105, v146);
    OUTLINED_FUNCTION_166_0();
    v137 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_26_6(&v160);
    LocalizedStringResource.init(stringLiteral:)();
    v143 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_26_6(&v159);
    LocalizedStringResource.init(stringLiteral:)();
    v106 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v106, &v163);
    OUTLINED_FUNCTION_2_17();
    LocalizedStringResource.init(stringLiteral:)();
    v107 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_155_1(v107);
    OUTLINED_FUNCTION_45_6(v155);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_45_6(v156);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_45_6(&v157);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_45_6(&v158);
    OUTLINED_FUNCTION_158_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_218_0(v159, v142);
    OUTLINED_FUNCTION_251_0(&v174 + 8);
    OUTLINED_FUNCTION_218_0(v108, v109);
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_170_1(v142);
    OUTLINED_FUNCTION_45_6(v162);
    OUTLINED_FUNCTION_229_0();
    v110 = OUTLINED_FUNCTION_153_1();
    OUTLINED_FUNCTION_218_0(v110, v142);
    v111 = OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_218_0(v111, v112);
    OUTLINED_FUNCTION_230();
    OUTLINED_FUNCTION_170_1(v142);
    OUTLINED_FUNCTION_45_6(&v149);
    OUTLINED_FUNCTION_157_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_45_6(&v150);
    OUTLINED_FUNCTION_212_0();
    EntityProperty.wrappedValue.setter();
    v113 = v160;
    OUTLINED_FUNCTION_218_0(v160, v142);
    v114 = OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_218_0(v114, v115);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_170_1(v142);
    OUTLINED_FUNCTION_45_6(&v151);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_45_6(v152);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_45_6(v153);
    OUTLINED_FUNCTION_240_0(v146);
    EntityProperty.wrappedValue.setter();
    v163 = 0;
    v164 = 0;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_253_0();
    v162[0] = v117;
    v162[1] = v116;
    EntityProperty.wrappedValue.setter();
    v118 = type metadata accessor for RentalCarReservation();
    OUTLINED_FUNCTION_2(v118);
    (*(v119 + 8))(v24);
    OUTLINED_FUNCTION_170_1(v113);
    v120 = OUTLINED_FUNCTION_153_1();
    OUTLINED_FUNCTION_170_1(v120);
    OUTLINED_FUNCTION_170_1(v159);
    v163 = v155[1];
    v164 = v154;
    OUTLINED_FUNCTION_87_4(&v173);
    v167[0] = v153[1];
    v167[1] = v153[0];
    v168 = v152[1];
    v169 = v152[0];
    OUTLINED_FUNCTION_126_3();
    v170[0] = v122;
    v170[1] = v121;
    OUTLINED_FUNCTION_84_3();
    v170[2] = v124;
    v170[3] = v123;
    OUTLINED_FUNCTION_133_2();
    v171 = v126;
    v172[0] = v125;
    OUTLINED_FUNCTION_129_3(v167);
    v172[1] = v128;
    v173 = v127;
    OUTLINED_FUNCTION_247_0(&v165);
    v161 = xmmword_25DBC9410;
    v174 = xmmword_25DBC9410;
    outlined destroy of VehicleReservationEntity(&v163);
    *v26 = v141;
    *(v26 + 8) = v140;
    OUTLINED_FUNCTION_127_3(&v147);
    *(v26 + 16) = v130;
    *(v26 + 24) = v129;
    OUTLINED_FUNCTION_125_2();
    *(v26 + 32) = v132;
    *(v26 + 40) = v131;
    OUTLINED_FUNCTION_123_3();
    *(v26 + 48) = v134;
    *(v26 + 56) = v133;
    OUTLINED_FUNCTION_213_0();
    *(v26 + 64) = v135;
    *(v26 + 72) = v138;
    *(v26 + 80) = v145;
    *(v26 + 88) = v144;
    *(v26 + 96) = v139;
    *(v26 + 104) = v137;
    v136 = v146[1];
    *(v26 + 112) = v143;
    *(v26 + 120) = v136;
    *(v26 + 128) = v147;
    *(v26 + 136) = v161;
    OUTLINED_FUNCTION_148();
    return;
  }

LABEL_9:
  __break(1u);
}

void TicketedTransportationEntity.init(reservation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_49_3();
  v169 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_49_3();
  v172[0] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v38 = OUTLINED_FUNCTION_114(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = v145 - v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_4();
  *&v171 = v45;
  OUTLINED_FUNCTION_174();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = v145 - v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_85_4();
  v50 = type metadata accessor for LocalizedStringResource();
  v51 = OUTLINED_FUNCTION_114(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_208();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  v160 = "Pick-up Phone Number";
  OUTLINED_FUNCTION_65_5();
  v167 = OUTLINED_FUNCTION_224_0();
  v159 = "Arrival Station Name";
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v54 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_163_0(v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_81_6();
  OUTLINED_FUNCTION_236();
  LocalizedStringResource.init(stringLiteral:)();
  v55 = OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_159_1(v55);
  v156 = "Arrival Station Address";
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v56 = OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_144_0(v56);
  v155 = "Departure Station Name";
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v57 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v57, &a12);
  OUTLINED_FUNCTION_82_5();
  OUTLINED_FUNCTION_256_0();
  v58 = OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_101_3(v58, &a11);
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  v59 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v59, &a10);
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  v162 = OUTLINED_FUNCTION_224_0();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_48_4();
  v61 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v61, &v181);
  v62 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_39_8(v62 & 0xFFFF0000FFFFFFFFLL | 0x6E2000000000);
  LocalizedStringResource.init(stringLiteral:)();
  v158 = v60;
  v161 = EntityProperty<>.init(title:)();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  v152 = "Member ID Number";
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v64 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v64, &v180);
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v157 = v63;
  v65 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_248(v65);
  v66 = TicketedShow.startLocationName.getter();
  OUTLINED_FUNCTION_162_1(v66);
  v151 = v67;
  v68 = TicketedShow.startLocationAddress.getter();
  OUTLINED_FUNCTION_114_3(v68);
  OUTLINED_FUNCTION_154_0(v69, v172);
  v70 = type metadata accessor for DateComponents();
  v170 = v20;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v70);
  v74 = TicketedTransportation.startLocationName.getter();
  OUTLINED_FUNCTION_150_1(v74);
  v153 = v75;
  v76 = TicketedTransportation.startLocationAddress.getter();
  OUTLINED_FUNCTION_156_1(v76);
  v154 = v77;
  v168 = v49;
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_237_0(v78, v79, v80, v70);
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_237_0(v81, v82, v83, v84);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  v89 = TicketedShow.durationInSeconds.getter();
  OUTLINED_FUNCTION_55_4(v89);
  OUTLINED_FUNCTION_93_4();
  if (!v92 && !v90)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v91 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_75_3();
  if (!v93)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_1_30();
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v70);
  v97 = Appointment.eventSubType.getter();
  OUTLINED_FUNCTION_148_0(v97);
  v149 = v98;
  v150 = v24;
  v99 = TicketedTransportation.customerNames.getter();
  v100 = MEMORY[0x277D84F90];
  if (v99)
  {
    v101 = v99;
  }

  else
  {
    v101 = MEMORY[0x277D84F90];
  }

  v148 = v101;
  v102 = TicketedShow.seatNumbers.getter();
  if (v102)
  {
    v103 = v102;
  }

  else
  {
    v103 = v100;
  }

  v147 = v103;
  OUTLINED_FUNCTION_65_5();
  v146 = OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_71_5(&v178);
  LocalizedStringResource.init(stringLiteral:)();
  v104 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v104, &v166);
  OUTLINED_FUNCTION_81_6();
  OUTLINED_FUNCTION_236();
  LocalizedStringResource.init(stringLiteral:)();
  v172[0] = OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_71_5(v177);
  LocalizedStringResource.init(stringLiteral:)();
  v169 = OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_71_5(&v176);
  LocalizedStringResource.init(stringLiteral:)();
  v105 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v105, &v163);
  OUTLINED_FUNCTION_82_5();
  OUTLINED_FUNCTION_256_0();
  v106 = OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_101_3(v106, &v164);
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  v107 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v107, &v176);
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  v108 = OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_101_3(v108, v177);
  OUTLINED_FUNCTION_48_4();
  v109 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v109, &v165);
  v110 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_39_8(v110 & 0xFFFF0000FFFFFFFFLL | 0x6E2000000000);
  LocalizedStringResource.init(stringLiteral:)();
  v158 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_71_5(&v173);
  LocalizedStringResource.init(stringLiteral:)();
  v111 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_101_3(v111, v179);
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v112 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_216_0(v112);
  OUTLINED_FUNCTION_94_3(&v171 + 8);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_94_3(v172);
  EntityProperty.wrappedValue.setter();
  outlined init with copy of Date?(v170, v44, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_104_3();
  outlined init with copy of Date?(v113, v114, v115, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_221_0(v44);
  OUTLINED_FUNCTION_94_3(v174);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_94_3(v175);
  EntityProperty.wrappedValue.setter();
  v116 = v168;
  outlined init with copy of Date?(v168, v44, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_104_3();
  outlined init with copy of Date?(v117, v118, v119, &_s10Foundation14DateComponentsVSgMR);
  v120 = v145[2];
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_221_0(v44);
  v121 = v171;
  v122 = OUTLINED_FUNCTION_1_28();
  outlined init with copy of Date?(v122, v123, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_104_3();
  outlined init with copy of Date?(v124, v125, v126, &_s10Foundation14DateComponentsVSgMR);
  v127 = v155;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_221_0(v44);
  OUTLINED_FUNCTION_94_3(&v169);
  v128 = v156;
  EntityProperty.wrappedValue.setter();
  v173 = v148;
  v129 = v145[3];
  EntityProperty.wrappedValue.setter();
  v172[1] = v147;
  v130 = v158;
  EntityProperty.wrappedValue.setter();
  v131 = type metadata accessor for TicketedTransportation();
  OUTLINED_FUNCTION_2(v131);
  (*(v132 + 8))(v150);
  OUTLINED_FUNCTION_221_0(v121);
  OUTLINED_FUNCTION_221_0(v116);
  OUTLINED_FUNCTION_221_0(v170);
  v173 = v167;
  v174[0] = v166;
  v174[1] = v165;
  v175[0] = v164;
  OUTLINED_FUNCTION_117_3();
  v175[1] = v134;
  v176 = v133;
  OUTLINED_FUNCTION_213_0();
  v177[0] = v136;
  v177[1] = v135;
  OUTLINED_FUNCTION_250_0();
  v177[2] = v138;
  v178 = v137;
  OUTLINED_FUNCTION_122_2();
  v179[0] = v140;
  v179[1] = v139;
  v171 = xmmword_25DBC9410;
  v180 = xmmword_25DBC9410;
  outlined destroy of TicketedTransportationEntity(&v173);
  v141 = v145[4];
  *v26 = v146;
  *(v26 + 8) = v141;
  v142 = v169;
  *(v26 + 16) = v172[0];
  *(v26 + 24) = v142;
  *(v26 + 32) = v145[1];
  *(v26 + 40) = v120;
  *(v26 + 48) = v127;
  *(v26 + 56) = v128;
  *(v26 + 64) = v129;
  *(v26 + 72) = v130;
  OUTLINED_FUNCTION_128_3(v179);
  *(v26 + 80) = v144;
  *(v26 + 88) = v143;
  *(v26 + 96) = v171;
  OUTLINED_FUNCTION_148();
}

void TicketedShowEntity.init(reservation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v169 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v26 = OUTLINED_FUNCTION_114(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_194_1();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v41 = OUTLINED_FUNCTION_114(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_14_2();
  *&v186 = v48;
  OUTLINED_FUNCTION_78_0();
  v49 = type metadata accessor for LocalizedStringResource();
  v50 = OUTLINED_FUNCTION_114(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_36();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v178[1] = OUTLINED_FUNCTION_259_0();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v55 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_248(v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_167_0();
  OUTLINED_FUNCTION_108_2();
  v56 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v56, &v200);
  OUTLINED_FUNCTION_32_11();
  OUTLINED_FUNCTION_23_8();
  LocalizedStringResource.init(stringLiteral:)();
  v57 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_216_0(v57);
  OUTLINED_FUNCTION_193_1("Departure Station Address");
  OUTLINED_FUNCTION_57_4();
  v58 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v58, v199);
  v59 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_39_8(v59 & 0xFFFF0000FFFFFFFFLL | 0x4E2000000000);
  LocalizedStringResource.init(stringLiteral:)();
  v182 = v54;
  v60 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v60, &v198);
  OUTLINED_FUNCTION_227_0();
  OUTLINED_FUNCTION_108_2();
  v61 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v61, &v197);
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  v62 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v62, &v196);
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_257_0();
  v63 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_156_1(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_134_1();
  LocalizedStringResource.init(stringLiteral:)();
  v181 = v64;
  v65 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v65, &v190);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_108_2();
  v66 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v66, &v194);
  OUTLINED_FUNCTION_11_13();
  LocalizedStringResource.init(stringLiteral:)();
  v67 = OUTLINED_FUNCTION_259_0();
  OUTLINED_FUNCTION_73_4(v67, &v193);
  OUTLINED_FUNCTION_31_12();
  LocalizedStringResource.init(stringLiteral:)();
  v68 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_160_1(v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_193_1("Member ID Number");
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_235_0();
  v69 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v69, &v189);
  LocalizedStringResource.init(stringLiteral:)();
  v70 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_180_1(v70);
  v71 = Appointment.eventName.getter();
  OUTLINED_FUNCTION_80_5(v71, v72);
  v73 = Appointment.startLocationName.getter();
  OUTLINED_FUNCTION_137_1(v73, v74);
  v170 = TicketedShow.customerNames.getter();
  TicketedShow.startLocationName.getter();
  v75 = TicketedShow.startLocationAddress.getter();
  OUTLINED_FUNCTION_155_1(v75);
  v76 = TicketedShow.seatNumbers.getter();
  OUTLINED_FUNCTION_162_1(v76);
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_237_0(v77, v78, v79, v80);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  v85 = TicketedShow.durationInSeconds.getter();
  OUTLINED_FUNCTION_55_4(v85);
  OUTLINED_FUNCTION_93_4();
  if (!v88 && !v86)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v87 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_75_3();
  if (v89)
  {
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_43_7();
    v90 = type metadata accessor for DateComponents();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v90);
    v160 = v23;
    TicketedShow.ticketType.getter();
    TicketedShow.ticketUrl.getter();
    v94 = TicketedShow.totalCost.getter();
    OUTLINED_FUNCTION_138_1(v94, v95);
    v96 = OUTLINED_FUNCTION_62_6(&a17);
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v90);
    v99 = OUTLINED_FUNCTION_62_6(&a18);
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v90);
    v102 = Appointment.eventSubType.getter();
    OUTLINED_FUNCTION_234_0(v102, v103);
    OUTLINED_FUNCTION_17_11();
    LocalizedStringResource.init(stringLiteral:)();
    v104 = OUTLINED_FUNCTION_259_0();
    OUTLINED_FUNCTION_73_4(v104, &a15);
    OUTLINED_FUNCTION_33_8();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_240_0(&a12);
    v105 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v105, &a14);
    OUTLINED_FUNCTION_167_0();
    OUTLINED_FUNCTION_108_2();
    v106 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v106, &v176);
    OUTLINED_FUNCTION_32_11();
    OUTLINED_FUNCTION_23_8();
    LocalizedStringResource.init(stringLiteral:)();
    v107 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_144_0(v107);
    OUTLINED_FUNCTION_71_5(&a11);
    OUTLINED_FUNCTION_57_4();
    v108 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v108, &v174);
    v109 = OUTLINED_FUNCTION_184_1();
    OUTLINED_FUNCTION_39_8(v109 & 0xFFFF0000FFFFFFFFLL | 0x4E2000000000);
    LocalizedStringResource.init(stringLiteral:)();
    v110 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v110, &v173);
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_108_2();
    v111 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v111, &v175);
    OUTLINED_FUNCTION_2_18();
    LocalizedStringResource.init(stringLiteral:)();
    v112 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v112, &v177);
    OUTLINED_FUNCTION_134_1();
    OUTLINED_FUNCTION_257_0();
    v113 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v113, &a12);
    OUTLINED_FUNCTION_134_1();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_157_1();
    v114 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v114, &a11);
    OUTLINED_FUNCTION_88_4();
    OUTLINED_FUNCTION_108_2();
    v115 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v115, &a10);
    OUTLINED_FUNCTION_11_13();
    LocalizedStringResource.init(stringLiteral:)();
    v116 = OUTLINED_FUNCTION_259_0();
    OUTLINED_FUNCTION_73_4(v116, v172);
    OUTLINED_FUNCTION_31_12();
    LocalizedStringResource.init(stringLiteral:)();
    v161 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_71_5(&v186 + 8);
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_235_0();
    v117 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_73_4(v117, &v186 + 8);
    OUTLINED_FUNCTION_2_17();
    LocalizedStringResource.init(stringLiteral:)();
    v166 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_34_12(&v183);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_34_12(v184);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_211_0(v170);
    OUTLINED_FUNCTION_158_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_34_12(&v185);
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_206_0();
    OUTLINED_FUNCTION_34_12(&v187);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_211_0(v171);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_201_1(v186, v168);
    OUTLINED_FUNCTION_172_1(v168);
    OUTLINED_FUNCTION_181_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_53_1();
    outlined destroy of EagerResolutionService?(v118, v119, v120);
    OUTLINED_FUNCTION_34_12(v178);
    OUTLINED_FUNCTION_229_0();
    v121 = v184[1];
    OUTLINED_FUNCTION_252_0(&v202);
    outlined init with copy of Date?(v122, v123, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_131_2(&a9);
    outlined init with copy of Date?(v124, v125, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_230();
    outlined destroy of EagerResolutionService?(v53, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_34_12(&v179);
    OUTLINED_FUNCTION_157_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_201_1(v184[2], v168);
    OUTLINED_FUNCTION_172_1(v168);
    OUTLINED_FUNCTION_240_0(v172);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_53_1();
    outlined destroy of EagerResolutionService?(v126, v127, v128);
    OUTLINED_FUNCTION_201_1(v185, v168);
    OUTLINED_FUNCTION_172_1(v168);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_53_1();
    outlined destroy of EagerResolutionService?(v129, v130, v131);
    OUTLINED_FUNCTION_45_6(&v180);
    EntityProperty.wrappedValue.setter();
    v132 = type metadata accessor for TicketedShow();
    OUTLINED_FUNCTION_2(v132);
    (*(v133 + 8))(v160);
    OUTLINED_FUNCTION_53_1();
    outlined destroy of EagerResolutionService?(v134, v135, v136);
    OUTLINED_FUNCTION_53_1();
    outlined destroy of EagerResolutionService?(v137, v138, v139);
    outlined destroy of EagerResolutionService?(v121, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_53_1();
    outlined destroy of EagerResolutionService?(v140, v141, v142);
    OUTLINED_FUNCTION_87_4(v201);
    OUTLINED_FUNCTION_128_3(&v200);
    v190 = v144;
    v191 = v143;
    OUTLINED_FUNCTION_249_0();
    v192 = v145;
    v193 = v175;
    OUTLINED_FUNCTION_136_2();
    v194 = v147;
    v195 = v146;
    OUTLINED_FUNCTION_192_1(&v195);
    v196 = v149;
    v197 = v148;
    OUTLINED_FUNCTION_84_3();
    v198 = v151;
    v199[0] = v150;
    OUTLINED_FUNCTION_129_3(&v192);
    v199[1] = v153;
    v200 = v152;
    OUTLINED_FUNCTION_247_0(&v191);
    v186 = xmmword_25DBC9410;
    *&v201[8] = xmmword_25DBC9410;
    outlined destroy of TicketedShowEntity(&v188);
    OUTLINED_FUNCTION_127_3(&a15);
    *v169 = v155;
    *(v169 + 8) = v154;
    v156 = v183;
    *(v169 + 16) = v165;
    *(v169 + 24) = v156;
    *(v169 + 32) = v163;
    *(v169 + 40) = v162;
    *(v169 + 48) = v164;
    *(v169 + 56) = v167;
    OUTLINED_FUNCTION_117_3();
    *(v169 + 64) = v158;
    *(v169 + 72) = v157;
    *(v169 + 80) = v181;
    *(v169 + 88) = &_s10Foundation3URLVSgMd;
    OUTLINED_FUNCTION_182_1();
    *(v169 + 96) = v161;
    *(v169 + 104) = v159;
    *(v169 + 112) = v166;
    *(v169 + 120) = v186;
    OUTLINED_FUNCTION_148();
    return;
  }

LABEL_9:
  __break(1u);
}

void GenericEventEntity.init(appointment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_161_0(v25);
  OUTLINED_FUNCTION_246_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  v27 = OUTLINED_FUNCTION_114(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v34 = OUTLINED_FUNCTION_114(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_2();
  *&v186 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_194_1();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v49 = OUTLINED_FUNCTION_114(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_4();
  v185 = v55;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_14_2();
  v184 = v57;
  OUTLINED_FUNCTION_78_0();
  v58 = type metadata accessor for LocalizedStringResource();
  v59 = OUTLINED_FUNCTION_114(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_215();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMd, &_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMR);
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_205_1();
  *(v62 - 256) = v20;
  v63 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_216_0(v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v64 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_56_6(v64, &v192);
  EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v65 = OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_59_5(v65, v191);
  OUTLINED_FUNCTION_9_15();
  LocalizedStringResource.init(stringLiteral:)();
  v66 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_156_1(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_12_13();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_143_1();
  v68 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_146_1(v68);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_152_1();
  v69 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_150_1(v69);
  OUTLINED_FUNCTION_12_13();
  LocalizedStringResource.init(stringLiteral:)();
  v70 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v70, v190);
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  v71 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v71, &v189);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  v72 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_114_3(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMd, &_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMR);
  OUTLINED_FUNCTION_46_7();
  OUTLINED_FUNCTION_75_2();
  v178[0] = v73;
  v74 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v74, v188);
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  v75 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_59_5(v75, &v187);
  OUTLINED_FUNCTION_3_19();
  LocalizedStringResource.init(stringLiteral:)();
  v76 = OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_155_1(v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_36_8("Member ID Number");
  OUTLINED_FUNCTION_225_0();
  v77 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v77, &v185);
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v78 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_176_1(v78);
  v79 = Appointment.totalCost.getter();
  OUTLINED_FUNCTION_197_1(v79);
  OUTLINED_FUNCTION_154_0(v80, v81);
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_237_0(v82, v83, v84, v85);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  v90 = Appointment.durationInSeconds.getter();
  OUTLINED_FUNCTION_55_4(v90);
  OUTLINED_FUNCTION_93_4();
  if (!v93 && !v91)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v92 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_75_3();
  if (v94)
  {
    OUTLINED_FUNCTION_1_30();
    v180 = v67;
    v95 = v184;
    OUTLINED_FUNCTION_43_7();
    v170 = v24;
    v96 = type metadata accessor for DateComponents();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v96);
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_237_0(v100, v101, v102, v96);
    type metadata accessor for URL();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v106);
    Appointment.eventName.getter();
    v107 = Appointment.eventType.getter();
    OUTLINED_FUNCTION_245_0(v107);
    Appointment.eventSubType.getter();
    Appointment.startLocationAddress.getter();
    OUTLINED_FUNCTION_154_0(v108, v179);
    type metadata accessor for IntentPerson();
    v109 = OUTLINED_FUNCTION_62_6(&a17);
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
    v113 = OUTLINED_FUNCTION_62_6(&a18);
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v96);
    OUTLINED_FUNCTION_83_6();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_205_1();
    v117 = *(v116 - 256);
    v118 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v118, &v175);
    OUTLINED_FUNCTION_10_12();
    LocalizedStringResource.init(stringLiteral:)();
    v119 = OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_56_6(v119, &v174);
    v120 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v120, &v173);
    OUTLINED_FUNCTION_17_11();
    LocalizedStringResource.init(stringLiteral:)();
    v121 = OUTLINED_FUNCTION_199_1();
    OUTLINED_FUNCTION_59_5(v121, &v172);
    OUTLINED_FUNCTION_9_15();
    LocalizedStringResource.init(stringLiteral:)();
    v181 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_12_13();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_181_1();
    v122 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_163_0(v122);
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_152_1();
    v123 = OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_159_1(v123);
    OUTLINED_FUNCTION_12_13();
    LocalizedStringResource.init(stringLiteral:)();
    v124 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v124, &a13);
    OUTLINED_FUNCTION_2_18();
    LocalizedStringResource.init(stringLiteral:)();
    v125 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v125, &a12);
    OUTLINED_FUNCTION_32_11();
    LocalizedStringResource.init(stringLiteral:)();
    v126 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v126, &a11);
    OUTLINED_FUNCTION_46_7();
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_157_1();
    v127 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v127, &a10);
    OUTLINED_FUNCTION_4_16();
    LocalizedStringResource.init(stringLiteral:)();
    v128 = OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_59_5(v128, &a9);
    OUTLINED_FUNCTION_3_19();
    LocalizedStringResource.init(stringLiteral:)();
    v169 = OUTLINED_FUNCTION_199_1();
    OUTLINED_FUNCTION_26_6(&v181);
    OUTLINED_FUNCTION_225_0();
    v129 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v129, &v181);
    OUTLINED_FUNCTION_2_17();
    LocalizedStringResource.init(stringLiteral:)();
    EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_211_0(MEMORY[0x277D84F90]);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_119_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_34_12(&v182);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_132_2(v95);
    OUTLINED_FUNCTION_104_3();
    outlined init with copy of Date?(v130, v131, v132, &_s10Foundation14DateComponentsVSgMR);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_132_2(v185);
    OUTLINED_FUNCTION_104_3();
    outlined init with copy of Date?(v133, v134, v135, &_s10Foundation14DateComponentsVSgMR);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_251_0(v193);
    OUTLINED_FUNCTION_265(v136, v137);
    OUTLINED_FUNCTION_131_2(&v194);
    OUTLINED_FUNCTION_265(v138, v139);
    OUTLINED_FUNCTION_181_1();
    EntityProperty.wrappedValue.setter();
    v140 = OUTLINED_FUNCTION_1_28();
    outlined destroy of EagerResolutionService?(v140, v141, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_34_12(&v176);
    OUTLINED_FUNCTION_158_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_34_12(&v177);
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_34_12(v178);
    OUTLINED_FUNCTION_229_0();
    OUTLINED_FUNCTION_34_12(v179);
    OUTLINED_FUNCTION_230();
    OUTLINED_FUNCTION_243_0(&v180);
    OUTLINED_FUNCTION_252_0(&v195 + 8);
    outlined init with copy of Date?(v142, v143, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    OUTLINED_FUNCTION_131_2(&v196);
    outlined init with copy of Date?(v144, v145, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    OUTLINED_FUNCTION_157_1();
    EntityProperty.wrappedValue.setter();
    outlined destroy of EagerResolutionService?(&_s10Foundation3URLVSgMR, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_212_0();
    EntityProperty.wrappedValue.setter();
    v146 = v183;
    OUTLINED_FUNCTION_132_2(v183);
    OUTLINED_FUNCTION_104_3();
    outlined init with copy of Date?(v147, v148, v149, &_s10Foundation14DateComponentsVSgMR);
    EntityProperty.wrappedValue.setter();
    v150 = type metadata accessor for Appointment();
    OUTLINED_FUNCTION_2(v150);
    (*(v151 + 8))(v170);
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_174_1(v146);
    outlined destroy of EagerResolutionService?(v118, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    outlined destroy of EagerResolutionService?(v186, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_174_1(v185);
    OUTLINED_FUNCTION_174_1(v184);
    OUTLINED_FUNCTION_87_4(&v192);
    OUTLINED_FUNCTION_136_2();
    v188[1] = v153;
    v189 = v152;
    OUTLINED_FUNCTION_124_3();
    v190[0] = v155;
    v190[1] = v154;
    OUTLINED_FUNCTION_139_2();
    v190[2] = v157;
    v190[3] = v156;
    OUTLINED_FUNCTION_192_1(&v189);
    v191[0] = v159;
    v191[1] = v158;
    OUTLINED_FUNCTION_130_3(v188);
    v192 = v161;
    v193[0] = v160;
    OUTLINED_FUNCTION_206_0();
    OUTLINED_FUNCTION_182_1();
    v193[1] = v163;
    v194 = v162;
    OUTLINED_FUNCTION_247_0(&v186);
    v186 = xmmword_25DBC9410;
    v195 = xmmword_25DBC9410;
    outlined destroy of GenericEventEntity(&v187);
    OUTLINED_FUNCTION_253_0();
    _s10Foundation3URLVSgMd = v165;
    _s10OmniSearch0B10ResultItemOSgMd = v164;
    OUTLINED_FUNCTION_99_4(&v172);
    lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity = *(v166 - 256);
    lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError = v178[1];
    OUTLINED_FUNCTION_213_0();
    lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph = v168;
    _s15OmniSearchTypes13CalendarEventVSgMd = v167;
    _s15OmniSearchTypes16HotelReservationVSgMd = v169;
    _s15OmniSearchTypes17WalletTransactionVSgMd = v171;
    OUTLINED_FUNCTION_210(&v184);
    OUTLINED_FUNCTION_148();
    return;
  }

LABEL_9:
  __break(1u);
}

void GenericEventEntity.init(party:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v127 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  v27 = OUTLINED_FUNCTION_114(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_2();
  v129 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v34 = OUTLINED_FUNCTION_114(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_2();
  v131 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v41 = OUTLINED_FUNCTION_114(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7_4();
  v128 = v46;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_7_4();
  v130 = v48;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_95_3();
  v126 = v20;
  v50 = type metadata accessor for LocalizedStringResource();
  v51 = OUTLINED_FUNCTION_114(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMd, &_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMR);
  OUTLINED_FUNCTION_83_6();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_235_0();
  *v25 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_10_12();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 8) = OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_88_4();
  *(v25 + 16) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_108_2();
  *(v25 + 24) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_9_15();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 32) = EntityProperty<>.init(title:)();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_163_0(v54);
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 40) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 48) = OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 56) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 64) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 72) = EntityProperty<>.init(title:)();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMd, &_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMR);
  OUTLINED_FUNCTION_114_3(v55);
  OUTLINED_FUNCTION_46_7();
  OUTLINED_FUNCTION_75_2();
  *(v25 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 88) = OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_3_19();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_108_2();
  *(v25 + 96) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_193_1("Member ID Number");
  OUTLINED_FUNCTION_225_0();
  *(v25 + 104) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + 112) = EntityProperty<>.init(title:)();
  *(v25 + 120) = xmmword_25DBC9410;
  v56 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v56);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v56);
  Party.eventUrl.getter();
  v63 = Appointment.eventName.getter();
  OUTLINED_FUNCTION_160_1(v63);
  v64 = Appointment.eventType.getter();
  OUTLINED_FUNCTION_146_1(v64);
  v65 = Appointment.eventSubType.getter();
  OUTLINED_FUNCTION_145_1(v65);
  Appointment.startLocationAddress.getter();
  OUTLINED_FUNCTION_154_0(v66, &v132[72]);
  type metadata accessor for IntentPerson();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v56);
  OUTLINED_FUNCTION_83_6();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_235_0();
  v74 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v74, &a11);
  OUTLINED_FUNCTION_10_12();
  LocalizedStringResource.init(stringLiteral:)();
  v75 = OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_73_4(v75, v132);
  OUTLINED_FUNCTION_88_4();
  v76 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v76, &v131);
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_108_2();
  v77 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v77, &v130);
  OUTLINED_FUNCTION_9_15();
  LocalizedStringResource.init(stringLiteral:)();
  EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_181_1();
  v78 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v78, &a15);
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_152_1();
  v79 = OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_159_1(v79);
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  v80 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v80, &a13);
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  v81 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v81, &a12);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  v82 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v82, &v126);
  OUTLINED_FUNCTION_46_7();
  OUTLINED_FUNCTION_75_2();
  v83 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v83, &v127);
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  v84 = OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_73_4(v84, &v128);
  OUTLINED_FUNCTION_3_19();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_108_2();
  v85 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_148_0(v85);
  OUTLINED_FUNCTION_71_5(&v132[8]);
  OUTLINED_FUNCTION_225_0();
  v86 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_73_4(v86, &v132[16]);
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v121 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_211_0(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_119_1();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_119_1();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_153_1();
  OUTLINED_FUNCTION_252_0(&v132[88]);
  outlined init with copy of Date?(v87, v88, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_86_4();
  outlined init with copy of Date?(v89, v90, v91, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of EagerResolutionService?(v76, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of Date?(v130, v76, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v92 = OUTLINED_FUNCTION_78_4();
  outlined init with copy of Date?(v92, v93, v94, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of EagerResolutionService?(v76, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of Date?(v131, v124, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_53_1();
  outlined init with copy of Date?(v95, v96, v97, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_181_1();
  EntityProperty.wrappedValue.setter();
  outlined destroy of EagerResolutionService?(v124, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_34_12(&v132[24]);
  OUTLINED_FUNCTION_158_1();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_34_12(&v132[40]);
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_34_12(&v132[56]);
  OUTLINED_FUNCTION_229_0();
  OUTLINED_FUNCTION_34_12(&v132[72]);
  EntityProperty.wrappedValue.setter();
  v98 = v129;
  outlined init with copy of Date?(v129, v125, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  OUTLINED_FUNCTION_131_2(&a10);
  outlined init with copy of Date?(v99, v100, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_263(v125);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_240_0(&v128);
  EntityProperty.wrappedValue.setter();
  outlined init with copy of Date?(v128, v76, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of Date?(v76, v123, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  v101 = type metadata accessor for Party();
  OUTLINED_FUNCTION_2(v101);
  (*(v102 + 8))(v127);
  memcpy(v132, v25, 0x88uLL);
  outlined destroy of GenericEventEntity(v132);
  OUTLINED_FUNCTION_179_1();
  outlined destroy of EagerResolutionService?(v103, v104, v105);
  OUTLINED_FUNCTION_179_1();
  outlined destroy of EagerResolutionService?(v106, v107, v108);
  outlined destroy of EagerResolutionService?(v98, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  outlined destroy of EagerResolutionService?(v131, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_179_1();
  outlined destroy of EagerResolutionService?(v109, v110, v111);
  OUTLINED_FUNCTION_153_1();
  OUTLINED_FUNCTION_179_1();
  outlined destroy of EagerResolutionService?(v112, v113, v114);
  OUTLINED_FUNCTION_130_3(&a11);
  *v25 = v116;
  *(v25 + 8) = v115;
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_99_4(&v130);
  *(v25 + 64) = *(v117 - 256);
  *(v25 + 72) = v118;
  *(v25 + 80) = v119;
  *(v25 + 88) = &_s10AppIntents12IntentPersonVSgMR;
  *(v25 + 96) = v120;
  *(v25 + 104) = v122;
  *(v25 + 112) = v121;
  *(v25 + 120) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_148();
}

void GenericEventEntity.init(trip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_161_0(v25);
  OUTLINED_FUNCTION_246_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  v27 = OUTLINED_FUNCTION_114(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v34 = OUTLINED_FUNCTION_114(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_2();
  *&v182 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_194_1();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_208();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v49 = OUTLINED_FUNCTION_114(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_4();
  v181 = v55;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_14_2();
  v180 = v57;
  OUTLINED_FUNCTION_78_0();
  v58 = type metadata accessor for LocalizedStringResource();
  v59 = OUTLINED_FUNCTION_114(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_215();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMd, &_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMR);
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_205_1();
  *(v62 - 256) = v20;
  EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v63 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_56_6(v63, &v187);
  v64 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_145_1(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v65 = OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_59_5(v65, v186);
  OUTLINED_FUNCTION_9_15();
  LocalizedStringResource.init(stringLiteral:)();
  v66 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_146_1(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_12_13();
  LocalizedStringResource.init(stringLiteral:)();
  v177[1] = v67;
  v68 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_150_1(v68);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_152_1();
  v69 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_160_1(v69);
  OUTLINED_FUNCTION_12_13();
  LocalizedStringResource.init(stringLiteral:)();
  v70 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v70, v185);
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  v71 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v71, &v184);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  EntityProperty<>.init(title:)();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMd, &_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMR);
  OUTLINED_FUNCTION_46_7();
  OUTLINED_FUNCTION_75_2();
  v174 = v72;
  v73 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v73, v183);
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  v74 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_59_5(v74, &v182 + 8);
  OUTLINED_FUNCTION_3_19();
  LocalizedStringResource.init(stringLiteral:)();
  v75 = OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_176_1(v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_225_0();
  v76 = OUTLINED_FUNCTION_261_0();
  OUTLINED_FUNCTION_59_5(v76, &v181);
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  EntityProperty<>.init(title:)();
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_237_0(v77, v78, v79, v80);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  v85 = Trip.durationInSeconds.getter();
  OUTLINED_FUNCTION_55_4(v85);
  OUTLINED_FUNCTION_93_4();
  if (!v88 && !v86)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v87 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_75_3();
  if (v89)
  {
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_43_7();
    v90 = type metadata accessor for DateComponents();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v90);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v90);
    Trip.eventUrl.getter();
    v97 = Appointment.eventName.getter();
    OUTLINED_FUNCTION_135_2(v97, v98);
    v99 = Appointment.eventType.getter();
    OUTLINED_FUNCTION_80_5(v99, v100);
    v101 = Appointment.eventSubType.getter();
    OUTLINED_FUNCTION_137_1(v101, v102);
    type metadata accessor for IntentPerson();
    v103 = OUTLINED_FUNCTION_62_6(&a17);
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v106);
    v107 = OUTLINED_FUNCTION_62_6(&a18);
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v90);
    OUTLINED_FUNCTION_83_6();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_205_1();
    v111 = *(v110 - 256);
    v112 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v112, &v173);
    OUTLINED_FUNCTION_10_12();
    LocalizedStringResource.init(stringLiteral:)();
    v113 = OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_56_6(v113, &v172);
    v114 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v114, &v171);
    OUTLINED_FUNCTION_17_11();
    LocalizedStringResource.init(stringLiteral:)();
    v115 = OUTLINED_FUNCTION_199_1();
    OUTLINED_FUNCTION_59_5(v115, &a16);
    OUTLINED_FUNCTION_9_15();
    LocalizedStringResource.init(stringLiteral:)();
    v116 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_163_0(v116);
    OUTLINED_FUNCTION_12_13();
    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_158_1();
    v117 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_159_1(v117);
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_152_1();
    v118 = OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_144_0(v118);
    OUTLINED_FUNCTION_12_13();
    LocalizedStringResource.init(stringLiteral:)();
    v119 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v119, &a12);
    OUTLINED_FUNCTION_2_18();
    LocalizedStringResource.init(stringLiteral:)();
    v120 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v120, &a11);
    OUTLINED_FUNCTION_32_11();
    LocalizedStringResource.init(stringLiteral:)();
    v121 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v121, &a10);
    OUTLINED_FUNCTION_46_7();
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_212_0();
    v122 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_59_5(v122, &a9);
    OUTLINED_FUNCTION_4_16();
    LocalizedStringResource.init(stringLiteral:)();
    v123 = OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_59_5(v123, &v191);
    OUTLINED_FUNCTION_3_19();
    LocalizedStringResource.init(stringLiteral:)();
    v164 = OUTLINED_FUNCTION_199_1();
    OUTLINED_FUNCTION_225_0();
    v124 = OUTLINED_FUNCTION_261_0();
    OUTLINED_FUNCTION_59_5(v124, &v175);
    OUTLINED_FUNCTION_2_17();
    LocalizedStringResource.init(stringLiteral:)();
    v125 = EntityProperty<>.init(title:)();
    OUTLINED_FUNCTION_245_0(v125);
    OUTLINED_FUNCTION_211_0(MEMORY[0x277D84F90]);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_119_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_119_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_132_2(v180);
    OUTLINED_FUNCTION_104_3();
    outlined init with copy of Date?(v126, v127, v128, &_s10Foundation14DateComponentsVSgMR);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_132_2(v181);
    OUTLINED_FUNCTION_104_3();
    outlined init with copy of Date?(v129, v130, v131, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_181_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_251_0(v188);
    OUTLINED_FUNCTION_265(v132, v133);
    OUTLINED_FUNCTION_131_2(v189);
    OUTLINED_FUNCTION_265(v134, v135);
    OUTLINED_FUNCTION_158_1();
    EntityProperty.wrappedValue.setter();
    v136 = OUTLINED_FUNCTION_1_28();
    outlined destroy of EagerResolutionService?(v136, v137, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_34_12(&v176);
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_34_12(v177);
    OUTLINED_FUNCTION_229_0();
    OUTLINED_FUNCTION_34_12(v178);
    OUTLINED_FUNCTION_230();
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_157_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_243_0(&v179);
    OUTLINED_FUNCTION_252_0(&v190);
    outlined init with copy of Date?(v138, v139, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    OUTLINED_FUNCTION_131_2(&v190 + 8);
    outlined init with copy of Date?(v140, v141, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    OUTLINED_FUNCTION_212_0();
    EntityProperty.wrappedValue.setter();
    outlined destroy of EagerResolutionService?(&_s10Foundation3URLVSgMR, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    OUTLINED_FUNCTION_119_1();
    EntityProperty.wrappedValue.setter();
    v142 = v179;
    OUTLINED_FUNCTION_132_2(v179);
    OUTLINED_FUNCTION_104_3();
    outlined init with copy of Date?(v143, v144, v145, &_s10Foundation14DateComponentsVSgMR);
    EntityProperty.wrappedValue.setter();
    v146 = type metadata accessor for Trip();
    OUTLINED_FUNCTION_2(v146);
    (*(v147 + 8))(v24);
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_174_1(v142);
    outlined destroy of EagerResolutionService?(v113, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    outlined destroy of EagerResolutionService?(v182, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_174_1(v181);
    OUTLINED_FUNCTION_174_1(v180);
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_87_4(&v187);
    OUTLINED_FUNCTION_126_3();
    v184 = v149;
    v185[0] = v148;
    OUTLINED_FUNCTION_84_3();
    v185[1] = v151;
    v185[2] = v150;
    OUTLINED_FUNCTION_133_2();
    v185[3] = v153;
    v186[0] = v152;
    OUTLINED_FUNCTION_129_3(&v184);
    v186[1] = v155;
    v187 = v154;
    v188[0] = v170;
    v188[1] = v169;
    OUTLINED_FUNCTION_182_1();
    v189[0] = v157;
    v189[1] = v156;
    OUTLINED_FUNCTION_247_0(&v180);
    v182 = xmmword_25DBC9410;
    v190 = xmmword_25DBC9410;
    outlined destroy of GenericEventEntity(v183);
    _s10Foundation3URLVSgMd = v167;
    _s10OmniSearch0B10ResultItemOSgMd = v166;
    _s10OmniSearch11GeoLocationVSgMd = v165;
    lazy protocol witness table cache variable for type URL and conformance URL = v178[1];
    OUTLINED_FUNCTION_127_3(&a15);
    _s12SiriOntology17UsoBuilderOptionsVSgMd = v159;
    _s12SiriOntology9MatchInfoVSgMd = v158;
    OUTLINED_FUNCTION_125_2();
    _s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd = v161;
    _ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMd = v160;
    OUTLINED_FUNCTION_123_3();
    lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity = v163;
    lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError = v162;
    lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph = v174;
    _s15OmniSearchTypes13CalendarEventVSgMd = v173;
    _s15OmniSearchTypes16HotelReservationVSgMd = v164;
    _s15OmniSearchTypes17WalletTransactionVSgMd = v168;
    OUTLINED_FUNCTION_210(&v174);
    OUTLINED_FUNCTION_148();
    return;
  }

LABEL_9:
  __break(1u);
}

void ShippingOrderEntity.init(shippingOrder:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = OUTLINED_FUNCTION_114(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v21);
  v22 = type metadata accessor for LocalizedStringResource();
  v23 = OUTLINED_FUNCTION_114(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_215();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  *v3 = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_18_11();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 8) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_254();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 24) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  OUTLINED_FUNCTION_76_5();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_112_3();
  *(v3 + 32) = EntityProperty<>.init(title:)();
  v26 = OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_19_9(v26);
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 40) = OUTLINED_FUNCTION_165_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_156_1(v27);
  v131 = "Location Address";
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 48) = EntityProperty<>.init(title:)();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySdSgGMd, &_s10AppIntents14EntityPropertyCySdSgGMR);
  OUTLINED_FUNCTION_150_1(v28);
  OUTLINED_FUNCTION_76_5();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 56) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_23_8();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 64) = OUTLINED_FUNCTION_165_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  v129 = "Order Tracking URL";
  OUTLINED_FUNCTION_66_3();
  v117 = 0xD000000000000015;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_143_1();
  *(v3 + 72) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_8("Shipping Person Names");
  OUTLINED_FUNCTION_228_0();
  *(v3 + 80) = OUTLINED_FUNCTION_165_1();
  v126 = "Shipping Location Name";
  v127 = 0xD000000000000010;
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 88) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_8("Shipping Address");
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 96) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_147_1();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_143_1();
  *(v3 + 104) = EntityProperty<>.init(title:)();
  v124 = "Shipping Phone Number";
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 112) = OUTLINED_FUNCTION_165_1();
  v121 = "Recipient Location Name";
  v122 = 0xD000000000000011;
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 120) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_8("Recipient Address");
  OUTLINED_FUNCTION_228_0();
  *(v3 + 128) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_33_8();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_143_1();
  *(v3 + 136) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_8("Recipient Phone Number");
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 144) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_8("Customer Addresses");
  OUTLINED_FUNCTION_228_0();
  *(v3 + 152) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_118_2();
  OUTLINED_FUNCTION_236();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 160) = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_149_1();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 168) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_140_0();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_112_3();
  *(v3 + 176) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_238_0();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 184) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 192) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 200) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 208) = OUTLINED_FUNCTION_261_0();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 216) = EntityProperty<>.init(title:)();
  v108 = xmmword_25DBC9410;
  *(v3 + 224) = xmmword_25DBC9410;
  Appointment.eventType.getter();
  Appointment.mailMessageId.getter();
  Appointment.startLocationName.getter();
  TicketedShow.startLocationName.getter();
  ShippingOrder.orderDate.getter();
  ShippingOrder.orderNumber.getter();
  ShippingOrder.orderTrackingURL.getter();
  ShippingOrder.orderCost.getter();
  v103 = v29;
  ShippingOrder.merchantName.getter();
  ShippingOrder.shippingPersonNames.getter();
  ShippingOrder.shippingLocationName.getter();
  ShippingOrder.shippingAddress.getter();
  ShippingOrder.shippingPhoneNumber.getter();
  ShippingOrder.recipientNames.getter();
  ShippingOrder.recipientLocationName.getter();
  ShippingOrder.recipientAddress.getter();
  v30 = ShippingOrder.recipientPhoneNumber.getter();
  OUTLINED_FUNCTION_242_0(v30, v31);
  ShippingOrder.customerNames.getter();
  ShippingOrder.customerAddresses.getter();

  ShippingOrder.customerPhoneNumbers.getter();

  v105 = ShippingOrder.carrierName.getter();
  v104 = v32;
  v107 = ShippingOrder.trackingNumber.getter();
  v106 = v33;
  OUTLINED_FUNCTION_213_0();
  ShippingOrder.shippingDate.getter();
  ShippingOrder.deliveryDate.getter();
  ShippingOrder.estimatedDeliveryStartDate.getter();
  ShippingOrder.estimatedDeliveryEndDate.getter();
  OUTLINED_FUNCTION_12_13();
  LocalizedStringResource.init(stringLiteral:)();
  v34 = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_59_5(v34, &v144[184]);
  OUTLINED_FUNCTION_18_11();
  LocalizedStringResource.init(stringLiteral:)();
  v35 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v35, &v144[200]);
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  v36 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v36, &v144[192]);
  OUTLINED_FUNCTION_254();
  LocalizedStringResource.init(stringLiteral:)();
  v37 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_176_1(v37);
  OUTLINED_FUNCTION_76_5();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_112_3();
  v38 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v38, &v144[176]);
  v39 = OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_19_9(v39);
  LocalizedStringResource.init(stringLiteral:)();
  v40 = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_145_1(v40);
  OUTLINED_FUNCTION_26_6(&v144[152]);
  LocalizedStringResource.init(stringLiteral:)();
  v41 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_156_1(v41);
  OUTLINED_FUNCTION_76_5();
  LocalizedStringResource.init(stringLiteral:)();
  v42 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v42, &v144[152]);
  OUTLINED_FUNCTION_23_8();
  LocalizedStringResource.init(stringLiteral:)();
  v43 = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_150_1(v43);
  OUTLINED_FUNCTION_26_6(&v144[136]);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_143_1();
  v44 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_160_1(v44);
  OUTLINED_FUNCTION_26_6(&v144[128]);
  OUTLINED_FUNCTION_228_0();
  v45 = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_180_1(v45);
  OUTLINED_FUNCTION_26_6(&v144[112]);
  LocalizedStringResource.init(stringLiteral:)();
  v46 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_114_3(v46);
  OUTLINED_FUNCTION_26_6(&v144[104]);
  LocalizedStringResource.init(stringLiteral:)();
  v47 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v47, &v144[112]);
  OUTLINED_FUNCTION_147_1();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_143_1();
  v48 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_162_1(v48);
  OUTLINED_FUNCTION_26_6(&v144[96]);
  LocalizedStringResource.init(stringLiteral:)();
  v49 = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_155_1(v49);
  OUTLINED_FUNCTION_26_6(&v144[72]);
  LocalizedStringResource.init(stringLiteral:)();
  v50 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_148_0(v50);
  OUTLINED_FUNCTION_26_6(&v144[64]);
  OUTLINED_FUNCTION_228_0();
  v51 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v51, &v144[72]);
  OUTLINED_FUNCTION_33_8();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_143_1();
  v52 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_197_1(v52);
  OUTLINED_FUNCTION_26_6(v53);
  LocalizedStringResource.init(stringLiteral:)();
  v115 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_26_6(&v144[48]);
  OUTLINED_FUNCTION_228_0();
  v54 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v54, &v144[16]);
  OUTLINED_FUNCTION_118_2();
  OUTLINED_FUNCTION_236();
  LocalizedStringResource.init(stringLiteral:)();
  v55 = OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_59_5(v55, &v144[56]);
  OUTLINED_FUNCTION_149_1();
  LocalizedStringResource.init(stringLiteral:)();
  v56 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v56, &v144[48]);
  OUTLINED_FUNCTION_140_0();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_112_3();
  v57 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_59_5(v57, &v144[40]);
  OUTLINED_FUNCTION_238_0();
  LocalizedStringResource.init(stringLiteral:)();
  v116 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_26_6(&v113);
  LocalizedStringResource.init(stringLiteral:)();
  v100 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_26_6(&v112);
  LocalizedStringResource.init(stringLiteral:)();
  v101 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_26_6(&v111);
  LocalizedStringResource.init(stringLiteral:)();
  v58 = OUTLINED_FUNCTION_261_0();
  OUTLINED_FUNCTION_59_5(v58, &v113);
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v102 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_35_10(&v105);
  OUTLINED_FUNCTION_15_10(&v104);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v107);
  OUTLINED_FUNCTION_15_10(&v106);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v108 + 8);
  OUTLINED_FUNCTION_15_10(&v108);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v110);
  OUTLINED_FUNCTION_15_10(&v109);
  EntityProperty.wrappedValue.setter();
  v59 = v110;
  outlined init with copy of Date?(v141, v110, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v60 = v111;
  OUTLINED_FUNCTION_171_0(v59, v111);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  outlined destroy of EagerResolutionService?(v61, v62, v63);
  OUTLINED_FUNCTION_35_10(&v115);
  OUTLINED_FUNCTION_15_10(&v114);
  EntityProperty.wrappedValue.setter();
  v64 = v112;
  outlined init with copy of Date?(v142, v112, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_131_2(&v144[8]);
  OUTLINED_FUNCTION_218_0(v65, v66);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_170_1(v64);
  OUTLINED_FUNCTION_35_10(&v117);
  v144[8] = v103 & 1;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v119);
  OUTLINED_FUNCTION_15_10(&v118);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v120);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v122);
  OUTLINED_FUNCTION_15_10(&v121);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v124);
  OUTLINED_FUNCTION_15_10(&v123);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v126);
  OUTLINED_FUNCTION_15_10(&v125);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v127);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v129);
  OUTLINED_FUNCTION_15_10(&v128);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v131);
  OUTLINED_FUNCTION_15_10(&v130);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v133);
  OUTLINED_FUNCTION_15_10(&v132);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v134);
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v136);
  OUTLINED_FUNCTION_15_10(&v135);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_35_10(&v138);
  OUTLINED_FUNCTION_15_10(&v137);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_171_0(v143, v59);
  v67 = OUTLINED_FUNCTION_241_0();
  OUTLINED_FUNCTION_171_0(v67, v68);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  outlined destroy of EagerResolutionService?(v69, v70, v71);
  v72 = v138;
  OUTLINED_FUNCTION_172_1(v138);
  v73 = OUTLINED_FUNCTION_241_0();
  OUTLINED_FUNCTION_201_1(v73, v74);
  EntityProperty.wrappedValue.setter();
  outlined destroy of EagerResolutionService?(v59, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v75 = v139;
  outlined init with copy of Date?(v139, v59, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of Date?(v59, v60, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  v76 = OUTLINED_FUNCTION_143_1();
  outlined destroy of EagerResolutionService?(v76, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v77 = v140;
  outlined init with copy of Date?(v140, v59, v100, &_s10Foundation4DateVSgMR);
  outlined init with copy of Date?(v59, v60, v100, &_s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  v78 = type metadata accessor for ShippingOrder();
  OUTLINED_FUNCTION_2(v78);
  (*(v79 + 8))(v1);
  memcpy(v144, v3, 0xF0uLL);
  outlined destroy of ShippingOrderEntity(v144);
  OUTLINED_FUNCTION_170_1(v59);
  OUTLINED_FUNCTION_170_1(v77);
  OUTLINED_FUNCTION_170_1(v75);
  OUTLINED_FUNCTION_170_1(v72);
  OUTLINED_FUNCTION_170_1(v143);
  outlined destroy of EagerResolutionService?(v142, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_170_1(v141);
  OUTLINED_FUNCTION_128_3(&v144[184]);
  *v3 = v81;
  *(v3 + 8) = v80;
  OUTLINED_FUNCTION_249_0();
  v82 = v123;
  *(v3 + 16) = v83;
  *(v3 + 24) = v82;
  OUTLINED_FUNCTION_136_2();
  *(v3 + 32) = v85;
  *(v3 + 40) = v84;
  OUTLINED_FUNCTION_124_3();
  *(v3 + 48) = v87;
  *(v3 + 56) = v86;
  OUTLINED_FUNCTION_139_2();
  *(v3 + 64) = v89;
  *(v3 + 72) = v88;
  OUTLINED_FUNCTION_192_1(&v144[128]);
  *(v3 + 80) = v91;
  *(v3 + 88) = v90;
  OUTLINED_FUNCTION_130_3(&v144[112]);
  *(v3 + 96) = v93;
  *(v3 + 104) = v92;
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_182_1();
  *(v3 + 112) = v95;
  *(v3 + 120) = v94;
  v96 = v120;
  *(v3 + 128) = v121;
  *(v3 + 136) = v96;
  v97 = v114;
  *(v3 + 144) = v115;
  *(v3 + 152) = v97;
  v98 = v118;
  *(v3 + 160) = v119;
  *(v3 + 168) = v98;
  v99 = v116;
  *(v3 + 176) = v117;
  *(v3 + 184) = v99;
  *(v3 + 192) = v100;
  *(v3 + 200) = v101;
  *(v3 + 208) = "Customer Phone Numbers";
  *(v3 + 216) = v102;
  *(v3 + 224) = v108;
  OUTLINED_FUNCTION_148();
}

double EventEntity.asNLGEntity.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EventEntity();
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v9 = (v8 - v7);
  EventEntity.representedEntity.getter();
  if (v24[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents0A6Entity_10OmniSearch15CardDisplayableAC22SpotlightItemProvidingpMd, &_s10AppIntents0A6Entity_10OmniSearch15CardDisplayableAC22SpotlightItemProvidingpMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B20NLGEntityConvertible_pMd, &_s10OmniSearch0B20NLGEntityConvertible_pMR);
    if (swift_dynamicCast())
    {
      if (*(&v26 + 1))
      {
        outlined init with take of ResponseOverrideMatcherProtocol(&v25, v28);
        v10 = v28[4];
        __swift_project_boxed_opaque_existential_1(v28, v28[3]);
        v11 = *(v10 + 8);
        v12 = OUTLINED_FUNCTION_34_11();
        v13(v12);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        return result;
      }
    }

    else
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
    }
  }

  else
  {
    outlined destroy of EagerResolutionService?(v24, &_s10AppIntents0A6Entity_10OmniSearch15CardDisplayableAC22SpotlightItemProvidingpSgMd, &_s10AppIntents0A6Entity_10OmniSearch15CardDisplayableAC22SpotlightItemProvidingpSgMR);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
  }

  outlined destroy of EagerResolutionService?(&v25, &_s10OmniSearch0B20NLGEntityConvertible_pSgMd, &_s10OmniSearch0B20NLGEntityConvertible_pSgMR);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logging.search);
  _s10OmniSearch0B10ResultItemOWOcTm_2(v1, v9, type metadata accessor for EventEntity);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 136315138;
    v20 = *v9;
    EntityProperty.wrappedValue.getter();
    switch(LOBYTE(v28[0]))
    {
      case 1:
      case 2:
      case 4:
      case 6:
      case 7:
        break;
      default:
        OUTLINED_FUNCTION_120_3();
        break;
    }

    OUTLINED_FUNCTION_7_13();
    _s10OmniSearch0B10ResultItemOWOhTm_3(v9, v22);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v18 + 4) = v23;
    _os_log_impl(&dword_25D85C000, v16, v17, "Failed to convert %s to SearchNLGEntity", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    OUTLINED_FUNCTION_7_13();
    _s10OmniSearch0B10ResultItemOWOhTm_3(v9, v21);
  }

  return SearchNLGEntity.init()(a1);
}

void FlightReservationEntity.asNLGEntity.getter()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[4];
  v14 = v0[8];
  v15 = v0[9];
  SearchNLGEntity.init()(v3);
  EntityProperty.wrappedValue.getter();
  v16 = v3[5];
  OUTLINED_FUNCTION_186_1(v28);
  EntityProperty.wrappedValue.getter();
  v17 = v3[9];
  OUTLINED_FUNCTION_186_1(v28);
  EntityProperty.wrappedValue.getter();
  type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = v3[6];
  OUTLINED_FUNCTION_171_0(v10, v1);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  outlined destroy of EagerResolutionService?(v23, v24, v25);
  EntityProperty.wrappedValue.getter();
  v26 = v3[8];
  OUTLINED_FUNCTION_186_1(v28);
  EntityProperty.wrappedValue.getter();
  v27 = v3[7];
  OUTLINED_FUNCTION_186_1(v28);
  OUTLINED_FUNCTION_148();
}

void HotelReservationEntity.asNLGEntity.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_34_11();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v6 = OUTLINED_FUNCTION_114(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v9);
  v10 = *v0;
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[6];
  SearchNLGEntity.init()(v2);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_169_1();
  EntityProperty.wrappedValue.getter();
  v14 = *(v2 + 96);
  OUTLINED_FUNCTION_111_2();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  outlined destroy of EagerResolutionService?(v15, v16, v17);
  EntityProperty.wrappedValue.getter();
  v18 = *(v2 + 104);
  OUTLINED_FUNCTION_111_2();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  outlined destroy of EagerResolutionService?(v19, v20, v21);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_110_2();
  OUTLINED_FUNCTION_148();
}

void RestaurantReservationEntity.asNLGEntity.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_34_11();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v6 = OUTLINED_FUNCTION_114(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_190_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_95_3();
  v10 = *v0;
  v11 = v0[4];
  v12 = v0[8];
  SearchNLGEntity.init()(v2);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_169_1();
  EntityProperty.wrappedValue.getter();
  v13 = *(v2 + 96);
  OUTLINED_FUNCTION_96_3();
  EntityProperty.wrappedValue.setter();
  v14 = OUTLINED_FUNCTION_78_4();
  outlined destroy of EagerResolutionService?(v14, v15, v16);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_110_2();
  OUTLINED_FUNCTION_148();
}

void VehicleReservationEntity.asNLGEntity.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_34_11();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v6 = OUTLINED_FUNCTION_114(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v9);
  v10 = v0[4];
  v11 = v0[7];
  v12 = v0[9];
  v13 = v0[11];
  SearchNLGEntity.init()(v2);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_169_1();
  EntityProperty.wrappedValue.getter();
  v14 = *(v2 + 96);
  OUTLINED_FUNCTION_111_2();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  outlined destroy of EagerResolutionService?(v15, v16, v17);
  EntityProperty.wrappedValue.getter();
  v18 = *(v2 + 104);
  OUTLINED_FUNCTION_111_2();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  outlined destroy of EagerResolutionService?(v19, v20, v21);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_110_2();
  OUTLINED_FUNCTION_148();
}

uint64_t TicketedTransportationEntity.asNLGEntity.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_34_11();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v6 = OUTLINED_FUNCTION_114(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_190_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_95_3();
  v10 = v1[2];
  v12 = v1[4];
  v11 = v1[5];
  SearchNLGEntity.init()(a1);
  EntityProperty.wrappedValue.getter();
  v13 = a1[12];
  OUTLINED_FUNCTION_96_3();
  EntityProperty.wrappedValue.setter();
  v14 = OUTLINED_FUNCTION_78_4();
  outlined destroy of EagerResolutionService?(v14, v15, v16);
  EntityProperty.wrappedValue.getter();
  v17 = a1[13];
  OUTLINED_FUNCTION_96_3();
  EntityProperty.wrappedValue.setter();
  v18 = OUTLINED_FUNCTION_78_4();
  outlined destroy of EagerResolutionService?(v18, v19, v20);
  EntityProperty.wrappedValue.getter();
  v21 = a1[11];
  return EntityProperty.wrappedValue.setter();
}

void TicketedShowEntity.asNLGEntity.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_34_11();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v6 = OUTLINED_FUNCTION_114(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_190_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_95_3();
  v10 = v0[4];
  v11 = v0[11];
  v12 = v0[12];
  SearchNLGEntity.init()(v2);
  EntityProperty.wrappedValue.getter();
  v13 = *(v2 + 96);
  OUTLINED_FUNCTION_96_3();
  EntityProperty.wrappedValue.setter();
  v14 = OUTLINED_FUNCTION_78_4();
  outlined destroy of EagerResolutionService?(v14, v15, v16);
  EntityProperty.wrappedValue.getter();
  v17 = *(v2 + 104);
  OUTLINED_FUNCTION_96_3();
  EntityProperty.wrappedValue.setter();
  v18 = OUTLINED_FUNCTION_78_4();
  outlined destroy of EagerResolutionService?(v18, v19, v20);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_110_2();
  OUTLINED_FUNCTION_148();
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_217_0();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_209_0();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_217_0();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_209_0();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_79_4();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_209_0();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_79_4();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_209_0();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_79_4();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_209_0();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type EventSubType and conformance EventSubType()
{
  result = lazy protocol witness table cache variable for type EventSubType and conformance EventSubType;
  if (!lazy protocol witness table cache variable for type EventSubType and conformance EventSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSubType and conformance EventSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventSubType and conformance EventSubType;
  if (!lazy protocol witness table cache variable for type EventSubType and conformance EventSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSubType and conformance EventSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventSubType and conformance EventSubType;
  if (!lazy protocol witness table cache variable for type EventSubType and conformance EventSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSubType and conformance EventSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventSubType and conformance EventSubType;
  if (!lazy protocol witness table cache variable for type EventSubType and conformance EventSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSubType and conformance EventSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventSubType and conformance EventSubType;
  if (!lazy protocol witness table cache variable for type EventSubType and conformance EventSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSubType and conformance EventSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventSubType and conformance EventSubType;
  if (!lazy protocol witness table cache variable for type EventSubType and conformance EventSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSubType and conformance EventSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventSubType and conformance EventSubType;
  if (!lazy protocol witness table cache variable for type EventSubType and conformance EventSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSubType and conformance EventSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventSubType and conformance EventSubType;
  if (!lazy protocol witness table cache variable for type EventSubType and conformance EventSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSubType and conformance EventSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventSubType and conformance EventSubType;
  if (!lazy protocol witness table cache variable for type EventSubType and conformance EventSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSubType and conformance EventSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventSubType and conformance EventSubType;
  if (!lazy protocol witness table cache variable for type EventSubType and conformance EventSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSubType and conformance EventSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventSubType and conformance EventSubType;
  if (!lazy protocol witness table cache variable for type EventSubType and conformance EventSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSubType and conformance EventSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventSubType and conformance EventSubType;
  if (!lazy protocol witness table cache variable for type EventSubType and conformance EventSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSubType and conformance EventSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventSubType and conformance EventSubType;
  if (!lazy protocol witness table cache variable for type EventSubType and conformance EventSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSubType and conformance EventSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventSubType and conformance EventSubType;
  if (!lazy protocol witness table cache variable for type EventSubType and conformance EventSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSubType and conformance EventSubType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity()
{
  result = lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity;
  if (!lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity;
  if (!lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity;
  if (!lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity;
  if (!lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity;
  if (!lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity;
  if (!lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity;
  if (!lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity;
  if (!lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity;
  if (!lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity;
  if (!lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrderEntity and conformance ShippingOrderEntity);
  }

  return result;
}

uint64_t outlined init with take of EventEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s10OmniSearch0B10ResultItemOWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_29_7()
{
  v3 = *(v2 + 16);
  result = v1;
  v5 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_12@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 224) = v1;
  *(v2 - 216) = v3;
  return v2 - 224;
}

uint64_t OUTLINED_FUNCTION_40_9()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_41_5@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 960) = v1;
  *(v2 + 968) = a1;
  return v2 + 960;
}

uint64_t OUTLINED_FUNCTION_43_7()
{

  return DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
}

uint64_t OUTLINED_FUNCTION_45_6@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 240) = v1;
  *(v2 - 232) = v3;
  return v2 - 240;
}

uint64_t OUTLINED_FUNCTION_48_4()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_53_5()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_56_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_63_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 216) = v1;
  *(v2 - 208) = v3;
  return v2 - 216;
}

uint64_t OUTLINED_FUNCTION_65_5()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

void OUTLINED_FUNCTION_70_5()
{
  v1 = v0[29];
  v0[120] = v0[30];
  v0[121] = v1;
  v2 = v0[27];
  v0[122] = v0[28];
  v0[123] = v2;
  v3 = v0[25];
  v0[124] = v0[26];
  v0[125] = v3;
  v4 = v0[23];
  v0[126] = v0[24];
  v0[127] = v4;
  v5 = v0[21];
  v0[128] = v0[22];
  v0[129] = v5;
  v6 = v0[19];
  v0[130] = v0[20];
  v0[131] = v6;
  v7 = v0[17];
  v0[132] = v0[18];
  v0[133] = v7;
  v8 = v0[15];
  v0[134] = v0[16];
  v0[135] = v8;
  v9 = v0[13];
  v0[136] = v0[14];
  v0[137] = v9;
  v10 = v0[11];
  v0[138] = v0[12];
  v0[139] = v10;
  v11 = v0[9];
  v0[140] = v0[10];
  v0[141] = v11;
  v12 = v0[7];
  v0[142] = v0[8];
  v0[143] = v12;
  v0[144] = v0[6];
}

uint64_t OUTLINED_FUNCTION_80_5(uint64_t result, uint64_t a2)
{
  *(v2 - 552) = result;
  *(v2 - 560) = a2;
  return result;
}

void OUTLINED_FUNCTION_87_4(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 224) = v1;
  *(v2 - 216) = v3;
}

uint64_t OUTLINED_FUNCTION_88_4()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_94_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 200) = v1;
  *(v2 - 192) = v3;
  return v2 - 200;
}

uint64_t OUTLINED_FUNCTION_96_3()
{

  return outlined init with copy of Date?(v3, v2, v0, v1);
}

void OUTLINED_FUNCTION_99_4(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  v2[2] = v1;
  v2[3] = v4;
  v5 = *(v3 - 288);
  v2[4] = *(v3 - 280);
  v2[5] = v5;
  v6 = *(v3 - 304);
  v2[6] = *(v3 - 296);
  v2[7] = v6;
}

uint64_t OUTLINED_FUNCTION_110_2()
{
  v3 = *(v0 + 88);
  *(v1 - 96) = *(v1 - 96);

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_111_2()
{

  return outlined init with copy of Date?(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_116_2()
{

  return _s10OmniSearch0B10ResultItemOWOhTm_3(v0, type metadata accessor for SearchResult);
}

uint64_t OUTLINED_FUNCTION_119_1()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  return v0 - 224;
}

uint64_t OUTLINED_FUNCTION_132_2(uint64_t a1)
{

  return outlined init with copy of Date?(a1, v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_135_2(uint64_t result, uint64_t a2)
{
  *(v2 - 568) = result;
  *(v2 - 576) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_137_1(uint64_t result, uint64_t a2)
{
  *(v2 - 536) = result;
  *(v2 - 544) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_138_1(uint64_t result, uint64_t a2)
{
  *(v2 - 600) = result;
  *(v2 - 608) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_141_1()
{

  return outlined destroy of EagerResolutionService?(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_152_1()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_165_1()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_166_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_167_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_168_1()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_169_1()
{
  v3 = *(v0 + 80);
  *(v1 - 96) = *(v1 - 96);

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_170_1(uint64_t a1)
{

  return outlined destroy of EagerResolutionService?(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_171_0(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of Date?(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_172_1(uint64_t a1)
{

  return outlined init with copy of Date?(a1, v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_174_1(uint64_t a1)
{

  return outlined destroy of EagerResolutionService?(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_175_1()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_177_1(uint64_t a1)
{

  return outlined init with copy of Date?(a1, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_178_1()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_183_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_185_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_186_1(__n128 a1)
{
  *(v1 - 96) = a1;

  return EntityProperty.wrappedValue.setter();
}

void OUTLINED_FUNCTION_187_1()
{
}