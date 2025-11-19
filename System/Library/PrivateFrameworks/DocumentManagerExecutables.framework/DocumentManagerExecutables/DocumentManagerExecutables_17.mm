uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v26 = a5;
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 32 * a3 - 32);
    v8 = result - a3;
LABEL_4:
    v22 = v7;
    v23 = a3;
    v9 = (v6 + 32 * a3);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    v21 = v8;
    while (1)
    {
      v25[0] = v10;
      v25[1] = v11;
      v25[2] = v12;
      v25[3] = v13;
      v14 = v7[1];
      v15 = v7[2];
      v16 = v7[3];
      v24[0] = *v7;
      v24[1] = v14;
      v24[2] = v15;
      v24[3] = v16;

      v17 = closure #2 in DOCNodeMetadataContent.orderedMetadata.getter(v25, v24, v26);

      if (v5)
      {
        break;
      }

      if (v17)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v7[4];
        v11 = v7[5];
        v12 = v7[6];
        v13 = v7[7];
        v18 = *(v7 + 1);
        *(v7 + 2) = *v7;
        *(v7 + 3) = v18;
        *v7 = v10;
        v7[1] = v11;
        v7[2] = v12;
        v7[3] = v13;
        v7 -= 4;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v23 + 1;
      v7 = v22 + 4;
      v8 = v21 - 1;
      if (v23 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5label_SS5valuetMd);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v9[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t specialized MutableCollection<>.sort(by:)(void **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

void specialized DOCNodeMetadataContent.orderedMetadata.getter(void *a1, void *a2, void *a3)
{
  v3 = a1;
  if (!a1)
  {
    if (a2)
    {
      v3 = a2;
      v4 = a2;
    }

    else
    {
      if (!a3)
      {
        return;
      }

      v3 = a3;
    }

    a1 = 0;
  }

  v5 = a1;
  v6 = [v3 metadataValues];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = [v3 displaySortOrder];
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v39 = MEMORY[0x277D84F90];
  v36 = v7;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v7 + 64;
  v14 = v12 & *(v7 + 64);
  v15 = (v11 + 63) >> 6;
  if (v14)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v16 >= v15)
    {
      break;
    }

    v14 = *(v13 + 8 * v16);
    ++v9;
    if (v14)
    {
      v9 = v16;
      do
      {
LABEL_14:
        v17 = (v9 << 10) | (16 * __clz(__rbit64(v14)));
        v18 = (*(v36 + 48) + v17);
        v19 = v18[1];
        v37 = *v18;
        v20 = (*(v36 + 56) + v17);
        v21 = *v20;
        v22 = v20[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
        }

        v24 = v10[2];
        v23 = v10[3];
        if (v24 >= v23 >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v10);
        }

        v14 &= v14 - 1;
        v10[2] = v24 + 1;
        v25 = &v10[4 * v24];
        v25[4] = v37;
        v25[5] = v19;
        v25[6] = v21;
        v25[7] = v22;
        v39 = v10;
      }

      while (v14);
    }
  }

  v26 = v10[2];
  if (!v26)
  {
LABEL_35:

    specialized MutableCollection<>.sort(by:)(&v39, v38);
    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();
    return;
  }

  v27 = 0;
  while (v27 < v10[2])
  {
    v30 = &v10[4 * v27 + 4];
    v31 = *v30;
    v32 = v30[1];
    v33 = *(v38 + 16);
    v34 = (v38 + 40);
    if (v33)
    {
      while (1)
      {
        v35 = *(v34 - 1) == v31 && *v34 == v32;
        if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v34 += 2;
        if (!--v33)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      v28 = one-time initialization token for UI;
      swift_bridgeObjectRetain_n();

      if (v28 != -1)
      {
        swift_once();
      }

      static os_log_type_t.fault.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_249B9A480;
      *(v29 + 56) = MEMORY[0x277D837D0];
      *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v29 + 32) = v31;
      *(v29 + 40) = v32;
      os_log(_:dso:log:type:_:)();
    }

    if (++v27 == v26)
    {
      goto LABEL_35;
    }
  }

LABEL_38:
  __break(1u);
}

uint64_t specialized DOCMetadataKey.formattedDateString(with:)(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v30 - v9;
  v11 = objc_opt_self();
  v12 = [v11 distantPast];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v12) = specialized Sequence<>.contains(_:)(v10, a1);
  v13 = *(v3 + 8);
  v13(v10, v2);
  if ((v12 & 1) == 0)
  {
    v14 = [v11 distantFuture];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v14) = specialized Sequence<>.contains(_:)(v10, a1);
    v13(v10, v2);
    if ((v14 & 1) == 0)
    {
      if (a1[2] == 1)
      {
        v16 = objc_opt_self();
        isa = Date._bridgeToObjectiveC()().super.isa;
        v18 = [v16 longDateStringFromDate_];

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v19;
      }

      v31 = a1;

      specialized MutableCollection<>.sort(by:)(&v31);
      v20 = v31[2];
      if (v20)
      {
        v22 = *(v3 + 16);
        v21 = v3 + 16;
        v23 = v31 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
        v22(v6, v23, v2);
        v22(v10, &v23[*(v21 + 56) * (v20 - 1)], v2);

        v24 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
        v25 = MEMORY[0x24C1FAD20](0x644D4D4D79, 0xE500000000000000);
        [v24 setDateTemplate_];

        v26 = Date._bridgeToObjectiveC()().super.isa;
        v27 = Date._bridgeToObjectiveC()().super.isa;
        v28 = [v24 stringFromDate:v26 toDate:v27];

        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13(v10, v2);
        v13(v6, v2);
        return v29;
      }
    }
  }

  return 0;
}

void specialized DOCMetadataKey.value(for:in:layoutDirection:completion:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, NSObject *a8, unint64_t a9, void *a10, void *a11, uint64_t a12)
{
  v404 = a8;
  v399._object = a7;
  v399._countAndFlagsBits = a6;
  v405 = a5;
  v400 = a4;
  v388 = a3;
  v398 = a2;
  v413 = a1;
  v403 = a12;
  v402 = a11;
  v406 = a10;
  v411 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v401 = (&v387 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v387 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v387 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v387 - v25;
  MEMORY[0x28223BE20](v27, v28);
  ObjectType = &v387 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v387 - v33;
  v35 = type metadata accessor for Date();
  v412 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v36);
  v409 = &v387 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v410 = &v387 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v408 = &v387 - v43;
  v394 = type metadata accessor for DispatchWorkItemFlags();
  v393 = *(v394 - 8);
  MEMORY[0x28223BE20](v394, v44);
  v391 = &v387 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = type metadata accessor for DispatchQoS();
  v390 = *(v392 - 8);
  MEMORY[0x28223BE20](v392, v46);
  v389 = &v387 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v397 = type metadata accessor for UTType();
  v396 = *(v397 - 1);
  MEMORY[0x28223BE20](v397, v48);
  v395 = &v387 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = swift_allocObject();
  v51 = DOCLocalizedMetadataStringForUnavailablePropertyValue();
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  *(v50 + 16) = v52;
  *(v50 + 24) = v54;
  v55 = v405;
  v407 = v50;
  if (v405 <= 5)
  {
    if (v405 <= 2)
    {
      v56 = v413;
      if (v405)
      {
        if (v405 == 1)
        {
          v157 = (*((*MEMORY[0x277D85000] & *v398) + 0x128))();
          if (v157)
          {
            swift_unknownObjectRelease();
          }

          v158 = DOCMetadataKey.localizedTitle.getter(v400, 1, v399._countAndFlagsBits, v399._object);
          specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v158, v159, 0, 0, 0, v157 == 0, v404, v411, v406, v402);

          return;
        }

        if (v405 == 2)
        {
          v50 = v413 >> 62;
          if (v413 >> 62)
          {
            goto LABEL_278;
          }

          v57 = *((v413 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v35 = v407;
          if (v57 == 1)
          {
            goto LABEL_8;
          }

LABEL_281:
          if (v57 > 1)
          {
LABEL_293:
            v282 = v400;
            v283 = DOCMetadataKey.localizedTitle.getter(v400, 2, v399._countAndFlagsBits, v399._object);
            v285 = v284;
            v286 = DOCMetadataKey.placeholderValue.getter(v282, 2);
            v288 = v287;
            v289 = objc_allocWithZone(MEMORY[0x277CCA898]);
            v290 = MEMORY[0x24C1FAD20](v286, v288);

            v291 = [v289 initWithString_];

            specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v283, v285, v291, 0, 0, 1, v404, v411, v406, v402);

            v292 = dispatch_group_create();
            v293 = swift_allocObject();
            v411 = v293;
            *(v293 + 16) = 0;
            v294 = (v293 + 16);
            v295 = swift_allocObject();
            v410 = v295;
            *(v295 + 16) = 1;
            v296 = (v295 + 16);
            v297 = v413;
            if (v50)
            {
              v298 = __CocoaSet.count.getter();
            }

            else
            {
              v298 = *((v413 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            swift_beginAccess();
            v299 = swift_beginAccess();
            if (v298)
            {
              v300 = 0;
              v301 = (v297 & 0xC000000000000001);
              v412 = v297 & 0xFFFFFFFFFFFFFF8;
              v408 = v294;
              v409 = v296;
              v406 = (v297 & 0xC000000000000001);
              do
              {
                if (v301)
                {
                  v299 = MEMORY[0x24C1FC540](v300, v297);
                  v302 = v299;
                  v303 = v300 + 1;
                  if (__OFADD__(v300, 1))
                  {
LABEL_312:
                    __break(1u);
                    break;
                  }
                }

                else
                {
                  if (v300 >= *(v412 + 16))
                  {
                    __break(1u);
LABEL_320:
                    __break(1u);
LABEL_321:
                    if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
                    {
                      goto LABEL_289;
                    }

LABEL_23:
                    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (ObjectType & 0xC000000000000001) == 0, ObjectType);
                    if ((ObjectType & 0xC000000000000001) != 0)
                    {
                      MEMORY[0x24C1FC540](0, ObjectType);
                    }

                    else
                    {
                      swift_unknownObjectRetain();
                    }

                    swift_getObjectType();
                    if (DOCNode.areDiskPropertiesSupported.getter())
                    {
                      v77 = v400;
                      object = v399._object;
                      countAndFlagsBits = v399._countAndFlagsBits;
                      v80 = DOCMetadataKey.localizedTitle.getter(v400, 8, v399._countAndFlagsBits, v399._object);
                      v82 = v81;
                      v83 = DOCMetadataKey.placeholderValue.getter(v77, 8);
                      v85 = v84;
                      v86 = objc_allocWithZone(MEMORY[0x277CCA898]);
                      v87 = MEMORY[0x24C1FAD20](v83, v85);

                      v88 = [v86 initWithString_];

                      specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v80, v82, v88, 0, 0, 1, v404, v411, v406, v402);

                      v89 = swift_allocObject();
                      swift_unknownObjectWeakInit();
                      v90 = swift_allocObject();
                      v90[2] = v89;
                      v90[3] = v77;
                      v90[4] = 8;
                      v90[5] = countAndFlagsBits;
                      v91 = v407;
                      v90[6] = object;
                      v90[7] = v91;
                      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);

                      v92 = static OS_dispatch_queue.main.getter();
                      v413 = v92;
                      v93 = partial apply for closure #9 in DOCMetadataKey.value(for:in:layoutDirection:completion:);
                      goto LABEL_147;
                    }

LABEL_208:
                    swift_unknownObjectRelease();
                    goto LABEL_289;
                  }

                  v302 = *(v297 + 8 * v300 + 32);
                  v299 = swift_unknownObjectRetain();
                  v303 = v300 + 1;
                  if (__OFADD__(v300, 1))
                  {
                    goto LABEL_312;
                  }
                }

                dispatch_group_enter(v292);
                ObjectType = swift_getObjectType();
                if (([v302 isFolder] & 1) != 0 || (v304 = objc_msgSend(v302, sel_fileSize)) == 0)
                {
                  if ([v302 isFolder] && (DOCNode.isFolderSizingSupported.getter() & 1) != 0)
                  {
                    v307 = swift_allocObject();
                    v308 = v298;
                    v309 = v292;
                    v310 = v410;
                    v307[2] = v411;
                    v307[3] = v310;
                    v307[4] = v309;
                    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);

                    v292 = v309;
                    v298 = v308;

                    v311 = v292;
                    v312 = static OS_dispatch_queue.main.getter();
                    DOCNode.performFolderSizingIfSupported(handlerQueue:_:)(v312, partial apply for closure #1 in closure #3 in DOCMetadataKey.value(for:in:layoutDirection:completion:), v307, ObjectType);
                    v294 = v408;
                    v296 = v409;

                    v301 = v406;
                  }

                  else
                  {
                    *v296 = 0;
                    dispatch_group_leave(v292);
                  }
                }

                else
                {
                  v305 = v304;
                  v306 = [v304 longLongValue];
                  if (__OFADD__(*v294, v306))
                  {
                    goto LABEL_320;
                  }

                  *v294 += v306;
                  dispatch_group_leave(v292);
                }

                v299 = swift_unknownObjectRelease();
                ++v300;
                v297 = v413;
              }

              while (v303 != v298);
            }

            v313 = v398;
            if (*(v398 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForInitialMetadataLoad))
            {
              *(v398 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing) = 0;
            }

            else
            {
              v314 = *(v398 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing);
              *(v398 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing) = 0;
              if (v314)
              {
                v315 = (*((*MEMORY[0x277D85000] & *v313) + 0x128))(v299);
                if (v315)
                {
                  [v315 metadataViewDidFinishPreheat_];
                  swift_unknownObjectRelease();
                }
              }
            }

            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v413 = static OS_dispatch_queue.main.getter();
            v316 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v317 = swift_allocObject();
            v318 = v411;
            v319 = v407;
            v317[2] = v410;
            v317[3] = v319;
            v317[4] = v318;
            v317[5] = v316;
            v320 = v400;
            v317[6] = v400;
            v317[7] = 2;
            v321 = v399._object;
            v317[8] = v399._countAndFlagsBits;
            v317[9] = v321;
            v422 = partial apply for closure #4 in DOCMetadataKey.value(for:in:layoutDirection:completion:);
            v423 = v317;
            aBlock._countAndFlagsBits = MEMORY[0x277D85DD0];
            aBlock._object = 1107296256;
            v420 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            v421 = &block_descriptor_168;
            v322 = _Block_copy(&aBlock);
            outlined copy of DOCMetadataKey(v320, 2uLL);

            v323 = v389;
            static DispatchQoS.unspecified.getter();
            v414 = MEMORY[0x277D84F90];
            lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
            lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
            v324 = v391;
            v325 = v394;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v326 = v413;
            OS_dispatch_group.notify(qos:flags:queue:execute:)();
            _Block_release(v322);

            (*(v393 + 8))(v324, v325);
            (*(v390 + 8))(v323, v392);

            goto LABEL_292;
          }

LABEL_282:
          if (v50)
          {
            goto LABEL_284;
          }

          v280 = *((v413 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_285:
          if (!v280)
          {
            goto LABEL_289;
          }

          v35 = v413;
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v413 & 0xC000000000000001) == 0, v413);
          if ((v35 & 0xC000000000000001) == 0)
          {
            swift_unknownObjectRetain();
            goto LABEL_288;
          }

LABEL_379:
          MEMORY[0x24C1FC540](0, v35);
LABEL_288:
          swift_getObjectType();
          v281 = DOCNode.areDiskPropertiesSupported.getter();
          swift_unknownObjectRelease();
          if (v281)
          {
            goto LABEL_289;
          }

          goto LABEL_293;
        }

LABEL_152:
        v193 = String.init(_:)(*MEMORY[0x277CD3388]);
        if (v193._countAndFlagsBits == v400 && v193._object == v55)
        {
        }

        else
        {
          v204 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v204 & 1) == 0)
          {
            goto LABEL_212;
          }
        }

        v205 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BD07A0);
        v206 = [objc_opt_self() bundleWithIdentifier_];

        if (v206)
        {
          v207 = v399._object;
          v208 = v399._countAndFlagsBits;
          aBlock = v399;
          v417 = 0x2F2F3A7370747468;
          v418 = 0xE800000000000000;
          v415 = 0x2F2F3A70747468;
          v416 = 0xE700000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v209 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v210 = MEMORY[0x24C1FAD20](v209);

          v211 = MEMORY[0x24C1FAD20](0x536567616D494743, 0xED0000656372756FLL);
          v212 = [v206 localizedStringForKey:v210 value:0 table:v211];

          v213 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v215 = v214;

          v216 = v207;
          v217 = v208;
LABEL_213:
          v218 = DOCMetadataKey.localizedTitle.getter(v400, v55, v217, v216);
          v220 = v219;
          v221 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v222 = MEMORY[0x24C1FAD20](v213, v215);

          v223 = [v221 initWithString_];

          specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v218, v220, v223, 0, 0, 0, v404, v411, v406, v402);

          return;
        }

LABEL_212:
        v216 = v399._object;

        v217 = v399._countAndFlagsBits;
        v213 = v399._countAndFlagsBits;
        v215 = v216;
        goto LABEL_213;
      }

      if (v413 >> 62)
      {
        v109 = __CocoaSet.count.getter();
        if (v109 == 1)
        {
          v330 = __CocoaSet.count.getter();
          v56 = v413;
          if (v330)
          {
            goto LABEL_58;
          }
        }

        aBlock._countAndFlagsBits = MEMORY[0x277D84F90];
        v224 = __CocoaSet.count.getter();
        v56 = v413;
        if (v224)
        {
LABEL_215:
          v225 = 0;
          v50 = v56 & 0xC000000000000001;
          ObjectType = v56 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if (v50)
            {
              v226 = MEMORY[0x24C1FC540](v225, v413);
              v227 = v225 + 1;
              if (__OFADD__(v225, 1))
              {
                goto LABEL_225;
              }
            }

            else
            {
              if (v225 >= *(ObjectType + 16))
              {
                goto LABEL_277;
              }

              v226 = *(v413 + 8 * v225 + 32);
              swift_unknownObjectRetain();
              v227 = v225 + 1;
              if (__OFADD__(v225, 1))
              {
LABEL_225:
                __break(1u);
                goto LABEL_226;
              }
            }

            if ([v226 isFolder])
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            ++v225;
          }

          while (v227 != v224);
          v35 = aBlock._countAndFlagsBits;
          goto LABEL_334;
        }
      }

      else
      {
        v109 = *((v413 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v109 == 1)
        {
LABEL_58:
          if ((v56 & 0xC000000000000001) != 0)
          {
            v110 = MEMORY[0x24C1FC540](0);
            goto LABEL_61;
          }

          if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v110 = *(v56 + 32);
            swift_unknownObjectRetain();
LABEL_61:
            swift_getObjectType();
            v111 = [v110 contentType];
            v112 = v395;
            static UTType._unconditionallyBridgeFromObjectiveC(_:)();

            v113 = UTType.capitalizedSentenceLocalizedDescription.getter();
            v115 = v114;
            (*(v396 + 8))(v112, v397);
            aBlock._countAndFlagsBits = v113;
            aBlock._object = v115;
            if ((DOCNode.areDiskPropertiesSupported.getter() & 1) == 0)
            {
              goto LABEL_64;
            }

            v116 = _DocumentManagerBundle();
            if (v116)
            {
              v117 = v116;
              v426._object = 0x8000000249BD0910;
              v118._countAndFlagsBits = 0x656D756C6F56;
              v119.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v119.value._object = 0xEB00000000656C62;
              v426._countAndFlagsBits = 0xD000000000000058;
              v118._object = 0xE600000000000000;
              v120._countAndFlagsBits = 0;
              v120._object = 0xE000000000000000;
              v121 = NSLocalizedString(_:tableName:bundle:value:comment:)(v118, v119, v117, v120, v426);

              aBlock = v121;
              v115 = v121._object;
LABEL_64:
              v122 = [v110 cachedDomain];
              if (v122)
              {
                v123 = v122;
                v124 = [v122 isUsingFPFS];

                if (v124)
                {
                  if ([v110 isRootItem] && DOCIsInternalBuild() && v115)
                  {
                    MEMORY[0x24C1FAEA0](0xD000000000000010, 0x8000000249BD08F0);
                    v115 = aBlock._object;
                  }
                }
              }

              v125 = DOCMetadataKey.localizedTitle.getter(v400, 0, v399._countAndFlagsBits, v399._object);
              v127 = v126;
              if (v115)
              {
                v128 = aBlock._countAndFlagsBits;
                v129 = v115;
LABEL_246:
                v251 = objc_allocWithZone(MEMORY[0x277CCA898]);

                v252 = MEMORY[0x24C1FAD20](v128, v129);

                v253 = [v251 initWithString_];

                specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v125, v127, v253, 0, 0, 0, v404, v411, v406, v402);

                swift_unknownObjectRelease();
                return;
              }

              v245 = _DocumentManagerBundle();
              if (v245)
              {
                v246 = v245;
                v427._object = 0x8000000249BD08D0;
                v247._countAndFlagsBits = 0x746E656D75636F44;
                v248.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                v248.value._object = 0xEB00000000656C62;
                v427._countAndFlagsBits = 0xD000000000000012;
                v247._object = 0xE800000000000000;
                v249._countAndFlagsBits = 0;
                v249._object = 0xE000000000000000;
                v250 = NSLocalizedString(_:tableName:bundle:value:comment:)(v247, v248, v246, v249, v427);
                v128 = v250._countAndFlagsBits;
                v129 = v250._object;

                goto LABEL_246;
              }

              goto LABEL_391;
            }

LABEL_390:

            __break(1u);
LABEL_391:

            __break(1u);
            goto LABEL_392;
          }

          goto LABEL_376;
        }

        aBlock._countAndFlagsBits = MEMORY[0x277D84F90];
        v224 = *((v413 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v224)
        {
          goto LABEL_215;
        }
      }

      v35 = MEMORY[0x277D84F90];
LABEL_334:
      v331 = specialized Array.count.getter(v35);

      v332 = v109 - v331;
      if (__OFSUB__(v109, v331))
      {
LABEL_378:
        __break(1u);
        goto LABEL_379;
      }

      v333 = MEMORY[0x277D83B88];
      if (v332 <= 0)
      {
        v344 = MEMORY[0x277D84F90];
        if (v331 < 1)
        {
LABEL_348:
          v360 = DOCMetadataKey.localizedTitle.getter(v400, 0, v399._countAndFlagsBits, v399._object);
          v362 = v361;
          aBlock._countAndFlagsBits = v344;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
          v363 = BidirectionalCollection<>.joined(separator:)();
          v365 = v364;

          v366 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v367 = MEMORY[0x24C1FAD20](v363, v365);

          v368 = [v366 initWithString_];

          specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v360, v362, v368, 0, 0, 0, v404, v411, v406, v402);

          return;
        }

        goto LABEL_342;
      }

      v334 = _DocumentManagerBundle();
      if (v334)
      {
        v335 = v334;
        v428._object = 0x8000000249BD0880;
        v336._countAndFlagsBits = 0x75636F6420756C25;
        v336._object = 0xED000073746E656DLL;
        v428._countAndFlagsBits = 0xD00000000000004CLL;
        v337.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v337.value._object = 0xEB00000000656C62;
        v338._countAndFlagsBits = 0;
        v338._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v336, v337, v335, v338, v428);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v339 = swift_allocObject();
        *(v339 + 16) = xmmword_249B9A480;
        v340 = v333;
        *(v339 + 56) = v333;
        *(v339 + 64) = MEMORY[0x277D83C10];
        *(v339 + 32) = v332;
        v341 = static String.localizedStringWithFormat(_:_:)();
        v343 = v342;

        v344 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        v346 = *(v344 + 2);
        v345 = *(v344 + 3);
        if (v346 >= v345 >> 1)
        {
          v344 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v345 > 1), v346 + 1, 1, v344);
        }

        *(v344 + 2) = v346 + 1;
        v347 = &v344[16 * v346];
        *(v347 + 4) = v341;
        *(v347 + 5) = v343;
        v333 = v340;
        if (v331 < 1)
        {
          goto LABEL_348;
        }

