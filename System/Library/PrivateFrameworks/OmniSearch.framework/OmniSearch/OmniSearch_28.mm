void CSSearchableItemAttributeSet.spotlightSearchResult.setter(void *a1)
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSCustomAttributeKey, 0x277CC33B0);
  v3 = a1;
  v4 = static CSCustomAttributeKey.spotlightSFSearchResultKey.getter();
  [v1 setValue:v3 forCustomKey:v4];
}

void static LocalIndexClient.filterQueries(for:)(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 40;
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_21;
    }

    v9 = *(v6 - 1);
    v8 = *v6;

    EntityProperty.wrappedValue.getter();

    ++v1;
    v6 += 2;
    if (v27)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = v5[2];
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v5 = v13;
      }

      v10 = v5[2];
      if (v10 >= v5[3] >> 1)
      {
        OUTLINED_FUNCTION_61_19();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v5 = v14;
      }

      v5[2] = v10 + 1;
      v11 = &v5[2 * v10];
      v11[4] = v25;
      v11[5] = v27;
      v1 = v7;
      goto LABEL_2;
    }
  }

  v15 = v5[2];
  if (v15)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v5 + 5;
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = one-time initialization token for keyAttributeAppEntityTypeIdentifier;

      if (v19 != -1)
      {
        OUTLINED_FUNCTION_21_27();
        swift_once();
      }

      v26 = static LocalIndexClient.keyAttributeAppEntityTypeIdentifier;
      v28 = *algn_27FCAFD38;

      MEMORY[0x25F89F6C0](15677, 0xE200000000000000);
      v20 = OUTLINED_FUNCTION_45_0();
      MEMORY[0x25F89F6C0](v20);

      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = OUTLINED_FUNCTION_26_3(v21);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24, v22 + 1, 1);
      }

      *(v4 + 16) = v22 + 1;
      v23 = v4 + 16 * v22;
      *(v23 + 32) = v26;
      *(v23 + 40) = v28;
      v16 += 2;
      --v15;
    }

    while (v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  OUTLINED_FUNCTION_216_4();
  OUTLINED_FUNCTION_140_2();

  OUTLINED_FUNCTION_94();
}

uint64_t static LocalIndexClient.checkEmbeddingCompleteness()()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();

  return MEMORY[0x2822009F8](static LocalIndexClient.checkEmbeddingCompleteness(), 0, 0);
}

{
  OUTLINED_FUNCTION_48();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v1 = static ContextManager.shared;
  *(v0 + 24) = static ContextManager.shared;

  return MEMORY[0x2822009F8](static LocalIndexClient.checkEmbeddingCompleteness(), v1, 0);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 24);
  ContextManager.set(indexContext:)(0, 0, 1);
  v2 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 16);
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_127();

  return v7();
}

uint64_t static LocalIndexClient.results(for:)(unint64_t a1)
{
  v1 = a1;
  v57 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_47:
    if (v1 < 0)
    {
      v41 = v1;
    }

    else
    {
      v41 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v42 = v1;
    v2 = MEMORY[0x25F8A01B0](v41);
    v1 = v42;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v47 = v1 & 0xC000000000000001;
      v45 = v1;
      v43 = v1 + 32;
      v44 = v1 & 0xFFFFFFFFFFFFFF8;
      v1 = MEMORY[0x277CC2770];
      v52 = MEMORY[0x277D84F90];
      v4 = *MEMORY[0x277CC3208];
      v5 = *MEMORY[0x277CC2770];
      v6 = &off_2799EF000;
      v46 = v2;
      v50 = *MEMORY[0x277CC2770];
      v51 = *MEMORY[0x277CC3208];
      while (1)
      {
        if (v47)
        {
          v7 = MEMORY[0x25F89FFD0](v3, v45);
        }

        else
        {
          if (v3 >= *(v44 + 16))
          {
            goto LABEL_46;
          }

          v7 = *(v43 + 8 * v3);
        }

        v8 = v7;
        v9 = __OFADD__(v3, 1);
        v10 = v3 + 1;
        if (v9)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_1_31();
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v11, static Logging.search);
        v12 = v8;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();

        v48 = v10;
        v49 = v12;
        if (OUTLINED_FUNCTION_221_4())
        {
          OUTLINED_FUNCTION_51_0();
          v56 = OUTLINED_FUNCTION_10_23();
          *v10 = 136642819;
          v15 = v12;
          v16 = [v15 description];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v6 = &off_2799EF000;
          v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v10 + 4) = v17;
          v12 = v49;
          _os_log_impl(&dword_25D85C000, v13, v14, "Found section: %{sensitive}s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          OUTLINED_FUNCTION_13_18();
          OUTLINED_FUNCTION_2_8();
        }

        result = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.photosSceneClassifications.getter(v12, &selRef_results);
        if (!result)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        v1 = result >> 62;
        if (result >> 62)
        {
          if (result >= 0)
          {
            result &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v20 = MEMORY[0x25F8A01B0](result);
          if (!v20)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v20)
          {
            goto LABEL_42;
          }
        }

        if (v20 < 1)
        {
          goto LABEL_45;
        }

        v21 = 0;
        v55 = v19 & 0xC000000000000001;
        v53 = v20;
        v54 = v19;
        do
        {
          if (v55)
          {
            v22 = MEMORY[0x25F89FFD0](v21, v19);
          }

          else
          {
            v22 = *(v19 + 8 * v21 + 32);
          }

          v23 = v22;
          objc_opt_self();
          v24 = swift_dynamicCastObjCClass();
          v25 = v23;
          if (v24)
          {
            MEMORY[0x25F89F850]();
            v26 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v26 >> 1)
            {
              OUTLINED_FUNCTION_26_3(v26);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            OUTLINED_FUNCTION_119();
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v52 = v57;
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            if ([v24 v6[283]])
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              OUTLINED_FUNCTION_191_7();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
            String.init<A>(describing:)();
            if ([v24 v6[283]])
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              OUTLINED_FUNCTION_191_7();
            }

            String.init<A>(describing:)();
            v33 = v25;

            v34 = Logger.logObject.getter();
            v35 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v34, v35))
            {
              v36 = OUTLINED_FUNCTION_49_0();
              OUTLINED_FUNCTION_88_2();
              *v36 = 136643331;
              v37 = v33;
              v38 = [v24 description];
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v6 = &off_2799EF000;
              getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
              OUTLINED_FUNCTION_227_2();
              *(v36 + 4) = v38;
              *(v36 + 12) = 2080;
              v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v36 + 14) = v39;
              *(v36 + 22) = 2080;
              v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v36 + 24) = v40;
              _os_log_impl(&dword_25D85C000, v34, v35, "Found result: %{sensitive}s, uniqueId:%s, domainId: %s", v36, 0x20u);
              swift_arrayDestroy();
              v4 = v51;
              OUTLINED_FUNCTION_42_0();
              v5 = v50;
              OUTLINED_FUNCTION_42_0();
            }

            else
            {
            }

            v20 = v53;
            v19 = v54;
          }

          else
          {
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.error.getter();

            if (OUTLINED_FUNCTION_221_4())
            {
              v30 = OUTLINED_FUNCTION_51_0();
              v31 = OUTLINED_FUNCTION_173_0();
              *v30 = 138739971;
              *(v30 + 4) = v25;
              *v31 = v25;
              v32 = v25;
              _os_log_impl(&dword_25D85C000, v28, v29, "Failed to cast search result to spotlightExtras: %{sensitive}@", v30, 0xCu);
              outlined destroy of IntentApplication?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v6 = &off_2799EF000;
              OUTLINED_FUNCTION_42_0();
              OUTLINED_FUNCTION_2_8();
            }

            else
            {
            }
          }

          ++v21;
        }

        while (v20 != v21);
