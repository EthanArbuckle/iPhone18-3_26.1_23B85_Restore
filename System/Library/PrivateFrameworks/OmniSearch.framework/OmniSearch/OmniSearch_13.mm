void type metadata accessor for EntityProperty<String?>()
{
  if (!lazy cache variable for type metadata for EntityProperty<String?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityProperty<String?>);
    }
  }
}

void type metadata accessor for EntityProperty<String>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for EntityProperty();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Bool and conformance Bool()
{
  result = lazy protocol witness table cache variable for type Bool and conformance Bool;
  if (!lazy protocol witness table cache variable for type Bool and conformance Bool)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Bool and conformance Bool);
  }

  return result;
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t type metadata completion function for SearchAppEntity.Builder()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for SFCard?();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      type metadata accessor for SearchResult?();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void type metadata accessor for SFCard?()
{
  if (!lazy cache variable for type metadata for SFCard?)
  {
    type metadata accessor for TRIClient(255, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SFCard?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchAppEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_15()
{
  v3 = *(v1 + 136);

  return _s10OmniSearch0B6ResultVWOcTm_4(v0, v3, type metadata accessor for SearchResultItem);
}

uint64_t OUTLINED_FUNCTION_19_11()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return _s10OmniSearch0B6ResultVWOhTm_3();
}

uint64_t OUTLINED_FUNCTION_22_11()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_28_10(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_38_12(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return outlined init with copy of ResourceBundle?(a12 + v13, v12, a3, a4);
}

uint64_t OUTLINED_FUNCTION_42_8()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_43_8()
{
}

uint64_t OUTLINED_FUNCTION_46_10()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t SearchEntity.source.getter()
{
  v1 = *v0;
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchEntity.source : SearchEntity(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchEntity.source.setter();
}

uint64_t (*SearchEntity.source.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchEntity.type : SearchEntity(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultType();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return SearchEntity.type.setter();
}

uint64_t SearchEntity.type.setter()
{
  OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchResultType();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v7 = *(v0 + 8);
  OUTLINED_FUNCTION_93_5();
  v8 = OUTLINED_FUNCTION_1_28();
  v9(v8);
  EntityProperty.wrappedValue.setter();
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_32_0();
  return v12(v11);
}

uint64_t (*SearchEntity.type.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchEntity.appEntity.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_50_7();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v8, v9, &_s10OmniSearch0B9AppEntityVSgMR);
}

uint64_t (*SearchEntity.appEntity.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t key path setter for SearchEntity.answer : SearchEntity(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of SpotlightRankingItem?(__dst, &v3, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
  return SearchEntity.answer.setter(__src);
}

uint64_t SearchEntity.answer.setter(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = *(v1 + 24);
  return EntityProperty.wrappedValue.setter();
}

uint64_t (*SearchEntity.answer.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchEntity.appEntity : SearchEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74_2();
  v15 = OUTLINED_FUNCTION_64_0();
  outlined init with copy of SpotlightRankingItem?(v15, v16, a5, a6);
  return a7(v7);
}

uint64_t SearchEntity.globalResult.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 32);
  OUTLINED_FUNCTION_50_7();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v8, v9, &_s10OmniSearch0B12GlobalEntityVSgMR);
}

uint64_t (*SearchEntity.globalResult.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchEntity.spotlightResult.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 40);
  OUTLINED_FUNCTION_50_7();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v8, v9, &_s10OmniSearch0B15SpotlightEntityVSgMR);
}

uint64_t (*SearchEntity.spotlightResult.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchEntity.event.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 48);
  OUTLINED_FUNCTION_50_7();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v8, v9, &_s10OmniSearch11EventEntityVSgMR);
}

uint64_t (*SearchEntity.event.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchEntity.idCard.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 56);
  OUTLINED_FUNCTION_50_7();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v8, v9, &_s10OmniSearch12IdCardEntityVSgMR);
}

uint64_t (*SearchEntity.idCard.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

double key path getter for SearchEntity.media : SearchEntity@<D0>(_OWORD *a1@<X8>)
{
  SearchEntity.media.getter();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t key path setter for SearchEntity.media : SearchEntity(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  *&v7 = *a1;
  *(&v7 + 1) = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  outlined copy of MediaEntity?(v7, v1, v2, v3, v4, v5);
  return SearchEntity.media.setter(&v7);
}

uint64_t SearchEntity.media.setter(__int128 *a1)
{
  v2 = *(v1 + 64);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  return EntityProperty.wrappedValue.setter();
}

uint64_t (*SearchEntity.media.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchEntity.shouldOpen.getter()
{
  v1 = *(v0 + 72);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t SearchEntity.shouldOpen.setter()
{
  v1 = *(v0 + 72);
  EntityProperty.wrappedValue.setter();
  return SearchEntity.shouldOpen.didset();
}

uint64_t SearchEntity.shouldOpen.didset()
{
  v2 = v0;
  v3 = type metadata accessor for SearchAppEntity(0);
  v4 = OUTLINED_FUNCTION_17(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_59_4();
  v14 = *(v0 + 16);
  EntityProperty.wrappedValue.getter();
  v15 = OUTLINED_FUNCTION_93_0();
  if (__swift_getEnumTagSinglePayload(v15, v16, v3))
  {
    return outlined destroy of IntentApplication?(v1, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  }

  OUTLINED_FUNCTION_16_16();
  v18 = OUTLINED_FUNCTION_1_28();
  _s10OmniSearch0B6EntityVWOcTm_0(v18, v19, v20);
  outlined destroy of IntentApplication?(v1, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  v21 = *(v2 + 72);
  EntityProperty.wrappedValue.getter();
  v22 = *(v9 + 32);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_8_15();
  return _s10OmniSearch0B6EntityVWOhTm_0();
}

uint64_t (*SearchEntity.shouldOpen.modify(uint64_t a1))(uint64_t *a1)
{
  v3 = *(v1 + 72);
  *a1 = v1;
  *(a1 + 8) = v3;
  EntityProperty.wrappedValue.getter();
  *(a1 + 16) = *(a1 + 17);
  return SearchEntity.shouldOpen.modify;
}

uint64_t SearchEntity.shouldOpen.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  EntityProperty.wrappedValue.setter();
  return SearchEntity.shouldOpen.didset();
}

uint64_t SearchEntity.experienceFile.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 80);
  OUTLINED_FUNCTION_50_7();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v8, v9, &_s10AppIntents10IntentFileVSgMR);
}

uint64_t (*SearchEntity.experienceFile.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 80);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path getter for SearchEntity.hydratedEntityType : SearchEntity@<X0>(_BYTE *a1@<X8>)
{
  result = SearchEntity.hydratedEntityType.getter();
  *a1 = v3;
  return result;
}

uint64_t SearchEntity.hydratedEntityType.setter(char *a1)
{
  v2 = *(v1 + 88);
  v4 = *a1;
  return EntityProperty.wrappedValue.setter();
}

uint64_t (*SearchEntity.hydratedEntityType.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 88);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchEntity.hydratedContent.getter()
{
  v1 = *(v0 + 96);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchEntity.hydratedContent.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 96);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchEntity.supportedTypeIdentifiersForExport.getter()
{
  v1 = *(v0 + 104);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchEntity.supportedTypeIdentifiersForExport : SearchEntity(uint64_t *a1)
{
  v1 = *a1;

  return SearchEntity.supportedTypeIdentifiersForExport.setter();
}

uint64_t (*SearchEntity.supportedTypeIdentifiersForExport.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 104);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchEntity.inAppSearchString.getter()
{
  v1 = *(v0 + 112);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchEntity.inAppSearchString.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 112);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchEntity.requestedProperties.getter()
{
  v1 = *(v0 + 120);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchEntity.requestedProperties : SearchEntity(uint64_t *a1)
{
  v1 = *a1;

  return SearchEntity.requestedProperties.setter();
}

uint64_t (*SearchEntity.requestedProperties.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 120);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchEntity.associatedQuery.getter()
{
  v1 = *(v0 + 128);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchEntity.hydratedContent : SearchEntity(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  v8 = OUTLINED_FUNCTION_34_11();
  return a5(v8);
}

uint64_t SearchEntity.associatedQuery.setter()
{
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_53_4();
  return SearchEntity.associatedQuery.didset();
}

uint64_t SearchEntity.associatedQuery.didset()
{
  v2 = v0;
  v3 = type metadata accessor for SearchGlobalEntity(0);
  v4 = OUTLINED_FUNCTION_17(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_59_4();
  v14 = *(v0 + 32);
  EntityProperty.wrappedValue.getter();
  v15 = OUTLINED_FUNCTION_93_0();
  if (__swift_getEnumTagSinglePayload(v15, v16, v3))
  {
    return outlined destroy of IntentApplication?(v1, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  }

  OUTLINED_FUNCTION_20_8();
  v18 = OUTLINED_FUNCTION_1_28();
  _s10OmniSearch0B6EntityVWOcTm_0(v18, v19, v20);
  outlined destroy of IntentApplication?(v1, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  v21 = *(v2 + 128);
  EntityProperty.wrappedValue.getter();
  v22 = *(v9 + 488);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_14_10();
  return _s10OmniSearch0B6EntityVWOhTm_0();
}

void (*SearchEntity.associatedQuery.modify())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_32_1(v2);
  *(v3 + 32) = v0;
  *(v3 + 40) = *(v0 + 128);
  EntityProperty.wrappedValue.getter();
  *v1 = v1[1];
  return SearchEntity.associatedQuery.modify;
}

void SearchEntity.associatedQuery.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v6 = v2[4];
  v5 = v2[5];
  v2[3] = v3;
  if (a2)
  {

    EntityProperty.wrappedValue.setter();
    SearchEntity.associatedQuery.didset();
    v7 = v2[1];
  }

  else
  {
    EntityProperty.wrappedValue.setter();
    SearchEntity.associatedQuery.didset();
  }

  free(v2);
}

void SearchEntity.snippetPluginModel.getter(uint64_t a1@<X8>)
{
  v2 = SearchEntity.card.getter();
  if (v2)
  {
    v7 = v2;
    SFCard.snippetPluginModel.getter(a1);
  }

  else
  {
    type metadata accessor for RGPluginModel();
    OUTLINED_FUNCTION_92();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t SearchEntity.card.getter()
{
  SearchEntity.representedEntity.getter();
  if (!v7)
  {
    outlined destroy of IntentApplication?(v6, &_s10AppIntents0A6Entity_pSgMd, &_s10AppIntents0A6Entity_pSgMR);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents0A6Entity_pMd, &_s10AppIntents0A6Entity_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17CardRepresentable_pMd, &_s10OmniSearch17CardRepresentable_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_7;
  }

  if (!*(&v9 + 1))
  {
LABEL_7:
    outlined destroy of IntentApplication?(&v8, &_s10OmniSearch17CardRepresentable_pSgMd, &_s10OmniSearch17CardRepresentable_pSgMR);
    return 0;
  }

  v0 = v10;
  __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_32_0();
  v4 = v3(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(&v8);
  return v4;
}

void SearchEntity.representedEntity.getter()
{
  OUTLINED_FUNCTION_155();
  v4 = v0;
  v106 = v5;
  v6 = type metadata accessor for SearchEntity(0);
  v7 = OUTLINED_FUNCTION_114(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  v104 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_49_3();
  *&v105 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  OUTLINED_FUNCTION_114(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v19);
  v21 = v102 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
  OUTLINED_FUNCTION_114(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_136_4();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
  OUTLINED_FUNCTION_114(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_59_4();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  OUTLINED_FUNCTION_114(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_112_5();
  v34 = type metadata accessor for SearchResultType();
  v35 = OUTLINED_FUNCTION_14(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39_0();
  v102[1] = v40;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v41);
  v43 = v102 - v42;
  v44 = v0[1];
  EntityProperty.wrappedValue.getter();
  v103 = v37;
  v45 = (*(v37 + 88))(v43, v34);
  if (v45 == *MEMORY[0x277D37080])
  {
    v46 = v4[2];
    EntityProperty.wrappedValue.getter();
    v47 = type metadata accessor for SearchAppEntity(0);
    OUTLINED_FUNCTION_166(v2, 1, v47);
    if (!v48)
    {
      OUTLINED_FUNCTION_115_3();
      OUTLINED_FUNCTION_18_13();
      v56 = _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v54, v55);
      OUTLINED_FUNCTION_124_5(v56);
      OUTLINED_FUNCTION_24_11();
      v59 = v2;
LABEL_9:
      outlined init with take of SearchSpotlightEntity(v59, v57, v58);
      goto LABEL_15;
    }

    v49 = &_s10OmniSearch0B9AppEntityVSgMd;
    v50 = &_s10OmniSearch0B9AppEntityVSgMR;
    v51 = v2;
    goto LABEL_5;
  }

  if (v45 == *MEMORY[0x277D37060])
  {
    v53 = v4[3];
    EntityProperty.wrappedValue.getter();
    memcpy(v108, v107, 0x88uLL);
    if (_s10OmniSearch0B7ContextVSgWOg(v108) != 1)
    {
      v62 = v106;
      v106[3] = &type metadata for SearchAnswerEntity;
      v62[4] = lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();
      v63 = swift_allocObject();
      *v62 = v63;
      memcpy((v63 + 16), v108, 0x88uLL);
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (v45 == *MEMORY[0x277D37068])
  {
    v60 = v4[4];
    EntityProperty.wrappedValue.getter();
    type metadata accessor for SearchGlobalEntity(0);
    v61 = OUTLINED_FUNCTION_117_4();
    OUTLINED_FUNCTION_166(v61, 1, v60);
    if (!v48)
    {
      OUTLINED_FUNCTION_115_3();
      OUTLINED_FUNCTION_10_15();
      v70 = _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v68, v69);
      OUTLINED_FUNCTION_124_5(v70);
      OUTLINED_FUNCTION_23_13();
      v59 = v21;
      goto LABEL_9;
    }

    v49 = &_s10OmniSearch0B12GlobalEntityVSgMd;
    v50 = &_s10OmniSearch0B12GlobalEntityVSgMR;
    v51 = v21;
    goto LABEL_5;
  }

  if (v45 == *MEMORY[0x277D37088])
  {
    v64 = v4[5];
    v1 = v105;
    EntityProperty.wrappedValue.getter();
    v65 = type metadata accessor for SearchSpotlightEntity(0);
    v66 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_166(v66, v67, v65);
    if (!v48)
    {
      OUTLINED_FUNCTION_115_3();
      OUTLINED_FUNCTION_9_18();
      v75 = _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v73, v74);
      v57 = OUTLINED_FUNCTION_124_5(v75);
      v76 = type metadata accessor for SearchSpotlightEntity;
LABEL_25:
      v58 = v76;
      v59 = v1;
      goto LABEL_9;
    }

    v49 = &_s10OmniSearch0B15SpotlightEntityVSgMd;
    v50 = &_s10OmniSearch0B15SpotlightEntityVSgMR;
LABEL_20:
    v51 = v1;
LABEL_5:
    outlined destroy of IntentApplication?(v51, v49, v50);
    v52 = v106;
    *v106 = 0u;
    *(v52 + 1) = 0u;
    v52[4] = 0;
    goto LABEL_15;
  }

  if (v45 == *MEMORY[0x277D37050])
  {
    v71 = v4[6];
    EntityProperty.wrappedValue.getter();
    v72 = type metadata accessor for EventEntity();
    OUTLINED_FUNCTION_166(v3, 1, v72);
    if (!v48)
    {
      OUTLINED_FUNCTION_115_3();
      OUTLINED_FUNCTION_17_16();
      v83 = _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v81, v82);
      OUTLINED_FUNCTION_124_5(v83);
      OUTLINED_FUNCTION_68_6();
      v59 = v3;
      goto LABEL_9;
    }

    v49 = &_s10OmniSearch11EventEntityVSgMd;
    v50 = &_s10OmniSearch11EventEntityVSgMR;
    v51 = v3;
    goto LABEL_5;
  }

  if (v45 == *MEMORY[0x277D37070])
  {
    v77 = v4[7];
    EntityProperty.wrappedValue.getter();
    v78 = type metadata accessor for IdCardEntity();
    v79 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_166(v79, v80, v78);
    if (!v48)
    {
      OUTLINED_FUNCTION_115_3();
      OUTLINED_FUNCTION_15_14();
      v91 = _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v89, v90);
      v57 = OUTLINED_FUNCTION_124_5(v91);
      v76 = type metadata accessor for IdCardEntity;
      goto LABEL_25;
    }

    v49 = &_s10OmniSearch12IdCardEntityVSgMd;
    v50 = &_s10OmniSearch12IdCardEntityVSgMR;
    goto LABEL_20;
  }

  if (v45 == *MEMORY[0x277D37058])
  {
    v84 = v4[8];
    EntityProperty.wrappedValue.getter();
    v85 = v108[0];
    if (v108[0])
    {
      v86 = v108[5];
      v105 = *&v108[3];
      v87 = v106;
      v106[3] = &type metadata for MediaEntity;
      v87[4] = lazy protocol witness table accessor for type MediaEntity and conformance MediaEntity();
      v88 = swift_allocObject();
      *v87 = v88;
      *(v88 + 16) = v85;
      *(v88 + 24) = *&v108[1];
      *(v88 + 40) = v105;
      *(v88 + 56) = v86;
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (v45 == *MEMORY[0x277D37078])
  {
LABEL_8:
    OUTLINED_FUNCTION_132_4();
    goto LABEL_15;
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v92, static Logging.search);
  OUTLINED_FUNCTION_4_20();
  v93 = v104;
  _s10OmniSearch0B6EntityVWOcTm_0(v4, v104, v94);
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v95, v96))
  {
    OUTLINED_FUNCTION_28_3();
    v97 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v98 = swift_slowAlloc();
    v108[0] = v98;
    *v97 = 136315138;
    v99 = *(v93 + 8);
    EntityProperty.wrappedValue.getter();
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_3_24();
    _s10OmniSearch0B6EntityVWOhTm_0();
    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v97 + 4) = v100;
    _os_log_impl(&dword_25D85C000, v95, v96, "Unexpected entity type! %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    OUTLINED_FUNCTION_3_24();
    _s10OmniSearch0B6EntityVWOhTm_0();
  }

  v101 = OUTLINED_FUNCTION_132_4();
  (*(v103 + 8))(v43, v34, v101);
LABEL_15:
  OUTLINED_FUNCTION_148();
}

uint64_t SearchEntity.sourceResult.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchEntity(v0);
  return OUTLINED_FUNCTION_108_3(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, *(v1 + 84));
}

uint64_t SearchEntity.sourceResult.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchEntity(v0);
  return OUTLINED_FUNCTION_107_3(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, *(v1 + 84));
}

uint64_t SearchEntity.sourceResult.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity(v0) + 84);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.llmConsumableDescription.getter()
{
  v0 = type metadata accessor for SearchEntity(0);
  OUTLINED_FUNCTION_60_5(*(v0 + 88));
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchEntity.llmConsumableDescription.setter()
{
  v3 = OUTLINED_FUNCTION_78_7();
  v4 = (v1 + *(type metadata accessor for SearchEntity(v3) + 88));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t SearchEntity.llmConsumableDescription.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity(v0) + 88);
  return OUTLINED_FUNCTION_35_3();
}

void SearchEntity.init()()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_113();
  v33 = type metadata accessor for UUID();
  v2 = OUTLINED_FUNCTION_14(v33);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = OUTLINED_FUNCTION_114(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_74_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_109_5();
  LocalizedStringResource.init(stringLiteral:)();
  *v0 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy15OmniSearchTypes0F10ResultTypeOGMd, &_s10AppIntents14EntityPropertyCy15OmniSearchTypes0F10ResultTypeOGMR);
  OUTLINED_FUNCTION_114_5();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_29_9();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v11, v12);
  OUTLINED_FUNCTION_75_5();
  v0[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0faC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0faC0VSgGMR);
  OUTLINED_FUNCTION_28_9();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_18_13();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v13, v14);
  OUTLINED_FUNCTION_75_5();
  v0[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMR);
  OUTLINED_FUNCTION_89_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();
  OUTLINED_FUNCTION_75_5();
  v0[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0f6GlobalC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0f6GlobalC0VSgGMR);
  OUTLINED_FUNCTION_33_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_10_15();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v15, v16);
  OUTLINED_FUNCTION_75_5();
  v0[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0f9SpotlightC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0f9SpotlightC0VSgGMR);
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_9_18();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v17, v18);
  OUTLINED_FUNCTION_75_5();
  v0[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch05EventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch05EventC0VSgGMR);
  OUTLINED_FUNCTION_36_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_16();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v19, v20);
  OUTLINED_FUNCTION_75_5();
  v0[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch06IdCardC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch06IdCardC0VSgGMR);
  OUTLINED_FUNCTION_32_14();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_15_14();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v21, v22);
  OUTLINED_FUNCTION_75_5();
  v0[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch05MediaC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch05MediaC0VSgGMR);
  OUTLINED_FUNCTION_90_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type MediaEntity and conformance MediaEntity();
  OUTLINED_FUNCTION_75_5();
  v0[8] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
  OUTLINED_FUNCTION_5_16();
  LocalizedStringResource.init(stringLiteral:)();
  v0[9] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v0[10] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch08HydratedC4TypeOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch08HydratedC4TypeOSgGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HydratedEntityType and conformance HydratedEntityType();
  OUTLINED_FUNCTION_75_5();
  v0[11] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  v0[12] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v0[13] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v0[14] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_27_11();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v23, v24);
  OUTLINED_FUNCTION_75_5();
  v0[15] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  v0[16] = EntityProperty<>.init(title:)();
  v25 = type metadata accessor for SearchEntity(0);
  v26 = v25[21];
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = v25[23];
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + v31) = EntityProperty<>.init(title:)();
  v32 = (v0 + v25[22]);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  UUID.init()();
  UUID.uuidString.getter();
  OUTLINED_FUNCTION_142_1();
  (*(v4 + 8))(v1, v33);
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  SearchEntity.shouldOpen.didset();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_148();
}

