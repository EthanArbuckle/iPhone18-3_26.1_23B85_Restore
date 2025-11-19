uint64_t protocol witness for SearchService.search(query:sources:allowedTypes:searchOptions:) in conformance GlobalSearchClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 168);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v16(a1, a2, a3, a4, a5);
}

Swift::Int GlobalSearchClient.QueryType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GlobalSearchClient.QueryType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  GlobalSearchClient.QueryType.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t specialized GlobalSearchClient.init(client:session:featureFlagService:xpcClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a6;
  v17 = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v15);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a6);
  *(a5 + 16) = 10;
  *(a5 + 24) = 2;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0;
  *(a5 + 88) = 0u;
  outlined init with take of ResponseOverrideMatcherProtocol(&v15, a5 + 32);
  *(a5 + 72) = a2;
  *(a5 + 80) = a3;
  swift_beginAccess();
  outlined assign with take of SearchToolGlobalSearchXPC?(a4, a5 + 88);
  swift_endAccess();
  return a5;
}

uint64_t partial apply for closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  v7 = v0[5];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_23(v9);
  *v10 = v11;
  v10[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(v4, v2, v5, v6, v8, v7);
}

void outlined consume of Result<[SearchResult], Error>?(void *a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<[SearchResult], Error>(a1, a2 & 1);
  }
}

unint64_t lazy protocol witness table accessor for type GlobalSearchClient.GlobalSearchError and conformance GlobalSearchClient.GlobalSearchError()
{
  result = lazy protocol witness table cache variable for type GlobalSearchClient.GlobalSearchError and conformance GlobalSearchClient.GlobalSearchError;
  if (!lazy protocol witness table cache variable for type GlobalSearchClient.GlobalSearchError and conformance GlobalSearchClient.GlobalSearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalSearchClient.GlobalSearchError and conformance GlobalSearchClient.GlobalSearchError);
  }

  return result;
}