LABEL_42:

        v3 = v48;
        if (v48 == v46)
        {
          return v52;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void static LocalIndexClient.filterAllowedItems(allowedTypes:items:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 40;
    v41 = a1 + 40;
    v42 = MEMORY[0x277D84F90];
LABEL_3:
    v5 = (v4 + 16 * v3);
    while (v2 != v3)
    {
      if (v3 >= v2)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        return;
      }

      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_46;
      }

      v7 = *(v5 - 1);
      v8 = *v5;

      EntityProperty.wrappedValue.getter();
      if (v46)
      {
        EntityProperty.wrappedValue.getter();
        static LocalIndexClient.makeFilterKey(bundleId:typeName:)(v44, v46, v44, v46);
        v40 = v13;

        v14 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = *(v42 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v19;
        }

        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
        if (v16 >= v15 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v15);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v20;
        }

        *(v14 + 16) = v16 + 1;
        v42 = v14;
        v17 = v14 + 16 * v16;
        v4 = v41;
        *(v17 + 32) = v44;
        *(v17 + 40) = v40;
        v3 = v6;
        goto LABEL_3;
      }

      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v9, static Logging.search);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_88_0(v11))
      {
        v12 = OUTLINED_FUNCTION_172();
        *v12 = 0;
        _os_log_impl(&dword_25D85C000, v10, v11, "LocalIndexClient.findMatches - Skipping allowedType with nil typeName", v12, 2u);
        OUTLINED_FUNCTION_72_9();
      }

      ++v3;
      v5 += 2;
    }

    v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v21);
    v23 = *(v42 + 16);

    if (v23)
    {
      v45 = MEMORY[0x277D84F90];
      v24 = a2;
      v25 = specialized Array.count.getter(a2);
      for (i = 0; v25 != i; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x25F89FFD0](i, v24);
        }

        else
        {
          if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v27 = *(v24 + 8 * i + 32);
        }

        v28 = v27;
        if (__OFADD__(i, 1))
        {
          goto LABEL_47;
        }

        v29 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v27 attributeSet], &selRef_bundleID);
        if (v30)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0;
        }

        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0xE000000000000000;
        }

        v33 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v28 attributeSet], &selRef_appEntityType);
        if (v34)
        {
          v35 = v33;
        }

        else
        {
          v35 = 0;
        }

        if (v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = 0xE000000000000000;
        }

        static LocalIndexClient.makeFilterKey(bundleId:typeName:)(v31, v32, v35, v36);

        v37 = OUTLINED_FUNCTION_107();
        specialized Set.contains(_:)(v37, v38, v22);
        OUTLINED_FUNCTION_174_5();
        if (v31)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v39 = *(v45 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v24 = a2;
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

BOOL CSSearchableItem.isEventTypeItem.getter()
{
  v1 = [v0 attributeSet];
  v2 = [v1 eventType];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  return v6 != 0;
}

uint64_t CSSearchableItem.isPhotoOrVideo.getter()
{
  v0 = type metadata accessor for UTType();
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  static UTType.image.getter();
  v6 = CSSearchableItem.isContentType(_:)();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_119();
  v7(v8);
  if (v6 & 1) != 0 || (static UTType.movie.getter(), v9 = CSSearchableItem.isContentType(_:)(), v10 = OUTLINED_FUNCTION_119(), v7(v10), (v9))
  {
    v11 = 1;
  }

  else
  {
    v11 = CSSearchableItem.isSyndicatedPhoto.getter();
  }

  return v11 & 1;
}

uint64_t LocalIndexClient.populateMobileSMSDocumentPhotos(results:messageIdToPhotoAttachmentIds:photoAttachmentIdToPhotoItem:)(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v122 = *v3;
  v96 = type metadata accessor for SpotlightRankingItem();
  v119 = *(v96 - 8);
  v7 = *(v119 + 64);
  MEMORY[0x28223BE20](v96);
  v88 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v95 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v84 - v13;
  v121 = type metadata accessor for Photo();
  v123 = *(v121 - 8);
  v15 = *(v123 + 64);
  MEMORY[0x28223BE20](v121);
  v86 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for SearchResultItem(0);
  v17 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v84 - v21;
  v116 = type metadata accessor for MobileSMSDocument();
  v23 = *(v116 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v116);
  v107 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v115 = &v84 - v27;
  v102 = type metadata accessor for SearchResult(0);
  v108 = *(v102 - 8);
  v28 = *(v108 + 64);
  MEMORY[0x28223BE20](v102);
  v106 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v105 = &v84 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = (&v84 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v101 = (&v84 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtSgMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtSgMR);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v118 = &v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v112 = &v84 - v42;
  v43 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_62:
    specialized _ArrayBuffer._consumeAndCreateNew()(v43);
    v45 = v83;
  }

  v46 = 0;
  v100 = (v23 + 32);
  v103 = v43;
  v47 = *(v43 + 16);
  v120 = v123 + 32;
  v92 = (v23 + 16);
  v90 = v45;
  v89 = a1;
  *a1 = v45;
  v91 = (v119 + 16);
  v87 = (v119 + 32);
  v98 = (v23 + 8);
  v23 = v102;
  v109 = v34;
  v104 = v35;
  v111 = v47;
  v85 = a3;
  v97 = a2;
  v94 = v14;
  v93 = v19;
  v99 = v22;
  while (1)
  {
    v43 = v118;
    if (v46 == v47)
    {
      v48 = 1;
      v119 = v47;
    }

    else
    {
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (v46 >= *(v103 + 16))
      {
        goto LABEL_58;
      }

      v49 = v46 + 1;
      v50 = v103 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v46;
      v51 = *(v35 + 48);
      *v101 = v46;
      _s10OmniSearch0B10ResultItemOWOcTm_3();
      v43 = v118;
      outlined init with take of (Int, SearchCATEntity)();
      v48 = 0;
      v119 = v49;
    }

    __swift_storeEnumTagSinglePayload(v43, v48, 1, v35);
    v52 = v112;
    outlined init with take of (Int, SearchCATEntity)();
    if (__swift_getEnumTagSinglePayload(v52, 1, v35) == 1)
    {
    }

    v114 = *v52;
    outlined init with take of SearchResult(v52 + *(v35 + 48), v34);
    v53 = *(v23 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    a1 = CodableNSSecureCoding.wrappedValue.getter();
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v100)(v115, v22, v116);
      v110 = a1;
      v54 = [a1 uniqueIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(a2 + 16))
      {
        v43 = specialized __RawDictionaryStorage.find<A>(_:)();
        v56 = v55;

        v14 = MEMORY[0x277D84F90];
        if (v56)
        {
          v23 = *(*(a2 + 56) + 8 * v43);
          v22 = MEMORY[0x277D84F90];
          v124 = MEMORY[0x277D84F90];
          v34 = *(v23 + 16);

          v35 = 0;
          v19 = v23 + 40;
LABEL_13:
          a1 = (v19 + 16 * v35);
          while (v34 != v35)
          {
            if (v35 >= *(v23 + 16))
            {
              __break(1u);
              goto LABEL_55;
            }

            if (*(a3 + 16))
            {
              v64 = *(a1 - 1);
              v14 = *a1;

              v43 = a3;
              v65 = specialized __RawDictionaryStorage.find<A>(_:)();
              if (v66)
              {
                v67 = *(*(a3 + 56) + 8 * v65);

                v43 = &v124;
                MEMORY[0x25F89F850](v68);
                v14 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v14 >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                ++v35;
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v22 = v124;
                goto LABEL_13;
              }
            }

            a1 += 2;
            ++v35;
          }

          if (v22 >> 62)
          {
            if (v22 < 0)
            {
              v81 = v22;
            }

            else
            {
              v81 = v22 & 0xFFFFFFFFFFFFFF8;
            }

            v23 = MEMORY[0x25F8A01B0](v81);
          }

          else
          {
            v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v34 = v109;
          v35 = v104;
          if (!v23)
          {
            goto LABEL_39;
          }

          v124 = MEMORY[0x277D84F90];
          v43 = &v124;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          if (v23 < 0)
          {
            goto LABEL_61;
          }

          v35 = 0;
          v14 = v124;
          a2 = v22 & 0xC000000000000001;
          v113 = v22 & 0xFFFFFFFFFFFFFF8;
          a3 = v86;
          while (1)
          {
            a1 = (v35 + 1);
            if (__OFADD__(v35, 1))
            {
              break;
            }

            if (a2)
            {
              v69 = MEMORY[0x25F89FFD0](v35, v22);
            }

            else
            {
              if (v35 >= *(v113 + 16))
              {
                goto LABEL_56;
              }

              v69 = *(v22 + 8 * v35 + 32);
            }

            v70 = v69;
            v43 = v122;
            static LocalIndexClient.constructPhotoDocument(item:)(v69, a3);

            v124 = v14;
            v19 = *(v14 + 2);
            v34 = (v19 + 1);
            if (v19 >= *(v14 + 3) >> 1)
            {
              v43 = &v124;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v14 = v124;
            }

            *(v14 + 2) = v34;
            (*(v123 + 32))(&v14[((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v19], a3, v121);
            ++v35;
            if (a1 == v23)
            {

              a3 = v85;
              a2 = v97;
              v34 = v109;
              v35 = v104;
              goto LABEL_40;
            }
          }

LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }
      }

      else
      {
LABEL_39:

        v14 = MEMORY[0x277D84F90];
      }

LABEL_40:
      if (*(v14 + 2))
      {
        v71 = v107;
        MobileSMSDocument.withUpdatedPhotoAttachments(_:)(v14, v57, v58, v59, v60, v61, v62, v63, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);

        v19 = v93;
        (*v92)(v93, v71, v116);
        swift_storeEnumTagMultiPayload();
        v72 = v102;
        v14 = v94;
        v35 = v96;
        (*v91)(v94, v34 + *(v102 + 20), v96);
        __swift_storeEnumTagSinglePayload(v14, 0, 1, v35);
        v73 = v106;
        *&v106[v72[7]] = MEMORY[0x277D84F90];
        v74 = (v73 + v72[10]);
        *v74 = 0;
        v74[1] = 0;
        _s10OmniSearch0B10ResultItemOWOcTm_3();
        v75 = v72[6];
        type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
        v76 = v110;
        CodableNSSecureCoding.init(wrappedValue:)();
        v77 = v95;
        v34 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
        outlined init with copy of EagerResolutionService?();
        if (__swift_getEnumTagSinglePayload(v77, 1, v35) == 1)
        {
          outlined destroy of IntentApplication?(v77, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          v78 = v72[5];
          LOBYTE(v124) = 1;
          SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();
          outlined destroy of IntentApplication?(v14, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          _s10OmniSearch0B10ResultItemOWOhTm_8(v19, type metadata accessor for SearchResultItem);
        }

        else
        {
          outlined destroy of IntentApplication?(v14, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          _s10OmniSearch0B10ResultItemOWOhTm_8(v19, type metadata accessor for SearchResultItem);
          v79 = *v87;
          v80 = v88;
          (*v87)(v88, v77, v35);
          v79(&v106[v72[5]], v80, v35);
          v73 = v106;
        }

        v23 = v72;
        *(v73 + v72[8]) = 1;
        *(v73 + v72[9]) = 1;
        outlined init with take of SearchResult(v73, v105);

        a1 = *v98;
        v43 = v116;
        (*v98)(v107, v116);
        (a1)(v115, v43);
        _s10OmniSearch0B10ResultItemOWOhTm_8(v109, type metadata accessor for SearchResult);
        v22 = v99;
        a2 = v97;
        if ((v114 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        a1 = v90;
        if (v114 >= v90[2])
        {
          goto LABEL_60;
        }

        outlined assign with take of SearchResult(v105, v90 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v114);
        *v89 = a1;
        v34 = v109;
        v35 = v104;
      }

      else
      {

        (*v98)(v115, v116);
        _s10OmniSearch0B10ResultItemOWOhTm_8(v34, type metadata accessor for SearchResult);
        v22 = v99;
        v23 = v102;
      }
    }

    else
    {
      _s10OmniSearch0B10ResultItemOWOhTm_8(v34, type metadata accessor for SearchResult);

      _s10OmniSearch0B10ResultItemOWOhTm_8(v22, type metadata accessor for SearchResultItem);
    }

    v46 = v119;
    v47 = v111;
  }
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static LocalIndexClient.makeFilterKey(bundleId:typeName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x25F89F6C0](95, 0xE100000000000000);
  MEMORY[0x25F89F6C0](a3, a4);
}

void static LocalIndexClient.handleSelectItemsByContentType(_:spotlightRankingItem:eventSourceItemsMap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v24;
  a20 = v25;
  v935 = v20;
  v928[0] = v26;
  v28 = v27;
  v937 = v29;
  v30 = type metadata accessor for PhoneHistory();
  v31 = OUTLINED_FUNCTION_1_5(v30, &v892);
  v859 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v35);
  v36 = type metadata accessor for VoicemailTranscript();
  v37 = OUTLINED_FUNCTION_1_5(v36, &v897);
  v866 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v41);
  v42 = type metadata accessor for CharacterSet();
  v43 = OUTLINED_FUNCTION_1_5(v42, &v887);
  v861 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v47);
  v48 = type metadata accessor for Reminder();
  v49 = OUTLINED_FUNCTION_1_5(v48, v907);
  v879 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v53);
  v54 = type metadata accessor for Contact();
  v55 = OUTLINED_FUNCTION_1_5(v54, &v913);
  v892 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v59);
  v60 = type metadata accessor for NoteDocument();
  v61 = OUTLINED_FUNCTION_1_5(v60, v915);
  v890 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v65);
  v66 = type metadata accessor for CalendarEvent();
  v67 = OUTLINED_FUNCTION_1_5(v66, &v927);
  v901 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v77);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v82);
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v87);
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v93 = OUTLINED_FUNCTION_114(v92);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v99 = OUTLINED_FUNCTION_114(v98);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v105 = OUTLINED_FUNCTION_114(v104);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v114 = OUTLINED_FUNCTION_114(v113);
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v128);
  v129 = type metadata accessor for MobileSMSDocument();
  v130 = OUTLINED_FUNCTION_14(v129);
  v917 = v131;
  v133 = *(v132 + 64);
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v136);
  v137 = type metadata accessor for EmailDocument();
  v138 = OUTLINED_FUNCTION_1_5(v137, &a9);
  v924 = v139;
  v141 = *(v140 + 64);
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v142);
  v143 = type metadata accessor for UTType();
  v144 = OUTLINED_FUNCTION_1_5(v143, &a11);
  v146 = v145;
  v148 = *(v147 + 64);
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v149);
  v934 = type metadata accessor for FileDocument();
  v150 = OUTLINED_FUNCTION_14(v934);
  v933 = v151;
  v153 = *(v152 + 64);
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v154);
  v938 = type metadata accessor for SpotlightRankingItem();
  v155 = OUTLINED_FUNCTION_14(v938);
  v940 = v156;
  v158 = *(v157 + 64);
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_14_2();
  v169 = OUTLINED_FUNCTION_28_2(v168);
  v941 = type metadata accessor for SearchResult(v169);
  v170 = OUTLINED_FUNCTION_17(v941);
  v172 = *(v171 + 64);
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v174);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v178);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v181);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v182);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v184 = OUTLINED_FUNCTION_114(v183);
  v186 = *(v185 + 64);
  MEMORY[0x28223BE20](v184);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v187);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v189);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v192);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v193);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v194);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v196);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v197);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v201);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v202);
  MEMORY[0x28223BE20](v203);
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v205);
  OUTLINED_FUNCTION_14_2();
  v207 = OUTLINED_FUNCTION_28_2(v206);
  v936 = type metadata accessor for SearchResultItem(v207);
  v208 = OUTLINED_FUNCTION_17(v936);
  v210 = *(v209 + 64);
  MEMORY[0x28223BE20](v208);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v211);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v212);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v213);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v214);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v216);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v217);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v218);
  OUTLINED_FUNCTION_78_16();
  MEMORY[0x28223BE20](v219);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v220);
  v221 = type metadata accessor for Photo();
  v222 = OUTLINED_FUNCTION_14(v221);
  v943 = v223;
  v225 = *(v224 + 64);
  MEMORY[0x28223BE20](v222);
  OUTLINED_FUNCTION_109();
  v228 = v226 - v227;
  MEMORY[0x28223BE20](v229);
  OUTLINED_FUNCTION_67_12();
  *&v231 = MEMORY[0x28223BE20](v230).n128_u64[0];
  v233 = v855 - v232;
  v942 = [v28 attributeSet];
  v234 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v28);
  if (v235)
  {
    v236 = v234;
  }

  else
  {
    v236 = 0;
  }

  v902[3] = v236;
  v237 = 0xE000000000000000;
  if (v235)
  {
    v237 = v235;
  }

  v939 = v237;
  if (CSSearchableItem.isPhotoOrVideo.getter())
  {
    v916[0] = v28;
    static LocalIndexClient.constructPhotoDocument(item:)(v28, v233);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v238 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v238, static Logging.search);
    v239 = v943;
    v240 = v943[2];
    v935 = v233;
    v240(v23, v233, v221);
    v241 = Logger.logObject.getter();
    v242 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_88_0(v242))
    {
      v243 = OUTLINED_FUNCTION_51_0();
      v244 = OUTLINED_FUNCTION_49_0();
      v946 = v244;
      *v243 = 136642819;
      v240(v228, v23, v221);
      String.init<A>(describing:)();
      v228 = v245;
      v246 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v243 + 4) = v246;

      v247 = OUTLINED_FUNCTION_186_4(v943);
      v248(v247);
      OUTLINED_FUNCTION_70_0(&dword_25D85C000, v249, v242, "LocalIndexClient: Converted item to photo %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v244);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_72_9();
    }

    else
    {

      v277 = OUTLINED_FUNCTION_186_4(v239);
      v278(v277);
    }

    v279 = v938;
    v280 = v930;
    v281 = OUTLINED_FUNCTION_193_5(&a13);
    v240(v281, v935, v221);
    OUTLINED_FUNCTION_203_4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_103_13(v282, v283, v284, v279);
    v285 = v931;
    *(v931 + v286) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v285 + *(v23 + 40)));
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    v287 = *(v23 + 24);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    OUTLINED_FUNCTION_71_16();
    OUTLINED_FUNCTION_33_13();
    CodableNSSecureCoding.init(wrappedValue:)();
    v288 = v929;
    outlined init with copy of EagerResolutionService?();
    OUTLINED_FUNCTION_166(v288, 1, v279);
    v289 = v942;
    if (v368)
    {
      v329 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMd;
      OUTLINED_FUNCTION_117_8();
      outlined destroy of IntentApplication?(v290, v291, v292);
      v293 = *(v23 + 20);
      OUTLINED_FUNCTION_8_37();
      OUTLINED_FUNCTION_19_18();

      OUTLINED_FUNCTION_117_8();
      outlined destroy of IntentApplication?(v294, v295, v296);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v228, v297);
      v298 = OUTLINED_FUNCTION_142_6();
      v299(v298);
    }

    else
    {

      outlined destroy of IntentApplication?(v280, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v228, v325);
      v326 = OUTLINED_FUNCTION_142_6();
      v327(v326);
      LOBYTE(v329) = v940 + 32;
      v328 = *(v940 + 32);
      v330 = OUTLINED_FUNCTION_34_11();
      (v328)(v330);
      v331 = *(v23 + 20);
      OUTLINED_FUNCTION_196_5();
      v328();
    }

    v332 = v937;
    OUTLINED_FUNCTION_136_10();
    *(v285 + v333) = v329;
    *(v285 + *(v23 + 36)) = v329;
    v334 = v285;
    goto LABEL_154;
  }

  v855[0] = v129;
  v250 = &off_2799EF000;
  if (CSSearchableItem.isFileDocument.getter())
  {

    v251 = [v28 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v252 = v28;
    v253 = v932;
    OUTLINED_FUNCTION_83_13();
    FileDocument.init(id:item:)();
    OUTLINED_FUNCTION_128_9(&a18);
    v254(v21, v253, v934);
    swift_storeEnumTagMultiPayload();
    v255 = *(v940 + 16);
    OUTLINED_FUNCTION_81_17();
    v256 = v938;
    v257();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v258, v259, v260, v256);
    v261 = v941;
    v262 = v920;
    *(v920 + v941[7]) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v262 + v261[10]));
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    v263 = v261[6];
    v264 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v265 = v252;
    OUTLINED_FUNCTION_47_11();
    CodableNSSecureCoding.init(wrappedValue:)();
    outlined init with copy of EagerResolutionService?();
    v266 = OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_166(v266, v267, v256);
    if (v368)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v268, v269, v270);
      v271 = v261[5];
      OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_165_4();
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v272, v273, v274);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v21, v275);
      OUTLINED_FUNCTION_4_4(&a18);
      v276(v932, v934);
    }

    else
    {

      outlined destroy of IntentApplication?(v22, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v21, v335);
      OUTLINED_FUNCTION_4_4(&a18);
      v336(v932, v934);
      v337 = *(v940 + 32);
      OUTLINED_FUNCTION_48_12(&v938);
      OUTLINED_FUNCTION_144_9();
      v337();
      (v337)(v262 + v261[5], v264, v256);
    }

    v23 = v261;
    *(v262 + v261[8]) = 1;
    *(v262 + v261[9]) = 1;
    v334 = v262;
    goto LABEL_153;
  }

  OUTLINED_FUNCTION_192_7(&a10);
  static UTType.emailMessage.getter();
  v300 = CSSearchableItem.isContentType(_:)();
  v301 = *(v146 + 8);
  v302 = v927;
  v301(v221, v927);
  v303 = v940;
  v23 = v941;
  if (v300)
  {
    v304 = v938;
    v305 = v942;
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v306 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v306, static Logging.search);
    v307 = v28;
    v308 = v305;
    v309 = v307;
    v310 = v308;
    v311 = v309;
    v312 = v310;
    swift_bridgeObjectRetain_n();
    v313 = v311;
    v314 = v312;
    v315 = Logger.logObject.getter();
    v316 = static os_log_type_t.debug.getter();
    v317 = os_log_type_enabled(v315, v316);
    v943 = v314;
    if (v317)
    {
      LODWORD(v942) = v316;
      v318 = swift_slowAlloc();
      v945[1] = swift_slowAlloc();
      *v318 = 136316163;

      v319 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v318 + 4) = v319;
      swift_bridgeObjectRelease_n();
      *(v318 + 12) = 2085;
      v946 = CSSearchableItem.oms_emailBody.getter();
      v947 = v320;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      String.init<A>(describing:)();
      v321 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v318 + 14) = v321;

      *(v318 + 22) = 2085;
      v946 = CSSearchableItem.oms_emailSubject.getter();
      v947 = v322;
      String.init<A>(describing:)();
      v323 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v318 + 24) = v323;

      *(v318 + 32) = 2085;
      v324 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v314, &selRef_authorNames);
      if (v324)
      {
        v946 = v324;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_188_6();
        BidirectionalCollection<>.joined(separator:)();
      }

      v402 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v318 + 34) = v402;
      v403 = v943;

      *(v318 + 42) = 2085;
      v404 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v403, &selRef_recipientNames);
      if (v404)
      {
        v946 = v404;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_188_6();
        BidirectionalCollection<>.joined(separator:)();
        OUTLINED_FUNCTION_140_2();
      }

      v303 = v940;
      v23 = v941;
      OUTLINED_FUNCTION_94();
      v410 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v318 + 44) = v410;
      v411 = v943;

      _os_log_impl(&dword_25D85C000, v315, v942, "Email (bundleID: %s) found: %{sensitive}s, subject: %{sensitive}s, authors:%{sensitive}s, recipients: %{sensitive}s", v318, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37_0();

      v345 = v938;
      OUTLINED_FUNCTION_187_5();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_187_5();
      v345 = v304;
    }

    v412 = v313;
    EmailDocument.init(from:)(v412, v413, v414, v415, v416, v417, v418, v419, v855[0], v855[1], v855[2], v855[3], v855[4], v856, v857, v858, v859, v860, v861, v862);
    isa = v315[2].isa;
    v421 = OUTLINED_FUNCTION_30_5();
    v422(v421);
    swift_storeEnumTagMultiPayload();
    v423 = *(v303 + 16);
    v424 = v911[1];
    OUTLINED_FUNCTION_81_17();
    v425();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v426, v427, v428, v345);
    v429 = v912;
    *(v912 + *(v23 + 28)) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v429 + *(v23 + 40)));
    OUTLINED_FUNCTION_48_3();
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    v430 = *(v23 + 24);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v431 = v412;
    CodableNSSecureCoding.init(wrappedValue:)();
    OUTLINED_FUNCTION_170_5(&v939);
    v432 = OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_166(v432, v433, v345);
    if (v368)
    {
      v412 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMd;
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v434, v435, v436);
      v437 = *(v23 + 20);
      OUTLINED_FUNCTION_129_11();
      OUTLINED_FUNCTION_129_11();
      OUTLINED_FUNCTION_129_11();
      OUTLINED_FUNCTION_129_11();
      OUTLINED_FUNCTION_129_11();
      LOBYTE(v946) = 1;
      OUTLINED_FUNCTION_17_32();
      OUTLINED_FUNCTION_19_18();

      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v438, v439, v440);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v922, v441);
      OUTLINED_FUNCTION_4_4(&v948);
      v442 = OUTLINED_FUNCTION_183_5();
      v443(v442);
    }

    else
    {

      outlined destroy of IntentApplication?(v424, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v922, v444);
      OUTLINED_FUNCTION_4_4(&v948);
      v445 = OUTLINED_FUNCTION_183_5();
      v446(v445);
      v447 = *(v303 + 32);
      v448 = OUTLINED_FUNCTION_48_12(&v925);
      (v447)(v448, v430, v345);
      v449 = *(v23 + 20);
      OUTLINED_FUNCTION_47_11();
      v447();
    }

    OUTLINED_FUNCTION_136_10();
    *(v429 + v450) = v412;
    *(v429 + *(v23 + 36)) = v412;
    v334 = v429;
    goto LABEL_153;
  }

  static UTType.message.getter();
  v338 = CSSearchableItem.isContentType(_:)();
  v301(v221, v302);
  v339 = v942;
  if (v338)
  {
    v340 = [v28 uniqueIdentifier];
    v931 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v342 = v341;

    v343 = v28;
    v344 = v339;
    if ([v339 attributeForKey_])
    {
      OUTLINED_FUNCTION_168_5();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_44_21();
    }

    OUTLINED_FUNCTION_16_31();
    if (v405)
    {
      OUTLINED_FUNCTION_49_18();
      OUTLINED_FUNCTION_222_3();
      OUTLINED_FUNCTION_131_7();
      if (v406)
      {
        v407 = 0;
      }

      v930 = v407;
      if (v406)
      {
        v409 = 0;
      }

      else
      {
        v409 = v408;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(&v946, &_sypSgMd, &_sypSgMR);
      v930 = 0;
      v409 = 0;
    }

    if ([v339 attributeForKey_])
    {
      OUTLINED_FUNCTION_168_5();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_44_21();
    }

    OUTLINED_FUNCTION_16_31();
    if (v451)
    {
      OUTLINED_FUNCTION_49_18();
      OUTLINED_FUNCTION_222_3();
      OUTLINED_FUNCTION_131_7();
      if (v452)
      {
        v453 = 0;
      }

      v929 = v453;
      if (v452)
      {
        v455 = 0;
      }

      else
      {
        v455 = v454;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(&v946, &_sypSgMd, &_sypSgMR);
      v929 = 0;
      v455 = 0;
    }

    v928[1] = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v339, &selRef_displayName);
    v927 = v456;
    v926 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v339, &selRef_contentSnippet);
    v925 = v457;
    v458 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v339, &selRef_authorNames);
    v459 = MEMORY[0x277D84F90];
    if (v458)
    {
      v459 = v458;
    }

    v934 = v459;
    if ([v339 attributeForKey_])
    {
      OUTLINED_FUNCTION_168_5();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_44_21();
    }

    OUTLINED_FUNCTION_16_31();
    if (v460)
    {
      OUTLINED_FUNCTION_49_18();
      v461 = OUTLINED_FUNCTION_222_3();
      v462 = v944;
      if (!v461)
      {
        v462 = 2;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(&v946, &_sypSgMd, &_sypSgMR);
      v462 = 2;
    }

    LODWORD(v933) = v462;
    v463 = v914;
    v464 = v918;
    v465 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v344, &selRef_recipientNames);
    v466 = MEMORY[0x277D84F90];
    if (v465)
    {
      v466 = v465;
    }

    v924 = v466;
    v467 = [v344 contentCreationDate];
    if (v467)
    {
      v468 = v467;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v469 = 0;
    }

    else
    {
      v469 = 1;
    }

    v470 = type metadata accessor for Date();
    v471 = 1;
    __swift_storeEnumTagSinglePayload(v463, v469, 1, v470);
    v472 = [v344 URL];
    if (v472)
    {
      v473 = v472;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v471 = 0;
    }

    v474 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v464, v471, 1, v474);
    v475 = type metadata accessor for DataDetectorResults();
    OUTLINED_FUNCTION_10_24(v919, v476, v477, v475);
    v478 = type metadata accessor for PartialExtractedAttributes();
    OUTLINED_FUNCTION_10_24(v915[1], v479, v480, v478);
    type metadata accessor for FeatureFlagService();
    v923 = swift_allocObject();
    v481 = one-time initialization token for search;
    v482 = v343;

    if (v481 != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v932 = v342;
    v483 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v483, static Logging.search);
    v484 = Logger.logObject.getter();
    v485 = static os_log_type_t.info.getter();
    v486 = os_log_type_enabled(v484, v485);
    v935 = v455;
    if (v486)
    {
      v455 = OUTLINED_FUNCTION_172();
      *v455 = 0;
      _os_log_impl(&dword_25D85C000, v484, v485, "MobileSMSDocument: chatParticipants set from both 'from' and 'to' as there's no chatParticipants passed-in", v455, 2u);
      OUTLINED_FUNCTION_13_18();
    }

    v487 = v482;
    v488 = Logger.logObject.getter();
    v489 = static os_log_type_t.info.getter();
    v490 = os_log_type_enabled(v488, v489);
    v943 = v409;
    if (v490)
    {
      OUTLINED_FUNCTION_51_0();
      v491 = v481;
      v492 = OUTLINED_FUNCTION_94_10();
      v946 = v492;
      *v455 = 136315138;
      v493 = [v487 attributeSet];
      CSSearchableItemAttributeSet.keyStrings.getter();
      v495 = v494;

      MEMORY[0x25F89F8A0](v495, MEMORY[0x277D837D0]);

      OUTLINED_FUNCTION_88_10();
      v496 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v455 + 4) = v496;
      OUTLINED_FUNCTION_217_4(&dword_25D85C000, v497, v498, "MobileSMSDocument: parsing attribute keys: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v492);
      v481 = v491;
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_13_18();
    }

    v499 = v487;
    v922 = v481;
    v500 = Logger.logObject.getter();
    v501 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v500, v501))
    {
      OUTLINED_FUNCTION_51_0();
      v502 = OUTLINED_FUNCTION_94_10();
      OUTLINED_FUNCTION_99_10(v502);
      *v455 = 136642819;
      v503 = [v499 attributeSet];
      CSSearchableItemAttributeSet.kvStrings.getter();
      v505 = v504;

      v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
      MEMORY[0x25F89F8A0](v505, v506);

      OUTLINED_FUNCTION_88_10();
      v507 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v455 + 4) = v507;
      OUTLINED_FUNCTION_164_5(&dword_25D85C000, v508, v501, "MobileSMSDocument: parsing attributes: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v489);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_13_18();
    }

    else
    {
    }

    outlined init with copy of EagerResolutionService?();
    outlined init with copy of EagerResolutionService?();
    v946 = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(v934, v933 & 1);

    specialized Array.append<A>(contentsOf:)(v509);
    v921 = v946;
    outlined init with copy of EagerResolutionService?();
    OUTLINED_FUNCTION_48_12(v945);
    OUTLINED_FUNCTION_170_5(&v930);
    v510 = v499;
    v511 = v923;

    OUTLINED_FUNCTION_76_9(&v931);
    PreExtractedCard.init(item:featureFlagService:)(v510, v511, v512);
    v513 = v510;

    PreExtractedContact.init(item:featureFlagService:)(v513, v511, v907[1]);
    v514 = v513;
    PreExtractedSharedLink.init(item:)(v514, v907[2]);
    v515 = v514;

    OUTLINED_FUNCTION_194_5(&v935);
    PreExtractedBreadcrumb.init(item:featureFlagService:)(v515, v511);
    v516 = v916[1];
    MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();
    v934 = v515;

    outlined destroy of IntentApplication?(&v946, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    outlined destroy of IntentApplication?(v919, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined destroy of IntentApplication?(v918, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of IntentApplication?(v914, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v517 = v917;
    v518 = *(v917 + 16);
    v519 = v908;
    v520 = v855[0];
    v518(v908, v516, v855[0]);
    v521 = Logger.logObject.getter();
    v522 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_91_0(v522))
    {
      v523 = swift_slowAlloc();
      v946 = swift_slowAlloc();
      *v523 = 136315395;
      *(v523 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v523 + 12) = 2085;
      v524 = OUTLINED_FUNCTION_64_0();
      (v518)(v524);
      String.init<A>(describing:)();
      v525 = v518;
      v23 = v520;
      v526 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v523 + 14) = v526;

      v943 = *(v917 + 8);
      (v943)(v908, v520);
      _os_log_impl(&dword_25D85C000, v521, v522, "%s Created MobileSMSDocument: %{sensitive}s", v523, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      v527 = v517;
      v525 = v518;
      v23 = v520;
      v943 = *(v527 + 8);
      (v943)(v519, v520);
    }

    v528 = v938;
    OUTLINED_FUNCTION_193_5(v928);
    OUTLINED_FUNCTION_144_9();
    v525();
    OUTLINED_FUNCTION_203_4();
    swift_storeEnumTagMultiPayload();
    v529 = v940;
    v530 = *(v940 + 16);
    v531 = OUTLINED_FUNCTION_75_15();
    v532(v531);
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_103_13(v533, v534, v535, v528);
    v536 = v907[0];
    *(v907[0] + v537) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v536 + *(v23 + 40)));
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    v538 = *(v23 + 24);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    LOBYTE(v28) = lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v539 = v934;
    OUTLINED_FUNCTION_33_13();
    CodableNSSecureCoding.init(wrappedValue:)();
    v540 = v905[2];
    outlined init with copy of EagerResolutionService?();
    OUTLINED_FUNCTION_166(v540, 1, v528);
    if (v368)
    {
      v28 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v541, v542, v543);
      v544 = *(v23 + 20);
      OUTLINED_FUNCTION_8_37();
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_165_4();
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v545, v546, v547);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v520, v548);
      v549 = OUTLINED_FUNCTION_89_15();
      v550(v549);
    }

    else
    {

      outlined destroy of IntentApplication?(v525, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v520, v551);
      v552 = OUTLINED_FUNCTION_89_15();
      v553(v552);
      v554 = *(v529 + 32);
      v555 = OUTLINED_FUNCTION_48_12(&v921);
      v554(v555, v540, v528);
      v556 = OUTLINED_FUNCTION_118_8();
      (v554)(v556);
    }

    goto LABEL_152;
  }

  static UTType.calendarEvent.getter();
  v346 = CSSearchableItem.isContentType(_:)();
  v301(v221, v302);
  v916[0] = v28;
  if ((v346 & 1) == 0)
  {
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v339, &selRef_contentType);
    if (!v364)
    {
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_148_8();
    v368 = v367 == 0xD00000000000001FLL && v365 == v366;
    if (v368)
    {
    }

    else
    {
      OUTLINED_FUNCTION_171_5();
      OUTLINED_FUNCTION_174_5();
      if ((v28 & 1) == 0)
      {
LABEL_45:

        v369 = v926;
        static UTType.contact.getter();
        v370 = v916[0];
        v371 = v916[0];
        v372 = CSSearchableItem.isContentType(_:)();
        v373 = v927;
        v301(v369, v927);
        if (v372)
        {
          v374 = [v371 uniqueIdentifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_67_8();

          v375 = v339;
          outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v339, &selRef_displayName);
          outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v339, &selRef_phoneNumbers);
          v376 = MEMORY[0x277D84F90];
          outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v339, &selRef_emailAddresses);
          outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v339, &selRef_authorAddresses);
          v377 = v891;
          OUTLINED_FUNCTION_88();
          Contact.init(id:name:phoneNumbers:emailAddresses:physicalAddresses:dates:birthday:)();
          OUTLINED_FUNCTION_128_9(&v912);
          v378 = OUTLINED_FUNCTION_105_12();
          v379(v378, v377, v893);
          swift_storeEnumTagMultiPayload();
          v380 = v940;
          v381 = *(v940 + 16);
          v382 = v881[2];
          OUTLINED_FUNCTION_81_17();
          v383 = v938;
          v384();
          OUTLINED_FUNCTION_26_21();
          __swift_storeEnumTagSinglePayload(v385, v386, v387, v388);
          v389 = v941;
          v390 = v882;
          *(v882 + v941[7]) = v376;
          OUTLINED_FUNCTION_2_51((v390 + v389[10]));
          OUTLINED_FUNCTION_34_11();
          _s10OmniSearch0B10ResultItemOWOcTm_3();
          v391 = v389[6];
          type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
          lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
          OUTLINED_FUNCTION_71_16();
          OUTLINED_FUNCTION_33_13();
          CodableNSSecureCoding.init(wrappedValue:)();
          OUTLINED_FUNCTION_170_5(v905);
          OUTLINED_FUNCTION_28_16(v391);
          if (v368)
          {
            v370 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v392, v393, v394);
            v395 = v389[5];
            OUTLINED_FUNCTION_3_49();
            OUTLINED_FUNCTION_19_18();

            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v396, v397, v398);
            OUTLINED_FUNCTION_3_35();
            _s10OmniSearch0B10ResultItemOWOhTm_8(v301, v399);
            OUTLINED_FUNCTION_4_4(&v912);
            v400 = OUTLINED_FUNCTION_185_4();
            v401(v400);
          }

          else
          {

            outlined destroy of IntentApplication?(v382, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_3_35();
            _s10OmniSearch0B10ResultItemOWOhTm_8(v301, v660);
            OUTLINED_FUNCTION_4_4(&v912);
            v661 = OUTLINED_FUNCTION_185_4();
            v662(v661);
            v663 = *(v380 + 32);
            v664 = OUTLINED_FUNCTION_48_12(&v898);
            v663(v664, v391, v383);
            v663(v390 + v389[5], v370, v383);
          }

          v23 = v389;
LABEL_157:
          OUTLINED_FUNCTION_136_10();
          *(v390 + v665) = v370;
          *(v390 + *(v23 + 36)) = v370;
          v334 = v390;
          goto LABEL_153;
        }

        static UTType.toDoItem.getter();
        v598 = CSSearchableItem.isContentType(_:)();
        v301(v369, v373);
        v599 = v940;
        if (v598)
        {
          v600 = [v371 uniqueIdentifier];
          v939 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v943 = v601;

          v602 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v339, &selRef_title);
          v934 = v603;
          v935 = v602;
          v604 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v339, &selRef_comment);
          if ([v339 attributeForKey_])
          {
            OUTLINED_FUNCTION_173_5();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          v675 = v875;
          v676 = v874;
          OUTLINED_FUNCTION_16_31();
          if (v677)
          {
            v678 = type metadata accessor for Date();
            v679 = swift_dynamicCast();
            __swift_storeEnumTagSinglePayload(v676, v679 ^ 1u, 1, v678);
            OUTLINED_FUNCTION_28_16(v676);
            if (!v368)
            {
              OUTLINED_FUNCTION_51(v678);
              v681 = *(v680 + 32);
              v682 = OUTLINED_FUNCTION_72_2();
              v683(v682);
              OUTLINED_FUNCTION_26_21();
              __swift_storeEnumTagSinglePayload(v684, v685, v686, v687);
              goto LABEL_181;
            }
          }

          else
          {
            outlined destroy of IntentApplication?(&v946, &_sypSgMd, &_sypSgMR);
            v678 = type metadata accessor for Date();
            OUTLINED_FUNCTION_92();
            __swift_storeEnumTagSinglePayload(v688, v689, v690, v678);
          }

          type metadata accessor for Date();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v691, v692, v693, v678);
          OUTLINED_FUNCTION_28_16(v676);
          if (!v368)
          {
            outlined destroy of IntentApplication?(v676, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }

LABEL_181:
          if ([v339 attributeForKey_])
          {
            OUTLINED_FUNCTION_173_5();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          OUTLINED_FUNCTION_16_31();
          if (v694)
          {
            v695 = type metadata accessor for Date();
            v696 = swift_dynamicCast();
            __swift_storeEnumTagSinglePayload(v675, v696 ^ 1u, 1, v695);
            OUTLINED_FUNCTION_28_16(v675);
            if (!v368)
            {
              OUTLINED_FUNCTION_51(v695);
              v698 = *(v697 + 32);
              v699 = OUTLINED_FUNCTION_32_0();
              v700(v699);
              OUTLINED_FUNCTION_26_21();
              __swift_storeEnumTagSinglePayload(v701, v702, v703, v704);
              goto LABEL_190;
            }
          }

          else
          {
            outlined destroy of IntentApplication?(&v946, &_sypSgMd, &_sypSgMR);
            v695 = type metadata accessor for Date();
            OUTLINED_FUNCTION_92();
            __swift_storeEnumTagSinglePayload(v705, v706, v707, v695);
          }

          type metadata accessor for Date();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v708, v709, v710, v695);
          OUTLINED_FUNCTION_28_16(v675);
          if (!v368)
          {
            outlined destroy of IntentApplication?(v675, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }

LABEL_190:
          if ([v339 attributeForKey_])
          {
            OUTLINED_FUNCTION_173_5();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          OUTLINED_FUNCTION_16_31();
          if (v711)
          {
            OUTLINED_FUNCTION_49_18();
            swift_dynamicCast();
          }

          else
          {
            outlined destroy of IntentApplication?(&v946, &_sypSgMd, &_sypSgMR);
          }

          if ([v339 attributeForKey_])
          {
            OUTLINED_FUNCTION_173_5();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          OUTLINED_FUNCTION_16_31();
          if (v712)
          {
            OUTLINED_FUNCTION_49_18();
            if (swift_dynamicCast())
            {
              v23 = v944;
              v713 = v945[0];
              goto LABEL_204;
            }
          }

          else
          {
            outlined destroy of IntentApplication?(&v946, &_sypSgMd, &_sypSgMR);
          }

          v23 = 0;
          v713 = 0;
LABEL_204:
          if ([v942 attributeForKey_])
          {
            OUTLINED_FUNCTION_173_5();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          v714 = v878;
          OUTLINED_FUNCTION_16_31();
          if (v715)
          {
            OUTLINED_FUNCTION_49_18();
            if (OUTLINED_FUNCTION_222_3())
            {
              v370 = v944;
              v716 = v945[0];
LABEL_212:
              v717 = [v942 URL];
              if (v717)
              {
                v718 = v717;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();
              }

              v719 = type metadata accessor for URL();
              OUTLINED_FUNCTION_225_4(v714, v720, v721, v719);
              OUTLINED_FUNCTION_104_10(&v906);
              Reminder.init(id:title:note:creationDate:dueDate:dueDateIsAllDay:namedLocation:physicalAddress:url:)();
              OUTLINED_FUNCTION_42_19(&v903);
              v722 = v876;
              v723(v876, v713, v886);
              OUTLINED_FUNCTION_203_4();
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_124_13();
              OUTLINED_FUNCTION_105_12();
              OUTLINED_FUNCTION_81_17();
              v724 = v938;
              v725();
              OUTLINED_FUNCTION_44_0();
              OUTLINED_FUNCTION_103_13(v726, v727, v728, v724);
              v390 = v877;
              *(v877 + v729) = MEMORY[0x277D84F90];
              OUTLINED_FUNCTION_2_51((v390 + *(v23 + 40)));
              _s10OmniSearch0B10ResultItemOWOcTm_3();
              v730 = *(v23 + 24);
              type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
              lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
              OUTLINED_FUNCTION_71_16();
              OUTLINED_FUNCTION_33_13();
              CodableNSSecureCoding.init(wrappedValue:)();
              OUTLINED_FUNCTION_107_8(v902);
              outlined init with copy of EagerResolutionService?();
              v731 = OUTLINED_FUNCTION_202_5();
              OUTLINED_FUNCTION_166(v731, v732, v724);
              if (v368)
              {
                v370 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
                OUTLINED_FUNCTION_33_13();
                outlined destroy of IntentApplication?(v733, v734, v735);
                v736 = *(v23 + 20);
                OUTLINED_FUNCTION_3_49();
                OUTLINED_FUNCTION_19_18();
                OUTLINED_FUNCTION_165_4();
                OUTLINED_FUNCTION_33_13();
                outlined destroy of IntentApplication?(v737, v738, v739);
                OUTLINED_FUNCTION_3_35();
                _s10OmniSearch0B10ResultItemOWOhTm_8(v722, v740);
                v741 = OUTLINED_FUNCTION_127_13();
                v742(v741);
              }

              else
              {

                outlined destroy of IntentApplication?(v716, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
                OUTLINED_FUNCTION_3_35();
                _s10OmniSearch0B10ResultItemOWOhTm_8(v722, v743);
                v744 = OUTLINED_FUNCTION_127_13();
                v745(v744);
                v746 = *(v604 + 32);
                v747 = OUTLINED_FUNCTION_48_12(&v893);
                v746(v747, v730, v724);
                v746(v390 + *(v23 + 20), v370, v724);
              }

              goto LABEL_157;
            }
          }

          else
          {
            outlined destroy of IntentApplication?(&v946, &_sypSgMd, &_sypSgMR);
          }

          v370 = 0;
          v716 = 0;
          goto LABEL_212;
        }

        v666 = v339;
        v667 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v339, &selRef_contentType);
        if (!v668)
        {
          goto LABEL_164;
        }

        if (v667 == 0xD00000000000001BLL && v668 == 0x800000025DBF6E60)
        {
        }

        else
        {
          OUTLINED_FUNCTION_171_5();
          OUTLINED_FUNCTION_174_5();
          if ((v371 & 1) == 0)
          {
LABEL_164:
            outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v339, &selRef_contentType);
            if (!v670)
            {
LABEL_170:

LABEL_173:
              v23 = v941;
              goto LABEL_155;
            }

            OUTLINED_FUNCTION_148_8();
            if (v673 == 0xD000000000000016 && v671 == v672)
            {
            }

            else
            {
              OUTLINED_FUNCTION_171_5();
              OUTLINED_FUNCTION_174_5();
              if ((v371 & 1) == 0)
              {
                goto LABEL_170;
              }
            }

            v801 = OUTLINED_FUNCTION_162_7();
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v943 = v802;

            v803 = v942;
            v939 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v942, &selRef_authorNames);
            v935 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v803, &selRef_recipientNames);
            v934 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v803, &selRef_participants);
            v804 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v803, &selRef_phoneNumbers);
            OUTLINED_FUNCTION_137_4(v804);
            v805 = MEMORY[0x25F89F4C0](0xD000000000000029, 0x800000025DBF6D30);
            v806 = [v803 attributeForKey_];

            if (v806)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              OUTLINED_FUNCTION_44_21();
            }

            v807 = v868;
            v808 = v867;
            OUTLINED_FUNCTION_16_31();
            if (v809)
            {
              OUTLINED_FUNCTION_49_18();
              swift_dynamicCast();
              OUTLINED_FUNCTION_131_7();
              if (v368)
              {
                v811 = 0;
              }

              else
              {
                v811 = v810;
              }
            }

            else
            {
              outlined destroy of IntentApplication?(&v946, &_sypSgMd, &_sypSgMR);
              v811 = 0;
            }

            v812 = [v942 contentCreationDate];
            if (v812)
            {
              v813 = v812;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v814 = 0;
            }

            else
            {
              v814 = 1;
            }

            v815 = type metadata accessor for Date();
            __swift_storeEnumTagSinglePayload(v807, v814, 1, v815);
            v816 = MEMORY[0x25F89F4C0](0xD00000000000001ELL, 0x800000025DBF6D60);
            v817 = [v942 attributeForKey_];

            if (v817)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              OUTLINED_FUNCTION_44_21();
            }

            OUTLINED_FUNCTION_16_31();
            if (v818)
            {
              OUTLINED_FUNCTION_49_18();
              OUTLINED_FUNCTION_25_23();
              OUTLINED_FUNCTION_131_7();
              if (v819)
              {
                v23 = 0;
              }

              else
              {
                v23 = v820;
              }

              if (v819)
              {
                v759 = 0;
              }

              else
              {
                v759 = v821;
              }
            }

            else
            {
              outlined destroy of IntentApplication?(&v946, &_sypSgMd, &_sypSgMR);
              v23 = 0;
              v759 = 0;
            }

            if ([v942 attributeForKey_])
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              OUTLINED_FUNCTION_44_21();
            }

            v822 = v857;
            OUTLINED_FUNCTION_16_31();
            if (v823)
            {
              OUTLINED_FUNCTION_49_18();
              OUTLINED_FUNCTION_25_23();
              OUTLINED_FUNCTION_131_7();
            }

            else
            {
              outlined destroy of IntentApplication?(&v946, &_sypSgMd, &_sypSgMR);
            }

            v824 = [v942 URL];
            if (v824)
            {
              v825 = v824;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v826 = 0;
            }

            else
            {
              v826 = 1;
            }

            v827 = type metadata accessor for URL();
            __swift_storeEnumTagSinglePayload(v822, v826, 1, v827);
            OUTLINED_FUNCTION_180_5(&v891);
            OUTLINED_FUNCTION_194_5(&v883);
            PhoneHistory.init(id:authors:recipients:participants:phoneNumbers:callStatus:callDate:callType:description:url:)();
            OUTLINED_FUNCTION_42_19(&v884);
            v828(v808, v826, v869);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_124_13();
            v829 = OUTLINED_FUNCTION_75_15();
            v830 = v938;
            v831(v829);
            OUTLINED_FUNCTION_44_0();
            OUTLINED_FUNCTION_103_13(v832, v833, v834, v830);
            v781 = v856;
            *(v856 + v835) = MEMORY[0x277D84F90];
            OUTLINED_FUNCTION_2_51((v781 + *(v23 + 40)));
            _s10OmniSearch0B10ResultItemOWOcTm_3();
            v836 = *(v23 + 24);
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
            lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
            OUTLINED_FUNCTION_71_16();
            OUTLINED_FUNCTION_33_13();
            CodableNSSecureCoding.init(wrappedValue:)();
            OUTLINED_FUNCTION_107_8(v881);
            outlined init with copy of EagerResolutionService?();
            v837 = OUTLINED_FUNCTION_202_5();
            OUTLINED_FUNCTION_166(v837, v838, v830);
            if (v368)
            {
              v759 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
              OUTLINED_FUNCTION_33_13();
              outlined destroy of IntentApplication?(v839, v840, v841);
              v842 = *(v23 + 20);
              OUTLINED_FUNCTION_3_49();
              OUTLINED_FUNCTION_19_18();
              OUTLINED_FUNCTION_165_4();
              OUTLINED_FUNCTION_33_13();
              outlined destroy of IntentApplication?(v843, v844, v845);
              OUTLINED_FUNCTION_3_35();
              _s10OmniSearch0B10ResultItemOWOhTm_8(v867, v846);
              v847 = OUTLINED_FUNCTION_176_6();
              v848(v847, v869);
            }

            else
            {

              outlined destroy of IntentApplication?(v822, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
              OUTLINED_FUNCTION_3_35();
              _s10OmniSearch0B10ResultItemOWOhTm_8(v867, v849);
              v850 = OUTLINED_FUNCTION_176_6();
              v851(v850, v869);
              v852 = *(v811 + 32);
              v853 = OUTLINED_FUNCTION_48_12(&v879);
              v852(v853, v836, v830);
              v852(v781 + *(v23 + 20), v759, v830);
            }

LABEL_270:
            OUTLINED_FUNCTION_136_10();
            *(v781 + v854) = v759;
            *(v781 + *(v23 + 36)) = v759;
            v334 = v781;
            goto LABEL_153;
          }
        }

        v748 = v599;
        v749 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v339, &selRef_contentSnippet);
        v751 = v749;
        if (v750)
        {
          v946 = v749;
          v947 = v750;
          OUTLINED_FUNCTION_104_10(&v885);
          static CharacterSet.punctuationCharacters.getter();
          lazy protocol witness table accessor for type String and conformance String();
          v752 = StringProtocol.components(separatedBy:)();
          OUTLINED_FUNCTION_4_4(&v886);
          v753(v751, v862);

          specialized Collection.first.getter(v752);
          v943 = v754;
        }

        else
        {
          v943 = 0;
        }

        v755 = v871;
        v756 = OUTLINED_FUNCTION_162_7();
        v939 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        v757 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v339, &selRef_phoneNumbers);
        if (v757)
        {
          specialized Collection.first.getter(v757);
          LOBYTE(v759) = v758;
        }

        else
        {
          LOBYTE(v759) = 0;
        }

        v760 = [v339 contentCreationDate];
        if (v760)
        {
          v761 = v760;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v762 = 0;
        }

        else
        {
          v762 = 1;
        }

        v763 = type metadata accessor for Date();
        __swift_storeEnumTagSinglePayload(v755, v762, 1, v763);
        v764 = [v666 URL];
        if (v764)
        {
          v765 = v764;
          v766 = v865;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v767 = v870;
        }

        else
        {
          v767 = v870;
          v766 = v865;
        }

        v768 = type metadata accessor for URL();
        OUTLINED_FUNCTION_225_4(v766, v769, v770, v768);
        v771 = v872;
        VoicemailTranscript.init(id:displayTitle:phoneNumber:date:url:)();
        OUTLINED_FUNCTION_192_7(&v890);
        (*(v772 + 16))(v767, v771, v873);
        swift_storeEnumTagMultiPayload();
        v773 = *(v748 + 16);
        v774 = v863;
        OUTLINED_FUNCTION_81_17();
        v775 = v938;
        v776();
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v777, v778, v779, v775);
        v780 = v941;
        v781 = v864;
        *(v864 + v941[7]) = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_2_51((v781 + v780[10]));
        OUTLINED_FUNCTION_32_0();
        _s10OmniSearch0B10ResultItemOWOcTm_3();
        v782 = v780[6];
        type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
        OUTLINED_FUNCTION_71_16();
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_170_5(&v888);
        v783 = OUTLINED_FUNCTION_159_2();
        OUTLINED_FUNCTION_166(v783, v784, v775);
        if (v368)
        {
          v759 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
          OUTLINED_FUNCTION_33_13();
          outlined destroy of IntentApplication?(v785, v786, v787);
          v788 = v780[5];
          OUTLINED_FUNCTION_3_49();
          OUTLINED_FUNCTION_19_18();

          OUTLINED_FUNCTION_33_13();
          outlined destroy of IntentApplication?(v789, v790, v791);
          OUTLINED_FUNCTION_3_35();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v870, v792);
          v793 = OUTLINED_FUNCTION_139_8();
          v794(v793);
        }

        else
        {

          outlined destroy of IntentApplication?(v774, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_3_35();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v870, v795);
          v796 = OUTLINED_FUNCTION_139_8();
          v797(v796);
          v798 = *(v748 + 32);
          v799 = OUTLINED_FUNCTION_48_12(&v880);
          (v798)(v799, v774, v775);
          v800 = v780[5];
          OUTLINED_FUNCTION_117_8();
          v798();
        }

        v23 = v780;
        goto LABEL_270;
      }
    }

    if ([v339 attributeForKey_])
    {
      OUTLINED_FUNCTION_168_5();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_44_21();
    }

    OUTLINED_FUNCTION_16_31();
    if (v605)
    {
      OUTLINED_FUNCTION_49_18();
      if (OUTLINED_FUNCTION_25_23())
      {
        v607 = v944;
        v606 = v945[0];
        OUTLINED_FUNCTION_148_8();
        v609 = v607 == 0xD000000000000010 && v608 == v606;
        if (v609 || (OUTLINED_FUNCTION_119(), (OUTLINED_FUNCTION_169_7() & 1) != 0))
        {

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v610 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v610, static Logging.search);
          v611 = Logger.logObject.getter();
          v612 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_91_0(v612))
          {
            OUTLINED_FUNCTION_51_0();
            v613 = OUTLINED_FUNCTION_10_23();
            v946 = v613;
            *v607 = 136315138;
            *(v607 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            OUTLINED_FUNCTION_110_12(&dword_25D85C000, v614, v612, "Dropping recently deleted folder from %s.");
            __swift_destroy_boxed_opaque_existential_1Tm(v613);
            OUTLINED_FUNCTION_13_18();
            OUTLINED_FUNCTION_2_8();
          }

          else
          {
          }

          goto LABEL_173;
        }

        v943 = v606;

LABEL_133:
        v939 = v607;
        if (one-time initialization token for keyAttributeAppEntityTitle != -1)
        {
          OUTLINED_FUNCTION_27_22();
        }

        v615 = MEMORY[0x25F89F4C0](static LocalIndexClient.keyAttributeAppEntityTitle, *algn_27FCAFD18);
        v616 = [v339 attributeForKey_];

        if (v616)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          OUTLINED_FUNCTION_44_21();
        }

        OUTLINED_FUNCTION_16_31();
        if (v617)
        {
          OUTLINED_FUNCTION_49_18();
          if (swift_dynamicCast())
          {
            v934 = v945[0];
            v935 = v944;
LABEL_143:
            v620 = OUTLINED_FUNCTION_162_7();
            v621 = static String._unconditionallyBridgeFromObjectiveC(_:)();

            outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v339, &selRef_contentSnippet);
            v622 = [v339 contentCreationDate];
            if (v622)
            {
              v28 = v622;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              LOBYTE(v28) = 0;
            }

            else
            {
              LOBYTE(v28) = 1;
            }

            type metadata accessor for Date();
            v23 = 1;
            OUTLINED_FUNCTION_61_19();
            __swift_storeEnumTagSinglePayload(v623, v624, v625, v626);
            v627 = [v942 lastUsedDate];
            v628 = v894;
            if (v627)
            {
              v28 = v627;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v23 = 0;
            }

            OUTLINED_FUNCTION_61_19();
            __swift_storeEnumTagSinglePayload(v629, v630, v631, v632);
            OUTLINED_FUNCTION_180_5(&v922);
            OUTLINED_FUNCTION_194_5(&v909);
            OUTLINED_FUNCTION_64_0();
            NoteDocument.init(id:title:contentSnippet:folderName:creationDate:lastUsedDate:)();
            OUTLINED_FUNCTION_42_19(&v910);
            v633(v628, v303, v895);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_124_13();
            v634 = OUTLINED_FUNCTION_75_15();
            v635 = v938;
            v636(v634);
            OUTLINED_FUNCTION_44_0();
            OUTLINED_FUNCTION_103_13(v637, v638, v639, v635);
            v536 = v889;
            *(v889 + v640) = MEMORY[0x277D84F90];
            OUTLINED_FUNCTION_2_51((v536 + *(v23 + 40)));
            _s10OmniSearch0B10ResultItemOWOcTm_3();
            v641 = *(v23 + 24);
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
            lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
            OUTLINED_FUNCTION_71_16();
            OUTLINED_FUNCTION_33_13();
            CodableNSSecureCoding.init(wrappedValue:)();
            v642 = v887;
            outlined init with copy of EagerResolutionService?();
            OUTLINED_FUNCTION_166(v642, 1, v635);
            if (!v368)
            {

              outlined destroy of IntentApplication?(v628, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
              OUTLINED_FUNCTION_3_35();
              _s10OmniSearch0B10ResultItemOWOhTm_8(v894, v651);
              v652 = OUTLINED_FUNCTION_176_6();
              v653(v652, v895);
              v654 = *(v621 + 32);
              OUTLINED_FUNCTION_48_12(&v904);
              OUTLINED_FUNCTION_196_5();
              v654();
              v655 = OUTLINED_FUNCTION_118_8();
              (v654)(v655);
              goto LABEL_152;
            }

            v28 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v643, v644, v645);
            v646 = *(v23 + 20);
            OUTLINED_FUNCTION_3_49();
            OUTLINED_FUNCTION_19_18();
            OUTLINED_FUNCTION_165_4();
            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v647, v648, v649);
            OUTLINED_FUNCTION_3_35();
            _s10OmniSearch0B10ResultItemOWOhTm_8(v894, v650);
            v588 = OUTLINED_FUNCTION_176_6();
            v590 = v915;