LABEL_342:
        v348 = _DocumentManagerBundle();
        if (v348)
        {
          v349 = v348;
          v429._object = 0x8000000249BD0830;
          v350._countAndFlagsBits = 0x646C6F6620756C25;
          v350._object = 0xEB00000000737265;
          v429._countAndFlagsBits = 0xD00000000000004ALL;
          v351.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v351.value._object = 0xEB00000000656C62;
          v352._countAndFlagsBits = 0;
          v352._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v350, v351, v349, v352, v429);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v353 = swift_allocObject();
          *(v353 + 16) = xmmword_249B9A480;
          *(v353 + 56) = v333;
          *(v353 + 64) = MEMORY[0x277D83C10];
          *(v353 + 32) = v331;
          v354 = static String.localizedStringWithFormat(_:_:)();
          v356 = v355;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v344 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v344 + 2) + 1, 1, v344);
          }

          v358 = *(v344 + 2);
          v357 = *(v344 + 3);
          if (v358 >= v357 >> 1)
          {
            v344 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v357 > 1), v358 + 1, 1, v344);
          }

          *(v344 + 2) = v358 + 1;
          v359 = &v344[16 * v358];
          *(v359 + 4) = v354;
          *(v359 + 5) = v356;
          goto LABEL_348;
        }

LABEL_389:

        __break(1u);
        goto LABEL_390;
      }

LABEL_388:

      __break(1u);
      goto LABEL_389;
    }

    v50 = v413;
    if (v405 != 3)
    {
      if (v405 != 4)
      {
        if (v413 >> 62)
        {
          v94 = __CocoaSet.count.getter();
          if (v94)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v94 = *((v413 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v94)
          {
LABEL_31:
            v95 = 0;
            v408 = (v50 & 0xFFFFFFFFFFFFFF8);
            v409 = (v50 & 0xC000000000000001);
            v401 = (v412 + 56);
            v50 = v412 + 48;
            v96 = MEMORY[0x277D84F90];
            v405 = v412 + 32;
            v398 = v94;
            while (1)
            {
              if (v409)
              {
                ObjectType = MEMORY[0x24C1FC540](v95, v413);
                v97 = v95 + 1;
                if (__OFADD__(v95, 1))
                {
                  goto LABEL_270;
                }
              }

              else
              {
                if (v95 >= *(v408 + 2))
                {
                  goto LABEL_273;
                }

                ObjectType = *(v413 + 8 * v95 + 32);
                swift_unknownObjectRetain();
                v97 = v95 + 1;
                if (__OFADD__(v95, 1))
                {
LABEL_270:
                  __break(1u);
                  goto LABEL_271;
                }
              }

              v98 = [ObjectType modificationDate];
              if (v98)
              {
                v99 = v98;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v100 = 0;
              }

              else
              {
                v100 = 1;
              }

              swift_unknownObjectRelease();
              (*v401)(v22, v100, 1, v35);
              outlined init with take of Date?(v22, v26);
              if ((*v50)(v26, 1, v35) == 1)
              {
                outlined destroy of CharacterSet?(v26, &_s10Foundation4DateVSgMd);
              }

              else
              {
                v101 = *v405;
                (*v405)(v410, v26, v35);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 2) + 1, 1, v96);
                }

                v103 = *(v96 + 2);
                v102 = *(v96 + 3);
                ObjectType = v103 + 1;
                if (v103 >= v102 >> 1)
                {
                  v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v102 > 1, v103 + 1, 1, v96);
                }

                *(v96 + 2) = ObjectType;
                v101(&v96[((*(v412 + 80) + 32) & ~*(v412 + 80)) + *(v412 + 72) * v103], v410, v35);
                v94 = v398;
              }

              ++v95;
              if (v97 == v94)
              {
                goto LABEL_326;
              }
            }
          }
        }

        v96 = MEMORY[0x277D84F90];
LABEL_326:
        v327 = specialized DOCMetadataKey.formattedDateString(with:)(v96);
        v329 = v328;

        v231 = v407;
        if (v329)
        {
          *(v407 + 16) = v327;
          *(v231 + 24) = v329;
        }

        v232 = v400;
        v233 = 5;
LABEL_364:
        v373 = DOCMetadataKey.localizedTitle.getter(v232, v233, v399._countAndFlagsBits, v399._object);
        v375 = v374;
        v376 = *(v231 + 16);
        v377 = *(v231 + 24);
        v378 = objc_allocWithZone(MEMORY[0x277CCA898]);

        v379 = MEMORY[0x24C1FAD20](v376, v377);

        v380 = [v378 initWithString_];

        specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v373, v375, v380, 0, 0, 0, v404, v411, v406, v402);

        return;
      }

      if (v413 >> 62)
      {
        v167 = __CocoaSet.count.getter();
        if (v167)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v167 = *((v413 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v167)
        {
LABEL_123:
          v168 = 0;
          v409 = (v50 & 0xFFFFFFFFFFFFFF8);
          v410 = (v50 & 0xC000000000000001);
          v401 = (v412 + 56);
          v398 = (v412 + 48);
          v169 = MEMORY[0x277D84F90];
          v405 = v412 + 32;
          while (1)
          {
            if (v410)
            {
              v170 = MEMORY[0x24C1FC540](v168, v50);
              v171 = v168 + 1;
              if (__OFADD__(v168, 1))
              {
                goto LABEL_272;
              }
            }

            else
            {
              if (v168 >= *(v409 + 2))
              {
                goto LABEL_275;
              }

              v170 = *(v50 + 8 * v168 + 32);
              swift_unknownObjectRetain();
              v171 = v168 + 1;
              if (__OFADD__(v168, 1))
              {
                goto LABEL_272;
              }
            }

            v172 = [v170 doc_creationDate];
            if (v172)
            {
              v173 = v172;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v174 = 0;
            }

            else
            {
              v174 = 1;
            }

            swift_unknownObjectRelease();
            (*v401)(ObjectType, v174, 1, v35);
            outlined init with take of Date?(ObjectType, v34);
            if ((*v398)(v34, 1, v35) == 1)
            {
              outlined destroy of CharacterSet?(v34, &_s10Foundation4DateVSgMd);
            }

            else
            {
              v175 = *v405;
              (*v405)(v408, v34, v35);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v169 + 2) + 1, 1, v169);
              }

              v177 = *(v169 + 2);
              v176 = *(v169 + 3);
              if (v177 >= v176 >> 1)
              {
                v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v176 > 1, v177 + 1, 1, v169);
              }

              *(v169 + 2) = v177 + 1;
              v175(&v169[((*(v412 + 80) + 32) & ~*(v412 + 80)) + *(v412 + 72) * v177], v408, v35);
              v50 = v413;
            }

            ++v168;
            if (v171 == v167)
            {
              goto LABEL_361;
            }
          }
        }
      }

      v169 = MEMORY[0x277D84F90];
LABEL_361:
      v370 = specialized DOCMetadataKey.formattedDateString(with:)(v169);
      v372 = v371;

      v231 = v407;
      if (v372)
      {
        *(v407 + 16) = v370;
        *(v231 + 24) = v372;
      }

      v232 = v400;
      v233 = 4;
      goto LABEL_364;
    }

    if (v413 >> 62)
    {
      v369 = __CocoaSet.count.getter();
      v35 = v407;
      if (v369 != 1 || !__CocoaSet.count.getter())
      {
        goto LABEL_289;
      }
    }

    else
    {
      v35 = v407;
      if (*((v413 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
      {
        goto LABEL_289;
      }
    }

    if ((v50 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](0, v50);
    }

    else
    {
      if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_377:
        __break(1u);
        goto LABEL_378;
      }

      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v141 = DOCNode.fpfs_syncFetchFPItem()();
    if (!v141)
    {
LABEL_101:
      specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(0, 0, 0, 0, 0, 0, v404, v411, v406, v402);

      swift_unknownObjectRelease();
      return;
    }

    v142 = v141;
    if ([v141 isRootItem])
    {

      goto LABEL_101;
    }

    v254 = v400;
    v255 = v399._object;
    v256 = v399._countAndFlagsBits;
    v257 = DOCMetadataKey.localizedTitle.getter(v400, 3, v399._countAndFlagsBits, v399._object);
    v259 = v258;
    v260 = DOCMetadataKey.placeholderValue.getter(v254, 3);
    v262 = v261;
    v263 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v264 = MEMORY[0x24C1FAD20](v260, v262);

    v265 = [v263 initWithString_];

    specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v257, v259, v265, 0, 0, 1, v404, v411, v406, v402);

    v266 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v267 = swift_allocObject();
    *(v267 + 16) = v266;
    *(v267 + 24) = v254;
    *(v267 + 32) = 3;
    *(v267 + 40) = __PAIR128__(v255, v256);

    DOCMetadataKey.localizedPath(for:layoutDirection:completion:)(v142, v388, partial apply for closure #5 in DOCMetadataKey.value(for:in:layoutDirection:completion:), v267, v254, 3uLL, v256, v255);

    swift_unknownObjectRelease();

    goto LABEL_290;
  }

  if (v405 > 8)
  {
    v104 = v413;
    switch(v405)
    {
      case 9:
        if (v413 >> 62)
        {
          if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
          {
            goto LABEL_289;
          }
        }

        else if (*((v413 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_289;
        }

        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v104 & 0xC000000000000001) == 0, v104);
        if ((v104 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](0, v104);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        swift_getObjectType();
        if ((DOCNode.areDiskPropertiesSupported.getter() & 1) == 0)
        {
          goto LABEL_208;
        }

        v143 = v400;
        v144 = v399._object;
        v145 = v399._countAndFlagsBits;
        v146 = DOCMetadataKey.localizedTitle.getter(v400, 9, v399._countAndFlagsBits, v399._object);
        v148 = v147;
        v149 = DOCMetadataKey.placeholderValue.getter(v143, 9);
        v151 = v150;
        v152 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v153 = MEMORY[0x24C1FAD20](v149, v151);

        v154 = [v152 initWithString_];

        specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v146, v148, v154, 0, 0, 1, v404, v411, v406, v402);

        v155 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v90 = swift_allocObject();
        v90[2] = v155;
        v90[3] = v143;
        v90[4] = 9;
        v90[5] = v145;
        v156 = v407;
        v90[6] = v144;
        v90[7] = v156;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);

        v92 = static OS_dispatch_queue.main.getter();
        v413 = v92;
        v93 = partial apply for closure #10 in DOCMetadataKey.value(for:in:layoutDirection:completion:);
        break;
      case 10:
        if (v413 >> 62)
        {
          if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
          {
            goto LABEL_289;
          }
        }

        else if (*((v413 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_289;
        }

        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v104 & 0xC000000000000001) == 0, v104);
        if ((v104 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](0, v104);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        swift_getObjectType();
        if ((DOCNode.areDiskPropertiesSupported.getter() & 1) == 0)
        {
          goto LABEL_208;
        }

        v178 = v400;
        v179 = v399._object;
        v180 = v399._countAndFlagsBits;
        v181 = DOCMetadataKey.localizedTitle.getter(v400, 10, v399._countAndFlagsBits, v399._object);
        v183 = v182;
        v184 = DOCMetadataKey.placeholderValue.getter(v178, 10);
        v186 = v185;
        v187 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v188 = MEMORY[0x24C1FAD20](v184, v186);

        v189 = [v187 initWithString_];

        specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v181, v183, v189, 0, 0, 1, v404, v411, v406, v402);

        v190 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v90 = swift_allocObject();
        v90[2] = v190;
        v90[3] = v178;
        v90[4] = 10;
        v90[5] = v180;
        v191 = v407;
        v90[6] = v179;
        v90[7] = v191;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);

        v92 = static OS_dispatch_queue.main.getter();
        v413 = v92;
        v93 = partial apply for closure #11 in DOCMetadataKey.value(for:in:layoutDirection:completion:);
        break;
      case 11:
        if (v411 >> 62)
        {
          v105 = __CocoaSet.count.getter();
        }

        else
        {
          v105 = *((v411 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v50 = v406 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey;
        if (v105)
        {
          v106 = 0;
          v107 = v411 & 0xC000000000000001;
          v108 = v411 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if (v107)
            {
              v194 = MEMORY[0x24C1FC540](v106, v411);
              ObjectType = v106 + 1;
              if (__OFADD__(v106, 1))
              {
                goto LABEL_207;
              }
            }

            else
            {
              if (v106 >= *(v108 + 16))
              {
                goto LABEL_276;
              }

              v194 = *(v411 + 8 * v106 + 32);
              ObjectType = v106 + 1;
              if (__OFADD__(v106, 1))
              {
LABEL_207:
                __break(1u);
                goto LABEL_208;
              }
            }

            v195 = *&v194[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 8];
            v196 = *&v194[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 16];
            v197 = *&v194[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 24];
            v198 = *(v50 + 8);
            v199 = *(v50 + 16);
            v200 = *(v50 + 24);
            if (v195 > 5)
            {
              if (v195 <= 8)
              {
                if (v195 == 6)
                {
                  if (v198 == 6)
                  {
                    goto LABEL_231;
                  }
                }

                else if (v195 == 7)
                {
                  if (v198 == 7)
                  {
                    goto LABEL_231;
                  }
                }

                else if (v198 == 8)
                {
                  goto LABEL_231;
                }

                goto LABEL_156;
              }

              switch(v195)
              {
                case 9:
                  if (v198 == 9)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_156;
                case 10:
                  if (v198 == 10)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_156;
                case 11:
                  if (v198 == 11)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_156;
              }
            }

            else
            {
              if (v195 > 2)
              {
                if (v195 == 3)
                {
                  if (v198 == 3)
                  {
                    goto LABEL_231;
                  }
                }

                else if (v195 == 4)
                {
                  if (v198 == 4)
                  {
                    goto LABEL_231;
                  }
                }

                else if (v198 == 5)
                {
                  goto LABEL_231;
                }

                goto LABEL_156;
              }

              switch(v195)
              {
                case 0:
                  if (!v198)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_156;
                case 1:
                  if (v198 == 1)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_156;
                case 2:
                  if (v198 == 2)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_156;
              }
            }

            if (v198 >= 0xC)
            {
              v201 = *&v194[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey] == *v50 && v195 == v198;
              v413 = v194;
              if (v201 || (v202 = _stringCompareWithSmolCheck(_:_:expecting:)(), v194 = v413, (v202 & 1) != 0))
              {
                if (v196 == v199 && v197 == v200 || (v203 = _stringCompareWithSmolCheck(_:_:expecting:)(), v194 = v413, (v203 & 1) != 0))
                {
LABEL_231:
                  v234 = v194;
                  v235 = [*(DOCMetadataKeyValueRow.value.getter() + 24) text];

                  break;
                }
              }
            }

LABEL_156:

            ++v106;
          }

          while (ObjectType != v105);
        }

        v236 = *v50;
        v237 = *(v50 + 8);
        v238 = *(v50 + 16);
        v239 = *(v50 + 24);
        v240 = MEMORY[0x277D85000];
        if (v237 != 1)
        {
          goto LABEL_382;
        }

        v241 = [objc_opt_self() contextMenuShowsOpenWithApp];
        v242 = [v241 isEnabled];

        if ((v242 & 1) == 0)
        {
          goto LABEL_382;
        }

        v243 = (*((*v240 & *v402) + 0xC0))();
        if (v243 >> 62)
        {
          v381 = v243;
          v382 = __CocoaSet.count.getter();
          v243 = v381;
          if (v382)
          {
            goto LABEL_236;
          }
        }

        else if (*((v243 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_236:
          if ((v243 & 0xC000000000000001) != 0)
          {
            v244 = MEMORY[0x24C1FC540](0);
          }

          else
          {
            if (!*((v243 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_388;
            }

            v244 = *(v243 + 32);
            swift_unknownObjectRetain();
          }

          if (![v244 isFolder] && !objc_msgSend(v244, sel_doc_isCollaborationInvitation))
          {
            v268 = v406;
            (*((*v240 & *v406) + 0x100))();
            swift_unknownObjectRelease();
LABEL_383:
            (*((*v240 & *v268) + 0x118))(1);
            v383 = DOCMetadataKeyValueRow.label.getter();
            v384 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
            [v383 setText_];

            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v386 = Strong;
              (*((*v240 & *Strong) + 0x1B8))(v236, v237, v238, v239, 0, 0, 0, 0);
            }

            dispatch_group_leave(v404);
            goto LABEL_292;
          }

          swift_unknownObjectRelease();
LABEL_382:
          v268 = v406;
          (*((*v240 & *v406) + 0x100))(1);
          goto LABEL_383;
        }

        goto LABEL_382;
      default:
        goto LABEL_152;
    }

LABEL_147:
    DOCNode.fetchDiskPropertiesIfSupported(handlerQueue:_:)(v92, v93, v90);

    swift_unknownObjectRelease();

    goto LABEL_148;
  }

  ObjectType = v413;
  if (v405 != 6)
  {
    if (v405 == 7)
    {
      if (v413 >> 62)
      {
        if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
        {
          goto LABEL_289;
        }
      }

      else if (*((v413 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
      {
        goto LABEL_289;
      }

      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (ObjectType & 0xC000000000000001) == 0, ObjectType);
      if ((ObjectType & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](0, ObjectType);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      DOCNode.diskProperties.getter(&aBlock._countAndFlagsBits);
      v160 = aBlock._object;
      if (!aBlock._object)
      {
        goto LABEL_208;
      }

      v161 = aBlock._countAndFlagsBits;
      v162 = DOCMetadataKey.localizedTitle.getter(v400, 7, v399._countAndFlagsBits, v399._object);
      v164 = v163;
      v165 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v166 = MEMORY[0x24C1FAD20](v161, v160);

      v413 = [v165 initWithString_];

      specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v162, v164, v413, 0, 0, 0, v404, v411, v406, v402);

      swift_unknownObjectRelease();

      goto LABEL_149;
    }

    if (v413 >> 62)
    {
      goto LABEL_321;
    }

    if (*((v413 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_23;
    }

LABEL_289:
    specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(0, 0, 0, 0, 0, 0, v404, v411, v406, v402);
LABEL_290:

LABEL_292:

    return;
  }

  if (v413 >> 62)
  {
    v130 = __CocoaSet.count.getter();
  }

  else
  {
    v130 = *((v413 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v131 = v401;
  if (!v130)
  {
    v133 = MEMORY[0x277D84F90];
LABEL_228:
    v228 = specialized DOCMetadataKey.formattedDateString(with:)(v133);
    v230 = v229;

    v231 = v407;
    if (v230)
    {
      *(v407 + 16) = v228;
      *(v231 + 24) = v230;
    }

    v232 = v400;
    v233 = 6;
    goto LABEL_364;
  }

  v132 = 0;
  v410 = (ObjectType & 0xC000000000000001);
  v408 = (ObjectType & 0xFFFFFFFFFFFFFF8);
  v398 = (v412 + 56);
  v397 = (v412 + 48);
  v133 = MEMORY[0x277D84F90];
  v405 = v412 + 32;
  while (!v410)
  {
    if (v132 >= *(v408 + 2))
    {
      goto LABEL_274;
    }

    v134 = *(ObjectType + 8 * v132 + 32);
    swift_unknownObjectRetain();
    v135 = v132 + 1;
    if (__OFADD__(v132, 1))
    {
      goto LABEL_271;
    }

LABEL_81:
    v136 = [v134 doc_lastUsedDate];
    v50 = v131;
    if (v136)
    {
      v137 = v136;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v138 = 0;
    }

    else
    {
      v138 = 1;
    }

    swift_unknownObjectRelease();
    (*v398)(v50, v138, 1, v35);
    outlined init with take of Date?(v50, v18);
    if ((*v397)(v18, 1, v35) == 1)
    {
      v131 = v50;
      outlined destroy of CharacterSet?(v18, &_s10Foundation4DateVSgMd);
    }

    else
    {
      v139 = *v405;
      (*v405)(v409, v18, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v133 + 2) + 1, 1, v133);
      }

      v50 = *(v133 + 2);
      v140 = *(v133 + 3);
      if (v50 >= v140 >> 1)
      {
        v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v140 > 1, v50 + 1, 1, v133);
      }

      *(v133 + 2) = v50 + 1;
      v139(&v133[((*(v412 + 80) + 32) & ~*(v412 + 80)) + *(v412 + 72) * v50], v409, v35);
      ObjectType = v413;
      v131 = v401;
    }

    ++v132;
    if (v135 == v130)
    {
      goto LABEL_228;
    }
  }

  v134 = MEMORY[0x24C1FC540](v132, ObjectType);
  v135 = v132 + 1;
  if (!__OFADD__(v132, 1))
  {
    goto LABEL_81;
  }

LABEL_271:
  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
LABEL_274:
  __break(1u);
LABEL_275:
  __break(1u);
LABEL_276:
  __break(1u);
LABEL_277:
  __break(1u);
LABEL_278:
  v57 = __CocoaSet.count.getter();
  v35 = v407;
  if (v57 != 1)
  {
    goto LABEL_281;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_284:
    v280 = __CocoaSet.count.getter();
    goto LABEL_285;
  }

LABEL_8:
  if ((v413 & 0xC000000000000001) != 0)
  {
    v58 = MEMORY[0x24C1FC540](0);
    goto LABEL_11;
  }

  if (!*((v413 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_376:
    __break(1u);
    goto LABEL_377;
  }

  v58 = *(v413 + 32);
  swift_unknownObjectRetain();
LABEL_11:
  v59 = swift_getObjectType();
  if (![v58 isFolder] || (DOCNode.isFolderSizingSupported.getter() & 1) == 0 || (v60 = objc_msgSend(v58, sel_deepItemCount)) == 0)
  {
LABEL_226:
    swift_unknownObjectRelease();
    goto LABEL_282;
  }

  v61 = v60;
  v62 = [v60 integerValue];
  v63 = swift_allocObject();
  *(v63 + 16) = [v58 isCloudItem];
  *(v63 + 24) = v62;
  *(v63 + 32) = 0;
  *(v63 + 40) = 0;
  *(v63 + 48) = 0;
  *(v63 + 56) = 256;
  v64 = DOCMetadataKey.localizedTitle.getter(v400, 2, v399._countAndFlagsBits, v399._object);
  v66 = v65;
  v67 = _DocumentManagerBundle();
  if (!v67)
  {
LABEL_392:

    __break(1u);
    return;
  }

  v68 = v67;
  v425._object = 0x8000000249BD07E0;
  v69.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v69.value._object = 0xEB00000000656C62;
  v70._object = 0x8000000249BD07C0;
  v425._countAndFlagsBits = 0xD00000000000004DLL;
  v70._countAndFlagsBits = 0xD000000000000010;
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  v72 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v69, v68, v71, v425);

  v73 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v74 = MEMORY[0x24C1FAD20](v72._countAndFlagsBits, v72._object);

  v75 = [v73 initWithString_];

  if (*(v63 + 57) & 1) != 0 || (*(v63 + 40))
  {
    v76 = 1;
  }

  else
  {
    v269 = *(v63 + 32);
    v270 = *(v63 + 48);
    v272 = v269 == -1 || v270 == -1;
    v274 = v269 < 0 && v270 >= 0;
    if (*(v63 + 16) != 1)
    {
      v275 = v272;
    }

    else
    {
      v275 = v274;
    }

    if (v272)
    {
      v275 = v272;
    }

    if (*(v63 + 56))
    {
      v76 = 1;
    }

    else
    {
      v76 = v275;
    }
  }

  specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v64, v66, v75, 0, 0, v76, v404, v411, v406, v402);

  v276 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v277 = swift_allocObject();
  v278 = v400;
  v277[2] = v276;
  v277[3] = v278;
  v277[4] = 2;
  v279 = v399._object;
  v277[5] = v399._countAndFlagsBits;
  v277[6] = v279;
  v277[7] = v407;
  v277[8] = v63;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);

  v413 = static OS_dispatch_queue.main.getter();
  DOCNode.performFolderSizingIfSupported(handlerQueue:_:)(v413, partial apply for closure #2 in DOCMetadataKey.value(for:in:layoutDirection:completion:), v277, v59);

  swift_unknownObjectRelease();

LABEL_148:

LABEL_149:
  v192 = v413;
}

unint64_t specialized DOCMetadataView.didTap(label:)()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x128))();
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = (*((*v1 & *v0) + 0xC0))();
  if (result >> 62)
  {
    v5 = result;
    v6 = __CocoaSet.count.getter();
    result = v5;
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((result & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C1FC540](0);
    }

    else
    {
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v4 = *(result + 32);
      swift_unknownObjectRetain();
    }

    [v3 metadataViewWithNodeLocationTapped:v4 metadataView:v0];
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

LABEL_11:

  return swift_unknownObjectRelease();
}

unint64_t lazy protocol witness table accessor for type DOCMetadataLabelAlignment and conformance DOCMetadataLabelAlignment()
{
  result = lazy protocol witness table cache variable for type DOCMetadataLabelAlignment and conformance DOCMetadataLabelAlignment;
  if (!lazy protocol witness table cache variable for type DOCMetadataLabelAlignment and conformance DOCMetadataLabelAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCMetadataLabelAlignment and conformance DOCMetadataLabelAlignment);
  }

  return result;
}

uint64_t type metadata completion function for DOCLevelOfDetailButton()
{
  result = type metadata accessor for DOCLevelOfDetailButton.Metrics(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata completion function for DOCLevelOfDetailButton.Metrics()
{
  type metadata accessor for UIButton.Configuration.Size();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIFontTextStyle?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for UIFontTextStyle?()
{
  if (!lazy cache variable for type metadata for UIFontTextStyle?)
  {
    type metadata accessor for UIFontTextStyle(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIFontTextStyle?);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_26DocumentManagerExecutables14DOCMetadataKeyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for DOCMetadataKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 32))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DOCMetadataKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for DOCMetadataKey(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCMetadataKeyValueRow.Metrics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DOCMetadataKeyValueRow.Metrics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t outlined destroy of DOCLevelOfDetailButton.Metrics(uint64_t a1)
{
  v2 = type metadata accessor for DOCLevelOfDetailButton.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_118Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_139Tm()
{

  if (*(v0 + 32) >= 0xCuLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #1 in closure #1 in DOCMetadataKey.localizedPath(for:layoutDirection:completion:)()
{
  v1 = v0[2];
  v2 = DOCMetadataKey.localizedTitle.getter(v0[4], v0[5], v0[6], v0[7]);
  v1(v2);
}

uint64_t partial apply for closure #3 in createPath #1 (domain:parentItems:) in FPItem.getLocalizedDisplayPath(using:domain:layoutDirection:includeSelf:arrowColor:specialCasingLocations:completion:)()
{
  return closure #3 in createPath #1 (domain:parentItems:) in FPItem.getLocalizedDisplayPath(using:domain:layoutDirection:includeSelf:arrowColor:specialCasingLocations:completion:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
}

{
  return (*(v0 + 16))(*(v0 + 32), *(v0 + 40), *(v0 + 48));
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute);
  }

  return result;
}

Swift::Int DOCAdjustmentDirection.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t SignedNumeric.advanced(amount:direction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17[2] = a3;
  v17[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness, v5);
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v17 - v13;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  v15 = *(v6 + 8);
  v15(v10, a2);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  return (v15)(v14, a2);
}

unint64_t lazy protocol witness table accessor for type DOCAdjustmentDirection and conformance DOCAdjustmentDirection()
{
  result = lazy protocol witness table cache variable for type DOCAdjustmentDirection and conformance DOCAdjustmentDirection;
  if (!lazy protocol witness table cache variable for type DOCAdjustmentDirection and conformance DOCAdjustmentDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAdjustmentDirection and conformance DOCAdjustmentDirection);
  }

  return result;
}

uint64_t @objc DOC_FIRenameOperation.init(node:rawName:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_originalRawName);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_hideExtension) = 2;
  type metadata accessor for DOC_FIRenameOperation();
  swift_deallocPartialClassInstance();
  return 0;
}

char *DOC_FIRenameOperation.operationForRedoing()()
{
  v1 = v0;
  v2 = [v0 node];
  if (v2 || (v2 = [v0 item]) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_docNode];
    swift_unknownObjectRetain();
  }

  v4 = v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_hideExtension];
  if (v4 == 2)
  {
    v5 = [v1 rawName];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager];
    v10 = v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo];
    v11 = objc_allocWithZone(type metadata accessor for DOC_FIRenameOperation());
    swift_getObjectType();
    v12 = v9;

    return specialized DOC_FIRenameOperation.init(node:rawName:undoManager:shouldRegisterUndo:)(v3, v6, v8, v12, v10, v11);
  }

  else
  {
    v14 = [v1 rawName];
    v15 = v14;
    v16 = v14;
    if (!v14)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = MEMORY[0x24C1FAD20](v17);

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = MEMORY[0x24C1FAD20](v18);
    }

    v40 = v15;
    v41 = v16;
    v19 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager];
    v38 = v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo];
    v39 = type metadata accessor for DOC_FIRenameOperation();
    v20 = objc_allocWithZone(v39);
    v21 = &v20[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_originalRawName];
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v22 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_hideExtension;
    v20[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_hideExtension] = 2;
    *&v20[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_docNode] = v3;
    swift_getObjectType();
    v23 = v14;
    v24 = [swift_unknownObjectRetain() filename];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    *v21 = v25;
    v21[1] = v27;

    *&v20[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager] = v19;
    v20[v22] = v4 & 1;
    v20[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo] = v38;
    v28 = DOCNode.isFINode.getter();
    v29 = v19;
    if (v28)
    {

      objc_opt_self();
      v30 = swift_dynamicCastObjCClassUnconditional();
      v42.receiver = v20;
      v42.super_class = v39;
      swift_unknownObjectRetain();
      v31 = v41;
      v32 = objc_msgSendSuper2(&v42, sel_initWithNode_rawName_hideExtension_, v30, v41, v4 & 1);
    }

    else
    {

      objc_opt_self();
      v33 = swift_dynamicCastObjCClassUnconditional();
      v43.receiver = v20;
      v43.super_class = v39;
      swift_unknownObjectRetain();
      v34 = v33;
      v31 = v40;
      v32 = objc_msgSendSuper2(&v43, sel_initWithItem_rawName_hideExtension_, v34, v40, v4 & 1);
    }

    v35 = v32;
    swift_unknownObjectRelease();

    if (v35)
    {

      if (v35[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo] == 1)
      {
        v36 = *&v35[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager];
        v37 = v35;
        [v36 registerUndoOperationForSender_];
      }
    }

    swift_unknownObjectRelease();
    return v35;
  }
}

