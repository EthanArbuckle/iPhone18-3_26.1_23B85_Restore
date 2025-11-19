uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10OmniSearch0C6ResultV5valuetMd, &_sSS3key_10OmniSearch0C6ResultV5valuetMR) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10OmniSearch0B6ResultVtMd, &_sSS_10OmniSearch0B6ResultVtMR);
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t outlined assign with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_0()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v3 = v2(v1);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t _s10OmniSearch0B6ResultVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t outlined assign with take of SearchResultItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SearchResultItem?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return v4;
}

uint64_t outlined init with copy of SpotlightRankingItem?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return v4;
}

uint64_t outlined assign with take of SearchResultItem?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return v4;
}

void type metadata completion function for ResolvedInfo()
{
  type metadata accessor for SearchResultItem?(319, &lazy cache variable for type metadata for SearchResultItem?, type metadata accessor for SearchResultItem, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String : String]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SearchResultItem?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SearchResultItem?(319, &lazy cache variable for type metadata for [DialogExperience], type metadata accessor for DialogExperience, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SearchResultItem?(319, &lazy cache variable for type metadata for [AudioResult], MEMORY[0x277D565E8], MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for SearchResultItem?(319, &lazy cache variable for type metadata for PommesContext?, MEMORY[0x277D56698], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for SearchResultItem?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id outlined copy of Result<[SearchResult], Error>(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void outlined consume of Result<[SearchResult], Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return _s10OmniSearch0B10ResultItemOWOhTm_0();
}

uint64_t OUTLINED_FUNCTION_15_3@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return _s10OmniSearch0B10ResultItemOWOhTm_0();
}

unint64_t OUTLINED_FUNCTION_25_2()
{
  v2 = *v0;

  return specialized __RawDictionaryStorage.find<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1)
{
  v2 = (*(v1 + 56) + 16 * a1);
  v3 = *v2;
  return v2[1];
}

uint64_t OUTLINED_FUNCTION_34_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_38_2()
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_47_3()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t OUTLINED_FUNCTION_48_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_49_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

Swift::Int AnswerSynthesisModelError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnswerSynthesisModelError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AnswerSynthesisModelError.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisModelError(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Int PQAVerificationModelOnDeviceError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PQAVerificationModelOnDeviceError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PQAVerificationModelOnDeviceError.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError()
{
  result = lazy protocol witness table cache variable for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError;
  if (!lazy protocol witness table cache variable for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError;
  if (!lazy protocol witness table cache variable for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PQAVerificationModelOnDeviceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PQAVerificationModelOnDeviceError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t AnswerSynthesisModelOnDevice.modelVersion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t AnswerSynthesisModelOnDevice.model.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t AnswerSynthesisModelOnDevice.model.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t AnswerSynthesisModelOnDevice.resourceBundleQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10OmniSearch28AnswerSynthesisModelOnDevice_resourceBundleQuery;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t AnswerSynthesisModelOnDevice.resourceBundleQuery.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10OmniSearch28AnswerSynthesisModelOnDevice_resourceBundleQuery;
  swift_beginAccess();
  v4 = type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

void AnswerSynthesisModelOnDevice.init(languageCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  a19 = v22;
  a20 = v23;
  v196 = v21;
  v24 = v20;
  v26 = v25;
  v202 = *v20;
  v27 = type metadata accessor for CachePolicy();
  v28 = OUTLINED_FUNCTION_114(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_4(v32 - v31);
  v33 = type metadata accessor for SessionConfiguration();
  v34 = OUTLINED_FUNCTION_1_5(v33, &v209);
  v179 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  OUTLINED_FUNCTION_114(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v44);
  v45 = type metadata accessor for ModelBundle();
  v46 = OUTLINED_FUNCTION_1_5(v45, &a13);
  v206 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_4(v51 - v50);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_114(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_49_3();
  v199 = v56;
  OUTLINED_FUNCTION_78_0();
  v57 = type metadata accessor for ResourceBundleQuery();
  v58 = OUTLINED_FUNCTION_1_5(v57, &a16);
  v195 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_14_2();
  v205 = v64;
  OUTLINED_FUNCTION_78_0();
  v65 = type metadata accessor for AssetVersion();
  v66 = OUTLINED_FUNCTION_1_5(v65, &a11);
  v182 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_4(v71 - v70);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
  v73 = OUTLINED_FUNCTION_1_5(v72, &a12);
  v183 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_14_2();
  v203 = v78;
  OUTLINED_FUNCTION_78_0();
  v79 = type metadata accessor for Locale.LanguageCode();
  v80 = OUTLINED_FUNCTION_14(v79);
  v82 = v81;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_39_0();
  v200 = v85;
  MEMORY[0x28223BE20](v86);
  v88 = &v173 - v87;
  v20[2] = 0;
  v180 = v20 + 2;
  v20[3] = 0;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  v90 = __swift_project_value_buffer(v89, static Logging.answerSynthesis);
  v91 = *(v82 + 16);
  v91(v88, v26, v79);
  v204 = v90;
  v92 = Logger.logObject.getter();
  LODWORD(v188) = static os_log_type_t.info.getter();
  v93 = OUTLINED_FUNCTION_20_3();
  v95 = os_log_type_enabled(v93, v94);
  v201 = v82;
  v197 = v91;
  v198 = v82 + 16;
  if (v95)
  {
    OUTLINED_FUNCTION_28_3();
    v96 = swift_slowAlloc();
    v193 = v24;
    v97 = v96;
    OUTLINED_FUNCTION_9_4();
    v174 = swift_slowAlloc();
    v208[0] = v174;
    *v97 = 136315138;
    v91(v200, v88, v79);
    String.init<A>(describing:)();
    v98 = OUTLINED_FUNCTION_68_2();
    v99(v98);
    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v97 + 4) = v100;
    _os_log_impl(&dword_25D85C000, v92, v188, "Initializing AnswerSynthesisModelOnDevice with %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v174);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v24 = v193;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    v101 = OUTLINED_FUNCTION_68_2();
    v102(v101);
  }

  v103 = v206;
  static Catalog.Resource.LLM.Adapter.AnswerSynthesis()();
  v104 = v208[4];
  __swift_project_boxed_opaque_existential_1(v208, v208[3]);
  v105 = *(v104 + 8);
  v106 = v203;
  v107 = v196;
  dispatch thunk of AssetBackedResource.fetchAsset()();
  v108 = v205;
  if (v107)
  {
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_91_0(v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_25D85C000, v109, v110, "Unable to get AS model - on device version", v111, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }
  }

  else
  {
    v196 = v26;
    v112 = v181;
    v113 = v190;
    CatalogAsset.version.getter();
    v114 = AssetVersion.number.getter();
    v116 = v115;
    v182 = *(v182 + 8);
    (v182)(v112, v189);
    swift_beginAccess();
    v117 = v24[3];
    v24[2] = v114;
    v24[3] = v116;

    v118 = v183;
    (*(v183 + 16))(v192, v106, v113);
    v119 = v106;
    v120 = Logger.logObject.getter();
    LODWORD(v180) = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_91_0(v180))
    {
      OUTLINED_FUNCTION_28_3();
      v121 = swift_slowAlloc();
      v188 = v79;
      v122 = v121;
      OUTLINED_FUNCTION_9_4();
      v123 = swift_slowAlloc();
      v193 = v24;
      v174 = v123;
      v207 = v123;
      *v122 = 136315138;
      v124 = v192;
      CatalogAsset.version.getter();
      v125 = AssetVersion.number.getter();
      (v182)(v112, v189);
      v126 = *(v118 + 8);
      v127 = v190;
      v126(v124, v190);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_37_3();

      *(v122 + 4) = v125;
      _os_log_impl(&dword_25D85C000, v120, v180, "AS on device model version is %s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v174);
      v24 = v193;
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      v79 = v188;
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();

      v126(v203, v127);
    }

    else
    {

      v128 = *(v118 + 8);
      v128(v192, v113);
      v128(v119, v113);
    }

    v26 = v196;
    v108 = v205;
    v103 = v206;
  }

  static Catalog.ResourceBundle.TokenGeneration.LLM.AnswerSynthesisConfigurationID.getter();
  v129 = v199;
  v197(v199, v26, v79);
  __swift_storeEnumTagSinglePayload(v129, 0, 1, v79);
  OUTLINED_FUNCTION_94();
  ResourceBundleQuery.init(configurationIdentifier:languageCode:otherArguments:)();
  v130 = v108;
  v131 = v26;
  v188 = v79;
  v132 = OBJC_IVAR____TtC10OmniSearch28AnswerSynthesisModelOnDevice_resourceBundleQuery;
  v133 = v195;
  v134 = v194;
  (*(v195 + 32))(v24 + OBJC_IVAR____TtC10OmniSearch28AnswerSynthesisModelOnDevice_resourceBundleQuery, v130, v194);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v205 = *(v133 + 16);
  v205(v187, v24 + v132, v134);
  v135 = v184;
  ModelBundle.init(resourceBundleQuery:)();
  v136 = OUTLINED_FUNCTION_65();
  v137 = v191;
  if (__swift_getEnumTagSinglePayload(v136, v138, v191) == 1)
  {
    outlined destroy of IntentApplication?(v135, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);

    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v139, v140))
    {
      OUTLINED_FUNCTION_28_3();
      v141 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v142 = swift_slowAlloc();
      v196 = v131;
      v143 = v24;
      v144 = v142;
      *v141 = 136315138;
      v205(v187, v143 + v132, v194);
      String.init<A>(describing:)();
      v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v141 + 4) = v145;
      _os_log_impl(&dword_25D85C000, v139, v140, "Failed to create AnswerSynthesisModelOnDevice bundle using %s", v141, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v144);
      v24 = v143;
      v146 = v196;
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();

      v147 = v188;
    }

    else
    {

      v147 = v188;
      v146 = v131;
    }

    lazy protocol witness table accessor for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError();
    swift_allocError();
    *v169 = 1;
    swift_willThrow();
    v200(v146, v147);
    __swift_destroy_boxed_opaque_existential_1Tm(v208);
    v170 = v24[3];

    (*(v195 + 8))(v24 + OBJC_IVAR____TtC10OmniSearch28AnswerSynthesisModelOnDevice_resourceBundleQuery, v194);
    v171 = *(*v24 + 48);
    v172 = *(*v24 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v196 = v131;
    v148 = v185;
    (*(v103 + 32))(v185, v135, v137);
    v193 = v24;
    OUTLINED_FUNCTION_70_2();
    v149 = static AnswerSynthesisModelProtocol.GMS_SESSION_IDENTIFIER.getter();
    v203 = v150;
    v204 = v149;
    OUTLINED_FUNCTION_70_2();
    v202 = static AnswerSynthesisModelProtocol.GMS_USE_CASE_ID.getter();
    v199 = v151;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMR);
    v152 = *(v103 + 72);
    v153 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v154 = swift_allocObject();
    *(v154 + 16) = xmmword_25DBC8180;
    (*(v103 + 16))(v154 + v153, v148, v137);
    static CachePolicy.inMemory.getter();
    v155 = [objc_opt_self() processInfo];
    [v155 processIdentifier];

    v156 = v178;
    v157 = v193;
    SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:)();
    v158 = v179;
    (*(v179 + 16))(v177, v156, v186);
    v159 = type metadata accessor for TokenGenerator();
    OUTLINED_FUNCTION_170(v159);
    v157[4] = TokenGenerator.init(configuration:)();
    v160 = v157 + v132;
    v161 = v175;
    v205(v175, v160, v134);
    specialized AnswerSynthesisModelProtocol.logAssetinfo(resourceBundleQuery:)(v161, v162, v163, v164, v165, v166, v167, v168, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
    v200(v196, v188);
    (*(v195 + 8))(v161, v134);
    (*(v158 + 8))(v156, v186);
    (*(v206 + 8))(v185, v191);
    __swift_destroy_boxed_opaque_existential_1Tm(v208);
  }

  OUTLINED_FUNCTION_61_2();
}

void specialized AnswerSynthesisModelProtocol.logAssetinfo(resourceBundleQuery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  a19 = v22;
  a20 = v23;
  v208 = v24;
  v209 = v21;
  v25 = v20;
  v26 = type metadata accessor for AssetVersion();
  v27 = OUTLINED_FUNCTION_1_5(v26, &a11);
  v190 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_4(v32 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
  v34 = OUTLINED_FUNCTION_114(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  v40 = &v186 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
  v42 = OUTLINED_FUNCTION_114(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMModelC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMModelC8MetadataVAA0dC8ContentsVGMR);
  v49 = OUTLINED_FUNCTION_1_5(v48, &a17);
  v214 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  v210 = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_14_2();
  v201 = v55;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA09TokenizerC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA09TokenizerC8MetadataVAA0dC8ContentsVGMR);
  v56 = OUTLINED_FUNCTION_14(v200);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_14_2();
  v203 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_49_3();
  v207 = v67;
  OUTLINED_FUNCTION_78_0();
  v68 = type metadata accessor for AssetBackedLLMBundle();
  v69 = OUTLINED_FUNCTION_14(v68);
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_36();
  v76 = v75 - v74;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  __swift_project_value_buffer(v77, static Logging.answerSynthesis);
  OUTLINED_FUNCTION_37_3();

  v205 = v20;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();
  v80 = OUTLINED_FUNCTION_20_3();
  v82 = os_log_type_enabled(v80, v81);
  v197 = v40;
  v202 = v71;
  v206 = v25;
  if (v82)
  {
    OUTLINED_FUNCTION_28_3();
    v83 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v84 = swift_slowAlloc();
    v196 = v68;
    v85 = v84;
    v213[0] = v84;
    *v83 = 136315138;
    OUTLINED_FUNCTION_10_3();
    _typeName(_:qualified:)();
    v204 = v58;

    OUTLINED_FUNCTION_71_2();
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    v58 = v204;

    *(v83 + 4) = v86;
    v87 = v214;
    _os_log_impl(&dword_25D85C000, v78, v79, "Get asset version info for %s.", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v85);
    v68 = v196;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    v87 = v214;
  }

  v88 = type metadata accessor for CatalogClient();
  OUTLINED_FUNCTION_170(v88);
  v211[0] = CatalogClient.init()();
  v89 = v209;
  v90 = CatalogClientProtocol.queryResourceBundle(with:)();
  v92 = v210;
  if (v89)
  {
LABEL_7:

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_52_2(v90, v91, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  if (!v212)
  {
    outlined destroy of IntentApplication?(v211, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v93 = v207;
    v99 = OUTLINED_FUNCTION_65();
    __swift_storeEnumTagSinglePayload(v99, v100, 1, v68);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
  v93 = v207;
  swift_dynamicCast();
  v94 = OUTLINED_FUNCTION_45_2();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v68);
  v97 = OUTLINED_FUNCTION_65();
  if (__swift_getEnumTagSinglePayload(v97, v98, v68) == 1)
  {
LABEL_13:
    outlined destroy of IntentApplication?(v93, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
    v101 = v206;

    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    v104 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v104, v105))
    {
      OUTLINED_FUNCTION_28_3();
      v106 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v107 = swift_slowAlloc();
      v211[0] = v107;
      *v106 = 136315138;
      isa = v101->isa;
      _typeName(_:qualified:)();

      v109 = OUTLINED_FUNCTION_58_1();

      *(v106 + 4) = v109;
      _os_log_impl(&dword_25D85C000, v102, v103, "Can't get asset version info for %s which has non asset backed LLMBundle.", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();

      outlined destroy of IntentApplication?(v213, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      goto LABEL_8;
    }

    outlined destroy of IntentApplication?(v213, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    goto LABEL_7;
  }

  v204 = v58;
  (*(v202 + 32))(v76, v93, v68);
  AssetBackedLLMBundle.tokenizer.getter();
  OUTLINED_FUNCTION_43_2();
  dispatch thunk of AssetBackedResource.fetchAsset()();
  __swift_destroy_boxed_opaque_existential_1Tm(v211);
  AssetBackedLLMBundle.baseModel.getter();
  OUTLINED_FUNCTION_43_2();
  dispatch thunk of AssetBackedResource.fetchAsset()();
  v209 = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v211);
  AssetBackedLLMBundle.adapter.getter();
  v111 = v200;
  v187 = v76;
  if (v212)
  {
    OUTLINED_FUNCTION_43_2();
    v112 = v199;
    v113 = v209;
    dispatch thunk of AssetBackedResource.fetchAsset()();
    v114 = v197;
    if (v113)
    {

      v115 = OUTLINED_FUNCTION_76_1();
      v116(v115);
      (*(v204 + 8))(v203, v111);
      v117 = OUTLINED_FUNCTION_23_2();
      v110(v117, v68);
LABEL_16:
      outlined destroy of IntentApplication?(v213, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm(v211);
      goto LABEL_8;
    }

    v209 = 0;
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
    __swift_storeEnumTagSinglePayload(v112, 0, 1, v122);
    __swift_destroy_boxed_opaque_existential_1Tm(v211);
    v76 = v187;
  }

  else
  {
    outlined destroy of IntentApplication?(v211, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMd, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
    OUTLINED_FUNCTION_63_1();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
    v114 = v197;
  }

  AssetBackedLLMBundle.draftModel.getter();
  if (v212)
  {
    OUTLINED_FUNCTION_43_2();
    v123 = v209;
    dispatch thunk of AssetBackedResource.fetchAsset()();
    if (v123)
    {

      v124 = OUTLINED_FUNCTION_63_1();
      outlined destroy of IntentApplication?(v124, v125, v126);
      v127 = OUTLINED_FUNCTION_76_1();
      v128(v127);
      (*(v204 + 8))(v203, v111);
      (*(v202 + 8))(v76, v68);
      goto LABEL_16;
    }

    v209 = 0;
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMR);
    __swift_storeEnumTagSinglePayload(v114, 0, 1, v133);
    __swift_destroy_boxed_opaque_existential_1Tm(v211);
  }

  else
  {
    outlined destroy of IntentApplication?(v211, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMd, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v129, v130, v131, v132);
  }

  v134 = v199;
  v196 = v68;
  v135 = v204;
  (*(v204 + 16))(v194, v203, v111);
  (*(v87 + 16))(v92, v201, v198);
  outlined init with copy of ResourceBundle?(v134, v195, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
  v136 = v193;
  outlined init with copy of ResourceBundle?(v114, v193, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
  v137 = v206;

  v138 = Logger.logObject.getter();
  LODWORD(v207) = static os_log_type_t.info.getter();
  v139 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v139, v140))
  {
    v205 = v138;
    v141 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v211[0] = v186;
    *v141 = 136316162;
    v142 = v137->isa;
    v143 = _typeName(_:qualified:)();

    OUTLINED_FUNCTION_33_2();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_67_2();

    v208 = v141;
    *(v141 + 4) = v143;
    *(v141 + 12) = 2080;
    v144 = v191;
    v145 = v194;
    CatalogAsset.version.getter();
    v146 = AssetVersion.number.getter();
    v147 = v111;
    v190 = *(v190 + 8);
    v148 = v192;
    (v190)(v144, v192);
    v149 = *(v204 + 8);
    v204 += 8;
    v206 = v149;
    (v149)(v145, v147);
    OUTLINED_FUNCTION_33_2();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_67_2();

    v150 = v208;
    *(v208 + 14) = v146;
    *(v150 + 22) = 2080;
    v151 = v198;
    v152 = v210;
    CatalogAsset.version.getter();
    v153 = AssetVersion.number.getter();
    v154 = v190;
    (v190)(v144, v148);
    v210 = *(v214 + 8);
    v210(v152, v151);
    OUTLINED_FUNCTION_33_2();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_67_2();

    *(v150 + 24) = v153;
    *(v150 + 32) = 2080;
    v155 = OUTLINED_FUNCTION_50_1(&a14);
    v156 = v189;
    outlined init with copy of ResourceBundle?(v155, v189, v157, v158);
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
    v160 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_92_1(v160, v161);
    if (v162)
    {
      v171 = v154;
      outlined destroy of IntentApplication?(v156, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
    }

    else
    {
      CatalogAsset.version.getter();
      (*(*(v159 - 8) + 8))(v156, v159);
      AssetVersion.number.getter();
      v170 = v144;
      v171 = v154;
      v154(v170, v192);
    }

    v172 = v188;
    outlined destroy of IntentApplication?(v150, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
    v173 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    v174 = v208;
    *(v208 + 34) = v173;
    *(v174 + 42) = 2080;
    v175 = v193;
    outlined init with copy of ResourceBundle?(v193, v172, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMR);
    OUTLINED_FUNCTION_92_1(v172, 1);
    if (v162)
    {
      outlined destroy of IntentApplication?(v172, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
    }

    else
    {
      v177 = v191;
      CatalogAsset.version.getter();
      (*(*(v176 - 8) + 8))(v172, v176);
      AssetVersion.number.getter();
      v171(v177, v192);
    }

    outlined destroy of IntentApplication?(v175, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
    v178 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    v179 = v208;
    *(v208 + 44) = v178;
    v180 = v205;
    _os_log_impl(&dword_25D85C000, v205, v207, "%s:\nTokenizer Version: %s\nBase Model Version: %s\nAdapter Model Version: %s\nDraft Model Version: %s", v179, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    outlined destroy of IntentApplication?(v197, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
    v181 = OUTLINED_FUNCTION_63_1();
    outlined destroy of IntentApplication?(v181, v182, v183);
    v210(v201, v198);
    (v206)(v203, v200);
    v184 = OUTLINED_FUNCTION_23_2();
    v185(v184, v196);
    outlined destroy of IntentApplication?(v213, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  else
  {

    outlined destroy of IntentApplication?(v136, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
    outlined destroy of IntentApplication?(v195, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
    v163 = v111;
    v164 = *(v214 + 8);
    v165 = v198;
    v164(v92, v198);
    v166 = *(v135 + 8);
    v166(v194, v163);
    outlined destroy of IntentApplication?(v114, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
    v167 = OUTLINED_FUNCTION_63_1();
    outlined destroy of IntentApplication?(v167, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
    v164(v201, v165);
    v166(v203, v163);
    v168 = OUTLINED_FUNCTION_23_2();
    v169(v168, v196);
    outlined destroy of IntentApplication?(v213, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

LABEL_8:
  OUTLINED_FUNCTION_61_2();
}

uint64_t AnswerSynthesisModelOnDevice.prewarm(urgency:)()
{
  v1 = v0;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logging.answerSynthesis);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25D85C000, v3, v4, "Prewarming AnswerSynthesisModelOnDevice model...", v7, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v8 = *(v1 + 32);

  TokenGenerator.prewarm(urgency:)();
}

Swift::String __swiftcall AnswerSynthesisModelOnDevice.promptTemplateID()()
{
  v0 = 0x800000025DBEFB20;
  v1 = 0xD00000000000003ELL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

void AnswerSynthesisModelOnDevice.createPromptTemplate()()
{
  v2 = type metadata accessor for ResourceBundleQuery();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_74_2();
  v8 = OBJC_IVAR____TtC10OmniSearch28AnswerSynthesisModelOnDevice_resourceBundleQuery;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  (*(v5 + 16))(v1, v0 + v8, v2);
  lazy protocol witness table accessor for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError();
  v9 = swift_allocError();
  *v10 = 2;
  specialized AnswerSynthesisModelProtocol.createPromptTemplate(with:creationError:)(v1, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  (*(v5 + 8))(v1, v2);
}

void specialized AnswerSynthesisModelProtocol.createPromptTemplate(with:creationError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_39_3(v26, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  OUTLINED_FUNCTION_1_5(v28, &v149);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_49_3();
  v142 = v36;
  OUTLINED_FUNCTION_78_0();
  v144 = type metadata accessor for AssetBackedLLMBundle();
  v37 = OUTLINED_FUNCTION_14(v144);
  v140 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  OUTLINED_FUNCTION_1_5(v43, &a10);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_74_2();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v50);
  v51 = OUTLINED_FUNCTION_79_1();
  v52 = OUTLINED_FUNCTION_14(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_14_2();
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  __swift_project_value_buffer(v56, static Logging.answerSynthesis);
  OUTLINED_FUNCTION_37_3();

  v57 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v58 = OUTLINED_FUNCTION_20_3();
  os_log_type_enabled(v58, v59);
  OUTLINED_FUNCTION_48_2();
  if (v60)
  {
    OUTLINED_FUNCTION_28_3();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v61 = swift_slowAlloc();
    v148[0] = v61;
    *v22 = 136315138;
    OUTLINED_FUNCTION_10_3();
    _typeName(_:qualified:)();
    OUTLINED_FUNCTION_38_3();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_46_3();
    *(v22 + 4) = v51;
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v62, v63, v64, v65, v66, v67);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v68 = type metadata accessor for CatalogClient();
  OUTLINED_FUNCTION_170(v68);
  v146[0] = CatalogClient.init()();
  v69 = OUTLINED_FUNCTION_54_2();
  if (v20)
  {

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_52_2(v69, v70, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  v73 = OUTLINED_FUNCTION_20_3();
  os_log_type_enabled(v73, v74);
  OUTLINED_FUNCTION_65_2();
  if (v75)
  {
    v76 = OUTLINED_FUNCTION_90_1();
    a10 = swift_slowAlloc();
    *v76 = 136315394;
    OUTLINED_FUNCTION_10_3();
    _typeName(_:qualified:)();

    OUTLINED_FUNCTION_72_2();
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v76 + 4) = v77;
    *(v76 + 12) = 2080;
    OUTLINED_FUNCTION_83_2();
    v78 = OUTLINED_FUNCTION_72_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v78, v79);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_56_1();
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    v22 = MEMORY[0x277D84F70];

    *(v76 + 14) = v80;
    OUTLINED_FUNCTION_81_2(&dword_25D85C000, v81, v82, "%s resolved resource bundle: %s");
    OUTLINED_FUNCTION_55_1();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    outlined destroy of IntentApplication?(v146, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  OUTLINED_FUNCTION_52_2(v83, v84, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  v85 = v144;
  if (v147)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
    v86 = OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_51_2(v86);
    if (!v87)
    {
      v88 = OUTLINED_FUNCTION_27_1();
      v89(v88);
      v90 = OUTLINED_FUNCTION_35_4();
      v91(v90);

      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v92, v93))
      {
        OUTLINED_FUNCTION_9_4();
        v94 = swift_slowAlloc();
        v95 = OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_78_1(v95);
        *v94 = 136315650;
        OUTLINED_FUNCTION_10_3();
        _typeName(_:qualified:)();
        OUTLINED_FUNCTION_80_2();
        OUTLINED_FUNCTION_94();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_95_1();
        OUTLINED_FUNCTION_36_3();
        lazy protocol witness table accessor for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>(&lazy protocol witness table cache variable for type ResourceBundleIdentifier<LLMBundle> and conformance ResourceBundleIdentifier<A>, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
        OUTLINED_FUNCTION_50_1(&a10);
        dispatch thunk of CustomStringConvertible.description.getter();
        v96 = OUTLINED_FUNCTION_34_2();
        v97(v96);
        OUTLINED_FUNCTION_16_3();
        (v22)(v21);
        OUTLINED_FUNCTION_94();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_95_1();
        *(v94 + 14) = v93;
        *(v94 + 22) = 2080;
        OUTLINED_FUNCTION_21_3();
        *(v94 + 24) = OUTLINED_FUNCTION_94_0();
        OUTLINED_FUNCTION_53_2(&dword_25D85C000, v98, v99, "%s resolved llmBundle.id: %s. Prompt templateID: %s");
        OUTLINED_FUNCTION_87_2();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        OUTLINED_FUNCTION_16_3();
        v137 = OUTLINED_FUNCTION_71_2();
        (v22)(v137);

        OUTLINED_FUNCTION_29_3();
      }

      OUTLINED_FUNCTION_42_4();
      LLMBundle.id.getter();
      OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_22_3();
      PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();
      OUTLINED_FUNCTION_89_2();
      v138 = OUTLINED_FUNCTION_70_2();
      (v22)(v138);
LABEL_29:
      outlined destroy of IntentApplication?(v148, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      goto LABEL_30;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v146, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v145);
  }

  v103 = outlined destroy of IntentApplication?(v23, &_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  OUTLINED_FUNCTION_52_2(v103, v104, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  if (v147)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
    OUTLINED_FUNCTION_47_4();
    v105 = OUTLINED_FUNCTION_45_2();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v144);
    v108 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_92_1(v108, v109);
    if (!v87)
    {
      v110 = *(v140 + 32);
      v111 = OUTLINED_FUNCTION_94();
      v112(v111);
      v113 = OUTLINED_FUNCTION_30_2();
      v114(v113);

      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_91_0(v116))
      {
        OUTLINED_FUNCTION_9_4();
        v117 = swift_slowAlloc();
        v118 = OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_78_1(v118);
        *v117 = 136315650;
        OUTLINED_FUNCTION_10_3();
        _typeName(_:qualified:)();
        v72 = v119;

        OUTLINED_FUNCTION_33_2();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        OUTLINED_FUNCTION_40_4();
        lazy protocol witness table accessor for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>(&lazy protocol witness table cache variable for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
        OUTLINED_FUNCTION_50_1(&v149);
        dispatch thunk of CustomStringConvertible.description.getter();
        v120 = OUTLINED_FUNCTION_31_4();
        v121(v120);
        v122 = OUTLINED_FUNCTION_7_3();
        v72(v122, v144);
        OUTLINED_FUNCTION_33_2();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_37_3();

        *(v117 + 14) = v143;
        *(v117 + 22) = 2080;
        OUTLINED_FUNCTION_21_3();
        *(v117 + 24) = OUTLINED_FUNCTION_94_0();
        OUTLINED_FUNCTION_82_2(&dword_25D85C000, v123, v124, "%s resolved assetBackedLLMBundle.id: %s. Prompt templateID: %s");
        OUTLINED_FUNCTION_86_2();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v85 = v144;
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        v139 = OUTLINED_FUNCTION_7_3();
        v72(v139, v144);

        OUTLINED_FUNCTION_29_3();
      }

      OUTLINED_FUNCTION_64_2();
      AssetBackedLLMBundle.id.getter();
      OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_22_3();
      PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();

      v72(v141, v85);
      OUTLINED_FUNCTION_42_4();
      goto LABEL_29;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v146, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v71 = v142;
    v125 = OUTLINED_FUNCTION_65();
    __swift_storeEnumTagSinglePayload(v125, v126, 1, v144);
  }

  outlined destroy of IntentApplication?(v71, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);

  v127 = v143;
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v128, v129))
  {
    v130 = OUTLINED_FUNCTION_90_1();
    v131 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v132 = swift_slowAlloc();
    v146[0] = v132;
    *v130 = 136315394;
    OUTLINED_FUNCTION_10_3();
    _typeName(_:qualified:)();

    OUTLINED_FUNCTION_58_1();

    OUTLINED_FUNCTION_85_2();
    v133 = _swift_stdlib_bridgeErrorToNSError();
    *(v130 + 14) = v133;
    *v131 = v133;
    OUTLINED_FUNCTION_84_1(&dword_25D85C000, v134, v135, "No other ResourceBundle types exist for %s, will throw %@");
    outlined destroy of IntentApplication?(v131, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    __swift_destroy_boxed_opaque_existential_1Tm(v132);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  swift_willThrow();
  OUTLINED_FUNCTION_89_2();
  outlined destroy of IntentApplication?(v148, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  v136 = v143;
LABEL_30:
  OUTLINED_FUNCTION_61_2();
}

{
  OUTLINED_FUNCTION_60_1();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_39_3(v26, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  OUTLINED_FUNCTION_1_5(v28, &v149);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_49_3();
  v142 = v36;
  OUTLINED_FUNCTION_78_0();
  v144 = type metadata accessor for AssetBackedLLMBundle();
  v37 = OUTLINED_FUNCTION_14(v144);
  v140 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  OUTLINED_FUNCTION_1_5(v43, &a10);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_74_2();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v50);
  v51 = OUTLINED_FUNCTION_79_1();
  v52 = OUTLINED_FUNCTION_14(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_14_2();
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  __swift_project_value_buffer(v56, static Logging.answerSynthesis);
  OUTLINED_FUNCTION_37_3();

  v57 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v58 = OUTLINED_FUNCTION_20_3();
  os_log_type_enabled(v58, v59);
  OUTLINED_FUNCTION_48_2();
  if (v60)
  {
    OUTLINED_FUNCTION_28_3();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v61 = swift_slowAlloc();
    v148[0] = v61;
    *v22 = 136315138;
    OUTLINED_FUNCTION_10_3();
    _typeName(_:qualified:)();
    OUTLINED_FUNCTION_38_3();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_46_3();
    *(v22 + 4) = v51;
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v62, v63, v64, v65, v66, v67);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v68 = type metadata accessor for CatalogClient();
  OUTLINED_FUNCTION_170(v68);
  v146[0] = CatalogClient.init()();
  v69 = OUTLINED_FUNCTION_54_2();
  if (v20)
  {

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_52_2(v69, v70, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  v73 = OUTLINED_FUNCTION_20_3();
  os_log_type_enabled(v73, v74);
  OUTLINED_FUNCTION_65_2();
  if (v75)
  {
    v76 = OUTLINED_FUNCTION_90_1();
    a10 = swift_slowAlloc();
    *v76 = 136315394;
    OUTLINED_FUNCTION_10_3();
    _typeName(_:qualified:)();

    OUTLINED_FUNCTION_72_2();
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v76 + 4) = v77;
    *(v76 + 12) = 2080;
    OUTLINED_FUNCTION_83_2();
    v78 = OUTLINED_FUNCTION_72_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v78, v79);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_56_1();
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    v22 = MEMORY[0x277D84F70];

    *(v76 + 14) = v80;
    OUTLINED_FUNCTION_81_2(&dword_25D85C000, v81, v82, "%s resolved resource bundle: %s");
    OUTLINED_FUNCTION_55_1();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    outlined destroy of IntentApplication?(v146, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  OUTLINED_FUNCTION_52_2(v83, v84, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  v85 = v144;
  if (v147)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
    v86 = OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_51_2(v86);
    if (!v87)
    {
      v88 = OUTLINED_FUNCTION_27_1();
      v89(v88);
      v90 = OUTLINED_FUNCTION_35_4();
      v91(v90);

      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v92, v93))
      {
        OUTLINED_FUNCTION_9_4();
        v94 = swift_slowAlloc();
        v95 = OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_78_1(v95);
        *v94 = 136315650;
        OUTLINED_FUNCTION_10_3();
        _typeName(_:qualified:)();
        OUTLINED_FUNCTION_80_2();
        OUTLINED_FUNCTION_94();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_95_1();
        OUTLINED_FUNCTION_36_3();
        lazy protocol witness table accessor for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>(&lazy protocol witness table cache variable for type ResourceBundleIdentifier<LLMBundle> and conformance ResourceBundleIdentifier<A>, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
        OUTLINED_FUNCTION_50_1(&a10);
        dispatch thunk of CustomStringConvertible.description.getter();
        v96 = OUTLINED_FUNCTION_34_2();
        v97(v96);
        OUTLINED_FUNCTION_16_3();
        (v22)(v21);
        OUTLINED_FUNCTION_94();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_95_1();
        *(v94 + 14) = v93;
        *(v94 + 22) = 2080;
        OUTLINED_FUNCTION_21_3();
        *(v94 + 24) = OUTLINED_FUNCTION_94_0();
        OUTLINED_FUNCTION_53_2(&dword_25D85C000, v98, v99, "%s resolved llmBundle.id: %s. Prompt templateID: %s");
        OUTLINED_FUNCTION_87_2();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        OUTLINED_FUNCTION_16_3();
        v137 = OUTLINED_FUNCTION_71_2();
        (v22)(v137);

        OUTLINED_FUNCTION_29_3();
      }

      OUTLINED_FUNCTION_42_4();
      LLMBundle.id.getter();
      OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_22_3();
      PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();
      OUTLINED_FUNCTION_89_2();
      v138 = OUTLINED_FUNCTION_70_2();
      (v22)(v138);
LABEL_29:
      outlined destroy of IntentApplication?(v148, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      goto LABEL_30;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v146, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v145);
  }

  v103 = outlined destroy of IntentApplication?(v23, &_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  OUTLINED_FUNCTION_52_2(v103, v104, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  if (v147)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
    OUTLINED_FUNCTION_47_4();
    v105 = OUTLINED_FUNCTION_45_2();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v144);
    v108 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_92_1(v108, v109);
    if (!v87)
    {
      v110 = *(v140 + 32);
      v111 = OUTLINED_FUNCTION_94();
      v112(v111);
      v113 = OUTLINED_FUNCTION_30_2();
      v114(v113);

      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_91_0(v116))
      {
        OUTLINED_FUNCTION_9_4();
        v117 = swift_slowAlloc();
        v118 = OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_78_1(v118);
        *v117 = 136315650;
        OUTLINED_FUNCTION_10_3();
        _typeName(_:qualified:)();
        v72 = v119;

        OUTLINED_FUNCTION_33_2();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        OUTLINED_FUNCTION_40_4();
        lazy protocol witness table accessor for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>(&lazy protocol witness table cache variable for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
        OUTLINED_FUNCTION_50_1(&v149);
        dispatch thunk of CustomStringConvertible.description.getter();
        v120 = OUTLINED_FUNCTION_31_4();
        v121(v120);
        v122 = OUTLINED_FUNCTION_7_3();
        v72(v122, v144);
        OUTLINED_FUNCTION_33_2();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_37_3();

        *(v117 + 14) = v143;
        *(v117 + 22) = 2080;
        OUTLINED_FUNCTION_21_3();
        *(v117 + 24) = OUTLINED_FUNCTION_94_0();
        OUTLINED_FUNCTION_82_2(&dword_25D85C000, v123, v124, "%s resolved assetBackedLLMBundle.id: %s. Prompt templateID: %s");
        OUTLINED_FUNCTION_86_2();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v85 = v144;
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        v139 = OUTLINED_FUNCTION_7_3();
        v72(v139, v144);

        OUTLINED_FUNCTION_29_3();
      }

      OUTLINED_FUNCTION_64_2();
      AssetBackedLLMBundle.id.getter();
      OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_22_3();
      PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();

      v72(v141, v85);
      OUTLINED_FUNCTION_42_4();
      goto LABEL_29;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v146, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v71 = v142;
    v125 = OUTLINED_FUNCTION_65();
    __swift_storeEnumTagSinglePayload(v125, v126, 1, v144);
  }

  outlined destroy of IntentApplication?(v71, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);

  v127 = v143;
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v128, v129))
  {
    v130 = OUTLINED_FUNCTION_90_1();
    v131 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v132 = swift_slowAlloc();
    v146[0] = v132;
    *v130 = 136315394;
    OUTLINED_FUNCTION_10_3();
    _typeName(_:qualified:)();

    OUTLINED_FUNCTION_58_1();

    OUTLINED_FUNCTION_85_2();
    v133 = _swift_stdlib_bridgeErrorToNSError();
    *(v130 + 14) = v133;
    *v131 = v133;
    OUTLINED_FUNCTION_84_1(&dword_25D85C000, v134, v135, "No other ResourceBundle types exist for %s, will throw %@");
    outlined destroy of IntentApplication?(v131, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    __swift_destroy_boxed_opaque_existential_1Tm(v132);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  swift_willThrow();
  OUTLINED_FUNCTION_89_2();
  outlined destroy of IntentApplication?(v148, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  v136 = v143;
LABEL_30:
  OUTLINED_FUNCTION_61_2();
}

uint64_t AnswerSynthesisModelOnDevice.execute(request:userPrompt:)()
{
  OUTLINED_FUNCTION_48();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = type metadata accessor for PromptTemplate();
  v1[14] = v4;
  v5 = *(v4 - 8);
  v1[15] = v5;
  v6 = *(v5 + 64) + 15;
  v1[16] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logging.answerSynthesis);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[10];
    v5 = v0[11];
    OUTLINED_FUNCTION_28_3();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v27 = swift_slowAlloc();
    *v7 = 136642819;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v8, v9, v10, v11, v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050](v14);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050](v15);
  }

  v16 = v0[16];
  v17 = v0[12];
  AnswerSynthesisModelOnDevice.createPromptTemplate()();
  v18 = v0[13];
  v20 = v0[10];
  v19 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  *(inited + 32) = 0x6D6F725072657375;
  *(inited + 40) = 0xEA00000000007470;
  *(inited + 48) = v20;
  *(inited + 56) = v19;

  v22 = Dictionary.init(dictionaryLiteral:)();
  v0[17] = v22;
  v23 = swift_task_alloc();
  v0[18] = v23;
  *v23 = v0;
  v23[1] = AnswerSynthesisModelOnDevice.execute(request:userPrompt:);
  v24 = v0[16];
  v25 = v0[12];

  return closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:)(v24, v22, v25, v18);
}

{
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v6 = v4[18];
  *v5 = *v2;
  v4[19] = v1;

  v7 = v4[17];

  if (!v1)
  {
    v4[20] = v0;
    v4[21] = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_48();
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];
  v3 = v0[20];
  v2 = v0[21];

  return v1(v2, v3);
}

{
  OUTLINED_FUNCTION_48();
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[16];

  OUTLINED_FUNCTION_127();

  return v3();
}

uint64_t AnswerSynthesisModelOnDevice.synthesize(_:bindings:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = AnswerSynthesisModelOnDevice.synthesize(_:bindings:);

  return closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:)(a1, a2, v2, v6);
}

{
  v6 = *(*v3 + 16);
  v7 = *v3;
  OUTLINED_FUNCTION_11();
  *v8 = v7;

  v11 = *(v7 + 8);
  if (!v2)
  {
    v9 = a1;
    v10 = a2;
  }

  return v11(v9, v10);
}

void AnswerSynthesisModelOnDevice.synthesize_generateGenerativeFunctionOverride()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for BindableConfiguration();
  v24 = OUTLINED_FUNCTION_14(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_74_2();
  v29 = type metadata accessor for CompletionPrompt();
  v30 = OUTLINED_FUNCTION_14(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  CompletionPrompt.init(_:)();
  BindableConfiguration.init(name:)();
  OUTLINED_FUNCTION_11_2();
  lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(v38, v39);
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  (*(v26 + 8))(v20, v23);
  v40 = *(v32 + 8);
  v41 = OUTLINED_FUNCTION_107();
  v40(v41);
  static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  (v40)(v37, v29);
  OUTLINED_FUNCTION_61_2();
}

uint64_t closure #1 in AnswerSynthesisModelOnDevice.synthesize_generateGenerativeFunctionOverride()()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = type metadata accessor for BindableVariable();
  v12[4] = MEMORY[0x277D42E60];
  __swift_allocate_boxed_opaque_existential_1Tm(v12);
  BindableVariable.init(name:)();
  v6 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v7 = *(v1 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25DBC8180;
  (*(v2 + 16))(v9 + v8, v5, v0);
  MEMORY[0x25F89F150](v9, v0, v6);

  return (*(v2 + 8))(v5, v0);
}

uint64_t closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[27] = a1;
  v4[28] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMR);
  v4[31] = v5;
  v6 = *(v5 - 8);
  v4[32] = v6;
  v7 = *(v6 + 64) + 15;
  v4[33] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMR);
  v4[35] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v11 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v4[37] = v11;
  v12 = *(v11 - 8);
  v4[38] = v12;
  v13 = *(v12 + 64) + 15;
  v4[39] = swift_task_alloc();
  v14 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt();
  v4[40] = v14;
  v15 = *(v14 - 8);
  v4[41] = v15;
  v16 = *(v15 + 64) + 15;
  v4[42] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v18 = type metadata accessor for FunctionIdentifier();
  v4[44] = v18;
  v19 = *(v18 - 8);
  v4[45] = v19;
  v20 = *(v19 + 64) + 15;
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v4[48] = v21;
  v22 = *(v21 - 8);
  v4[49] = v22;
  v23 = *(v22 + 64) + 15;
  v4[50] = swift_task_alloc();
  v24 = type metadata accessor for CompletionPrompt();
  v4[51] = v24;
  v25 = *(v24 - 8);
  v4[52] = v25;
  v26 = *(v25 + 64) + 15;
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:), 0, 0);
}

uint64_t closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:)()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v25 = *(v0 + 440);
  v26 = *(v0 + 344);
  v7 = *(v0 + 240);
  v27 = *(v0 + 376);
  v8 = *(v0 + 216);
  v23 = *(v0 + 432);
  v24 = *(v0 + 224);
  *(swift_task_alloc() + 16) = v8;
  CompletionPrompt.init(_:)();

  static AnswerSynthesisModelProtocol.defaultSamplingParameters.getter();
  *(v0 + 552) = *MEMORY[0x277D0E548];
  v9 = *(v5 + 104);
  *(v0 + 448) = v9;
  *(v0 + 456) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v3);
  OUTLINED_FUNCTION_11_2();
  *(v0 + 464) = lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(v10, v11);
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v12 = *(v5 + 8);
  *(v0 + 472) = v12;
  *(v0 + 480) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v3, v6);
  v13 = *(v1 + 8);
  *(v0 + 488) = v13;
  *(v0 + 496) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14 = OUTLINED_FUNCTION_71_2();
  v13(v14);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);
  GenerativeConfigurationProtocol.bindVariables(_:)();

  (v13)(v23, v4);
  type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v19 = *(MEMORY[0x277D0E538] + 4);
  v20 = swift_task_alloc();
  *(v0 + 504) = v20;
  *v20 = v0;
  v20[1] = closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:);
  v21 = *(v0 + 272);

  return MEMORY[0x282166B58](v21, 0xD00000000000001CLL, 0x800000025DBEFBC0);
}

{
  OUTLINED_FUNCTION_48();
  v2 = *(*v1 + 504);
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v5 + 512) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v1 = *(v0 + 272);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatMR);
  v3 = OUTLINED_FUNCTION_65();
  if (__swift_getEnumTagSinglePayload(v3, v4, v2) == 1)
  {
    outlined destroy of IntentApplication?(v1, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR);
  }

  else
  {
    v53 = *(v0 + 488);
    v54 = *(v0 + 496);
    v46 = *(v0 + 472);
    v47 = *(v0 + 480);
    v44 = *(v0 + 448);
    v45 = *(v0 + 456);
    v43 = *(v0 + 552);
    v50 = *(v0 + 440);
    v48 = *(v0 + 432);
    v51 = *(v0 + 408);
    v52 = *(v0 + 416);
    v41 = *(v0 + 400);
    v42 = *(v0 + 384);
    v35 = *(v0 + 368);
    v36 = *(v0 + 360);
    v37 = *(v0 + 352);
    v38 = *(v0 + 376);
    v55 = *(v0 + 336);
    v49 = *(v0 + 328);
    v5 = *(v0 + 320);
    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    v8 = *(v0 + 280);
    v9 = *(v0 + 288);
    v39 = *(v0 + 216);
    v40 = *(v0 + 240);
    v33 = *(v2 + 48);
    v34 = *(v0 + 312);
    v32 = *(v8 + 48);
    v10 = *(v49 + 32);
    v10(v9, v1, v5);
    v11 = *(v6 + 32);
    v11(v9 + v32, v1 + v33, v7);
    v12 = *(v8 + 48);
    v10(v55, v9, v5);
    v11(v34, v9 + v12, v7);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v36 + 8))(v38, v37);
    (*(v36 + 32))(v38, v35, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMd, &_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBC8180;
    strcpy((inited + 32), "promptTemplate");
    *(inited + 47) = -18;
    v14 = type metadata accessor for PromptTemplate();
    *(inited + 72) = v14;
    *(inited + 80) = lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x277D0E698]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1Tm, v39, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A25ComponentValueConvertible_pMd, &_s9PromptKit0A25ComponentValueConvertible_pMR);
    OUTLINED_FUNCTION_107();
    Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_25DBC8180;
    *(v16 + 32) = 0xD000000000000059;
    *(v16 + 40) = 0x800000025DBEFB60;
    static AnswerSynthesisModelProtocol.defaultSamplingParameters.getter();
    v44(v41, v43, v42);
    *(v16 + 72) = type metadata accessor for SamplingParameters();
    __swift_allocate_boxed_opaque_existential_1Tm((v16 + 48));
    static _OverrideConfigurationHelper.samplingParameters(_:)();
    v46(v41, v42);
    Dictionary.init(dictionaryLiteral:)();
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingVariables:bindingConfigurations:)();

    (*(v6 + 8))(v34, v7);
    (*(v49 + 8))(v55, v5);
    v53(v50, v51);
    (*(v52 + 32))(v50, v48, v51);
  }

  v18 = *(v0 + 488);
  v17 = *(v0 + 496);
  v19 = *(v0 + 464);
  v21 = *(v0 + 432);
  v20 = *(v0 + 440);
  v22 = *(v0 + 408);
  v23 = *(v0 + 376);
  v24 = *(v0 + 264);
  v25 = *(v0 + 232);
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v0 + 208) = *(v25 + 32);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:)();
  v18(v21, v22);
  v26 = *(MEMORY[0x277D0D8C8] + 4);
  v27 = swift_task_alloc();
  *(v0 + 520) = v27;
  v28 = lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(&lazy protocol witness table cache variable for type TokenGenerator and conformance TokenGenerator, MEMORY[0x277D71A98]);
  *v27 = v0;
  v27[1] = closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:);
  v29 = *(v0 + 264);
  v30 = *(v0 + 248);

  return MEMORY[0x282165A58](v30, v28);
}

{
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v6 = v4[65];
  *v5 = *v2;
  v4[66] = v1;

  v7 = v4[33];
  v8 = v4[32];
  v9 = v4[31];
  if (!v1)
  {
    v4[67] = v0;
    v4[68] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[53];
  v7 = v0[50];
  v6 = v0[51];
  v8 = v0[46];
  v13 = v0[43];
  v14 = v0[42];
  v15 = v0[39];
  v16 = v0[36];
  v17 = v0[34];
  v18 = v0[33];
  (*(v0[45] + 8))(v0[47], v0[44]);
  v1(v4, v6);

  v9 = v0[1];
  v10 = v0[68];
  v11 = v0[67];

  return v9(v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_41_2();
  v3(v2);
  v4 = OUTLINED_FUNCTION_107();
  v1(v4);
  v5 = *(v0 + 512);
  OUTLINED_FUNCTION_24_3();

  OUTLINED_FUNCTION_127();

  return v6();
}

{
  v2 = OUTLINED_FUNCTION_41_2();
  v3(v2);
  v4 = OUTLINED_FUNCTION_107();
  v1(v4);
  v5 = *(v0 + 528);
  OUTLINED_FUNCTION_24_3();

  OUTLINED_FUNCTION_127();

  return v6();
}

uint64_t closure #1 in closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:)(uint64_t a1)
{
  v2 = type metadata accessor for Prompt();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PromptTemplate();
  v16[3] = v8;
  v16[4] = lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x277D0E698]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v16);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1Tm, a1, v8);
  v10 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v11 = *(v3 + 72);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25DBC8180;
  (*(v4 + 16))(v13 + v12, v7, v2);
  MEMORY[0x25F89F150](v13, v2, v10);

  return (*(v4 + 8))(v7, v2);
}

uint64_t AnswerSynthesisModelOnDevice.modelVersion.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t AnswerSynthesisModelOnDevice.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC10OmniSearch28AnswerSynthesisModelOnDevice_resourceBundleQuery;
  v4 = type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17(v4);
  (*(v5 + 8))(v0 + v3);
  return v0;
}

uint64_t AnswerSynthesisModelOnDevice.__deallocating_deinit()
{
  AnswerSynthesisModelOnDevice.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AnswerSynthesisModelProtocol.execute(request:userPrompt:) in conformance AnswerSynthesisModelOnDevice()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnswerSynthesisModelProtocol.execute(request:userPrompt:) in conformance AnswerSynthesisModelOnDevice;

  return AnswerSynthesisModelOnDevice.execute(request:userPrompt:)();
}

uint64_t type metadata accessor for AnswerSynthesisModelOnDevice()
{
  result = type metadata singleton initialization cache for AnswerSynthesisModelOnDevice;
  if (!type metadata singleton initialization cache for AnswerSynthesisModelOnDevice)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AnswerSynthesisModelOnDevice()
{
  result = type metadata accessor for ResourceBundleQuery();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ResourceBundle?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_1_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_3()
{
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[53];
  v5 = v0[50];
  v7 = v0[46];
  v6 = v0[47];
  v9 = v0[42];
  v8 = v0[43];
  v10 = v0[39];
  v11 = v0[36];
  v13 = v0[34];
  v14 = v0[33];
}

uint64_t OUTLINED_FUNCTION_36_3()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
  v4 = *(v2 - 280);

  return LLMBundle.id.getter();
}

uint64_t OUTLINED_FUNCTION_38_3()
{
  *(v1 - 360) = v0;
}

uint64_t OUTLINED_FUNCTION_40_4()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
  v4 = *(v2 - 304);

  return AssetBackedLLMBundle.id.getter();
}

uint64_t OUTLINED_FUNCTION_41_2()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[55];
  v4 = v0[51];
  result = v0[47];
  v6 = v0[44];
  v7 = *(v0[45] + 8);
  return result;
}

void *OUTLINED_FUNCTION_43_2()
{
  result = __swift_project_boxed_opaque_existential_1((v2 - 168), v1);
  v4 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_46_3()
{
  v2 = *(v0 - 360);
}

uint64_t OUTLINED_FUNCTION_47_4()
{
  v2 = *(v0 - 248);

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_48_2()
{
  *(v3 - 224) = v2;
  *(v3 - 304) = v0;
  *(v3 - 280) = v1;
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of ResourceBundle?(v4 - 128, v4 - 168, a3, a4);
}

void OUTLINED_FUNCTION_53_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 232);
  v9 = *(v6 - 232);

  _os_log_impl(a1, v4, v9, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_54_2()
{

  return CatalogClientProtocol.queryResourceBundle(with:)();
}

uint64_t OUTLINED_FUNCTION_55_1()
{
  v2 = *(v0 - 376);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return outlined destroy of IntentApplication?(v2 - 168, v0, v1);
}

uint64_t OUTLINED_FUNCTION_57_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_58_1()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_59_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_68_2()
{
  result = v1;
  *(v2 - 232) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_76_1()
{
  v2 = *(v0 + 8);
  result = *(v1 - 248);
  v4 = *(v1 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_78_1(uint64_t result)
{
  *(v1 - 216) = result;
  *(v1 - 168) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_1()
{

  return type metadata accessor for LLMBundle();
}

uint64_t OUTLINED_FUNCTION_80_2()
{
  *(v1 - 232) = v0;
}

void OUTLINED_FUNCTION_81_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_82_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return outlined init with copy of ResourceBundle?(v2 - 168, v2 - 208, v0, v1);
}

void OUTLINED_FUNCTION_84_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_85_2()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;

  return v2;
}

uint64_t OUTLINED_FUNCTION_86_2()
{
  v2 = *(v0 - 216);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_87_2()
{
  v2 = *(v0 - 216);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_88_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_89_2()
{
  v2 = *(v0 - 360);
}

uint64_t OUTLINED_FUNCTION_90_1()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_91_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_94_0()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_95_1()
{
}

uint64_t AnswerSynthesisModelProtocol.logAssetinfo(resourceBundleQuery:)(uint64_t a1, uint64_t a2)
{
  v205 = a1;
  v3 = v2;
  v179 = type metadata accessor for AssetVersion();
  v5 = OUTLINED_FUNCTION_14(v179);
  v182 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
  v18 = OUTLINED_FUNCTION_114(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v23);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMModelC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMModelC8MetadataVAA0dC8ContentsVGMR);
  v24 = OUTLINED_FUNCTION_14(v187);
  v188 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA09TokenizerC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA09TokenizerC8MetadataVAA0dC8ContentsVGMR);
  v31 = OUTLINED_FUNCTION_14(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_39_0();
  v211 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  v203 = (&v174 - v43);
  v204 = type metadata accessor for AssetBackedLLMBundle();
  v44 = OUTLINED_FUNCTION_14(v204);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v49);
  v50 = *(a2 - 8);
  v51 = v50[8];
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_39_0();
  v196 = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v55);
  v57 = (&v174 - v56);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v58 = type metadata accessor for Logger();
  v59 = __swift_project_value_buffer(v58, static Logging.answerSynthesis);
  v60 = v50[2];
  v201 = v3;
  v198 = v60;
  v199 = (v50 + 2);
  v60(v57, v3, a2);
  v200 = v59;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();
  v63 = OUTLINED_FUNCTION_88_0(v62);
  v202 = v50;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v195 = v33;
    v194 = v30;
    v65 = v64;
    v176 = OUTLINED_FUNCTION_49_0();
    v210 = v176;
    *v65 = 136315138;
    swift_getDynamicType();
    _typeName(_:qualified:)();
    v191 = v46;
    v66 = a2;
    v197 = v50[1];
    v197(v57, a2);
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    v68 = v66;

    *(v65 + 4) = v67;
    v69 = v191;
    _os_log_impl(&dword_25D85C000, v61, v62, "Get asset version info for %s.", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v176);
    OUTLINED_FUNCTION_42_0();
    v70 = v194;
    v33 = v195;
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    v71 = v57;
    v68 = a2;
    v197 = v50[1];
    v197(v71, a2);
    v70 = v30;
    v69 = v46;
  }

  v72 = type metadata accessor for CatalogClient();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  v75 = CatalogClient.init()();
  v207 = v75;
  v76 = v206;
  v77 = CatalogClientProtocol.queryResourceBundle(with:)();
  v79 = v211;
  if (v76)
  {
  }

  OUTLINED_FUNCTION_36_4(v77, v78, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  if (v208)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
    v82 = v203;
    v81 = v204;
    v83 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v82, v83 ^ 1u, 1, v81);
    if (__swift_getEnumTagSinglePayload(v82, 1, v81) != 1)
    {
      v206 = v75;
      v194 = v70;
      v195 = v33;
      v175 = v68;
      v84 = v192;
      (*(v69 + 32))(v192, v82, v81);
      AssetBackedLLMBundle.tokenizer.getter();
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_14_3();
      v191 = v69;
      __swift_destroy_boxed_opaque_existential_1Tm(&v207);
      AssetBackedLLMBundle.baseModel.getter();
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_14_3();
      __swift_destroy_boxed_opaque_existential_1Tm(&v207);
      AssetBackedLLMBundle.adapter.getter();
      if (v208)
      {
        OUTLINED_FUNCTION_43_2();
        v97 = v189;
        OUTLINED_FUNCTION_14_3();
        v98 = v186;
        OUTLINED_FUNCTION_29_4();
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
        __swift_storeEnumTagSinglePayload(v97, 0, 1, v103);
        __swift_destroy_boxed_opaque_existential_1Tm(&v207);
        v104 = v192;
      }

      else
      {
        outlined destroy of ResourceBundle?(&v207, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMd, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
        OUTLINED_FUNCTION_30_3();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
        v98 = v186;
        v104 = v192;
        OUTLINED_FUNCTION_29_4();
      }

      AssetBackedLLMBundle.draftModel.getter();
      v105 = v208;
      if (v208)
      {
        v104 = v209;
        OUTLINED_FUNCTION_43_2();
        OUTLINED_FUNCTION_14_3();
        v106 = v193;
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMR);
        __swift_storeEnumTagSinglePayload(v98, 0, 1, v111);
        __swift_destroy_boxed_opaque_existential_1Tm(&v207);
        OUTLINED_FUNCTION_28_4();
      }

      else
      {
        outlined destroy of ResourceBundle?(&v207, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMd, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMR);
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
        OUTLINED_FUNCTION_28_4();
        v106 = v193;
      }

      v112 = v98;
      v198(v82, v201, v84);
      (*(v195 + 16))(v79, v106, v194);
      v113 = *(v105 + 16);
      v114 = v190;
      v113(v183, v190, v187);
      v115 = v184;
      _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v104, v184, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
      v116 = v181;
      _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v112, v181, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
      v117 = Logger.logObject.getter();
      LODWORD(v205) = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_88_0(v205))
      {
        v203 = v117;
        v118 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        v207 = v201;
        *v118 = 136316162;
        v119 = v175;
        swift_getDynamicType();
        _typeName(_:qualified:)();
        OUTLINED_FUNCTION_34_3();
        v197(v82, v119);
        OUTLINED_FUNCTION_26_2();
        v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        v200 = v118;
        *(v118 + 4) = v120;
        *(v118 + 12) = 2080;
        v121 = v180;
        v122 = v194;
        v123 = v211;
        CatalogAsset.version.getter();
        v202 = AssetVersion.number.getter();
        v124 = v195;
        v125 = v182 + 8;
        v199 = *(v182 + 8);
        v199(v121, v179);
        v126 = *(v124 + 8);
        v195 = v124 + 8;
        v211 = v126;
        v126(v123, v122);
        v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        v128 = v200;
        *(v200 + 14) = v127;
        *(v128 + 22) = 2080;
        v129 = v187;
        v130 = v183;
        CatalogAsset.version.getter();
        AssetVersion.number.getter();
        v131 = OUTLINED_FUNCTION_32_3();
        v182 = v125;
        v132 = v199;
        (v199)(v131);
        v133 = v132;
        OUTLINED_FUNCTION_4_4(&v212);
        v188 = v134;
        v202 = v135;
        v135(v130, v129);
        OUTLINED_FUNCTION_26_2();
        v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v128 + 24) = v136;
        *(v128 + 32) = 2080;
        v137 = v177;
        _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v184, v177, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
        if (__swift_getEnumTagSinglePayload(v137, 1, v138) == 1)
        {
          v139 = v132;
          outlined destroy of ResourceBundle?(v137, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
          v140 = v181;
          v141 = v180;
        }

        else
        {
          v141 = v180;
          CatalogAsset.version.getter();
          OUTLINED_FUNCTION_51(v138);
          v150 = *(v149 + 8);
          v151 = OUTLINED_FUNCTION_26_2();
          v152(v151);
          AssetVersion.number.getter();
          v153 = OUTLINED_FUNCTION_32_3();
          v139 = v133;
          (v133)(v153);
          v140 = v181;
        }

        outlined destroy of ResourceBundle?(v184, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
        v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v128 + 34) = v154;
        *(v128 + 42) = 2080;
        v155 = v178;
        _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v140, v178, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
        v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMR);
        if (__swift_getEnumTagSinglePayload(v155, 1, v156) == 1)
        {
          outlined destroy of ResourceBundle?(v155, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
        }

        else
        {
          CatalogAsset.version.getter();
          OUTLINED_FUNCTION_51(v156);
          v158 = *(v157 + 8);
          v159 = OUTLINED_FUNCTION_26_2();
          v160(v159);
          AssetVersion.number.getter();
          v139(v141, v179);
        }

        OUTLINED_FUNCTION_31_5();
        outlined destroy of ResourceBundle?(v161, v162, v163);
        v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v128 + 44) = v164;
        v165 = v203;
        _os_log_impl(&dword_25D85C000, v203, v205, "%s:\nTokenizer Version: %s\nBase Model Version: %s\nAdapter Model Version: %s\nDraft Model Version: %s", v128, 0x34u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();

        OUTLINED_FUNCTION_31_5();
        outlined destroy of ResourceBundle?(v166, v167, v168);
        v169 = OUTLINED_FUNCTION_30_3();
        outlined destroy of ResourceBundle?(v169, v170, v171);
        v202(v190, v187);
        v211(v193, v194);
        v172 = OUTLINED_FUNCTION_3_3();
        v173(v172, v204);
        return outlined destroy of ResourceBundle?(&v210, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      }

      outlined destroy of ResourceBundle?(v116, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
      outlined destroy of ResourceBundle?(v115, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
      v142 = *(v188 + 8);
      v143 = v187;
      v142(v183, v187);
      v144 = *(v195 + 8);
      v145 = v194;
      v144(v211, v194);
      outlined destroy of ResourceBundle?(v112, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
      v146 = OUTLINED_FUNCTION_30_3();
      outlined destroy of ResourceBundle?(v146, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
      v142(v114, v143);
      v144(v193, v145);
      v147 = OUTLINED_FUNCTION_3_3();
      v148(v147, v204);
      outlined destroy of ResourceBundle?(&v210, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      OUTLINED_FUNCTION_34_3();
      v96 = v185;
      return (v197)(v96);
    }
  }

  else
  {
    outlined destroy of ResourceBundle?(&v207, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v82 = v203;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  }

  outlined destroy of ResourceBundle?(v82, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  v198(v196, v201, v68);
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_88_0(v90))
  {
    v91 = swift_slowAlloc();
    v92 = OUTLINED_FUNCTION_49_0();
    v207 = v92;
    *v91 = 136315138;
    OUTLINED_FUNCTION_32_3();
    swift_getDynamicType();
    _typeName(_:qualified:)();
    OUTLINED_FUNCTION_34_3();
    v197(v94, v93);
    v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v91 + 4) = v95;
    _os_log_impl(&dword_25D85C000, v89, v90, "Can't get asset version info for %s which has non asset backed LLMBundle.", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v92);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();

    return outlined destroy of ResourceBundle?(&v210, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  outlined destroy of ResourceBundle?(&v210, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  OUTLINED_FUNCTION_34_3();
  v96 = OUTLINED_FUNCTION_32_3();
  return (v197)(v96);
}

id AnswerSynthesisModelProtocol.createPromptTemplate(with:creationError:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v187 = a2;
  v203 = a1;
  v189 = a5;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  OUTLINED_FUNCTION_14(v175);
  v174 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v170 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_4(&v170 - v17);
  v18 = type metadata accessor for AssetBackedLLMBundle();
  v19 = OUTLINED_FUNCTION_14(v18);
  v194 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v24);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  OUTLINED_FUNCTION_14(v177);
  v176 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v170 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_15_4(&v170 - v35);
  v197 = type metadata accessor for LLMBundle();
  v36 = OUTLINED_FUNCTION_14(v197);
  v180 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v41);
  v42 = *(a3 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_7_4();
  v202 = v50;
  MEMORY[0x28223BE20](v51);
  v53 = &v170 - v52;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v54 = type metadata accessor for Logger();
  v55 = __swift_project_value_buffer(v54, static Logging.answerSynthesis);
  v56 = *(v42 + 16);
  v199 = v42 + 16;
  v198 = v56;
  v56(v53, v205, a3);
  v200 = v55;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();
  v59 = OUTLINED_FUNCTION_88_0(v58);
  v186 = v30;
  v188 = a4;
  v178 = v12;
  v195 = v18;
  v201 = v42;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = OUTLINED_FUNCTION_49_0();
    v210[0] = v61;
    *v60 = 136315138;
    swift_getDynamicType();
    _typeName(_:qualified:)();
    v62 = OUTLINED_FUNCTION_24_4();
    (v42)(v62);
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v60 + 4) = v63;
    _os_log_impl(&dword_25D85C000, v57, v58, "Creating prompt template for %s model", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    v64 = OUTLINED_FUNCTION_24_4();
    (v42)(v64);
  }

  v65 = type metadata accessor for CatalogClient();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  v68 = CatalogClient.init()();
  v208 = v68;
  v69 = v204;
  CatalogClientProtocol.queryResourceBundle(with:)();
  v70 = v202;
  if (v69)
  {
  }

  OUTLINED_FUNCTION_11_3();
  v73 = v72();
  OUTLINED_FUNCTION_36_4(v73, v74, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  v77 = OUTLINED_FUNCTION_88_0(v76);
  v172 = v68;
  v204 = 0;
  if (v77)
  {
    v78 = swift_slowAlloc();
    v173 = a3;
    v79 = v78;
    v210[7] = swift_slowAlloc();
    *v79 = 136315394;
    swift_getDynamicType();
    _typeName(_:qualified:)();
    OUTLINED_FUNCTION_18_6();
    (v42)(v70, v173);
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v79 + 4) = v80;
    *(v79 + 12) = 2080;
    _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(&v208, v206, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    String.init<A>(describing:)();
    outlined destroy of ResourceBundle?(&v208, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v79 + 14) = v81;
    _os_log_impl(&dword_25D85C000, v75, v76, "%s resolved resource bundle: %s", v79, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    a3 = v173;
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    outlined destroy of ResourceBundle?(&v208, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    OUTLINED_FUNCTION_18_6();
    v82 = (v42)(v70, a3);
  }

  v84 = v195;
  v85 = v194;
  v86 = v196;
  OUTLINED_FUNCTION_36_4(v82, v83, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  v87 = v197;
  v88 = v193;
  if (v209)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
    v89 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v88, v89 ^ 1u, 1, v87);
    if (__swift_getEnumTagSinglePayload(v88, 1, v87) != 1)
    {
      v90 = v180;
      v91 = v190;
      (*(v180 + 32))(v190, v88, v87);
      v92 = v205;
      v93 = v198;
      v198(v86, v205, a3);
      v94 = v179;
      (*(v90 + 16))(v179, v91, v87);
      v95 = v185;
      v93(v185, v92, a3);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = OUTLINED_FUNCTION_49_0();
        v203 = swift_slowAlloc();
        v208 = v203;
        *v98 = 136315650;
        v99 = v196;
        swift_getDynamicType();
        _typeName(_:qualified:)();
        OUTLINED_FUNCTION_16_4();
        v201 = v100 + 8;
        (v42)(v99, a3);
        OUTLINED_FUNCTION_8_5();
        OUTLINED_FUNCTION_95_1();
        v199 = v98;
        *(v98 + 4) = v96;
        *(v98 + 12) = 2080;
        v101 = v186;
        v102 = v94;
        LLMBundle.id.getter();
        lazy protocol witness table accessor for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>(&lazy protocol witness table cache variable for type ResourceBundleIdentifier<LLMBundle> and conformance ResourceBundleIdentifier<A>, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
        v173 = a3;
        v103 = v177;
        v104 = dispatch thunk of CustomStringConvertible.description.getter();
        OUTLINED_FUNCTION_4_4(v207);
        v105(v101, v103);
        v106 = *(v90 + 8);
        v106(v102, v197);
        OUTLINED_FUNCTION_8_5();
        OUTLINED_FUNCTION_95_1();
        v107 = v199;
        *(v199 + 14) = v104;
        *(v107 + 22) = 2080;
        v108 = v42;
        v109 = v188;
        v110 = v185;
        v111 = v173;
        v112 = (*(v188 + 16))(v173, v188);
        v114 = v113;
        v115 = v111;
        v116 = v106;
        v108(v110, v115);
        OUTLINED_FUNCTION_8_5();
        OUTLINED_FUNCTION_95_1();
        *(v107 + 24) = v112;
        OUTLINED_FUNCTION_15_5(&dword_25D85C000, v117, v118, "%s resolved llmBundle.id: %s. Prompt templateID: %s");
        OUTLINED_FUNCTION_35_5();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();

        a3 = v173;
      }

      else
      {

        (v42)(v95, a3);
        v116 = *(v90 + 8);
        v116(v94, v197);
        (v42)(v196, a3);
        v109 = v188;
      }

      v168 = v190;
      LLMBundle.id.getter();
      (*(v109 + 16))(a3, v109);
      OUTLINED_FUNCTION_33_3();
      PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();

      v116(v168, v197);
      return outlined destroy of ResourceBundle?(v210, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    }
  }

  else
  {
    outlined destroy of ResourceBundle?(&v208, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v87);
  }

  v122 = outlined destroy of ResourceBundle?(v88, &_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  OUTLINED_FUNCTION_36_4(v122, v123, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  if (v209)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
    v124 = v192;
    v125 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v124, v125 ^ 1u, 1, v84);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v124, 1, v84);
    v127 = v191;
    if (EnumTagSinglePayload != 1)
    {
      v128 = v184;
      (*(v85 + 32))(v184, v124, v84);
      OUTLINED_FUNCTION_31_5();
      v129 = v198;
      (v198)();
      (*(v85 + 16))(v183, v128, v84);
      v130 = v181;
      OUTLINED_FUNCTION_31_5();
      v129();
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = OUTLINED_FUNCTION_49_0();
        v134 = v42;
        v171 = v42;
        v135 = a3;
        v136 = v133;
        v203 = swift_slowAlloc();
        v208 = v203;
        *v136 = 136315650;
        v137 = v182;
        swift_getDynamicType();
        _typeName(_:qualified:)();
        OUTLINED_FUNCTION_16_4();
        v138 = v137;
        v139 = v183;
        v201 = v140 + 8;
        v134(v138, v135);
        OUTLINED_FUNCTION_8_5();
        OUTLINED_FUNCTION_95_1();
        *(v136 + 4) = v131;
        *(v136 + 12) = 2080;
        v141 = v178;
        AssetBackedLLMBundle.id.getter();
        lazy protocol witness table accessor for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>(&lazy protocol witness table cache variable for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
        v142 = v175;
        v143 = dispatch thunk of CustomStringConvertible.description.getter();
        OUTLINED_FUNCTION_4_4(v206);
        v144(v141, v142);
        v145 = *(v85 + 8);
        v145(v139, v84);
        OUTLINED_FUNCTION_8_5();
        OUTLINED_FUNCTION_95_1();
        *(v136 + 14) = v143;
        *(v136 + 22) = 2080;
        v146 = v188;
        v147 = v181;
        (*(v188 + 16))(v135, v188);
        (v171)(v147, v135);
        v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v136 + 24) = v148;
        OUTLINED_FUNCTION_15_5(&dword_25D85C000, v149, v150, "%s resolved assetBackedLLMBundle.id: %s. Prompt templateID: %s");
        OUTLINED_FUNCTION_35_5();
        OUTLINED_FUNCTION_42_0();
        a3 = v135;
        v151 = v195;
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        (v42)(v130, a3);
        v145 = *(v85 + 8);
        v145(v183, v84);
        (v42)(v182, a3);
        v151 = v84;
        v146 = v188;
      }

      v169 = v184;
      AssetBackedLLMBundle.id.getter();
      (*(v146 + 16))(a3, v146);
      OUTLINED_FUNCTION_33_3();
      PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();

      v145(v169, v151);
      return outlined destroy of ResourceBundle?(v210, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    }
  }

  else
  {
    outlined destroy of ResourceBundle?(&v208, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v124 = v192;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v152, v153, v154, v84);
    v127 = v191;
  }

  outlined destroy of ResourceBundle?(v124, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  OUTLINED_FUNCTION_11_3();
  v155();
  v156 = v187;
  v157 = v187;
  v158 = Logger.logObject.getter();
  v159 = a3;
  v160 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v158, v160))
  {
    v161 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v171 = v42;
    v163 = v162;
    v164 = OUTLINED_FUNCTION_49_0();
    v208 = v164;
    *v161 = 136315394;
    swift_getDynamicType();
    _typeName(_:qualified:)();
    OUTLINED_FUNCTION_18_6();
    v171();
    v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v161 + 4) = v165;
    *(v161 + 12) = 2112;
    v166 = v156;
    v167 = _swift_stdlib_bridgeErrorToNSError();
    *(v161 + 14) = v167;
    *v163 = v167;
    _os_log_impl(&dword_25D85C000, v158, v160, "No other ResourceBundle types exist for %s, will throw %@", v161, 0x16u);
    outlined destroy of ResourceBundle?(v163, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_42_0();
    __swift_destroy_boxed_opaque_existential_1Tm(v164);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    OUTLINED_FUNCTION_18_6();
    (v42)(v127, v159);
  }

  swift_willThrow();

  outlined destroy of ResourceBundle?(v210, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  return v156;
}

uint64_t static AnswerSynthesisModelProtocol.defaultSamplingParameters.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  v1 = OUTLINED_FUNCTION_114(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  static SamplingStrategy.argmax()();
  v9 = type metadata accessor for SamplingStrategy();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  type metadata accessor for NSUserDefaults();
  static NSUserDefaults.answerSynthesisTokenLimitOutput.getter();
  AFIsInternalInstall();
  _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v8, v6, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();
  return outlined destroy of ResourceBundle?(v8, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
}

uint64_t _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_51(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of ResourceBundle?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_51(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of AnswerSynthesisModelProtocol.execute(request:userPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of AnswerSynthesisModelProtocol.execute(request:userPrompt:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AnswerSynthesisModelProtocol.execute(request:userPrompt:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

void OUTLINED_FUNCTION_11_3()
{
  v1 = *(v0 - 216);
  v2 = *(v0 - 264);
  v3 = *(v0 - 272);
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return dispatch thunk of AssetBackedResource.fetchAsset()();
}

void OUTLINED_FUNCTION_15_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 256);
  v8 = *(v5 - 256);
  v9 = *(v5 - 240);

  _os_log_impl(a1, v9, v8, a4, v4, 0x20u);
}

void OUTLINED_FUNCTION_16_4()
{
  *(v2 - 240) = v0;
  *(v2 - 256) = v1;
  v3 = *(v2 - 248);
}

uint64_t OUTLINED_FUNCTION_27_2()
{
  result = *(v0 - 304);
  v2 = *(v0 - 328);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_5()
{
  v2 = *(v0 - 232);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v4 - 128, v4 - 168, a3, a4);
}

uint64_t AnswerSynthesisModelServer.modelVersion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t AnswerSynthesisModelServer.model.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t AnswerSynthesisModelServer.model.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t AnswerSynthesisModelServer.resourceBundleQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10OmniSearch26AnswerSynthesisModelServer_resourceBundleQuery;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t AnswerSynthesisModelServer.resourceBundleQuery.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10OmniSearch26AnswerSynthesisModelServer_resourceBundleQuery;
  swift_beginAccess();
  v4 = type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t AnswerSynthesisModelServer.__allocating_init(languageCode:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AnswerSynthesisModelServer.init(languageCode:)(a1);
  return v5;
}

char *AnswerSynthesisModelServer.init(languageCode:)(uint64_t a1)
{
  v3 = v2;
  v132 = *v1;
  v5 = type metadata accessor for CachePolicy();
  v6 = OUTLINED_FUNCTION_114(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v116 = v10 - v9;
  OUTLINED_FUNCTION_78_0();
  v11 = type metadata accessor for SessionConfiguration();
  v12 = OUTLINED_FUNCTION_14(v11);
  v119 = v13;
  v120 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_109();
  v117 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v118 = &v111 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  v21 = OUTLINED_FUNCTION_114(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v121 = &v111 - v24;
  OUTLINED_FUNCTION_78_0();
  v125 = type metadata accessor for ModelBundle();
  v25 = OUTLINED_FUNCTION_14(v125);
  v115 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_36();
  v122 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v32 = OUTLINED_FUNCTION_114(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v130 = &v111 - v35;
  OUTLINED_FUNCTION_78_0();
  v128 = type metadata accessor for ResourceBundleQuery();
  v36 = OUTLINED_FUNCTION_14(v128);
  v126 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_109();
  v123 = v40 - v41;
  MEMORY[0x28223BE20](v42);
  v129 = &v111 - v43;
  OUTLINED_FUNCTION_78_0();
  v44 = type metadata accessor for Locale.LanguageCode();
  v45 = OUTLINED_FUNCTION_14(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_109();
  v124 = (v50 - v51);
  MEMORY[0x28223BE20](v52);
  v54 = &v111 - v53;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v134 = v1;
  v55 = type metadata accessor for Logger();
  v56 = __swift_project_value_buffer(v55, static Logging.answerSynthesis);
  v133 = *(v47 + 16);
  v133(v54, a1, v44);
  v114 = v56;
  v57 = v44;
  v58 = Logger.logObject.getter();
  v59 = a1;
  v60 = static os_log_type_t.info.getter();
  v61 = os_log_type_enabled(v58, v60);
  v131 = v47;
  if (v61)
  {
    OUTLINED_FUNCTION_28_3();
    v62 = swift_slowAlloc();
    v113 = v2;
    v63 = v62;
    OUTLINED_FUNCTION_9_4();
    v64 = swift_slowAlloc();
    v127 = v59;
    v112 = v64;
    v135 = v64;
    *v63 = 136315138;
    v133(v124, v54, v57);
    String.init<A>(describing:)();
    v65 = OUTLINED_FUNCTION_50_2();
    v66(v65);
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v63 + 4) = v67;
    _os_log_impl(&dword_25D85C000, v58, v60, "Initializing AnswerSynthesisModelServer with %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    v68 = v127;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v3 = v113;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    v69 = OUTLINED_FUNCTION_50_2();
    v70(v69);
    v68 = v59;
  }

  static Catalog.ResourceBundle.TokenGeneration.LLM.AnswerSynthesisServerConfigurationID.getter();
  v71 = v130;
  v133(v130, v68, v57);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v57);
  v72 = v129;
  ResourceBundleQuery.init(configurationIdentifier:languageCode:otherArguments:)();
  v73 = v3;
  v74 = v134;
  if (!v3)
  {
    v133 = v57;
    v127 = v68;
    v75 = OBJC_IVAR____TtC10OmniSearch26AnswerSynthesisModelServer_resourceBundleQuery;
    v76 = v126;
    v77 = v128;
    (*(v126 + 32))(&v134[OBJC_IVAR____TtC10OmniSearch26AnswerSynthesisModelServer_resourceBundleQuery], v72, v128);
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    v78 = *(v76 + 16);
    v78(v123, &v74[v75], v77);
    v79 = v121;
    ModelBundle.init(resourceBundleQuery:)();
    v80 = v125;
    if (__swift_getEnumTagSinglePayload(v79, 1, v125) != 1)
    {
      v98 = v115;
      v99 = v122;
      (*(v115 + 32))(v122, v79, v80);
      OUTLINED_FUNCTION_107();
      v129 = static AnswerSynthesisModelProtocol.GMS_SESSION_IDENTIFIER.getter();
      v130 = v54;
      OUTLINED_FUNCTION_107();
      static AnswerSynthesisModelProtocol.GMS_USE_CASE_ID.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMR);
      v100 = *(v98 + 72);
      v101 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_25DBC8180;
      (*(v98 + 16))(v102 + v101, v99, v80);
      static CachePolicy.inMemory.getter();
      v103 = [objc_opt_self() processInfo];
      [v103 processIdentifier];

      v104 = v118;
      SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:)();
      v106 = v119;
      v105 = v120;
      (*(v119 + 16))(v117, v104, v120);
      v107 = type metadata accessor for TokenGenerator();
      v108 = *(v107 + 48);
      v109 = *(v107 + 52);
      swift_allocObject();
      v110 = TokenGenerator.init(configuration:)();
      (v130)(v127, v133);
      (*(v106 + 8))(v104, v105);
      (*(v98 + 8))(v122, v125);
      *(v134 + 4) = v110;
      return v134;
    }

    outlined destroy of IntentApplication?(v79, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);

    v81 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    v82 = OUTLINED_FUNCTION_54_3();
    if (os_log_type_enabled(v82, v83))
    {
      OUTLINED_FUNCTION_28_3();
      v84 = swift_slowAlloc();
      v130 = v54;
      v85 = v84;
      OUTLINED_FUNCTION_9_4();
      v86 = swift_slowAlloc();
      v136 = v86;
      *v85 = 136315138;
      v78(v123, &v134[v75], v128);
      String.init<A>(describing:)();
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v85 + 4) = v87;
      OUTLINED_FUNCTION_22_4();
      _os_log_impl(v88, v89, v90, v91, v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      v74 = v134;
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      v54 = v130;
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v68 = v127;
    v57 = v133;
    lazy protocol witness table accessor for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError();
    swift_allocError();
    *v93 = 1;
    swift_willThrow();
  }

  (v54)(v68, v57);
  v94 = *(v74 + 3);

  if (!v73)
  {
    (*(v126 + 8))(&v74[OBJC_IVAR____TtC10OmniSearch26AnswerSynthesisModelServer_resourceBundleQuery], v128);
  }

  v95 = *(*v74 + 48);
  v96 = *(*v74 + 52);
  swift_deallocPartialClassInstance();
  return v74;
}

uint64_t AnswerSynthesisModelServer.prewarm(urgency:)()
{
  v1 = v0;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logging.answerSynthesis);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_22_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v10 = *(v1 + 32);

  TokenGenerator.prewarm(urgency:)();
}

Swift::String __swiftcall AnswerSynthesisModelServer.promptTemplateID()()
{
  v0 = 0x800000025DBEFB20;
  v1 = 0xD00000000000003ELL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

void AnswerSynthesisModelServer.createPromptTemplate()()
{
  v1 = type metadata accessor for ResourceBundleQuery();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC10OmniSearch26AnswerSynthesisModelServer_resourceBundleQuery;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  (*(v4 + 16))(v9, v0 + v10, v1);
  lazy protocol witness table accessor for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError();
  v11 = swift_allocError();
  *v12 = 2;
  specialized AnswerSynthesisModelProtocol.createPromptTemplate(with:creationError:)(v9, v11);
  v13 = *(v4 + 8);
  v14 = OUTLINED_FUNCTION_180();
  v15(v14);
}

void AnswerSynthesisModelServer.createOverridePrompt()(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v35 - v8;
  if (AFIsInternalInstall())
  {
    type metadata accessor for NSUserDefaults();
    static NSUserDefaults.answerSynthesisPromptTemplateOverride.getter();
    if (v10)
    {
      v11 = static NSUserDefaults.makeModelCatalogAjaxUserDefaults()();
      if (v11)
      {
        v12 = v11;
        static Catalog.ResourceBundle.TokenGeneration.LLM.AnswerSynthesisServerID.getter();
        v13 = MEMORY[0x25F89A600](v2);
        v15 = v14;
        (*(v5 + 8))(v9, v2);
        v16 = MEMORY[0x25F89F4C0](v13, v15);

        v17 = [v12 objectForKey_];

        if (v17)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0u;
          v37 = 0u;
        }

        v38 = v36;
        v39 = v37;
        if (*(&v37 + 1))
        {
          outlined destroy of IntentApplication?(&v38, &_sypSgMd, &_sypSgMR);
          if (one-time initialization token for answerSynthesis != -1)
          {
            OUTLINED_FUNCTION_0_5();
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          __swift_project_value_buffer(v23, static Logging.answerSynthesis);

          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v24, v25))
          {
            OUTLINED_FUNCTION_28_3();
            v26 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            v27 = swift_slowAlloc();
            *&v38 = v27;
            *v26 = 136315138;
            *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            _os_log_impl(&dword_25D85C000, v24, v25, "Using override prompt template for Answer Synthesis: %s", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v27);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

          Prompt.init(template:)();
          v32 = type metadata accessor for Prompt();
          v33 = a1;
          v34 = 0;
LABEL_23:
          __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
          OUTLINED_FUNCTION_148();
          return;
        }
      }

      else
      {

        v38 = 0u;
        v39 = 0u;
      }

      outlined destroy of IntentApplication?(&v38, &_sypSgMd, &_sypSgMR);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logging.answerSynthesis);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_25D85C000, v29, v30, "Ignoring overridden Answer Synthesis prompt template since ajax override is not set", v31, 2u);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      type metadata accessor for Prompt();
      v33 = OUTLINED_FUNCTION_19_4();
      goto LABEL_23;
    }
  }

  type metadata accessor for Prompt();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_148();

  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

void AnswerSynthesisModelServer.createSchemaOverride()(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  v11 = type metadata accessor for GenerationSchema();
  v12 = OUTLINED_FUNCTION_14(v11);
  v67 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_109();
  v18 = (v16 - v17);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v59 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - v23;
  if (AFIsInternalInstall() && (type metadata accessor for NSUserDefaults(), v25 = static NSUserDefaults.answerSynthesisCDSchemaOverride.getter(), v26))
  {
    v63 = v18;
    v66 = a1;
    v27 = v25;
    v28 = type metadata accessor for JSONDecoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = JSONDecoder.init()();
    static String.Encoding.utf8.getter();
    v64 = v27;
    v32 = String.data(using:allowLossyConversion:)();
    v34 = v33;
    (*(v5 + 8))(v10, v2);
    if (v34 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x277D0DC78]);
      OUTLINED_FUNCTION_53_3();
      v65 = v31;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      outlined consume of Data?(v32, v34);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logging.answerSynthesis);
      v41 = v67;
      v42 = *(v67 + 16);
      v42(v22, v24, v11);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();

      v45 = OUTLINED_FUNCTION_54_3();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v62 = v42;
        v48 = v47;
        v61 = swift_slowAlloc();
        v68 = v61;
        *v48 = 136315394;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        LODWORD(v64) = v44;
        v50 = v41;
        v51 = v49;

        *(v48 + 4) = v51;
        *(v48 + 12) = 2080;
        v60 = v43;
        v52 = v63;
        v62(v63, v22, v11);
        v59 = String.init<A>(describing:)();
        v53 = *(v50 + 8);
        v53(v22, v11);
        v54 = v53;
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v48 + 14) = v55;
        v56 = v60;
        _os_log_impl(&dword_25D85C000, v60, v64, "Decoded answerSynthesisCDSchemaOverride %s to type: %s", v48, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v42 = v62;
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();

        v57 = v66;
      }

      else
      {

        v54 = *(v41 + 8);
        v54(v22, v11);
        v57 = v66;
        v52 = v63;
      }

      v42(v52, v24, v11);
      Schema.init(type:)();

      v54(v24, v11);
      v58 = type metadata accessor for Schema();
      __swift_storeEnumTagSinglePayload(v57, 0, 1, v58);
      OUTLINED_FUNCTION_148();
    }
  }

  else
  {
    type metadata accessor for Schema();
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_148();

    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  }
}

uint64_t AnswerSynthesisModelServer.execute(request:userPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[30] = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_114(v5);
  v7 = *(v6 + 64);
  v4[31] = OUTLINED_FUNCTION_160();
  v4[32] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  v4[33] = OUTLINED_FUNCTION_160();
  v4[34] = swift_task_alloc();
  v11 = type metadata accessor for Prompt();
  v4[35] = v11;
  OUTLINED_FUNCTION_21(v11);
  v4[36] = v12;
  v14 = *(v13 + 64);
  v4[37] = OUTLINED_FUNCTION_160();
  v4[38] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v4[39] = OUTLINED_FUNCTION_160();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v18 = type metadata accessor for Schema();
  v4[45] = v18;
  OUTLINED_FUNCTION_21(v18);
  v4[46] = v19;
  v21 = *(v20 + 64);
  v4[47] = OUTLINED_FUNCTION_160();
  v4[48] = swift_task_alloc();
  v22 = type metadata accessor for PromptTemplate();
  v4[49] = v22;
  OUTLINED_FUNCTION_21(v22);
  v4[50] = v23;
  v25 = *(v24 + 64) + 15;
  v4[51] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t AnswerSynthesisModelServer.execute(request:userPrompt:)()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  static Task<>.checkCancellation()();
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v1 = v0[28];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logging.answerSynthesis);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[27];
    v5 = v0[28];
    OUTLINED_FUNCTION_28_3();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v88 = swift_slowAlloc();
    *v7 = 136642819;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v3, v4, "Calling answer synthesis with user prompt: %{sensitive}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v8 = v0[51];
  v9 = v0[29];
  AnswerSynthesisModelServer.createPromptTemplate()();
  v10 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  *(inited + 32) = 0x6D6F725072657375;
  *(inited + 40) = 0xEA00000000007470;
  v12 = v10[3];
  v13 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v12);
  v14 = (*(v13 + 56))(v12, v13);
  v16 = v0[44];
  v15 = v0[45];
  *(inited + 48) = v14;
  *(inited + 56) = v17;
  v0[52] = Dictionary.init(dictionaryLiteral:)();
  AnswerSynthesisModelServer.createSchemaOverride()(v16);
  if (OUTLINED_FUNCTION_30_4() == 1)
  {
    v18 = v0[44];
    v19 = &_s29GenerativeFunctionsFoundation6SchemaVSgMd;
    v20 = &_s29GenerativeFunctionsFoundation6SchemaVSgMR;
  }

  else
  {
    v22 = v0[34];
    v21 = v0[35];
    (*(v0[46] + 32))(v0[48], v0[44], v0[45]);
    AnswerSynthesisModelServer.createOverridePrompt()(v22);
    v23 = OUTLINED_FUNCTION_30_4();
    v24 = v0[48];
    v25 = v0[45];
    v26 = v0[46];
    if (v23 != 1)
    {
      v69 = v0[43];
      v70 = v0[30];
      (*(v0[36] + 32))(v0[38], v0[34], v0[35]);
      (*(v26 + 16))(v69, v24, v25);
      __swift_storeEnumTagSinglePayload(v69, 0, 1, v25);
      v71 = swift_task_alloc();
      v0[53] = v71;
      *v71 = v0;
      v71[1] = AnswerSynthesisModelServer.execute(request:userPrompt:);
      v72 = v0[43];
      v73 = v0[29];
      OUTLINED_FUNCTION_49_4(v0[38]);
      goto LABEL_18;
    }

    v27 = v0[34];
    (*(v26 + 8))(v0[48], v0[45]);
    v19 = &_s9PromptKit0A0VSgMd;
    v20 = &_s9PromptKit0A0VSgMR;
    v18 = v27;
  }

  outlined destroy of IntentApplication?(v18, v19, v20);
  v28 = v0[45];
  AnswerSynthesisModelServer.createSchemaOverride()(v0[42]);
  if (OUTLINED_FUNCTION_30_4() != 1)
  {
    v47 = v0[46];
    v48 = v0[47];
    v49 = v0[45];
    v50 = v0[41];
    v51 = v0[32];
    v52 = v0[30];
    v53 = v0[26];
    (*(v47 + 32))(v48, v0[42], v49);
    v55 = v10[3];
    v54 = v10[4];
    __swift_project_boxed_opaque_existential_1(v53, v55);
    OUTLINED_FUNCTION_46_4();
    v56(v55, v54);
    (*(v47 + 16))(v50, v48, v49);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v49);
    v57 = swift_task_alloc();
    v0[55] = v57;
    *v57 = v0;
    v57[1] = AnswerSynthesisModelServer.execute(request:userPrompt:);
    v58 = v0[41];
    v59 = v0[32];
    v60 = v0[29];
    OUTLINED_FUNCTION_49_4(v0[51]);
    goto LABEL_13;
  }

  v29 = v0[35];
  v30 = v0[33];
  outlined destroy of IntentApplication?(v0[42], &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  AnswerSynthesisModelServer.createOverridePrompt()(v30);
  v31 = OUTLINED_FUNCTION_30_4();
  v32 = v0[45];
  if (v31 == 1)
  {
    v33 = v0[39];
    v35 = v0[30];
    v34 = v0[31];
    v36 = v0[26];
    outlined destroy of IntentApplication?(v0[33], &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    v38 = v10[3];
    v37 = v10[4];
    __swift_project_boxed_opaque_existential_1(v36, v38);
    OUTLINED_FUNCTION_46_4();
    v39(v38, v37);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v32);
    v43 = swift_task_alloc();
    v0[59] = v43;
    *v43 = v0;
    v43[1] = AnswerSynthesisModelServer.execute(request:userPrompt:);
    v44 = v0[39];
    v45 = v0[31];
    v46 = v0[29];
    OUTLINED_FUNCTION_49_4(v0[51]);
LABEL_13:
    OUTLINED_FUNCTION_17_4();

    return closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:)(v61, v62, v63, v64, v65, v66);
  }

  v74 = v0[40];
  v75 = v0[30];
  (*(v0[36] + 32))(v0[37], v0[33], v0[35]);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v32);
  v79 = swift_task_alloc();
  v0[57] = v79;
  *v79 = v0;
  v79[1] = AnswerSynthesisModelServer.execute(request:userPrompt:);
  v80 = v0[40];
  v81 = v0[29];
  OUTLINED_FUNCTION_49_4(v0[37]);
LABEL_18:
  OUTLINED_FUNCTION_17_4();

  return closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)(v82, v83, v84, v85, v86);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v3[10] = v2;
  v3[11] = v5;
  v3[12] = v6;
  v3[13] = v0;
  OUTLINED_FUNCTION_25_3();
  v8 = *(v7 + 424);
  *v9 = *v2;
  *(v10 + 432) = v0;

  OUTLINED_FUNCTION_25_3();
  v12 = *(v11 + 416);
  outlined destroy of IntentApplication?(*(v1 + 344), &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v3[14] = v2;
  v3[15] = v5;
  v3[16] = v6;
  v3[17] = v0;
  OUTLINED_FUNCTION_25_3();
  v8 = *(v7 + 440);
  *v9 = *v2;
  *(v10 + 448) = v0;

  OUTLINED_FUNCTION_25_3();
  v12 = *(v11 + 416);
  v13 = *(v1 + 328);
  v14 = *(v1 + 256);

  outlined destroy of IntentApplication?(v13, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  outlined destroy of IntentApplication?(v14, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v3[18] = v2;
  v3[19] = v5;
  v3[20] = v6;
  v3[21] = v0;
  OUTLINED_FUNCTION_25_3();
  v8 = *(v7 + 456);
  *v9 = *v2;
  *(v10 + 464) = v0;

  OUTLINED_FUNCTION_25_3();
  v12 = *(v11 + 416);
  outlined destroy of IntentApplication?(*(v1 + 320), &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v3[22] = v2;
  v3[23] = v5;
  v3[24] = v6;
  v3[25] = v0;
  OUTLINED_FUNCTION_25_3();
  v8 = *(v7 + 472);
  *v9 = *v2;
  *(v10 + 480) = v0;

  OUTLINED_FUNCTION_25_3();
  v12 = *(v11 + 416);
  v13 = *(v1 + 312);
  v14 = *(v1 + 248);

  outlined destroy of IntentApplication?(v13, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  outlined destroy of IntentApplication?(v14, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t AnswerSynthesisModelServer.execute(request:userPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v20 = v18[50];
  v19 = v18[51];
  v22 = v18[48];
  v21 = v18[49];
  v23 = v18[45];
  v24 = v18[46];
  (*(v18[36] + 8))(v18[38], v18[35]);
  (*(v24 + 8))(v22, v23);
  v25 = *(v20 + 8);
  v26 = OUTLINED_FUNCTION_107();
  v27(v26);
  v28 = v18[54];
  OUTLINED_FUNCTION_3_4();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v20 = v18[50];
  v19 = v18[51];
  v21 = v18[49];
  (*(v18[46] + 8))(v18[47], v18[45]);
  v22 = *(v20 + 8);
  v23 = OUTLINED_FUNCTION_107();
  v24(v23);
  v25 = v18[56];
  OUTLINED_FUNCTION_3_4();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v20 = v18[50];
  v19 = v18[51];
  v21 = v18[49];
  (*(v18[36] + 8))(v18[37], v18[35]);
  v22 = *(v20 + 8);
  v23 = OUTLINED_FUNCTION_107();
  v24(v23);
  v25 = v18[58];
  OUTLINED_FUNCTION_3_4();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  (*(v18[50] + 8))(v18[51], v18[49]);
  v19 = v18[60];
  OUTLINED_FUNCTION_3_4();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:);

  return closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)(a1, a2, a3, v3, v8);
}

uint64_t AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v6 = *(*v1 + 16);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;

  v11 = *(v7 + 8);
  if (!v0)
  {
    v9 = v5;
    v10 = v3;
  }

  return v11(v9, v10);
}

uint64_t AnswerSynthesisModelServer.modelVersion.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v6[33] = v7;
  v8 = *(v7 - 8);
  v6[34] = v8;
  v9 = *(v8 + 64) + 15;
  v6[35] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMR) - 8) + 64) + 15;
  v6[36] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMR);
  v6[37] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[38] = swift_task_alloc();
  v13 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v6[39] = v13;
  v14 = *(v13 - 8);
  v6[40] = v14;
  v15 = *(v14 + 64) + 15;
  v6[41] = swift_task_alloc();
  v16 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v6[42] = v16;
  v17 = *(v16 - 8);
  v6[43] = v17;
  v18 = *(v17 + 64) + 15;
  v6[44] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR) - 8) + 64) + 15;
  v6[45] = swift_task_alloc();
  v20 = type metadata accessor for FunctionIdentifier();
  v6[46] = v20;
  v21 = *(v20 - 8);
  v6[47] = v21;
  v22 = *(v21 + 64) + 15;
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v6[50] = v23;
  v24 = *(v23 - 8);
  v6[51] = v24;
  v25 = *(v24 + 64) + 15;
  v6[52] = swift_task_alloc();
  v26 = type metadata accessor for ChatMessagesPrompt();
  v6[53] = v26;
  v27 = *(v26 - 8);
  v6[54] = v27;
  v28 = *(v27 + 64) + 15;
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:), 0, 0);
}

uint64_t closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:)()
{
  v31 = *(v0 + 480);
  v32 = *(v0 + 488);
  v30 = *(v0 + 472);
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);
  v4 = *(v0 + 440);
  v5 = *(v0 + 424);
  v25 = *(v0 + 416);
  v26 = *(v0 + 408);
  v27 = *(v0 + 400);
  v28 = *(v0 + 464);
  v34 = *(v0 + 392);
  v29 = *(v0 + 240);
  v23 = *(v0 + 232);
  v24 = *(v0 + 256);
  v33 = *(v0 + 360);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  *(swift_task_alloc() + 16) = v6;
  ChatMessagesPrompt.init(_:)();

  v8 = lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, MEMORY[0x277D42D78]);
  *(v0 + 496) = v8;
  MEMORY[0x25F89F2A0](v7, v5, v8);
  v9 = *(v3 + 8);
  *(v0 + 504) = v9;
  *(v0 + 512) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v5);
  ChatMessagesPrompt.locale(_:)();
  v10 = OUTLINED_FUNCTION_48_3();
  (v9)(v10);
  static AnswerSynthesisModelProtocol.defaultSamplingParameters.getter();
  *(v0 + 600) = *MEMORY[0x277D0E548];
  v11 = *(v26 + 104);
  *(v0 + 520) = v11;
  *(v0 + 528) = (v26 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v25);
  OUTLINED_FUNCTION_48_3();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  *(v0 + 536) = *(v26 + 8);
  *(v0 + 544) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12 = OUTLINED_FUNCTION_180();
  v13(v12);
  v9(v2, v5);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v29);
  GenerativeConfigurationProtocol.bindVariables(_:)();

  v9(v28, v5);
  GenerativeConfigurationProtocol.renderedPromptSanitizerDisabled()();
  v14 = OUTLINED_FUNCTION_48_3();
  (v9)(v14);
  GenerativeConfigurationProtocol.responseSanitizerDisabled()();
  v9(v31, v5);
  type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v19 = *(MEMORY[0x277D0E540] + 4);
  v20 = swift_task_alloc();
  *(v0 + 552) = v20;
  *v20 = v0;
  v20[1] = closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:);
  v21 = *(v0 + 288);
  OUTLINED_FUNCTION_47_5();

  return MEMORY[0x282166B60]();
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v6 = *(v5 + 552);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v9 + 560) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = *(v0 + 288);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatMR);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    outlined destroy of IntentApplication?(v1, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMR);
  }

  else
  {
    v61 = *(v0 + 536);
    v62 = *(v0 + 544);
    v59 = *(v0 + 520);
    v60 = *(v0 + 528);
    v58 = *(v0 + 600);
    v70 = *(v0 + 504);
    v71 = *(v0 + 512);
    v65 = *(v0 + 480);
    v66 = *(v0 + 488);
    v68 = *(v0 + 424);
    v69 = *(v0 + 432);
    v56 = *(v0 + 416);
    v57 = *(v0 + 400);
    v51 = *(v0 + 384);
    v52 = *(v0 + 376);
    v53 = *(v0 + 368);
    v54 = *(v0 + 392);
    v72 = *(v0 + 352);
    v67 = *(v0 + 344);
    v3 = *(v0 + 336);
    v4 = *(v0 + 312);
    v5 = *(v0 + 320);
    v64 = v5;
    v6 = *(v0 + 296);
    v7 = *(v0 + 304);
    v55 = *(v0 + 256);
    v63 = *(v0 + 216);
    v49 = *(v2 + 48);
    v50 = *(v0 + 328);
    v48 = *(v6 + 48);
    v8 = *(v67 + 32);
    v8(v7, v1, v3);
    v9 = *(v5 + 32);
    v9(v7 + v48, v1 + v49, v4);
    v10 = *(v6 + 48);
    v8(v72, v7, v3);
    v11 = v7 + v10;
    v12 = v4;
    v9(v50, v11, v4);
    v13 = v50;
    v14 = _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    v22 = OUTLINED_FUNCTION_33_4(v14, v15, v16, v17, v18, v19, v20, v21, v48, v49, v50, v51, v52, v53, v54);
    v23(v22);
    v24 = OUTLINED_FUNCTION_52_3();
    v25(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A25ComponentValueConvertible_pMd, &_s9PromptKit0A25ComponentValueConvertible_pMR);
    Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_31_6(inited, "_OverrideConfigurationHelper.samplingParameters(.dynamic(Self.defaultSamplingParameters))", xmmword_25DBC8180);
    static AnswerSynthesisModelProtocol.defaultSamplingParameters.getter();
    OUTLINED_FUNCTION_51_3();
    v27();
    inited[4].n128_u64[1] = type metadata accessor for SamplingParameters();
    __swift_allocate_boxed_opaque_existential_1Tm(&inited[3]);
    static _OverrideConfigurationHelper.samplingParameters(_:)();
    v61(v56, v55);
    OUTLINED_FUNCTION_48_3();
    Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9PromptKit012ChatMessagesD11Convertible_ptGMd, &_ss23_ContiguousArrayStorageCySS_9PromptKit012ChatMessagesD11Convertible_ptGMR);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_25DBC8180;
    strcpy((v28 + 32), "promptTemplate");
    *(v28 + 47) = -18;
    v29 = type metadata accessor for PromptTemplate();
    *(v28 + 72) = v29;
    *(v28 + 80) = lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x277D0E698]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v28 + 48));
    (*(*(v29 - 8) + 16))(boxed_opaque_existential_1Tm, v63, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit012ChatMessagesA11Convertible_pMd, &_s9PromptKit012ChatMessagesA11Convertible_pMR);
    Dictionary.init(dictionaryLiteral:)();
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)();

    (*(v64 + 8))(v13, v12);
    (*(v67 + 8))(v72, v3);
    v70(v66, v68);
    (*(v69 + 32))(v66, v65, v68);
  }

  v32 = *(v0 + 504);
  v31 = *(v0 + 512);
  v34 = *(v0 + 488);
  v33 = *(v0 + 496);
  v35 = *(v0 + 480);
  v36 = *(v0 + 424);
  v37 = *(v0 + 392);
  v38 = *(v0 + 280);
  v39 = *(v0 + 248);
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_37_4();
  v32(v35, v36);
  v40 = *(MEMORY[0x277D0D8E8] + 4);
  v41 = swift_task_alloc();
  *(v0 + 568) = v41;
  OUTLINED_FUNCTION_14_4();
  v44 = lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(v42, v43);
  *v41 = v0;
  v41[1] = closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:);
  v45 = *(v0 + 280);
  v46 = *(v0 + 264);

  return MEMORY[0x282165A78](v46, v44);
}