LABEL_151:
            v589(v588, *(v590 - 32));
            goto LABEL_152;
          }
        }

        else
        {
          outlined destroy of IntentApplication?(&v946, &_sypSgMd, &_sypSgMR);
        }

        v618 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v339, &selRef_title);
        v934 = v619;
        v935 = v618;
        goto LABEL_143;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(&v946, &_sypSgMd, &_sypSgMR);
    }

    v607 = 0;
    v943 = 0;
    goto LABEL_133;
  }

  v347 = v339;
  v348 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v339, &selRef_authorNames);
  v349 = MEMORY[0x277D84F90];
  if (v348)
  {
    v350 = v348;
  }

  else
  {
    v350 = MEMORY[0x277D84F90];
  }

  v351 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v339, &selRef_recipientNames);
  if (v351)
  {
    v349 = v351;
  }

  v352 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v350);
  v353 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v349);
  v354 = [v28 uniqueIdentifier];
  v943 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v939 = v355;

  v356 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v347, &selRef_title);
  v934 = v357;
  v935 = v356;
  v358 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v347, &selRef_contentDescription);
  OUTLINED_FUNCTION_137_4(v358);
  v932 = v359;
  v360 = [v347 startDate];
  if (v360)
  {
    v361 = v360;
    OUTLINED_FUNCTION_76_9(&v924);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v362 = 0;
    v363 = v900;
  }

  else
  {
    v362 = 1;
    v363 = v900;
    v250 = v903;
  }

  v557 = type metadata accessor for Date();
  v558 = 1;
  __swift_storeEnumTagSinglePayload(v250, v362, 1, v557);
  v559 = [v942 endDate];
  if (v559)
  {
    v560 = v559;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v558 = 0;
  }

  __swift_storeEnumTagSinglePayload(v363, v558, 1, v557);
  v561 = v942;
  v562 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v942, &selRef_namedLocation);
  v23 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v352);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v353);
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v561, &selRef_comment);
  OUTLINED_FUNCTION_114_7();
  CSSearchableItem.associatedAppEntityId.getter();
  type metadata accessor for DataDetectorResults();
  OUTLINED_FUNCTION_48_12(&v937);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v563, v564, v565, v566);
  OUTLINED_FUNCTION_104_10(&v926);
  CalendarEvent.init(id:title:contentDescription:startDate:endDate:locationName:organizerNames:participantNames:notes:itemAppEntityInstanceId:dataDetectorResults:)();
  OUTLINED_FUNCTION_42_19(&v919);
  v567 = v896;
  v568(v896, v562, v905[0]);
  OUTLINED_FUNCTION_203_4();
  swift_storeEnumTagMultiPayload();
  v569 = v940;
  v570 = *(v940 + 16);
  OUTLINED_FUNCTION_105_12();
  OUTLINED_FUNCTION_81_17();
  v571 = v938;
  v572();
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_103_13(v573, v574, v575, v571);
  v536 = v899;
  *(v899 + v576) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_51((v536 + *(v23 + 40)));
  _s10OmniSearch0B10ResultItemOWOcTm_3();
  v577 = *(v23 + 24);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  OUTLINED_FUNCTION_71_16();
  OUTLINED_FUNCTION_33_13();
  CodableNSSecureCoding.init(wrappedValue:)();
  OUTLINED_FUNCTION_170_5(v916);
  v578 = OUTLINED_FUNCTION_159_2();
  OUTLINED_FUNCTION_166(v578, v579, v571);
  if (v368)
  {
    v28 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v580, v581, v582);
    v583 = *(v23 + 20);
    OUTLINED_FUNCTION_3_49();
    OUTLINED_FUNCTION_19_18();
    OUTLINED_FUNCTION_165_4();
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v584, v585, v586);
    OUTLINED_FUNCTION_3_35();
    _s10OmniSearch0B10ResultItemOWOhTm_8(v567, v587);
    v588 = OUTLINED_FUNCTION_177_6();
    goto LABEL_151;
  }

  outlined destroy of IntentApplication?(v349, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_3_35();
  _s10OmniSearch0B10ResultItemOWOhTm_8(v567, v591);
  v592 = OUTLINED_FUNCTION_177_6();
  v594(v592, *(v593 - 256));
  v595 = *(v569 + 32);
  v596 = OUTLINED_FUNCTION_48_12(v911);
  v595(v596, v577, v571);
  v597 = OUTLINED_FUNCTION_118_8();
  (v595)(v597);
LABEL_152:
  OUTLINED_FUNCTION_136_10();
  *(v536 + v656) = v28;
  *(v536 + *(v23 + 36)) = v28;
  v334 = v536;
LABEL_153:
  v332 = v937;
LABEL_154:
  outlined init with take of SearchResult(v334, v332);
LABEL_155:
  v657 = OUTLINED_FUNCTION_102_9();
  __swift_storeEnumTagSinglePayload(v657, v658, v659, v23);
  OUTLINED_FUNCTION_148();
}

