id PersonalNicknameNameProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::String_optional __swiftcall PersonalNicknameNameProvider.givenName()()
{
  v0 = PersonalNicknameNameProvider.givenName()(&selRef_firstName);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall PersonalNicknameNameProvider.familyName()()
{
  v0 = PersonalNicknameNameProvider.givenName()(&selRef_lastName);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t PersonalNicknameNameProvider.givenName()(SEL *a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit28PersonalNicknameNameProvider_personalNickname))
  {
    v2 = [*(v1 + OBJC_IVAR____TtC15ConversationKit28PersonalNicknameNameProvider_personalNickname) *a1];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_46();
}

id @objc PersonalNicknameNameProvider.givenName()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x1BFB209B0](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t PersonalNicknameAvatarProvider.imageData.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_46();
}

id PersonalNicknameAvatarProvider.init(imageData:wallpaperFilePath:nameString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_imageData];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = &v6[OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_wallpaperFilePath];
  *v8 = a3;
  *(v8 + 1) = a4;
  v9 = &v6[OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_nameString];
  *v9 = a5;
  *(v9 + 1) = a6;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for PersonalNicknameAvatarProvider();
  return objc_msgSendSuper2(&v11, sel_init);
}

id PersonalNicknameMenuView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized PersonalNicknameAvatarProvider.generateAvatarImage(of:imageHandler:)(uint64_t a1, void (**a2)(void, void, void), double a3, double a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a3 == 0.0 && (*&a4 & 0x7FF0000000000000) == 0;
  if (v8 && (*&a4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v7 = 100.0;
    v6 = 100.0;
  }

  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  v12 = (a1 + OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_imageData);
  v13 = *(a1 + OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_imageData + 8);
  if (v13 >> 60 == 15 || (v14 = *v12, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage), outlined copy of Data._Representation(v14, v13), (v15 = UIImage.__allocating_init(data:scale:)(v14, v13, v11)) == 0))
  {
    v17 = 0;
    v16 = 0;
  }

  else
  {
    v16 = v15;
    v19.width = v7;
    v19.height = v6;
    UIGraphicsBeginImageContextWithOptions(v19, 0, v11);
    [v16 drawInRect_];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  (a2)[2](a2, v17, 0);

  _Block_release(a2);
}

void PersonalNicknameAvatarProvider.generateAvatarImage(of:imageHandler:)(void (*a1)(void), double a2, double a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a2 == 0.0 && (*&a3 & 0x7FF0000000000000) == 0;
  if (v7 && (*&a3 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v6 = 100.0;
    v5 = 100.0;
  }

  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v10 = v9;

  v11 = (v3 + OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_imageData);
  v12 = *(v3 + OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_imageData + 8);
  if (v12 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v14 = *v11;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    outlined copy of Data._Representation(v14, v12);
    v13 = UIImage.__allocating_init(data:scale:)(v14, v12, v10);
    if (v13)
    {
      v15 = v13;
      v19.width = v6;
      v19.height = v5;
      UIGraphicsBeginImageContextWithOptions(v19, 0, v10);
      [v15 drawInRect_];
      v16 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();

      v13 = v16;
      goto LABEL_13;
    }
  }

  v15 = 0;
LABEL_13:
  v17 = v13;
  a1();
}

uint64_t PersonalNicknameAvatarProvider.generatePosterImage(handler:)(void (*a1)(void, void *), uint64_t a2)
{
  v78 = a2;
  v85[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for URL.DirectoryHint();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v74 - v11;
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v74 - v18;
  if (*(v2 + OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_wallpaperFilePath + 8))
  {
    v75 = v17;
    v76 = a1;
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v17);
    (*(v6 + 104))(v9, *MEMORY[0x1E6968F70], v4);

    OUTLINED_FUNCTION_2_125();
    URL.init(filePath:directoryHint:relativeTo:)();
    v77 = v19;
    v29 = Data.init(contentsOf:options:)();
    v31 = v30;
    v32 = objc_opt_self();
    OUTLINED_FUNCTION_2_125();
    isa = Data._bridgeToObjectiveC()().super.isa;
    aBlock = 0;
    v34 = [v32 unarchiveConfigurationFromData:isa error:&aBlock];

    v35 = aBlock;
    v36 = v14;
    if (v34)
    {
      v37 = v2 + OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_nameString;
      v38 = *(v2 + OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_nameString);
      v39 = *(v37 + 8);
      objc_allocWithZone(MEMORY[0x1E69D89C8]);

      v40 = v35;
      v41 = v34;
      v42 = @nonobjc TPInComingCallUISnapshotViewController.init(configuration:style:nameString:)(v34, 3, v38, v39);
      v43 = swift_allocObject();
      v44 = v78;
      *(v43 + 16) = v76;
      *(v43 + 24) = v44;
      v83 = partial apply for closure #1 in PersonalNicknameAvatarProvider.generatePosterImage(handler:);
      v84 = v43;
      aBlock = MEMORY[0x1E69E9820];
      v80 = 1107296256;
      v81 = thunk for @escaping @callee_guaranteed (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
      v82 = &block_descriptor_68;
      v45 = _Block_copy(&aBlock);

      [v42 snapshotWithOptions:0 completionBlock:v45];
      _Block_release(v45);
    }

    else
    {
      v46 = aBlock;
      v47 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for nickname != -1)
      {
        OUTLINED_FUNCTION_0_160();
      }

      v48 = type metadata accessor for Logger();
      __swift_project_value_buffer(v48, &static Logger.nickname);
      v49 = OUTLINED_FUNCTION_2_125();
      outlined copy of Data._Representation(v49, v50);
      v51 = v47;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      v54 = OUTLINED_FUNCTION_2_125();
      outlined consume of Data._Representation(v54, v55);

      if (os_log_type_enabled(v52, v53))
      {
        v56 = swift_slowAlloc();
        v85[0] = swift_slowAlloc();
        *v56 = 136315394;
        aBlock = v29;
        v80 = v31;
        v57 = OUTLINED_FUNCTION_2_125();
        outlined copy of Data._Representation(v57, v58);
        v59 = String.init<A>(reflecting:)();
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v85);

        *(v56 + 4) = v61;
        *(v56 + 12) = 2080;
        aBlock = v47;
        v62 = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
        v63 = String.init<A>(reflecting:)();
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v85);

        *(v56 + 14) = v65;
        OUTLINED_FUNCTION_219();
        _os_log_impl(v66, v67, v68, v69, v70, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      v71 = v47;
      v76(0, v47);
    }

    v72 = OUTLINED_FUNCTION_2_125();
    outlined consume of Data._Representation(v72, v73);
    return (*(v36 + 8))(v77, v75);
  }

  else
  {
    if (one-time initialization token for nickname != -1)
    {
      OUTLINED_FUNCTION_0_160();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, &static Logger.nickname);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_219();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_27();
    }

    return (a1)(0, 0);
  }
}

uint64_t closure #1 in PersonalNicknameAvatarProvider.generatePosterImage(handler:)(uint64_t a1, id a2, uint64_t (*a3)(uint64_t, id))
{
  if (a2)
  {
    v6 = a2;
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Logger.nickname);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1BBC58000, v9, v10, "Could not snapshot TPInComingCallUISnapshotViewController with error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }

    else
    {
    }
  }

  return a3(a1, a2);
}

id @nonobjc TPInComingCallUISnapshotViewController.init(configuration:style:nameString:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a4)
  {
    v8 = MEMORY[0x1BFB209B0](a3, a4);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithConfiguration:a1 style:a2 nameString:v8];

  return v9;
}

unint64_t lazy protocol witness table accessor for type PersonalNicknameMenuViewDisplayContext and conformance PersonalNicknameMenuViewDisplayContext()
{
  result = lazy protocol witness table cache variable for type PersonalNicknameMenuViewDisplayContext and conformance PersonalNicknameMenuViewDisplayContext;
  if (!lazy protocol witness table cache variable for type PersonalNicknameMenuViewDisplayContext and conformance PersonalNicknameMenuViewDisplayContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalNicknameMenuViewDisplayContext and conformance PersonalNicknameMenuViewDisplayContext);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalNicknameMenuViewDisplayContext(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = OUTLINED_FUNCTION_17_1();
  v7 = *(type metadata accessor for Participant(v6) - 8);
  v8 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v8 = v9;
  }

  v10 = *(v8 + 16);
  v12[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12[1] = v10;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v12, a2, a3);
  *v3 = v8;
  return result;
}

void Array<A>.screenSharingParticipant.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v30 = v2;
  v32 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Participant(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_4();
  v29 = v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = 0;
  v13 = *(v1 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  while (v13 != v12)
  {
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = *(v7 + 72);
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_6(v16, v11, v17);
    _s15ConversationKit11ParticipantVWOcTm_6(v11, v5, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v19 = v1;
      v20 = *(v18 + 48);
      outlined consume of Participant.CopresenceInfo?(*&v5[*(v18 + 64)], *&v5[*(v18 + 64) + 8]);
      v21 = &v5[v20];
      v1 = v19;
      memcpy(v33, v21, sizeof(v33));
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      (*(v22 + 8))(v5);
      outlined init with copy of Participant.ScreenInfo?(&v33[12], v34);
      outlined destroy of Participant.MediaInfo(v33);
      if (v35 == 1)
      {
        goto LABEL_11;
      }

      outlined destroy of Participant.ScreenInfo?(v34);
      outlined init with take of Participant(v11, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v31;
      v37 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v1 = v19;
        v24 = v37;
      }

      v25 = *(v24 + 16);
      v26 = v25 + 1;
      if (v25 >= *(v24 + 24) >> 1)
      {
        v31 = v25 + 1;
        v28 = v25;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v26 = v31;
        v25 = v28;
        v1 = v19;
        v24 = v37;
      }

      ++v12;
      *(v24 + 16) = v26;
      v31 = v24;
      outlined init with take of Participant(v29, v24 + v14 + v25 * v15);
    }

    else
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v34, 0, sizeof(v34));
      v35 = 1;
      bzero(&v36, 0xB1uLL);
LABEL_11:
      outlined destroy of Participant.ScreenInfo?(v34);
      OUTLINED_FUNCTION_0_161();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      ++v12;
    }
  }

  v33[0] = v31;

  specialized MutableCollection<>.sort(by:)(v33, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

  specialized Collection.first.getter(v33[0], v30);

  OUTLINED_FUNCTION_30_0();
}

void Array<A>.arrayCloselyMatching(_:)()
{
  OUTLINED_FUNCTION_29();
  v35 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v1 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v31 - v13;
  v44 = v14;
  v40 = v15;
  v41 = v16;
  v42 = v17;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v48 = _ArrayProtocol.filter(_:)();
  v44 = v6;
  v37 = v2;
  v38 = v35;
  v39 = v4;

  v47 = _ArrayProtocol.filter(_:)();
  v46[1] = static Array._allocateUninitialized(_:)();
  OUTLINED_FUNCTION_249();
  v18 = Array.startIndex.getter();
  v46[0] = v18;
  v19 = OUTLINED_FUNCTION_249();
  if (v18 == MEMORY[0x1BFB20DE0](v19))
  {
LABEL_16:
    static Array.+ infix(_:_:)();

    static Array.+= infix(_:_:)();

    OUTLINED_FUNCTION_30_0();
    return;
  }

  v31 = v8;
  v36 = (v7 + 2);
  v33 = (v7 + 4);
  v20 = (v7 + 1);
  while (1)
  {
    OUTLINED_FUNCTION_249();
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    OUTLINED_FUNCTION_40_3();
    v23 = v7[2];
    v24 = v34;
    v23(v34, (v4 + v22 + v7[9] * v18), v2);
LABEL_5:
    Array.formIndex(after:)(v46);
    (*v33)(v11, v24, v2);
    v25 = v47;
    v43 = v47;
    OUTLINED_FUNCTION_4_99();
    swift_getWitnessTable();
    Collection<>.firstIndex(of:)();
    if (v45)
    {
      v44 = v48;
      if ((Collection.isEmpty.getter() & 1) == 0 || (v44 = v25, (Collection.isEmpty.getter() & 1) == 0))
      {
        OUTLINED_FUNCTION_6_89();
        RangeReplaceableCollection.removeFirst()();
        Array.append(_:)();
      }

      (*v20)(v11, v2);
    }

    else
    {
      v26 = v32;
      v23(v32, v11, v2);
      Array.append(_:)();
      Array.remove(at:)();
      v27 = *v20;
      (*v20)(v26, v2);
      v27(v11, v2);
    }

    v28 = OUTLINED_FUNCTION_249();
    v29 = MEMORY[0x1BFB20DE0](v28);
    v18 = v46[0];
    if (v46[0] == v29)
    {
      goto LABEL_16;
    }
  }

  v30 = _ArrayBuffer._getElementSlowPath(_:)();
  if (v31 == 8)
  {
    v44 = v30;
    v23 = *v36;
    v24 = v34;
    (*v36)(v34, &v44, v2);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

void Array<A>.sortToMatch(_:)()
{
  OUTLINED_FUNCTION_29();
  v31 = v0;
  v26 = v1;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v28 = v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v24 - v16);
  v35 = v5;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1BFB20C00](&v32, v3, WitnessTable);
  v34 = v32;
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v30 = v3;
  v19 = v6;
  v27 = type metadata accessor for EnumeratedSequence.Iterator();
  v25 = (v7 + 32);
  while (1)
  {
    v20 = v28;
    EnumeratedSequence.Iterator.next()();
    (*(v12 + 32))(v17, v20, v29);
    if (__swift_getEnumTagSinglePayload(v17, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v21 = *v17;
    (*v25)(v9, v17 + *(TupleTypeMetadata2 + 48), v19);
    v22 = *v31;
    v34 = *v31;
    OUTLINED_FUNCTION_4_99();
    swift_getWitnessTable();
    Collection<>.firstIndex(of:)();
    if (v33 != 1)
    {
      v23 = v32;
      if (v21 < MEMORY[0x1BFB20DB0](v22, v19))
      {
        v32 = v21;
        v34 = v23;
        swift_getWitnessTable();
        MutableCollection.swapAt(_:_:)();
      }
    }

    (*(v7 + 8))(v9, v19);
  }

  OUTLINED_FUNCTION_30_0();
}

void Array<A>.filterAndSortForInCallControls()()
{
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for Participant(v1);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = 0;
  v12 = *(v0 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  while (v12 != v11)
  {
    v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v15 = *(v4 + 72);
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_6(v16, v10, v17);
    if (*&v10[*(v2 + 28)])
    {
      outlined init with take of Participant(v10, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v13;
      v25 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_3_115();
        v13 = v26;
      }

      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_10_69(v19);
        v24 = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v24;
        v13 = v26;
      }

      ++v11;
      *(v13 + 16) = v21;
      v22 = v13 + v14 + v20 * v15;
      v7 = v25;
      outlined init with take of Participant(v25, v22);
    }

    else
    {
      OUTLINED_FUNCTION_0_161();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      ++v11;
    }
  }

  v26 = v13;

  specialized MutableCollection<>.sort(by:)(&v26, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

  OUTLINED_FUNCTION_30_0();
}

BOOL closure #1 in Array<A>.arrayCloselyMatching(_:)()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return (Sequence<>.contains(_:)() & 1) == 0;
}

uint64_t closure #2 in Array<A>.arrayCloselyMatching(_:)()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence<>.contains(_:)() & 1;
}

__n64 Array<A>.union()(__n64 *a1)
{
  v1 = a1[2].n64_u64[0];
  if (v1)
  {
    v2 = a1 + 7;
    v3 = a1[7].n64_u64[0];
    result.n64_u64[0] = a1[4].n64_u64[0];
    v5 = a1[5].n64_u64[0];
    v6 = a1[6].n64_u64[0];
    do
    {
      *result.n64_u64 = CGRectUnion(*result.n64_u64, *v2[-3].n64_u64);
      v2 += 4;
      --v1;
    }

    while (v1);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t closure #1 in Array<A>.sortForInCallControls()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  _s15ConversationKit11ParticipantVWOcTm_6(a1, &v39 - v14, type metadata accessor for Participant.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 4u:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v29 = *(v28 + 48);
      outlined consume of Participant.CopresenceInfo?(*&v15[*(v28 + 64)], *&v15[*(v28 + 64) + 8]);
      outlined destroy of Participant.MediaInfo(&v15[v29]);
      v30 = type metadata accessor for Date();
      v31 = *(v30 - 8);
      v32 = *(v31 + 8);
      v39 = v31 + 8;
      v40 = v32;
      v32(v15, v30);
      _s15ConversationKit11ParticipantVWOcTm_6(a2, v12, type metadata accessor for Participant.State);
      v26 = 1;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v38 = *(v28 + 48);
          outlined consume of Participant.CopresenceInfo?(*&v12[*(v28 + 64)], *&v12[*(v28 + 64) + 8]);
          outlined destroy of Participant.MediaInfo(&v12[v38]);
          v40(v12, v30);
          goto LABEL_3;
        case 6u:
          return v26 & 1;
        default:
          v40(v12, v30);
          break;
      }

      break;
    case 6u:
      goto LABEL_3;
    default:
      v16 = type metadata accessor for Date();
      (*(*(v16 - 8) + 8))(v15, v16);
LABEL_3:
      _s15ConversationKit11ParticipantVWOcTm_6(a1, v9, type metadata accessor for Participant.State);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v34 = *(v33 + 48);
          outlined consume of Participant.CopresenceInfo?(*&v9[*(v33 + 64)], *&v9[*(v33 + 64) + 8]);
          outlined destroy of Participant.MediaInfo(&v9[v34]);
          v6 = v9;
LABEL_6:
          v18 = type metadata accessor for Date();
          (*(*(v18 - 8) + 8))(v6, v18);
LABEL_7:
          Participant.contactDetails.getter();
          v20 = v44;
          v19 = v45;
          v21 = v46;

          Participant.contactDetails.getter();
          v23 = v41;
          v22 = v42;
          v24 = v43;

          if (v22 == v19 && v24 == v21)
          {
            v26 = 0;
          }

          else
          {
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          break;
        case 6u:
          goto LABEL_5;
        default:
          v17 = type metadata accessor for Date();
          (*(*(v17 - 8) + 8))(v9, v17);
LABEL_5:
          _s15ConversationKit11ParticipantVWOcTm_6(a2, v6, type metadata accessor for Participant.State);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 4u:
              v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
              v36 = *(v35 + 48);
              outlined consume of Participant.CopresenceInfo?(*&v6[*(v35 + 64)], *&v6[*(v35 + 64) + 8]);
              outlined destroy of Participant.MediaInfo(&v6[v36]);
              v37 = type metadata accessor for Date();
              (*(*(v37 - 8) + 8))(v6, v37);
              v26 = 0;
              break;
            case 6u:
              goto LABEL_7;
            default:
              goto LABEL_6;
          }

          break;
      }

      break;
  }

  return v26 & 1;
}

void Array<A>.participants(notIn:)()
{
  OUTLINED_FUNCTION_29();
  v48 = v1;
  v2 = OUTLINED_FUNCTION_17_1();
  v53 = type metadata accessor for Participant(v2);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v49 = v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v46 - v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v46 - v10;
  v11 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v20 = *(v0 + 16);
  v46 = v4;
  if (v20)
  {
    v57 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v21 = v57;
    OUTLINED_FUNCTION_40_3();
    v23 = v0 + v22;
    v54 = *(v4 + 72);
    v52 = v13 + 32;
    do
    {
      OUTLINED_FUNCTION_7_5();
      v24 = v55;
      _s15ConversationKit11ParticipantVWOcTm_6(v23, v55, v25);
      (*(v13 + 16))(v19, v24 + *(v53 + 20), v11);
      OUTLINED_FUNCTION_0_161();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      v57 = v21;
      v26 = v19;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_10_69(v27);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v57;
      }

      *(v21 + 16) = v28 + 1;
      OUTLINED_FUNCTION_40_3();
      (*(v13 + 32))(v21 + v29 + *(v13 + 72) * v28, v26, v11);
      v23 += v54;
      --v20;
      v19 = v26;
    }

    while (v20);
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5();
  v31 = v30;
  v32 = 0;
  v47 = *(v48 + 16);
  v33 = v30 + 56;
  v55 = v13 + 16;
  v50 = MEMORY[0x1E69E7CC0];
LABEL_7:
  while (v32 != v47)
  {
    v34 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v35 = *(v46 + 72);
    v54 = v32 + 1;
    v51 = v35;
    v52 = v34;
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_6(v36, v56, v37);
    if (*(v31 + 16))
    {
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v39 = ~(-1 << *(v31 + 32));
      while (1)
      {
        v40 = v38 & v39;
        if (((*(v33 + (((v38 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v39)) & 1) == 0)
        {
          break;
        }

        (*(v13 + 16))(v16, *(v31 + 48) + *(v13 + 72) * v40, v11);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v13 + 8))(v16, v11);
        v38 = v40 + 1;
        if (v41)
        {
          OUTLINED_FUNCTION_0_161();
          _s15ConversationKit11ParticipantV5StateOWOhTm_0();
          v32 = v54;
          goto LABEL_7;
        }
      }
    }

    outlined init with take of Participant(v56, v49);
    v42 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_3_115();
      v42 = v57;
    }

    v45 = *(v42 + 16);
    v44 = *(v42 + 24);
    if (v45 >= v44 >> 1)
    {
      OUTLINED_FUNCTION_10_69(v44);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v42 = v57;
    }

    *(v42 + 16) = v45 + 1;
    v50 = v42;
    outlined init with take of Participant(v49, v42 + v52 + v45 * v51);
    v32 = v54;
  }

  OUTLINED_FUNCTION_30_0();
}

BOOL closure #2 in Array<A>.screenSharingParticipant.getter()
{
  if (Participant.screenState.getter() == 2)
  {
    v0 = 0;
  }

  else
  {
    v0 = Participant.isReceivingScreenFrames.getter();
  }

  if (Participant.screenState.getter() == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = Participant.isReceivingScreenFrames.getter();
  }

  return static Bool.< infix(_:_:)(v1 & 1, v0 & 1);
}

void Array<A>.sorted(byIdentifiers:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v70 = v3;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v72 = v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v69 - v10;
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  v74 = v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v69 - v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  v21 = *(v2 + 16);
  v80 = v4;
  v75 = v22;
  v76 = v6;
  v71 = v2;
  if (v21)
  {
    OUTLINED_FUNCTION_40_3();
    v25 = v2 + v24;
    v78 = *(v26 + 72);
    v79 = v27;
    v81 = (v6 + 16);
    v28 = MEMORY[0x1E69E7CC8];
    v77 = (v6 + 8);
    while (1)
    {
      v82 = v23;
      OUTLINED_FUNCTION_5_107();
      _s15ConversationKit11ParticipantVWOcTm_6(v25, v20, v29);
      v30 = *v81;
      (*v81)(v83, &v20[v79], v4);
      v31 = v20;
      _s15ConversationKit11ParticipantVWOcTm_6(v20, v17, v0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v28;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)();
      v35 = *(v28 + 16);
      v36 = (v34 & 1) == 0;
      v0 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        break;
      }

      v17 = v33;
      v37 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV15ConversationKit11ParticipantVGMd);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v0))
      {
        v38 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_30;
        }

        v17 = v38;
      }

      v28 = v84;
      if (v37)
      {
        v40 = OUTLINED_FUNCTION_13_60();
        outlined assign with take of Participant(v40, v41);
        v4 = v80;
        (*v77)(v83, v80);
        OUTLINED_FUNCTION_0_161();
        v20 = v31;
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      }

      else
      {
        *(v84 + 8 * (v17 >> 6) + 64) |= 1 << v17;
        v0 = v76;
        v42 = v83;
        v4 = v80;
        v30((*(v28 + 48) + *(v76 + 72) * v17), v83, v80);
        v43 = OUTLINED_FUNCTION_13_60();
        outlined init with take of Participant(v43, v44);
        (*(v0 + 8))(v42, v4);
        OUTLINED_FUNCTION_0_161();
        v20 = v31;
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        v45 = *(v28 + 16);
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_29;
        }

        *(v28 + 16) = v47;
      }

      v25 += v30;
      v23 = v82 - 1;
      if (v82 == 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC8];