{
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v6 = v4[71];
  *v5 = *v2;
  v4[72] = v1;

  v7 = v4[35];
  v8 = v4[34];
  v9 = v4[33];
  if (!v1)
  {
    v4[73] = v0;
    v4[74] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = v0[63];
  v2 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[58];
  v6 = v0[59];
  v7 = v0[57];
  v13 = v0[56];
  v14 = v0[55];
  v8 = v0[53];
  v15 = v0[52];
  v16 = v0[48];
  v17 = v0[45];
  v18 = v0[44];
  v19 = v0[41];
  v20 = v0[38];
  v21 = v0[36];
  v22 = v0[35];
  (*(v0[47] + 8))(v0[49], v0[46]);
  v1(v3, v8);

  v9 = v0[1];
  v10 = v0[74];
  v11 = v0[73];

  return v9(v10, v11);
}

uint64_t closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v20 = OUTLINED_FUNCTION_32_4();
  v21(v20);
  v22 = OUTLINED_FUNCTION_107();
  v19(v22);
  v23 = *(v18 + 560);
  OUTLINED_FUNCTION_11_4();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v20 = OUTLINED_FUNCTION_32_4();
  v21(v20);
  v22 = OUTLINED_FUNCTION_107();
  v19(v22);
  v23 = *(v18 + 576);
  OUTLINED_FUNCTION_11_4();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t closure #1 in closure #2 in AnswerSynthesisModelServer.synthesizeWithTemplate(_:bindings:locale:schema:)()
{
  v0 = type metadata accessor for ChatMessagesPrompt();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PromptTemplate();
  lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x277D0E698]);
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v6 = *(v1 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25DBC8180;
  (*(v2 + 16))(v8 + v7, v5, v0);
  MEMORY[0x25F89F110](v8);

  return (*(v2 + 8))(v5, v0);
}