uint64_t static LocalIndexClient.handleSelectFirstPartyItems(_:spotlightRankingItem:eventSourceItemsMap:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v378 = a4;
  v379 = a3;
  v381 = a1;
  v6 = type metadata accessor for FileDocument();
  v7 = OUTLINED_FUNCTION_1_5(v6, &v377);
  v355 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v16);
  v17 = type metadata accessor for VoiceMemo();
  v18 = OUTLINED_FUNCTION_1_5(v17, &v385);
  v361 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v22);
  v23 = type metadata accessor for Safari();
  v24 = OUTLINED_FUNCTION_1_5(v23, &v393);
  v367 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v28);
  v377 = type metadata accessor for SpotlightRankingItem();
  v29 = OUTLINED_FUNCTION_14(v377);
  v374 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_14_2();
  v38 = OUTLINED_FUNCTION_28_2(v37);
  v373 = type metadata accessor for SearchResultItem(v38);
  v39 = OUTLINED_FUNCTION_17(v373);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v48 = OUTLINED_FUNCTION_114(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v54);
  v55 = type metadata accessor for JournalEntry();
  v56 = OUTLINED_FUNCTION_1_5(v55, &v397);
  v372[0] = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v60);
  v61 = type metadata accessor for CharacterSet();
  v62 = OUTLINED_FUNCTION_14(v61);
  v368 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_36();
  v68 = v67 - v66;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v70 = OUTLINED_FUNCTION_114(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_109();
  v75 = v73 - v74;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v85);
  v87 = &v345 - v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v88);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v91);
  v93 = &v345 - v92;
  v380 = type metadata accessor for SearchResult(0);
  v94 = OUTLINED_FUNCTION_17(v380);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_109();
  v99 = v97 - v98;
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_78_16();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_7_4();
  v376 = v104;
  OUTLINED_FUNCTION_174();
  *&v106 = MEMORY[0x28223BE20](v105).n128_u64[0];
  v108 = &v345 - v107;
  v382 = [a2 attributeSet];
  v383 = a2;
  v109 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(a2);
  if (v110)
  {
    v111 = v109;
  }

  else
  {
    v111 = 0;
  }

  if (v110)
  {
    v112 = v110;
  }

  else
  {
    v112 = 0xE000000000000000;
  }

  v113 = v111 == 0xD00000000000001ALL && 0x800000025DBEE6C0 == v112;
  if (v113 || (OUTLINED_FUNCTION_69_14() & 1) != 0)
  {

    preExtractedSearchResult(from:spotlightRankingItem:eventSourceItemsMap:)(v383, v379, v378, v114, v115, v116, v117, v118, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356);

    v119 = v380;
    OUTLINED_FUNCTION_166(v93, 1, v380);
    if (!v113)
    {
      outlined init with take of SearchResult(v93, v108);
      outlined init with take of SearchResult(v108, v381);
      v123 = 1;
LABEL_16:
      OUTLINED_FUNCTION_44_0();
      v127 = v119;
LABEL_17:
      __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
      return v123;
    }

    outlined destroy of IntentApplication?(v93, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    goto LABEL_15;
  }

  v128 = 0xD000000000000011;
  v129 = v111 == 0xD000000000000012 && 0x800000025DBF1E30 == v112;
  if (v129 || (OUTLINED_FUNCTION_69_14() & 1) != 0)
  {

    v123 = 1;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v377);
    static LocalIndexClient.walletDocument(from:spotlightRankingItem:)(v383, v87, v133, v134, v135, v136, v137, v138, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356);

    outlined destroy of IntentApplication?(v87, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    return v123;
  }

  v140 = v111 == 0xD000000000000011 && 0x800000025DBF1D90 == v112;
  v141 = v382;
  if (v140 || (OUTLINED_FUNCTION_69_14() & 1) != 0)
  {

    if ([v141 attributeForKey_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v385 = 0u;
      v386 = 0u;
    }

    v142 = v376;
    v387 = v385;
    v388 = v386;
    if (*(&v386 + 1))
    {
      if (OUTLINED_FUNCTION_25_23())
      {
        v143 = v384;
        v387 = v384;

        static CharacterSet.punctuationCharacters.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v144 = StringProtocol.components(separatedBy:)();
        OUTLINED_FUNCTION_4_4(v389);
        v145(v68, v61);

        if (v144[2])
        {
          v146 = v144[4];
          v147 = v144[5];
        }

        goto LABEL_40;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(&v387, &_sypSgMd, &_sypSgMR);
    }

    v143 = 0;
LABEL_40:
    v148 = v377;
    v149 = [v383 uniqueIdentifier];
    v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v151 = [v141 URL];
    if (v151)
    {
      v152 = v151;
      v153 = v371;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v154 = 0;
    }

    else
    {
      v154 = 1;
      v153 = v371;
    }

    v155 = type metadata accessor for URL();
    OUTLINED_FUNCTION_225_4(v153, v156, v157, v155);
    OUTLINED_FUNCTION_192_7(&v396);
    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_50_9();
    JournalEntry.init(id:displayTitle:text:url:)();
    v158 = *(v372[0] + 16);
    v159 = v372[1];
    v160 = OUTLINED_FUNCTION_63_0();
    v161(v160);
    OUTLINED_FUNCTION_140_8();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_76_9(&v395);
    v163 = *(v162 + 16);
    v164 = OUTLINED_FUNCTION_105_12();
    v165(v164, v379, v148);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v166, v167, v168, v148);
    v169 = v380;
    *(v142 + v380[7]) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v142 + v169[10]));
    OUTLINED_FUNCTION_48_3();
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    v170 = v169[6];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    OUTLINED_FUNCTION_226_2();
    v171 = v376;
    OUTLINED_FUNCTION_33_13();
    CodableNSSecureCoding.init(wrappedValue:)();
    OUTLINED_FUNCTION_107_8(&v394);
    outlined init with copy of EagerResolutionService?();
    v172 = OUTLINED_FUNCTION_202_5();
    OUTLINED_FUNCTION_166(v172, v173, v148);
    if (v113)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v174, v175, v176);
      v177 = v169[5];
      OUTLINED_FUNCTION_7_39();
      OUTLINED_FUNCTION_19_18();

      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v178, v179, v180);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v159, v181);
      v182 = OUTLINED_FUNCTION_138_4();
      v183(v182);
LABEL_47:
      v123 = 1;
      *(v171 + v169[8]) = 1;
      *(v171 + v169[9]) = 1;
      v190 = v171;
LABEL_48:
      outlined init with take of SearchResult(v190, v381);
      OUTLINED_FUNCTION_44_0();
      v127 = v169;
      goto LABEL_17;
    }

    outlined destroy of IntentApplication?(v143, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_3_35();
    _s10OmniSearch0B10ResultItemOWOhTm_8(v159, v184);
    v185 = OUTLINED_FUNCTION_138_4();
    v186(v185);
    v187 = *(v150 + 32);
    v188 = OUTLINED_FUNCTION_48_12(&v391);
    (v187)(v188, v154, v148);
    v189 = v169[5];
    OUTLINED_FUNCTION_204_6();
LABEL_46:
    v187();
    goto LABEL_47;
  }

  v191 = v111 == 0xD000000000000016 && 0x800000025DBF1E50 == v112;
  if (v191 || (OUTLINED_FUNCTION_69_14() & 1) != 0)
  {

    v192 = [v383 uniqueIdentifier];
    v378 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v194 = v193;

    v195 = CSSearchableItem.title.getter();
    v196 = [v141 contentURL];
    if (v196)
    {
      v197 = v196;
      OUTLINED_FUNCTION_104_10(v390);
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for URL();
    }

    else
    {
      type metadata accessor for URL();
      v128 = v369;
    }

    v198 = 1;
    v199 = OUTLINED_FUNCTION_102_9();
    __swift_storeEnumTagSinglePayload(v199, v200, v201, v202);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v141, &selRef_contentSnippet);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v141, &selRef_contentType);
    v203 = [v141 URL];
    if (v203)
    {
      v204 = v203;
      OUTLINED_FUNCTION_104_10(&v386);
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v198 = 0;
    }

    else
    {
      v128 = v363;
    }

    v205 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v128, v198, 1, v205);
    OUTLINED_FUNCTION_104_10(&v392);
    OUTLINED_FUNCTION_103_10();
    Safari.init(id:websiteTitle:websiteUrl:body:contentType:url:)();
    OUTLINED_FUNCTION_42_19(&v388 + 8);
    v206 = v366;
    v207(v366, v128, v370);
    OUTLINED_FUNCTION_140_8();
    swift_storeEnumTagMultiPayload();
    v208 = v374;
    v209 = *(v374 + 16);
    v210 = OUTLINED_FUNCTION_105_12();
    v211 = v377;
    v212(v210, v379, v377);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v213, v214, v215, v211);
    v169 = v380;
    v216 = v365;
    *(v365 + v380[7]) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v216 + v169[10]));
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    v217 = v169[6];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    OUTLINED_FUNCTION_226_2();
    OUTLINED_FUNCTION_33_13();
    CodableNSSecureCoding.init(wrappedValue:)();
    v218 = v364;
    outlined init with copy of EagerResolutionService?();
    v219 = OUTLINED_FUNCTION_90_9();
    OUTLINED_FUNCTION_166(v219, v220, v211);
    if (v113)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v221, v222, v223);
      v224 = v169[5];
      OUTLINED_FUNCTION_7_39();
      OUTLINED_FUNCTION_19_18();

      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v225, v226, v227);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v206, v228);
      v229 = OUTLINED_FUNCTION_126_12();
      v230(v229);
    }

    else
    {

      outlined destroy of IntentApplication?(v194, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v206, v231);
      v232 = OUTLINED_FUNCTION_126_12();
      v233(v232);
      v234 = *(v208 + 32);
      v235 = OUTLINED_FUNCTION_48_12(&v383);
      v234(v235, v218, v211);
      v234(v216 + v169[5], v195, v211);
    }

    v123 = 1;
    *(v216 + v169[8]) = 1;
    *(v216 + v169[9]) = 1;
    v190 = v216;
    goto LABEL_48;
  }

  v236 = v111 == 0xD000000000000014 && 0x800000025DBF1D30 == v112;
  v237 = v377;
  if (v236 || (OUTLINED_FUNCTION_69_14() & 1) != 0)
  {

    v238 = [v383 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_140_2();

    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v141, &selRef_displayName);
    OUTLINED_FUNCTION_114_7();
    v239 = [v141 contentCreationDate];
    if (v239)
    {
      v240 = v239;
      v241 = v360;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v242 = type metadata accessor for Date();
      v243 = 0;
    }

    else
    {
      v242 = type metadata accessor for Date();
      v243 = 1;
      v241 = v360;
    }

    v244 = v362;
    v245 = v357;
    __swift_storeEnumTagSinglePayload(v241, v243, 1, v242);
    v246 = [v141 duration];
    v247 = v246;
    if (v246)
    {
      [v246 doubleValue];
      v249 = v248;

      v250 = v249;
    }

    else
    {
      v250 = 0;
    }

    v251 = [v141 URL];
    if (v251)
    {
      v252 = v251;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v253 = type metadata accessor for URL();
    OUTLINED_FUNCTION_225_4(v245, v254, v255, v253);
    OUTLINED_FUNCTION_192_7(&v384);
    OUTLINED_FUNCTION_94();
    VoiceMemo.init(id:displayName:creationDate:durationInSeconds:url:)();
    OUTLINED_FUNCTION_128_9(&v384 + 8);
    v256 = v359;
    v257 = OUTLINED_FUNCTION_63_0();
    v258(v257);
    OUTLINED_FUNCTION_140_8();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_76_9(&v395);
    v260 = *(v259 + 16);
    v261 = OUTLINED_FUNCTION_105_12();
    v262 = v377;
    v263(v261, v379, v377);
    OUTLINED_FUNCTION_26_21();
    __swift_storeEnumTagSinglePayload(v264, v265, v266, v267);
    v169 = v380;
    *(v244 + v380[7]) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v244 + v169[10]));
    OUTLINED_FUNCTION_48_3();
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    v268 = v169[6];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    OUTLINED_FUNCTION_226_2();
    v171 = v362;
    OUTLINED_FUNCTION_33_13();
    CodableNSSecureCoding.init(wrappedValue:)();
    v269 = v358;
    outlined init with copy of EagerResolutionService?();
    OUTLINED_FUNCTION_28_16(v269);
    if (v113)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v270, v271, v272);
      v273 = v169[5];
      OUTLINED_FUNCTION_7_39();
      OUTLINED_FUNCTION_19_18();

      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v274, v275, v276);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v256, v277);
      OUTLINED_FUNCTION_4_4(&v384 + 8);
      v278 = OUTLINED_FUNCTION_201_5();
      v279(v278);
      goto LABEL_47;
    }

    outlined destroy of IntentApplication?(v238, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_3_35();
    _s10OmniSearch0B10ResultItemOWOhTm_8(v256, v280);
    OUTLINED_FUNCTION_4_4(&v384 + 8);
    v281 = OUTLINED_FUNCTION_201_5();
    v282(v281);
    v187 = *(v250 + 32);
    v283 = OUTLINED_FUNCTION_48_12(&v374);
    (v187)(v283, v269, v262);
    v284 = v171 + v169[5];
    goto LABEL_46;
  }

  v285 = v111 == 0xD00000000000002BLL && 0x800000025DBF1DB0 == v112;
  if (v285 || (OUTLINED_FUNCTION_69_14() & 1) != 0 || (v111 == 0xD000000000000023 ? (v286 = 0x800000025DBF1DE0 == v112) : (v286 = 0), v286 || (OUTLINED_FUNCTION_69_14() & 1) != 0))
  {

    v287 = v383;
    v288 = [v383 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_67_8();

    v289 = v287;
    OUTLINED_FUNCTION_76_9(v375);
    OUTLINED_FUNCTION_88();
    FileDocument.init(id:item:)();
    OUTLINED_FUNCTION_128_9(&v376);
    v290 = OUTLINED_FUNCTION_26_2();
    v291(v290);
    OUTLINED_FUNCTION_140_8();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_42_19(&v395);
    v292 = v351;
    v293(v351, v379, v237);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v294, v295, v296, v237);
    v297 = v380;
    *(v4 + v380[7]) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v4 + v297[10]));
    OUTLINED_FUNCTION_100_4();
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    v298 = v297[6];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v299 = v289;
    OUTLINED_FUNCTION_47_11();
    v300 = v292;
    CodableNSSecureCoding.init(wrappedValue:)();
    v301 = v350;
    outlined init with copy of EagerResolutionService?();
    OUTLINED_FUNCTION_166(v301, 1, v237);
    if (v113)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v302, v303, v304);
      v305 = v297[5];
      OUTLINED_FUNCTION_7_39();
      OUTLINED_FUNCTION_19_18();

      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v306, v307, v308);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v353, v309);
      OUTLINED_FUNCTION_4_4(&v376);
      v310 = OUTLINED_FUNCTION_190_7();
      v311(v310);
    }

    else
    {

      outlined destroy of IntentApplication?(v300, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v353, v312);
      OUTLINED_FUNCTION_4_4(&v376);
      v313 = OUTLINED_FUNCTION_190_7();
      v314(v313);
      v315 = *(v111 + 32);
      v316 = OUTLINED_FUNCTION_48_12(v372);
      (v315)(v316, v301, v237);
      v317 = v297[5];
      OUTLINED_FUNCTION_204_6();
      v315();
    }

    v123 = 1;
    *(v4 + v297[8]) = 1;
    *(v4 + v297[9]) = 1;
    outlined init with take of SearchResult(v4, v381);
    OUTLINED_FUNCTION_26_21();
    goto LABEL_17;
  }

  v318 = CSSearchableItem.associatedAppEntityId.getter();
  if (v319)
  {
    v320 = v318;
    v321 = v319;
    v322 = CSSearchableItem.associatedAppEntityTypeId.getter();
    if (v323)
    {
      v324 = v348;
      *v348 = v320;
      v324[1] = v321;
      v324[2] = v111;
      v324[3] = v112;
      v324[4] = v322;
      v324[5] = v323;
      v324[6] = 0;
      v324[7] = 0;
      OUTLINED_FUNCTION_140_8();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_128_9(&v395);
      v325(v347, v379, v377);
      OUTLINED_FUNCTION_26_21();
      __swift_storeEnumTagSinglePayload(v326, v327, v328, v329);
      v330 = v380;
      *(v99 + v380[7]) = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_2_51((v99 + v330[10]));
      OUTLINED_FUNCTION_26_2();
      _s10OmniSearch0B10ResultItemOWOcTm_3();
      v331 = v330[6];
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
      lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
      OUTLINED_FUNCTION_226_2();
      OUTLINED_FUNCTION_33_13();
      CodableNSSecureCoding.init(wrappedValue:)();
      outlined init with copy of EagerResolutionService?();
      OUTLINED_FUNCTION_28_16(v75);
      if (v113)
      {
        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v332, v333, v334);
        v335 = v380[5];
        OUTLINED_FUNCTION_134_9();
        OUTLINED_FUNCTION_134_9();
        OUTLINED_FUNCTION_134_9();
        OUTLINED_FUNCTION_134_9();
        OUTLINED_FUNCTION_134_9();
        LOBYTE(v387) = 1;
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_19_18();

        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v336, v337, v338);
        OUTLINED_FUNCTION_3_35();
        _s10OmniSearch0B10ResultItemOWOhTm_8(v348, v339);
      }

      else
      {

        outlined destroy of IntentApplication?(v347, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_3_35();
        _s10OmniSearch0B10ResultItemOWOhTm_8(v348, v340);
        v341 = *(v374 + 32);
        v342 = v346;
        v343 = v377;
        v341(v346, v75, v377);
        v341(v99 + v380[5], v342, v343);
      }

      v119 = v380;
      v344 = v381;
      v123 = 1;
      *(v99 + v380[8]) = 1;
      *(v99 + v119[9]) = 1;
      outlined init with take of SearchResult(v99, v344);
      goto LABEL_16;
    }
  }

  v119 = v380;
LABEL_15:
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v119);
  return 0;
}

void static LocalIndexClient.genericSearchResult(_:spotlightRankingItem:eventSourceItemsMap:)()
{
  OUTLINED_FUNCTION_155();
  v146 = v2;
  v150 = v3;
  v151 = v4;
  v6 = v5;
  v7 = type metadata accessor for SpotlightRankingItem();
  v8 = OUTLINED_FUNCTION_14(v7);
  v148 = v9;
  v149 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39_0();
  v143 = v12;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_2();
  v140 = v14;
  v15 = OUTLINED_FUNCTION_78_0();
  v153 = type metadata accessor for SearchResult(v15);
  v16 = OUTLINED_FUNCTION_17(v153);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_78_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_2();
  v142 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v22 = OUTLINED_FUNCTION_114(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_39_0();
  v147 = v25;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v26);
  v28 = &v140 - v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_4();
  v141 = v30;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_2();
  v145 = v32;
  v33 = OUTLINED_FUNCTION_78_0();
  v34 = type metadata accessor for SearchResultItem(v33);
  v35 = OUTLINED_FUNCTION_17(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_67_12();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_2();
  v144 = v39;
  OUTLINED_FUNCTION_78_0();
  v154 = type metadata accessor for GenericSpotlightItem();
  v40 = OUTLINED_FUNCTION_14(v154);
  v152 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_36();
  v46 = v45 - v44;
  v47 = [v6 uniqueIdentifier];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51 = v46;
  v52 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v6);
  if (v53)
  {
    v54 = v52;
  }

  else
  {
    v54 = 0;
  }

  if (v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

  MEMORY[0x25F89C0C0](v48, v50, v54, v55);
  if (!CSSearchableItem.isEventTypeItem.getter())
  {
    (*(v152 + 16))(v1, v46, v154);
    swift_storeEnumTagMultiPayload();
    v146 = v46;
    v98 = v148;
    v97 = v149;
    (*(v148 + 16))(v28, v150, v149);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v97);
    v102 = v153;
    *(v0 + v153[7]) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v0 + *(v102 + 40)));
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    v103 = *(v102 + 24);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v104 = v6;
    OUTLINED_FUNCTION_196_5();
    CodableNSSecureCoding.init(wrappedValue:)();
    outlined init with copy of EagerResolutionService?();
    v105 = OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_166(v105, v106, v97);
    if (v88)
    {
      OUTLINED_FUNCTION_103_10();
      outlined destroy of IntentApplication?(v107, v108, v109);
      v73 = v153;
      v110 = v153[5];
      OUTLINED_FUNCTION_130_10();
      OUTLINED_FUNCTION_130_10();
      OUTLINED_FUNCTION_130_10();
      OUTLINED_FUNCTION_130_10();
      OUTLINED_FUNCTION_130_10();
      LOBYTE(v155) = v111;
      OUTLINED_FUNCTION_10_35();
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_103_10();
      outlined destroy of IntentApplication?(v112, v113, v114);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v1, v115);
      v116 = OUTLINED_FUNCTION_184_5();
      v117(v116);
    }

    else
    {
      outlined destroy of IntentApplication?(v28, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v1, v118);
      v119 = OUTLINED_FUNCTION_184_5();
      v120(v119);
      v121 = *(v98 + 32);
      v122 = v143;
      v123 = OUTLINED_FUNCTION_64_0();
      v121(v123);
      v73 = v153;
      (v121)(v0 + v153[5], v122, v97);
    }

    *(v0 + v73[8]) = 1;
    *(v0 + v73[9]) = 1;
    v124 = v0;