uint64_t SearchEntity.id.setter()
{
  v1 = OUTLINED_FUNCTION_78_7();
  v2 = *(v0 + *(type metadata accessor for SearchEntity(v1) + 92));
  return EntityProperty.wrappedValue.setter();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchEntity.validateParameters()()
{
  v2 = type metadata accessor for SearchEntity(0);
  v3 = OUTLINED_FUNCTION_114(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_3();
  v85 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_3();
  v90 = v11;
  v12 = OUTLINED_FUNCTION_78_0();
  v89 = type metadata accessor for SearchSpotlightEntity(v12);
  v13 = OUTLINED_FUNCTION_17(v89);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_3();
  v87 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  OUTLINED_FUNCTION_114(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_49_3();
  v92 = v21;
  v22 = OUTLINED_FUNCTION_78_0();
  v91 = type metadata accessor for SearchGlobalEntity(v22);
  v23 = OUTLINED_FUNCTION_17(v91);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_3();
  v88 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  OUTLINED_FUNCTION_114(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_59_4();
  v31 = type metadata accessor for SearchAppEntity(0);
  v32 = OUTLINED_FUNCTION_17(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_36();
  v37 = v36 - v35;
  v38 = type metadata accessor for SearchResultType();
  v39 = OUTLINED_FUNCTION_14(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_39_0();
  v83 = v44;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v45);
  v47 = &v83 - v46;
  v48 = v0;
  v49 = v0[1];
  EntityProperty.wrappedValue.getter();
  v84 = v41;
  v50 = *(v41 + 88);
  v86 = v38;
  v51 = v50(v47, v38);
  if (v51 == *MEMORY[0x277D37080])
  {
    v52 = v48[2];
    EntityProperty.wrappedValue.getter();
    v53 = OUTLINED_FUNCTION_93_0();
    if (__swift_getEnumTagSinglePayload(v53, v54, v31) == 1)
    {
      v55 = &_s10OmniSearch0B9AppEntityVSgMd;
      v56 = &_s10OmniSearch0B9AppEntityVSgMR;
LABEL_4:
      outlined destroy of IntentApplication?(v1, v55, v56);
LABEL_7:
      lazy protocol witness table accessor for type SearchToolError and conformance SearchToolError();
      swift_allocError();
      *v58 = 0;
      v58[1] = 0;
      swift_willThrow();
      return;
    }

    OUTLINED_FUNCTION_24_11();
    outlined init with take of SearchSpotlightEntity(v1, v37, v59);
    SearchAppEntity.validateParameters()();
    OUTLINED_FUNCTION_8_15();
    goto LABEL_28;
  }

  if (v51 == *MEMORY[0x277D37060])
  {
    v57 = v48[3];
    EntityProperty.wrappedValue.getter();
    memcpy(v94, v93, sizeof(v94));
    memcpy(__dst, v93, 0x88uLL);
    if (_s10OmniSearch0B7ContextVSgWOg(__dst) == 1)
    {
      goto LABEL_7;
    }

    memcpy(v93, __dst, sizeof(v93));
    SearchAnswerEntity.validateParameters()();
    outlined destroy of IntentApplication?(v94, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
  }

  else
  {
    if (v51 == *MEMORY[0x277D37068])
    {
      v60 = v48[4];
      v1 = v92;
      EntityProperty.wrappedValue.getter();
      v61 = OUTLINED_FUNCTION_93_0();
      if (__swift_getEnumTagSinglePayload(v61, v62, v91) == 1)
      {
        v55 = &_s10OmniSearch0B12GlobalEntityVSgMd;
        v56 = &_s10OmniSearch0B12GlobalEntityVSgMR;
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_23_13();
      outlined init with take of SearchSpotlightEntity(v1, v88, v66);
      SearchGlobalEntity.validateParameters()();
      goto LABEL_28;
    }

    if (v51 == *MEMORY[0x277D37088])
    {
      v63 = v48[5];
      v1 = v90;
      EntityProperty.wrappedValue.getter();
      v64 = OUTLINED_FUNCTION_93_0();
      if (__swift_getEnumTagSinglePayload(v64, v65, v89) == 1)
      {
        v55 = &_s10OmniSearch0B15SpotlightEntityVSgMd;
        v56 = &_s10OmniSearch0B15SpotlightEntityVSgMR;
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_69_6();
      outlined init with take of SearchSpotlightEntity(v1, v87, v70);
      SearchSpotlightEntity.validateParameters()();
LABEL_28:
      _s10OmniSearch0B6EntityVWOhTm_0();
      return;
    }

    if (v51 == *MEMORY[0x277D37050] || v51 == *MEMORY[0x277D37070] || v51 == *MEMORY[0x277D37058])
    {
      SearchEntity.representedEntity.getter();
      v69 = __dst[3];
      outlined destroy of IntentApplication?(__dst, &_s10AppIntents0A6Entity_pSgMd, &_s10AppIntents0A6Entity_pSgMR);
      if (!v69)
      {
        goto LABEL_7;
      }
    }

    else if (v51 != *MEMORY[0x277D37078])
    {
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      __swift_project_value_buffer(v71, static Logging.search);
      OUTLINED_FUNCTION_4_20();
      v72 = v85;
      _s10OmniSearch0B6EntityVWOcTm_0(v48, v85, v73);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      v76 = os_log_type_enabled(v74, v75);
      v77 = v86;
      if (v76)
      {
        OUTLINED_FUNCTION_28_3();
        v78 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v92 = swift_slowAlloc();
        __dst[0] = v92;
        *v78 = 136315138;
        v79 = *(v72 + 8);
        EntityProperty.wrappedValue.getter();
        v80 = String.init<A>(describing:)();
        OUTLINED_FUNCTION_3_24();
        _s10OmniSearch0B6EntityVWOhTm_0();
        OUTLINED_FUNCTION_79_6();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_117_4();
        v77 = v86;

        *(v78 + 4) = v80;
        _os_log_impl(&dword_25D85C000, v74, v75, "Unhandled entity type! %s - no validation", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v92);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050](v81);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050](v82);
      }

      else
      {

        OUTLINED_FUNCTION_3_24();
        _s10OmniSearch0B6EntityVWOhTm_0();
      }

      (*(v84 + 8))(v47, v77);
    }
  }
}

void SearchEntity.init(_:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_114(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36_2();
  v9 = type metadata accessor for SearchEntity.Builder(0);
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v74[-v16 - 8];
  *v17 = 0;
  v17[1] = 0;
  v18 = v10[7];
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = v10[8];
  type metadata accessor for SearchResultType();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = v10[9];
  type metadata accessor for SearchGlobalEntity(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = v10[10];
  type metadata accessor for SearchSpotlightEntity(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v38 = v10[11];
  _s10OmniSearch18GenericEventEntityVSgWOi0_(v74);
  memcpy(v17 + v38, v74, 0x88uLL);
  v39 = v10[12];
  type metadata accessor for SearchAppEntity(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = v10[13];
  v45 = type metadata accessor for IntentFile();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
  v49 = (v17 + v10[14]);
  *v49 = 0;
  v49[1] = 0;
  v50 = v10[15];
  type metadata accessor for EventEntity();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  v55 = v10[16];
  type metadata accessor for IdCardEntity();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v60 = (v17 + v10[17]);
  v60[1] = 0u;
  v60[2] = 0u;
  *v60 = 0u;
  v61 = v10[18];
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v45);
  *(v17 + v10[19]) = 5;
  v65 = (v17 + v10[20]);
  *v65 = 0;
  v65[1] = 0;
  v2(v17);
  _s10OmniSearch0B6EntityVWOcTm_0(v17, v14, type metadata accessor for SearchEntity.Builder);
  SearchEntity.init(builder:)();
  OUTLINED_FUNCTION_28_11();
  _s10OmniSearch0B6EntityVWOhTm_0();
  v66 = type metadata accessor for SearchEntity(0);
  v67 = OUTLINED_FUNCTION_93_6();
  if (__swift_getEnumTagSinglePayload(v67, v68, v66))
  {
    outlined destroy of IntentApplication?(v0, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    v69 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_17();
    v70 = OUTLINED_FUNCTION_119();
    outlined init with take of SearchSpotlightEntity(v70, v71, v72);
    v69 = 0;
  }

  __swift_storeEnumTagSinglePayload(v4, v69, 1, v66);
  OUTLINED_FUNCTION_148();
}

uint64_t SearchEntity.Builder.init()()
{
  v1 = OUTLINED_FUNCTION_113();
  v2 = type metadata accessor for SearchEntity.Builder(v1);
  *v0 = 0;
  v0[1] = 0;
  v3 = v2[5];
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v2[6];
  type metadata accessor for SearchResultType();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v2[7];
  type metadata accessor for SearchGlobalEntity(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = v2[8];
  type metadata accessor for SearchSpotlightEntity(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = v2[9];
  _s10OmniSearch18GenericEventEntityVSgWOi0_(__src);
  memcpy(v0 + v23, __src, 0x88uLL);
  v24 = v2[10];
  type metadata accessor for SearchAppEntity(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v29 = v2[11];
  v30 = type metadata accessor for IntentFile();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  v34 = (v0 + v2[12]);
  *v34 = 0;
  v34[1] = 0;
  v35 = v2[13];
  type metadata accessor for EventEntity();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  v40 = v2[14];
  type metadata accessor for IdCardEntity();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  v45 = (v0 + v2[15]);
  v45[1] = 0u;
  v45[2] = 0u;
  *v45 = 0u;
  v46 = v2[16];
  OUTLINED_FUNCTION_92();
  result = __swift_storeEnumTagSinglePayload(v47, v48, v49, v30);
  *(v0 + v2[17]) = 5;
  v51 = (v0 + v2[18]);
  *v51 = 0;
  v51[1] = 0;
  return result;
}

void SearchEntity.init(builder:)()
{
  OUTLINED_FUNCTION_155();
  v179 = v2;
  v180 = v3;
  v172 = type metadata accessor for SearchAppEntity(0);
  v4 = OUTLINED_FUNCTION_17(v172);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_3();
  v168 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
  v14 = OUTLINED_FUNCTION_114(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
  v19 = OUTLINED_FUNCTION_114(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  v24 = OUTLINED_FUNCTION_114(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_39_0();
  v171 = v27;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  v31 = OUTLINED_FUNCTION_114(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  v36 = OUTLINED_FUNCTION_114(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_2();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
  OUTLINED_FUNCTION_114(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_49_3();
  v173 = v44;
  OUTLINED_FUNCTION_78_0();
  v45 = type metadata accessor for SearchResultType();
  v46 = OUTLINED_FUNCTION_14(v45);
  v175 = v47;
  v176 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_39_0();
  v169 = v50;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_4();
  v170 = v52;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_14_2();
  v174 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v58);
  v59 = OUTLINED_FUNCTION_112_5();
  v60 = type metadata accessor for SearchResult(v59);
  v61 = OUTLINED_FUNCTION_17(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_2_3();
  v178 = v64;
  OUTLINED_FUNCTION_78_0();
  v65 = type metadata accessor for LocalizedStringResource();
  v66 = OUTLINED_FUNCTION_114(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_4();
  v69 = type metadata accessor for SearchEntity(0);
  v70 = OUTLINED_FUNCTION_17(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_74_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_109_5();
  LocalizedStringResource.init(stringLiteral:)();
  *v0 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy15OmniSearchTypes0F10ResultTypeOGMd, &_s10AppIntents14EntityPropertyCy15OmniSearchTypes0F10ResultTypeOGMR);
  OUTLINED_FUNCTION_114_5();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_29_9();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v73, v74);
  OUTLINED_FUNCTION_74_9();
  v0[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0faC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0faC0VSgGMR);
  OUTLINED_FUNCTION_90_4();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_18_13();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v75, v76);
  OUTLINED_FUNCTION_74_9();
  v0[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMR);
  OUTLINED_FUNCTION_89_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();
  OUTLINED_FUNCTION_74_9();
  v0[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0f6GlobalC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0f6GlobalC0VSgGMR);
  OUTLINED_FUNCTION_33_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_10_15();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v77, v78);
  OUTLINED_FUNCTION_74_9();
  v0[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0f9SpotlightC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0f9SpotlightC0VSgGMR);
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_9_18();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v79, v80);
  OUTLINED_FUNCTION_74_9();
  v0[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch05EventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch05EventC0VSgGMR);
  OUTLINED_FUNCTION_36_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_16();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v81, v82);
  OUTLINED_FUNCTION_74_9();
  v0[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch06IdCardC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch06IdCardC0VSgGMR);
  OUTLINED_FUNCTION_32_14();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_15_14();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v83, v84);
  OUTLINED_FUNCTION_74_9();
  v0[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch05MediaC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch05MediaC0VSgGMR);
  OUTLINED_FUNCTION_90_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type MediaEntity and conformance MediaEntity();
  OUTLINED_FUNCTION_74_9();
  v0[8] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
  OUTLINED_FUNCTION_5_16();
  LocalizedStringResource.init(stringLiteral:)();
  v0[9] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  v0[10] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch08HydratedC4TypeOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch08HydratedC4TypeOSgGMR);
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HydratedEntityType and conformance HydratedEntityType();
  OUTLINED_FUNCTION_74_9();
  v0[11] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  v0[12] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  v0[13] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  v0[14] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMR);
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_27_11();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v85, v86);
  OUTLINED_FUNCTION_74_9();
  v0[15] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  v0[16] = EntityProperty<>.init(title:)();
  v181 = v69[21];
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v60);
  v90 = v69[23];
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + v90) = EntityProperty<>.init(title:)();
  v91 = v179[1];
  if (!v91)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v100, static Logging.search);
    v95 = Logger.logObject.getter();
    v101 = static os_log_type_t.fault.getter();
    if (!OUTLINED_FUNCTION_4_11(v101))
    {
      goto LABEL_13;
    }

    *OUTLINED_FUNCTION_172() = 0;
    v99 = "Attempting to create SearchEntity without id";
    goto LABEL_12;
  }

  v177 = v69;
  v92 = *v179;
  v93 = type metadata accessor for SearchEntity.Builder(0);
  outlined init with copy of SpotlightRankingItem?(v179 + *(v93 + 20), v1, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_166(v1, 1, v60);
  if (v120)
  {
    outlined destroy of IntentApplication?(v1, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v94, static Logging.search);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.fault.getter();
    v69 = v177;
    if (!OUTLINED_FUNCTION_4_11(v96))
    {
      goto LABEL_13;
    }

    *OUTLINED_FUNCTION_172() = 0;
    v99 = "Attempting to create SearchEntity without source";
LABEL_12:
    OUTLINED_FUNCTION_8_11(&dword_25D85C000, v97, v98, v99);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
LABEL_13:

    v102 = 0;
    goto LABEL_14;
  }

  v167 = v93;
  outlined init with take of SearchSpotlightEntity(v1, v178, type metadata accessor for SearchResult);
  outlined destroy of IntentApplication?(v0 + v181, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_1_33();
  _s10OmniSearch0B6EntityVWOcTm_0(v178, v0 + v181, v107);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v60);
  SearchResultItem.associatedValue.getter(v184);
  v111 = v184[3];
  v112 = v184[4];
  v113 = __swift_project_boxed_opaque_existential_1(v184, v184[3]);
  (*(v112 + 56))(0, 0, v111, v112);
  OUTLINED_FUNCTION_142_1();
  __swift_destroy_boxed_opaque_existential_1Tm(v184);
  v114 = (v0 + *(v177 + 88));
  *v114 = v113;
  v114[1] = v111;
  v184[0] = v92;
  v184[1] = v91;

  EntityProperty.wrappedValue.setter();
  SearchResultItem.associatedValue.getter(v184);
  v115 = v184[3];
  v116 = v184[4];
  __swift_project_boxed_opaque_existential_1(v184, v184[3]);
  v117 = (*(v116 + 40))(v115, v116);
  v119 = v118;
  __swift_destroy_boxed_opaque_existential_1Tm(v184);
  v184[0] = v117;
  v184[1] = v119;
  EntityProperty.wrappedValue.setter();
  v184[0] = MEMORY[0x277D84F90];
  EntityProperty.wrappedValue.setter();
  outlined init with copy of SpotlightRankingItem?(v179 + v167[6], v173, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
  OUTLINED_FUNCTION_166(v173, 1, v176);
  if (!v120)
  {
    (*(v175 + 32))(v174, v173, v176);
    v126 = *(v175 + 16);
    v126(v170, v174, v176);
    v126(v169, v170, v176);
    EntityProperty.wrappedValue.setter();
    v127 = *(v175 + 8);
    v127(v170, v176);
    OUTLINED_FUNCTION_82_7(v179 + v167[8]);
    OUTLINED_FUNCTION_47_11();
    outlined init with copy of SpotlightRankingItem?(v128, v129, v130, &_s10OmniSearch0B15SpotlightEntityVSgMR);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_83_7();
    OUTLINED_FUNCTION_82_7(v179 + v167[7]);
    OUTLINED_FUNCTION_47_11();
    outlined init with copy of SpotlightRankingItem?(v131, v132, v133, &_s10OmniSearch0B12GlobalEntityVSgMR);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_83_7();
    v134 = v167[9];
    memcpy(v184, v179 + v134, 0x88uLL);
    memcpy(v183, v179 + v134, sizeof(v183));
    outlined init with copy of SpotlightRankingItem?(v184, &v182, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_82_7(v179 + v167[10]);
    OUTLINED_FUNCTION_47_11();
    outlined init with copy of SpotlightRankingItem?(v135, v136, v137, &_s10OmniSearch0B9AppEntityVSgMR);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_83_7();
    OUTLINED_FUNCTION_82_7(v179 + v167[13]);
    OUTLINED_FUNCTION_47_11();
    outlined init with copy of SpotlightRankingItem?(v138, v139, v140, &_s10OmniSearch11EventEntityVSgMR);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_83_7();
    OUTLINED_FUNCTION_82_7(v179 + v167[14]);
    OUTLINED_FUNCTION_47_11();
    outlined init with copy of SpotlightRankingItem?(v141, v142, v143, &_s10OmniSearch12IdCardEntityVSgMR);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_83_7();
    v144 = (v179 + v167[15]);
    v145 = v144[1];
    v146 = v144[2];
    v147 = v144[3];
    v148 = v144[4];
    v149 = v144[5];
    v183[0] = *v144;
    v183[1] = v145;
    v183[2] = v146;
    v183[3] = v147;
    v183[4] = v148;
    v183[5] = v149;
    outlined copy of MediaEntity?(v183[0], v145, v146, v147, v148, v149);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_82_7(v179 + v167[16]);
    OUTLINED_FUNCTION_47_11();
    outlined init with copy of SpotlightRankingItem?(v150, v151, v152, &_s10AppIntents10IntentFileVSgMR);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_83_7();
    SearchEntity.validTypeIdentifiers.getter();
    v183[0] = v153;
    EntityProperty.wrappedValue.setter();
    LOBYTE(v183[0]) = *(v179 + v167[17]);
    EntityProperty.wrappedValue.setter();
    v154 = (v179 + v167[18]);
    v155 = v154[1];
    v183[0] = *v154;
    v183[1] = v155;

    EntityProperty.wrappedValue.setter();
    v156 = (v179 + v167[12]);
    v157 = v156[1];
    v183[0] = *v156;
    v183[1] = v157;

    EntityProperty.wrappedValue.setter();
    LOBYTE(v183[0]) = 0;
    EntityProperty.wrappedValue.setter();
    EntityProperty.wrappedValue.getter();
    v158 = OUTLINED_FUNCTION_93_0();
    if (__swift_getEnumTagSinglePayload(v158, v159, v172))
    {
      outlined destroy of IntentApplication?(v171, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_16_16();
      _s10OmniSearch0B6EntityVWOcTm_0(v171, v168, v161);
      outlined destroy of IntentApplication?(v171, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      EntityProperty.wrappedValue.getter();
      v162 = *(v168 + 32);
      EntityProperty.wrappedValue.setter();
      OUTLINED_FUNCTION_8_15();
      _s10OmniSearch0B6EntityVWOhTm_0();
    }

    v127(v174, v176);
    OUTLINED_FUNCTION_0_32();
    _s10OmniSearch0B6EntityVWOhTm_0();
    OUTLINED_FUNCTION_28_11();
    _s10OmniSearch0B6EntityVWOhTm_0();
    OUTLINED_FUNCTION_4_20();
    _s10OmniSearch0B6EntityVWOcTm_0(v0, v180, v163);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v164, v165, v166, v177);
    OUTLINED_FUNCTION_3_24();
    _s10OmniSearch0B6EntityVWOhTm_0();
    goto LABEL_18;
  }

  outlined destroy of IntentApplication?(v173, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v121 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v121, static Logging.search);
  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.fault.getter();
  v69 = v177;
  if (OUTLINED_FUNCTION_4_11(v123))
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_8_11(&dword_25D85C000, v124, v125, "Attempting to create SearchEntity without type");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  OUTLINED_FUNCTION_0_32();
  _s10OmniSearch0B6EntityVWOhTm_0();
  v102 = 1;
LABEL_14:
  OUTLINED_FUNCTION_28_11();
  _s10OmniSearch0B6EntityVWOhTm_0();

  outlined destroy of IntentApplication?(v0 + v181, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  if (v102)
  {
    v103 = *(v0 + v69[22] + 8);
  }

  else
  {
  }

  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v69);
LABEL_18:
  OUTLINED_FUNCTION_148();
}

void SearchEntity.validTypeIdentifiers.getter()
{
  OUTLINED_FUNCTION_155();
  v3 = v0;
  v4 = type metadata accessor for SearchGlobalEntity(0);
  v5 = OUTLINED_FUNCTION_17(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v49[-v12];
  v14 = type metadata accessor for SearchSpotlightEntity(0);
  v15 = OUTLINED_FUNCTION_17(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  OUTLINED_FUNCTION_114(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_136_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25DBC8400;
  v26 = *(v0 + 24);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_123_5(v54);
  if (_s10OmniSearch0B7ContextVSgWOg(v54) == 1)
  {
    OUTLINED_FUNCTION_123_5(v53);
    outlined destroy of IntentApplication?(v53, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
    v27 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_123_5(v51);
    OUTLINED_FUNCTION_123_5(v49);
    OUTLINED_FUNCTION_123_5(v52);
    OUTLINED_FUNCTION_123_5(v53);
    outlined init with copy of SearchAnswerEntity(v53, &v50);
    outlined destroy of IntentApplication?(v52, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
    SearchAnswerEntity.validTypeIdentifiers.getter();
    v27 = v28;
    outlined destroy of IntentApplication?(v51, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
  }

  *(v25 + 32) = v27;
  v29 = *(v3 + 40);
  EntityProperty.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v2, 1, v14))
  {
    outlined destroy of IntentApplication?(v2, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
    v30 = MEMORY[0x277D84F90];
  }

  else
  {
    _s10OmniSearch0B6EntityVWOcTm_0(v2, v20, type metadata accessor for SearchSpotlightEntity);
    outlined destroy of IntentApplication?(v2, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
    SearchSpotlightEntity.validTypeIdentifiers.getter();
    v30 = v31;
    OUTLINED_FUNCTION_66_4();
    _s10OmniSearch0B6EntityVWOhTm_0();
  }

  *(v25 + 40) = v30;
  v32 = *(v3 + 32);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_81_8();
  if (__swift_getEnumTagSinglePayload(v33, v34, v35))
  {
    outlined destroy of IntentApplication?(v13, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
    v36 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_20_8();
    _s10OmniSearch0B6EntityVWOcTm_0(v13, v1, v37);
    outlined destroy of IntentApplication?(v13, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
    SearchGlobalEntity.validTypeIdentifiers.getter();
    v36 = v38;
    OUTLINED_FUNCTION_14_10();
    _s10OmniSearch0B6EntityVWOhTm_0();
  }

  *(v25 + 48) = v36;
  v39 = MEMORY[0x277D84F90];
  for (i = 32; ; i += 8)
  {
    if (i == 56)
    {
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      OUTLINED_FUNCTION_148();
      return;
    }

    v41 = *(v25 + i);
    v42 = *(v41 + 16);
    v43 = *(v39 + 16);
    if (__OFADD__(v43, v42))
    {
      break;
    }

    v44 = *(v25 + i);

    if (!swift_isUniquelyReferenced_nonNull_native() || v43 + v42 > *(v39 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v39 = v45;
    }

    if (*(v41 + 16))
    {
      if ((*(v39 + 24) >> 1) - *(v39 + 16) < v42)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v42)
      {
        v46 = *(v39 + 16);
        v47 = __OFADD__(v46, v42);
        v48 = v46 + v42;
        if (v47)
        {
          goto LABEL_27;
        }

        *(v39 + 16) = v48;
      }
    }

    else
    {

      if (v42)
      {
        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t SearchEntity.Builder.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchEntity.Builder.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SearchEntity.Builder.sourceResult.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, *(v1 + 20));
}

uint64_t SearchEntity.Builder.sourceResult.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, *(v1 + 20));
}

uint64_t SearchEntity.Builder.sourceResult.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity.Builder(v0) + 20);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.Builder.type.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR, *(v1 + 24));
}

uint64_t SearchEntity.Builder.type.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR, *(v1 + 24));
}

uint64_t SearchEntity.Builder.type.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity.Builder(v0) + 24);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.Builder.globalResult.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR, *(v1 + 28));
}

uint64_t SearchEntity.Builder.globalResult.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR, *(v1 + 28));
}

uint64_t SearchEntity.Builder.globalResult.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity.Builder(v0) + 28);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.Builder.spotlightResult.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR, *(v1 + 32));
}

uint64_t SearchEntity.Builder.spotlightResult.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR, *(v1 + 32));
}

uint64_t SearchEntity.Builder.spotlightResult.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity.Builder(v0) + 32);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.Builder.answer.getter()
{
  v2 = OUTLINED_FUNCTION_113();
  v3 = *(type metadata accessor for SearchEntity.Builder(v2) + 36);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x88uLL);
  return outlined init with copy of SpotlightRankingItem?(__dst, &v5, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
}

void *SearchEntity.Builder.answer.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for SearchEntity.Builder(v2) + 36);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  outlined destroy of IntentApplication?(__dst, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
  return memcpy((v1 + v3), v0, 0x88uLL);
}

uint64_t SearchEntity.Builder.answer.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity.Builder(v0) + 36);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.Builder.appEntity.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR, *(v1 + 40));
}

uint64_t SearchEntity.Builder.appEntity.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR, *(v1 + 40));
}

uint64_t SearchEntity.Builder.appEntity.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity.Builder(v0) + 40);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.Builder.encodedSearchableItem.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR, *(v1 + 44));
}

uint64_t SearchEntity.Builder.encodedSearchableItem.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR, *(v1 + 44));
}

uint64_t SearchEntity.Builder.encodedSearchableItem.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity.Builder(v0) + 44);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.Builder.inAppSearchString.getter()
{
  v0 = type metadata accessor for SearchEntity.Builder(0);
  OUTLINED_FUNCTION_60_5(*(v0 + 48));
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchEntity.Builder.inAppSearchString.setter()
{
  v3 = OUTLINED_FUNCTION_78_7();
  v4 = (v1 + *(type metadata accessor for SearchEntity.Builder(v3) + 48));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t SearchEntity.Builder.inAppSearchString.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity.Builder(v0) + 48);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.Builder.event.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR, *(v1 + 52));
}

uint64_t SearchEntity.Builder.event.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR, *(v1 + 52));
}

uint64_t SearchEntity.Builder.event.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity.Builder(v0) + 52);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.Builder.idCard.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR, *(v1 + 56));
}

uint64_t SearchEntity.Builder.idCard.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR, *(v1 + 56));
}

uint64_t SearchEntity.Builder.idCard.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity.Builder(v0) + 56);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.Builder.media.getter()
{
  v2 = OUTLINED_FUNCTION_113();
  v3 = (v1 + *(type metadata accessor for SearchEntity.Builder(v2) + 60));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;
  v0[5] = v9;

  return outlined copy of MediaEntity?(v4, v5, v6, v7, v8, v9);
}

__n128 SearchEntity.Builder.media.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for SearchEntity.Builder(0) + 60);
  outlined consume of MediaEntity?(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40));
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t SearchEntity.Builder.media.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity.Builder(v0) + 60);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.Builder.experienceFile.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR, *(v1 + 64));
}

uint64_t SearchEntity.Builder.experienceFile.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR, *(v1 + 64));
}

uint64_t SearchEntity.Builder.experienceFile.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity.Builder(v0) + 64);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.Builder.hydratedEntityType.getter()
{
  v2 = OUTLINED_FUNCTION_113();
  result = type metadata accessor for SearchEntity.Builder(v2);
  *v0 = *(v1 + *(result + 68));
  return result;
}

uint64_t SearchEntity.Builder.hydratedEntityType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SearchEntity.Builder(0);
  *(v1 + *(result + 68)) = v2;
  return result;
}