uint64_t AnswerSynthesisModelServer.synthesizeWithOverride_generateGenerativeFunctionOverride()()
{
  v1 = type metadata accessor for BindableConfiguration();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  v10 = type metadata accessor for CompletionPrompt();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v16);
  CompletionPrompt.init(_:)();
  BindableConfiguration.init(name:)();
  OUTLINED_FUNCTION_12_2();
  lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(v17, v18);
  OUTLINED_FUNCTION_180();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  (*(v4 + 8))(v9, v1);
  v19 = *(v13 + 8);
  v20 = OUTLINED_FUNCTION_107();
  v19(v20);
  v21 = static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (!v0)
  {
    v1 = v21;
  }

  v22 = OUTLINED_FUNCTION_53_3();
  v19(v22);
  return v1;
}

uint64_t closure #1 in AnswerSynthesisModelServer.synthesizeWithOverride_generateGenerativeFunctionOverride()()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = type metadata accessor for BindableVariable();
  v12[4] = MEMORY[0x277D42E60];
  __swift_allocate_boxed_opaque_existential_1Tm(v12);
  BindableVariable.init(name:)();
  v6 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v7 = *(v1 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25DBC8180;
  (*(v2 + 16))(v9 + v8, v5, v0);
  MEMORY[0x25F89F150](v9, v0, v6);

  return (*(v2 + 8))(v5, v0);
}