LABEL_30:
    outlined init with take of SearchResult(v124, v151);
    goto LABEL_31;
  }

  v147 = v34;
  v56 = v150;
  v57 = [v6 uniqueIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = OUTLINED_FUNCTION_54_0();
  v60 = specialized Dictionary.subscript.getter(v58, v59, v146);

  v61 = v154;
  if (v60)
  {
    if (specialized Array.count.getter(v60))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v60 & 0xC000000000000001) == 0, v60);
      if ((v60 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x25F89FFD0](0, v60);
      }

      else
      {
        v62 = *(v60 + 32);
      }

      v143 = v62;

      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v63 = v46;
      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, static Logging.search);
      v65 = v6;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = OUTLINED_FUNCTION_51_0();
        v69 = OUTLINED_FUNCTION_49_0();
        v157 = v69;
        *v68 = 136315138;
        v155 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventSourceBundleIdentifier.getter([v65 attributeSet]);
        v156 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        String.init<A>(describing:)();
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v68 + 4) = v71;
        OUTLINED_FUNCTION_49_16(&dword_25D85C000, v72, v67, "LocalIndexClient: Created generic item for event with sourceBundleId: %s.");
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37_0();
      }

      v74 = v152;
      v73 = v153;
      v75 = v145;
      v76 = *(v152 + 16);
      v146 = v63;
      v76(v144, v63, v61);
      OUTLINED_FUNCTION_54_0();
      swift_storeEnumTagMultiPayload();
      v77 = v148;
      v78 = v56;
      v79 = v149;
      (*(v148 + 16))(v75, v78, v149);
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
      v83 = v142;
      *(v142 + v73[7]) = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_2_51((v83 + v73[10]));
      _s10OmniSearch0B10ResultItemOWOcTm_3();
      v84 = v73[6];
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
      lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
      v85 = v143;
      OUTLINED_FUNCTION_47_11();
      v86 = v145;
      CodableNSSecureCoding.init(wrappedValue:)();
      v87 = v141;
      outlined init with copy of EagerResolutionService?();
      OUTLINED_FUNCTION_166(v87, 1, v79);
      if (v88)
      {
        OUTLINED_FUNCTION_117_8();
        outlined destroy of IntentApplication?(v89, v90, v91);
        v92 = v73[5];
        OUTLINED_FUNCTION_132_10();
        OUTLINED_FUNCTION_132_10();
        OUTLINED_FUNCTION_132_10();
        OUTLINED_FUNCTION_132_10();
        OUTLINED_FUNCTION_132_10();
        LOBYTE(v155) = 1;
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_19_18();

        OUTLINED_FUNCTION_117_8();
        outlined destroy of IntentApplication?(v93, v94, v95);
        OUTLINED_FUNCTION_3_35();
        _s10OmniSearch0B10ResultItemOWOhTm_8(v144, v96);
        (*(v74 + 8))(v146, v154);
      }

      else
      {

        outlined destroy of IntentApplication?(v86, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_3_35();
        _s10OmniSearch0B10ResultItemOWOhTm_8(v144, v133);
        (*(v74 + 8))(v146, v154);
        v134 = *(v77 + 32);
        v135 = v140;
        v136 = OUTLINED_FUNCTION_100_4();
        v134(v136);
        (v134)(v83 + v73[5], v135, v79);
      }

      v124 = OUTLINED_FUNCTION_109_14();
      goto LABEL_30;
    }
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v125 = type metadata accessor for Logger();
  __swift_project_value_buffer(v125, static Logging.search);
  v126 = v6;
  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.error.getter();

  if (OUTLINED_FUNCTION_221_4())
  {
    OUTLINED_FUNCTION_51_0();
    v129 = OUTLINED_FUNCTION_94_10();
    v157 = v129;
    *v60 = 136315138;
    v155 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventSourceBundleIdentifier.getter([v126 attributeSet]);
    v156 = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    String.init<A>(describing:)();
    v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v60 + 4) = v131;
    OUTLINED_FUNCTION_164_5(&dword_25D85C000, v132, v128, "LocalIndexClient: Dropped event due to missing source, sourceBundleId: %s.");
    __swift_destroy_boxed_opaque_existential_1Tm(v129);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_13_18();
  }

  (*(v152 + 8))(v51, v61);
  v73 = v153;
LABEL_31:
  v137 = OUTLINED_FUNCTION_102_9();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v73);
  OUTLINED_FUNCTION_148();
}

uint64_t static LocalIndexClient.constructPhotoDocument(item:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v107 = v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v106 = v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v105 = v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v104 = v89 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v103 = v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v111 = v89 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v102 = v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v29 = v89 - v28;
  v30 = [a1 attributeSet];
  if ([v30 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  v116 = v114;
  v117 = v115;
  if (*(&v115 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v31 = v113;
      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v116, &_sypSgMd, &_sypSgMR);
  }

  v31 = MEMORY[0x277D84F90];
LABEL_9:
  v101 = v31;
  v32 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.photosSceneClassifications.getter(v30, &selRef_photosSceneClassifications);
  v109 = v30;
  v110 = v29;
  if (v32)
  {
    v33 = v32;
    v100 = a1;
    v34 = specialized Array.count.getter(v32);
    v35 = 0;
    v36 = (v33 & 0xFFFFFFFFFFFFFF8);
    v112 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v34 == v35)
      {

        v30 = v109;
        v29 = v110;
        a1 = v100;
        goto LABEL_25;
      }

      if ((v33 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x25F89FFD0](v35, v33);
      }

      else
      {
        if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v37 = *(v33 + 8 * v35 + 32);
      }

      v3 = v37;
      v4 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v2 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v37, &selRef_label);
      v39 = v38;

      ++v35;
      if (v39)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = *(v112 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v112 = v43;
        }

        v3 = *(v112 + 16);
        if (v3 >= *(v112 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v112 = v44;
        }

        v40 = v112;
        *(v112 + 16) = v3 + 1;
        v41 = v40 + 16 * v3;
        *(v41 + 32) = v2;
        *(v41 + 40) = v39;
        v35 = v4;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v112 = 0;
LABEL_25:
  if ([v30 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  v116 = v114;
  v117 = v115;
  if (*(&v115 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v2 = v113;
      goto LABEL_33;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v116, &_sypSgMd, &_sypSgMR);
  }

  v2 = MEMORY[0x277D84F90];
LABEL_33:
  if ([v30 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  v116 = v114;
  v117 = v115;
  if (*(&v115 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v3 = v113;
      goto LABEL_41;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v116, &_sypSgMd, &_sypSgMR);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_41:
  if ([v30 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  v116 = v114;
  v117 = v115;
  if (*(&v115 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v45 = v113;
      goto LABEL_49;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v116, &_sypSgMd, &_sypSgMR);
  }

  v45 = MEMORY[0x277D84F90];
LABEL_49:
  v98 = v45;
  v46 = [a1 uniqueIdentifier];
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v47;

  v95 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v30, &selRef_photosContentDescription);
  v94 = v48;
  v90 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v30, &selRef_photosSeasons);
  v93 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v30, &selRef_contentSnippet);
  v92 = v49;
  v50 = [v30 contentCreationDate];
  if (v50)
  {
    v51 = v50;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v29, v52, 1, v53);
  v4 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v30, &selRef_photosBusinessNames);
  v54 = type metadata accessor for PartialExtractedAttributes();
  __swift_storeEnumTagSinglePayload(v111, 1, 1, v54);
  type metadata accessor for FeatureFlagService();
  v91 = swift_allocObject();
  v55 = one-time initialization token for search;
  v36 = a1;
  if (v55 != -1)
  {
LABEL_69:
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  __swift_project_value_buffer(v56, static Logging.search);
  v57 = v36;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();

  v60 = os_log_type_enabled(v58, v59);
  v100 = v2;
  v99 = v3;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v116 = v62;
    *v61 = 136315138;
    v63 = [v57 attributeSet];
    CSSearchableItemAttributeSet.keyStrings.getter();
    v65 = v64;

    MEMORY[0x25F89F8A0](v65, MEMORY[0x277D837D0]);

    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v61 + 4) = v66;
    _os_log_impl(&dword_25D85C000, v58, v59, "Photo: parsing attribute keys: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x25F8A1050](v62, -1, -1);
    MEMORY[0x25F8A1050](v61, -1, -1);
  }

  v67 = MEMORY[0x277D84F90];
  v68 = v57;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v116 = v72;
    *v71 = 136642819;
    v73 = [v68 attributeSet];
    CSSearchableItemAttributeSet.kvStrings.getter();
    v75 = v74;

    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    MEMORY[0x25F89F8A0](v75, v76);

    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v71 + 4) = v77;
    _os_log_impl(&dword_25D85C000, v69, v70, "Photo: parsing attributes: %{sensitive}s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x25F8A1050](v72, -1, -1);
    MEMORY[0x25F8A1050](v71, -1, -1);
  }

  else
  {
  }

  if (v4)
  {
    v78 = v4;
  }

  else
  {
    v78 = v67;
  }

  v89[1] = v78;
  v79 = v112;
  if (!v112)
  {
    v79 = v67;
  }

  v112 = v79;
  if (v90)
  {
    v80 = v90;
  }

  else
  {
    v80 = v67;
  }

  v90 = v80;
  v81 = v110;
  outlined init with copy of EagerResolutionService?();
  v82 = v111;
  outlined init with copy of EagerResolutionService?();
  v83 = v68;
  v84 = v91;

  PreExtractedCard.init(item:featureFlagService:)(v83, v84, v104);
  v85 = v83;

  PreExtractedContact.init(item:featureFlagService:)(v85, v84, v105);
  v86 = v85;
  PreExtractedSharedLink.init(item:)(v86, v106);
  v87 = v86;

  PreExtractedBreadcrumb.init(item:featureFlagService:)(v87, v84);
  Photo.init(id:photoDescription:locationKeywords:season:sceneClassificationLabels:snippet:ocrString:date:businessNames:peopleNames:peopleContactIdentifiers:peoplePersonIdentifiers:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();

  outlined destroy of IntentApplication?(v82, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  return outlined destroy of IntentApplication?(v81, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t CSSearchableItem.isFileDocument.getter()
{
  v0 = type metadata accessor for UTType();
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  static UTType.folder.getter();
  v6 = CSSearchableItem.isContentType(_:)();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_52_1();
  v7(v8);
  if (v6)
  {
    return 1;
  }

  static UTType.content.getter();
  v10 = CSSearchableItem.isContentType(_:)();
  v11 = OUTLINED_FUNCTION_52_1();
  v7(v11);
  if (v10 & 1) != 0 || (static UTType.data.getter(), v12 = CSSearchableItem.isContentType(_:)(), v13 = OUTLINED_FUNCTION_52_1(), v7(v13), (v12))
  {
    v14 = OUTLINED_FUNCTION_175_6();
    v15 = CSSearchableItemAttributeSet.spotlightSearchResult.getter();

    if (v15)
    {
      v16 = [v15 hasTextContent];

      if (v16)
      {
        v17 = OUTLINED_FUNCTION_175_6();
        v18 = [v17 attributeForKey_];

        if (v18)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0u;
          v23 = 0u;
        }

        v24[0] = v22;
        v24[1] = v23;
        if (*(&v23 + 1))
        {
          if (OUTLINED_FUNCTION_25_23())
          {

            v19 = HIBYTE(v21) & 0xF;
            if ((v21 & 0x2000000000000000) == 0)
            {
              v19 = *v20 & 0xFFFFFFFFFFFFLL;
            }

            if (v19)
            {
              return 1;
            }
          }
        }

        else
        {
          outlined destroy of IntentApplication?(v24, &_sypSgMd, &_sypSgMR);
        }
      }
    }
  }

  return 0;
}

uint64_t CSSearchableItem.isContentType(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for UTType();
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v1 attributeSet], &selRef_contentType);
  if (!v14)
  {
    goto LABEL_5;
  }

  UTType.init(_:)();
  OUTLINED_FUNCTION_166(v7, 1, v8);
  if (v15)
  {
    outlined destroy of IntentApplication?(v7, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
LABEL_5:
    v18 = 0;
    return v18 & 1;
  }

  v16 = *(v11 + 32);
  OUTLINED_FUNCTION_47_11();
  v17();
  v18 = UTType.conforms(to:)();
  v19 = *(v11 + 8);
  v20 = OUTLINED_FUNCTION_52_1();
  v21(v20);
  return v18 & 1;
}

uint64_t CSSearchableItem.oms_emailBody.getter()
{
  v2 = OUTLINED_FUNCTION_93_13();
  result = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v2, &selRef_contentSnippet);
  if (!v4)
  {
    return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v1 (v0 + 116)], &selRef_contentDescription);
  }

  return result;
}

uint64_t CSSearchableItem.oms_emailSubject.getter()
{
  v2 = OUTLINED_FUNCTION_93_13();
  result = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.subject.getter(v2);
  if (!v4)
  {
    return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v1 (v0 + 116)]);
  }

  return result;
}

void static LocalIndexClient.walletDocument(from:spotlightRankingItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v267[2] = *MEMORY[0x277D85DE8];
  v29 = type metadata accessor for WalletPass();
  v30 = OUTLINED_FUNCTION_1_5(v29, v267);
  v240 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v35);
  v36 = type metadata accessor for SpotlightRankingItem();
  v37 = OUTLINED_FUNCTION_1_5(v36, &a14);
  v237 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_14_2();
  v43 = OUTLINED_FUNCTION_28_2(v42);
  v250 = type metadata accessor for SearchResult(v43);
  v44 = *(*(v250 - 8) + 64);
  MEMORY[0x28223BE20](v250);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v48 = OUTLINED_FUNCTION_114(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_14_2();
  v253 = v54;
  v55 = OUTLINED_FUNCTION_78_0();
  v248 = type metadata accessor for SearchResultItem(v55);
  v56 = *(*(v248 - 8) + 64);
  MEMORY[0x28223BE20](v248);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v60 = OUTLINED_FUNCTION_114(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v66);
  v67 = type metadata accessor for WalletTransaction();
  v68 = OUTLINED_FUNCTION_1_5(v67, &v268);
  v251 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v73);
  v256 = v26;
  v257 = [v26 attributeSet];
  v74 = [v26 uniqueIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_114_7();

  v265 = 45;
  v266 = 0xE100000000000000;
  v261 = &v265;
  v75 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(1, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), v260, v20, v21);
  v76 = *(v75 + 16);
  v255 = v28;
  if (v76)
  {
    v265 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76, 0);
    v77 = 0;
    v78 = v265;
    v26 = (v75 + 56);
    v258 = v75;
    while (v77 < *(v75 + 16))
    {
      v79 = v22;
      v74 = *(v26 - 3);
      v80 = *(v26 - 2);
      v81 = *(v26 - 1);
      v82 = *v26;

      v83 = OUTLINED_FUNCTION_100_4();
      v84 = MEMORY[0x25F89F5B0](v83);
      v86 = v85;

      v265 = v78;
      v88 = v78[2];
      v87 = v78[3];
      if (v88 >= v87 >> 1)
      {
        v90 = OUTLINED_FUNCTION_26_3(v87);
        v74 = &v265;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v90, v88 + 1, 1);
        v78 = v265;
      }

      ++v77;
      v78[2] = v88 + 1;
      v89 = &v78[2 * v88];
      v89[4] = v84;
      v89[5] = v86;
      v26 += 4;
      v22 = v79;
      v75 = v258;
      if (v76 == v77)
      {

        v91 = v78;
        v28 = v255;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_109;
  }

  v91 = MEMORY[0x277D84F90];
LABEL_9:
  if (v91[2])
  {
    v92 = v91[4];
    v93 = v91[5];
    v94 = v92 == 0x746361736E617274 && v93 == 0xEB000000006E6F69;
    v95 = MEMORY[0x277D84F70];
    v96 = MEMORY[0x277CC2C58];
    if (v94 || (OUTLINED_FUNCTION_121_10(), v98 = v97, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v99 = [v256 uniqueIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v257, &selRef_displayName);
      outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v257, &selRef_contentDescription);
      if ([v257 attributeForKey_])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v100)
      {
        v101 = type metadata accessor for Date();
        v102 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v243, v102 ^ 1u, 1, v101);
        OUTLINED_FUNCTION_166(v243, 1, v101);
        if (!v94)
        {
          OUTLINED_FUNCTION_51(v101);
          v104 = *(v103 + 32);
          v105 = OUTLINED_FUNCTION_32_0();
          v106(v105);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v107, v108, v109, v101);
          goto LABEL_24;
        }
      }

      else
      {
        outlined destroy of IntentApplication?(&v265, &_sypSgMd, &_sypSgMR);
        v101 = type metadata accessor for Date();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v110, v111, v112, v101);
      }

      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v113, v114, v115, v101);
      OUTLINED_FUNCTION_166(v243, 1, v101);
      if (!v94)
      {
        outlined destroy of IntentApplication?(v243, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

LABEL_24:
      outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v257, &selRef_city);
      v76 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v257, &selRef_stateOrProvince);
      v74 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v257, &selRef_country);
      if ([v257 attributeForKey_])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v116)
      {
        OUTLINED_FUNCTION_49_18();
        OUTLINED_FUNCTION_220_4();
      }

      else
      {
        outlined destroy of IntentApplication?(&v265, &_sypSgMd, &_sypSgMR);
      }

      if ([v257 attributeForKey_])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      v28 = v245;
      v75 = v251;
      OUTLINED_FUNCTION_16_31();
      if (v117)
      {
        OUTLINED_FUNCTION_49_18();
        swift_dynamicCast();
      }

      else
      {
        outlined destroy of IntentApplication?(&v265, &_sypSgMd, &_sypSgMR);
      }

      v26 = v252;
      WalletTransaction.init(id:title:description:date:city:stateOrProvince:country:amount:currencyCode:)();
      if (one-time initialization token for search == -1)
      {
        goto LABEL_37;
      }

      goto LABEL_113;
    }

    if (v92 != 1936941424 || v93 != 0xE400000000000000)
    {
      OUTLINED_FUNCTION_121_10();
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v172 = v92 == 0xD000000000000010 && 0x800000025DBF6F70 == v93;
        if (v172 || (OUTLINED_FUNCTION_121_10(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {

LABEL_111:

          OUTLINED_FUNCTION_92();
          v148 = v250;
          goto LABEL_45;
        }

        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_1_31();
          swift_once();
        }

        v227 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v227, static Logging.search);

        v26 = Logger.logObject.getter();
        v228 = static os_log_type_t.error.getter();

        if (OUTLINED_FUNCTION_221_4())
        {
          OUTLINED_FUNCTION_51_0();
          v229 = OUTLINED_FUNCTION_94_10();
          OUTLINED_FUNCTION_99_10(v229);
          *v96 = 136315138;
          v230 = *(v98 + 32);
          v231 = *(v98 + 40);

          OUTLINED_FUNCTION_63_0();
          v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v96 + 4) = v232;
          OUTLINED_FUNCTION_164_5(&dword_25D85C000, v233, v228, "Wallet document found with unrecognized type: %s");
          __swift_destroy_boxed_opaque_existential_1Tm(v93);
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_13_18();
LABEL_110:

          goto LABEL_111;
        }

LABEL_109:

        goto LABEL_110;
      }
    }

    if ([v257 attributeForKey_])
    {
      OUTLINED_FUNCTION_168_5();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_44_21();
    }

    OUTLINED_FUNCTION_16_31();
    if (v151)
    {
      OUTLINED_FUNCTION_49_18();
      if (OUTLINED_FUNCTION_220_4())
      {
        v152 = v262[8];
      }

      else
      {
        v152 = 2;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(&v265, &_sypSgMd, &_sypSgMR);
      v152 = 2;
    }

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v153 = type metadata accessor for Logger();
    v259 = __swift_project_value_buffer(v153, static Logging.search);
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_91_0(v155))
    {
      OUTLINED_FUNCTION_51_0();
      v156 = OUTLINED_FUNCTION_10_23();
      OUTLINED_FUNCTION_99_10(v156);
      *v98 = 136315138;
      LOBYTE(v263) = v152;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
      String.init<A>(describing:)();
      v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v98 + 4) = v157;
      OUTLINED_FUNCTION_110_12(&dword_25D85C000, v158, v155, "Wallet pass attribute passbookIsPaymentPass: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

    if (v152 == 2 || (v152 & 1) == 0)
    {
      v162 = 1;
    }

    else
    {
      v159 = Logger.logObject.getter();
      v160 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_91_0(v160))
      {
        v161 = OUTLINED_FUNCTION_172();
        *v161 = 0;
        _os_log_impl(&dword_25D85C000, v159, v160, "Mark this Wallet secure element card not eligible for answer sythensis", v161, 2u);
        OUTLINED_FUNCTION_13_18();
      }

      v162 = 0;
    }

    if ([v257 attributeForKey_])
    {
      OUTLINED_FUNCTION_168_5();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_44_21();
    }

    OUTLINED_FUNCTION_16_31();
    v234 = v22;
    v254 = v162;
    if (v163)
    {
      OUTLINED_FUNCTION_49_18();
      if (OUTLINED_FUNCTION_220_4())
      {
        v164 = objc_opt_self();
        OUTLINED_FUNCTION_72_2();
        isa = Data._bridgeToObjectiveC()().super.isa;
        v265 = 0;
        v166 = [v164 JSONObjectWithData:isa options:0 error:{&v265, v22}];

        if (v166)
        {
          v167 = v265;
          _bridgeAnyObjectToAny(_:)();
          v168 = OUTLINED_FUNCTION_72_2();
          outlined consume of Data._Representation(v168, v169);
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
          v170 = v95;
          if (OUTLINED_FUNCTION_220_4())
          {
            v171 = v263;
          }

          else
          {
            v171 = 0;
          }

          goto LABEL_88;
        }

        v170 = v95;
        v173 = v265;
        v174 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v175 = OUTLINED_FUNCTION_72_2();
        outlined consume of Data._Representation(v175, v176);
      }

      else
      {
        v170 = v95;
      }
    }

    else
    {
      v170 = v95;
      outlined destroy of IntentApplication?(&v265, &_sypSgMd, &_sypSgMR);
    }

    v171 = 0;