id outlined copy of Result<[SearchResult], Error>?(id result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of Result<[SearchResult], Error>(result, a2 & 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlobalSearchClient.QueryType and conformance GlobalSearchClient.QueryType()
{
  result = lazy protocol witness table cache variable for type GlobalSearchClient.QueryType and conformance GlobalSearchClient.QueryType;
  if (!lazy protocol witness table cache variable for type GlobalSearchClient.QueryType and conformance GlobalSearchClient.QueryType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalSearchClient.QueryType and conformance GlobalSearchClient.QueryType);
  }

  return result;
}

uint64_t dispatch thunk of SageSearchClient.search(query:clientEntities:location:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 8);
  OUTLINED_FUNCTION_28_0();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_63(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_84(v17);

  return v20(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SearchToolGlobalSearchXPC.searchToolGlobalSearch(request:)()
{
  OUTLINED_FUNCTION_72();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 8);
  OUTLINED_FUNCTION_28_0();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_63(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_84(v11);

  return v14(v5, v3, v1);
}

uint64_t dispatch thunk of GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_7_36();
  v1 = *(v0 + 168);
  v15 = v0 + 168;
  v16 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23(v3);
  *v4 = v5;
  v4[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_63_17();
  OUTLINED_FUNCTION_61_18();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t dispatch thunk of GlobalSearchClient.search(content:entities:sources:location:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_7_36();
  v1 = *(v0 + 176);
  v15 = v0 + 176;
  v16 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_63(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_32_27(v4);
  OUTLINED_FUNCTION_63_17();
  OUTLINED_FUNCTION_61_18();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t dispatch thunk of GlobalSearchClient.rawResponseSearch(content:location:entities:useXPC:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_7_36();
  v1 = *(v0 + 184);
  v15 = v0 + 184;
  v16 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_63(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_32_27(v4);
  OUTLINED_FUNCTION_61_18();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

{
  OUTLINED_FUNCTION_78();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_52();
  v6 = *(v5 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_11();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(v4, v2);
}

_BYTE *storeEnumTagSinglePayload for GlobalSearchClient.QueryType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:)()
{
  OUTLINED_FUNCTION_75();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_23(v9);
  *v10 = v11;
  v10[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:)(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_7(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_9(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t _s10OmniSearch0B6ResultVWObTm_5(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_75();
  v1 = type metadata accessor for UserQuery();
  OUTLINED_FUNCTION_21(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  OUTLINED_FUNCTION_36_20(*(v4 + 64));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_33_24(v5);

  return closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for UserQuery();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 40);

  v11 = v0 + v3 + v1[7];
  Entity = type metadata accessor for StructuredQueryEntity(0);
  if (!__swift_getEnumTagSinglePayload(v11, 1, Entity))
  {
    v13 = type metadata accessor for DisplayRepresentation();
    OUTLINED_FUNCTION_17(v13);
    (*(v14 + 8))(v11);
    v15 = *(v11 + Entity[5]);

    v16 = *(v11 + Entity[6]);

    v17 = *(v11 + Entity[7]);

    v18 = *(v11 + Entity[8]);

    v19 = *(v11 + Entity[9]);

    v20 = *(v11 + Entity[10]);

    v21 = *(v11 + Entity[11]);

    v22 = *(v11 + Entity[12]);

    v23 = *(v11 + Entity[13]);

    v24 = *(v11 + Entity[14]);

    v25 = *(v11 + Entity[15]);

    v26 = *(v11 + Entity[16]);

    v27 = *(v11 + Entity[17]);

    v28 = *(v11 + Entity[18]);

    v29 = *(v11 + Entity[19]);

    v30 = *(v11 + Entity[20]);

    v31 = *(v11 + Entity[21]);

    v32 = *(v11 + Entity[22]);

    v33 = *(v11 + Entity[23]);

    v34 = *(v11 + Entity[24]);

    v35 = *(v11 + Entity[25]);

    v36 = *(v11 + Entity[26]);

    v37 = *(v11 + Entity[27]);

    v38 = *(v11 + Entity[28]);

    v39 = *(v11 + Entity[29]);

    v40 = *(v11 + Entity[30]);
  }

  v41 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = *(v7 + v1[8] + 8);

  v43 = v1[9];
  v44 = type metadata accessor for UtteranceNormalizer();
  OUTLINED_FUNCTION_17(v44);
  (*(v45 + 8))(v7 + v43);
  v46 = *(v0 + v41);

  return MEMORY[0x2821FE8E8](v0, v41 + 8, v2 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_75();
  v1 = type metadata accessor for UserQuery();
  OUTLINED_FUNCTION_21(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  OUTLINED_FUNCTION_36_20(*(v4 + 64));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_33_24(v5);

  return closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(v6, v7, v8, v9, v10, v11, v12);
}

void outlined consume of (GlobalSearchClient.QueryType, Result<[SearchResult], Error>)?(char a1, void *a2, char a3)
{
  if (a1 != 2)
  {
    outlined consume of Result<[SearchResult], Error>(a2, a3 & 1);
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10OmniSearch06GlobalD6ClientC9QueryTypeO_s6ResultOySayAC0dI0VGsAA_pGt_TG5(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10OmniSearch06GlobalD6ClientC9QueryTypeO_s6ResultOySayAC0dI0VGsAA_pGt_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10OmniSearch06GlobalD6ClientC9QueryTypeO_s6ResultOySayAC0dI0VGsAA_pGt_TG5TQ0_()
{
  OUTLINED_FUNCTION_78();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = v1[6];
  v5 = v1[5];
  *v3 = *v0;

  v6 = v1[3];
  v7 = *(v2 + 32);
  *v5 = *(v2 + 16);
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  OUTLINED_FUNCTION_51_16();

  return v8();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10OmniSearch06GlobalD6ClientC9QueryTypeO_s6ResultOySayAC0dI0VGsAA_pGt_TG5TA()
{
  OUTLINED_FUNCTION_78();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_23(v5);
  *v6 = v7;
  v6[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10OmniSearch06GlobalD6ClientC9QueryTypeO_s6ResultOySayAC0dI0VGsAA_pGt_TG5(v2, v4);
}

uint64_t OUTLINED_FUNCTION_2_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_31(uint64_t a1)
{
  *(a1 + 8) = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TQ1_;
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  return v1 + 72;
}

uint64_t OUTLINED_FUNCTION_14_27(uint64_t a1)
{
  *(a1 + 8) = closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:);
  v2 = *(v1 + 128);
  return 0;
}

uint64_t OUTLINED_FUNCTION_15_29@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = a1;
  *(v2 + 16) = v1;
  return (*(v3 + 8))();
}

uint64_t OUTLINED_FUNCTION_24_23(unint64_t *a1)
{

  return lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(a1, v1, v2);
}

void OUTLINED_FUNCTION_36_20(uint64_t a1@<X8>)
{
  v3 = (a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = *(v1 + v3);
  v8 = *(v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t OUTLINED_FUNCTION_51_16()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_55_15@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 40) = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_57_16(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_70_11()
{
  v2 = v0[19];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];

  return $defer #1 () in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)();
}

void OUTLINED_FUNCTION_72_13()
{

  outlined consume of Result<[SearchResult], Error>?(v1, v0);
}

id OUTLINED_FUNCTION_75_14(float a1)
{
  *v2 = a1;

  return v1;
}

void OUTLINED_FUNCTION_77_13()
{
}

void static GlobalSearchResponseProcessor.makeGeoLocations(experience:)()
{
  OUTLINED_FUNCTION_155();
  v58 = type metadata accessor for Mapspb_LocalSearchBusiness();
  v0 = OUTLINED_FUNCTION_14(v58);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_109();
  v61 = v5 - v6;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v7);
  v9 = v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_GeoObjectComponentVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_GeoObjectComponentVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  v15 = v53 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent();
  v17 = OUTLINED_FUNCTION_14(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v24 = v23 - v22;
  v25 = static GlobalSearchResponseProcessor.parseExperience(experience:)();
  v27 = MEMORY[0x277D84F90];
  if (v25)
  {
    v28 = v26;

    if (!*(v28 + 16))
    {
LABEL_19:

      goto LABEL_20;
    }

    v57 = v24;
    v65.isa = v27;
    specialized Sequence.forEach(_:)(v28, &v65);

    isa = v65.isa;
    specialized Collection.first.getter(v65.isa, v15);
    OUTLINED_FUNCTION_166(v15, 1, v16);
    if (!v30)
    {
      v36 = v57;
      (*(v19 + 32))(v57, v15, v16);
      v37 = Apple_Parsec_Siri_V2alpha_GeoObjectComponent.geoObject.getter();
      v38 = *(v37 + 16);
      if (v38)
      {
        v54 = v19;
        v55 = v16;
        v56 = isa;
        v64 = v27;
        v39 = v37;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
        v40 = v64;
        v43 = *(v2 + 16);
        v41 = v2 + 16;
        v42 = v43;
        v44 = *(v41 + 64);
        OUTLINED_FUNCTION_79();
        v53[1] = v39;
        v46 = v39 + v45;
        v59 = *(v41 + 56);
        v60 = v41;
        v47 = (v41 - 8);
        v48 = v38 - 1;
        v49 = v58;
        while (1)
        {
          v42(v9, v46, v49);
          v50 = v61;
          v42(v61, v9, v49);
          GeoLocation.init(geoObject:)(v50, v62);
          (*v47)(v9, v49);
          memcpy(v63, v62, sizeof(v63));
          v64 = v40;
          v52 = v40[2];
          v51 = v40[3];
          if (v52 >= v51 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51 > 1, v52 + 1, 1);
            v49 = v58;
            v40 = v64;
          }

          v40[2] = v52 + 1;
          memcpy(&v40[20 * v52 + 4], v63, 0x9DuLL);
          if (!v48)
          {
            break;
          }

          --v48;
          v46 += v59;
        }

        (*(v54 + 8))(v57, v55);
      }

      else
      {

        (*(v19 + 8))(v36, v16);
      }

      goto LABEL_19;
    }

    outlined destroy of IntentApplication?(v15, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_GeoObjectComponentVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_GeoObjectComponentVSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v31 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v31, static Logging.search);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_77_5(v33))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_100_3(&dword_25D85C000, v34, v35, "Geo response DomainObjectComponent missing GeoObject");
      OUTLINED_FUNCTION_42_0();
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_148();
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = 0;
  v10 = *(a1 + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent() - 8);
    closure #1 in static GlobalSearchResponseProcessor.collatePegasusComponents(components:)(a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++, a2, a3, a4);
  }

  while (!v4);
}

void specialized Sequence.forEach(_:)(uint64_t a1, NSObject *a2)
{
  v5 = 0;
  v6 = *(a1 + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent() - 8);
    closure #1 in static GlobalSearchResponseProcessor.makeGeoLocations(experience:)(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++, a2);
  }

  while (!v2);
}

void static GlobalSearchResponseProcessor.makeCard(layoutSnippet:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v69 = v2;
  v76 = type metadata accessor for Searchfoundation_Card();
  v3 = OUTLINED_FUNCTION_14(v76);
  v72 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_109();
  v71 = v7 - v8;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_2();
  v70 = v10;
  OUTLINED_FUNCTION_78_0();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v12 = OUTLINED_FUNCTION_14(v11);
  v66 = v13;
  v67 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v65 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
  v19 = OUTLINED_FUNCTION_114(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_109();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_2();
  v64 = v26;
  OUTLINED_FUNCTION_78_0();
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v28 = OUTLINED_FUNCTION_14(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_36();
  v35 = v34 - v33;
  v68 = v1;
  v36 = MEMORY[0x25F89A140]();
  v37 = 0;
  v38 = *(v36 + 16);
  v39 = (v30 + 8);
  v75 = (v72 + 32);
  v74 = MEMORY[0x277D84F90];
  while (v38 != v37)
  {
    if (v37 >= *(v36 + 16))
    {
      __break(1u);

      v59 = *v39;
      v60 = OUTLINED_FUNCTION_34_25();
      v61(v60);

      __break(1u);
      return;
    }

    v40 = *(v30 + 80);
    OUTLINED_FUNCTION_79();
    (*(v30 + 16))(v35, v36 + v41 + *(v30 + 72) * v37, v27);
    closure #1 in static GlobalSearchResponseProcessor.makeCard(layoutSnippet:)(v35, v24);
    v42 = *v39;
    v43 = OUTLINED_FUNCTION_34_25();
    v44(v43);
    OUTLINED_FUNCTION_166(v24, 1, v76);
    if (v45)
    {
      outlined destroy of IntentApplication?(v24, &_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
      ++v37;
    }

    else
    {
      v73 = *v75;
      v73(v70, v24, v76);
      v73(v71, v70, v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 16) + 1, 1, v74);
        v74 = v54;
      }

      v48 = *(v74 + 16);
      v47 = *(v74 + 24);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v62 = *(v74 + 16);
        v63 = v48 + 1;
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1, v74);
        v49 = v63;
        v74 = v55;
      }

      ++v37;
      *(v74 + 16) = v49;
      OUTLINED_FUNCTION_42_5();
      (v73)(v51 + v50 + *(v52 + 72) * v53);
    }
  }

  Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.compactSnippet.getter();
  static GlobalSearchResponseProcessor.makeCard(casinoSnippet:)(v65, v64);
  (*(v66 + 8))(v65, v67);
  OUTLINED_FUNCTION_166(v64, 1, v76);
  if (v45)
  {
    v56 = outlined destroy of IntentApplication?(v64, &_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
    MEMORY[0x28223BE20](v56);
    *(&v62 - 2) = v74;
    OUTLINED_FUNCTION_12_33();
    lazy protocol witness table accessor for type Searchfoundation_Card and conformance Searchfoundation_Card(v57, v58);
    static Message.with(_:)();
  }

  else
  {

    (*v75)(v69, v64, v76);
  }

  OUTLINED_FUNCTION_148();
}

id static GlobalSearchResponseProcessor.makeSFCard(card:)()
{
  OUTLINED_FUNCTION_47_1();
  type metadata accessor for Searchfoundation_Card();
  OUTLINED_FUNCTION_12_33();
  lazy protocol witness table accessor for type Searchfoundation_Card and conformance Searchfoundation_Card(v0, v1);
  Message.serializedData(partial:)();
  v2 = objc_allocWithZone(MEMORY[0x277D4C728]);
  v3 = OUTLINED_FUNCTION_1_28();
  outlined copy of Data._Representation(v3, v4);
  v5 = OUTLINED_FUNCTION_1_28();
  v7 = @nonobjc _SFPBCard.init(data:)(v5, v6);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D4C230]) initWithProtobuf_];

    v10 = OUTLINED_FUNCTION_1_28();
    outlined consume of Data._Representation(v10, v11);
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v12, static Logging.search);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_77_5(v14))
    {
      v15 = OUTLINED_FUNCTION_172();
      *v15 = 0;
      _os_log_impl(&dword_25D85C000, v13, OS_LOG_TYPE_DEFAULT, "Failed to initialize _SFPBCard from serialized data", v15, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v16 = OUTLINED_FUNCTION_1_28();
    outlined consume of Data._Representation(v16, v17);

    return 0;
  }

  return v9;
}

CSSearchableItemAttributeSet __swiftcall CSSearchableItemAttributeSet.__allocating_init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void static GlobalSearchResponseProcessor.makeGenericItem(experience:domain:lowConfidenceKnowledge:)()
{
  OUTLINED_FUNCTION_155();
  LODWORD(v149) = v1;
  v150 = v2;
  v151 = v3;
  OUTLINED_FUNCTION_47_1();
  v147 = type metadata accessor for SpotlightRankingItem();
  v4 = OUTLINED_FUNCTION_14(v147);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v132 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v12 = OUTLINED_FUNCTION_114(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_109();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_2();
  v144 = v19;
  v20 = OUTLINED_FUNCTION_78_0();
  v143 = type metadata accessor for SearchResultItem(v20);
  v21 = OUTLINED_FUNCTION_17(v143);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36();
  v26 = v25 - v24;
  v27 = type metadata accessor for GlobalItem();
  v148 = *(v27 - 8);
  v28 = v148[8];
  MEMORY[0x28223BE20](v27 - 8);
  OUTLINED_FUNCTION_36();
  v31 = v30 - v29;
  v32 = type metadata accessor for SearchResult(0);
  v33 = OUTLINED_FUNCTION_14(v32);
  v142 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_109();
  v141 = v37 - v38;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_2();
  v140 = v40;
  OUTLINED_FUNCTION_78_0();
  v41 = type metadata accessor for Searchfoundation_Card();
  v42 = OUTLINED_FUNCTION_14(v41);
  v128 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_36();
  v130 = v47 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMR);
  OUTLINED_FUNCTION_114(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v51);
  v53 = v125 - v52;
  v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v55 = OUTLINED_FUNCTION_14(v54);
  v145 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_36();
  v129 = v60 - v59;
  v146 = v0;
  v61 = static GlobalSearchResponseProcessor.parseExperience(experience:)();
  if (v61)
  {
    v62 = v61;

    specialized Collection.first.getter(v62, v53);

    v63 = OUTLINED_FUNCTION_103_6();
    OUTLINED_FUNCTION_166(v63, v64, v54);
    if (!v65)
    {
      v135 = v6;
      v71 = v145;
      v72 = v129;
      (*(v145 + 32))();
      v73 = v130;
      static GlobalSearchResponseProcessor.makeCard(layoutSnippet:)();
      v74 = static GlobalSearchResponseProcessor.makeSFCard(card:)();
      v75 = static GlobalSearchResponseProcessor.makeGlobalItems(experience:domain:lowConfidenceKnowledge:)(v146, v150, v151, v149 & 1);
      v76 = *(v75 + 16);
      if (v76)
      {
        v126 = v54;
        v127 = v41;
        v137 = v32;
        v138 = v31;
        v153 = MEMORY[0x277D84F90];
        v77 = v75;
        v151 = v76;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        OUTLINED_FUNCTION_42_5();
        v125[1] = v77;
        v79 = v77 + v78;
        v131 = (v135 + 32);
        v80 = v153;
        v135 = *(v81 + 72);
        v134 = xmmword_25DBC8190;
        v82 = v74;
        v139 = v17;
        v136 = v74;
        do
        {
          v149 = v79;
          v150 = v80;
          v83 = v138;
          outlined init with copy of GlobalItem(v79, v138);
          v84 = *v83;
          v85 = v83[1];
          v86 = v83[4];
          v87 = v83[5];
          v88 = v26;
          v89 = objc_allocWithZone(MEMORY[0x277CC34B8]);

          v90 = [v89 init];
          v91 = objc_allocWithZone(MEMORY[0x277CC34B0]);
          v92 = v85;
          v93 = v147;
          v148 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v84, v92, v86, v87, v90);
          v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR) + 48);
          outlined init with copy of GlobalItem(v83, v88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v95 = swift_allocObject();
          *(v95 + 16) = v134;
          v96 = type metadata accessor for DialogExperience();
          v97 = *(v96 + 48);
          v98 = *(v96 + 52);
          swift_allocObject();
          v133 = v82;
          *(v95 + 32) = DialogExperience.init(_:card:)(v146, v82);
          *(v88 + v94) = v95;
          swift_storeEnumTagMultiPayload();
          v99 = v144;
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v100, v101, v102, v93);
          v103 = v137;
          v104 = v141;
          *(v141 + v137[7]) = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_10_32(v103[10]);
          outlined init with copy of GlobalItem(v88, v104);
          v105 = v103[6];
          type metadata accessor for CSSearchableItem();
          OUTLINED_FUNCTION_11_36();
          lazy protocol witness table accessor for type Searchfoundation_Card and conformance Searchfoundation_Card(&lazy protocol witness table cache variable for type CSSearchableItem and conformance NSObject, v106);
          v107 = v148;
          v108 = v139;
          CodableNSSecureCoding.init(wrappedValue:)();
          v109 = OUTLINED_FUNCTION_34_25();
          outlined init with copy of SpotlightRankingItem?(v109, v110, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_166(v108, 1, v93);
          if (v65)
          {
            outlined destroy of IntentApplication?(v108, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            v111 = v103[5];
            OUTLINED_FUNCTION_25_24();
            OUTLINED_FUNCTION_25_24();
            OUTLINED_FUNCTION_25_24();
            OUTLINED_FUNCTION_25_24();
            OUTLINED_FUNCTION_25_24();
            v152 = 1;
            OUTLINED_FUNCTION_19_18();

            outlined destroy of IntentApplication?(v99, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_2_46();
            _s10OmniSearch0B10ResultItemOWOhTm_7(v88, v112);
            OUTLINED_FUNCTION_15_30();
          }

          else
          {

            outlined destroy of IntentApplication?(v99, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_2_46();
            _s10OmniSearch0B10ResultItemOWOhTm_7(v88, v113);
            OUTLINED_FUNCTION_15_30();
            v114 = *v131;
            v115 = v132;
            v116 = OUTLINED_FUNCTION_34_25();
            v117 = v147;
            v114(v116);
            (v114)(v104 + v103[5], v115, v117);
          }

          v26 = v88;
          *(v104 + v103[8]) = 2;
          *(v104 + v103[9]) = 1;
          OUTLINED_FUNCTION_5_38();
          v118 = v140;
          _s10OmniSearch0B6ResultVWObTm_6(v104, v140);
          v80 = v150;
          v153 = v150;
          v120 = *(v150 + 16);
          v119 = *(v150 + 24);
          v121 = v145;
          v82 = v136;
          if (v120 >= v119 >> 1)
          {
            OUTLINED_FUNCTION_16_30(v119);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v80 = v153;
          }

          *(v80 + 16) = v120 + 1;
          OUTLINED_FUNCTION_42_5();
          v123 = *(v122 + 72);
          OUTLINED_FUNCTION_5_38();
          _s10OmniSearch0B6ResultVWObTm_6(v118, v124);
          v79 = v149 + v135;
          --v151;
        }

        while (v151);

        (*(v128 + 8))(v130, v127);
        (*(v121 + 8))(v129, v126);
      }

      else
      {

        (*(v128 + 8))(v73, v41);
        (*(v71 + 8))(v72, v54);
      }

      goto LABEL_10;
    }

    outlined destroy of IntentApplication?(v53, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMR);
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v66 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v66, static Logging.search);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_105_6(v68))
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_84_5(&dword_25D85C000, v69, v70, "No layout snippet in GenericExperience");
    OUTLINED_FUNCTION_42_0();
  }

LABEL_10:
  OUTLINED_FUNCTION_148();
}

void static GlobalSearchResponseProcessor.makeAudioItem(experience:domain:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v97 = v2;
  v104 = v3;
  v105 = type metadata accessor for SpotlightRankingItem();
  v4 = OUTLINED_FUNCTION_14(v105);
  v94 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v93 = v9 - v8;
  v10 = OUTLINED_FUNCTION_78_0();
  v11 = type metadata accessor for SearchResult(v10);
  v101 = *(v11 - 8);
  v102 = v11;
  v103 = v101;
  v12 = *(v101 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v17 = OUTLINED_FUNCTION_114(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_109();
  v99 = v20 - v21;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_2();
  v100 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
  OUTLINED_FUNCTION_114(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v27);
  v95 = &v92 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
  OUTLINED_FUNCTION_114(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v92 - v33;
  v98 = type metadata accessor for SearchResultItem(0);
  v35 = OUTLINED_FUNCTION_17(v98);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_36();
  v40 = (v39 - v38);
  v41 = type metadata accessor for UUID();
  v42 = OUTLINED_FUNCTION_14(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_36();
  v49 = v48 - v47;
  UUID.init()();
  v50 = UUID.uuidString.getter();
  v52 = v51;
  (*(v44 + 8))(v49, v41);
  v53 = objc_allocWithZone(MEMORY[0x277CC34B8]);

  v54 = [v53 init];
  v55 = objc_allocWithZone(MEMORY[0x277CC34B0]);

  v56 = v97;
  v96 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v50, v52, v97, v1, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
  v57 = *(v101 + 72);
  v101 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_25DBC8180;
  v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR) + 48);
  type metadata accessor for GlobalDialog();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity();
  v63 = v95;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);

  GlobalItem.init(id:domain:dialog:text:parsecEntity:lowConfidenceKnowledge:)(v50, v52, v56, v1, v34, 0, 0, v63, v40, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_25DBC8190;
  v69 = type metadata accessor for DialogExperience();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  *(v68 + 32) = DialogExperience.init(_:card:)(v104, 0);
  *(v40 + v58) = v68;
  v72 = v102;
  swift_storeEnumTagMultiPayload();
  v73 = v100;
  OUTLINED_FUNCTION_92();
  v74 = v105;
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v105);
  *(v15 + v72[7]) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_10_32(v72[10]);
  outlined init with copy of GlobalItem(v40, v15);
  v78 = v72[6];
  type metadata accessor for CSSearchableItem();
  OUTLINED_FUNCTION_11_36();
  lazy protocol witness table accessor for type Searchfoundation_Card and conformance Searchfoundation_Card(v79, v80);
  v81 = v96;
  v82 = v74;
  CodableNSSecureCoding.init(wrappedValue:)();
  v83 = v99;
  outlined init with copy of SpotlightRankingItem?(v73, v99, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v84 = OUTLINED_FUNCTION_103_6();
  OUTLINED_FUNCTION_166(v84, v85, v74);
  if (v86)
  {
    outlined destroy of IntentApplication?(v83, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    v113 = 1;
    v112 = 1;
    v111 = 1;
    v110 = 1;
    v109 = 1;
    v108 = 1;
    v107 = 1;
    v106 = 1;
    v87 = v72[5];
    OUTLINED_FUNCTION_19_18();
    outlined destroy of IntentApplication?(v73, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_2_46();
    _s10OmniSearch0B10ResultItemOWOhTm_7(v40, v88);
  }

  else
  {
    outlined destroy of IntentApplication?(v73, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_2_46();
    _s10OmniSearch0B10ResultItemOWOhTm_7(v40, v89);
    v90 = v93;
    v91 = *(v94 + 32);
    v91(v93, v83, v82);
    v91(v15 + v72[5], v90, v82);
  }

  *(v15 + v72[8]) = 2;
  *(v15 + v72[9]) = 1;
  OUTLINED_FUNCTION_5_38();
  _s10OmniSearch0B6ResultVWObTm_6(v15, v103 + v101);

  OUTLINED_FUNCTION_148();
}

uint64_t static GlobalSearchResponseProcessor.processRenderedDialog(experience:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVSgMd, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVSgMR);
  OUTLINED_FUNCTION_114(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - v4;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_109();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  if (static GlobalSearchResponseProcessor.parseExperience(experience:)())
  {
    v19 = v18;

    specialized Collection.first.getter(v19, v5);

    OUTLINED_FUNCTION_166(v5, 1, v6);
    if (!v20)
    {
      (*(v9 + 32))(v17, v5, v6);
      (*(v9 + 16))(v14, v17, v6);
      GlobalDialog.init(renderedDialog:)();
      return (*(v9 + 8))(v17, v6);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v6);
  }

  outlined destroy of IntentApplication?(v5, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVSgMd, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVSgMR);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v25 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v25, static Logging.search);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_77_5(v27))
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_100_3(&dword_25D85C000, v28, v29, "No rendered dialog in Pegasus response, returning empty dialog");
    OUTLINED_FUNCTION_42_0();
  }

  return GlobalDialog.init(print:speak:)();
}

uint64_t static GlobalSearchResponseProcessor.parseExperience(experience:)()
{
  dispatch thunk of Experience.queryConfidence.getter();
  if (v0 == 1.0)
  {
    v1 = GenericExperience.components.getter();
    v2 = static GlobalSearchResponseProcessor.collatePegasusComponents(components:)(v1);
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logging.search);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_25D85C000, v4, v5, "Received low confidence Pegasus response", v6, 2u);
      MEMORY[0x25F8A1050](v6, -1, -1);
    }

    return 0;
  }

  return v2;
}

uint64_t static GlobalSearchResponseProcessor.makeGlobalItems(experience:domain:lowConfidenceKnowledge:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v56 = a4;
  v57 = a2;
  v58 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for UUID();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v50 - v17;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for GlobalDialog();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  static GlobalSearchResponseProcessor.processRenderedDialog(experience:)();
  dispatch thunk of GenericExperience.sageExperience.getter();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    outlined destroy of IntentApplication?(v18, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
    v29 = GlobalDialog.print.getter();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v33 = GlobalDialog.print.getter();
    }

    else
    {
      v33 = GlobalDialog.speak.getter();
    }

    v51 = v34;
    v52 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch10GlobalItemVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch10GlobalItemVGMR);
    v39 = *(type metadata accessor for GlobalItem() - 8);
    v40 = *(v39 + 72);
    v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_25DBC8180;
    UUID.init()();
    v42 = UUID.uuidString.getter();
    v44 = v43;
    (*(v53 + 8))(v14, v54);
    (*(v25 + 16))(v10, v28, v24);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v24);
    v45 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity();
    v46 = v55;
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v45);
    v47 = v58;

    GlobalItem.init(id:domain:dialog:text:parsecEntity:lowConfidenceKnowledge:)(v42, v44, v57, v47, v10, v52, v51, v46, (v38 + v41), v56 & 1);
  }

  else
  {
    v35 = (*(v20 + 32))(v23, v18, v19);
    v36 = MEMORY[0x25F899F00](v35);
    MEMORY[0x28223BE20](v36);
    v37 = v58;
    *(&v50 - 4) = v57;
    *(&v50 - 3) = v37;
    v49 = v28;
    v38 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static GlobalSearchResponseProcessor.makeGlobalItems(experience:domain:lowConfidenceKnowledge:), (&v50 - 6), v36);

    (*(v20 + 8))(v23, v19);
  }

  (*(v25 + 8))(v28, v24);
  return v38;
}

void static GlobalSearchResponseProcessor.makeWebImages(experience:)()
{
  OUTLINED_FUNCTION_155();
  v194 = type metadata accessor for UUID();
  v0 = OUTLINED_FUNCTION_14(v194);
  v185 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_36();
  v193 = v5 - v4;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_10Foundation3URLVSg3urltMd, ",");
  v6 = OUTLINED_FUNCTION_14(v198);
  v186 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_109();
  v197 = v10 - v11;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v12);
  v196 = &v181[-v13];
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_2();
  v195 = v15;
  OUTLINED_FUNCTION_78_0();
  v16 = type metadata accessor for WebImage();
  v17 = OUTLINED_FUNCTION_14(v16);
  v199 = v18;
  v200 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_109();
  v23 = (v21 - v22);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_2();
  v187 = v25;
  OUTLINED_FUNCTION_78_0();
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v27 = OUTLINED_FUNCTION_14(v26);
  v192 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_109();
  v33 = (v31 - v32);
  MEMORY[0x28223BE20](v34);
  v36 = &v181[-v35];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
  OUTLINED_FUNCTION_114(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v40);
  v188 = &v181[-v41];
  OUTLINED_FUNCTION_78_0();
  v42 = type metadata accessor for Searchfoundation_Card();
  v201 = OUTLINED_FUNCTION_14(v42);
  v202 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v201);
  OUTLINED_FUNCTION_109();
  v48 = v46 - v47;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_14_2();
  v189 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMR);
  OUTLINED_FUNCTION_114(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v54);
  v56 = &v181[-v55];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMR);
  OUTLINED_FUNCTION_114(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v60);
  v62 = &v181[-v61];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  v64 = OUTLINED_FUNCTION_114(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_109();
  v191 = v67 - v68;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v69);
  v71 = &v181[-v70];
  v72 = static GlobalSearchResponseProcessor.parseExperience(experience:)();
  if (!v72)
  {
    goto LABEL_17;
  }

  v190 = v71;

  v73 = *(v72 + 16);
  if (!v73)
  {

    goto LABEL_17;
  }

  specialized Collection.first.getter(v72, v56);
  v74 = OUTLINED_FUNCTION_166(v56, 1, v26);
  if (v82)
  {

    v75 = &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMd;
    v76 = &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMR;
    v77 = v56;
LABEL_10:
    outlined destroy of IntentApplication?(v77, v75, v76);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
    v93 = v190;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
LABEL_11:
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v87 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v87, static Logging.search);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_105_6(v89))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_84_5(&dword_25D85C000, v90, v91, "Unsupported web_image snippet type");
      OUTLINED_FUNCTION_42_0();
    }

    v92 = v93;
    goto LABEL_16;
  }

  v78 = MEMORY[0x25F89A140](v74);
  v79 = v56;
  v80 = v192 + 8;
  v183 = *(v192 + 8);
  v183(v79, v26);
  specialized Collection.first.getter(v78, v62);

  v81 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  OUTLINED_FUNCTION_166(v62, 1, v81);
  if (v82)
  {

    v75 = &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMd;
    v76 = &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMR;
    v77 = v62;
    goto LABEL_10;
  }

  v182 = v23;
  v184 = v80;
  v93 = v190;
  Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
  (*(*(v81 - 8) + 8))(v62, v81);
  v94 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v95 = OUTLINED_FUNCTION_103_6();
  OUTLINED_FUNCTION_166(v95, v96, v94);
  if (v97)
  {

    goto LABEL_11;
  }

  v98 = v191;
  outlined init with copy of SpotlightRankingItem?(v93, v191, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  v99 = *(v94 - 8);
  v100 = (*(v99 + 88))(v98, v94);
  if (v100 == *MEMORY[0x277D39A98])
  {
    OUTLINED_FUNCTION_37_16();
    v101 = *(v72 + 16);
    if (v101)
    {
      v203 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v102 = *(v192 + 16);
      v103 = *(v192 + 80);
      OUTLINED_FUNCTION_79();
      v106 = v72 + v105;
      v193 = *(v104 + 56);
      v194 = v107;
      v108 = v203;
      v192 = v202 + 32;
      do
      {
        v109 = v104;
        (v194)(v36, v106, v26);
        static GlobalSearchResponseProcessor.makeCard(layoutSnippet:)();
        v183(v36, v26);
        v203 = v108;
        v111 = *(v108 + 16);
        v110 = *(v108 + 24);
        if (v111 >= v110 >> 1)
        {
          OUTLINED_FUNCTION_16_30(v110);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v108 = v203;
        }

        *(v108 + 16) = v111 + 1;
        OUTLINED_FUNCTION_42_5();
        (*(v113 + 32))(v108 + v112 + *(v113 + 72) * v111, v48);
        v106 += v193;
        --v101;
        v104 = v109;
      }

      while (v101);
    }

    else
    {

      v108 = MEMORY[0x277D84F90];
    }

    v140 = v188;
    specialized Collection.first.getter(v108, v188);

    v141 = OUTLINED_FUNCTION_103_6();
    v142 = v201;
    OUTLINED_FUNCTION_166(v141, v143, v201);
    v144 = v189;
    v145 = v190;
    if (!v82)
    {
      v153 = v202;
      (*(v202 + 32))(v189, v140, v142);
      v154 = static GlobalSearchResponseProcessor.parseCardForURL(card:)();
      v155 = v154;
      v156 = *(v154 + 16);
      if (v156)
      {
        v203 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v157 = v203;
        OUTLINED_FUNCTION_42_5();
        v188 = v155;
        v159 = &v155[v158];
        v192 = *(v160 + 72);
        v161 = v187;
        v162 = v196;
        v163 = v198;
        do
        {
          v194 = v156;
          v164 = v195;
          outlined init with copy of SpotlightRankingItem?(v159, v195, &_sSS2id_10Foundation3URLVSg3urltMd, ",");
          outlined init with copy of SpotlightRankingItem?(v164, v162, &_sSS2id_10Foundation3URLVSg3urltMd, ",");
          v165 = *v162;
          v166 = v162[1];
          v193 = *(v163 + 48);
          v167 = v164;
          v168 = v197;
          outlined init with take of SearchResultItem?(v167, v197, &_sSS2id_10Foundation3URLVSg3urltMd, ",");
          v169 = *(v168 + 8);

          v170 = *(v163 + 48);
          *v161 = v165;
          v161[1] = v166;
          v171 = v200;
          outlined init with take of SearchResultItem?(v168 + v170, v161 + v200[5], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          OUTLINED_FUNCTION_39_20(v171[6]);
          OUTLINED_FUNCTION_39_20(v171[7]);
          OUTLINED_FUNCTION_39_20(v171[8]);
          OUTLINED_FUNCTION_39_20(v171[9]);
          outlined destroy of IntentApplication?(v162 + v193, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v203 = v157;
          v173 = *(v157 + 16);
          v172 = *(v157 + 24);
          if (v173 >= v172 >> 1)
          {
            OUTLINED_FUNCTION_16_30(v172);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v157 = v203;
          }

          *(v157 + 16) = v173 + 1;
          OUTLINED_FUNCTION_42_5();
          v175 = *(v174 + 72);
          OUTLINED_FUNCTION_13_26();
          _s10OmniSearch0B6ResultVWObTm_6(v161, v176);
          v159 += v192;
          v156 = v194 - 1;
        }

        while (v194 != 1);
        (*(v202 + 8))(v189, v201);

        v145 = v190;
      }

      else
      {

        (*(v153 + 8))(v144, v142);
      }

      v179 = OUTLINED_FUNCTION_8_35();
      v180(v179);
      outlined destroy of IntentApplication?(v145, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
      goto LABEL_17;
    }

    outlined destroy of IntentApplication?(v140, &_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v146 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v146, static Logging.search);
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_105_6(v148))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_84_5(&dword_25D85C000, v149, v150, "No SFCard found in the web_image layout snippet component");
      OUTLINED_FUNCTION_42_0();
    }

    v151 = OUTLINED_FUNCTION_8_35();
    v152(v151);
    v92 = v145;
LABEL_16:
    outlined destroy of IntentApplication?(v92, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
    goto LABEL_17;
  }

  if (v100 != *MEMORY[0x277D39AA0])
  {

    (*(v99 + 8))(v191, v94);
    v93 = v190;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_16();
  v114 = v192 + 16;
  v202 = *(v192 + 16);
  v203 = MEMORY[0x277D84F90];
  v115 = *(v192 + 80);
  OUTLINED_FUNCTION_79();
  v117 = v72 + v116;
  v118 = *(v114 + 56);
  v119 = v183;
  do
  {
    (v202)(v33, v117, v26);
    v120 = static GlobalSearchResponseProcessor.makeLegacySnippet(layoutSnippet:)(v33);
    v119(v33, v26);
    specialized Array.append<A>(contentsOf:)(v120);
    v117 += v118;
    --v73;
  }

  while (v73);

  v121 = v203;
  v122 = *(v203 + 16);
  v123 = v182;
  if (v122)
  {
    v203 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v124 = v203;
    v125 = (v185 + 8);
    v202 = v121;
    v126 = (v121 + 40);
    do
    {
      v127 = *(v126 - 1);
      v128 = *v126;

      v129 = v193;
      UUID.init()();
      v130 = UUID.uuidString.getter();
      v132 = v131;
      (*v125)(v129, v194);
      v133 = v200;
      v134 = v123 + v200[5];
      URL.init(string:)();

      *v123 = v130;
      v123[1] = v132;
      OUTLINED_FUNCTION_38_23(v133[6]);
      OUTLINED_FUNCTION_38_23(v133[7]);
      OUTLINED_FUNCTION_38_23(v133[8]);
      OUTLINED_FUNCTION_38_23(v133[9]);
      v203 = v124;
      v136 = *(v124 + 16);
      v135 = *(v124 + 24);
      if (v136 >= v135 >> 1)
      {
        OUTLINED_FUNCTION_16_30(v135);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v124 = v203;
      }

      *(v124 + 16) = v136 + 1;
      OUTLINED_FUNCTION_42_5();
      v138 = *(v137 + 72);
      OUTLINED_FUNCTION_13_26();
      _s10OmniSearch0B6ResultVWObTm_6(v123, v139);
      v126 += 2;
      --v122;
    }

    while (v122);
  }

  v177 = OUTLINED_FUNCTION_8_35();
  v178(v177);
  outlined destroy of IntentApplication?(v190, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
LABEL_17:
  OUTLINED_FUNCTION_148();
}

uint64_t static GlobalSearchResponseProcessor.parseCardForURL(card:)()
{
  v0 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_10Foundation3URLVSg3urltSgMd, &_sSS2id_10Foundation3URLVSg3urltSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (v53 - v3);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_10Foundation3URLVSg3urltMd, ",");
  v55 = *(v71 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v71);
  v56 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = v53 - v8;
  v60 = type metadata accessor for Searchfoundation_GridCardSection();
  v9 = *(v60 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Searchfoundation_CardSectionValue();
  v12 = *(v63 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v63);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Searchfoundation_CardSection();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v72 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v53 - v21;
  v23 = Searchfoundation_Card.cardSections.getter();
  v24 = *(v23 + 16);
  if (v24)
  {
    v62 = v15;
    v68 = *(v17 + 16);
    v25 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v53[1] = v23;
    v64 = v25;
    v26 = v9;
    v27 = v23 + v25;
    v73 = *(v17 + 72);
    v61 = (v12 + 8);
    v69 = v17 + 16;
    v67 = (v17 + 8);
    v58 = (v26 + 8);
    v28 = MEMORY[0x277D84F90];
    v65 = v17;
    v66 = v4;
    v70 = 0;
    v57 = v22;
    while (1)
    {
      v68(v22, v27, v16);
      if (Searchfoundation_CardSection.hasValue.getter() & 1) != 0 && (v0 = v62, Searchfoundation_CardSection.value.getter(), v29 = Searchfoundation_CardSectionValue.hasGridCardSection.getter(), v30 = *v61, v31 = v63, (*v61)(v0, v63), (v29))
      {
        Searchfoundation_CardSection.value.getter();
        v32 = v59;
        Searchfoundation_CardSectionValue.gridCardSection.getter();
        v30(v0, v31);
        v33 = Searchfoundation_GridCardSection.cardSections.getter();
        (*v58)(v32, v60);
        v22 = v57;
      }

      else
      {
        v33 = MEMORY[0x277D84F90];
      }

      (*v67)(v22, v16);
      v34 = *(v33 + 16);
      v35 = *(v28 + 16);
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v36 > *(v28 + 24) >> 1)
      {
        if (v35 <= v36)
        {
          v38 = v35 + v34;
        }

        else
        {
          v38 = v35;
        }

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v38, 1, v28);
        v28 = v39;
      }

      v17 = v65;
      v4 = v66;
      v0 = v70;
      if (*(v33 + 16))
      {
        if ((*(v28 + 24) >> 1) - *(v28 + 16) < v34)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v34)
        {
          v40 = *(v28 + 16);
          v41 = __OFADD__(v40, v34);
          v42 = v40 + v34;
          if (v41)
          {
            goto LABEL_39;
          }

          *(v28 + 16) = v42;
        }
      }

      else
      {

        if (v34)
        {
          goto LABEL_37;
        }
      }

      v27 += v73;
      if (!--v24)
      {

        goto LABEL_23;
      }
    }
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
LABEL_23:
    v43 = 0;
    v33 = v17 + 8;
    v73 = MEMORY[0x277D84F90];
    v44 = *(v28 + 16);
    while (1)
    {
      v22 = v72;
      if (v44 == v43)
      {

        return v73;
      }

      if (v43 >= *(v28 + 16))
      {
        break;
      }

      (*(v17 + 16))(v72, v28 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v43, v16);
      closure #2 in static GlobalSearchResponseProcessor.parseCardForURL(card:)(v4);
      if (v0)
      {
        goto LABEL_40;
      }

      (*v33)(v22, v16);
      if (__swift_getEnumTagSinglePayload(v4, 1, v71) == 1)
      {
        outlined destroy of IntentApplication?(v4, &_sSS2id_10Foundation3URLVSg3urltSgMd, &_sSS2id_10Foundation3URLVSg3urltSgMR);
        ++v43;
      }

      else
      {
        v69 = v16;
        v70 = 0;
        v45 = v17;
        v46 = v54;
        outlined init with take of SearchResultItem?(v4, v54, &_sSS2id_10Foundation3URLVSg3urltMd, ",");
        outlined init with take of SearchResultItem?(v46, v56, &_sSS2id_10Foundation3URLVSg3urltMd, ",");
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = *(v73 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v73 = v50;
        }

        v47 = *(v73 + 16);
        v17 = v45;
        if (v47 >= *(v73 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v73 = v51;
        }

        v16 = v69;
        ++v43;
        v48 = v73;
        *(v73 + 16) = v47 + 1;
        outlined init with take of SearchResultItem?(v56, v48 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v47, &_sSS2id_10Foundation3URLVSg3urltMd, ",");
        v0 = v70;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  (*v33)(v22, v16);

  __break(1u);
  return result;
}

uint64_t static GlobalSearchResponseProcessor.makeLegacySnippet(layoutSnippet:)(void (**a1)(uint64_t *, uint64_t))
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v80 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v70 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v81 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v70 - v15;
  v16 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet();
  v73 = *(v16 - 8);
  v74 = v16;
  v17 = *(v73 + 64);
  MEMORY[0x28223BE20](v16);
  v72 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v70 - v25;
  v27 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet();
  v77 = *(v27 - 8);
  v78 = v27;
  v28 = *(v77 + 64);
  MEMORY[0x28223BE20](v27);
  v71 = (&v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v76 = (&v70 - v31);
  v33 = MEMORY[0x28223BE20](v32);
  v79 = &v70 - v34;
  v35 = a1;
  v36 = MEMORY[0x25F89A140](v33);
  specialized Collection.first.getter(v36, v22);

  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  if (__swift_getEnumTagSinglePayload(v22, 1, v37) == 1)
  {
    outlined destroy of IntentApplication?(v22, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMR);
    v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v38);
LABEL_4:
    outlined destroy of IntentApplication?(v26, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
LABEL_5:
    if (one-time initialization token for search != -1)
    {
LABEL_40:
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logging.search);
    v41 = v3[2];
    v41(v8, v35, v2);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v82 = v45;
      *v44 = 136315138;
      v41(v80, v8, v2);
      String.init<A>(describing:)();
      (v3[1])(v8, v2);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v44 + 4) = v46;
      _os_log_impl(&dword_25D85C000, v42, v43, "InfoViewFactory invalid legacy snippet %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x25F8A1050](v45, -1, -1);
      MEMORY[0x25F8A1050](v44, -1, -1);
    }

    else
    {

      (v3[1])(v8, v2);
    }

    return MEMORY[0x277D84F90];
  }

  Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
  (*(*(v37 - 8) + 8))(v22, v37);
  v39 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  if (__swift_getEnumTagSinglePayload(v26, 1, v39) == 1)
  {
    goto LABEL_4;
  }

  v49 = *(v39 - 8);
  if ((*(v49 + 88))(v26, v39) != *MEMORY[0x277D39AA0])
  {
    (*(v49 + 8))(v26, v39);
    goto LABEL_5;
  }

  (*(v49 + 96))(v26, v39);
  v2 = v77;
  v3 = v78;
  v8 = v79;
  (*(v77 + 32))(v79, v26, v78);
  v50 = v75;
  Apple_Parsec_Siri_Legacy_LegacySnippet.snippet.getter();
  v51 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet();
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
  {
    outlined destroy of IntentApplication?(v50, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
    v35 = v76;
    goto LABEL_31;
  }

  v52 = *(v51 - 8);
  v53 = (*(v52 + 88))(v50, v51);
  v35 = v76;
  if (v53 != *MEMORY[0x277D38C78])
  {
    (*(v52 + 8))(v50, v51);
LABEL_31:
    if (one-time initialization token for search != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  (*(v52 + 96))(v50, v51);
  (*(v73 + 32))(v72, v50, v74);
  v54 = Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.pods.getter();
  v8 = 0;
  v2 = 0;
  v80 = *(v54 + 16);
  v75 = (v10 + 16);
  v76 = (v10 + 8);
  v47 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v80 == v8)
    {

      (*(v73 + 8))(v72, v74);
      (*(v77 + 8))(v79, v78);
      return v47;
    }

    if (v8 >= *(v54 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v55 = v81;
    (*(v10 + 16))(v81, v54 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, v9);
    closure #1 in static GlobalSearchResponseProcessor.makeLegacySnippet(layoutSnippet:)(v55, &v82);
    (*v76)(v55, v9);
    v3 = v82;
    v56 = v82[2];
    v35 = *(v47 + 16);
    if (__OFADD__(v35, v56))
    {
      goto LABEL_38;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v35 + v56 > *(v47 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v47 = v57;
    }

    if (v3[2])
    {
      break;
    }

    if (v56)
    {
      goto LABEL_39;
    }

LABEL_29:
    ++v8;
  }

  if ((*(v47 + 24) >> 1) - *(v47 + 16) >= v56)
  {
    swift_arrayInitWithCopy();

    if (v56)
    {
      v58 = *(v47 + 16);
      v59 = __OFADD__(v58, v56);
      v60 = v58 + v56;
      if (v59)
      {
        goto LABEL_42;
      }

      *(v47 + 16) = v60;
    }

    goto LABEL_29;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  swift_once();
LABEL_32:
  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Logging.search);
  v62 = *(v2 + 16);
  v62(v35, v8, v3);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v82 = v81;
    *v65 = 136315138;
    v62(v71, v35, v3);
    String.init<A>(describing:)();
    v66 = *(v2 + 8);
    v66(v35, v3);
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v65 + 4) = v67;
    _os_log_impl(&dword_25D85C000, v63, v64, "InfoViewFactory invalid general knowledge snippet %s", v65, 0xCu);
    v68 = v81;
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    MEMORY[0x25F8A1050](v68, -1, -1);
    v69 = v65;
    v8 = v79;
    MEMORY[0x25F8A1050](v69, -1, -1);
  }

  else
  {

    v66 = *(v2 + 8);
    v66(v35, v3);
  }

  v66(v8, v3);
  return MEMORY[0x277D84F90];
}

void closure #1 in static GlobalSearchResponseProcessor.makeGeoLocations(experience:)(uint64_t a1, NSObject *a2)
{
  v52 = a2;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent();
  v51 = *(v2 - 8);
  v3 = v51[8];
  v4 = MEMORY[0x28223BE20](v2);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v49 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v46 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - v23;
  Apple_Parsec_Siri_V2alpha_DomainObjectComponent.component.getter();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of IntentApplication?(v11, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logging.search);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_25D85C000, v26, v27, "PegasusResult component missing type", v28, 2u);
      MEMORY[0x25F8A1050](v28, -1, -1);
    }
  }

  else
  {
    (*(v13 + 32))(v24, v11, v12);
    v48 = *(v13 + 16);
    v48(v22, v24, v12);
    if ((*(v13 + 88))(v22, v12) == *MEMORY[0x277D39A68])
    {
      (*(v13 + 96))(v22, v12);
      v29 = v51;
      v49 = v51[4];
      v49(v7, v22, v2);
      v30 = v50;
      (v29[2])(v50, v7, v2);
      v47 = v24;
      v31 = v52;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v32 = *(v31->isa + 2);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v32);
      (v29[1])(v7, v2);
      (*(v13 + 8))(v47, v12);
      isa = v31->isa;
      *(isa + 2) = v32 + 1;
      v49(isa + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + v29[9] * v32, v30, v2);
    }

    else
    {
      if (one-time initialization token for search != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logging.search);
      v35 = v48;
      v48(v19, v24, v12);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      v52 = v36;
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v53 = v51;
        *v38 = 136315138;
        v47 = v24;
        v35(v49, v19, v12);
        String.init<A>(describing:)();
        v39 = *(v13 + 8);
        LODWORD(v50) = v37;
        v39(v19, v12);
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        v41 = v38;
        *(v38 + 4) = v40;
        v42 = v52;
        v43 = v41;
        _os_log_impl(&dword_25D85C000, v52, v50, "PegasusResult skipping component %s", v41, 0xCu);
        v44 = v51;
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        MEMORY[0x25F8A1050](v44, -1, -1);
        MEMORY[0x25F8A1050](v43, -1, -1);

        v45 = v47;
      }

      else
      {

        v39 = *(v13 + 8);
        v39(v19, v12);
        v45 = v24;
      }

      v39(v45, v12);
      v39(v22, v12);
    }
  }
}

uint64_t GeoLocation.init(geoObject:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI12Mapspb_HoursVSgMd, &_s10PegasusAPI12Mapspb_HoursVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_109();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - v12;
  v14 = type metadata accessor for Locationpb_Location();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_109();
  v22 = (v20 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  v79 = Mapspb_LocalSearchBusiness.uid.getter();
  v26 = Mapspb_LocalSearchBusiness.name.getter();
  v77 = v27;
  v78 = v26;
  v28 = Mapspb_LocalSearchBusiness.address.getter();
  v75 = v29;
  v76 = v28;
  v30 = Mapspb_LocalSearchBusiness.thoroughfare.getter();
  v73 = v31;
  v74 = v30;
  v32 = Mapspb_LocalSearchBusiness.placeCardURL.getter();
  v71 = v33;
  v72 = v32;
  Mapspb_LocalSearchBusiness.location.getter();
  Locationpb_Location.lat.getter();
  v35 = v34;
  v36 = *(v17 + 8);
  v36(v25, v14);
  Mapspb_LocalSearchBusiness.location.getter();
  Locationpb_Location.lon.getter();
  v38 = v37;
  v36(v22, v14);
  v70 = Mapspb_LocalSearchBusiness.telephone.getter();
  v39 = Mapspb_LocalSearchBusiness.url.getter();
  v68 = v40;
  v69 = v39;
  v67 = Mapspb_LocalSearchBusiness.photos.getter();
  v41 = Mapspb_LocalSearchBusiness.category.getter();
  v65 = v42;
  v66 = v41;
  v43 = Mapspb_LocalSearchBusiness.subcategory.getter();
  v45 = v44;
  v46 = Mapspb_LocalSearchBusiness.openingHours.getter();
  specialized Collection.first.getter(v46, v13);

  v47 = type metadata accessor for Mapspb_Hours();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v47);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(v13, &_s10PegasusAPI12Mapspb_HoursVSgMd, &_s10PegasusAPI12Mapspb_HoursVSgMR);
    v49 = 0;
  }

  else
  {
    v49 = MEMORY[0x25F899970]();
    (*(*(v47 - 8) + 8))(v13, v47);
  }

  v50 = Mapspb_LocalSearchBusiness.openingHours.getter();
  specialized Collection.first.getter(v50, v10);

  v51 = __swift_getEnumTagSinglePayload(v10, 1, v47);
  if (v51 == 1)
  {
    v52 = type metadata accessor for Mapspb_LocalSearchBusiness();
    OUTLINED_FUNCTION_17(v52);
    (*(v53 + 8))(a1);
    result = outlined destroy of IntentApplication?(v10, &_s10PegasusAPI12Mapspb_HoursVSgMd, &_s10PegasusAPI12Mapspb_HoursVSgMR);
    v55 = 0;
  }

  else
  {
    v55 = Mapspb_Hours.closeTime.getter();
    v56 = type metadata accessor for Mapspb_LocalSearchBusiness();
    OUTLINED_FUNCTION_17(v56);
    (*(v57 + 8))(a1);
    result = (*(*(v47 - 8) + 8))(v10, v47);
  }

  v58 = v78;
  *a2 = v79;
  *(a2 + 8) = v58;
  v59 = v76;
  *(a2 + 16) = v77;
  *(a2 + 24) = v59;
  v60 = v74;
  *(a2 + 32) = v75;
  *(a2 + 40) = v60;
  v61 = v72;
  *(a2 + 48) = v73;
  *(a2 + 56) = v61;
  v62 = v70;
  *(a2 + 64) = v71;
  *(a2 + 72) = v35;
  *(a2 + 76) = v38;
  *(a2 + 80) = v62;
  v63 = v68;
  *(a2 + 88) = v69;
  *(a2 + 96) = v63;
  v64 = v66;
  *(a2 + 104) = v67;
  *(a2 + 112) = v64;
  *(a2 + 120) = v65;
  *(a2 + 128) = v43;
  *(a2 + 136) = v45;
  *(a2 + 144) = v49;
  *(a2 + 148) = EnumTagSinglePayload == 1;
  *(a2 + 152) = v55;
  *(a2 + 156) = v51 == 1;
  return result;
}