uint64_t closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMR);
  v5[32] = v6;
  v7 = *(v6 - 8);
  v5[33] = v7;
  v8 = *(v7 + 64) + 15;
  v5[34] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR) - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMR);
  v5[36] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[37] = swift_task_alloc();
  v12 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v5[38] = v12;
  v13 = *(v12 - 8);
  v5[39] = v13;
  v14 = *(v13 + 64) + 15;
  v5[40] = swift_task_alloc();
  v15 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt();
  v5[41] = v15;
  v16 = *(v15 - 8);
  v5[42] = v16;
  v17 = *(v16 + 64) + 15;
  v5[43] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v19 = type metadata accessor for FunctionIdentifier();
  v5[45] = v19;
  v20 = *(v19 - 8);
  v5[46] = v20;
  v21 = *(v20 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v5[49] = v22;
  v23 = *(v22 - 8);
  v5[50] = v23;
  v24 = *(v23 + 64) + 15;
  v5[51] = swift_task_alloc();
  v25 = type metadata accessor for CompletionPrompt();
  v5[52] = v25;
  v26 = *(v25 - 8);
  v5[53] = v26;
  v27 = *(v26 + 64) + 15;
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:), 0, 0);
}

uint64_t closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)()
{
  v31 = *(v0 + 464);
  v32 = *(v0 + 472);
  v28 = *(v0 + 448);
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 400);
  v5 = *(v0 + 408);
  v33 = *(v0 + 352);
  v7 = *(v0 + 248);
  v29 = *(v0 + 232);
  v30 = *(v0 + 456);
  v34 = *(v0 + 384);
  v8 = *(v0 + 216);
  v26 = *(v0 + 392);
  v27 = *(v0 + 224);
  *(swift_task_alloc() + 16) = v8;
  CompletionPrompt.init(_:)();

  static AnswerSynthesisModelProtocol.defaultSamplingParameters.getter();
  *(v0 + 584) = *MEMORY[0x277D0E548];
  v9 = *(v6 + 104);
  *(v0 + 480) = v9;
  *(v0 + 488) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v5);
  OUTLINED_FUNCTION_12_2();
  v12 = lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(v10, v11);
  *(v0 + 496) = v12;
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v13 = *(v6 + 8);
  *(v0 + 504) = v13;
  *(v0 + 512) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v5, v26);
  v14 = *(v4 + 8);
  *(v0 + 520) = v14;
  *(v0 + 528) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v2, v3);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v27);
  GenerativeConfigurationProtocol.bindVariables(_:)();

  v14(v1, v3);
  MEMORY[0x25F89F2A0](v29, v3, v12);
  v14(v28, v3);
  GenerativeConfigurationProtocol.renderedPromptSanitizerDisabled()();
  v14(v30, v3);
  GenerativeConfigurationProtocol.responseSanitizerDisabled()();
  v14(v31, v3);
  type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v19 = *(MEMORY[0x277D0E538] + 4);
  v20 = swift_task_alloc();
  *(v0 + 536) = v20;
  *v20 = v0;
  v20[1] = closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:);
  v21 = *(v0 + 280);
  OUTLINED_FUNCTION_47_5();

  return MEMORY[0x282166B58](v22, v23, v24);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v6 = *(v5 + 536);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v9 + 544) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = *(v0 + 280);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatMR);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    outlined destroy of IntentApplication?(v1, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR);
  }

  else
  {
    v72 = *(v0 + 520);
    v73 = *(v0 + 528);
    v65 = *(v0 + 504);
    v66 = *(v0 + 512);
    v62 = *(v0 + 480);
    v63 = *(v0 + 488);
    v61 = *(v0 + 584);
    v69 = *(v0 + 472);
    v67 = *(v0 + 464);
    v70 = *(v0 + 416);
    v71 = *(v0 + 424);
    v59 = *(v0 + 408);
    v60 = *(v0 + 392);
    v53 = *(v0 + 376);
    v54 = *(v0 + 368);
    v55 = *(v0 + 360);
    v56 = *(v0 + 384);
    v74 = *(v0 + 344);
    v68 = *(v0 + 336);
    v3 = *(v0 + 328);
    v5 = *(v0 + 304);
    v4 = *(v0 + 312);
    v64 = v4;
    v6 = *(v0 + 288);
    v7 = *(v0 + 296);
    v57 = *(v0 + 216);
    v58 = *(v0 + 248);
    v51 = *(v2 + 48);
    v52 = *(v0 + 320);
    v50 = *(v6 + 48);
    v8 = *(v68 + 32);
    v8(v7, v1, v3);
    v9 = *(v4 + 32);
    v9(v7 + v50, v1 + v51, v5);
    v10 = *(v6 + 48);
    v8(v74, v7, v3);
    v9(v52, v7 + v10, v5);
    v11 = v52;
    v12 = _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    v20 = OUTLINED_FUNCTION_33_4(v12, v13, v14, v15, v16, v17, v18, v19, v50, v51, v52, v53, v54, v55, v56);
    v21(v20);
    v22 = OUTLINED_FUNCTION_52_3();
    v23(v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMd, &_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBC8180;
    strcpy((inited + 32), "overridePrompt");
    *(inited + 47) = -18;
    v25 = type metadata accessor for Prompt();
    v26 = MEMORY[0x277D42E20];
    *(inited + 72) = v25;
    *(inited + 80) = v26;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1Tm, v57, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A25ComponentValueConvertible_pMd, &_s9PromptKit0A25ComponentValueConvertible_pMR);
    OUTLINED_FUNCTION_107();
    Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v28 = swift_initStackObject();
    OUTLINED_FUNCTION_31_6(v28, "_OverrideConfigurationHelper.samplingParameters(.dynamic(Self.defaultSamplingParameters))", xmmword_25DBC8180);
    static AnswerSynthesisModelProtocol.defaultSamplingParameters.getter();
    OUTLINED_FUNCTION_51_3();
    v29();
    v28[4].n128_u64[1] = type metadata accessor for SamplingParameters();
    __swift_allocate_boxed_opaque_existential_1Tm(&v28[3]);
    static _OverrideConfigurationHelper.samplingParameters(_:)();
    v65(v59, v58);
    OUTLINED_FUNCTION_180();
    Dictionary.init(dictionaryLiteral:)();
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingVariables:bindingConfigurations:)();

    (*(v64 + 8))(v11, v5);
    (*(v68 + 8))(v74, v3);
    v72(v69, v70);
    v30 = *(v71 + 32);
    v31 = OUTLINED_FUNCTION_53_3();
    v32(v31);
  }

  v33 = *(v0 + 528);
  v34 = *(v0 + 520);
  v35 = *(v0 + 496);
  v37 = *(v0 + 464);
  v36 = *(v0 + 472);
  v38 = *(v0 + 416);
  v39 = *(v0 + 384);
  v40 = *(v0 + 272);
  v41 = *(v0 + 240);
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_37_4();
  v34(v37, v38);
  v42 = *(MEMORY[0x277D0D8C8] + 4);
  v43 = swift_task_alloc();
  *(v0 + 552) = v43;
  OUTLINED_FUNCTION_14_4();
  v46 = lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(v44, v45);
  *v43 = v0;
  v43[1] = closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:);
  v47 = *(v0 + 272);
  v48 = *(v0 + 256);

  return MEMORY[0x282165A58](v48, v46);
}