LABEL_14:
    v48 = *(v70 + 16);
    if (v48)
    {
      v49 = v76 + 16;
      v50 = *(v76 + 16);
      OUTLINED_FUNCTION_40_3();
      v53 = v52 + v51;
      v54 = *(v49 + 56);
      v55 = (v49 - 8);
      v56 = MEMORY[0x1E69E7CC0];
      v57 = v72;
      v76 = v49;
      v82 = v54;
      v83 = v50;
      do
      {
        (v50)(v57, v53, v4);
        if (*(v28 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(), (v58 & 1) != 0))
        {
          v59 = *(v75 + 72);
          OUTLINED_FUNCTION_5_107();
          v60 = v73;
          _s15ConversationKit11ParticipantVWOcTm_6(v61, v73, v62);
          (*v55)(v57, v4);
          _s15ConversationKit11ParticipantVWOcTm_6(v60, v74, v49);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v56 = v66;
          }

          v63 = *(v56 + 16);
          v54 = v82;
          if (v63 >= *(v56 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v56 = v67;
          }

          OUTLINED_FUNCTION_0_161();
          _s15ConversationKit11ParticipantV5StateOWOhTm_0();
          *(v56 + 16) = v63 + 1;
          OUTLINED_FUNCTION_40_3();
          outlined init with take of Participant(v65, v56 + v64 + v63 * v59);
          v4 = v80;
          v49 = v76;
          v57 = v72;
          v50 = v83;
        }

        else
        {
          (*v55)(v57, v4);
        }

        v53 += v54;
        --v48;
      }

      while (v48);
    }

    else
    {

      v56 = MEMORY[0x1E69E7CC0];
    }

    Array<A>.participants(notIn:)();
    v84 = v56;
    specialized Array.append<A>(contentsOf:)(v68);
    OUTLINED_FUNCTION_30_0();
  }
}

uint64_t outlined destroy of Participant.ScreenInfo?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Participant.ScreenInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v172 = a4;
  v176 = a1;
  v192 = type metadata accessor for PersonNameComponents();
  v7 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v194 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v202 = &v170 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v188 = &v170 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v170 - v17;
  v209 = type metadata accessor for Participant(0);
  v187 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v177 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v198 = &v170 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v199 = &v170 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v201 = &v170 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v170 - v27;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v170 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v175 = &v170 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v174 = &v170 - v37;
  v189 = a3;
  v38 = a3[1];
  if (v38 >= 1)
  {
    v181 = v36;
    v39 = 0;
    v40 = MEMORY[0x1E69E7CC0];
    v191 = (v7 + 8);
    v190 = v9;
    v193 = v11;
    v195 = v18;
    v200 = v28;
    v185 = v32;
    while (1)
    {
      v180 = v40;
      v186 = v39 + 1;
      if (v39 + 1 < v38)
      {
        v205 = v38;
        v41 = *v189;
        v42 = *(v187 + 72);
        v7 = *v189 + v42 * (v39 + 1);
        v43 = v174;
        _s15ConversationKit11ParticipantVWOcTm_6(v7, v174, type metadata accessor for Participant);
        v44 = v175;
        _s15ConversationKit11ParticipantVWOcTm_6(v41 + v42 * v39, v175, type metadata accessor for Participant);
        LODWORD(v204) = closure #1 in Array<A>.sortForInCallControls()(v43, v44);
        if (v5)
        {
          _s15ConversationKit11ParticipantV5StateOWOhTm_0();
          _s15ConversationKit11ParticipantV5StateOWOhTm_0();
          goto LABEL_152;
        }

        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        v173 = v39;
        v45 = v39 + 2;
        v46 = v41 + v42 * (v39 + 2);
        v11 = v193;
        v47 = v186;
        v48 = v205;
        while (1)
        {
          v49 = v45;
          if (v47 + 1 >= v48)
          {
            break;
          }

          _s15ConversationKit11ParticipantVWOcTm_6(v46, v32, type metadata accessor for Participant);
          v50 = v181;
          _s15ConversationKit11ParticipantVWOcTm_6(v7, v181, type metadata accessor for Participant);
          v51 = closure #1 in Array<A>.sortForInCallControls()(v32, v50);
          _s15ConversationKit11ParticipantV5StateOWOhTm_0();
          v32 = v185;
          _s15ConversationKit11ParticipantV5StateOWOhTm_0();
          v52 = v204 ^ v51;
          v46 += v42;
          v7 += v42;
          ++v47;
          v45 = v49 + 1;
          v11 = v193;
          v48 = v205;
          if (v52)
          {
            goto LABEL_10;
          }
        }

        v47 = v48;
LABEL_10:
        v186 = v47;
        if (v204)
        {
          v53 = v173;
          if (v47 < v173)
          {
            goto LABEL_178;
          }

          v54 = v47;
          if (v173 >= v47)
          {
            v18 = v195;
            v28 = v200;
            v39 = v173;
            goto LABEL_33;
          }

          if (v48 >= v49)
          {
            v55 = v49;
          }

          else
          {
            v55 = v48;
          }

          v56 = v42 * (v55 - 1);
          v57 = v42 * v55;
          v58 = v173 * v42;
          v18 = v195;
          do
          {
            if (v53 != --v54)
            {
              v59 = *v189;
              if (!*v189)
              {
                goto LABEL_182;
              }

              v7 = v59 + v58;
              outlined init with take of Participant(v59 + v58, v177);
              v60 = v58 < v56 || v7 >= v59 + v57;
              if (v60)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v58 != v56)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              outlined init with take of Participant(v177, v59 + v56);
              v18 = v195;
            }

            ++v53;
            v56 -= v42;
            v57 -= v42;
            v58 += v42;
          }

          while (v53 < v54);
          v11 = v193;
        }

        else
        {
          v18 = v195;
        }

        v28 = v200;
        v39 = v173;
      }

LABEL_33:
      v61 = v189[1];
      v62 = v186;
      v63 = v201;
      if (v186 < v61)
      {
        if (__OFSUB__(v186, v39))
        {
          goto LABEL_174;
        }

        if (v186 - v39 < v172)
        {
          v64 = v39 + v172;
          if (!__OFADD__(v39, v172))
          {
            if (v64 >= v61)
            {
              v64 = v189[1];
            }

            if (v64 < v39)
            {
              goto LABEL_177;
            }

            if (v186 == v64)
            {
              goto LABEL_88;
            }

            v171 = v5;
            v65 = *v189;
            v66 = *(v187 + 72);
            v67 = *v189 + v66 * (v186 - 1);
            v196 = -v66;
            v173 = v39;
            v68 = v39 - v186;
            v197 = v65;
            v178 = v66;
            v69 = v65 + v186 * v66;
            v179 = v64;
LABEL_43:
            v186 = v62;
            v182 = v69;
            v183 = v68;
            v70 = v68;
            v184 = v67;
            while (2)
            {
              v205 = v70;
              _s15ConversationKit11ParticipantVWOcTm_6(v69, v28, type metadata accessor for Participant);
              _s15ConversationKit11ParticipantVWOcTm_6(v67, v63, type metadata accessor for Participant);
              _s15ConversationKit11ParticipantVWOcTm_6(v28, v18, type metadata accessor for Participant.State);
              switch(swift_getEnumCaseMultiPayload())
              {
                case 4u:
                  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
                  v106 = *(v105 + 48);
                  outlined consume of Participant.CopresenceInfo?(*&v18[*(v105 + 64)], *&v18[*(v105 + 64) + 8]);
                  outlined destroy of Participant.MediaInfo(&v18[v106]);
                  v107 = type metadata accessor for Date();
                  v108 = *(*(v107 - 8) + 8);
                  v108(v18, v107);
                  _s15ConversationKit11ParticipantVWOcTm_6(v63, v188, type metadata accessor for Participant.State);
                  switch(swift_getEnumCaseMultiPayload())
                  {
                    case 4u:
                      v112 = *(v105 + 48);
                      v113 = *(v105 + 64);
                      v114 = v188;
                      outlined consume of Participant.CopresenceInfo?(*&v188[v113], *&v188[v113 + 8]);
                      outlined destroy of Participant.MediaInfo(v114 + v112);
                      v108(v114, v107);
                      v11 = v193;
                      v28 = v200;
                      v63 = v201;
                      goto LABEL_46;
                    case 6u:
                      goto LABEL_80;
                    default:
                      v108(v188, v107);
LABEL_80:
                      v63 = v201;
                      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
                      v28 = v200;
                      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
                      v11 = v193;
                      break;
                  }

                  goto LABEL_74;
                case 6u:
                  break;
                default:
                  v71 = type metadata accessor for Date();
                  (*(*(v71 - 8) + 8))(v18, v71);
                  break;
              }

LABEL_46:
              _s15ConversationKit11ParticipantVWOcTm_6(v28, v202, type metadata accessor for Participant.State);
              switch(swift_getEnumCaseMultiPayload())
              {
                case 4u:
                  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
                  v110 = *(v109 + 48);
                  v111 = v202;
                  outlined consume of Participant.CopresenceInfo?(*(v202 + *(v109 + 64)), *(v202 + *(v109 + 64) + 8));
                  outlined destroy of Participant.MediaInfo(v111 + v110);
                  v73 = v111;
LABEL_49:
                  v74 = type metadata accessor for Date();
                  (*(*(v74 - 8) + 8))(v73, v74);
LABEL_50:
                  v75 = *&v28[*(v209 + 28)];
                  if (!v75)
                  {
                    goto LABEL_60;
                  }

                  v76 = v75;
                  v77 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v76);
                  if (v78)
                  {
                    v79 = v78;
                    v204 = v77;
                    if ([v76 shouldHideContact])
                    {
                      v203 = v79;
                      v80 = v194;
                      PersonNameComponents.init()();
                      PersonNameComponents.givenName.setter();
                      PersonNameComponents.familyName.setter();
                      if (one-time initialization token for initials != -1)
                      {
                        swift_once();
                      }

                      swift_beginAccess();
                      v81 = static NSPersonNameComponentsFormatter.initials;
                      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
                      v83 = [v81 stringFromPersonNameComponents_];

                      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v86 = v85;

                      (*v191)(v80, v192);
                      v206 = v84;
                      v207 = v86;
                      lazy protocol witness table accessor for type String and conformance String();
                      StringProtocol.localizedUppercase.getter();

                      v63 = v201;
                      v87 = *&v201[*(v209 + 28)];
                      v18 = v195;
                      if (!v87)
                      {
                        goto LABEL_70;
                      }

LABEL_61:
                      v90 = v87;
                      v91 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v90);
                      if (v92)
                      {
                        v93 = v91;
                        v94 = v92;
                        if ([v90 shouldHideContact])
                        {
                          PersonNameComponents.init()();
                          PersonNameComponents.givenName.setter();
                          PersonNameComponents.familyName.setter();
                          if (one-time initialization token for initials != -1)
                          {
                            swift_once();
                          }

                          swift_beginAccess();
                          v95 = static NSPersonNameComponentsFormatter.initials;
                          v96 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
                          v97 = [v95 stringFromPersonNameComponents_];

                          v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v100 = v99;

                          (*v191)(v194, v192);
                          v206 = v98;
                          v207 = v100;
                          lazy protocol witness table accessor for type String and conformance String();
                          StringProtocol.localizedUppercase.getter();

                          v101 = v203;
                          v11 = v193;
                          v18 = v195;
                          if (v93 != v204)
                          {
                            goto LABEL_73;
                          }

                          goto LABEL_72;
                        }
                      }

                      else
                      {
                      }

                      v18 = v195;
                      v63 = v201;
                      goto LABEL_70;
                    }
                  }

                  else
                  {
                  }

                  v28 = v200;
LABEL_60:
                  _s15ConversationKit11ParticipantVWOcTm_6(v28, v199, type metadata accessor for Participant);
                  v88 = v209;

                  ParticipantContactDetailsCache.contactDetails(for:)();

                  _s15ConversationKit11ParticipantV5StateOWOhTm_0();
                  v89 = v206;
                  v203 = v208;
                  v204 = v207;

                  v87 = *(v63 + *(v88 + 28));
                  if (v87)
                  {
                    goto LABEL_61;
                  }

LABEL_70:
                  _s15ConversationKit11ParticipantVWOcTm_6(v63, v199, type metadata accessor for Participant);

                  ParticipantContactDetailsCache.contactDetails(for:)();

                  _s15ConversationKit11ParticipantV5StateOWOhTm_0();
                  v102 = v206;
                  v103 = v207;
                  v94 = v208;

                  if (v103 != v204)
                  {
LABEL_73:
                    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    v63 = v201;
                    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
                    v28 = v200;
                    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
                    if ((v7 & 1) == 0)
                    {
                      goto LABEL_86;
                    }

LABEL_74:
                    v104 = v205;
                    if (!v197)
                    {
                      goto LABEL_179;
                    }

                    v7 = v198;
                    outlined init with take of Participant(v69, v198);
                    swift_arrayInitWithTakeFrontToBack();
                    outlined init with take of Participant(v7, v67);
                    v67 += v196;
                    v69 += v196;
                    v60 = __CFADD__(v104, 1);
                    v70 = v104 + 1;
                    if (v60)
                    {
                      goto LABEL_86;
                    }

                    continue;
                  }

                  v101 = v203;
LABEL_72:
                  if (v94 == v101)
                  {

                    v28 = v200;
                    v63 = v201;
LABEL_85:
                    v7 = type metadata accessor for Participant;
                    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
                    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
LABEL_86:
                    v62 = v186 + 1;
                    v67 = v184 + v178;
                    v68 = v183 - 1;
                    v69 = v182 + v178;
                    if (v186 + 1 == v179)
                    {
                      v186 = v179;
                      v5 = v171;
                      v39 = v173;
                      goto LABEL_88;
                    }

                    goto LABEL_43;
                  }

                  goto LABEL_73;
                case 6u:
                  goto LABEL_48;
                default:
                  v72 = type metadata accessor for Date();
                  (*(*(v72 - 8) + 8))(v202, v72);
LABEL_48:
                  _s15ConversationKit11ParticipantVWOcTm_6(v63, v11, type metadata accessor for Participant.State);
                  v73 = v11;
                  switch(swift_getEnumCaseMultiPayload())
                  {
                    case 4u:
                      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
                      v116 = *(v115 + 48);
                      outlined consume of Participant.CopresenceInfo?(*&v11[*(v115 + 64)], *&v11[*(v115 + 64) + 8]);
                      outlined destroy of Participant.MediaInfo(&v11[v116]);
                      v117 = type metadata accessor for Date();
                      (*(*(v117 - 8) + 8))(v11, v117);
                      goto LABEL_85;
                    case 6u:
                      goto LABEL_50;
                    default:
                      goto LABEL_49;
                  }
              }
            }
          }

          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
          return;
        }
      }

LABEL_88:
      if (v186 < v39)
      {
        goto LABEL_173;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v40 = v180;
      }

      else
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v40 = v160;
      }

      v7 = v40[2];
      v118 = v7 + 1;
      if (v7 >= v40[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v40 = v161;
      }

      v40[2] = v118;
      v119 = v40 + 4;
      v120 = &v40[2 * v7 + 4];
      v121 = v186;
      *v120 = v39;
      v120[1] = v121;
      v205 = *v176;
      if (!v205)
      {
        goto LABEL_183;
      }

      if (v7)
      {
        while (1)
        {
          v122 = v118 - 1;
          v123 = &v119[2 * v118 - 2];
          v124 = v40;
          v125 = &v40[2 * v118];
          if (v118 >= 4)
          {
            break;
          }

          if (v118 == 3)
          {
            v126 = v40[4];
            v127 = v40[5];
            v136 = __OFSUB__(v127, v126);
            v128 = v127 - v126;
            v129 = v136;
LABEL_108:
            if (v129)
            {
              goto LABEL_163;
            }

            v141 = *v125;
            v140 = v125[1];
            v142 = __OFSUB__(v140, v141);
            v143 = v140 - v141;
            v144 = v142;
            if (v142)
            {
              goto LABEL_166;
            }

            v145 = v123[1];
            v146 = v145 - *v123;
            if (__OFSUB__(v145, *v123))
            {
              goto LABEL_169;
            }

            if (__OFADD__(v143, v146))
            {
              goto LABEL_171;
            }

            if (v143 + v146 >= v128)
            {
              if (v128 < v146)
              {
                v122 = v118 - 2;
              }

              goto LABEL_130;
            }

            goto LABEL_123;
          }

          if (v118 < 2)
          {
            goto LABEL_165;
          }

          v148 = *v125;
          v147 = v125[1];
          v136 = __OFSUB__(v147, v148);
          v143 = v147 - v148;
          v144 = v136;
LABEL_123:
          if (v144)
          {
            goto LABEL_168;
          }

          v150 = *v123;
          v149 = v123[1];
          v136 = __OFSUB__(v149, v150);
          v151 = v149 - v150;
          if (v136)
          {
            goto LABEL_170;
          }

          if (v151 < v143)
          {
            goto LABEL_137;
          }

LABEL_130:
          if (v122 - 1 >= v118)
          {
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            v162 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            goto LABEL_144;
          }

          if (!*v189)
          {
            goto LABEL_180;
          }

          v155 = &v119[2 * v122 - 2];
          v156 = *v155;
          v7 = &v119[2 * v122];
          v157 = *(v7 + 8);
          specialized _merge<A>(low:mid:high:buffer:by:)(*v189 + *(v187 + 72) * *v155, *v189 + *(v187 + 72) * *v7, *v189 + *(v187 + 72) * v157, v205);
          if (v5)
          {
            goto LABEL_152;
          }

          if (v157 < v156)
          {
            goto LABEL_155;
          }

          v158 = v124[2];
          if (v122 > v158)
          {
            goto LABEL_156;
          }

          *v155 = v156;
          v155[1] = v157;
          if (v122 >= v158)
          {
            goto LABEL_157;
          }

          v118 = v158 - 1;
          specialized UnsafeMutablePointer.moveInitialize(from:count:)((v7 + 16), v158 - 1 - v122, &v119[2 * v122]);
          v40 = v124;
          v124[2] = v158 - 1;
          v159 = v158 > 2;
          v18 = v195;
          if (!v159)
          {
            goto LABEL_137;
          }
        }

        v130 = &v119[2 * v118];
        v131 = *(v130 - 8);
        v132 = *(v130 - 7);
        v136 = __OFSUB__(v132, v131);
        v133 = v132 - v131;
        if (v136)
        {
          goto LABEL_161;
        }

        v135 = *(v130 - 6);
        v134 = *(v130 - 5);
        v136 = __OFSUB__(v134, v135);
        v128 = v134 - v135;
        v129 = v136;
        if (v136)
        {
          goto LABEL_162;
        }

        v137 = v125[1];
        v138 = v137 - *v125;
        if (__OFSUB__(v137, *v125))
        {
          goto LABEL_164;
        }

        v136 = __OFADD__(v128, v138);
        v139 = v128 + v138;
        if (v136)
        {
          goto LABEL_167;
        }

        if (v139 >= v133)
        {
          v153 = *v123;
          v152 = v123[1];
          v136 = __OFSUB__(v152, v153);
          v154 = v152 - v153;
          if (v136)
          {
            goto LABEL_172;
          }

          if (v128 < v154)
          {
            v122 = v118 - 2;
          }

          goto LABEL_130;
        }

        goto LABEL_108;
      }

LABEL_137:
      v38 = v189[1];
      v39 = v186;
      v11 = v193;
      v28 = v200;
      v32 = v185;
      if (v186 >= v38)
      {
        goto LABEL_141;
      }
    }
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_141:
  v209 = *v176;
  if (!v209)
  {
    goto LABEL_184;
  }

  v7 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_175;
  }

  v162 = v7;
LABEL_144:
  v163 = v162 + 16;
  v164 = *(v162 + 2);
  while (v164 >= 2)
  {
    if (!*v189)
    {
      goto LABEL_181;
    }

    v7 = v162;
    v165 = &v162[16 * v164];
    v166 = *v165;
    v167 = &v163[2 * v164];
    v168 = *(v167 + 1);
    specialized _merge<A>(low:mid:high:buffer:by:)(*v189 + *(v187 + 72) * *v165, *v189 + *(v187 + 72) * *v167, *v189 + *(v187 + 72) * v168, v209);
    if (v5)
    {
      break;
    }

    if (v168 < v166)
    {
      goto LABEL_158;
    }

    if (v164 - 2 >= *v163)
    {
      goto LABEL_159;
    }

    *v165 = v166;
    *(v165 + 1) = v168;
    v169 = *v163 - v164;
    if (*v163 < v164)
    {
      goto LABEL_160;
    }

    v164 = *v163 - 1;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v167 + 16, v169, v167);
    *v163 = v164;
    v162 = v7;
  }

LABEL_152:
}