char *DOC_FIRenameOperation.operationForUndoing()()
{
  v1 = v0;
  v2 = [v0 node];
  if (v2 || (v2 = [v0 item]) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_docNode];
    swift_unknownObjectRetain();
  }

  v4 = v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_hideExtension];
  if (v4 == 2)
  {
    v5 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_originalRawName];
    v6 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_originalRawName + 8];
    v7 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager];
    v8 = v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo];
    v9 = objc_allocWithZone(type metadata accessor for DOC_FIRenameOperation());
    swift_getObjectType();

    v10 = v7;

    return specialized DOC_FIRenameOperation.init(node:rawName:undoManager:shouldRegisterUndo:)(v3, v5, v6, v10, v8, v9);
  }

  else
  {
    v12 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_originalRawName + 8];
    v31 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_originalRawName];
    v29 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager];
    v30 = v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo];
    v32 = type metadata accessor for DOC_FIRenameOperation();
    v13 = objc_allocWithZone(v32);
    v14 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_originalRawName];
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v15 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_hideExtension;
    v13[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_hideExtension] = 2;
    *&v13[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_docNode] = v3;
    swift_getObjectType();

    v16 = [swift_unknownObjectRetain() filename];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *v14 = v17;
    v14[1] = v19;

    *&v13[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager] = v29;
    v13[v15] = v4;
    v13[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo] = v30;
    if (DOCNode.isFINode.getter())
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClassUnconditional();
      swift_unknownObjectRetain();
      v21 = v29;
      v22 = MEMORY[0x24C1FAD20](v31, v12);

      v33.receiver = v13;
      v33.super_class = v32;
      v23 = objc_msgSendSuper2(&v33, sel_initWithNode_rawName_hideExtension_, v20, v22, v4 & 1);
    }

    else
    {
      objc_opt_self();
      v24 = swift_dynamicCastObjCClassUnconditional();
      swift_unknownObjectRetain();
      v25 = v29;
      v22 = MEMORY[0x24C1FAD20](v31, v12);

      v34.receiver = v13;
      v34.super_class = v32;
      v23 = objc_msgSendSuper2(&v34, sel_initWithItem_rawName_hideExtension_, v24, v22, v4 & 1);
    }

    v26 = v23;
    swift_unknownObjectRelease();

    if (v26)
    {

      if (v26[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo] == 1)
      {
        v27 = *&v26[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager];
        v28 = v26;
        [v27 registerUndoOperationForSender_];
      }
    }

    swift_unknownObjectRelease();
    return v26;
  }
}

id DOC_FPRenameOperation.operationForRedoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newDisplayName + 8);
  if (v1 && (v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldDisplayName + 8)) != 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newDisplayName);
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldDisplayName);
    v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_item);
    v6 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_undoManager);
    v7 = type metadata accessor for DOC_FPRenameOperation();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_item] = v5;
    v9 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newDisplayName];
    *v9 = v3;
    v9[1] = v1;
    v10 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newFileName];
    *v10 = 0;
    v10[1] = 0;
    v11 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldDisplayName];
    *v11 = v4;
    v11[1] = v2;
    v12 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldFileName];
    *v12 = 0;
    v12[1] = 0;
    *&v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_undoManager] = v6;
    v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_didRegisterUndo] = 0;

    v13 = v5;

    v14 = v6;
    v15 = MEMORY[0x24C1FAD20](v3, v1);
    v33.receiver = v8;
    v33.super_class = v7;
    v16 = objc_msgSendSuper2(&v33, sel_initWithItem_newDisplayName_, v13, v15);
  }

  else
  {
    v17 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newFileName + 8);
    if (!v17)
    {
      return 0;
    }

    v18 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldFileName + 8);
    if (!v18)
    {
      return 0;
    }

    v19 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newFileName);
    v32 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldFileName);
    v20 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_item);
    v21 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_undoManager);
    v22 = type metadata accessor for DOC_FPRenameOperation();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_item] = v20;
    v24 = &v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newDisplayName];
    *v24 = 0;
    v24[1] = 0;
    v25 = &v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newFileName];
    *v25 = v19;
    v25[1] = v17;
    v26 = &v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldDisplayName];
    *v26 = 0;
    v26[1] = 0;
    v27 = &v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldFileName];
    *v27 = v32;
    v27[1] = v18;
    *&v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_undoManager] = v21;
    v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_didRegisterUndo] = 0;

    v28 = v20;

    v29 = v21;
    v15 = MEMORY[0x24C1FAD20](v19, v17);
    v34.receiver = v23;
    v34.super_class = v22;
    v16 = objc_msgSendSuper2(&v34, sel_initWithItem_newFileName_, v28, v15);
  }

  v30 = v16;

  return v30;
}

id DOC_FPRenameOperation.operationForUndoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newDisplayName + 8);
  if (v1 && (v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldDisplayName + 8)) != 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newDisplayName);
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldDisplayName);
    v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_item);
    v6 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_undoManager);
    v7 = type metadata accessor for DOC_FPRenameOperation();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_item] = v5;
    v9 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newDisplayName];
    *v9 = v4;
    v9[1] = v2;
    v10 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newFileName];
    *v10 = 0;
    v10[1] = 0;
    v11 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldDisplayName];
    *v11 = v3;
    v11[1] = v1;
    v12 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldFileName];
    *v12 = 0;
    v12[1] = 0;
    *&v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_undoManager] = v6;
    v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_didRegisterUndo] = 0;

    v13 = v5;

    v14 = v6;
    v15 = MEMORY[0x24C1FAD20](v4, v2);
    v33.receiver = v8;
    v33.super_class = v7;
    v16 = objc_msgSendSuper2(&v33, sel_initWithItem_newDisplayName_, v13, v15);
  }

  else
  {
    v17 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newFileName + 8);
    if (!v17)
    {
      return 0;
    }

    v18 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldFileName + 8);
    if (!v18)
    {
      return 0;
    }

    v32 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newFileName);
    v19 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldFileName);
    v20 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_item);
    v21 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_undoManager);
    v22 = type metadata accessor for DOC_FPRenameOperation();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_item] = v20;
    v24 = &v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newDisplayName];
    *v24 = 0;
    v24[1] = 0;
    v25 = &v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newFileName];
    *v25 = v19;
    v25[1] = v18;
    v26 = &v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldDisplayName];
    *v26 = 0;
    v26[1] = 0;
    v27 = &v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldFileName];
    *v27 = v32;
    v27[1] = v17;
    *&v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_undoManager] = v21;
    v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_didRegisterUndo] = 0;

    v28 = v20;

    v29 = v21;
    v15 = MEMORY[0x24C1FAD20](v19, v18);
    v34.receiver = v23;
    v34.super_class = v22;
    v16 = objc_msgSendSuper2(&v34, sel_initWithItem_newFileName_, v28, v15);
  }

  v30 = v16;

  return v30;
}

id DOCRenameOperation.stateLock.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation____lazy_storage___stateLock;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation____lazy_storage___stateLock);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation____lazy_storage___stateLock);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t DOCRenameOperation.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 rawName];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0x4E574F4E4B4E55;
    v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp);
    if (v5)
    {
      if (*(v5 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newDisplayName + 8))
      {
        v4 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newDisplayName);
      }

      else
      {
        v6 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newFileName);
        if (!v6[1])
        {
          return v4;
        }

        v4 = *v6;
      }
    }
  }

  return v4;
}

void *DOCRenameOperation.__allocating_init(node:newFileName:shouldDonateAppIntents:undoManager:)(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());
  swift_getObjectType();
  v11 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(a1, a2, a3, 0, a4, a5, v10);

  return v11;
}

void *DOCRenameOperation.__allocating_init(node:newDisplayName:shouldDonateAppIntents:undoManager:)(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  swift_getObjectType();
  v10 = specialized DOCRenameOperation.__allocating_init(node:newDisplayName:shouldDonateAppIntents:undoManager:)(a1, a2, a3, a4, a5);

  return v10;
}

id renameOp #1 (for:with:) in DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_opt_self() shared];
  if (a4)
  {
    v9 = [a1 displayName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = type metadata accessor for DOC_FPRenameOperation();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_item] = a1;
    v15 = &v14[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newDisplayName];
    *v15 = a2;
    v15[1] = a3;
    v16 = &v14[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newFileName];
    *v16 = 0;
    v16[1] = 0;
    v17 = &v14[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldDisplayName];
    *v17 = v10;
    v17[1] = v12;
    v18 = &v14[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldFileName];
    *v18 = 0;
    v18[1] = 0;
    *&v14[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_undoManager] = v8;
    v14[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_didRegisterUndo] = 0;
    v19 = a1;
    outlined copy of DOCRenameOperation.NameType();
    v20 = v8;
    v21 = MEMORY[0x24C1FAD20](a2, a3);
    v22 = objc_msgSendSuper2(&v38, sel_initWithItem_newDisplayName_, v19, v21, v37.receiver, v37.super_class, v14, v13);
  }

  else
  {
    v23 = [a1 filename];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = type metadata accessor for DOC_FPRenameOperation();
    v28 = objc_allocWithZone(v27);
    *&v28[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_item] = a1;
    v29 = &v28[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newDisplayName];
    *v29 = 0;
    v29[1] = 0;
    v30 = &v28[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_newFileName];
    *v30 = a2;
    v30[1] = a3;
    v31 = &v28[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldDisplayName];
    *v31 = 0;
    v31[1] = 0;
    v32 = &v28[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_oldFileName];
    *v32 = v24;
    v32[1] = v26;
    *&v28[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_undoManager] = v8;
    v28[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation_didRegisterUndo] = 0;
    v33 = a1;
    outlined copy of DOCRenameOperation.NameType();
    v34 = v8;
    v21 = MEMORY[0x24C1FAD20](a2, a3);
    v22 = objc_msgSendSuper2(&v37, sel_initWithItem_newFileName_, v33, v21, v28, v27, v38.receiver, v38.super_class);
  }

  v35 = v22;

  return v35;
}

void closure #1 in DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = DOCRenameOperation.stateLock.getter();
    [v13 lock];
    closure #1 in closure #1 in DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(v12, a1, a3, a4, a5, a6 & 1, &v14);
    [v13 unlock];

    if (v14)
    {
      DOCRenameOperation._schedule()();
    }
  }
}

void closure #1 in closure #1 in DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, _BYTE *a7@<X8>)
{
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_waitingForNodes) = 0;
  if (a2)
  {
    v12 = one-time initialization token for Rename;
    v13 = a2;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.Rename);
    v15 = v13;
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v33 = v17;
      v18 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v18 = 136315394;
      v19 = [a3 filename];
      v35 = a5;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v38);

      *(v18 + 4) = v23;
      a5 = v35;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v15;
      *v32 = a2;
      v24 = v15;
      outlined destroy of CharacterSet?(v32, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C1FE850](v34, -1, -1);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

    else
    {
    }

    v31 = renameOp #1 (for:with:) in DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(v15, a4, a5, a6 & 1);

    v26 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp);
    *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp) = v31;
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.Rename);
    swift_unknownObjectRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      objc_opt_self();
      v30 = swift_dynamicCastObjCClassUnconditional();
      *(v28 + 4) = v30;
      *v29 = v30;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_2493AC000, v26, v27, "Failed to get FPItem for node: %@", v28, 0xCu);
      outlined destroy of CharacterSet?(v29, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }
  }

  *a7 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_scheduleWasDeferred);
}

uint64_t key path getter for DOCRenameOperation.conflictHandler : DOCRenameOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x140))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @unowned OperationConflict, @guaranteed FIOperationRecord) -> (@unowned OperationResolution);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCRenameOperation.conflictHandler : DOCRenameOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed OperationConflict, @in_guaranteed FIOperationRecord) -> (@out OperationResolution);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x148);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t key path getter for DOCRenameOperation.errorRecoveryHandler_FP : DOCRenameOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x158))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @guaranteed Error) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCRenameOperation.errorRecoveryHandler_FP : DOCRenameOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed DOCNode?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x160);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t key path getter for DOCRenameOperation.errorHandler : DOCRenameOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x170))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @guaranteed FIOperationError?, @guaranteed Error?) -> (@owned FIOperationReply?);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCRenameOperation.errorHandler : DOCRenameOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed FIOperationError?, @in_guaranteed Error?) -> (@out FIOperationReply?);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x178);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t key path getter for DOCRenameOperation.completionHandler : DOCRenameOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x188))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @guaranteed DOCNode?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCRenameOperation.completionHandler : DOCRenameOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed DOCNode?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x190);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCRenameOperation.conflictHandler.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t DOCRenameOperation.conflictHandler.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void DOCRenameOperation.setUpCallbacks()()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 completionHandler];
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      v3 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned FIOperation, @unowned NSArray) -> ();
    }

    else
    {
      v4 = 0;
    }

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v3;
    v10[4] = v4;
    v39 = partial apply for closure #1 in DOCRenameOperation.setUpCallbacks();
    v40 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed [FINode]) -> ();
    v38 = &block_descriptor_68;
    v11 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);

    [v2 setCompletionHandler_];
    _Block_release(v11);
    v12 = [v2 conflictHandler];
    if (v12)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v12 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned FIOperation, @unowned OperationConflict, @unowned FIOperationRecord) -> (@unowned OperationResolution);
    }

    else
    {
      v13 = 0;
    }

    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v12;
    v15[4] = v13;
    v39 = partial apply for closure #2 in DOCRenameOperation.setUpCallbacks();
    v40 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @unowned OperationConflict, @guaranteed FIOperationRecord) -> (@unowned OperationResolution);
    v38 = &block_descriptor_75;
    v16 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v12);

    [v2 setConflictHandler_];
    _Block_release(v16);
    v17 = [v2 errorHandler];
    if (v17)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      v17 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned FIOperation, @unowned FIOperationError) -> (@autoreleased FIOperationReply?);
    }

    else
    {
      v18 = 0;
    }

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = v17;
    v20[4] = v18;
    v39 = partial apply for closure #3 in DOCRenameOperation.setUpCallbacks();
    v40 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed FIOperationError) -> (@owned FIOperationReply?);
    v38 = &block_descriptor_82;
    v21 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v17);

    [v2 setErrorHandler_];
    _Block_release(v21);

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v17);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v12);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp];
    if (v5)
    {
      v6 = v5;
      v7 = [v6 errorRecoveryHandler];
      if (v7)
      {
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError) -> ();
      }

      else
      {
        v8 = 0;
      }

      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      v26[2] = v25;
      v26[3] = v7;
      v26[4] = v8;
      v39 = partial apply for closure #4 in DOCRenameOperation.setUpCallbacks();
      v40 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
      v38 = &block_descriptor_23;
      v27 = _Block_copy(&aBlock);
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);

      [v6 setErrorRecoveryHandler_];
      _Block_release(v27);

      v28 = v6;
      v29 = [v28 finishedBlock];
      if (v29)
      {
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        v29 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Swift.AnyObject?, @unowned NSError?) -> ();
      }

      else
      {
        v30 = 0;
      }

      v31 = swift_allocObject();
      v31[2] = v0;
      v31[3] = v29;
      v31[4] = v30;
      v39 = partial apply for closure #5 in DOCRenameOperation.setUpCallbacks();
      v40 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed Error?) -> ();
      v38 = &block_descriptor_55_0;
      v32 = _Block_copy(&aBlock);
      v33 = v0;
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v29);

      [v28 setFinishedBlock_];
      _Block_release(v32);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v29);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
    }

    else
    {
      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.Rename);
      oslog = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2493AC000, oslog, v23, "Attempting to set up callbacks prematurely", v24, 2u);
        MEMORY[0x24C1FE850](v24, -1, -1);
      }
    }
  }
}

void closure #1 in DOCRenameOperation.setUpCallbacks()(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *Strong) + 0x188))();
  if (v10)
  {
    v11 = v10;
    if (a2 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((a2 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](0, a2);
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v12 = *(a2 + 32);
      }

      v13 = v12;
      goto LABEL_11;
    }

    v13 = 0;
LABEL_11:
    v11(v8, v13);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v11);
    swift_unknownObjectRelease();
  }

  if (a4)
  {
    a4(a1, a2);
  }

  (*((*v9 & *v8) + 0x148))(0, 0);
  (*((*v9 & *v8) + 0x160))(0, 0);
  (*((*v9 & *v8) + 0x178))(0, 0);
  (*((*v9 & *v8) + 0x190))(0, 0);
}

uint64_t closure #2 in DOCRenameOperation.setUpCallbacks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = (*((*MEMORY[0x277D85000] & *Strong) + 0x140))();
    if (v11)
    {
      v12 = v11;
      v13 = v11(v10, a2, a3);
      v14 = v12;
    }

    else
    {
      if (!a5)
      {
        v13 = 5;
        goto LABEL_8;
      }

      v13 = a5(a1, a2, a3);
      v14 = a5;
    }

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v14);
LABEL_8:

    return v13;
  }

  return 5;
}

id closure #3 in DOCRenameOperation.setUpCallbacks()(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (*((*MEMORY[0x277D85000] & *Strong) + 0x170))();
    if (v9)
    {
      v10 = v9;
      v11 = v9(v8, a2, 0);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v10);
    }

    else if (a4)
    {
      v11 = a4(a1, a2);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v12 = [a2 error];
    v13 = objc_allocWithZone(MEMORY[0x277D04718]);
    v14 = _convertErrorToNSError(_:)();

    v11 = [v13 initWithResolution:5 error:v14];
  }

  return v11;
}