uint64_t closure #1 in static GlobalSearchResponseProcessor.makeGlobalItems(experience:domain:lowConfidenceKnowledge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v37 = a1;
  v38 = a2;
  v39 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v16 + 8))(v19, v15);
  v23 = type metadata accessor for GlobalDialog();
  (*(*(v23 - 8) + 16))(v14, a4, v23);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v23);
  v24 = GlobalDialog.print.getter();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = GlobalDialog.print.getter();
  }

  else
  {
    v28 = GlobalDialog.speak.getter();
  }

  v30 = v28;
  v31 = v29;
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity();
  (*(*(v32 - 8) + 16))(v10, v37, v32);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v32);

  v33 = v39;
  GlobalItem.init(id:domain:dialog:text:parsecEntity:lowConfidenceKnowledge:)(v20, v22, v38, a3, v14, v30, v31, v10, v39, 0);
  v34 = type metadata accessor for GlobalItem();
  return __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
}

uint64_t closure #2 in static GlobalSearchResponseProcessor.parseCardForURL(card:)@<X0>(uint64_t *a1@<X8>)
{
  v55 = a1;
  v1 = type metadata accessor for Searchfoundation_URL();
  v48 = *(v1 - 8);
  v49 = v1;
  v2 = *(v48 + 64);
  MEMORY[0x28223BE20](v1);
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Searchfoundation_URLImage();
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Searchfoundation_Image();
  v9 = *(v8 - 8);
  v53 = v8;
  v54 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Searchfoundation_VerticalLayoutCardSection();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Searchfoundation_CardSectionValue();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((Searchfoundation_CardSection.hasValue.getter() & 1) == 0)
  {
    goto LABEL_7;
  }

  Searchfoundation_CardSection.value.getter();
  v23 = Searchfoundation_CardSectionValue.hasVerticalLayoutCardSection.getter();
  v46 = *(v19 + 8);
  v46(v22, v18);
  if ((v23 & 1) == 0)
  {
    goto LABEL_7;
  }

  Searchfoundation_CardSection.value.getter();
  Searchfoundation_CardSectionValue.verticalLayoutCardSection.getter();
  v46(v22, v18);
  LODWORD(v45) = Searchfoundation_VerticalLayoutCardSection.hasThumbnail.getter();
  v43 = *(v14 + 8);
  v44 = v14 + 8;
  v43(v17, v13);
  if ((v45 & 1) == 0)
  {
    goto LABEL_7;
  }

  Searchfoundation_CardSection.value.getter();
  Searchfoundation_CardSectionValue.verticalLayoutCardSection.getter();
  v46(v22, v18);
  Searchfoundation_VerticalLayoutCardSection.thumbnail.getter();
  v43(v17, v13);
  v24 = Searchfoundation_Image.hasURLImage.getter();
  v25 = *(v54 + 8);
  v54 += 8;
  v45 = v25;
  v25(v12, v53);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  Searchfoundation_CardSection.value.getter();
  Searchfoundation_CardSectionValue.verticalLayoutCardSection.getter();
  v46(v22, v18);
  Searchfoundation_VerticalLayoutCardSection.thumbnail.getter();
  v43(v17, v13);
  v26 = v50;
  Searchfoundation_Image.urlImage.getter();
  v45(v12, v53);
  v27 = Searchfoundation_URLImage.hasURLValue.getter();
  v28 = *(v52 + 8);
  v52 += 8;
  v42 = v28;
  v28(v26, v51);
  if (v27)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_10Foundation3URLVSg3urltMd, ",");
    v40 = *(v29 + 48);
    v41 = v29;
    v30 = Searchfoundation_CardSection.resultIdentifier.getter();
    v31 = v55;
    *v55 = v30;
    v31[1] = v32;
    Searchfoundation_CardSection.value.getter();
    Searchfoundation_CardSectionValue.verticalLayoutCardSection.getter();
    v46(v22, v18);
    Searchfoundation_VerticalLayoutCardSection.thumbnail.getter();
    v43(v17, v13);
    v33 = v50;
    Searchfoundation_Image.urlImage.getter();
    v45(v12, v53);
    v34 = v47;
    Searchfoundation_URLImage.urlValue.getter();
    v42(v33, v51);
    Searchfoundation_URL.address.getter();
    (*(v48 + 8))(v34, v49);
    v35 = v55;
    URL.init(string:)();

    v36 = v35;
    v37 = 0;
    v38 = v41;
  }

  else
  {
LABEL_7:
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_10Foundation3URLVSg3urltMd, ",");
    v36 = v55;
    v37 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v36, v37, 1, v38);
}

uint64_t closure #1 in static GlobalSearchResponseProcessor.makeCard(layoutSnippet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  if (__swift_getEnumTagSinglePayload(v12, 1, v18) == 1)
  {
    outlined destroy of IntentApplication?(v12, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  }

  else
  {
    v19 = v4;
    v20 = *(v18 - 8);
    if ((*(v20 + 88))(v12, v18) == *MEMORY[0x277D39A98])
    {
      (*(v20 + 96))(v12, v18);
      (*(v14 + 32))(v17, v12, v13);
      static GlobalSearchResponseProcessor.makeCard(casinoSnippet:)(v17, v36);
      return (*(v14 + 8))(v17, v13);
    }

    (*(v20 + 8))(v12, v18);
    v4 = v19;
  }

  v22 = v3;
  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logging.search);
  v24 = *(v4 + 16);
  v25 = v35;
  v24(v35, a1, v22);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v28 = 136315138;
    v24(v34, v25, v22);
    String.init<A>(describing:)();
    (*(v4 + 8))(v25, v22);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v28 + 4) = v29;
    _os_log_impl(&dword_25D85C000, v26, v27, "InfoViewFactory non casino snippet %s", v28, 0xCu);
    v30 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x25F8A1050](v30, -1, -1);
    MEMORY[0x25F8A1050](v28, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v25, v22);
  }

  v31 = type metadata accessor for Searchfoundation_Card();
  return __swift_storeEnumTagSinglePayload(v36, 1, 1, v31);
}

uint64_t static GlobalSearchResponseProcessor.makeCard(casinoSnippet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for Google_Protobuf_Any();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for Searchfoundation_Card();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  if (Apple_Parsec_Siri_V2alpha_CasinoSnippet.hasCardData.getter())
  {
    Apple_Parsec_Siri_V2alpha_CasinoSnippet.cardData.getter();
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Searchfoundation_Card and conformance Searchfoundation_Card(&lazy protocol witness table cache variable for type Searchfoundation_Card and conformance Searchfoundation_Card, MEMORY[0x277D38E40]);
    Message.init(unpackingAny:extensions:options:)();
    (*(v30 + 32))(a2, v11, v8);
    v27 = 0;
  }

  else
  {
    v29 = v8;
    v30 = a2;
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logging.search);
    v21 = *(v13 + 16);
    v21(v19, a1, v12);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v31 = v25;
      *v24 = 136315138;
      v21(v17, v19, v12);
      String.init<A>(describing:)();
      (*(v13 + 8))(v19, v12);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v24 + 4) = v26;
      _os_log_impl(&dword_25D85C000, v22, v23, "InfoViewFactory casinoSnippet has no card data %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x25F8A1050](v25, -1, -1);
      MEMORY[0x25F8A1050](v24, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v19, v12);
    }

    v27 = 1;
    v8 = v29;
    a2 = v30;
  }

  return __swift_storeEnumTagSinglePayload(a2, v27, 1, v8);
}

uint64_t closure #2 in static GlobalSearchResponseProcessor.makeCard(layoutSnippet:)(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = type metadata accessor for Searchfoundation_CardSource();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Searchfoundation_Card();
  v6 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v13 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v29 = *(v11 + 56);
    v30 = v12;
    v14 = (v11 - 8);
    v15 = MEMORY[0x277D84F90];
    do
    {
      v16 = v31;
      v17 = v11;
      v30(v9, v13, v31);
      v18 = Searchfoundation_Card.cardSections.getter();
      (*v14)(v9, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v15 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v15 = v21;
      }

      v19 = *(v15 + 16);
      if (v19 >= *(v15 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v15 = v22;
      }

      *(v15 + 16) = v19 + 1;
      *(v15 + 8 * v19 + 32) = v18;
      v13 += v29;
      --v10;
      v11 = v17;
    }

    while (v10);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  specialized _copySequenceToContiguousArray<A>(_:)(v15);

  Searchfoundation_Card.cardSections.setter();
  (*(v26 + 104))(v25, *MEMORY[0x277D38EA8], v27);
  return Searchfoundation_Card.source.setter();
}

uint64_t closure #1 in static GlobalSearchResponseProcessor.makeLegacySnippet(layoutSnippet:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v96 = a2;
  v103 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView();
  v98 = *(v103 - 8);
  v3 = v98[8];
  MEMORY[0x28223BE20](v103);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer();
  v7 = *(v6 - 8);
  v101 = v6;
  v102 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod();
  v93 = *(v11 - 8);
  v94 = v11;
  v12 = *(v93 + 64);
  MEMORY[0x28223BE20](v11);
  v92 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource();
  v97 = *(v100 - 8);
  v14 = *(v97 + 64);
  MEMORY[0x28223BE20](v100);
  v99 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod();
  v16 = *(v90 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v90);
  v88 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v89 = &v87 - v20;
  MEMORY[0x28223BE20](v21);
  v91 = &v87 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMd, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v25);
  v27 = &v87 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v87 - v29;
  v31 = a1;
  Apple_Parsec_Siri_Legacy_PodView.pod.getter();
  v32 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v32);
  v95 = v30;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_2;
  }

  outlined init with copy of SpotlightRankingItem?(v30, v27, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMd, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMR);
  v46 = *(v32 - 8);
  v47 = (*(v46 + 88))(v27, v32);
  if (v47 == *MEMORY[0x277D38FA8])
  {
    (*(v46 + 96))(v27, v32);
    (*(v93 + 32))(v92, v27, v94);
    v48 = Apple_Parsec_Siri_Legacy_ImagePod.images.getter();
    v49 = *(v48 + 16);
    if (v49)
    {
      v50 = v101;
      v51 = *(v102 + 16);
      v52 = *(v102 + 80);
      v91 = v48;
      v53 = v48 + ((v52 + 32) & ~v52);
      v103 = *(v102 + 72);
      v54 = (v102 + 8);
      v97 += 8;
      v45 = MEMORY[0x277D84F90];
      v102 += 16;
      v98 = v51;
      do
      {
        (v51)(v10, v53, v50);
        if (Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.hasImageResource.getter())
        {
          v55 = v99;
          Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.imageResource.getter();
          v56 = Apple_Parsec_Siri_Legacy_ImageResource.resourceURL.getter();
          v58 = v57;
          (*v97)(v55, v100);
          (*v54)(v10, v50);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = v45[2];
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v45 = v62;
          }

          v59 = v45[2];
          if (v59 >= v45[3] >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v45 = v63;
          }

          v45[2] = v59 + 1;
          v60 = &v45[2 * v59];
          v60[4] = v56;
          v60[5] = v58;
          v50 = v101;
          v51 = v98;
        }

        else
        {
          (*v54)(v10, v50);
        }

        v53 += v103;
        --v49;
      }

      while (v49);
    }

    else
    {

      v45 = MEMORY[0x277D84F90];
    }

    (*(v93 + 8))(v92, v94);
    goto LABEL_26;
  }

  if (v47 != *MEMORY[0x277D38FB0])
  {
    (*(v46 + 8))(v27, v32);
LABEL_2:
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logging.search);
    v35 = v98;
    v36 = v31;
    v37 = v103;
    (v98[2])(v5, v36, v103);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v5;
      v42 = v37;
      v43 = swift_slowAlloc();
      v104 = v43;
      *v40 = 136315138;
      Apple_Parsec_Siri_Legacy_PodView.pod.getter();
      String.init<A>(describing:)();
      (v35[1])(v41, v42);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v40 + 4) = v44;
      _os_log_impl(&dword_25D85C000, v38, v39, "Received unexpected gkSnippet pod %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x25F8A1050](v43, -1, -1);
      MEMORY[0x25F8A1050](v40, -1, -1);

      v45 = MEMORY[0x277D84F90];
LABEL_26:
      v65 = v95;
      v64 = v96;
      goto LABEL_27;
    }

    (v35[1])(v5, v37);
    v45 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  (*(v46 + 96))(v27, v32);
  v66 = v91;
  v67 = v27;
  v68 = v90;
  (*(v16 + 32))(v91, v67, v90);
  if (Apple_Parsec_Siri_Legacy_SummaryPod.hasImageResource.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v45 = swift_allocObject();
    *(v45 + 1) = xmmword_25DBC8180;
    v69 = v99;
    Apple_Parsec_Siri_Legacy_SummaryPod.imageResource.getter();
    v70 = Apple_Parsec_Siri_Legacy_ImageResource.resourceURL.getter();
    v71 = v66;
    v73 = v72;
    (*(v97 + 8))(v69, v100);
    v45[4] = v70;
    v45[5] = v73;
    (*(v16 + 8))(v71, v68);
LABEL_19:
    v65 = v95;
    v64 = v96;
    goto LABEL_27;
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  __swift_project_value_buffer(v75, static Logging.search);
  v76 = v16;
  v77 = *(v16 + 16);
  v78 = v89;
  v77(v89, v66, v68);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v104 = v103;
    *v81 = 136315138;
    v77(v88, v78, v68);
    String.init<A>(describing:)();
    v82 = v78;
    v83 = *(v76 + 8);
    v83(v82, v68);
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v81 + 4) = v84;
    _os_log_impl(&dword_25D85C000, v79, v80, "SummaryPod has no image resource: %s", v81, 0xCu);
    v85 = v103;
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    MEMORY[0x25F8A1050](v85, -1, -1);
    MEMORY[0x25F8A1050](v81, -1, -1);
  }

  else
  {

    v86 = v78;
    v83 = *(v76 + 8);
    v83(v86, v68);
  }

  v65 = v95;
  v64 = v96;
  v83(v91, v68);
  v45 = MEMORY[0x277D84F90];
LABEL_27:
  *v64 = v45;
  return outlined destroy of IntentApplication?(v65, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMd, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMR);
}

uint64_t static GlobalSearchResponseProcessor.collatePegasusComponents(components:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F90];
  specialized Sequence.forEach(_:)(a1, &v4, &v3, &v2);
  return v4;
}