LABEL_88:
    v177 = [v256 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v257, &selRef_displayName);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v257, &selRef_contentDescription);
    if ([v257 attributeForKey_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_44_21();
    }

    v178 = v171;
    OUTLINED_FUNCTION_16_31();
    if (v179)
    {
      v180 = type metadata accessor for Date();
      OUTLINED_FUNCTION_193_5(v262);
      v181 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v170, v181 ^ 1u, 1, v180);
      v182 = OUTLINED_FUNCTION_90_9();
      OUTLINED_FUNCTION_166(v182, v183, v180);
      if (!v94)
      {
        OUTLINED_FUNCTION_51(v180);
        (*(v184 + 32))(v236, v170, v180);
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v185, v186, v187, v180);
LABEL_97:
        outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v257, &selRef_creator);
        OUTLINED_FUNCTION_194_5(&v266);
        OUTLINED_FUNCTION_32_0();
        WalletPass.init(id:title:description:creationDate:creator:extraData:)();
        v196 = *(v240 + 16);
        v120 = v238;
        v197 = v242;
        v196(v238, v170);
        v198 = v259;
        v199 = Logger.logObject.getter();
        v200 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_91_0(v200))
        {
          OUTLINED_FUNCTION_51_0();
          v178 = v240;
          v201 = OUTLINED_FUNCTION_10_23();
          OUTLINED_FUNCTION_99_10(v201);
          *v240 = 136642819;
          v198 = v238;
          specialized Encodable.oms_jsonPrettyPrinted()();
          v202 = OUTLINED_FUNCTION_92_11();
          v120 = v203;
          (*(v240 + 8))(v202);
          OUTLINED_FUNCTION_153();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_92_11();

          *(v240 + 4) = v238;
          OUTLINED_FUNCTION_110_12(&dword_25D85C000, v204, v200, "Wallet pass found: %{sensitive}s");
          __swift_destroy_boxed_opaque_existential_1Tm(v242);
          v197 = v242;
          OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_2_8();
        }

        else
        {

          v205 = *(v240 + 8);
          v206 = OUTLINED_FUNCTION_30_5();
          v207(v206);
        }

        OUTLINED_FUNCTION_108_9();
        v208 = OUTLINED_FUNCTION_48_12(&v261);
        (v196)(v208, v241, v197);
        OUTLINED_FUNCTION_107();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_107_8(&v264);
        OUTLINED_FUNCTION_50_9();
        outlined init with copy of EagerResolutionService?();
        *(v239 + v120[7]) = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_2_51((v239 + v120[10]));
        _s10OmniSearch0B10ResultItemOWOcTm_3();
        v209 = v120[6];
        type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
        v210 = v256;
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_107_8(v260);
        OUTLINED_FUNCTION_50_9();
        outlined init with copy of EagerResolutionService?();
        v211 = OUTLINED_FUNCTION_202_5();
        OUTLINED_FUNCTION_166(v211, v212, v249);
        if (v94)
        {
          OUTLINED_FUNCTION_33_13();
          outlined destroy of IntentApplication?(v213, v214, v215);
          v216 = v120[5];
          OUTLINED_FUNCTION_8_37();
          OUTLINED_FUNCTION_19_18();

          OUTLINED_FUNCTION_33_13();
          outlined destroy of IntentApplication?(v217, v218, v219);
          OUTLINED_FUNCTION_3_35();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v198, v220);
          v221 = OUTLINED_FUNCTION_97_9();
          v222(v221);
        }

        else
        {

          outlined destroy of IntentApplication?(v178, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_3_35();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v198, v223);
          v224 = OUTLINED_FUNCTION_97_9();
          v225(v224);
          v226 = *(v237 + 32);
          v226(v235, v178);
          (v226)(v239 + v120[5]);
        }

        *(v239 + v120[8]) = 1;
        *(v239 + v120[9]) = v254;
        v144 = v239;
        goto LABEL_44;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(&v265, &_sypSgMd, &_sypSgMR);
      v180 = type metadata accessor for Date();
      OUTLINED_FUNCTION_193_5(v262);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v188, v189, v190, v180);
    }

    type metadata accessor for Date();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v191, v192, v193, v180);
    v194 = OUTLINED_FUNCTION_90_9();
    OUTLINED_FUNCTION_166(v194, v195, v180);
    if (!v94)
    {
      outlined destroy of IntentApplication?(v170, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_113:
  OUTLINED_FUNCTION_1_31();
  swift_once();
LABEL_37:
  v118 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v118, static Logging.search);
  v119 = *(v75 + 16);
  v120 = v244;
  (v119)(v244, v26, v28);
  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_91_0(v122))
  {
    OUTLINED_FUNCTION_51_0();
    v123 = v75;
    v124 = OUTLINED_FUNCTION_10_23();
    v265 = v124;
    *v76 = 136642819;
    v74 = v244;
    specialized Encodable.oms_jsonPrettyPrinted()();
    v125 = OUTLINED_FUNCTION_92_11();
    v120 = v126;
    (*(v123 + 8))(v125, v28);
    OUTLINED_FUNCTION_153();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_92_11();

    *(v76 + 4) = v244;
    OUTLINED_FUNCTION_110_12(&dword_25D85C000, v127, v122, "Wallet transaction found: %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v124);
    OUTLINED_FUNCTION_13_18();
    OUTLINED_FUNCTION_2_8();
  }

  else
  {

    (*(v75 + 8))(v244, v28);
  }

  OUTLINED_FUNCTION_108_9();
  OUTLINED_FUNCTION_48_12(&a11);
  OUTLINED_FUNCTION_107_8(&a18);
  v119();
  OUTLINED_FUNCTION_107();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of EagerResolutionService?();
  *(v247 + v120[7]) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_51((v247 + v120[10]));
  _s10OmniSearch0B10ResultItemOWOcTm_3();
  v128 = v120[6];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v129 = v256;
  CodableNSSecureCoding.init(wrappedValue:)();
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of EagerResolutionService?();
  OUTLINED_FUNCTION_166(v246, 1, v249);
  if (v94)
  {
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v130, v131, v132);
    v133 = v120[5];
    OUTLINED_FUNCTION_8_37();
    OUTLINED_FUNCTION_19_18();

    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v134, v135, v136);
    OUTLINED_FUNCTION_3_35();
    _s10OmniSearch0B10ResultItemOWOhTm_8(v74, v137);
    v138 = OUTLINED_FUNCTION_106_11();
    v139(v138);
  }

  else
  {

    outlined destroy of IntentApplication?(v253, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_3_35();
    _s10OmniSearch0B10ResultItemOWOhTm_8(v74, v140);
    v141 = OUTLINED_FUNCTION_106_11();
    v142(v141);
    v143 = *(v237 + 32);
    v143();
    (v143)(v247 + v120[5]);
  }

  *(v247 + v120[8]) = 1;
  *(v247 + v120[9]) = 1;
  v144 = v247;
LABEL_44:
  outlined init with take of SearchResult(v144, v255);
  OUTLINED_FUNCTION_44_0();
  v148 = v120;
LABEL_45:
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v148);
  v149 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_148();
}

void MobileSMSDocument.withUpdatedPhotoAttachments(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v20;
  a20 = v21;
  v136 = v22;
  v137 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_49_3();
  v135 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_49_3();
  v134 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_49_3();
  v133 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_49_3();
  v132 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v45 = OUTLINED_FUNCTION_114(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_39_0();
  v131 = v48;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v49);
  v51 = v116 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v53 = OUTLINED_FUNCTION_114(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_39_0();
  v122 = v56;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v57);
  v59 = v116 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v61 = OUTLINED_FUNCTION_114(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_39_0();
  v139 = v64;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v65);
  v67 = v116 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v69 = OUTLINED_FUNCTION_114(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_39_0();
  v138 = v72;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v73);
  v75 = v116 - v74;
  v76 = WalletPass.id.getter();
  v129 = v77;
  v130 = v76;
  v78 = WalletPass.title.getter();
  v127 = v79;
  v128 = v78;
  v80 = WalletPass.description.getter();
  v125 = v81;
  v126 = v80;
  v82 = NoteDocument.folderName.getter();
  v123 = v83;
  v124 = v82;
  v84 = EmailDocument.authorNames.getter();
  v85 = MobileSMSDocument.isFromMe.getter();
  EmailDocument.to.getter();
  MobileSMSDocument.date.getter();
  MobileSMSDocument.contentURL.getter();
  v86 = MobileSMSDocument.serviceName.getter();
  v120 = v87;
  v121 = v86;
  v88 = MobileSMSDocument.chatMessages.getter();
  OUTLINED_FUNCTION_137_4(v88);
  v89 = type metadata accessor for DataDetectorResults();
  v90 = v59;
  OUTLINED_FUNCTION_10_24(v59, v91, v92, v89);
  type metadata accessor for PartialExtractedAttributes();
  v93 = v51;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v98 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v98, static Logging.search);
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_88_0(v100))
  {
    v101 = OUTLINED_FUNCTION_172();
    *v101 = 0;
    _os_log_impl(&dword_25D85C000, v99, v100, "MobileSMSDocument: chatParticipants set from both 'from' and 'to' as there's no chatParticipants passed-in", v101, 2u);
    OUTLINED_FUNCTION_13_18();
  }

  v119 = v75;
  outlined init with copy of EagerResolutionService?();
  v118 = v67;
  outlined init with copy of EagerResolutionService?();
  v117 = v85;
  v116[1] = v84;
  v140 = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(v84, v85 & 1);

  specialized Array.append<A>(contentsOf:)(v102);
  outlined init with copy of EagerResolutionService?();
  outlined init with copy of EagerResolutionService?();
  v103 = type metadata accessor for PreExtractedCard();
  OUTLINED_FUNCTION_10_24(v132, v104, v105, v103);
  v106 = type metadata accessor for PreExtractedContact();
  OUTLINED_FUNCTION_10_24(v133, v107, v108, v106);
  v109 = type metadata accessor for PreExtractedSharedLink();
  OUTLINED_FUNCTION_10_24(v134, v110, v111, v109);
  type metadata accessor for PreExtractedBreadcrumb();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);

  OUTLINED_FUNCTION_180_5(&a14);
  MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();
  outlined destroy of IntentApplication?(v93, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  outlined destroy of IntentApplication?(v90, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined destroy of IntentApplication?(v118, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of IntentApplication?(v119, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_148();
}

id @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x25F89F4C0]();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t closure #1 in static LocalIndexClient.checkEmbeddingCompleteness()()
{
  v1 = type metadata accessor for OSSignpostID();
  v0[19] = v1;
  v2 = *(v1 - 8);
  v0[20] = v2;
  v3 = *(v2 + 64) + 15;
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static LocalIndexClient.checkEmbeddingCompleteness(), 0, 0);
}

{
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[22];
    v6 = OUTLINED_FUNCTION_172();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v7, "LocalIndexClient.checkEmbeddingCompleteness", "", v6, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[20];

  v12 = *(v11 + 16);
  v13 = OUTLINED_FUNCTION_88();
  v14(v13);
  v15 = type metadata accessor for OSSignpostIntervalState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[23] = OSSignpostIntervalState.init(id:isOpen:)();
  v18 = *(v11 + 8);
  v19 = OUTLINED_FUNCTION_54_0();
  v20(v19);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v0[24] = __swift_project_value_buffer(v21, static Logging.search);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_88_0(v23))
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v24, v25, v26, v27, v28, 2u);
    OUTLINED_FUNCTION_2_8();
  }

  v29 = [objc_opt_self() defaultSearchableIndex];
  v0[25] = v29;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = closure #1 in static LocalIndexClient.checkEmbeddingCompleteness();
  v30 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySds5Error_pGMd, &_sSccySds5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Double, @unowned NSError?) -> () with result type Double;
  v0[13] = &block_descriptor_37;
  v0[14] = v30;
  [v29 embeddingCompletenessForBundle:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 208) = v4;
  if (v4)
  {
    v5 = closure #1 in static LocalIndexClient.checkEmbeddingCompleteness();
  }

  else
  {
    v5 = closure #1 in static LocalIndexClient.checkEmbeddingCompleteness();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_88_0(v4))
  {
    v5 = OUTLINED_FUNCTION_51_0();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    OUTLINED_FUNCTION_2_8();
  }

  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 216) = v2;
  if (one-time initialization token for shared != -1)
  {
    v11 = OUTLINED_FUNCTION_5_0();
  }

  v12 = OUTLINED_FUNCTION_60_12(v11, static ContextManager.shared);

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = OUTLINED_FUNCTION_83_13();
  ContextManager.set(indexContext:)(v5, v6, v7);
  v8 = OUTLINED_FUNCTION_83_13();
  outlined consume of IndexContext?(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  outlined consume of IndexContext?(*(v0 + 216), *(v0 + 224), *(v0 + 232));
  $defer #1 () in closure #1 in static LocalIndexClient.checkEmbeddingCompleteness()();

  OUTLINED_FUNCTION_127();

  return v4();
}

{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  swift_willThrow();

  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 208);
    v8 = OUTLINED_FUNCTION_51_0();
    v9 = OUTLINED_FUNCTION_173_0();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_49_16(&dword_25D85C000, v12, v6, "LocalIndexClient.checkEmbeddingCompleteness - Error querying embedding completeness: %@");
    outlined destroy of IntentApplication?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_37_0();
  }

  v13 = *(v0 + 208);

  v14 = v13;
  *(v0 + 232) = v13;
  *(v0 + 216) = xmmword_25DBC9A70;
  if (one-time initialization token for shared != -1)
  {
    v14 = OUTLINED_FUNCTION_5_0();
  }

  v15 = OUTLINED_FUNCTION_60_12(v14, static ContextManager.shared);

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t $defer #1 () in closure #1 in static LocalIndexClient.checkEmbeddingCompleteness()()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static Logging.searchSignposter);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "LocalIndexClient.checkEmbeddingCompleteness", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Double, @unowned NSError?) -> () with result type Double(uint64_t a1, void *a2, double a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v7 = a2;
    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)();
  }

  else
  {
    v9 = *v5;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v9, a3);
  }
}

uint64_t LocalIndexClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t LocalIndexClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LocalIndexClientProtocol.search(spotlightRequest:) in conformance LocalIndexClient(uint64_t a1, uint64_t *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return LocalIndexClient.search(spotlightRequest:)(a1, a2);
}

Swift::String __swiftcall ItemFetcher.queryStringForEventSources(eventItems:)(Swift::OpaquePointer eventItems)
{
  v2.super.isa = specialized Array.count.getter(eventItems._rawValue);
  isa = v2.super.isa;
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  while (isa != v5)
  {
    if ((eventItems._rawValue & 0xC000000000000001) != 0)
    {
      v2.super.isa = MEMORY[0x25F89FFD0](v5, eventItems._rawValue);
    }

    else
    {
      if (v5 >= *((eventItems._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v2.super.isa = *(eventItems._rawValue + v5 + 4);
    }

    v8 = (v5 + 1);
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    EventSourceInfo.init(from:)(v34, v2);
    v5 = (v5 + 1);
    if (*&v34[8])
    {
      v2.super.isa = swift_isUniquelyReferenced_nonNull_native();
      if ((v2.super.isa & 1) == 0)
      {
        v15 = *(v7 + 2);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v7 = v2.super.isa;
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v9);
        OUTLINED_FUNCTION_61_19();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v7 = v2.super.isa;
      }

      v36 = *&v34[32];
      v37 = *&v34[48];
      v11 = *v34;
      *&v34[64] = *v34;
      v35 = *&v34[16];
      *(v7 + 2) = v10 + 1;
      v12 = (v7 + 64 * v10);
      v13 = v35;
      v14 = v37;
      v12[4] = v36;
      v12[5] = v14;
      v12[2] = v11;
      v12[3] = v13;
      v5 = v8;
    }
  }

  v16 = *(v7 + 2);
  if (v16)
  {
    v33 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = 32;
    v18 = v6;
    do
    {
      v19 = *(v7 + v17);
      v20 = *(v7 + v17 + 16);
      v21 = *(v7 + v17 + 48);
      v36 = *(v7 + v17 + 32);
      v37 = v21;
      *&v34[64] = v19;
      v35 = v20;
      v31 = 40;
      v32 = 0xE100000000000000;
      outlined init with copy of EventSourceInfo(&v34[64], v30);
      v22 = EventSourceInfo.queryString.getter();
      MEMORY[0x25F89F6C0](v22);

      MEMORY[0x25F89F6C0](41, 0xE100000000000000);
      outlined destroy of EventSourceInfo(&v34[64]);
      v24 = v31;
      v23 = v32;
      v33 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        v28 = OUTLINED_FUNCTION_26_3(v25);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28, v26 + 1, 1);
        v18 = v33;
      }

      *(v18 + 16) = v26 + 1;
      v27 = v18 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v17 += 64;
      --v16;
    }

    while (v16);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v30[0] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  OUTLINED_FUNCTION_216_4();
  OUTLINED_FUNCTION_140_2();

  v2.super.isa = OUTLINED_FUNCTION_94();
LABEL_24:
  result._object = v3;
  result._countAndFlagsBits = v2.super.isa;
  return result;
}

uint64_t ItemFetcher.fetchSourceCSSI(for:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  v3 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t ItemFetcher.fetchSourceCSSI(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = (*(**(v20 + 144) + 80))(*(v20 + 136));
  v25 = v24;
  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v27 = v23;
    if (one-time initialization token for search != -1)
    {
LABEL_30:
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    *(v20 + 152) = OUTLINED_FUNCTION_200(v28, static Logging.search);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_51_0();
      v60 = OUTLINED_FUNCTION_49_0();
      *v31 = 136315138;
      OUTLINED_FUNCTION_119();
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_70_0(&dword_25D85C000, v32, v30, "Fetching event source CSItems with query: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_72_9();
    }

    v56 = v27;
    v57 = v25;
    v33 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
    *(v20 + 160) = v33;
    if (one-time initialization token for fetchAttributes != -1)
    {
      OUTLINED_FUNCTION_76_13();
    }

    v34 = *(v20 + 136);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v33 setFetchAttributes_];

    v36 = specialized Array.count.getter(v34);
    v37 = 0;
    v58 = v20;
    *(v20 + 168) = v36;
    v27 = v34 & 0xC000000000000001;
    v25 = v34 & 0xFFFFFFFFFFFFFF8;
    v59 = MEMORY[0x277D84F90];
    while (v36 != v37)
    {
      if (v27)
      {
        v38 = MEMORY[0x25F89FFD0](v37, v58[17]);
      }

      else
      {
        if (v37 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v38 = *(v34 + 32 + 8 * v37);
      }

      v39 = v38;
      v20 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventSourceBundleIdentifier.getter([v38 attributeSet]);
      OUTLINED_FUNCTION_82_0();

      ++v37;
      if (v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = *(v59 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v59 = v44;
        }

        v41 = *(v59 + 16);
        v40 = *(v59 + 24);
        if (v41 >= v40 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v40);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v59 = v45;
        }

        *(v59 + 16) = v41 + 1;
        v42 = v59 + 16 * v41;
        *(v42 + 32) = v21;
        *(v42 + 40) = v22;
        v37 = v20;
      }
    }

    v46 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v59);
    v47 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v46);
    outlined bridged method (mbnn) of @objc CSSearchQueryContext.bundleIDs.setter(v47, v33);
    objc_allocWithZone(MEMORY[0x277CC3498]);
    v48 = v33;
    v49 = @nonobjc CSSearchQuery.init(queryString:queryContext:)(v56, v57, v33);
    v58[22] = v49;
    v50 = swift_task_alloc();
    v58[23] = v50;
    *(v50 + 16) = v49;
    v51 = *(MEMORY[0x277D859E0] + 4);
    v52 = swift_task_alloc();
    v58[24] = v52;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16CSSearchableItemCGMd, &_sSaySo16CSSearchableItemCGMR);
    v58[25] = v53;
    *v52 = v58;
    v52[1] = ItemFetcher.fetchSourceCSSI(for:);

    return MEMORY[0x2822007B8](v58 + 16, 0, 0, 0xD000000000000015, 0x800000025DBF6F90, partial apply for closure #2 in ItemFetcher.fetchSourceCSSI(for:), v50, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16CSSearchableItemCGMd, &_sSaySo16CSSearchableItemCGMR);
    Dictionary.init(dictionaryLiteral:)();
    OUTLINED_FUNCTION_62();

    return v54();
  }
}

uint64_t ItemFetcher.fetchSourceCSSI(for:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 192);
  v3 = *(v1 + 184);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void ItemFetcher.fetchSourceCSSI(for:)()
{
  v2 = 0;
  v3 = *(v1 + 128);
  v52 = v3 & 0xFFFFFFFFFFFFFF8;
  v53 = v3 & 0xC000000000000001;
  v4 = MEMORY[0x277D84F98];
LABEL_2:
  for (i = v2; ; ++i)
  {
    if (i == *(v1 + 168))
    {
      v28 = *(v1 + 152);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v1 + 200);
        v32 = *(v1 + 176);
        v33 = *(v1 + 160);
        OUTLINED_FUNCTION_51_0();
        v57 = OUTLINED_FUNCTION_10_23();
        *v0 = 136642819;
        Dictionary.description.getter();
        v34 = v4;
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v0 + 4) = v35;
        v4 = v34;
        OUTLINED_FUNCTION_25_6();
        _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        OUTLINED_FUNCTION_72_9();
        OUTLINED_FUNCTION_2_8();
      }

      else
      {
        v41 = *(v1 + 176);
      }

      OUTLINED_FUNCTION_62();

      v42(v4);
      return;
    }

    v6 = *(v1 + 136);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x25F89FFD0](i);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v7 = *(v6 + 8 * i + 32);
    }

    v2 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = v7;
    EventSourceInfo.init(from:)((v1 + 16), v8);
    v9 = *(v1 + 24);
    if (v9)
    {
      v43 = v4;
      v44 = *(v1 + 40);
      v47 = *(v1 + 48);
      v48 = *(v1 + 16);
      v45 = *(v1 + 32);
      v46 = *(v1 + 56);
      v50 = *(v1 + 72);
      v51 = *(v1 + 64);
      v55 = MEMORY[0x277D84F90];
      v54 = specialized Array.count.getter(v3);
      v10 = 0;
      v49 = v3;
      while (1)
      {
        if (v54 == v10)
        {
          outlined destroy of IntentApplication?(v1 + 16, &_s10OmniSearch15EventSourceInfoVSgMd, &_s10OmniSearch15EventSourceInfoVSgMR);
          v27 = [v8 uniqueIdentifier];
          v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          swift_isUniquelyReferenced_nonNull_native();
          *&v56 = v43;
          OUTLINED_FUNCTION_196_5();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

          v4 = v43;
          goto LABEL_2;
        }

        if (v53)
        {
          v11 = MEMORY[0x25F89FFD0](v10, v3);
        }

        else
        {
          if (v10 >= *(v52 + 16))
          {
            goto LABEL_60;
          }

          v11 = *(v3 + 8 * v10 + 32);
        }

        v12 = v11;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_59;
        }

        v13 = [v11 attributeSet];
        v14 = MEMORY[0x25F89F4C0](v51, v50);
        v15 = [v13 attributeForKey_];

        if (v15)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v56 = 0u;
          v58 = 0u;
        }

        *(v1 + 80) = v56;
        *(v1 + 96) = v58;
        if (!*(v1 + 104))
        {
          break;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_45;
        }

        v17 = *(v1 + 112);
        v16 = *(v1 + 120);
        v18 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v12);
        if (!v19)
        {

          goto LABEL_45;
        }

        if (v18 == v48 && v19 == v9)
        {
        }

        else
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v21 & 1) == 0)
          {

            v3 = v49;
            goto LABEL_46;
          }
        }

        if (v17 == v47 && v16 == v46)
        {

          v3 = v49;
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
          OUTLINED_FUNCTION_175_3();
          v3 = v49;
          if ((v17 & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        v23 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v12 attributeSet], &selRef_contentType);
        if (!v24)
        {
          goto LABEL_45;
        }

        if (v23 == v45 && v24 == v44)
        {
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
          OUTLINED_FUNCTION_175_3();
          if ((v17 & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v26 = *(v55 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_46:
        ++v10;
      }

      outlined destroy of IntentApplication?(v1 + 80, &_sypSgMd, &_sypSgMR);
LABEL_45:

      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t closure #2 in ItemFetcher.fetchSourceCSSI(for:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo16CSSearchableItemCGs5NeverOGMd, &_sScCySaySo16CSSearchableItemCGs5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  v19 = partial apply for closure #1 in closure #2 in ItemFetcher.fetchSourceCSSI(for:);
  v20 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed [CSSearchableItem]) -> ();
  v18 = &block_descriptor_7;
  v10 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v10);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v19 = partial apply for closure #2 in closure #2 in ItemFetcher.fetchSourceCSSI(for:);
  v20 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v18 = &block_descriptor_30_0;
  v13 = _Block_copy(&aBlock);

  [a2 setCompletionHandler_];
  _Block_release(v13);
  [a2 start];
}

uint64_t closure #1 in closure #2 in ItemFetcher.fetchSourceCSSI(for:)()
{
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v0);
  return swift_endAccess();
}