void closure #4 in DOCRenameOperation.setUpCallbacks()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (*((*MEMORY[0x277D85000] & *Strong) + 0x158))();
    if (v7)
    {
      v8 = v7;
      v7(v6, a1);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
    }

    else
    {
      if (a3)
      {
        a3(a1);
      }
    }
  }
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned Swift.AnyObject?, @unowned NSError?) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  outlined init with copy of Any?(a1, v12);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v6, v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v7 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (a2)
  {
LABEL_3:
    a2 = _convertErrorToNSError(_:)();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

uint64_t closure #5 in DOCRenameOperation.setUpCallbacks()(uint64_t a1, id a2, void *a3, void (*a4)(uint64_t, id))
{
  v7 = a1;
  v8 = MEMORY[0x277D85000];
  if (a2)
  {
    v9 = (*((*MEMORY[0x277D85000] & *a3) + 0x170))(a2);
    if (v9)
    {
      v10 = v9;
      v11 = a2;

      a1 = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v10);
    }

    else
    {
    }
  }

  v12 = (*((*v8 & *a3) + 0x188))(a1);
  if (v12)
  {
    v13 = v12;
    outlined init with copy of Any?(v7, v17);
    if (v18)
    {
      type metadata accessor for FPItem();
      if (swift_dynamicCast())
      {
        v14 = v16;
LABEL_12:
        v13(a3, v14);
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v13);
        swift_unknownObjectRelease();
        goto LABEL_13;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v17, &_sypSgMd);
    }

    v14 = 0;
    goto LABEL_12;
  }

LABEL_13:
  if (a4)
  {
    a4(v7, a2);
  }

  (*((*v8 & *a3) + 0x148))(0, 0);
  (*((*v8 & *a3) + 0x160))(0, 0);
  (*((*v8 & *a3) + 0x178))(0, 0);
  return (*((*v8 & *a3) + 0x190))(0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    outlined init with take of Any(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return outlined destroy of CharacterSet?(v10, &_sypSgMd);
}

void DOCRenameOperation._schedule()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - v4;
  DOCRenameOperation.setUpCallbacks()();
  v6 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp];
  if (v6)
  {
    [v6 schedule];
    goto LABEL_6;
  }

  v7 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp];
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 defaultManager];
    [v10 scheduleAction:v9];

LABEL_5:
    goto LABEL_6;
  }

  if ((v0[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_waitingForNodes] & 1) == 0)
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.Rename);
    v10 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2493AC000, v10, v15, "Schedule attempted without configuring the operation first", v16, 2u);
      MEMORY[0x24C1FE850](v16, -1, -1);
    }

    goto LABEL_5;
  }

LABEL_6:
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_shouldDonateAppIntents) == 1)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v1;
    v13 = v1;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in DOCRenameOperation._schedule(), v12);
  }
}

uint64_t closure #1 in DOCRenameOperation._schedule()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;

  return MEMORY[0x2822009F8](closure #1 in DOCRenameOperation._schedule(), 0, 0);
}

uint64_t closure #1 in DOCRenameOperation._schedule()()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_node);
  v0[2] = 0;
  v2 = [v1 syncFetchFPItem_];
  v3 = v0[2];
  if (v2)
  {
    v4 = v2;
    (*((*MEMORY[0x277D85000] & *v0[3]) + 0x128))(v3);
  }

  else
  {
    v6 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

Swift::Void __swiftcall DOCRenameOperation.schedule()()
{
  v1 = DOCRenameOperation.stateLock.getter();
  [v1 lock];
  if ((*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_scheduleWasDeferred) & 1) == 0 && *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_waitingForNodes) == 1)
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_scheduleWasDeferred) = 1;
  }

  [v1 unlock];

  DOCRenameOperation._schedule()();
}

id DOCRenameOperation.actionNameForUndoing.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp);
  if (v1)
  {
    v2 = v1;
    result = _DocumentManagerBundle();
    if (result)
    {
      v4 = result;
      v17 = 0x8000000249BD1AF0;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v7 = 0x656D616E6552;
      v8 = 0x8000000249BD1AD0;
      v9 = 0xD000000000000039;
LABEL_7:
      v11 = 0xD00000000000001CLL;
      v12 = 0xE600000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*(&v8 - 1), *&v5, v4, *&v7, *&v9)._countAndFlagsBits;

LABEL_8:
      return countAndFlagsBits;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp);
  if (v10)
  {
    v2 = v10;
    result = _DocumentManagerBundle();
    if (result)
    {
      v4 = result;
      v17 = 0x8000000249BD1B30;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v7 = 0x656D616E6552;
      v8 = 0x8000000249BD1AD0;
      v9 = 0xD00000000000003ALL;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v18._object = 0x8000000249BD1AF0;
    v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v14.value._object = 0xEB00000000656C62;
    v15._countAndFlagsBits = 0x656D616E6552;
    v16._object = 0x8000000249BD1AD0;
    v18._countAndFlagsBits = 0xD000000000000039;
    v16._countAndFlagsBits = 0xD00000000000001CLL;
    v15._object = 0xE600000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v14, v4, v15, v18)._countAndFlagsBits;
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *DOCRenameOperation.operationForRedoing()(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp);
  if (v5)
  {
    v7 = v5;
    v8 = a1();

    if (v8)
    {
      type metadata accessor for DOC_FIRenameOperation();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        v11 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_node);
        v12 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_shouldDonateAppIntents);
        v13 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_undoManager);
        swift_unknownObjectRetain();
        return _s26DocumentManagerExecutables18DOCRenameOperationC4with8renameOp22shouldDonateAppIntents04undoB0ACSo7DOCNode_p_So011DOCUndoableE0_pSbSo07DOCUndoB0Ctc33_3DF2C731D711A9239F302026BC8371EALlfCTf4nennn_nAA012DOC_FIRenameE0ALLLC_Tt3g5(v11, v10, v12, v13);
      }

      swift_unknownObjectRelease();
    }
  }

  v15 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp);
  if (v15)
  {
    v16 = v15;
    v17 = a2();

    result = 0;
    if (!v17)
    {
      return result;
    }

    type metadata accessor for DOC_FPRenameOperation();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = v18;
      v20 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_node);
      v21 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_shouldDonateAppIntents);
      v22 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_undoManager);
      swift_unknownObjectRetain();
      return _s26DocumentManagerExecutables18DOCRenameOperationC4with8renameOp22shouldDonateAppIntents04undoB0ACSo7DOCNode_p_So011DOCUndoableE0_pSbSo07DOCUndoB0Ctc33_3DF2C731D711A9239F302026BC8371EALlfCTf4nennn_nAA012DOC_FPRenameE0ALLLC_Tt3g5(v20, v19, v21, v22);
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id DOCRenameOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOC_FIRenameOperation.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *_s26DocumentManagerExecutables18DOCRenameOperationC4with8renameOp22shouldDonateAppIntents04undoB0ACSo7DOCNode_p_So011DOCUndoableE0_pSbSo07DOCUndoB0Ctc33_3DF2C731D711A9239F302026BC8371EALlfCTf4nennn_nAA012DOC_FIRenameE0ALLLC_Tt3g5(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = type metadata accessor for DOCRenameOperation();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp] = 0;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp] = 0;
  v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_waitingForNodes] = 0;
  v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_scheduleWasDeferred] = 0;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation____lazy_storage___stateLock] = 0;
  v12 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_conflictHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_errorRecoveryHandler_FP];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_errorHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_completionHandler];
  *v15 = 0;
  v15[1] = 0;
  *&v9[v10] = a2;
  *&v9[v11] = 0;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_node] = a1;
  v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_shouldDonateAppIntents] = a3;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_undoManager] = a4;
  v22.receiver = v9;
  v22.super_class = v8;
  swift_unknownObjectRetain();
  v16 = a4;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  v18 = *((*MEMORY[0x277D85000] & *v17) + 0x1D8);
  v19 = v17;
  v18(v19, v20);

  swift_unknownObjectRelease();
  return v19;
}

void *_s26DocumentManagerExecutables18DOCRenameOperationC4with8renameOp22shouldDonateAppIntents04undoB0ACSo7DOCNode_p_So011DOCUndoableE0_pSbSo07DOCUndoB0Ctc33_3DF2C731D711A9239F302026BC8371EALlfCTf4nennn_nAA012DOC_FPRenameE0ALLLC_Tt3g5(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = type metadata accessor for DOCRenameOperation();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp] = 0;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp] = 0;
  v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_waitingForNodes] = 0;
  v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_scheduleWasDeferred] = 0;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation____lazy_storage___stateLock] = 0;
  v12 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_conflictHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_errorRecoveryHandler_FP];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_errorHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_completionHandler];
  *v15 = 0;
  v15[1] = 0;
  *&v9[v10] = 0;
  *&v9[v11] = a2;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_node] = a1;
  v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_shouldDonateAppIntents] = a3;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_undoManager] = a4;
  v22.receiver = v9;
  v22.super_class = v8;
  swift_unknownObjectRetain();
  v16 = a4;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  v18 = *((*MEMORY[0x277D85000] & *v17) + 0x1D8);
  v19 = v17;
  v18(v19, v20);

  swift_unknownObjectRelease();
  return v19;
}

char *specialized DOC_FIRenameOperation.init(node:rawName:undoManager:shouldRegisterUndo:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, _BYTE *a6)
{
  v10 = &a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_originalRawName];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_hideExtension] = 2;
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_docNode] = a1;
  v11 = [swift_unknownObjectRetain() filename];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *v10 = v12;
  v10[1] = v14;
  v15 = a4;

  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager] = a4;
  a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo] = a5;
  if (DOCNode.isFINode.getter())
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClassUnconditional();
    swift_unknownObjectRetain();
    v17 = a4;
    v18 = MEMORY[0x24C1FAD20](a2, a3);

    v26.receiver = a6;
    v26.super_class = type metadata accessor for DOC_FIRenameOperation();
    v19 = objc_msgSendSuper2(&v26, sel_initWithNode_rawName_, v16, v18);
  }

  else
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClassUnconditional();
    swift_unknownObjectRetain();
    v17 = a4;
    v18 = MEMORY[0x24C1FAD20](a2, a3);

    v27.receiver = a6;
    v27.super_class = type metadata accessor for DOC_FIRenameOperation();
    v19 = objc_msgSendSuper2(&v27, sel_initWithItem_rawName_, v20, v18);
  }

  v21 = v19;
  swift_unknownObjectRelease();

  if (v21)
  {

    if (v21[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo] == 1)
    {
      v22 = *&v21[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager];
      v23 = v21;
      [v22 registerUndoOperationForSender_];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v21;
}

void *specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(void *a1, uint64_t a2, uint64_t a3, char a4, char a5, void *a6, _BYTE *a7)
{
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp] = 0;
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp] = 0;
  a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_waitingForNodes] = 0;
  a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_scheduleWasDeferred] = 0;
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation____lazy_storage___stateLock] = 0;
  v12 = &a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_conflictHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = &a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_errorRecoveryHandler_FP];
  *v13 = 0;
  v13[1] = 0;
  v14 = &a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_errorHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = &a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_completionHandler];
  *v15 = 0;
  v15[1] = 0;
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_node] = a1;
  a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_shouldDonateAppIntents] = a5;
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_undoManager] = a6;
  v46.receiver = a7;
  v46.super_class = type metadata accessor for DOCRenameOperation();
  swift_unknownObjectRetain();
  v16 = a6;
  v17 = objc_msgSendSuper2(&v46, sel_init);
  if (![objc_opt_self() useFIOperations])
  {
    if (DOCNode.isFINode.getter())
    {
      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.Rename);
      swift_unknownObjectRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClassUnconditional();
        *(v35 + 4) = v37;
        *v36 = v37;
        swift_unknownObjectRetain();
        _os_log_impl(&dword_2493AC000, v33, v34, "Fetching FPItem for node async: %@", v35, 0xCu);
        outlined destroy of CharacterSet?(v36, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v36, -1, -1);
        MEMORY[0x24C1FE850](v35, -1, -1);
      }

      *(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_waitingForNodes) = 1;
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      *(v39 + 24) = a1;
      *(v39 + 32) = a2;
      *(v39 + 40) = a3;
      *(v39 + 48) = a4 & 1;
      swift_unknownObjectRetain();

      DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:), v39);

      v40 = swift_unknownObjectRelease();
      goto LABEL_22;
    }

    objc_opt_self();
    v41 = swift_dynamicCastObjCClassUnconditional();
    v42 = renameOp #1 (for:with:) in DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(v41, a2, a3, a4 & 1);
    outlined consume of RenameProposition();
    swift_unknownObjectRelease();
    v43 = *(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp);
    *(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp) = v42;
LABEL_21:

LABEL_22:
    (*((*MEMORY[0x277D85000] & *v17) + 0x1D8))(v40);
    return v17;
  }

  if ((a4 & 1) == 0)
  {
LABEL_20:
    v44 = objc_allocWithZone(type metadata accessor for DOC_FIRenameOperation());
    v45 = specialized DOC_FIRenameOperation.init(node:rawName:undoManager:shouldRegisterUndo:)(a1, a2, a3, v16, 0, v44);
    v43 = *(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp);
    *(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp) = v45;
    goto LABEL_21;
  }

  result = [a1 filename];
  if (result)
  {
    v19 = result;
    v20 = [result pathExtension];

    v21 = v20;
    if (!v20)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = MEMORY[0x24C1FAD20](v22);
    }

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      v27 = MEMORY[0x24C1FAD20](a2, a3);
      v28 = [v27 stringByAppendingPathExtension_];

      if (v28)
      {
        outlined consume of RenameProposition();
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
        outlined consume of RenameProposition();

        a2 = v29;
        a3 = v31;
        goto LABEL_20;
      }
    }

    else
    {
    }

    outlined consume of RenameProposition();
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

{
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp] = 0;
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp] = 0;
  a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_waitingForNodes] = 0;
  a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_scheduleWasDeferred] = 0;
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation____lazy_storage___stateLock] = 0;
  v12 = &a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_conflictHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = &a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_errorRecoveryHandler_FP];
  *v13 = 0;
  v13[1] = 0;
  v14 = &a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_errorHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = &a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_completionHandler];
  *v15 = 0;
  v15[1] = 0;
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_node] = a1;
  a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_shouldDonateAppIntents] = a5;
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_undoManager] = a6;
  v51.receiver = a7;
  v51.super_class = type metadata accessor for DOCRenameOperation();
  v16 = a1;
  v17 = a6;
  v18 = objc_msgSendSuper2(&v51, sel_init);
  if (![objc_opt_self() useFIOperations])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.Rename);
      v34 = v16;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        objc_opt_self();
        v39 = swift_dynamicCastObjCClassUnconditional();
        *(v37 + 4) = v39;
        *v38 = v39;
        v40 = v34;
        _os_log_impl(&dword_2493AC000, v35, v36, "Fetching FPItem for node async: %@", v37, 0xCu);
        outlined destroy of CharacterSet?(v38, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v38, -1, -1);
        MEMORY[0x24C1FE850](v37, -1, -1);
      }

      *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_waitingForNodes) = 1;
      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      *(v42 + 24) = v34;
      *(v42 + 32) = a2;
      *(v42 + 40) = a3;
      *(v42 + 48) = a4 & 1;
      v43 = swift_allocObject();
      *(v43 + 16) = _s26DocumentManagerExecutables18DOCRenameOperationC4node7newName22shouldDonateAppIntents04undoB0ACSo7DOCNode_p_AC0H4TypeOSbSo07DOCUndoB0Ctc33_3DF2C731D711A9239F302026BC8371EALlfcySo6FPItemCSgcfU_TA_0;
      *(v43 + 24) = v42;
      v50[4] = partial apply for closure #1 in DOCNode.fpfs_fetchFPItem(completion:);
      v50[5] = v43;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 1107296256;
      v50[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      v50[3] = &block_descriptor_324;
      v44 = _Block_copy(v50);
      v45 = v34;

      [v45 fetchFPItem_];
      _Block_release(v44);
    }

    else
    {
      objc_opt_self();
      v46 = swift_dynamicCastObjCClassUnconditional();
      v47 = renameOp #1 (for:with:) in DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(v46, a2, a3, a4 & 1);
      outlined consume of RenameProposition();

      v45 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp);
      *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp) = v47;
    }

    goto LABEL_21;
  }

  if ((a4 & 1) == 0)
  {
LABEL_20:
    v48 = objc_allocWithZone(type metadata accessor for DOC_FIRenameOperation());
    v49 = specialized DOC_FIRenameOperation.init(node:rawName:undoManager:shouldRegisterUndo:)(v16, a2, a3, v17, 0, v48);
    v45 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp);
    *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp) = v49;
LABEL_21:

    (*((*MEMORY[0x277D85000] & *v18) + 0x1D8))();
    return v18;
  }

  result = [v16 filename];
  if (result)
  {
    v20 = result;
    v21 = [result pathExtension];

    v22 = v21;
    if (!v21)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = MEMORY[0x24C1FAD20](v23);
    }

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v28 = MEMORY[0x24C1FAD20](a2, a3);
      v29 = [v28 stringByAppendingPathExtension_];

      if (v29)
      {
        outlined consume of RenameProposition();
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;
        outlined consume of RenameProposition();

        a2 = v30;
        a3 = v32;
        goto LABEL_20;
      }
    }

    else
    {
    }

    outlined consume of RenameProposition();
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

{
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fiNodeRenameOp] = 0;
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_fpItemRenameOp] = 0;
  a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_waitingForNodes] = 0;
  a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_scheduleWasDeferred] = 0;
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation____lazy_storage___stateLock] = 0;
  v12 = &a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_conflictHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = &a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_errorRecoveryHandler_FP];
  *v13 = 0;
  v13[1] = 0;
  v14 = &a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_errorHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = &a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_completionHandler];
  *v15 = 0;
  v15[1] = 0;
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_node] = a1;
  a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_shouldDonateAppIntents] = a5;
  *&a7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_undoManager] = a6;
  v68.receiver = a7;
  v68.super_class = type metadata accessor for DOCRenameOperation();
  v16 = a1;
  v17 = a6;
  v18 = objc_msgSendSuper2(&v68, sel_init);
  if (![objc_opt_self() useFIOperations])
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.Rename);
    v34 = v16;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      objc_opt_self();
      v39 = swift_dynamicCastObjCClassUnconditional();
      *(v37 + 4) = v39;
      *v38 = v39;
      v40 = v34;
      _os_log_impl(&dword_2493AC000, v35, v36, "Fetching FPItem for node async: %@", v37, 0xCu);
      outlined destroy of CharacterSet?(v38, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v38, -1, -1);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }

    *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCRenameOperation_waitingForNodes) = 1;
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v34;
    *(v42 + 32) = a2;
    *(v42 + 40) = a3;
    *(v42 + 48) = a4 & 1;
    v43 = swift_allocObject();
    *(v43 + 16) = closure #1 in DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)partial apply;
    *(v43 + 24) = v42;
    aBlock[4] = closure #1 in DOCNode.fpfs_fetchFPItem(completion:)partial apply;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_364;
    v44 = _Block_copy(aBlock);
    v45 = v34;

    [v45 fetchFPItem_];
    _Block_release(v44);

    goto LABEL_24;
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_18;
  }

  result = [v16 filename];
  if (result)
  {
    v20 = result;
    v21 = [result pathExtension];

    v22 = v21;
    if (!v21)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = MEMORY[0x24C1FAD20](v23);
    }

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v28 = MEMORY[0x24C1FAD20](a2, a3);
      v29 = [v28 stringByAppendingPathExtension_];

      if (v29)
      {
        outlined consume of RenameProposition();
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;
        outlined consume of RenameProposition();

        v65 = v30;
        a3 = v32;
LABEL_19:
        v46 = type metadata accessor for DOC_FIRenameOperation();
        v47 = objc_allocWithZone(v46);
        v48 = &v47[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_originalRawName];
        *v48 = 0;
        v48[1] = 0xE000000000000000;
        v47[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_hideExtension] = 2;
        *&v47[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_docNode] = v16;
        v49 = v16;
        v50 = v17;
        v51 = [v49 filename];
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        *v48 = v52;
        v48[1] = v54;

        *&v47[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager] = v50;
        v47[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo] = 0;
        objc_opt_self();
        v55 = swift_dynamicCastObjCClassUnconditional();
        v56 = v49;
        v57 = v50;
        v58 = MEMORY[0x24C1FAD20](v65, a3);

        v66.receiver = v47;
        v66.super_class = v46;
        v59 = objc_msgSendSuper2(&v66, sel_initWithNode_rawName_, v55, v58);
        v60 = v59;

        if (v60)
        {

          v61 = &unk_27EEE8000;
          if (v60[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo] == 1)
          {
            v62 = *&v60[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager];
            v63 = v60;
            [v62 registerUndoOperationForSender_];
          }
        }

        else
        {
          v59 = 0;
          v61 = &unk_27EEE8000;
        }

        v64 = v61[120];
        v45 = *(v18 + v64);
        *(v18 + v64) = v59;
LABEL_24:

        (*((*MEMORY[0x277D85000] & *v18) + 0x1D8))();
        return v18;
      }
    }

    else
    {
    }

    outlined consume of RenameProposition();
LABEL_18:
    v65 = a2;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *specialized DOCRenameOperation.__allocating_init(node:newDisplayName:shouldDonateAppIntents:undoManager:)(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());

  return specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(a1, a2, a3, 1, a4, a5, v10);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCRenameOperation.NameType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCRenameOperation.NameType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError) -> ()()
{
  v1 = *(v0 + 16);
  v2 = _convertErrorToNSError(_:)();
  (*(v1 + 16))(v1, v2);
}

uint64_t objectdestroy_48Tm()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed DOCNode?) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed FIOperationError?, @in_guaranteed Error?) -> (@out FIOperationReply?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v8 = a2;
  v9 = a1;
  v7 = a3;
  v4(&v6, &v9, &v8, &v7);
  return v6;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @guaranteed FIOperationError?, @guaranteed Error?) -> (@owned FIOperationReply?)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, *a2, *a3);
  *a4 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed OperationConflict, @in_guaranteed FIOperationRecord) -> (@out OperationResolution)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v4(&v6, &v9, &v8, &v7);
  return v6;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @unowned OperationConflict, @guaranteed FIOperationRecord) -> (@unowned OperationResolution)@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, _DWORD *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, *a2, *a3);
  *a4 = result;
  return result;
}

uint64_t partial apply for closure #1 in DOCRenameOperation._schedule()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in DOCRenameOperation._schedule()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in DOCRenameOperation._schedule()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t DOCFileProviderSyncStateProvider.__allocating_init(for:initialObservingState:)(void *a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *(*static DOCFileProviderSyncStateObserverCache.shared + 112);

  v6 = v5(a1);

  *(v4 + 16) = v6;
  if (a2)
  {
    swift_beginAccess();
    if ((*(v4 + 24) & 1) == 0)
    {
      *(v4 + 24) = 1;
      (*(*v6 + 272))(v4);
    }
  }

  return v4;
}

uint64_t DOCFileProviderSyncStateProvider.init(for:initialObservingState:)(void *a1, char a2)
{
  *(v2 + 24) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *(*static DOCFileProviderSyncStateObserverCache.shared + 112);

  v6 = v5(a1);

  *(v2 + 16) = v6;
  if (a2)
  {
    (*(*v2 + 144))(v7);
  }

  return v2;
}

uint64_t *DOCFileProviderSyncStateProvider.deinit()
{
  (*(*v0 + 152))();

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v0[4]);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v0[6]);
  return v0;
}

uint64_t DOCFileProviderSyncStateProvider.__deallocating_deinit()
{
  (*(*v0 + 152))();

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v0[4]);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v0[6]);

  return swift_deallocClassInstance();
}

Swift::Int DOCFileProviderSyncStateProvider.ObservingState.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t DOCFileProviderSyncStateProvider.observingState.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1 & 1;
  return result;
}

Swift::Void __swiftcall DOCFileProviderSyncStateProvider.startObserving()()
{
  if ((((*v0)[15])() & 1) == 0)
  {
    ((*v0)[16])(1);
    (*(*v0[2] + 272))();
  }
}

Swift::Void __swiftcall DOCFileProviderSyncStateProvider.stopObserving()()
{
  if (((*v0)[15])())
  {
    ((*v0)[16])(0);
    (*(*v0[2] + 280))();
  }
}