{
  v256 = a4;
  v257 = a1;
  v271 = type metadata accessor for PersonNameComponents();
  v296 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v276 = &v252 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v275 = &v252 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v274 = &v252 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v11);
  v294 = &v252 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v272 = &v252 - v14;
  v15 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v252 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v290 = &v252 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v267 = &v252 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v266 = &v252 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v288 = &v252 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v252 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v265 = &v252 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v270 = &v252 - v32;
  v33 = type metadata accessor for Participant(0);
  v268 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v261 = &v252 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v287 = &v252 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v303 = &v252 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v297 = &v252 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v283 = &v252 - v42;
  MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v44);
  v277 = &v252 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v254 = &v252 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v273 = a3;
  v52 = a3[1];
  if (v52 < 1)
  {
    v54 = MEMORY[0x1E69E7CC0];
LABEL_172:
    v55 = *v257;
    if (!*v257)
    {
      goto LABEL_214;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_174;
    }

    goto LABEL_208;
  }

  v253 = &v252 - v50;
  v53 = 0;
  v293 = (v7 + 32);
  v281 = (v7 + 8);
  v269 = (v296 + 8);
  v280 = v6;
  v292 = v11;
  v284 = v15;
  v289 = v17;
  v296 = v28;
  v54 = MEMORY[0x1E69E7CC0];
  v291 = v49;
  v282 = v51;
  v55 = v11;
  while (1)
  {
    v56 = v53++;
    v258 = v56;
    if (v53 >= v52)
    {
      v125 = v256;
      v64 = v290;
      goto LABEL_67;
    }

    v286 = v52;
    v255 = v54;
    v57 = *v273;
    v55 = *(v268 + 72);
    v279 = v53;
    v54 = v57 + v55 * v53;
    v58 = v253;
    _s15ConversationKit11ParticipantVWOcTm_6(v54, v253, type metadata accessor for Participant);
    v59 = v57 + v55 * v56;
    v60 = v254;
    _s15ConversationKit11ParticipantVWOcTm_6(v59, v254, type metadata accessor for Participant);
    v61 = v278;
    LODWORD(v285) = closure #2 in static ParticipantListViewController.filterAndSort(_:)(v58, v60);
    v278 = v61;
    if (v61)
    {
      _s15ConversationKit11ParticipantVWOhTm_16(v60, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_16(v58, type metadata accessor for Participant);
LABEL_182:

      return;
    }

    _s15ConversationKit11ParticipantVWOhTm_16(v60, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_16(v58, type metadata accessor for Participant);
    v62 = v258 + 2;
    v63 = v57 + v55 * (v258 + 2);
    v64 = v290;
    v53 = v279;
    v65 = v55;
    v295 = v55;
    v66 = v286;
    while (1)
    {
      v67 = v62;
      if (v53 + 1 >= v66)
      {
        break;
      }

      v279 = v53;
      v68 = v277;
      _s15ConversationKit11ParticipantVWOcTm_6(v63, v277, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v54, v282, type metadata accessor for Participant);
      v69 = v68;
      v70 = v266;
      _s15ConversationKit11ParticipantVWOcTm_6(v69, v266, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v72 = *(v71 + 48);
        outlined consume of Participant.CopresenceInfo?(*(v70 + *(v71 + 64)), *(v70 + *(v71 + 64) + 8));
        v73 = v270;
        (*v293)(v270, v70, v6);
        outlined destroy of Participant.MediaInfo(v70 + v72);
        v74 = 0;
        v75 = v267;
        v76 = v265;
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_16(v70, type metadata accessor for Participant.State);
        v74 = 1;
        v75 = v267;
        v76 = v265;
        v73 = v270;
      }

      __swift_storeEnumTagSinglePayload(v73, v74, 1, v6);
      _s15ConversationKit11ParticipantVWOcTm_6(v282, v75, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v78 = *(v77 + 48);
        outlined consume of Participant.CopresenceInfo?(*(v75 + *(v77 + 64)), *(v75 + *(v77 + 64) + 8));
        (*v293)(v76, v75, v6);
        v73 = v270;
        outlined destroy of Participant.MediaInfo(v75 + v78);
        v79 = 0;
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_16(v75, type metadata accessor for Participant.State);
        v79 = 1;
      }

      __swift_storeEnumTagSinglePayload(v76, v79, 1, v6);
      v80 = *(v292 + 48);
      v81 = v76;
      v82 = v272;
      outlined init with take of Date?(v73, v272);
      outlined init with take of Date?(v81, v82 + v80);
      LODWORD(v81) = __swift_getEnumTagSinglePayload(v82, 1, v6);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v82 + v80, 1, v6);
      if (v81 == 1)
      {
        v84 = v291;
        if (EnumTagSinglePayload == 1)
        {
          v85 = *(v277 + *(v291 + 28));
          v263 = v67;
          if (v85)
          {
            v86 = v85;
            v262 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v86);
            if (v87)
            {
              v88 = v87;
              if ([v86 shouldHideContact])
              {
                v264 = v88;
                v89 = v276;
                PersonNameComponents.init()();
                PersonNameComponents.givenName.setter();
                PersonNameComponents.familyName.setter();
                if (one-time initialization token for initials != -1)
                {
                  swift_once();
                }

                swift_beginAccess();
                v90 = static NSPersonNameComponentsFormatter.initials;
                isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
                v92 = [v90 stringFromPersonNameComponents_];

                v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v95 = v94;

                (*v269)(v89, v271);
                v300 = v93;
                v301 = v95;
                lazy protocol witness table accessor for type String and conformance String();
                StringProtocol.localizedUppercase.getter();

                v96 = v264;

                v97 = 0;
                v98 = v262;
LABEL_30:

                v298 = v98;
                v299 = v96;
                v264 = v96;
                v108 = v282;
                v109 = *(v282 + *(v84 + 28));
                v17 = v289;
                if (v109)
                {
                  v110 = v109;
                  v111 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v110);
                  if (v112)
                  {
                    v113 = v111;
                    v114 = v112;
                    if ([v110 shouldHideContact])
                    {
                      v260 = v113;
                      v115 = v276;
                      PersonNameComponents.init()();
                      PersonNameComponents.givenName.setter();
                      PersonNameComponents.familyName.setter();
                      if (one-time initialization token for initials != -1)
                      {
                        swift_once();
                      }

                      swift_beginAccess();
                      v116 = static NSPersonNameComponentsFormatter.initials;
                      v117 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
                      v118 = [v116 stringFromPersonNameComponents_];

                      v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v121 = v120;

                      (*v269)(v115, v271);
                      v300 = v119;
                      v301 = v121;
                      lazy protocol witness table accessor for type String and conformance String();
                      StringProtocol.localizedUppercase.getter();

                      v262 = 0;
                      v17 = v289;
                      v99 = v279;
                      v122 = v260;
                      goto LABEL_40;
                    }
                  }

                  else
                  {
                  }

                  v108 = v282;
                }

                v123 = v283;
                _s15ConversationKit11ParticipantVWOcTm_6(v108, v283, type metadata accessor for Participant);

                ParticipantContactDetailsCache.contactDetails(for:)();

                _s15ConversationKit11ParticipantVWOhTm_16(v123, type metadata accessor for Participant);
                v122 = v301;
                v262 = v300;
                v114 = v302;
                v99 = v279;
LABEL_40:

                v300 = v122;
                v301 = v114;
                lazy protocol witness table accessor for type String and conformance String();
                v124 = StringProtocol.localizedCompare<A>(_:)();

                v55 = v124 == 1;
                v6 = v280;
                v106 = v282;
                v67 = v263;
                goto LABEL_41;
              }
            }

            else
            {
            }
          }

          v107 = v283;
          _s15ConversationKit11ParticipantVWOcTm_6(v277, v283, type metadata accessor for Participant);

          ParticipantContactDetailsCache.contactDetails(for:)();

          _s15ConversationKit11ParticipantVWOhTm_16(v107, type metadata accessor for Participant);
          v97 = v300;
          v98 = v301;
          v96 = v302;
          goto LABEL_30;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v272 + v80, &_s10Foundation4DateVSgMd);
        v55 = 0;
        v17 = v289;
        v99 = v279;
      }

      else
      {
        v99 = v279;
        if (EnumTagSinglePayload == 1)
        {
          (*v281)(v272, v6);
          v55 = 1;
        }

        else
        {
          v264 = v63;
          v100 = *v293;
          v101 = v274;
          v102 = v272;
          (*v293)(v274, v272, v6);
          v103 = v102 + v80;
          v104 = v275;
          v100(v275, v103, v6);
          v55 = static Date.< infix(_:_:)();
          v105 = *v281;
          (*v281)(v104, v6);
          v105(v101, v6);
          v63 = v264;
        }

        v17 = v289;
      }

      v106 = v282;
LABEL_41:
      _s15ConversationKit11ParticipantVWOhTm_16(v106, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_16(v277, type metadata accessor for Participant);
      v65 = v295;
      v63 += v295;
      v54 += v295;
      v53 = v99 + 1;
      v62 = v67 + 1;
      v64 = v290;
      v66 = v286;
      if ((v285 ^ v55))
      {
        goto LABEL_45;
      }
    }

    v53 = v66;
LABEL_45:
    if ((v285 & 1) == 0)
    {
      v125 = v256;
      v55 = v292;
      v54 = v255;
      v56 = v258;
      v51 = v282;
      goto LABEL_67;
    }

    v56 = v258;
    v125 = v256;
    if (v53 < v258)
    {
      goto LABEL_207;
    }

    v51 = v282;
    if (v258 >= v53)
    {
      v55 = v292;
      v54 = v255;
    }

    else
    {
      v126 = v66 >= v67 ? v67 : v66;
      v127 = v65 * (v126 - 1);
      v128 = v65 * v126;
      v129 = v258;
      v130 = v258 * v65;
      v131 = v53;
      v55 = v292;
      do
      {
        if (v129 != --v131)
        {
          v132 = v53;
          v133 = *v273;
          if (!*v273)
          {
            goto LABEL_212;
          }

          outlined init with take of Participant(v133 + v130, v261);
          v134 = v130 < v127 || v133 + v130 >= v133 + v128;
          if (v134)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v130 != v127)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          outlined init with take of Participant(v261, v133 + v127);
          v55 = v292;
          v53 = v132;
          v65 = v295;
          v51 = v282;
        }

        ++v129;
        v127 -= v65;
        v128 -= v65;
        v130 += v65;
      }

      while (v129 < v131);
      v125 = v256;
      v6 = v280;
      v17 = v289;
      v64 = v290;
      v54 = v255;
      v56 = v258;
    }

LABEL_67:
    v135 = v273[1];
    if (v53 < v135)
    {
      if (__OFSUB__(v53, v56))
      {
        goto LABEL_204;
      }

      if (v53 - v56 < v125)
      {
        break;
      }
    }

LABEL_116:
    if (v53 < v56)
    {
      goto LABEL_203;
    }

    v197 = v51;
    v198 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v54 = v242;
    }

    v199 = *(v54 + 16);
    v200 = v199 + 1;
    if (v199 >= *(v54 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v51 = v197;
      v54 = v243;
    }

    else
    {
      v51 = v197;
    }

    *(v54 + 16) = v200;
    v201 = v54 + 32;
    v202 = (v54 + 32 + 16 * v199);
    *v202 = v258;
    v202[1] = v53;
    v295 = *v257;
    if (!v295)
    {
      goto LABEL_213;
    }

    if (v199)
    {
      v55 = v198;
      while (1)
      {
        v203 = v200 - 1;
        v204 = (v201 + 16 * (v200 - 1));
        v205 = (v54 + 16 * v200);
        if (v200 >= 4)
        {
          break;
        }

        if (v200 == 3)
        {
          v206 = *(v54 + 32);
          v207 = *(v54 + 40);
          v216 = __OFSUB__(v207, v206);
          v208 = v207 - v206;
          v209 = v216;
LABEL_137:
          if (v209)
          {
            goto LABEL_190;
          }

          v221 = *v205;
          v220 = v205[1];
          v222 = __OFSUB__(v220, v221);
          v223 = v220 - v221;
          v224 = v222;
          if (v222)
          {
            goto LABEL_193;
          }

          v225 = v204[1];
          v226 = v225 - *v204;
          if (__OFSUB__(v225, *v204))
          {
            goto LABEL_196;
          }

          if (__OFADD__(v223, v226))
          {
            goto LABEL_198;
          }

          if (v223 + v226 >= v208)
          {
            if (v208 < v226)
            {
              v203 = v200 - 2;
            }

            goto LABEL_159;
          }

          goto LABEL_152;
        }

        if (v200 < 2)
        {
          goto LABEL_192;
        }

        v228 = *v205;
        v227 = v205[1];
        v216 = __OFSUB__(v227, v228);
        v223 = v227 - v228;
        v224 = v216;
LABEL_152:
        if (v224)
        {
          goto LABEL_195;
        }

        v230 = *v204;
        v229 = v204[1];
        v216 = __OFSUB__(v229, v230);
        v231 = v229 - v230;
        if (v216)
        {
          goto LABEL_197;
        }

        if (v231 < v223)
        {
          goto LABEL_168;
        }

LABEL_159:
        if (v203 - 1 >= v200)
        {
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
          goto LABEL_206;
        }

        if (!*v273)
        {
          goto LABEL_210;
        }

        v235 = v54;
        v236 = (v201 + 16 * (v203 - 1));
        v237 = *v236;
        v55 = v201 + 16 * v203;
        v54 = *(v55 + 8);
        v238 = v278;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v273 + *(v268 + 72) * *v236, *v273 + *(v268 + 72) * *v55, *v273 + *(v268 + 72) * v54, v295);
        v278 = v238;
        if (v238)
        {
          goto LABEL_182;
        }

        if (v54 < v237)
        {
          goto LABEL_185;
        }

        v239 = v53;
        v240 = *(v235 + 16);
        if (v203 > v240)
        {
          goto LABEL_186;
        }

        *v236 = v237;
        v236[1] = v54;
        if (v203 >= v240)
        {
          goto LABEL_187;
        }

        v200 = v240 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v55 + 16), v240 - 1 - v203, (v201 + 16 * v203));
        v54 = v235;
        *(v235 + 16) = v240 - 1;
        v241 = v240 > 2;
        v55 = v292;
        v51 = v282;
        v53 = v239;
        if (!v241)
        {
          goto LABEL_168;
        }
      }

      v210 = v201 + 16 * v200;
      v211 = *(v210 - 64);
      v212 = *(v210 - 56);
      v216 = __OFSUB__(v212, v211);
      v213 = v212 - v211;
      if (v216)
      {
        goto LABEL_188;
      }

      v215 = *(v210 - 48);
      v214 = *(v210 - 40);
      v216 = __OFSUB__(v214, v215);
      v208 = v214 - v215;
      v209 = v216;
      if (v216)
      {
        goto LABEL_189;
      }

      v217 = v205[1];
      v218 = v217 - *v205;
      if (__OFSUB__(v217, *v205))
      {
        goto LABEL_191;
      }

      v216 = __OFADD__(v208, v218);
      v219 = v208 + v218;
      if (v216)
      {
        goto LABEL_194;
      }

      if (v219 >= v213)
      {
        v233 = *v204;
        v232 = v204[1];
        v216 = __OFSUB__(v232, v233);
        v234 = v232 - v233;
        if (v216)
        {
          goto LABEL_202;
        }

        if (v208 < v234)
        {
          v203 = v200 - 2;
        }

        goto LABEL_159;
      }

      goto LABEL_137;
    }

    v55 = v198;
LABEL_168:
    v52 = v273[1];
    v6 = v280;
    v17 = v289;
    if (v53 >= v52)
    {
      goto LABEL_172;
    }
  }

  v136 = (v56 + v125);
  if (__OFADD__(v56, v125))
  {
    goto LABEL_205;
  }

  if (v136 >= v135)
  {
    v136 = v273[1];
  }

  if (v136 < v56)
  {
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    v54 = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
LABEL_174:
    v244 = (v54 + 16);
    v245 = *(v54 + 16);
    while (v245 >= 2)
    {
      if (!*v273)
      {
        goto LABEL_211;
      }

      v246 = v54;
      v247 = (v54 + 16 * v245);
      v54 = *v247;
      v248 = &v244[2 * v245];
      v249 = *(v248 + 1);
      v250 = v278;
      specialized _merge<A>(low:mid:high:buffer:by:)(*v273 + *(v268 + 72) * *v247, *v273 + *(v268 + 72) * *v248, *v273 + *(v268 + 72) * v249, v55);
      v278 = v250;
      if (v250)
      {
        break;
      }

      if (v249 < v54)
      {
        goto LABEL_199;
      }

      if (v245 - 2 >= *v244)
      {
        goto LABEL_200;
      }

      *v247 = v54;
      v247[1] = v249;
      v251 = *v244 - v245;
      if (*v244 < v245)
      {
        goto LABEL_201;
      }

      v245 = *v244 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v248 + 16, v251, v248);
      *v244 = v245;
      v54 = v246;
    }

    goto LABEL_182;
  }

  if (v53 == v136)
  {
    goto LABEL_116;
  }

  v255 = v54;
  v137 = *v273;
  v138 = *(v268 + 72);
  v139 = *v273 + v138 * (v53 - 1);
  v285 = -v138;
  v140 = v56 - v53;
  v286 = v137;
  v259 = v138;
  v141 = (v137 + v53 * v138);
  v260 = v136;
  while (2)
  {
    v279 = v53;
    v262 = v141;
    v263 = v140;
    v264 = v139;
    v142 = v139;
LABEL_77:
    v295 = v140;
    v143 = v297;
    _s15ConversationKit11ParticipantVWOcTm_6(v141, v297, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOcTm_6(v142, v303, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOcTm_6(v143, v64, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v145 = *(v144 + 48);
      outlined consume of Participant.CopresenceInfo?(*(v64 + *(v144 + 64)), *(v64 + *(v144 + 64) + 8));
      v146 = v296;
      (*v293)(v296, v64, v6);
      outlined destroy of Participant.MediaInfo(v64 + v145);
      v147 = 0;
    }

    else
    {
      _s15ConversationKit11ParticipantVWOhTm_16(v64, type metadata accessor for Participant.State);
      v147 = 1;
      v146 = v296;
    }

    __swift_storeEnumTagSinglePayload(v146, v147, 1, v6);
    _s15ConversationKit11ParticipantVWOcTm_6(v303, v17, type metadata accessor for Participant.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v149 = v288;
    if (EnumCaseMultiPayload == 4)
    {
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v151 = *(v150 + 48);
      outlined consume of Participant.CopresenceInfo?(*&v17[*(v150 + 64)], *&v17[*(v150 + 64) + 8]);
      (*v293)(v149, v17, v6);
      outlined destroy of Participant.MediaInfo(&v17[v151]);
      v152 = 0;
    }

    else
    {
      _s15ConversationKit11ParticipantVWOhTm_16(v17, type metadata accessor for Participant.State);
      v152 = 1;
    }

    v153 = v291;
    __swift_storeEnumTagSinglePayload(v149, v152, 1, v6);
    v154 = v149;
    v155 = *(v292 + 48);
    v156 = v294;
    outlined init with take of Date?(v296, v294);
    outlined init with take of Date?(v154, v156 + v155);
    LODWORD(v154) = __swift_getEnumTagSinglePayload(v156, 1, v6);
    v157 = __swift_getEnumTagSinglePayload(v156 + v155, 1, v6);
    if (v154 == 1)
    {
      if (v157 != 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v294 + v155, &_s10Foundation4DateVSgMd);
        _s15ConversationKit11ParticipantVWOhTm_16(v303, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_16(v297, type metadata accessor for Participant);
        v17 = v289;
LABEL_113:
        v64 = v290;
LABEL_114:
        v53 = v279 + 1;
        v139 = v264 + v259;
        v140 = v263 - 1;
        v141 = &v262[v259];
        if ((v279 + 1) == v260)
        {
          v53 = v260;
          v54 = v255;
          v51 = v282;
          v56 = v258;
          v55 = v292;
          goto LABEL_116;
        }

        continue;
      }

      v158 = *(v297 + *(v153 + 28));
      if (v158)
      {
        v159 = v158;
        v160 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v159);
        if (v161)
        {
          v162 = v160;
          v163 = v161;
          if ([v159 shouldHideContact])
          {
            v164 = v276;
            PersonNameComponents.init()();
            PersonNameComponents.givenName.setter();
            PersonNameComponents.familyName.setter();
            if (one-time initialization token for initials != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v165 = static NSPersonNameComponentsFormatter.initials;
            v166 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
            v167 = [v165 stringFromPersonNameComponents_];

            v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v170 = v169;

            (*v269)(v164, v271);
            v300 = v168;
            v301 = v170;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol.localizedUppercase.getter();

            v171 = 0;
            v153 = v291;
LABEL_97:

            v298 = v162;
            v299 = v163;
            v180 = *(v303 + *(v153 + 28));
            if (v180)
            {
              v181 = v180;
              v182 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v181);
              if (v183)
              {
                v184 = v182;
                v185 = v183;
                if ([v181 shouldHideContact])
                {
                  PersonNameComponents.init()();
                  PersonNameComponents.givenName.setter();
                  PersonNameComponents.familyName.setter();
                  if (one-time initialization token for initials != -1)
                  {
                    swift_once();
                  }

                  swift_beginAccess();
                  v186 = static NSPersonNameComponentsFormatter.initials;
                  v187 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
                  v188 = [v186 stringFromPersonNameComponents_];

                  v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v191 = v190;

                  (*v269)(v276, v271);
                  v300 = v189;
                  v301 = v191;
                  lazy protocol witness table accessor for type String and conformance String();
                  StringProtocol.localizedUppercase.getter();

                  v192 = 0;
LABEL_106:

                  v300 = v184;
                  v301 = v185;
                  lazy protocol witness table accessor for type String and conformance String();
                  v194 = StringProtocol.localizedCompare<A>(_:)();

                  v177 = v194 == 1;
                  v6 = v280;
LABEL_107:
                  _s15ConversationKit11ParticipantVWOhTm_16(v303, type metadata accessor for Participant);
                  _s15ConversationKit11ParticipantVWOhTm_16(v297, type metadata accessor for Participant);
                  v17 = v289;
                  if ((v177 & 1) == 0)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_108;
                }
              }

              else
              {
              }
            }

            v193 = v283;
            _s15ConversationKit11ParticipantVWOcTm_6(v303, v283, type metadata accessor for Participant);

            ParticipantContactDetailsCache.contactDetails(for:)();

            _s15ConversationKit11ParticipantVWOhTm_16(v193, type metadata accessor for Participant);
            v192 = v300;
            v184 = v301;
            v185 = v302;
            goto LABEL_106;
          }
        }

        else
        {
        }
      }

      v179 = v283;
      _s15ConversationKit11ParticipantVWOcTm_6(v297, v283, type metadata accessor for Participant);

      ParticipantContactDetailsCache.contactDetails(for:)();

      _s15ConversationKit11ParticipantVWOhTm_16(v179, type metadata accessor for Participant);
      v171 = v300;
      v162 = v301;
      v163 = v302;
      goto LABEL_97;
    }

    break;
  }

  if (v157 != 1)
  {
    v172 = *v293;
    v173 = v274;
    v174 = v294;
    (*v293)(v274, v294, v6);
    v175 = v174 + v155;
    v176 = v275;
    v172(v275, v175, v6);
    v177 = static Date.< infix(_:_:)();
    v178 = *v281;
    (*v281)(v176, v6);
    v178(v173, v6);
    goto LABEL_107;
  }

  (*v281)(v294, v6);
  _s15ConversationKit11ParticipantVWOhTm_16(v303, type metadata accessor for Participant);
  _s15ConversationKit11ParticipantVWOhTm_16(v297, type metadata accessor for Participant);
  v17 = v289;
LABEL_108:
  v64 = v290;
  v195 = v295;
  if (v286)
  {
    v196 = v287;
    outlined init with take of Participant(v141, v287);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of Participant(v196, v142);
    v142 += v285;
    v141 += v285;
    v134 = __CFADD__(v195, 1);
    v140 = v195 + 1;
    if (v134)
    {
      goto LABEL_114;
    }

    goto LABEL_77;
  }

  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
}

{
  v5 = v4;
  v172 = a1;
  v8 = type metadata accessor for Participant.State(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v202 = &v166 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v166 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v182 = &v166 - v17;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v194 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v193 = &v166 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v198 = &v166 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v197 = &v166 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v174 = &v166 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v173 = &v166 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v177 = &v166 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v181 = &v166 - v34;
  v195 = type metadata accessor for Participant(0);
  v186 = *(v195 - 8);
  v35 = MEMORY[0x1EEE9AC00](v195);
  v178 = &v166 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v192 = &v166 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v207 = &v166 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v205 = &v166 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v183 = &v166 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v188 = &v166 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v168 = &v166 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v166 - v49;
  v187 = a3;
  v51 = a3[1];
  if (v51 < 1)
  {
    v53 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v207 = *v172;
    if (!v207)
    {
      goto LABEL_157;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_151;
  }

  v196 = v11;
  v167 = a4;
  v52 = 0;
  v200 = (v19 + 8);
  v201 = (v19 + 32);
  v53 = MEMORY[0x1E69E7CC0];
  v206 = v8;
  v185 = v16;
  v203 = v18;
  v54 = v202;
  v169 = &v166 - v49;
  while (1)
  {
    v55 = v52;
    v56 = v52 + 1;
    if (v52 + 1 < v51)
    {
      v184 = v51;
      v57 = *v187;
      v58 = *(v186 + 72);
      v189 = v5;
      v199 = v52 + 1;
      v59 = v57 + v58 * v56;
      _s15ConversationKit11ParticipantVWOcTm_17(v59, v50);
      v60 = v168;
      _s15ConversationKit11ParticipantVWOcTm_17(v57 + v58 * v55, v168);
      v61 = v189;
      LODWORD(v190) = closure #2 in ConversationController.remoteOneToOneParticipant.getter(v50, v60);
      v189 = v61;
      if (v61)
      {
        _s15ConversationKit11ParticipantVWOhTm_18(v60, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_18(v50, type metadata accessor for Participant);
LABEL_126:

        return;
      }

      v170 = v53;
      _s15ConversationKit11ParticipantVWOhTm_18(v60, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_18(v50, type metadata accessor for Participant);
      v171 = v55;
      v62 = v55 + 2;
      v53 = (v57 + v58 * (v55 + 2));
      v63 = v183;
      v56 = v199;
      v191 = v58;
      v64 = v184;
      while (1)
      {
        v65 = v62;
        if (v56 + 1 >= v64)
        {
          break;
        }

        v204 = v62;
        v199 = v56;
        v66 = v188;
        _s15ConversationKit11ParticipantVWOcTm_17(v53, v188);
        _s15ConversationKit11ParticipantVWOcTm_17(v59, v63);
        v67 = v66;
        v68 = v182;
        _s15ConversationKit11ParticipantVWOcTm_17(v67, v182);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v180 = *(v69 + 48);
          outlined consume of Participant.CopresenceInfo?(*(v68 + *(v69 + 64)), *(v68 + *(v69 + 64) + 8));
          v70 = *v201;
          v71 = v177;
          (*v201)(v177, v68, v203);
          v72 = v68 + v180;
          v73 = v203;
          v74 = v185;
          outlined destroy of Participant.MediaInfo(v72);
          v70(v181, v71, v73);
          _s15ConversationKit11ParticipantVWOcTm_17(v183, v74);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v75 = *(v69 + 48);
            outlined consume of Participant.CopresenceInfo?(*&v185[*(v69 + 64)], *&v185[*(v69 + 64) + 8]);
            v76 = v174;
            v70(v174, v185, v203);
            v77 = v203;
            outlined destroy of Participant.MediaInfo(&v185[v75]);
            v78 = v173;
            v70(v173, v76, v77);
            v79 = v181;
            v80 = static Date.< infix(_:_:)();
            v81 = *v200;
            (*v200)(v78, v77);
            v81(v79, v77);
          }

          else
          {
            _s15ConversationKit11ParticipantVWOhTm_18(v74, type metadata accessor for Participant.State);
            (*v200)(v181, v73);
            v80 = 0;
          }

          v54 = v202;
          v63 = v183;
        }

        else
        {
          _s15ConversationKit11ParticipantVWOhTm_18(v68, type metadata accessor for Participant.State);
          v80 = 0;
        }

        _s15ConversationKit11ParticipantVWOhTm_18(v63, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_18(v188, type metadata accessor for Participant);
        v58 = v191;
        v53 += v191;
        v59 += v191;
        v56 = v199 + 1;
        v65 = v204;
        v62 = v204 + 1;
        v64 = v184;
        if ((v190 & 1) != (v80 & 1))
        {
          goto LABEL_16;
        }
      }

      v56 = v64;
LABEL_16:
      if (v190)
      {
        v55 = v171;
        v5 = v189;
        if (v56 < v171)
        {
          goto LABEL_150;
        }

        if (v171 >= v56)
        {
          v53 = v170;
          goto LABEL_39;
        }

        if (v64 >= v65)
        {
          v82 = v65;
        }

        else
        {
          v82 = v64;
        }

        v83 = v171;
        v84 = v58 * (v82 - 1);
        v85 = v58 * v82;
        v86 = v171 * v58;
        v87 = v56;
        do
        {
          if (v83 != --v87)
          {
            v88 = *v187;
            if (!*v187)
            {
              goto LABEL_155;
            }

            v89 = v56;
            _s15ConversationKit11ParticipantVWObTm_8(v88 + v86, v178);
            v90 = v86 < v84 || v88 + v86 >= (v88 + v85);
            if (v90)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v86 != v84)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            _s15ConversationKit11ParticipantVWObTm_8(v178, v88 + v84);
            v56 = v89;
            v58 = v191;
          }

          ++v83;
          v84 -= v58;
          v85 -= v58;
          v86 += v58;
        }

        while (v83 < v87);
        v5 = v189;
        v53 = v170;
        v54 = v202;
      }

      else
      {
        v5 = v189;
        v53 = v170;
      }

      v55 = v171;
    }

LABEL_39:
    v91 = v187[1];
    if (v56 < v91)
    {
      if (__OFSUB__(v56, v55))
      {
        goto LABEL_147;
      }

      if (v56 - v55 < v167)
      {
        break;
      }
    }

LABEL_62:
    if (v56 < v55)
    {
      goto LABEL_146;
    }

    v199 = v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v189 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v53 = v156;
    }

    v114 = *(v53 + 2);
    v5 = v114 + 1;
    v52 = v199;
    if (v114 >= *(v53 + 3) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v52 = v199;
      v53 = v157;
    }

    *(v53 + 2) = v5;
    v115 = v53 + 32;
    v116 = &v53[16 * v114 + 32];
    *v116 = v55;
    *(v116 + 1) = v52;
    v204 = *v172;
    if (!v204)
    {
      goto LABEL_156;
    }

    if (v114)
    {
      while (1)
      {
        v117 = v5 - 1;
        v118 = &v115[16 * v5 - 16];
        v119 = &v53[16 * v5];
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v120 = *(v53 + 4);
          v121 = *(v53 + 5);
          v130 = __OFSUB__(v121, v120);
          v122 = v121 - v120;
          v123 = v130;
LABEL_82:
          if (v123)
          {
            goto LABEL_133;
          }

          v135 = *v119;
          v134 = *(v119 + 1);
          v136 = __OFSUB__(v134, v135);
          v137 = v134 - v135;
          v138 = v136;
          if (v136)
          {
            goto LABEL_136;
          }

          v139 = *(v118 + 1);
          v140 = v139 - *v118;
          if (__OFSUB__(v139, *v118))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v137, v140))
          {
            goto LABEL_141;
          }

          if (v137 + v140 >= v122)
          {
            if (v122 < v140)
            {
              v117 = v5 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v5 < 2)
        {
          goto LABEL_135;
        }

        v142 = *v119;
        v141 = *(v119 + 1);
        v130 = __OFSUB__(v141, v142);
        v137 = v141 - v142;
        v138 = v130;
LABEL_97:
        if (v138)
        {
          goto LABEL_138;
        }

        v144 = *v118;
        v143 = *(v118 + 1);
        v130 = __OFSUB__(v143, v144);
        v145 = v143 - v144;
        if (v130)
        {
          goto LABEL_140;
        }

        if (v145 < v137)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v117 - 1 >= v5)
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v187)
        {
          goto LABEL_153;
        }

        v149 = v54;
        v150 = &v115[16 * v117 - 16];
        v151 = *v150;
        v152 = &v115[16 * v117];
        v5 = *(v152 + 1);
        v153 = v189;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v187 + *(v186 + 72) * *v150, (*v187 + *(v186 + 72) * *v152), *v187 + *(v186 + 72) * v5, v204);
        v189 = v153;
        if (v153)
        {
          goto LABEL_126;
        }

        if (v5 < v151)
        {
          goto LABEL_128;
        }

        v154 = v53;
        v53 = *(v53 + 2);
        if (v117 > v53)
        {
          goto LABEL_129;
        }

        *v150 = v151;
        v150[1] = v5;
        if (v117 >= v53)
        {
          goto LABEL_130;
        }

        v5 = (v53 - 1);
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v152 + 16, &v53[-v117 - 1], &v115[16 * v117]);
        *(v154 + 2) = v53 - 1;
        v155 = v53 > 2;
        v53 = v154;
        v54 = v149;
        v52 = v199;
        if (!v155)
        {
          goto LABEL_111;
        }
      }

      v124 = &v115[16 * v5];
      v125 = *(v124 - 8);
      v126 = *(v124 - 7);
      v130 = __OFSUB__(v126, v125);
      v127 = v126 - v125;
      if (v130)
      {
        goto LABEL_131;
      }

      v129 = *(v124 - 6);
      v128 = *(v124 - 5);
      v130 = __OFSUB__(v128, v129);
      v122 = v128 - v129;
      v123 = v130;
      if (v130)
      {
        goto LABEL_132;
      }

      v131 = *(v119 + 1);
      v132 = v131 - *v119;
      if (__OFSUB__(v131, *v119))
      {
        goto LABEL_134;
      }

      v130 = __OFADD__(v122, v132);
      v133 = v122 + v132;
      if (v130)
      {
        goto LABEL_137;
      }

      if (v133 >= v127)
      {
        v147 = *v118;
        v146 = *(v118 + 1);
        v130 = __OFSUB__(v146, v147);
        v148 = v146 - v147;
        if (v130)
        {
          goto LABEL_145;
        }

        if (v122 < v148)
        {
          v117 = v5 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v51 = v187[1];
    v5 = v189;
    v50 = v169;
    if (v52 >= v51)
    {
      goto LABEL_114;
    }
  }

  v92 = v55 + v167;
  if (__OFADD__(v55, v167))
  {
    goto LABEL_148;
  }

  if (v92 >= v91)
  {
    v92 = v187[1];
  }

  if (v92 < v55)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v53 = specialized _ArrayBuffer._consumeAndCreateNew()(v53);
LABEL_116:
    v158 = v53;
    v159 = (v53 + 16);
    for (i = *(v53 + 2); ; *v159 = i)
    {
      v53 = (i - 2);
      if (i < 2)
      {
        break;
      }

      if (!*v187)
      {
        goto LABEL_154;
      }

      v161 = &v158[16 * i];
      v162 = *v161;
      v163 = &v159[2 * i];
      v164 = *(v163 + 1);
      specialized _merge<A>(low:mid:high:buffer:by:)(*v187 + *(v186 + 72) * *v161, (*v187 + *(v186 + 72) * *v163), *v187 + *(v186 + 72) * v164, v207);
      if (v5)
      {
        break;
      }

      if (v164 < v162)
      {
        goto LABEL_142;
      }

      if (v53 >= *v159)
      {
        goto LABEL_143;
      }

      *v161 = v162;
      *(v161 + 1) = v164;
      v165 = *v159 - i;
      if (*v159 < i)
      {
        goto LABEL_144;
      }

      i = *v159 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v163 + 16, v165, v163);
    }

    goto LABEL_126;
  }

  if (v56 == v92)
  {
    goto LABEL_62;
  }

  v170 = v53;
  v189 = v5;
  v93 = *v187;
  v94 = *(v186 + 72);
  v95 = *v187 + v94 * (v56 - 1);
  v190 = -v94;
  v171 = v55;
  v96 = v55 - v56;
  v191 = v93;
  v175 = v94;
  v97 = v93 + v56 * v94;
  v176 = v92;