uint64_t closure #2 in closure #2 in ItemFetcher.fetchSourceCSSI(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo16CSSearchableItemCGs5NeverOGMd, &_sScCySaySo16CSSearchableItemCGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t protocol witness for ItemFetcherProtocol.fetchSourceCSSI(for:) in conformance ItemFetcher(uint64_t a1)
{
  v4 = *(**v1 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in AnySearchEntityPreprocessing.init(_:)partial apply;

  return v8(a1);
}

void *CSSearchableItem.isSyndicatedPhoto.getter()
{
  v1 = [v0 attributeSet];
  IsSyndicatedPhotos = CSSearchableItemAttributeSet.spotlightSearchResult.getter();

  if (IsSyndicatedPhotos)
  {
    v3 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(IsSyndicatedPhotos, &selRef_sectionBundleIdentifier);
    IsSyndicatedPhotos = v4;
    if (v4)
    {
      v5 = MEMORY[0x25F89F4C0](v3, v4);

      IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();
    }
  }

  return IsSyndicatedPhotos;
}

uint64_t CSSearchableItemAttributeSet.spotlightSearchResult.getter()
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSCustomAttributeKey, 0x277CC33B0);
  v1 = static CSCustomAttributeKey.spotlightSFSearchResultKey.getter();
  v2 = [v0 valueForCustomKey_];

  if (v2)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t CSSearchableItem.isSupportedSharedLinkType.getter()
{
  outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v0 attributeSet], &selRef_bundleID);
  v2 = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_189_5();
    OUTLINED_FUNCTION_117_11();
    v4 = v4 && v2 == v3;
    if (v4)
    {
    }

    else
    {
      v5 = OUTLINED_FUNCTION_169_7();

      if ((v5 & 1) == 0)
      {
        LOBYTE(v2) = 0;
        return v2 & 1;
      }
    }

    v6 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v0 attributeSet], &selRef_messageType);
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    v12[0] = v8;
    v12[1] = v9;
    MEMORY[0x28223BE20](v6);
    v11[2] = v12;
    LOBYTE(v2) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v11, &outlined read-only object #0 of CSSearchableItem.isSupportedSharedLinkType.getter);
  }

  return v2 & 1;
}

uint64_t static CSCustomAttributeKey.spotlightSFSearchResultKey.getter()
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSCustomAttributeKey, 0x277CC33B0);
  v0._object = 0x800000025DBF6FB0;
  v0._countAndFlagsBits = 0xD000000000000018;
  result = CSCustomAttributeKey.__allocating_init(keyName:)(v0);
  if (!result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

CSCustomAttributeKey_optional __swiftcall CSCustomAttributeKey.__allocating_init(keyName:)(Swift::String keyName)
{
  object = keyName._object;
  countAndFlagsBits = keyName._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x25F89F4C0](countAndFlagsBits, object);

  v5 = [v3 initWithKeyName_];

  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

void key path setter for CSSearchableItemAttributeSet.spotlightSearchResult : CSSearchableItemAttributeSet(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  CSSearchableItemAttributeSet.spotlightSearchResult.setter(v2);
}

void (*CSSearchableItemAttributeSet.spotlightSearchResult.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = CSSearchableItemAttributeSet.spotlightSearchResult.getter();
  return CSSearchableItemAttributeSet.spotlightSearchResult.modify;
}

void CSSearchableItemAttributeSet.spotlightSearchResult.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    CSSearchableItemAttributeSet.spotlightSearchResult.setter(v2);
  }

  else
  {
    CSSearchableItemAttributeSet.spotlightSearchResult.setter(*a1);
  }
}

id CSSearchableItemAttributeSet.timeIsUnknownBool.getter()
{
  v1 = type metadata accessor for Date();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_109();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  v20 = [v0 startDate];
  if (!v20)
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v1);
    v38 = v19;
LABEL_7:
    outlined destroy of IntentApplication?(v38, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 0;
  }

  v21 = v20;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = *(v4 + 32);
  v22(v19, v9, v1);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v1);
  outlined destroy of IntentApplication?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v26 = [v0 endDate];
  if (!v26)
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v1);
    v38 = v16;
    goto LABEL_7;
  }

  v27 = v26;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = OUTLINED_FUNCTION_34_11();
  (v22)(v28);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v1);
  outlined destroy of IntentApplication?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v32 = [v0 timeIsUnknown];
  if (!v32)
  {
    return 0;
  }

  v33 = v32;
  v34 = [v32 BOOLValue];

  return v34;
}

void CSSearchableItemAttributeSet.keyStrings.getter()
{
  v1 = [v0 attributeDictionary];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);
  if (v3)
  {
    v37 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v37;
    v7 = specialized Dictionary.startIndex.getter(v2);
    v8 = 0;
    v9 = v2 + 64;
    v27 = v5;
    v28 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v2 + 36) != v5)
      {
        goto LABEL_24;
      }

      v30 = v5;
      v29 = v6;
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v7, v34);
      outlined init with copy of Any(*(v2 + 56) + 32 * v7, v36);
      v31[0] = v34[0];
      v31[1] = v34[1];
      v32 = v35;
      outlined init with take of Any(v36, &v33);
      v11 = AnyHashable.description.getter();
      v13 = v12;
      outlined destroy of IntentApplication?(v31, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
      v37 = v4;
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      v16 = v4;
      if (v15 >= v14 >> 1)
      {
        v26 = OUTLINED_FUNCTION_26_3(v14);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v15 + 1, 1);
        v16 = v37;
      }

      *(v16 + 16) = v15 + 1;
      v17 = v16 + 16 * v15;
      *(v17 + 32) = v11;
      *(v17 + 40) = v13;
      v18 = 1 << *(v2 + 32);
      if (v7 >= v18)
      {
        goto LABEL_25;
      }

      v9 = v2 + 64;
      if ((*(v2 + 64 + 8 * v10) & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v4 = v16;
      if (*(v2 + 36) != v30)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_179_6();
      if (v20)
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v2 + 72 + 8 * v10);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            OUTLINED_FUNCTION_218_4(v19, v29);
            v18 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        OUTLINED_FUNCTION_218_4(v19, v29);
      }

      else
      {
        OUTLINED_FUNCTION_178_6();
      }

LABEL_19:
      v6 = 0;
      ++v8;
      v7 = v18;
      v5 = v27;
      if (v8 == v28)
      {

        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
  }
}

void CSSearchableItemAttributeSet.kvStrings.getter()
{
  v1 = [v0 attributeDictionary];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);
  if (v3)
  {
    v45 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v45;
    v7 = specialized Dictionary.startIndex.getter(v2);
    v8 = 0;
    v9 = v2 + 64;
    v32 = v5;
    v33 = v3;
    v31 = v2 + 72;
    v34 = v2 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v2 + 36) != v5)
      {
        goto LABEL_24;
      }

      v36 = v8;
      v37 = v5;
      v35 = v6;
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v7, v42);
      outlined init with copy of Any(*(v2 + 56) + 32 * v7, v44);
      v39[0] = v42[0];
      v39[1] = v42[1];
      v40 = v43;
      outlined init with take of Any(v44, v41);
      v11 = AnyHashable.description.getter();
      v13 = v12;
      outlined init with copy of Any(v41, v38);
      v14 = String.init<A>(describing:)();
      v16 = v15;
      outlined destroy of IntentApplication?(v39, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
      v45 = v4;
      v17 = v2;
      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      v20 = v4;
      if (v19 >= v18 >> 1)
      {
        v30 = OUTLINED_FUNCTION_26_3(v18);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30, v19 + 1, 1);
        v20 = v45;
      }

      *(v20 + 16) = v19 + 1;
      v21 = (v20 + 32 * v19);
      v21[4] = v11;
      v21[5] = v13;
      v21[6] = v14;
      v21[7] = v16;
      v22 = 1 << *(v17 + 32);
      if (v7 >= v22)
      {
        goto LABEL_25;
      }

      v2 = v17;
      v9 = v34;
      if ((*(v34 + 8 * v10) & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v4 = v20;
      if (*(v2 + 36) != v37)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_179_6();
      if (v24)
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (v31 + 8 * v10);
        while (v26 < (v22 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            OUTLINED_FUNCTION_218_4(v23, v35);
            v22 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        OUTLINED_FUNCTION_218_4(v23, v35);
      }

      else
      {
        OUTLINED_FUNCTION_178_6();
      }

LABEL_19:
      v6 = 0;
      v8 = v36 + 1;
      v7 = v22;
      v5 = v32;
      if (v36 + 1 == v33)
      {

        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
  }
}

id @nonobjc SPSearchQueryContext.init(search:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x25F89F4C0]();
    OUTLINED_FUNCTION_227_2();
  }

  else
  {
    v2 = 0;
  }

  v4 = [v3 initWithSearchString_];

  return v4;
}

uint64_t outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.photosSceneClassifications.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  OUTLINED_FUNCTION_65_0();
  type metadata accessor for TRIClient(v4, v5, v6);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

uint64_t outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t specialized LocalIndexClient.__allocating_init(searchAgent:itemFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  (*(v17 + 16))(v21, a1, a4);
  (*(v12 + 16))(v15, a2, a5);
  v23 = specialized LocalIndexClient.init(searchAgent:itemFetcher:)(v21, v15, v22, a4, a5, a6, v26);
  (*(v12 + 8))(a2, a5);
  (*(v17 + 8))(a1, a4);
  return v23;
}

uint64_t specialized LocalIndexClient.init(searchAgent:itemFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a4;
  v21 = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v19);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a4);
  v17 = a5;
  v18 = a7;
  v14 = __swift_allocate_boxed_opaque_existential_1Tm(&v16);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  outlined init with take of ResponseOverrideMatcherProtocol(&v19, a3 + 16);
  outlined init with take of ResponseOverrideMatcherProtocol(&v16, a3 + 56);
  return a3;
}

uint64_t _s10OmniSearch0B10ResultItemOWOcTm_3()
{
  OUTLINED_FUNCTION_134();
  v2 = v1(0);
  OUTLINED_FUNCTION_17(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of LocalIndexSearchAgent.search(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 32);
  OUTLINED_FUNCTION_28_0();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_23(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_46_0(v9);

  return v12(v11);
}

uint64_t dispatch thunk of ItemFetcherProtocol.fetchSourceCSSI(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  OUTLINED_FUNCTION_28_0();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  OUTLINED_FUNCTION_84(v8);
  v9 = OUTLINED_FUNCTION_83_13();

  return v11(v9);
}

uint64_t dispatch thunk of LocalIndexClientProtocol.search(spotlightRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 32);
  OUTLINED_FUNCTION_28_0();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_23(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_46_0(v9);

  return v12(v11);
}

uint64_t dispatch thunk of ItemFetcher.fetchSourceCSSI(for:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v4 = *(*v0 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_84(v6);

  return v8(v3);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #2 in closure #2 in ItemFetcher.fetchSourceCSSI(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo16CSSearchableItemCGs5NeverOGMd, &_sScCySaySo16CSSearchableItemCGs5NeverOGMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in closure #2 in ItemFetcher.fetchSourceCSSI(for:)(a1, v1 + v8, v9);
}

uint64_t partial apply for closure #1 in static LocalIndexClient.checkEmbeddingCompleteness()()
{
  OUTLINED_FUNCTION_78();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_103_10();

  return closure #1 in static LocalIndexClient.checkEmbeddingCompleteness()();
}

void OUTLINED_FUNCTION_3_49()
{
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
}

void OUTLINED_FUNCTION_7_39()
{
  *(v0 - 144) = 1;
  *(v0 - 144) = 1;
  *(v0 - 144) = 1;
  *(v0 - 144) = 1;
  *(v0 - 144) = 1;
  *(v0 - 144) = 1;
  *(v0 - 144) = 1;
  *(v0 - 144) = 1;
}

void OUTLINED_FUNCTION_8_37()
{
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
}

__n128 OUTLINED_FUNCTION_16_31()
{
  result = *(v0 - 144);
  *(v0 - 128) = *(v0 - 160);
  *(v0 - 112) = result;
  v2 = *(v0 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_22()
{

  return swift_once();
}

double OUTLINED_FUNCTION_44_21()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_14()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id OUTLINED_FUNCTION_71_16()
{
  v2 = *(v0 - 416);

  return v2;
}

uint64_t OUTLINED_FUNCTION_73_14@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return _s10OmniSearch0B10ResultItemOWOcTm_3();
}

uint64_t OUTLINED_FUNCTION_75_15()
{
  result = *(v0 - 256);
  v3 = *(v1 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_76_13()
{

  return swift_once();
}

id OUTLINED_FUNCTION_77_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return [v3 (v2 + 116)];
}

uint64_t OUTLINED_FUNCTION_79_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_80_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_82_14()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_86_16()
{
  result = v0[91];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[79];
  return result;
}

uint64_t OUTLINED_FUNCTION_89_15()
{
  v1 = *(v0 - 400) + 8;
  result = *(v0 - 408);
  v3 = *(v0 - 1120);
  v4 = *(v0 - 184);
  return result;
}

id OUTLINED_FUNCTION_93_13()
{

  return [v0 attributeSet];
}

uint64_t OUTLINED_FUNCTION_94_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_97_9()
{
  v2 = *(v1 - 384) + 8;
  result = v0;
  v4 = *(v1 - 368);
  v5 = *(v1 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_103_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
  v6 = *(*(v4 - 200) + 28);
  return result;
}

uint64_t OUTLINED_FUNCTION_106_11()
{
  v2 = *(v1 - 272) + 8;
  result = v0;
  v4 = *(v1 - 224);
  return result;
}

void OUTLINED_FUNCTION_108_9()
{
  v1 = *(v0 - 288);
  v2 = *(v0 - 304);
  v3 = *(v0 - 312);
}

uint64_t OUTLINED_FUNCTION_109_14()
{
  *(v1 + *(v0 + 32)) = 1;
  *(v1 + *(v0 + 36)) = 1;
  return v1;
}

void OUTLINED_FUNCTION_110_12(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_114_11()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
}

uint64_t OUTLINED_FUNCTION_126_12()
{
  v2 = *(v0 + 8);
  result = *(v1 - 344);
  v4 = *(v1 - 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_127_13()
{
  v2 = *(v0 + 8);
  result = *(v1 - 792);
  v4 = *(v1 - 784);
  return result;
}

uint64_t OUTLINED_FUNCTION_138_4()
{
  v2 = *(v0 + 8);
  result = *(v1 - 272);
  v4 = *(v1 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_139_8()
{
  v2 = *(v0 + 8);
  result = *(v1 - 936);
  v4 = *(v1 - 928);
  return result;
}

uint64_t OUTLINED_FUNCTION_142_6()
{
  v1 = *(v0 - 184) + 8;
  result = *(v0 - 248);
  v3 = *(v0 - 216);
  return result;
}

id OUTLINED_FUNCTION_160_5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *v9 = a9;
  *(v9 + 4) = v10;
  *a1 = v10;

  return v10;
}

id OUTLINED_FUNCTION_162_7()
{
  v3 = *(v0 + 568);
  v4 = *(v1 - 416);

  return [v4 v3];
}

uint64_t OUTLINED_FUNCTION_163_6()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_164_5(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_165_4()
{
  v2 = *(v0 - 192);
}

uint64_t OUTLINED_FUNCTION_168_5()
{

  return _bridgeAnyObjectToAny(_:)();
}

uint64_t OUTLINED_FUNCTION_169_7()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_170_5@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return outlined init with copy of EagerResolutionService?();
}

uint64_t OUTLINED_FUNCTION_171_5()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_173_5()
{

  return _bridgeAnyObjectToAny(_:)();
}

uint64_t OUTLINED_FUNCTION_174_5()
{
}

id OUTLINED_FUNCTION_175_6()
{

  return [v0 (v1 + 116)];
}

uint64_t OUTLINED_FUNCTION_183_5()
{
  result = *(v0 - 352);
  v2 = *(v0 - 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_184_5()
{
  v1 = *(*(v0 - 128) + 8);
  result = *(v0 - 176);
  v3 = *(v0 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_185_4()
{
  result = *(v0 - 720);
  v2 = *(v0 - 704);
  return result;
}

uint64_t OUTLINED_FUNCTION_186_4@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 216) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_190_7()
{
  result = *(v0 - 520);
  v2 = *(v0 - 504);
  return result;
}

double OUTLINED_FUNCTION_191_7()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_197_6()
{
  v1 = *(v0 - 128);
  v2 = *(v0 - 120) + 8;
  result = *(v0 - 136);
  v4 = *(v0 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_201_5()
{
  result = *(v0 - 448);
  v2 = *(v0 - 432);
  return result;
}

uint64_t OUTLINED_FUNCTION_203_4()
{
  result = v0;
  v3 = *(v1 - 240);
  return result;
}

void OUTLINED_FUNCTION_215_1()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_216_4()
{

  return BidirectionalCollection<>.joined(separator:)();
}

void OUTLINED_FUNCTION_217_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_218_4@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{

  return outlined consume of [String : String].Index._Variant(v2, a1, a2 & 1);
}

uint64_t OUTLINED_FUNCTION_220_4()
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_221_4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_222_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_225_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, a4);
}

id OUTLINED_FUNCTION_226_2()
{
  v2 = *(v0 - 200);

  return v2;
}

uint64_t OUTLINED_FUNCTION_227_2()
{
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF10OmniSearch15SpotlightResultV_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  outlined init with copy of CheckedContinuation<(), Never>?(a1, v20 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of (offset: Int, element: SearchResult)(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    v12 = *(a3 + 24);
    v13 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t *LocalSearchManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_12_35();
  }

  return &static LocalSearchManager.shared;
}

uint64_t DiagnoseticImp.tailspinRequest(_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, Class isa)
{
  v12 = MEMORY[0x25F89F4C0]();
  v13 = MEMORY[0x25F89F4C0](a3, a4);
  v14 = MEMORY[0x25F89F4C0](a5, a6);
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v15 = DRTailspinRequest();

  return v15;
}

id SPClientSession.queryTask(queryContext:)(uint64_t a1)
{
  v2 = [v1 queryTaskWithContext_];

  return v2;
}

id @objc SPClientSession.queryTask(queryContext:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = SPClientSession.queryTask(queryContext:)(v4);

  return v6;
}

uint64_t SpotlightResult.sections.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SpotlightResult.ecrResult.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

OmniSearch::SpotlightResult __swiftcall SpotlightResult.init(sections:ecrResult:)(Swift::OpaquePointer sections, Swift::OpaquePointer ecrResult)
{
  v2->_rawValue = sections._rawValue;
  v2[1]._rawValue = ecrResult._rawValue;
  result.ecrResult = ecrResult;
  result.sections = sections;
  return result;
}

uint64_t LocalSearchManager.__allocating_init(infinitePatience:session:)()
{
  swift_allocObject();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_24_24();

  return specialized LocalSearchManager.init(infinitePatience:session:)(v0, v1, v2);
}

uint64_t static LocalSearchManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_12_35();
  }
}

Swift::Int LocalSearchManager.LocalSearchManagerError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalSearchManager.LocalSearchManagerError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  LocalSearchManager.LocalSearchManagerError.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t LocalSearchManager.init(infinitePatience:session:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_24_24();

  return specialized LocalSearchManager.init(infinitePatience:session:)(v0, v1, v2);
}

Swift::Void __swiftcall LocalSearchManager.deactivate()()
{
  [*(v0 + 16) deactivate];
  v1 = objc_opt_self();
  v2 = [v1 sharedResourcesManager];
  v3 = MEMORY[0x25F89F4C0](0x6867696C746F7053, 0xE900000000000074);
  [v2 loadAllParametersForClient_];

  v4 = [v1 sharedResourcesManager];
  v5 = MEMORY[0x25F89F4C0](0xD000000000000012, 0x800000025DBF70F0);
  [v4 loadAllParametersForClient_];

  v6 = [v1 sharedResourcesManager];
  v7 = MEMORY[0x25F89F4C0](1818845517, 0xE400000000000000);
  [v6 loadAllParametersForClient_];
}

uint64_t LocalSearchManager.search(with:)()
{
  OUTLINED_FUNCTION_48();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for OSSignpostID();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v1, static Logging.searchComponentSignposter);
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[8];
    v6 = OUTLINED_FUNCTION_172();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v7, "LocalSearchManager.search", "", v6, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[9] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v15, static Logging.search);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_172();
    *v18 = 0;
    _os_log_impl(&dword_25D85C000, v16, v17, "LocalSearchManager.search - Starting search", v18, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v19 = v0[3];
  v20 = v0[4];

  v21 = [*(v20 + 16) queryTaskWithQueryContext_];
  v0[10] = v21;
  if (v21)
  {
    v22 = v21;
    v23 = v0[3];
    swift_unknownObjectRetain();
    [v23 currentTime];
    v25 = v24;
    v26 = objc_allocWithZone(type metadata accessor for LocalQueryTask());
    v27 = specialized LocalQueryTask.init(queryTask:startTime:diagnostics:)(v22, v26, v25);
    v0[11] = v27;
    v28 = *((*MEMORY[0x277D85000] & *v27) + 0xE0);
    v42 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    v0[12] = v30;
    *v30 = v0;
    v30[1] = LocalSearchManager.search(with:);
    v31 = v0[2];

    return v42(v31);
  }

  else
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_11(v34))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_9_11(&dword_25D85C000, v35, v36, "LocalSearchManager.search - Failed to create query task");
      OUTLINED_FUNCTION_42_0();
    }

    lazy protocol witness table accessor for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError();
    OUTLINED_FUNCTION_5_12();
    *v37 = 1;
    swift_willThrow();
    v39 = v0[8];
    v38 = v0[9];
    v40 = v0[7];
    $defer #1 () in LocalSearchManager.search(with:)();

    OUTLINED_FUNCTION_127();

    return v41();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);

  swift_unknownObjectRelease();
  $defer #1 () in LocalSearchManager.search(with:)();

  OUTLINED_FUNCTION_127();

  return v5();
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 80);

  swift_unknownObjectRelease();
  v2 = *(v0 + 104);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  $defer #1 () in LocalSearchManager.search(with:)();

  OUTLINED_FUNCTION_127();

  return v6();
}

uint64_t $defer #1 () in LocalSearchManager.search(with:)()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static Logging.searchComponentSignposter);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "LocalSearchManager.search", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

id LocalQueryTask.__allocating_init(queryTask:startTime:diagnostics:)(uint64_t a1, uint64_t *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  OUTLINED_FUNCTION_21_28();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = OUTLINED_FUNCTION_13_27(v9, v14);
  v11(v10);
  v12 = OUTLINED_FUNCTION_19_30();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v12;
}

uint64_t LocalSearchManager.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t LocalSearchManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LocalIndexSearchAgent.search(with:) in conformance LocalSearchManager(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v10(a1, a2);
}

uint64_t decodeECRMapping(from:)(unint64_t a1)
{
  isUniquelyReferenced_nonNull_native = a1;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x25F8A01B0](v36))
  {
    if (i < 1)
    {
      __break(1u);
LABEL_37:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v3 = 0;
    v40 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v4 = MEMORY[0x277D84F98];
    v38 = i;
    v39 = isUniquelyReferenced_nonNull_native;
    while (1)
    {
      if (v40)
      {
        v5 = MEMORY[0x25F89FFD0](v3, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v5 = *(isUniquelyReferenced_nonNull_native + 8 * v3 + 32);
      }

      v6 = v5;
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v7, static Logging.search);
      v8 = v6;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = v4;
        v12 = swift_slowAlloc();
        swift_slowAlloc();
        *v12 = 136643075;
        outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v8, &selRef_fullName);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        String.init<A>(describing:)();
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v12 + 4) = v13;
        *(v12 + 12) = 2085;
        outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v8, &selRef_relationLabel);
        String.init<A>(describing:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v12 + 14) = v14;
        i = v38;
        _os_log_impl(&dword_25D85C000, v9, v10, "decodeECRMapping's Spotlight SPQueryResponse ecrGroundedPersons: %{sensitive}s, %{sensitive}s)", v12, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        v4 = v11;
        isUniquelyReferenced_nonNull_native = v39;
        OUTLINED_FUNCTION_42_0();
      }

      v15 = outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v8, &selRef_fullName);
      if (!v16)
      {
        goto LABEL_19;
      }

      v17 = v15;
      v18 = v16;
      outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v8, &selRef_relationLabel);
      if (!v19)
      {

LABEL_19:

        goto LABEL_26;
      }

      v20 = String.lowercased()();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v4;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)();
      v23 = v4[2];
      v24 = (v22 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v21;
      v27 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
      {
        v28 = specialized __RawDictionaryStorage.find<A>(_:)();
        isUniquelyReferenced_nonNull_native = v39;
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_37;
        }

        v26 = v28;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v39;
      }

      v4 = v41;
      if (v27)
      {
        v30 = (v41[7] + 16 * v26);
        v31 = v30[1];
        *v30 = v17;
        v30[1] = v18;
      }

      else
      {
        v41[(v26 >> 6) + 8] |= 1 << v26;
        *(v41[6] + 16 * v26) = v20;
        v32 = (v41[7] + 16 * v26);
        *v32 = v17;
        v32[1] = v18;
        v33 = v41[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_29;
        }

        v41[2] = v35;
      }

      i = v38;
LABEL_26:
      if (i == ++v3)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    if (isUniquelyReferenced_nonNull_native < 0)
    {
      v36 = isUniquelyReferenced_nonNull_native;
    }

    else
    {
      v36 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t one-time initialization function for kLocalSearchManagerTimeout()
{
  result = AFIsInternalInstall();
  v1 = 5.0;
  if (result)
  {
    v1 = 30.0;
  }

  static LocalQueryTask.kLocalSearchManagerTimeout = *&v1;
  return result;
}

id LocalQueryTask.init(queryTask:startTime:diagnostics:)(uint64_t a1, uint64_t *a2)
{
  v3 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  OUTLINED_FUNCTION_21_28();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = OUTLINED_FUNCTION_13_27(v7, v12);
  v9(v8);
  v10 = OUTLINED_FUNCTION_19_30();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v10;
}

void LocalQueryTask.resumeContinuation()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_lock);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t closure #1 in LocalQueryTask.resumeContinuation()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v16[-v12];
  v14 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_continuation;
  swift_beginAccess();
  outlined init with copy of CheckedContinuation<(), Never>?(a1 + v14, v13, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  if (__swift_getEnumTagSinglePayload(v13, 1, v2))
  {
    outlined destroy of (offset: Int, element: SearchResult)(v13, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  }

  else
  {
    (*(v3 + 16))(v6, v13, v2);
    outlined destroy of (offset: Int, element: SearchResult)(v13, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
    CheckedContinuation.resume(returning:)();
    (*(v3 + 8))(v6, v2);
  }

  __swift_storeEnumTagSinglePayload(v10, 1, 1, v2);
  swift_beginAccess();
  outlined assign with take of CheckedContinuation<(), Never>?(v10, a1 + v14);
  return swift_endAccess();
}

uint64_t LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_48();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_48();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D859B8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = LocalQueryTask.run();
  v4 = *(v0 + 16);

  return MEMORY[0x282200740](v4, &type metadata for SpotlightResult, &type metadata for SpotlightResult, 0, 0, &async function pointer to partial apply for closure #1 in LocalQueryTask.run(), v1, &type metadata for SpotlightResult);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_127();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_127();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t closure #1 in LocalQueryTask.run()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LocalQueryTask.run(), 0, 0);
}

uint64_t closure #1 in LocalQueryTask.run()()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_16_32();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = v4;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF10OmniSearch15SpotlightResultV_s5Error_pTg5(v1, &async function pointer to partial apply for closure #1 in closure #1 in LocalQueryTask.run(), v5);
  v7 = OUTLINED_FUNCTION_34_5();
  outlined destroy of (offset: Int, element: SearchResult)(v7, v8, &_sScPSgMR);
  OUTLINED_FUNCTION_16_32();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v6;
  v9[5] = v2;
  v10 = v6;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF10OmniSearch15SpotlightResultV_s5Error_pTg5(v1, &async function pointer to partial apply for closure #2 in closure #1 in LocalQueryTask.run(), v9);
  v11 = OUTLINED_FUNCTION_34_5();
  outlined destroy of (offset: Int, element: SearchResult)(v11, v12, &_sScPSgMR);
  OUTLINED_FUNCTION_16_32();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF10OmniSearch15SpotlightResultV_s5Error_pTg5(v1, &async function pointer to partial apply for closure #3 in closure #1 in LocalQueryTask.run(), v13);
  v14 = OUTLINED_FUNCTION_34_5();
  outlined destroy of (offset: Int, element: SearchResult)(v14, v15, &_sScPSgMR);
  v16 = *(MEMORY[0x277D85810] + 4);
  v17 = swift_task_alloc();
  v0[12] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgy10OmniSearch15SpotlightResultVs5Error_pGMd, &_sScgy10OmniSearch15SpotlightResultVs5Error_pGMR);
  *v17 = v0;
  OUTLINED_FUNCTION_7_40();

  return MEMORY[0x2822004C0](v0 + 2);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v2 == 255)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v19, static Logging.search);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_11(v21))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_9_11(&dword_25D85C000, v22, v23, "LocalSearchManager.search - Unexpected internal state. All tasks completed without yielding results. Defaulting to empty results.");
      OUTLINED_FUNCTION_42_0();
    }

    v24 = *(v0 + 72);
    v25 = *(v0 + 56);

    v26 = *(v24 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_ecrResult);
    *v25 = MEMORY[0x277D84F90];
    v25[1] = v26;

    goto LABEL_17;
  }

  v3 = *(v0 + 24);
  if ((v2 & 1) == 0)
  {
    v27 = *(v0 + 56);
    v28 = **(v0 + 64);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x25F89FB00](v28, &type metadata for SpotlightResult, v29, MEMORY[0x277D84950]);
    *v27 = v1;
    v27[1] = v3;