size_t DOCFileProviderSyncStateProvider.requestInProgressFileOperations(responseBlock:)(void (*a1)(unint64_t, void), uint64_t a2)
{
  v25 = a2;
  v4 = type metadata accessor for DOCFileOperation();
  v5 = *(v4 - 8);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);
  v27[4] = (*(*v10 + 408))(v7);
  v11 = 0;
  v27[5] = (*(*v10 + 432))();
  v12 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  while (v11 != 2)
  {
    v14 = v27[v11++ + 4];
    if (v14)
    {
      v15 = v14;
      MEMORY[0x24C1FB090]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v26;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10NSProgressCSgMd);
  swift_arrayDestroy();
  if (!(v13 >> 62))
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_19:

    a1(MEMORY[0x277D84F90], 0);
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_19;
  }

LABEL_9:
  v26 = v12;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v24 = a1;
    v18 = 0;
    v19 = v26;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C1FC540](v18, v13);
      }

      else
      {
        v20 = *(v13 + 8 * v18 + 32);
      }

      DOCFileOperation.init(from:)(v20, v9);
      v26 = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
        v19 = v26;
      }

      ++v18;
      *(v19 + 16) = v22 + 1;
      outlined init with take of DOCFileOperation(v9, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, type metadata accessor for DOCFileOperation);
    }

    while (v16 != v18);

    v24(v19, 0);
  }

  __break(1u);
  return result;
}

uint64_t DOCFileOperation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DOCProgressProvidingOperationIconType();
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v28 - v18;
  v20 = NSProgress.fileTotalCount.getter();
  v22 = v21;
  v30 = [a1 hash];
  AnyHashable.init<A>(_:)();
  static Date.now.getter();
  (*(v5 + 56))(v19, 0, 1, v4);
  if ((v22 & 1) == 0 && v20 >= 2)
  {
    *v11 = 0xD000000000000012;
    v11[1] = 0x8000000249BD1F60;
  }

  swift_storeEnumTagMultiPayload();
  outlined init with copy of AnyHashable(v31, a2);
  *(a2 + 40) = a1;
  outlined init with copy of Date?(v19, v15);
  v23 = *(v5 + 48);
  v24 = v23(v15, 1, v4);
  v25 = v29;
  if (v24 == 1)
  {
    Date.init(timeIntervalSinceNow:)();
    outlined destroy of Date?(v19);
    outlined destroy of AnyHashable(v31);
    if (v23(v15, 1, v4) != 1)
    {
      outlined destroy of Date?(v15);
    }
  }

  else
  {
    outlined destroy of Date?(v19);
    outlined destroy of AnyHashable(v31);
    (*(v5 + 32))(v25, v15, v4);
  }

  v26 = type metadata accessor for DOCFileOperation();
  (*(v5 + 32))(a2 + *(v26 + 24), v25, v4);
  return outlined init with take of DOCFileOperation(v11, a2 + *(v26 + 28), type metadata accessor for DOCProgressProvidingOperationIconType);
}

uint64_t key path getter for DOCFileProviderSyncStateProvider.didUpdateInProgressFileOperationsHandler : DOCFileProviderSyncStateProvider@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 168))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCFileProviderSyncStateProvider.didUpdateInProgressFileOperationsHandler : DOCFileProviderSyncStateProvider(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 176);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCFileProviderSyncStateProvider.didUpdateInProgressFileOperationsHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

uint64_t DOCFileProviderSyncStateProvider.didUpdateInProgressFileOperationsHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
}

void DOCFileProviderSyncStateProvider.requestSyncStateInAppMessage(responseBlock:)(void (*a1)(void))
{
  v3 = (*(**(v1 + 16) + 480))();
  a1();
}

uint64_t key path getter for DOCFileProviderSyncStateProvider.didUpdateSyncStateInAppMessageHandler : DOCFileProviderSyncStateProvider@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 200))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCFileProviderSyncStateProvider.didUpdateSyncStateInAppMessageHandler : DOCFileProviderSyncStateProvider(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 208);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCFileProviderSyncStateProvider.didUpdateSyncStateInAppMessageHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

uint64_t DOCFileProviderSyncStateProvider.didUpdateSyncStateInAppMessageHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
}

Swift::Void __swiftcall DOCFileProviderSyncStateProvider.didUpdateSyncProgress()()
{
  v1 = (*(*v0 + 168))();
  if (v1)
  {
    v2 = v1;
    v1();

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2);
  }
}

Swift::Void __swiftcall DOCFileProviderSyncStateProvider.didUpdateSyncInAppMessage()()
{
  v1 = (*(*v0 + 200))();
  if (v1)
  {
    v2 = v1;
    v1();

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2);
  }
}

uint64_t (*protocol witness for DOCFileProviderSyncStateProviding.didUpdateSyncStateInAppMessageHandler.modify in conformance DOCFileProviderSyncStateProvider(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 216))();
  return protocol witness for DOCFileProviderSyncStateProviding.didUpdateSyncStateInAppMessageHandler.modify in conformance DOCFileProviderSyncStateProvider;
}

uint64_t (*protocol witness for DOCFileOperationsProviding.didUpdateInProgressFileOperationsHandler.modify in conformance DOCFileProviderSyncStateProvider(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 184))();
  return protocol witness for DOCFileOperationsProviding.didUpdateInProgressFileOperationsHandler.modify in conformance DOCFileProviderSyncStateProvider;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of DOCFileOperation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DOCFileProviderSyncStateProvider.ObservingState and conformance DOCFileProviderSyncStateProvider.ObservingState()
{
  result = lazy protocol witness table cache variable for type DOCFileProviderSyncStateProvider.ObservingState and conformance DOCFileProviderSyncStateProvider.ObservingState;
  if (!lazy protocol witness table cache variable for type DOCFileProviderSyncStateProvider.ObservingState and conformance DOCFileProviderSyncStateProvider.ObservingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCFileProviderSyncStateProvider.ObservingState and conformance DOCFileProviderSyncStateProvider.ObservingState);
  }

  return result;
}

uint64_t DOCStaticContentOperationSource.__allocating_init(items:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DOCStaticContentOperationSource.init(items:)(a1);
  return v2;
}

uint64_t DOCStaticContentOperationSource.init(items:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = v4;
  v5 = (v1 + 16);
  v5[2] = v4;
  swift_beginAccess();
  *v5 = a1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v23 = v4;

    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = a1 + 32;
    do
    {
      outlined init with copy of DOCSidebarItemIconProvider(v7, v22);
      outlined init with copy of DOCSidebarItemIconProvider(v22, v20);
      type metadata accessor for DOCGenericOperationProgress(0);
      swift_allocObject();
      v8 = v21;
      v9 = __swift_project_boxed_opaque_existential_1(v20, v21);
      v19[3] = v8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
      (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
      outlined init with copy of DOCSidebarItemIconProvider(v20, v18);
      specialized DOCOperationProgress.init(_:progressProvider:observing:)(v19, v18, &outlined read-only object #0 of DOCStaticContentOperationSource.init(items:));
      __swift_destroy_boxed_opaque_existential_0(v22);
      __swift_destroy_boxed_opaque_existential_0(v20);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 += 40;
      --v6;
    }

    while (v6);

    v4 = v23;
  }

  *(v2 + 24) = v4;

  v11 = *(v2 + 24);
  if (v11 >> 62)
  {
LABEL_19:
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1FC540](v13, v11);
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v14 = *(v11 + 8 * v13 + 32);

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_16;
        }
      }

      (*(*v14 + 168))(1);
      v16 = swift_allocObject();
      swift_weakInit();
      (*(*v14 + 424))(partial apply for closure #1 in closure #2 in DOCStaticContentOperationSource.init(items:), v16);

      ++v13;
    }

    while (v15 != v12);
  }

  return v2;
}

uint64_t closure #1 in closure #2 in DOCStaticContentOperationSource.init(items:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DOCStaticContentOperationSource.updateItems()();
  }

  return result;
}

uint64_t key path setter for DOCStaticContentOperationSource.unorderedItems : DOCStaticContentOperationSource(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t DOCStaticContentOperationSource.setItemDidUpdateHandler(forClient:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v8 = 0;
  v9 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v3 + 32, a1);
  swift_unknownObjectRelease();
  v10 = *(*(v4 + 32) + 16);
  if (v10 < v9)
  {
    __break(1u);
LABEL_9:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *(v4 + 32) = v8;
    goto LABEL_4;
  }

  specialized Array.replaceSubrange<A>(_:with:)(v9, v10);
  result = swift_endAccess();
  if (!a2)
  {
    return result;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  swift_beginAccess();
  v8 = *(v4 + 32);
  swift_unknownObjectRetain();
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 32) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v14 = v8[2];
  v13 = v8[3];
  if (v14 >= v13 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
  }

  v8[2] = v14 + 1;
  v15 = &v8[3 * v14];
  v15[4] = a1;
  v15[5] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCProgressProvidingOperationCollectionSource) -> ();
  v15[6] = v9;
  *(v4 + 32) = v8;
  return swift_endAccess();
}

uint64_t DOCStaticContentOperationSource.updateItems()()
{
  result = (*(*v0 + 112))();
  v2 = result;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    v6 = result + 32;
    v7 = &selRef_initWithFrame_;
    while (v4 < *(v2 + 16))
    {
      outlined init with copy of DOCSidebarItemIconProvider(v6, v27);
      v8 = v28;
      v9 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      v10 = (*(v9 + 24))(v8, v9);
      if (([v10 v7[49]] & 1) != 0 || (objc_msgSend(v10, sel_isFinished) & 1) != 0 || (objc_msgSend(v10, sel_fractionCompleted), v11 >= 1.0))
      {

        result = __swift_destroy_boxed_opaque_existential_0(v27);
      }

      else
      {
        [v10 isPaused];

        outlined init with take of DOCDSCopyEngineConnection(v27, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
          v5 = v30;
        }

        v14 = *(v5 + 16);
        v13 = *(v5 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        }

        v15 = v25;
        v16 = v26;
        v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
        v18 = MEMORY[0x28223BE20](v17, v17);
        v20 = &v24[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        (*(v21 + 16))(v20, v18);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v14, v20, &v30, v15, v16);
        result = __swift_destroy_boxed_opaque_existential_0(v24);
        v5 = v30;
        v7 = &selRef_initWithFrame_;
      }

      ++v4;
      v6 += 40;
      if (v3 == v4)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_15:

    v22 = v23;
    swift_beginAccess();
    *(v22 + 16) = v5;

    return DOCStaticContentOperationSource.notifyClients()();
  }

  return result;
}

uint64_t DOCStaticContentOperationSource.notifyClients()()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (!v2)
  {
  }

  v4 = 0;
  v5 = v1 + 48;
  while (v4 < *(v1 + 16))
  {
    ++v4;
    v6 = *(v5 - 8);
    v7[0] = v0;
    v7[1] = &protocol witness table for DOCStaticContentOperationSource;
    swift_unknownObjectRetain();

    v6(v7);

    result = swift_unknownObjectRelease();
    v5 += 24;
    if (v2 == v4)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t DOCStaticContentOperationSource.deinit()
{

  return v0;
}

uint64_t DOCStaticContentOperationSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCFakeStaticContentProgress.dateStarted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DOCFakeStaticContentProgress() + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DOCFakeStaticContentProgress.dateStarted.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DOCFakeStaticContentProgress() + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

id DOCFakeStaticContentProgress.progress.getter()
{
  v1 = *(v0 + *(type metadata accessor for DOCFakeStaticContentProgress() + 24));

  return v1;
}

void DOCFakeStaticContentProgress.progress.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DOCFakeStaticContentProgress() + 24);

  *(v1 + v3) = a1;
}

uint64_t DOCFakeStaticContentProgress.iconType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DOCFakeStaticContentProgress() + 28);

  return outlined init with copy of DOCProgressProvidingOperationIconType(v3, a1);
}

uint64_t DOCFakeStaticContentProgress.iconType.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DOCFakeStaticContentProgress() + 28);

  return outlined assign with take of DOCProgressProvidingOperationIconType(a1, v3);
}

uint64_t one-time initialization function for nextDateStarted()
{
  v0 = type metadata accessor for Date();
  __swift_allocate_value_buffer(v0, static DOCFakeStaticContentProgress.nextDateStarted);
  __swift_project_value_buffer(v0, static DOCFakeStaticContentProgress.nextDateStarted);
  return Date.init(timeIntervalSinceNow:)();
}

id DOCFakeStaticContentProgress.init(progressValue:timeRemaining:fakeFileNameWithExtension:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a3;
  v91 = a2;
  v105 = a4;
  v88 = type metadata accessor for String.Encoding();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v5);
  v86 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v97 = *(v7 - 8);
  v98 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v96 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v94 = &v85 - v12;
  v13 = type metadata accessor for UTType();
  v100 = *(v13 - 8);
  v101 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v93 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v103 = &v85 - v18;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v85 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v85 - v30;
  v32 = type metadata accessor for UUID();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a1;
  v95 = *(a1 + 8);
  UUID.init()();
  v38 = UUID.uuidString.getter();
  v40 = v39;
  (*(v33 + 8))(v36, v32);
  v108 = v38;
  v109 = v40;
  v41 = v105;
  AnyHashable.init<A>(_:)();
  v92 = type metadata accessor for DOCFakeStaticContentProgress();
  v42 = *(v92 + 24);
  v43 = [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
  *(v41 + v42) = v43;
  v44 = one-time initialization token for nextDateStarted;
  v45 = v43;
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v19, static DOCFakeStaticContentProgress.nextDateStarted);
  swift_beginAccess();
  v47 = *(v20 + 16);
  v47(v31, v46, v19);
  v102 = v31;
  v47(v23, v31, v19);
  Date.init(timeInterval:since:)();
  swift_beginAccess();
  v89 = v20;
  v48 = *(v20 + 40);
  v99 = v19;
  v48(v46, v27, v19);
  swift_endAccess();
  if (v104)
  {
    v49 = v104;
    v50 = v103;
    v51 = v91;
  }

  else
  {
    v106 = 0x746E656D75636F44;
    v107 = 0xE90000000000002DLL;
    v52 = AnyHashable.description.getter();
    MEMORY[0x24C1FAEA0](v52);

    MEMORY[0x24C1FAEA0](1717858350, 0xE400000000000000);
    v51 = v106;
    v49 = v107;
    v50 = v103;
  }

  v106 = 47;
  v107 = 0xE100000000000000;

  v53 = NSTemporaryDirectory();
  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  MEMORY[0x24C1FAEA0](v54, v56);

  MEMORY[0x24C1FAEA0](47, 0xE100000000000000);
  MEMORY[0x24C1FAEA0](v51, v49);
  v90 = v106;
  v91 = v107;
  v57 = MEMORY[0x24C1FAD20](v51, v49);

  v58 = [v57 pathExtension];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static UTType.data.getter();
  v59 = v94;
  UTType.init(filenameExtension:conformingTo:)();
  v61 = v100;
  v60 = v101;
  v62 = *(v100 + 48);
  if (v62(v59, 1, v101) == 1)
  {
    static UTType.item.getter();
    if (v62(v59, 1, v60) != 1)
    {
      outlined destroy of UTType?(v59);
    }
  }

  else
  {
    (*(v61 + 32))(v50, v59, v60);
  }

  v63 = v92;
  v64 = v105;
  (*(v61 + 16))(v105 + *(v92 + 28), v50, v60);
  type metadata accessor for DOCProgressProvidingOperationIconType();
  swift_storeEnumTagMultiPayload();
  v65 = v99;
  v47((v64 + *(v63 + 20)), v102, v99);
  [v45 setKind_];
  [v45 setFileOperationKind_];
  v66 = v96;
  v67 = v90;
  v68 = v91;
  URL.init(fileURLWithPath:)();
  URL._bridgeToObjectiveC()(v69);
  v71 = v70;
  (*(v97 + 8))(v66, v98);
  [v45 setFileURL_];

  NSProgress.estimatedTimeRemaining.setter();
  NSProgress.fileTotalCount.setter();
  NSProgress.fileCompletedCount.setter();

  if ((v95 & 1) == 0)
  {
    result = [v45 setTotalUnitCount_];
    v75 = v37 * 1000000.0;
    v73 = v104;
    if (COERCE__INT64(fabs(v37 * 1000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v75 > -9.22337204e18)
    {
      if (v75 < 9.22337204e18)
      {
        v72 = v75;
        goto LABEL_16;
      }

LABEL_25:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_25;
  }

  [v45 setTotalUnitCount_];
  v72 = 0;
  v73 = v104;
LABEL_16:
  [v45 setCompletedUnitCount_];
  if (v73)
  {

    v76 = [objc_opt_self() defaultManager];
    v77 = MEMORY[0x24C1FAD20](v67, v68);

    v78 = v86;
    static String.Encoding.utf8.getter();
    v79 = String.data(using:allowLossyConversion:)();
    v81 = v80;
    (*(v87 + 8))(v78, v88);
    if (v81 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v79, v81);
    }

    v83 = v89;
    v84 = v102;
    [v76 createFileAtPath:v77 contents:isa attributes:0];
  }

  else
  {

    v83 = v89;
    v84 = v102;
  }

  (*(v61 + 8))(v103, v60);
  return (*(v83 + 8))(v84, v65);
}

uint64_t protocol witness for DOCProgressProvidingOperation.dateStarted.getter in conformance DOCFakeStaticContentProgress@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t specialized DOCOperationProgress.init(_:progressProvider:observing:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v34 = a1;
  v35 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v4 + direct field offset for DOCOperationProgress.updateHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = v4 + *(*v4 + 328);
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = *(*v4 + 336);
  *(v4 + v13) = 2;
  v14 = (v4 + *(*v4 + 344));
  UUID.init()();
  UUID.uuidString.getter();
  (*(v7 + 8))(v10, v6);
  v15 = specialized Collection.prefix(_:)(6);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  *v14 = v15;
  v14[1] = v17;
  v14[2] = v19;
  v14[3] = v21;
  v22 = v4 + *(*v4 + 368);
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0xE000000000000000;
  v23 = v4 + *(*v4 + 376);
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0xE000000000000000;
  v24 = (v4 + *(*v4 + 384));
  *v24 = 0u;
  v24[1] = 0u;
  *(v4 + *(*v4 + 392)) = 0;
  v25 = MEMORY[0x277D84F90];
  *(v4 + *(*v4 + 400)) = MEMORY[0x277D84F90];
  *(v4 + *(*v4 + 408)) = v25;
  v26 = v34;
  outlined init with copy of Any(v34, v4 + *(*v4 + 312));
  v27 = a2[3];
  v28 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v27);
  (*(v28 + 8))(v36, v27, v28);
  v29 = v4 + *(*v4 + 320);
  v30 = v36[1];
  *v29 = v36[0];
  *(v29 + 16) = v30;
  *(v29 + 32) = v37;
  outlined init with copy of DOCSidebarItemIconProvider(a2, v4 + *(*v4 + 352));
  *(v4 + *(*v4 + 360)) = v35;
  swift_beginAccess();
  *(v4 + v13) = 2;
  swift_beginAccess();
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v4 + 24) = 256;
  *(v4 + 32) = 0;
  v31 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
  v32 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  (*(*(v32 - 8) + 56))(v4 + v31, 1, 1, v32);
  *(v4 + 16) = 0x3FE0000000000000;
  DOCAbstractPacedPropertyUpdater.triggerUpdateProperties(notifyType:)(0);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v4;
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v12[3] = a4;
  v12[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of DOCDSCopyEngineConnection(v12, v10 + 40 * a1 + 32);
}

{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of DOCGoToFolderCandidate(&v12, v10 + 40 * a1 + 32);
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (v3[v6 + 4] != a2)
  {
    ++v7;
    v6 += 3;
    if (v4 == v7)
    {
      return *(*result + 16);
    }
  }

  if (v2)
  {
    return v7;
  }

  v8 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    if (v8 == v4)
    {
      return v7;
    }

    v15 = result;
    while (v8 < v4)
    {
      v9 = v3[v6 + 7];
      if (v9 != a2)
      {
        if (v8 != v7)
        {
          if (v7 >= v4)
          {
            goto LABEL_23;
          }

          v10 = &v3[3 * v7 + 4];
          v11 = *(v10 + 16);
          v12 = v3[v6 + 9];
          v17 = v3[v6 + 8];
          v16 = *v10;
          swift_unknownObjectRetain();

          swift_unknownObjectRetain();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
          }

          v13 = &v3[3 * v7];
          v13[4] = v9;
          v13[5] = v17;
          v13[6] = v12;

          result = swift_unknownObjectRelease();
          if (v8 >= v3[2])
          {
            goto LABEL_24;
          }

          v14 = &v3[v6];
          *(v14 + 7) = v16;
          v14[9] = v11;

          result = swift_unknownObjectRelease();
          *v15 = v3;
        }

        ++v7;
      }

      ++v8;
      v4 = v3[2];
      v6 += 3;
      if (v8 == v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for DOCFakeStaticContentProgress()
{
  result = type metadata singleton initialization cache for DOCFakeStaticContentProgress;
  if (!type metadata singleton initialization cache for DOCFakeStaticContentProgress)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of DOCProgressProvidingOperationIconType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCProgressProvidingOperationIconType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of DOCProgressProvidingOperationIconType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCProgressProvidingOperationIconType();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UTType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata completion function for DOCFakeStaticContentProgress()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NSProgress();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DOCProgressProvidingOperationIconType();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for NSProgress()
{
  result = lazy cache variable for type metadata for NSProgress;
  if (!lazy cache variable for type metadata for NSProgress)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSProgress);
  }

  return result;
}

void *specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

id DOCInfoActionsView.init(actionManager:configuration:)(void *a1, void *a2)
{
  swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_isLeadingSpacerShown] = 1;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_isTrailingSpacerShown] = 1;
  v5 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_nodes] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_loadedActions] = v5;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_actionsLayout;
  type metadata accessor for DOCInfoActionsView.ActionsLayout();
  v7 = swift_allocObject();
  v7[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8UIButtonC_So23UIDocumentBrowserActionCTt0g5Tf4g_n(v5);
  v7[3] = v5;
  v7[4] = MEMORY[0x277D84FA0];
  *&v2[v6] = v7;
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_configuration] = a2;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for DOCInfoActionsView();
  v8 = a2;
  v9 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v9 setSpacing_];
  [v9 setDistribution_];
  [v9 setAlignment_];
  LODWORD(v10) = 1148846080;
  [v9 setContentHuggingPriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249B9A480;
  v14 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v15 = MEMORY[0x277D74DB8];
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v9;
}

uint64_t DOCInfoActionsView.actionDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCInfoActionsView.actionDelegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_actionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

uint64_t DOCInfoActionsView.isLeadingSpacerShown.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_isLeadingSpacerShown;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*DOCInfoActionsView.isLeadingSpacerShown.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_isLeadingSpacerShown;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCInfoActionsView.isLeadingSpacerShown.modify;
}

uint64_t DOCInfoActionsView.isTrailingSpacerShown.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_isTrailingSpacerShown;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCInfoActionsView.isLeadingSpacerShown.setter(char a1, uint64_t *a2)
{
  v4 = a1 & 1;
  v5 = *a2;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  *(v2 + v5) = a1;
  if (v7 != v4)
  {
    return DOCInfoActionsView.updateForSpacingChange()();
  }

  return result;
}

uint64_t (*DOCInfoActionsView.isTrailingSpacerShown.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_isTrailingSpacerShown;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCInfoActionsView.isTrailingSpacerShown.modify;
}

void DOCInfoActionsView.isLeadingSpacerShown.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    DOCInfoActionsView.updateForSpacingChange()();
  }

  free(v1);
}

id DOCInfoActionsView.updateForSpacingChange()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_actionsLayout);
  v2 = one-time initialization token for actionIDsRequiringExplanatoryTitle;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static DOCInfoActionsView.ActionsLayout.actionIDsRequiringExplanatoryTitle;
  swift_beginAccess();
  *(v1 + 32) = v3;

  v5 = MEMORY[0x277D75060];
  v6 = MEMORY[0x277D85000];
  v7 = 0.0;
  v8 = 0.0;
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xE0))(v4))
  {
    [v0 spacing];
    v8 = v9;
  }

  v10 = *v5;
  v11 = v5[2];
  if ((*((*v6 & *v0) + 0xF8))())
  {
    [v0 spacing];
    v7 = v12;
  }

  [v0 setLayoutMarginsRelativeArrangement_];
  [v0 setDirectionalLayoutMargins_];
  return DOCInfoActionsView.applyLayoutToStackView()();
}