LABEL_48:
  v199 = v56;
  v179 = v97;
  v180 = v96;
  v98 = v96;
  v184 = v95;
  while (1)
  {
    v99 = v205;
    _s15ConversationKit11ParticipantVWOcTm_17(v97, v205);
    _s15ConversationKit11ParticipantVWOcTm_17(v95, v207);
    _s15ConversationKit11ParticipantVWOcTm_17(v99, v54);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantVWOhTm_18(v54, type metadata accessor for Participant.State);
LABEL_58:
      _s15ConversationKit11ParticipantVWOhTm_18(v207, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_18(v205, type metadata accessor for Participant);
      goto LABEL_60;
    }

    v204 = v98;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v101 = *(v100 + 48);
    outlined consume of Participant.CopresenceInfo?(*(v54 + *(v100 + 64)), *(v54 + *(v100 + 64) + 8));
    v102 = *v201;
    v103 = v198;
    v104 = v203;
    (*v201)(v198, v54, v203);
    outlined destroy of Participant.MediaInfo(v54 + v101);
    v105 = v197;
    v102(v197, v103, v104);
    v106 = v196;
    _s15ConversationKit11ParticipantVWOcTm_17(v207, v196);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantVWOhTm_18(v106, type metadata accessor for Participant.State);
      (*v200)(v105, v104);
      v54 = v202;
      goto LABEL_58;
    }

    v107 = *(v100 + 48);
    outlined consume of Participant.CopresenceInfo?(*(v106 + *(v100 + 64)), *(v106 + *(v100 + 64) + 8));
    v108 = v194;
    v102(v194, v106, v104);
    outlined destroy of Participant.MediaInfo(v106 + v107);
    v109 = v193;
    v102(v193, v108, v104);
    LOBYTE(v108) = static Date.< infix(_:_:)();
    v110 = *v200;
    (*v200)(v109, v104);
    v110(v105, v104);
    _s15ConversationKit11ParticipantVWOhTm_18(v207, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_18(v205, type metadata accessor for Participant);
    if ((v108 & 1) == 0)
    {
      v54 = v202;
LABEL_60:
      v56 = v199 + 1;
      v95 = v184 + v175;
      v96 = v180 - 1;
      v97 = v179 + v175;
      if (v199 + 1 == v176)
      {
        v56 = v176;
        v5 = v189;
        v53 = v170;
        v55 = v171;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    v54 = v202;
    v111 = v204;
    if (!v191)
    {
      break;
    }

    v112 = v192;
    _s15ConversationKit11ParticipantVWObTm_8(v97, v192);
    swift_arrayInitWithTakeFrontToBack();
    _s15ConversationKit11ParticipantVWObTm_8(v112, v95);
    v95 += v190;
    v97 += v190;
    v90 = __CFADD__(v111, 1);
    v98 = v111 + 1;
    if (v90)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v172 = a1;
  v202 = type metadata accessor for Participant.State(0);
  v6 = MEMORY[0x1EEE9AC00](v202);
  v8 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v198 = &v168 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v168 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v168 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v168 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v183 = &v168 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v168 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v182 = &v168 - v25;
  v197 = type metadata accessor for Participant(0);
  v185 = *(v197 - 8);
  v26 = MEMORY[0x1EEE9AC00](v197);
  v178 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v196 = &v168 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v206 = &v168 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v201 = &v168 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v192 = &v168 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v190 = &v168 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  MEMORY[0x1EEE9AC00](v38);
  v186 = a3;
  v41 = a3[1];
  if (v41 < 1)
  {
    v43 = MEMORY[0x1E69E7CC0];
LABEL_140:
    v206 = *v172;
    if (!v206)
    {
      goto LABEL_182;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_142;
    }

    goto LABEL_176;
  }

  v169 = &v168 - v39;
  v170 = v40;
  v173 = v24;
  v42 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v171 = a4;
  v188 = v13;
  v189 = v8;
  v199 = v16;
  v174 = v19;
  while (1)
  {
    v44 = v42 + 1;
    v179 = v43;
    v175 = v42;
    if (v42 + 1 >= v41)
    {
      goto LABEL_51;
    }

    v187 = v41;
    v45 = *v186;
    v46 = *(v185 + 72);
    v193 = v42 + 1;
    v47 = v42;
    v48 = v45 + v46 * v44;
    _s15ConversationKit11ParticipantVWOcTm_6(v48, v169, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOcTm_6(v45 + v46 * v47, v170, type metadata accessor for Participant);
    v49 = v191;
    LODWORD(v184) = closure #2 in Array<A>.screenSharingParticipant.getter();
    v191 = v49;
    if (v49)
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
LABEL_150:

      return;
    }

    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    v50 = v47 + 2;
    v51 = v45 + v46 * (v47 + 2);
    v44 = v193;
    v43 = v179;
    v194 = v46;
    v52 = v187;
    while (1)
    {
      v53 = v50;
      if (v44 + 1 >= v52)
      {
        break;
      }

      v200 = v50;
      v193 = v44;
      v54 = v190;
      _s15ConversationKit11ParticipantVWOcTm_6(v51, v190, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v48, v192, type metadata accessor for Participant);
      v55 = v182;
      _s15ConversationKit11ParticipantVWOcTm_6(v54, v182, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v205, 0, 24);
        v205[3] = 1;
        bzero(&v205[4], 0xB1uLL);
LABEL_13:
        outlined destroy of Participant.ScreenInfo?(v205);
        LODWORD(v195) = 0;
        v63 = v183;
        goto LABEL_14;
      }

      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v57 = *(v56 + 48);
      outlined consume of Participant.CopresenceInfo?(*(v55 + *(v56 + 64)), *(v55 + *(v56 + 64) + 8));
      memcpy(v204, (v55 + v57), sizeof(v204));
      v58 = type metadata accessor for Date();
      v59 = *(*(v58 - 8) + 8);
      v59(v55, v58);
      outlined init with copy of Participant.ScreenInfo?(&v204[96], v205);
      outlined destroy of Participant.MediaInfo(v204);
      if (v205[3] == 1)
      {
        goto LABEL_13;
      }

      outlined destroy of Participant.ScreenInfo?(v205);
      v60 = v173;
      _s15ConversationKit11ParticipantVWOcTm_6(v190, v173, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v61 = *(v56 + 48);
        outlined consume of Participant.CopresenceInfo?(*(v60 + *(v56 + 64)), *(v60 + *(v56 + 64) + 8));
        v62 = (v60 + v61);
        v43 = v179;
        memcpy(v204, v62, sizeof(v204));
        v59(v60, v58);
        outlined init with copy of Participant.ScreenInfo?(&v204[96], v203);
        outlined destroy of Participant.MediaInfo(v204);
        v63 = v183;
        if (v203[3] != 1)
        {
          memcpy(v205, v203, 0xD1uLL);
          LODWORD(v195) = LOBYTE(v205[5]);
          outlined destroy of Participant.ScreenInfo(v205);
          goto LABEL_14;
        }
      }

      else
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v203, 0, 24);
        v203[3] = 1;
        bzero(&v203[4], 0xB1uLL);
        v63 = v183;
      }

      outlined destroy of Participant.ScreenInfo?(v203);
      LODWORD(v195) = 0;
LABEL_14:
      _s15ConversationKit11ParticipantVWOcTm_6(v192, v63, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v65 = *(v64 + 48);
        outlined consume of Participant.CopresenceInfo?(*(v63 + *(v64 + 64)), *(v63 + *(v64 + 64) + 8));
        memcpy(v204, (v63 + v65), sizeof(v204));
        v66 = type metadata accessor for Date();
        v67 = *(*(v66 - 8) + 8);
        v67(v63, v66);
        outlined init with copy of Participant.ScreenInfo?(&v204[96], v205);
        outlined destroy of Participant.MediaInfo(v204);
        if (v205[3] != 1)
        {
          outlined destroy of Participant.ScreenInfo?(v205);
          v68 = v174;
          _s15ConversationKit11ParticipantVWOcTm_6(v192, v174, type metadata accessor for Participant.State);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v69 = *(v64 + 48);
            outlined consume of Participant.CopresenceInfo?(*(v68 + *(v64 + 64)), *(v68 + *(v64 + 64) + 8));
            memcpy(v204, (v68 + v69), sizeof(v204));
            v67(v68, v66);
            outlined init with copy of Participant.ScreenInfo?(&v204[96], v203);
            outlined destroy of Participant.MediaInfo(v204);
            if (v203[3] != 1)
            {
              memcpy(v205, v203, 0xD1uLL);
              v70 = LOBYTE(v205[5]);
              outlined destroy of Participant.ScreenInfo(v205);
LABEL_25:
              v43 = v179;
              goto LABEL_26;
            }
          }

          else
          {
            _s15ConversationKit11ParticipantV5StateOWOhTm_0();
            memset(v203, 0, 24);
            v203[3] = 1;
            bzero(&v203[4], 0xB1uLL);
          }

          outlined destroy of Participant.ScreenInfo?(v203);
          v70 = 0;
          goto LABEL_25;
        }
      }

      else
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v205, 0, 24);
        v205[3] = 1;
        bzero(&v205[4], 0xB1uLL);
      }

      outlined destroy of Participant.ScreenInfo?(v205);
      v70 = 0;
LABEL_26:
      v71 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v72 = [v71 integerValue];

      v73 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v74 = [v73 initWithBool_];
      v75 = [v74 integerValue];

      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      v76 = v184 ^ (v72 >= v75);
      v46 = v194;
      v51 += v194;
      v48 += v194;
      v44 = v193 + 1;
      v16 = v199;
      v53 = v200;
      v50 = v200 + 1;
      v52 = v187;
      if ((v76 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v44 = v52;
LABEL_29:
    if ((v184 & 1) == 0)
    {
      a4 = v171;
      goto LABEL_50;
    }

    v42 = v175;
    a4 = v171;
    if (v44 < v175)
    {
      goto LABEL_175;
    }

    if (v175 < v44)
    {
      if (v52 >= v53)
      {
        v77 = v53;
      }

      else
      {
        v77 = v52;
      }

      v78 = v46 * (v77 - 1);
      v79 = v46 * v77;
      v80 = v175;
      v81 = v175 * v46;
      v82 = v44;
      do
      {
        if (v80 != --v82)
        {
          v83 = *v186;
          if (!*v186)
          {
            goto LABEL_180;
          }

          v84 = v44;
          outlined init with take of Participant(v83 + v81, v178);
          v85 = v81 < v78 || v83 + v81 >= (v83 + v79);
          if (v85)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v81 != v78)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          outlined init with take of Participant(v178, v83 + v78);
          v44 = v84;
          v43 = v179;
          v46 = v194;
        }

        ++v80;
        v78 -= v46;
        v79 -= v46;
        v81 += v46;
      }

      while (v80 < v82);
      a4 = v171;
      v16 = v199;
LABEL_50:
      v42 = v175;
    }

LABEL_51:
    v86 = v186[1];
    if (v44 < v86)
    {
      if (__OFSUB__(v44, v42))
      {
        goto LABEL_172;
      }

      if (v44 - v42 < a4)
      {
        break;
      }
    }

LABEL_88:
    if (v44 < v42)
    {
      goto LABEL_171;
    }

    v193 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v43 = v158;
    }

    v115 = *(v43 + 16);
    v116 = v115 + 1;
    v42 = v193;
    if (v115 >= *(v43 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v42 = v193;
      v43 = v159;
    }

    *(v43 + 16) = v116;
    v117 = v43 + 32;
    v118 = (v43 + 32 + 16 * v115);
    *v118 = v175;
    v118[1] = v42;
    v200 = *v172;
    if (!v200)
    {
      goto LABEL_181;
    }

    if (v115)
    {
      while (1)
      {
        v119 = v116 - 1;
        v120 = (v117 + 16 * (v116 - 1));
        v121 = (v43 + 16 * v116);
        if (v116 >= 4)
        {
          break;
        }

        if (v116 == 3)
        {
          v122 = *(v43 + 32);
          v123 = *(v43 + 40);
          v132 = __OFSUB__(v123, v122);
          v124 = v123 - v122;
          v125 = v132;
LABEL_108:
          if (v125)
          {
            goto LABEL_158;
          }

          v137 = *v121;
          v136 = v121[1];
          v138 = __OFSUB__(v136, v137);
          v139 = v136 - v137;
          v140 = v138;
          if (v138)
          {
            goto LABEL_161;
          }

          v141 = v120[1];
          v142 = v141 - *v120;
          if (__OFSUB__(v141, *v120))
          {
            goto LABEL_164;
          }

          if (__OFADD__(v139, v142))
          {
            goto LABEL_166;
          }

          if (v139 + v142 >= v124)
          {
            if (v124 < v142)
            {
              v119 = v116 - 2;
            }

            goto LABEL_130;
          }

          goto LABEL_123;
        }

        if (v116 < 2)
        {
          goto LABEL_160;
        }

        v144 = *v121;
        v143 = v121[1];
        v132 = __OFSUB__(v143, v144);
        v139 = v143 - v144;
        v140 = v132;
LABEL_123:
        if (v140)
        {
          goto LABEL_163;
        }

        v146 = *v120;
        v145 = v120[1];
        v132 = __OFSUB__(v145, v146);
        v147 = v145 - v146;
        if (v132)
        {
          goto LABEL_165;
        }

        if (v147 < v139)
        {
          goto LABEL_137;
        }

LABEL_130:
        if (v119 - 1 >= v116)
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        if (!*v186)
        {
          goto LABEL_178;
        }

        v151 = (v117 + 16 * (v119 - 1));
        v152 = *v151;
        v153 = v117 + 16 * v119;
        v154 = *(v153 + 8);
        v155 = v191;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v186 + *(v185 + 72) * *v151, *v186 + *(v185 + 72) * *v153, (*v186 + *(v185 + 72) * v154), v200);
        v191 = v155;
        if (v155)
        {
          goto LABEL_150;
        }

        if (v154 < v152)
        {
          goto LABEL_153;
        }

        v156 = v43;
        v43 = *(v43 + 16);
        if (v119 > v43)
        {
          goto LABEL_154;
        }

        *v151 = v152;
        v151[1] = v154;
        if (v119 >= v43)
        {
          goto LABEL_155;
        }

        v116 = v43 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v153 + 16), v43 - 1 - v119, (v117 + 16 * v119));
        *(v156 + 16) = v43 - 1;
        v157 = v43 > 2;
        v43 = v156;
        v42 = v193;
        if (!v157)
        {
          goto LABEL_137;
        }
      }

      v126 = v117 + 16 * v116;
      v127 = *(v126 - 64);
      v128 = *(v126 - 56);
      v132 = __OFSUB__(v128, v127);
      v129 = v128 - v127;
      if (v132)
      {
        goto LABEL_156;
      }

      v131 = *(v126 - 48);
      v130 = *(v126 - 40);
      v132 = __OFSUB__(v130, v131);
      v124 = v130 - v131;
      v125 = v132;
      if (v132)
      {
        goto LABEL_157;
      }

      v133 = v121[1];
      v134 = v133 - *v121;
      if (__OFSUB__(v133, *v121))
      {
        goto LABEL_159;
      }

      v132 = __OFADD__(v124, v134);
      v135 = v124 + v134;
      if (v132)
      {
        goto LABEL_162;
      }

      if (v135 >= v129)
      {
        v149 = *v120;
        v148 = v120[1];
        v132 = __OFSUB__(v148, v149);
        v150 = v148 - v149;
        if (v132)
        {
          goto LABEL_170;
        }

        if (v124 < v150)
        {
          v119 = v116 - 2;
        }

        goto LABEL_130;
      }

      goto LABEL_108;
    }

LABEL_137:
    v41 = v186[1];
    a4 = v171;
    v16 = v199;
    if (v42 >= v41)
    {
      goto LABEL_140;
    }
  }

  v87 = v42 + a4;
  if (__OFADD__(v42, a4))
  {
    goto LABEL_173;
  }

  if (v87 >= v86)
  {
    v87 = v186[1];
  }

  if (v87 < v42)
  {
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v43);
LABEL_142:
    v160 = (v43 + 16);
    v161 = *(v43 + 16);
    while (v161 >= 2)
    {
      if (!*v186)
      {
        goto LABEL_179;
      }

      v162 = v43;
      v163 = (v43 + 16 * v161);
      v164 = *v163;
      v165 = &v160[2 * v161];
      v43 = *(v165 + 1);
      v166 = v191;
      specialized _merge<A>(low:mid:high:buffer:by:)(*v186 + *(v185 + 72) * *v163, *v186 + *(v185 + 72) * *v165, (*v186 + *(v185 + 72) * v43), v206);
      v191 = v166;
      if (v166)
      {
        break;
      }

      if (v43 < v164)
      {
        goto LABEL_167;
      }

      if (v161 - 2 >= *v160)
      {
        goto LABEL_168;
      }

      *v163 = v164;
      v163[1] = v43;
      v167 = *v160 - v161;
      if (*v160 < v161)
      {
        goto LABEL_169;
      }

      v161 = *v160 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v165 + 16, v167, v165);
      *v160 = v161;
      v43 = v162;
    }

    goto LABEL_150;
  }

  if (v44 == v87)
  {
    goto LABEL_88;
  }

  v88 = *v186;
  v89 = *(v185 + 72);
  v90 = *v186 + v89 * (v44 - 1);
  v194 = -v89;
  v195 = v88;
  v91 = v42 - v44;
  v176 = v89;
  v177 = v87;
  v92 = v88 + v44 * v89;
  while (2)
  {
    v193 = v44;
    v180 = v92;
    v181 = v91;
    v184 = v90;
LABEL_61:
    v93 = v201;
    _s15ConversationKit11ParticipantVWOcTm_6(v92, v201, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOcTm_6(v90, v206, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOcTm_6(v93, v16, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v205, 0, 24);
      v205[3] = 1;
      bzero(&v205[4], 0xB1uLL);
      goto LABEL_67;
    }

    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v95 = *(v94 + 48);
    outlined consume of Participant.CopresenceInfo?(*&v16[*(v94 + 64)], *&v16[*(v94 + 64) + 8]);
    memcpy(v204, &v16[v95], sizeof(v204));
    v96 = type metadata accessor for Date();
    v97 = v16;
    v98 = v96;
    v99 = *(*(v96 - 8) + 8);
    v99(v97, v96);
    outlined init with copy of Participant.ScreenInfo?(&v204[96], v205);
    outlined destroy of Participant.MediaInfo(v204);
    if (v205[3] == 1)
    {
LABEL_67:
      outlined destroy of Participant.ScreenInfo?(v205);
      LODWORD(v200) = 0;
      v101 = v198;
      goto LABEL_68;
    }

    outlined destroy of Participant.ScreenInfo?(v205);
    v100 = v188;
    _s15ConversationKit11ParticipantVWOcTm_6(v201, v188, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v200 = *(v94 + 48);
      outlined consume of Participant.CopresenceInfo?(*(v100 + *(v94 + 64)), *(v100 + *(v94 + 64) + 8));
      memcpy(v204, (v100 + v200), sizeof(v204));
      v99(v100, v98);
      outlined init with copy of Participant.ScreenInfo?(&v204[96], v203);
      outlined destroy of Participant.MediaInfo(v204);
      v101 = v198;
      if (v203[3] != 1)
      {
        memcpy(v205, v203, 0xD1uLL);
        LODWORD(v200) = LOBYTE(v205[5]);
        outlined destroy of Participant.ScreenInfo(v205);
        goto LABEL_68;
      }
    }

    else
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v203, 0, 24);
      v203[3] = 1;
      bzero(&v203[4], 0xB1uLL);
      v101 = v198;
    }

    outlined destroy of Participant.ScreenInfo?(v203);
    LODWORD(v200) = 0;