LABEL_17:
    v32 = *(v0 + 88);

    OUTLINED_FUNCTION_127();

    return v33();
  }

  *(v0 + 40) = v1;
  v4 = OUTLINED_FUNCTION_34_5();
  outlined copy of Result<SpotlightResult, Error>(v4, v5, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  *(v0 + 48) = v1;
  v6 = OUTLINED_FUNCTION_34_5();
  outlined copy of Result<SpotlightResult, Error>(v6, v7, 1);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_willThrow();
    v30 = OUTLINED_FUNCTION_34_5();
    outlined consume of Result<SpotlightResult, Error>?(v30, v31, v2);
    goto LABEL_17;
  }

  v8 = OUTLINED_FUNCTION_34_5();
  outlined consume of Result<SpotlightResult, Error>?(v8, v9, v2);
  if (*(v0 + 33) == 1)
  {
    if (one-time initialization token for search != -1)
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
      v13 = OUTLINED_FUNCTION_172();
      *v13 = 0;
      _os_log_impl(&dword_25D85C000, v11, v12, "LocalQueryTask.run - Timed out waiting on update", v13, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v14 = *(v0 + 72);

    v15 = *(v14 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_queryTask);
    [v15 setDelegate_];
    [v15 cancel];
    LocalQueryTask.resumeContinuation()();
    lazy protocol witness table accessor for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError();
    OUTLINED_FUNCTION_5_12();
    *v16 = 0;
    swift_willThrow();
    v17 = OUTLINED_FUNCTION_34_5();
    outlined consume of Result<SpotlightResult, Error>?(v17, v18, v2);

    goto LABEL_17;
  }

  v35 = OUTLINED_FUNCTION_34_5();
  outlined consume of Result<SpotlightResult, Error>?(v35, v36, v2);

  v37 = *(MEMORY[0x277D85810] + 4);
  v38 = swift_task_alloc();
  *(v0 + 96) = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgy10OmniSearch15SpotlightResultVs5Error_pGMd, &_sScgy10OmniSearch15SpotlightResultVs5Error_pGMR);
  *v38 = v0;
  OUTLINED_FUNCTION_7_40(v39, v39);

  return MEMORY[0x2822004C0](v0 + 16);
}

{
  return MEMORY[0x2821FEBD8](*(v0 + 104), "_Concurrency/arm64e-apple-ios.private.swiftinterface", 52, 1, 3126);
}

uint64_t closure #1 in closure #1 in LocalQueryTask.run()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in LocalQueryTask.run(), 0, 0);
}

uint64_t closure #1 in closure #1 in LocalQueryTask.run()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  v21 = v20[6];
  v22 = swift_task_alloc();
  v20[7] = v22;
  *(v22 + 16) = v21;
  v23 = *(MEMORY[0x277D859E0] + 4);
  v24 = swift_task_alloc();
  v20[8] = v24;
  *v24 = v20;
  v24[1] = closure #1 in closure #1 in LocalQueryTask.run();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822007B8](v25, v26, v27, v28, 0xE500000000000000, v29, v22, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t closure #1 in closure #1 in LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_72();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v1, static Logging.search);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_11(v3))
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_9_11(&dword_25D85C000, v4, v5, "LocalQueryTask.run - Success!");
    OUTLINED_FUNCTION_42_0();
  }

  v7 = v0[5];
  v6 = v0[6];

  v8 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_sections;
  swift_beginAccess();
  v9 = *(v6 + v8);
  v10 = *(v6 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_ecrResult);
  *v7 = v9;
  v7[1] = v10;
  v12 = v0[1];

  return v12();
}

id closure #1 in closure #1 in closure #1 in LocalQueryTask.run()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_continuation;
  swift_beginAccess();
  outlined assign with take of CheckedContinuation<(), Never>?(v7, a2 + v9);
  swift_endAccess();
  v10 = *(a2 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_queryTask);
  [v10 setDelegate_];
  [v10 setForceStableResults_];
  [v10 setMaxTopHitAppResults_];
  return [v10 start];
}

uint64_t closure #2 in closure #1 in LocalQueryTask.run()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in LocalQueryTask.run(), 0, 0);
}

uint64_t closure #2 in closure #1 in LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 40);
  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  v2 = OUTLINED_FUNCTION_28_23(&async function pointer to specialized Clock.sleep(for:tolerance:));
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = closure #2 in closure #1 in LocalQueryTask.run();
  v3 = *(v0 + 40);
  v4 = OUTLINED_FUNCTION_15_31();

  return v5(v4);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  v8 = v4[3];
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  *(v11 + 56) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_78();
  if (static Task<>.isCancelled.getter())
  {
    v1 = 2;
  }

  else
  {
    LocalQueryTask.submitTailspinRequest(queryStartTime:)(*(*(v0 + 16) + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_startTime));
    v1 = 0;
  }

  lazy protocol witness table accessor for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling();
  OUTLINED_FUNCTION_5_12();
  *v2 = v1;
  swift_willThrow();
  v3 = *(v0 + 40);

  OUTLINED_FUNCTION_127();

  return v4();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_127();

  return v3();
}

uint64_t closure #3 in closure #1 in LocalQueryTask.run()()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #3 in closure #1 in LocalQueryTask.run(), 0, 0);
}

{
  OUTLINED_FUNCTION_78();
  if (one-time initialization token for kLocalSearchManagerTimeout != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  v2 = OUTLINED_FUNCTION_28_23(&async function pointer to specialized Clock.sleep(for:tolerance:));
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = closure #3 in closure #1 in LocalQueryTask.run();
  v3 = *(v0 + 32);
  v4 = OUTLINED_FUNCTION_15_31();

  return v5(v4);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = v4[2];
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  *(v11 + 48) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_78();
  v1 = static Task<>.isCancelled.getter();
  lazy protocol witness table accessor for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling();
  OUTLINED_FUNCTION_5_12();
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  *v2 = v3;
  swift_willThrow();
  v4 = *(v0 + 32);

  OUTLINED_FUNCTION_127();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_127();

  return v3();
}

void LocalQueryTask.submitTailspinRequest(queryStartTime:)(double a1)
{
  v2 = v1;
  v28[33] = *MEMORY[0x277D85DE8];
  if (AFIsInternalInstall())
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logging.search);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_172();
      *v7 = 0;
      _os_log_impl(&dword_25D85C000, v5, v6, "LocalQueryTask.submitTailspinRequest - emitting request to capture tailspin", v7, 2u);
      OUTLINED_FUNCTION_37_0();
    }

    Current = CFAbsoluteTimeGetCurrent();
    v9 = Current - a1 + 2.0;
    if (COERCE_UNSIGNED_INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v9 > -1.0)
    {
      if (v9 < 1.84467441e19)
      {
        if (is_mul_ok(v9, 0x3E8uLL))
        {
          v10 = 1000 * v9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_25DBC8400;
          v12 = MEMORY[0x277D837D0];
          OUTLINED_FUNCTION_22_23();
          v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
          v14 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
          *(inited + 96) = v14;
          *(inited + 72) = v13;
          OUTLINED_FUNCTION_22_23();
          *(inited + 168) = v12;
          *(inited + 144) = 0xD000000000000014;
          *(inited + 152) = 0x800000025DBF6940;
          v28[0] = 0x656D6954776F6ELL;
          v28[1] = 0xE700000000000000;
          OUTLINED_FUNCTION_22_23();
          v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          *(inited + 240) = v14;
          *(inited + 216) = v15;
          v16 = Dictionary.init(dictionaryLiteral:)();
          v17 = *(v2 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_diagnostics + 24);
          v18 = *(v2 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_diagnostics + 32);
          __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_diagnostics), v17);
          v28[0] = 0;
          LOBYTE(v18) = (*(v18 + 8))(0xD000000000000013, 0x800000025DBF7210, 0xD000000000000010, 0x800000025DBF7230, 0xD000000000000020, 0x800000025DBF7250, v16, 1, 1, 0, 0, v28, v17, v18);

          v19 = v28[0];
          v20 = Logger.logObject.getter();
          if (v18)
          {
            v21 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = OUTLINED_FUNCTION_172();
              *v22 = 0;
              _os_log_impl(&dword_25D85C000, v20, v21, "LocalQueryTask.submitTailspinRequest - tailspin request emitted successfully", v22, 2u);
LABEL_15:
              OUTLINED_FUNCTION_42_0();
            }
          }

          else
          {
            v23 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v20, v23))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              v28[0] = v25;
              *v24 = 136315138;
              v19 = v19;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSErrorCSgMd, &_sSo7NSErrorCSgMR);
              String.init<A>(describing:)();
              v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v24 + 4) = v26;
              _os_log_impl(&dword_25D85C000, v20, v23, "LocalQueryTask.submitTailspinRequest - tailspin request failed. Error: %s", v24, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v25);
              OUTLINED_FUNCTION_37_0();
              goto LABEL_15;
            }
          }

          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_17:
  v27 = *MEMORY[0x277D85DE8];
}

uint64_t LocalQueryTask.resultsDidBecomeInvalid(_:)()
{
  v1 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_sections;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x277D84F90];
}

void LocalQueryTask.didReceive(_:)(void *a1)
{
  v2 = v1;
  v4 = [a1 state];
  if ([a1 kind] > 1)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v21, static Logging.search);
    v22 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136315138;
      [v22 kind];
      type metadata accessor for SPResponseKind(0);
      String.init<A>(describing:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v16 + 4) = v23;
      v20 = "LocalQueryTask received response of unknown kind: %s";
      goto LABEL_10;
    }
  }

  else
  {
    v5 = [a1 resultSections];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFResultSection, 0x277D4C588);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    specialized Array.append<A>(contentsOf:)(v6);
    swift_endAccess();
    v7 = [a1 ecrGroundedPersons];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SPECRGroundedPerson, 0x277D65858);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = decodeECRMapping(from:)(v8);

    v10 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_ecrResult;
    v11 = *&v2[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_ecrResult];
    *&v2[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_ecrResult] = v9;

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v12, static Logging.search);
    v13 = v2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136642819;
      v18 = *&v2[v10];

      Dictionary.description.getter();

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v16 + 4) = v19;
      v20 = "Spotlight ECR output is: %{sensitive}s)";
LABEL_10:
      _os_log_impl(&dword_25D85C000, v14, v15, v20, v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37_0();
    }
  }

  if (v4 == 4)
  {
    LocalQueryTask.resumeContinuation()();
  }
}

id LocalQueryTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocalQueryTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalQueryTask();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = specialized Clock.sleep(for:tolerance:);
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  OUTLINED_FUNCTION_11();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {
    v17 = v3[10];
    v16 = v3[11];

    OUTLINED_FUNCTION_127();

    return v18();
  }
}

{
  OUTLINED_FUNCTION_48();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_127();
  v4 = v0[15];

  return v3();
}

uint64_t outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id specialized LocalQueryTask.init(queryTask:startTime:diagnostics:)(uint64_t a1, char *a2, double a3)
{
  v15[3] = &type metadata for DiagnoseticImp;
  v15[4] = &protocol witness table for DiagnoseticImp;
  v6 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_ecrResult;
  v7 = MEMORY[0x277D84F90];
  *&a2[v6] = Dictionary.init(dictionaryLiteral:)();
  v8 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_continuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  __swift_storeEnumTagSinglePayload(&a2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&a2[v10] = v11;
  *&a2[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_sections] = v7;
  *&a2[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_queryTask] = a1;
  *&a2[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_startTime] = a3;
  outlined init with copy of ChatMessageRecord(v15, &a2[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_diagnostics]);
  v14.receiver = a2;
  v14.super_class = type metadata accessor for LocalQueryTask();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v12;
}

id specialized LocalQueryTask.init(queryTask:startTime:diagnostics:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, double a6)
{
  v21[3] = a4;
  v21[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v21);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  v12 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_ecrResult;
  v13 = MEMORY[0x277D84F90];
  *&a3[v12] = Dictionary.init(dictionaryLiteral:)();
  v14 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_continuation;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  __swift_storeEnumTagSinglePayload(&a3[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *&a3[v16] = v17;
  *&a3[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_sections] = v13;
  *&a3[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_queryTask] = a1;
  *&a3[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_startTime] = a6;
  outlined init with copy of ChatMessageRecord(v21, &a3[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_diagnostics]);
  v20.receiver = a3;
  v20.super_class = type metadata accessor for LocalQueryTask();
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v18;
}

uint64_t specialized LocalSearchManager.init(infinitePatience:session:)(char a1, void *a2, uint64_t a3)
{
  *(a3 + 16) = a2;
  swift_unknownObjectRetain();
  [a2 setInfinitePatience_];
  v6 = objc_opt_self();
  v7 = [v6 sharedResourcesManager];
  v8 = MEMORY[0x25F89F4C0](0x6867696C746F7053, 0xE900000000000074);
  [v7 loadAllParametersForClient_];

  v9 = [v6 sharedResourcesManager];
  v10 = MEMORY[0x25F89F4C0](0xD000000000000012, 0x800000025DBF70F0);
  [v9 loadAllParametersForClient_];

  v11 = [v6 sharedResourcesManager];
  v12 = MEMORY[0x25F89F4C0](1818845517, 0xE400000000000000);
  [v11 loadAllParametersForClient_];

  return a3;
}

{
  *(a3 + 16) = a2;
  swift_unknownObjectRetain();
  [a2 setInfinitePatience_];
  v6 = objc_opt_self();
  v7 = [v6 sharedResourcesManager];
  v8 = MEMORY[0x25F89F4C0](0x6867696C746F7053, 0xE900000000000074);
  [v7 loadAllParametersForClient_];

  v9 = [v6 sharedResourcesManager];
  v10 = MEMORY[0x25F89F4C0](0xD000000000000012, 0x800000025DBF70F0);
  [v9 loadAllParametersForClient_];

  v11 = [v6 sharedResourcesManager];
  v12 = MEMORY[0x25F89F4C0](1818845517, 0xE400000000000000);
  [v11 loadAllParametersForClient_];
  swift_unknownObjectRelease();

  return a3;
}

unint64_t lazy protocol witness table accessor for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError()
{
  result = lazy protocol witness table cache variable for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError;
  if (!lazy protocol witness table cache variable for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError;
  if (!lazy protocol witness table cache variable for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError);
  }

  return result;
}

uint64_t type metadata accessor for LocalQueryTask()
{
  result = type metadata singleton initialization cache for LocalQueryTask;
  if (!type metadata singleton initialization cache for LocalQueryTask)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_78();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_246(v4);

  return closure #1 in LocalQueryTask.run()(v6, v7, v2, v1);
}

uint64_t dispatch thunk of LocalSearchManager.search(with:)()
{
  OUTLINED_FUNCTION_72();
  v1 = *(*v0 + 120);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_246(v4);

  return v8(v6);
}

_BYTE *storeEnumTagSinglePayload for LocalSearchManager.LocalSearchManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for LocalQueryTask()
{
  type metadata accessor for CheckedContinuation<(), Never>?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_78();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xE0);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_23(v5);
  *v6 = v7;
  v6[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v9(v2);
}

void type metadata accessor for CheckedContinuation<(), Never>?()
{
  if (!lazy cache variable for type metadata for CheckedContinuation<(), Never>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CheckedContinuation<(), Never>?);
    }
  }
}

uint64_t partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t outlined assign with take of CheckedContinuation<(), Never>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_78();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_23(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_41(v5);

  return closure #1 in closure #1 in LocalQueryTask.run()(v7, v8, v9, v3);
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t partial apply for closure #2 in closure #1 in LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_23(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_5_41(v6);

  return closure #2 in closure #1 in LocalQueryTask.run()(v8, v9, v10, v4);
}