uint64_t DOCInfoActionsView.nodes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_nodes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  v6 = == infix(_:_:)(v5, v4);

  if ((v6 & 1) == 0)
  {

    DOCInfoActionsView.reloadActions(for:)();
  }

  return result;
}

void (*DOCInfoActionsView.nodes.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_nodes;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return DOCInfoActionsView.nodes.modify;
}

void DOCInfoActionsView.nodes.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);

  if (a2)
  {

    v9 = == infix(_:_:)(v8, v6);

    if ((v9 & 1) == 0)
    {

      DOCInfoActionsView.reloadActions(for:)();
    }
  }

  else
  {
    v10 = == infix(_:_:)(v7, v6);

    if (v10)
    {
      goto LABEL_8;
    }

    DOCInfoActionsView.reloadActions(for:)();
  }

LABEL_8:

  free(v3);
}

uint64_t DOCInfoActionsView.actionsInOverflowMenu.getter()
{

  v0 = DOCInfoActionsView.ActionsLayout.overflowOrderedActions.getter();

  return v0;
}

Swift::Void __swiftcall DOCInfoActionsView.layoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCInfoActionsView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v0 frame];
  if (!CGRectIsEmpty(v5))
  {
    [v0 systemLayoutSizeFittingSize_];
    v2 = v1;
    [v0 frame];
    if (CGRectGetWidth(v6) < v2)
    {

      ItemTo = DOCInfoActionsView.ActionsLayout.moveLastItemToOverflow()();

      if (ItemTo)
      {
        DOCInfoActionsView.applyLayoutToStackView()();
      }
    }
  }
}

id @objc DOCInfoActionsView.bounds.getter(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DOCInfoActionsView();
  return objc_msgSendSuper2(&v5, *a3);
}

void @objc DOCInfoActionsView.bounds.setter(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, SEL *a7, SEL *a8)
{
  v15 = type metadata accessor for DOCInfoActionsView();
  v25.receiver = a1;
  v25.super_class = v15;
  v16 = *a7;
  v17 = a1;
  objc_msgSendSuper2(&v25, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24.receiver = v17;
  v24.super_class = v15;
  objc_msgSendSuper2(&v24, *a8, a2, a3, a4, a5);
  DOCInfoActionsView.bounds.didset(a7, v19, v21, v23);
}

id DOCInfoActionsView.bounds.didset(SEL *a1, double a2, double a3, double a4)
{
  result = [v4 *a1];
  if ((v8 != 0.0 || v7 != 0.0) && v7 != a4)
  {
    if (v7 > a4)
    {
      v11 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_actionsLayout];
      v12 = one-time initialization token for actionIDsRequiringExplanatoryTitle;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = static DOCInfoActionsView.ActionsLayout.actionIDsRequiringExplanatoryTitle;
      swift_beginAccess();
      *(v11 + 32) = v13;
    }

    return DOCInfoActionsView.applyLayoutToStackView()();
  }

  return result;
}

Swift::Void __swiftcall DOCInfoActionsView.updateForChangedContentSizeCategory()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_actionsLayout);
  v2 = one-time initialization token for actionIDsRequiringExplanatoryTitle;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static DOCInfoActionsView.ActionsLayout.actionIDsRequiringExplanatoryTitle;
  swift_beginAccess();
  *(v1 + 32) = v3;

  DOCInfoActionsView.applyLayoutToStackView()();
}

id DOCInfoActionsView.loadedActions.didset(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_loadedActions;

  LOBYTE(a1) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo23UIDocumentBrowserActionC_Tt1g5(v4, a1);

  if ((a1 & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_actionsLayout);
    *(v6 + 24) = *(v1 + v3);
    swift_bridgeObjectRetain_n();

    if (one-time initialization token for actionIDsRequiringExplanatoryTitle != -1)
    {
      swift_once();
    }

    v7 = static DOCInfoActionsView.ActionsLayout.actionIDsRequiringExplanatoryTitle;

    swift_beginAccess();
    *(v6 + 32) = v7;

    return DOCInfoActionsView.applyLayoutToStackView()();
  }

  return result;
}

id DOCInfoActionsView.reloadActions(for:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_loadedActions;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_loadedActions];
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_loadedActions] = MEMORY[0x277D84F90];
  DOCInfoActionsView.loadedActions.didset(v2);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_configuration];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v7 = [v4 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = *&v0[v1];
    *&v0[v1] = v8;
    DOCInfoActionsView.loadedActions.didset(v9);
  }

  else
  {

    return [v0 setHidden_];
  }
}