LABEL_68:
    _s15ConversationKit11ParticipantVWOcTm_6(v206, v101, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v205, 0, 24);
      v205[3] = 1;
      bzero(&v205[4], 0xB1uLL);
      goto LABEL_74;
    }

    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v103 = *(v102 + 48);
    outlined consume of Participant.CopresenceInfo?(*(v101 + *(v102 + 64)), *(v101 + *(v102 + 64) + 8));
    memcpy(v204, (v101 + v103), sizeof(v204));
    v104 = type metadata accessor for Date();
    v105 = *(*(v104 - 8) + 8);
    v105(v101, v104);
    outlined init with copy of Participant.ScreenInfo?(&v204[96], v205);
    outlined destroy of Participant.MediaInfo(v204);
    if (v205[3] == 1)
    {
LABEL_74:
      v108 = v205;
      goto LABEL_75;
    }

    outlined destroy of Participant.ScreenInfo?(v205);
    v106 = v189;
    _s15ConversationKit11ParticipantVWOcTm_6(v206, v189, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v187 = *(v102 + 48);
      outlined consume of Participant.CopresenceInfo?(*(v106 + *(v102 + 64)), *(v106 + *(v102 + 64) + 8));
      memcpy(v204, (v106 + v187), sizeof(v204));
      v105(v106, v104);
      outlined init with copy of Participant.ScreenInfo?(&v204[96], v203);
      outlined destroy of Participant.MediaInfo(v204);
      if (v203[3] != 1)
      {
        memcpy(v205, v203, 0xD1uLL);
        v107 = LOBYTE(v205[5]);
        outlined destroy of Participant.ScreenInfo(v205);
        goto LABEL_76;
      }
    }

    else
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v203, 0, 24);
      v203[3] = 1;
      bzero(&v203[4], 0xB1uLL);
    }

    v108 = v203;
LABEL_75:
    outlined destroy of Participant.ScreenInfo?(v108);
    v107 = 0;
LABEL_76:
    v109 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v110 = [v109 integerValue];

    v111 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v112 = [v111 initWithBool_];
    v113 = [v112 integerValue];

    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    if (v110 >= v113)
    {
      v16 = v199;
LABEL_86:
      v44 = v193 + 1;
      v90 = v184 + v176;
      v91 = v181 - 1;
      v92 = v180 + v176;
      if (v193 + 1 == v177)
      {
        v44 = v177;
        v43 = v179;
        v42 = v175;
        goto LABEL_88;
      }

      continue;
    }

    break;
  }

  v16 = v199;
  if (v195)
  {
    v114 = v196;
    outlined init with take of Participant(v92, v196);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of Participant(v114, v90);
    v90 += v194;
    v92 += v194;
    v85 = __CFADD__(v91++, 1);
    if (v85)
    {
      goto LABEL_86;
    }

    goto LABEL_61;
  }

  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v72 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v72);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return;
  }

  v20 = a2 - a1;
  v21 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_65;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_66;
  }

  v73 = v5;
  v24 = v20 / v19;
  v76 = a1;
  v75 = a4;
  v25 = v22 / v19;
  if (v20 / v19 >= v22 / v19)
  {
    v68 = v12;
    v69 = v17;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v22 / v19, a4);
    v37 = a2;
    v70 = a4;
    v38 = a4 + v25 * v19;
    v39 = -v19;
    v40 = v38;
    v41 = v73;
    v65 = -v19;
    v66 = a1;
LABEL_38:
    v42 = v37 + v39;
    v43 = a3;
    v63 = v40;
    v44 = v40;
    v71 = v37;
    v67 = v37 + v39;
    while (1)
    {
      if (v38 <= v70)
      {
        v76 = v37;
        v74 = v44;
        goto LABEL_63;
      }

      if (v37 <= a1)
      {
        v76 = v37;
        v74 = v63;
        goto LABEL_63;
      }

      v64 = v44;
      v45 = v38;
      v46 = v38 + v39;
      v47 = v38 + v39;
      v48 = v68;
      v49 = v42;
      v50 = v39;
      _s15ConversationKit11ParticipantVWOcTm_6(v47, v68, type metadata accessor for Participant);
      v51 = v69;
      _s15ConversationKit11ParticipantVWOcTm_6(v49, v69, type metadata accessor for Participant);
      v52 = closure #1 in Array<A>.sortForInCallControls()(v48, v51);
      v73 = v41;
      if (v41)
      {
        break;
      }

      v53 = v52;
      v54 = &v43[v50];
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      if (v53)
      {
        v57 = v43 < v71 || v54 >= v71;
        a1 = v66;
        v38 = v45;
        a3 = &v43[v50];
        if (v57)
        {
          v58 = v67;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v58;
          v40 = v64;
          v39 = v65;
          v41 = v73;
        }

        else
        {
          v39 = v65;
          v40 = v64;
          v59 = v67;
          v37 = v67;
          v41 = v73;
          if (v43 != v71)
          {
            v60 = v64;
            v61 = v65;
            swift_arrayInitWithTakeBackToFront();
            v39 = v61;
            v37 = v59;
            v40 = v60;
          }
        }

        goto LABEL_38;
      }

      v55 = v43 < v45 || v54 >= v45;
      a1 = v66;
      if (v55)
      {
        swift_arrayInitWithTakeFrontToBack();
        v43 += v50;
        v38 = v46;
        v44 = v46;
        v37 = v71;
        v41 = v73;
        v39 = v65;
        v42 = v67;
      }

      else
      {
        v44 = v46;
        v21 = v45 == v43;
        v43 += v50;
        v38 = v46;
        v37 = v71;
        v41 = v73;
        v39 = v65;
        v42 = v67;
        if (!v21)
        {
          v56 = v65;
          swift_arrayInitWithTakeBackToFront();
          v39 = v56;
          v37 = v71;
          v43 = v54;
          v38 = v46;
          v44 = v46;
        }
      }
    }

    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    v76 = v71;
    v74 = v64;
  }

  else
  {
    v69 = &v62 - v16;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v20 / v19, a4);
    v26 = a2;
    v70 = a4 + v24 * v19;
    v74 = v70;
    v27 = a4;
    while (1)
    {
      v28 = v71;
      if (v27 >= v70 || v26 >= a3)
      {
        break;
      }

      v30 = v26;
      v31 = v69;
      _s15ConversationKit11ParticipantVWOcTm_6(v26, v69, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v27, v28, type metadata accessor for Participant);
      v32 = v73;
      v33 = closure #1 in Array<A>.sortForInCallControls()(v31, v28);
      v73 = v32;
      if (v32)
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        break;
      }

      v34 = v33;
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      if (v34)
      {
        if (a1 < v30 || a1 >= v30 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v30)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v26 = v30 + v19;
      }

      else
      {
        if (a1 < v27 || a1 >= v27 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v27)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v75 = v27 + v19;
        v27 += v19;
        v26 = v30;
      }

      a1 += v19;
      v76 = a1;
    }
  }

LABEL_63:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v76, &v75, &v74);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v121 = type metadata accessor for Participant.State(0);
  v8 = MEMORY[0x1EEE9AC00](v121);
  v106 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v104 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v104 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v109 = &v104 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v114 = &v104 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v113 = &v104 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v104 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v104 - v24;
  v116 = type metadata accessor for Participant(0);
  v26 = MEMORY[0x1EEE9AC00](v116);
  v112 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v115 = &v104 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v120 = &v104 - v31;
  result = MEMORY[0x1EEE9AC00](v30);
  v117 = &v104 - v33;
  v35 = *(v34 + 72);
  if (!v35)
  {
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    return result;
  }

  v36 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_99;
  }

  v38 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_100;
  }

  v105 = v15;
  v108 = v12;
  v40 = v36 / v35;
  v127 = a1;
  v126 = a4;
  v41 = v38 / v35;
  if (v36 / v35 < v38 / v35)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v36 / v35, a4);
    v115 = a4 + v40 * v35;
    v125 = v115;
    v111 = v35;
    v112 = a3;
    while (1)
    {
      if (a4 >= v115 || a2 >= a3)
      {
        goto LABEL_97;
      }

      v119 = a2;
      v43 = a2;
      v44 = v117;
      _s15ConversationKit11ParticipantVWOcTm_6(v43, v117, type metadata accessor for Participant);
      v118 = a4;
      _s15ConversationKit11ParticipantVWOcTm_6(a4, v120, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v44, v25, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v46 = *(v45 + 48);
      outlined consume of Participant.CopresenceInfo?(*&v25[*(v45 + 64)], *&v25[*(v45 + 64) + 8]);
      memcpy(v123, &v25[v46], sizeof(v123));
      v47 = type metadata accessor for Date();
      v48 = *(*(v47 - 8) + 8);
      v48(v25, v47);
      outlined init with copy of Participant.ScreenInfo?(&v123[96], v124);
      outlined destroy of Participant.MediaInfo(v123);
      v49 = v114;
      if (v124[3] == 1)
      {
        goto LABEL_22;
      }

      outlined destroy of Participant.ScreenInfo?(v124);
      v50 = v107;
      _s15ConversationKit11ParticipantVWOcTm_6(v117, v107, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v110 = *(v45 + 48);
        outlined consume of Participant.CopresenceInfo?(*(v50 + *(v45 + 64)), *(v50 + *(v45 + 64) + 8));
        memcpy(v123, (v50 + v110), sizeof(v123));
        v48(v50, v47);
        outlined init with copy of Participant.ScreenInfo?(&v123[96], v122);
        outlined destroy of Participant.MediaInfo(v123);
        v51 = v113;
        if (v122[3] != 1)
        {
          memcpy(v124, v122, 0xD1uLL);
          v52 = LOBYTE(v124[5]);
          outlined destroy of Participant.ScreenInfo(v124);
          goto LABEL_23;
        }
      }

      else
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v122, 0, 24);
        v122[3] = 1;
        bzero(&v122[4], 0xB1uLL);
        v51 = v113;
      }

      outlined destroy of Participant.ScreenInfo?(v122);
      v52 = 0;
LABEL_23:
      _s15ConversationKit11ParticipantVWOcTm_6(v120, v51, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v124, 0, 24);
        v124[3] = 1;
        bzero(&v124[4], 0xB1uLL);
LABEL_29:
        v60 = v124;
        goto LABEL_30;
      }

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v54 = *(v53 + 48);
      outlined consume of Participant.CopresenceInfo?(*(v51 + *(v53 + 64)), *(v51 + *(v53 + 64) + 8));
      memcpy(v123, (v51 + v54), sizeof(v123));
      v55 = type metadata accessor for Date();
      v56 = *(*(v55 - 8) + 8);
      v56(v51, v55);
      outlined init with copy of Participant.ScreenInfo?(&v123[96], v124);
      outlined destroy of Participant.MediaInfo(v123);
      if (v124[3] == 1)
      {
        goto LABEL_29;
      }

      outlined destroy of Participant.ScreenInfo?(v124);
      _s15ConversationKit11ParticipantVWOcTm_6(v120, v49, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v110 = a1;
        v57 = *(v53 + 48);
        outlined consume of Participant.CopresenceInfo?(*(v49 + *(v53 + 64)), *(v49 + *(v53 + 64) + 8));
        v58 = (v49 + v57);
        a1 = v110;
        memcpy(v123, v58, sizeof(v123));
        v56(v49, v55);
        outlined init with copy of Participant.ScreenInfo?(&v123[96], v122);
        outlined destroy of Participant.MediaInfo(v123);
        if (v122[3] != 1)
        {
          memcpy(v124, v122, 0xD1uLL);
          v59 = LOBYTE(v124[5]);
          outlined destroy of Participant.ScreenInfo(v124);
          goto LABEL_31;
        }
      }

      else
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v122, 0, 24);
        v122[3] = 1;
        bzero(&v122[4], 0xB1uLL);
      }

      v60 = v122;
LABEL_30:
      outlined destroy of Participant.ScreenInfo?(v60);
      v59 = 0;
LABEL_31:
      v61 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v62 = [v61 integerValue];

      v63 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v64 = [v63 integerValue];

      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      if (v62 >= v64)
      {
        a2 = v119;
        v65 = v111;
        a3 = v112;
        a4 = v118 + v111;
        if (a1 < v118 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v118)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v126 = a4;
      }

      else
      {
        a4 = v118;
        v65 = v111;
        a3 = v112;
        a2 = v119 + v111;
        if (a1 < v119 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v119)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 += v65;
      v127 = a1;
    }

    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    memset(v124, 0, 24);
    v124[3] = 1;
    bzero(&v124[4], 0xB1uLL);
    v49 = v114;
LABEL_22:
    outlined destroy of Participant.ScreenInfo?(v124);
    v52 = 0;
    v51 = v113;
    goto LABEL_23;
  }

  v110 = a1;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v38 / v35, a4);
  v68 = a4 + v41 * v35;
  v69 = a2;
  v70 = -v35;
  v71 = v68;
  v118 = a4;
  v120 = v70;
LABEL_55:
  v72 = v69 + v70;
  v73 = a3;
  v104 = v71;
  v74 = v112;
  v119 = v69;
  v111 = v69 + v70;
  while (1)
  {
    if (v68 <= a4)
    {
      v127 = v69;
      v125 = v71;
      goto LABEL_97;
    }

    if (v69 <= v110)
    {
      break;
    }

    v114 = v73;
    v107 = v71;
    v117 = v68;
    v75 = v68 + v70;
    v76 = v115;
    _s15ConversationKit11ParticipantVWOcTm_6(v68 + v70, v115, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOcTm_6(v72, v74, type metadata accessor for Participant);
    v77 = v109;
    _s15ConversationKit11ParticipantVWOcTm_6(v76, v109, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v124, 0, 24);
      v124[3] = 1;
      bzero(&v124[4], 0xB1uLL);
LABEL_64:
      outlined destroy of Participant.ScreenInfo?(v124);
      LODWORD(v113) = 0;
      v84 = v108;
      goto LABEL_68;
    }

    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v79 = *(v78 + 48);
    outlined consume of Participant.CopresenceInfo?(*(v77 + *(v78 + 64)), *(v77 + *(v78 + 64) + 8));
    memcpy(v123, (v77 + v79), sizeof(v123));
    v80 = type metadata accessor for Date();
    v81 = *(*(v80 - 8) + 8);
    v81(v77, v80);
    outlined init with copy of Participant.ScreenInfo?(&v123[96], v124);
    outlined destroy of Participant.MediaInfo(v123);
    if (v124[3] == 1)
    {
      goto LABEL_64;
    }

    outlined destroy of Participant.ScreenInfo?(v124);
    v82 = v105;
    _s15ConversationKit11ParticipantVWOcTm_6(v115, v105, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v122, 0, 24);
      v122[3] = 1;
      bzero(&v122[4], 0xB1uLL);
      v84 = v108;
LABEL_66:
      outlined destroy of Participant.ScreenInfo?(v122);
      LODWORD(v113) = 0;
      goto LABEL_67;
    }

    v83 = *(v78 + 48);
    outlined consume of Participant.CopresenceInfo?(*(v82 + *(v78 + 64)), *(v82 + *(v78 + 64) + 8));
    memcpy(v123, (v82 + v83), sizeof(v123));
    v81(v82, v80);
    outlined init with copy of Participant.ScreenInfo?(&v123[96], v122);
    outlined destroy of Participant.MediaInfo(v123);
    v84 = v108;
    if (v122[3] == 1)
    {
      goto LABEL_66;
    }

    memcpy(v124, v122, 0xD1uLL);
    LODWORD(v113) = LOBYTE(v124[5]);
    outlined destroy of Participant.ScreenInfo(v124);
LABEL_67:
    v74 = v112;
LABEL_68:
    _s15ConversationKit11ParticipantVWOcTm_6(v74, v84, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v124, 0, 24);
      v124[3] = 1;
      bzero(&v124[4], 0xB1uLL);
LABEL_74:
      v92 = v124;
      goto LABEL_75;
    }

    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v86 = *(v85 + 48);
    outlined consume of Participant.CopresenceInfo?(*(v84 + *(v85 + 64)), *(v84 + *(v85 + 64) + 8));
    memcpy(v123, (v84 + v86), sizeof(v123));
    v87 = type metadata accessor for Date();
    v88 = *(*(v87 - 8) + 8);
    v88(v84, v87);
    outlined init with copy of Participant.ScreenInfo?(&v123[96], v124);
    outlined destroy of Participant.MediaInfo(v123);
    if (v124[3] == 1)
    {
      goto LABEL_74;
    }

    outlined destroy of Participant.ScreenInfo?(v124);
    v89 = v106;
    _s15ConversationKit11ParticipantVWOcTm_6(v74, v106, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v90 = *(v85 + 48);
      outlined consume of Participant.CopresenceInfo?(*(v89 + *(v85 + 64)), *(v89 + *(v85 + 64) + 8));
      memcpy(v123, (v89 + v90), sizeof(v123));
      v88(v89, v87);
      outlined init with copy of Participant.ScreenInfo?(&v123[96], v122);
      outlined destroy of Participant.MediaInfo(v123);
      if (v122[3] != 1)
      {
        memcpy(v124, v122, 0xD1uLL);
        v91 = LOBYTE(v124[5]);
        outlined destroy of Participant.ScreenInfo(v124);
        goto LABEL_76;
      }
    }

    else
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v122, 0, 24);
      v122[3] = 1;
      bzero(&v122[4], 0xB1uLL);
    }

    v92 = v122;
LABEL_75:
    outlined destroy of Participant.ScreenInfo?(v92);
    v91 = 0;
LABEL_76:
    v93 = v114;
    v94 = &v114[v120];
    v95 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v96 = [v95 integerValue];

    v97 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v98 = [v97 initWithBool_];
    v99 = [v98 integerValue];

    v74 = v112;
    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    if (v96 < v99)
    {
      a4 = v118;
      v101 = v93 < v119 || v94 >= v119;
      a3 = v94;
      v102 = v111;
      if (v101)
      {
        swift_arrayInitWithTakeFrontToBack();
        v69 = v102;
        v71 = v107;
        v70 = v120;
        v68 = v117;
      }

      else
      {
        v71 = v107;
        v69 = v111;
        v70 = v120;
        v68 = v117;
        if (v93 != v119)
        {
          v103 = v107;
          swift_arrayInitWithTakeBackToFront();
          v68 = v117;
          v69 = v102;
          v71 = v103;
        }
      }

      goto LABEL_55;
    }

    a4 = v118;
    v100 = v93 < v117 || v94 >= v117;
    v69 = v119;
    v72 = v111;
    if (v100)
    {
      swift_arrayInitWithTakeFrontToBack();
      v73 = v94;
      v68 = v75;
      v71 = v75;
      v70 = v120;
    }

    else
    {
      v71 = v75;
      v73 = v94;
      v68 = v75;
      v70 = v120;
      if (v117 != v93)
      {
        swift_arrayInitWithTakeBackToFront();
        v73 = v94;
        v68 = v75;
        v71 = v75;
      }
    }
  }

  v127 = v69;
  v125 = v104;
LABEL_97:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v127, &v126, &v125);
  return 1;
}

void ScreenSharingInteractionTelemetryConsumer.handleRemoteControlRequest()()
{
  v1 = *(v0 + 40);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 40) = v3;
  }
}

uint64_t ScreenSharingInteractionTelemetryConsumer.handleRemoteControlRequestAutomaticallyDeclined()()
{
  v1 = *(v0 + 48);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 48) = v3;
    return ScreenSharingInteractionTelemetryConsumer.updateAnalyticsReport()();
  }

  return result;
}

uint64_t ScreenSharingInteractionTelemetryConsumer.handleRemoteControlResponse(allowRemoteControl:)(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return ScreenSharingInteractionTelemetryConsumer.updateAnalyticsReport()();
  }

  v2 = *(v1 + 56);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (!v3)
  {
    *(v1 + 56) = v4;
    return ScreenSharingInteractionTelemetryConsumer.updateAnalyticsReport()();
  }

  __break(1u);
  return result;
}

uint64_t ScreenSharingInteractionTelemetryConsumer.updateAnalyticsReport()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BE790;
  *(inited + 32) = 0x737061745F687464;
  *(inited + 40) = 0xE800000000000000;
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  *(inited + 48) = v2;
  *(inited + 72) = v3;
  strcpy((inited + 80), "dth_drawings");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 120) = v3;
  strcpy((inited + 128), "ftrc_requests");
  *(inited + 142) = -4864;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 168) = v3;
  *(inited + 176) = 0xD00000000000001BLL;
  *(inited + 184) = 0x80000001BC50FD40;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 216) = v3;
  *(inited + 224) = 0xD000000000000016;
  *(inited + 232) = 0x80000001BC50FD60;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 264) = v3;
  *(inited + 240) = v4;
  v5 = Dictionary.init(dictionaryLiteral:)();
  GroupSession.addAnalyticsReport(_:)(v5);
}

uint64_t ScreenSharingInteractionTelemetryConsumer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ScreenSharingInteractionTelemetryConsumer.interestedEvents.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16ScreenSharingKit14TelemetryEventOGMd);
  v0 = type metadata accessor for TelemetryEvent();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BAA20;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69C9D30], v0);
  v6(v5 + v2, *MEMORY[0x1E69C9D38], v0);
  return v4;
}

uint64_t ScreenSharingInteractionTelemetryConsumer.sendTelemetry(event:payload:)(uint64_t a1)
{
  v3 = type metadata accessor for TelemetryEvent();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x1E69C9D30])
  {
    v9 = (v1 + 24);
    v10 = *(v1 + 24);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (result != *MEMORY[0x1E69C9D38])
  {
    return (*(v4 + 8))(v7, v3);
  }

  v9 = (v1 + 32);
  v13 = *(v1 + 32);
  v11 = __OFADD__(v13, 1);
  v12 = v13 + 1;
  if (!v11)
  {
LABEL_7:
    *v9 = v12;
    return ScreenSharingInteractionTelemetryConsumer.updateAnalyticsReport()();
  }

  __break(1u);
  return result;
}

Swift::Int ScreenSharingInteractionTransport.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScreenSharingInteractionTransport.Errors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ScreenSharingInteractionTransport.Errors.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t key path getter for ScreenSharingInteractionTransport.isSendingInteractionData : ScreenSharingInteractionTransport@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result & 1;
  return result;
}

uint64_t ScreenSharingInteractionTransport.isSendingInteractionData.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v1 + 424))();

  return *(v0 + 40);
}

uint64_t ScreenSharingInteractionTransport.isSendingInteractionData.setter(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_91();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_63_2();
    v5();
  }

  return result;
}

uint64_t key path getter for ScreenSharingInteractionTransport.isReceivingInteractionData : ScreenSharingInteractionTransport@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result & 1;
  return result;
}

uint64_t ScreenSharingInteractionTransport.isReceivingInteractionData.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v1 + 424))();

  return *(v0 + 41);
}

uint64_t ScreenSharingInteractionTransport.isReceivingInteractionData.setter(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 41) == (result & 1))
  {
    *(v1 + 41) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_91();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_63_2();
    v5();
  }

  return result;
}