void closure #1 in static GlobalSearchResponseProcessor.collatePegasusComponents(components:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v86 = a4;
  v80 = a3;
  v84 = a2;
  v87 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v85 = *(v87 - 1);
  v4 = *(v85 + 64);
  v5 = MEMORY[0x28223BE20](v87);
  v88 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v72 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent();
  v78 = *(v9 - 8);
  v79 = v9;
  v10 = *(v78 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v83 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v77 = &v72 - v13;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v82 = *(v14 - 8);
  v15 = *(v82 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v81 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v72 - v22;
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
  v25 = *(v24 - 8);
  v26 = *(v25 + 8);
  v27 = MEMORY[0x28223BE20](v24);
  v75 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v76 = &v72 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v72 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v72 - v34;
  Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    outlined destroy of IntentApplication?(v23, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logging.search);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_25D85C000, v37, v38, "PegasusResult component missing type", v39, 2u);
      MEMORY[0x25F8A1050](v39, -1, -1);
    }
  }

  else
  {
    (*(v25 + 4))(v35, v23, v24);
    v74 = *(v25 + 2);
    v74(v33, v35, v24);
    v40 = (*(v25 + 11))(v33, v24);
    v41 = v25;
    if (v40 == *MEMORY[0x277D39908])
    {
      (*(v25 + 12))(v33, v24);
      v42 = v85;
      v84 = *(v85 + 32);
      v43 = v87;
      (v84)(v8, v33, v87);
      (*(v42 + 16))(v88, v8, v43);
      v44 = v41;
      v45 = v86;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v46 = *(*v45 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v46);
      (*(v42 + 8))(v8, v43);
      v44[1](v35, v24);
      v47 = *v45;
      *(v47 + 16) = v46 + 1;
      (v84)(v47 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v46, v88, v43);
    }

    else
    {
      v73 = v35;
      if (v40 == *MEMORY[0x277D39900])
      {
        (*(v25 + 12))(v33, v24);
        v48 = v82;
        v88 = *(v82 + 32);
        (v88)(v19, v33, v14);
        v49 = v81;
        (*(v48 + 16))(v81, v19, v14);
        v50 = v41;
        v51 = v84;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v52 = *(*v51 + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v52);
        (*(v48 + 8))(v19, v14);
        v50[1](v73, v24);
        v53 = *v51;
        *(v53 + 16) = v52 + 1;
        (v88)(v53 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v52, v49, v14);
      }

      else if (v40 == *MEMORY[0x277D398F0])
      {
        (*(v25 + 12))(v33, v24);
        v54 = v77;
        v55 = v78;
        v56 = *(v78 + 32);
        v57 = v79;
        v56(v77, v33, v79);
        (*(v55 + 16))(v83, v54, v57);
        v58 = v41;
        v59 = v80;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v60 = *(*v59 + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v60);
        (*(v55 + 8))(v54, v57);
        v58[1](v73, v24);
        v61 = *v59;
        *(v61 + 16) = v60 + 1;
        v56((v61 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v60), v83, v57);
      }

      else
      {
        v88 = v25;
        v62 = v73;
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v63 = type metadata accessor for Logger();
        __swift_project_value_buffer(v63, static Logging.search);
        v64 = v76;
        v65 = v74;
        v74(v76, v62, v24);
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v89 = v87;
          *v68 = 136315138;
          LODWORD(v86) = v67;
          v65(v75, v64, v24);
          String.init<A>(describing:)();
          v69 = *(v88 + 1);
          v69(v64, v24);
          v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v68 + 4) = v70;
          _os_log_impl(&dword_25D85C000, v66, v86, "PegasusResult skipping component %s", v68, 0xCu);
          v71 = v87;
          __swift_destroy_boxed_opaque_existential_1Tm(v87);
          MEMORY[0x25F8A1050](v71, -1, -1);
          MEMORY[0x25F8A1050](v68, -1, -1);

          v69(v73, v24);
        }

        else
        {

          v69 = *(v88 + 1);
          v69(v64, v24);
          v69(v62, v24);
        }

        v69(v33, v24);
      }
    }
  }
}

uint64_t lazy protocol witness table accessor for type Searchfoundation_Card and conformance Searchfoundation_Card(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_7(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s10OmniSearch0B6ResultVWObTm_6(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_8_35()
{
  v1 = *(*(v0 - 280) + 8);
  result = *(v0 - 192);
  v3 = *(v0 - 272);
  return result;
}

void OUTLINED_FUNCTION_10_32(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_15_30()
{

  return _s10OmniSearch0B10ResultItemOWOhTm_7(v0, type metadata accessor for GlobalItem);
}

void OUTLINED_FUNCTION_38_23(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_39_20(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

Swift::String __swiftcall GeoLocation.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 56);
  v124 = *(v1 + 40);
  v125 = v7;
  v8 = *(v1 + 72);
  v9 = *(v1 + 76);
  v98 = *(v1 + 96);
  v99 = *(v1 + 80);
  v96 = *(v1 + 120);
  v82 = *(v1 + 128);
  v86 = v2;
  v74 = *(v1 + 112);
  v78 = *(v1 + 136);
  HIDWORD(v70) = *(v1 + 144);
  v97 = *(v1 + 148);
  v122 = *(v1 + 149);
  v123 = *(v1 + 151);
  v10 = *(v1 + 152);
  v95 = *(v1 + 156);
  MEMORY[0x25F89F5D0](293, locale.value._object);
  v121[5] = 0;
  v121[6] = 0xE000000000000000;
  MEMORY[0x25F89F6C0](0xD000000000000016, 0x800000025DBF6B10);

  v11 = LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  OUTLINED_FUNCTION_3_47(v11, v12, v13, v14, v15, v16, v17, v18, v70, v74, v78, v82, v86, v91);
  MEMORY[0x25F89F6C0](0x6461202020200A2CLL, 0xEF203A7373657264);
  HIDWORD(v100) = HIDWORD(v5);
  v101 = v6;

  v19 = LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  OUTLINED_FUNCTION_3_47(v19, v20, v21, v22, v23, v24, v25, v26, v71, v75, v79, v83, v87, v5);
  OUTLINED_FUNCTION_1_61();
  v27 = MEMORY[0x277D83A90];
  v28 = MEMORY[0x277D83AF8];
  v29 = LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  OUTLINED_FUNCTION_3_47(v29, v30, v31, v32, v33, v34, v35, v36, v72, v76, v80, v84, v88, v92);
  MEMORY[0x25F89F6C0](0xD000000000000011, 0x800000025DBF6B50);
  v103 = v27;
  v104 = v28;
  LODWORD(v100) = v9;
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v100, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](0xD000000000000011, 0x800000025DBF6B70);
  v126.value._rawValue = v99;
  LLMFormatter.StringInterpolation.appendInterpolation(names:)(v126);
  MEMORY[0x25F89F6C0](0x6577202020200A2CLL, 0xEF203A6574697362);
  v37 = v98;
  if (v98)
  {
    v38 = *(&v99 + 1);
    v39 = MEMORY[0x277D83838];
    v40 = MEMORY[0x277D837D0];
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    v102 = 0;
  }

  v100 = v38;
  v101 = v37;
  v103 = v40;
  v104 = v39;

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v100, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_1_61();
  v41 = v77;
  v42 = HIDWORD(v73);
  v43 = v96;
  if (v96)
  {
    v44 = MEMORY[0x277D83838];
    v45 = MEMORY[0x277D837D0];
    v46 = v77;
  }

  else
  {
    OUTLINED_FUNCTION_7_37();
    v102 = 0;
  }

  v48 = v81;
  v47 = v85;
  v100 = v46;
  v101 = v43;
  v103 = v45;
  v104 = v44;

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v100, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](0xD000000000000013, 0x800000025DBF6BB0);
  if (v81)
  {
    v49 = MEMORY[0x277D83838];
    v50 = MEMORY[0x277D837D0];
    v51 = v81;
    v52 = v85;
  }

  else
  {
    OUTLINED_FUNCTION_7_37();
    v102 = 0;
  }

  v100 = v52;
  v101 = v51;
  v103 = v50;
  v104 = v49;

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v100, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_1_61();
  if (v97)
  {
    OUTLINED_FUNCTION_7_37();
    v100 = 0;
    v101 = 0;
    v102 = 0;
  }

  else
  {
    LODWORD(v100) = HIDWORD(v73);
    v53 = MEMORY[0x277D84D18];
    v54 = MEMORY[0x277D84CC0];
  }

  v103 = v54;
  v104 = v53;
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v100, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](0xD000000000000011, 0x800000025DBF6BF0);
  if (v95)
  {
    OUTLINED_FUNCTION_7_37();
    v100 = 0;
    v101 = 0;
    v102 = 0;
  }

  else
  {
    LODWORD(v100) = v10;
    v55 = MEMORY[0x277D84D18];
    v56 = MEMORY[0x277D84CC0];
  }

  v103 = v56;
  v104 = v55;
  v57 = LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  OUTLINED_FUNCTION_3_47(v57, v58, v59, v60, v61, v62, v63, v64, v73, v77, v81, v85, v89, v93);
  MEMORY[0x25F89F6C0](0x617473202020200ALL, 0xED0000203A737574);
  v105 = v124;
  v100 = v90;
  v101 = v3;
  v102 = v4;
  v103 = v94;
  v104 = v6;
  v106 = v125;
  v107 = v8;
  v108 = v9;
  v109 = v99;
  v110 = v98;
  v111 = v41;
  v112 = v96;
  v113 = v47;
  v114 = v48;
  v115 = v42;
  v116 = v97;
  v117 = v122;
  v118 = v123;
  v119 = v10;
  v120 = v95;
  v65 = GeoLocation.openNow.getter();
  v121[3] = MEMORY[0x277D837D0];
  v121[4] = MEMORY[0x277D83838];
  v121[0] = v65;
  v121[1] = v66;
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(v121, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  LLMFormatter.sanitized.getter();
  OUTLINED_FUNCTION_89_10();
  v67 = OUTLINED_FUNCTION_88();
  result._object = v68;
  result._countAndFlagsBits = v67;
  return result;
}

Swift::String __swiftcall WebImage.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v28 - v5;
  *&v28 = 0;
  *(&v28 + 1) = 0xE000000000000000;
  MEMORY[0x25F89F5D0](67, v4);
  v31 = v28;
  MEMORY[0x25F89F6C0](0x67616D6920626557, 0xEB00000000203A65);
  v7 = type metadata accessor for WebImage();
  v8 = OUTLINED_FUNCTION_8_36(v7[6]);
  if (v8)
  {
    v10 = *v9;
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    *&v29 = 0;
  }

  OUTLINED_FUNCTION_10_33(v8, v10);
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v28, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](32, 0xE100000000000000);
  v11 = OUTLINED_FUNCTION_8_36(v7[7]);
  if (v11)
  {
    v13 = *v12;
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    *&v29 = 0;
  }

  OUTLINED_FUNCTION_10_33(v11, v13);
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v28, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_4_42();
  v14 = OUTLINED_FUNCTION_8_36(v7[8]);
  if (v14)
  {
    v16 = *v15;
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    *&v29 = 0;
  }

  OUTLINED_FUNCTION_10_33(v14, v16);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0x3A74786554746C61, 0xE800000000000000, &v28, 0);
  outlined destroy of (offset: Int, element: SearchResult)(&v28, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](32, 0xE100000000000000);
  v17 = OUTLINED_FUNCTION_8_36(v7[9]);
  if (v17)
  {
    v19 = *v18;
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    *&v29 = 0;
  }

  OUTLINED_FUNCTION_10_33(v17, v19);
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v28, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_4_42();
  outlined init with copy of URL?(v1 + v7[5], v6);
  v20 = type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v6, 1, v20) == 1)
  {
    outlined destroy of (offset: Int, element: SearchResult)(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
  }

  else
  {
    v21 = MEMORY[0x277D837D0];
    v22 = MEMORY[0x277D83838];
    v23 = URL.path.getter();
    *(&v29 + 1) = v21;
    v30 = v22;
    *&v28 = v23;
    *(&v28 + 1) = v24;
    (*(*(v20 - 8) + 8))(v6, v20);
  }

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v28, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  LLMFormatter.sanitized.getter();
  OUTLINED_FUNCTION_89_10();
  v25 = OUTLINED_FUNCTION_88();
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall KGDocument.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v24 - v5;
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  MEMORY[0x25F89F5D0](70, v4);
  v27 = v24;
  MEMORY[0x25F89F6C0](0x656D75636F44474BLL, 0xEC000000203A746ELL);
  v7 = type metadata accessor for KGDocument();
  v8 = (v1 + v7[7]);
  v10 = *v8;
  v9 = v8[1];
  v11 = MEMORY[0x277D837D0];
  v12 = MEMORY[0x277D83838];
  *(&v25 + 1) = MEMORY[0x277D837D0];
  v26 = MEMORY[0x277D83838];
  *&v24 = v10;
  *(&v24 + 1) = v9;

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_9_37(v7[8]);
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_9_37(v7[6]);
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_4_42();
  outlined init with copy of URL?(v1 + v7[9], v6);
  v13 = type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
  {
    outlined destroy of (offset: Int, element: SearchResult)(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  else
  {
    v14 = URL.path.getter();
    *(&v25 + 1) = v11;
    v26 = v12;
    *&v24 = v14;
    *(&v24 + 1) = v15;
    (*(*(v13 - 8) + 8))(v6, v13);
  }

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v24, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_4_42();
  v16 = (v1 + v7[10]);
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    v19 = MEMORY[0x277D83838];
    v20 = MEMORY[0x277D837D0];
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    *&v25 = 0;
  }

  *&v24 = v18;
  *(&v24 + 1) = v17;
  *(&v25 + 1) = v20;
  v26 = v19;

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v24, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  LLMFormatter.sanitized.getter();
  OUTLINED_FUNCTION_89_10();
  v21 = OUTLINED_FUNCTION_88();
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

Swift::String __swiftcall WebAnswer.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  v11 = 0;
  v12 = 0xE000000000000000;
  MEMORY[0x25F89F5D0](34, locale.value._object);
  v16 = 0;
  v17 = 0xE000000000000000;
  MEMORY[0x25F89F6C0](0x77736E6120626557, 0xEC000000203A7265);
  v3 = v1[2];
  v2 = v1[3];
  v14 = MEMORY[0x277D837D0];
  v15 = MEMORY[0x277D83838];
  v11 = v3;
  v12 = v2;

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v11, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_4_42();
  v4 = v1[5];
  if (v4)
  {
    v5 = v1[4];
    v6 = MEMORY[0x277D83838];
    v7 = MEMORY[0x277D837D0];
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    v13 = 0;
  }

  v11 = v5;
  v12 = v4;
  v14 = v7;
  v15 = v6;

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v11, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  LLMFormatter.sanitized.getter();
  OUTLINED_FUNCTION_89_10();
  v8 = OUTLINED_FUNCTION_88();
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

void OUTLINED_FUNCTION_1_61()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_3_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return outlined destroy of (offset: Int, element: SearchResult)(va, v14, v15);
}

void OUTLINED_FUNCTION_4_42()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_5_39()
{

  return outlined destroy of (offset: Int, element: SearchResult)(v2 - 128, v0, v1);
}

uint64_t OUTLINED_FUNCTION_9_37@<X0>(uint64_t a1@<X8>)
{
  v6 = (v1 + a1);
  v8 = *v6;
  v7 = v6[1];
  *(v4 - 104) = v2;
  *(v4 - 96) = v3;
  *(v4 - 128) = v8;
  *(v4 - 120) = v7;
}

uint64_t OUTLINED_FUNCTION_10_33@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v4 - 112) = a2;
  *(v4 - 104) = a1;
  *(v4 - 88) = v3;
  *(v4 - 80) = v2;
}

uint64_t KGDocument.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t KGDocument.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t KGDocument.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for KGDocument() + 20);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t type metadata accessor for KGDocument()
{
  result = type metadata singleton initialization cache for KGDocument;
  if (!type metadata singleton initialization cache for KGDocument)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KGDocument.url.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_40() + 20);

  return outlined assign with take of URL?(v0, v2);
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t KGDocument.description.getter()
{
  v0 = type metadata accessor for KGDocument();
  OUTLINED_FUNCTION_60_5(*(v0 + 24));
  return OUTLINED_FUNCTION_94();
}

uint64_t KGDocument.description.setter()
{
  v3 = OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_12_34(*(v3 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t KGDocument.title.getter()
{
  v0 = type metadata accessor for KGDocument();
  OUTLINED_FUNCTION_60_5(*(v0 + 28));
  return OUTLINED_FUNCTION_94();
}

uint64_t KGDocument.title.setter()
{
  v3 = OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_12_34(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t KGDocument.subtitle.getter()
{
  v0 = type metadata accessor for KGDocument();
  OUTLINED_FUNCTION_60_5(*(v0 + 32));
  return OUTLINED_FUNCTION_94();
}

uint64_t KGDocument.subtitle.setter()
{
  v3 = OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_12_34(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t KGDocument.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for KGDocument() + 36);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t KGDocument.thumbnail.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_40() + 36);

  return outlined assign with take of URL?(v0, v2);
}

uint64_t KGDocument.attributionTitle.getter()
{
  v0 = type metadata accessor for KGDocument();
  OUTLINED_FUNCTION_60_5(*(v0 + 40));
  return OUTLINED_FUNCTION_94();
}

uint64_t KGDocument.attributionTitle.setter()
{
  v3 = OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_12_34(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t KGDocument.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x69616E626D756874 && a2 == 0xE90000000000006CLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000010 && 0x800000025DBF6C10 == a2)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t KGDocument.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x656C746974627573;
      break;
    case 5:
      result = 0x69616E626D756874;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KGDocument.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = KGDocument.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KGDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KGDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KGDocument.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch10KGDocumentV10CodingKeys33_5D8BF095CA54FF65E32E890E185824DBLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch10KGDocumentV10CodingKeys33_5D8BF095CA54FF65E32E890E185824DBLLOGMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  v29 = 0;
  OUTLINED_FUNCTION_24_12();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = type metadata accessor for KGDocument();
    v17 = v16[5];
    v28 = 1;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_62();
    lazy protocol witness table accessor for type URL and conformance URL(v18, v19);
    OUTLINED_FUNCTION_7_38();
    OUTLINED_FUNCTION_9_38(v16[6]);
    v27 = 2;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_9_38(v16[7]);
    v26 = 3;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_9_38(v16[8]);
    v25 = 4;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v16[9];
    v24 = 5;
    OUTLINED_FUNCTION_7_38();
    OUTLINED_FUNCTION_9_38(v16[10]);
    v23 = 6;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys);
  }

  return result;
}

uint64_t KGDocument.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v47 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch10KGDocumentV10CodingKeys33_5D8BF095CA54FF65E32E890E185824DBLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch10KGDocumentV10CodingKeys33_5D8BF095CA54FF65E32E890E185824DBLLOGMR);
  v10 = OUTLINED_FUNCTION_14(v48);
  v47[1] = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = v47 - v14;
  v16 = type metadata accessor for KGDocument();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v20 + 20);
  v22 = type metadata accessor for URL();
  v52 = v21;
  __swift_storeEnumTagSinglePayload(v19 + v21, 1, 1, v22);
  v23 = v16;
  v51 = *(v16 + 36);
  __swift_storeEnumTagSinglePayload(v19 + v51, 1, 1, v22);
  v25 = a1[3];
  v24 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  lazy protocol witness table accessor for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys();
  v47[2] = v15;
  v26 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    outlined destroy of URL?(v19 + v52);
    return outlined destroy of URL?(v19 + v51);
  }

  else
  {
    v49 = v6;
    v59 = 0;
    *v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v19[1] = v27;
    v58 = 1;
    OUTLINED_FUNCTION_1_62();
    lazy protocol witness table accessor for type URL and conformance URL(v28, v29);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of URL?(v9, v19 + v52);
    v57 = 2;
    OUTLINED_FUNCTION_10_34();
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = (v19 + v23[6]);
    *v31 = v30;
    v31[1] = v32;
    v56 = 3;
    OUTLINED_FUNCTION_10_34();
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = (v19 + v23[7]);
    *v34 = v33;
    v34[1] = v35;
    v55 = 4;
    OUTLINED_FUNCTION_10_34();
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = (v19 + v23[8]);
    *v37 = v36;
    v37[1] = v38;
    v54 = 5;
    v39 = v49;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of URL?(v39, v19 + v51);
    v53 = 6;
    OUTLINED_FUNCTION_10_34();
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v41;
    v43 = (v19 + v23[10]);
    v44 = OUTLINED_FUNCTION_11_37();
    v45(v44);
    *v43 = v40;
    v43[1] = v42;
    outlined init with copy of KGDocument(v19, v47[0]);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    return outlined destroy of KGDocument(v19);
  }
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of KGDocument(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KGDocument();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of KGDocument(uint64_t a1)
{
  v2 = type metadata accessor for KGDocument();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t KGDocument.init(id:url:description:title:subtitle:thumbnail:attributionTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  a9[1] = a2;
  v20 = type metadata accessor for KGDocument();
  outlined init with take of URL?(a3, a9 + v20[5]);
  v21 = (a9 + v20[6]);
  *v21 = a4;
  v21[1] = a5;
  v22 = (a9 + v20[7]);
  *v22 = a6;
  v22[1] = a7;
  v23 = (a9 + v20[8]);
  *v23 = a8;
  v23[1] = a10;
  result = outlined init with take of URL?(a11, a9 + v20[9]);
  v25 = (a9 + v20[10]);
  *v25 = a12;
  v25[1] = a13;
  return result;
}

uint64_t instantiation function for generic protocol witness table for KGDocument(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type KGDocument and conformance KGDocument, type metadata accessor for KGDocument);
  a1[2] = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type KGDocument and conformance KGDocument, type metadata accessor for KGDocument);
  result = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type KGDocument and conformance KGDocument, type metadata accessor for KGDocument);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for KGDocument()
{
  type metadata accessor for URL?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for KGDocument.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_43()
{

  return type metadata accessor for KGDocument();
}

uint64_t OUTLINED_FUNCTION_5_40()
{

  return type metadata accessor for KGDocument();
}

uint64_t OUTLINED_FUNCTION_7_38()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_9_38@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_37()
{
  v2 = *(v0 + 8);
  result = *(v1 - 128);
  v4 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_34@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t WebAnswer.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WebAnswer.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WebAnswer.answer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WebAnswer.answer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t WebAnswer.attributionTitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t WebAnswer.attributionTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t WebAnswer.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebAnswer() + 28);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t type metadata accessor for WebAnswer()
{
  result = type metadata singleton initialization cache for WebAnswer;
  if (!type metadata singleton initialization cache for WebAnswer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WebAnswer.url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WebAnswer() + 28);

  return outlined assign with take of URL?(a1, v3);
}

uint64_t WebAnswer.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726577736E61 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000025DBF6C10 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 7107189 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t WebAnswer.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x726577736E61;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WebAnswer.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WebAnswer.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WebAnswer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WebAnswer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebAnswer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch9WebAnswerV10CodingKeys33_5770C31ABE43736A7338B017808BB504LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch9WebAnswerV10CodingKeys33_5770C31ABE43736A7338B017808BB504LLOGMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v24[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  v24[15] = 0;
  OUTLINED_FUNCTION_2_47();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v24[14] = 1;
    OUTLINED_FUNCTION_2_47();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[4];
    v19 = v3[5];
    v24[13] = 2;
    OUTLINED_FUNCTION_2_47();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(type metadata accessor for WebAnswer() + 28);
    v24[12] = 3;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_63();
    _s10Foundation3URLVACSEAAWlTm_0(v21, v22);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys);
  }

  return result;
}