uint64_t DOCInfoActionsView.ActionsLayout.inlineDisplayableOrderedActions.getter()
{
  v1 = *(v0 + 24);
  v24 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v3 = 0;
    v21 = v1 & 0xFFFFFFFFFFFFFF8;
    v22 = v1 & 0xC000000000000001;
    v20 = v1;
    v1 += 32;
    while (1)
    {
      if (v22)
      {
        v4 = MEMORY[0x24C1FC540](v3, v20);
      }

      else
      {
        if (v3 >= *(v21 + 16))
        {
          goto LABEL_27;
        }

        v4 = *(v1 + 8 * v3);
      }

      v5 = v4;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v7 = *(v23 + 32);

      v8 = [v5 identifier];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      if (*(v7 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v12 = Hasher._finalize()(), v13 = -1 << *(v7 + 32), v14 = v12 & ~v13, ((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (1)
        {
          v16 = (*(v7 + 48) + 16 * v14);
          v17 = *v16 == v9 && v16[1] == v11;
          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (v3 == i)
        {
LABEL_23:
          v18 = v24;
          goto LABEL_25;
        }
      }

      else
      {
LABEL_5:

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v3 == i)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_25:

  return v18;
}

uint64_t DOCInfoActionsView.ActionsLayout.overflowOrderedActions.getter()
{
  v1 = *(v0 + 24);
  v24 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v3 = 0;
    v21 = v1 & 0xFFFFFFFFFFFFFF8;
    v22 = v1 & 0xC000000000000001;
    v20 = v1;
    v1 += 32;
    while (1)
    {
      if (v22)
      {
        v4 = MEMORY[0x24C1FC540](v3, v20);
      }

      else
      {
        if (v3 >= *(v21 + 16))
        {
          goto LABEL_27;
        }

        v4 = *(v1 + 8 * v3);
      }

      v5 = v4;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v7 = *(v23 + 32);

      v8 = [v5 identifier];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      if (*(v7 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v12 = Hasher._finalize()(), v13 = -1 << *(v7 + 32), v14 = v12 & ~v13, ((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (1)
        {
          v16 = (*(v7 + 48) + 16 * v14);
          v17 = *v16 == v9 && v16[1] == v11;
          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
LABEL_5:
      }

      if (v3 == i)
      {
        v18 = v24;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_25:

  return v18;
}

uint64_t one-time initialization function for actionIDsRequiringExplanatoryTitle()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA08C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v2;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v3;
  v4 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  static DOCInfoActionsView.ActionsLayout.actionIDsRequiringExplanatoryTitle = v4;
  return result;
}

unint64_t DOCInfoActionsView.ActionsLayout.moveLastItemToOverflow()()
{
  result = DOCInfoActionsView.ActionsLayout.inlineDisplayableOrderedActions.getter();
  if (result >> 62)
  {
    v9 = result;
    v1 = __CocoaSet.count.getter();
    result = v9;
    if (!v1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v1 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
LABEL_9:

      return v1 != 0;
    }
  }

  v2 = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_13:
    v3 = MEMORY[0x24C1FC540](v1 - 1);
    goto LABEL_8;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 8 * v2 + 32);
LABEL_8:
    v4 = v3;

    v5 = [v4 identifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    swift_beginAccess();
    specialized Set._Variant.insert(_:)(&v10, v6, v8);
    swift_endAccess();

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t DOCInfoActionsView.ActionsLayout.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id DOCInfoActionsView.applyLayoutToStackView()()
{
  v1 = v0;
  v76 = type metadata accessor for UIButton.Configuration();
  v2 = *(v76 - 8);
  MEMORY[0x28223BE20](v76 - 8, v3);
  v75 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v74 = &v68 - v8;
  v80 = v1;
  v9 = [v1 arrangedSubviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    v11 = __CocoaSet.count.getter();
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
LABEL_67:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C1FC540](v12, v10);
    }

    else
    {
      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    ++v12;
    [v80 removeArrangedSubview_];
    [v14 removeFromSuperview];
  }

  while (v11 != v12);
LABEL_10:

  v15 = v80;
  v79 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_actionsLayout;
  v16 = *&v80[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_actionsLayout];
  swift_beginAccess();
  *(v16 + 16) = MEMORY[0x277D84F98];

  v17 = *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_loadedActions];
  if (v17 >> 62)
  {
    goto LABEL_63;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v18)
  {
    v78 = v17 & 0xC000000000000001;
    v69 = v17 & 0xFFFFFFFFFFFFFF8;
    v68 = v17 + 32;
    v73 = (v2 + 16);
    v72 = (v2 + 8);
    v71 = v17;

    v19 = 0;
    v20 = 0;
    v77 = v18;
    while (1)
    {
      if (v78)
      {
        v17 = MEMORY[0x24C1FC540](v20, v71);
      }

      else
      {
        if (v20 >= *(v69 + 16))
        {
          goto LABEL_61;
        }

        v17 = *(v68 + 8 * v20);
      }

      v23 = v17;
      v24 = __OFADD__(v20++, 1);
      if (v24)
      {
        break;
      }

      v25 = *&v80[v79];
      swift_beginAccess();
      v26 = *(v25 + 32);

      v2 = [v23 identifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (*(v26 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v30 = Hasher._finalize()();
        v2 = v26 + 56;
        v31 = -1 << *(v26 + 32);
        v32 = v30 & ~v31;
        if ((*(v26 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
        {
          v33 = ~v31;
          while (1)
          {
            v34 = (*(v26 + 48) + 16 * v32);
            v35 = *v34 == v27 && v34[1] == v29;
            if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v32 = (v32 + 1) & v33;
            if (((*(v2 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          goto LABEL_15;
        }
      }

LABEL_30:

      v24 = __OFADD__(v19++, 1);
      if (v24)
      {
        goto LABEL_58;
      }

      if (v19 >= 5)
      {

LABEL_53:

        goto LABEL_54;
      }

      v36 = [v23 image];
      v37 = v74;
      static DOCInfoActionsView.Metrics.buttonConfiguration(for:)(v36);

      v38 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton);
      v39 = v76;
      (*v73)(v75, v37, v76);
      v70 = v38;
      v40 = UIButton.init(configuration:primaryAction:)();
      [v40 setTranslatesAutoresizingMaskIntoConstraints_];
      LODWORD(v41) = 1148846080;
      [v40 setContentHuggingPriority:0 forAxis:v41];
      v42 = v40;
      v43 = [v23 localizedTitle];
      if (!v43)
      {
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = MEMORY[0x24C1FAD20](v44);
      }

      [v42 setAccessibilityLabel_];

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      v45 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v46 = swift_allocObject();
      v47 = v80;
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      *(v48 + 16) = v45;
      *(v48 + 24) = v46;
      v49 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      [v42 setDoc:v49 primaryAction:?];

      (*v72)(v37, v39);
      v50 = *&v47[v79];
      swift_beginAccess();
      v2 = *(v50 + 16);
      if ((v2 & 0xC000000000000001) != 0)
      {
        if (v2 >= 0)
        {
          v2 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v51 = v42;

        v52 = v23;
        v17 = __CocoaSet.count.getter();
        if (__OFADD__(v17, 1))
        {
          goto LABEL_60;
        }

        *(v50 + 16) = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8UIButtonC_So23UIDocumentBrowserActionCTt1g5(v2, v17 + 1);
      }

      else
      {
        v53 = v42;

        v54 = v23;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = *(v50 + 16);
      v2 = v81;
      *(v50 + 16) = 0x8000000000000000;
      v57 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
      v58 = *(v2 + 16);
      v59 = (v56 & 1) == 0;
      v17 = v58 + v59;
      if (__OFADD__(v58, v59))
      {
        goto LABEL_59;
      }

      v60 = v56;
      if (*(v2 + 24) >= v17)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v2 = v81;
          if ((v56 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v17 = specialized _NativeDictionary.copy()();
          v2 = v81;
          if ((v60 & 1) == 0)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_67;
        }

        v57 = v17;
        v2 = v81;
        if ((v60 & 1) == 0)
        {
LABEL_47:
          *(v2 + 8 * (v57 >> 6) + 64) |= 1 << v57;
          *(*(v2 + 48) + 8 * v57) = v42;
          *(*(v2 + 56) + 8 * v57) = v23;
          v62 = *(v2 + 16);
          v24 = __OFADD__(v62, 1);
          v63 = v62 + 1;
          if (v24)
          {
            goto LABEL_62;
          }

          *(v2 + 16) = v63;
          goto LABEL_14;
        }
      }

      v21 = *(v2 + 56);
      v22 = *(v21 + 8 * v57);
      *(v21 + 8 * v57) = v23;

LABEL_14:
      *(v50 + 16) = v2;
      swift_endAccess();

      [v80 addArrangedSubview_];

LABEL_15:
      if (v20 == v77)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v67 = v17;
    v18 = __CocoaSet.count.getter();
    v17 = v67;
  }

LABEL_54:

  v64 = DOCInfoActionsView.ActionsLayout.inlineDisplayableOrderedActions.getter();

  if (v64 >> 62)
  {
    v65 = __CocoaSet.count.getter();
  }

  else
  {
    v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return [v80 setHidden_];
}

uint64_t static DOCInfoActionsView.Metrics.buttonConfiguration(for:)(void *a1)
{
  v2 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = objc_opt_self();

  static UIButton.Configuration.borderless()();
  UIButton.Configuration.contentInsets.setter();

  (*(v3 + 104))(v6, *MEMORY[0x277D74FC0], v2);
  UIButton.Configuration.cornerStyle.setter();
  v8 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v8(v12, 0);
  v9 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D76918] scale:3];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v10 = a1;
  return UIButton.Configuration.image.setter();
}

void closure #1 in DOCInfoActionsView.createActionButton(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      DOCInfoActionsView.performBrowserAction(forButton:)(v1);

      v1 = v3;
    }
  }
}

void DOCInfoActionsView.performBrowserAction(forButton:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))();
  if (v4)
  {
    v5 = v4;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_actionsLayout);
      swift_beginAccess();
      v9 = *(v8 + 16);

      v10 = specialized Dictionary.subscript.getter(a1, v9);

      if (v10)
      {
        v11 = [v5 actionContextFrom_];
        v12 = (*((*v3 & *v1) + 0x118))();
        specialized DOCActionManager.perform(_:on:actionContext:)(v10, v12, v11);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id DOCInfoActionsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t DOCInfoActionsView.__ivar_destroyer()
{
  MEMORY[0x24C1FE970](v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_actionManager);

  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCInfoActionsView_actionDelegate);
}

id DOCInfoActionsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCInfoActionsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCSplitViewState.with(isCollapsed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  *a2 = result;
  *(a2 + 8) = v3;
  return result;
}

uint64_t DOCSplitViewState.Impl.description.getter(char a1, uint64_t a2)
{
  if (a2 > 2)
  {
    if (a2 <= 4)
    {
      if (a2 != 3)
      {
        v3 = "twoBesideSecondary";
LABEL_9:
        v4 = (v3 - 32) | 0x8000000000000000;
        v5 = 0xD000000000000012;
        goto LABEL_19;
      }

      v6 = "oneOverSecondary";
      goto LABEL_17;
    }

    if (a2 == 5)
    {
      v6 = "twoOverSecondary";
LABEL_17:
      v4 = (v6 - 32) | 0x8000000000000000;
      v5 = 0xD000000000000010;
      goto LABEL_19;
    }

    if (a2 == 6)
    {
      v4 = 0x8000000249BD22E0;
      v5 = 0xD000000000000014;
      goto LABEL_19;
    }

LABEL_14:
    v4 = 0x8000000249BD22B0;
    v5 = 0xD000000000000029;
    goto LABEL_19;
  }

  if (!a2)
  {
    v4 = 0xE900000000000063;
    v5 = 0x6974616D6F747561;
    goto LABEL_19;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v3 = "oneBesideSecondary";
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v4 = 0xED0000796C6E4F79;
  v5 = 0x7261646E6F636573;
LABEL_19:
  _StringGuts.grow(_:)(51);
  MEMORY[0x24C1FAEA0](0xD00000000000001ELL, 0x8000000249BD24C0);
  MEMORY[0x24C1FAEA0](v5, v4);

  MEMORY[0x24C1FAEA0](0x6C6F437369202C29, 0xEF2864657370616CLL);
  if (a1)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (a1)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v7, v8);

  MEMORY[0x24C1FAEA0](23849, 0xE200000000000000);
  return 0;
}

uint64_t UISplitViewControllerDisplayMode.doc_description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6974616D6F747561;
      case 1:
        return 0x7261646E6F636573;
      case 2:
        return 0xD000000000000012;
    }

    return 0xD000000000000029;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    if (a1 == 6)
    {
      return 0xD000000000000014;
    }

    return 0xD000000000000029;
  }

  if (a1 != 3)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000010;
}

uint64_t DOCSplitViewState.description.getter()
{
  return DOCSplitViewState.Impl.description.getter(*v0, *(v0 + 8));
}

{
  v1 = *(v0 + OBJC_IVAR___DOCSplitViewState__impl);
  if (v1 != 2)
  {
    return DOCSplitViewState.Impl.description.getter(v1 & 1, *(v0 + OBJC_IVAR___DOCSplitViewState__impl + 8));
  }

  __break(1u);
  return result;
}

uint64_t DOCSplitViewState.isCollapsed.getter()
{
  return *v0;
}

{
  v1 = *(v0 + OBJC_IVAR___DOCSplitViewState__impl);
  if (v1 != 2)
  {
    return v1 & 1;
  }

  __break(1u);
  return result;
}

uint64_t DOCSplitViewState.displayMode.getter()
{
  return *(v0 + 8);
}

{
  if (*(v0 + OBJC_IVAR___DOCSplitViewState__impl) != 2)
  {
    return *(v0 + OBJC_IVAR___DOCSplitViewState__impl + 8);
  }

  __break(1u);
  return result;
}

void DOCSplitViewState.init(forSplitViewController:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 isCollapsed];
  v5 = [a1 displayMode];

  *a2 = v4;
  *(a2 + 8) = v5;
}

uint64_t DOCSplitViewState.with(displayMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 8) = result;
  return result;
}

uint64_t static DOCSplitViewState.isHideOverlayTransition(fromState:toState:)(uint64_t a1, unsigned __int8 *a2)
{
  if (*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*(a2 + 1) != 3)
  {
    v3 = 1;
  }

  if (*(a1 + 8) == 3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

BOOL static DOCSplitViewState.isShowOverlayTransition(fromState:toState:)(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      return 0;
    }
  }

  else if ((*(a1 + 8) == 3) | *a2 & 1)
  {
    return 0;
  }

  return *(a2 + 8) == 3;
}

void UIViewController._doc_ivar_splitViewStateTransitionStart.getter()
{
  UIViewController._doc_ivar_splitViewStateTransitionStart.getter();
}

{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v0, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x78))();
}

double key path getter for UIViewController._doc_ivar_splitViewStateTransitionStart : UIViewController@<D0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v3, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v4) + 0x78))(&v6);

  result = *&v6;
  *a2 = v6;
  return result;
}

void key path setter for UIViewController._doc_ivar_splitViewStateTransitionStart : UIViewController(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v4, static UIViewController.associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v7[0] = v2;
  v7[1] = v3;
  (*((*MEMORY[0x277D85000] & *v5) + 0x80))(v7, KeyPath);
}

uint64_t DOCSplitViewState.isSidebarShownInOverlay.getter()
{
  v1 = *(v0 + OBJC_IVAR___DOCSplitViewState__impl);
  if (v1 != 2)
  {
    return (*(v0 + OBJC_IVAR___DOCSplitViewState__impl + 8) == 3) & ~v1;
  }

  __break(1u);
  return result;
}

uint64_t DOCSplitViewState.isSidebarShownInline.getter()
{
  v1 = *(v0 + OBJC_IVAR___DOCSplitViewState__impl);
  if (v1 != 2)
  {
    return (*(v0 + OBJC_IVAR___DOCSplitViewState__impl + 8) == 2) & ~v1;
  }

  __break(1u);
  return result;
}

uint64_t DOCSplitViewState.isSidebarShown.getter()
{
  v1 = *(v0 + OBJC_IVAR___DOCSplitViewState__impl);
  if (v1 != 2)
  {
    return ((*(v0 + OBJC_IVAR___DOCSplitViewState__impl + 8) & 0xFFFFFFFFFFFFFFFELL) == 2) & ~v1;
  }

  __break(1u);
  return result;
}

void __swiftcall DOCSplitViewState.withIsCollapsed(_:)(DOCSplitViewState *__return_ptr retstr, Swift::Bool a2)
{
  if (*(v2 + OBJC_IVAR___DOCSplitViewState__impl) == 2)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR___DOCSplitViewState__impl + 8);
    v5 = [objc_allocWithZone(DOCSplitViewState) init];
    v6 = &v5[OBJC_IVAR___DOCSplitViewState__impl];
    *v6 = a2;
    *(v6 + 1) = v4;
  }
}

void __swiftcall DOCSplitViewState.withDisplayMode(_:)(DOCSplitViewState *__return_ptr retstr, UISplitViewControllerDisplayMode a2)
{
  v3 = *(v2 + OBJC_IVAR___DOCSplitViewState__impl);
  if (v3 == 2)
  {
    __break(1u);
  }

  else
  {
    v5 = [objc_allocWithZone(DOCSplitViewState) init];
    v6 = &v5[OBJC_IVAR___DOCSplitViewState__impl];
    *v6 = v3 & 1;
    *(v6 + 1) = a2;
  }
}

void __swiftcall DOCSplitViewState.init()(DOCSplitViewState *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id DOCSplitViewState.init()()
{
  *(v0 + OBJC_IVAR___DOCSplitViewState__impl) = xmmword_249BA1BA0;
  v2.super_class = DOCSplitViewState;
  return objc_msgSendSuper2(&v2, sel_init);
}

void @objc UISplitViewController.doc_splitViewStateTransitionStart.setter(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  UISplitViewController.doc_splitViewStateTransitionStart.setter(a3);
}

void UISplitViewController.doc_splitViewStateTransitionStart.setter(char *a1)
{
  UISplitViewController.doc_splitViewStateTransitionStart.setter(a1);
}

{
  if (a1)
  {
    v3 = *&a1[OBJC_IVAR___DOCSplitViewState__impl];
    if (v3 == 2)
    {
      __break(1u);
      return;
    }

    v4 = *&a1[OBJC_IVAR___DOCSplitViewState__impl + 8];
  }

  else
  {
    v4 = 0;
    v3 = 2;
  }

  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v1, static UIViewController.associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v7[0] = v3;
  v7[1] = v4;
  (*((*MEMORY[0x277D85000] & *v5) + 0x80))(v7, KeyPath);
}

void @objc UISplitViewController.doc_splitViewStateTransitionEnd.setter(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  UISplitViewController.doc_splitViewStateTransitionEnd.setter(a3);
}

void __swiftcall DOCSplitViewState._bridgeToObjectiveC()(DOCSplitViewState *__return_ptr retstr)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = [objc_allocWithZone(DOCSplitViewState) init];
  v5 = &v4[OBJC_IVAR___DOCSplitViewState__impl];
  *v5 = v2;
  *(v5 + 1) = v3;
}

__n128 static DOCSplitViewState._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, __n128 *a2)
{
  result = *(a1 + OBJC_IVAR___DOCSplitViewState__impl);
  *a2 = result;
  return result;
}

char *protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance DOCSplitViewState()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  result = [objc_allocWithZone(DOCSplitViewState) init];
  v4 = &result[OBJC_IVAR___DOCSplitViewState__impl];
  *v4 = v1;
  *(v4 + 1) = v2;
  return result;
}

__n128 protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance DOCSplitViewState(uint64_t a1, __n128 *a2)
{
  result = *(a1 + OBJC_IVAR___DOCSplitViewState__impl);
  *a2 = result;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance DOCSplitViewState@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = *(result + OBJC_IVAR___DOCSplitViewState__impl);
    if (v2 != 2)
    {
      v3 = *(result + OBJC_IVAR___DOCSplitViewState__impl + 8);
      *a2 = v2 & 1;
      *(a2 + 8) = v3;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized static DOCSplitViewState.isHideOverlayTransition(from:to:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + OBJC_IVAR___DOCSplitViewState__impl);
  if (v2 == 2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *(a2 + OBJC_IVAR___DOCSplitViewState__impl);
  if (v3 == 2)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = 0;
  if ((v2 & 1) == 0 && *(result + OBJC_IVAR___DOCSplitViewState__impl + 8) == 3)
  {
    v4 = v3 | (*(a2 + OBJC_IVAR___DOCSplitViewState__impl + 8) != 3);
  }

  return v4 & 1;
}

BOOL specialized static DOCSplitViewState.isShowOverlayTransition(from:to:)(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + OBJC_IVAR___DOCSplitViewState__impl);
  if (v2 == 2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a2 + OBJC_IVAR___DOCSplitViewState__impl);
  if (v3 == 2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (v2)
  {
    if (v3)
    {
      return 0;
    }
  }

  else if ((*(result + OBJC_IVAR___DOCSplitViewState__impl + 8) == 3) | v3 & 1)
  {
    return 0;
  }

  return *(a2 + OBJC_IVAR___DOCSplitViewState__impl + 8) == 3;
}

unint64_t type metadata accessor for DOCSplitViewState()
{
  result = lazy cache variable for type metadata for DOCSplitViewState;
  if (!lazy cache variable for type metadata for DOCSplitViewState)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DOCSplitViewState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCSplitViewState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void *DOCNodeRenameOperation.__allocating_init(node:alertPresentingViewController:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[3] = a2;
  result[4] = 0;
  result[2] = a1;
  return result;
}

uint64_t DOCNodeRenameOperation.node.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

id DOCNodeRenameOperation.alertPresentingViewController.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void DOCNodeRenameOperation.alertPresentingViewController.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t DOCNodeRenameOperation.hierarchyCoordinator.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

void *DOCNodeRenameOperation.init(node:alertPresentingViewController:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 0;
  v2[2] = a1;
  return v2;
}

uint64_t closure #1 in DOCNodeRenameOperation.commitRename(forNode:withResult:renameProposition:alertPresentingViewController:shouldDonateAppIntents:completion:finishedBlock:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (a4 >> 8) & 1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v15);
  v29 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v31 = *(v17 - 8);
  v32 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v28 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 41) = v14;
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  *(v21 + 64) = a7;
  aBlock[4] = partial apply for closure #1 in closure #1 in DOCNodeRenameOperation.commitRename(forNode:withResult:renameProposition:alertPresentingViewController:shouldDonateAppIntents:completion:finishedBlock:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_166;
  v22 = _Block_copy(aBlock);
  v23 = a1;
  outlined copy of Result<RenameProposition, Error>(a2, a3, a4, v14);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v25 = v29;
  v24 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v28;
  MEMORY[0x24C1FB9A0](0, v20, v25, v22);
  _Block_release(v22);

  (*(v33 + 8))(v25, v24);
  return (*(v31 + 8))(v20, v32);
}

void closure #1 in closure #1 in DOCNodeRenameOperation.commitRename(forNode:withResult:renameProposition:alertPresentingViewController:shouldDonateAppIntents:completion:finishedBlock:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, void), uint64_t a6, uint64_t a7)
{
  if (one-time initialization token for sharedManager != -1)
  {
    swift_once();
  }

  (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
  if (a1)
  {
    a3 = 0;
    a4 = 0;
    v13 = 1;
    a2 = a1;
  }

  else
  {
    v13 = (a4 >> 8) & 1;
    outlined copy of Result<RenameProposition, Error>(a2, a3, a4, BYTE1(a4) & 1);
    outlined copy of Result<RenameProposition, Error>(a2, a3, a4, BYTE1(a4) & 1);
  }

  v14 = a1;
  v15 = a1;
  v16 = a5(a2, a3, a4 | (v13 << 8));
  v17 = (*(*a7 + 152))(v16);
  if (v17)
  {
    v18 = v17;
    if (v13)
    {
      v19 = 0;
    }

    else
    {
      v19 = a3;
    }

    if (v13)
    {
      v20 = 0;
    }

    else
    {
      v20 = a2;
    }

    (*(*v18 + 264))(v20, v19);
    outlined consume of Result<RenameProposition, Error>(a2, a3, a4, v13);
  }

  else
  {
    outlined consume of Result<RenameProposition, Error>(a2, a3, a4, v13);
  }

  outlined consume of Result<RenameProposition, Error>(a2, a3, a4, v13);
}

void closure #2 in DOCNodeRenameOperation.handleFilenameExtensionRemoval(originalExtension:fileName:node:validationResult:renameProposition:alertPresentingViewController:completion:finishedBlock:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v58 = a8;
    v60 = Strong;
    v21 = (*(*Strong + 152))();
    if (v21)
    {
      (*(*v21 + 152))(v21, 1.0);
    }

    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    *(v22 + 32) = a6;
    *(v22 + 33) = BYTE1(a6) & 1;
    *(v22 + 40) = a11;
    *(v22 + 48) = a12;
    *(v22 + 56) = v60;
    v23 = objc_opt_self();
    outlined copy of Result<RenameProposition, Error>(a4, a5, a6, BYTE1(a6) & 1);

    v24 = [v23 defaultManager];
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = [objc_opt_self() shared];
    v27 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());
    swift_getObjectType();
    swift_unknownObjectRetain();
    v59 = v24;
    if (a9)
    {
      outlined copy of DOCRenameOperation.NameType();
      v28 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(a3, a7, v58, 0, 1, v26, v27);

      v29 = swift_allocObject();
      *(v29 + 16) = a7;
      *(v29 + 24) = v58;
      *(v29 + 32) = v24;
      *(v29 + 40) = v25;
      *(v29 + 48) = a10;
      *(v29 + 56) = 0;
      *(v29 + 64) = closure #1 in DOCNodeRenameOperation.commitRename(forNode:withResult:renameProposition:alertPresentingViewController:shouldDonateAppIntents:completion:finishedBlock:)partial apply;
      *(v29 + 72) = v22;
      *(v29 + 80) = a13;
      *(v29 + 88) = a14;
      v30 = *((*MEMORY[0x277D85000] & *v28) + 0x190);
      outlined copy of DOCRenameOperation.NameType();
      v31 = a10;

      v32 = v24;

      v30(closure #1 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v29);
      v33 = MEMORY[0x277D85000];
      v34 = *((*MEMORY[0x277D85000] & *v28) + 0x178);

      v34(closure #2 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v25);
      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.Rename);
      v36 = v28;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_14;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61 = v41;
      *v39 = 136315394;
      v42 = 0x8000000249BD25A0;
      v43 = 0xD00000000000007ALL;
    }

    else
    {
      outlined copy of DOCRenameOperation.NameType();
      v28 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(a3, a7, v58, 1, 1, v26, v27);

      v44 = swift_allocObject();
      *(v44 + 16) = v24;
      *(v44 + 24) = v25;
      *(v44 + 32) = a7;
      *(v44 + 40) = v58;
      *(v44 + 48) = a10;
      *(v44 + 56) = 0;
      *(v44 + 64) = closure #1 in DOCNodeRenameOperation.commitRename(forNode:withResult:renameProposition:alertPresentingViewController:shouldDonateAppIntents:completion:finishedBlock:)partial apply;
      *(v44 + 72) = v22;
      *(v44 + 80) = a13;
      *(v44 + 88) = a14;
      v45 = MEMORY[0x277D85000];
      v57 = *((*MEMORY[0x277D85000] & *v28) + 0x190);
      outlined copy of DOCRenameOperation.NameType();
      v46 = v24;

      v47 = a10;

      v57(closure #1 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v44);
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = *((*v45 & *v28) + 0x148);

      v49(closure #2 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v48);

      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      *(v52 + 24) = v51;
      v53 = MEMORY[0x277D85000];
      v54 = *((*MEMORY[0x277D85000] & *v28) + 0x160);

      v54(closure #3 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v52);

      v33 = v53;
      v55 = *((*v53 & *v28) + 0x178);

      v55(closure #2 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v25);
      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.Rename);
      v36 = v28;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_14;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61 = v41;
      *v39 = 136315394;
      v43 = 0xD00000000000007DLL;
      v42 = 0x8000000249BD2620;
    }

    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v61);
    *(v39 + 12) = 2112;
    *(v39 + 14) = v36;
    *v40 = v28;
    v36 = v36;
    _os_log_impl(&dword_2493AC000, v37, v38, "%s: Adding Rename Operation %@", v39, 0x16u);
    outlined destroy of NSObject?(v40);
    MEMORY[0x24C1FE850](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x24C1FE850](v41, -1, -1);
    MEMORY[0x24C1FE850](v39, -1, -1);
LABEL_14:

    (*((*v33 & *v36) + 0x1B8))();
  }
}

void closure #1 in DOCNodeRenameOperation.handleFilenameExtensionRemoval(originalExtension:fileName:node:validationResult:renameProposition:alertPresentingViewController:completion:finishedBlock:)(uint64_t a1, void (*a2)(void *, void, uint64_t), uint64_t a3, void (*a4)(uint64_t, void *), uint64_t a5, uint64_t a6)
{
  lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
  v9 = swift_allocError();
  *v10 = 5;
  a2(v9, 0, 256);

  v11 = swift_allocError();
  *v12 = 5;
  a4(a6, v11);
}

void closure #2 in DOCNodeRenameOperation.handleFilenameExtensionAddition(newExtension:fileName:node:validationResult:renameProposition:alertPresentingViewController:completion:finishedBlock:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v58 = a8;
    v60 = Strong;
    v21 = (*(*Strong + 152))();
    if (v21)
    {
      (*(*v21 + 152))(v21, 1.0);
    }

    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    *(v22 + 32) = a6;
    *(v22 + 33) = BYTE1(a6) & 1;
    *(v22 + 40) = a11;
    *(v22 + 48) = a12;
    *(v22 + 56) = v60;
    v23 = objc_opt_self();
    outlined copy of Result<RenameProposition, Error>(a4, a5, a6, BYTE1(a6) & 1);

    v24 = [v23 defaultManager];
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = [objc_opt_self() shared];
    v27 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());
    swift_getObjectType();
    swift_unknownObjectRetain();
    v59 = v24;
    if (a9)
    {
      outlined copy of DOCRenameOperation.NameType();
      v28 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(a3, a7, v58, 0, 1, v26, v27);

      v29 = swift_allocObject();
      *(v29 + 16) = a7;
      *(v29 + 24) = v58;
      *(v29 + 32) = v24;
      *(v29 + 40) = v25;
      *(v29 + 48) = a10;
      *(v29 + 56) = 0;
      *(v29 + 64) = closure #1 in DOCNodeRenameOperation.commitRename(forNode:withResult:renameProposition:alertPresentingViewController:shouldDonateAppIntents:completion:finishedBlock:)partial apply;
      *(v29 + 72) = v22;
      *(v29 + 80) = a13;
      *(v29 + 88) = a14;
      v30 = *((*MEMORY[0x277D85000] & *v28) + 0x190);
      outlined copy of DOCRenameOperation.NameType();
      v31 = a10;

      v32 = v24;

      v30(closure #1 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v29);
      v33 = MEMORY[0x277D85000];
      v34 = *((*MEMORY[0x277D85000] & *v28) + 0x178);

      v34(closure #2 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v25);
      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.Rename);
      v36 = v28;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_14;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61 = v41;
      *v39 = 136315394;
      v42 = 0x8000000249BD25A0;
      v43 = 0xD00000000000007ALL;
    }

    else
    {
      outlined copy of DOCRenameOperation.NameType();
      v28 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(a3, a7, v58, 1, 1, v26, v27);

      v44 = swift_allocObject();
      *(v44 + 16) = v24;
      *(v44 + 24) = v25;
      *(v44 + 32) = a7;
      *(v44 + 40) = v58;
      *(v44 + 48) = a10;
      *(v44 + 56) = 0;
      *(v44 + 64) = closure #1 in DOCNodeRenameOperation.commitRename(forNode:withResult:renameProposition:alertPresentingViewController:shouldDonateAppIntents:completion:finishedBlock:)partial apply;
      *(v44 + 72) = v22;
      *(v44 + 80) = a13;
      *(v44 + 88) = a14;
      v45 = MEMORY[0x277D85000];
      v57 = *((*MEMORY[0x277D85000] & *v28) + 0x190);
      outlined copy of DOCRenameOperation.NameType();
      v46 = v24;

      v47 = a10;

      v57(closure #1 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v44);
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = *((*v45 & *v28) + 0x148);

      v49(closure #2 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v48);

      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      *(v52 + 24) = v51;
      v53 = MEMORY[0x277D85000];
      v54 = *((*MEMORY[0x277D85000] & *v28) + 0x160);

      v54(closure #3 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v52);

      v33 = v53;
      v55 = *((*v53 & *v28) + 0x178);

      v55(closure #2 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v25);
      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.Rename);
      v36 = v28;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_14;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61 = v41;
      *v39 = 136315394;
      v43 = 0xD00000000000007DLL;
      v42 = 0x8000000249BD2620;
    }

    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v61);
    *(v39 + 12) = 2112;
    *(v39 + 14) = v36;
    *v40 = v28;
    v36 = v36;
    _os_log_impl(&dword_2493AC000, v37, v38, "%s: Adding Rename Operation %@", v39, 0x16u);
    outlined destroy of NSObject?(v40);
    MEMORY[0x24C1FE850](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x24C1FE850](v41, -1, -1);
    MEMORY[0x24C1FE850](v39, -1, -1);
LABEL_14:

    (*((*v33 & *v36) + 0x1B8))();
  }
}

void closure #1 in DOCNodeRenameOperation.handleFilenameExtensionChange(originalExtension:newExtension:fileName:node:validationResult:renameProposition:alertPresentingViewController:completion:finishedBlock:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v58 = a8;
    v60 = Strong;
    v21 = (*(*Strong + 152))();
    if (v21)
    {
      (*(*v21 + 152))(v21, 1.0);
    }

    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    *(v22 + 32) = a6;
    *(v22 + 33) = BYTE1(a6) & 1;
    *(v22 + 40) = a11;
    *(v22 + 48) = a12;
    *(v22 + 56) = v60;
    v23 = objc_opt_self();
    outlined copy of Result<RenameProposition, Error>(a4, a5, a6, BYTE1(a6) & 1);

    v24 = [v23 defaultManager];
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = [objc_opt_self() shared];
    v27 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());
    swift_getObjectType();
    swift_unknownObjectRetain();
    v59 = v24;
    if (a9)
    {
      outlined copy of DOCRenameOperation.NameType();
      v28 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(a3, a7, v58, 0, 1, v26, v27);

      v29 = swift_allocObject();
      *(v29 + 16) = a7;
      *(v29 + 24) = v58;
      *(v29 + 32) = v24;
      *(v29 + 40) = v25;
      *(v29 + 48) = a10;
      *(v29 + 56) = 0;
      *(v29 + 64) = closure #1 in DOCNodeRenameOperation.commitRename(forNode:withResult:renameProposition:alertPresentingViewController:shouldDonateAppIntents:completion:finishedBlock:)partial apply;
      *(v29 + 72) = v22;
      *(v29 + 80) = a13;
      *(v29 + 88) = a14;
      v30 = *((*MEMORY[0x277D85000] & *v28) + 0x190);
      outlined copy of DOCRenameOperation.NameType();
      v31 = a10;

      v32 = v24;

      v30(closure #1 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v29);
      v33 = MEMORY[0x277D85000];
      v34 = *((*MEMORY[0x277D85000] & *v28) + 0x178);

      v34(closure #2 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v25);
      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.Rename);
      v36 = v28;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_14;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61 = v41;
      *v39 = 136315394;
      v42 = 0x8000000249BD25A0;
      v43 = 0xD00000000000007ALL;
    }

    else
    {
      outlined copy of DOCRenameOperation.NameType();
      v28 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(a3, a7, v58, 1, 1, v26, v27);

      v44 = swift_allocObject();
      *(v44 + 16) = v24;
      *(v44 + 24) = v25;
      *(v44 + 32) = a7;
      *(v44 + 40) = v58;
      *(v44 + 48) = a10;
      *(v44 + 56) = 0;
      *(v44 + 64) = closure #1 in DOCNodeRenameOperation.commitRename(forNode:withResult:renameProposition:alertPresentingViewController:shouldDonateAppIntents:completion:finishedBlock:)partial apply;
      *(v44 + 72) = v22;
      *(v44 + 80) = a13;
      *(v44 + 88) = a14;
      v45 = MEMORY[0x277D85000];
      v57 = *((*MEMORY[0x277D85000] & *v28) + 0x190);
      outlined copy of DOCRenameOperation.NameType();
      v46 = v24;

      v47 = a10;

      v57(closure #1 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v44);
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = *((*v45 & *v28) + 0x148);

      v49(closure #2 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v48);

      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      *(v52 + 24) = v51;
      v53 = MEMORY[0x277D85000];
      v54 = *((*MEMORY[0x277D85000] & *v28) + 0x160);

      v54(closure #3 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v52);

      v33 = v53;
      v55 = *((*v53 & *v28) + 0x178);

      v55(closure #2 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v25);
      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.Rename);
      v36 = v28;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_14;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61 = v41;
      *v39 = 136315394;
      v43 = 0xD00000000000007DLL;
      v42 = 0x8000000249BD2620;
    }

    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v61);
    *(v39 + 12) = 2112;
    *(v39 + 14) = v36;
    *v40 = v28;
    v36 = v36;
    _os_log_impl(&dword_2493AC000, v37, v38, "%s: Adding Rename Operation %@", v39, 0x16u);
    outlined destroy of NSObject?(v40);
    MEMORY[0x24C1FE850](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x24C1FE850](v41, -1, -1);
    MEMORY[0x24C1FE850](v39, -1, -1);
LABEL_14:

    (*((*v33 & *v36) + 0x1B8))();
  }
}

void closure #2 in DOCNodeRenameOperation.handleFilenameExtensionChange(originalExtension:newExtension:fileName:node:validationResult:renameProposition:alertPresentingViewController:completion:finishedBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *, void, uint64_t), uint64_t a6, void (*a7)(void *, void *), uint64_t a8, uint64_t a9, void *a10, uint64_t a11, unsigned __int16 a12, void *a13)
{
  v16 = MEMORY[0x24C1FAD20](a2, a3);
  v17 = [v16 stringByDeletingPathExtension];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  swift_getObjectType();
  v21 = [a4 displayName];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v18 == v22 && v20 == v24)
  {
    goto LABEL_8;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
LABEL_9:

    lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
    v31 = swift_allocError();
    *v32 = 5;
    a5(v31, 0, 256);

    v33 = swift_allocError();
    *v34 = 5;
    a7(a4, v33);

    return;
  }

  v27 = [a4 filename];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v18 == v28 && v20 == v30)
  {
LABEL_8:

    goto LABEL_9;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = (*(*Strong + 152))();
    if (v38)
    {
      (*(*v38 + 152))(v38, 1.0);
    }

    v39 = swift_allocObject();
    *(v39 + 16) = a10;
    *(v39 + 24) = a11;
    *(v39 + 32) = a12;
    *(v39 + 33) = HIBYTE(a12) & 1;
    *(v39 + 40) = a5;
    *(v39 + 48) = a6;
    *(v39 + 56) = v37;
    v40 = v39;
    v41 = objc_opt_self();
    outlined copy of Result<RenameProposition, Error>(a10, a11, a12, HIBYTE(a12) & 1);

    v42 = [v41 defaultManager];
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    v44 = [objc_opt_self() shared];
    v45 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());
    swift_unknownObjectRetain();

    v46 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(a4, v18, v20, 1, 1, v44, v45);

    v47 = swift_allocObject();
    *(v47 + 16) = v42;
    *(v47 + 24) = v43;
    *(v47 + 32) = v18;
    *(v47 + 40) = v20;
    *(v47 + 48) = a13;
    *(v47 + 56) = 0;
    *(v47 + 64) = closure #1 in DOCNodeRenameOperation.commitRename(forNode:withResult:renameProposition:alertPresentingViewController:shouldDonateAppIntents:completion:finishedBlock:)partial apply;
    *(v47 + 72) = v40;
    *(v47 + 80) = a7;
    *(v47 + 88) = a8;
    v48 = *((*MEMORY[0x277D85000] & *v46) + 0x190);

    v49 = v42;

    v50 = a13;

    v51 = v43;

    v48(closure #1 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v47);
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = *((*MEMORY[0x277D85000] & *v46) + 0x148);

    v53(closure #2 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v52);

    v54 = swift_allocObject();
    v70 = v49;
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    *(v56 + 16) = v54;
    *(v56 + 24) = v55;
    v57 = MEMORY[0x277D85000];
    v58 = *((*MEMORY[0x277D85000] & *v46) + 0x160);

    v58(closure #3 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v56);

    v59 = *((*v57 & *v46) + 0x178);

    v59(closure #2 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)partial apply, v51);
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.Rename);
    v61 = v46;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v71 = v66;
      *v64 = 136315394;
      *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007DLL, 0x8000000249BD2620, &v71);
      *(v64 + 12) = 2112;
      *(v64 + 14) = v61;
      *v65 = v46;
      v67 = v61;
      _os_log_impl(&dword_2493AC000, v62, v63, "%s: Adding Rename Operation %@", v64, 0x16u);
      outlined destroy of NSObject?(v65);
      MEMORY[0x24C1FE850](v65, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x24C1FE850](v66, -1, -1);
      MEMORY[0x24C1FE850](v64, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & *v61) + 0x1B8))();
  }

  else
  {
  }
}