uint64_t ScreenSharingInteractionTransport.isSendingInteractionDataDebouncer.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 424))();
}

uint64_t ScreenSharingInteractionTransport.isSendingInteractionDataDebouncer.setter(uint64_t a1)
{

  v4 = specialized ObservableNotificationHandler.shouldNotifyObservers<A>(_:_:)(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_91();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    OUTLINED_FUNCTION_63_2();
    v7();
  }

  else
  {
    *(v1 + 64) = a1;
  }
}

uint64_t closure #1 in ScreenSharingInteractionTransport.isSendingInteractionDataDebouncer.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = a2;
}

void (*ScreenSharingInteractionTransport._firewall.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_142_1();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 88);
  v3[3] = Strong;
  v3[4] = v5;
  return ScreenSharingInteractionTransport._firewall.modify;
}

void ScreenSharingInteractionTransport._firewall.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 88) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t key path getter for ScreenSharingInteractionTransport.firewall : ScreenSharingInteractionTransport@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ScreenSharingInteractionTransport.firewall : ScreenSharingInteractionTransport(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 384);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ScreenSharingInteractionTransport.firewall.init@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = a1;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t ScreenSharingInteractionTransport.firewall.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 424))();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ScreenSharingInteractionTransport.firewall.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v7 = v2;
  v8 = a1;
  v9 = a2;
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 432))();

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in ScreenSharingInteractionTransport.firewall.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 88) = a3;
  return swift_unknownObjectWeakAssign();
}

void (*ScreenSharingInteractionTransport.firewall.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_4();
  (*(v4 + 424))();

  v3[5] = OBJC_IVAR____TtC15ConversationKit33ScreenSharingInteractionTransport___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_12_63();
  v3[6] = lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v5, v6);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v3[7] = ScreenSharingInteractionTransport._firewall.modify(v3);
  return ScreenSharingInteractionTransport.firewall.modify;
}

void ScreenSharingInteractionTransport.firewall.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t type metadata accessor for ScreenSharingInteractionTransport()
{
  result = type metadata singleton initialization cache for ScreenSharingInteractionTransport;
  if (!type metadata singleton initialization cache for ScreenSharingInteractionTransport)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScreenSharingInteractionTransport.__allocating_init(session:unreliableMessenger:reliableMessenger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_246();
  ScreenSharingInteractionTransport.init(session:unreliableMessenger:reliableMessenger:)(v6, a2, a3);
  return v3;
}

uint64_t ScreenSharingInteractionTransport.init(session:unreliableMessenger:reliableMessenger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = 0;
  *(v3 + 88) = 0;
  *(v3 + 48) = 2000000000000000000;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t ScreenSharingInteractionTransport.didSendData()()
{
  return ScreenSharingInteractionTransport.didSendData()();
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  v6 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_168(v5, v7, v8, v6);
  v9 = type metadata accessor for MainActor();

  static MainActor.shared.getter();
  OUTLINED_FUNCTION_246();
  v10 = OUTLINED_FUNCTION_3_2();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in ScreenSharingInteractionTransport.didSendData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingInteractionTransport.didSendData(), v6, v5);
}

uint64_t closure #1 in ScreenSharingInteractionTransport.didSendData()()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_0_1();
  if (((*(v1 + 184))() & 1) == 0)
  {
    ScreenSharingInteractionTransport.isSendingInteractionData.setter(1);
  }

  v2 = ScreenSharingInteractionTransport.isSendingInteractionDataDebouncer.getter();
  if (v2)
  {
    v3 = v2;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    MEMORY[0x1BFB21000](v3, MEMORY[0x1E69E7CA8] + 8, v4, MEMORY[0x1E69E7288]);
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 16);
  v7 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_168(v5, v8, v9, v7);

  v10 = static MainActor.shared.getter();
  v11 = OUTLINED_FUNCTION_3_2();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v6;
  OUTLINED_FUNCTION_59();
  v13 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  ScreenSharingInteractionTransport.isSendingInteractionDataDebouncer.setter(v13);

  OUTLINED_FUNCTION_13();

  return v14();
}

uint64_t closure #1 in closure #1 in ScreenSharingInteractionTransport.didSendData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ScreenSharingInteractionTransport.didSendData(), v7, v6);
}

uint64_t closure #1 in closure #1 in ScreenSharingInteractionTransport.didSendData()()
{
  OUTLINED_FUNCTION_9();
  static Clock<>.continuous.getter();
  v1 = OUTLINED_FUNCTION_16_11();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in ScreenSharingInteractionTransport.didSendData();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_3_0();

  return v3();
}

{
  OUTLINED_FUNCTION_196_1();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v0;

  v4 = OUTLINED_FUNCTION_32_2();
  v5(v4);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_194_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  ScreenSharingInteractionTransport.isSendingInteractionData.setter(0);

  OUTLINED_FUNCTION_5_102();

  return v0();
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t closure #1 in ScreenSharingInteractionTransport.didReceiveData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingInteractionTransport.didReceiveData(), v6, v5);
}

uint64_t closure #1 in ScreenSharingInteractionTransport.didReceiveData()()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_0_1();
  if (((*(v1 + 232))() & 1) == 0)
  {
    ScreenSharingInteractionTransport.isReceivingInteractionData.setter(1);
  }

  v2 = ScreenSharingInteractionTransport.isSendingInteractionDataDebouncer.getter();
  if (v2)
  {
    v3 = v2;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    MEMORY[0x1BFB21000](v3, MEMORY[0x1E69E7CA8] + 8, v4, MEMORY[0x1E69E7288]);
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 16);
  v7 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_168(v5, v8, v9, v7);

  v10 = static MainActor.shared.getter();
  v11 = OUTLINED_FUNCTION_3_2();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v6;
  OUTLINED_FUNCTION_59();
  v13 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  ScreenSharingInteractionTransport.isSendingInteractionDataDebouncer.setter(v13);

  OUTLINED_FUNCTION_13();

  return v14();
}

uint64_t closure #1 in closure #1 in ScreenSharingInteractionTransport.didReceiveData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ScreenSharingInteractionTransport.didReceiveData(), v7, v6);
}

uint64_t closure #1 in closure #1 in ScreenSharingInteractionTransport.didReceiveData()()
{
  OUTLINED_FUNCTION_9();
  static Clock<>.continuous.getter();
  v1 = OUTLINED_FUNCTION_16_11();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in ScreenSharingInteractionTransport.didReceiveData();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_3_0();

  return v3();
}

{
  OUTLINED_FUNCTION_196_1();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v0;

  v4 = OUTLINED_FUNCTION_32_2();
  v5(v4);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_194_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  ScreenSharingInteractionTransport.isReceivingInteractionData.setter(0);

  OUTLINED_FUNCTION_5_102();

  return v0();
}

uint64_t ScreenSharingInteractionTransport.access<A>(keyPath:)()
{
  OUTLINED_FUNCTION_12_63();
  lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v0, v1);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t ScreenSharingInteractionTransport.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_12_63();
  lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t ScreenSharingInteractionTransport.deinit()
{

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 80);
  v1 = OBJC_IVAR____TtC15ConversationKit33ScreenSharingInteractionTransport___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t ScreenSharingInteractionTransport.__deallocating_deinit()
{
  ScreenSharingInteractionTransport.deinit();
  OUTLINED_FUNCTION_38_4();

  return swift_deallocClassInstance();
}

void ScreenSharingInteractionTransport.availableDeliveryModes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16ScreenSharingKit25ControlMessageReliabilityOGMd);
  v0 = type metadata accessor for ControlMessageReliability();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BAA20;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E69C9D98], v0);
  v8(v7 + v4, *MEMORY[0x1E69C9D90], v0);

  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16ScreenSharingKit25ControlMessageReliabilityO_Tt0g5();
}

BOOL ScreenSharingInteractionTransport.isInvalidated.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_16_4();
  GroupSession.state.getter();
  v1 = OUTLINED_FUNCTION_45_1();
  v3 = v2(v1) == *MEMORY[0x1E696B2C0];
  v4 = OUTLINED_FUNCTION_45_1();
  v5(v4);
  return v3;
}

uint64_t ScreenSharingInteractionTransport.activate()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy16ScreenSharingKit21ControlMessengerStateO__GMd);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_1();
  v16 = v4;
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Log.screenSharing);
  OUTLINED_FUNCTION_246();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_13_10();
    v15 = v2;
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMd);
    OUTLINED_FUNCTION_26_36();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v10, v11);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);
    OUTLINED_FUNCTION_288();

    *(v8 + 4) = v0;
    _os_log_impl(&dword_1BBC58000, v6, v7, "Activating screen sharing interaction transport for session: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    v2 = v15;
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  GroupSession.join()();
  type metadata accessor for ControlMessengerState();
  (*(v2 + 104))(v16, *MEMORY[0x1E69E8650], v0);
  OUTLINED_FUNCTION_46();
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in ScreenSharingInteractionTransport.activate()(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy16ScreenSharingKit21ControlMessengerStateO_GMd);
  v7 = *(v6 - 8);
  v26 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  GroupSession.$activeParticipants.getter();
  v28 = *(v7 + 16);
  v24 = v6;
  v28(v9, a1, v6);
  v13 = *(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  v23 = a2;
  v25 = *(v7 + 32);
  v25(v14 + ((v13 + 24) & ~v13), v9, v6);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd);

  v15 = Publisher<>.sink(receiveValue:)();

  (*(v29 + 8))(v12, v10);
  v16 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v16);
  v17 = v24;
  v28(v9, v27, v24);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v23;
  v25(v18 + ((v13 + 40) & ~v13), v9, v17);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = v20;
  return AsyncStream.Continuation.onTermination.setter();
}

void closure #1 in closure #1 in ScreenSharingInteractionTransport.activate()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlMessengerState();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy16ScreenSharingKit21ControlMessengerStateO__GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  if (*(*a1 + 16) >= 2uLL)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, &static Log.screenSharing);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = v5;
      v16 = v15;
      v23 = v15;
      v24 = swift_slowAlloc();
      v27 = v24;
      *v16 = 136315138;
      v26 = *(a2 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMd);
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v27);

      v20 = v23;
      *(v23 + 4) = v19;
      _os_log_impl(&dword_1BBC58000, v13, v14, "Activated screen sharing interaction transport for session: %s", v20, 0xCu);
      v21 = v24;
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFB23DF0](v21, -1, -1);
      v5 = v25;
      MEMORY[0x1BFB23DF0](v20, -1, -1);
    }

    (*(v5 + 104))(v7, *MEMORY[0x1E69C9D88], v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy16ScreenSharingKit21ControlMessengerStateO_GMd);
    AsyncStream.Continuation.yield(_:)();
    (*(v9 + 8))(v11, v8);
  }
}

uint64_t closure #2 in closure #1 in ScreenSharingInteractionTransport.activate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = type metadata accessor for ControlMessengerState();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy16ScreenSharingKit21ControlMessengerStateO__GMd);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_GMd);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_GSgMd);
  v5[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy15GroupActivities0E7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_GGMd);
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_GMd);
  v5[19] = v10;
  v5[20] = *(v10 - 8);
  v5[21] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_G_GMd);
  v5[22] = v11;
  v5[23] = *(v11 - 8);
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ScreenSharingInteractionTransport.activate(), 0, 0);
}

uint64_t closure #2 in closure #1 in ScreenSharingInteractionTransport.activate()()
{
  OUTLINED_FUNCTION_48();
  *(v0 + 200) = *(*(v0 + 32) + 16);
  GroupSession.$state.getter();
  OUTLINED_FUNCTION_6_10();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v1, v2);
  OUTLINED_FUNCTION_186_0();
  v3 = OUTLINED_FUNCTION_316();
  v4(v3);
  AsyncPublisher.makeAsyncIterator()();
  v5 = OUTLINED_FUNCTION_43_0();
  v6(v5);
  *(v0 + 224) = *MEMORY[0x1E696B2C0];
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<GroupSession<ScreenSharingInteractionActivity>.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_G_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 208) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_57_13(v7);

  return MEMORY[0x1EEE6D8C8](v9);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  return OUTLINED_FUNCTION_7_82(closure #2 in closure #1 in ScreenSharingInteractionTransport.activate());
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 16) = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x1E69E73E0];
  v2 = OUTLINED_FUNCTION_31_9();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t closure #2 in closure #1 in ScreenSharingInteractionTransport.activate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_48();
  a16 = v18;
  OUTLINED_FUNCTION_57(*(v18 + 120));
  if (v22)
  {
LABEL_8:
    (*(*(v18 + 184) + 8))(*(v18 + 192), *(v18 + 176));

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_69();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10);
  }

  v23 = *(v18 + 224);
  v24 = OUTLINED_FUNCTION_4_31();
  v25(v24);
  v26 = OUTLINED_FUNCTION_45_1();
  v28 = v27(v26);
  (*(*(v18 + 104) + 8))(*(v18 + 112), *(v18 + 96));
  if (v28 == v23)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v29 = *(v18 + 32);
    v30 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_50_17(v30, &static Log.screenSharing);

    v31 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_72_12();

    if (OUTLINED_FUNCTION_112_2())
    {
      v32 = *(v18 + 200);
      OUTLINED_FUNCTION_13_10();
      swift_slowAlloc();
      a9 = OUTLINED_FUNCTION_21_4();
      *v29 = 136315138;
      *(v18 + 24) = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMd);
      v33 = String.init<A>(reflecting:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &a9);
      OUTLINED_FUNCTION_102_1();
      *(v29 + 4) = v19;
      OUTLINED_FUNCTION_112_0();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    (*(*(v18 + 56) + 104))(*(v18 + 64), *MEMORY[0x1E69C9D80], *(v18 + 48));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy16ScreenSharingKit21ControlMessengerStateO_GMd);
    OUTLINED_FUNCTION_32_2();
    AsyncStream.Continuation.yield(_:)();
    v40 = OUTLINED_FUNCTION_44_0();
    v41(v40);
    AsyncStream.Continuation.finish()();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<GroupSession<ScreenSharingInteractionActivity>.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_G_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v18 + 208) = v51;
  *v51 = v52;
  OUTLINED_FUNCTION_57_13();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6D8C8](v53);
}

void closure #3 in closure #1 in ScreenSharingInteractionTransport.activate()()
{
  AnyCancellable.cancel()();

  JUMPOUT(0x1BFB21000);
}

Swift::Void __swiftcall ScreenSharingInteractionTransport.invalidate()()
{
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v0, &static Log.screenSharing);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    OUTLINED_FUNCTION_13_10();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v4 = swift_slowAlloc();
    *v3 = 136315138;
    v14 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMd);
    OUTLINED_FUNCTION_26_36();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v5, v6);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v14);

    *(v3 + 4) = v9;
    _os_log_impl(&dword_1BBC58000, v1, v2, "Invalidating screen sharing interaction session: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0](v10, v11);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0](v12, v13);
  }

  GroupSession.end()();
}

uint64_t ScreenSharingInteractionTransport.send(_:reliability:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ScreenSharingKit25ControlMessageReliabilityOSgMd);
  OUTLINED_FUNCTION_22(v5);
  v1[10] = OUTLINED_FUNCTION_109_4();
  v6 = type metadata accessor for Participants();
  v1[11] = v6;
  OUTLINED_FUNCTION_9_0(v6);
  v1[12] = v7;
  v1[13] = OUTLINED_FUNCTION_74();
  v1[14] = swift_task_alloc();
  v8 = type metadata accessor for ControlMessageReliability();
  v1[15] = v8;
  OUTLINED_FUNCTION_9_0(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_74();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v10 = type metadata accessor for RemoteControlMessage(0);
  v1[20] = v10;
  OUTLINED_FUNCTION_22(v10);
  v1[21] = OUTLINED_FUNCTION_109_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v11);
  v1[22] = OUTLINED_FUNCTION_109_4();
  v12 = type metadata accessor for Participant();
  v1[23] = v12;
  OUTLINED_FUNCTION_9_0(v12);
  v1[24] = v13;
  v1[25] = OUTLINED_FUNCTION_109_4();
  v14 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 216) = v0;

  OUTLINED_FUNCTION_167();
  (*(*(v1 + 96) + 8))(*(v5 + 112), *(v1 + 88));
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_118_1();
  ScreenSharingInteractionTransport.didSendData()();
  v0 = OUTLINED_FUNCTION_44_0();
  v1(v0);

  OUTLINED_FUNCTION_5_102();

  return v2();
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 232) = v0;

  OUTLINED_FUNCTION_167();
  (*(*(v1 + 96) + 8))(*(v5 + 104), *(v1 + 88));
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t ScreenSharingInteractionTransport.send(_:reliability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  (*(v12[24] + 8))(v12[25], v12[23]);
  OUTLINED_FUNCTION_131_1();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_17_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  (*(v12[24] + 8))(v12[25], v12[23]);
  OUTLINED_FUNCTION_131_1();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_17_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

void ScreenSharingInteractionTransport.receiveData()()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy10Foundation4DataV__GMd);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v7, &static Log.screenSharing);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_13_10();
    v19 = v2;
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v11 = swift_slowAlloc();
    *v10 = 136315138;
    v20 = v11;
    v18 = v3;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMd);
    OUTLINED_FUNCTION_26_36();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v13, v14);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);
    OUTLINED_FUNCTION_288();

    *(v10 + 4) = v12;
    v3 = v18;
    _os_log_impl(&dword_1BBC58000, v8, v9, "Creating screen sharing interaction transport data stream for session: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    v2 = v19;
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  (*(v5 + 104))(v0, *MEMORY[0x1E69E8650], v3);
  v17 = OUTLINED_FUNCTION_209();
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v17);
  v2[4] = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AsyncStream<Data> and conformance AsyncStream<A>, &_sScSy10Foundation4DataVGMd);
  __swift_allocate_boxed_opaque_existential_1(v2);
  AsyncStream.init(_:bufferingPolicy:_:)();
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ScreenSharingInteractionTransport.receiveData()(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy10Foundation4DataV_GMd);
  v5 = *(v4 - 8);
  v17 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v20 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
  v18 = *(v5 + 16);
  v18(v7, a1, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = a2;
  v16 = *(v5 + 32);
  v16(&v12[v11], v7, v4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
  v18(v7, v19, v4);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  v16(&v13[v11], v7, v4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in closure #1 in ScreenSharingInteractionTransport.receiveData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy10Foundation4DataV__GMd);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for Participant();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for RemoteControlMessage(0);
  v5[20] = swift_task_alloc();
  v8 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtSgMd);
  v5[25] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesVy_10Foundation4DataVGMd);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10Foundation4DataV_GMd);
  v5[29] = v10;
  v5[30] = *(v10 - 8);
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ScreenSharingInteractionTransport.receiveData(), 0, 0);
}

uint64_t closure #1 in closure #1 in ScreenSharingInteractionTransport.receiveData()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_165_2();
  GroupSessionMessenger.messages(of:)();
  OUTLINED_FUNCTION_90_5();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  v1 = OUTLINED_FUNCTION_316();
  v2(v1);
  OUTLINED_FUNCTION_22_41(&lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<Data>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10Foundation4DataV_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 256) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_29_29(v3);
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6D8C8](v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  return OUTLINED_FUNCTION_7_82(closure #1 in closure #1 in ScreenSharingInteractionTransport.receiveData());
}

uint64_t closure #2 in closure #1 in ScreenSharingInteractionTransport.receiveData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy10Foundation4DataV__GMd);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for Participant();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for RemoteControlMessage(0);
  v5[20] = swift_task_alloc();
  v8 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtSgMd);
  v5[25] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesVy_10Foundation4DataVGMd);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10Foundation4DataV_GMd);
  v5[29] = v10;
  v5[30] = *(v10 - 8);
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ScreenSharingInteractionTransport.receiveData(), 0, 0);
}

uint64_t closure #2 in closure #1 in ScreenSharingInteractionTransport.receiveData()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_165_2();
  GroupSessionMessenger.messages(of:)();
  OUTLINED_FUNCTION_90_5();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  v1 = OUTLINED_FUNCTION_316();
  v2(v1);
  OUTLINED_FUNCTION_22_41(&lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<Data>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10Foundation4DataV_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 256) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_29_29(v3);
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6D8C8](v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  return OUTLINED_FUNCTION_7_82(closure #2 in closure #1 in ScreenSharingInteractionTransport.receiveData());
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 32) = *(v0 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x1E69E73E0];
  v2 = OUTLINED_FUNCTION_31_9();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t protocol witness for ControlTransport.send(_:reliability:) in conformance ScreenSharingInteractionTransport()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return ScreenSharingInteractionTransport.send(_:reliability:)();
}

uint64_t key path setter for ScreenSharingInteractionSession.playbackServer : ScreenSharingInteractionSession(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
}

uint64_t ScreenSharingInteractionSession.playbackServer.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
}

void key path setter for ScreenSharingInteractionSession.captureInteraction : ScreenSharingInteractionSession(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
  v5 = v2;
}

void *ScreenSharingInteractionSession.captureInteraction.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t ScreenSharingInteractionSession.remoteControlStatus.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  os_unfair_lock_lock((*(v1 + 144) + 24));
  OUTLINED_FUNCTION_121_0();
  result = 1;
  switch(v0 >> 61)
  {
    case 2uLL:
      outlined consume of RemoteControlState(v0);
      result = 3;
      break;
    case 3uLL:
      outlined consume of RemoteControlState(v0);
      result = 2;
      break;
    case 4uLL:
      v3 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61;
      outlined consume of RemoteControlState(v0);
      v4 = 1;
      if (v3 == 3)
      {
        v4 = 2;
      }

      if (v3 == 2)
      {
        result = 3;
      }

      else
      {
        result = v4;
      }

      break;
    case 5uLL:
      return result;
    default:
      outlined consume of RemoteControlState(v0);
      result = 1;
      break;
  }

  return result;
}

uint64_t ScreenSharingInteractionSession.__allocating_init(session:controller:serverBag:contactManager:)()
{
  OUTLINED_FUNCTION_288();
  v0 = swift_allocObject();
  ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)();
  return v0;
}

void ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v70 = v2;
  v4 = v3;
  v67 = v5;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_15ConversationKit013RemoteControlE0OGMd);
  OUTLINED_FUNCTION_1();
  v65 = v9;
  v66 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_1();
  v64 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_1();
  v63 = v14;
  OUTLINED_FUNCTION_4_24();
  v69 = type metadata accessor for ControlMessageSession.Role();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v68 = v19 - v18;
  OUTLINED_FUNCTION_4_24();
  v20 = type metadata accessor for GroupSessionMessenger.DeliveryMode();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  type metadata accessor for DeviceInactivityObserver();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  OUTLINED_FUNCTION_84();
  *(v0 + 88) = DeviceInactivityObserver.init(inactivityTimeout:)(2);
  type metadata accessor for DisplayLayerVisibilityObserver();
  OUTLINED_FUNCTION_84();
  *(v0 + 96) = DisplayLayerVisibilityObserver.init()();
  *(v0 + 152) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 176) = v4;
  v71 = v4;
  if (GroupSession.isLocallyInitiated.getter())
  {
    v27 = 0xA000000000000008;
  }

  else
  {
    v27 = 0xA000000000000010;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy15ConversationKit18RemoteControlStateOSo16os_unfair_lock_sVGMd);
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  *(v28 + 16) = v27;
  *(v0 + 136) = v27;
  *(v0 + 144) = v28;
  v29 = *(v22 + 104);
  v29(v26, *MEMORY[0x1E696B260], v20);
  type metadata accessor for GroupSessionMessenger();
  OUTLINED_FUNCTION_84();
  outlined copy of RemoteControlState(v27);

  *(v0 + 40) = GroupSessionMessenger.init<A>(session:deliveryMode:)();
  v29(v26, *MEMORY[0x1E696B268], v20);
  swift_allocObject();
  OUTLINED_FUNCTION_246();

  v30 = GroupSessionMessenger.init<A>(session:deliveryMode:)();
  v1[6] = v30;
  v31 = v1[5];
  type metadata accessor for ScreenSharingInteractionTransport();
  v32 = OUTLINED_FUNCTION_84();

  ScreenSharingInteractionTransport.init(session:unreliableMessenger:reliableMessenger:)(v7, v31, v30);
  v1[2] = v32;
  v1[3] = v7;

  v33 = GroupSession.isLocallyInitiated.getter();
  v34 = MEMORY[0x1E69C9D70];
  if ((v33 & 1) == 0)
  {
    v34 = MEMORY[0x1E69C9D78];
  }

  (*(v16 + 104))(v68, *v34, v69);
  type metadata accessor for ControlMessageSession();
  OUTLINED_FUNCTION_12_63();
  lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v35, v36);
  v1[4] = ControlMessageSession.__allocating_init(transport:role:)();
  swift_unknownObjectUnownedInit();
  v1[20] = v70;
  v37 = v70;
  if (GroupSession.isLocallyInitiated.getter())
  {
    type metadata accessor for ScreenSharingInteractionTelemetryConsumer();
    v38 = swift_allocObject();
    *(v38 + 24) = 0u;
    *(v38 + 40) = 0u;
    *(v38 + 56) = 0;
    *(v38 + 16) = v7;
    lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(&lazy protocol witness table cache variable for type ScreenSharingInteractionTelemetryConsumer and conformance ScreenSharingInteractionTelemetryConsumer, type metadata accessor for ScreenSharingInteractionTelemetryConsumer);
    type metadata accessor for FaceTimeTelemetryVendor();
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_246();

    FaceTimeTelemetryVendor.init(customTelemetryConsumer:)();
    v39 = dispatch thunk of FaceTimeTelemetryVendor.createTelemetryProvider()();
    v1[7] = v38;

    type metadata accessor for PlaybackServer();

    v40 = v39;
    OUTLINED_FUNCTION_173_1();
    v41 = PlaybackServer.__allocating_init(session:telemetry:interruptionHandler:)();
    v42 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_168(v63, v43, v44, v42);
    v45 = OUTLINED_FUNCTION_3_2();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v41;

    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    v1[8] = v46;

    swift_beginAccess();
    v1[9] = v41;

    ScreenSharingInteractionSession.observeInteractionState()();
  }

  else
  {
    type metadata accessor for CaptureUIInteraction();

    v47 = CaptureUIInteraction.__allocating_init(session:interruptionHandler:)();
    swift_beginAccess();
    v48 = v1[10];
    v1[10] = v47;
  }

  if (FTServerBag.remoteControlEnabled.getter())
  {
    type metadata accessor for RemoteControlMessage(0);
    lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(&lazy protocol witness table cache variable for type RemoteControlMessage and conformance RemoteControlMessage, type metadata accessor for RemoteControlMessage);
    OUTLINED_FUNCTION_27_38();
    lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v49, type metadata accessor for RemoteControlMessage);
    OUTLINED_FUNCTION_288();

    GroupSessionMessenger.receive<A>(_:)();

    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for closure #4 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:);
    *(v50 + 24) = v1;
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type GroupSessionMessenger.MessageStream<RemoteControlMessage> and conformance GroupSessionMessenger.MessageStream<A>, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_15ConversationKit013RemoteControlE0OGMd);
    OUTLINED_FUNCTION_28_0();

    v51 = Publisher<>.sink(receiveValue:)();

    (*(v65 + 8))(v64, v66);
    v1[15] = v51;
  }

  else
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v52, &static Log.screenSharing);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_163(v54))
    {
      v55 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_182_0(v55);
      OUTLINED_FUNCTION_140();
      _os_log_impl(v56, v57, v58, v59, v60, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }

  OUTLINED_FUNCTION_0_1();
  v62 = *(v61 + 384);

  v62(v1, &protocol witness table for ScreenSharingInteractionSession);

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #2 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = type metadata accessor for InteractionState();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:), 0, 0);
}

uint64_t closure #2 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)()
{
  OUTLINED_FUNCTION_48();
  PlaybackServer.$isActive.getter();
  OUTLINED_FUNCTION_6_10();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v1, v2);
  OUTLINED_FUNCTION_186_0();
  v3 = OUTLINED_FUNCTION_316();
  v4(v3);
  AsyncPublisher.makeAsyncIterator()();
  v5 = OUTLINED_FUNCTION_43_0();
  v6(v5);
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 136) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_56_13(v7);

  return MEMORY[0x1EEE6D8C8](v9);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  *(v0 + 177) = *(v0 + 176);
  return OUTLINED_FUNCTION_7_82(closure #2 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:));
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 177);
  if (v1 == 2 || (v1 & 1) != 0)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    *(v0 + 152) = __swift_project_value_buffer(v2, &static Log.screenSharing);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_22_0(v4))
    {
      v5 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v5);
      OUTLINED_FUNCTION_112_0();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    static InteractionState.draw.getter();
    v11 = swift_task_alloc();
    *(v0 + 160) = v11;
    *v11 = v0;
    v11[1] = closure #2 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:);
    v12 = OUTLINED_FUNCTION_71_10(*(v0 + 56));

    return MEMORY[0x1EEE33AB0](v12);
  }

  else
  {
    OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_4();
    *(v0 + 136) = v13;
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_56_13();

    return MEMORY[0x1EEE6D8C8](v15);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 16) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x1E69E73E0];
  v2 = OUTLINED_FUNCTION_31_9();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 168) = v0;

  v7 = OUTLINED_FUNCTION_316();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_5_6();
    OUTLINED_FUNCTION_319();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_319();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t closure #2 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_48();
  a16 = v18;
  v22 = *(v18 + 168);
  v23 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v18 + 168);
    OUTLINED_FUNCTION_13_10();
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v28 = swift_slowAlloc();
    a9 = v28;
    *v27 = 136315138;
    *(v18 + 24) = v26;
    v29 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v30 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &a9);
    OUTLINED_FUNCTION_420();
    *(v27 + 4) = v19;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {
    v37 = *(v18 + 168);
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_69();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

void closure #1 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)(void *a1, const char *a2)
{
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_50_17(v4, &static Log.screenSharing);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    OUTLINED_FUNCTION_13_10();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v13 = swift_slowAlloc();
    *v7 = 136315138;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, oslog, v6, a2, v7, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {
  }
}

uint64_t closure #4 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v5 = type metadata accessor for Participant();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlMessageOSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for RemoteControlMessage(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for screenSharing != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, &static Log.screenSharing);
  outlined init with copy of RemoteControlMessage(a1, v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31 = v6;
    v21 = v20;
    v35 = v20;
    *v19 = 136315138;
    outlined init with copy of RemoteControlMessage(v14, v11);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    specialized >> prefix<A>(_:)();
    v23 = v22;
    v32 = a1;
    v24 = v5;
    v26 = v25;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit20RemoteControlMessageOSgMd);
    outlined destroy of RemoteControlMessage(v14, type metadata accessor for RemoteControlMessage);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, &v35);
    v5 = v24;

    *(v19 + 4) = v27;
    _os_log_impl(&dword_1BBC58000, v16, v17, "Received remote control message: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v28 = v21;
    v6 = v31;
    MEMORY[0x1BFB23DF0](v28, -1, -1);
    MEMORY[0x1BFB23DF0](v19, -1, -1);
  }

  else
  {

    outlined destroy of RemoteControlMessage(v14, type metadata accessor for RemoteControlMessage);
  }

  GroupSessionMessenger.MessageContext.source.getter();
  ScreenSharingInteractionSession.handleRemoteControlMessage(_:from:)();
  return (*(v6 + 8))(v8, v5);
}

Swift::Void __swiftcall ScreenSharingInteractionSession.setup()()
{
  v2 = v0;
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Log.screenSharing);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v5))
  {
    v6 = OUTLINED_FUNCTION_33();
    *v6 = 0;
    _os_log_impl(&dword_1BBC58000, v4, v1, "Setting up state machine and triggering state update", v6, 2u);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v8 = *(v2 + 144);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  outlined copy of RemoteControlState(v9);
  os_unfair_lock_unlock((v8 + 24));
  v10 = v9;
  ScreenSharingInteractionController.session(_:didUpdateState:)(v2, &v10);

  outlined consume of RemoteControlState(v10);
}

Swift::Void __swiftcall ScreenSharingInteractionSession.invalidate()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16_4();
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Log.screenSharing);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = GroupSession.isLocallyInitiated.getter() & 1;

    _os_log_impl(&dword_1BBC58000, v4, v5, "Invalidating group session (locallyInitiated=%{BOOL}d", v6, 8u);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {
  }

  if (v0[14])
  {

    AnyCancellable.cancel()();
  }

  if (v0[13])
  {

    AnyCancellable.cancel()();
  }

  if (v0[8])
  {

    MEMORY[0x1BFB21000](v7, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  if (v0[15])
  {

    AnyCancellable.cancel()();
  }

  OUTLINED_FUNCTION_0_1();
  (*(v8 + 160))();
  v9 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_111_5(v9);
  v10 = OUTLINED_FUNCTION_3_2();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v0;

  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();

  ScreenSharingInteractionTransport.invalidate()();
}

uint64_t closure #1 in ScreenSharingInteractionSession.invalidate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingInteractionSession.invalidate(), 0, 0);
}

uint64_t closure #1 in ScreenSharingInteractionSession.invalidate()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 288))();
  *(v0 + 32) = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_130(v3);

    return MEMORY[0x1EEE33A98](1);
  }

  else
  {
    **(v0 + 16) = 1;
    OUTLINED_FUNCTION_13();

    return v4();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  **(v0 + 16) = *(v0 + 32) == 0;
  OUTLINED_FUNCTION_13();
  return v1();
}

uint64_t ScreenSharingInteractionSession.presentRemoteControlOnboarding()()
{
  OUTLINED_FUNCTION_24_0();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v2);
  *(v1 + 24) = OUTLINED_FUNCTION_109_4();
  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_168(v2, v4, v5, v3);
  v6 = OUTLINED_FUNCTION_3_2();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_5_102();

  return v7();
}

uint64_t closure #1 in ScreenSharingInteractionSession.presentRemoteControlOnboarding()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestVSgMd);
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for Participant();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for RemoteControlRequest(0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingInteractionSession.presentRemoteControlOnboarding(), 0, 0);
}

uint64_t closure #1 in ScreenSharingInteractionSession.presentRemoteControlOnboarding()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_87_5();
  a25 = v29;
  a26 = v30;
  OUTLINED_FUNCTION_103_3();
  a24 = v27;
  v31 = v27[10];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  os_unfair_lock_lock((*(v31 + 144) + 24));
  OUTLINED_FUNCTION_121_0();
  if ((v26 >> 61) - 1 >= 4)
  {
    if (!(v26 >> 61))
    {
      v57 = v27[17];
      v58 = v27[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMd);
      swift_projectBox();
      OUTLINED_FUNCTION_2_126();
      outlined init with copy of RemoteControlMessage(v59, v57);
      v60 = OUTLINED_FUNCTION_86_3();
      v61(v60);
      OUTLINED_FUNCTION_142_1();
      swift_beginAccess();
      v63 = *(v31 + 136);
      v62 = *(v31 + 144);
      v64 = swift_task_alloc();
      v64[2] = v63;
      v64[3] = v62;
      v64[4] = v57;
      v64[5] = v58;
      outlined copy of RemoteControlState(v63);

      os_unfair_lock_lock((v62 + 24));
      partial apply for closure #1 in RemoteControlStateMachine.presentRemoteControlOnboarding(_:from:)((v62 + 16));
      a13 = v27[17];
      v65 = v27[13];
      v66 = v27[14];
      v67 = v27[12];
      v68 = v27[10];
      os_unfair_lock_unlock((v62 + 24));

      outlined consume of RemoteControlState(v63);

      swift_endAccess();
      Strong = swift_unknownObjectUnownedLoadStrong();
      v70 = *(v31 + 144);
      os_unfair_lock_lock((v70 + 24));
      v71 = *(v70 + 16);
      outlined copy of RemoteControlState(v71);
      os_unfair_lock_unlock((v70 + 24));
      a14 = v71;
      ScreenSharingInteractionController.session(_:didUpdateState:)(v68, &a14);

      outlined consume of RemoteControlState(a14);
      (*(v65 + 8))(v66, v67);
      OUTLINED_FUNCTION_3_123();
      outlined destroy of RemoteControlMessage(a13, v72);
      outlined consume of RemoteControlState(v26);
      goto LABEL_8;
    }
  }

  else
  {
    outlined consume of RemoteControlState(v26);
  }

  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v32 = v27[10];
  v33 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_50_17(v33, &static Log.screenSharing);

  v34 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_72_12();

  if (OUTLINED_FUNCTION_112_2())
  {
    OUTLINED_FUNCTION_13_10();
    swift_slowAlloc();
    a14 = OUTLINED_FUNCTION_21_4();
    *v32 = 136315138;
    v35 = *(v31 + 144);
    os_unfair_lock_lock(v35 + 6);
    OUTLINED_FUNCTION_46_19();
    v27[8] = v28;
    v36 = String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_192_0(v36, v37, v38, v39, v40, v41, v42);
    OUTLINED_FUNCTION_102_1();
    *(v32 + 4) = v35;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

LABEL_8:

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_63_11();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t ScreenSharingInteractionSession.sendRemoteControlMessage(_:to:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[13] = v2;
  v1[14] = v0;
  OUTLINED_FUNCTION_166_1(v3);
  v4 = type metadata accessor for Participants();
  v1[15] = v4;
  OUTLINED_FUNCTION_9_0(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_109_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlMessageOSgMd);
  OUTLINED_FUNCTION_22(v6);
  v1[18] = OUTLINED_FUNCTION_109_4();
  v7 = type metadata accessor for RemoteControlResponse(0);
  v1[19] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[20] = OUTLINED_FUNCTION_109_4();
  v8 = type metadata accessor for RemoteControlMessage(0);
  v1[21] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[22] = OUTLINED_FUNCTION_74();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_5_108();
  outlined destroy of RemoteControlMessage(v1, v2);
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = __swift_project_value_buffer(v3, &static Log.screenSharing);
  OUTLINED_FUNCTION_4_116();
  v5 = OUTLINED_FUNCTION_46();
  outlined init with copy of RemoteControlMessage(v5, v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = OUTLINED_FUNCTION_22_0(v8);
  v10 = v0[24];
  if (v9)
  {
    v11 = v0[18];
    OUTLINED_FUNCTION_13_10();
    swift_slowAlloc();
    OUTLINED_FUNCTION_21_4();
    *v4 = 136315138;
    OUTLINED_FUNCTION_4_116();
    OUTLINED_FUNCTION_145_2();
    OUTLINED_FUNCTION_15_47();
    specialized >> prefix<A>(_:)();
    OUTLINED_FUNCTION_29_13();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit20RemoteControlMessageOSgMd);
    OUTLINED_FUNCTION_1_131();
    outlined destroy of RemoteControlMessage(v10, v12);
    v13 = OUTLINED_FUNCTION_21_20();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v15);
    OUTLINED_FUNCTION_146_0();
    *(v4 + 4) = v10;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {

    OUTLINED_FUNCTION_1_131();
    outlined destroy of RemoteControlMessage(v10, v21);
  }

  static Participants.only(_:)();
  v22 = swift_task_alloc();
  v0[28] = v22;
  OUTLINED_FUNCTION_74_8();
  lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v23, v4);
  OUTLINED_FUNCTION_27_38();
  lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v24, v4);
  *v22 = v0;
  v25 = OUTLINED_FUNCTION_55_15();

  return MEMORY[0x1EEDC7410](v25);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[29] = v0;

  v6 = v2[17];
  v7 = v2[16];
  v8 = v2[15];
  if (v0)
  {
    (*(v7 + 8))(v6, v8);
    OUTLINED_FUNCTION_5_6();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v12 = swift_task_alloc();
    v3[30] = v12;
    *v12 = v5;
    v12[1] = ScreenSharingInteractionSession.sendRemoteControlMessage(_:to:);

    return ScreenSharingInteractionSession.updateInteractionState()();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 184);
  OUTLINED_FUNCTION_4_116();
  outlined init with copy of RemoteControlMessage(v2, v1);
  OUTLINED_FUNCTION_38_2();
  v3 = 1 << swift_getEnumCaseMultiPayload();
  if ((v3 & 0xE) != 0)
  {
    v17 = *(v0 + 112);
    OUTLINED_FUNCTION_1_131();
    outlined destroy of RemoteControlMessage(v18, v19);
    *(v0 + 56) = -1;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    v20 = *v17;
    *(v0 + 248) = *(*v17 + 704);
    *(v0 + 256) = (v20 + 704) & 0xFFFFFFFFFFFFLL | 0x31C4000000000000;
    type metadata accessor for MainActor();
    *(v0 + 264) = OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_28_0();
    dispatch thunk of Actor.unownedExecutor.getter();
    OUTLINED_FUNCTION_21_1();
    v21 = OUTLINED_FUNCTION_1_4();

    return MEMORY[0x1EEE6DFA0](v21, v22, v23);
  }

  else
  {
    if ((v3 & 0x31) != 0)
    {
      OUTLINED_FUNCTION_1_131();
      outlined destroy of RemoteControlMessage(v4, v5);
      Strong = swift_unknownObjectUnownedLoadStrong();
      OUTLINED_FUNCTION_159_1();
      OUTLINED_FUNCTION_93_4();
      OUTLINED_FUNCTION_59_9(v7, v8, v9, v10, v11, v12, v13, v14, v24, v25);

      outlined consume of RemoteControlState(v26);
    }

    OUTLINED_FUNCTION_109_5();

    OUTLINED_FUNCTION_5_102();

    return v15();
  }
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 248);

  v1(v0 + 16);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 16, &_s15ConversationKit0A12ControlsTypeOSgMd);
  v2 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_48();
  Strong = swift_unknownObjectUnownedLoadStrong();
  OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_59_9(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);

  outlined consume of RemoteControlState(v13);
  OUTLINED_FUNCTION_109_5();

  OUTLINED_FUNCTION_5_102();

  return v9();
}

uint64_t ScreenSharingInteractionSession.sendRemoteControlMessage(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_36_3();
  if (FTServerBag.remoteControlEnabled.getter())
  {
    OUTLINED_FUNCTION_142_1();
    swift_beginAccess();
    OUTLINED_FUNCTION_45_1();
    RemoteControlStateMachine.validateOutgoingMessage(_:to:)();
    v35 = (v16 + 200);
    swift_endAccess();
    OUTLINED_FUNCTION_4_116();
    v36 = OUTLINED_FUNCTION_4_31();
    outlined init with copy of RemoteControlMessage(v36, v37);
    OUTLINED_FUNCTION_38_2();
    swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_1_131();
    switch(v38)
    {
      case 1:
        v35 = (v16 + 160);
        v64 = *(v16 + 160);
        v65 = *(v16 + 152);
        OUTLINED_FUNCTION_73_9();
        outlined init with take of RemoteControlResponse(v66, v64);
        if (*(v64 + *(v65 + 28)) == 1)
        {
          v67 = *(**(v16 + 112) + 576);
          v77 = **(v16 + 112) + 576;
          v78 = v67 + *v67;
          v68 = swift_task_alloc();
          *(v16 + 208) = v68;
          *v68 = v16;
          v68[1] = ScreenSharingInteractionSession.sendRemoteControlMessage(_:to:);
          OUTLINED_FUNCTION_12_4();

          result = v69(v69, v70, v71, v72, v73, v74, v75, v76, a9, v77, v78, a12, a13, a14, a15, a16);
        }

        else
        {
          v39 = type metadata accessor for RemoteControlResponse;
LABEL_12:
          outlined destroy of RemoteControlMessage(*v35, v39);
          if (one-time initialization token for screenSharing != -1)
          {
            OUTLINED_FUNCTION_0_162();
            swift_once();
          }

          v40 = type metadata accessor for Logger();
          v41 = __swift_project_value_buffer(v40, &static Log.screenSharing);
          OUTLINED_FUNCTION_4_116();
          v42 = OUTLINED_FUNCTION_46();
          outlined init with copy of RemoteControlMessage(v42, v43);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          v46 = OUTLINED_FUNCTION_22_0(v45);
          v47 = *(v16 + 192);
          if (v46)
          {
            v48 = *(v16 + 144);
            OUTLINED_FUNCTION_13_10();
            swift_slowAlloc();
            OUTLINED_FUNCTION_21_4();
            OUTLINED_FUNCTION_89_3();
            *v41 = 136315138;
            OUTLINED_FUNCTION_4_116();
            OUTLINED_FUNCTION_145_2();
            OUTLINED_FUNCTION_15_47();
            specialized >> prefix<A>(_:)();
            OUTLINED_FUNCTION_29_13();
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit20RemoteControlMessageOSgMd);
            OUTLINED_FUNCTION_1_131();
            outlined destroy of RemoteControlMessage(v47, v49);
            v50 = OUTLINED_FUNCTION_21_20();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v52);
            OUTLINED_FUNCTION_146_0();
            *(v41 + 4) = v47;
            OUTLINED_FUNCTION_112_0();
            _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
            OUTLINED_FUNCTION_9_7();
            OUTLINED_FUNCTION_3_4();
            MEMORY[0x1BFB23DF0]();
          }

          else
          {

            OUTLINED_FUNCTION_1_131();
            outlined destroy of RemoteControlMessage(v47, v58);
          }

          static Participants.only(_:)();
          v59 = swift_task_alloc();
          *(v16 + 224) = v59;
          OUTLINED_FUNCTION_74_8();
          lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v60, v41);
          OUTLINED_FUNCTION_27_38();
          lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v61, v41);
          *v59 = v16;
          OUTLINED_FUNCTION_55_15();
          OUTLINED_FUNCTION_12_4();

          result = MEMORY[0x1EEDC7410](v62);
        }

        break;
      case 6:
        goto LABEL_8;
      default:
        goto LABEL_12;
    }
  }

  else
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v17, &static Log.screenSharing);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_22_0(v19))
    {
      v20 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v20);
      OUTLINED_FUNCTION_112_0();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

LABEL_8:
    OUTLINED_FUNCTION_109_5();

    OUTLINED_FUNCTION_5_102();
    OUTLINED_FUNCTION_12_4();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  return result;
}

uint64_t ScreenSharingInteractionSession.sendRemoteControlMessage(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_5_108();
  outlined destroy of RemoteControlMessage(v10, v11);
  OUTLINED_FUNCTION_185_1();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_69();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_185_1();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_69();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t ScreenSharingInteractionSession.beginRemoteControlSession()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_7_82(ScreenSharingInteractionSession.beginRemoteControlSession());
}

{
  OUTLINED_FUNCTION_24_0();
  ScreenSharingInteractionSession.observeDisplayLayerVisibility()();
  OUTLINED_FUNCTION_5_102();

  return v0();
}

uint64_t ScreenSharingInteractionSession.cancelRemoteControlRequest()()
{
  OUTLINED_FUNCTION_24_0();
  v1[6] = v0;
  v2 = type metadata accessor for RemoteControlMessage(0);
  v1[7] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[8] = OUTLINED_FUNCTION_109_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestVSgMd);
  OUTLINED_FUNCTION_22(v3);
  v1[9] = OUTLINED_FUNCTION_109_4();
  v4 = type metadata accessor for Participant();
  v1[10] = v4;
  OUTLINED_FUNCTION_9_0(v4);
  v1[11] = v5;
  v6 = OUTLINED_FUNCTION_109_4();
  v7 = OUTLINED_FUNCTION_166_1(v6);
  v8 = type metadata accessor for RemoteControlRequest(v7);
  v1[13] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[14] = OUTLINED_FUNCTION_74();
  v1[15] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_1_131();
  outlined destroy of RemoteControlMessage(v5, v9);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[15];
  v2 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  OUTLINED_FUNCTION_3_123();
  outlined destroy of RemoteControlMessage(v1, v3);
  outlined consume of RemoteControlState(v2);

  OUTLINED_FUNCTION_5_102();

  return v4();
}