uint64_t WebAnswer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch9WebAnswerV10CodingKeys33_5770C31ABE43736A7338B017808BB504LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch9WebAnswerV10CodingKeys33_5770C31ABE43736A7338B017808BB504LLOGMR);
  v9 = OUTLINED_FUNCTION_14(v8);
  v32 = v10;
  v33 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = type metadata accessor for WebAnswer();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v17 + 36);
  v19 = type metadata accessor for URL();
  v34 = v18;
  __swift_storeEnumTagSinglePayload(v16 + v18, 1, 1, v19);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return outlined destroy of URL?(v16 + v34);
  }

  else
  {
    v29[2] = v19;
    v30 = v7;
    v38 = 0;
    *v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v16[1] = v21;
    v37 = 1;
    v16[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v16[3] = v22;
    v36 = 2;
    v16[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16[5] = v23;
    v29[1] = v23;
    v35 = 3;
    OUTLINED_FUNCTION_1_63();
    _s10Foundation3URLVACSEAAWlTm_0(v24, v25);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = OUTLINED_FUNCTION_0_63();
    v27(v26);
    outlined assign with take of URL?(v30, v16 + v34);
    outlined init with copy of WebAnswer(v16, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return outlined destroy of WebAnswer(v16);
  }
}

uint64_t outlined init with copy of WebAnswer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebAnswer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WebAnswer(uint64_t a1)
{
  v2 = type metadata accessor for WebAnswer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WebAnswer.init(id:answer:attributionTitle:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v9 = a8 + *(type metadata accessor for WebAnswer() + 28);

  return outlined init with take of URL?(a7, v9);
}

uint64_t instantiation function for generic protocol witness table for WebAnswer(void *a1)
{
  a1[1] = _s10Foundation3URLVACSEAAWlTm_0(&lazy protocol witness table cache variable for type WebAnswer and conformance WebAnswer, type metadata accessor for WebAnswer);
  a1[2] = _s10Foundation3URLVACSEAAWlTm_0(&lazy protocol witness table cache variable for type WebAnswer and conformance WebAnswer, type metadata accessor for WebAnswer);
  result = _s10Foundation3URLVACSEAAWlTm_0(&lazy protocol witness table cache variable for type WebAnswer and conformance WebAnswer, type metadata accessor for WebAnswer);
  a1[3] = result;
  return result;
}

uint64_t _s10Foundation3URLVACSEAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for WebAnswer()
{
  type metadata accessor for String?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for WebAnswer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t WebImage.init(id:url:title:description:altText:surroundingText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  a9[1] = a2;
  v18 = type metadata accessor for WebImage();
  result = outlined init with take of URL?(a3, a9 + v18[5]);
  v20 = (a9 + v18[6]);
  *v20 = a4;
  v20[1] = a5;
  v21 = (a9 + v18[7]);
  *v21 = a6;
  v21[1] = a7;
  v22 = (a9 + v18[8]);
  *v22 = a8;
  v22[1] = a10;
  v23 = (a9 + v18[9]);
  *v23 = a11;
  v23[1] = a12;
  return result;
}

uint64_t type metadata accessor for WebImage()
{
  result = type metadata singleton initialization cache for WebImage;
  if (!type metadata singleton initialization cache for WebImage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WebImage.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t WebImage.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebImage() + 20);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t WebImage.title.getter()
{
  v0 = type metadata accessor for WebImage();
  OUTLINED_FUNCTION_60_5(*(v0 + 24));
  return OUTLINED_FUNCTION_94();
}

uint64_t WebImage.description.getter()
{
  v0 = type metadata accessor for WebImage();
  OUTLINED_FUNCTION_60_5(*(v0 + 28));
  return OUTLINED_FUNCTION_94();
}

uint64_t WebImage.altText.getter()
{
  v0 = type metadata accessor for WebImage();
  OUTLINED_FUNCTION_60_5(*(v0 + 32));
  return OUTLINED_FUNCTION_94();
}

uint64_t WebImage.surroundingText.getter()
{
  v0 = type metadata accessor for WebImage();
  OUTLINED_FUNCTION_60_5(*(v0 + 36));
  return OUTLINED_FUNCTION_94();
}

uint64_t WebImage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74786554746C61 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x646E756F72727573 && a2 == 0xEF74786554676E69)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t WebImage.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    case 4:
      result = 0x74786554746C61;
      break;
    case 5:
      result = 0x646E756F72727573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WebImage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WebImage.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WebImage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WebImage.CodingKeys and conformance WebImage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WebImage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WebImage.CodingKeys and conformance WebImage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebImage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch8WebImageV10CodingKeys33_A95FE5439FB9E4958D5BDC2E3560F45CLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch8WebImageV10CodingKeys33_A95FE5439FB9E4958D5BDC2E3560F45CLLOGMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WebImage.CodingKeys and conformance WebImage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  v21[15] = 0;
  OUTLINED_FUNCTION_24_12();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = type metadata accessor for WebImage();
    v17 = v16[5];
    v21[14] = 1;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_2_48();
    _s10Foundation3URLVACSEAAWlTm_1(v18, v19);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_9_38(v16[6]);
    v21[13] = 2;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_38(v16[7]);
    v21[12] = 3;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_38(v16[8]);
    v21[11] = 4;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_38(v16[9]);
    v21[10] = 5;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type WebImage.CodingKeys and conformance WebImage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys);
  }

  return result;
}

uint64_t WebImage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v41 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch8WebImageV10CodingKeys33_A95FE5439FB9E4958D5BDC2E3560F45CLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch8WebImageV10CodingKeys33_A95FE5439FB9E4958D5BDC2E3560F45CLLOGMR);
  v9 = OUTLINED_FUNCTION_14(v42);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v43 = type metadata accessor for WebImage();
  v12 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WebImage.CodingKeys and conformance WebImage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v41 = a2;
  v50 = 0;
  OUTLINED_FUNCTION_3_48();
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v44;
  *v44 = v15;
  v16[1] = v17;
  type metadata accessor for URL();
  v49 = 1;
  OUTLINED_FUNCTION_2_48();
  _s10Foundation3URLVACSEAAWlTm_1(v18, v19);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v16;
  v21 = v43;
  outlined init with take of URL?(v8, v20 + *(v43 + 20));
  v48 = 2;
  OUTLINED_FUNCTION_3_48();
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v44;
  v24 = (v44 + v21[6]);
  *v24 = v22;
  v24[1] = v25;
  v47 = 3;
  OUTLINED_FUNCTION_3_48();
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = (v23 + v21[7]);
  *v27 = v26;
  v27[1] = v28;
  v46 = 4;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = (v23 + v21[8]);
  *v30 = v29;
  v30[1] = v31;
  v45 = 5;
  OUTLINED_FUNCTION_3_48();
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = v33;
  v35 = OUTLINED_FUNCTION_49_13();
  v36(v35);
  v37 = v21[9];
  v38 = v44;
  v39 = (v44 + v37);
  *v39 = v32;
  v39[1] = v34;
  outlined init with copy of WebImage(v38, v41);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of WebImage(v38);
}

uint64_t outlined init with copy of WebImage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebImage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WebImage(uint64_t a1)
{
  v2 = type metadata accessor for WebImage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for WebImage(void *a1)
{
  a1[1] = _s10Foundation3URLVACSEAAWlTm_1(&lazy protocol witness table cache variable for type WebImage and conformance WebImage, type metadata accessor for WebImage);
  a1[2] = _s10Foundation3URLVACSEAAWlTm_1(&lazy protocol witness table cache variable for type WebImage and conformance WebImage, type metadata accessor for WebImage);
  result = _s10Foundation3URLVACSEAAWlTm_1(&lazy protocol witness table cache variable for type WebImage and conformance WebImage, type metadata accessor for WebImage);
  a1[3] = result;
  return result;
}

uint64_t _s10Foundation3URLVACSEAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for WebImage()
{
  type metadata accessor for URL?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for WebImage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t *BundleIdEventSourceIdMapping.dict.unsafeMutableAddressor()
{
  if (one-time initialization token for dict != -1)
  {
    OUTLINED_FUNCTION_4_44();
  }

  return &static BundleIdEventSourceIdMapping.dict;
}

uint64_t String.oms_bundleIdIs3P.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    LOBYTE(v2) = BidirectionalCollection<>.starts<A>(with:)() ^ 1;
  }

  return v2 & 1;
}

uint64_t one-time initialization function for dict()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000025DBF1CF0;
  v1 = *MEMORY[0x277CC32E8];
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v2;
  result = Dictionary.init(dictionaryLiteral:)();
  static BundleIdEventSourceIdMapping.dict = result;
  return result;
}

uint64_t static BundleIdEventSourceIdMapping.dict.getter()
{
  if (one-time initialization token for dict != -1)
  {
    OUTLINED_FUNCTION_4_44();
  }
}

_BYTE *storeEnumTagSinglePayload for BundleId(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_44()
{

  return swift_once();
}

uint64_t EventSourceInfo.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t EventSourceInfo.contentType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t EventSourceInfo.eventIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_94();
}

uint64_t EventSourceInfo.identifierKey.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_94();
}

void __swiftcall EventSourceInfo.init(from:)(OmniSearch::EventSourceInfo_optional *__return_ptr retstr, CSSearchableItem from)
{
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &off_2799EF000;
  v12 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.getter([(objc_class *)from.super.isa attributeSet], &selRef_eventSourceBundleIdentifier);
  v14 = v13;
  if (!v13)
  {

    v15 = 0;
    goto LABEL_10;
  }

  v15 = v12;
  v16 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(from.super.isa);
  v18 = v17;
  if (!v17)
  {

    OUTLINED_FUNCTION_2_50();
    goto LABEL_12;
  }

  v36 = v6;
  v2 = 0xD000000000000013;
  if (v16 == 0xD00000000000001ALL && v17 == 0x800000025DBEE6C0)
  {

LABEL_16:
    v24 = v15 == 0xD000000000000014 && 0x800000025DBF1CF0 == v14;
    if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v25 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.getter([(objc_class *)from.super.isa attributeSet], &selRef_mailMessageID);
      v21 = v26;
      if (v26)
      {
        v18 = v25;
        static UTType.emailMessage.getter();
        v27 = MEMORY[0x277CC32E8];
LABEL_23:
        v35 = v27;
        v11 = UTType.identifier.getter();
        v2 = v28;
        (*(v36 + 8))(v10, v5);
        v29 = *v35;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v30;

        v38[0] = v15;
        v38[1] = v14;
        v38[2] = v11;
        v38[3] = v2;
        v38[4] = v18;
        v38[5] = v21;
        v38[6] = v22;
        v38[7] = v23;
        v39[0] = v15;
        v39[1] = v14;
        v39[2] = v11;
        v39[3] = v2;
        v39[4] = v18;
        v39[5] = v21;
        v39[6] = v22;
        v39[7] = v23;
        outlined init with copy of EventSourceInfo(v38, v37);
        outlined destroy of EventSourceInfo(v39);
        goto LABEL_14;
      }
    }

    else
    {
      v31 = v15 == 0xD000000000000013 && 0x800000025DBF1D10 == v14;
      if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_8;
      }

      v32 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.getter([(objc_class *)from.super.isa attributeSet], &selRef_eventMessageIdentifier);
      v21 = v33;
      if (v33)
      {
        v18 = v32;
        static UTType.message.getter();
        v27 = MEMORY[0x277CC2418];
        goto LABEL_23;
      }
    }

    OUTLINED_FUNCTION_2_50();
    v18 = 0;
    goto LABEL_13;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_16;
  }

LABEL_8:

  v15 = 0;
  v14 = 0;
LABEL_10:
  v11 = 0;
  v2 = 0;
  v18 = 0;
LABEL_12:
  v21 = 0;
LABEL_13:
  v22 = 0;
  v23 = 0;
LABEL_14:
  retstr->value.bundleId._countAndFlagsBits = v15;
  retstr->value.bundleId._object = v14;
  retstr->value.contentType._countAndFlagsBits = v11;
  retstr->value.contentType._object = v2;
  retstr->value.eventIdentifier._countAndFlagsBits = v18;
  retstr->value.eventIdentifier._object = v21;
  retstr->value.identifierKey._countAndFlagsBits = v22;
  retstr->value.identifierKey._object = v23;
}