void DOCNodeRenameOperation.handleRenameValidationSuccess(forNode:withResult:renameProposition:alertPresentingViewController:shouldDonateAppIntents:completion:finishedBlock:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a4;
  if ((a7 & 1) == 0)
  {
    goto LABEL_30;
  }

  v261 = a3;
  v262 = a4;
  v18 = [a1 filename];
  if (!v18)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v19 = v18;
  v20 = [v18 pathExtension];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = a6;
  v25 = v21;
  v26 = MEMORY[0x24C1FAD20](a5, v24);
  v27 = [v26 pathExtension];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = v28 & 0xFFFFFFFFFFFFLL;
  if ((v30 & 0x2000000000000000) != 0)
  {
    v31 = HIBYTE(v30) & 0xF;
  }

  v32 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v32 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    if (!v32)
    {
      v257 = a2;

      v33 = _DocumentManagerBundle();
      if (v33)
      {
        v34 = v33;
        v35.value._object = 0xEB00000000656C62;
        v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v36._countAndFlagsBits = 0x100000000000004CLL;
        v282._countAndFlagsBits = 0xD000000000000035;
        v282._object = 0x8000000249BD2920;
        v36._object = 0x8000000249BD28D0;
        v37._object = 0x8000000249BD28D0;
        v37._countAndFlagsBits = 0x100000000000004CLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v35, v34, v37, v282);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_249B9A480;
        *(v38 + 56) = MEMORY[0x277D837D0];
        v39 = lazy protocol witness table accessor for type String and conformance String();
        *(v38 + 64) = v39;
        *(v38 + 32) = v28;
        *(v38 + 40) = v30;

        v40 = String.init(format:_:)();
        v42 = v41;

        v43 = _DocumentManagerBundle();
        if (v43)
        {
          v44 = v43;
          v283._object = 0x8000000249BD2770;
          v45._object = 0x8000000249BD2710;
          v46._object = 0x8000000249BD2710;
          v45._countAndFlagsBits = 0x1000000000000054;
          v47.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v47.value._object = 0xEB00000000656C62;
          v46._countAndFlagsBits = 0x1000000000000054;
          v283._countAndFlagsBits = 0xD000000000000043;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v47, v44, v46, v283);

          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_249B9A480;
          *(v48 + 56) = MEMORY[0x277D837D0];
          *(v48 + 64) = v39;
          *(v48 + 32) = a5;
          *(v48 + 40) = a6;

          v49 = String.init(format:_:)();
          v51 = v50;

          v253 = v40;
          v265 = v42;
          v52 = MEMORY[0x24C1FAD20](v40, v42);
          v53 = MEMORY[0x24C1FAD20](v49, v51);
          v54 = [objc_opt_self() alertControllerWithTitle:v52 message:v53 preferredStyle:1];

          v55 = _DocumentManagerBundle();
          if (v55)
          {
            v56 = v55;
            v284._countAndFlagsBits = 0xD000000000000032;
            v284._object = 0x8000000249BD2960;
            v57._countAndFlagsBits = 0x20749980E26E6F44;
            v57._object = 0xAB00000000646441;
            v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v58.value._object = 0xEB00000000656C62;
            v59._countAndFlagsBits = 0x20749980E26E6F44;
            v59._object = 0xAB00000000646441;
            v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v58, v56, v59, v284);

            v61 = swift_allocObject();
            v61[2] = a10;
            v61[3] = a11;
            v61[4] = a12;
            v61[5] = a13;
            v61[6] = a1;

            swift_unknownObjectRetain();
            v62 = MEMORY[0x24C1FAD20](v60._countAndFlagsBits, v60._object);
            v279 = partial apply for closure #1 in DOCNodeRenameOperation.handleFilenameExtensionAddition(newExtension:fileName:node:validationResult:renameProposition:alertPresentingViewController:completion:finishedBlock:);
            v280 = v61;
            aBlock = MEMORY[0x277D85DD0];
            v276 = 1107296256;
            v277 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
            v278 = &block_descriptor_50;
            v63 = _Block_copy(&aBlock);

            v245 = objc_opt_self();
            v64 = [v245 actionWithTitle:v62 style:1 handler:v63];
            _Block_release(v63);

            v243 = v54;
            [v243 addAction_];
            v65 = _DocumentManagerBundle();
            if (v65)
            {
              v66 = v65;
              v67 = (v262 >> 8) & 1;

              v285._countAndFlagsBits = 0xD00000000000002ELL;
              v285._object = 0x8000000249BD29A0;
              v68._countAndFlagsBits = 6579265;
              v68._object = 0xE300000000000000;
              v69.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v69.value._object = 0xEB00000000656C62;
              v70._countAndFlagsBits = 6579265;
              v70._object = 0xE300000000000000;
              v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v68, v69, v66, v70, v285);

              v72 = swift_allocObject();
              swift_weakInit();
              v73 = swift_allocObject();
              *(v73 + 16) = v72;
              *(v73 + 24) = a1;
              *(v73 + 32) = v257;
              *(v73 + 40) = v261;
              *(v73 + 48) = v262;
              *(v73 + 49) = v67;
              *(v73 + 56) = a5;
              *(v73 + 64) = a6;
              *(v73 + 72) = 1;
              *(v73 + 80) = a8;
              *(v73 + 88) = a10;
              *(v73 + 96) = a11;
              *(v73 + 104) = a12;
              *(v73 + 112) = a13;
              outlined copy of DOCRenameOperation.NameType();

              swift_unknownObjectRetain();
              outlined copy of Result<RenameProposition, Error>(v257, v261, v262, v67);
              v74 = a8;

              v75 = MEMORY[0x24C1FAD20](v71._countAndFlagsBits, v71._object);

              v279 = partial apply for closure #2 in DOCNodeRenameOperation.handleFilenameExtensionAddition(newExtension:fileName:node:validationResult:renameProposition:alertPresentingViewController:completion:finishedBlock:);
              v280 = v73;
              aBlock = MEMORY[0x277D85DD0];
              v276 = 1107296256;
              v277 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
              v278 = &block_descriptor_57;
              v76 = _Block_copy(&aBlock);

              v77 = [v245 actionWithTitle:v75 style:0 handler:v76];
              _Block_release(v76);

              [v243 addAction_];
              [v243 setPreferredAction_];

              [v74 presentViewController:v243 animated:1 completion:0];
              if (one-time initialization token for Rename != -1)
              {
                swift_once();
              }

              v78 = type metadata accessor for Logger();
              __swift_project_value_buffer(v78, static Logger.Rename);

              v79 = Logger.logObject.getter();
              v80 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                aBlock = v82;
                *v81 = 136315394;
                *(v81 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000096, 0x8000000249BD29D0, &aBlock);
                *(v81 + 12) = 2080;
                v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v253, v265, &aBlock);

                *(v81 + 14) = v83;
                _os_log_impl(&dword_2493AC000, v79, v80, "%s: prompting user for file extension addition confirmation with message: %s", v81, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x24C1FE850](v82, -1, -1);
                MEMORY[0x24C1FE850](v81, -1, -1);
              }

              else
              {
              }

              return;
            }

            goto LABEL_68;
          }

          goto LABEL_66;
        }

        goto LABEL_64;
      }

      goto LABEL_62;
    }
  }

  else if (v32)
  {
    v258 = a2;

    v84 = _DocumentManagerBundle();
    if (!v84)
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v85 = v84;
    v86.value._object = 0xEB00000000656C62;
    v86.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v87._countAndFlagsBits = 0x1000000000000038;
    v286._countAndFlagsBits = 0xD000000000000031;
    v286._object = 0x8000000249BD2AB0;
    v87._object = 0x8000000249BD2A70;
    v88._object = 0x8000000249BD2A70;
    v88._countAndFlagsBits = 0x1000000000000038;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v87, v86, v85, v88, v286);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_249B9A480;
    v90 = MEMORY[0x277D837D0];
    *(v89 + 56) = MEMORY[0x277D837D0];
    v91 = lazy protocol witness table accessor for type String and conformance String();
    *(v89 + 64) = v91;
    *(v89 + 32) = v25;
    *(v89 + 40) = v23;

    v92 = String.init(format:_:)();
    v94 = v93;

    v95 = _DocumentManagerBundle();
    if (!v95)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v96 = v95;
    v287._object = 0x8000000249BD2770;
    v97._object = 0x8000000249BD2710;
    v98._object = 0x8000000249BD2710;
    v97._countAndFlagsBits = 0x1000000000000054;
    v99.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v99.value._object = 0xEB00000000656C62;
    v98._countAndFlagsBits = 0x1000000000000054;
    v287._countAndFlagsBits = 0xD000000000000043;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v97, v99, v96, v98, v287);

    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_249B9A480;
    *(v100 + 56) = v90;
    *(v100 + 64) = v91;
    *(v100 + 32) = a5;
    *(v100 + 40) = a6;

    v101 = String.init(format:_:)();
    v103 = v102;

    v254 = v92;
    v266 = v94;
    v104 = MEMORY[0x24C1FAD20](v92, v94);
    v105 = MEMORY[0x24C1FAD20](v101, v103);
    v106 = [objc_opt_self() alertControllerWithTitle:v104 message:v105 preferredStyle:1];

    v107 = _DocumentManagerBundle();
    if (!v107)
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v108 = v107;
    v288._countAndFlagsBits = 0xD00000000000001BLL;
    v288._object = 0x8000000249BD2AF0;
    v109._countAndFlagsBits = 0x6C65636E6143;
    v109._object = 0xE600000000000000;
    v110.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v110.value._object = 0xEB00000000656C62;
    v111._countAndFlagsBits = 0x6C65636E6143;
    v111._object = 0xE600000000000000;
    v112 = NSLocalizedString(_:tableName:bundle:value:comment:)(v109, v110, v108, v111, v288);

    v113 = swift_allocObject();
    v113[2] = a10;
    v113[3] = a11;
    v113[4] = a12;
    v113[5] = a13;
    v113[6] = a1;

    swift_unknownObjectRetain();
    v114 = MEMORY[0x24C1FAD20](v112._countAndFlagsBits, v112._object);
    v279 = partial apply for closure #1 in DOCNodeRenameOperation.handleFilenameExtensionRemoval(originalExtension:fileName:node:validationResult:renameProposition:alertPresentingViewController:completion:finishedBlock:);
    v280 = v113;
    aBlock = MEMORY[0x277D85DD0];
    v276 = 1107296256;
    v277 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v278 = &block_descriptor_63;
    v115 = _Block_copy(&aBlock);

    v248 = objc_opt_self();
    v116 = [v248 actionWithTitle:v114 style:1 handler:v115];
    _Block_release(v115);

    v246 = v106;
    v251 = v116;
    [v246 addAction_];
    v117 = _DocumentManagerBundle();
    if (!v117)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v118 = v117;
    v119 = (v262 >> 8) & 1;

    v289._countAndFlagsBits = 0xD000000000000032;
    v289._object = 0x8000000249BD2B10;
    v120._countAndFlagsBits = 0x65766F6D6552;
    v120._object = 0xE600000000000000;
    v121.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v121.value._object = 0xEB00000000656C62;
    v122._countAndFlagsBits = 0x65766F6D6552;
    v122._object = 0xE600000000000000;
    v123 = NSLocalizedString(_:tableName:bundle:value:comment:)(v120, v121, v118, v122, v289);

    v124 = swift_allocObject();
    swift_weakInit();
    v125 = swift_allocObject();
    *(v125 + 16) = v124;
    *(v125 + 24) = a1;
    *(v125 + 32) = v258;
    *(v125 + 40) = v261;
    *(v125 + 48) = v262;
    *(v125 + 49) = v119;
    *(v125 + 56) = a5;
    *(v125 + 64) = a6;
    *(v125 + 72) = 1;
    *(v125 + 80) = a8;
    *(v125 + 88) = a10;
    *(v125 + 96) = a11;
    *(v125 + 104) = a12;
    *(v125 + 112) = a13;
    outlined copy of DOCRenameOperation.NameType();

    swift_unknownObjectRetain();

    outlined copy of Result<RenameProposition, Error>(v258, v261, v262, v119);
    v126 = a8;
    v127 = MEMORY[0x24C1FAD20](v123._countAndFlagsBits, v123._object);

    v279 = partial apply for closure #2 in DOCNodeRenameOperation.handleFilenameExtensionRemoval(originalExtension:fileName:node:validationResult:renameProposition:alertPresentingViewController:completion:finishedBlock:);
    v280 = v125;
    aBlock = MEMORY[0x277D85DD0];
    v276 = 1107296256;
    v277 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v278 = &block_descriptor_70;
    v128 = _Block_copy(&aBlock);

    v129 = [v248 actionWithTitle:v127 style:0 handler:v128];
    _Block_release(v128);

    [v246 addAction_];
    [v246 setPreferredAction_];

    [v126 presentViewController:v246 animated:1 completion:0];
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    __swift_project_value_buffer(v130, static Logger.Rename);

    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      aBlock = v134;
      *v133 = 136315394;
      *(v133 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000009ALL, 0x8000000249BD2B50, &aBlock);
      *(v133 + 12) = 2080;
      v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v254, v266, &aBlock);

      *(v133 + 14) = v135;
      _os_log_impl(&dword_2493AC000, v131, v132, "%s: prompting user for file extension removal confirmation with message: %s", v133, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v134, -1, -1);
      MEMORY[0x24C1FE850](v133, -1, -1);
    }

    else
    {
    }

    v235 = v251;
LABEL_60:

    return;
  }

  v14 = v262;
  if ((v25 != v28 || v23 != v30) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v252 = v25;
    v259 = a2;
    v181 = a5;
    v182 = _DocumentManagerBundle();
    if (!v182)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v183 = v182;
    v184.value._object = 0xEB00000000656C62;
    v184.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v185._countAndFlagsBits = 0x1000000000000032;
    v290._countAndFlagsBits = 0xD00000000000002CLL;
    v290._object = 0x8000000249BD26E0;
    v185._object = 0x8000000249BD26A0;
    v186._object = 0x8000000249BD26A0;
    v186._countAndFlagsBits = 0x1000000000000032;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v185, v184, v183, v186, v290);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v187 = swift_allocObject();
    *(v187 + 16) = xmmword_249B9FA70;
    v188 = MEMORY[0x277D837D0];
    *(v187 + 56) = MEMORY[0x277D837D0];
    v189 = lazy protocol witness table accessor for type String and conformance String();
    *(v187 + 32) = v252;
    *(v187 + 40) = v23;
    *(v187 + 96) = v188;
    *(v187 + 104) = v189;
    v255 = v189;
    *(v187 + 64) = v189;
    *(v187 + 72) = v28;
    *(v187 + 80) = v30;

    v190 = String.init(format:_:)();
    v192 = v191;

    v193 = _DocumentManagerBundle();
    if (!v193)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v194 = v193;
    v242 = v23;
    v291._object = 0x8000000249BD2770;
    v195._object = 0x8000000249BD2710;
    v196._object = 0x8000000249BD2710;
    v195._countAndFlagsBits = 0x1000000000000054;
    v197.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v197.value._object = 0xEB00000000656C62;
    v196._countAndFlagsBits = 0x1000000000000054;
    v291._countAndFlagsBits = 0xD000000000000043;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v195, v197, v194, v196, v291);

    v198 = swift_allocObject();
    *(v198 + 16) = xmmword_249B9A480;
    *(v198 + 56) = MEMORY[0x277D837D0];
    *(v198 + 64) = v255;
    *(v198 + 32) = v181;
    *(v198 + 40) = a6;

    v199 = String.init(format:_:)();
    v201 = v200;

    v244 = v190;
    v247 = v192;
    v202 = MEMORY[0x24C1FAD20](v190, v192);
    v203 = MEMORY[0x24C1FAD20](v199, v201);
    v249 = [objc_opt_self() alertControllerWithTitle:v202 message:v203 preferredStyle:1];

    v204 = _DocumentManagerBundle();
    if (!v204)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v205 = v204;
    v206 = (v262 >> 8) & 1;
    v292._countAndFlagsBits = 0xD000000000000028;
    v292._object = 0x8000000249BD27C0;
    v207._countAndFlagsBits = 0x2E9C80E220657355;
    v207._object = 0xAD00009D80E24025;
    v208.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v208.value._object = 0xEB00000000656C62;
    v209._countAndFlagsBits = 0x2E9C80E220657355;
    v209._object = 0xAD00009D80E24025;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v207, v208, v205, v209, v292);

    v210 = swift_allocObject();
    *(v210 + 16) = xmmword_249B9A480;
    *(v210 + 56) = MEMORY[0x277D837D0];
    *(v210 + 64) = v255;
    *(v210 + 32) = v28;
    *(v210 + 40) = v30;

    v211 = String.init(format:_:)();
    v240 = v212;
    v241 = v211;

    v239 = swift_allocObject();
    swift_weakInit();
    v213 = swift_allocObject();
    *(v213 + 16) = v239;
    *(v213 + 24) = a1;
    *(v213 + 32) = v259;
    *(v213 + 40) = v261;
    *(v213 + 48) = v262;
    *(v213 + 49) = v206;
    *(v213 + 56) = v181;
    *(v213 + 64) = a6;
    *(v213 + 72) = 1;
    *(v213 + 80) = a8;
    *(v213 + 88) = a10;
    *(v213 + 96) = a11;
    *(v213 + 104) = a12;
    *(v213 + 112) = a13;
    outlined copy of DOCRenameOperation.NameType();

    swift_unknownObjectRetain();
    v238 = v206;
    outlined copy of Result<RenameProposition, Error>(v259, v261, v262, v206);
    v237 = a8;

    v214 = MEMORY[0x24C1FAD20](v241, v240);
    v279 = partial apply for closure #1 in DOCNodeRenameOperation.handleFilenameExtensionChange(originalExtension:newExtension:fileName:node:validationResult:renameProposition:alertPresentingViewController:completion:finishedBlock:);
    v280 = v213;
    aBlock = MEMORY[0x277D85DD0];
    v276 = 1107296256;
    v277 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v278 = &block_descriptor_24;
    v215 = _Block_copy(&aBlock);

    v236 = objc_opt_self();
    v216 = [v236 actionWithTitle:v214 style:1 handler:v215];
    _Block_release(v215);

    v250 = v249;
    v269 = v216;
    [v250 addAction_];
    v217 = _DocumentManagerBundle();
    if (!v217)
    {
LABEL_73:
      __break(1u);
      return;
    }

    v218 = v217;

    v293._countAndFlagsBits = 0xD000000000000027;
    v293._object = 0x8000000249BD27F0;
    v219._countAndFlagsBits = 0x9C80E2207065654BLL;
    v219._object = 0xAE009C80E240252ELL;
    v220.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v220.value._object = 0xEB00000000656C62;
    v221._countAndFlagsBits = 0x9C80E2207065654BLL;
    v221._object = 0xAE009C80E240252ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v219, v220, v218, v221, v293);

    v222 = swift_allocObject();
    *(v222 + 16) = xmmword_249B9A480;
    *(v222 + 56) = MEMORY[0x277D837D0];
    *(v222 + 64) = v255;
    *(v222 + 32) = v252;
    *(v222 + 40) = v242;
    v267 = String.init(format:_:)();
    v256 = v223;

    v224 = swift_allocObject();
    swift_weakInit();
    v225 = swift_allocObject();
    *(v225 + 16) = a5;
    *(v225 + 24) = a6;
    *(v225 + 32) = a1;
    *(v225 + 40) = a10;
    *(v225 + 48) = a11;
    *(v225 + 56) = a12;
    *(v225 + 64) = a13;
    *(v225 + 72) = v224;
    *(v225 + 80) = v259;
    *(v225 + 88) = v261;
    *(v225 + 96) = v262;
    *(v225 + 97) = v238;
    *(v225 + 104) = v237;
    outlined copy of DOCRenameOperation.NameType();

    swift_unknownObjectRetain();
    outlined copy of Result<RenameProposition, Error>(v259, v261, v262, v238);
    v226 = v237;

    v227 = MEMORY[0x24C1FAD20](v267, v256);

    v279 = partial apply for closure #2 in DOCNodeRenameOperation.handleFilenameExtensionChange(originalExtension:newExtension:fileName:node:validationResult:renameProposition:alertPresentingViewController:completion:finishedBlock:);
    v280 = v225;
    aBlock = MEMORY[0x277D85DD0];
    v276 = 1107296256;
    v277 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v278 = &block_descriptor_44_0;
    v228 = _Block_copy(&aBlock);

    v129 = [v236 actionWithTitle:v227 style:0 handler:v228];
    _Block_release(v228);

    [v250 addAction_];
    [v250 setPreferredAction_];

    [v226 presentViewController:v250 animated:1 completion:0];
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v229 = type metadata accessor for Logger();
    __swift_project_value_buffer(v229, static Logger.Rename);

    v230 = Logger.logObject.getter();
    v231 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v230, v231))
    {
      v232 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      aBlock = v233;
      *v232 = 136315394;
      *(v232 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000A6, 0x8000000249BD2820, &aBlock);
      *(v232 + 12) = 2080;
      v234 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v244, v247, &aBlock);

      *(v232 + 14) = v234;
      _os_log_impl(&dword_2493AC000, v230, v231, "%s: prompting user for file extension change confirmation with message: %s", v232, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v233, -1, -1);
      MEMORY[0x24C1FE850](v232, -1, -1);
    }

    else
    {
    }

    v235 = v269;
    goto LABEL_60;
  }

  v13 = v260;
  a3 = v261;
LABEL_30:
  v136 = a2;
  v137 = a3;
  v138 = (*(*v13 + 152))();
  if (v138)
  {
    (*(*v138 + 152))(v138, 1.0);
  }

  v139 = swift_allocObject();
  *(v139 + 16) = v136;
  *(v139 + 24) = v137;
  *(v139 + 32) = v14;
  *(v139 + 33) = BYTE1(v14) & 1;
  *(v139 + 40) = a10;
  *(v139 + 48) = a11;
  *(v139 + 56) = v13;
  v140 = objc_opt_self();

  outlined copy of Result<RenameProposition, Error>(v136, v137, v14, BYTE1(v14) & 1);

  v141 = [v140 defaultManager];
  v142 = swift_allocObject();
  *(v142 + 16) = 0;
  v143 = [objc_opt_self() shared];
  v144 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());
  swift_getObjectType();
  if (a7)
  {
    outlined copy of DOCRenameOperation.NameType();
    v145 = swift_unknownObjectRetain();
    v146 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(v145, a5, a6, 0, a9 & 1, v143, v144);

    v147 = swift_allocObject();
    *(v147 + 16) = a5;
    *(v147 + 24) = a6;
    *(v147 + 32) = v141;
    *(v147 + 40) = v142;
    *(v147 + 48) = a8;
    *(v147 + 56) = 0;
    *(v147 + 64) = partial apply for closure #1 in DOCNodeRenameOperation.commitRename(forNode:withResult:renameProposition:alertPresentingViewController:shouldDonateAppIntents:completion:finishedBlock:);
    *(v147 + 72) = v139;
    *(v147 + 80) = a12;
    *(v147 + 88) = a13;
    v148 = *((*MEMORY[0x277D85000] & *v146) + 0x190);
    v149 = MEMORY[0x277D85000];
    outlined copy of DOCRenameOperation.NameType();

    v150 = a8;

    v151 = v141;

    v148(partial apply for closure #1 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v147);
    v152 = *((*v149 & *v146) + 0x178);

    v152(partial apply for closure #2 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v142);
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v153 = type metadata accessor for Logger();
    __swift_project_value_buffer(v153, static Logger.Rename);
    v274 = v146;
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      aBlock = v158;
      *v156 = 136315394;
      *(v156 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x8000000249BD25A0, &aBlock);
      *(v156 + 12) = 2112;
      *(v156 + 14) = v274;
      *v157 = v146;
      v159 = v274;
      _os_log_impl(&dword_2493AC000, v154, v155, "%s: Adding Rename Operation %@", v156, 0x16u);
      outlined destroy of NSObject?(v157);
      MEMORY[0x24C1FE850](v157, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v158);
      MEMORY[0x24C1FE850](v158, -1, -1);
      MEMORY[0x24C1FE850](v156, -1, -1);
    }

    (*((*v149 & *v274) + 0x1B8))();
  }

  else
  {
    outlined copy of DOCRenameOperation.NameType();
    v160 = swift_unknownObjectRetain();
    v161 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(v160, a5, a6, 1, a9 & 1, v143, v144);

    v162 = swift_allocObject();
    *(v162 + 16) = v141;
    *(v162 + 24) = v142;
    *(v162 + 32) = a5;
    *(v162 + 40) = a6;
    v263 = v142;
    *(v162 + 48) = a8;
    *(v162 + 56) = 0;
    *(v162 + 64) = partial apply for closure #1 in DOCNodeRenameOperation.commitRename(forNode:withResult:renameProposition:alertPresentingViewController:shouldDonateAppIntents:completion:finishedBlock:);
    *(v162 + 72) = v139;
    *(v162 + 80) = a12;
    *(v162 + 88) = a13;
    v163 = *((*MEMORY[0x277D85000] & *v161) + 0x190);
    outlined copy of DOCRenameOperation.NameType();

    v164 = a8;
    v165 = v141;

    v163(partial apply for closure #1 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v162);
    v166 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v167 = MEMORY[0x277D85000];
    v168 = *((*MEMORY[0x277D85000] & *v161) + 0x148);

    v168(partial apply for closure #2 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v166);

    v169 = swift_allocObject();
    v272 = v165;
    swift_unknownObjectWeakInit();
    v170 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v171 = swift_allocObject();
    *(v171 + 16) = v169;
    *(v171 + 24) = v170;
    v172 = *((*v167 & *v161) + 0x160);

    v172(partial apply for closure #3 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v171);

    v173 = *((*v167 & *v161) + 0x178);

    v173(partial apply for closure #2 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v263);
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v174 = type metadata accessor for Logger();
    __swift_project_value_buffer(v174, static Logger.Rename);
    v274 = v161;
    v175 = Logger.logObject.getter();
    v176 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      aBlock = v179;
      *v177 = 136315394;
      *(v177 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007DLL, 0x8000000249BD2620, &aBlock);
      *(v177 + 12) = 2112;
      *(v177 + 14) = v274;
      *v178 = v161;
      v180 = v274;
      _os_log_impl(&dword_2493AC000, v175, v176, "%s: Adding Rename Operation %@", v177, 0x16u);
      outlined destroy of NSObject?(v178);
      MEMORY[0x24C1FE850](v178, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v179);
      MEMORY[0x24C1FE850](v179, -1, -1);
      MEMORY[0x24C1FE850](v177, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & *v274) + 0x1B8))();
  }
}