{
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v6 = v4[69];
  *v5 = *v2;
  v4[70] = v1;

  v7 = v4[34];
  v8 = v4[33];
  v9 = v4[32];
  if (!v1)
  {
    v4[71] = v0;
    v4[72] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v21 = v20[66];
  v22 = v20[65];
  v24 = v20[58];
  v23 = v20[59];
  v26 = v20[56];
  v25 = v20[57];
  v27 = v20[55];
  v28 = v20[52];
  v42 = v20[54];
  v43 = v20[51];
  v44 = v20[47];
  v45 = v20[44];
  v46 = v20[43];
  v47 = v20[40];
  v48 = v20[37];
  v49 = v20[35];
  v50 = v20[34];
  (*(v20[46] + 8))(v20[48], v20[45]);
  v29 = OUTLINED_FUNCTION_180();
  v22(v29);

  v30 = v20[1];
  v31 = v20[72];
  v32 = v20[71];
  OUTLINED_FUNCTION_17_4();

  return v36(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, v45, v46, v47, v48, v49, v50, a18, a19, a20);
}

uint64_t closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v20 = OUTLINED_FUNCTION_28_5();
  v21(v20);
  v22 = OUTLINED_FUNCTION_107();
  v19(v22);
  v23 = *(v18 + 544);
  OUTLINED_FUNCTION_18_7();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v20 = OUTLINED_FUNCTION_28_5();
  v21(v20);
  v22 = OUTLINED_FUNCTION_107();
  v19(v22);
  v23 = *(v18 + 560);
  OUTLINED_FUNCTION_18_7();

  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_15_6();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t closure #1 in closure #2 in AnswerSynthesisModelServer.synthesizeWithOverride(_:bindings:schema:)()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v7 = *(v1 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25DBC8180;
  (*(v2 + 16))(v9 + v8, v5, v0);
  MEMORY[0x25F89F150](v9, v0, v6);

  return (*(v2 + 8))(v5, v0);
}