Swift::Bool __swiftcall EventSourceInfo.isExtractedFromSource(_:)(CSSearchableItem a1)
{
  v3 = [(objc_class *)a1.super.isa attributeSet];
  v4 = MEMORY[0x25F89F4C0](v1[6], v1[7]);
  v5 = [v3 attributeForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (!*(&v20 + 1))
  {
    outlined destroy of Any?(v21);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v10 = 0;
    return v10 & 1;
  }

  v6 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(a1.super.isa);
  if (!v7)
  {
LABEL_12:

    goto LABEL_14;
  }

  if (v6 == *v1 && v7 == v1[1])
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (v17 == v1[4] && v18 == v1[5])
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v14 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.contentType.getter([(objc_class *)a1.super.isa attributeSet]);
  if (!v15)
  {
    goto LABEL_14;
  }

  if (v14 == v1[2] && v15 == v1[3])
  {

    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t EventSourceInfo.queryString.getter()
{
  v1 = *MEMORY[0x277CC2500];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_65();
  MEMORY[0x25F89F6C0](*v0, *(v0 + 8));
  v2 = v18;
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_65();
    v4 = v13;
  }

  *(v4 + 16) = v5 + 1;
  *(v4 + 16 * v5 + 32) = v2;
  v6 = *MEMORY[0x277CC2678];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_65();
  MEMORY[0x25F89F6C0](*(v0 + 16), *(v0 + 24));
  v7 = v18;
  v8 = *(v4 + 16);
  if (v8 >= *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_65();
    v4 = v14;
  }

  *(v4 + 16) = v8 + 1;
  *(v4 + 16 * v8 + 32) = v7;
  v17 = *(v0 + 48);
  v18 = v17;
  outlined init with copy of String(&v18, &v16);
  MEMORY[0x25F89F6C0](572538144, 0xE400000000000000);
  MEMORY[0x25F89F6C0](*(v0 + 32), *(v0 + 40));
  MEMORY[0x25F89F6C0](34, 0xE100000000000000);
  v9 = v17;
  v10 = *(v4 + 16);
  if (v10 >= *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_65();
    v4 = v15;
  }

  *(v4 + 16) = v10 + 1;
  *(v4 + 16 * v10 + 32) = v9;
  *&v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v11 = BidirectionalCollection<>.joined(separator:)();

  return v11;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void OUTLINED_FUNCTION_0_65()
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void OUTLINED_FUNCTION_1_65()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t static LocalIndexClient.displayName(for:)(uint64_t a1, uint64_t a2)
{
  v3 = Dictionary.init(dictionaryLiteral:)();
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_72_2();
    specialized Dictionary.subscript.getter(v4, v5, v3);
    v7 = v6;

    if (!v7)
    {
    }

    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LSBundleRecord, 0x277CC1E90);

    v8 = OUTLINED_FUNCTION_30_5();
    v10 = @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(v8, v9, 0);

    v11 = [v10 localizedName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return OUTLINED_FUNCTION_72_2();
}

uint64_t *LocalIndexClient.keyAttributeAppEntityTitle.unsafeMutableAddressor()
{
  if (one-time initialization token for keyAttributeAppEntityTitle != -1)
  {
    OUTLINED_FUNCTION_27_22();
  }

  return &static LocalIndexClient.keyAttributeAppEntityTitle;
}

uint64_t static LocalIndexClient.iWorkBundleIdForFile(item:)(void *a1)
{
  outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([a1 attributeSet], &selRef_bundleID);
  if (!v2)
  {
LABEL_7:
    outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([a1 attributeSet], &selRef_bundleID);
    if (!v8)
    {
      return OUTLINED_FUNCTION_45_0();
    }

    OUTLINED_FUNCTION_148_8();
    if (v11 != 0xD000000000000023 || v9 != v10)
    {
      v13 = OUTLINED_FUNCTION_171_5();

      if ((v13 & 1) == 0)
      {
        return OUTLINED_FUNCTION_45_0();
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_148_8();
  v6 = v5 == 0xD00000000000002BLL && v3 == v4;
  if (!v6)
  {
    v7 = OUTLINED_FUNCTION_171_5();

    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

LABEL_14:

LABEL_15:
  CSSearchableItem.associatedAppEntityTypeId.getter();
  if (v14)
  {
    v15 = v14;
    v16 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([a1 attributeSet], &selRef_contentType);
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      OUTLINED_FUNCTION_120_8();
      v21 = v6 && v20 == v15;
      if (v21 || (OUTLINED_FUNCTION_82_14() & 1) != 0)
      {
        OUTLINED_FUNCTION_198_4();
        v23 = v6 && v22 == v19;
        if (v23 || (OUTLINED_FUNCTION_163_6() & 1) != 0)
        {
          goto LABEL_50;
        }
      }

      OUTLINED_FUNCTION_120_8();
      v25 = v6 && v24 == v15;
      if (v25 || (OUTLINED_FUNCTION_82_14()) && (v18 == 0xD000000000000022 ? (v26 = 0x800000025DBF6DF0 == v19) : (v26 = 0), v26 || (OUTLINED_FUNCTION_163_6()) || ((OUTLINED_FUNCTION_120_8(), v6) ? (v28 = v27 == v15) : (v28 = 0), (v28 || (OUTLINED_FUNCTION_82_14()) && ((OUTLINED_FUNCTION_198_4(), v6) ? (v30 = v29 == v19) : (v30 = 0), v30 || (OUTLINED_FUNCTION_163_6())))
      {
LABEL_50:
        v31 = one-time initialization token for search;

        if (v31 != -1)
        {
          OUTLINED_FUNCTION_1_31();
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v32, static Logging.search);

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = OUTLINED_FUNCTION_49_0();
          OUTLINED_FUNCTION_88_2();
          *v35 = 136315650;
          OUTLINED_FUNCTION_45_0();
          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v35 + 4) = v36;
          *(v35 + 12) = 2080;
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v35 + 14) = v37;
          *(v35 + 22) = 2080;
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_227_2();
          *(v35 + 24) = v15;
          _os_log_impl(&dword_25D85C000, v33, v34, "Replaced bundle ID to %s for AppEntity of type %s and content type %s.", v35, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {
        }
      }

      else
      {
        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_1_31();
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v39, static Logging.search);

        v33 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v33, v40))
        {
          v41 = swift_slowAlloc();
          swift_slowAlloc();
          *v41 = 136315394;
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v41 + 4) = v42;
          *(v41 + 12) = 2080;
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_227_2();
          *(v41 + 14) = v15;
          _os_log_impl(&dword_25D85C000, v33, v40, "Unexpected AppEntity type %s and content type %s found in Files index.", v41, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }

  return OUTLINED_FUNCTION_45_0();
}

void EmailDocument.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v199 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_49_3();
  v198 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_49_3();
  v197 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_49_3();
  v196 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_49_3();
  v195 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v47 = OUTLINED_FUNCTION_114(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_39_0();
  v194 = v50;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v51);
  v53 = &v175 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v55 = OUTLINED_FUNCTION_114(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_39_0();
  v193 = v58;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_14_2();
  v201 = v60;
  OUTLINED_FUNCTION_78_0();
  v61 = type metadata accessor for Date();
  v62 = OUTLINED_FUNCTION_14(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_36();
  v69 = v68 - v67;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v71 = OUTLINED_FUNCTION_114(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_39_0();
  v192 = v74;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_78_16();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_14_2();
  v200 = v77;
  v78 = [v24 uniqueIdentifier];
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_137_4(v79);
  v191 = v80;

  v81 = [v24 attributeSet];
  v82 = [v81 attributeForKey_];

  if (v82)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_44_21();
  }

  OUTLINED_FUNCTION_16_31();
  if (v83)
  {
    OUTLINED_FUNCTION_49_18();
    if (swift_dynamicCast())
    {
      v84 = v203;
      v190 = v202;
      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v204, &_sypSgMd, &_sypSgMR);
  }

  v190 = 0;
  v84 = 0xE000000000000000;
LABEL_9:
  v189 = v84;
  v188 = CSSearchableItem.oms_emailSubject.getter();
  v187 = v85;
  v175 = CSSearchableItem.oms_emailBody.getter();
  v185 = v86;
  v87 = OUTLINED_FUNCTION_93_13();
  v88 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorNames.getter(v87);
  v89 = OUTLINED_FUNCTION_77_14(v88, &a12);
  v90 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorEmailAddresses.getter(v89);
  v91 = OUTLINED_FUNCTION_77_14(v90, &a9);
  v92 = [v91 attributeForKey_];

  if (v92)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_44_21();
  }

  OUTLINED_FUNCTION_16_31();
  if (v93)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_49_18();
    if (swift_dynamicCast())
    {
      v94 = v202;
      goto LABEL_17;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v204, &_sypSgMd, &_sypSgMR);
  }

  v94 = MEMORY[0x277D84F90];
LABEL_17:
  v184 = v94;
  v95 = OUTLINED_FUNCTION_93_13();
  v96 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorAddresses.getter(v95, &selRef_recipientEmailAddresses);
  v97 = OUTLINED_FUNCTION_77_14(v96, &v208);
  v98 = [v97 mailDateReceived];

  if (v98)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v99 = *(v64 + 32);
    v99(v20, v69, v61);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v61);
    v99(v200, v20, v61);
  }

  else
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v61);
    static Date.now.getter();
    OUTLINED_FUNCTION_166(v20, 1, v61);
    if (!v127)
    {
      outlined destroy of IntentApplication?(v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v106 = 1;
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v61);
  v110 = OUTLINED_FUNCTION_93_13();
  v111 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.attachmentNames.getter(v110);
  v112 = OUTLINED_FUNCTION_77_14(v111, &v207);
  v113 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.attachmentTypes.getter(v112);
  v114 = OUTLINED_FUNCTION_77_14(v113, &v206);
  v115 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.attachmentPaths.getter(v114);
  v116 = OUTLINED_FUNCTION_77_14(v115, &v205);
  v117 = [v116 mailRead];

  if (v117)
  {
    v118 = [v117 BOOLValue];

    v106 = v118 ^ 1;
  }

  v119 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v24);
  if (v120)
  {
    v121 = v119 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v121 = 0;
  }

  if (v120)
  {
    v122 = v120;
  }

  else
  {
    v122 = 0xE000000000000000;
  }

  v123 = HIBYTE(v122) & 0xF;
  if ((v122 & 0x2000000000000000) == 0)
  {
    v123 = v121;
  }

  if (v123)
  {
    outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v24);
    if (!v124)
    {
      v129 = 1;
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_117_11();
    v127 = v127 && v125 == v126;
    if (!v127)
    {
      v128 = OUTLINED_FUNCTION_169_7();

      v129 = v128 ^ 1;
LABEL_39:
      v176 = v129;
      goto LABEL_42;
    }
  }

  v176 = 0;
LABEL_42:
  v130 = type metadata accessor for DataDetectorResults();
  OUTLINED_FUNCTION_10_24(v201, v131, v132, v130);
  v133 = type metadata accessor for PartialExtractedAttributes();
  OUTLINED_FUNCTION_10_24(v53, v134, v135, v133);
  type metadata accessor for FeatureFlagService();
  v177 = swift_allocObject();
  v136 = one-time initialization token for search;
  v137 = v24;
  if (v136 != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v138 = type metadata accessor for Logger();
  __swift_project_value_buffer(v138, static Logging.search);
  v139 = v137;
  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.info.getter();

  v142 = os_log_type_enabled(v140, v141);
  v181 = v106;
  v143 = v53;
  if (v142)
  {
    v144 = OUTLINED_FUNCTION_51_0();
    v145 = OUTLINED_FUNCTION_49_0();
    v204 = v145;
    *v144 = 136315138;
    v146 = [v139 attributeSet];
    CSSearchableItemAttributeSet.keyStrings.getter();
    v148 = v147;

    MEMORY[0x25F89F8A0](v148, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_67_8();

    OUTLINED_FUNCTION_88_10();
    v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v144 + 4) = v149;
    _os_log_impl(&dword_25D85C000, v140, v141, "EmailDocument: parsing attribute keys: %s", v144, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v145);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v150 = v139;
  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v151, v152))
  {
    v153 = OUTLINED_FUNCTION_51_0();
    v154 = OUTLINED_FUNCTION_49_0();
    v204 = v154;
    *v153 = 136642819;
    v155 = [v150 attributeSet];
    CSSearchableItemAttributeSet.kvStrings.getter();
    v157 = v156;

    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    MEMORY[0x25F89F8A0](v157, v158);

    OUTLINED_FUNCTION_88_10();
    v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v153 + 4) = v159;
    _os_log_impl(&dword_25D85C000, v151, v152, "EmailDocument: parsing attributes: %{sensitive}s", v153, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v154);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

  v160 = v185;
  if (v185)
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSJ_Tt0g5(&outlined read-only object #0 of EmailDocument.init(from:));
    String.oms_trimCharacters(_:)(v161, v175, v160);
    v185 = v162;
    v175 = v163;
  }

  else
  {
    v185 = 0;
    v175 = 0;
  }

  v176 &= 1u;
  OUTLINED_FUNCTION_54_20();
  v178 = v164;
  OUTLINED_FUNCTION_54_20();
  v179 = v165;
  OUTLINED_FUNCTION_54_20();
  v180 = v166;
  OUTLINED_FUNCTION_54_20();
  v182 = v167;
  OUTLINED_FUNCTION_54_20();
  v183 = v169;
  if (v186)
  {
    v168 = v186;
  }

  v186 = v168;
  outlined init with copy of EagerResolutionService?();
  outlined init with copy of EagerResolutionService?();
  outlined init with copy of EagerResolutionService?();
  v170 = v150;
  v171 = v177;

  PreExtractedCard.init(item:featureFlagService:)(v170, v171, v195);
  v172 = v170;

  PreExtractedContact.init(item:featureFlagService:)(v172, v171, v196);
  v173 = v172;
  PreExtractedSharedLink.init(item:)(v173, v197);
  v174 = v173;

  PreExtractedBreadcrumb.init(item:featureFlagService:)(v174, v171);
  OUTLINED_FUNCTION_180_5(&a12);
  EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:instantAnswerDescription:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();

  outlined destroy of IntentApplication?(v143, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  outlined destroy of IntentApplication?(v201, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined destroy of IntentApplication?(v200, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_148();
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)()
{
  OUTLINED_FUNCTION_134();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = swift_allocError();
  *v3 = v0;

  return MEMORY[0x282200958](v1, v2);
}

uint64_t specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x282200950]();
}

void static LocalIndexClient.searchResultFromItem(_:spotlightRankingItem:eventSourceItemsMap:allowedTypes:locale:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v203 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v12 = OUTLINED_FUNCTION_114(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_109();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v186 - v19;
  v21 = type metadata accessor for SpotlightRankingItem();
  v22 = OUTLINED_FUNCTION_14(v21);
  v197 = v23;
  v198 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_39_0();
  v188 = v26;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_2();
  v187 = v28;
  v29 = OUTLINED_FUNCTION_78_0();
  v202 = type metadata accessor for SearchResult(v29);
  v30 = OUTLINED_FUNCTION_17(v202);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_39_0();
  v195 = v33;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  v192 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v37 = OUTLINED_FUNCTION_114(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39_0();
  v193 = v40;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7_4();
  v194 = v42;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_4();
  v189 = v44;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_2();
  v191 = v46;
  v47 = OUTLINED_FUNCTION_78_0();
  v196 = type metadata accessor for SearchResultItem(v47);
  v48 = OUTLINED_FUNCTION_17(v196);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_67_12();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_14_2();
  v190 = v52;
  OUTLINED_FUNCTION_78_0();
  v53 = type metadata accessor for FileDocument();
  v200 = OUTLINED_FUNCTION_14(v53);
  v201 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_14_2();
  v199 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v62);
  v69 = &v186 - v68;
  if (*(v3 + 16))
  {
    v186 = v7;
    v70 = OUTLINED_FUNCTION_175_6();
    v71 = [v70 contentURL];

    if (!v71)
    {
      type metadata accessor for URL();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
      outlined destroy of IntentApplication?(v69, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_23;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for URL();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
    outlined destroy of IntentApplication?(v69, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v76 = OUTLINED_FUNCTION_175_6();
    v77 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v76, &selRef_bundleID);
    v79 = v201;
    if (v78)
    {
      v80 = v77 == 0xD00000000000002BLL && v78 == 0x800000025DBF1DB0;
      if (v80)
      {
LABEL_20:

        goto LABEL_21;
      }

      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_175_3();
      if (v70)
      {
LABEL_21:
        CSSearchableItem.associatedAppEntityId.getter();
        if (!v94)
        {
          v138 = [v9 uniqueIdentifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_114_7();

          v139 = v9;
          v140 = v199;
          OUTLINED_FUNCTION_34_11();
          v194 = v141;
          FileDocument.init(id:item:)();
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v142 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v142, static Logging.search);
          v143 = *(v79 + 16);
          v144 = v200;
          v143(v0, v140, v200);
          v145 = Logger.logObject.getter();
          v146 = static os_log_type_t.debug.getter();
          v147 = os_log_type_enabled(v145, v146);
          v148 = v190;
          if (v147)
          {
            OUTLINED_FUNCTION_51_0();
            v149 = OUTLINED_FUNCTION_94_10();
            v193 = v143;
            v150 = v149;
            v204 = v149;
            *v144 = 136642819;
            specialized Encodable.oms_jsonPrettyPrinted()();
            v195 = *(v79 + 8);
            (v195)(v0, v200);
            v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v144 + 4) = v151;
            OUTLINED_FUNCTION_217_4(&dword_25D85C000, v152, v153, "File SearchResult found: %{sensitive}s");
            __swift_destroy_boxed_opaque_existential_1Tm(v150);
            v143 = v193;
            OUTLINED_FUNCTION_42_0();
            v144 = v200;
            OUTLINED_FUNCTION_42_0();
          }

          else
          {

            v195 = *(v79 + 8);
            (v195)(v0, v144);
          }

          v108 = v198;
          v143(v148, v199, v144);
          swift_storeEnumTagMultiPayload();
          v158 = v197;
          v159 = *(v197 + 16);
          v160 = v148;
          v161 = v191;
          v162 = OUTLINED_FUNCTION_94();
          v163(v162);
          OUTLINED_FUNCTION_26_21();
          __swift_storeEnumTagSinglePayload(v164, v165, v166, v167);
          v115 = v202;
          v116 = v192;
          *&v192[v202[7]] = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_2_51(&v116[v115[10]]);
          _s10OmniSearch0B10ResultItemOWOcTm_3();
          v168 = v115[6];
          type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
          lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
          v169 = v194;
          OUTLINED_FUNCTION_47_11();
          CodableNSSecureCoding.init(wrappedValue:)();
          v170 = v189;
          outlined init with copy of EagerResolutionService?();
          OUTLINED_FUNCTION_28_16(v170);
          if (!v80)
          {
            outlined destroy of IntentApplication?(v161, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_3_35();
            _s10OmniSearch0B10ResultItemOWOhTm_8(v160, v181);
            v182 = OUTLINED_FUNCTION_197_6();
            v183(v182);
            v155 = *(v158 + 32);
            v156 = v187;
            v157 = OUTLINED_FUNCTION_26_2();
            goto LABEL_51;
          }

          OUTLINED_FUNCTION_33_13();
          outlined destroy of IntentApplication?(v171, v172, v173);
          v174 = v115[5];
          OUTLINED_FUNCTION_97_7();
          OUTLINED_FUNCTION_97_7();
          OUTLINED_FUNCTION_97_7();
          OUTLINED_FUNCTION_97_7();
          OUTLINED_FUNCTION_97_7();
          LOBYTE(v204) = 1;
          OUTLINED_FUNCTION_17_32();
          OUTLINED_FUNCTION_19_18();
          OUTLINED_FUNCTION_33_13();
          outlined destroy of IntentApplication?(v175, v176, v177);
          OUTLINED_FUNCTION_3_35();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v160, v178);
          v179 = OUTLINED_FUNCTION_197_6();
          v180(v179);
LABEL_52:
          v184 = v203;
          v185 = OUTLINED_FUNCTION_109_14();
          outlined init with take of SearchResult(v185, v184);
          OUTLINED_FUNCTION_44_0();
          v137 = v115;
LABEL_53:
          __swift_storeEnumTagSinglePayload(v134, v135, v136, v137);
          goto LABEL_54;
        }

LABEL_23:
        v95 = CSSearchableItem.associatedAppEntityId.getter();
        if (v96)
        {
          v97 = v95;
          v98 = v96;
          CSSearchableItem.associatedAppEntityTypeId.getter();
          if (v99)
          {
            OUTLINED_FUNCTION_212_3();
            v100 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v9);
            if (v101)
            {
              v102 = v100;
            }

            else
            {
              v102 = 0;
            }

            if (v101)
            {
              v103 = v101;
            }

            else
            {
              v103 = 0xE000000000000000;
            }

            v104 = static LocalIndexClient.iWorkBundleIdForFile(item:)(v9);
            if (v105)
            {
              v106 = v104;
              v107 = v105;

              v102 = v106;
              v103 = v107;
            }

            *v1 = v97;
            v1[1] = v98;
            v1[2] = v102;
            v1[3] = v103;
            v1[4] = v9;
            v1[5] = v69;
            v1[6] = 0;
            v1[7] = 0;
            swift_storeEnumTagMultiPayload();
            v109 = v197;
            v108 = v198;
            v110 = v194;
            (*(v197 + 16))(v194, v186, v198);
            OUTLINED_FUNCTION_26_21();
            __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
            v115 = v202;
            v116 = v195;
            *&v195[v202[7]] = MEMORY[0x277D84F90];
            OUTLINED_FUNCTION_2_51(&v116[v115[10]]);
            _s10OmniSearch0B10ResultItemOWOcTm_3();
            v117 = v115[6];
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
            lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
            v118 = v9;
            OUTLINED_FUNCTION_47_11();
            v119 = v110;
            CodableNSSecureCoding.init(wrappedValue:)();
            v120 = v193;
            outlined init with copy of EagerResolutionService?();
            OUTLINED_FUNCTION_28_16(v120);
            if (!v80)
            {
              outlined destroy of IntentApplication?(v119, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
              OUTLINED_FUNCTION_3_35();
              _s10OmniSearch0B10ResultItemOWOhTm_8(v1, v154);
              v155 = *(v109 + 32);
              v156 = v188;
              v157 = OUTLINED_FUNCTION_100_4();
LABEL_51:
              v155(v157);
              (v155)(&v116[v115[5]], v156, v108);
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v121, v122, v123);
            v124 = v115[5];
            OUTLINED_FUNCTION_27_16();
            OUTLINED_FUNCTION_27_16();
            OUTLINED_FUNCTION_27_16();
            OUTLINED_FUNCTION_27_16();
            OUTLINED_FUNCTION_27_16();
            LOBYTE(v204) = v125;
            OUTLINED_FUNCTION_10_35();
            OUTLINED_FUNCTION_19_18();
            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v126, v127, v128);
            OUTLINED_FUNCTION_3_35();
            _s10OmniSearch0B10ResultItemOWOhTm_8(v1, v129);
            goto LABEL_52;
          }
        }

        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_1_31();
          swift_once();
        }

        v130 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v130, static Logging.search);
        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_91_0(v132))
        {
          v133 = OUTLINED_FUNCTION_172();
          *v133 = 0;
          _os_log_impl(&dword_25D85C000, v131, v132, "Item found, but missing required fields for associated AppEntity or FileDocument", v133, 2u);
          OUTLINED_FUNCTION_2_8();
        }

        OUTLINED_FUNCTION_92();
        goto LABEL_53;
      }
    }

    v81 = OUTLINED_FUNCTION_175_6();
    outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v81, &selRef_bundleID);
    if (!v82)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_117_11();
    if (!v80 || v83 != v84)
    {
      OUTLINED_FUNCTION_169_7();
      OUTLINED_FUNCTION_175_3();
      if ((v70 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  static LocalIndexClient.handleSelectItemsByContentType(_:spotlightRankingItem:eventSourceItemsMap:)(v20, v9, v7, v63, v64, v65, v66, v67, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
  if (v86 & 1) != 0 || (v87 = static LocalIndexClient.handleSelectFirstPartyItems(_:spotlightRankingItem:eventSourceItemsMap:)(v17, v9, v7, v5), v88 = OUTLINED_FUNCTION_52_1(), outlined destroy of IntentApplication?(v88, v89, &_s10OmniSearch0B6ResultVSgMR), outlined init with take of (Int, SearchCATEntity)(), (v87))
  {
    outlined init with take of (Int, SearchCATEntity)();
  }

  else
  {
    static LocalIndexClient.genericSearchResult(_:spotlightRankingItem:eventSourceItemsMap:)();
    outlined destroy of IntentApplication?(v20, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  }

LABEL_54:
  OUTLINED_FUNCTION_148();
}

uint64_t *LocalIndexClient.keyAttributeAppEntityInstanceIdentifier.unsafeMutableAddressor()
{
  if (one-time initialization token for keyAttributeAppEntityInstanceIdentifier != -1)
  {
    OUTLINED_FUNCTION_80_12();
  }

  return &static LocalIndexClient.keyAttributeAppEntityInstanceIdentifier;
}

uint64_t *LocalIndexClient.keyAttributeAppEntityTypeDisplayRepresentationName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyAttributeAppEntityTypeDisplayRepresentationName != -1)
  {
    OUTLINED_FUNCTION_79_13();
  }

  return &static LocalIndexClient.keyAttributeAppEntityTypeDisplayRepresentationName;
}

uint64_t one-time initialization function for keyAttributeAppEntityInstanceIdentifier(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  v8 = type metadata accessor for SpotlightKeys();
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v16 = v15 - v14;
  (*(v11 + 104))(v15 - v14, *a2, v8);
  SpotlightKeys.description.getter();
  OUTLINED_FUNCTION_212_3();
  result = (*(v11 + 8))(v16, v8);
  *a3 = v16;
  *a4 = v4;
  return result;
}

uint64_t *LocalIndexClient.keyAttributeAppEntityTypeIdentifier.unsafeMutableAddressor()
{
  if (one-time initialization token for keyAttributeAppEntityTypeIdentifier != -1)
  {
    OUTLINED_FUNCTION_21_27();
    swift_once();
  }

  return &static LocalIndexClient.keyAttributeAppEntityTypeIdentifier;
}

uint64_t static LocalIndexClient.keyAttributeAppEntityInstanceIdentifier.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return OUTLINED_FUNCTION_107();
}

uint64_t one-time initialization function for fetchAttributes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25DBE27B0;
  v1 = *MEMORY[0x277CC23A8];
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CC23E8];
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CC2490];
  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CC2498];
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277CC24A0];
  *(v0 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x277CC24B0];
  *(v0 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 120) = v12;
  v13 = *MEMORY[0x277CC24C0];
  *(v0 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 136) = v14;
  v15 = *MEMORY[0x277CC24C8];
  *(v0 + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 152) = v16;
  v17 = *MEMORY[0x277CC24E0];
  *(v0 + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 168) = v18;
  v19 = *MEMORY[0x277CC2500];
  *(v0 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 184) = v20;
  v21 = *MEMORY[0x277CC2508];
  *(v0 + 192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 200) = v22;
  v23 = *MEMORY[0x277CC25C8];
  *(v0 + 208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 216) = v24;
  v25 = *MEMORY[0x277CC25D8];
  *(v0 + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 232) = v26;
  v27 = *MEMORY[0x277CC2640];
  *(v0 + 240) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 248) = v28;
  v29 = *MEMORY[0x277CC2670];
  *(v0 + 256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 264) = v30;
  v31 = *MEMORY[0x277CC2678];
  *(v0 + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 280) = v32;
  v33 = *MEMORY[0x277CC2680];
  *(v0 + 288) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 296) = v34;
  v35 = *MEMORY[0x277CC2688];
  *(v0 + 304) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 312) = v36;
  v37 = *MEMORY[0x277CC26A8];
  *(v0 + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 328) = v38;
  v39 = *MEMORY[0x277CC26C0];
  *(v0 + 336) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 344) = v40;
  v41 = *MEMORY[0x277CC2750];
  *(v0 + 352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 360) = v42;
  v43 = *MEMORY[0x277CC2758];
  *(v0 + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 376) = v44;
  v45 = *MEMORY[0x277CC2760];
  *(v0 + 384) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 392) = v46;
  v47 = *MEMORY[0x277CC2770];
  *(v0 + 400) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 408) = v48;
  v49 = *MEMORY[0x277CC2778];
  *(v0 + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 424) = v50;
  v51 = *MEMORY[0x277CC2780];
  *(v0 + 432) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 440) = v52;
  v53 = *MEMORY[0x277CC27A0];
  *(v0 + 448) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 456) = v54;
  v55 = *MEMORY[0x277CC2788];
  *(v0 + 464) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 472) = v56;
  v57 = *MEMORY[0x277CC27C8];
  *(v0 + 480) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 488) = v58;
  v59 = *MEMORY[0x277CC27D8];
  *(v0 + 496) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 504) = v60;
  v61 = *MEMORY[0x277CC27E8];
  *(v0 + 512) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 520) = v62;
  v63 = *MEMORY[0x277CC27F0];
  *(v0 + 528) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 536) = v64;
  v65 = *MEMORY[0x277CC27F8];
  *(v0 + 544) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 552) = v66;
  v67 = *MEMORY[0x277CC2800];
  *(v0 + 560) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 568) = v68;
  v69 = *MEMORY[0x277CC2820];
  *(v0 + 576) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 584) = v70;
  v71 = *MEMORY[0x277CC2C70];
  *(v0 + 592) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 600) = v72;
  v73 = *MEMORY[0x277CC2828];
  *(v0 + 608) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 616) = v74;
  v75 = *MEMORY[0x277CC2830];
  *(v0 + 624) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 632) = v76;
  v77 = *MEMORY[0x277CC2838];
  *(v0 + 640) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 648) = v78;
  v79 = *MEMORY[0x277CC2840];
  *(v0 + 656) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 664) = v80;
  v81 = *MEMORY[0x277CC2848];
  *(v0 + 672) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 680) = v82;
  v83 = *MEMORY[0x277CC2850];
  *(v0 + 688) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 696) = v84;
  v85 = *MEMORY[0x277CC2860];
  *(v0 + 704) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 712) = v86;
  v87 = *MEMORY[0x277CC2868];
  *(v0 + 720) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 728) = v88;
  v89 = *MEMORY[0x277CC2878];
  *(v0 + 736) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 744) = v90;
  v91 = *MEMORY[0x277CC2880];
  *(v0 + 752) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 760) = v92;
  v93 = *MEMORY[0x277CC2888];
  *(v0 + 768) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 776) = v94;
  v95 = *MEMORY[0x277CC2890];
  *(v0 + 784) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 792) = v96;
  v97 = *MEMORY[0x277CC2898];
  *(v0 + 800) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 808) = v98;
  v99 = *MEMORY[0x277CC28A0];
  *(v0 + 816) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 824) = v100;
  v101 = *MEMORY[0x277CC28A8];
  *(v0 + 832) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 840) = v102;
  v103 = *MEMORY[0x277CC28B0];
  *(v0 + 848) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 856) = v104;
  v105 = *MEMORY[0x277CC28B8];
  *(v0 + 864) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 872) = v106;
  v107 = *MEMORY[0x277CC28C0];
  *(v0 + 880) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 888) = v108;
  v109 = *MEMORY[0x277CC28C8];
  *(v0 + 896) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 904) = v110;
  v111 = *MEMORY[0x277CC28E0];
  *(v0 + 912) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 920) = v112;
  v113 = *MEMORY[0x277CC28E8];
  *(v0 + 928) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 936) = v114;
  v115 = *MEMORY[0x277CC28F0];
  *(v0 + 944) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 952) = v116;
  v117 = *MEMORY[0x277CC28F8];
  *(v0 + 960) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 968) = v118;
  v119 = *MEMORY[0x277CC2900];
  *(v0 + 976) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 984) = v120;
  v121 = *MEMORY[0x277CC2908];
  *(v0 + 992) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1000) = v122;
  v123 = *MEMORY[0x277CC2918];
  *(v0 + 1008) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1016) = v124;
  v125 = *MEMORY[0x277CC2930];
  *(v0 + 1024) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1032) = v126;
  v127 = *MEMORY[0x277CC2938];
  *(v0 + 1040) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1048) = v128;
  v129 = *MEMORY[0x277CC2940];
  *(v0 + 1056) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1064) = v130;
  v131 = *MEMORY[0x277CC2948];
  *(v0 + 1072) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1080) = v132;
  v133 = *MEMORY[0x277CC2950];
  *(v0 + 1088) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1096) = v134;
  v135 = *MEMORY[0x277CC2958];
  *(v0 + 1104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1112) = v136;
  v137 = *MEMORY[0x277CC2960];
  *(v0 + 1120) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1128) = v138;
  v139 = *MEMORY[0x277CC2968];
  *(v0 + 1136) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1144) = v140;
  v141 = *MEMORY[0x277CC2970];
  *(v0 + 1152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1160) = v142;
  v143 = *MEMORY[0x277CC2980];
  *(v0 + 1168) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1176) = v144;
  v145 = *MEMORY[0x277CC2998];
  *(v0 + 1184) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1192) = v146;
  v147 = *MEMORY[0x277CC29A0];
  *(v0 + 1200) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1208) = v148;
  v149 = *MEMORY[0x277CC29A8];
  *(v0 + 1216) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1224) = v150;
  v151 = *MEMORY[0x277CC29B8];
  *(v0 + 1232) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1240) = v152;
  v153 = *MEMORY[0x277CC29C0];
  *(v0 + 1248) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1256) = v154;
  v155 = *MEMORY[0x277CC29C8];
  *(v0 + 1264) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1272) = v156;
  v157 = *MEMORY[0x277CC29D0];
  *(v0 + 1280) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1288) = v158;
  v159 = *MEMORY[0x277CC29D8];
  *(v0 + 1296) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1304) = v160;
  v161 = *MEMORY[0x277CC29E0];
  *(v0 + 1312) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1320) = v162;
  v163 = *MEMORY[0x277CC29E8];
  *(v0 + 1328) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1336) = v164;
  v165 = *MEMORY[0x277CC29F8];
  *(v0 + 1344) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1352) = v166;
  v167 = *MEMORY[0x277CC2A08];
  *(v0 + 1360) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1368) = v168;
  v169 = *MEMORY[0x277CC2A10];
  *(v0 + 1376) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1384) = v170;
  v171 = *MEMORY[0x277CC2A18];
  *(v0 + 1392) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1400) = v172;
  v173 = *MEMORY[0x277CC2A20];
  *(v0 + 1408) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1416) = v174;
  v175 = *MEMORY[0x277CC2A30];
  *(v0 + 1424) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1432) = v176;
  v177 = *MEMORY[0x277CC2A68];
  *(v0 + 1440) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1448) = v178;
  v179 = *MEMORY[0x277CC2A38];
  *(v0 + 1456) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1464) = v180;
  v181 = *MEMORY[0x277CC2A40];
  *(v0 + 1472) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1480) = v182;
  v183 = *MEMORY[0x277CC2A48];
  *(v0 + 1488) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1496) = v184;
  v185 = *MEMORY[0x277CC2A58];
  *(v0 + 1504) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1512) = v186;
  v187 = *MEMORY[0x277CC2A60];
  *(v0 + 1520) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1528) = v188;
  v189 = *MEMORY[0x277CC2698];
  *(v0 + 1536) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1544) = v190;
  v191 = *MEMORY[0x277CC2A28];
  *(v0 + 1552) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1560) = v192;
  v193 = *MEMORY[0x277CC2808];
  *(v0 + 1568) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1576) = v194;
  v195 = *MEMORY[0x277CC27D0];
  *(v0 + 1584) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1592) = v196;
  v197 = *MEMORY[0x277CC27E0];
  *(v0 + 1600) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1608) = v198;
  v199 = *MEMORY[0x277CC2A50];
  *(v0 + 1616) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1624) = v200;
  v201 = *MEMORY[0x277CC27C0];
  *(v0 + 1632) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1640) = v202;
  v203 = *MEMORY[0x277CC2818];
  *(v0 + 1648) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1656) = v204;
  v205 = *MEMORY[0x277CC2810];
  *(v0 + 1664) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1672) = v206;
  v207 = *MEMORY[0x277CC2990];
  *(v0 + 1680) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1688) = v208;
  v209 = *MEMORY[0x277CC25B0];
  *(v0 + 1696) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1704) = v210;
  v211 = *MEMORY[0x277CC25A8];
  *(v0 + 1712) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1720) = v212;
  v213 = *MEMORY[0x277CC2588];
  *(v0 + 1728) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1736) = v214;
  v215 = *MEMORY[0x277CC25B8];
  *(v0 + 1744) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1752) = v216;
  v217 = *MEMORY[0x277CC2578];
  *(v0 + 1760) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1768) = v218;
  v219 = *MEMORY[0x277CC2558];
  *(v0 + 1776) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1784) = v220;
  v221 = *MEMORY[0x277CC2568];
  *(v0 + 1792) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1800) = v222;
  v223 = *MEMORY[0x277CC2548];
  *(v0 + 1808) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1816) = v224;
  v225 = *MEMORY[0x277CC2570];
  *(v0 + 1824) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1832) = v226;
  v227 = *MEMORY[0x277CC2590];
  *(v0 + 1840) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1848) = v228;
  v229 = *MEMORY[0x277CC2540];
  *(v0 + 1856) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1864) = v230;
  v231 = *MEMORY[0x277CC2580];
  *(v0 + 1872) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1880) = v232;
  v233 = *MEMORY[0x277CC2530];
  *(v0 + 1888) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1896) = v234;
  v235 = *MEMORY[0x277CC25A0];
  *(v0 + 1904) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1912) = v236;
  v237 = *MEMORY[0x277CC2560];
  *(v0 + 1920) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1928) = v238;
  v239 = *MEMORY[0x277CC2550];
  *(v0 + 1936) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1944) = v240;
  v241 = *MEMORY[0x277CC25C0];
  *(v0 + 1952) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1960) = v242;
  v243 = *MEMORY[0x277CC2538];
  *(v0 + 1968) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1976) = v244;
  v245 = *MEMORY[0x277CC2598];
  *(v0 + 1984) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1992) = v246;
  v247 = *MEMORY[0x277CC2628];
  *(v0 + 2000) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2008) = v248;
  v249 = *MEMORY[0x277CC2600];
  *(v0 + 2016) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2024) = v250;
  v251 = *MEMORY[0x277CC2608];
  *(v0 + 2032) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2040) = v252;
  v253 = *MEMORY[0x277CC2618];
  *(v0 + 2048) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2056) = v254;
  v255 = *MEMORY[0x277CC2620];
  *(v0 + 2064) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2072) = v256;
  v257 = *MEMORY[0x277CC2610];
  *(v0 + 2080) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2088) = v258;
  v259 = *MEMORY[0x277CC2D40];
  *(v0 + 2096) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2104) = v260;
  v261 = *MEMORY[0x277CC24F8];
  *(v0 + 2112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2120) = v262;
  v263 = *MEMORY[0x277CC23F0];
  *(v0 + 2128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2136) = v264;
  v265 = *MEMORY[0x277CC2BD0];
  *(v0 + 2144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2152) = v266;
  v267 = *MEMORY[0x277CC32B8];
  *(v0 + 2160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2168) = v268;
  v269 = *MEMORY[0x277CC3050];
  *(v0 + 2176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2184) = v270;
  v271 = *MEMORY[0x277CC2510];
  *(v0 + 2192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2200) = v272;
  v273 = *MEMORY[0x277CC2AB0];
  *(v0 + 2208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2216) = v274;
  v275 = *MEMORY[0x277CC2AF0];
  *(v0 + 2224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2232) = v276;
  v277 = *MEMORY[0x277CC2B08];
  *(v0 + 2240) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2248) = v278;
  v279 = *MEMORY[0x277CC2B00];
  *(v0 + 2256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2264) = v280;
  v281 = *MEMORY[0x277CC2A98];
  *(v0 + 2272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2280) = v282;
  v283 = *MEMORY[0x277CC2AD0];
  *(v0 + 2288) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2296) = v284;
  v285 = *MEMORY[0x277CC2AE0];
  *(v0 + 2304) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2312) = v286;
  v287 = *MEMORY[0x277CC2B10];
  *(v0 + 2320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2328) = v288;
  v289 = *MEMORY[0x277CC2AA0];
  *(v0 + 2336) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2344) = v290;
  v291 = *MEMORY[0x277CC2AC0];
  *(v0 + 2352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2360) = v292;
  v293 = *MEMORY[0x277CC2A80];
  *(v0 + 2368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2376) = v294;
  v295 = *MEMORY[0x277CC2A88];
  *(v0 + 2384) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2392) = v296;
  v297 = *MEMORY[0x277CC2B58];
  *(v0 + 2400) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2408) = v298;
  v299 = *MEMORY[0x277CC2B60];
  *(v0 + 2416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2424) = v300;
  v301 = *MEMORY[0x277CC2B88];
  *(v0 + 2432) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2440) = v302;
  v303 = *MEMORY[0x277CC3208];
  *(v0 + 2448) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2456) = v304;
  v305 = *MEMORY[0x277CC2BD8];
  *(v0 + 2464) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2472) = v306;
  v307 = *MEMORY[0x277CC2C50];
  *(v0 + 2480) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2488) = v308;
  v309 = *MEMORY[0x277CC2C58];
  *(v0 + 2496) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2504) = v310;
  v311 = *MEMORY[0x277CC2C60];
  *(v0 + 2512) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2520) = v312;
  v313 = *MEMORY[0x277CC2CE8];
  *(v0 + 2528) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2536) = v314;
  v315 = *MEMORY[0x277CC2CF0];
  *(v0 + 2544) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2552) = v316;
  v317 = *MEMORY[0x277CC2D10];
  *(v0 + 2560) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2568) = v318;
  v319 = *MEMORY[0x277CC2D68];
  *(v0 + 2576) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2584) = v320;
  v321 = *MEMORY[0x277CC2DC0];
  *(v0 + 2592) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2600) = v322;
  v323 = *MEMORY[0x277CC2DA0];
  *(v0 + 2608) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2616) = v324;
  v325 = *MEMORY[0x277CC2DD0];
  *(v0 + 2624) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2632) = v326;
  v327 = *MEMORY[0x277CC2DE0];
  *(v0 + 2640) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2648) = v328;
  v329 = *MEMORY[0x277CC2E60];
  *(v0 + 2656) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2664) = v330;
  v331 = *MEMORY[0x277CC2E70];
  *(v0 + 2672) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2680) = v332;
  v333 = *MEMORY[0x277CC2E78];
  *(v0 + 2688) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2696) = v334;
  v335 = *MEMORY[0x277CC2E68];
  *(v0 + 2704) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2712) = v336;
  v337 = *MEMORY[0x277CC2EB8];
  *(v0 + 2720) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2728) = v338;
  v339 = *MEMORY[0x277CC2EC0];
  *(v0 + 2736) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2744) = v340;
  v341 = *MEMORY[0x277CC2ED0];
  *(v0 + 2752) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2760) = v342;
  v343 = *MEMORY[0x277CC2F00];
  *(v0 + 2768) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2776) = v344;
  v345 = *MEMORY[0x277CC2F20];
  *(v0 + 2784) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2792) = v346;
  v347 = *MEMORY[0x277CC2F28];
  *(v0 + 2800) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2808) = v348;
  v349 = *MEMORY[0x277CC2F40];
  *(v0 + 2816) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2824) = v350;
  v351 = *MEMORY[0x277CC2F58];
  *(v0 + 2832) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2840) = v352;
  v353 = *MEMORY[0x277CC2F88];
  *(v0 + 2848) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2856) = v354;
  v355 = *MEMORY[0x277CC2FD8];
  *(v0 + 2864) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2872) = v356;
  v357 = *MEMORY[0x277CC2FA0];
  *(v0 + 2880) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2888) = v358;
  v359 = *MEMORY[0x277CC2FA8];
  *(v0 + 2896) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2904) = v360;
  v361 = *MEMORY[0x277CC2FC0];
  *(v0 + 2912) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2920) = v362;
  v363 = *MEMORY[0x277CC3010];
  *(v0 + 2928) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2936) = v364;
  v365 = *MEMORY[0x277CC3018];
  *(v0 + 2944) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2952) = v366;
  v367 = *MEMORY[0x277CC3020];
  *(v0 + 2960) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2968) = v368;
  v369 = *MEMORY[0x277CC3028];
  *(v0 + 2976) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2984) = v370;
  v371 = *MEMORY[0x277CC3118];
  *(v0 + 2992) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3000) = v372;
  v373 = *MEMORY[0x277CC3128];
  *(v0 + 3008) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3016) = v374;
  v375 = *MEMORY[0x277CC3130];
  *(v0 + 3024) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3032) = v376;
  v377 = *MEMORY[0x277CC27A8];
  *(v0 + 3040) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3048) = v378;
  v379 = *MEMORY[0x277CC3138];
  *(v0 + 3056) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3064) = v380;
  v381 = *MEMORY[0x277CC3140];
  *(v0 + 3072) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3080) = v382;
  v383 = *MEMORY[0x277CC31A0];
  *(v0 + 3088) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3096) = v384;
  v385 = *MEMORY[0x277CC31E8];
  *(v0 + 3104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3112) = v386;
  v387 = *MEMORY[0x277CC31F0];
  *(v0 + 3120) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3128) = v388;
  v389 = *MEMORY[0x277CC31F8];
  *(v0 + 3136) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3144) = v390;
  v391 = *MEMORY[0x277CC32D0];
  *(v0 + 3152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3160) = v392;
  v393 = *MEMORY[0x277CC32F8];
  *(v0 + 3168) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3176) = v394;
  v395 = *MEMORY[0x277CC32E8];
  *(v0 + 3184) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3192) = v396;
  v397 = *MEMORY[0x277CC3340];
  *(v0 + 3200) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3208) = v398;
  v399 = *MEMORY[0x277CC2978];
  *(v0 + 3216) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3224) = v400;
  v401 = *MEMORY[0x277CC2A00];
  *(v0 + 3232) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3240) = v402;
  v403 = *MEMORY[0x277CC3310];
  *(v0 + 3248) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3256) = v404;
  v405 = *MEMORY[0x277CC2B98];
  *(v0 + 3264) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3272) = v406;
  v407 = *MEMORY[0x277CC2CF8];
  *(v0 + 3280) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3288) = v408;
  v409 = *MEMORY[0x277CC3190];
  *(v0 + 3296) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3304) = v410;
  v411 = *MEMORY[0x277CC2B78];
  *(v0 + 3312) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3320) = v412;
  v413 = *MEMORY[0x277CC3188];
  *(v0 + 3328) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3336) = v414;
  if (one-time initialization token for keyAttributeAppEntityInstanceIdentifier != -1)
  {
    OUTLINED_FUNCTION_80_12();
  }

  v415 = *algn_27FCAFD08;
  *(v0 + 3344) = static LocalIndexClient.keyAttributeAppEntityInstanceIdentifier;
  *(v0 + 3352) = v415;
  v416 = one-time initialization token for keyAttributeAppEntityTitle;

  if (v416 != -1)
  {
    OUTLINED_FUNCTION_27_22();
  }

  v417 = *algn_27FCAFD18;
  *(v0 + 3360) = static LocalIndexClient.keyAttributeAppEntityTitle;
  *(v0 + 3368) = v417;
  v418 = one-time initialization token for keyAttributeAppEntityTypeDisplayRepresentationName;

  if (v418 != -1)
  {
    OUTLINED_FUNCTION_79_13();
  }

  v419 = *algn_27FCAFD28;
  *(v0 + 3376) = static LocalIndexClient.keyAttributeAppEntityTypeDisplayRepresentationName;
  *(v0 + 3384) = v419;
  v420 = one-time initialization token for keyAttributeAppEntityTypeIdentifier;

  if (v420 != -1)
  {
    OUTLINED_FUNCTION_21_27();
    swift_once();
  }

  v421 = *algn_27FCAFD38;
  *(v0 + 3392) = static LocalIndexClient.keyAttributeAppEntityTypeIdentifier;
  *(v0 + 3400) = v421;
  OUTLINED_FUNCTION_44_6();
  *(v0 + 3408) = 0xD000000000000020;
  *(v0 + 3416) = v422;
  OUTLINED_FUNCTION_44_6();
  *(v0 + 3424) = v423 | 5;
  *(v0 + 3432) = v424;
  *(v0 + 3440) = v423 | 9;
  *(v0 + 3448) = 0x800000025DBF6D30;
  OUTLINED_FUNCTION_44_6();
  *(v0 + 3456) = v425 - 2;
  *(v0 + 3464) = v426;
  OUTLINED_FUNCTION_44_6();
  *(v0 + 3472) = v427;
  *(v0 + 3480) = v428;
  *(v0 + 3488) = v427 - 5;
  OUTLINED_FUNCTION_44_6();
  *(v0 + 3496) = v429;
  v430 = *MEMORY[0x277CC2B38];
  *(v0 + 3504) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3512) = v431;
  v432 = *MEMORY[0x277CC2ED8];
  *(v0 + 3520) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3528) = v433;
  v434 = *MEMORY[0x277CC2D38];
  *(v0 + 3536) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3544) = v435;
  v436 = *MEMORY[0x277CC2D28];
  *(v0 + 3552) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3560) = v437;
  v438 = *MEMORY[0x277CC2D30];
  *(v0 + 3568) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3576) = v439;
  v440 = *MEMORY[0x277CC3200];
  *(v0 + 3584) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3592) = v441;
  v442 = *MEMORY[0x277CC2318];
  *(v0 + 3600) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3608) = v443;
  v444 = *MEMORY[0x277CC2310];
  *(v0 + 3616) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3624) = v445;
  v446 = *MEMORY[0x277CC2480];
  *(v0 + 3632) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3640) = v447;
  v448 = *MEMORY[0x277CC23F8];
  *(v0 + 3648) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3656) = v449;
  *(v0 + 3664) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3672) = v450;
  v451 = *MEMORY[0x277CC2DC8];
  *(v0 + 3680) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3688) = v452;
  v453 = *MEMORY[0x277CC26D0];
  *(v0 + 3696) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3704) = v454;
  v455 = *MEMORY[0x277CC27B8];
  *(v0 + 3712) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3720) = v456;
  v457 = *MEMORY[0x277CC2F98];
  *(v0 + 3728) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3736) = v458;
  v459 = *MEMORY[0x277CC3030];
  *(v0 + 3744) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3752) = v460;
  *(v0 + 3760) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3768) = v461;
  v462 = *MEMORY[0x277CC3360];
  *(v0 + 3776) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3784) = v463;
  v464 = *MEMORY[0x277CC3368];
  *(v0 + 3792) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3800) = v465;
  static LocalIndexClient.fetchAttributes = v0;
}