uint64_t SearchEntity.Builder.hydratedEntityType.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity.Builder(v0) + 68);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.Builder.hydratedContent.getter()
{
  v0 = type metadata accessor for SearchEntity.Builder(0);
  OUTLINED_FUNCTION_60_5(*(v0 + 72));
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchEntity.Builder.hydratedContent.setter()
{
  v3 = OUTLINED_FUNCTION_78_7();
  v4 = (v1 + *(type metadata accessor for SearchEntity.Builder(v3) + 72));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t SearchEntity.Builder.hydratedContent.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for SearchEntity.Builder(v0) + 72);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchEntity.Builder.init(id:sourceResult:type:globalResult:spotlightResult:answer:appEntity:encodedSearchableItem:inAppSearchString:event:idCard:media:experienceFile:hydratedEntityType:hydratedContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19)
{
  v32 = *(a15 + 40);
  v33 = *(a15 + 32);
  v34 = *a17;
  *a9 = a1;
  a9[1] = a2;
  v26 = type metadata accessor for SearchEntity.Builder(0);
  outlined init with take of SearchResultItem?(a3, a9 + v26[5], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  outlined init with take of SearchResultItem?(a4, a9 + v26[6], &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
  outlined init with take of SearchResultItem?(a5, a9 + v26[7], &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  outlined init with take of SearchResultItem?(a6, a9 + v26[8], &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  memcpy(a9 + v26[9], a7, 0x88uLL);
  outlined init with take of SearchResultItem?(a8, a9 + v26[10], &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  outlined init with take of SearchResultItem?(a10, a9 + v26[11], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v27 = (a9 + v26[12]);
  *v27 = a11;
  v27[1] = a12;
  outlined init with take of SearchResultItem?(a13, a9 + v26[13], &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
  outlined init with take of SearchResultItem?(a14, a9 + v26[14], &_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
  v28 = a9 + v26[15];
  v29 = *(a15 + 16);
  *v28 = *a15;
  *(v28 + 1) = v29;
  *(v28 + 4) = v33;
  *(v28 + 5) = v32;
  result = outlined init with take of SearchResultItem?(a16, a9 + v26[16], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  *(a9 + v26[17]) = v34;
  v31 = (a9 + v26[18]);
  *v31 = a18;
  v31[1] = a19;
  return result;
}

uint64_t SearchEntity.id.getter()
{
  OUTLINED_FUNCTION_106_4();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for SearchEntity.id : SearchEntity(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchEntity.id.setter();
}

uint64_t (*SearchEntity.id.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  OUTLINED_FUNCTION_106_4();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*static SearchEntity.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_200(v0, static SearchEntity.typeDisplayRepresentation);
  OUTLINED_FUNCTION_147_2();
  return static FlightSnippet.Status.allCases.modify;
}

void SearchEntity.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_59_4();
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = OUTLINED_FUNCTION_17(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_74_2();
  v14 = type metadata accessor for SearchResultType();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_4();
  v20 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v21 = OUTLINED_FUNCTION_114(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36();
  SearchEntity.representedEntity.getter();
  if (v41)
  {
    outlined init with take of ResponseOverrideMatcherProtocol(&v40, v42);
    v24 = v42[4];
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    v25 = *(*(v24 + 16) + 8);
    dispatch thunk of InstanceDisplayRepresentable.displayRepresentation.getter();
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  else
  {
    outlined destroy of IntentApplication?(&v40, &_s10AppIntents0A6Entity_pSgMd, &_s10AppIntents0A6Entity_pSgMR);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
    v27 = *(v0 + 8);
    EntityProperty.wrappedValue.getter();
    v28 = SearchResultType.rawValue.getter();
    v30 = v29;
    (*(v17 + 8))(v1, v14);
    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v31);

    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
    LocalizedStringResource.init(stringInterpolation:)();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v10);
    type metadata accessor for DisplayRepresentation.Image();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    DisplayRepresentation.init(title:subtitle:image:)();
  }

  OUTLINED_FUNCTION_148();
}

uint64_t protocol witness for EntityQuery.entities(for:) in conformance SearchEntity.Query()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for EntityQuery.entities(for:) in conformance SearchEntity.Query;

  return SearchEntity.Query.entities(for:)();
}

uint64_t protocol witness for EntityQuery.suggestedEntities() in conformance SearchEntity.Query(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CB9C98] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t protocol witness for EntityQuery.displayRepresentations(for:requestedComponents:) in conformance SearchEntity.Query(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for EntityQuery.displayRepresentations(for:requestedComponents:) in conformance SearchEntity.Query;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t protocol witness for EntityQuery.displayRepresentations(for:requestedComponents:) in conformance SearchEntity.Query()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t protocol witness for DynamicOptionsProvider.results() in conformance SearchEntity.Query(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = lazy protocol witness table accessor for type SearchEntity.Query and conformance SearchEntity.Query();
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t protocol witness for DynamicOptionsProvider.defaultResult() in conformance SearchEntity.Query(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return MEMORY[0x28210C148](a1, a2, a3);
}

void static SearchEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_155();
  v346 = v0;
  v2 = v1;
  v317 = type metadata accessor for EventEntity();
  v3 = OUTLINED_FUNCTION_17(v317);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_3();
  v312 = v6;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch11EventEntityVSg_ADtMd, &_s10OmniSearch11EventEntityVSg_ADtMR);
  OUTLINED_FUNCTION_17(v315);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_49_3();
  v319 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
  v12 = OUTLINED_FUNCTION_114(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39_0();
  v313 = v15;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_4();
  v316 = v17;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_2();
  v326 = v19;
  OUTLINED_FUNCTION_78_0();
  v321 = type metadata accessor for IdCardEntity();
  v20 = OUTLINED_FUNCTION_17(v321);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_3();
  v314 = v23;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch12IdCardEntityVSg_ADtMd, &_s10OmniSearch12IdCardEntityVSg_ADtMR);
  OUTLINED_FUNCTION_17(v320);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_49_3();
  v323 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
  v29 = OUTLINED_FUNCTION_114(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_39_0();
  v318 = v32;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_4();
  v322 = v34;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14_2();
  v325 = v36;
  v37 = OUTLINED_FUNCTION_78_0();
  v330 = type metadata accessor for SearchSpotlightEntity(v37);
  v38 = OUTLINED_FUNCTION_17(v330);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_3();
  v324 = v41;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSg_ADtMd, &_s10OmniSearch0B15SpotlightEntityVSg_ADtMR);
  OUTLINED_FUNCTION_17(v329);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_49_3();
  v331 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  v47 = OUTLINED_FUNCTION_114(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_39_0();
  v327 = v50;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_4();
  v337 = v52;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_14_2();
  v338 = v54;
  v55 = OUTLINED_FUNCTION_78_0();
  v335 = type metadata accessor for SearchGlobalEntity(v55);
  v56 = OUTLINED_FUNCTION_17(v335);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_2_3();
  v328 = v59;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSg_ADtMd, &_s10OmniSearch0B12GlobalEntityVSg_ADtMR);
  OUTLINED_FUNCTION_17(v334);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_49_3();
  v336 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  v65 = OUTLINED_FUNCTION_114(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_39_0();
  v332 = v68;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_7_4();
  v340 = v70;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_14_2();
  v341 = v72;
  v73 = OUTLINED_FUNCTION_78_0();
  v344 = type metadata accessor for SearchAppEntity(v73);
  v74 = OUTLINED_FUNCTION_17(v344);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_2_3();
  v333 = v77;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSg_ADtMd, &_s10OmniSearch0B9AppEntityVSg_ADtMR);
  OUTLINED_FUNCTION_17(v342);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_49_3();
  v345 = v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  v83 = OUTLINED_FUNCTION_114(v82);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_39_0();
  v339 = v86;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v87);
  v89 = &v311 - v88;
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_14_2();
  v343 = v91;
  OUTLINED_FUNCTION_78_0();
  v92 = type metadata accessor for SearchResultType();
  v93 = OUTLINED_FUNCTION_14(v92);
  v95 = v94;
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_109();
  v100 = v98 - v99;
  MEMORY[0x28223BE20](v101);
  v103 = &v311 - v102;
  v104 = type metadata accessor for SearchEntity(0);
  v105 = *(v104 + 92);
  v347 = v2;
  v106 = *(v2 + v105);
  EntityProperty.wrappedValue.getter();
  v107 = v354[0];
  v108 = v354[1];
  v109 = *(v104 + 92);
  v110 = v346;
  v111 = *(v346 + v109);
  EntityProperty.wrappedValue.getter();
  v112 = v107 == v354[0] && v108 == v354[1];
  if (v112)
  {
  }

  else
  {
    OUTLINED_FUNCTION_64_0();
    v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v113 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v114 = *v347;
  EntityProperty.wrappedValue.getter();
  v115 = v354[0];
  v116 = v354[1];
  v117 = *v110;
  EntityProperty.wrappedValue.getter();
  if (v115 == v354[0] && v116 == v354[1])
  {
  }

  else
  {
    OUTLINED_FUNCTION_64_0();
    v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v119 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v120 = v347;
  v121 = v347[1];
  EntityProperty.wrappedValue.getter();
  v122 = v110[1];
  EntityProperty.wrappedValue.getter();
  LOBYTE(v122) = specialized == infix<A>(_:_:)(v103, v100);
  v123 = *(v95 + 8);
  v123(v100, v92);
  v123(v103, v92);
  if ((v122 & 1) == 0)
  {
    goto LABEL_47;
  }

  v124 = v120[2];
  v125 = v343;
  EntityProperty.wrappedValue.getter();
  v126 = v110[2];
  EntityProperty.wrappedValue.getter();
  v127 = *(v342 + 48);
  v128 = v345;
  OUTLINED_FUNCTION_111_3(v125, v345);
  OUTLINED_FUNCTION_111_3(v89, v128 + v127);
  OUTLINED_FUNCTION_166(v128, 1, v344);
  if (v112)
  {
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v129, v130, v131);
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v132, v133, v134);
    OUTLINED_FUNCTION_81_8();
    OUTLINED_FUNCTION_166(v135, v136, v137);
    if (v112)
    {
      outlined destroy of IntentApplication?(v128, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      goto LABEL_26;
    }

LABEL_24:
    v148 = &_s10OmniSearch0B9AppEntityVSg_ADtMd;
    v149 = &_s10OmniSearch0B9AppEntityVSg_ADtMR;
    v150 = v128;
LABEL_46:
    outlined destroy of IntentApplication?(v150, v148, v149);
    goto LABEL_47;
  }

  outlined init with copy of SpotlightRankingItem?(v128, v339, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  OUTLINED_FUNCTION_81_8();
  OUTLINED_FUNCTION_166(v138, v139, v140);
  if (v141)
  {
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v142, v143, v144);
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v145, v146, v147);
    OUTLINED_FUNCTION_8_15();
    _s10OmniSearch0B6EntityVWOhTm_0();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_24_11();
  outlined init with take of SearchSpotlightEntity(v128 + v127, v333, v151);
  OUTLINED_FUNCTION_100_4();
  static SearchAppEntity.== infix(_:_:)();
  LODWORD(v344) = v152;
  _s10OmniSearch0B6EntityVWOhTm_0();
  OUTLINED_FUNCTION_54_8();
  outlined destroy of IntentApplication?(v153, v154, v155);
  OUTLINED_FUNCTION_54_8();
  outlined destroy of IntentApplication?(v156, v157, v158);
  _s10OmniSearch0B6EntityVWOhTm_0();
  OUTLINED_FUNCTION_54_8();
  outlined destroy of IntentApplication?(v159, v160, v161);
  if ((v344 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_26:
  v162 = v120[4];
  EntityProperty.wrappedValue.getter();
  v163 = v110[4];
  v164 = v340;
  EntityProperty.wrappedValue.getter();
  v165 = *(v334 + 48);
  v166 = v336;
  OUTLINED_FUNCTION_104_5();
  outlined init with copy of SpotlightRankingItem?(v167, v168, v169, &_s10OmniSearch0B12GlobalEntityVSgMR);
  OUTLINED_FUNCTION_111_3(v164, v166 + v165);
  v170 = OUTLINED_FUNCTION_103_6();
  v171 = v335;
  OUTLINED_FUNCTION_166(v170, v172, v335);
  if (v112)
  {
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v173, v174, v175);
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v176, v177, v178);
    v179 = OUTLINED_FUNCTION_130_5();
    OUTLINED_FUNCTION_166(v179, v180, v171);
    v181 = v337;
    if (v112)
    {
      outlined destroy of IntentApplication?(v166, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
      goto LABEL_36;
    }

LABEL_34:
    v148 = &_s10OmniSearch0B12GlobalEntityVSg_ADtMd;
    v149 = &_s10OmniSearch0B12GlobalEntityVSg_ADtMR;
LABEL_45:
    v150 = v166;
    goto LABEL_46;
  }

  outlined init with copy of SpotlightRankingItem?(v166, v332, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  v182 = OUTLINED_FUNCTION_130_5();
  OUTLINED_FUNCTION_166(v182, v183, v171);
  v181 = v337;
  if (v184)
  {
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v185, v186, v187);
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v188, v189, v190);
    OUTLINED_FUNCTION_14_10();
    _s10OmniSearch0B6EntityVWOhTm_0();
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_23_13();
  outlined init with take of SearchSpotlightEntity(v166 + v165, v328, v191);
  OUTLINED_FUNCTION_100_4();
  static SearchGlobalEntity.== infix(_:_:)();
  v193 = v192;
  _s10OmniSearch0B6EntityVWOhTm_0();
  OUTLINED_FUNCTION_54_8();
  outlined destroy of IntentApplication?(v194, v195, v196);
  OUTLINED_FUNCTION_54_8();
  outlined destroy of IntentApplication?(v197, v198, v199);
  _s10OmniSearch0B6EntityVWOhTm_0();
  OUTLINED_FUNCTION_54_8();
  outlined destroy of IntentApplication?(v200, v201, v202);
  if ((v193 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_36:
  v203 = v347[5];
  EntityProperty.wrappedValue.getter();
  v204 = v346[5];
  EntityProperty.wrappedValue.getter();
  v205 = *(v329 + 48);
  v166 = v331;
  OUTLINED_FUNCTION_104_5();
  outlined init with copy of SpotlightRankingItem?(v206, v207, v208, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  OUTLINED_FUNCTION_111_3(v181, v166 + v205);
  v209 = OUTLINED_FUNCTION_103_6();
  v210 = v330;
  OUTLINED_FUNCTION_166(v209, v211, v330);
  if (v112)
  {
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v212, v213, v214);
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v215, v216, v217);
    v218 = OUTLINED_FUNCTION_130_5();
    OUTLINED_FUNCTION_166(v218, v219, v210);
    if (v112)
    {
      outlined destroy of IntentApplication?(v166, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
      goto LABEL_49;
    }

    goto LABEL_44;
  }

  outlined init with copy of SpotlightRankingItem?(v166, v327, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  v220 = OUTLINED_FUNCTION_130_5();
  OUTLINED_FUNCTION_166(v220, v221, v210);
  if (v222)
  {
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v223, v224, v225);
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v226, v227, v228);
    OUTLINED_FUNCTION_66_4();
    _s10OmniSearch0B6EntityVWOhTm_0();
LABEL_44:
    v148 = &_s10OmniSearch0B15SpotlightEntityVSg_ADtMd;
    v149 = &_s10OmniSearch0B15SpotlightEntityVSg_ADtMR;
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_69_6();
  outlined init with take of SearchSpotlightEntity(v166 + v205, v324, v229);
  static SearchSpotlightEntity.== infix(_:_:)();
  v231 = v230;
  _s10OmniSearch0B6EntityVWOhTm_0();
  OUTLINED_FUNCTION_54_8();
  outlined destroy of IntentApplication?(v232, v233, v234);
  OUTLINED_FUNCTION_54_8();
  outlined destroy of IntentApplication?(v235, v236, v237);
  _s10OmniSearch0B6EntityVWOhTm_0();
  OUTLINED_FUNCTION_54_8();
  outlined destroy of IntentApplication?(v238, v239, v240);
  if ((v231 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_49:
  v241 = v347[3];
  EntityProperty.wrappedValue.getter();
  memcpy(v354, v356, 0x88uLL);
  v242 = v346[3];
  EntityProperty.wrappedValue.getter();
  memcpy(&v354[17], v355, 0x88uLL);
  OUTLINED_FUNCTION_122_3(v357);
  if (_s10OmniSearch0B7ContextVSgWOg(v357) == 1)
  {
    memcpy(v353, &v354[17], 0x88uLL);
    v243 = _s10OmniSearch0B7ContextVSgWOg(v353);
    v245 = v325;
    v244 = v326;
    if (v243 == 1)
    {
      OUTLINED_FUNCTION_122_3(v352);
      outlined destroy of IntentApplication?(v352, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  OUTLINED_FUNCTION_122_3(v352);
  OUTLINED_FUNCTION_122_3(v351);
  memcpy(v353, &v354[17], 0x88uLL);
  v112 = _s10OmniSearch0B7ContextVSgWOg(v353) == 1;
  v245 = v325;
  v244 = v326;
  if (v112)
  {
    OUTLINED_FUNCTION_122_3(v350);
    outlined init with copy of SpotlightRankingItem?(v352, v349, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
    outlined destroy of SearchAnswerEntity(v350);
LABEL_55:
    memcpy(v353, v354, sizeof(v353));
    v148 = &_s10OmniSearch0B12AnswerEntityVSg_ADtMd;
    v149 = &_s10OmniSearch0B12AnswerEntityVSg_ADtMR;
    v150 = v353;
    goto LABEL_46;
  }

  memcpy(v350, &v354[17], sizeof(v350));
  OUTLINED_FUNCTION_111_3(v352, v349);
  v246 = static SearchAnswerEntity.== infix(_:_:)(v351, v350);
  memcpy(v348, v350, sizeof(v348));
  outlined destroy of SearchAnswerEntity(v348);
  memcpy(v349, v351, sizeof(v349));
  outlined destroy of SearchAnswerEntity(v349);
  OUTLINED_FUNCTION_122_3(v350);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of IntentApplication?(v247, v248, v249);
  if ((v246 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_57:
  v250 = v347[7];
  EntityProperty.wrappedValue.getter();
  v251 = v346[7];
  v252 = v322;
  EntityProperty.wrappedValue.getter();
  v253 = *(v320 + 48);
  v254 = v323;
  OUTLINED_FUNCTION_111_3(v245, v323);
  v255 = v254;
  outlined init with copy of SpotlightRankingItem?(v252, v254 + v253, &_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
  v256 = v254;
  v257 = v321;
  OUTLINED_FUNCTION_166(v256, 1, v321);
  if (v112)
  {
    v258 = &_s10OmniSearch12IdCardEntityVSgMd;
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v259, v260, v261);
    OUTLINED_FUNCTION_146_3();
    OUTLINED_FUNCTION_166(&_s10OmniSearch12IdCardEntityVSgMd + v253, 1, v257);
    if (v112)
    {
      outlined destroy of IntentApplication?(&_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
LABEL_67:
      v277 = v347[6];
      EntityProperty.wrappedValue.getter();
      v278 = v346[6];
      v279 = v316;
      EntityProperty.wrappedValue.getter();
      v280 = *(v315 + 48);
      v281 = v244;
      v282 = v319;
      OUTLINED_FUNCTION_104_5();
      outlined init with copy of SpotlightRankingItem?(v283, v284, v285, &_s10OmniSearch11EventEntityVSgMR);
      outlined init with copy of SpotlightRankingItem?(v279, v282 + v280, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
      v286 = OUTLINED_FUNCTION_103_6();
      OUTLINED_FUNCTION_166(v286, v287, v317);
      if (v112)
      {
        OUTLINED_FUNCTION_47_11();
        outlined destroy of IntentApplication?(v288, v289, v290);
        v258 = v319;
        outlined destroy of IntentApplication?(v281, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
        OUTLINED_FUNCTION_81_8();
        OUTLINED_FUNCTION_166(v291, v292, v293);
        if (v112)
        {
          outlined destroy of IntentApplication?(v258, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
          goto LABEL_47;
        }
      }

      else
      {
        outlined init with copy of SpotlightRankingItem?(v282, v313, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
        OUTLINED_FUNCTION_81_8();
        OUTLINED_FUNCTION_166(v294, v295, v296);
        if (!v297)
        {
          OUTLINED_FUNCTION_68_6();
          outlined init with take of SearchSpotlightEntity(v282 + v280, v312, v301);
          static EventEntity.== infix(_:_:)();
          _s10OmniSearch0B6EntityVWOhTm_0();
          OUTLINED_FUNCTION_54_8();
          outlined destroy of IntentApplication?(v302, v303, v304);
          OUTLINED_FUNCTION_54_8();
          outlined destroy of IntentApplication?(v305, v306, v307);
          _s10OmniSearch0B6EntityVWOhTm_0();
          OUTLINED_FUNCTION_54_8();
          outlined destroy of IntentApplication?(v308, v309, v310);
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_47_11();
        outlined destroy of IntentApplication?(v298, v299, v300);
        v258 = v319;
        outlined destroy of IntentApplication?(v326, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
        _s10OmniSearch0B6EntityVWOhTm_0();
      }

      v148 = &_s10OmniSearch11EventEntityVSg_ADtMd;
      v149 = &_s10OmniSearch11EventEntityVSg_ADtMR;
      goto LABEL_76;
    }

LABEL_65:
    v148 = &_s10OmniSearch12IdCardEntityVSg_ADtMd;
    v149 = &_s10OmniSearch12IdCardEntityVSg_ADtMR;
LABEL_76:
    v150 = v258;
    goto LABEL_46;
  }

  outlined init with copy of SpotlightRankingItem?(v255, v318, &_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
  OUTLINED_FUNCTION_166(v255 + v253, 1, v257);
  if (v262)
  {
    v258 = &_s10OmniSearch12IdCardEntityVSgMd;
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v263, v264, v265);
    OUTLINED_FUNCTION_146_3();
    OUTLINED_FUNCTION_67_6();
    _s10OmniSearch0B6EntityVWOhTm_0();
    goto LABEL_65;
  }

  outlined init with take of SearchSpotlightEntity(v255 + v253, v314, type metadata accessor for IdCardEntity);
  static IdCardEntity.== infix(_:_:)();
  v267 = v266;
  _s10OmniSearch0B6EntityVWOhTm_0();
  OUTLINED_FUNCTION_54_8();
  outlined destroy of IntentApplication?(v268, v269, v270);
  OUTLINED_FUNCTION_54_8();
  outlined destroy of IntentApplication?(v271, v272, v273);
  _s10OmniSearch0B6EntityVWOhTm_0();
  OUTLINED_FUNCTION_54_8();
  v244 = v326;
  outlined destroy of IntentApplication?(v274, v275, v276);
  if (v267)
  {
    goto LABEL_67;
  }

LABEL_47:
  OUTLINED_FUNCTION_148();
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchEntity@<X0>(uint64_t *a1@<X8>)
{
  result = SearchEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchEntity(uint64_t a1)
{
  v2 = _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(&lazy protocol witness table cache variable for type SearchEntity and conformance SearchEntity, type metadata accessor for SearchEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for InstanceDisplayRepresentable.displayRepresentation(with:) in conformance SearchEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchEntity(uint64_t a1)
{
  v2 = _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(&lazy protocol witness table cache variable for type SearchEntity and conformance SearchEntity, type metadata accessor for SearchEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t SearchEntity.init(result:)()
{
  v2 = OUTLINED_FUNCTION_113();
  v3 = type metadata accessor for SearchResult(v2);
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_1_33();
  v11 = OUTLINED_FUNCTION_100_4();
  _s10OmniSearch0B6EntityVWOcTm_0(v11, v12, v13);
  OUTLINED_FUNCTION_28_1();
  SearchEntity.init(result:card:searchString:derivedType:)();
  OUTLINED_FUNCTION_0_32();
  _s10OmniSearch0B6EntityVWOhTm_0();
  v14 = type metadata accessor for SearchEntity(0);
  v15 = OUTLINED_FUNCTION_93_6();
  if (__swift_getEnumTagSinglePayload(v15, v16, v14))
  {
    outlined destroy of IntentApplication?(v1, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    v17 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_17();
    v18 = OUTLINED_FUNCTION_119();
    outlined init with take of SearchSpotlightEntity(v18, v19, v20);
    v17 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v0, v17, 1, v14);
}

void SearchEntity.init(result:card:searchString:derivedType:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v50 = v7;
  v51 = v8;
  v10 = v9;
  v49[0] = type metadata accessor for SearchResult(0);
  v11 = OUTLINED_FUNCTION_17(v49[0]);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  v15 = OUTLINED_FUNCTION_114(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_109();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v49 - v22;
  v24 = *v2;
  OUTLINED_FUNCTION_1_33();
  v49[1] = v10;
  _s10OmniSearch0B6EntityVWOcTm_0(v10, v0, v25);
  type metadata accessor for SearchEntityVisualContext();
  v26 = swift_allocObject();
  v60 = &type metadata for EntityCardBuilder;
  v61 = &protocol witness table for EntityCardBuilder;
  outlined init with take of ResponseOverrideMatcherProtocol(&v59, v26 + 16);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  outlined init with copy of ChatMessageRecord(v26 + 16, &v59);
  v27 = v60;
  v28 = v61;
  __swift_project_boxed_opaque_existential_1(&v59, v60);
  LOBYTE(v58[0]) = 0;
  v29 = (v28[3])(v0, v58, v6, v4, v27, v28);
  v52 = v0;
  v53 = v6;
  v54 = v4;
  v55 = v29;
  v56 = v24;
  v57 = v26;
  SearchEntity.init(_:)();

  v30 = type metadata accessor for SearchEntity(0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v30))
  {
    OUTLINED_FUNCTION_65_8();
    _s10OmniSearch0B6EntityVWOhTm_0();

    outlined destroy of IntentApplication?(v20, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(&v59);
    OUTLINED_FUNCTION_1_28();
    _s10OmniSearch0B6EntityVWOhTm_0();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  }

  else
  {
    OUTLINED_FUNCTION_5_17();
    outlined init with take of SearchSpotlightEntity(v20, v23, v34);
    v35 = (v0 + *(v49[0] + 40));
    v36 = v35[1];
    v37 = *(v23 + 16);
    v58[0] = *v35;
    v58[1] = v36;

    EntityProperty.wrappedValue.setter();
    SearchEntity.associatedQuery.didset();

    OUTLINED_FUNCTION_65_8();
    _s10OmniSearch0B6EntityVWOhTm_0();
    __swift_destroy_boxed_opaque_existential_1Tm(&v59);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v30);
    OUTLINED_FUNCTION_1_28();
    _s10OmniSearch0B6EntityVWOhTm_0();
  }

  v41 = OUTLINED_FUNCTION_93_6();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, v42, v30);
  v44 = v51;
  if (EnumTagSinglePayload)
  {
    outlined destroy of IntentApplication?(v23, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    v45 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_17();
    v46 = OUTLINED_FUNCTION_119();
    outlined init with take of SearchSpotlightEntity(v46, v47, v48);
    v45 = 0;
  }

  __swift_storeEnumTagSinglePayload(v44, v45, 1, v30);
  OUTLINED_FUNCTION_148();
}

void SearchEntity.init(result:context:searchString:derivedType:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_90_0();
  v17 = *v2;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  outlined init with copy of ChatMessageRecord(v8 + 16, v35);
  v18 = v36;
  v19 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  LOBYTE(v34[0]) = 0;
  v20 = (*(v19 + 24))(v10, v34, v6, v4, v18, v19);
  SearchEntity.init(_:)();

  v21 = type metadata accessor for SearchEntity(0);
  v22 = OUTLINED_FUNCTION_103_6();
  if (__swift_getEnumTagSinglePayload(v22, v23, v21))
  {

    outlined destroy of IntentApplication?(v0, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_0_32();
    _s10OmniSearch0B6EntityVWOhTm_0();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v21);
  }

  else
  {
    OUTLINED_FUNCTION_5_17();
    outlined init with take of SearchSpotlightEntity(v0, v12, v27);
    v28 = (v10 + *(type metadata accessor for SearchResult(0) + 40));
    v29 = v28[1];
    v30 = *(v12 + 128);
    v34[0] = *v28;
    v34[1] = v29;

    EntityProperty.wrappedValue.setter();
    SearchEntity.associatedQuery.didset();

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v21);
    OUTLINED_FUNCTION_0_32();
    _s10OmniSearch0B6EntityVWOhTm_0();
  }

  OUTLINED_FUNCTION_148();
}

void closure #1 in SearchEntity.init(result:context:searchString:derivedType:)()
{
  OUTLINED_FUNCTION_155();
  v351 = v0;
  LODWORD(v374) = v1;
  v373 = v2;
  v4 = v3;
  v375 = v5;
  v7 = v6;
  v9 = v8;
  v332 = type metadata accessor for Answer();
  v10 = OUTLINED_FUNCTION_17(v332);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_39_0();
  v331 = v13;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_4();
  v333 = v15;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_2();
  v352 = v17;
  v18 = OUTLINED_FUNCTION_78_0();
  v345 = type metadata accessor for SearchGlobalEntity(v18);
  v19 = OUTLINED_FUNCTION_17(v345);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_3();
  v336 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v24 = OUTLINED_FUNCTION_114(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_39_0();
  v349 = v27;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_4();
  v335 = v29;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_4();
  v334 = v31;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_2();
  v346 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
  OUTLINED_FUNCTION_114(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_49_3();
  v340 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  OUTLINED_FUNCTION_114(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_49_3();
  v344 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
  OUTLINED_FUNCTION_114(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_49_3();
  v341 = v48;
  OUTLINED_FUNCTION_78_0();
  v347 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity();
  v49 = OUTLINED_FUNCTION_14(v347);
  v339 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  v342 = v53;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_14_2();
  v343 = v55;
  OUTLINED_FUNCTION_78_0();
  v337 = type metadata accessor for GlobalItem();
  v56 = OUTLINED_FUNCTION_17(v337);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_39_0();
  v338 = v59;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_14_2();
  v353 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
  OUTLINED_FUNCTION_114(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_49_3();
  v364 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  OUTLINED_FUNCTION_114(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_49_3();
  v362 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  v73 = OUTLINED_FUNCTION_114(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_39_0();
  v348 = v76;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_14_2();
  v366 = v78;
  v79 = OUTLINED_FUNCTION_78_0();
  v368 = type metadata accessor for SearchAppEntity(v79);
  v80 = OUTLINED_FUNCTION_17(v368);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_2_3();
  v360 = v83;
  v84 = OUTLINED_FUNCTION_78_0();
  v372 = type metadata accessor for SearchResultItem(v84);
  v85 = OUTLINED_FUNCTION_17(v372);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_39_0();
  v356 = v88;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_14_2();
  v370 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
  OUTLINED_FUNCTION_114(v91);
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_49_3();
  v363 = v95;
  OUTLINED_FUNCTION_78_0();
  v376 = type metadata accessor for SearchResultType();
  v96 = OUTLINED_FUNCTION_14(v376);
  v371 = v97;
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_39_0();
  v354 = v100;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_7_4();
  v357 = v102;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_14_2();
  v358 = v104;
  v105 = OUTLINED_FUNCTION_78_0();
  v106 = type metadata accessor for SearchResult(v105);
  v107 = OUTLINED_FUNCTION_17(v106);
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_39_0();
  v367 = v110;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_7_4();
  v359 = v112;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_7_4();
  v369 = v114;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v115);
  v117 = &v329 - v116;
  SearchResultItem.associatedValue.getter(v381);
  v118 = v381[3];
  v119 = v381[4];
  __swift_project_boxed_opaque_existential_1(v381, v381[3]);
  v120 = (*(v119 + 32))(v118, v119);
  v122 = v121;
  __swift_destroy_boxed_opaque_existential_1Tm(v381);
  v123 = v9[1];

  *v9 = v120;
  v9[1] = v122;
  v124 = type metadata accessor for SearchEntity.Builder(0);
  v125 = *(v124 + 20);
  outlined destroy of IntentApplication?(v9 + v125, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_1_33();
  _s10OmniSearch0B6EntityVWOcTm_0(v7, v9 + v125, v126);
  OUTLINED_FUNCTION_44_0();
  v355 = v106;
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v106);
  v130 = v124;
  v131 = (v9 + *(v124 + 48));
  v132 = v131[1];

  *v131 = v375;
  v131[1] = v4;
  v350 = v4;
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v133 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v133, static Logging.search);
  OUTLINED_FUNCTION_1_33();
  _s10OmniSearch0B6EntityVWOcTm_0(v7, v117, v134);
  v135 = v373;
  v365 = v132;
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v136, v137))
  {
    v373 = v7;
    v330 = v130;
    v361 = v9;
    v138 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v139 = swift_slowAlloc();
    v381[0] = v139;
    *v138 = 134218242;
    v140 = outlined bridged method (pb) of @objc SFCard.cardSections.getter(v135);
    if (v140)
    {
      v141 = specialized Array.count.getter(v140);
    }

    else
    {
      v141 = 0;
    }

    *(v138 + 4) = v141;

    *(v138 + 12) = 2080;
    SearchResultItem.type.getter(v380);
    SearchResultKey.rawValue.getter();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_0_32();
    _s10OmniSearch0B6EntityVWOhTm_0();
    v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v138 + 14) = v142;
    _os_log_impl(&dword_25D85C000, v136, v137, "[VISUAL] Create SearchEntity with %ld cardSection(s) for searchResult: %s", v138, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v139);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    v9 = v361;
    v130 = v330;
    v7 = v373;
  }

  else
  {

    OUTLINED_FUNCTION_0_32();
    _s10OmniSearch0B6EntityVWOhTm_0();
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v143 = static NSUserDefaults.forceContentHydration.getter();
  v144 = v376;
  v145 = v374;
  if (v143)
  {
    static SearchEntity.addHydratedContent(with:result:)();
  }

  if (v145 != 3)
  {
    SearchResultItem.associatedValue.getter(v380);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch26PreExtractedSourceDocument_pMd, &_s10OmniSearch26PreExtractedSourceDocument_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of ResponseOverrideMatcherProtocol(v377, v381);
      LOBYTE(v380[0]) = v145;
      static SearchEntity.buildPreextractedResult(with:result:derivedType:card:)();
      v146 = v363;
      outlined init with copy of SpotlightRankingItem?(v9 + v130[6], v363, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
      OUTLINED_FUNCTION_166(v146, 1, v144);
      if (!v147)
      {
        v154 = v371;
        v155 = v358;
        (*(v371 + 32))(v358, v146, v144);
        v156 = *(v154 + 16);
        v157 = v357;
        v156(v357, v155, v144);
        v158 = Logger.logObject.getter();
        v159 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v158, v159))
        {
          OUTLINED_FUNCTION_28_3();
          v161 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v375 = swift_slowAlloc();
          v380[0] = v375;
          *v161 = 136315138;
          v156(v354, v157, v144);
          String.init<A>(describing:)();
          v162 = *(v154 + 8);
          v162(v157, v144);
          v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v161 + 4) = v163;
          _os_log_impl(&dword_25D85C000, v158, v159, "Successfully built pre-extracted type: '%s', returning.", v161, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v375);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();

          v162(v358, v144);
        }

        else
        {

          v164 = *(v154 + 8);
          v165 = OUTLINED_FUNCTION_129_4();
          v164(v165);
          (v164)(v155, v144);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v381);
        goto LABEL_67;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v381);
      v148 = &_s15OmniSearchTypes0B10ResultTypeOSgMd;
      v149 = &_s15OmniSearchTypes0B10ResultTypeOSgMR;
      v150 = v146;
    }

    else
    {
      v378 = 0;
      memset(v377, 0, sizeof(v377));
      v148 = &_s10OmniSearch26PreExtractedSourceDocument_pSgMd;
      v149 = &_s10OmniSearch26PreExtractedSourceDocument_pSgMR;
      v150 = v377;
    }

    outlined destroy of IntentApplication?(v150, v148, v149);
  }

  OUTLINED_FUNCTION_26_9();
  v151 = v370;
  _s10OmniSearch0B6EntityVWOcTm_0(v7, v370, v152);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v153 = type metadata accessor for MobileSMSDocument();
      goto LABEL_55;
    case 2u:
      v153 = type metadata accessor for CalendarEvent();
      goto LABEL_55;
    case 3u:
      v153 = type metadata accessor for Photo();
      goto LABEL_55;
    case 4u:
      v153 = type metadata accessor for NoteDocument();
      goto LABEL_55;
    case 5u:
      v153 = type metadata accessor for Reminder();
      goto LABEL_55;
    case 6u:
      v153 = type metadata accessor for PhoneHistory();
      goto LABEL_55;
    case 7u:
      v153 = type metadata accessor for VoicemailTranscript();
      goto LABEL_55;
    case 8u:
      v153 = type metadata accessor for JournalEntry();
      goto LABEL_55;
    case 9u:
      v153 = type metadata accessor for VoiceMemo();
      goto LABEL_55;
    case 0xAu:
      v153 = type metadata accessor for Safari();
      goto LABEL_55;
    case 0xBu:
      v168 = v135;
      type metadata accessor for LocalIndexClient();
      v169 = *(v355 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v170 = CodableNSSecureCoding.wrappedValue.getter();
      static LocalIndexClient.iWorkBundleIdForFile(item:)(v170);
      v172 = v171;

      outlined destroy of IntentApplication?(v9 + v130[6], &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
      if (v172)
      {
        v173 = *MEMORY[0x277D37080];
        v174 = OUTLINED_FUNCTION_127_5();
        v175(v174);
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v176, v177, v178, v144);
        OUTLINED_FUNCTION_1_33();
        _s10OmniSearch0B6EntityVWOcTm_0(v7, v369, v179);
        v180 = v168;
        v181 = v348;
        OUTLINED_FUNCTION_104_5();
        SearchAppEntity.init(result:card:updatedBundleId:)();
        v182 = &_s10OmniSearch0B9AppEntityVSgMd;
        v183 = &_s10OmniSearch0B9AppEntityVSgMR;
        v184 = v9 + v130[10];
        v185 = v181;
      }

      else
      {
        v286 = *MEMORY[0x277D37088];
        v287 = OUTLINED_FUNCTION_31_15();
        v288(v287);
        OUTLINED_FUNCTION_49_12();
        OUTLINED_FUNCTION_1_33();
        _s10OmniSearch0B6EntityVWOcTm_0(v7, v369, v289);
        v290 = v168;
        v291 = v362;
        SearchSpotlightEntity.init(result:card:)();
        v182 = &_s10OmniSearch0B15SpotlightEntityVSgMd;
        v183 = &_s10OmniSearch0B15SpotlightEntityVSgMR;
        v184 = v9 + v130[8];
        v185 = v291;
      }

      outlined assign with take of SearchResultItem?(v185, v184, v182, v183);
      v292 = type metadata accessor for FileDocument();
      OUTLINED_FUNCTION_17(v292);
      (*(v293 + 8))(v370);
      goto LABEL_67;
    case 0xCu:
      v153 = type metadata accessor for WalletTransaction();
      goto LABEL_55;
    case 0xDu:
      v153 = type metadata accessor for WalletPass();
      goto LABEL_55;
    case 0xEu:
      v153 = type metadata accessor for Contact();
      goto LABEL_55;
    case 0xFu:
      v167 = type metadata accessor for Appointment();
      goto LABEL_65;
    case 0x10u:
      v166 = *(v151 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48));

      v167 = type metadata accessor for FlightReservation();
      goto LABEL_65;
    case 0x11u:
      v167 = type metadata accessor for HotelReservation();
      goto LABEL_65;
    case 0x12u:
      v167 = type metadata accessor for Party();
      goto LABEL_65;
    case 0x13u:
      v167 = type metadata accessor for RestaurantReservation();
      goto LABEL_65;
    case 0x14u:
      v167 = type metadata accessor for RentalCarReservation();
      goto LABEL_65;
    case 0x15u:
      v167 = type metadata accessor for ShippingOrder();
      goto LABEL_65;
    case 0x16u:
      v167 = type metadata accessor for TicketedTransportation();
      goto LABEL_65;
    case 0x17u:
      v167 = type metadata accessor for TicketedShow();
      goto LABEL_65;
    case 0x18u:
      v167 = type metadata accessor for Trip();
LABEL_65:
      OUTLINED_FUNCTION_17(v167);
      (*(v246 + 8))(v151);
      outlined destroy of IntentApplication?(v9 + v130[6], &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
      v247 = *MEMORY[0x277D37050];
      v248 = OUTLINED_FUNCTION_31_15();
      v249(v248);
      OUTLINED_FUNCTION_49_12();
      OUTLINED_FUNCTION_1_33();
      _s10OmniSearch0B6EntityVWOcTm_0(v7, v369, v250);
      v251 = v135;
      v252 = v364;
      v253 = OUTLINED_FUNCTION_100_4();
      EventEntity.init(result:card:)(v253, v254, v255, v256, v257, v258, v259, v260, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340);
      v242 = &_s10OmniSearch11EventEntityVSgMd;
      v243 = &_s10OmniSearch11EventEntityVSgMR;
      v244 = v9 + v130[13];
      v245 = v252;
      goto LABEL_66;
    case 0x19u:
      v186 = *(v151 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR) + 48));
      v187 = v353;
      outlined init with take of SearchSpotlightEntity(v151, v353, type metadata accessor for GlobalItem);
      if (!specialized Array.count.getter(v186))
      {
        goto LABEL_91;
      }

      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v186 & 0xC000000000000001) == 0, v186);
      if ((v186 & 0xC000000000000001) == 0)
      {
        v188 = *(*(v186 + 32) + 16);
        type metadata accessor for GenericExperience();
        OUTLINED_FUNCTION_41_3();
        if (swift_dynamicCastClass())
        {
          goto LABEL_35;
        }

LABEL_91:

        v324 = Logger.logObject.getter();
        v325 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v324, v325))
        {
          OUTLINED_FUNCTION_28_3();
          v326 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v327 = swift_slowAlloc();
          v381[0] = v327;
          *v326 = 136315138;
          specialized Encodable.oms_jsonPrettyPrinted()();

          v328 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v326 + 4) = v328;
          _os_log_impl(&dword_25D85C000, v324, v325, "SearchGlobalEntity requires server-driven experiences. Received experience type:\n%s", v326, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v327);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {
        }

        goto LABEL_95;
      }

      v322 = *(MEMORY[0x25F89FFD0](0, v186) + 16);
      swift_unknownObjectRelease();
      type metadata accessor for GenericExperience();
      OUTLINED_FUNCTION_62_7();
      v323 = swift_dynamicCastClass();

      if (!v323)
      {
        goto LABEL_91;
      }

LABEL_35:
      outlined destroy of IntentApplication?(v9 + v130[6], &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
      v189 = *MEMORY[0x277D37068];
      v190 = OUTLINED_FUNCTION_31_15();
      v191(v190);
      OUTLINED_FUNCTION_49_12();
      v192 = v341;
      GlobalItem.getParsecEntity()(v341);
      v193 = OUTLINED_FUNCTION_103_6();
      v194 = v347;
      OUTLINED_FUNCTION_166(v193, v195, v347);
      if (v147)
      {
        v196 = v9;
        outlined destroy of IntentApplication?(v192, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
        _s10OmniSearch0B6EntityVWOcTm_0(v187, v338, type metadata accessor for GlobalItem);
        v197 = Logger.logObject.getter();
        v198 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v197, v198))
        {
          OUTLINED_FUNCTION_28_3();
          v199 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v200 = swift_slowAlloc();
          v381[0] = v200;
          *v199 = 136315138;
          v201 = GlobalItem.description.getter();
          OUTLINED_FUNCTION_22_12();
          _s10OmniSearch0B6EntityVWOhTm_0();
          OUTLINED_FUNCTION_79_6();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_117_4();

          *(v199 + 4) = v201;
          _os_log_impl(&dword_25D85C000, v197, v198, "No ParsecEntity available to build SearchGlobalEntity from result: %s", v199, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v200);
          v187 = v353;
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {

          OUTLINED_FUNCTION_22_12();
          v202 = _s10OmniSearch0B6EntityVWOhTm_0();
        }

        v301 = v346;
        v300 = v344;
        MEMORY[0x28223BE20](v202);
        *(&v329 - 2) = v187;
        SearchGlobalEntity.init(_:)(partial apply for closure #1 in closure #1 in SearchEntity.init(result:context:searchString:derivedType:), v300);
        v9 = v196;
      }

      else
      {
        v294 = v339;
        OUTLINED_FUNCTION_144_2();
        v295 = v343;
        OUTLINED_FUNCTION_104_5();
        v296();
        (*(v294 + 16))(v342, v295, v194);
        v297 = *(v187 + 40);
        v376 = *(v187 + 32);
        v298 = *(v187 + *(v337 + 36));
        v299 = v340;
        outlined init with copy of SpotlightRankingItem?(v187 + *(v337 + 28), v340, &_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);

        v300 = v344;
        SearchGlobalEntity.init(entity:domain:isLowConfidenceKnowledge:dialog:)(v342, v376, v297, v298, v299, v344);
        (*(v294 + 8))(v343, v347);
        v301 = v346;
      }

      outlined assign with take of SearchResultItem?(v300, v9 + v130[7], &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
      IntentFile.init(experiences:)(v186, v301);
      v310 = v130[7];
      OUTLINED_FUNCTION_81_8();
      if (!__swift_getEnumTagSinglePayload(v311, v312, v313))
      {
        OUTLINED_FUNCTION_20_8();
        v314 = v336;
        _s10OmniSearch0B6EntityVWOcTm_0(v9 + v310, v336, v315);
        v316 = v334;
        OUTLINED_FUNCTION_54_8();
        outlined init with copy of SpotlightRankingItem?(v317, v318, v319, v320);
        v321 = *(v314 + 480);
        outlined init with copy of SpotlightRankingItem?(v316, v335, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
        EntityProperty.wrappedValue.setter();
        outlined destroy of IntentApplication?(v316, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
        OUTLINED_FUNCTION_14_10();
        _s10OmniSearch0B6EntityVWOhTm_0();
      }

      outlined assign with take of SearchResultItem?(v301, v9 + v130[16], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
LABEL_95:
      OUTLINED_FUNCTION_22_12();
LABEL_96:
      _s10OmniSearch0B6EntityVWOhTm_0();
LABEL_67:
      OUTLINED_FUNCTION_148();
      return;
    case 0x1Au:
      OUTLINED_FUNCTION_25_12();
      _s10OmniSearch0B6EntityVWOhTm_0();
      v282 = Logger.logObject.getter();
      v283 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v282, v283))
      {
        v284 = OUTLINED_FUNCTION_172();
        *v284 = 0;
        _os_log_impl(&dword_25D85C000, v282, v283, "GlobalEntity is unsupported on SearchEntity", v284, 2u);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      goto LABEL_67;
    case 0x1Bu:
      OUTLINED_FUNCTION_25_12();
      _s10OmniSearch0B6EntityVWOhTm_0();
      goto LABEL_56;
    case 0x1Cu:
      v261 = v352;
      outlined init with take of SearchSpotlightEntity(v151, v352, type metadata accessor for Answer);
      if (*(*(v261 + 40) + 16) || *(*&v7[*(v355 + 28)] + 16))
      {
        outlined destroy of IntentApplication?(v9 + v130[6], &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
        v262 = *MEMORY[0x277D37060];
        v263 = OUTLINED_FUNCTION_31_15();
        v264(v263);
        v265 = OUTLINED_FUNCTION_49_12();
        MEMORY[0x28223BE20](v265);
        *(&v329 - 6) = v261;
        *(&v329 - 5) = v7;
        v266 = v375;
        *(&v329 - 4) = v351;
        *(&v329 - 3) = v266;
        *(&v329 - 2) = v350;
        *(&v329 - 8) = v145;
        SearchAnswerEntity.init(_:)();
        v267 = (v9 + v130[9]);
        memcpy(v380, v267, sizeof(v380));
        outlined destroy of IntentApplication?(v380, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
        memcpy(v267, v379, 0x88uLL);
        memcpy(v381, v379, 0x88uLL);
        if (_s10OmniSearch0B7ContextVSgWOg(v381) == 1)
        {
          type metadata accessor for IntentFile();
          v268 = v349;
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v269, v270, v271, v272);
        }

        else
        {
          v285 = v267[6];
          v268 = v349;
          EntityProperty.wrappedValue.getter();
        }

        outlined assign with take of SearchResultItem?(v268, v9 + v130[16], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_72_6();
        v302 = v333;
        _s10OmniSearch0B6EntityVWOcTm_0(v261, v333, v303);
        v304 = Logger.logObject.getter();
        v305 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_4_11(v305))
        {
          OUTLINED_FUNCTION_28_3();
          v306 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v307 = swift_slowAlloc();
          v381[0] = v307;
          *v306 = 136642819;
          OUTLINED_FUNCTION_72_6();
          _s10OmniSearch0B6EntityVWOcTm_0(v302, v331, v308);
          String.init<A>(describing:)();
          OUTLINED_FUNCTION_30_12();
          _s10OmniSearch0B6EntityVWOhTm_0();
          v309 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v306 + 4) = v309;
          _os_log_impl(&dword_25D85C000, v304, v135, "Answer missing sources: %{sensitive}s", v306, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v307);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {

          OUTLINED_FUNCTION_30_12();
          _s10OmniSearch0B6EntityVWOhTm_0();
        }
      }

      OUTLINED_FUNCTION_30_12();
      goto LABEL_96;
    case 0x1Du:
      outlined destroy of IntentApplication?(v9 + v130[6], &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
      v273 = *MEMORY[0x277D37078];
      v274 = OUTLINED_FUNCTION_31_15();
      v275(v274);
      OUTLINED_FUNCTION_49_12();
      outlined destroy of IntentApplication?(v9 + v125, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      OUTLINED_FUNCTION_1_33();
      _s10OmniSearch0B6EntityVWOcTm_0(v7, v9 + v125, v276);
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v277, v278, v279, v355);
      v280 = type metadata accessor for OnScreen();
      OUTLINED_FUNCTION_17(v280);
      (*(v281 + 8))(v151);
      goto LABEL_67;
    case 0x1Eu:
      v153 = type metadata accessor for GenericSpotlightItem();
      goto LABEL_55;
    default:
      v153 = type metadata accessor for EmailDocument();
LABEL_55:
      OUTLINED_FUNCTION_17(v153);
      (*(v203 + 8))(v151);
LABEL_56:
      OUTLINED_FUNCTION_1_33();
      v204 = v369;
      _s10OmniSearch0B6EntityVWOcTm_0(v7, v369, v205);
      v206 = v135;
      v207 = v135;
      v208 = v206;
      v209 = v366;
      v375 = v207;
      OUTLINED_FUNCTION_28_1();
      SearchAppEntity.init(result:card:updatedBundleId:)();
      v210 = OUTLINED_FUNCTION_93_0();
      v211 = v368;
      OUTLINED_FUNCTION_166(v210, v212, v368);
      v213 = v367;
      if (v147)
      {
        v374 = v208;
        outlined destroy of IntentApplication?(v209, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
        _s10OmniSearch0B6EntityVWOcTm_0(v7, v359, type metadata accessor for SearchResult);
        v373 = v7;
        OUTLINED_FUNCTION_104_5();
        _s10OmniSearch0B6EntityVWOcTm_0(v214, v215, v216);
        v217 = Logger.logObject.getter();
        v218 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v217, v218))
        {
          v219 = swift_slowAlloc();
          v361 = v9;
          v220 = v219;
          v370 = swift_slowAlloc();
          v381[0] = v370;
          *v220 = 136315395;
          SearchResultItem.type.getter(v380);
          SearchResultKey.rawValue.getter();
          v222 = v221;
          _s10OmniSearch0B6EntityVWOhTm_0();
          OUTLINED_FUNCTION_79_6();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_117_4();

          *(v220 + 4) = v222;
          *(v220 + 12) = 2085;
          OUTLINED_FUNCTION_26_9();
          _s10OmniSearch0B6EntityVWOcTm_0(v213, v356, v223);
          v224 = String.init<A>(describing:)();
          _s10OmniSearch0B6EntityVWOhTm_0();
          OUTLINED_FUNCTION_79_6();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_117_4();
          v204 = v369;

          *(v220 + 14) = v224;
          _os_log_impl(&dword_25D85C000, v217, v218, "Missing AppEntity info for 1P %s, donation: %{sensitive}s", v220, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          v9 = v361;
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {

          _s10OmniSearch0B6EntityVWOhTm_0();
          _s10OmniSearch0B6EntityVWOhTm_0();
        }

        v236 = v362;
        outlined destroy of IntentApplication?(v9 + v130[6], &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
        v237 = *MEMORY[0x277D37088];
        v238 = OUTLINED_FUNCTION_31_15();
        v239(v238);
        OUTLINED_FUNCTION_49_12();
        OUTLINED_FUNCTION_1_33();
        _s10OmniSearch0B6EntityVWOcTm_0(v373, v204, v240);
        v241 = v374;
        SearchSpotlightEntity.init(result:card:)();
        v242 = &_s10OmniSearch0B15SpotlightEntityVSgMd;
        v243 = &_s10OmniSearch0B15SpotlightEntityVSgMR;
        v244 = v9 + v130[8];
        v245 = v236;
LABEL_66:
        outlined assign with take of SearchResultItem?(v245, v244, v242, v243);
      }

      else
      {
        v225 = v360;
        outlined init with take of SearchSpotlightEntity(v209, v360, type metadata accessor for SearchAppEntity);
        outlined destroy of IntentApplication?(v9 + v130[6], &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
        v226 = *MEMORY[0x277D37080];
        v227 = OUTLINED_FUNCTION_127_5();
        v228(v227);
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v229, v230, v231, v144);
        v232 = v130[10];
        outlined destroy of IntentApplication?(v9 + v232, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
        outlined init with take of SearchSpotlightEntity(v225, v9 + v232, type metadata accessor for SearchAppEntity);
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v233, v234, v235, v211);
      }

      goto LABEL_67;
  }
}

void static SearchEntity.addHydratedContent(with:result:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v105 = v4;
  v5 = type metadata accessor for SearchResult(0);
  v6 = OUTLINED_FUNCTION_114(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_3();
  v104 = v9;
  OUTLINED_FUNCTION_78_0();
  v10 = type metadata accessor for Photo();
  v102 = OUTLINED_FUNCTION_14(v10);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_2_3();
  v98 = v13;
  OUTLINED_FUNCTION_78_0();
  v101 = type metadata accessor for NoteDocument();
  v14 = OUTLINED_FUNCTION_14(v101);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_3();
  v96 = v17;
  OUTLINED_FUNCTION_78_0();
  v18 = type metadata accessor for MobileSMSDocument();
  v95 = OUTLINED_FUNCTION_14(v18);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_112_5();
  v103 = type metadata accessor for URL();
  v21 = OUTLINED_FUNCTION_14(v103);
  v94 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_3();
  v93 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v27 = OUTLINED_FUNCTION_114(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_109();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_2();
  v97 = v34;
  OUTLINED_FUNCTION_78_0();
  v100 = type metadata accessor for FileDocument();
  v35 = OUTLINED_FUNCTION_14(v100);
  v99 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_3();
  v40 = v39;
  OUTLINED_FUNCTION_78_0();
  v41 = type metadata accessor for EmailDocument();
  v42 = OUTLINED_FUNCTION_14(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  v47 = type metadata accessor for SearchResultItem(0);
  v48 = OUTLINED_FUNCTION_17(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_36();
  v53 = v52 - v51;
  OUTLINED_FUNCTION_26_9();
  _s10OmniSearch0B6EntityVWOcTm_0(v3, v53, v54);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      (*(v44 + 32))(v0, v53, v41);
      v55 = type metadata accessor for SearchEntity.Builder(0);
      *(v105 + *(v55 + 68)) = 0;
      _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(&lazy protocol witness table cache variable for type EmailDocument and conformance EmailDocument, MEMORY[0x277D371F8]);
      v56 = Encodable.json()();
      (*(v44 + 8))(v0, v41);
      v57 = (v105 + *(v55 + 72));
      object = v57->_object;

      *v57 = v56;
      break;
    case 1u:
      v66 = v95;
      OUTLINED_FUNCTION_144_2();
      v70(v1, v53, v95);
      v68 = v105;
      *(v105 + *(OUTLINED_FUNCTION_148_2() + 68)) = 2;
      _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(&lazy protocol witness table cache variable for type MobileSMSDocument and conformance MobileSMSDocument, MEMORY[0x277D372B8]);
      OUTLINED_FUNCTION_62_7();
      v69 = v1;
      Encodable.json()();
      goto LABEL_9;
    case 3u:
      v66 = v102;
      OUTLINED_FUNCTION_144_2();
      v67(v98, v53, v102);
      v68 = v105;
      *(v105 + *(OUTLINED_FUNCTION_148_2() + 68)) = 4;
      v69 = v98;
      WalletPass.id.getter();
LABEL_9:
      v71 = OUTLINED_FUNCTION_143_3();
      v72(v71, v66);
      v73 = (v68 + *(v44 + 72));
      goto LABEL_11;
    case 4u:
      OUTLINED_FUNCTION_144_2();
      v74(v96, v53, v101);
      *(v105 + *(OUTLINED_FUNCTION_148_2() + 68)) = 3;
      _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(&lazy protocol witness table cache variable for type NoteDocument and conformance NoteDocument, MEMORY[0x277D37178]);
      v69 = v96;
      Encodable.json()();
      v75 = OUTLINED_FUNCTION_143_3();
      v76(v75, v101);
      v73 = (v105 + *(v44 + 72));
LABEL_11:
      v77 = v73[1];

      *v73 = v69;
      v73[1] = v3;
      break;
    case 0xBu:
      (*(v99 + 32))(v40, v53, v100);
      v78 = FileDocument.item.getter();
      v79 = [v78 attributeSet];

      v80 = [v79 URL];
      if (v80)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v81 = 0;
      }

      else
      {
        v81 = 1;
      }

      __swift_storeEnumTagSinglePayload(v32, v81, 1, v103);
      v82 = OUTLINED_FUNCTION_180();
      outlined init with take of SearchResultItem?(v82, v83, v84, v85);
      v86 = OUTLINED_FUNCTION_11_1();
      if (__swift_getEnumTagSinglePayload(v86, v87, v103))
      {
        (*(v99 + 8))(v40, v100);
        outlined destroy of IntentApplication?(v97, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_93_5();
        v88 = OUTLINED_FUNCTION_180();
        v89(v88);
        outlined destroy of IntentApplication?(v97, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        URL.absoluteString.getter();
        OUTLINED_FUNCTION_140_2();
        (*(v94 + 8))(v93, v103);
        (*(v99 + 8))(v40, v100);
        v90 = type metadata accessor for SearchEntity.Builder(0);
        *(v105 + *(v90 + 68)) = 1;
        v91 = (v105 + *(v90 + 72));
        v92 = v91[1];

        *v91 = v97;
        v91[1] = v93;
      }

      break;
    default:
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v59, static Logging.search);
      OUTLINED_FUNCTION_1_33();
      _s10OmniSearch0B6EntityVWOcTm_0(v3, v104, v60);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v61, v62))
      {
        OUTLINED_FUNCTION_28_3();
        v63 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v64 = swift_slowAlloc();
        v107 = v64;
        *v63 = 136315138;
        SearchResultItem.type.getter(&v106);
        SearchResultKey.rawValue.getter();
        OUTLINED_FUNCTION_0_32();
        _s10OmniSearch0B6EntityVWOhTm_0();
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v63 + 4) = v65;
        _os_log_impl(&dword_25D85C000, v61, v62, "Not attaching hydrated content for search result type %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        OUTLINED_FUNCTION_0_32();
        _s10OmniSearch0B6EntityVWOhTm_0();
      }

      OUTLINED_FUNCTION_25_12();
      _s10OmniSearch0B6EntityVWOhTm_0();
      break;
  }

  OUTLINED_FUNCTION_148();
}

void static SearchEntity.buildPreextractedResult(with:result:derivedType:card:)()
{
  OUTLINED_FUNCTION_155();
  v161 = v2;
  v4 = v3;
  v165 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49_3();
  v168 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_49_3();
  v163 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_49_3();
  v160 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_49_3();
  v162 = v27;
  OUTLINED_FUNCTION_78_0();
  v166 = type metadata accessor for PreExtractedCard();
  v28 = OUTLINED_FUNCTION_14(v166);
  v159 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_39_0();
  v158 = v32;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_2();
  v164 = v34;
  v35 = OUTLINED_FUNCTION_78_0();
  v36 = type metadata accessor for SearchResult(v35);
  v37 = OUTLINED_FUNCTION_17(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_3();
  v167 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v42 = OUTLINED_FUNCTION_114(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_109();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v153 - v49;
  v51 = type metadata accessor for IntentFile();
  v52 = OUTLINED_FUNCTION_14(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v57 = *v4;
  v58 = *(OUTLINED_FUNCTION_148_2() + 20);
  if (__swift_getEnumTagSinglePayload(v7 + v58, 1, v36))
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v51);
    outlined destroy of IntentApplication?(v50, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v67, static Logging.search);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_105_6(v69))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v70, v71, v72, v73, v74, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }
  }

  else
  {
    v153 = v47;
    v154 = v0;
    v155 = v57;
    v59 = v166;
    v156 = v54;
    v157 = v1;
    OUTLINED_FUNCTION_1_33();
    v60 = v168;
    _s10OmniSearch0B6EntityVWOcTm_0(v7 + v58, v167, v61);
    v62 = *(v36 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v63 = CodableNSSecureCoding.wrappedValue.getter();
    CSSearchableItem.asIntentFile()();
    OUTLINED_FUNCTION_0_32();
    _s10OmniSearch0B6EntityVWOhTm_0();

    OUTLINED_FUNCTION_44_0();
    v75 = v51;
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v51);
    v80 = v156;
    v79 = v157;
    v81 = v50;
    v82 = v75;
    (*(v156 + 32))(v157, v81, v75);
    v83 = v165[4];
    __swift_project_boxed_opaque_existential_1(v165, v165[3]);
    v84 = v155;
    if (v155)
    {
      if (v155 == 1)
      {
        v85 = v83[4];
        v86 = v163;
        v87 = OUTLINED_FUNCTION_113_5();
        v88(v87);
        type metadata accessor for PreExtractedContact();
        v89 = OUTLINED_FUNCTION_103_6();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v89, v90, v91);
        outlined destroy of IntentApplication?(v86, &_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
        if (EnumTagSinglePayload != 1)
        {
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v93 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v93, static Logging.search);
          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.info.getter();
          if (!OUTLINED_FUNCTION_105_6(v95))
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v104 = v83[5];
        v105 = v79;
        v106 = v60;
        v107 = OUTLINED_FUNCTION_113_5();
        v108(v107);
        type metadata accessor for PreExtractedSharedLink();
        v109 = OUTLINED_FUNCTION_11_1();
        v112 = __swift_getEnumTagSinglePayload(v109, v110, v111);
        v113 = v106;
        v79 = v105;
        outlined destroy of IntentApplication?(v113, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
        if (v112 != 1)
        {
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v146 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v146, static Logging.search);
          v94 = Logger.logObject.getter();
          v147 = static os_log_type_t.info.getter();
          if (!OUTLINED_FUNCTION_105_6(v147))
          {
            goto LABEL_28;
          }

LABEL_27:
          *OUTLINED_FUNCTION_172() = 0;
          OUTLINED_FUNCTION_110_4();
          _os_log_impl(v148, v149, v150, v151, v152, 2u);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
LABEL_28:

          (*(v80 + 8))(v79, v75);
          goto LABEL_8;
        }
      }
    }

    else
    {
      v96 = v83[3];
      v97 = v162;
      v98 = OUTLINED_FUNCTION_113_5();
      v99(v98);
      v100 = OUTLINED_FUNCTION_11_1();
      v101 = v59;
      OUTLINED_FUNCTION_166(v100, v102, v59);
      if (!v103)
      {
        v127 = v159;
        v128 = *(v159 + 32);
        v129 = v164;
        v130 = OUTLINED_FUNCTION_180();
        v131(v130);
        v132 = *(v154 + 24);
        outlined destroy of IntentApplication?(v7 + v132, &_s15OmniSearchTypes0B10ResultTypeOSgMd, &_s15OmniSearchTypes0B10ResultTypeOSgMR);
        v133 = *MEMORY[0x277D37070];
        v134 = type metadata accessor for SearchResultType();
        OUTLINED_FUNCTION_17(v134);
        (*(v135 + 104))(v7 + v132, v133, v134);
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v136, v137, v138, v134);
        OUTLINED_FUNCTION_93_5();
        v139(v158, v129, v101);
        v140 = v157;
        (*(v80 + 16))(v153, v157, v82);
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v141, v142, v143, v82);
        v144 = v161;
        v145 = v160;
        IdCardEntity.init(preExtractedCard:card:encodedSearchableItem:)();
        (*(v127 + 8))(v164, v101);
        (*(v80 + 8))(v140, v82);
        outlined assign with take of SearchResultItem?(v145, v7 + *(v154 + 56), &_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
        goto LABEL_8;
      }

      outlined destroy of IntentApplication?(v97, &_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
      v79 = v157;
    }

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v114, static Logging.search);
    v94 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_105_6(v115))
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_28_3();
    v116 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v117 = swift_slowAlloc();
    v118 = v84;
    v119 = v79;
    v120 = v117;
    v170 = v117;
    *v116 = 136315138;
    v169 = v118;
    String.init<A>(describing:)();
    v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v116 + 4) = v121;
    OUTLINED_FUNCTION_110_4();
    _os_log_impl(v122, v123, v124, v125, v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v120);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    (*(v80 + 8))(v119, v75);
  }

LABEL_8:
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in closure #1 in SearchEntity.init(result:context:searchString:derivedType:)(uint64_t a1, void *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a1 + 8);

  *a1 = v5;
  *(a1 + 8) = v4;
  v8 = a2[4];
  v7 = a2[5];
  v9 = *(a1 + 24);

  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
  v11 = a2[2];
  v10 = a2[3];
  v12 = *(a1 + 64);

  *(a1 + 56) = v11;
  *(a1 + 64) = v10;
  v13 = type metadata accessor for GlobalItem();
  *(a1 + 496) = *(a2 + *(v13 + 36));
  v14 = *(v13 + 28);
  v15 = *(type metadata accessor for SearchGlobalEntity.Builder(0) + 68);

  return outlined assign with copy of GlobalDialog?(a2 + v14, a1 + v15);
}

uint64_t closure #2 in closure #1 in SearchEntity.init(result:context:searchString:derivedType:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v213 = a7;
  v212 = a6;
  v211 = a5;
  v215 = a4;
  v222 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v186 = &v184 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v197 = &v184 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v200 = &v184 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v188 = &v184 - v19;
  MEMORY[0x28223BE20](v18);
  v189 = &v184 - v20;
  v214 = type metadata accessor for IntentFile();
  v191 = *(v214 - 8);
  v21 = *(v191 + 64);
  v22 = MEMORY[0x28223BE20](v214);
  v190 = &v184 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v185 = &v184 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v196 = &v184 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v194 = &v184 - v29;
  v195 = type metadata accessor for SearchPropertyResponse(0);
  v30 = *(*(v195 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v195);
  v199 = &v184 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v187 = &v184 - v33;
  v217 = type metadata accessor for SearchGlobalEntity(0);
  v34 = *(*(v217 - 8) + 64);
  MEMORY[0x28223BE20](v217);
  v203 = &v184 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v184 - v38;
  v40 = type metadata accessor for SearchEntity.Builder(0);
  v41 = *(*(v40 - 1) + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v210 = &v184 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = (&v184 - v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v50 = &v184 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v184 - v52;
  MEMORY[0x28223BE20](v51);
  v209 = &v184 - v54;
  v216 = type metadata accessor for SearchEntity(0);
  v204 = *(v216 - 8);
  v55 = *(v204 + 64);
  MEMORY[0x28223BE20](v216);
  v208 = &v184 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v193 = &v184 - v59;
  v218 = type metadata accessor for SearchResult(0);
  v220 = *(v218 - 8);
  v60 = *(v220 + 64);
  v61 = MEMORY[0x28223BE20](v218);
  v223 = &v184 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v221 = &v184 - v63;
  v64 = *a2;
  v65 = a2[1];
  v66 = *(a1 + 1);

  *a1 = v64;
  *(a1 + 1) = v65;
  v67 = a2[2];
  v68 = a2[3];
  v69 = *(a1 + 3);

  *(a1 + 2) = v67;
  *(a1 + 3) = v68;
  v70 = *(v222 + *(v218 + 28));
  v71 = *(a1 + 6);

  v198 = a1;
  v202 = v70;
  *(a1 + 6) = v70;
  v201 = a2;
  v72 = a2[5];
  v73 = *(v72 + 16);
  v192 = v72;
  if (v73)
  {
    _s10OmniSearch18GenericEventEntityVSgWOi0_(__src);
    v74 = v220;
    v75 = v72 + ((*(v220 + 80) + 32) & ~*(v220 + 80));
    swift_beginAccess();
    v76 = MEMORY[0x277D84F90];
    v205 = *(v74 + 72);
    v207 = v39;
    v206 = v53;
    do
    {
      v220 = v73;
      v222 = v76;
      v219 = v75;
      v77 = v221;
      _s10OmniSearch0B6EntityVWOcTm_0(v75, v221, type metadata accessor for SearchResult);
      v78 = v223;
      _s10OmniSearch0B6EntityVWOcTm_0(v77, v223, type metadata accessor for SearchResult);
      v79 = v215;
      outlined init with copy of ChatMessageRecord(v215 + 16, &v225);
      v80 = v226;
      v81 = v227;
      __swift_project_boxed_opaque_existential_1(&v225, v226);
      LOBYTE(v224[0]) = 0;
      v82 = v211;
      v83 = v50;
      v84 = v212;
      v85 = (*(v81 + 24))(v78, v224, v211, v212, v80, v81);
      *v45 = 0;
      v45[1] = 0;
      __swift_storeEnumTagSinglePayload(v45 + v40[5], 1, 1, v218);
      v86 = v40[6];
      v87 = type metadata accessor for SearchResultType();
      __swift_storeEnumTagSinglePayload(v45 + v86, 1, 1, v87);
      __swift_storeEnumTagSinglePayload(v45 + v40[7], 1, 1, v217);
      v88 = v40[8];
      v89 = type metadata accessor for SearchSpotlightEntity(0);
      __swift_storeEnumTagSinglePayload(v45 + v88, 1, 1, v89);
      memcpy(v45 + v40[9], __src, 0x88uLL);
      v90 = v40[10];
      v91 = type metadata accessor for SearchAppEntity(0);
      __swift_storeEnumTagSinglePayload(v45 + v90, 1, 1, v91);
      v92 = v214;
      __swift_storeEnumTagSinglePayload(v45 + v40[11], 1, 1, v214);
      v93 = (v45 + v40[12]);
      *v93 = 0;
      v93[1] = 0;
      v94 = v40[13];
      v95 = type metadata accessor for EventEntity();
      __swift_storeEnumTagSinglePayload(v45 + v94, 1, 1, v95);
      v96 = v40[14];
      v97 = type metadata accessor for IdCardEntity();
      __swift_storeEnumTagSinglePayload(v45 + v96, 1, 1, v97);
      v98 = (v45 + v40[15]);
      v98[1] = 0u;
      v98[2] = 0u;
      *v98 = 0u;
      __swift_storeEnumTagSinglePayload(v45 + v40[16], 1, 1, v92);
      *(v45 + v40[17]) = 5;
      v99 = (v45 + v40[18]);
      *v99 = 0;
      v99[1] = 0;
      v100 = v84;
      v50 = v83;
      closure #1 in SearchEntity.init(result:context:searchString:derivedType:)(v45, v78, v82, v100, v85, v213, v79);
      _s10OmniSearch0B6EntityVWOcTm_0(v45, v210, type metadata accessor for SearchEntity.Builder);
      SearchEntity.init(builder:)();
      _s10OmniSearch0B6EntityVWOhTm_0();
      v101 = v216;
      if (__swift_getEnumTagSinglePayload(v83, 1, v216))
      {
        outlined destroy of IntentApplication?(v83, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        v102 = 1;
        v103 = v207;
        v104 = v206;
      }

      else
      {
        v104 = v206;
        outlined init with take of SearchSpotlightEntity(v83, v206, type metadata accessor for SearchEntity);
        v102 = 0;
        v103 = v207;
      }

      v105 = v209;
      __swift_storeEnumTagSinglePayload(v104, v102, 1, v101);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v104, 1, v101);
      v107 = v219;
      if (EnumTagSinglePayload)
      {
        _s10OmniSearch0B6EntityVWOhTm_0();

        outlined destroy of IntentApplication?(v104, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(&v225);
        _s10OmniSearch0B6EntityVWOhTm_0();
        __swift_storeEnumTagSinglePayload(v105, 1, 1, v101);
      }

      else
      {
        outlined init with take of SearchSpotlightEntity(v104, v105, type metadata accessor for SearchEntity);
        v108 = (v223 + *(v218 + 40));
        v109 = v108[1];
        v110 = *(v105 + 128);
        v224[0] = *v108;
        v224[1] = v109;

        EntityProperty.wrappedValue.setter();
        v111 = *(v105 + 32);
        EntityProperty.wrappedValue.getter();
        if (__swift_getEnumTagSinglePayload(v103, 1, v217))
        {

          _s10OmniSearch0B6EntityVWOhTm_0();
          outlined destroy of IntentApplication?(v103, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
        }

        else
        {
          v112 = v203;
          _s10OmniSearch0B6EntityVWOcTm_0(v103, v203, type metadata accessor for SearchGlobalEntity);
          outlined destroy of IntentApplication?(v103, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
          v113 = *(v105 + 128);
          EntityProperty.wrappedValue.getter();
          v114 = *(v112 + 488);
          EntityProperty.wrappedValue.setter();

          _s10OmniSearch0B6EntityVWOhTm_0();
          _s10OmniSearch0B6EntityVWOhTm_0();
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v225);
        v101 = v216;
        __swift_storeEnumTagSinglePayload(v105, 0, 1, v216);
        _s10OmniSearch0B6EntityVWOhTm_0();
      }

      v76 = v222;
      if (__swift_getEnumTagSinglePayload(v105, 1, v101) == 1)
      {
        outlined destroy of IntentApplication?(v105, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
      }

      else
      {
        outlined init with take of SearchSpotlightEntity(v105, v208, type metadata accessor for SearchEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v76 + 16) + 1, 1, v76);
          v76 = v117;
        }

        v116 = *(v76 + 16);
        v115 = *(v76 + 24);
        if (v116 >= v115 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v115 > 1, v116 + 1, 1, v76);
          v76 = v118;
        }

        *(v76 + 16) = v116 + 1;
        outlined init with take of SearchSpotlightEntity(v208, v76 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v116, type metadata accessor for SearchEntity);
      }

      v75 = v107 + v205;
      v73 = v220 - 1;
    }

    while (v220 != 1);
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
  }

  v119 = type metadata accessor for SearchAnswerEntity.Builder();
  v120 = v119[10];
  v121 = v198;
  v122 = *&v198[v120];

  *&v121[v120] = v76;
  v123 = v193;
  specialized Collection.first.getter(v192, v193);
  v124 = v218;
  v125 = __swift_getEnumTagSinglePayload(v123, 1, v218);
  v126 = v201;
  v127 = v215;
  v128 = v195;
  if (v125 == 1)
  {
    outlined destroy of IntentApplication?(v123, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v129 = 0;
    v130 = 0;
  }

  else
  {
    v131 = *(v124 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v132 = CodableNSSecureCoding.wrappedValue.getter();
    _s10OmniSearch0B6EntityVWOhTm_0();
    v129 = CSSearchableItem.title.getter();
    v130 = v133;
  }

  v134 = v214;
  v135 = *(v121 + 5);

  *(v121 + 4) = v129;
  *(v121 + 5) = v130;
  v136 = Answer.llmConsumableDescription(locale:)(0);
  v137 = &v121[v119[13]];
  object = v137->_object;

  *v137 = v136;
  v139 = v194;
  specialized Collection.first.getter(v202, v194);
  if (__swift_getEnumTagSinglePayload(v139, 1, v128) == 1)
  {
    outlined destroy of IntentApplication?(v139, &_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
    v140 = v197;
    v141 = v199;
LABEL_33:
    v148 = v126[6];

    v150 = v200;
    IntentFile.init(experiences:)(v149, v200);
    outlined assign with take of SearchResultItem?(v150, &v121[v119[8]], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    goto LABEL_35;
  }

  v142 = v187;
  outlined init with take of SearchSpotlightEntity(v139, v187, type metadata accessor for SearchPropertyResponse);
  v143 = *(v142 + v128[14]);
  v144 = v188;
  EntityProperty.wrappedValue.getter();
  v145 = v127;
  if (__swift_getEnumTagSinglePayload(v144, 1, v134) == 1)
  {
    v146 = *(v142 + v128[15]);
    v147 = v189;
    EntityProperty.wrappedValue.getter();
    _s10OmniSearch0B6EntityVWOhTm_0();
    if (__swift_getEnumTagSinglePayload(v144, 1, v134) != 1)
    {
      outlined destroy of IntentApplication?(v144, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    }
  }

  else
  {
    _s10OmniSearch0B6EntityVWOhTm_0();
    v147 = v189;
    (*(v191 + 32))(v189, v144, v134);
    __swift_storeEnumTagSinglePayload(v147, 0, 1, v134);
  }

  if (__swift_getEnumTagSinglePayload(v147, 1, v134) == 1)
  {
    outlined destroy of IntentApplication?(v147, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    v140 = v197;
    v141 = v199;
    v126 = v201;
    goto LABEL_33;
  }

  v151 = *(v191 + 32);
  v152 = v185;
  v151(v185, v147, v134);
  v153 = v119[8];
  outlined destroy of IntentApplication?(&v121[v153], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v151(&v121[v153], v152, v134);
  __swift_storeEnumTagSinglePayload(&v121[v153], 0, 1, v134);
  v140 = v197;
  v141 = v199;
  v127 = v145;
  v126 = v201;
LABEL_35:
  v154 = v196;
  specialized Collection.first.getter(v202, v196);
  if (__swift_getEnumTagSinglePayload(v154, 1, v128) == 1)
  {
    v155 = &_s10OmniSearch0B16PropertyResponseVSgMd;
    v156 = &_s10OmniSearch0B16PropertyResponseVSgMR;
    v157 = v154;
  }

  else
  {
    outlined init with take of SearchSpotlightEntity(v154, v141, type metadata accessor for SearchPropertyResponse);
    v158 = *(v141 + v128[17]);
    EntityProperty.wrappedValue.getter();
    if (__swift_getEnumTagSinglePayload(v140, 1, v134) != 1)
    {
      v222 = v76;
      v170 = *(v191 + 32);
      v170(v190, v140, v134);
      if (one-time initialization token for search != -1)
      {
        swift_once();
      }

      v171 = type metadata accessor for Logger();
      __swift_project_value_buffer(v171, static Logging.search);
      v172 = Logger.logObject.getter();
      v173 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        *v174 = 0;
        _os_log_impl(&dword_25D85C000, v172, v173, "Adding PommesContext as IntentFile from resolved property to SearchAnswerEntity", v174, 2u);
        MEMORY[0x25F8A1050](v174, -1, -1);
      }

      _s10OmniSearch0B6EntityVWOhTm_0();
      v175 = v119[9];
      outlined destroy of IntentApplication?(&v121[v175], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
      v170(&v121[v175], v190, v134);
      __swift_storeEnumTagSinglePayload(&v121[v175], 0, 1, v134);
      goto LABEL_50;
    }

    _s10OmniSearch0B6EntityVWOhTm_0();
    v155 = &_s10AppIntents10IntentFileVSgMd;
    v156 = &_s10AppIntents10IntentFileVSgMR;
    v157 = v140;
  }

  outlined destroy of IntentApplication?(v157, v155, v156);
  v159 = (v126 + *(type metadata accessor for Answer() + 48));
  v160 = v159[1];
  if (v160 >> 60 != 15)
  {
    v222 = v76;
    outlined copy of Data._Representation(*v159, v160);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v161 = type metadata accessor for Logger();
    __swift_project_value_buffer(v161, static Logging.search);
    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = v126;
      v165 = v127;
      v166 = swift_slowAlloc();
      *v166 = 0;
      _os_log_impl(&dword_25D85C000, v162, v163, "Adding PommesContext as IntentFile from Answer document to SearchAnswerEntity", v166, 2u);
      v167 = v166;
      v127 = v165;
      v126 = v164;
      MEMORY[0x25F8A1050](v167, -1, -1);
    }

    v168 = type metadata accessor for UTType();
    __swift_storeEnumTagSinglePayload(v186, 1, 1, v168);
    v169 = v200;
    IntentFile.init(data:filename:type:)();
    __swift_storeEnumTagSinglePayload(v169, 0, 1, v134);
    outlined assign with take of SearchResultItem?(v169, &v121[v119[9]], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
LABEL_50:
    v76 = v222;
  }

  v176 = _s10OmniSearch18EntityCardBuildingPAAE15cardForEntities_7contextSo6SFCardCSayAA0bC0VG_AA0bC13VisualContextCtFZAA0cD7BuilderV_Tt1g5(v76, v127);
  v177 = v119[11];

  *&v121[v177] = v176;
  v178 = (v126 + *(type metadata accessor for Answer() + 44));
  v180 = *v178;
  v179 = v178[1];
  v181 = &v121[v119[15]];
  v182 = *(v181 + 1);

  *v181 = v180;
  *(v181 + 1) = v179;
  return result;
}

void static SearchEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_155();
  v84 = v2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable34_ConditionalTransferRepresentationVyAA05ProxyE0Vy10OmniSearch0H6EntityVAF0h6AnswerI0VGG_ACyAEyAhF0h9SpotlightI0VGGACyAEyAhF0h6GlobalI0VGGtMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA05ProxyE0Vy10OmniSearch0H6EntityVAF0h6AnswerI0VGG_ACyAEyAhF0h9SpotlightI0VGGACyAEyAhF0h6GlobalI0VGGtMR);
  OUTLINED_FUNCTION_17(v83);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_49_3();
  v82 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable19ProxyRepresentationVy10OmniSearch0F6EntityVAD0f6GlobalG0VGMd, &_s16CoreTransferable19ProxyRepresentationVy10OmniSearch0F6EntityVAD0f6GlobalG0VGMR);
  v79 = OUTLINED_FUNCTION_14(v7);
  v80 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49_3();
  v75 = v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable34_ConditionalTransferRepresentationVyAA05ProxyE0Vy10OmniSearch0H6EntityVAF0h6GlobalI0VGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA05ProxyE0Vy10OmniSearch0H6EntityVAF0h6GlobalI0VGGMR);
  OUTLINED_FUNCTION_14(v81);
  v78 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_49_3();
  v77 = v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable19ProxyRepresentationVy10OmniSearch0F6EntityVAD0f9SpotlightG0VGMd, &_s16CoreTransferable19ProxyRepresentationVy10OmniSearch0F6EntityVAD0f9SpotlightG0VGMR);
  OUTLINED_FUNCTION_14(v72);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v67 - v23;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable34_ConditionalTransferRepresentationVyAA05ProxyE0Vy10OmniSearch0H6EntityVAF0h9SpotlightI0VGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA05ProxyE0Vy10OmniSearch0H6EntityVAF0h9SpotlightI0VGGMR);
  OUTLINED_FUNCTION_14(v76);
  v74 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_49_3();
  v71 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable19ProxyRepresentationVy10OmniSearch0F6EntityVAD0f6AnswerG0VGMd, &_s16CoreTransferable19ProxyRepresentationVy10OmniSearch0F6EntityVAD0f6AnswerG0VGMR);
  OUTLINED_FUNCTION_14(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_182();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable34_ConditionalTransferRepresentationVyAA05ProxyE0Vy10OmniSearch0H6EntityVAF0h6AnswerI0VGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA05ProxyE0Vy10OmniSearch0H6EntityVAF0h6AnswerI0VGGMR);
  OUTLINED_FUNCTION_14(v73);
  v37 = v36;
  v68 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_36_2();
  v41 = type metadata accessor for SearchEntity(0);
  OUTLINED_FUNCTION_21_12();
  v44 = _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v42, v43);
  lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();
  ProxyRepresentation.init(exporting:)();
  lazy protocol witness table accessor for type ProxyRepresentation<SearchEntity, SearchAnswerEntity> and conformance ProxyRepresentation<A, B>(&lazy protocol witness table cache variable for type ProxyRepresentation<SearchEntity, SearchAnswerEntity> and conformance ProxyRepresentation<A, B>, &_s16CoreTransferable19ProxyRepresentationVy10OmniSearch0F6EntityVAD0f6AnswerG0VGMd, &_s16CoreTransferable19ProxyRepresentationVy10OmniSearch0F6EntityVAD0f6AnswerG0VGMR);
  v67 = v1;
  TransferRepresentation.exportingCondition(_:)();
  (*(v32 + 8))(v0, v30);
  type metadata accessor for SearchSpotlightEntity(0);
  OUTLINED_FUNCTION_9_18();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v45, v46);
  v69 = v44;
  v70 = v41;
  ProxyRepresentation.init(exporting:)();
  lazy protocol witness table accessor for type ProxyRepresentation<SearchEntity, SearchAnswerEntity> and conformance ProxyRepresentation<A, B>(&lazy protocol witness table cache variable for type ProxyRepresentation<SearchEntity, SearchSpotlightEntity> and conformance ProxyRepresentation<A, B>, &_s16CoreTransferable19ProxyRepresentationVy10OmniSearch0F6EntityVAD0f9SpotlightG0VGMd, &_s16CoreTransferable19ProxyRepresentationVy10OmniSearch0F6EntityVAD0f9SpotlightG0VGMR);
  v47 = v71;
  v48 = v72;
  TransferRepresentation.exportingCondition(_:)();
  (*(v19 + 8))(v24, v48);
  type metadata accessor for SearchGlobalEntity(0);
  OUTLINED_FUNCTION_10_15();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v49, v50);
  ProxyRepresentation.init(exporting:)();
  lazy protocol witness table accessor for type ProxyRepresentation<SearchEntity, SearchAnswerEntity> and conformance ProxyRepresentation<A, B>(&lazy protocol witness table cache variable for type ProxyRepresentation<SearchEntity, SearchGlobalEntity> and conformance ProxyRepresentation<A, B>, &_s16CoreTransferable19ProxyRepresentationVy10OmniSearch0F6EntityVAD0f6GlobalG0VGMd, &_s16CoreTransferable19ProxyRepresentationVy10OmniSearch0F6EntityVAD0f6GlobalG0VGMR);
  v51 = v77;
  TransferRepresentation.exportingCondition(_:)();
  v52 = *(v80 + 8);
  v53 = OUTLINED_FUNCTION_180();
  v54(v53);
  v55 = v82;
  v56 = *(v83 + 48);
  v57 = *(v83 + 64);
  v58 = v1;
  v59 = v73;
  (*(v37 + 16))(v82, v58, v73);
  v60 = v74;
  OUTLINED_FUNCTION_93_5();
  v61 = v47;
  v62 = v47;
  v63 = v76;
  v64(v55 + v56, v61, v76);
  v65 = v78;
  v66 = v81;
  (*(v78 + 16))(v55 + v57, v51, v81);
  TupleTransferRepresentation.init(_:)();
  (*(v65 + 8))(v51, v66);
  (*(v60 + 8))(v62, v63);
  (*(v68 + 8))(v67, v59);
  OUTLINED_FUNCTION_148();
}

void *specialized implicit closure #1 in static SearchEntity.transferRepresentation.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  EntityProperty.wrappedValue.getter();
  result = _s10OmniSearch0B7ContextVSgWOg(__src);
  if (result != 1)
  {
    return memcpy(a2, __src, 0x88uLL);
  }

  __break(1u);
  return result;
}

BOOL closure #1 in static SearchEntity.transferRepresentation.getter(uint64_t a1)
{
  v1 = *(a1 + 24);
  EntityProperty.wrappedValue.getter();
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v6, __src, sizeof(v6));
  v2 = _s10OmniSearch0B7ContextVSgWOg(v6);
  if (v2 != 1)
  {
    outlined destroy of IntentApplication?(__dst, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
  }

  return v2 != 1;
}

uint64_t specialized implicit closure #2 in static SearchEntity.transferRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = *(a1 + 40);
  EntityProperty.wrappedValue.getter();
  v12 = type metadata accessor for SearchSpotlightEntity(0);
  result = __swift_getEnumTagSinglePayload(v10, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of SpotlightRankingItem?(v10, v8, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
    outlined init with take of SearchSpotlightEntity(v8, a2, type metadata accessor for SearchSpotlightEntity);
    return outlined destroy of IntentApplication?(v10, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  }

  return result;
}

BOOL closure #2 in static SearchEntity.transferRepresentation.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = *(a1 + 40);
  EntityProperty.wrappedValue.getter();
  v7 = type metadata accessor for SearchSpotlightEntity(0);
  v8 = __swift_getEnumTagSinglePayload(v5, 1, v7) != 1;
  outlined destroy of IntentApplication?(v5, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  return v8;
}

uint64_t specialized implicit closure #3 in static SearchEntity.transferRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = *(a1 + 32);
  EntityProperty.wrappedValue.getter();
  v12 = type metadata accessor for SearchGlobalEntity(0);
  result = __swift_getEnumTagSinglePayload(v10, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of SpotlightRankingItem?(v10, v8, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
    outlined init with take of SearchSpotlightEntity(v8, a2, type metadata accessor for SearchGlobalEntity);
    return outlined destroy of IntentApplication?(v10, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  }

  return result;
}

BOOL closure #3 in static SearchEntity.transferRepresentation.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = *(a1 + 32);
  EntityProperty.wrappedValue.getter();
  v7 = type metadata accessor for SearchGlobalEntity(0);
  v8 = __swift_getEnumTagSinglePayload(v5, 1, v7) != 1;
  outlined destroy of IntentApplication?(v5, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  return v8;
}

OmniSearch::SearchEntity::CodingKeys_optional __swiftcall SearchEntity.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchEntity.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t SearchEntity.CodingKeys.stringValue.getter(char a1)
{
  result = 0x656372756F73;
  switch(a1)
  {
    case 1:
      result = 1685217635;
      break;
    case 2:
      result = 0x7453686372616573;
      break;
    case 3:
      result = 0x704F646C756F6873;
      break;
    default:
      return result;
  }

  return result;
}

OmniSearch::SearchEntity::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchEntity.CodingKeys@<W0>(Swift::String *a1@<X0>, OmniSearch::SearchEntity::CodingKeys_optional *a2@<X8>)
{
  result.value = SearchEntity.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchEntity.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = SearchEntity.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchEntity.CodingKeys and conformance SearchEntity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchEntity.CodingKeys and conformance SearchEntity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *SearchEntity.encodable.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = type metadata accessor for SearchEntity(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v59 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v59 - v16;
  v18 = type metadata accessor for SearchResultType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v59 - v24;
  v26 = v1[1];
  EntityProperty.wrappedValue.getter();
  result = (*(v19 + 88))(v25, v18);
  if (result == *MEMORY[0x277D37080])
  {
    v28 = v2[2];
    EntityProperty.wrappedValue.getter();
    v29 = type metadata accessor for SearchAppEntity(0);
    if (__swift_getEnumTagSinglePayload(v17, 1, v29) == 1)
    {
      v30 = &_s10OmniSearch0B9AppEntityVSgMd;
      v31 = &_s10OmniSearch0B9AppEntityVSgMR;
      v32 = v17;
LABEL_4:
      result = outlined destroy of IntentApplication?(v32, v30, v31);
      v33 = v63;
      *v63 = 0u;
      *(v33 + 1) = 0u;
      v33[4] = 0;
      return result;
    }

    v36 = v63;
    v63[3] = v29;
    v36[4] = _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(&lazy protocol witness table cache variable for type SearchAppEntity and conformance SearchAppEntity, type metadata accessor for SearchAppEntity);
    boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v36);
    v38 = type metadata accessor for SearchAppEntity;
    v39 = v17;
    return outlined init with take of SearchSpotlightEntity(v39, boxed_opaque_existential_1Tm_0, v38);
  }

  if (result == *MEMORY[0x277D37060])
  {
    v34 = v2[3];
    EntityProperty.wrappedValue.getter();
    memcpy(v65, v64, 0x88uLL);
    result = _s10OmniSearch0B7ContextVSgWOg(v65);
    if (result == 1)
    {
      goto LABEL_7;
    }

    v42 = v63;
    v63[3] = &type metadata for SearchAnswerEntity;
    v42[4] = lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();
    v43 = swift_allocObject();
    *v42 = v43;
    return memcpy((v43 + 16), v65, 0x88uLL);
  }

  else
  {
    if (result == *MEMORY[0x277D37068])
    {
      v40 = v2[4];
      EntityProperty.wrappedValue.getter();
      v41 = type metadata accessor for SearchGlobalEntity(0);
      if (__swift_getEnumTagSinglePayload(v9, 1, v41) == 1)
      {
        v30 = &_s10OmniSearch0B12GlobalEntityVSgMd;
        v31 = &_s10OmniSearch0B12GlobalEntityVSgMR;
        v32 = v9;
        goto LABEL_4;
      }

      v46 = v63;
      v63[3] = v41;
      v46[4] = _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(&lazy protocol witness table cache variable for type SearchGlobalEntity and conformance SearchGlobalEntity, type metadata accessor for SearchGlobalEntity);
      boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v46);
      v38 = type metadata accessor for SearchGlobalEntity;
      v39 = v9;
      return outlined init with take of SearchSpotlightEntity(v39, boxed_opaque_existential_1Tm_0, v38);
    }

    if (result == *MEMORY[0x277D37088])
    {
      v44 = v2[5];
      EntityProperty.wrappedValue.getter();
      v45 = type metadata accessor for SearchSpotlightEntity(0);
      if (__swift_getEnumTagSinglePayload(v13, 1, v45) == 1)
      {
        v30 = &_s10OmniSearch0B15SpotlightEntityVSgMd;
        v31 = &_s10OmniSearch0B15SpotlightEntityVSgMR;
        v32 = v13;
        goto LABEL_4;
      }

      v57 = v63;
      v63[3] = v45;
      v57[4] = _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(&lazy protocol witness table cache variable for type SearchSpotlightEntity and conformance SearchSpotlightEntity, type metadata accessor for SearchSpotlightEntity);
      boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v57);
      v38 = type metadata accessor for SearchSpotlightEntity;
      v39 = v13;
      return outlined init with take of SearchSpotlightEntity(v39, boxed_opaque_existential_1Tm_0, v38);
    }

    if (result == *MEMORY[0x277D37050] || result == *MEMORY[0x277D37070] || result == *MEMORY[0x277D37058] || result == *MEMORY[0x277D37078])
    {
LABEL_7:
      v35 = v63;
      v63[4] = 0;
      *v35 = 0u;
      *(v35 + 1) = 0u;
      return result;
    }

    if (one-time initialization token for stextension != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logging.stextension);
    v48 = v62;
    _s10OmniSearch0B6EntityVWOcTm_0(v2, v62, type metadata accessor for SearchEntity);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v65[0] = v61;
      *v51 = 136315138;
      v60 = v50;
      v52 = *(v48 + 8);
      EntityProperty.wrappedValue.getter();
      v59 = SearchResultType.rawValue.getter();
      v53 = v23;
      v54 = *(v19 + 8);
      v54(v53, v18);
      _s10OmniSearch0B6EntityVWOhTm_0();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v51 + 4) = v55;
      _os_log_impl(&dword_25D85C000, v49, v60, "Unhandled entity type: %s", v51, 0xCu);
      v56 = v61;
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x25F8A1050](v56, -1, -1);
      MEMORY[0x25F8A1050](v51, -1, -1);
    }

    else
    {

      _s10OmniSearch0B6EntityVWOhTm_0();
      v54 = *(v19 + 8);
    }

    v58 = v63;
    v63[4] = 0;
    *v58 = 0u;
    *(v58 + 1) = 0u;
    return (v54)(v25, v18);
  }
}

uint64_t SearchEntity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E6EntityV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E6EntityV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_59_4();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchEntity.CodingKeys and conformance SearchEntity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(type metadata accessor for SearchEntity(0) + 84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  lazy protocol witness table accessor for type SearchResult? and conformance <A> A?();
  OUTLINED_FUNCTION_126_4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = SearchEntity.card.getter();
    if (v13)
    {
      v14 = v13;
      v15 = v13;
      SFCard.data.getter();
      OUTLINED_FUNCTION_142_1();
    }

    else
    {
      v15 = 0;
      v12 = 0xF000000000000000;
    }

    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_126_4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v15, v12);
    v20 = *(v3 + 112);
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_126_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    v21 = *(v3 + 72);
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_126_4();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v16 = *(v7 + 8);
  v17 = OUTLINED_FUNCTION_1_28();
  return v18(v17);
}

uint64_t SearchEntity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a1;
  v123 = a2;
  v122 = type metadata accessor for SearchAppEntity(0);
  v2 = OUTLINED_FUNCTION_17(v122);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_3();
  v120 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_49_3();
  v121 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_49_3();
  v139 = v15;
  v16 = OUTLINED_FUNCTION_78_0();
  v147 = type metadata accessor for SearchResult(v16);
  v17 = OUTLINED_FUNCTION_17(v147);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39_0();
  v138 = v20;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_2();
  v143 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E6EntityV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E6EntityV10CodingKeysOGMR);
  v24 = OUTLINED_FUNCTION_14(v23);
  v140 = v25;
  v141 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_49_3();
  v148 = v29;
  OUTLINED_FUNCTION_78_0();
  v30 = type metadata accessor for LocalizedStringResource();
  v31 = OUTLINED_FUNCTION_114(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_36();
  v34 = type metadata accessor for SearchEntity(0);
  v35 = OUTLINED_FUNCTION_17(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39_0();
  v136 = v38;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v39);
  v41 = (v119 - v40);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_109_5();
  LocalizedStringResource.init(stringLiteral:)();
  v135 = EntityProperty<>.init(title:)();
  *v41 = v135;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy15OmniSearchTypes0F10ResultTypeOGMd, &_s10AppIntents14EntityPropertyCy15OmniSearchTypes0F10ResultTypeOGMR);
  OUTLINED_FUNCTION_114_5();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_29_9();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v42, v43);
  OUTLINED_FUNCTION_62_7();
  v134 = EntityProperty<>.init(title:)();
  v41[1] = v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0faC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0faC0VSgGMR);
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_18_13();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v44, v45);
  OUTLINED_FUNCTION_62_7();
  v133 = EntityProperty<>.init(title:)();
  v41[2] = v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMR);
  OUTLINED_FUNCTION_89_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();
  OUTLINED_FUNCTION_62_7();
  v132 = EntityProperty<>.init(title:)();
  v41[3] = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0f6GlobalC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0f6GlobalC0VSgGMR);
  OUTLINED_FUNCTION_33_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_10_15();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v46, v47);
  OUTLINED_FUNCTION_62_7();
  v131 = EntityProperty<>.init(title:)();
  v41[4] = v131;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0f9SpotlightC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0f9SpotlightC0VSgGMR);
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_9_18();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v48, v49);
  OUTLINED_FUNCTION_62_7();
  v130 = EntityProperty<>.init(title:)();
  v41[5] = v130;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch05EventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch05EventC0VSgGMR);
  OUTLINED_FUNCTION_36_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_16();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v50, v51);
  OUTLINED_FUNCTION_62_7();
  v129 = EntityProperty<>.init(title:)();
  v41[6] = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch06IdCardC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch06IdCardC0VSgGMR);
  OUTLINED_FUNCTION_32_14();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_15_14();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v52, v53);
  OUTLINED_FUNCTION_62_7();
  v128 = EntityProperty<>.init(title:)();
  v41[7] = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch05MediaC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch05MediaC0VSgGMR);
  OUTLINED_FUNCTION_90_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type MediaEntity and conformance MediaEntity();
  OUTLINED_FUNCTION_62_7();
  v137 = EntityProperty<>.init(title:)();
  v41[8] = v137;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
  OUTLINED_FUNCTION_5_16();
  LocalizedStringResource.init(stringLiteral:)();
  v127 = EntityProperty<>.init(title:)();
  v41[9] = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_87_5();
  LocalizedStringResource.init(stringLiteral:)();
  v126 = EntityProperty<>.init(title:)();
  v41[10] = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch08HydratedC4TypeOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch08HydratedC4TypeOSgGMR);
  OUTLINED_FUNCTION_87_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HydratedEntityType and conformance HydratedEntityType();
  OUTLINED_FUNCTION_62_7();
  v125 = EntityProperty<>.init(title:)();
  v41[11] = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_52_8();
  v124 = EntityProperty<>.init(title:)();
  v41[12] = v124;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_87_5();
  LocalizedStringResource.init(stringLiteral:)();
  v54 = EntityProperty<>.init(title:)();
  v41[13] = v54;
  OUTLINED_FUNCTION_87_5();
  LocalizedStringResource.init(stringLiteral:)();
  v55 = EntityProperty<>.init(title:)();
  v41[14] = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0fD8ResponseVGGMR);
  OUTLINED_FUNCTION_87_5();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_27_11();
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(v56, v57);
  OUTLINED_FUNCTION_62_7();
  v58 = EntityProperty<>.init(title:)();
  v41[15] = v58;
  OUTLINED_FUNCTION_52_8();
  v59 = EntityProperty<>.init(title:)();
  v41[16] = v59;
  v145 = *(v34 + 84);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v147);
  v142 = v34;
  v63 = *(v34 + 92);
  LocalizedStringResource.init(stringLiteral:)();
  v64 = EntityProperty<>.init(title:)();
  v144 = v63;
  *(v41 + v63) = v64;
  v65 = v149[4];
  __swift_project_boxed_opaque_existential_1(v149, v149[3]);
  lazy protocol witness table accessor for type SearchEntity.CodingKeys and conformance SearchEntity.CodingKeys();
  v66 = v146;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v66)
  {
    goto LABEL_3;
  }

  v119[1] = v59;
  v119[2] = v58;
  v119[3] = v64;
  v119[4] = v55;
  v146 = v54;
  v67 = v138;
  v68 = v139;
  LOBYTE(v150) = 0;
  _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(&lazy protocol witness table cache variable for type SearchResult and conformance SearchResult, type metadata accessor for SearchResult);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v152 = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v69 = v150;
  v70 = v151;
  LOBYTE(v150) = 2;
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_1_33();
  v147 = v91;
  v119[0] = v92;
  _s10OmniSearch0B6EntityVWOcTm_0(v143, v67, v93);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  v94 = OUTLINED_FUNCTION_129_4();
  outlined copy of Data?(v94, v95);
  v96 = OUTLINED_FUNCTION_129_4();
  SFCard.init(data:)(v96, v97);
  LOBYTE(v150) = 3;
  SearchEntity.init(result:card:searchString:derivedType:)();
  v98 = OUTLINED_FUNCTION_11_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v98, v99, v142);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(v68, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    v150 = 0;
    v151 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v150 = 0xD00000000000002BLL;
    v151 = 0x800000025DBF1A80;
    SearchResult.description.getter();
    MEMORY[0x25F89F6C0]();

    v102 = v150;
    v101 = v151;
    lazy protocol witness table accessor for type SearchToolError and conformance SearchToolError();
    swift_allocError();
    *v103 = v102;
    v103[1] = v101;
    swift_willThrow();
    outlined consume of Data?(v69, v70);
    OUTLINED_FUNCTION_0_32();
    _s10OmniSearch0B6EntityVWOhTm_0();
    (*(v140 + 8))(v148, v141);
LABEL_3:
    v71 = v145;
    __swift_destroy_boxed_opaque_existential_1Tm(v149);
    v72 = *v41;

    v73 = v41[1];

    v74 = v41[2];

    v75 = v41[3];

    v76 = v41[4];

    v77 = v41[5];

    v78 = v41[6];

    v79 = v41[7];

    v80 = v41[8];

    v81 = v41[9];

    v82 = v41[10];

    v83 = v41[11];

    v84 = v41[12];

    v85 = v41[13];

    v86 = v41[14];

    v87 = v41[15];

    v88 = v41[16];

    outlined destroy of IntentApplication?(v41 + v71, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v89 = *(v41 + v144);
  }

  v138 = v69;
  v147 = v70;
  OUTLINED_FUNCTION_5_17();
  v104 = v136;
  outlined init with take of SearchSpotlightEntity(v68, v136, v105);

  outlined destroy of IntentApplication?(v41 + v145, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);

  OUTLINED_FUNCTION_4_20();
  _s10OmniSearch0B6EntityVWOcTm_0(v104, v41, v106);
  LOBYTE(v150) = 3;
  v107 = v148;
  v108 = KeyedDecodingContainer.decode(_:forKey:)();
  v109 = v41[9];
  LOBYTE(v150) = v108 & 1;
  EntityProperty.wrappedValue.setter();
  v110 = v41[2];
  v111 = v121;
  EntityProperty.wrappedValue.getter();
  v112 = v111;
  v113 = __swift_getEnumTagSinglePayload(v111, 1, v122);
  v114 = v140;
  if (v113)
  {
    outlined destroy of IntentApplication?(v112, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  }

  else
  {
    OUTLINED_FUNCTION_16_16();
    v115 = v120;
    _s10OmniSearch0B6EntityVWOcTm_0(v112, v120, v116);
    outlined destroy of IntentApplication?(v112, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
    EntityProperty.wrappedValue.getter();
    v117 = *(v115 + 32);
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_8_15();
    _s10OmniSearch0B6EntityVWOhTm_0();
  }

  outlined consume of Data?(v138, v147);
  _s10OmniSearch0B6EntityVWOhTm_0();
  OUTLINED_FUNCTION_0_32();
  _s10OmniSearch0B6EntityVWOhTm_0();
  (*(v114 + 8))(v107, v141);
  OUTLINED_FUNCTION_4_20();
  _s10OmniSearch0B6EntityVWOcTm_0(v41, v123, v118);
  __swift_destroy_boxed_opaque_existential_1Tm(v149);
  OUTLINED_FUNCTION_1_28();
  return _s10OmniSearch0B6EntityVWOhTm_0();
}

uint64_t SearchEntity.debugDescription.getter()
{
  SearchEntity.encodable.getter(&v2);
  if (v3)
  {
    outlined init with take of ResponseOverrideMatcherProtocol(&v2, v4);
    SearchEntity.oms_jsonString(from:)(v4);
    if (!v0)
    {
      SearchEntity.defaultDescription.getter();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    outlined destroy of IntentApplication?(&v2, &_sSE_pSgMd, &_sSE_pSgMR);
    SearchEntity.defaultDescription.getter();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t SearchEntity.oms_jsonString(from:)(void *a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = type metadata accessor for JSONEncoder.NonConformingFloatEncodingStrategy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for JSONEncoder.OutputFormatting();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for JSONEncoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  *v8 = 6712937;
  v8[1] = 0xE300000000000000;
  v8[2] = 1718511917;
  v8[3] = 0xE400000000000000;
  v8[4] = 7233902;
  v8[5] = 0xE300000000000000;
  (*(v5 + 104))(v8, *MEMORY[0x277CC8788], v4);
  dispatch thunk of JSONEncoder.nonConformingFloatEncodingStrategy.setter();
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v17 = v16;
  static String.Encoding.utf8.getter();
  v18 = String.init(data:encoding:)();
  outlined consume of Data._Representation(v15, v17);

  return v18;
}

uint64_t SearchEntity.defaultDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SearchResultType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchEntity.representedEntity.getter();
  if (!v20)
  {
    outlined destroy of IntentApplication?(&v18, &_s10AppIntents0A6Entity_pSgMd, &_s10AppIntents0A6Entity_pSgMR);
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents0A6Entity_pMd, &_s10AppIntents0A6Entity_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch15CardDisplayable_pMd, &_s10OmniSearch15CardDisplayable_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_7;
  }

  v7 = *(&v22 + 1);
  if (!*(&v22 + 1))
  {
LABEL_7:
    outlined destroy of IntentApplication?(&v21, &_s10OmniSearch15CardDisplayable_pSgMd, &_s10OmniSearch15CardDisplayable_pSgMR);
    v12 = v0[1];
    EntityProperty.wrappedValue.getter();
    v9 = SearchResultType.rawValue.getter();
    v11 = v13;
    (*(v3 + 8))(v6, v2);
    goto LABEL_8;
  }

  v8 = v23;
  __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  v9 = (*(v8 + 24))(v7, v8);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(&v21);
LABEL_8:
  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  *&v21 = 91;
  *(&v21 + 1) = 0xE100000000000000;
  MEMORY[0x25F89F6C0](v9, v11);

  MEMORY[0x25F89F6C0](0x72756F53202D205DLL, 0xEB000000003A6563);
  v14 = *v1;
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0](v18, v19);

  MEMORY[0x25F89F6C0](979650848, 0xE400000000000000);
  v15 = *(v1 + *(type metadata accessor for SearchEntity(0) + 92));
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0](v18, v19);

  MEMORY[0x25F89F6C0](93, 0xE100000000000000);
  return v21;
}

void AppEntity.propertyDescription.getter()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_2();
  v2 = type metadata accessor for Mirror();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  *(&v22 + 1) = v0;
  boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(&v21);
  (*(*(v0 - 8) + 16))(boxed_opaque_existential_1Tm_0, v1, v0);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_100_4();
  v11(v10);
  dispatch thunk of _AnySequenceBox._makeIterator()();
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!*(&v23 + 1))
    {
      break;
    }

    v20[0] = v22;
    v20[1] = v23;
    v13 = v21;
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    if (*(&v13 + 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v12 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v12 = v16;
      }

      v14 = *(v12 + 16);
      if (v14 >= *(v12 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v12 = v17;
      }

      *(v12 + 16) = v14 + 1;
      *(v12 + 16 * v14 + 32) = v13;
    }
  }

  *&v21 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type ProxyRepresentation<SearchEntity, SearchAnswerEntity> and conformance ProxyRepresentation<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  BidirectionalCollection<>.joined(separator:)();

  OUTLINED_FUNCTION_119();
  *&v21 = swift_getDynamicType();
  swift_getMetatypeMetadata();
  *&v21 = String.init<A>(describing:)();
  *(&v21 + 1) = v18;
  MEMORY[0x25F89F6C0](2314, 0xE200000000000000);
  v19 = OUTLINED_FUNCTION_64_0();
  MEMORY[0x25F89F6C0](v19);

  OUTLINED_FUNCTION_148();
}

double SearchEntity.asNLGEntity.getter@<D0>(void *a1@<X8>)
{
  SearchEntity.representedEntity.getter();
  if (!v13)
  {
    outlined destroy of IntentApplication?(&v11, &_s10AppIntents0A6Entity_pSgMd, &_s10AppIntents0A6Entity_pSgMR);
    memset(v10, 0, 40);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents0A6Entity_pMd, &_s10AppIntents0A6Entity_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B20NLGEntityConvertible_pMd, &_s10OmniSearch0B20NLGEntityConvertible_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v10, 0, 40);
    goto LABEL_15;
  }

  if (!*(&v10[1] + 1))
  {
LABEL_15:
    outlined destroy of IntentApplication?(v10, &_s10OmniSearch0B20NLGEntityConvertible_pSgMd, &_s10OmniSearch0B20NLGEntityConvertible_pSgMR);
    return SearchNLGEntity.init()(a1);
  }

  outlined init with take of ResponseOverrideMatcherProtocol(v10, v14);
  v2 = v15;
  v3 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v3 + 8))(v10, v2, v3);
  SearchEntity.representedEntity.getter();
  outlined assign with take of SearchResultItem?(&v11, &v10[7] + 8, &_s10AppIntents0A6Entity_pSgMd, &_s10AppIntents0A6Entity_pSgMR);
  EntityProperty.wrappedValue.getter();
  v4 = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  v5 = v11;

  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_8:
    v11 = specialized SearchNLGEntityConvertible.documentSource.getter();
    v12 = v7;
    EntityProperty.wrappedValue.setter();
  }

  EntityProperty.wrappedValue.getter();
  if (!v11 || (v8 = *(v11 + 16), , !v8))
  {
    v11 = specialized SearchNLGEntityConvertible.senderNames.getter();
    EntityProperty.wrappedValue.setter();
  }

  memcpy(a1, v10, 0xA0uLL);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return result;
}

uint64_t specialized SearchNLGEntityConvertible.documentSource.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v23 - v3;
  v5 = type metadata accessor for SearchEntity(0);
  outlined init with copy of SpotlightRankingItem?(v0 + *(v5 + 84), v4, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v6 = type metadata accessor for SearchResult(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    outlined destroy of IntentApplication?(v4, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  }

  else
  {
    v7 = *(v6 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v8 = CodableNSSecureCoding.wrappedValue.getter();
    _s10OmniSearch0B6EntityVWOhTm_0();
    v9 = [v8 bundleID];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      goto LABEL_6;
    }
  }

  v10 = 0;
  v12 = 0xE000000000000000;
LABEL_6:
  type metadata accessor for LocalIndexClient();

  v13 = static LocalIndexClient.displayName(for:)(v10, v12);
  v15 = v14;

  if (v15)
  {
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logging.search);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23[1] = v20;
      *v19 = 136315138;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v19 + 4) = v21;
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x25F8A1050](v20, -1, -1);
      MEMORY[0x25F8A1050](v19, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v13;
}

uint64_t specialized SearchNLGEntityConvertible.senderNames.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for SearchEntity(0);
  outlined init with copy of SpotlightRankingItem?(v0 + *(v5 + 84), v4, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v6 = type metadata accessor for SearchResult(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    outlined destroy of IntentApplication?(v4, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    return 0;
  }

  else
  {
    v8 = *(v6 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v9 = CodableNSSecureCoding.wrappedValue.getter();
    _s10OmniSearch0B6EntityVWOhTm_0();
    v7 = CSSearchableItem.senderNames.getter();
  }

  return v7;
}

uint64_t SearchEntity.asCATEntity.getter()
{
  OUTLINED_FUNCTION_48();
  v1[28] = v2;
  v1[29] = v0;
  v3 = type metadata accessor for SearchEntity(0);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64) + 15;
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](SearchEntity.asCATEntity.getter, 0, 0);
}

{
  v1 = *(v0 + 232);
  SearchEntity.representedEntity.getter();
  if (*(v0 + 120))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents0A6Entity_pMd, &_s10AppIntents0A6Entity_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B20CATEntityConvertible_pMd, &_s10OmniSearch0B20CATEntityConvertible_pMR);
    if (swift_dynamicCast())
    {
      if (*(v0 + 80))
      {
        outlined init with take of ResponseOverrideMatcherProtocol((v0 + 56), v0 + 16);
        v2 = *(v0 + 40);
        v3 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
        v4 = *(v3 + 8);
        v23 = (v4 + *v4);
        v5 = v4[1];
        v6 = swift_task_alloc();
        *(v0 + 248) = v6;
        *v6 = v0;
        v6[1] = SearchEntity.asCATEntity.getter;
        v7 = *(v0 + 224);

        return v23(v7, v2, v3);
      }
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v0 + 96, &_s10AppIntents0A6Entity_pSgMd, &_s10AppIntents0A6Entity_pSgMR);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  outlined destroy of IntentApplication?(v0 + 56, &_s10OmniSearch0B20CATEntityConvertible_pSgMd, &_s10OmniSearch0B20CATEntityConvertible_pSgMR);
  if (one-time initialization token for stextension != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logging.stextension);
  OUTLINED_FUNCTION_4_20();
  v12 = OUTLINED_FUNCTION_94();
  _s10OmniSearch0B6EntityVWOcTm_0(v12, v13, v14);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 240);
  if (v17)
  {
    OUTLINED_FUNCTION_28_3();
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v24 = swift_slowAlloc();
    *v19 = 136315138;
    SearchEntity.representedEntity.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents0A6Entity_pSgMd, &_s10AppIntents0A6Entity_pSgMR);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_3_24();
    _s10OmniSearch0B6EntityVWOhTm_0();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v19 + 4) = v20;
    _os_log_impl(&dword_25D85C000, v15, v16, "%s does not conform to SearchCATEntityConvertible.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    OUTLINED_FUNCTION_3_24();
    _s10OmniSearch0B6EntityVWOhTm_0();
  }

  SearchCATEntity.init()(*(v0 + 224));
  v21 = *(v0 + 240);

  OUTLINED_FUNCTION_127();

  return v22();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 248);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  return MEMORY[0x2822009F8](SearchEntity.asCATEntity.getter, 0, 0);
}

{
  v2 = v0[28];
  v1 = v0[29];
  SearchEntity.fullSearchEntityDescription.getter();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for SearchCATEntity();
  v8 = *(v2 + v7[10]);
  v0[22] = v4;
  v0[23] = v6;
  EntityProperty.wrappedValue.setter();
  SearchEntity.supportSearchEntityDescription.getter();
  v9 = *(v2 + v7[11]);
  v0[24] = v10;
  v0[25] = v11;
  EntityProperty.wrappedValue.setter();
  v12 = SearchEntity.resultSourceDialogDisplayName.getter();
  v13 = *(v2 + v7[12]);
  v0[26] = v12;
  v0[27] = v14;
  EntityProperty.wrappedValue.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v15 = v0[30];

  OUTLINED_FUNCTION_127();

  return v16();
}

void SearchEntity.fullSearchEntityDescription.getter()
{
  SearchEntity.fullSearchEntityDescription.getter();
}

{
  OUTLINED_FUNCTION_155();
  v79 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  v3 = OUTLINED_FUNCTION_114(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_39_0();
  v76 = v6;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_2();
  v77 = v8;
  v9 = OUTLINED_FUNCTION_78_0();
  v78 = type metadata accessor for SearchAppEntity(v9);
  v10 = OUTLINED_FUNCTION_17(v78);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  v75 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
  v15 = OUTLINED_FUNCTION_114(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_109();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  v24 = type metadata accessor for IdCardEntity();
  v25 = OUTLINED_FUNCTION_17(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_36();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
  v32 = OUTLINED_FUNCTION_114(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_109();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v74 - v39;
  v41 = type metadata accessor for EventEntity();
  v42 = OUTLINED_FUNCTION_17(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_36();
  v47 = v46 - v45;
  v48 = v0;
  v49 = *(v0 + 48);
  EntityProperty.wrappedValue.getter();
  v50 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v50, v51, v41);
  if (!v52)
  {
    outlined init with take of SearchSpotlightEntity(v40, v47, type metadata accessor for EventEntity);
    _s10OmniSearch0B6EntityVWOcTm_0(v47, v37, type metadata accessor for EventEntity);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v41);
    SearchEntity.eventEntityDescription(event:isFullDescription:)(v37, v79 & 1);
    OUTLINED_FUNCTION_140_2();
    outlined destroy of IntentApplication?(v37, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
LABEL_8:
    _s10OmniSearch0B6EntityVWOhTm_0();
    goto LABEL_9;
  }

  v53 = v79;
  outlined destroy of IntentApplication?(v40, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
  v54 = *(v48 + 56);
  EntityProperty.wrappedValue.getter();
  v55 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v55, v56, v24);
  if (!v52)
  {
    outlined init with take of SearchSpotlightEntity(v23, v30, type metadata accessor for IdCardEntity);
    _s10OmniSearch0B6EntityVWOcTm_0(v30, v20, type metadata accessor for IdCardEntity);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v24);
    SearchEntity.idCardEntityDescription(idCard:isFullDescription:)(v20);
    OUTLINED_FUNCTION_140_2();
    outlined destroy of IntentApplication?(v20, &_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
    OUTLINED_FUNCTION_67_6();
    goto LABEL_8;
  }

  outlined destroy of IntentApplication?(v23, &_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
  v57 = *(v48 + 16);
  v58 = v77;
  EntityProperty.wrappedValue.getter();
  v59 = OUTLINED_FUNCTION_93_6();
  v60 = v78;
  OUTLINED_FUNCTION_166(v59, v61, v78);
  if (!v52)
  {
    v68 = v75;
    outlined init with take of SearchSpotlightEntity(v58, v75, type metadata accessor for SearchAppEntity);
    OUTLINED_FUNCTION_16_16();
    v69 = v76;
    _s10OmniSearch0B6EntityVWOcTm_0(v68, v76, v70);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v60);
    SearchEntity.appEntityDescription(appEntity:isFullDescription:)(v69, v53 & 1);
    OUTLINED_FUNCTION_140_2();
    outlined destroy of IntentApplication?(v69, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
    goto LABEL_8;
  }

  outlined destroy of IntentApplication?(v58, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
LABEL_9:
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_148();
}

uint64_t SearchEntity.resultSourceDialogDisplayName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12[-v3];
  v5 = type metadata accessor for SearchResult(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for SearchEntity(0);
  outlined init with copy of SpotlightRankingItem?(v0 + *(v9 + 84), v4, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of IntentApplication?(v4, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    return 0;
  }

  else
  {
    outlined init with take of SearchSpotlightEntity(v4, v8, type metadata accessor for SearchResult);
    SearchResultItem.type.getter(&v13);
    switch(v13)
    {
      case 1:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 0x6567617373656DLL;
        break;
      case 2:
      case 25:
      case 27:
      case 28:
        v10 = 0x746E657665;
        _s10OmniSearch0B6EntityVWOhTm_0();
        break;
      case 3:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 0x6F746F6870;
        break;
      case 4:
      case 7:
      case 8:
      case 19:
      case 20:
      case 21:
      case 29:
      case 30:
        _s10OmniSearch0B6EntityVWOhTm_0();
        return 0;
      case 5:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 1702129518;
        break;
      case 6:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 0x7265646E696D6572;
        break;
      case 9:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 0x7972746E65;
        break;
      case 10:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 0x656D206563696F76;
        break;
      case 11:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 1802398060;
        break;
      case 12:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 1701603686;
        break;
      case 13:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 0x746361736E617274;
        break;
      case 14:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 1936941424;
        break;
      case 15:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 0x746361746E6F63;
        break;
      case 16:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 0x746867696C66;
        break;
      case 17:
      case 18:
      case 22:
      case 24:
        v10 = 0x7461767265736572;
        _s10OmniSearch0B6EntityVWOhTm_0();
        break;
      case 23:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 0x676E697070696873;
        break;
      case 26:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 0x6D746E696F707061;
        break;
      default:
        _s10OmniSearch0B6EntityVWOhTm_0();
        v10 = 0x6C69616D65;
        break;
    }
  }

  return v10;
}

uint64_t protocol witness for SearchCATEntityConvertible.asCATEntity.getter in conformance SearchEntity()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return SearchEntity.asCATEntity.getter();
}

uint64_t static SearchEntity.typeDisplayRepresentation.getter(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_200(v3, a2);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(*(v3 - 8) + 16);
  OUTLINED_FUNCTION_47_11();
  return v5();
}

uint64_t static SearchEntity.typeDisplayRepresentation.setter(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_200(v5, a3);
  OUTLINED_FUNCTION_147_2();
  v6 = *(v5 - 8);
  (*(v6 + 24))(a3, a1, v5);
  swift_endAccess();
  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_32_0();
  return v9(v8);
}

uint64_t (*static HydratedEntityType.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_200(v0, static HydratedEntityType.typeDisplayRepresentation);
  OUTLINED_FUNCTION_147_2();
  return static ExtractedInfo.kExtractedInfoKey.modify;
}

uint64_t key path getter for static SearchEntity.typeDisplayRepresentation : SearchEntity.Type(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  IdCardEntity.typeDisplayRepresentation.unsafeMutableAddressor(a4, a5);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v5 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  return v9(v8);
}

uint64_t key path setter for static SearchEntity.typeDisplayRepresentation : SearchEntity.Type(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = IdCardEntity.typeDisplayRepresentation.unsafeMutableAddressor(a5, a6);
  OUTLINED_FUNCTION_147_2();
  v8 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_17(v8);
  (*(v9 + 24))(v7, a1);
  return swift_endAccess();
}

void static HydratedEntityType.caseDisplayRepresentations.getter()
{
  OUTLINED_FUNCTION_155();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_182();
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = OUTLINED_FUNCTION_17(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch18HydratedEntityTypeO_10AppIntents21DisplayRepresentationVtGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch18HydratedEntityTypeO_10AppIntents21DisplayRepresentationVtGMR);
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18HydratedEntityTypeO_10AppIntents21DisplayRepresentationVtMd, &_s10OmniSearch18HydratedEntityTypeO_10AppIntents21DisplayRepresentationVtMR) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_25DBC7620;
  v15 = v28 + v14;
  v16 = v12[14];
  *(v28 + v14) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v8);
  v20 = type metadata accessor for DisplayRepresentation.Image();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  OUTLINED_FUNCTION_50_4();
  v24 = v12[14];
  *(v15 + v13) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_50_4();
  v25 = v12[14];
  *(v15 + 2 * v13) = 2;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_50_4();
  v26 = v12[14];
  *(v15 + 3 * v13) = 3;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_50_4();
  v27 = v12[14];
  *(v15 + 4 * v13) = 4;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_50_4();
  type metadata accessor for DisplayRepresentation();
  lazy protocol witness table accessor for type HydratedEntityType and conformance HydratedEntityType();
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_148();
}

OmniSearch::HydratedEntityType_optional __swiftcall HydratedEntityType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HydratedEntityType.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t HydratedEntityType.rawValue.getter()
{
  result = 0x6C69616D65;
  switch(*v0)
  {
    case 1:
      result = 1701603686;
      break;
    case 2:
      result = 0x6567617373656DLL;
      break;
    case 3:
      result = 1702129518;
      break;
    case 4:
      result = 0x6F746F6870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HydratedEntityType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HydratedEntityType@<X0>(uint64_t *a1@<X8>)
{
  result = HydratedEntityType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance HydratedEntityType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydratedEntityType and conformance HydratedEntityType();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance HydratedEntityType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydratedEntityType and conformance HydratedEntityType();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t SearchEntity.eventEntityDescription(event:isFullDescription:)(uint64_t a1, int a2)
{
  v460 = a2;
  v484 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v452 = &v414 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v451 = &v414 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v454 = &v414 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v447 = &v414 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v448 = &v414 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v440 = &v414 - v15;
  MEMORY[0x28223BE20](v14);
  v446 = &v414 - v16;
  v457 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v17 = *(*(v457 - 8) + 64);
  MEMORY[0x28223BE20](v457);
  v458 = &v414 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DateComponents();
  v469 = *(v19 - 8);
  v470 = v19;
  v20 = *(v469 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v439 = &v414 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v472 = &v414 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v455 = &v414 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v449 = &v414 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v456 = &v414 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v441 = &v414 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v453 = &v414 - v34;
  MEMORY[0x28223BE20](v33);
  v450 = &v414 - v35;
  v479 = type metadata accessor for Calendar.Component();
  v475 = *(v479 - 1);
  v36 = *(v475 + 64);
  MEMORY[0x28223BE20](v479);
  v478 = &v414 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v436 = &v414 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v435 = &v414 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v442 = &v414 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v434 = &v414 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v437 = &v414 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v445 = &v414 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v433 = &v414 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v438 = &v414 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v429 = &v414 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v444 = &v414 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v474 = &v414 - v61;
  MEMORY[0x28223BE20](v60);
  v477 = &v414 - v62;
  v480 = type metadata accessor for Date();
  v63 = *(v480 - 8);
  v64 = *(v63 + 64);
  v65 = MEMORY[0x28223BE20](v480);
  v426 = &v414 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x28223BE20](v65);
  v432 = &v414 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v428 = &v414 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v430 = &v414 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v427 = &v414 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v431 = &v414 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v425 = &v414 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v423 = &v414 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v424 = &v414 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v443 = &v414 - v84;
  MEMORY[0x28223BE20](v83);
  v483 = &v414 - v85;
  v482 = type metadata accessor for EditorialDateFormatter(0);
  v86 = *(*(v482 - 8) + 64);
  v87 = MEMORY[0x28223BE20](v482);
  v481 = &v414 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v473 = &v414 - v89;
  v90 = type metadata accessor for Calendar();
  v91 = *(v90 - 8);
  v92 = *(v91 + 64);
  v93 = MEMORY[0x28223BE20](v90);
  v95 = &v414 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v97 = &v414 - v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
  v99 = *(*(v98 - 8) + 64);
  v100 = MEMORY[0x28223BE20](v98 - 8);
  v102 = &v414 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = MEMORY[0x28223BE20](v100);
  v467 = &v414 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v466 = &v414 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v465 = &v414 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v464 = &v414 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v463 = &v414 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v462 = &v414 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v461 = &v414 - v116;
  MEMORY[0x28223BE20](v115);
  v118 = (&v414 - v117);
  outlined init with copy of SpotlightRankingItem?(v484, &v414 - v117, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
  v119 = type metadata accessor for EventEntity();
  if (__swift_getEnumTagSinglePayload(v118, 1, v119) == 1)
  {
    outlined destroy of IntentApplication?(v118, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
    return 0;
  }

  v420 = v119;
  v417 = v102;
  v121 = *v118;
  EntityProperty.wrappedValue.getter();
  v419 = LOBYTE(v487[0]);
  _s10OmniSearch0B6EntityVWOhTm_0();
  v459 = v97;
  static Calendar.current.getter();
  v122 = v483;
  Date.init()();
  static Calendar.current.getter();
  type metadata accessor for FeatureFlagService();
  v123 = swift_allocObject();
  v476 = v63;
  v124 = v481;
  v125 = v480;
  v415 = *(v63 + 16);
  v416 = v63 + 16;
  v415(v481, v122, v480);
  v126 = v482;
  v127 = *(v482 + 28);
  v468 = v91;
  v128 = *(v91 + 16);
  v471 = v90;
  v128(&v124[v127], v95, v90);
  v418 = v123;
  v124[*(v126 + 32)] = FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_editorialDates);
  v129 = v475;
  v130 = *(v475 + 104);
  v131 = v478;
  HIDWORD(v422) = *MEMORY[0x277CC9968];
  v132 = v479;
  v421 = v130;
  v130(v478);
  v133 = v477;
  v134 = v95;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v135 = *(v129 + 8);
  v135(v131, v132);
  result = __swift_getEnumTagSinglePayload(v133, 1, v125);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v137 = v477;
    v138 = v476 + 32;
    v139 = &v481[*(v482 + 20)];
    v477 = *(v476 + 32);
    (v477)(v139, v137, v125);
    v140 = v478;
    v141 = v479;
    v421(v478, HIDWORD(v422), v479);
    v142 = v474;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v143 = v480;
    v144 = v141;
    v145 = v142;
    v135(v140, v144);
    result = __swift_getEnumTagSinglePayload(v142, 1, v143);
    if (result != 1)
    {
      swift_setDeallocating();
      swift_deallocClassInstance();
      v146 = v468 + 8;
      v147 = v471;
      v479 = *(v468 + 8);
      (v479)(v134, v471);
      v148 = v476 + 8;
      v149 = v483;
      v483 = *(v476 + 8);
      (v483)(v149, v143);
      v150 = v481;
      v151 = v477;
      (v477)(&v481[*(v482 + 24)], v145, v143);
      outlined init with take of SearchSpotlightEntity(v150, v473, type metadata accessor for EditorialDateFormatter);
      v152 = v472;
      switch(v419)
      {
        case 1:
          v158 = v463;
          outlined init with copy of SpotlightRankingItem?(v484, v463, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
          if (__swift_getEnumTagSinglePayload(v158, 1, v420) == 1)
          {
            outlined destroy of IntentApplication?(v158, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
LABEL_33:
            v120 = 0xD000000000000016;
            goto LABEL_29;
          }

          v168 = v151;
          v169 = *(v158 + 32);
          EntityProperty.wrappedValue.getter();
          memcpy(v486, v485, 0x80uLL);
          _s10OmniSearch0B6EntityVWOhTm_0();
          memcpy(v487, v486, 0x80uLL);
          if (_s10OmniSearch0B7ContextVSgWOg(v487) == 1)
          {
            goto LABEL_33;
          }

          v476 = v148;
          v217 = 0xEB000000006E6F69;
          strcpy(v485, "reservation");
          HIDWORD(v485[1]) = -352321536;
          EntityProperty.wrappedValue.getter();
          v218 = v456;
          if (v489)
          {
            if (v460)
            {
              MEMORY[0x25F89F6C0](0x6176726573657220, 0xEC0000006E6F6974);
              v219 = v488;
              v217 = v489;
            }

            else
            {

              v219 = 0x7461767265736572;
            }

            v485[0] = v219;
            v485[1] = v217;
          }

          EntityProperty.wrappedValue.getter();
          v277 = v489;
          if (v489)
          {
            v278 = v488;
            v488 = 544497952;
            v489 = 0xE400000000000000;
            MEMORY[0x25F89F6C0](v278, v277);

            MEMORY[0x25F89F6C0](v488, v489);
          }

          v279 = v448;
          EntityProperty.wrappedValue.getter();
          v280 = v470;
          if (__swift_getEnumTagSinglePayload(v279, 1, v470) == 1)
          {
            _s10OmniSearch0B6EntityVWOhTm_0();
            (v479)(v459, v147);
            outlined destroy of IntentApplication?(v279, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
            v199 = &_s10OmniSearch27RestaurantReservationEntityVSgMd;
            v200 = &_s10OmniSearch27RestaurantReservationEntityVSgMR;
            goto LABEL_126;
          }

          v281 = v279;
          v282 = v469;
          (*(v469 + 32))(v218, v281, v280);
          v283 = v433;
          Calendar.date(from:)();
          v224 = v283;
          v284 = v283;
          v285 = v218;
          v286 = v480;
          if (__swift_getEnumTagSinglePayload(v284, 1, v480) == 1)
          {
            outlined destroy of IntentApplication?(v486, &_s10OmniSearch27RestaurantReservationEntityVSgMd, &_s10OmniSearch27RestaurantReservationEntityVSgMR);
            (*(v282 + 8))(v285, v470);
            _s10OmniSearch0B6EntityVWOhTm_0();
            v226 = v459;
            v227 = v147;
            goto LABEL_111;
          }

          v367 = v425;
          v168(v425, v224, v286);
          v368 = v457;
          v369 = v458;
          v415(&v458[*(v457 + 24)], v367, v286);
          *v369 = 257;
          v370 = (v369 + *(v368 + 28));
          *v370 = 0;
          v370[1] = 0;
          EditorialDateFormatter.format(_:)(v369, v371, v372, v373, v374, v375, v376, v377, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425);
          v378 = v282;
          v380 = v379;
          v468 = v146;
          v382 = v381;
          _s10OmniSearch0B6EntityVWOhTm_0();
          v488 = 544497952;
          v489 = 0xE400000000000000;
          MEMORY[0x25F89F6C0](v380, v382);

          MEMORY[0x25F89F6C0](v488, v489);
          outlined destroy of IntentApplication?(v486, &_s10OmniSearch27RestaurantReservationEntityVSgMd, &_s10OmniSearch27RestaurantReservationEntityVSgMR);

          (v483)(v367, v286);
          (*(v378 + 8))(v456, v470);
          goto LABEL_139;
        case 2:
          v155 = v462;
          outlined init with copy of SpotlightRankingItem?(v484, v462, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
          if (__swift_getEnumTagSinglePayload(v155, 1, v420) == 1)
          {
            outlined destroy of IntentApplication?(v155, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
LABEL_25:
            _s10OmniSearch0B6EntityVWOhTm_0();
            (v479)(v459, v147);
            return 0xD000000000000011;
          }

          v162 = *(v155 + 24);
          EntityProperty.wrappedValue.getter();
          memcpy(v486, v485, 0x80uLL);
          _s10OmniSearch0B6EntityVWOhTm_0();
          memcpy(v487, v486, 0x80uLL);
          if (_s10OmniSearch0B7ContextVSgWOg(v487) == 1)
          {
            goto LABEL_25;
          }

          v484 = v138;
          v476 = v148;
          v120 = 2036429939;
          v485[0] = 2036429939;
          v485[1] = 0xE400000000000000;
          EntityProperty.wrappedValue.getter();
          v201 = v489;
          if (v489)
          {
            v202 = v488;
            v488 = 0x2074612079617473;
            v489 = 0xE800000000000000;
            MEMORY[0x25F89F6C0](v202, v201);

            v120 = v488;
            v485[0] = v488;
            v485[1] = v489;
          }

          v203 = v469;
          v204 = v446;
          EntityProperty.wrappedValue.getter();
          v205 = v470;
          if (__swift_getEnumTagSinglePayload(v204, 1, v470) == 1)
          {
            _s10OmniSearch0B6EntityVWOhTm_0();
            (v479)(v459, v471);
            outlined destroy of IntentApplication?(v204, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
            v180 = &_s10OmniSearch22HotelReservationEntityVSgMd;
            v181 = &_s10OmniSearch22HotelReservationEntityVSgMR;
            goto LABEL_90;
          }

          v232 = *(v203 + 32);
          v232(v453, v204, v205);
          v233 = v429;
          Calendar.date(from:)();
          v234 = v480;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v233, 1, v480);
          v482 = v232;
          if (EnumTagSinglePayload == 1)
          {
            outlined destroy of IntentApplication?(v233, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }

          else
          {
            v310 = v424;
            (v477)(v424, v233, v234);
            v311 = v457;
            v312 = v458;
            v415(&v458[*(v457 + 24)], v310, v234);
            *v312 = 256;
            v313 = (v312 + *(v311 + 28));
            *v313 = 0;
            v313[1] = 0;
            EditorialDateFormatter.format(_:)(v312, v314, v315, v316, v317, v318, v319, v320, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425);
            v322 = v321;
            v323 = v146;
            v325 = v324;
            _s10OmniSearch0B6EntityVWOhTm_0();
            v488 = 0x206D6F726620;
            v489 = 0xE600000000000000;
            MEMORY[0x25F89F6C0](v322, v325);
            v146 = v323;

            MEMORY[0x25F89F6C0](v488, v489);

            (v483)(v310, v234);
          }

          v326 = v440;
          v327 = v441;
          v245 = v438;
          EntityProperty.wrappedValue.getter();
          v328 = v470;
          if (__swift_getEnumTagSinglePayload(v326, 1, v470) == 1)
          {
            (*(v469 + 8))(v453, v328);
            _s10OmniSearch0B6EntityVWOhTm_0();
            (v479)(v459, v471);
            outlined destroy of IntentApplication?(v326, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
            v199 = &_s10OmniSearch22HotelReservationEntityVSgMd;
            v200 = &_s10OmniSearch22HotelReservationEntityVSgMR;
            goto LABEL_126;
          }

          (v482)(v327, v326, v328);
          v329 = v459;
          v330 = v328;
          Calendar.date(from:)();
          v331 = v480;
          if (__swift_getEnumTagSinglePayload(v245, 1, v480) == 1)
          {
            outlined destroy of IntentApplication?(v486, &_s10OmniSearch22HotelReservationEntityVSgMd, &_s10OmniSearch22HotelReservationEntityVSgMR);
            v332 = *(v469 + 8);
            v332(v327, v330);
            v332(v453, v330);
            _s10OmniSearch0B6EntityVWOhTm_0();
            v306 = v329;
            v307 = v471;
LABEL_120:
            (v479)(v306, v307);
            v199 = &_s10Foundation4DateVSgMd;
            v200 = &_s10Foundation4DateVSgMR;
            v259 = v245;
            goto LABEL_127;
          }

          v398 = v423;
          (v477)(v423, v245, v331);
          v399 = v457;
          v400 = v458;
          v415(&v458[*(v457 + 24)], v398, v331);
          *v400 = 256;
          v401 = (v400 + *(v399 + 28));
          *v401 = 0;
          v401[1] = 0;
          EditorialDateFormatter.format(_:)(v400, v402, v403, v404, v405, v406, v407, v408, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425);
          v410 = v409;
          v468 = v146;
          v412 = v411;
          _s10OmniSearch0B6EntityVWOhTm_0();
          v488 = 544175136;
          v489 = 0xE400000000000000;
          MEMORY[0x25F89F6C0](v410, v412);

          MEMORY[0x25F89F6C0](v488, v489);
          outlined destroy of IntentApplication?(v486, &_s10OmniSearch22HotelReservationEntityVSgMd, &_s10OmniSearch22HotelReservationEntityVSgMR);

          (v483)(v398, v480);
          v413 = *(v469 + 8);
          v413(v327, v330);
          v413(v453, v330);
          goto LABEL_134;
        case 3:
          v156 = v467;
          outlined init with copy of SpotlightRankingItem?(v484, v467, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
          if (__swift_getEnumTagSinglePayload(v156, 1, v420) == 1)
          {
            outlined destroy of IntentApplication?(v156, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
LABEL_27:
            v120 = 0xD000000000000016;
            goto LABEL_29;
          }

          v163 = *(v156 + 48);
          EntityProperty.wrappedValue.getter();
          memcpy(v486, v485, 0x98uLL);
          _s10OmniSearch0B6EntityVWOhTm_0();
          memcpy(v487, v486, 0x98uLL);
          if (_s10OmniSearch0B7ContextVSgWOg(v487) == 1)
          {
            goto LABEL_27;
          }

          v476 = v148;
          v206 = v146;
          v207 = 0xD000000000000016;
          v208 = 0x800000025DBF1AD0;
          v485[0] = 0xD000000000000016;
          v485[1] = 0x800000025DBF1AD0;
          EntityProperty.wrappedValue.getter();
          if (v489)
          {
            if (v460)
            {
              MEMORY[0x25F89F6C0](0xD000000000000017, 0x800000025DBF1AF0);
              v207 = v488;
              v208 = v489;
            }

            else
            {
            }

            v485[0] = v207;
            v485[1] = v208;
          }

          EntityProperty.wrappedValue.getter();
          v237 = v489;
          v238 = v206;
          if (v489)
          {
            v239 = v488;
            v488 = 544497952;
            v489 = 0xE400000000000000;
            MEMORY[0x25F89F6C0](v239, v237);

            MEMORY[0x25F89F6C0](v488, v489);
          }

          v240 = v451;
          EntityProperty.wrappedValue.getter();
          v241 = v470;
          v242 = __swift_getEnumTagSinglePayload(v240, 1, v470);
          v147 = v471;
          if (v242 == 1)
          {
            _s10OmniSearch0B6EntityVWOhTm_0();
            (v479)(v459, v147);
            outlined destroy of IntentApplication?(v240, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
            v199 = &_s10OmniSearch24VehicleReservationEntityVSgMd;
            v200 = &_s10OmniSearch24VehicleReservationEntityVSgMR;
            goto LABEL_126;
          }

          v243 = v240;
          v244 = v469;
          (*(v469 + 32))(v152, v243, v241);
          v245 = v435;
          Calendar.date(from:)();
          v246 = v480;
          if (__swift_getEnumTagSinglePayload(v245, 1, v480) == 1)
          {
            v247 = &_s10OmniSearch24VehicleReservationEntityVSgMd;
            v248 = &_s10OmniSearch24VehicleReservationEntityVSgMR;
LABEL_119:
            outlined destroy of IntentApplication?(v486, v247, v248);
            (*(v244 + 8))(v152, v470);
            _s10OmniSearch0B6EntityVWOhTm_0();
            v306 = v459;
            v307 = v147;
            goto LABEL_120;
          }

          v468 = v238;
          v333 = v432;
          (v477)();
          v334 = v457;
          v335 = v458;
          v415(&v458[*(v457 + 24)], v333, v246);
          *v335 = 257;
          v336 = (v335 + *(v334 + 28));
          *v336 = 0;
          v336[1] = 0;
          EditorialDateFormatter.format(_:)(v335, v337, v338, v339, v340, v341, v342, v343, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425);
          v344 = v244;
          v346 = v345;
          v348 = v347;
          _s10OmniSearch0B6EntityVWOhTm_0();
          v488 = 544497952;
          v489 = 0xE400000000000000;
          MEMORY[0x25F89F6C0](v346, v348);

          MEMORY[0x25F89F6C0](v488, v489);
          outlined destroy of IntentApplication?(v486, &_s10OmniSearch24VehicleReservationEntityVSgMd, &_s10OmniSearch24VehicleReservationEntityVSgMR);

          v349 = v432;
LABEL_138:
          (v483)(v349, v246);
          (*(v344 + 8))(v152, v470);
LABEL_139:
          _s10OmniSearch0B6EntityVWOhTm_0();
          v304 = v459;
          v366 = v147;
          goto LABEL_140;
        case 4:
          v154 = v464;
          outlined init with copy of SpotlightRankingItem?(v484, v464, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
          if (__swift_getEnumTagSinglePayload(v154, 1, v420) == 1)
          {
            outlined destroy of IntentApplication?(v154, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
          }

          else
          {
            v160 = v151;
            v161 = *(v154 + 64);
            EntityProperty.wrappedValue.getter();
            memcpy(v486, v485, sizeof(v486));
            _s10OmniSearch0B6EntityVWOhTm_0();
            memcpy(v487, v486, sizeof(v487));
            if (_s10OmniSearch0B7ContextVSgWOg(v487) != 1)
            {
              v476 = v148;
              strcpy(v485, "shipping order");
              HIBYTE(v485[1]) = -18;
              EntityProperty.wrappedValue.getter();
              v189 = v489;
              if (v489)
              {
                v190 = v488;
                v488 = 0x206D6F726620;
                v489 = 0xE600000000000000;
                MEMORY[0x25F89F6C0](v190, v189);

                MEMORY[0x25F89F6C0](v488, v489);
              }

              EntityProperty.wrappedValue.getter();
              v191 = v489;
              if (v489)
              {
                v192 = v488;
                v488 = 0xD000000000000014;
                v489 = 0x800000025DBF1BB0;
                MEMORY[0x25F89F6C0](v192, v191);

                MEMORY[0x25F89F6C0](v488, v489);
              }

              EntityProperty.wrappedValue.getter();
              v193 = v489;
              if (v489)
              {
                v194 = v488;
                v488 = 0xD000000000000016;
                v489 = 0x800000025DBF1B90;
                MEMORY[0x25F89F6C0](v194, v193);

                MEMORY[0x25F89F6C0](v488, v489);
              }

              v195 = v445;
              EntityProperty.wrappedValue.getter();
              v196 = v480;
              if (__swift_getEnumTagSinglePayload(v195, 1, v480) == 1)
              {
                outlined destroy of IntentApplication?(v195, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                v197 = v437;
                EntityProperty.wrappedValue.getter();
                v198 = v480;
                if (__swift_getEnumTagSinglePayload(v197, 1, v480) == 1)
                {
                  _s10OmniSearch0B6EntityVWOhTm_0();
                  (v479)(v459, v471);
                  outlined destroy of IntentApplication?(v197, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  v199 = &_s10OmniSearch19ShippingOrderEntityVSgMd;
                  v200 = &_s10OmniSearch19ShippingOrderEntityVSgMR;
LABEL_126:
                  v259 = v486;
                  goto LABEL_127;
                }

                v308 = v427;
                v160(v427, v197, v198);
                v488 = 0xD000000000000013;
                v489 = 0x800000025DBF1B50;
                _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
                v309 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x25F89F6C0](v309);

                MEMORY[0x25F89F6C0](v488, v489);
                outlined destroy of IntentApplication?(v486, &_s10OmniSearch19ShippingOrderEntityVSgMd, &_s10OmniSearch19ShippingOrderEntityVSgMR);

                v230 = v308;
                v231 = v198;
              }

              else
              {
                v228 = v431;
                v160(v431, v195, v196);
                v488 = 0xD00000000000001DLL;
                v489 = 0x800000025DBF1B70;
                _s10OmniSearch0B15SpotlightEntityVAC10AppIntents0eD0AAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
                v229 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x25F89F6C0](v229);

                MEMORY[0x25F89F6C0](v488, v489);

                outlined destroy of IntentApplication?(v486, &_s10OmniSearch19ShippingOrderEntityVSgMd, &_s10OmniSearch19ShippingOrderEntityVSgMR);
                v230 = v228;
                v231 = v196;
              }

              (v483)(v230, v231);
              _s10OmniSearch0B6EntityVWOhTm_0();
              (v479)(v459, v471);
              return v485[0];
            }
          }

          _s10OmniSearch0B6EntityVWOhTm_0();
          (v479)(v459, v471);
          return 0xD000000000000014;
        case 5:
          v159 = v466;
          outlined init with copy of SpotlightRankingItem?(v484, v466, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
          if (__swift_getEnumTagSinglePayload(v159, 1, v420) == 1)
          {
            outlined destroy of IntentApplication?(v159, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
LABEL_40:
            _s10OmniSearch0B6EntityVWOhTm_0();
            (v479)(v459, v147);
            return 0xD000000000000017;
          }

          v170 = v151;
          v171 = *(v159 + 40);
          EntityProperty.wrappedValue.getter();
          memcpy(v487, v486, 0x70uLL);
          _s10OmniSearch0B6EntityVWOhTm_0();
          if (!v487[0])
          {
            goto LABEL_40;
          }

          v484 = v138;
          v476 = v148;
          v172 = v146;
          v120 = 0xD000000000000017;
          v485[0] = 0xD000000000000017;
          v485[1] = 0x800000025DBF1B10;
          EntityProperty.wrappedValue.getter();
          v173 = v486[1];
          if (v486[1])
          {
            v174 = v486[0];
            v486[0] = 0x742074656B636974;
            v486[1] = 0xEA0000000000206FLL;
            MEMORY[0x25F89F6C0](v174, v173);

            v120 = v486[0];
            v485[0] = v486[0];
            v485[1] = v486[1];
          }

          v175 = v172;
          v176 = v454;
          EntityProperty.wrappedValue.getter();
          v177 = v470;
          v178 = __swift_getEnumTagSinglePayload(v176, 1, v470);
          v179 = v455;
          if (v178 == 1)
          {
            _s10OmniSearch0B6EntityVWOhTm_0();
            (v479)(v459, v471);
            outlined destroy of IntentApplication?(v176, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
            v180 = &_s10OmniSearch28TicketedTransportationEntityVSgMd;
            v181 = &_s10OmniSearch28TicketedTransportationEntityVSgMR;
            v182 = v487;
            goto LABEL_91;
          }

          v220 = v176;
          v221 = v469;
          (*(v469 + 32))(v455, v220, v177);
          v222 = v442;
          v223 = v459;
          Calendar.date(from:)();
          v224 = v222;
          v225 = v480;
          if (__swift_getEnumTagSinglePayload(v222, 1, v480) == 1)
          {
            outlined destroy of IntentApplication?(v487, &_s10OmniSearch28TicketedTransportationEntityVSgMd, &_s10OmniSearch28TicketedTransportationEntityVSgMR);
            (*(v221 + 8))(v179, v470);
            _s10OmniSearch0B6EntityVWOhTm_0();
            v226 = v223;
            v227 = v471;
LABEL_111:
            (v479)(v226, v227);
            v199 = &_s10Foundation4DateVSgMd;
            v200 = &_s10Foundation4DateVSgMR;
            v259 = v224;
            goto LABEL_127;
          }

          v287 = v428;
          v170(v428, v224, v225);
          v288 = v457;
          v289 = v179;
          v290 = v458;
          v415(&v458[*(v457 + 24)], v287, v225);
          *v290 = 257;
          v291 = (v290 + *(v288 + 28));
          *v291 = 0;
          v291[1] = 0;
          EditorialDateFormatter.format(_:)(v290, v292, v293, v294, v295, v296, v297, v298, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425);
          v299 = v221;
          v301 = v300;
          v468 = v175;
          v303 = v302;
          _s10OmniSearch0B6EntityVWOhTm_0();
          v486[0] = 544497952;
          v486[1] = 0xE400000000000000;
          MEMORY[0x25F89F6C0](v301, v303);

          MEMORY[0x25F89F6C0](v486[0], v486[1]);
          outlined destroy of IntentApplication?(v487, &_s10OmniSearch28TicketedTransportationEntityVSgMd, &_s10OmniSearch28TicketedTransportationEntityVSgMR);

          (v483)(v287, v480);
          (*(v299 + 8))(v289, v470);
          _s10OmniSearch0B6EntityVWOhTm_0();
          v304 = v223;
          goto LABEL_135;
        case 6:
          v120 = 0x646574656B636974;
          v157 = v465;
          outlined init with copy of SpotlightRankingItem?(v484, v465, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
          if (__swift_getEnumTagSinglePayload(v157, 1, v420) == 1)
          {
            goto LABEL_15;
          }

          v183 = *(v157 + 56);
          EntityProperty.wrappedValue.getter();
          memcpy(v486, v485, 0x88uLL);
          _s10OmniSearch0B6EntityVWOhTm_0();
          memcpy(v487, v486, 0x88uLL);
          if (_s10OmniSearch0B7ContextVSgWOg(v487) == 1)
          {
            goto LABEL_29;
          }

          v476 = v148;
          strcpy(v485, "ticketed show");
          HIWORD(v485[1]) = -4864;
          EntityProperty.wrappedValue.getter();
          if (v489)
          {
            v485[0] = v488;
            v485[1] = v489;
          }

          EntityProperty.wrappedValue.getter();
          v184 = v489;
          v147 = v471;
          v152 = v449;
          v185 = v447;
          if (v489)
          {
            if (v460)
            {
              v186 = v488;
              v488 = 544497952;
              v489 = 0xE400000000000000;
              MEMORY[0x25F89F6C0](v186, v184);

              v187 = v488;
              v188 = v489;
            }

            else
            {

              v187 = 0;
              v188 = 0xE000000000000000;
            }

            MEMORY[0x25F89F6C0](v187, v188);
          }

          EntityProperty.wrappedValue.getter();
          v305 = v470;
          if (__swift_getEnumTagSinglePayload(v185, 1, v470) == 1)
          {
            _s10OmniSearch0B6EntityVWOhTm_0();
            (v479)(v459, v147);
            outlined destroy of IntentApplication?(v185, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
            v199 = &_s10OmniSearch18TicketedShowEntityVSgMd;
            v200 = &_s10OmniSearch18TicketedShowEntityVSgMR;
            goto LABEL_126;
          }

          v244 = v469;
          (*(v469 + 32))(v152, v185, v305);
          v245 = v434;
          Calendar.date(from:)();
          v246 = v480;
          if (__swift_getEnumTagSinglePayload(v245, 1, v480) == 1)
          {
            v247 = &_s10OmniSearch18TicketedShowEntityVSgMd;
            v248 = &_s10OmniSearch18TicketedShowEntityVSgMR;
            goto LABEL_119;
          }

          v383 = v430;
          (v477)();
          v384 = v457;
          v385 = v458;
          v415(&v458[*(v457 + 24)], v383, v246);
          *v385 = 257;
          v386 = (v385 + *(v384 + 28));
          *v386 = 0;
          v386[1] = 0;
          EditorialDateFormatter.format(_:)(v385, v387, v388, v389, v390, v391, v392, v393, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425);
          v344 = v244;
          v395 = v394;
          v468 = v146;
          v397 = v396;
          _s10OmniSearch0B6EntityVWOhTm_0();
          v488 = 544497952;
          v489 = 0xE400000000000000;
          MEMORY[0x25F89F6C0](v395, v397);

          MEMORY[0x25F89F6C0](v488, v489);
          outlined destroy of IntentApplication?(v486, &_s10OmniSearch18TicketedShowEntityVSgMd, &_s10OmniSearch18TicketedShowEntityVSgMR);

          v349 = v430;
          goto LABEL_138;
        case 7:
          v120 = 0x746E657665;
          v157 = v417;
          outlined init with copy of SpotlightRankingItem?(v484, v417, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
          if (__swift_getEnumTagSinglePayload(v157, 1, v420) == 1)
          {
LABEL_15:
            outlined destroy of IntentApplication?(v157, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
LABEL_29:
            _s10OmniSearch0B6EntityVWOhTm_0();
            (v479)(v459, v471);
            return v120;
          }

          v164 = v151;
          v165 = *(v157 + 16);
          EntityProperty.wrappedValue.getter();
          memcpy(v486, v485, 0x88uLL);
          _s10OmniSearch0B6EntityVWOhTm_0();
          memcpy(v487, v486, 0x88uLL);
          if (_s10OmniSearch0B7ContextVSgWOg(v487) == 1)
          {
            goto LABEL_29;
          }

          v484 = v138;
          v476 = v148;
          v485[0] = 0x746E657665;
          v485[1] = 0xE500000000000000;
          EntityProperty.wrappedValue.getter();
          v209 = v489;
          if (v489)
          {
            v210 = v488;
            v211 = v452;
            if (v460)
            {
              v488 = 0xD000000000000011;
              v489 = 0x800000025DBF1AB0;
            }

            else
            {
              v488 = 39;
              v489 = 0xE100000000000000;
            }

            MEMORY[0x25F89F6C0](v210, v209);

            MEMORY[0x25F89F6C0](39, 0xE100000000000000);
            v120 = v488;
            v485[0] = v488;
            v485[1] = v489;
            v236 = v469;
          }

          else
          {
            v236 = v469;
            v211 = v452;
          }

          EntityProperty.wrappedValue.getter();
          v249 = v470;
          if (__swift_getEnumTagSinglePayload(v211, 1, v470) == 1)
          {
            _s10OmniSearch0B6EntityVWOhTm_0();
            (v479)(v459, v471);
            outlined destroy of IntentApplication?(v211, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
            v180 = &_s10OmniSearch18GenericEventEntityVSgMd;
            v181 = &_s10OmniSearch18GenericEventEntityVSgMR;
LABEL_90:
            v182 = v486;
LABEL_91:
            outlined destroy of IntentApplication?(v182, v180, v181);
            return v120;
          }

          v250 = v211;
          v251 = v439;
          (*(v236 + 32))(v439, v250, v249);
          v252 = v436;
          v253 = v459;
          v254 = v249;
          Calendar.date(from:)();
          v255 = v480;
          if (__swift_getEnumTagSinglePayload(v252, 1, v480) == 1)
          {
            outlined destroy of IntentApplication?(v486, &_s10OmniSearch18GenericEventEntityVSgMd, &_s10OmniSearch18GenericEventEntityVSgMR);
            (*(v236 + 8))(v251, v254);
LABEL_100:
            _s10OmniSearch0B6EntityVWOhTm_0();
            (v479)(v253, v471);
            v199 = &_s10Foundation4DateVSgMd;
            v200 = &_s10Foundation4DateVSgMR;
            v259 = v252;
LABEL_127:
            outlined destroy of IntentApplication?(v259, v199, v200);
            return v485[0];
          }

          v350 = v426;
          v164(v426, v252, v255);
          v351 = v457;
          v352 = v458;
          v415(&v458[*(v457 + 24)], v350, v255);
          *v352 = 257;
          v353 = (v352 + *(v351 + 28));
          *v353 = 0;
          v353[1] = 0;
          EditorialDateFormatter.format(_:)(v352, v354, v355, v356, v357, v358, v359, v360, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425);
          v361 = v236;
          v363 = v362;
          v468 = v146;
          v365 = v364;
          _s10OmniSearch0B6EntityVWOhTm_0();
          v488 = 544497952;
          v489 = 0xE400000000000000;
          MEMORY[0x25F89F6C0](v363, v365);

          MEMORY[0x25F89F6C0](v488, v489);
          outlined destroy of IntentApplication?(v486, &_s10OmniSearch18GenericEventEntityVSgMd, &_s10OmniSearch18GenericEventEntityVSgMR);

          (v483)(v350, v255);
          (*(v361 + 8))(v251, v470);
          goto LABEL_134;
        default:
          v153 = v461;
          outlined init with copy of SpotlightRankingItem?(v484, v461, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
          if (__swift_getEnumTagSinglePayload(v153, 1, v420) == 1)
          {
            outlined destroy of IntentApplication?(v153, &_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
          }

          else
          {
            v166 = v151;
            v167 = *(v153 + 8);
            EntityProperty.wrappedValue.getter();
            memcpy(v486, v485, 0xD8uLL);
            _s10OmniSearch0B6EntityVWOhTm_0();
            memcpy(v487, v486, 0xD8uLL);
            if (_s10OmniSearch0B7ContextVSgWOg(v487) != 1)
            {
              v476 = v148;
              v468 = v146;
              v212 = 0xEA00000000007468;
              strcpy(v485, "the flight");
              BYTE3(v485[1]) = 0;
              HIDWORD(v485[1]) = -369098752;
              EntityProperty.wrappedValue.getter();
              v213 = v489;
              v214 = v450;
              if (v489)
              {
                if (v460)
                {
                  v215 = v488;
                  v488 = 543516788;
                  v489 = 0xE400000000000000;
                  MEMORY[0x25F89F6C0](v215, v213);

                  MEMORY[0x25F89F6C0](0x746867696C6620, 0xE700000000000000);
                  v216 = v488;
                  v212 = v489;
                }

                else
                {

                  v216 = 0x67696C6620656874;
                }

                v485[0] = v216;
                v485[1] = v212;
              }

              EntityProperty.wrappedValue.getter();
              v256 = v489;
              if (v489)
              {
                v257 = v488;
                v488 = 544175136;
                v489 = 0xE400000000000000;
                MEMORY[0x25F89F6C0](v257, v256);

                MEMORY[0x25F89F6C0](v488, v489);
              }

              EntityProperty.wrappedValue.getter();
              v252 = v444;
              v253 = v459;
              Calendar.date(from:)();
              v258 = v480;
              if (__swift_getEnumTagSinglePayload(v252, 1, v480) == 1)
              {
                outlined destroy of IntentApplication?(v486, &_s10OmniSearch23FlightReservationEntityVSgMd, &_s10OmniSearch23FlightReservationEntityVSgMR);
                (*(v469 + 8))(v214, v470);
                goto LABEL_100;
              }

              v260 = v443;
              v166(v443, v252, v258);
              v261 = v457;
              v262 = v458;
              v415(&v458[*(v457 + 24)], v260, v258);
              *v262 = 256;
              v263 = (v262 + *(v261 + 28));
              *v263 = 0;
              v263[1] = 0;
              EditorialDateFormatter.format(_:)(v262, v264, v265, v266, v267, v268, v269, v270, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425);
              v272 = v271;
              v274 = v273;
              _s10OmniSearch0B6EntityVWOhTm_0();
              if (v460)
              {
                v488 = 544108320;
                v489 = 0xE400000000000000;
                MEMORY[0x25F89F6C0](v272, v274);

                v275 = v488;
                v276 = v489;
              }

              else
              {

                v275 = 0;
                v276 = 0xE000000000000000;
              }

              MEMORY[0x25F89F6C0](v275, v276);
              outlined destroy of IntentApplication?(v486, &_s10OmniSearch23FlightReservationEntityVSgMd, &_s10OmniSearch23FlightReservationEntityVSgMR);

              (v483)(v443, v480);
              (*(v469 + 8))(v214, v470);
LABEL_134:
              _s10OmniSearch0B6EntityVWOhTm_0();
              v304 = v459;
LABEL_135:
              v366 = v471;
LABEL_140:
              (v479)(v304, v366);
              return v485[0];
            }
          }

          _s10OmniSearch0B6EntityVWOhTm_0();
          (v479)(v459, v147);
          return 0xD000000000000012;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t SearchEntity.idCardEntityDescription(idCard:isFullDescription:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = (v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (v43 - v8);
  MEMORY[0x28223BE20](v7);
  v11 = (v43 - v10);
  outlined init with copy of SpotlightRankingItem?(a1, v43 - v10, &_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
  v12 = type metadata accessor for IdCardEntity();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of IntentApplication?(v11, &_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
    return 0x64726163206469;
  }

  v14 = *v11;
  EntityProperty.wrappedValue.getter();
  LOBYTE(v14) = __dst[0];
  _s10OmniSearch0B6EntityVWOhTm_0();
  if (v14)
  {
    outlined init with copy of SpotlightRankingItem?(a1, v6, &_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
    if (__swift_getEnumTagSinglePayload(v6, 1, v12) == 1)
    {
      v13 = 0x7373656E69737562;
      v15 = &_s10OmniSearch12IdCardEntityVSgMd;
      v16 = &_s10OmniSearch12IdCardEntityVSgMR;
      v17 = v6;
LABEL_8:
      outlined destroy of IntentApplication?(v17, v15, v16);
      return v13;
    }

    v19 = v6[2];
    EntityProperty.wrappedValue.getter();
    memcpy(__dst, v44, 0x60uLL);
    _s10OmniSearch0B6EntityVWOhTm_0();
    if (!__dst[0])
    {
      return 0x7373656E69737562;
    }

    EntityProperty.wrappedValue.getter();
    v20 = v44[1];
    if (!v44[1])
    {
      v13 = 0x7373656E69737562;
      v15 = &_s10OmniSearch18BusinessCardEntityVSgMd;
      v16 = &_s10OmniSearch18BusinessCardEntityVSgMR;
      v17 = __dst;
      goto LABEL_8;
    }

    v21 = v44[0];
    v13 = 0x68737265626D656DLL;
    v22 = v44[0] == 0x68737265626D656DLL && v44[1] == 0xEF647261635F7069;
    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      EntityProperty.wrappedValue.getter();
      v23 = v44[1];
      if (v44[1])
      {
        v24 = v44[0];
        v44[0] = 0;
        v44[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(18);

        v44[0] = v24;
        v44[1] = v23;
        v25 = 0xD000000000000010;
        v26 = 0x800000025DBF1C30;
LABEL_19:
        MEMORY[0x25F89F6C0](v25, v26);
        outlined destroy of IntentApplication?(__dst, &_s10OmniSearch18BusinessCardEntityVSgMd, &_s10OmniSearch18BusinessCardEntityVSgMR);
        return v44[0];
      }
    }

    else
    {
      v13 = 0x7373656E69737562;
      if (v21 == 0x7373656E69737562 && v20 == 0xED0000647261635FLL)
      {
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v34 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      EntityProperty.wrappedValue.getter();
      v38 = v44[1];
      if (v44[1])
      {
        v39 = v44[0];
        v44[0] = 0;
        v44[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(16);

        v44[0] = v39;
        v44[1] = v38;
        v25 = 0x73656E6973756220;
        v26 = 0xEE00647261632073;
        goto LABEL_19;
      }
    }

LABEL_34:
    outlined destroy of IntentApplication?(__dst, &_s10OmniSearch18BusinessCardEntityVSgMd, &_s10OmniSearch18BusinessCardEntityVSgMR);
    return v13;
  }

  outlined init with copy of SpotlightRankingItem?(a1, v9, &_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
  {
    v13 = 0x6C616E6F73726570;
    v15 = &_s10OmniSearch12IdCardEntityVSgMd;
    v16 = &_s10OmniSearch12IdCardEntityVSgMR;
    v17 = v9;
    goto LABEL_8;
  }

  v27 = v9[1];
  EntityProperty.wrappedValue.getter();
  memcpy(v44, v43, sizeof(v44));
  _s10OmniSearch0B6EntityVWOhTm_0();
  memcpy(__dst, v44, sizeof(__dst));
  if (_s10OmniSearch0B7ContextVSgWOg(__dst) == 1)
  {
    return 0x6C616E6F73726570;
  }

  EntityProperty.wrappedValue.getter();
  v28 = v43[1];
  if (!v43[1])
  {
    v13 = 0x6C616E6F73726570;
    v15 = &_s10OmniSearch18PersonalCardEntityVSgMd;
    v16 = &_s10OmniSearch18PersonalCardEntityVSgMR;
    v17 = v44;
    goto LABEL_8;
  }

  v29 = v43[0];
  v30 = v43[0] == 0x70737361705F6469 && v43[1] == 0xEB0000000074726FLL;
  if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    EntityProperty.wrappedValue.getter();
    if (!v43[1])
    {
      outlined destroy of IntentApplication?(v44, &_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR);
      return 0x74726F7073736170;
    }

    v31 = 0x726F707373617020;
    v32 = 0xE900000000000074;
  }

  else
  {
    v35 = v29 == 0xD000000000000011 && v28 == 0x800000025DBF11D0;
    if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      EntityProperty.wrappedValue.getter();
      v36 = v43[1];
      if (!v43[1])
      {
        outlined destroy of IntentApplication?(v44, &_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR);
        return 0xD000000000000010;
      }

      v37 = v43[0];
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v43[0] = v37;
      v43[1] = v36;
      v32 = 0x800000025DBF1C70;
      v31 = 0xD000000000000011;
    }

    else
    {
      v40 = v29 == 0x6E656572675F6469 && v28 == 0xED0000647261635FLL;
      if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        EntityProperty.wrappedValue.getter();
        if (!v43[1])
        {
          outlined destroy of IntentApplication?(v44, &_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR);
          return 0x6163206E65657267;
        }

        v31 = 0x63206E6565726720;
        v32 = 0xEB00000000647261;
      }

      else
      {
        if (v29 == 0x6E73735F6469 && v28 == 0xE600000000000000)
        {
        }

        else
        {
          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v42 & 1) == 0)
          {
            outlined destroy of IntentApplication?(v44, &_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR);
            return 0x206C616E6F726570;
          }
        }

        EntityProperty.wrappedValue.getter();
        if (!v43[1])
        {
          outlined destroy of IntentApplication?(v44, &_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR);
          return 7238515;
        }

        v31 = 1853059872;
        v32 = 0xE400000000000000;
      }
    }
  }

  MEMORY[0x25F89F6C0](v31, v32);
  outlined destroy of IntentApplication?(v44, &_s10OmniSearch18PersonalCardEntityVSgMd, &_s10OmniSearch18PersonalCardEntityVSgMR);
  return v43[0];
}

unint64_t SearchEntity.appEntityDescription(appEntity:isFullDescription:)(uint64_t a1, int a2)
{
  v444 = a2;
  v450 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v3 = *(*(v450 - 8) + 64);
  MEMORY[0x28223BE20](v450);
  v440 = &v395 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v409 = &v395 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v395 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v420 = &v395 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v423 = &v395 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v426 = &v395 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v430 = &v395 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v428 = &v395 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v435 = &v395 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v434 = &v395 - v25;
  MEMORY[0x28223BE20](v24);
  v442 = &v395 - v26;
  v454 = type metadata accessor for Calendar.Component();
  v460 = *(v454 - 8);
  v27 = v460[8];
  MEMORY[0x28223BE20](v454);
  v453 = &v395 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v412 = &v395 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v417 = &v395 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v427 = &v395 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v433 = &v395 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v438 = &v395 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v447 = &v395 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v448 = &v395 - v44;
  MEMORY[0x28223BE20](v43);
  v452 = (&v395 - v45);
  v46 = type metadata accessor for Calendar();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v459 = &v395 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Date();
  v455 = *(v50 - 8);
  v51 = *(v455 + 64);
  v52 = MEMORY[0x28223BE20](v50);
  v406 = &v395 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v408 = &v395 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v416 = &v395 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v422 = &v395 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v429 = &v395 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v439 = &v395 - v63;
  MEMORY[0x28223BE20](v62);
  v458 = &v395 - v64;
  v457 = type metadata accessor for EditorialDateFormatter(0);
  v65 = *(*(v457 - 1) + 64);
  v66 = MEMORY[0x28223BE20](v457);
  v456 = &v395 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v449 = &v395 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  v70 = *(*(v69 - 8) + 64);
  v71 = MEMORY[0x28223BE20](v69 - 8);
  v404 = &v395 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v403 = &v395 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v405 = &v395 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v407 = &v395 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v411 = &v395 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v410 = &v395 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v415 = &v395 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v414 = &v395 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v419 = &v395 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v425 = &v395 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v424 = &v395 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v432 = &v395 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v431 = &v395 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v437 = &v395 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v101 = &v395 - v100;
  v102 = MEMORY[0x28223BE20](v99);
  v436 = &v395 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v106 = &v395 - v105;
  v107 = MEMORY[0x28223BE20](v104);
  v441 = &v395 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v446 = &v395 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v445 = &v395 - v112;
  MEMORY[0x28223BE20](v111);
  v114 = &v395 - v113;
  v464 = 0;
  v465 = 0xE000000000000000;
  v451 = a1;
  outlined init with copy of SpotlightRankingItem?(a1, &v395 - v113, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  v115 = type metadata accessor for SearchAppEntity(0);
  if (__swift_getEnumTagSinglePayload(v114, 1, v115) == 1)
  {
    outlined destroy of IntentApplication?(v114, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
    return 0;
  }

  v397 = v106;
  v396 = v101;
  v395 = v11;
  v421 = v115;
  v117 = *(v114 + 1);
  EntityProperty.wrappedValue.getter();
  v413 = v462;
  v418 = v463;
  _s10OmniSearch0B6EntityVWOhTm_0();
  v118 = v458;
  Date.init()();
  v119 = v459;
  static Calendar.current.getter();
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  v120 = v456;
  v121 = *(v455 + 16);
  v399 = v455 + 16;
  v398 = v121;
  v121(v456, v118, v50);
  v122 = v457;
  v123 = v457[7];
  v400 = v47;
  v124 = *(v47 + 16);
  v401 = v46;
  v124(&v120[v123], v119, v46);
  v120[v122[8]] = FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_editorialDates);
  v125 = *MEMORY[0x277CC9968];
  v126 = v460;
  v128 = v453;
  v127 = v454;
  v402 = v460[13];
  v402(v453, v125, v454);
  v129 = v452;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v130 = v455;
  v131 = v126[1];
  v460 = v126 + 1;
  v131(v128, v127);
  if (__swift_getEnumTagSinglePayload(v129, 1, v50) == 1)
  {
    __break(1u);
    goto LABEL_209;
  }

  v127 = *(v130 + 32);
  v127(&v456[v457[5]], v452, v50);
  v132 = v453;
  v133 = v125;
  v134 = v454;
  v402(v453, v133, v454);
  v135 = v448;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v131(v132, v134);
  if (__swift_getEnumTagSinglePayload(v135, 1, v50) == 1)
  {
LABEL_209:
    __break(1u);
    goto LABEL_210;
  }

  (*(v400 + 8))(v459, v401);
  v137 = *(v130 + 8);
  v136 = v130 + 8;
  v129 = v137;
  v137(v458, v50);
  v138 = v456;
  v127(&v456[v457[6]], v135, v50);
  outlined init with take of SearchSpotlightEntity(v138, v449, type metadata accessor for EditorialDateFormatter);
  v139 = v413;
  v140 = v418;
  v141 = v413 == 0xD000000000000013 && 0x800000025DBF1C90 == v418;
  v142 = v450;
  v143 = v127;
  if (!v141 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v162 = v139 == 0xD000000000000013 && 0x800000025DBF1CB0 == v140;
    v163 = v421;
    if (v162 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (v444)
      {
        v164 = 0x646E696D65722061;
      }

      else
      {
        v164 = 0x7265646E696D6572;
      }

      if (v444)
      {
        v165 = 0xEA00000000007265;
      }

      else
      {
        v165 = 0xE800000000000000;
      }

      MEMORY[0x25F89F6C0](v164, v165);

      v166 = v441;
      outlined init with copy of SpotlightRankingItem?(v451, v441, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      if (__swift_getEnumTagSinglePayload(v166, 1, v163) == 1)
      {
        _s10OmniSearch0B6EntityVWOhTm_0();
        v159 = &_s10OmniSearch0B9AppEntityVSgMd;
        v160 = &_s10OmniSearch0B9AppEntityVSgMR;
        v161 = v166;
        goto LABEL_23;
      }

      v170 = *(v166 + 40);
      v169 = *(v166 + 48);

      _s10OmniSearch0B6EntityVWOhTm_0();
      if (v169)
      {
        v462 = 0x2064656C6C616320;
        v463 = 0xE800000000000000;
        MEMORY[0x25F89F6C0](v170, v169);

        MEMORY[0x25F89F6C0](v462, v463);
      }

      goto LABEL_42;
    }

    v187 = v139 == 0xD00000000000001BLL && 0x800000025DBF1CD0 == v140;
    if (v187 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      MEMORY[0x25F89F6C0](0xD000000000000013, 0x800000025DBF1E70);
      v188 = v397;
      outlined init with copy of SpotlightRankingItem?(v451, v397, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      if (__swift_getEnumTagSinglePayload(v188, 1, v163) != 1)
      {
        v190 = *(v188 + 40);
        v189 = *(v188 + 48);

        _s10OmniSearch0B6EntityVWOhTm_0();
        if (v189)
        {

          v462 = v190;
          v463 = v189;
          MEMORY[0x25F89F6C0](0xD000000000000016, 0x800000025DBF1E90);
          v191 = v462;
          v192 = v463;
          _s10OmniSearch0B6EntityVWOhTm_0();
          v464 = v191;
          v465 = v192;
          return v464;
        }

        goto LABEL_42;
      }

LABEL_50:
      _s10OmniSearch0B6EntityVWOhTm_0();
      v159 = &_s10OmniSearch0B9AppEntityVSgMd;
      v160 = &_s10OmniSearch0B9AppEntityVSgMR;
      v161 = v188;
      goto LABEL_23;
    }

    v193 = v139 == 0xD000000000000014 && 0x800000025DBF1CF0 == v140;
    if (v193 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v455 = v136;

      if (v444)
      {
        v194 = 0x6C69616D65206E61;
      }

      else
      {
        v194 = 0x6C69616D65;
      }

      if (v444)
      {
        v195 = 0xE800000000000000;
      }

      else
      {
        v195 = 0xE500000000000000;
      }

      MEMORY[0x25F89F6C0](v194, v195);

      v196 = v451;
      v197 = v436;
      outlined init with copy of SpotlightRankingItem?(v451, v436, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      if (__swift_getEnumTagSinglePayload(v197, 1, v163) == 1)
      {
        outlined destroy of IntentApplication?(v197, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      }

      else
      {
        v199 = *(v197 + 40);
        v198 = *(v197 + 48);

        _s10OmniSearch0B6EntityVWOhTm_0();
        if (v198)
        {
          v462 = 0x2064656C6C616320;
          v463 = 0xE800000000000000;
          MEMORY[0x25F89F6C0](v199, v198);

          MEMORY[0x25F89F6C0](v462, v463);
          v196 = v451;
        }
      }

      v200 = v396;
      outlined init with copy of SpotlightRankingItem?(v196, v396, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      if (__swift_getEnumTagSinglePayload(v200, 1, v163) == 1)
      {
        v201 = &_s10OmniSearch0B9AppEntityVSgMd;
        v202 = &_s10OmniSearch0B9AppEntityVSgMR;
        v203 = v200;
      }

      else
      {
        v204 = v434;
        outlined init with copy of SpotlightRankingItem?(v200 + *(v163 + 40), v434, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        _s10OmniSearch0B6EntityVWOhTm_0();
        v205 = type metadata accessor for SearchResult(0);
        if (__swift_getEnumTagSinglePayload(v204, 1, v205) != 1)
        {
          v221 = *(v205 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
          v222 = CodableNSSecureCoding.wrappedValue.getter();
          _s10OmniSearch0B6EntityVWOhTm_0();
          v223 = CSSearchableItem.senderNames.getter();

          v196 = v451;
          if (v223)
          {
            v462 = 0x206D6F726620;
            v463 = 0xE600000000000000;
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v223);
            v224 = v50;
            v225 = *(v223 + 32);
            v226 = *(v223 + 40);

            MEMORY[0x25F89F6C0](v225, v226);
            v50 = v224;

            MEMORY[0x25F89F6C0](v462, v463);
            v196 = v451;
          }

          goto LABEL_73;
        }

        v201 = &_s10OmniSearch0B6ResultVSgMd;
        v202 = &_s10OmniSearch0B6ResultVSgMR;
        v203 = v204;
      }

      outlined destroy of IntentApplication?(v203, v201, v202);
LABEL_73:
      v206 = v437;
      outlined init with copy of SpotlightRankingItem?(v196, v437, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      if (__swift_getEnumTagSinglePayload(v206, 1, v163) == 1)
      {
        _s10OmniSearch0B6EntityVWOhTm_0();
        v207 = &_s10OmniSearch0B9AppEntityVSgMd;
        v208 = &_s10OmniSearch0B9AppEntityVSgMR;
        v209 = v206;
LABEL_77:
        outlined destroy of IntentApplication?(v209, v207, v208);
        v212 = &v466;
        goto LABEL_78;
      }

      v210 = v435;
      outlined init with copy of SpotlightRankingItem?(v206 + *(v163 + 40), v435, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      _s10OmniSearch0B6EntityVWOhTm_0();
      v211 = type metadata accessor for SearchResult(0);
      if (__swift_getEnumTagSinglePayload(v210, 1, v211) == 1)
      {
        _s10OmniSearch0B6EntityVWOhTm_0();
        v207 = &_s10OmniSearch0B6ResultVSgMd;
        v208 = &_s10OmniSearch0B6ResultVSgMR;
        v209 = v210;
        goto LABEL_77;
      }

      v227 = *(v211 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v228 = CodableNSSecureCoding.wrappedValue.getter();
      _s10OmniSearch0B6EntityVWOhTm_0();
      v158 = v438;
      CSSearchableItem.contentCreationDate.getter(v438);

      if (__swift_getEnumTagSinglePayload(v158, 1, v50) == 1)
      {
        goto LABEL_38;
      }

      v229 = &v461;
LABEL_96:
      v230 = *(v229 - 32);
      v143(v230, v158, v50);
      v231 = v450;
      v232 = v440;
      v398(&v440[*(v450 + 24)], v230, v50);
      *v232 = 256;
      v233 = (v232 + *(v231 + 28));
      *v233 = 0;
      v233[1] = 0;
      EditorialDateFormatter.format(_:)(v232, v234, v235, v236, v237, v238, v239, v240, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406);
      v242 = v241;
      v244 = v243;
      _s10OmniSearch0B6EntityVWOhTm_0();
      v462 = 544108320;
      v463 = 0xE400000000000000;
      MEMORY[0x25F89F6C0](v242, v244);

      MEMORY[0x25F89F6C0](v462, v463);

      v129(v230, v50);
      goto LABEL_42;
    }

    v213 = v139 == 0xD000000000000013 && 0x800000025DBF1D10 == v140;
    if (v213 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (v444)
      {
        v214 = 0x67617373656D2061;
      }

      else
      {
        v214 = 0x6567617373656DLL;
      }

      if (v444)
      {
        v215 = 0xE900000000000065;
      }

      else
      {
        v215 = 0xE700000000000000;
      }

      MEMORY[0x25F89F6C0](v214, v215);

      v216 = v451;
      v217 = v431;
      outlined init with copy of SpotlightRankingItem?(v451, v431, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      if (__swift_getEnumTagSinglePayload(v217, 1, v163) == 1)
      {
        v218 = &_s10OmniSearch0B9AppEntityVSgMd;
        v219 = &_s10OmniSearch0B9AppEntityVSgMR;
        v220 = v217;
      }

      else
      {
        v245 = v428;
        outlined init with copy of SpotlightRankingItem?(v217 + *(v163 + 40), v428, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        _s10OmniSearch0B6EntityVWOhTm_0();
        v246 = type metadata accessor for SearchResult(0);
        if (__swift_getEnumTagSinglePayload(v245, 1, v246) != 1)
        {
          v263 = *(v246 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
          v264 = CodableNSSecureCoding.wrappedValue.getter();
          _s10OmniSearch0B6EntityVWOhTm_0();
          v265 = CSSearchableItem.senderNames.getter();

          v216 = v451;
          if (v265)
          {
            v462 = 0x206D6F726620;
            v463 = 0xE600000000000000;
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v265);
            v460 = v50;
            v266 = *(v265 + 32);
            v267 = *(v265 + 40);

            MEMORY[0x25F89F6C0](v266, v267);
            v50 = v460;

            MEMORY[0x25F89F6C0](v462, v463);
            v216 = v451;
          }

          goto LABEL_100;
        }

        v218 = &_s10OmniSearch0B6ResultVSgMd;
        v219 = &_s10OmniSearch0B6ResultVSgMR;
        v220 = v245;
      }

      outlined destroy of IntentApplication?(v220, v218, v219);
LABEL_100:
      v247 = v432;
      outlined init with copy of SpotlightRankingItem?(v216, v432, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      if (__swift_getEnumTagSinglePayload(v247, 1, v163) == 1)
      {
        _s10OmniSearch0B6EntityVWOhTm_0();
        v248 = &_s10OmniSearch0B9AppEntityVSgMd;
        v249 = &_s10OmniSearch0B9AppEntityVSgMR;
        v250 = v247;
      }

      else
      {
        v251 = v430;
        outlined init with copy of SpotlightRankingItem?(v247 + *(v163 + 40), v430, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        _s10OmniSearch0B6EntityVWOhTm_0();
        v252 = type metadata accessor for SearchResult(0);
        if (__swift_getEnumTagSinglePayload(v251, 1, v252) != 1)
        {
          v268 = *(v252 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
          v269 = CodableNSSecureCoding.wrappedValue.getter();
          _s10OmniSearch0B6EntityVWOhTm_0();
          v158 = v433;
          CSSearchableItem.contentCreationDate.getter(v433);

          if (__swift_getEnumTagSinglePayload(v158, 1, v50) == 1)
          {
            goto LABEL_38;
          }

          v270 = v422;
          v143(v422, v158, v50);
          v271 = v450;
          v272 = v440;
          v398(&v440[*(v450 + 24)], v270, v50);
          *v272 = 256;
          v273 = (v272 + *(v271 + 28));
          *v273 = 0;
          v273[1] = 0;
          EditorialDateFormatter.format(_:)(v272, v274, v275, v276, v277, v278, v279, v280, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406);
          v282 = v281;
          v284 = v283;
          _s10OmniSearch0B6EntityVWOhTm_0();
          v462 = 544108320;
          v463 = 0xE400000000000000;
          MEMORY[0x25F89F6C0](v282, v284);

          MEMORY[0x25F89F6C0](v462, v463);

          v129(v270, v50);
          goto LABEL_42;
        }

        _s10OmniSearch0B6EntityVWOhTm_0();
        v248 = &_s10OmniSearch0B6ResultVSgMd;
        v249 = &_s10OmniSearch0B6ResultVSgMR;
        v250 = v251;
      }

      outlined destroy of IntentApplication?(v250, v248, v249);
      v212 = &v465;
LABEL_78:
      v158 = *(v212 - 32);
      goto LABEL_21;
    }

    v253 = v139 == 0xD000000000000014 && 0x800000025DBF1D30 == v140;
    if (v253 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (v444)
      {
        v254 = 0x206563696F762061;
      }

      else
      {
        v254 = 0x656D206563696F76;
      }

      if (v444)
      {
        v255 = 0xEC0000006F6D656DLL;
      }

      else
      {
        v255 = 0xEA00000000006F6DLL;
      }

      MEMORY[0x25F89F6C0](v254, v255);

      v256 = v451;
      v257 = v424;
      outlined init with copy of SpotlightRankingItem?(v451, v424, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v257, 1, v163);
      v259 = v426;
      if (EnumTagSinglePayload == 1)
      {
        v260 = &_s10OmniSearch0B9AppEntityVSgMd;
        v261 = &_s10OmniSearch0B9AppEntityVSgMR;
        v262 = v257;
      }

      else
      {
        outlined init with copy of SpotlightRankingItem?(v257 + *(v163 + 40), v426, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        _s10OmniSearch0B6EntityVWOhTm_0();
        v285 = type metadata accessor for SearchResult(0);
        if (__swift_getEnumTagSinglePayload(v259, 1, v285) != 1)
        {
          v294 = *(v285 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
          v295 = CodableNSSecureCoding.wrappedValue.getter();
          _s10OmniSearch0B6EntityVWOhTm_0();
          v296 = CSSearchableItem.senderNames.getter();

          v256 = v451;
          if (v296)
          {
            v462 = 0x206D6F726620;
            v463 = 0xE600000000000000;
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v296);
            v297 = v129;
            v298 = v136;
            v460 = v50;
            v299 = *(v296 + 32);
            v300 = *(v296 + 40);

            v301 = v299;
            v136 = v298;
            v129 = v297;
            MEMORY[0x25F89F6C0](v301, v300);
            v50 = v460;

            MEMORY[0x25F89F6C0](v462, v463);
            v256 = v451;
          }

LABEL_125:
          v286 = v425;
          outlined init with copy of SpotlightRankingItem?(v256, v425, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
          if (__swift_getEnumTagSinglePayload(v286, 1, v163) == 1)
          {
            _s10OmniSearch0B6EntityVWOhTm_0();
            v287 = &_s10OmniSearch0B9AppEntityVSgMd;
            v288 = &_s10OmniSearch0B9AppEntityVSgMR;
            v289 = v286;
          }

          else
          {
            v290 = v423;
            outlined init with copy of SpotlightRankingItem?(v286 + *(v163 + 40), v423, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
            _s10OmniSearch0B6EntityVWOhTm_0();
            v291 = type metadata accessor for SearchResult(0);
            if (__swift_getEnumTagSinglePayload(v290, 1, v291) != 1)
            {
              v455 = v136;
              v302 = *(v291 + 24);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
              v303 = CodableNSSecureCoding.wrappedValue.getter();
              _s10OmniSearch0B6EntityVWOhTm_0();
              v158 = v427;
              CSSearchableItem.contentCreationDate.getter(v427);

              if (__swift_getEnumTagSinglePayload(v158, 1, v50) == 1)
              {
                goto LABEL_38;
              }

              v229 = &v449;
              goto LABEL_96;
            }

            _s10OmniSearch0B6EntityVWOhTm_0();
            v287 = &_s10OmniSearch0B6ResultVSgMd;
            v288 = &_s10OmniSearch0B6ResultVSgMR;
            v289 = v290;
          }

          outlined destroy of IntentApplication?(v289, v287, v288);
          v212 = &v460;
          goto LABEL_78;
        }

        v260 = &_s10OmniSearch0B6ResultVSgMd;
        v261 = &_s10OmniSearch0B6ResultVSgMR;
        v262 = v259;
      }

      outlined destroy of IntentApplication?(v262, v260, v261);
      goto LABEL_125;
    }

    v292 = v139 == 0xD000000000000015 && 0x800000025DBF1D50 == v140;
    if (v292 || (v127 = v50, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      MEMORY[0x25F89F6C0](0x616320656E6F6870, 0xEA00000000006C6CLL);
      v188 = v419;
      outlined init with copy of SpotlightRankingItem?(v451, v419, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      v293 = v421;
      if (__swift_getEnumTagSinglePayload(v188, 1, v421) == 1)
      {
        goto LABEL_50;
      }

      v304 = v420;
      outlined init with copy of SpotlightRankingItem?(v188 + *(v293 + 40), v420, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      _s10OmniSearch0B6EntityVWOhTm_0();
      v305 = type metadata accessor for SearchResult(0);
      if (__swift_getEnumTagSinglePayload(v304, 1, v305) == 1)
      {
        _s10OmniSearch0B6EntityVWOhTm_0();
        v159 = &_s10OmniSearch0B6ResultVSgMd;
        v160 = &_s10OmniSearch0B6ResultVSgMR;
        v306 = &v453;
LABEL_172:
        v161 = *(v306 - 32);
        goto LABEL_23;
      }

      v309 = *(v305 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v310 = CodableNSSecureCoding.wrappedValue.getter();
      _s10OmniSearch0B6EntityVWOhTm_0();
      v311 = CSSearchableItem.senderNames.getter();

      if (!v311)
      {
        goto LABEL_42;
      }

      v462 = 0x206D6F726620;
      v463 = 0xE600000000000000;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v311);
      v312 = *(v311 + 32);
      v313 = *(v311 + 40);

      MEMORY[0x25F89F6C0](v312, v313);
LABEL_152:

      MEMORY[0x25F89F6C0](v462, v463);

      goto LABEL_42;
    }

    v307 = v139 == 0xD000000000000015 && 0x800000025DBF1D70 == v140;
    if (v307 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      MEMORY[0x25F89F6C0](0x65746F6E2061, 0xE600000000000000);
      v308 = v414;
      outlined init with copy of SpotlightRankingItem?(v451, v414, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      if (__swift_getEnumTagSinglePayload(v308, 1, v421) == 1)
      {
        outlined destroy of IntentApplication?(v414, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      }

      else
      {
        v315 = *(v414 + 40);
        v314 = *(v414 + 48);

        _s10OmniSearch0B6EntityVWOhTm_0();
        if (v314)
        {

          if (v444)
          {
            v462 = 0x632065746F6E2061;
            v463 = 0xEF272064656C6C61;
            MEMORY[0x25F89F6C0](v315, v314);

            v316 = 39;
            v317 = 0xE100000000000000;
          }

          else
          {
            v462 = 0x2720656874;
            v463 = 0xE500000000000000;
            MEMORY[0x25F89F6C0](v315, v314);

            v316 = 0x65746F6E2027;
            v317 = 0xE600000000000000;
          }

          MEMORY[0x25F89F6C0](v316, v317);
          v464 = v462;
          v465 = v463;
        }
      }

      v320 = v415;
      outlined init with copy of SpotlightRankingItem?(v451, v415, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      if (__swift_getEnumTagSinglePayload(v320, 1, v421) == 1)
      {
        _s10OmniSearch0B6EntityVWOhTm_0();
        v321 = &_s10OmniSearch0B9AppEntityVSgMd;
        v322 = &_s10OmniSearch0B9AppEntityVSgMR;
        v323 = &v448;
LABEL_170:
        outlined destroy of IntentApplication?(*(v323 - 32), v321, v322);
        __swift_storeEnumTagSinglePayload(v417, 1, 1, v127);
LABEL_171:
        v159 = &_s10Foundation4DateVSgMd;
        v160 = &_s10Foundation4DateVSgMR;
        v306 = &v450;
        goto LABEL_172;
      }

      v324 = v395;
      outlined init with copy of SpotlightRankingItem?(v415 + *(v421 + 40), v395, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      _s10OmniSearch0B6EntityVWOhTm_0();
      v325 = type metadata accessor for SearchResult(0);
      if (__swift_getEnumTagSinglePayload(v324, 1, v325) == 1)
      {
        _s10OmniSearch0B6EntityVWOhTm_0();
        v321 = &_s10OmniSearch0B6ResultVSgMd;
        v322 = &_s10OmniSearch0B6ResultVSgMR;
        v323 = &v427;
        goto LABEL_170;
      }

      v326 = *(v325 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v327 = CodableNSSecureCoding.wrappedValue.getter();
      _s10OmniSearch0B6EntityVWOhTm_0();
      v328 = v417;
      CSSearchableItem.contentCreationDate.getter(v417);

      if (__swift_getEnumTagSinglePayload(v328, 1, v127) == 1)
      {
        _s10OmniSearch0B6EntityVWOhTm_0();
        goto LABEL_171;
      }

      v335 = v408;
      v143(v408, v417, v127);
      v336 = v450;
      v337 = v440;
      v398(&v440[*(v450 + 24)], v335, v127);
      *v337 = 256;
      v338 = (v337 + *(v336 + 28));
      *v338 = 0;
      v338[1] = 0;
      EditorialDateFormatter.format(_:)(v337, v339, v340, v341, v342, v343, v344, v345, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406);
      v347 = v346;
      v349 = v348;
      _s10OmniSearch0B6EntityVWOhTm_0();
      if (v444)
      {
        v462 = 544108320;
        v463 = 0xE400000000000000;
        MEMORY[0x25F89F6C0](v347, v349);

        v350 = v462;
        v351 = v463;
      }

      else
      {

        v350 = 0;
        v351 = 0xE000000000000000;
      }

      MEMORY[0x25F89F6C0](v350, v351);

      v357 = &v440;
LABEL_199:
      v129(*(v357 - 32), v127);
      goto LABEL_42;
    }

    v318 = v413 == 0xD000000000000011 && 0x800000025DBF1D90 == v418;
    if (v318 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      MEMORY[0x25F89F6C0](0x616E72756F4A2061, 0xEF7972746E65206CLL);
      v319 = v410;
      outlined init with copy of SpotlightRankingItem?(v451, v410, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      if (__swift_getEnumTagSinglePayload(v319, 1, v421) == 1)
      {
        outlined destroy of IntentApplication?(v410, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      }

      else
      {
        v330 = *(v410 + 40);
        v329 = *(v410 + 48);

        _s10OmniSearch0B6EntityVWOhTm_0();
        if (v329)
        {
          v462 = 0x2064656C6C616320;
          v463 = 0xE800000000000000;
          MEMORY[0x25F89F6C0](v330, v329);

          MEMORY[0x25F89F6C0](v462, v463);
        }
      }

      v331 = v411;
      outlined init with copy of SpotlightRankingItem?(v451, v411, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      if (__swift_getEnumTagSinglePayload(v331, 1, v421) == 1)
      {
        _s10OmniSearch0B6EntityVWOhTm_0();
        v332 = &_s10OmniSearch0B9AppEntityVSgMd;
        v333 = &_s10OmniSearch0B9AppEntityVSgMR;
        v334 = &v443;
LABEL_183:
        outlined destroy of IntentApplication?(*(v334 - 32), v332, v333);
        __swift_storeEnumTagSinglePayload(v412, 1, 1, v50);
LABEL_184:
        v159 = &_s10Foundation4DateVSgMd;
        v160 = &_s10Foundation4DateVSgMR;
        v306 = &v445;
        goto LABEL_172;
      }

      v352 = v409;
      outlined init with copy of SpotlightRankingItem?(v411 + *(v421 + 40), v409, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      _s10OmniSearch0B6EntityVWOhTm_0();
      v353 = type metadata accessor for SearchResult(0);
      if (__swift_getEnumTagSinglePayload(v352, 1, v353) == 1)
      {
        _s10OmniSearch0B6EntityVWOhTm_0();
        v332 = &_s10OmniSearch0B6ResultVSgMd;
        v333 = &_s10OmniSearch0B6ResultVSgMR;
        v334 = &v441;
        goto LABEL_183;
      }

      v358 = *(v353 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v359 = CodableNSSecureCoding.wrappedValue.getter();
      _s10OmniSearch0B6EntityVWOhTm_0();
      v360 = v412;
      CSSearchableItem.contentCreationDate.getter(v412);

      if (__swift_getEnumTagSinglePayload(v360, 1, v50) == 1)
      {
        _s10OmniSearch0B6EntityVWOhTm_0();
        goto LABEL_184;
      }

      v367 = v406;
      v143(v406, v412, v50);
      v368 = v450;
      v369 = v440;
      v398(&v440[*(v450 + 24)], v367, v127);
      *v369 = 256;
      v370 = (v369 + *(v368 + 28));
      *v370 = 0;
      v370[1] = 0;
      EditorialDateFormatter.format(_:)(v369, v371, v372, v373, v374, v375, v376, v377, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406);
      v379 = v378;
      v381 = v380;
      _s10OmniSearch0B6EntityVWOhTm_0();
      if (v444)
      {
        v462 = 544108320;
        v463 = 0xE400000000000000;
        MEMORY[0x25F89F6C0](v379, v381);

        v382 = v462;
        v383 = v463;
LABEL_211:
        MEMORY[0x25F89F6C0](v382, v383);

        v357 = &v438;
        goto LABEL_199;
      }

LABEL_210:

      v382 = 0;
      v383 = 0xE000000000000000;
      goto LABEL_211;
    }

    v354 = v413 == 0xD00000000000002BLL && 0x800000025DBF1DB0 == v418;
    if (v354 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v413 == 0xD000000000000023 ? (v355 = 0x800000025DBF1DE0 == v418) : (v355 = 0), v355 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      MEMORY[0x25F89F6C0](0x656C69662061, 0xE600000000000000);
      v356 = v407;
      outlined init with copy of SpotlightRankingItem?(v451, v407, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      if (__swift_getEnumTagSinglePayload(v356, 1, v421) == 1)
      {
        _s10OmniSearch0B6EntityVWOhTm_0();
        v159 = &_s10OmniSearch0B9AppEntityVSgMd;
        v160 = &_s10OmniSearch0B9AppEntityVSgMR;
        v306 = &v439;
        goto LABEL_172;
      }

      v361 = &v439;
    }

    else
    {
      v384 = v413 == 0xD000000000000019 && 0x800000025DBF1E10 == v418;
      if (v384 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        MEMORY[0x25F89F6C0](0x6F746F68702061, 0xE700000000000000);
        v385 = v405;
        outlined init with copy of SpotlightRankingItem?(v451, v405, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
        if (__swift_getEnumTagSinglePayload(v385, 1, v421) == 1)
        {
          _s10OmniSearch0B6EntityVWOhTm_0();
          v159 = &_s10OmniSearch0B9AppEntityVSgMd;
          v160 = &_s10OmniSearch0B9AppEntityVSgMR;
          v306 = &v437;
          goto LABEL_172;
        }

        v364 = *(v405 + 40);
        v363 = *(v405 + 48);

        _s10OmniSearch0B6EntityVWOhTm_0();
        if (!v363)
        {
          goto LABEL_42;
        }

        v365 = 543584032;
        v366 = 0xE400000000000000;
        goto LABEL_205;
      }

      v386 = v413 == 0xD000000000000012 && 0x800000025DBF1E30 == v418;
      if (v386 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        MEMORY[0x25F89F6C0](0x74656C6C61572061, 0xED00006472616320);
        v387 = v403;
        outlined init with copy of SpotlightRankingItem?(v451, v403, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
        if (__swift_getEnumTagSinglePayload(v387, 1, v421) == 1)
        {
          _s10OmniSearch0B6EntityVWOhTm_0();
          v159 = &_s10OmniSearch0B9AppEntityVSgMd;
          v160 = &_s10OmniSearch0B9AppEntityVSgMR;
          v306 = &v435;
          goto LABEL_172;
        }

        v361 = &v435;
      }

      else
      {
        if (v413 == 0xD000000000000016 && 0x800000025DBF1E50 == v418)
        {
        }

        else
        {
          v389 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v389 & 1) == 0)
          {
            if (one-time initialization token for search != -1)
            {
              swift_once();
            }

            v390 = type metadata accessor for Logger();
            __swift_project_value_buffer(v390, static Logging.search);
            v391 = Logger.logObject.getter();
            v392 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v391, v392))
            {
              v393 = swift_slowAlloc();
              *v393 = 0;
              _os_log_impl(&dword_25D85C000, v391, v392, "No appEntity description for appEntity type", v393, 2u);
              MEMORY[0x25F8A1050](v393, -1, -1);
            }

            goto LABEL_42;
          }
        }

        MEMORY[0x25F89F6C0](0x6972616661532061, 0xED00006B6E696C20);
        v394 = v404;
        outlined init with copy of SpotlightRankingItem?(v451, v404, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
        if (__swift_getEnumTagSinglePayload(v394, 1, v421) == 1)
        {
          _s10OmniSearch0B6EntityVWOhTm_0();
          v159 = &_s10OmniSearch0B9AppEntityVSgMd;
          v160 = &_s10OmniSearch0B9AppEntityVSgMR;
          v306 = &v436;
          goto LABEL_172;
        }

        v361 = &v436;
      }
    }

    v362 = *(v361 - 32);
    v364 = *(v362 + 40);
    v363 = *(v362 + 48);

    _s10OmniSearch0B6EntityVWOhTm_0();
    if (!v363)
    {
      goto LABEL_42;
    }

    v365 = 0x2064656C6C616320;
    v366 = 0xE800000000000000;
LABEL_205:
    v462 = v365;
    v463 = v366;
    MEMORY[0x25F89F6C0](v364, v363);
    goto LABEL_152;
  }

  v460 = v129;
  v455 = v136;
  v144 = v127;

  MEMORY[0x25F89F6C0](0x746E657665206E61, 0xE800000000000000);
  v145 = v451;
  v146 = v445;
  outlined init with copy of SpotlightRankingItem?(v451, v445, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  v147 = v421;
  v148 = v50;
  if (__swift_getEnumTagSinglePayload(v146, 1, v421) == 1)
  {
    outlined destroy of IntentApplication?(v146, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  }

  else
  {
    v149 = *(v146 + 40);
    v150 = *(v146 + 48);

    _s10OmniSearch0B6EntityVWOhTm_0();
    if (v150)
    {

      if (v444)
      {
        v462 = 0xD000000000000010;
        v463 = 0x800000025DBF1EB0;
        MEMORY[0x25F89F6C0](v149, v150);
        v145 = v451;

        v149 = v462;
        v150 = v463;
      }

      v464 = v149;
      v465 = v150;
    }
  }

  v151 = v446;
  outlined init with copy of SpotlightRankingItem?(v145, v446, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  v50 = v148;
  if (__swift_getEnumTagSinglePayload(v151, 1, v147) != 1)
  {
    v155 = v151 + *(v147 + 40);
    v156 = v442;
    outlined init with copy of SpotlightRankingItem?(v155, v442, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    _s10OmniSearch0B6EntityVWOhTm_0();
    v157 = type metadata accessor for SearchResult(0);
    if (__swift_getEnumTagSinglePayload(v156, 1, v157) == 1)
    {
      _s10OmniSearch0B6EntityVWOhTm_0();
      v152 = &_s10OmniSearch0B6ResultVSgMd;
      v153 = &_s10OmniSearch0B6ResultVSgMR;
      v154 = v156;
      goto LABEL_20;
    }

    v167 = *(v157 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v168 = CodableNSSecureCoding.wrappedValue.getter();
    _s10OmniSearch0B6EntityVWOhTm_0();
    v158 = v447;
    CSSearchableItem.contentCreationDate.getter(v447);

    if (__swift_getEnumTagSinglePayload(v158, 1, v148) == 1)
    {
LABEL_38:
      _s10OmniSearch0B6EntityVWOhTm_0();
      goto LABEL_22;
    }

    v171 = v439;
    v144(v439, v158, v148);
    v172 = v142;
    v173 = *(v142 + 24);
    v174 = v440;
    v398(&v440[v173], v171, v148);
    *v174 = 256;
    v175 = (v174 + *(v172 + 28));
    *v175 = 0;
    v175[1] = 0;
    EditorialDateFormatter.format(_:)(v174, v176, v177, v178, v179, v180, v181, v182, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406);
    v184 = v183;
    v186 = v185;
    _s10OmniSearch0B6EntityVWOhTm_0();
    v462 = 544108320;
    v463 = 0xE400000000000000;
    MEMORY[0x25F89F6C0](v184, v186);

    MEMORY[0x25F89F6C0](v462, v463);

    (v460)(v171, v148);
LABEL_42:
    _s10OmniSearch0B6EntityVWOhTm_0();
    return v464;
  }

  _s10OmniSearch0B6EntityVWOhTm_0();
  v152 = &_s10OmniSearch0B9AppEntityVSgMd;
  v153 = &_s10OmniSearch0B9AppEntityVSgMR;
  v154 = v151;
LABEL_20:
  outlined destroy of IntentApplication?(v154, v152, v153);
  v158 = v447;
LABEL_21:
  __swift_storeEnumTagSinglePayload(v158, 1, 1, v50);
LABEL_22:
  v159 = &_s10Foundation4DateVSgMd;
  v160 = &_s10Foundation4DateVSgMR;
  v161 = v158;
LABEL_23:
  outlined destroy of IntentApplication?(v161, v159, v160);
  return v464;
}