uint64_t AnswerSynthesisModelServer.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC10OmniSearch26AnswerSynthesisModelServer_resourceBundleQuery;
  v4 = type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17(v4);
  (*(v5 + 8))(v0 + v3);
  return v0;
}

uint64_t AnswerSynthesisModelServer.__deallocating_deinit()
{
  AnswerSynthesisModelServer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AnswerSynthesisModelProtocol.execute(request:userPrompt:) in conformance AnswerSynthesisModelServer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnswerSynthesisModelProtocol.execute(request:userPrompt:) in conformance AnswerSynthesisModelServer;

  return AnswerSynthesisModelServer.execute(request:userPrompt:)(a1, a2, a3);
}

uint64_t type metadata accessor for AnswerSynthesisModelServer()
{
  result = type metadata singleton initialization cache for AnswerSynthesisModelServer;
  if (!type metadata singleton initialization cache for AnswerSynthesisModelServer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AnswerSynthesisModelServer()
{
  result = type metadata accessor for ResourceBundleQuery();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_6()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  v4 = v0[43];
  v5 = v0[44];
  v7 = v0[41];
  v6 = v0[42];
  v9 = v0[39];
  v8 = v0[40];
  v12 = v0[38];
  v13 = v0[37];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[32];
  v17 = v0[31];
  v10 = *(v0[50] + 8);
  return v0[51];
}

uint64_t OUTLINED_FUNCTION_3_4()
{
  v2 = v0[51];
  v4 = v0[47];
  v3 = v0[48];
  v6 = v0[43];
  v5 = v0[44];
  v8 = v0[41];
  v7 = v0[42];
  v10 = v0[39];
  v9 = v0[40];
  v11 = v0[38];
  v13 = v0[37];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[32];
  v17 = v0[31];
}

uint64_t OUTLINED_FUNCTION_4_5()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_4()
{
  v3 = v0[60];
  v2 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[55];
  v9 = v0[52];
  v11 = v0[48];
  v10 = v0[49];
  v13 = v0[45];
  v14 = v0[44];
  v15 = v0[41];
  v16 = v0[38];
  v17 = v0[36];
  v18 = v0[35];
}

uint64_t OUTLINED_FUNCTION_18_7()
{
  v3 = v0[58];
  v2 = v0[59];
  v5 = v0[56];
  v4 = v0[57];
  v7 = v0[54];
  v6 = v0[55];
  v8 = v0[51];
  v10 = v0[47];
  v9 = v0[48];
  v11 = v0[44];
  v14 = v0[43];
  v15 = v0[40];
  v12 = v0[37];
  v16 = v0[35];
  v17 = v0[34];
}

uint64_t OUTLINED_FUNCTION_28_5()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[59];
  v4 = v0[52];
  result = v0[48];
  v6 = v0[45];
  v7 = *(v0[46] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

__n128 *OUTLINED_FUNCTION_31_6@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[2].n128_u64[0] = 0xD000000000000059;
  result[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_4()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[61];
  v4 = v0[53];
  result = v0[49];
  v6 = v0[46];
  v7 = *(v0[47] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_37_4()
{

  return GenerativeConfigurationProtocol.with<A>(model:)();
}

uint64_t OUTLINED_FUNCTION_56_2()
{
  *(v0 + 208) = *(v1 + 32);

  return type metadata accessor for TokenGenerator();
}

uint64_t PQAVerificationModelOnDevice.modelVersion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t PQAVerificationModelOnDevice.model.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t PQAVerificationModelOnDevice.model.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t PQAVerificationModelOnDevice.resourceBundleQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10OmniSearch28PQAVerificationModelOnDevice_resourceBundleQuery;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t PQAVerificationModelOnDevice.resourceBundleQuery.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10OmniSearch28PQAVerificationModelOnDevice_resourceBundleQuery;
  swift_beginAccess();
  v4 = type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t static PQAVerificationModelOnDevice.defaultVerificationModelParameter.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  v1 = OUTLINED_FUNCTION_114(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_109();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  type metadata accessor for SamplingStrategy();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  AFIsInternalInstall();
  outlined init with copy of SamplingStrategy?(v9, v6);
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();
  return outlined destroy of IntentApplication?(v9, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
}

uint64_t outlined init with copy of SamplingStrategy?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PQAVerificationModelOnDevice.__allocating_init(languageCode:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PQAVerificationModelOnDevice.init(languageCode:)(a1);
  return v5;
}

char *PQAVerificationModelOnDevice.init(languageCode:)(uint64_t a1)
{
  v134 = *v1;
  v3 = type metadata accessor for CachePolicy();
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v118 = v8 - v7;
  OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for SessionConfiguration();
  v10 = OUTLINED_FUNCTION_14(v9);
  v121 = v11;
  v122 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_109();
  v119 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v120 = &v114 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  v19 = OUTLINED_FUNCTION_114(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v123 = &v114 - v22;
  OUTLINED_FUNCTION_78_0();
  v127 = type metadata accessor for ModelBundle();
  v23 = OUTLINED_FUNCTION_14(v127);
  v125 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_36();
  v124 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v30 = OUTLINED_FUNCTION_114(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v131 = &v114 - v33;
  OUTLINED_FUNCTION_78_0();
  v34 = type metadata accessor for ResourceBundleQuery();
  v128 = OUTLINED_FUNCTION_14(v34);
  v129 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_109();
  v117 = v38 - v39;
  v41 = MEMORY[0x28223BE20](v40);
  v126 = &v114 - v42;
  MEMORY[0x28223BE20](v41);
  v130 = &v114 - v43;
  OUTLINED_FUNCTION_78_0();
  v44 = type metadata accessor for Locale.LanguageCode();
  v45 = OUTLINED_FUNCTION_14(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v50);
  v52 = &v114 - v51;
  v1[2] = 0;
  v1[3] = 0;
  v137 = v1;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  v54 = __swift_project_value_buffer(v53, static Logging.answerSynthesis);
  v55 = *(v47 + 16);
  v135 = a1;
  v136 = v55;
  (v55)(v52, a1, v44);
  v116 = v54;
  v56 = Logger.logObject.getter();
  v57 = v44;
  v58 = v47;
  v59 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v56, v59))
  {
    OUTLINED_FUNCTION_28_3();
    v60 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v115 = swift_slowAlloc();
    v138 = v115;
    *v60 = 136315138;
    v61 = OUTLINED_FUNCTION_30_5();
    v136(v61);
    String.init<A>(describing:)();
    v62 = OUTLINED_FUNCTION_25_4();
    v63(v62);
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v60 + 4) = v64;
    _os_log_impl(&dword_25D85C000, v56, v59, "Initializing PQAVerificationModelOnDevice with %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v115);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    v65 = OUTLINED_FUNCTION_25_4();
    v66(v65);
  }

  v67 = v57;
  static Catalog.ResourceBundle.TokenGeneration.LLM.PQAVerificationConfigurationID.getter();
  v68 = v131;
  v69 = v135;
  (v136)(v131, v135, v67);
  __swift_storeEnumTagSinglePayload(v68, 0, 1, v67);
  v70 = v130;
  v71 = v132;
  ResourceBundleQuery.init(configurationIdentifier:languageCode:otherArguments:)();
  if (!v71)
  {
    v132 = v58;
    v136 = v67;
    v72 = OBJC_IVAR____TtC10OmniSearch28PQAVerificationModelOnDevice_resourceBundleQuery;
    v73 = v128;
    v74 = v129;
    v75 = v137;
    (*(v129 + 32))(&v137[OBJC_IVAR____TtC10OmniSearch28PQAVerificationModelOnDevice_resourceBundleQuery], v70, v128);
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    v76 = *(v74 + 16);
    v76(v126, &v75[v72], v73);
    v77 = v123;
    ModelBundle.init(resourceBundleQuery:)();
    v78 = v127;
    if (__swift_getEnumTagSinglePayload(v77, 1, v127) != 1)
    {
      v97 = v125;
      v98 = *(v125 + 32);
      v131 = v72;
      v99 = v124;
      v98(v124, v77, v78);
      OUTLINED_FUNCTION_107();
      v130 = static AnswerSynthesisModelProtocol.GMS_SESSION_IDENTIFIER.getter();
      v126 = v100;
      OUTLINED_FUNCTION_107();
      v123 = static AnswerSynthesisModelProtocol.GMS_USE_CASE_ID.getter();
      v116 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMR);
      v102 = *(v97 + 72);
      v103 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v104 = swift_allocObject();
      v134 = v76;
      *(v104 + 16) = xmmword_25DBC8180;
      (*(v97 + 16))(v104 + v103, v99, v127);
      static CachePolicy.inMemory.getter();
      v105 = [objc_opt_self() processInfo];
      [v105 processIdentifier];

      v106 = v120;
      v107 = v137;
      SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:)();
      v108 = v121;
      v109 = v122;
      (*(v121 + 16))(v119, v106);
      v110 = type metadata accessor for TokenGenerator();
      v111 = *(v110 + 48);
      v112 = *(v110 + 52);
      swift_allocObject();
      *(v107 + 4) = TokenGenerator.init(configuration:)();
      v113 = v117;
      v134(v117, &v131[v107], v73);
      specialized AnswerSynthesisModelProtocol.logAssetinfo(resourceBundleQuery:)(v113);
      v133(v135, v136);
      (*(v129 + 8))(v113, v73);
      (*(v108 + 8))(v106, v109);
      (*(v125 + 8))(v124, v127);
      return v137;
    }

    outlined destroy of IntentApplication?(v77, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      OUTLINED_FUNCTION_28_3();
      v81 = v76;
      v82 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v83 = swift_slowAlloc();
      v139 = v83;
      *v82 = 136315138;
      v81(v126, &v137[v72], v128);
      String.init<A>(describing:)();
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v82 + 4) = v84;
      OUTLINED_FUNCTION_44_4();
      _os_log_impl(v85, v86, v87, v88, v89, v90);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      v91 = OUTLINED_FUNCTION_4_6();
      MEMORY[0x25F8A1050](v91);
    }

    v67 = v136;
    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    swift_allocError();
    *v92 = 1;
    swift_willThrow();
    v69 = v135;
  }

  v133(v69, v67);
  v93 = *(v137 + 3);

  if (!v71)
  {
    (*(v129 + 8))(&v137[OBJC_IVAR____TtC10OmniSearch28PQAVerificationModelOnDevice_resourceBundleQuery], v128);
  }

  v94 = *(*v137 + 48);
  v95 = *(*v137 + 52);
  swift_deallocPartialClassInstance();
  return v137;
}

uint64_t PQAVerificationModelOnDevice.prewarm(urgency:)()
{
  v1 = v0;
  v2 = type metadata accessor for PrewarmUrgency();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logging.answerSynthesis);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_25D85C000, v12, v13, "Prewarming PQASynthesisModelOnDevice model...", v14, 2u);
    v15 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v15);
  }

  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v16 = *(v1 + 32);

  static PrewarmUrgency.default.getter();
  TokenGenerator.prewarm(urgency:)();

  return (*(v5 + 8))(v10, v2);
}

Swift::String __swiftcall PQAVerificationModelOnDevice.promptTemplateID()()
{
  v0 = 0x800000025DBEFC50;
  v1 = 0xD00000000000002BLL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

void PQAVerificationModelOnDevice.createPromptTemplate()()
{
  v1 = type metadata accessor for ResourceBundleQuery();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC10OmniSearch28PQAVerificationModelOnDevice_resourceBundleQuery;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  (*(v4 + 16))(v9, v0 + v10, v1);
  lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
  v11 = swift_allocError();
  *v12 = 2;
  specialized AnswerSynthesisModelProtocol.createPromptTemplate(with:creationError:)(v9, v11, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  (*(v4 + 8))(v9, v1);
}

uint64_t PQAVerificationModelOnDevice.verifySearchResults(request:clientId:answerSynthesisMetrics:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v1[37] = v4;
  v1[38] = v0;
  v1[35] = v5;
  v1[36] = v6;
  v7 = type metadata accessor for Date();
  v1[39] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[40] = v8;
  v10 = *(v9 + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  memcpy(v1 + 2, v3, 0x50uLL);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v16 = v0;
  static Task<>.checkCancellation()();
  memcpy(v15, (v0 + 16), sizeof(v15));
  *(v0 + 344) = PQAVerificationRequest.userPrompt()();
  if (v1)
  {
    v3 = *(v0 + 328);
    v2 = *(v0 + 336);

    OUTLINED_FUNCTION_62();

    return v4(0);
  }

  v6 = *(v0 + 296);
  v7 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.modify();
  v9 = v8;
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    OUTLINED_FUNCTION_34_5();
    result = String.count.getter();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      v15[0] = 0;
      MEMORY[0x25F89E580](result);
      goto LABEL_9;
    }

    __break(1u);
    return result;
  }

LABEL_9:
  v7(v0 + 216, 0);
  v11 = *(v0 + 336);
  Date.init()();
  *(v0 + 200) = &type metadata for PQAVerificationRequest;
  *(v0 + 208) = lazy protocol witness table accessor for type PQAVerificationRequest and conformance PQAVerificationRequest();
  v12 = swift_allocObject();
  *(v0 + 176) = v12;
  memcpy((v12 + 16), (v0 + 16), 0x50uLL);
  outlined init with copy of PQAVerificationRequest(v0 + 16, v0 + 96);
  v13 = swift_task_alloc();
  *(v0 + 360) = v13;
  *v13 = v0;
  v13[1] = PQAVerificationModelOnDevice.verifySearchResults(request:clientId:answerSynthesisMetrics:);
  v14 = *(v0 + 304);

  return PQAVerificationModelOnDevice.execute(request:userPrompt:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v6 = *(v5 + 360);
  *v4 = *v1;
  v3[46] = v7;
  v3[47] = v8;
  v3[48] = v0;

  if (v0)
  {
    v9 = v3[44];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 22);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = v0[37];
  v2 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
  v4 = v3;
  v5 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    result = (*(*static MetricsLogger.shared + 312))(v0[42]);
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.pqaModelInferenceTime.setter();
  }

  v2(v0 + 31, 0);
  v7 = v0[47];
  v9 = v0[43];
  v8 = v0[44];
  v10 = v0[40];
  v11 = v0[41];
  v39 = v0[46];
  v40 = v0[39];
  v13 = v0[35];
  v12 = v0[36];
  v15 = v0[2];
  v14 = v0[3];

  Date.init()();
  specialized SearchToolBiomeEvent.donate(timestamp:requestId:query:)(v11, v13, v12, v15, v14, v9, v8, v39, v7);

  v16 = *(v10 + 8);
  v16(v11, v40);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v17 = v0[47];
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logging.answerSynthesis);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = v0[46];
    v21 = v0[47];
    OUTLINED_FUNCTION_28_3();
    v23 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v41 = swift_slowAlloc();
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v24, v25, v26, v27, v28, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v30 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v30);
  }

  v31 = v0[46];
  v32 = v0[47];
  v34 = v0[41];
  v33 = v0[42];
  v35 = v0[39];
  v36 = String.oms_BOOLeanValue.getter();

  v37 = OUTLINED_FUNCTION_34_5();
  (v16)(v37);

  OUTLINED_FUNCTION_62();

  return v38(v36 & 1);
}