uint64_t static LocalIndexClient.fetchAttributes.getter()
{
  if (one-time initialization token for fetchAttributes != -1)
  {
    OUTLINED_FUNCTION_76_13();
  }
}

uint64_t LocalIndexClient.__allocating_init()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static LocalSearchManager.shared;
  v1 = type metadata accessor for ItemFetcher();
  v2 = swift_allocObject();
  v3 = swift_allocObject();
  v9 = type metadata accessor for LocalSearchManager();
  v10 = &protocol witness table for LocalSearchManager;
  v7 = &protocol witness table for ItemFetcher;
  *&v8 = v0;
  v6 = v1;
  *&v5 = v2;
  outlined init with take of ResponseOverrideMatcherProtocol(&v8, v3 + 16);
  outlined init with take of ResponseOverrideMatcherProtocol(&v5, v3 + 56);

  return v3;
}

void LocalIndexClient.__allocating_init(searchAgent:itemFetcher:)()
{
  LocalIndexClient.__allocating_init(searchAgent:itemFetcher:)();
}

{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = *(v6 + 24);
  v8 = *(v6 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v6, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12);
  v16 = v5[3];
  v17 = v5[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v5, v16);
  v19 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v22 = v21 - v20;
  (*(v23 + 16))(v21 - v20);
  v2(v14, v22, v3, v9, v16, v8, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  OUTLINED_FUNCTION_148();
}

Swift::Void __swiftcall LocalIndexClient.preheat()()
{
  outlined init with copy of ExtractionRule(v0 + 16, v5);
  v1 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

Swift::Void __swiftcall LocalIndexClient.activate()()
{
  outlined init with copy of ExtractionRule(v0 + 16, v5);
  v1 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

Swift::Void __swiftcall LocalIndexClient.deactivate()()
{
  outlined init with copy of ExtractionRule(v0 + 16, v5);
  v1 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t LocalIndexClient.search(spotlightRequest:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_23(v8);
  *v9 = v10;
  v9[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return LocalIndexClient.findMatches(for:maxItemCount:spQUParse:allowedTypes:locale:)();
}

uint64_t LocalIndexClient.findMatches(for:maxItemCount:spQUParse:allowedTypes:locale:)()
{
  OUTLINED_FUNCTION_48();
  v1[72] = v0;
  v1[71] = v28;
  v1[70] = v2;
  v1[69] = v3;
  v1[68] = v4;
  v1[67] = v5;
  v1[66] = v6;
  v1[65] = v7;
  v1[73] = *v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64) + 15;
  v1[74] = swift_task_alloc();
  v11 = type metadata accessor for SearchResult(0);
  v1[75] = v11;
  OUTLINED_FUNCTION_21(v11);
  v1[76] = v12;
  v14 = *(v13 + 64) + 15;
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v15 = type metadata accessor for SpotlightRankingItem();
  v1[83] = v15;
  OUTLINED_FUNCTION_21(v15);
  v1[84] = v16;
  v18 = *(v17 + 64) + 15;
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMd, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMR);
  v1[87] = v19;
  OUTLINED_FUNCTION_21(v19);
  v1[88] = v20;
  v22 = *(v21 + 64) + 15;
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  objc_allocWithZone(MEMORY[0x277D65898]);

  v4 = OUTLINED_FUNCTION_94();
  v6 = @nonobjc SPSearchQueryContext.init(search:)(v4, v5);
  v7 = v6;
  v0[92] = v6;
  if (v1)
  {
    [v6 setSpQUParse_];
  }

  if (AFIsInternalInstall())
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    v8 = *(static NSUserDefaults.spotlightQueryBundleIDs.getter() + 16);

    if (v8)
    {
      OUTLINED_FUNCTION_181_6();
      if (!v9)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v10, static Logging.search);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = OUTLINED_FUNCTION_51_0();
        v71 = OUTLINED_FUNCTION_49_0();
        *v13 = 136315138;
        static NSUserDefaults.spotlightQueryBundleIDs.getter();
        MEMORY[0x25F89F8A0]();

        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v13 + 4) = v14;
        _os_log_impl(&dword_25D85C000, v11, v12, "LocalIndexClient limiting search to bundle IDs based on user default: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_72_9();
      }

      static NSUserDefaults.spotlightQueryBundleIDs.getter();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v7 setBundleIDs_];
    }
  }

  [v7 setWhyQuery_];
  v16 = OUTLINED_FUNCTION_102_9();
  [v16 v17];
  [v7 setQueryKind_];
  [v7 setAllowInternet_];
  v18 = OUTLINED_FUNCTION_102_9();
  [v18 v19];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v20 = static NSUserDefaults.currentTime.getter();
  if (v21)
  {
    OUTLINED_FUNCTION_181_6();
    if (!v9)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v22, static Logging.search);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_88_0(v24))
    {
      v25 = OUTLINED_FUNCTION_172();
      *v25 = 0;
      _os_log_impl(&dword_25D85C000, v23, v24, "LocalIndexClient.findMatches - using currentTime as of now", v25, 2u);
      OUTLINED_FUNCTION_37_0();
    }

    Current = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    v27 = *&v20;
    OUTLINED_FUNCTION_181_6();
    if (!v9)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    Current = v27;
    v28 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v28, static Logging.search);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_88_0(v30))
    {
      v31 = OUTLINED_FUNCTION_51_0();
      *v31 = 134217984;
      *(v31 + 4) = v27;
      OUTLINED_FUNCTION_70_0(&dword_25D85C000, v32, v30, "LocalIndexClient.findMatches - using currentTime from user defaults %f");
      OUTLINED_FUNCTION_72_9();
    }
  }

  v33 = v0[69];
  [v7 setCurrentTime_];
  if (*(v33 + 16))
  {
    v34 = v0[69];
    [v7 setEnablePersonalAnswers_];
    v35 = OUTLINED_FUNCTION_102_9();
    [v35 v36];
    static LocalIndexClient.filterQueries(for:)(v34);
    v38 = v37;
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_25DBC8180;
    *(v41 + 32) = v38;
  }

  else
  {
    v42 = OUTLINED_FUNCTION_102_9();
    [v42 v43];
    [v7 setIsAppEntitySearch_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_25DBC8180;
    _StringGuts.grow(_:)(38);

    v44 = *MEMORY[0x277CC2500];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x25F89F6C0](v45);

    OUTLINED_FUNCTION_215_1();
    MEMORY[0x25F89F6C0](0xD000000000000014, 0x800000025DBF1CF0);
    MEMORY[0x25F89F6C0](0x2026262022, 0xE500000000000000);
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x25F89F6C0](v46);

    OUTLINED_FUNCTION_215_1();
    MEMORY[0x25F89F6C0](0xD00000000000001DLL, 0x800000025DBF2150);
    MEMORY[0x25F89F6C0](0x207C7C202922, 0xE600000000000000);
    v47 = *MEMORY[0x277CC2D68];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x25F89F6C0](v48);

    MEMORY[0x25F89F6C0](0x22203D2120, 0xE500000000000000);
    v49 = *MEMORY[0x277CC2340];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x25F89F6C0](v50);

    MEMORY[0x25F89F6C0](10530, 0xE200000000000000);
    v40 = 0xE200000000000000;
    *(v41 + 32) = 10280;
  }

  *(v41 + 40) = v40;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v7 setFilterQueries_];

  OUTLINED_FUNCTION_181_6();
  if (!v9)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  v0[93] = OUTLINED_FUNCTION_200(v52, static Logging.search);
  v53 = v7;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_259())
  {
    v56 = OUTLINED_FUNCTION_51_0();
    v72 = OUTLINED_FUNCTION_49_0();
    *v56 = 136315138;
    v57 = [v53 filterQueries];
    v58 = MEMORY[0x277D837D0];
    v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x25F89F8A0](v59, v58);

    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v56 + 4) = v60;
    OUTLINED_FUNCTION_49_16(&dword_25D85C000, v61, v55, "Searching with filter: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_37_0();
  }

  outlined init with copy of ExtractionRule(v0[72] + 16, (v0 + 2));
  v62 = v0[5];
  v63 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v62);
  v64 = *(v63 + 32);
  OUTLINED_FUNCTION_28_0();
  v70 = (v65 + *v65);
  v67 = *(v66 + 4);
  v68 = swift_task_alloc();
  v0[94] = v68;
  *v68 = v0;
  v68[1] = LocalIndexClient.findMatches(for:maxItemCount:spQUParse:allowedTypes:locale:);

  return (v70)(v0 + 59, v53, v62, v63);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 752);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 760) = v0;

  if (v0)
  {
    v9 = LocalIndexClient.findMatches(for:maxItemCount:spQUParse:allowedTypes:locale:);
  }

  else
  {
    v9 = LocalIndexClient.findMatches(for:maxItemCount:spQUParse:allowedTypes:locale:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v1 = v0[95];
  v2 = v0[60];
  v0[96] = v0[59];
  v0[97] = v2;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  static Task<>.checkCancellation()();
  if (v1)
  {
    v3 = v0[92];

    v4 = v0[91];
    v5 = v0[90];
    v6 = v0[89];
    OUTLINED_FUNCTION_114_11();
    v11 = v0[78];
    v12 = v0[77];
    v13 = v0[74];

    OUTLINED_FUNCTION_127();

    return v7();
  }

  else
  {
    v9 = v0[73];
    v10 = swift_task_alloc();
    v0[98] = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_84(v10);

    return static LocalIndexClient.checkEmbeddingCompleteness()();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 784);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  if (!specialized Array.count.getter(v0[96]))
  {
    v7 = v0[97];
    v8 = v0[96];
    v9 = v0[93];

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_88_0(v11))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    v17 = v0[92];

    OUTLINED_FUNCTION_86_16();
    v18 = v0[78];
    v22 = v0[77];
    v23 = v0[74];
    v19 = v0[65];
    *v19 = MEMORY[0x277D84F90];
    v19[1] = 0;

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_83_0();

    __asm { BRAA            X1, X16 }
  }

  v1 = v0[96];
  v2 = v0[73];

  v0[99] = static LocalIndexClient.results(for:)(v3);

  v4 = swift_task_alloc();
  v0[100] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_84(v4);
  OUTLINED_FUNCTION_83_0();

  return static LocalIndexClient.searchableItemsAndRankingItems(for:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v4 = *(v3 + 800);
  v5 = *(v3 + 792);
  v6 = *v0;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v9 + 808) = v8;

  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v4 = *(v3 + 840);
  v5 = *(v3 + 832);
  v6 = *v0;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v9 + 848) = v8;

  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void LocalIndexClient.findMatches(for:maxItemCount:spQUParse:allowedTypes:locale:)()
{
  v1 = v0[101];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[88];
    v73 = v0[87];
    v5 = v0[84];
    v78 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = *(v4 + 80);
    OUTLINED_FUNCTION_79();
    v8 = v1 + v7;
    v71 = *(v4 + 72);
    v75 = v2;
    v9 = v2;
    do
    {
      v10 = v0[91];
      v11 = v0[90];
      v12 = v0[89];
      v13 = v0[83];
      OUTLINED_FUNCTION_94();
      outlined init with copy of EagerResolutionService?();
      outlined init with copy of EagerResolutionService?();
      v14 = *v11;
      v15 = *(v73 + 48);
      *v12 = *v11;
      (*(v5 + 32))(v12 + v15, v11 + v15, v13);
      v16 = v14;
      outlined destroy of IntentApplication?(v12, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMd, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMR);
      v17 = OUTLINED_FUNCTION_26_2();
      outlined destroy of IntentApplication?(v17, v18, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMR);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v19 = *(v78 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += v71;
      --v9;
    }

    while (v9);
    v2 = v75;
    v20 = v78;
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v21 = v0[73];
  static LocalIndexClient.filterAllowedItems(allowedTypes:items:)(v0[69], v20);
  v0[102] = v22;
  v23 = v0[101];
  if (v2)
  {
    v65 = v20;
    v24 = v0[88];
    v69 = v0[87];
    v25 = v0[84];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v26 = v3;
    v27 = *(v24 + 80);
    OUTLINED_FUNCTION_79();
    v29 = v23 + v28;
    v67 = *(v24 + 72);
    v68 = v25;
    v66 = (v25 + 16);
    v30 = (v25 + 32);
    do
    {
      v74 = v26;
      v76 = v2;
      v31 = v0[91];
      v32 = v0[90];
      v33 = v0[89];
      v70 = v0[86];
      v34 = v0[83];
      outlined init with copy of EagerResolutionService?();
      outlined init with copy of EagerResolutionService?();
      v35 = *(v69 + 48);
      *v33 = *v32;
      v72 = *v30;
      (*v30)(&v33[v35], v32 + v35, v34);
      (*v66)(v70, &v33[v35], v34);
      OUTLINED_FUNCTION_144_9();
      outlined destroy of IntentApplication?(v36, v37, v38);
      v26 = v74;
      OUTLINED_FUNCTION_144_9();
      outlined destroy of IntentApplication?(v39, v40, v41);
      v43 = *(v74 + 16);
      v42 = *(v74 + 24);
      if (v43 >= v42 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v42);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v26 = v74;
      }

      v44 = v0[86];
      v45 = v0[83];
      *(v26 + 16) = v43 + 1;
      v46 = *(v68 + 80);
      OUTLINED_FUNCTION_79();
      v72(v26 + v47 + *(v48 + 72) * v43);
      v29 += v67;
      v2 = v76 - 1;
    }

    while (v76 != 1);
    v49 = v0[101];

    v3 = MEMORY[0x277D84F90];
    v20 = v65;
  }

  else
  {
    v50 = v0[101];

    v26 = MEMORY[0x277D84F90];
  }

  v0[103] = v26;
  v51 = specialized Array.count.getter(v20);
  for (i = 0; v51 != i; ++i)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x25F89FFD0](i, v20);
    }

    else
    {
      if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v53 = *(v20 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v54 = v53;
    v55 = CSSearchableItem.isEventTypeItem.getter();

    if (v55)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v56 = *(v3 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  v57 = v0[72];

  v0[104] = v3;
  outlined init with copy of ExtractionRule(v57 + 56, (v0 + 7));
  v58 = v0[10];
  v59 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v58);
  v60 = *(v59 + 8);
  OUTLINED_FUNCTION_28_0();
  v77 = (v61 + *v61);
  v63 = *(v62 + 4);
  v64 = swift_task_alloc();
  v0[105] = v64;
  *v64 = v0;
  OUTLINED_FUNCTION_84(v64);

  v77(v3, v58, v59);
}

{
  v207 = v0;
  v193 = v0 + 31;
  v186 = v0[103];
  v1 = v0[102];
  v2 = v0[84];
  v170 = v0[71];
  v171 = v0[76];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v3 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_54_0();
  v187 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  OUTLINED_FUNCTION_54_0();
  v188 = Dictionary.init(dictionaryLiteral:)();
  v4 = specialized Array.count.getter(v1);
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v1 & 0xFFFFFFFFFFFFFF8;
  v8 = v1 + 32;
  OUTLINED_FUNCTION_44_6();
  v176 = v9;
  v175 = *MEMORY[0x277CC3368];
  v174 = *MEMORY[0x277CC3360];
  v184 = v2;
  v185 = *MEMORY[0x277CC3338];
  OUTLINED_FUNCTION_44_6();
  v172 = v10;
  v169 = v0 + 77;
  v200 = v0;
  v168 = v0 + 78;
  v194 = v3;
  v195 = v1 & 0xC000000000000001;
  v189 = v3;
  v190 = v3;
  v198 = v1 + 32;
  while (v4 != v5)
  {
    if (v6)
    {
      v11 = MEMORY[0x25F89FFD0](v5, v200[102]);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_89;
      }

      v11 = *(v8 + 8 * v5);
    }

    v12 = v11;
    v201 = v5;
    v13 = __OFADD__(v5, 1);
    v5 = (v5 + 1);
    if (v13)
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      return;
    }

    v14 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v11);
    if (v15)
    {
      v22 = v14;
      v23 = v15;
      v182 = v7;
      v24 = [v12 attributeSet];
      outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v12);
      v183 = v4;
      v191 = v24;
      if (v25)
      {
        OUTLINED_FUNCTION_189_5();
        v29 = v27 == v28 && v26 == v176;
        if (v29)
        {

LABEL_20:
          outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v24, &selRef_identifier);
          v31 = v194;
          if (v32)
          {
            OUTLINED_FUNCTION_82_0();
          }

          else
          {
            v4 = 0xE300000000000000;
            v7 = 7104878;
          }

          goto LABEL_23;
        }

        v7 = OUTLINED_FUNCTION_169_7();

        if (v7)
        {
          goto LABEL_20;
        }
      }

      v30 = [v12 uniqueIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_82_0();

      v31 = v194;
LABEL_23:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v128 = *(v31 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v31 = v129;
      }

      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      v194 = v31;
      if (v34 >= v33 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v33);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v194 = v130;
      }

      v35 = v200[93];
      *(v194 + 16) = v34 + 1;
      v36 = v194 + 16 * v34;
      *(v36 + 32) = v7;
      *(v36 + 40) = v4;

      v37 = v191;

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();

      v192 = v37;
      v173 = v22;
      if (OUTLINED_FUNCTION_259())
      {
        v177 = v39;
        v40 = swift_slowAlloc();
        *&v204 = swift_slowAlloc();
        *v40 = 134219522;
        *(v40 + 4) = v201;
        *(v40 + 12) = 2080;
        OUTLINED_FUNCTION_182_7();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v40 + 14) = v41;
        *(v40 + 22) = 2080;
        *(v40 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        *(v40 + 32) = 2080;
        outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v37, &selRef_contentType);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v40 + 34) = v42;
        *(v40 + 42) = 2080;
        v43 = [v37 attributeDictionary];
        v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v200[61] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v200[62] = v45;
        AnyHashable.init<A>(_:)();
        specialized Dictionary.subscript.getter((v200 + 17), v44);

        outlined destroy of AnyHashable((v200 + 17));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
        String.init<A>(describing:)();
        log = v38;
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v40 + 44) = v46;
        *(v40 + 52) = 2080;
        v47 = [v37 attributeDictionary];
        v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v200[63] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v200[64] = v49;
        AnyHashable.init<A>(_:)();
        specialized Dictionary.subscript.getter((v200 + 22), v48);

        outlined destroy of AnyHashable((v200 + 22));
        String.init<A>(describing:)();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v40 + 54) = v50;
        *(v40 + 62) = 2080;
        v51 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v37, &selRef_detectedEventTypes);
        if (v51)
        {
          v52 = v51;
        }

        else
        {
          v52 = MEMORY[0x277D84F90];
        }

        MEMORY[0x25F89F8A0](v52, MEMORY[0x277D837D0]);
        OUTLINED_FUNCTION_82_0();

        OUTLINED_FUNCTION_182_7();
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v40 + 64) = v53;
        _os_log_impl(&dword_25D85C000, log, v177, "Result Rank %ld: id:%s, bundle:%s, contentType: %s, L2:%s, L1:%s, detectedEvents:%s", v40, 0x48u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_2_8();
      }

      else
      {
      }

      OUTLINED_FUNCTION_189_5();
      v55 = MEMORY[0x25F89F4C0](v54 + 8, 0x800000025DBF6DB0);
      v56 = [v37 attributeForKey_];

      if (v56)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_191_7();
      }

      *(v200 + 27) = v204;
      *(v200 + 29) = v205;
      if ([v37 attributeForKey_])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_191_7();
      }

      v57 = v200[93];
      *v193 = v204;
      v193[1] = v205;
      outlined init with copy of EagerResolutionService?();
      outlined init with copy of EagerResolutionService?();

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_49_0();
        *&v204 = OUTLINED_FUNCTION_88_2();
        *v60 = 136315650;

        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v60 + 4) = v61;
        *(v60 + 12) = 2080;
        outlined init with copy of EagerResolutionService?();
        v62 = OUTLINED_FUNCTION_48_3();
        __swift_instantiateConcreteTypeFromMangledNameV2(v62, v63);
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_204_6();
        outlined destroy of IntentApplication?(v64, v65, v66);
        OUTLINED_FUNCTION_182_7();
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v60 + 14) = v67;
        *(v60 + 22) = 2080;
        outlined init with copy of EagerResolutionService?();
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_204_6();
        outlined destroy of IntentApplication?(v68, v69, v70);
        OUTLINED_FUNCTION_48_3();
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v60 + 24) = v71;
        _os_log_impl(&dword_25D85C000, v58, v59, "Fetched result from bundleId %s with result retrieval type: %s, embedding distance for item: %s", v60, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_2_8();
      }

      else
      {

        outlined destroy of IntentApplication?((v200 + 39), &_sypSgMd, &_sypSgMR);
        outlined destroy of IntentApplication?((v200 + 35), &_sypSgMd, &_sypSgMR);
      }

      if (v201 >= *(v186 + 16))
      {
        goto LABEL_90;
      }

      v178 = v200[106];
      v72 = v200[85];
      v73 = v200[83];
      v180 = v200[75];
      v74 = v200[74];
      v75 = v200[73];
      v76 = v200[69];
      (*(v184 + 16))(v72, v200[103] + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v201, v73);
      static LocalIndexClient.searchResultFromItem(_:spotlightRankingItem:eventSourceItemsMap:allowedTypes:locale:)();
      (*(v184 + 8))(v72, v73);
      v77 = OUTLINED_FUNCTION_90_9();
      OUTLINED_FUNCTION_166(v77, v78, v180);
      if (v29)
      {
        v3 = v200;
        v79 = v200[74];

        outlined destroy of IntentApplication?(v193, &_sypSgMd, &_sypSgMR);
        outlined destroy of IntentApplication?((v200 + 27), &_sypSgMd, &_sypSgMR);
        outlined destroy of IntentApplication?(v79, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        v7 = v182;
        v4 = v183;
        v8 = v198;
      }

      else
      {
        v80 = v200[93];
        v81 = v200[81];
        v82 = v200[80];
        v83 = v200[79];
        outlined init with take of SearchResult(v200[74], v200[82]);
        _s10OmniSearch0B10ResultItemOWOcTm_3();
        _s10OmniSearch0B10ResultItemOWOcTm_3();
        OUTLINED_FUNCTION_34_11();
        _s10OmniSearch0B10ResultItemOWOcTm_3();

        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.info.getter();

        v86 = OUTLINED_FUNCTION_259();
        v87 = v200[81];
        v88 = v200[80];
        v89 = v200[79];
        if (v86)
        {
          v179 = v200[71];
          loga = v200[70];
          v90 = OUTLINED_FUNCTION_49_0();
          *&v204 = OUTLINED_FUNCTION_88_2();
          *v90 = 136315651;
          v181 = v84;
          SearchResultItem.type.getter(v200 + 856);
          lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
          dispatch thunk of CustomStringConvertible.description.getter();
          OUTLINED_FUNCTION_212_3();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v87, type metadata accessor for SearchResult);
          OUTLINED_FUNCTION_153();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_92_11();

          *(v90 + 4) = v200 + 107;
          *(v90 + 12) = 2085;
          specialized Encodable.oms_jsonPrettyPrinted()();
          v91 = OUTLINED_FUNCTION_88();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v91, v92);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_92_11();

          *(v90 + 14) = v88;
          *(v90 + 22) = 2085;
          SearchResultItem.associatedValue.getter(v200 + 12);
          v93 = v89;
          v95 = v200[15];
          v94 = v200[16];
          v96 = __swift_project_boxed_opaque_existential_1(v200 + 12, v95);
          (*(v94 + 56))(loga, v179, v95, v94);
          OUTLINED_FUNCTION_212_3();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v93, type metadata accessor for SearchResult);
          __swift_destroy_boxed_opaque_existential_1Tm(v200 + 12);
          OUTLINED_FUNCTION_153();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_92_11();

          *(v90 + 24) = v96;
          _os_log_impl(&dword_25D85C000, v181, v85, "LocalIndexClient found %s: %{sensitive}s ; %{sensitive}s", v90, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_18();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          _s10OmniSearch0B10ResultItemOWOhTm_8(v89, type metadata accessor for SearchResult);
          _s10OmniSearch0B10ResultItemOWOhTm_8(v88, type metadata accessor for SearchResult);
          _s10OmniSearch0B10ResultItemOWOhTm_8(v87, type metadata accessor for SearchResult);
        }

        v97 = v200[82];
        v98 = SearchResultItem.isInstantAnswer()();
        v99 = v200[82];
        v101 = v189;
        v100 = v190;
        v6 = v195;
        v8 = v198;
        if (v98)
        {
          OUTLINED_FUNCTION_73_14(v168);
          v102 = v172;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = *(v189 + 16);
            v132 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v132, v133, v134, v189);
            v101 = v135;
          }

          v3 = *(v101 + 16);
          v103 = *(v101 + 24);
          v104 = v3 + 1;
          if (v3 >= v103 >> 1)
          {
            v136 = OUTLINED_FUNCTION_26_3(v103);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v136, v3 + 1, 1, v101);
            v106 = v168;
            v101 = v105;
          }

          else
          {
            v105 = v101;
            v106 = v168;
          }
        }

        else
        {
          OUTLINED_FUNCTION_73_14(v169);
          v102 = v172;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = *(v190 + 16);
            v138 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v138, v139, v140, v190);
            v100 = v141;
          }

          v3 = *(v100 + 16);
          v107 = *(v100 + 24);
          v104 = v3 + 1;
          if (v3 >= v107 >> 1)
          {
            v142 = OUTLINED_FUNCTION_26_3(v107);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v142, v3 + 1, 1, v100);
            v106 = v169;
            v100 = v105;
          }

          else
          {
            v105 = v100;
            v106 = v169;
          }
        }

        v108 = *v106;
        *(v105 + 16) = v104;
        outlined init with take of SearchResult(v108, v105 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v3);
        OUTLINED_FUNCTION_189_5();
        v110 = v173 == v109 && v23 == v102;
        v189 = v101;
        v190 = v100;
        if (v110)
        {
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
          OUTLINED_FUNCTION_174_5();
          if ((v104 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        if (CSSearchableItem.isPhotoOrVideo.getter())
        {
          v111 = [v12 uniqueIdentifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v3 = v112;

          v113 = v12;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_213_4();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

          v188 = v204;
        }

        v114 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v192, &selRef_contentType);
        if (!v115)
        {
LABEL_74:
          v118 = v200[82];

          OUTLINED_FUNCTION_27_15();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v118, v119);
          outlined destroy of IntentApplication?(v193, &_sypSgMd, &_sypSgMR);
          OUTLINED_FUNCTION_65_0();
          outlined destroy of IntentApplication?(v120, v121, v122);
          goto LABEL_77;
        }

        if (v114 == 0x6D2E63696C627570 && v115 == 0xEE00656761737365)
        {
        }

        else
        {
          OUTLINED_FUNCTION_65_0();
          v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v117 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        v202 = v200[82];
        v123 = [v12 uniqueIdentifier];
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v192, &selRef_attachmentNames);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_213_4();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

        OUTLINED_FUNCTION_27_15();
        _s10OmniSearch0B10ResultItemOWOhTm_8(v202, v124);
        outlined destroy of IntentApplication?(v193, &_sypSgMd, &_sypSgMR);
        OUTLINED_FUNCTION_65_0();
        outlined destroy of IntentApplication?(v125, v126, v127);
        v187 = v204;
LABEL_77:
        v7 = v182;
        v4 = v183;
      }
    }

    else
    {
      v16 = v200[93];
      v17 = v12;
      v18 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_259())
      {
        v19 = OUTLINED_FUNCTION_51_0();
        *&v204 = OUTLINED_FUNCTION_49_0();
        *v19 = 136315138;
        v20 = [v17 uniqueIdentifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        OUTLINED_FUNCTION_182_7();
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        v6 = v195;

        *(v19 + 4) = v21;
        _os_log_impl(&dword_25D85C000, v18, v3, "Skipping item with missing bundleID: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v204);
        v8 = v198;
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37_0();
      }

      else
      {
      }

      v5 = (v201 + 1);
    }
  }

  v143 = v200[106];
  v144 = v200[103];
  v145 = v200[102];

  v147 = *(_sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v146) + 16);

  if (v147 >= *(v194 + 16))
  {

    v152 = v189;
    v151 = v190;
  }

  else
  {
    v148 = v200[93];

    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.error.getter();

    v152 = v189;
    v151 = v190;
    if (os_log_type_enabled(v149, v150))
    {
      OUTLINED_FUNCTION_51_0();
      v153 = OUTLINED_FUNCTION_10_23();
      OUTLINED_FUNCTION_99_10(v153);
      *v3 = 136315138;
      MEMORY[0x25F89F8A0](v194, MEMORY[0x277D837D0]);

      OUTLINED_FUNCTION_63_0();
      v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v3 + 4) = v154;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v155, v156, v157, v158, v159, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
    }
  }

  v203 = v200[97];
  v160 = v200[96];
  v161 = v200[92];
  v162 = v200[72];
  v206 = v152;
  specialized Array.append<A>(contentsOf:)(v151);
  LocalIndexClient.populateMobileSMSDocumentPhotos(results:messageIdToPhotoAttachmentIds:photoAttachmentIdToPhotoItem:)(&v206, v187, v188);

  v163 = v206;

  OUTLINED_FUNCTION_86_16();
  v196 = v200[78];
  v197 = v200[77];
  v199 = v200[74];
  v164 = v200[65];
  *v164 = v163;
  v164[1] = v203;

  OUTLINED_FUNCTION_127();

  v165();
}