{
  OUTLINED_FUNCTION_196_1();
  OUTLINED_FUNCTION_44();
  v1 = v0[15];
  v2 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  OUTLINED_FUNCTION_3_123();
  outlined destroy of RemoteControlMessage(v1, v3);
  outlined consume of RemoteControlState(v2);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_194_2();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t ScreenSharingInteractionSession.cancelRemoteControlRequest()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_116_0();
  v16 = v14[6];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v17 = *(v16 + 144);
  os_unfair_lock_lock((v17 + 24));
  v18 = *(v17 + 16);
  v14[16] = v18;
  OUTLINED_FUNCTION_177_2();
  switch(v18 >> 61)
  {
    case 1uLL:
      v41 = v14[15];
      v43 = v14[11];
      v42 = v14[12];
      v44 = v14[10];
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
      v46 = swift_projectBox();
      v47 = *(v45 + 48);
      OUTLINED_FUNCTION_2_126();
      outlined init with copy of RemoteControlMessage(v48, v41);
      (*(v43 + 16))(v42, v46 + v47, v44);
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_162();
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      v50 = __swift_project_value_buffer(v49, &static Log.screenSharing);
      OUTLINED_FUNCTION_2_126();
      v51 = OUTLINED_FUNCTION_38_2();
      outlined init with copy of RemoteControlMessage(v51, v52);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      v55 = OUTLINED_FUNCTION_22_0(v54);
      v56 = v14[14];
      if (v55)
      {
        v57 = v14[9];
        OUTLINED_FUNCTION_13_10();
        swift_slowAlloc();
        OUTLINED_FUNCTION_21_4();
        OUTLINED_FUNCTION_89_3();
        *v50 = 136315138;
        OUTLINED_FUNCTION_2_126();
        OUTLINED_FUNCTION_145_2();
        OUTLINED_FUNCTION_15_47();
        specialized >> prefix<A>(_:)();
        OUTLINED_FUNCTION_29_13();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s15ConversationKit20RemoteControlRequestVSgMd);
        OUTLINED_FUNCTION_3_123();
        outlined destroy of RemoteControlMessage(v56, v58);
        v59 = OUTLINED_FUNCTION_21_20();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v61);
        OUTLINED_FUNCTION_146_0();
        *(v50 + 4) = v56;
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      else
      {

        OUTLINED_FUNCTION_3_123();
        outlined destroy of RemoteControlMessage(v56, v67);
      }

      v68 = v14[8];
      OUTLINED_FUNCTION_2_126();
      outlined init with copy of RemoteControlMessage(v69, v68);
      OUTLINED_FUNCTION_38_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_57_8();
      v82 = v70 + 568;
      v83 = *(v70 + 568) + **(v70 + 568);
      v71 = swift_task_alloc();
      v72 = OUTLINED_FUNCTION_119_2(v71);
      *v72 = v73;
      v72[1] = ScreenSharingInteractionSession.cancelRemoteControlRequest();
      OUTLINED_FUNCTION_71_10(v14[8]);
      OUTLINED_FUNCTION_79_9();

      result = v76(v74, v75, v76, v77, v78, v79, v80, v81, a9, v82, v83, a12, a13, a14);
      break;
    case 5uLL:
      goto LABEL_3;
    default:
      outlined consume of RemoteControlState(v18);
LABEL_3:
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_162();
        swift_once();
      }

      v19 = v14[6];
      v20 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_50_17(v20, &static Log.screenSharing);

      v21 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      OUTLINED_FUNCTION_72_12();

      if (OUTLINED_FUNCTION_112_2())
      {
        OUTLINED_FUNCTION_13_10();
        swift_slowAlloc();
        OUTLINED_FUNCTION_21_4();
        OUTLINED_FUNCTION_89_3();
        OUTLINED_FUNCTION_153_1(4.8149e-34);
        OUTLINED_FUNCTION_46_19();
        v14[5] = v16;
        v22 = String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_161_1(v22, v23, v24, v25, v26);
        OUTLINED_FUNCTION_102_1();
        *(v19 + 4) = v15;
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      OUTLINED_FUNCTION_5_102();
      OUTLINED_FUNCTION_79_9();

      result = v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
      break;
  }

  return result;
}

uint64_t ScreenSharingInteractionSession.endRemoteControlSession()()
{
  OUTLINED_FUNCTION_24_0();
  v1[7] = v0;
  v2 = type metadata accessor for RemoteControlMessage(0);
  v1[8] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[9] = OUTLINED_FUNCTION_109_4();
  v3 = type metadata accessor for Participant();
  v1[10] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[11] = v4;
  v5 = OUTLINED_FUNCTION_109_4();
  v6 = OUTLINED_FUNCTION_166_1(v5);
  v7 = type metadata accessor for RemoteControlRequest(v6);
  OUTLINED_FUNCTION_22(v7);
  v1[13] = OUTLINED_FUNCTION_109_4();
  v8 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_1_131();
  outlined destroy of RemoteControlMessage(v5, v9);
  v10 = OUTLINED_FUNCTION_44_0();
  v11(v10);
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_162_0();

  OUTLINED_FUNCTION_5_102();

  return v0();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_162_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t ScreenSharingInteractionSession.endRemoteControlSession()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_116_0();
  v17 = v15[7];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v18 = *(v17 + 144);
  os_unfair_lock_lock((v18 + 24));
  v19 = *(v18 + 16);
  OUTLINED_FUNCTION_177_2();
  v20 = v19;
  switch(v19 >> 61)
  {
    case 2uLL:
    case 3uLL:
      goto LABEL_11;
    case 4uLL:
      v20 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (v20 >> 62 != 1)
      {
        goto LABEL_2;
      }

LABEL_11:
      v43 = v15[12];
      v42 = v15[13];
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
      v45 = swift_projectBox();
      v46 = *(v44 + 48);
      OUTLINED_FUNCTION_2_126();
      outlined init with copy of RemoteControlMessage(v47, v42);
      v48 = OUTLINED_FUNCTION_86_3();
      v49(v48);
      outlined consume of RemoteControlState(v19);
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_162();
        swift_once();
      }

      v50 = OUTLINED_FUNCTION_190_0();
      OUTLINED_FUNCTION_50_17(v50, &static Log.screenSharing);

      v51 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_72_12();

      if (OUTLINED_FUNCTION_112_2())
      {
        OUTLINED_FUNCTION_13_10();
        swift_slowAlloc();
        OUTLINED_FUNCTION_21_4();
        OUTLINED_FUNCTION_89_3();
        OUTLINED_FUNCTION_154_1(4.8149e-34);
        OUTLINED_FUNCTION_46_19();
        v15[6] = v46;
        v52 = String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_161_1(v52, v53, v54, v55, v56);
        OUTLINED_FUNCTION_102_1();
        *(v43 + 4) = v45;
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      v62 = v15[7];
      if (*(v62 + 104))
      {

        AnyCancellable.cancel()();

        v62 = v15[7];
      }

      if (*(v62 + 112))
      {

        AnyCancellable.cancel()();
      }

      v63 = v15[9];
      OUTLINED_FUNCTION_28_40();
      outlined init with take of RemoteControlResponse(v64, v63);
      OUTLINED_FUNCTION_44_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_38_4();
      v75 = v65 + 568;
      v76 = *(v65 + 568) + **(v65 + 568);
      v66 = swift_task_alloc();
      v15[14] = v66;
      *v66 = v15;
      v66[1] = ScreenSharingInteractionSession.endRemoteControlSession();
      OUTLINED_FUNCTION_71_10(v15[9]);
      OUTLINED_FUNCTION_79_9();

      result = v69(v67, v68, v69, v70, v71, v72, v73, v74, a9, v75, v76, a12, a13, a14);
      break;
    case 5uLL:
      goto LABEL_3;
    default:
LABEL_2:
      outlined consume of RemoteControlState(v19);
LABEL_3:
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_162();
        swift_once();
      }

      v21 = OUTLINED_FUNCTION_190_0();
      OUTLINED_FUNCTION_50_17(v21, &static Log.screenSharing);

      v22 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      OUTLINED_FUNCTION_72_12();

      if (OUTLINED_FUNCTION_112_2())
      {
        OUTLINED_FUNCTION_13_10();
        swift_slowAlloc();
        OUTLINED_FUNCTION_21_4();
        OUTLINED_FUNCTION_89_3();
        OUTLINED_FUNCTION_154_1(4.8149e-34);
        OUTLINED_FUNCTION_46_19();
        v15[5] = v16;
        v23 = String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_161_1(v23, v24, v25, v26, v27);
        OUTLINED_FUNCTION_102_1();
        *(v14 + 4) = v20;
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      OUTLINED_FUNCTION_162_0();

      OUTLINED_FUNCTION_5_102();
      OUTLINED_FUNCTION_79_9();

      result = v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
      break;
  }

  return result;
}

uint64_t ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)()
{
  OUTLINED_FUNCTION_24_0();
  v3 = v2;
  *(v1 + 64) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v4);
  *(v1 + 72) = OUTLINED_FUNCTION_109_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  *(v1 + 80) = v5;
  OUTLINED_FUNCTION_22(v5);
  *(v1 + 88) = OUTLINED_FUNCTION_109_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GMd);
  *(v1 + 96) = v6;
  OUTLINED_FUNCTION_22(v6);
  *(v1 + 104) = OUTLINED_FUNCTION_109_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AA9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GAIySb_GGMd);
  *(v1 + 112) = v7;
  OUTLINED_FUNCTION_9_0(v7);
  *(v1 + 120) = v8;
  *(v1 + 128) = *(v9 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_74();
  *(v1 + 144) = swift_task_alloc();
  v10 = type metadata accessor for RemoteControlMessage(0);
  *(v1 + 152) = v10;
  OUTLINED_FUNCTION_22(v10);
  *(v1 + 160) = OUTLINED_FUNCTION_109_4();
  v11 = type metadata accessor for RemoteControlSuspendRequest(0);
  *(v1 + 168) = v11;
  OUTLINED_FUNCTION_22(v11);
  *(v1 + 176) = OUTLINED_FUNCTION_109_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestVSgMd);
  OUTLINED_FUNCTION_22(v12);
  *(v1 + 184) = OUTLINED_FUNCTION_109_4();
  v13 = type metadata accessor for Participant();
  *(v1 + 192) = v13;
  OUTLINED_FUNCTION_9_0(v13);
  *(v1 + 200) = v14;
  *(v1 + 208) = OUTLINED_FUNCTION_74();
  *(v1 + 216) = swift_task_alloc();
  v15 = type metadata accessor for RemoteControlRequest(0);
  *(v1 + 224) = v15;
  OUTLINED_FUNCTION_22(v15);
  *(v1 + 232) = OUTLINED_FUNCTION_74();
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 280) = *v3;
  v16 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_1_131();
  outlined destroy of RemoteControlMessage(v5, v9);
  v10 = OUTLINED_FUNCTION_44_0();
  v11(v10);
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_36_3();
  a23 = v28;
  a24 = v29;
  a22 = v25;
  v30 = *(v25 + 64);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  os_unfair_lock_lock((*(v30 + 144) + 24));
  OUTLINED_FUNCTION_121_0();
  switch(v24 >> 61)
  {
    case 3uLL:
      v66 = *(v25 + 248);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
      swift_projectBox();
      OUTLINED_FUNCTION_2_126();
      outlined init with copy of RemoteControlMessage(v67, v66);
      v68 = OUTLINED_FUNCTION_86_3();
      v69(v68);
      v70 = 0;
      goto LABEL_20;
    case 4uLL:
      if (*((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61 == 3 && *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == 1)
      {
        v52 = *(v25 + 280);
        v53 = *(v25 + 240);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
        swift_projectBox();
        OUTLINED_FUNCTION_2_126();
        outlined init with copy of RemoteControlMessage(v54, v53);
        v55 = OUTLINED_FUNCTION_86_3();
        v56(v55);
        if (v52 != 1)
        {
          v124 = *(v25 + 208);
          v123 = *(v25 + 216);
          v125 = *(v25 + 192);
          v126 = *(v25 + 200);
          OUTLINED_FUNCTION_28_40();
          outlined init with take of RemoteControlResponse(v127, v128);
          (*(v126 + 32))(v123, v124, v125);
          v70 = 1;
LABEL_20:
          *(v25 + 281) = v70;
          outlined consume of RemoteControlState(v24);
          if (one-time initialization token for screenSharing != -1)
          {
            OUTLINED_FUNCTION_0_162();
            swift_once();
          }

          v71 = type metadata accessor for Logger();
          v72 = __swift_project_value_buffer(v71, &static Log.screenSharing);
          *(v25 + 256) = v72;
          OUTLINED_FUNCTION_2_126();
          v73 = OUTLINED_FUNCTION_38_2();
          outlined init with copy of RemoteControlMessage(v73, v74);
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.default.getter();
          v77 = OUTLINED_FUNCTION_22_0(v76);
          v78 = *(v25 + 232);
          if (v77)
          {
            v79 = *(v25 + 184);
            OUTLINED_FUNCTION_13_10();
            swift_slowAlloc();
            a13 = OUTLINED_FUNCTION_21_4();
            *v72 = 136315138;
            OUTLINED_FUNCTION_2_126();
            OUTLINED_FUNCTION_145_2();
            OUTLINED_FUNCTION_15_47();
            specialized >> prefix<A>(_:)();
            OUTLINED_FUNCTION_29_13();
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v79, &_s15ConversationKit20RemoteControlRequestVSgMd);
            OUTLINED_FUNCTION_3_123();
            outlined destroy of RemoteControlMessage(v78, v80);
            v81 = OUTLINED_FUNCTION_21_20();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v83);
            OUTLINED_FUNCTION_146_0();
            *(v72 + 4) = v78;
            OUTLINED_FUNCTION_112_0();
            _os_log_impl(v84, v85, v86, v87, v88, 0xCu);
            OUTLINED_FUNCTION_9_7();
            OUTLINED_FUNCTION_3_4();
            MEMORY[0x1BFB23DF0]();
          }

          else
          {

            OUTLINED_FUNCTION_3_123();
            outlined destroy of RemoteControlMessage(v78, v103);
          }

          v104 = *(v25 + 280);
          v105 = *(v25 + 248);
          v107 = *(v25 + 168);
          v106 = *(v25 + 176);
          v108 = *(v25 + 64);
          type metadata accessor for UUID();
          OUTLINED_FUNCTION_7_0();
          v109 = OUTLINED_FUNCTION_46();
          v110(v109);
          OUTLINED_FUNCTION_3_123();
          outlined destroy of RemoteControlMessage(v105, v111);
          Date.init()();
          *(v106 + *(v107 + 24)) = v104;
          v112 = OUTLINED_FUNCTION_44_0();
          outlined init with copy of RemoteControlMessage(v112, v113);
          OUTLINED_FUNCTION_316();
          swift_storeEnumTagMultiPayload();
          v131 = (*v108 + 568);
          v133 = *v131 + **v131;
          v114 = swift_task_alloc();
          *(v25 + 264) = v114;
          *v114 = v25;
          v114[1] = ScreenSharingInteractionSession.suspendRemoteControlSession(reason:);
          OUTLINED_FUNCTION_71_10(*(v25 + 160));
          OUTLINED_FUNCTION_12_4();

          return v117(v115, v116, v117, v118, v119, v120, v121, v122, a9, a10, v131, v133, a13, a14, a15, a16);
        }

        if (one-time initialization token for screenSharing != -1)
        {
          OUTLINED_FUNCTION_0_162();
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v57, &static Log.screenSharing);
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();
        v60 = os_log_type_enabled(v58, v59);
        v61 = *(v25 + 240);
        if (v60)
        {
          v62 = OUTLINED_FUNCTION_33();
          *v62 = 0;
          _os_log_impl(&dword_1BBC58000, v58, v59, "Remote control session is already suspended w/ deviceActivity.", v62, 2u);
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
        }

        v63 = OUTLINED_FUNCTION_32_2();
        v64(v63);
        OUTLINED_FUNCTION_3_123();
        outlined destroy of RemoteControlMessage(v61, v65);
      }

      else
      {
        if (one-time initialization token for screenSharing != -1)
        {
          OUTLINED_FUNCTION_0_162();
          swift_once();
        }

        v89 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v89, &static Log.screenSharing);

        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v90, v91))
        {
          OUTLINED_FUNCTION_13_10();
          v92 = swift_slowAlloc();
          OUTLINED_FUNCTION_12_0();
          v93 = swift_slowAlloc();
          a13 = v93;
          *v92 = 136315138;
          v94 = *(v30 + 144);
          os_unfair_lock_lock((v94 + 24));
          v95 = *(v94 + 16);
          outlined copy of RemoteControlState(v95);
          os_unfair_lock_unlock((v94 + 24));
          *(v25 + 56) = v95;
          v96 = String.init<A>(reflecting:)();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, &a13);
          OUTLINED_FUNCTION_420();
          *(v92 + 4) = v94;
          OUTLINED_FUNCTION_140();
          _os_log_impl(v98, v99, v100, v101, v102, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v93);
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
        }
      }

      outlined consume of RemoteControlState(v24);
LABEL_8:
      OUTLINED_FUNCTION_95_4();
      v129 = v42;
      v130 = v41;
      v132 = *(v25 + 72);

      OUTLINED_FUNCTION_5_102();
      OUTLINED_FUNCTION_12_4();

      return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, v129, v130, v132, a13, a14, a15, a16);
    case 5uLL:
      goto LABEL_3;
    default:
      outlined consume of RemoteControlState(v24);
LABEL_3:
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_162();
        swift_once();
      }

      v31 = *(v25 + 64);
      v32 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_50_17(v32, &static Log.screenSharing);

      v33 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      OUTLINED_FUNCTION_72_12();

      if (OUTLINED_FUNCTION_112_2())
      {
        OUTLINED_FUNCTION_13_10();
        swift_slowAlloc();
        a13 = OUTLINED_FUNCTION_21_4();
        OUTLINED_FUNCTION_154_1(4.8149e-34);
        OUTLINED_FUNCTION_46_19();
        *(v25 + 40) = v26;
        v34 = String.init<A>(reflecting:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &a13);
        OUTLINED_FUNCTION_102_1();
        *(v31 + 4) = v27;
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      goto LABEL_8;
  }
}

uint64_t ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_87_5();
  a25 = v29;
  a26 = v30;
  OUTLINED_FUNCTION_103_3();
  a24 = v27;
  v31 = *(v27 + 64);
  OUTLINED_FUNCTION_75_10();
  outlined destroy of RemoteControlMessage(v32, v33);
  os_unfair_lock_lock((*(v31 + 144) + 24));
  OUTLINED_FUNCTION_121_0();
  outlined consume of RemoteControlState(v26);
  if (v26 >> 61 == 4)
  {
    v34 = *(v27 + 281);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = OUTLINED_FUNCTION_22_0(v36);
    if (v34)
    {
      if (v37)
      {
        v38 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v38);
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v39, v40, v41, v42, v43, 2u);
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      goto LABEL_14;
    }

    if (v37)
    {
      v54 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v54);
      OUTLINED_FUNCTION_112_0();
      _os_log_impl(v55, v56, v57, v58, v59, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    v60 = *(v27 + 144);
    v61 = *(v27 + 120);
    v83 = *(v27 + 136);
    v85 = *(v27 + 128);
    a10 = *(v27 + 96);
    a11 = *(v27 + 72);
    v81 = *(v27 + 112);
    v62 = *(v27 + 64);

    OUTLINED_FUNCTION_0_1();
    (*(v63 + 128))();
    OUTLINED_FUNCTION_0_1();
    (*(v64 + 128))();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<DeviceInactivityObserver.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
    OUTLINED_FUNCTION_173_1();
    Publishers.CombineLatest.init(_:_:)();
    v65 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_111_5(v65);
    OUTLINED_FUNCTION_20();
    v66 = swift_allocObject();
    swift_weakInit();
    (*(v61 + 16))(v83, v60, v81);
    v67 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    *(v68 + 24) = 0;
    (*(v61 + 32))(v68 + v67, v83, v81);
    *(v68 + ((v85 + v67 + 7) & 0xFFFFFFFFFFFFFFF8)) = v66;
    OUTLINED_FUNCTION_59();
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
    OUTLINED_FUNCTION_24_1();
    type metadata accessor for AnyCancellable();
    OUTLINED_FUNCTION_84();
    v69 = AnyCancellable.init(_:)();
    (*(v61 + 8))(v60, v81);
    *(v62 + 112) = v69;
LABEL_13:

    goto LABEL_14;
  }

  v44 = *(v27 + 64);

  v45 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_72_12();

  if (OUTLINED_FUNCTION_112_2())
  {
    v46 = *(v27 + 64);
    OUTLINED_FUNCTION_13_10();
    swift_slowAlloc();
    a15 = OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_153_1(4.8149e-34);
    OUTLINED_FUNCTION_46_19();
    *(v27 + 48) = v46;
    v47 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &a15);
    OUTLINED_FUNCTION_102_1();
    *(v44 + 4) = v28;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  if (*(*(v27 + 64) + 112))
  {

    AnyCancellable.cancel()();
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_95_4();
  v82 = v71;
  v84 = v70;
  v86 = *(v27 + 72);

  OUTLINED_FUNCTION_5_102();
  OUTLINED_FUNCTION_63_11();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, v82, v84, v86, a15, a16, a17, a18);
}

uint64_t ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_36_3();
  v17 = v16[22];
  v28 = v16[17];
  v29 = v16[13];
  v30 = v16[11];
  v31 = v16[9];
  OUTLINED_FUNCTION_75_10();
  outlined destroy of RemoteControlMessage(v17, v18);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_4();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28, v29, v30, v31, a14, a15, a16);
}

uint64_t closure #1 in ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAKySb_GGGMd);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAMySb_GG_GMd);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingInteractionSession.suspendRemoteControlSession(reason:), 0, 0);
}

uint64_t closure #1 in ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_172_0();
  v1 = OUTLINED_FUNCTION_43_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  v3 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Published<DeviceInactivityObserver.State>.Publisher, Published<Bool>.Publisher> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AA9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GAIySb_GGMd);
  MEMORY[0x1BFB1DE80](v2, v3);
  OUTLINED_FUNCTION_90_5();
  AsyncPublisher.makeAsyncIterator()();
  v4 = OUTLINED_FUNCTION_316();
  v5(v4);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Publishers.CombineLatest<Published<DeviceInactivityObserver.State>.Publisher, Published<Bool>.Publisher>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAMySb_GG_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 112) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_20_42(v6);
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE6D8C8](v8);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  *(v0 + 152) = *(v0 + 154);
  return OUTLINED_FUNCTION_7_82(closure #1 in ScreenSharingInteractionSession.suspendRemoteControlSession(reason:));
}

{
  OUTLINED_FUNCTION_44();
  v2 = *(v1 + 152);
  if ((v2 & 0xFF00) == 0x200 || (Strong = swift_weakLoadStrong(), (*(v1 + 128) = Strong) == 0))
  {
    (*(*(v1 + 96) + 8))(*(v1 + 104), *(v1 + 88));

    OUTLINED_FUNCTION_5_102();
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X1, X16 }
  }

  if (!*(v1 + 152))
  {
    if ((v2 & 0x100) == 0)
    {
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_162();
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v11, &static Log.screenSharing);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_163(v13))
      {
        v14 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_182_0(v14);
        OUTLINED_FUNCTION_140();
        _os_log_impl(v15, v16, v17, v18, v19, 2u);
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      v20 = swift_task_alloc();
      v21 = OUTLINED_FUNCTION_119_2(v20);
      *v21 = v22;
      OUTLINED_FUNCTION_130(v21);
      OUTLINED_FUNCTION_183_1();

      __asm { BRAA            X0, X16 }
    }

    goto LABEL_25;
  }

  if (*(v1 + 152) == 1)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v4, &static Log.screenSharing);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v6))
    {
      v7 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v7);
      v8 = "User is currently controlling their device, will wait before resuming remote control";
LABEL_29:
      _os_log_impl(&dword_1BBC58000, v5, v6, v8, v0, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if ((v2 & 0x100) != 0)
  {
LABEL_25:
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v27, &static Log.screenSharing);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v6))
    {
      v28 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v28);
      v8 = "Waiting for user to navigate away from hidden layers before resuming remote control";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v25, &static Log.screenSharing);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v6))
  {
    v26 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v26);
    v8 = "Waiting for device inactivity state to update before resuming remote control";
    goto LABEL_29;
  }

LABEL_30:

  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Publishers.CombineLatest<Published<DeviceInactivityObserver.State>.Publisher, Published<Bool>.Publisher>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAMySb_GG_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v1 + 112) = v29;
  *v29 = v30;
  OUTLINED_FUNCTION_20_42();
  OUTLINED_FUNCTION_183_1();

  return MEMORY[0x1EEE6D8C8](v31);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 40) = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x1E69E73E0];
  v2 = OUTLINED_FUNCTION_31_9();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Publishers.CombineLatest<Published<DeviceInactivityObserver.State>.Publisher, Published<Bool>.Publisher>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAMySb_GG_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 112) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_20_42();

  return MEMORY[0x1EEE6D8C8](v3);
}

{
  OUTLINED_FUNCTION_9();

  v0 = OUTLINED_FUNCTION_38_2();
  v1(v0);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t ScreenSharingInteractionSession.resumeRemoteControlSession()()
{
  OUTLINED_FUNCTION_24_0();
  v1[7] = v0;
  v2 = type metadata accessor for RemoteControlMessage(0);
  v1[8] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[9] = OUTLINED_FUNCTION_109_4();
  v3 = type metadata accessor for Participant();
  v1[10] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[11] = v4;
  v5 = OUTLINED_FUNCTION_109_4();
  v6 = OUTLINED_FUNCTION_166_1(v5);
  v7 = type metadata accessor for RemoteControlRequest(v6);
  OUTLINED_FUNCTION_22(v7);
  v1[13] = OUTLINED_FUNCTION_109_4();
  v8 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_1_131();
  outlined destroy of RemoteControlMessage(v5, v9);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[13];
  v2 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  OUTLINED_FUNCTION_3_123();
  outlined destroy of RemoteControlMessage(v1, v3);
  outlined consume of RemoteControlState(v2);
  OUTLINED_FUNCTION_162_0();

  OUTLINED_FUNCTION_5_102();

  return v4();
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[13];
  v2 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  OUTLINED_FUNCTION_3_123();
  outlined destroy of RemoteControlMessage(v1, v3);
  outlined consume of RemoteControlState(v2);

  OUTLINED_FUNCTION_13();

  return v4();
}