{
  OUTLINED_FUNCTION_48();
  (*(v0[40] + 8))(v0[42], v0[39]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  v1 = v0[48];
  v3 = v0[41];
  v2 = v0[42];

  OUTLINED_FUNCTION_62();

  return v4(0);
}

uint64_t PQAVerificationModelOnDevice.execute(request:userPrompt:)()
{
  OUTLINED_FUNCTION_48();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v1[21] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64) + 15;
  v1[22] = swift_task_alloc();
  v7 = type metadata accessor for Prompt();
  v1[23] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[24] = v8;
  v10 = *(v9 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v11 = type metadata accessor for PromptTemplate();
  v1[27] = v11;
  OUTLINED_FUNCTION_21(v11);
  v1[28] = v12;
  v14 = *(v13 + 64) + 15;
  v1[29] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

{
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logging.answerSynthesis);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[18];
    v5 = v0[19];
    OUTLINED_FUNCTION_28_3();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v35 = swift_slowAlloc();
    *v7 = 136642819;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v8, v9, v10, v11, v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050](v14);
    v15 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v15);
  }

  v16 = v0[29];
  v17 = v0[20];
  PQAVerificationModelOnDevice.createPromptTemplate()();
  v18 = v0[22];
  v20 = v0[18];
  v19 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  *(inited + 32) = 0x6D6F725072657375;
  *(inited + 40) = 0xEA00000000007470;
  *(inited + 48) = v20;
  *(inited + 56) = v19;

  v0[30] = Dictionary.init(dictionaryLiteral:)();
  PQAVerificationModelOnDevice.createOverridePrompt()(v18);
  v23 = v0[22];
  v22 = v0[23];
  if (__swift_getEnumTagSinglePayload(v23, 1, v22) == 1)
  {
    v24 = v0[29];
    v25 = v0[25];
    v26 = v0[21];
    outlined destroy of IntentApplication?(v23, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    *(swift_task_alloc() + 16) = v24;
    Prompt.init(_:)();

    v27 = swift_task_alloc();
    v0[33] = v27;
    *v27 = v0;
    v27[1] = PQAVerificationModelOnDevice.execute(request:userPrompt:);
    v28 = OUTLINED_FUNCTION_31_7(v0[25]);
    v31 = v26;
  }

  else
  {
    v32 = v0[21];
    (*(v0[24] + 32))(v0[26], v23, v22);
    v33 = swift_task_alloc();
    v0[31] = v33;
    *v33 = v0;
    v33[1] = PQAVerificationModelOnDevice.execute(request:userPrompt:);
    v28 = OUTLINED_FUNCTION_31_7(v0[26]);
    v31 = v32;
  }

  return closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:)(v28, v29, v30, v31);
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v3[10] = v1;
  v3[11] = v5;
  v3[12] = v6;
  v3[13] = v0;
  OUTLINED_FUNCTION_25_3();
  v8 = *(v7 + 248);
  *v9 = *v1;
  *(v10 + 256) = v0;

  OUTLINED_FUNCTION_25_3();
  v12 = *(v11 + 240);

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v6 = v0[25];
  v7 = v0[22];
  (*(v0[24] + 8))(v0[26], v0[23]);
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_32_5();
  v8 = OUTLINED_FUNCTION_107();

  return v9(v8);
}

{
  OUTLINED_FUNCTION_78();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  (*(v0[24] + 8))(v0[26], v0[23]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_107();
  v6(v5);
  v7 = v0[32];
  v8 = v0[29];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[22];

  OUTLINED_FUNCTION_127();

  return v12();
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v3[14] = v1;
  v3[15] = v5;
  v3[16] = v6;
  v3[17] = v0;
  OUTLINED_FUNCTION_25_3();
  v8 = *(v7 + 264);
  *v9 = *v1;
  *(v10 + 272) = v0;

  OUTLINED_FUNCTION_25_3();
  v12 = *(v11 + 240);

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[22];
  (*(v0[24] + 8))(v0[25], v0[23]);
  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_54_0();
  v10(v9);

  OUTLINED_FUNCTION_32_5();
  v11 = OUTLINED_FUNCTION_107();

  return v12(v11);
}

{
  OUTLINED_FUNCTION_78();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  (*(v0[24] + 8))(v0[25], v0[23]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_107();
  v6(v5);
  v7 = v0[34];
  v8 = v0[29];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[22];

  OUTLINED_FUNCTION_127();

  return v12();
}

uint64_t specialized SearchToolBiomeEvent.donate(timestamp:requestId:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49[6] = a6;
  v49[7] = a7;
  v49[8] = a8;
  v49[9] = a9;
  result = AFIsInternalInstall();
  if (result)
  {
    result = #_hasSymbol query for SearchToolTranscript();
    if (result)
    {
      v11 = type metadata accessor for JSONEncoder();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      lazy protocol witness table accessor for type VerificationModelExecution and conformance VerificationModelExecution();
      v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v16 = v15;

      v47 = type metadata accessor for SearchToolTranscript();
      v48 = v44;
      v46 = *(v47 - 8);
      v17 = *(v46 + 64);
      MEMORY[0x28223BE20](v47);
      v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      SearchToolTranscript.init()();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v44[1] = v44;
      v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v20 - 8);
      v23 = v44 - v22;
      v24 = type metadata accessor for Date();
      v45 = 0;
      v25 = v14;
      v26 = v16;
      v27 = v24;
      (*(*(v24 - 8) + 16))(v23, a1, v24);
      v28 = v27;
      v29 = v26;
      v30 = v25;
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v28);
      SearchToolTranscript.absoluteTimestamp.setter();

      v31 = v19;
      SearchToolTranscript.requestId.setter();

      SearchToolTranscript.query.setter();
      SearchToolTranscript.eventType.setter();
      outlined copy of Data._Representation(v25, v29);
      SearchToolTranscript.data.setter();
      type metadata accessor for InternalLibrary.Streams.SearchTool.Transcript();
      lazy protocol witness table accessor for type InternalLibrary.Streams.SearchTool.Transcript and conformance InternalLibrary.Streams.SearchTool.Transcript();
      v32 = v45;
      static StreamResource.source()();
      if (v32)
      {
        v34 = v46;
        v33 = v47;
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, static Logging.search);
        v36 = v32;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = v29;
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138412290;
          v42 = v32;
          v43 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 4) = v43;
          *v41 = v43;
          _os_log_impl(&dword_25D85C000, v37, v38, "Failed to send transcript event: %@", v40, 0xCu);
          outlined destroy of IntentApplication?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x25F8A1050](v41, -1, -1);
          MEMORY[0x25F8A1050](v40, -1, -1);

          outlined consume of Data._Representation(v30, v39);
        }

        else
        {
          outlined consume of Data._Representation(v30, v29);
        }

        return (*(v34 + 8))(v31, v33);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v49, v49[3]);
        dispatch thunk of Source.sendEvent(_:)();
        outlined consume of Data._Representation(v30, v29);
        (*(v46 + 8))(v19, v47);
        return __swift_destroy_boxed_opaque_existential_1Tm(v49);
      }
    }
  }

  return result;
}

{
  v58[6] = a6;
  v58[7] = a7;
  v58[8] = a8;
  v58[9] = a9;
  result = AFIsInternalInstall();
  if (result)
  {
    result = #_hasSymbol query for SearchToolTranscript();
    if (result)
    {
      v10 = type metadata accessor for JSONEncoder();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      lazy protocol witness table accessor for type AnswerSynthesisModelExecution and conformance AnswerSynthesisModelExecution();
      v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v15 = v14;

      v56 = type metadata accessor for SearchToolTranscript();
      v57 = v53;
      v16 = OUTLINED_FUNCTION_14(v56);
      v55 = v17;
      v19 = *(v18 + 64);
      MEMORY[0x28223BE20](v16);
      OUTLINED_FUNCTION_36();
      v22 = v21 - v20;
      SearchToolTranscript.init()();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v53[1] = v53;
      v24 = OUTLINED_FUNCTION_114(v23);
      v26 = *(v25 + 64);
      MEMORY[0x28223BE20](v24);
      v28 = v53 - v27;
      v29 = type metadata accessor for Date();
      v54 = 0;
      v30 = v13;
      v31 = v15;
      v32 = v29;
      OUTLINED_FUNCTION_17(v29);
      v34 = *(v33 + 16);
      v35 = OUTLINED_FUNCTION_107();
      v36(v35);
      v37 = v32;
      v38 = v31;
      v39 = v30;
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v37);
      SearchToolTranscript.absoluteTimestamp.setter();

      v40 = v22;
      SearchToolTranscript.requestId.setter();

      SearchToolTranscript.query.setter();
      SearchToolTranscript.eventType.setter();
      outlined copy of Data._Representation(v30, v38);
      SearchToolTranscript.data.setter();
      type metadata accessor for InternalLibrary.Streams.SearchTool.Transcript();
      lazy protocol witness table accessor for type InternalLibrary.Streams.SearchTool.Transcript and conformance InternalLibrary.Streams.SearchTool.Transcript();
      v41 = v54;
      static StreamResource.source()();
      if (v41)
      {
        v43 = v55;
        v42 = v56;
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Logging.search);
        v45 = v41;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v46, v47))
        {
          OUTLINED_FUNCTION_28_3();
          v48 = v38;
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *v49 = 138412290;
          v51 = v41;
          v52 = _swift_stdlib_bridgeErrorToNSError();
          *(v49 + 4) = v52;
          *v50 = v52;
          _os_log_impl(&dword_25D85C000, v46, v47, "Failed to send transcript event: %@", v49, 0xCu);
          outlined destroy of IntentApplication?(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();

          outlined consume of Data._Representation(v39, v48);
        }

        else
        {
          outlined consume of Data._Representation(v39, v38);
        }

        return (*(v43 + 8))(v40, v42);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v58, v58[3]);
        dispatch thunk of Source.sendEvent(_:)();
        outlined consume of Data._Representation(v39, v38);
        (*(v55 + 8))(v22, v56);
        return __swift_destroy_boxed_opaque_existential_1Tm(v58);
      }
    }
  }

  return result;
}

void PQAVerificationModelOnDevice.createOverridePrompt()(uint64_t a1@<X8>)
{
  if (!AFIsInternalInstall() || (type metadata accessor for NSUserDefaults(), static NSUserDefaults.pqaVerificationPromptTemplateOverride.getter(), !v3))
  {
    v17 = type metadata accessor for Prompt();
    v18 = a1;
    v19 = 1;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
    return;
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.answerSynthesis);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = "NNSStringCompareOptions" + 17;
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_28_3();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v20 = swift_slowAlloc();
    *v8 = 136315138;
    OUTLINED_FUNCTION_30_5();
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v5, v6, "Using override prompt template for PQA Verification: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v7 = "ptions";
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  OUTLINED_FUNCTION_30_5();
  Prompt.init(template:)();
  if (!v1)
  {
    v17 = type metadata accessor for Prompt();
    v18 = a1;
    v19 = 0;
    goto LABEL_12;
  }

  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_28_3();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v21 = swift_slowAlloc();
    *v12 = *(v7 + 46);
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v12 + 4) = v14;
    _os_log_impl(&dword_25D85C000, v10, v11, "Unable to create override prompt for PQAVerification model: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v15 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v15);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
  swift_allocError();
  *v16 = 3;
  swift_willThrow();
}

uint64_t PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:);

  return closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:)(v5, v3, v0, v6);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_52();
  v7 = *(v6 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_11();
  *v9 = v8;

  OUTLINED_FUNCTION_32_5();
  if (!v0)
  {
    v10 = v5;
    v11 = v3;
  }

  return v12(v10, v11);
}

uint64_t closure #1 in PQAVerificationModelOnDevice.execute(request:userPrompt:)(uint64_t a1)
{
  v2 = type metadata accessor for Prompt();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PromptTemplate();
  v16[3] = v8;
  v16[4] = lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x277D0E698]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v16);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1Tm, a1, v8);
  v10 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v11 = *(v3 + 72);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25DBC8180;
  (*(v4 + 16))(v13 + v12, v7, v2);
  MEMORY[0x25F89F150](v13, v2, v10);

  return (*(v4 + 8))(v7, v2);
}

char *PQAVerificationModelOnDevice.synthesizeWithPrompt_generateGenerativeFunctionOverride()()
{
  v1 = type metadata accessor for BindableConfiguration();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  v10 = type metadata accessor for CompletionPrompt();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_109();
  v17 = MEMORY[0x28223BE20](v16);
  v37 = v34 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v34 - v20;
  MEMORY[0x28223BE20](v19);
  v38 = v34 - v22;
  CompletionPrompt.init(_:)();
  v39 = v0;
  OUTLINED_FUNCTION_23_3();
  BindableConfiguration.init(name:)();
  OUTLINED_FUNCTION_11_2();
  lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(v23, v24);
  OUTLINED_FUNCTION_21_4();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v25 = *(v4 + 8);
  v35 = v1;
  v36 = v4 + 8;
  v25(v9, v1);
  v26 = *(v13 + 8);
  v34[1] = v13 + 8;
  v27 = OUTLINED_FUNCTION_107();
  v26(v27);
  OUTLINED_FUNCTION_23_3();
  BindableConfiguration.init(name:)();
  OUTLINED_FUNCTION_21_4();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v25(v9, v1);
  v28 = OUTLINED_FUNCTION_107();
  v26(v28);
  OUTLINED_FUNCTION_23_3();
  BindableConfiguration.init(name:)();
  OUTLINED_FUNCTION_21_4();
  v30 = v29;
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v25(v9, v35);
  (v26)(v21, v10);
  v31 = v39;
  v32 = static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (!v31)
  {
    v21 = v32;
  }

  (v26)(v30, v10);
  return v21;
}

uint64_t closure #1 in PQAVerificationModelOnDevice.synthesizeWithPrompt_generateGenerativeFunctionOverride()()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = type metadata accessor for BindableVariable();
  v12[4] = MEMORY[0x277D42E60];
  __swift_allocate_boxed_opaque_existential_1Tm(v12);
  BindableVariable.init(name:)();
  v6 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v7 = *(v1 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25DBC8180;
  (*(v2 + 16))(v9 + v8, v5, v0);
  MEMORY[0x25F89F150](v9, v0, v6);

  return (*(v2 + 8))(v5, v0);
}

uint64_t closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[41] = a3;
  v4[42] = a4;
  v4[39] = a1;
  v4[40] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMR);
  v4[43] = v5;
  v6 = *(v5 - 8);
  v4[44] = v6;
  v7 = *(v6 + 64) + 15;
  v4[45] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR) - 8) + 64) + 15;
  v4[46] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMR);
  v4[47] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[48] = swift_task_alloc();
  v11 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v4[49] = v11;
  v12 = *(v11 - 8);
  v4[50] = v12;
  v13 = *(v12 + 64) + 15;
  v4[51] = swift_task_alloc();
  v14 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt();
  v4[52] = v14;
  v15 = *(v14 - 8);
  v4[53] = v15;
  v16 = *(v15 + 64) + 15;
  v4[54] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR) - 8) + 64) + 15;
  v4[55] = swift_task_alloc();
  v18 = type metadata accessor for FunctionIdentifier();
  v4[56] = v18;
  v19 = *(v18 - 8);
  v4[57] = v19;
  v20 = *(v19 + 64) + 15;
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v21 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v4[60] = v21;
  v22 = *(v21 - 8);
  v4[61] = v22;
  v23 = *(v22 + 64) + 15;
  v4[62] = swift_task_alloc();
  v24 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v4[63] = v24;
  v25 = *(v24 - 8);
  v4[64] = v25;
  v26 = *(v25 + 64) + 15;
  v4[65] = swift_task_alloc();
  v27 = type metadata accessor for StringResponseSanitizer();
  v4[66] = v27;
  v28 = *(v27 - 8);
  v4[67] = v28;
  v29 = *(v28 + 64) + 15;
  v4[68] = swift_task_alloc();
  v30 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v4[69] = v30;
  v31 = *(v30 - 8);
  v4[70] = v31;
  v32 = *(v31 + 64) + 15;
  v4[71] = swift_task_alloc();
  v33 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v4[72] = v33;
  v34 = *(v33 - 8);
  v4[73] = v34;
  v35 = *(v34 + 64) + 15;
  v4[74] = swift_task_alloc();
  v36 = type metadata accessor for StringRenderedPromptSanitizer();
  v4[75] = v36;
  v37 = *(v36 - 8);
  v4[76] = v37;
  v38 = *(v37 + 64) + 15;
  v4[77] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v4[78] = v39;
  v40 = *(v39 - 8);
  v4[79] = v40;
  v41 = *(v40 + 64) + 15;
  v4[80] = swift_task_alloc();
  v42 = type metadata accessor for CompletionPrompt();
  v4[81] = v42;
  v43 = *(v42 - 8);
  v4[82] = v43;
  v44 = *(v43 + 64) + 15;
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:), 0, 0);
}

uint64_t closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:)()
{
  v68 = *(v0 + 696);
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v47 = *(v0 + 680);
  v48 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v55 = *(v0 + 608);
  v56 = *(v0 + 688);
  v57 = *(v0 + 600);
  v7 = *(v0 + 584);
  v49 = *(v0 + 592);
  v50 = *(v0 + 576);
  v51 = *(v0 + 568);
  v52 = *(v0 + 560);
  v53 = *(v0 + 552);
  v54 = *(v0 + 616);
  v64 = *(v0 + 544);
  v65 = *(v0 + 536);
  v66 = *(v0 + 528);
  v58 = *(v0 + 520);
  v59 = *(v0 + 512);
  v60 = *(v0 + 504);
  v61 = *(v0 + 496);
  v62 = *(v0 + 488);
  v63 = *(v0 + 480);
  v69 = *(v0 + 472);
  v67 = *(v0 + 440);
  v8 = *(v0 + 312);
  v46 = *(v0 + 320);
  *(swift_task_alloc() + 16) = v8;
  CompletionPrompt.init(_:)();

  static PQAVerificationModelOnDevice.defaultVerificationModelParameter.getter();
  *(v0 + 936) = *MEMORY[0x277D0E548];
  v9 = *(v5 + 104);
  *(v0 + 704) = v9;
  *(v0 + 712) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v4);
  OUTLINED_FUNCTION_11_2();
  *(v0 + 720) = lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(v10, v11);
  OUTLINED_FUNCTION_29_5();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v12 = *(v5 + 8);
  *(v0 + 728) = v12;
  *(v0 + 736) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v4, v6);
  v13 = *(v48 + 8);
  *(v0 + 744) = v13;
  *(v0 + 752) = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v2, v3);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v46);
  OUTLINED_FUNCTION_29_5();
  GenerativeConfigurationProtocol.bindVariables(_:)();

  v14 = OUTLINED_FUNCTION_30_5();
  (v13)(v14);
  *(v0 + 760) = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  *(v0 + 940) = *MEMORY[0x277D0E5C0];
  v19 = *(v7 + 104);
  *(v0 + 768) = v19;
  *(v0 + 776) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v19(v49);
  *(v0 + 784) = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  *(v0 + 944) = *MEMORY[0x277D0E5C8];
  v24 = *(v52 + 104);
  *(v0 + 792) = v24;
  *(v0 + 800) = (v52 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v24(v51);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  OUTLINED_FUNCTION_29_5();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v25 = *(v55 + 8);
  *(v0 + 808) = v25;
  *(v0 + 816) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v54, v57);
  v13(v47, v3);
  *(v0 + 824) = type metadata accessor for StringResponseSanitizer.Overrides();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  *(v0 + 948) = *MEMORY[0x277D0E578];
  v30 = *(v59 + 104);
  *(v0 + 832) = v30;
  *(v0 + 840) = (v59 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v30(v58);
  *(v0 + 848) = type metadata accessor for StringResponseSanitizer.Guardrails();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  *(v0 + 952) = *MEMORY[0x277D0E580];
  v35 = *(v62 + 104);
  *(v0 + 856) = v35;
  *(v0 + 864) = (v62 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v35(v61);
  StringResponseSanitizer.init(overrides:guardrails:)();
  OUTLINED_FUNCTION_29_5();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v36 = *(v65 + 8);
  *(v0 + 872) = v36;
  *(v0 + 880) = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v64, v66);
  v37 = OUTLINED_FUNCTION_34_5();
  (v13)(v37);
  type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v42 = *(MEMORY[0x277D0E538] + 4);
  v43 = swift_task_alloc();
  *(v0 + 888) = v43;
  *v43 = v0;
  v43[1] = closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:);
  v44 = *(v0 + 368);

  return MEMORY[0x282166B58](v44, 0xD00000000000001CLL, 0x800000025DBEFEA0);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 888);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 896) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v1 = *(v0 + 368);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatMR);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    outlined destroy of IntentApplication?(v1, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR);
  }

  else
  {
    v94 = *(v0 + 872);
    v95 = *(v0 + 880);
    v88 = *(v0 + 856);
    v89 = *(v0 + 864);
    v87 = *(v0 + 952);
    v84 = *(v0 + 840);
    v85 = *(v0 + 848);
    v83 = *(v0 + 832);
    v82 = *(v0 + 948);
    v80 = *(v0 + 824);
    v77 = *(v0 + 808);
    v78 = *(v0 + 816);
    v73 = *(v0 + 792);
    v74 = *(v0 + 800);
    v72 = *(v0 + 944);
    v70 = *(v0 + 784);
    v68 = *(v0 + 776);
    v66 = *(v0 + 768);
    v65 = *(v0 + 940);
    v63 = *(v0 + 760);
    v102 = *(v0 + 744);
    v103 = *(v0 + 752);
    v96 = *(v0 + 728);
    v97 = *(v0 + 736);
    v92 = *(v0 + 704);
    v93 = *(v0 + 712);
    v91 = *(v0 + 936);
    v99 = *(v0 + 688);
    v100 = *(v0 + 696);
    v101 = *(v0 + 656);
    v52 = *(v2 + 48);
    v98 = *(v0 + 648);
    v79 = *(v0 + 640);
    v81 = *(v0 + 624);
    v61 = *(v0 + 616);
    v62 = *(v0 + 600);
    v57 = *(v0 + 592);
    v58 = *(v0 + 576);
    v59 = *(v0 + 568);
    v60 = *(v0 + 552);
    v75 = *(v0 + 544);
    v76 = *(v0 + 528);
    v64 = *(v0 + 520);
    v67 = *(v0 + 504);
    v69 = *(v0 + 496);
    v71 = *(v0 + 480);
    v3 = *(v0 + 456);
    v53 = *(v0 + 464);
    v54 = *(v0 + 448);
    v55 = *(v0 + 472);
    v104 = *(v0 + 432);
    v90 = *(v0 + 424);
    v51 = *(v0 + 408);
    v4 = *(v0 + 400);
    v5 = *(v0 + 376);
    v6 = *(v0 + 384);
    v56 = *(v0 + 312);
    v49 = *(v5 + 48);
    v50 = *(v0 + 392);
    v7 = *(v90 + 32);
    v8 = *(v0 + 416);
    v86 = v8;
    v7(v6, v1);
    v9 = *(v4 + 32);
    v9(v6 + v49, v1 + v52, v50);
    v10 = *(v5 + 48);
    (v7)(v104, v6, v8);
    v9(v51, v6 + v10, v50);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v3 + 8))(v55, v54);
    v11 = *(v3 + 32);
    v12 = OUTLINED_FUNCTION_107();
    v13(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMd, &_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBC8180;
    *(inited + 32) = 0x74706D6F7270;
    *(inited + 40) = 0xE600000000000000;
    v15 = type metadata accessor for Prompt();
    v16 = MEMORY[0x277D42E20];
    *(inited + 72) = v15;
    *(inited + 80) = v16;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1Tm, v56, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A25ComponentValueConvertible_pMd, &_s9PromptKit0A25ComponentValueConvertible_pMR);
    Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_25DBC8400;
    *(v18 + 32) = 0xD00000000000007BLL;
    *(v18 + 40) = 0x800000025DBEFDA0;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v63);
    v66(v57, v65, v58);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v70);
    v73(v59, v72, v60);
    StringRenderedPromptSanitizer.init(overrides:guardrails:)();
    *(v18 + 72) = v62;
    __swift_allocate_boxed_opaque_existential_1Tm((v18 + 48));
    static _OverrideConfigurationHelper.renderedPromptSanitizer(_:)();
    v25 = OUTLINED_FUNCTION_54_0();
    v77(v25);
    *(v18 + 80) = 0xD000000000000075;
    *(v18 + 88) = 0x800000025DBEFE20;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v80);
    v83(v64, v82, v67);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v85);
    v88(v69, v87, v71);
    StringResponseSanitizer.init(overrides:guardrails:)();
    *(v18 + 120) = v76;
    __swift_allocate_boxed_opaque_existential_1Tm((v18 + 96));
    static _OverrideConfigurationHelper.responseSanitizer(_:)();
    v32 = OUTLINED_FUNCTION_54_0();
    v94(v32);
    *(v18 + 128) = 0xD000000000000061;
    *(v18 + 136) = 0x800000025DBEFD30;
    static PQAVerificationModelOnDevice.defaultVerificationModelParameter.getter();
    v92(v79, v91, v81);
    *(v18 + 168) = type metadata accessor for SamplingParameters();
    __swift_allocate_boxed_opaque_existential_1Tm((v18 + 144));
    static _OverrideConfigurationHelper.samplingParameters(_:)();
    v96(v79, v81);
    Dictionary.init(dictionaryLiteral:)();
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingVariables:bindingConfigurations:)();

    (*(v4 + 8))(v51, v50);
    (*(v90 + 8))(v104, v86);
    v102(v100, v98);
    (*(v101 + 32))(v100, v99, v98);
  }

  v33 = *(v0 + 752);
  v34 = *(v0 + 744);
  v35 = *(v0 + 720);
  v36 = *(v0 + 696);
  v37 = *(v0 + 688);
  v38 = *(v0 + 648);
  v39 = *(v0 + 472);
  v40 = *(v0 + 360);
  v41 = *(v0 + 328);
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v0 + 304) = *(v41 + 32);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:)();
  v42 = OUTLINED_FUNCTION_54_0();
  v34(v42);
  v43 = *(MEMORY[0x277D0D8C8] + 4);
  v44 = swift_task_alloc();
  *(v0 + 904) = v44;
  v45 = lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(&lazy protocol witness table cache variable for type TokenGenerator and conformance TokenGenerator, MEMORY[0x277D71A98]);
  *v44 = v0;
  v44[1] = closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:);
  v46 = *(v0 + 360);
  v47 = *(v0 + 344);

  return MEMORY[0x282165A58](v47, v45);
}