{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 760);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  OUTLINED_FUNCTION_114_11();
  v5 = *(v0 + 624);
  v8 = *(v0 + 616);
  v9 = *(v0 + 592);

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_83_0();

  __asm { BRAA            X1, X16 }
}

void static LocalIndexClient.getSpotlightRankingItem(for:attributeSet:)(void *a1, void *a2)
{
  OUTLINED_FUNCTION_151_5(1);
  OUTLINED_FUNCTION_151_5(v4);
  OUTLINED_FUNCTION_151_5(v5);
  OUTLINED_FUNCTION_151_5(v6);
  OUTLINED_FUNCTION_151_5(v7);
  LOBYTE(v17[0]) = v8;
  v13 = v8 << 32;
  v12 = v9 << 32;
  SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();
  if ([a2 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if (OUTLINED_FUNCTION_25_23())
    {
      [v14 integerValue];
      SpotlightRankingItem.retrievalType.setter();
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v17, &_sypSgMd, &_sypSgMR);
  }

  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(a2, &selRef_bundleID);
  SpotlightRankingItem.bundleId.setter();
  v10 = [a1 rankingItem];
  if (v10)
  {
    v11 = v10;
    [v10 likelihood];
    OUTLINED_FUNCTION_20_21();
    SpotlightRankingItem.likelihood.setter();
    [v11 topicalityScore];
    OUTLINED_FUNCTION_20_21();
    SpotlightRankingItem.topicality.setter();
    [v11 pommesL1Score];
    OUTLINED_FUNCTION_20_21();
    SpotlightRankingItem.pommesL1Score.setter();
    [v11 pommesCalibratedL1Score];
    OUTLINED_FUNCTION_20_21();
    SpotlightRankingItem.pommesCalibratedL1Score.setter();
    [v11 embeddingSimilarity];
    OUTLINED_FUNCTION_20_21();
    SpotlightRankingItem.embeddingSimilarity.setter();
    [v11 keywordMatchScore];
    OUTLINED_FUNCTION_20_21();
    SpotlightRankingItem.keywordMatchScore.setter();
    [v11 freshnessScore];
    OUTLINED_FUNCTION_20_21();
    SpotlightRankingItem.freshness.setter();
  }
}

uint64_t static LocalIndexClient.searchableItemsAndRankingItems(for:)()
{
  OUTLINED_FUNCTION_48();
  v1[14] = v2;
  v1[15] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CSSearchableItemC_15OmniSearchTypes016SpotlightRankingB0VtMd, &_sSo16CSSearchableItemC_15OmniSearchTypes016SpotlightRankingB0VtMR);
  v1[16] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[17] = v4;
  v6 = *(v5 + 64) + 15;
  v1[18] = swift_task_alloc();
  v7 = type metadata accessor for SpotlightRankingItem();
  v1[19] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[20] = v8;
  v10 = *(v9 + 64) + 15;
  v1[21] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void static LocalIndexClient.searchableItemsAndRankingItems(for:)(__n128 a1)
{
  v3 = *(v1 + 112);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v79 = *(v1 + 112);
    }

    else
    {
      v79 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v4 = MEMORY[0x25F8A01B0](v79);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_56:
    v80 = *(v1 + 168);
    v81 = *(v1 + 144);
    specialized _arrayForceCast<A, B>(_:)();
    v83 = v82;

    OUTLINED_FUNCTION_62();

    v84(v83);
    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_56;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v86 = *(v1 + 112) + 32;
    v7 = *(v1 + 160);
    v94 = (v7 + 16);
    v96 = MEMORY[0x277D84F90];
    v92 = *(v1 + 136);
    v93 = (v7 + 8);
    v90 = *MEMORY[0x277CC2678];
    v91 = *(v1 + 128);
    v89 = *MEMORY[0x277CC2680];
    v8 = *MEMORY[0x277CC2770];
    v87 = *MEMORY[0x277CC2770];
    v88 = *MEMORY[0x277CC3208];
    a1.n128_u64[0] = 138739971;
    v85 = a1;
    v95 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x25F89FFD0](v5, *(v1 + 112));
      }

      else
      {
        v9 = *(v86 + 8 * v5);
      }

      v10 = v9;
      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v10, &selRef_contentType);
      if (v11)
      {
        v12 = [v10 fullAttributeSet];
        if (v12)
        {
          v13 = v12;
          v14 = *(v1 + 168);
          static LocalIndexClient.getSpotlightRankingItem(for:attributeSet:)(v10, v12);
          v15 = OUTLINED_FUNCTION_45_0();
          v16 = MEMORY[0x25F89F4C0](v15);

          [v13 setAttribute:v16 forKey:v90];

          v17 = v10;
          if (outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorAddresses.getter(v17, &selRef_contentTypeTree))
          {
            v18.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v18.super.isa = 0;
          }

          [v13 setAttribute:v18.super.isa forKey:{v89, *&v85}];
          swift_unknownObjectRelease();
          if (outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v17, &selRef_answerAttributes))
          {
            v46.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v46.super.isa = 0;
          }

          v47 = MEMORY[0x25F89F4C0](0xD000000000000025, 0x800000025DBF6D00);
          [v13 setAttribute:v46.super.isa forKey:v47];

          swift_unknownObjectRelease();
          v48 = v17;
          CSSearchableItemAttributeSet.spotlightSearchResult.setter(v17);
          if ([v13 attributeForKey_])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v97 = 0u;
            v98 = 0u;
          }

          *(v1 + 16) = v97;
          *(v1 + 32) = v98;
          if (*(v1 + 40))
          {
            v49 = swift_dynamicCast();
            v50 = *(v1 + 96);
            if (v49)
            {
              v51 = *(v1 + 96);
              v52 = *(v1 + 104);
            }
          }

          else
          {
            outlined destroy of IntentApplication?(v1 + 16, &_sypSgMd, &_sypSgMR);
          }

          if ([v13 attributeForKey_])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v97 = 0u;
            v98 = 0u;
          }

          v53 = v4;
          *(v1 + 48) = v97;
          *(v1 + 64) = v98;
          if (*(v1 + 72))
          {
            if (swift_dynamicCast())
            {
              v54 = *(v1 + 80);
              v55 = *(v1 + 88);
            }

            else
            {
              v55 = 0;
            }
          }

          else
          {
            outlined destroy of IntentApplication?(v1 + 48, &_sypSgMd, &_sypSgMR);
            v55 = 0;
          }

          v56 = objc_allocWithZone(MEMORY[0x277CC34B0]);
          v2 = v13;
          OUTLINED_FUNCTION_144_9();
          v60 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v57, v58, v59, v55, v2);
          v61 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v48, &selRef_resultBundleId);
          if (v62)
          {
            v63 = MEMORY[0x25F89F4C0](v61);
          }

          else
          {
            v63 = 0;
          }

          v64 = *(v1 + 168);
          v66 = *(v1 + 144);
          v65 = *(v1 + 152);
          [v60 setBundleID_];

          v67 = *(v91 + 48);
          *v66 = v60;
          (*v94)(&v66[v67], v64, v65);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v76 = *(v96 + 16);
            OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v96 = v77;
          }

          v69 = *(v96 + 16);
          v68 = *(v96 + 24);
          if (v69 >= v68 >> 1)
          {
            OUTLINED_FUNCTION_26_3(v68);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v96 = v78;
          }

          v70 = *(v1 + 168);
          v72 = *(v1 + 144);
          v71 = *(v1 + 152);

          (*v93)(v70, v71);
          *(v96 + 16) = v69 + 1;
          v73 = *(v92 + 80);
          OUTLINED_FUNCTION_79();
          v75 = *(v74 + 72);
          outlined init with take of (Int, SearchCATEntity)();
          v4 = v53;
          v6 = v95;
          goto LABEL_50;
        }

        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_1_31();
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v36, static Logging.search);
        v20 = v10;
        v21 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v21, v37))
        {
LABEL_21:

          goto LABEL_50;
        }

        v23 = OUTLINED_FUNCTION_51_0();
        v38 = OUTLINED_FUNCTION_173_0();
        v32 = OUTLINED_FUNCTION_160_5(v38, v39, v40, v41, v42, v43, v44, v45, v85.n128_i32[0]);
        v33 = v37;
        v34 = v21;
        v35 = "LocalIndexClient - Could not create CSSearchableItemAttributeSet for %{sensitive}@";
      }

      else
      {

        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v19, static Logging.search);
        v20 = v10;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v21, v22))
        {
          goto LABEL_21;
        }

        v23 = OUTLINED_FUNCTION_51_0();
        v24 = OUTLINED_FUNCTION_173_0();
        v32 = OUTLINED_FUNCTION_160_5(v24, v25, v26, v27, v28, v29, v30, v31, v85.n128_i32[0]);
        v33 = v22;
        v34 = v21;
        v35 = "LocalIndexClient - Failed to synthesize searchable item from result: %{sensitive}@";
      }

      _os_log_impl(&dword_25D85C000, v34, v33, v35, v23, 0xCu);
      outlined destroy of IntentApplication?(v2, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();

LABEL_50:
      if (v4 == ++v5)
      {
        goto LABEL_56;
      }
    }
  }

  __break(1u);
}