{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[81];
  v13 = v0[80];
  v14 = v0[77];
  v15 = v0[74];
  v16 = v0[71];
  v17 = v0[68];
  v18 = v0[65];
  v19 = v0[62];
  v20 = v0[58];
  v21 = v0[55];
  v22 = v0[54];
  v23 = v0[51];
  v24 = v0[48];
  v25 = v0[46];
  v26 = v0[45];
  (*(v0[57] + 8))(v0[59], v0[56]);
  v2(v3, v8);

  OUTLINED_FUNCTION_32_5();
  v10 = v0[116];
  v11 = v0[115];

  return v9(v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_16_6();
  v3(v2);
  v4 = OUTLINED_FUNCTION_107();
  v1(v4);
  v5 = *(v0 + 896);
  OUTLINED_FUNCTION_3_5();

  OUTLINED_FUNCTION_127();

  return v6();
}

{
  v2 = OUTLINED_FUNCTION_16_6();
  v3(v2);
  v4 = OUTLINED_FUNCTION_107();
  v1(v4);
  v5 = *(v0 + 912);
  OUTLINED_FUNCTION_3_5();

  OUTLINED_FUNCTION_127();

  return v6();
}

uint64_t closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  v9 = v6[113];
  *v8 = *v3;
  v7[114] = v2;

  v10 = v6[45];
  v11 = v6[44];
  v12 = v6[43];
  if (!v2)
  {
    v7[115] = a2;
    v7[116] = a1;
  }

  (*(v11 + 8))(v10, v12);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t closure #1 in closure #2 in PQAVerificationModelOnDevice.synthesizeWithPrompt(_:bindings:)()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v7 = *(v1 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25DBC8180;
  (*(v2 + 16))(v9 + v8, v5, v0);
  MEMORY[0x25F89F150](v9, v0, v6);

  return (*(v2 + 8))(v5, v0);
}

uint64_t PQAVerificationModelOnDevice.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC10OmniSearch28PQAVerificationModelOnDevice_resourceBundleQuery;
  v4 = type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17(v4);
  (*(v5 + 8))(v0 + v3);
  return v0;
}

uint64_t PQAVerificationModelOnDevice.__deallocating_deinit()
{
  PQAVerificationModelOnDevice.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PQAVerificationModelProtocol.verifySearchResults(request:clientId:answerSynthesisMetrics:) in conformance PQAVerificationModelOnDevice()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for PQAVerificationModelProtocol.verifySearchResults(request:clientId:answerSynthesisMetrics:) in conformance PQAVerificationModelOnDevice;

  return PQAVerificationModelOnDevice.verifySearchResults(request:clientId:answerSynthesisMetrics:)();
}

{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;

  OUTLINED_FUNCTION_62();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t protocol witness for AnswerSynthesisModelProtocol.execute(request:userPrompt:) in conformance PQAVerificationModelOnDevice()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnswerSynthesisModelProtocol.execute(request:userPrompt:) in conformance PQAVerificationModelOnDevice;

  return PQAVerificationModelOnDevice.execute(request:userPrompt:)();
}

unint64_t lazy protocol witness table accessor for type PQAVerificationRequest and conformance PQAVerificationRequest()
{
  result = lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest;
  if (!lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest;
  if (!lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest;
  if (!lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PQAVerificationRequest and conformance PQAVerificationRequest);
  }

  return result;
}

uint64_t type metadata accessor for PQAVerificationModelOnDevice()
{
  result = type metadata singleton initialization cache for PQAVerificationModelOnDevice;
  if (!type metadata singleton initialization cache for PQAVerificationModelOnDevice)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PQAVerificationModelOnDevice()
{
  result = type metadata accessor for ResourceBundleQuery();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL #_hasSymbol query for SearchToolTranscript()
{
  if (MEMORY[0x277D211E0])
  {
    v0 = MEMORY[0x277D211E8] == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0 && MEMORY[0x277D211D8] != 0 && MEMORY[0x277D211F0] != 0 && MEMORY[0x277D211D0] != 0 && MEMORY[0x277D211C8] != 0 && MEMORY[0x277D211F8] != 0;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisModelExecution and conformance AnswerSynthesisModelExecution()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelExecution and conformance AnswerSynthesisModelExecution;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelExecution and conformance AnswerSynthesisModelExecution)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelExecution and conformance AnswerSynthesisModelExecution);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t lazy protocol witness table accessor for type InternalLibrary.Streams.SearchTool.Transcript and conformance InternalLibrary.Streams.SearchTool.Transcript()
{
  result = lazy protocol witness table cache variable for type InternalLibrary.Streams.SearchTool.Transcript and conformance InternalLibrary.Streams.SearchTool.Transcript;
  if (!lazy protocol witness table cache variable for type InternalLibrary.Streams.SearchTool.Transcript and conformance InternalLibrary.Streams.SearchTool.Transcript)
  {
    type metadata accessor for InternalLibrary.Streams.SearchTool.Transcript();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InternalLibrary.Streams.SearchTool.Transcript and conformance InternalLibrary.Streams.SearchTool.Transcript);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VerificationModelExecution and conformance VerificationModelExecution()
{
  result = lazy protocol witness table cache variable for type VerificationModelExecution and conformance VerificationModelExecution;
  if (!lazy protocol witness table cache variable for type VerificationModelExecution and conformance VerificationModelExecution)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerificationModelExecution and conformance VerificationModelExecution);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_5()
{
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[83];
  v7 = v0[80];
  v8 = v0[77];
  v9 = v0[74];
  v10 = v0[71];
  v11 = v0[68];
  v13 = v0[65];
  v14 = v0[62];
  v15 = v0[59];
  v16 = v0[58];
  v17 = v0[55];
  v18 = v0[54];
  v19 = v0[51];
  v20 = v0[48];
  v21 = v0[46];
  v22 = v0[45];
}

uint64_t OUTLINED_FUNCTION_16_6()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[87];
  v4 = v0[81];
  result = v0[59];
  v6 = v0[56];
  v7 = *(v0[57] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_4()
{
  result = v1;
  *(v2 - 152) = *(v0 + 8);
  return result;
}

uint64_t dispatch thunk of PQAVerificationModelProtocol.verifySearchResults(request:clientId:answerSynthesisMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = dispatch thunk of PQAVerificationModelProtocol.verifySearchResults(request:clientId:answerSynthesisMetrics:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of PQAVerificationModelProtocol.verifySearchResults(request:clientId:answerSynthesisMetrics:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_56_3();
  if (v0)
  {
    OUTLINED_FUNCTION_45_3();
  }

  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3();
  if (v0)
  {
    OUTLINED_FUNCTION_54_4();
  }

  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3();
  if (v0)
  {
    OUTLINED_FUNCTION_90_2();
  }

  else
  {
    OUTLINED_FUNCTION_15_7();
  }

  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_56_3();
  if (v0)
  {
    OUTLINED_FUNCTION_90_2();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
  }

  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_56_3();
  if (v0)
  {
    OUTLINED_FUNCTION_45_3();
  }

  else
  {
    OUTLINED_FUNCTION_130_1();
  }

  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3();
  if (v0)
  {
    OUTLINED_FUNCTION_54_4();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
  }

  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3();
  if (v0)
  {
    OUTLINED_FUNCTION_136_0();
  }

  else
  {
    OUTLINED_FUNCTION_127_1();
  }

  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3();
  if (v0)
  {
    OUTLINED_FUNCTION_21_5();
  }

  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  Hasher.init(_seed:)();
  lazy protocol witness table accessor for type FlightSnippet.Status and conformance FlightSnippet.Status();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  v1 = OUTLINED_FUNCTION_92_2();
  v0(v1);
  OUTLINED_FUNCTION_94_1();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_56_3();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_92_2();
  v0(v1);
  OUTLINED_FUNCTION_94_1();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_56_3();
  if (v0)
  {
    OUTLINED_FUNCTION_63_2();
  }

  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_92_2();
  v0(v3, v1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a2);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  OUTLINED_FUNCTION_129_1();
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_75_1();
      break;
    case 2:
      OUTLINED_FUNCTION_50_3();
      break;
    case 3:
      OUTLINED_FUNCTION_64_3();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_57_3();

  return Hasher._finalize()();
}

uint64_t specialized == infix<A>(_:_:)()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_109_1();
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v0 == v2)
  {
    v4 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_122_1();
    v4 = OUTLINED_FUNCTION_13_3();
  }

  return v4 & 1;
}

{
  v0 = 0xEA0000000000746FLL;
  OUTLINED_FUNCTION_105_1();
  v4 = v3;
  v5 = v2;
  v6 = 0xEA0000000000746FLL;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_102_1();
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_81_3();
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x6F6D6F6C73;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_61_3();
      v6 = 0xEC0000000000746FLL;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE600000000000000;
      v2 = 0x6569666C6573;
      break;
    case 2:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_98_1();
      break;
    case 3:
      v0 = 0xE500000000000000;
      v2 = 0x6F6D6F6C73;
      break;
    case 4:
      OUTLINED_FUNCTION_99_1();
      v0 = 0xEC0000006F656469;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_46_5();
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_44_6();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 1701667182;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = v1;
  }

  if (v0)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 1701667182;
  }

  if (v0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_13_3();
  }

  return v9 & 1;
}

{
  OUTLINED_FUNCTION_91_1();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_77_3(20);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_103_1();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1935896420;
      break;
    case 2:
      v4 = 0x676F6C616964;
      break;
    case 3:
      OUTLINED_FUNCTION_78_2();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_13_3();
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_128_1();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xE600000000000000;
      break;
    case 3:
      v0 = 0x800000025DBEDDF0;
      break;
    case 4:
      v0 = 0xE700000000000000;
      break;
    case 5:
      v0 = 0x800000025DBEDE10;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_101_1();
  switch(v7)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1701080941;
      break;
    case 2:
      v1 = 0xE600000000000000;
      v4 = 0x656C61636F6CLL;
      break;
    case 3:
      v4 = 0xD000000000000015;
      v1 = (v6 - 32) | 0x8000000000000000;
      break;
    case 4:
      v1 = 0xE700000000000000;
      v4 = 0x747865746E6F63;
      break;
    case 5:
      v1 = (v5 - 32) | 0x8000000000000000;
      v4 = 0xD000000000000019;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_13_3();
  }

  return v9 & 1;
}

{
  OUTLINED_FUNCTION_91_1();
  switch(v2)
  {
    case 1:
      v0 = 0xEC00000065746175;
      break;
    case 2:
      OUTLINED_FUNCTION_77_3(17);
      break;
    case 3:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_103_1();
  switch(v5)
  {
    case 1:
      v4 = 0x6769626D61736964;
      v1 = 0xEC00000065746175;
      break;
    case 2:
      OUTLINED_FUNCTION_78_2();
      break;
    case 3:
      v1 = 0xE800000000000000;
      v4 = 0x726577736E416F6ELL;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_13_3();
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_43_3();
  if (v3)
  {
    v5 = v2;
    v6 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_90_2();
    if (v3)
    {
      v5 = 0x6C617669727261;
    }

    else
    {
      v5 = 0x7275747261706564;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x6C617669727261;
    }

    else
    {
      v2 = 0x7275747261706564;
    }

    if (v1 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xE900000000000065;
    }
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_46_5();
  }

  return v8 & 1;
}

{
  StackedGridsLayout.rawValue.getter();
  v1 = v0;
  OUTLINED_FUNCTION_62_3();
  StackedGridsLayout.rawValue.getter();
  v3 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1gq5(v1, v2);

  return v3 & 1;
}

{
  OUTLINED_FUNCTION_128_1();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xE700000000000000;
      break;
    case 3:
      v0 = 0xE400000000000000;
      break;
    case 4:
      OUTLINED_FUNCTION_112_1();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_101_1();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1701603686;
      break;
    case 2:
      v1 = 0xE700000000000000;
      v4 = 0x6567617373656DLL;
      break;
    case 3:
      v1 = 0xE400000000000000;
      v4 = 1702129518;
      break;
    case 4:
      OUTLINED_FUNCTION_110_0();
      v4 = v6 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3();
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_43_3();
  if (v3)
  {
    v5 = v2;
    v6 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_54_4();
    if (v3)
    {
      v5 = 0x7265646E6573;
    }

    else
    {
      v5 = 0x7265766965636572;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x7265646E6573;
    }

    else
    {
      v2 = 0x7265766965636572;
    }

    if (v1 == 1)
    {
      v0 = 0xE600000000000000;
    }

    else
    {
      v0 = 0xE800000000000000;
    }
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_46_5();
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_44_6();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = v1;
  }

  if (v0)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_13_3();
  }

  return v9 & 1;
}

{
  OUTLINED_FUNCTION_128_1();
  switch(v2)
  {
    case 1:
      v0 = 0xE300000000000000;
      break;
    case 2:
      v0 = 0xE800000000000000;
      break;
    case 3:
      v0 = 0xE400000000000000;
      break;
    case 6:
      v0 = 0xE300000000000000;
      break;
    case 7:
      v0 = 0xE900000000000041;
      break;
    case 8:
      v0 = 0xE700000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_101_1();
  switch(v5)
  {
    case 1:
      v1 = 0xE300000000000000;
      v4 = 4473168;
      break;
    case 2:
      v1 = 0xE800000000000000;
      v4 = 0x4E414D4553524F48;
      break;
    case 3:
      v1 = 0xE400000000000000;
      v4 = 1398097242;
      break;
    case 4:
      v4 = 0x4F454D4143;
      break;
    case 5:
      v4 = 0x4843544157;
      break;
    case 6:
      v1 = 0xE300000000000000;
      v4 = 5390659;
      break;
    case 7:
      v4 = 0x544952414752414DLL;
      v1 = 0xE900000000000041;
      break;
    case 8:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_178();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_13_3();
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_135_0();
  v3 = 0x676E697070696873;
  v5 = v4;
  v6 = 0x676E697070696873;
  v7 = v0;
  switch(v5)
  {
    case 1:
      v7 = 0x800000025DBEDFB0;
      v6 = v2 + 5;
      break;
    case 2:
      v7 = 0x800000025DBEDFD0;
      v6 = 0xD000000000000010;
      break;
    case 3:
      v7 = 0x800000025DBEDFF0;
      v6 = v2 + 2;
      break;
    case 4:
      break;
    case 5:
      v7 = 0x800000025DBEE020;
      v6 = v2 + 6;
      break;
    case 6:
      v6 = 0x646574656B636974;
      v8 = 2003789907;
      goto LABEL_9;
    case 7:
      v6 = 0x45636972656E6567;
      v8 = 1953391990;
LABEL_9:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      v7 = 0x800000025DBEDF90;
      v6 = v2 + 1;
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x800000025DBEDFB0;
      v3 = v2 + 5;
      break;
    case 2:
      v0 = 0x800000025DBEDFD0;
      v3 = 0xD000000000000010;
      break;
    case 3:
      v0 = 0x800000025DBEDFF0;
      v3 = v2 + 2;
      break;
    case 4:
      break;
    case 5:
      v0 = 0x800000025DBEE020;
      v3 = v2 + 6;
      break;
    case 6:
      v3 = 0x646574656B636974;
      v9 = 2003789907;
      goto LABEL_18;
    case 7:
      v3 = 0x45636972656E6567;
      v9 = 1953391990;
LABEL_18:
      v0 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      v0 = 0x800000025DBEDF90;
      v3 = v2 + 1;
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_46_5();
  }

  return v11 & 1;
}

{
  OUTLINED_FUNCTION_32_6();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

{
  OUTLINED_FUNCTION_121_1();
  OUTLINED_FUNCTION_128_1();
  switch(v2)
  {
    case 1:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_132_0();
      break;
    case 2:
      v0 = 0xE400000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_117_1();
      break;
    case 4:
      v0 = 0xEA00000000006C65;
      break;
    case 5:
      v0 = 0xEB00000000746867;
      break;
    case 6:
      OUTLINED_FUNCTION_115_1();
      break;
    case 7:
      OUTLINED_FUNCTION_112_1();
      break;
    case 8:
      OUTLINED_FUNCTION_38_4();
      OUTLINED_FUNCTION_36_5();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_101_1();
  switch(v5)
  {
    case 1:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_126_1();
      break;
    case 2:
      v1 = 0xE400000000000000;
      v4 = 1685217635;
      break;
    case 3:
      OUTLINED_FUNCTION_121_1();
      v4 = v7 | 0x7365527400000000;
      v1 = 0xEF746E6172756174;
      break;
    case 4:
      OUTLINED_FUNCTION_121_1();
      v4 = v6 | 0x746F487400000000;
      v1 = 0xEA00000000006C65;
      break;
    case 5:
      OUTLINED_FUNCTION_121_1();
      v4 = v9 | 0x696C467400000000;
      v1 = 0xEB00000000746867;
      break;
    case 6:
      v4 = 0x7372655064726163;
      v1 = 0xEE0064496C616E6FLL;
      break;
    case 7:
      OUTLINED_FUNCTION_110_0();
      v4 = v8 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 8:
      OUTLINED_FUNCTION_34_6();
      v1 = 0xED0000746E657645;
      break;
    case 9:
      v4 = 0x616964656DLL;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_3();
  }

  return v11 & 1;
}

{
  OUTLINED_FUNCTION_178();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v5 = 0x6867696C746F7073;
      v2 = 0xE900000000000074;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v5 = 0x6C61626F6C67;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_77_3(24);
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v1 = 0x6867696C746F7073;
      v6 = 0xE900000000000074;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v1 = 0x6C61626F6C67;
      break;
    case 3:
      OUTLINED_FUNCTION_78_2();
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3();
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_32_6();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEB00000000656761;
  }

  OUTLINED_FUNCTION_32_6();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xED00007365707954;
  }

  else
  {
    v1 = 0xEB00000000737965;
  }

  OUTLINED_FUNCTION_32_6();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_32_6();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xEC00000072657773;
  }

  OUTLINED_FUNCTION_32_6();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xEB00000000644965;
  }

  OUTLINED_FUNCTION_32_6();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xEA0000000000676ELL;
  }

  else
  {
    v1 = 0xE900000000000067;
  }

  OUTLINED_FUNCTION_32_6();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xED00007365747562;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_32_6();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3();
  }

  return v8 & 1;
}

{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xE400000000000000;
      break;
    case 2:
      v2 = 0xEC000000676E6972;
      break;
    case 3:
      v2 = 0xEA00000000006E65;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_103_1();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1685217635;
      break;
    case 2:
      v4 = 0x7453686372616573;
      v1 = 0xEC000000676E6972;
      break;
    case 3:
      v4 = 0x704F646C756F6873;
      v1 = 0xEA00000000006E65;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_13_3();
  }

  return v7 & 1;
}

{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xE400000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_114_1();
      break;
    case 3:
      v2 = 0xE800000000000000;
      break;
    case 6:
      v2 = 0xE500000000000000;
      break;
    case 7:
      v2 = 0xEA00000000006E6FLL;
      break;
    case 8:
      v2 = 0xE300000000000000;
      break;
    case 9:
      v2 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_103_1();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1702125924;
      break;
    case 2:
      v4 = 0x706D6F4365746164;
      v1 = 0xEE0073746E656E6FLL;
      break;
    case 3:
      v1 = 0xE800000000000000;
      v6 = 1634891108;
      goto LABEL_16;
    case 4:
      v4 = 0x6E6F73726570;
      break;
    case 5:
      v4 = 0x7265626D756ELL;
      break;
    case 6:
      v1 = 0xE500000000000000;
      v4 = 0x616964656DLL;
      break;
    case 7:
      v4 = 0x697461676976616ELL;
      v1 = 0xEA00000000006E6FLL;
      break;
    case 8:
      v1 = 0xE300000000000000;
      v4 = 7107189;
      break;
    case 9:
      v1 = 0xE800000000000000;
      v6 = 1633906540;
LABEL_16:
      v4 = v6 | 0x6E6F697400000000;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3();
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  return specialized == infix<A>(_:_:)(a1, a2, PreExtractedSharedLink.Keys.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PreExtractedBreadcrumb.Keys.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PreExtractedContact.Keys.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PreExtractedCard.Keys.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StructuredQueryEntity.CodingKeys.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AppEntityStatus.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PreferredType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ExtractedType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, EntityUTType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ContainsType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SourceType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ReturnType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, FilterType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, EntityType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, OmniSearchOptions.CodingKeys.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SearchResultKey.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, MEMORY[0x277D37090]);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SearchToolIntentRequest.CodingKeys.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, MEMORY[0x277D374C8]);
}