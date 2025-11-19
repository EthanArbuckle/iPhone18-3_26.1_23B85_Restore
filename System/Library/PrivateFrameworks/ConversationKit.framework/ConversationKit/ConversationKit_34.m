id InCallControlsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton;
  type metadata accessor for InCallControlButton();
  v48 = &type metadata for SymbolImageDescribers.DrawerDisc;
  v49 = &protocol witness table for SymbolImageDescribers.DrawerDisc;
  v47[0] = 1;
  v2 = objc_opt_self();
  v3 = [v2 conversationKit];
  v50._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v4._object = 0x80000001BC504C00;
  v4._countAndFlagsBits = 0xD000000000000018;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v6, v3, v5, v50);

  *(v0 + v1) = OUTLINED_FUNCTION_3_96(0, v47, v7._countAndFlagsBits, v7._object, v8, v9, v10, v11, 1, 0);
  v12 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_flipCameraButton;
  v48 = &type metadata for SymbolImageDescribers.DrawerDisc;
  v49 = &protocol witness table for SymbolImageDescribers.DrawerDisc;
  v47[0] = 0;
  v13 = [v2 conversationKit];
  v14 = OUTLINED_FUNCTION_12_49(0xD000000000000019);
  v16 = v15;

  *(v0 + v12) = OUTLINED_FUNCTION_3_96(0, v47, v14, v16, v17, v18, v19, v20, 1, 0);
  v21 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveButton;
  v48 = &type metadata for SymbolImageDescribers.DrawerDisc;
  v49 = &protocol witness table for SymbolImageDescribers.DrawerDisc;
  v47[0] = 4;
  v22 = [v2 conversationKit];
  v23 = OUTLINED_FUNCTION_12_49(0xD000000000000016);
  v25 = v24;

  *(v0 + v21) = OUTLINED_FUNCTION_3_96(3, v47, v23, v25, v26, v27, v28, v29, 1, 0);
  v30 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_screenShareButton;
  v48 = &type metadata for SymbolImageDescribers.DrawerDisc;
  v49 = &protocol witness table for SymbolImageDescribers.DrawerDisc;
  v47[0] = 5;
  v31 = [v2 conversationKit];
  v51._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v31, v32, v51);

  *(v0 + v30) = OUTLINED_FUNCTION_3_96(0, v47, v35._countAndFlagsBits, v35._object, v36, v37, v38, v39, 1, 0);
  v40 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCinematicFramingButton;
  v48 = &type metadata for SymbolImageDescribers.DrawerPill;
  v49 = &protocol witness table for SymbolImageDescribers.DrawerPill;
  v47[0] = 1;
  String.localizedHidden.getter();
  OUTLINED_FUNCTION_21_1();
  *(v0 + v40) = OUTLINED_FUNCTION_3_96(5, v47, v41, v42, v43, v44, v45, v46, 1, 0);
  *(v0 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration) = 2;
  OUTLINED_FUNCTION_29_20();
  __break(1u);
}

Swift::Void __swiftcall InCallControlsView.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow];
  if (*(v2 + 16))
  {
    v3 = ObjectType;
    v4 = specialized Array.count.getter(*(v2 + 32));
    [v0 bounds];
    v6 = v5;
    v7 = *&v0[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonLabelWidthConstraints];
    v8 = specialized Array.count.getter(v7);
    if (!v8)
    {
LABEL_9:
      v14.receiver = v0;
      v14.super_class = v3;
      objc_msgSendSuper2(&v14, sel_layoutSubviews);
      return;
    }

    v9 = v8;
    if (v8 >= 1)
    {
      v10 = 0;
      v11 = (v6 + v4 * -10.0 + -10.0) / v4;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1BFB22010](v10, v7);
        }

        else
        {
          v12 = *(v7 + 8 * v10 + 32);
        }

        v13 = v12;
        ++v10;
        [v12 setConstant_];
      }

      while (v9 != v10);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id InCallControlsView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InCallControlsView.menu(for:)(void *a1)
{
  type metadata accessor for InCallControlButton();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource;
  OUTLINED_FUNCTION_4_0();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v6 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 8);
  v9 = a1;
  v10 = v8(v1, v4, ObjectType, v6);
  swift_unknownObjectRelease();

  return v10;
}

unint64_t lazy protocol witness table accessor for type [UILayoutGuide] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UILayoutGuide] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UILayoutGuide] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13UILayoutGuideCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UILayoutGuide] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InCallControlsView.JoinLeaveConfiguration and conformance InCallControlsView.JoinLeaveConfiguration()
{
  result = lazy protocol witness table cache variable for type InCallControlsView.JoinLeaveConfiguration and conformance InCallControlsView.JoinLeaveConfiguration;
  if (!lazy protocol witness table cache variable for type InCallControlsView.JoinLeaveConfiguration and conformance InCallControlsView.JoinLeaveConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsView.JoinLeaveConfiguration and conformance InCallControlsView.JoinLeaveConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InCallControlsView.ConfigurationCapabilities and conformance InCallControlsView.ConfigurationCapabilities()
{
  result = lazy protocol witness table cache variable for type InCallControlsView.ConfigurationCapabilities and conformance InCallControlsView.ConfigurationCapabilities;
  if (!lazy protocol witness table cache variable for type InCallControlsView.ConfigurationCapabilities and conformance InCallControlsView.ConfigurationCapabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsView.ConfigurationCapabilities and conformance InCallControlsView.ConfigurationCapabilities);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InCallControlsView.JoinLeaveConfiguration(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for InCallControlsView.ConfigurationCapabilities(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Bool __swiftcall CNContactStore.hasImage(forContactId:)(Swift::String forContactId)
{
  v2 = v1;
  object = forContactId._object;
  countAndFlagsBits = forContactId._countAndFlagsBits;
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1BFB209B0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BAC30;
  v7 = *MEMORY[0x1E695C270];
  *(v6 + 32) = *MEMORY[0x1E695C270];
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25[0] = 0;
  v10 = [v2 unifiedContactWithIdentifier:v5 keysToFetch:isa error:v25];

  if (v10)
  {
    v11 = v25[0];
    v12 = [v10 imageDataAvailable];
  }

  else
  {
    v13 = v25[0];
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationKit);

    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[0] = v21;
      *v19 = 141558531;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2085;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v25);
      *(v19 + 22) = 2112;
      v22 = v14;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v23;
      *v20 = v23;
      _os_log_impl(&dword_1BBC58000, v17, v18, "Error trying to fetch backing contact for identifier %{sensitive,mask.hash}s: %@", v19, 0x20u);
      outlined destroy of NSObject?(v20);
      OUTLINED_FUNCTION_27();
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }

    return 0;
  }

  return v12;
}

id static CNContactStore.authorizationStatus.getter()
{
  v0 = objc_opt_self();

  return [v0 authorizationStatusForEntityType_];
}

uint64_t CNContactStore.contactsByContactHandle(for:keyDescriptors:)(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v2 = v1;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContactFetchRequest);

    v4.super.super.isa = CNContactFetchRequest.__allocating_init(keysToFetch:)(v3).super.super.isa;
    v5 = objc_opt_self();
    v6 = MEMORY[0x1E69E6158];
    isa = Array._bridgeToObjectiveC()().super.isa;
    v8 = [v5 predicateForContactsMatchingHandleStrings_];

    [(objc_class *)v4.super.super.isa setPredicate:v8];
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.conversationKit);
    v10 = v4.super.super.isa;
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138478083;
      *(v14 + 4) = v10;
      *(v14 + 12) = 2113;
      *(v14 + 14) = v11;
      *v15 = v10;
      v15[1] = v11;
      v16 = v10;
      v17 = v11;
      _os_log_impl(&dword_1BBC58000, v12, v13, "Executing contact fetch request %{private}@ using contact store %{private}@", v14, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v31[0] = 0;
    v18 = [v11 executeFetchRequest:v10 error:v31];
    if (v18)
    {
      v19 = v18;
      v20 = v31[0];
      v31[0] = [v19 value];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySo9CNContactCGGMd);
      if (swift_dynamicCast())
      {

        return v30;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd);
        v21 = Dictionary.init(dictionaryLiteral:)();
      }
    }

    else
    {
      v23 = v31[0];
      v24 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1BC4BA940;
      v31[0] = v24;
      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v27 = String.init<A>(reflecting:)();
      v29 = v28;
      *(v25 + 56) = v6;
      *(v25 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v25 + 32) = v27;
      *(v25 + 40) = v29;
      os_log(_:dso:log:type:_:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd);
      v21 = Dictionary.init(dictionaryLiteral:)();
    }

    return v21;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd);

    return Dictionary.init(dictionaryLiteral:)();
  }
}

CNContactFetchRequest __swiftcall CNContactFetchRequest.__allocating_init(keysToFetch:)(Swift::OpaquePointer keysToFetch)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithKeysToFetch_];

  return v3;
}

Class @objc CNContactStore.contactsByContactHandle(for:keyDescriptors:)(void *a1)
{
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = a1;
  CNContactStore.contactsByContactHandle(for:keyDescriptors:)(v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd);
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

uint64_t CNContactStore.contactsByHandle(for:keyDescriptors:)(uint64_t a1)
{
  v1 = a1;
  v102 = specialized Array.count.getter(a1);
  if (!v102)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();

    return Dictionary.init(dictionaryLiteral:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8TUHandleCGMd);
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = 0;
  v100 = v1 & 0xC000000000000001;
  v93 = v1 + 32;
  v95 = v1 & 0xFFFFFFFFFFFFFF8;
  v98 = v1;
  do
  {
    if (v100)
    {
      v4 = MEMORY[0x1BFB22010](v3, v1);
    }

    else
    {
      if (v3 >= *(v95 + 16))
      {
        goto LABEL_83;
      }

      v4 = *(v93 + 8 * v3);
    }

    v111 = v4;
    v5 = __OFADD__(v3, 1);
    v6 = v3 + 1;
    if (v5)
    {
      goto LABEL_81;
    }

    v106 = v6;
    v7 = CNContactStore.contactHandles(for:)(v4);
    v8 = v7;
    v109 = *(v7 + 16);
    if (v109)
    {
      v9 = 0;
      v10 = (v7 + 40);
      v107 = v7;
      do
      {
        if (v9 >= *(v8 + 16))
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          while (1)
          {
LABEL_88:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
          }
        }

        v12 = *(v10 - 1);
        v11 = *v10;
        v13 = v2[2];

        if (v13 && (v14 = OUTLINED_FUNCTION_2_100(), v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15), (v17 & 1) != 0))
        {
          v113 = *(v2[7] + 8 * v16);

          v18 = v111;
          MEMORY[0x1BFB20CC0]();
          if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = OUTLINED_FUNCTION_2_100();
          specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
          OUTLINED_FUNCTION_4_85();
          if (v5)
          {
            goto LABEL_79;
          }

          v24 = v22;
          v25 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSaySo8TUHandleCGGMd);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v2))
          {
            v26 = OUTLINED_FUNCTION_2_100();
            v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
            if ((v25 & 1) != (v29 & 1))
            {
              goto LABEL_88;
            }

            v24 = v28;
          }

          if ((v25 & 1) == 0)
          {
            OUTLINED_FUNCTION_1_103(&v2[v24 >> 6]);
            v46 = (v2[6] + 16 * v24);
            *v46 = v12;
            v46[1] = v11;
            *(v2[7] + 8 * v24) = v113;
            v47 = v2[2];
            v5 = __OFADD__(v47, 1);
            v45 = v47 + 1;
            if (v5)
            {
              goto LABEL_80;
            }

            goto LABEL_32;
          }

          *(v2[7] + 8 * v24) = v113;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1BC4BAC30;
          *(v30 + 32) = v111;
          v31 = v111;
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v33 = OUTLINED_FUNCTION_2_100();
          specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
          OUTLINED_FUNCTION_4_85();
          if (v5)
          {
            goto LABEL_77;
          }

          v37 = v35;
          v38 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSaySo8TUHandleCGGMd);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v32, v2))
          {
            v39 = OUTLINED_FUNCTION_2_100();
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
            if ((v38 & 1) != (v42 & 1))
            {
              goto LABEL_88;
            }

            v37 = v41;
          }

          if ((v38 & 1) == 0)
          {
            OUTLINED_FUNCTION_1_103(&v2[v37 >> 6]);
            v43 = (v2[6] + 16 * v37);
            *v43 = v12;
            v43[1] = v11;
            *(v2[7] + 8 * v37) = v30;
            v44 = v2[2];
            v5 = __OFADD__(v44, 1);
            v45 = v44 + 1;
            if (v5)
            {
              goto LABEL_78;
            }

LABEL_32:
            v2[2] = v45;
            goto LABEL_33;
          }

          *(v2[7] + 8 * v37) = v30;
        }

LABEL_33:
        v8 = v107;
        ++v9;
        v10 += 2;
      }

      while (v109 != v9);
    }

    v3 = v106;
    v1 = v98;
  }

  while (v106 != v102);
  v48 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v49 = Dictionary.init(dictionaryLiteral:)();

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSaySo8TUHandleCG_GTt0g5(v50);
  isa = Array._bridgeToObjectiveC()().super.isa;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  v52 = Array._bridgeToObjectiveC()().super.isa;
  v53 = [v104 contactsByContactHandleForContactHandles:isa keyDescriptors:v52];

  v54 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54 + 64;
  v56 = 1 << *(v54 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v54 + 64);
  v59 = (v56 + 63) >> 6;

  v60 = 0;
  while (v58)
  {
    v61 = v58;
LABEL_44:
    v58 = (v61 - 1) & v61;
    if (v2[2])
    {
      v63 = (*(v54 + 48) + ((v60 << 10) | (16 * __clz(__rbit64(v61)))));
      v64 = *v63;
      v65 = v63[1];

      v110 = v64;
      v66 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v65);
      if ((v67 & 1) == 0)
      {
        goto LABEL_48;
      }

      v68 = *(v2[7] + 8 * v66);
      if (v68 >> 62)
      {
        v69 = __CocoaSet.count.getter();
        if (!v69)
        {
LABEL_48:

          continue;
        }
      }

      else
      {
        v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v69)
        {
          goto LABEL_48;
        }
      }

      v105 = (v68 & 0xC000000000000001);
      v90 = v48;
      v91 = v68 & 0xFFFFFFFFFFFFFF8;
      v99 = v69;

      v70 = 0;
      v101 = v68;
      v103 = v54;
      do
      {
        if (v105)
        {
          v71 = MEMORY[0x1BFB22010](v70, v68);
        }

        else
        {
          if (v70 >= *(v91 + 16))
          {
            goto LABEL_85;
          }

          v71 = *(v68 + 8 * v70 + 32);
        }

        if (__OFADD__(v70, 1))
        {
          goto LABEL_84;
        }

        v108 = v70 + 1;
        v112 = v71;
        if (*(v54 + 16) && (v72 = specialized __RawDictionaryStorage.find<A>(_:)(v110, v65), (v73 & 1) != 0))
        {
          *v96 = *(*(v54 + 56) + 8 * v72);

          isUnique = swift_isUniquelyReferenced_nonNull_native();
          v114 = v49;
          v74 = specialized __RawDictionaryStorage.find<A>(_:)();
          v75 = *(v49 + 16);
          v94 = v76;
          v77 = (v76 & 1) == 0;
          v78 = v75 + v77;
          if (__OFADD__(v75, v77))
          {
            goto LABEL_86;
          }

          v79 = v74;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySo8TUHandleCSaySo9CNContactCGGMd);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v78))
          {
            v80 = specialized __RawDictionaryStorage.find<A>(_:)();
            v82 = v94;
            if ((v94 & 1) != (v81 & 1))
            {
              goto LABEL_88;
            }

            v79 = v80;
          }

          else
          {
            v82 = v94;
          }

          v49 = v114;
          if (v82)
          {
            *(v114[7] + 8 * v79) = *v96;
          }

          else
          {
            OUTLINED_FUNCTION_1_103(&v114[v79 >> 6]);
            *(v114[6] + 8 * v79) = v112;
            *(v114[7] + 8 * v79) = *v96;
            v87 = v114[2];
            v5 = __OFADD__(v87, 1);
            v88 = v87 + 1;
            if (v5)
            {
              goto LABEL_87;
            }

            v114[2] = v88;
          }
        }

        else
        {
          v83 = specialized __RawDictionaryStorage.find<A>(_:)();
          if (v84)
          {
            v85 = v83;
            v97 = swift_isUniquelyReferenced_nonNull_native();
            v115 = v49;
            v86 = *(v49 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySo8TUHandleCSaySo9CNContactCGGMd);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v97, v86);
            v49 = v115;

            _NativeDictionary._delete(at:)();
          }
        }

        v68 = v101;
        v54 = v103;
        ++v70;
      }

      while (v108 != v99);

      v48 = v90;
    }
  }

  while (1)
  {
    v62 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_82;
    }

    if (v62 >= v59)
    {
      break;
    }

    v61 = *(v55 + 8 * v62);
    ++v60;
    if (v61)
    {
      v60 = v62;
      goto LABEL_44;
    }
  }

  return v49;
}

uint64_t CNContactStore.contactHandles(for:)(void *a1)
{
  v12 = MEMORY[0x1E69E7CD0];
  v2 = [a1 value];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    specialized Set._Variant.insert(_:)(v11, v3, v5);
  }

  v7 = outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(a1);
  if (v8)
  {
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      specialized Set._Variant.insert(_:)(v11, v7, v8);
    }
  }

  return _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5();
}

Class @objc CNContactStore.contactsByHandle(for:keyDescriptors:)(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = a1;
  CNContactStore.contactsByHandle(for:keyDescriptors:)(v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

uint64_t ParticipantListViewConstraintManager.__allocating_init(containingGuide:rosterView:controlsView:type:bannerLayoutGuide:rosterCellLayoutGuide:gridView:)(void *a1, void *a2, void *a3, char a4, void *a5, void *a6, void *a7)
{
  v14 = swift_allocObject();
  ParticipantListViewConstraintManager.init(containingGuide:rosterView:controlsView:type:bannerLayoutGuide:rosterCellLayoutGuide:gridView:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

Swift::Int ParticipantListViewConstraintManager.ParticipantListLayoutType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantListViewConstraintManager.ParticipantListLayoutType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ParticipantListViewConstraintManager.ParticipantListLayoutType.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t ParticipantListViewConstraintManager.type.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
  return ParticipantListViewConstraintManager.updateConstraints()();
}

uint64_t (*ParticipantListViewConstraintManager.type.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ParticipantListViewConstraintManager.type.modify;
}

uint64_t ParticipantListViewConstraintManager.type.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return ParticipantListViewConstraintManager.updateConstraints()();
  }

  return result;
}

void *ParticipantListViewConstraintManager.init(containingGuide:rosterView:controlsView:type:bannerLayoutGuide:rosterCellLayoutGuide:gridView:)(void *a1, id a2, void *a3, char a4, void *a5, void *a6, void *a7)
{
  v8 = v7;
  *(v7 + 96) = MEMORY[0x1E69E7CC0];
  *(v7 + 104) = a4;
  v13 = [a2 leadingAnchor];
  v88 = a5;
  v14 = [a5 trailingAnchor];
  Layout.MultiwayFaceTime.init()(v90);
  v15 = OUTLINED_FUNCTION_2_52();
  v17 = [v15 v16];

  v8[2] = v17;
  v18 = objc_opt_self();
  v19 = [v18 currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_0();
  if (static AmbientState.isPresented != 1)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    v21 = [a2 leadingAnchor];
    v22 = [a1 leadingAnchor];
    static Layout.Roster.iOS.getter(v96);
    v23 = v98;
    static Layout.Roster.iOS.getter(v91);
    v24 = v23 + v92;
  }

  else
  {
LABEL_7:
    Layout.MultiwayFaceTime.init()(v91);
    v25 = v93;
    static Layout.Roster.iOS.getter(v94);
    v26 = v25 + v95;
    static Layout.Roster.iOS.getter(v96);
    v27 = v26 + v97;
    v21 = [a2 leadingAnchor];
    v22 = [a1 leadingAnchor];
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v28 = Features.isICUIRedesignEnabled.getter();
    v24 = 0.0;
    if (v28)
    {
      v24 = v27;
    }
  }

  v29 = [v21 constraintEqualToAnchor:v22 constant:v24];

  v8[3] = v29;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v30 = Features.isICUIRedesignEnabled.getter();
  v31 = [a2 trailingAnchor];
  if (v30)
  {
    v32 = [a1 trailingAnchor];
    Layout.MultiwayFaceTime.init()(v99);
    v33 = [v31 constraintEqualToAnchor:v32 constant:-v100];

    v8[4] = v33;
    v34 = [a2 topAnchor];
    v35 = [a7 bottomAnchor];
    v36 = [v18 currentDevice];
    v37 = [v36 userInterfaceIdiom];

    if (v37 || (OUTLINED_FUNCTION_4_0(), static AmbientState.isPresented != 1) || (v38 = Features.isICUIRedesignEnabled.getter(), v39 = 10.0, (v38 & 1) == 0))
    {
      v39 = 16.0;
    }

    v40 = [v34 constraintEqualToAnchor:v35 constant:v39];

    v8[5] = v40;
    v41 = [a2 bottomAnchor];
    v42 = [a1 bottomAnchor];
    Layout.MultiwayFaceTime.init()(v101);
    v43 = [v41 constraintEqualToAnchor:v42 constant:-v103];

    v8[6] = v43;
    v44 = [a2 heightAnchor];
    v45 = [a6 heightAnchor];
    v46 = [v18 currentDevice];
    v47 = [v46 userInterfaceIdiom];

    v48 = 0.0;
    if (v47)
    {
      v49 = &selRef_isRecordingAllowed;
      v50 = &off_1E7FE9000;
    }

    else
    {
      OUTLINED_FUNCTION_4_0();
      v50 = &off_1E7FE9000;
      if (static AmbientState.isPresented == 1)
      {
        v49 = &selRef_isRecordingAllowed;
        if (Features.isICUIRedesignEnabled.getter())
        {
          static Layout.Roster.iOS.getter(v104);
          v48 = v105;
        }
      }

      else
      {
        v49 = &selRef_isRecordingAllowed;
      }
    }

    v64 = [v44 v49[96]];
    v54 = a1;
  }

  else
  {
    v51 = [a6 leadingAnchor];
    v52 = [v31 constraintEqualToAnchor_];

    v8[4] = v52;
    v53 = [a2 topAnchor];
    v54 = a1;
    v55 = [a1 topAnchor];
    static Layout.Roster.iOS.getter(v104);
    v56 = OUTLINED_FUNCTION_2_52();
    v58 = [v56 v57];

    v8[5] = v58;
    v59 = [a2 bottomAnchor];
    v60 = [a1 bottomAnchor];
    static Layout.Roster.iOS.getter(v99);
    v61 = OUTLINED_FUNCTION_2_52();
    v63 = [v61 v62];

    v8[6] = v63;
    v44 = [a2 heightAnchor];
    v45 = [a6 heightAnchor];
    static Layout.Roster.iOS.getter(v101);
    v64 = [v44 constraintEqualToAnchor:v45 constant:v102];
    v50 = &off_1E7FE9000;
  }

  v65 = v64;

  v8[7] = v65;
  v66 = [a2 v50[476]];
  v67 = [v54 v50[476]];
  static Layout.Roster.iOS.getter(v107);
  v68 = OUTLINED_FUNCTION_2_52();
  v70 = [v68 v69];

  v8[8] = v70;
  v71 = [a2 leadingAnchor];
  v72 = [a6 leadingAnchor];
  v73 = OUTLINED_FUNCTION_2_52();
  v75 = [v73 v74];

  v8[9] = v75;
  v76 = [a2 trailingAnchor];
  v77 = [a6 trailingAnchor];
  v78 = OUTLINED_FUNCTION_2_52();
  v80 = [v78 v79];

  v8[10] = v80;
  v81 = [a2 bottomAnchor];
  v82 = [v54 bottomAnchor];
  static Layout.Roster.iOS.getter(v108);
  v83 = OUTLINED_FUNCTION_2_52();
  v85 = [v83 v84];

  v8[11] = v85;
  ParticipantListViewConstraintManager.updateConstraints()();

  return v8;
}

uint64_t ParticipantListViewConstraintManager.updateConstraints()()
{
  v1 = v0;
  v2 = (*(*v0 + 200))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  v4 = v3;
  *(v3 + 16) = xmmword_1BC4BA7F0;
  if (!v2)
  {
    v12 = *(v1 + 16);
    v13 = *(v1 + 32);
    *(v3 + 32) = v12;
    *(v3 + 40) = v13;
    v14 = *(v1 + 48);
    v15 = *(v1 + 56);
    *(v3 + 48) = v14;
    *(v3 + 56) = v15;
    OUTLINED_FUNCTION_2_101();
    *(v1 + 96) = v4;
    v16 = v12;
    v17 = v13;
    v18 = v14;
LABEL_9:
    v25 = v15;
  }

  if (v2 != 1)
  {
    v19 = *(v1 + 80);
    v20 = *(v1 + 88);
    v15 = *(v1 + 64);
    v21 = *(v1 + 72);
    *(v3 + 32) = v21;
    *(v3 + 40) = v19;
    *(v3 + 48) = v20;
    *(v3 + 56) = v15;
    OUTLINED_FUNCTION_2_101();
    *(v1 + 96) = v4;
    v22 = v21;
    v23 = v19;
    v24 = v20;
    goto LABEL_9;
  }

  v26 = *(v1 + 24);
  v27 = *(v1 + 48);
  *(v3 + 32) = v26;
  *(v3 + 48) = v27;
  OUTLINED_FUNCTION_2_101();
  *(v1 + 96) = v4;
  v5 = v26;
  v6 = *(&v26 + 1);
  v7 = v27;
  v8 = *(&v27 + 1);

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  result = Features.isICUIRedesignEnabled.getter();
  if (result)
  {
    v10 = *(v1 + 40);
    swift_beginAccess();
    v11 = v10;
    MEMORY[0x1BFB20CC0]();
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((*(v1 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return swift_endAccess();
  }

  return result;
}

uint64_t ParticipantListViewConstraintManager.__deallocating_deinit()
{
  ParticipantListViewConstraintManager.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ParticipantListViewConstraintManager.ParticipantListLayoutType and conformance ParticipantListViewConstraintManager.ParticipantListLayoutType()
{
  result = lazy protocol witness table cache variable for type ParticipantListViewConstraintManager.ParticipantListLayoutType and conformance ParticipantListViewConstraintManager.ParticipantListLayoutType;
  if (!lazy protocol witness table cache variable for type ParticipantListViewConstraintManager.ParticipantListLayoutType and conformance ParticipantListViewConstraintManager.ParticipantListLayoutType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantListViewConstraintManager.ParticipantListLayoutType and conformance ParticipantListViewConstraintManager.ParticipantListLayoutType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ParticipantListViewConstraintManager.ParticipantListLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ActivityType.iconSymbolName.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
    case 2:
      result = 6516580;
      break;
    case 3:
      result = OUTLINED_FUNCTION_5_80();
      break;
    case 4:
      result = 0x76742E79616C70;
      break;
    case 5:
      result = 0x722E657275676966;
      break;
    case 6:
    case 0xD:
      result = 0xD000000000000028;
      break;
    case 7:
      result = 0x74656B636F72;
      break;
    case 8:
      result = 6775138;
      break;
    case 9:
      result = 1802465122;
      break;
    case 0xA:
      result = 0x65626F6C67;
      break;
    case 0xB:
      result = 0x65762E736B6F6F62;
      break;
    case 0xC:
      result = 0x656C626269726373;
      break;
    default:
      return result;
  }

  return result;
}

id TUConversationActivitySession.originator.getter()
{
  v1 = [v0 activity];
  v2 = [v1 originator];

  return v2;
}

uint64_t TUConversationActivitySession.concatenatedDescription.getter()
{
  v1 = [v0 activity];
  v2 = [v1 concatenatedDescription];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t TUConversationActivitySession.uniqueIdentifier.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = UUID.uuidString.getter();
  (*(v2 + 8))(v4, v1);
  return v6;
}

id UIImage.activityTinted.getter()
{
  v1 = [objc_opt_self() lightGrayColor];
  v2 = [v0 imageWithTintColor:v1 renderingMode:1];

  return v2;
}

void one-time initialization function for watchTogether(uint64_t a1, char a2, void *a3)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  SymbolImageDescribers.ConversationActivityIcon.symbolImageDescription.getter(a2);
  v5 = static UIImage.symbolImage(for:)(v7);
  outlined destroy of SymbolImageDescription(v7);
  if (v5)
  {
    v6 = UIImage.activityTinted.getter();
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

id one-time initialization function for watchTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(0x76742E79616C70, 0xE700000000000000);
  static ActivityType.Icon.watchTogether = result;
  return result;
}

id one-time initialization function for listenTogether()
{
  v0 = OUTLINED_FUNCTION_5_80();
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(v0, v1);
  static ActivityType.Icon.listenTogether = result;
  return result;
}

id closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v4 = *MEMORY[0x1E69DDD80];
  v8[64] = 0;
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = 1;
  v9[3] = v4;
  v10 = 0;
  v11 = 4;
  v12 = 0;
  v13 = 0;
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = 1;
  v14[3] = v4;
  v15 = 0;
  v16 = 4;
  v17 = 0;
  v18 = 0;
  v5 = v4;
  outlined init with copy of SymbolImageDescription(v9, v8);
  outlined destroy of SymbolImageDescription(v14);
  v6 = static UIImage.symbolImage(for:)(v9);
  outlined destroy of SymbolImageDescription(v9);
  return v6;
}

id one-time initialization function for playTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(0x74656B636F72, 0xE600000000000000);
  static ActivityType.Icon.playTogether = result;
  return result;
}

id one-time initialization function for workoutTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(0x722E657275676966, 0xEA00000000006E75);
  static ActivityType.Icon.workoutTogether = result;
  return result;
}

id one-time initialization function for shopTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(6775138, 0xE300000000000000);
  static ActivityType.Icon.shopTogether = result;
  return result;
}

id one-time initialization function for readTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(1802465122, 0xE400000000000000);
  static ActivityType.Icon.readTogether = result;
  return result;
}

id one-time initialization function for exploreTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(0x65626F6C67, 0xE500000000000000);
  static ActivityType.Icon.exploreTogether = result;
  return result;
}

id one-time initialization function for learnTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(0x65762E736B6F6F62, 0xEE006C6163697472);
  static ActivityType.Icon.learnTogether = result;
  return result;
}

id one-time initialization function for createTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(0x656C626269726373, 0xE800000000000000);
  static ActivityType.Icon.createTogether = result;
  return result;
}

id one-time initialization function for collaboration()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(6516580, 0xE300000000000000);
  static ActivityType.Icon.collaboration = result;
  return result;
}

id one-time initialization function for other()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(0x616C706572616873, 0xE900000000000079);
  static ActivityType.Icon.other = result;
  return result;
}

uint64_t ActivityType.placeholderImage.getter()
{
  v1 = 0;
  switch(*v0)
  {
    case 1:
    case 2:
      if (one-time initialization token for collaboration != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.collaboration;
      goto LABEL_35;
    case 3:
      if (one-time initialization token for listenTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.listenTogether;
      goto LABEL_35;
    case 4:
      if (one-time initialization token for watchTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.watchTogether;
      goto LABEL_35;
    case 5:
      if (one-time initialization token for workoutTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.workoutTogether;
      goto LABEL_35;
    case 6:
    case 0xD:
      return v1;
    case 7:
      if (one-time initialization token for playTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.playTogether;
      goto LABEL_35;
    case 8:
      if (one-time initialization token for shopTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.shopTogether;
      goto LABEL_35;
    case 9:
      if (one-time initialization token for readTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.readTogether;
      goto LABEL_35;
    case 0xA:
      if (one-time initialization token for exploreTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.exploreTogether;
      goto LABEL_35;
    case 0xB:
      if (one-time initialization token for learnTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.learnTogether;
      goto LABEL_35;
    case 0xC:
      if (one-time initialization token for createTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.createTogether;
      goto LABEL_35;
    default:
      if (one-time initialization token for other != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.other;
LABEL_35:
      v1 = *v2;
      v3 = *v2;
      return v1;
  }
}

uint64_t ActivityType.icon.getter()
{
  v1 = 0;
  switch(*v0)
  {
    case 1:
    case 2:
      if (one-time initialization token for collaboration != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.collaboration;
      goto LABEL_35;
    case 3:
      if (one-time initialization token for listenTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.listenTogether;
      goto LABEL_35;
    case 4:
      if (one-time initialization token for watchTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.watchTogether;
      goto LABEL_35;
    case 5:
      if (one-time initialization token for workoutTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.workoutTogether;
      goto LABEL_35;
    case 6:
    case 0xD:
      return v1;
    case 7:
      if (one-time initialization token for playTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.playTogether;
      goto LABEL_35;
    case 8:
      if (one-time initialization token for shopTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.shopTogether;
      goto LABEL_35;
    case 9:
      if (one-time initialization token for readTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.readTogether;
      goto LABEL_35;
    case 0xA:
      if (one-time initialization token for exploreTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.exploreTogether;
      goto LABEL_35;
    case 0xB:
      if (one-time initialization token for learnTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.learnTogether;
      goto LABEL_35;
    case 0xC:
      if (one-time initialization token for createTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.createTogether;
      goto LABEL_35;
    default:
      if (one-time initialization token for other != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.other;
LABEL_35:
      v1 = *v2;
      v3 = *v2;
      return v1;
  }
}

Swift::Int ActivityType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivityType()
{
  Hasher.init(_seed:)();
  ActivityType.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized Activity.collaboration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Collaboration(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t Activity.collaboration.getter()
{
  type metadata accessor for Collaboration(0);
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t specialized Activity.stagedCollaboration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StagedCollaboration(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t Activity.stagedCollaboration.getter()
{
  type metadata accessor for StagedCollaboration(0);
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

id TUConversationActivitySession.preferredBroadcastingAttributes.getter()
{
  v1 = [v0 activity];
  v2 = [v1 metadata];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 preferredBroadcastingAttributes];

  return v3;
}

uint64_t TUConversationActivitySession.generateSplitSessionState.getter()
{
  if ([v0 state] != 4)
  {
    return 0;
  }

  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 neighborhoodActivityConduit];

  v3 = [v2 activeSplitSessionTV];
  if (!v3)
  {
    return 0;
  }

  return 1;
}

void TUConversationActivitySession.generateType.getter(char *a1@<X8>)
{
  v5 = [v1 activity];
  v6 = [v5 metadata];

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [v6 context];

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [v7 typedIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  v10 = v10 && v2 == v9;
  if (v10)
  {

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_119();
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v10 && v2 == v12)
  {

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_0_119();
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_19:
    v11 = 1;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v10 && v2 == v14)
  {

    goto LABEL_27;
  }

  OUTLINED_FUNCTION_0_119();
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_27:
    v11 = 3;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v10 && v2 == v16)
  {

    goto LABEL_35;
  }

  OUTLINED_FUNCTION_0_119();
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_35:
    v11 = 7;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v10 && v2 == v18)
  {

    goto LABEL_43;
  }

  OUTLINED_FUNCTION_0_119();
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_43:
    v11 = 4;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v10 && v2 == v20)
  {

    goto LABEL_51;
  }

  OUTLINED_FUNCTION_0_119();
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_51:
    v11 = 5;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v10 && v2 == v22)
  {

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_0_119();
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_59:
    v11 = 8;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v10 && v2 == v24)
  {

    goto LABEL_67;
  }

  OUTLINED_FUNCTION_0_119();
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_67:
    v11 = 9;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v10 && v2 == v26)
  {

    goto LABEL_75;
  }

  OUTLINED_FUNCTION_0_119();
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_75:
    v11 = 10;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v10 && v2 == v28)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0_119();
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_83:
    v11 = 11;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v10 && v2 == v30)
  {

    goto LABEL_91;
  }

  OUTLINED_FUNCTION_0_119();
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_91:
    v11 = 12;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v10 && v2 == v32)
  {

    goto LABEL_99;
  }

  OUTLINED_FUNCTION_0_119();
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_99:
    v11 = 6;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v10 && v2 == v34)
  {

    v11 = 13;
  }

  else
  {
    v36 = OUTLINED_FUNCTION_0_119();

    if (v36)
    {
      v11 = 13;
    }

    else
    {
      v11 = 0;
    }
  }

LABEL_11:
  *a1 = v11;
}

void TUConversationActivitySession.updatedAt.getter()
{
  v1 = [v0 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t TUConversationActivitySession.activeRemoteParticipantCount.getter()
{
  v1 = [v0 activeRemoteParticipants];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Set.count.getter(v2);

  return v3;
}

id TUConversationActivitySession.isScreenSharing.getter(SEL *a1)
{
  v3 = [v1 activity];
  v4 = [v3 *a1];

  return v4;
}

uint64_t TUConversationActivitySession.title.getter(SEL *a1)
{
  v3 = [v1 activity];
  v4 = [v3 metadata];

  if (v4)
  {
    return outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v4, a1);
  }

  else
  {
    return 0;
  }
}

id TUConversationActivitySession.image.getter()
{
  result = TUConversationActivitySession.generateImage.getter();
  if (!result)
  {
    TUConversationActivitySession.generateType.getter(&v1);
    return ActivityType.placeholderImage.getter();
  }

  return result;
}

id TUConversationActivitySession.generateImage.getter()
{
  v1 = [v0 activity];
  v2 = [v1 metadata];

  if (!v2)
  {
    return 0;
  }

  v3 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.imageData.getter(v2);
  if (v4 >> 60 == 15)
  {
    return 0;
  }

  v6 = v3;
  v7 = v4;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  return UIImage.__allocating_init(data:)(v6, v7);
}

id TUConversationActivitySession.ongoingDescription.getter()
{
  v1 = [v0 activity];
  v2 = [v1 metadata];

  if (v2)
  {
    v3 = [v2 context];

    v4 = [v3 ongoingDescription];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v2;
}

uint64_t TUConversationActivitySession.metadataHash.getter()
{
  v1 = [v0 activity];
  v2 = [v1 metadata];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30TUConversationActivityMetadataCSgMd);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivityMetadata and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivityMetadata);
  v3 = Optional<A>.hashValue.getter();

  return v3;
}

id Activity.linkMetadata.getter(uint64_t a1, uint64_t (**a2)(void, void))
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  v5 = a2[6](a1, a2);
  if (v6)
  {
    v7 = MEMORY[0x1BFB209B0](v5);
  }

  else
  {
    v7 = 0;
  }

  [v4 setTitle_];

  v8 = a2[7](a1, a2);
  if (v9)
  {
    v10 = MEMORY[0x1BFB209B0](v8);
  }

  else
  {
    v10 = 0;
  }

  [v4 setSummary_];

  v11 = a2[8](a1, a2);
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage_];
    [v4 setImage_];
  }

  return v4;
}

uint64_t outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

unint64_t lazy protocol witness table accessor for type ActivityType and conformance ActivityType()
{
  result = lazy protocol witness table cache variable for type ActivityType and conformance ActivityType;
  if (!lazy protocol witness table cache variable for type ActivityType and conformance ActivityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityType and conformance ActivityType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActivityType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc TUConversationActivityMetadata.imageData.getter(void *a1)
{
  v2 = [a1 imageData];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t AspectRatioLayout.spaceOffered(to:in:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  static ProposedViewSize.unspecified.getter();
  if ((static ProposedViewSize.== infix(_:_:)() & 1) == 0)
  {
    static ProposedViewSize.unspecified.getter();
    LayoutSubview.sizeThatFits(_:)();
    v10 = v9;
    v12 = v11;
    v13 = static ContentMode.== infix(_:_:)();
    v14 = a3 & 1;
    if (v13)
    {
      v15 = CGSize.scaledToFit(_:)(a2, v14, a4, a5 & 1, v10, v12);
    }

    else
    {
      v15 = CGSize.scaledToFill(_:)(a2, v14, a4, a5 & 1, v10, v12);
    }

    return *&v15;
  }

  return a2;
}

double CGSize.scaledToFit(_:)(uint64_t a1, char a2, uint64_t a3, char a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, double, double), double a6, double a7)
{
  static ProposedViewSize.unspecified.getter();
  v14 = a2 & 1;
  v15 = a4 & 1;
  if ((static ProposedViewSize.== infix(_:_:)() & 1) == 0)
  {
    a5(a1, v14, a3, v15, a6, a7);
    if (a6 == 0.0)
    {
      return 0.0;
    }

    else
    {
      return v16 * a6;
    }
  }

  return a6;
}

uint64_t AspectRatioLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = OUTLINED_FUNCTION_7_66();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  specialized Collection.first.getter(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v9) == 1)
  {
    result = outlined destroy of TapInteractionHandler?(v4, &_s7SwiftUI13LayoutSubviewVSgMd);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_4_86();
    v15(v14);
    type metadata accessor for LayoutSubviews();
    lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
    OUTLINED_FUNCTION_5_81();
    dispatch thunk of Collection.startIndex.getter();
    OUTLINED_FUNCTION_5_81();
    dispatch thunk of Collection.endIndex.getter();
    if (dispatch thunk of Collection.distance(from:to:)() == 1)
    {
      AspectRatioLayout.spaceOffered(to:in:)(v13, a1, a2 & 1, a3, a4 & 1);
      LayoutSubview.sizeThatFits(_:)();
      v16 = OUTLINED_FUNCTION_2_103();
      return v17(v16);
    }

    v19 = OUTLINED_FUNCTION_2_103();
    result = v20(v19);
  }

  __break(1u);
  return result;
}

uint64_t AspectRatioLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OUTLINED_FUNCTION_7_66();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  specialized Collection.first.getter(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
  {
    return outlined destroy of TapInteractionHandler?(v4, &_s7SwiftUI13LayoutSubviewVSgMd);
  }

  v16 = OUTLINED_FUNCTION_4_86();
  v17(v16);
  type metadata accessor for LayoutSubviews();
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
  OUTLINED_FUNCTION_5_81();
  dispatch thunk of Collection.startIndex.getter();
  OUTLINED_FUNCTION_5_81();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() == 1)
  {
    v20.origin.x = OUTLINED_FUNCTION_18_1();
    CGRectGetMidX(v20);
    v21.origin.x = OUTLINED_FUNCTION_18_1();
    CGRectGetMidY(v21);
    static UnitPoint.center.getter();
    AspectRatioLayout.spaceOffered(to:in:)(v14, a1, a2 & 1, a3, a4 & 1);
    LayoutSubview.place(at:anchor:proposal:)();
  }

  v18 = OUTLINED_FUNCTION_2_103();
  return v19(v18);
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance AspectRatioLayout(uint64_t a1, uint64_t a2, char a3)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance AspectRatioLayout(a1, a2, a3);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance AspectRatioLayout(a1, a2, a3);
}

{
  OUTLINED_FUNCTION_1_105(a1, a2, a3);
  return v3();
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance AspectRatioLayout(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

double ContentFillLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t ContentFillLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v24 = a2;
  v25 = a4;
  v26 = a1;
  v27 = a3;
  v6 = type metadata accessor for LayoutSubview();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v17 = type metadata accessor for LayoutSubviews();
  (*(*(v17 - 8) + 16))(v16, a5, v17);
  v18 = *(v14 + 44);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
  dispatch thunk of Collection.startIndex.getter();
  v19 = (v8 + 16);
  v20 = (v8 + 8);
  v21 = v24 & 1;
  v25 &= 1u;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v16[v18] == v29[0])
    {
      break;
    }

    v22 = dispatch thunk of Collection.subscript.read();
    (*v19)(v12);
    v22(v29, 0);
    dispatch thunk of Collection.formIndex(after:)();
    static UnitPoint.topLeading.getter();
    LOBYTE(v29[0]) = v21;
    v28 = v25;
    LayoutSubview.place(at:anchor:proposal:)();
    (*v20)(v12, v6);
  }

  return outlined destroy of TapInteractionHandler?(v16, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance ContentFillLayout(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

double CGSize.scaled(by:)(double a1, double a2)
{
  v2 = a1 * a2;
  if (a2 == 0.0)
  {
    return 0.0;
  }

  return v2;
}

CGSize __swiftcall CGSize.scaled(by:)(CGSize by)
{
  v3 = by.width * v1;
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = by.height * v2;
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

double CGSize.scaleThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  if ((a2 & 1) != 0 || a5 == 0.0 && *&a1 == 0.0)
  {
    result = INFINITY;
    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *&a1 / a5;
    if (a4)
    {
LABEL_9:
      v7 = INFINITY;
      goto LABEL_11;
    }
  }

  if (a6 == 0.0 && *&a3 == 0.0)
  {
    goto LABEL_9;
  }

  v7 = *&a3 / a6;
LABEL_11:
  if (v7 < result)
  {
    return v7;
  }

  return result;
}

double CGSize.scaleThatFills(_:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  if ((a2 & 1) != 0 || a5 == 0.0 && *&a1 == 0.0)
  {
    result = -INFINITY;
    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *&a1 / a5;
    if (a4)
    {
LABEL_9:
      v7 = -INFINITY;
      goto LABEL_11;
    }
  }

  if (a6 == 0.0 && *&a3 == 0.0)
  {
    goto LABEL_9;
  }

  v7 = *&a3 / a6;
LABEL_11:
  if (result <= v7)
  {
    return v7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AspectRatioLayout and conformance AspectRatioLayout()
{
  result = lazy protocol witness table cache variable for type AspectRatioLayout and conformance AspectRatioLayout;
  if (!lazy protocol witness table cache variable for type AspectRatioLayout and conformance AspectRatioLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspectRatioLayout and conformance AspectRatioLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContentFillLayout and conformance ContentFillLayout()
{
  result = lazy protocol witness table cache variable for type ContentFillLayout and conformance ContentFillLayout;
  if (!lazy protocol witness table cache variable for type ContentFillLayout and conformance ContentFillLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentFillLayout and conformance ContentFillLayout);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AspectRatioLayout(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t *CallScreeningRTTHelper.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_9_6();
  }

  return &static CallScreeningRTTHelper.shared;
}

uint64_t static CallScreeningRTTHelper.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_9_6();
  }
}

uint64_t CallScreeningRTTHelper.().init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit22TranscriptionViewModelC7CaptionVGMd);
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  v1 = OBJC_IVAR____TtC15ConversationKit22CallScreeningRTTHelper_mainActorLogger;
  if (one-time initialization token for answeringMachine != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.answeringMachine);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  return v0;
}

Swift::Void __swiftcall CallScreeningRTTHelper.setupObservers()()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:sel_callStatusChanged_ name:*MEMORY[0x1E69D8E08] object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel_callRTTStatusChanged_ name:*MEMORY[0x1E69D8F08] object:0];
}

Swift::Void __swiftcall CallScreeningRTTHelper.saveCaptions(_:for:)(Swift::OpaquePointer _, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = [objc_opt_self() sharedInstance];
  v14 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);
  v21 = [v13 callWithCallUUID_];

  if (!v21)
  {
LABEL_6:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if ([v21 isActive])
  {
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v3 + 16);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *(v3 + 16) = v22;
    swift_endAccess();
    (*(v8 + 16))(v12, v3 + OBJC_IVAR____TtC15ConversationKit22CallScreeningRTTHelper_mainActorLogger, v6);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = OUTLINED_FUNCTION_23();
      v23[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v23);
      _os_log_impl(&dword_1BBC58000, v15, v16, "CallScreeningRTTHelper: saved captions for callUUID %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    (*(v8 + 8))(v12, v6);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall CallScreeningRTTHelper.syncCaptionsToRTT(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v29 - v7;
  v9 = type metadata accessor for TranscriptionViewModel.Caption(0);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v16 = static CallScreeningViewModelComposer.viewModel;

  if (TranscriptionViewModel.callUUID.getter() == countAndFlagsBits && v17 == object)
  {

    goto LABEL_11;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
LABEL_11:
    v23 = v11;
    v22 = TranscriptionViewModel.captions.getter();
    goto LABEL_12;
  }

  swift_beginAccess();
  v20 = *(v1 + 16);

  v21 = specialized Dictionary.subscript.getter(countAndFlagsBits, object, v20);

  if (!v21)
  {
    goto LABEL_16;
  }

  v22 = v21;
  v23 = v11;
LABEL_12:
  v24 = *(v22 + 16);
  if (v24)
  {
    v29[1] = v16;
    v30 = *(*v2 + 176);
    v25 = *(v23 + 80);
    v26 = v9;
    v29[0] = v22;
    v27 = v22 + ((v25 + 32) & ~v25);
    v28 = *(v23 + 72);
    do
    {
      outlined init with copy of TranscriptionViewModel.Caption(v27, v15);
      outlined init with copy of TranscriptionViewModel.Caption(v15, v8);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
      v30(v8, countAndFlagsBits, object);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
      outlined destroy of TranscriptionViewModel.Caption(v15);
      v27 += v28;
      --v24;
    }

    while (v24);
  }

LABEL_16:

  OUTLINED_FUNCTION_30_0();
}

void CallScreeningRTTHelper.syncCaptionToRTT(_:callUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v43 = v9;
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16_4();
  v15 = type metadata accessor for TranscriptionViewModel.Caption(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v39 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v39 - v23);
  outlined init with copy of TranscriptionViewModel.Caption?(a1, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v15) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
  }

  else
  {
    v41 = a2;
    v42 = a3;
    outlined init with take of TranscriptionViewModel.Caption(v4, v24);
    (*(v43 + 16))(v12, v3 + OBJC_IVAR____TtC15ConversationKit22CallScreeningRTTHelper_mainActorLogger, v44);
    outlined init with copy of TranscriptionViewModel.Caption(v24, v21);
    outlined init with copy of TranscriptionViewModel.Caption(v24, v18);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v40 = OUTLINED_FUNCTION_23();
      v45 = v40;
      *v27 = 134349314;
      v28 = *v21;
      Hasher.init(_seed:)();
      MEMORY[0x1BFB22640](v28);
      v29 = Hasher._finalize()();
      outlined destroy of TranscriptionViewModel.Caption(v21);
      *(v27 + 4) = v29;
      *(v27 + 12) = 2080;
      v30 = &v18[*(v15 + 28)];
      v31 = *v30;
      v32 = v30[1];

      outlined destroy of TranscriptionViewModel.Caption(v18);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v45);

      *(v27 + 14) = v33;
      _os_log_impl(&dword_1BBC58000, v25, v26, "CallScreeningRTTHelper: sending notification for caption %{public}ld: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
      outlined destroy of TranscriptionViewModel.Caption(v21);

      outlined destroy of TranscriptionViewModel.Caption(v18);
    }

    (*(v43 + 8))(v12, v44);
    v34 = [objc_opt_self() sharedInstance];
    v35 = MEMORY[0x1BFB209B0](*(v24 + *(v15 + 28)), *(v24 + *(v15 + 28) + 8));
    v36 = *v24;
    Hasher.init(_seed:)();
    MEMORY[0x1BFB22640](v36);
    Hasher._finalize()();
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v38 = MEMORY[0x1BFB209B0](v41, v42);
    [v34 processCallScreeningTranscription:v35 transcriptionID:isa callUUID:v38];

    outlined destroy of TranscriptionViewModel.Caption(v24);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t CallScreeningRTTHelper.shouldShowScreeningRTT(for:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  if (TUCallScreeningRTTEnabled())
  {
    if ([v1 isRTT])
    {
      v2 = 1;
    }

    else
    {
      v2 = [v1 isTTY];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

Swift::Bool __swiftcall CallScreeningRTTHelper.shouldShowScreeningRTT(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = [objc_opt_self() sharedInstance];
  v5 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);
  v6 = [v4 callWithCallUUID_];

  LOBYTE(v5) = (*(*v1 + 184))(v6);
  return v5 & 1;
}

void CallScreeningRTTHelper.callRTTStatusChanged(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16_4();
  Notification.object.getter();
  if (v17)
  {
    type metadata accessor for TUCall();
    if (OUTLINED_FUNCTION_15_35())
    {
      v4 = *(*v0 + 184);
      v5 = v15;
      v6 = v4();

      if (v6)
      {
        v7 = [v5 callUUID];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        static TaskPriority.userInitiated.getter();
        v11 = type metadata accessor for TaskPriority();
        OUTLINED_FUNCTION_19_28(v11);

        v12 = static MainActor.shared.getter();
        v13 = swift_allocObject();
        v14 = MEMORY[0x1E69E85E0];
        v13[2] = v12;
        v13[3] = v14;
        v13[4] = v1;
        v13[5] = v8;
        v13[6] = v10;
        OUTLINED_FUNCTION_11_57();
        _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
      }
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_sypSgMd);
  }
}

uint64_t closure #1 in CallScreeningRTTHelper.callRTTStatusChanged(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Logger();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[10] = v8;
  *v8 = v6;
  v8[1] = closure #1 in CallScreeningRTTHelper.callRTTStatusChanged(_:);

  return MEMORY[0x1EEE6DA60](500000000);
}

uint64_t closure #1 in CallScreeningRTTHelper.callRTTStatusChanged(_:)()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  *(v4 + 88) = v0;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v7 = closure #1 in CallScreeningRTTHelper.callRTTStatusChanged(_:);
  }

  else
  {
    v7 = closure #1 in CallScreeningRTTHelper.callRTTStatusChanged(_:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{

  v1 = OUTLINED_FUNCTION_13_48();
  v2(v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 40);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_23();
    *(v9 + 4) = OUTLINED_FUNCTION_17_42(4.8751e-34, v10, v11, v12, v13, v14, v15, v16, v17, v10);
    OUTLINED_FUNCTION_16_41(&dword_1BBC58000, v18, v19, "CallScreeningRTTHelper: syncing captions to RTT on call upgrade for callUUID %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  (*(v7 + 8))(v6, v8);
  (*(**(v0 + 16) + 168))(*(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_13();

  return v20();
}

{

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t CallScreeningRTTHelper.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit22CallScreeningRTTHelper_mainActorLogger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t CallScreeningRTTHelper.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit22CallScreeningRTTHelper_mainActorLogger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of TranscriptionViewModel.Caption(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptionViewModel.Caption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of TranscriptionViewModel.Caption?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in CallScreeningRTTHelper.callRTTStatusChanged(_:)()
{
  OUTLINED_FUNCTION_12_50();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_4_87(v1);

  return closure #1 in CallScreeningRTTHelper.callRTTStatusChanged(_:)(v2, v3, v4, v5, v6, v7);
}

uint64_t type metadata accessor for CallScreeningRTTHelper()
{
  result = type metadata singleton initialization cache for CallScreeningRTTHelper;
  if (!type metadata singleton initialization cache for CallScreeningRTTHelper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CallScreeningRTTHelper()
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of CallScreeningRTTHelper.shouldShowScreeningRTT(for:)()
{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 192))();
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  type metadata accessor for ColorScheme();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_1();
  (*(v4 + 16))(v1, a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t static ButtonStyle<>.notice.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  v2 = *(type metadata accessor for NoticeButtonStyle() + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA8MaterialVSg_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for NoticeButtonStyle()
{
  result = type metadata singleton initialization cache for NoticeButtonStyle;
  if (!type metadata singleton initialization cache for NoticeButtonStyle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NoticeButtonStyle.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  outlined init with copy of Environment<ColorScheme>.Content(v3, &v15 - v10, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorScheme();
    OUTLINED_FUNCTION_20_3();
    return (*(v12 + 32))(a1, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v2, v5);
  }
}

uint64_t NoticeButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  ButtonStyleConfiguration.label.getter();
  v10 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v12 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36)];
  *v12 = KeyPath;
  v12[1] = v10;
  LOBYTE(v10) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v13 = &v5[*(v2 + 44)];
  *v13 = v10;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  static Color.gray.getter();
  ButtonStyleConfiguration.isPressed.getter();
  v18 = Color.opacity(_:)();

  v19 = &v9[*(v6 + 44)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd);
  v21 = v19 + *(v20 + 52);
  v22 = *(type metadata accessor for RoundedRectangle() + 20);
  v23 = *MEMORY[0x1E697F468];
  type metadata accessor for RoundedCornerStyle();
  OUTLINED_FUNCTION_20_3();
  (*(v24 + 104))(&v21[v22], v23);
  __asm { FMOV            V0.2D, #5.0 }

  *v21 = _Q0;
  *v19 = v18;
  *(v19 + *(v20 + 56)) = 256;
  outlined init with take of ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(v5, v9, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGAA16_BlendModeEffectVGMd) + 36);
  v31 = *MEMORY[0x1E6981DB8];
  type metadata accessor for BlendMode();
  OUTLINED_FUNCTION_20_3();
  (*(v32 + 104))(a1 + v30, v31);
  return outlined init with take of ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(v9, a1, &_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGMd);
}

uint64_t default argument 0 of NoticeButtonStyle.init(colorScheme:)@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NoticeButtonStyle.init(colorScheme:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(a1, a2, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
  v3 = *(type metadata accessor for NoticeButtonStyle() + 20);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA8MaterialVSg_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t key path setter for EnvironmentValues.backgroundMaterial : EnvironmentValues(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8MaterialVSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  outlined init with copy of Environment<ColorScheme>.Content(a1, &v5 - v3, &_s7SwiftUI8MaterialVSgMd);
  return EnvironmentValues.backgroundMaterial.setter();
}

uint64_t key path getter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3);
  OUTLINED_FUNCTION_20_3();
  (*(v5 + 32))(v3, v4);
  return v3;
}

void type metadata completion function for NoticeButtonStyle()
{
  type metadata accessor for Environment<ColorScheme>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<Material?>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<ColorScheme>()
{
  if (!lazy cache variable for type metadata for Environment<ColorScheme>)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<ColorScheme>);
    }
  }
}

void type metadata accessor for Environment<Material?>()
{
  if (!lazy cache variable for type metadata for Environment<Material?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI8MaterialVSgMd);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<Material?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGAA16_BlendModeEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<Color, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label);
  }

  return result;
}

uint64_t outlined init with copy of Environment<ColorScheme>.Content(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3);
  OUTLINED_FUNCTION_20_3();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t ParticipantPresentationContext.init(idsIdentifier:videoQuality:visibility:prominence:spatialPosition:isInCanvas:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  *(a6 + 40) = a8;
  *(a6 + 48) = a9;
  *(a6 + 56) = a10;
  *(a6 + 64) = a5;
  return result;
}

uint64_t ParticipantPresentationContext.init(participant:videoQuality:visibility:prominence:spatialPosition:isInCanvas:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v20 = a1 + *(type metadata accessor for Participant(0) + 28);
  if (!*v20)
  {
    result = outlined destroy of Participant(a1);
    goto LABEL_5;
  }

  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  result = outlined destroy of Participant(a1);
  if (v22)
  {
LABEL_5:
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    v24 = 2;
    goto LABEL_6;
  }

  v24 = a5 & 1;
  *a6 = v21;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  *(a6 + 40) = a8;
  *(a6 + 48) = a9;
  *(a6 + 56) = a10;
LABEL_6:
  *(a6 + 64) = v24;
  return result;
}

uint64_t static ParticipantPresentationContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 64);
  v6 = *(a2 + 64);
  if (CGRectEqualToRect(*(a1 + 32), *(a2 + 32)))
  {
    return v5 ^ v6 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for ParticipantPresentationContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 65))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 64);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticipantPresentationContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

uint64_t key path getter for ParticipantInfoView.isExpanded : ParticipantInfoView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result & 1;
  return result;
}

id ParticipantInfoView.isExpanded.didset()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isExpanded;
  swift_beginAccess();
  if (v1[v2])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV15ParticipantViewO_Tt0g5(v3);
  ParticipantViewButton.image.setter(v4);
  return [v1 setNeedsLayout];
}

uint64_t ParticipantInfoView.isExpanded.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isExpanded;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t ParticipantInfoView.isExpanded.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

BOOL ParticipantInfoView.shouldUseConcentricRadius.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0 || *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_localParticipant) != 1)
  {
    return 0;
  }

  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  return v2 == 0;
}

id ParticipantInfoView.customCornerRadius.didset()
{
  result = ParticipantInfoView.shouldUseConcentricRadius.getter();
  if ((result & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_gradientView);
    v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_customCornerRadius;
    swift_beginAccess();
    return [v2 _setContinuousCornerRadius_];
  }

  return result;
}

double ParticipantInfoView.customCornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_customCornerRadius;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

id ParticipantInfoView.customCornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_customCornerRadius;
  OUTLINED_FUNCTION_3_5();
  *(v1 + v3) = a1;
  return ParticipantInfoView.customCornerRadius.didset();
}

uint64_t ParticipantInfoView.customCornerRadius.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path setter for ParticipantInfoView.concentricCornerStyle : ParticipantInfoView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for _UICornerMaskingConfiguration();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xE8))(v7);
}

uint64_t ParticipantInfoView.concentricCornerStyle.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  result = ParticipantInfoView.shouldUseConcentricRadius.getter();
  if (result)
  {
    v5 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_concentricCornerStyle;
    swift_beginAccess();
    v6 = type metadata accessor for _UICornerMaskingConfiguration();
    (*(*(v6 - 8) + 16))(v3, v0 + v5, v6);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v6);
    return UIView.cornerMaskingConfiguration.setter();
  }

  return result;
}

uint64_t ParticipantInfoView.concentricCornerStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_concentricCornerStyle;
  swift_beginAccess();
  v4 = type metadata accessor for _UICornerMaskingConfiguration();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ParticipantInfoView.concentricCornerStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_concentricCornerStyle;
  swift_beginAccess();
  v4 = type metadata accessor for _UICornerMaskingConfiguration();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  ParticipantInfoView.concentricCornerStyle.didset();
  return (*(v5 + 8))(a1, v4);
}

uint64_t ParticipantInfoView.concentricCornerStyle.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ParticipantInfoView.isMomentsAvailable.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isMomentsAvailable;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for ParticipantInfoView.isMomentsAvailable : ParticipantInfoView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result & 1;
  return result;
}

id ParticipantInfoView.isMomentsAvailable.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isMomentsAvailable;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    if (one-time initialization token for shutterButtonEnabled != -1)
    {
      swift_once();
    }

    v2 = &static Colors.ParticipantViews.shutterButtonEnabled;
  }

  else
  {
    if (one-time initialization token for shutterButtonDisabled != -1)
    {
      swift_once();
    }

    v2 = &static Colors.ParticipantViews.shutterButtonDisabled;
  }

  return [*(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton) setTintColor_];
}

uint64_t ParticipantInfoView.isMomentsAvailable.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path getter for ParticipantInfoView.recordingLocalVideo : ParticipantInfoView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result & 1;
  return result;
}

void ParticipantInfoView.recordingLocalVideo.didset()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 592))())
  {
    v2 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_recordingLocalVideo;
    swift_beginAccess();
    v3 = *(v1 + v2);
    v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton);
    if (v3 == 1)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      SymbolImageDescribers.BottomBar.symbolImageDescription.getter();
      v5 = static UIImage.symbolImage(for:)(v6);
      outlined destroy of SymbolImageDescription(v6);
    }

    else
    {
      v5 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV15ParticipantViewO_Tt0g5(0);
    }

    [v4 setImage:v5 forState:0];
  }
}

uint64_t ParticipantInfoView.recordingLocalVideo.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_recordingLocalVideo;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t ParticipantInfoView.isExpanded.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = OUTLINED_FUNCTION_3_5();
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t ParticipantInfoView.recordingLocalVideo.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ParticipantInfoView.isExpanded.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t key path getter for ParticipantInfoView.delegate : ParticipantInfoView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ParticipantInfoView.delegate : ParticipantInfoView(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x130);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ParticipantInfoView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_delegate;
  OUTLINED_FUNCTION_3_5();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ParticipantInfoView.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t ParticipantInfoView.localRecordingLayout.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 592))())
  {
    return *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_localParticipant);
  }

  else
  {
    return 0;
  }
}

char *ParticipantInfoView.init(localParticipant:)(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_gradientView;
  *&v2[v4] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v5 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_nameLabel;
  type metadata accessor for ParticipantViewLabelContainerView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v8 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV15ParticipantViewO_Tt0g5(0);
  [v7 setImage:v8 forState:0];

  *&v2[v6] = v7;
  v9 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_expandButton;
  type metadata accessor for ParticipantViewButton();
  v55 = &type metadata for ImageNames.ParticipantView;
  v56 = &protocol witness table for ImageNames.ParticipantView;
  LOBYTE(v54[0]) = 1;
  *&v2[v9] = ParticipantViewButton.__allocating_init(imageName:)(v54);
  v2[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isExpanded] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_customCornerRadius] = 0;
  static _UICornerMaskingConfiguration.unspecified.getter();
  v2[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isMomentsAvailable] = 0;
  v2[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_recordingLocalVideo] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_localParticipant] = a1;
  v10 = type metadata accessor for ParticipantInfoView();
  v53.receiver = v2;
  v53.super_class = v10;
  v11 = objc_msgSendSuper2(&v53, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_gradientView;
  v13 = *&v11[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_gradientView];
  v14 = one-time initialization token for bottomGradient;
  v15 = v11;
  v16 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = static Colors.ParticipantViews.bottomGradient;
  v18 = OBJC_IVAR____TtC15ConversationKit12GradientView_colors;
  OUTLINED_FUNCTION_3_5();
  *&v16[v18] = v17;

  GradientView.updateGradient()();

  v19 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton;
  v20 = *&v15[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton];
  v55 = v10;
  v54[0] = v15;
  v21 = v15;
  v22 = v20;
  UIButton.add(target:action:)(v54, sel_didTapShutterButton);

  outlined destroy of Any?(v54);
  v23 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_expandButton;
  v24 = one-time initialization token for buttonIcon;
  v25 = *&v21[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_expandButton];
  if (v24 != -1)
  {
    swift_once();
  }

  [v25 setTintColor_];

  v26 = *&v21[v23];
  [v26 addTarget:v21 action:sel_didTapExpandButton forControlEvents:1];

  v27 = one-time initialization token for bottomBarText;
  v28 = *&v15[v19];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = static Colors.ParticipantViews.bottomBarText;
  [v28 setTintColor_];

  v30 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_nameLabel;
  [*(*&v21[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_nameLabel] + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label) setTextColor_];
  v31 = *&v21[v30];
  ParticipantViewLabelContainerView.isCentered.setter(0);

  v32 = *&v21[v30];
  v33 = [v32 layer];
  closure #1 in ParticipantInfoView.init(localParticipant:)(v33);

  v34 = *&v11[v12];
  v35 = [v34 layer];
  [v35 setMaskedCorners_];
  [v35 setMasksToBounds_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA7F0;
  v37 = *&v11[v12];
  *(inited + 32) = v37;
  v38 = *&v15[v19];
  *(inited + 40) = v38;
  v39 = *&v21[v23];
  *(inited + 48) = v39;
  v52 = v30;
  v40 = *&v21[v30];
  *(inited + 56) = v40;
  v41 = (inited & 0xC000000000000001) == 0;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, v41, inited);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(3, v41, inited);
  v42 = v37;
  v43 = v38;
  v44 = v39;
  v45 = v40;
  for (i = 0; i != 4; ++i)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x1BFB22010](i, inited);
    }

    else
    {
      v47 = *(inited + 8 * i + 32);
    }

    v48 = v47;
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_11_2();
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      [v48 setTranslatesAutoresizingMaskIntoConstraints_];
    }

    [v21 addSubview_];
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v49 = one-time initialization token for bottomBarRegular;
  v50 = *(*&v21[v52] + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label);
  if (v49 != -1)
  {
    swift_once();
  }

  [v50 setFont_];

  if (Features.isICUIRedesignEnabled.getter())
  {
    ParticipantInfoView.setUpConstraints()();
  }

  return v21;
}

id closure #1 in ParticipantInfoView.init(localParticipant:)(void *a1)
{
  if (one-time initialization token for bottomShadow != -1)
  {
    swift_once();
  }

  v2 = [static Colors.ParticipantViews.bottomShadow CGColor];
  [a1 setShadowColor_];

  LODWORD(v3) = 0.5;
  [a1 setShadowOpacity_];
  [a1 setShadowOffset_];

  return [a1 setShadowRadius_];
}

id ParticipantInfoView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantInfoView.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_gradientView;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_nameLabel;
  type metadata accessor for ParticipantViewLabelContainerView();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v6 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV15ParticipantViewO_Tt0g5(0);
  [v5 setImage:v6 forState:0];

  *(v1 + v4) = v5;
  v7 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_expandButton;
  type metadata accessor for ParticipantViewButton();
  v9 = &type metadata for ImageNames.ParticipantView;
  v10 = &protocol witness table for ImageNames.ParticipantView;
  v8[0] = 1;
  *(v1 + v7) = ParticipantViewButton.__allocating_init(imageName:)(v8);
  *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_customCornerRadius) = 0;
  static _UICornerMaskingConfiguration.unspecified.getter();
  *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isMomentsAvailable) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_recordingLocalVideo) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ParticipantInfoView.configure(with:isMomentsAvailable:shouldHideShutterButton:)(Swift::String with, Swift::Bool isMomentsAvailable, Swift::Bool shouldHideShutterButton)
{
  v4 = v3;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v9 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v9);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v9);
  if (v15)
  {
    v16 = *(*(v4 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_nameLabel) + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label);
    outlined bridged method (mbgnn) of @objc UILabel.text.setter(countAndFlagsBits, object, v16);

    v17 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x158))(shouldHideShutterButton);
    (*((*v17 & *v4) + 0x100))(isMomentsAvailable);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ParticipantInfoView.configure(shouldHideShutterButton:)(Swift::Bool shouldHideShutterButton)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v4);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v4);
  if (v10)
  {
    [*(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton) setHidden_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ParticipantInfoView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ParticipantInfoView();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  ParticipantInfoView._layout()();
}

void ParticipantInfoView._layout()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_14();
    if (CGRectIsInfinite(v33) || (OUTLINED_FUNCTION_8_14(), CGRectIsEmpty(v34)))
    {
      OUTLINED_FUNCTION_11_58();
      return;
    }

    OUTLINED_FUNCTION_8_14();
    v6 = v5;
    v8 = v7;
    v9 = *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_nameLabel);
    v10 = [*&v9[OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label] font];
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    [v10 lineHeight];
    v13 = v12;

    v35.origin.x = OUTLINED_FUNCTION_3_97();
    v35.size.height = v8;
    v14 = CGRectGetMaxX(v35) + -10.0 + -32.0;
    v36.origin.x = OUTLINED_FUNCTION_3_97();
    v36.size.height = v8;
    v37.origin.y = CGRectGetMinY(v36) + 10.0;
    v37.origin.x = v14;
    rect = v37.origin.y;
    v37.size.width = 32.0;
    v37.size.height = 32.0;
    CGRectGetMinX(v37);
    ParticipantInfoView.localRecordingLayout.getter();
    v15 = OUTLINED_FUNCTION_3_97();
    v18 = v8;
    if (v19)
    {
      CGRectGetMidY(*&v15);
    }

    else
    {
      CGRectGetMaxY(*&v15);
    }

    v20 = ceil(v13);
    v31 = v14;
    v38.origin.x = v14;
    v38.origin.y = rect;
    v38.size.width = 32.0;
    v38.size.height = 32.0;
    MinX = CGRectGetMinX(v38);
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))())
    {
      v39.origin.x = OUTLINED_FUNCTION_4_88();
      MinX = CGRectGetMinX(v39);
    }

    v40.origin.x = OUTLINED_FUNCTION_4_88();
    v22 = CGRectGetMidY(v40) + v20 * -0.5;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    v23 = round(v22 * static UIView.screenScale.getter());
    v24 = v23 / static UIView.screenScale.getter();
    OUTLINED_FUNCTION_8_14();
    v25 = OUTLINED_FUNCTION_3_97();
    [v26 v27];
    [v9 setFrame_];
    v28 = OUTLINED_FUNCTION_4_88();
    [v29 v30];
    [*(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_expandButton) setFrame_];
    [v9 setHidden_];
    ParticipantInfoView.localRecordingLayout.getter();
  }

  OUTLINED_FUNCTION_11_58();

  [v2 v3];
}

id ParticipantInfoView.setUpConstraints()()
{
  [*&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_gradientView] setHidden_];
  v41 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BA7F0;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_expandButton];
  v3 = [v2 topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:10.0];

  *(v1 + 32) = v5;
  v6 = [v2 trailingAnchor];
  v7 = [v0 trailingAnchor];
  v8 = [v6 &selRef_uniqueProxyIdentifier + 6];

  *(v1 + 40) = v8;
  v9 = [v2 widthAnchor];
  v10 = [v9 constraintEqualToConstant_];

  *(v1 + 48) = v10;
  v11 = [v2 heightAnchor];
  v12 = [v11 &selRef_fillColor + 1];

  *(v1 + 56) = v12;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints_];

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BC4BA7F0;
  v15 = *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton];
  v16 = [v15 topAnchor];
  v17 = [v0 topAnchor];
  v18 = OUTLINED_FUNCTION_9_58(v17, sel_constraintEqualToAnchor_constant_);

  *(v14 + 32) = v18;
  v19 = [v15 trailingAnchor];
  v20 = [v2 leadingAnchor];
  v21 = OUTLINED_FUNCTION_9_58(v20, sel_constraintEqualToAnchor_constant_);

  *(v14 + 40) = v21;
  v22 = [v15 widthAnchor];
  v23 = [v22 constraintEqualToConstant_];

  *(v14 + 48) = v23;
  v24 = [v15 heightAnchor];
  v25 = [v24 constraintEqualToConstant_];

  *(v14 + 56) = v25;
  v26 = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints_];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BC4BC370;
  v28 = *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_nameLabel];
  v29 = [v28 bottomAnchor];
  v30 = [v0 bottomAnchor];
  v31 = OUTLINED_FUNCTION_9_58(v30, sel_constraintEqualToAnchor_constant_);

  *(v27 + 32) = v31;
  v32 = [v28 leadingAnchor];
  v33 = [v0 leadingAnchor];
  v34 = OUTLINED_FUNCTION_9_58(v33, sel_constraintEqualToAnchor_constant_);

  *(v27 + 40) = v34;
  v35 = [v28 trailingAnchor];
  v36 = [v15 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:-10.0];

  *(v27 + 48) = v37;
  v38 = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints_];

  [v28 setHidden_];
  v39 = ParticipantInfoView.localRecordingLayout.getter() & 1;

  return [v2 setHidden_];
}

uint64_t ParticipantInfoView.didTapExpandButton()()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ParticipantInfoView.didTapShutterButton()()
{
  v1 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = (*((*v1 & *v0) + 0xF8))();
    (*(v4 + 16))(v6 & 1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

id ParticipantInfoView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ParticipantInfoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParticipantInfoView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ParticipantInfoView()
{
  result = type metadata singleton initialization cache for ParticipantInfoView;
  if (!type metadata singleton initialization cache for ParticipantInfoView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ParticipantInfoView()
{
  result = type metadata accessor for _UICornerMaskingConfiguration();
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

id specialized PictureInPictureWrapperViewController.init(wrappedViewController:)(uint64_t a1)
{
  v2 = &v1[direct field offset for PictureInPictureWrapperViewController.touchInsets];
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *v2 = *MEMORY[0x1E69DDCE0];
  *(v2 + 1) = v3;
  *&v1[direct field offset for PictureInPictureWrapperViewController.wrappedViewController] = a1;
  v5.receiver = v1;
  v5.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit09PictureInC21WrapperViewControllerCyAA013SharedContentfG0CGMd);
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t ScreenSharingSpectatorTip.title.getter()
{
  v1 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_1_106();
  OUTLINED_FUNCTION_20_30(27, v2, v3, v4);

  String.init(format:_:)();

  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t ScreenSharingSpectatorTip.message.getter()
{
  v1 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_1_106();
  OUTLINED_FUNCTION_20_30(39, v2, v3, v4);

  String.init(format:_:)();

  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t one-time initialization function for $isScreenSharingInteractive()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_allocate_value_buffer(v0, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t ScreenSharingSpectatorTip.$isScreenSharingInteractive.unsafeMutableAddressor()
{
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);

  return __swift_project_value_buffer(v0, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
}

uint64_t static ScreenSharingSpectatorTip.$isScreenSharingInteractive.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v3 = __swift_project_value_buffer(v2, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ScreenSharingSpectatorTip.$isScreenSharingInteractive.setter(uint64_t a1)
{
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v3 = __swift_project_value_buffer(v2, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  OUTLINED_FUNCTION_30_2();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_46();
  return v5(v4);
}

uint64_t (*static ScreenSharingSpectatorTip.$isScreenSharingInteractive.modify())()
{
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  OUTLINED_FUNCTION_30_2();
  return CallRecordingPillViewController.cancellable.modify;
}

uint64_t key path getter for static ScreenSharingSpectatorTip.$isScreenSharingInteractive : ScreenSharingSpectatorTip.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = ScreenSharingSpectatorTip.$isScreenSharingInteractive.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static ScreenSharingSpectatorTip.$isScreenSharingInteractive : ScreenSharingSpectatorTip.Type(uint64_t a1)
{
  v2 = ScreenSharingSpectatorTip.$isScreenSharingInteractive.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t static ScreenSharingSpectatorTip.isScreenSharingInteractive.getter()
{
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  return v2;
}

uint64_t static ScreenSharingSpectatorTip.isScreenSharingInteractive.setter()
{
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  OUTLINED_FUNCTION_30_2();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

void (*static ScreenSharingSpectatorTip.isScreenSharingInteractive.modify(void *a1))(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v2[3] = v3;
  v2[4] = __swift_project_value_buffer(v3, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  v4 = *(v2 + 41);
  swift_endAccess();
  *(v2 + 40) = v4;
  return static ScreenSharingSpectatorTip.isScreenSharingInteractive.modify;
}

void static ScreenSharingSpectatorTip.isScreenSharingInteractive.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 41) = *(*a1 + 40);
  OUTLINED_FUNCTION_30_2();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();

  free(v1);
}

uint64_t ScreenSharingSpectatorTip.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Tips.Rule();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120();
  }

  v12 = __swift_project_value_buffer(v0, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  (*(v2 + 16))(v5, v12, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v11, v6);

  return v13;
}

uint64_t closure #2 in ScreenSharingSpectatorTip.rules.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-v8];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  v11[15] = 1;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_SbGAC5ValueVy_SbGGMd);
  a1[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a1);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for Identifiable.id.getter in conformance ScreenSharingSpectatorTip@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip();
  result = MEMORY[0x1BFB1DA00](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t ScreenSharingSpectatorView.isCapturingTouch.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for ScreenSharingSpectatorView.isCapturingTouch : <A>ScreenSharingSpectatorView<A>@<X0>(_BYTE *a1@<X8>)
{
  result = ScreenSharingSpectatorView.isCapturingTouch.getter();
  *a1 = result & 1;
  return result;
}

void (*ScreenSharingSpectatorView.isCapturingTouch.modify(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v4 = *(v1 + 24);
  *v3 = v4;
  v3[6] = v3[1];
  v5 = (v3 + 6);
  *(v3 + 1) = v4;
  outlined init with copy of LinkShareCoordinatorProtocol?((v3 + 6), (v3 + 4), &_s7SwiftUI11AnyLocationCySbGSgMd);
  *(v5 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  return ScreenSharingSpectatorView.isCapturingTouch.modify;
}

void ScreenSharingSpectatorView.isCapturingTouch.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  *(v1 + 32) = **a1;
  *(v1 + 65) = v2;
  State.wrappedValue.setter();
  outlined destroy of TapInteractionHandler?(v1, &_s7SwiftUI5StateVySbGMd);

  free(v1);
}

uint64_t ScreenSharingSpectatorView.$isCapturingTouch.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  return v1;
}

uint64_t _s15ConversationKit26ScreenSharingSpectatorViewV5model7contentACyxGAA0cdeF5ModelC_xyctcfCAA09PictureInJ7WrapperVyAA013SharedContentF10ControllerCG_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  State.init(wrappedValue:)();
  result = static Tips.configure(_:)();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  return result;
}

uint64_t ScreenSharingSpectatorView.init(model:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = property wrapper backing initializer of ScreenSharingSpectatorView.isCapturingTouch();
  v10 = v9;
  result = static Tips.configure(_:)();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v8 & 1;
  *(a4 + 32) = v10;
  return result;
}

uint64_t ScreenSharingSpectatorView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v29 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMd);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMd);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMd);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI18_AnimationModifierVySbGMd);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  v27[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd);
  v27[0] = type metadata accessor for ScreenSharingSpectatorToolbar();
  v28 = *(a1 + 24);
  v51 = v28;
  v52 = lazy protocol witness table accessor for type BezelEffectModifier and conformance BezelEffectModifier();
  WitnessTable = swift_getWitnessTable();
  v50 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<BezelShieldMaterial> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMd);
  v47 = swift_getWitnessTable();
  v48 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMd);
  v45 = swift_getWitnessTable();
  v46 = lazy protocol witness table accessor for type ScreenSharingTouchShield and conformance ScreenSharingTouchShield();
  v3 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  v43 = v3;
  v44 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v4, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMd);
  v5 = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_59();
  v41 = v5;
  v42 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v6, &_s7SwiftUI18_AnimationModifierVySbGMd);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_65();
  v8 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v7, &_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd);
  OUTLINED_FUNCTION_7_67();
  v39 = v8;
  v40 = lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(v9, v10);
  v11 = type metadata accessor for ScreenSharingContentView();
  type metadata accessor for ScreenSharingSpectatorViewModel();
  v12 = OUTLINED_FUNCTION_11_59();
  OUTLINED_FUNCTION_6_68();
  v35 = v11;
  v36 = v8;
  v37 = v12;
  v38 = lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(v13, v14);
  OUTLINED_FUNCTION_5_82();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd);
  OUTLINED_FUNCTION_7_2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  v15 = type metadata accessor for ZStack();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v27 - v22;
  static Alignment.top.getter();
  v32 = v29;
  v33 = v28;
  v34 = v30;
  ZStack.init(alignment:content:)();
  OUTLINED_FUNCTION_2_104();
  v24 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v20, v15, v24);
  v25 = *(v17 + 8);
  v25(v20, v15);
  static ViewBuilder.buildExpression<A>(_:)(v23, v15, v24);
  return (v25)(v23, v15);
}

uint64_t closure #1 in ScreenSharingSpectatorView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  OpaqueTypeConformance2 = a2;
  v79 = a4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v59 - v8;
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI18_AnimationModifierVySbGMd);
  v9 = type metadata accessor for ModifiedContent();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd);
  v65 = v10;
  v80 = type metadata accessor for ScreenSharingSpectatorToolbar();
  v11 = lazy protocol witness table accessor for type BezelEffectModifier and conformance BezelEffectModifier();
  v100 = a3;
  v101 = v11;
  WitnessTable = swift_getWitnessTable();
  v13 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<BezelShieldMaterial> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMd);
  v98 = WitnessTable;
  v99 = v13;
  v14 = swift_getWitnessTable();
  v15 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMd);
  v96 = v14;
  v97 = v15;
  v16 = swift_getWitnessTable();
  v17 = lazy protocol witness table accessor for type ScreenSharingTouchShield and conformance ScreenSharingTouchShield();
  v94 = v16;
  v95 = v17;
  v18 = swift_getWitnessTable();
  v19 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>?> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMd);
  v92 = v18;
  v93 = v19;
  v20 = swift_getWitnessTable();
  v21 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
  v90 = v20;
  v91 = v21;
  v71 = v9;
  v22 = swift_getWitnessTable();
  v63 = v22;
  v23 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TransitioningText<FadeOutFadeInTransition> and conformance TransitioningText<A>, &_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd);
  v62 = v23;
  v61 = lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(&lazy protocol witness table cache variable for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar, type metadata accessor for ScreenSharingSpectatorToolbar);
  v84 = v9;
  v85 = v10;
  v86 = v80;
  v87 = v22;
  v88 = v23;
  v89 = v61;
  v24 = type metadata accessor for ScreenSharingContentView();
  v72 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v59 - v25;
  v27 = type metadata accessor for ScreenSharingSpectatorViewModel();
  v64 = v27;
  v28 = swift_getWitnessTable();
  v67 = v28;
  v66 = lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel);
  v84 = v24;
  v85 = v27;
  v86 = v28;
  v87 = v66;
  v68 = MEMORY[0x1E69811C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v73 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v59 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v60 = &v59 - v35;
  LOBYTE(v27) = (*(**a1 + 264))(v34);
  v102 = *(a1 + 24);
  v36 = swift_allocObject();
  v37 = OpaqueTypeConformance2;
  v38 = v74;
  *(v36 + 16) = OpaqueTypeConformance2;
  *(v36 + 24) = v38;
  v39 = *(a1 + 16);
  *(v36 + 32) = *a1;
  *(v36 + 48) = v39;
  *(v36 + 64) = *(a1 + 32);
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v38;
  v41 = *(a1 + 16);
  *(v40 + 32) = *a1;
  *(v40 + 48) = v41;
  *(v40 + 64) = *(a1 + 32);
  ScreenSharingContentView.init(contentMode:content:title:toolbar:)(v27 & 1, partial apply for closure #1 in closure #1 in ScreenSharingSpectatorView.body.getter, v36, partial apply for closure #2 in closure #1 in ScreenSharingSpectatorView.body.getter, v40, closure #3 in closure #1 in ScreenSharingSpectatorView.body.getter, 0, v26);

  outlined init with copy of LinkShareCoordinatorProtocol?(&v102, &v84, &_s7SwiftUI5StateVySbGMd);

  outlined init with copy of LinkShareCoordinatorProtocol?(&v102, &v84, &_s7SwiftUI5StateVySbGMd);
  v42 = swift_checkMetadataState();
  v43 = v67;
  v44 = v66;
  View.environment<A>(_:)();
  (*(v72 + 8))(v26, v24);
  v84 = v24;
  v85 = v42;
  v86 = v43;
  v87 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v60;
  v46 = OpaqueTypeMetadata2;
  static ViewBuilder.buildExpression<A>(_:)(v32, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v47 = v69;
  v80 = *(v69 + 8);
  v80(v32, v46);
  v87 = &type metadata for ScreenSharingSpectatorTip;
  v88 = lazy protocol witness table accessor for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip();
  v48 = v76;
  TipView.init<>(_:isPresented:arrowEdge:action:)();
  v49 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v51 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36));
  *v51 = KeyPath;
  v51[1] = v49;
  v52 = static Edge.Set.all.getter();
  v53 = v77;
  v54 = v48 + *(v77 + 36);
  *v54 = v52;
  *(v54 + 8) = 0u;
  *(v54 + 24) = 0u;
  *(v54 + 40) = 1;
  v55 = v73;
  (*(v47 + 16))(v73, v45, v46);
  v84 = v55;
  v56 = v78;
  outlined init with copy of LinkShareCoordinatorProtocol?(v48, v78, &_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd);
  v85 = v56;
  v83[0] = v46;
  v83[1] = v53;
  v81 = OpaqueTypeConformance2;
  v82 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  static ViewBuilder.buildBlock<each A>(_:)(&v84, 2, v83);
  outlined destroy of TapInteractionHandler?(v48, &_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd);
  v57 = v80;
  v80(v45, v46);
  outlined destroy of TapInteractionHandler?(v56, &_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd);
  return v57(v55, v46);
}

uint64_t closure #1 in closure #1 in ScreenSharingSpectatorView.body.getter@<X0>(uint64_t (**a1)(__n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a4;
  v89 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ModifiedContent();
  v75 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v73 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMd);
  v12 = type metadata accessor for ModifiedContent();
  v76 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v73 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMd);
  v14 = type metadata accessor for ModifiedContent();
  v78 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v73 - v15;
  v79 = v16;
  v17 = type metadata accessor for ModifiedContent();
  v81 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v73 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMd);
  v80 = v17;
  v19 = type metadata accessor for ModifiedContent();
  v84 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v73 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI18_AnimationModifierVySbGMd);
  v86 = v19;
  v90 = type metadata accessor for ModifiedContent();
  v87 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v83 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v85 = &v73 - v24;
  v25 = a1[1](v23);
  v26 = *a1;
  v27 = (*(**a1 + 840))(v25);
  v28 = (*(*v26 + 816))();
  v30 = v29;
  v31 = (*(*v26 + 832))();
  *&v106 = v28;
  *(&v106 + 1) = v30;
  v107 = v28;
  v108 = v30;
  v109 = 0;
  v110 = v31;
  View.bezelEffect(_:metrics:)(v27, &v106, a2);
  v32 = v74;

  v33 = *(v89 + 8);
  v88 = a2;
  v34 = v33(v8, a2);
  (*(*v26 + 848))(v34);
  v35 = lazy protocol witness table accessor for type BezelEffectModifier and conformance BezelEffectModifier();
  v89 = a3;
  v104 = a3;
  v105 = v35;
  WitnessTable = swift_getWitnessTable();
  View.bezelShieldMaterial(_:)();
  v37 = v11;
  v38 = a1;
  (*(v75 + 8))(v37, v9);
  if (ScreenSharingSpectatorView.isCapturingTouch.getter())
  {
    static Color.red.getter();
  }

  else
  {
    static Color.blue.getter();
  }

  v39 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<BezelShieldMaterial> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMd);
  v102 = WitnessTable;
  v103 = v39;
  v40 = swift_getWitnessTable();
  View.bezelOutlineColor(_:)();

  v41 = (*(v76 + 8))(v32, v12);
  if ((*(*v26 + 264))(v41))
  {
    v42 = 0;
  }

  else
  {
    (*(*v26 + 784))(&v101);
    v42 = v101 == 1;
  }

  v43 = ScreenSharingSpectatorView.$isCapturingTouch.getter();
  v45 = v44;
  v47 = v46;
  v48 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMd);
  v99 = v40;
  v100 = v48;
  v49 = v79;
  v50 = swift_getWitnessTable();
  v51 = v47 & 1;
  v52 = v77;
  v53 = v92;
  View.screenSharingTouchShield(isActive:isCapturingTouch:)(v42, v43, v45, v51, v49, v50);

  v54 = (*(v78 + 8))(v53, v49);
  MEMORY[0x1EEE9AC00](v54);
  v55 = v89;
  *(&v73 - 4) = v88;
  *(&v73 - 3) = v55;
  *(&v73 - 2) = v38;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGSgMd);
  v57 = lazy protocol witness table accessor for type ScreenSharingTouchShield and conformance ScreenSharingTouchShield();
  v97 = v50;
  v98 = v57;
  v58 = v80;
  v59 = swift_getWitnessTable();
  v60 = lazy protocol witness table accessor for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?();
  default argument 0 of View.overlay<A>(alignment:content:)(v58, v56, v59, v60);
  v61 = v82;
  View.overlay<A>(alignment:content:)();
  (*(v81 + 8))(v52, v58);
  v62 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v101 = (*(*v26 + 856))(v62) & 1;
  v63 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>?> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMd);
  v95 = v59;
  v96 = v63;
  v64 = v86;
  v65 = swift_getWitnessTable();
  v66 = v83;
  View.animation<A>(_:value:)();

  (*(v84 + 8))(v61, v64);
  v67 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
  v93 = v65;
  v94 = v67;
  v68 = v90;
  v69 = swift_getWitnessTable();
  v70 = v85;
  static ViewBuilder.buildExpression<A>(_:)(v66, v68, v69);
  v71 = *(v87 + 8);
  v71(v66, v68);
  static ViewBuilder.buildExpression<A>(_:)(v70, v68, v69);
  return (v71)(v70, v68);
}

uint64_t closure #1 in closure #1 in closure #1 in ScreenSharingSpectatorView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - v6);
  if ((*(**a1 + 856))(v5))
  {
    *v7 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
    swift_storeEnumTagMultiPayload();
    v8 = v7 + *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20);
    type metadata accessor for ScreenSharingSpectatorViewModel();
    lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel);
    *v8 = Environment.init<A>(_:)();
    v8[8] = v9 & 1;
    lazy protocol witness table accessor for type ModalOverlayTransition and conformance ModalOverlayTransition();
    *(v7 + *(v4 + 36)) = AnyTransition.init<A>(_:)();
    outlined init with take of ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>(v7, a2);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t closure #2 in closure #1 in ScreenSharingSpectatorView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*(**a1 + 792))();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd) + 40);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  result = swift_storeEnumTagMultiPayload();
  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t closure #3 in closure #1 in ScreenSharingSpectatorView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for ScreenSharingSpectatorToolbar() + 20);
  type metadata accessor for ScreenSharingSpectatorViewModel();
  lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel);
  result = Environment.init<A>(_:)();
  *v2 = result;
  v2[8] = v4 & 1;
  return result;
}

uint64_t key path getter for ScreenSharingSpectatorViewController.isPipped : ScreenSharingSpectatorViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result & 1;
  return result;
}

uint64_t (*ScreenSharingSpectatorViewController.isPipped.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_model);
  OUTLINED_FUNCTION_0_1();
  *(a1 + 8) = (*(v3 + 312))() & 1;
  return ScreenSharingSpectatorViewController.isPipped.modify;
}

uint64_t ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter()
{
  type metadata accessor for UIInterfaceOrientationMask(0);
  withObservationTracking<A>(_:onChange:)();
  return v1;
}

unint64_t closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(**(a1 + OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_model) + 648))(&v6);
  v3 = v6;
  result = outlined consume of RemoteControlState(v6);
  v5 = v3 >> 61;
  if (v3 >> 61 != 2)
  {
    result = static Platform.current.getter();
    v5 = 26;
    if (result == 1)
    {
      v5 = 30;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t (*implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return partial apply for closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter;
}

uint64_t closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter, v6, v5);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter()
{

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    [Strong setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  OUTLINED_FUNCTION_22_3(v1 == 0);

  return v2();
}

id ScreenSharingSpectatorViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ScreenSharingSpectatorViewController.init()()
{
  v1 = v0;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_model;
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_19_11();
      swift_once();
    }

    v5 = one-time initialization token for sharedMonitor;
    v6 = static ScreenSharingInteractionController.shared;
    if (v5 != -1)
    {
      OUTLINED_FUNCTION_14_38();
      swift_once();
    }

    v7 = static ScreenSharingStateMonitor.sharedMonitor;
    type metadata accessor for ScreenSharingSpectatorViewModel();
    v8 = OUTLINED_FUNCTION_84();
    v9 = v7;
    *(v1 + v4) = specialized ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)(v3, v6, v9, v8);
    v10 = OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_screenInfoDidChangeSubject;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyytSgs5NeverOGMd);
    OUTLINED_FUNCTION_84();
    *(v1 + v10) = CurrentValueSubject.init(_:)();
    v11 = [objc_allocWithZone(type metadata accessor for SharedContentViewController()) init];
    v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit09PictureInC21WrapperViewControllerCyAA013SharedContentfG0CGMd));
    *(v1 + OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_contentViewController) = specialized PictureInPictureWrapperViewController.init(wrappedViewController:)(v11);
    type metadata accessor for ScreenSharingSpectatorViewController();
    OUTLINED_FUNCTION_3_0();
    v15 = objc_msgSendSuper2(v13, v14);
    v16 = OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_contentViewController;
    v17 = *(*&v15[OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_contentViewController] + direct field offset for PictureInPictureWrapperViewController.wrappedViewController);
    v18 = MEMORY[0x1E69E7D40];
    v19 = *((*MEMORY[0x1E69E7D40] & *v17) + 0xB8);
    v20 = v15;
    v21 = v17;
    v19(v15, &protocol witness table for ScreenSharingSpectatorViewController);

    v22 = *&v15[v16];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v23 = static Layout.ParticipantViews.screenSharingInteractionTouchInsets;
    v24 = *&qword_1EBCB5F50;
    v25 = unk_1EBCB5F58;
    v26 = *((*v18 & *v22) + 0x70);
    v27 = v22;
    v26(*&v23, *(&v23 + 1), v24, v25);

    v28 = *((*v18 & *v9) + 0x140);
    v29 = *(*&v15[v16] + direct field offset for PictureInPictureWrapperViewController.wrappedViewController);
    v28();

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ScreenSharingSpectatorViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ScreenSharingSpectatorViewController.init(coder:)()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    __break(1u);
  }

  v9 = v2;
  v3 = OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_model;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_19_11();
    swift_once();
  }

  v4 = one-time initialization token for sharedMonitor;
  v5 = static ScreenSharingInteractionController.shared;
  if (v4 != -1)
  {
    OUTLINED_FUNCTION_14_38();
    swift_once();
  }

  v6 = static ScreenSharingStateMonitor.sharedMonitor;
  type metadata accessor for ScreenSharingSpectatorViewModel();
  v7 = OUTLINED_FUNCTION_84();
  *(v1 + v3) = specialized ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)(v9, v5, v6, v7);
  v8 = OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_screenInfoDidChangeSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyytSgs5NeverOGMd);
  OUTLINED_FUNCTION_84();
  *(v1 + v8) = CurrentValueSubject.init(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ScreenSharingSpectatorViewController.loadView()()
{
  v1 = v0;
  v53.receiver = v0;
  v53.super_class = type metadata accessor for ScreenSharingSpectatorViewController();
  objc_msgSendSuper2(&v53, sel_loadView);
  [v0 setOverrideUserInterfaceStyle_];
  v2 = OUTLINED_FUNCTION_4_1();
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  [v3 setBackgroundColor_];

  v6 = *&v1[OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_model];
  v7 = *&v1[OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_contentViewController];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v9 = v7;
  _s15ConversationKit26ScreenSharingSpectatorViewV5model7contentACyxGAA0cdeF5ModelC_xyctcfCAA09PictureInJ7WrapperVyAA013SharedContentF10ControllerCG_Tt1g5(v6, partial apply for closure #1 in ScreenSharingSpectatorViewController.loadView(), v8, &v54);
  v50 = v54;
  v51 = *v55;
  v52 = *&v55[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ScreenSharingSpectatorViewVyAA09PictureInG7WrapperVyAA013SharedContentF10ControllerCGGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ScreenSharingSpectatorView<PictureInPictureWrapper<SharedContentViewController>> and conformance ScreenSharingSpectatorView<A>, &_s15ConversationKit26ScreenSharingSpectatorViewVyAA09PictureInG7WrapperVyAA013SharedContentF10ControllerCGGMd);
  v10 = View.inLockScreenHostingController()();
  v11 = [v10 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  v13 = OUTLINED_FUNCTION_4_1();
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [v4 blackColor];
  [v14 setBackgroundColor_];

  v16 = OUTLINED_FUNCTION_5_63();
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v16;
  v18 = OUTLINED_FUNCTION_4_1();
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = v18;
  [v17 addSubview_];

  [v1 addChildViewController_];
  [v10 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BC4BA7F0;
  v21 = OUTLINED_FUNCTION_4_1();
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = OUTLINED_FUNCTION_5_63();
  if (!v24)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = OUTLINED_FUNCTION_2_85();
  *(v20 + 32) = v27;
  v28 = OUTLINED_FUNCTION_4_1();
  if (!v28)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = OUTLINED_FUNCTION_5_63();
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = OUTLINED_FUNCTION_2_85();
  *(v20 + 40) = v34;
  v35 = OUTLINED_FUNCTION_4_1();
  if (!v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = v35;
  v37 = [v35 topAnchor];

  v38 = OUTLINED_FUNCTION_5_63();
  if (!v38)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = OUTLINED_FUNCTION_2_85();
  *(v20 + 48) = v41;
  v42 = OUTLINED_FUNCTION_4_1();

  if (!v42)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v43 = [v42 bottomAnchor];

  v44 = OUTLINED_FUNCTION_5_63();
  if (v44)
  {
    v45 = v44;
    v46 = objc_opt_self();
    v47 = [v45 bottomAnchor];

    v48 = OUTLINED_FUNCTION_2_85();
    *(v20 + 56) = v48;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v46 activateConstraints_];

    v50 = *&v55[8];
    outlined destroy of TapInteractionHandler?(&v50, &_s7SwiftUI5StateVySbGMd);
    return;
  }

LABEL_27:
  __break(1u);
}

Swift::Void __swiftcall ScreenSharingSpectatorViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ScreenSharingSpectatorViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  ScreenSharingSpectatorViewController.updateSharedContentViewController()();
}

void ScreenSharingSpectatorViewController.updateSharedContentViewController()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_contentViewController) + direct field offset for PictureInPictureWrapperViewController.wrappedViewController);
  withObservationTracking<A>(_:onChange:)();
}

uint64_t closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController()(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_model);
  v4 = (*(*v3 + 312))();
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xD0))(v4 & 1);
  v7 = (*(*v3 + 856))(v6);
  v8 = (*((*v5 & *a1) + 0xE8))(v7 & 1);
  v9 = (*(*v3 + 264))(v8);
  v10 = (*((*v5 & *a1) + 0x100))(v9 & 1);
  v11 = (*(*v3 + 800))(v10);
  return (*((*v5 & *a1) + 0x118))(v11 & 1);
}

uint64_t (*implicit closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController()())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return partial apply for closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController();
}

uint64_t closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();
}

uint64_t closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController(), v6, v5);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController()()
{

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    ScreenSharingSpectatorViewController.updateSharedContentViewController()();
  }

  OUTLINED_FUNCTION_22_3(Strong == 0);

  return v1();
}

id ScreenSharingSpectatorViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t ScreenSharingSpectatorViewController.__ivar_destroyer()
{
}

id ScreenSharingSpectatorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingSpectatorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ScreenSharingTouchShield and conformance ScreenSharingTouchShield()
{
  result = lazy protocol witness table cache variable for type ScreenSharingTouchShield and conformance ScreenSharingTouchShield;
  if (!lazy protocol witness table cache variable for type ScreenSharingTouchShield and conformance ScreenSharingTouchShield)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingTouchShield and conformance ScreenSharingTouchShield);
  }

  return result;
}

uint64_t specialized ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v30 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMd);
  v7 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v30 - v8;
  v10 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__broadcastingParticipant;
  v11 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(a4 + v10, 1, 1, v11);
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isZoomEnabled) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isPipped) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__disableRequestButton) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__activeParticipantObserver) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__sessionObserver) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isTransitioningRemoteControlState) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isTransitioningRemoteControlStateTask) = 0;
  v12 = static Duration.seconds(_:)();
  v13 = (a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlStateTransitionTime);
  *v13 = v12;
  v13[1] = v14;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlState) = 0xA000000000000010;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__requirmentsLock) = v15;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements) = 0;
  ObservationRegistrar.init()();
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel_interactionController) = a2;
  v16 = a2;
  v32 = a3;
  [a3 addObserver_];
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  v19 = MEMORY[0x1E69E7D40];
  v20 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x1B0);
  v21 = v16;

  v20(partial apply for closure #1 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:), v18);

  v23 = *v19;
  v24 = v30;
  (*((v23 & *v21) + 0x110))(v22);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<ScreenSharingInteractionSession?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMd);

  v25 = v31;
  v26 = Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v9, v25);
  ScreenSharingSpectatorViewModel.sessionObserver.setter(v26);
  if (FTServerBag.remoteControlEnabled.getter())
  {
    v27 = v32;
    swift_getKeyPath();
    (*(*a4 + 912))();

    v33 = a4;
    swift_getKeyPath();
    lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel);
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v28 = *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements);
    if ((v28 & 8) == 0)
    {
      *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements) = v28 | 8;
    }

    ScreenSharingSpectatorViewModel._remoteControlRequirements.didset();
    v33 = a4;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  else
  {
  }

  return a4;
}

{
  v29 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMd);
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v29 - v8;
  v10 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__broadcastingParticipant;
  v11 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(a4 + v10, 1, 1, v11);
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isZoomEnabled) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isPipped) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__disableRequestButton) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__activeParticipantObserver) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__sessionObserver) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isTransitioningRemoteControlState) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isTransitioningRemoteControlStateTask) = 0;
  v12 = static Duration.seconds(_:)();
  v13 = (a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlStateTransitionTime);
  *v13 = v12;
  v13[1] = v14;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlState) = 0xA000000000000010;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__requirmentsLock) = v15;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements) = 0;
  ObservationRegistrar.init()();
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel_interactionController) = a2;
  v16 = a2;
  v31 = a3;
  [a3 addObserver_];
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  v19 = MEMORY[0x1E69E7D40];
  v20 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x1B0);
  v21 = v16;

  v20(partial apply for closure #1 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:), v18);

  v23 = *v19;
  v24 = v29;
  (*((v23 & *v21) + 0x110))(v22);
  lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<ScreenSharingInteractionSession?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMd);

  v25 = v30;
  v26 = Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v9, v25);
  ScreenSharingSpectatorViewModel.sessionObserver.setter(v26);
  if (FTServerBag.remoteControlEnabled.getter())
  {
    swift_getKeyPath();
    (*(*a4 + 912))();

    v32 = a4;
    swift_getKeyPath();
    _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel);
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v27 = *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements);
    if ((v27 & 8) == 0)
    {
      *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements) = v27 | 8;
    }

    ScreenSharingSpectatorViewModel._remoteControlRequirements.didset();
    v32 = a4;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return a4;
}

id partial apply for closure #1 in ScreenSharingSpectatorViewController.loadView()@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t lazy protocol witness table accessor for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip()
{
  result = lazy protocol witness table cache variable for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip;
  if (!lazy protocol witness table cache variable for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip;
  if (!lazy protocol witness table cache variable for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip);
  }

  return result;
}

uint64_t type metadata instantiation function for ScreenSharingSpectatorView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController()(v2, v3, v4, v5);
}

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter(v2, v3, v4, v5);
}

uint64_t objectdestroy_36Tm()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TipView<AnyTip> and conformance TipView<A>, &_s6TipKit0A4ViewVyAA03AnyA0VGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMd);
    lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(&lazy protocol witness table cache variable for type ScreenSharingSpectatorModalOverlay and conformance ScreenSharingSpectatorModalOverlay, type metadata accessor for ScreenSharingSpectatorModalOverlay);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModalOverlayTransition and conformance ModalOverlayTransition()
{
  result = lazy protocol witness table cache variable for type ModalOverlayTransition and conformance ModalOverlayTransition;
  if (!lazy protocol witness table cache variable for type ModalOverlayTransition and conformance ModalOverlayTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModalOverlayTransition and conformance ModalOverlayTransition);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_SbGAC5ValueVy_SbGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t one-time initialization function for joinLink(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BC370;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69D8B68]) initWithHandleType:2 notificationStyles:a2];
  *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E69D8B68]) initWithHandleType:3 notificationStyles:a3];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E69D8B68]) initWithHandleType:1 notificationStyles:a3];
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo34TUConversationInvitationPreferenceC_SayAEGTt0g5(inited);
  *a4 = result;
  return result;
}

uint64_t static InvitationPreferences.joinLink.getter(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

_BYTE *storeEnumTagSinglePayload for InvitationPreferences(_BYTE *result, int a2, int a3)
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

uint64_t RecentsListSuggestionFetcher.suggestedContact.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t RecentsListSuggestionFetcher.suggestedContact.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t key path getter for RecentsListSuggestionFetcher.delegate : RecentsListSuggestionFetcher@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for RecentsListSuggestionFetcher.delegate : RecentsListSuggestionFetcher(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x118);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

void (*RecentsListSuggestionFetcher.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit28RecentsListSuggestionFetcher_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

id RecentsListSuggestionFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t closure #1 in RecentsListSuggestionFetcher.startSearch()(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo9CNContactCSg_GGMd);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9CNContactCSg_GMd);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo9CNContactCSg_G_GMd);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListSuggestionFetcher.startSearch(), 0, 0);
}

uint64_t closure #1 in RecentsListSuggestionFetcher.startSearch()()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9CNContactCSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  v7 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<CNContact?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo9CNContactCSg_GMd);
  MEMORY[0x1BFB1DE80](v4, v7);
  (*(v2 + 8))(v1, v4);
  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v3, v5);
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<CNContact?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo9CNContactCSg_G_GMd);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_1_107(v8);

  return MEMORY[0x1EEE6D8C8](v9);
}

{
  OUTLINED_FUNCTION_24_0();
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = closure #1 in RecentsListSuggestionFetcher.startSearch();
  }

  else
  {
    v2 = closure #1 in RecentsListSuggestionFetcher.startSearch();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(v0 + 152) = *(v0 + 40);
  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListSuggestionFetcher.startSearch(), 0, 0);
}

{
  v1 = *(v0 + 152);
  if (v1 == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
      v1 = *(v0 + 152);
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationKit);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    outlined consume of IMAccount??(v1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 152);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v5;
      *v10 = v8;
      v11 = v5;
      _os_log_impl(&dword_1BBC58000, v6, v7, "Successfully observed suggested contact %@, notifying delegate", v9, 0xCu);
      outlined destroy of NSObject?(v10);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v12 = *(v0 + 56);

    v13 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x110))();
    v15 = *(v0 + 152);
    if (v13)
    {
      v16 = v14;
      ObjectType = swift_getObjectType();
      (*(v16 + 8))(ObjectType, v16);
      outlined consume of IMAccount??(v15);
      swift_unknownObjectRelease();
    }

    else
    {
      outlined consume of IMAccount??(*(v0 + 152));
    }

    OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<CNContact?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo9CNContactCSg_G_GMd);
    v18 = swift_task_alloc();
    *(v0 + 136) = v18;
    *v18 = v0;
    v19 = OUTLINED_FUNCTION_1_107();

    return MEMORY[0x1EEE6D8C8](v19);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 48) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

id RecentsListSuggestionFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentsListSuggestionFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void RecentsListSuggestionFetcher.autocompleteFetch(_:didReceive:)(uint64_t a1, unint64_t a2)
{
  v49[1] = *MEMORY[0x1E69E9840];
  if (*(v2 + OBJC_IVAR____TtC15ConversationKit28RecentsListSuggestionFetcher_timeoutTask))
  {

    MEMORY[0x1BFB21000](v4, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  if (a2 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1BFB22010](0, a2);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BAC30;
  *(v7 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  v8 = [v6 value];
  if (v8)
  {
    v8 = outlined bridged method (ob) of @objc CNAutocompleteResultValue.address.getter(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = (v2 + OBJC_IVAR____TtC15ConversationKit28RecentsListSuggestionFetcher_address);
  *v10 = v8;
  v10[1] = v9;

  v11 = specialized _arrayForceCast<A, B>(_:)();
  v49[0] = 0;
  v12 = outlined bridged method (mbnnn) of @objc CNAutocompleteResult.contactWithKeys(toFetch:)(v11, v49, v6);
  v13 = v49[0];
  if (!v12)
  {
    v22 = v13;
    v23 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.conversationKit);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1BBC58000, v25, v26, "hitting error when fetching autocomplete suggestions，trying to fetch using address", v27, 2u);
      OUTLINED_FUNCTION_27();
    }

    v28 = v10[1];
    if (!v28)
    {

      return;
    }

    v48 = v23;
    v29 = *v10;
    v30 = objc_allocWithZone(MEMORY[0x1E695CE28]);

    v31 = [v30 init];
    v32 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BC4BA940;
    *(v33 + 32) = v29;
    *(v33 + 40) = v28;

    isa = Array._bridgeToObjectiveC()().super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
    v35 = Array._bridgeToObjectiveC()().super.isa;

    v36 = [v32 contactsByContactHandleForContactHandles:isa keyDescriptors:v35];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd);
    v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = specialized Dictionary.subscript.getter(v29, v28, v37);

    if (v38)
    {
      if (specialized Array.count.getter(v38))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v38 & 0xC000000000000001) == 0, v38);
        if ((v38 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x1BFB22010](0, v38);
        }

        else
        {
          v39 = *(v38 + 32);
        }

        v40 = v39;

        v41 = v40;
        RecentsListSuggestionFetcher.suggestedContact.setter();
        v42 = v41;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138412290;
          *(v45 + 4) = v42;
          *v46 = v40;
          v47 = v42;
          _os_log_impl(&dword_1BBC58000, v43, v44, "successfully fetched suggested contact from address: %@", v45, 0xCu);
          outlined destroy of NSObject?(v46);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        else
        {
        }

        return;
      }
    }

    else
    {
    }

    return;
  }

  v14 = v12;
  RecentsListSuggestionFetcher.suggestedContact.setter();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.conversationKit);
  v16 = v14;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v12;
    v21 = v16;
    _os_log_impl(&dword_1BBC58000, v17, v18, "successfully fetched suggested contact %@", v19, 0xCu);
    outlined destroy of NSObject?(v20);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }
}

void RecentsListSuggestionFetcher.autocompleteFetch(_:didFailWithError:)()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationKit);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1BBC58000, oslog, v1, "hitting error when running autocompleteFetch", v2, 2u);
    OUTLINED_FUNCTION_27();
  }
}

id outlined bridged method (mbnnn) of @objc CNAutocompleteResult.contactWithKeys(toFetch:)(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [a3 contactWithKeysToFetch:isa error:a2];

  return v6;
}

uint64_t outlined bridged method (ob) of @objc CNAutocompleteResultValue.address.getter(void *a1)
{
  v2 = [a1 address];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void type metadata completion function for RecentsListSuggestionFetcher()
{
  type metadata accessor for Published<CNContact?>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<CNContact?>()
{
  if (!lazy cache variable for type metadata for Published<CNContact?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo9CNContactCSgMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<CNContact?>);
    }
  }
}

unint64_t type metadata accessor for CNAutocompleteResult()
{
  result = lazy cache variable for type metadata for CNAutocompleteResult;
  if (!lazy cache variable for type metadata for CNAutocompleteResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNAutocompleteResult);
  }

  return result;
}

uint64_t partial apply for closure #1 in RecentsListSuggestionFetcher.startSearch()()
{
  OUTLINED_FUNCTION_24_0();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #2 in RecentsListViewController.presentBlockAllAction(of:);

  return closure #1 in RecentsListSuggestionFetcher.startSearch()(v3, v4);
}

void *ParticipantVideoView.ViewModel.init(videoProvider:videoTransform:prefersSnapshotFadeAnimation:prefersAnimatedVideoTransform:shouldRegisterVideoLayers:freezeFrameUntilUpdate:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v12;
  *(a7 + 32) = *(a1 + 32);
  result = memcpy((a7 + 40), a2, 0x80uLL);
  *(a7 + 168) = a3;
  *(a7 + 169) = a4;
  *(a7 + 170) = a5;
  *(a7 + 171) = a6;
  return result;
}

BOOL static ParticipantVideoView.ViewModel.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29_1();
  ParticipantVideoView.ViewModel.hash(into:)();
  v0 = Hasher._finalize()();
  OUTLINED_FUNCTION_29_1();
  ParticipantVideoView.ViewModel.hash(into:)();
  return v0 == Hasher._finalize()();
}

uint64_t ParticipantVideoView.ViewModel.contentsRect.getter()
{
  outlined init with copy of ParticipantVideoProvider?(v0, v4);
  v1 = v5;
  if (!v5)
  {
    return outlined destroy of TapInteractionHandler?(v4, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  }

  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 64))(&v7, v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

Swift::Int ParticipantVideoView.Errors.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantVideoView.Errors()
{
  Hasher.init(_seed:)();
  ParticipantVideoView.Errors.hash(into:)();
  return Hasher._finalize()();
}

id ParticipantVideoView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ParticipantVideoView.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView;
  v3 = type metadata accessor for ParticipantVideoCameraView();
  v4 = objc_allocWithZone(v3);
  v4[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 0;
  v24.receiver = v4;
  v24.super_class = v3;
  *&v0[v2] = OUTLINED_FUNCTION_0_3(&v24, sel_initWithFrame_);
  v5 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView;
  v6 = objc_allocWithZone(v3);
  v6[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 0;
  v23.receiver = v6;
  v23.super_class = v3;
  *&v0[v5] = OUTLINED_FUNCTION_0_3(&v23, sel_initWithFrame_);
  v7 = &v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousViewModelHash];
  *v7 = 0;
  v7[8] = 1;
  *&v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot] = 0;
  v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_hasPerformedFirstVideoTransform] = 0;
  v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_shouldSkipTransformsForLayerHostMode] = 0;
  v8 = &v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForFrontVideoProvider];
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = &v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForBackVideoProvider];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_isViewFrozen] = 0;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v10 = OUTLINED_FUNCTION_0_3(&v22, sel_initWithFrame_);
  [v10 setClipsToBounds_];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 280))())
  {
    v11 = objc_opt_self();
    v12 = [v11 systemRedColor];
    [v10 setBackgroundColor_];

    v13 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView;
    v14 = *&v10[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView];
    v15 = [v11 systemBlueColor];
    [v14 setBackgroundColor_];

    v16 = [*&v10[v13] layer];
    GenericCMYK = CGColorCreateGenericCMYK(0.0, 0.0, 1.0, 0.0, 1.0);
    [v16 setBorderColor_];

    v18 = [*&v10[v13] layer];
    [v18 setBorderWidth_];
  }

  v19 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView;
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000020, 0x80000001BC505590, *&v10[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView]);
  v20 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView;
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD00000000000001FLL, 0x80000001BC5055C0, *&v10[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView]);
  [v10 addSubview_];
  [v10 addSubview_];
  return v10;
}

id ParticipantVideoView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantVideoView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView;
  v2 = type metadata accessor for ParticipantVideoCameraView();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 0;
  v10.receiver = v3;
  v10.super_class = v2;
  *(v0 + v1) = OUTLINED_FUNCTION_0_3(&v10, sel_initWithFrame_);
  v4 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView;
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 0;
  v9.receiver = v5;
  v9.super_class = v2;
  *(v0 + v4) = OUTLINED_FUNCTION_0_3(&v9, sel_initWithFrame_);
  v6 = v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousViewModelHash;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_hasPerformedFirstVideoTransform) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_shouldSkipTransformsForLayerHostMode) = 0;
  v7 = v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForFrontVideoProvider;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForBackVideoProvider;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_isViewFrozen) = 0;
  OUTLINED_FUNCTION_37_2();
  __break(1u);
}

id ParticipantVideoView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void ParticipantVideoView.init(frame:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView;
  v2 = type metadata accessor for ParticipantVideoCameraView();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 0;
  v10.receiver = v3;
  v10.super_class = v2;
  *(v0 + v1) = OUTLINED_FUNCTION_0_3(&v10, sel_initWithFrame_);
  v4 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView;
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 0;
  v9.receiver = v5;
  v9.super_class = v2;
  *(v0 + v4) = OUTLINED_FUNCTION_0_3(&v9, sel_initWithFrame_);
  v6 = v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousViewModelHash;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_hasPerformedFirstVideoTransform) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_shouldSkipTransformsForLayerHostMode) = 0;
  v7 = v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForFrontVideoProvider;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForBackVideoProvider;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_isViewFrozen) = 0;
  OUTLINED_FUNCTION_37_2();
  __break(1u);
}

Swift::Void __swiftcall ParticipantVideoView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  ParticipantVideoView._layout()();
}

uint64_t ParticipantVideoView._layout()()
{
  v1 = v0;
  [v0 bounds];
  result = CGRectIsInfinite(v68);
  if ((result & 1) == 0)
  {
    [v0 bounds];
    result = CGRectIsEmpty(v69);
    if ((result & 1) == 0)
    {
      if (v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_shouldSkipTransformsForLayerHostMode] == 1)
      {
        v3 = *&v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView];
        v4 = [v3 layer];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v13 = *MEMORY[0x1E695F058];
        v14 = *(MEMORY[0x1E695F058] + 8);
        v15 = *(MEMORY[0x1E695F058] + 16);
        v16 = *(MEMORY[0x1E695F058] + 24);
        v70.origin.x = v6;
        v70.origin.y = v8;
        v70.size.width = v10;
        v70.size.height = v12;
        v72.origin.x = *MEMORY[0x1E695F058];
        v72.origin.y = v14;
        v72.size.width = v15;
        v72.size.height = v16;
        if (!CGRectEqualToRect(v70, v72))
        {
          v17 = &v1[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForFrontVideoProvider];
          swift_beginAccess();
          outlined init with copy of ParticipantVideoProvider?(v17, &v65);
          v18 = *(&v66 + 1);
          outlined destroy of TapInteractionHandler?(&v65, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
          if (v18)
          {
            if (*(v17 + 24))
            {
              outlined init with copy of IDSLookupManager(v17, &v65);
              v19 = v67;
              __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
              v20 = [v3 layer];
              (*(v19 + 120))();

              __swift_destroy_boxed_opaque_existential_1(&v65);
            }

            v67 = 0;
            v65 = 0u;
            v66 = 0u;
            swift_beginAccess();
            outlined assign with take of ParticipantVideoProvider?(&v65, v17);
            swift_endAccess();
          }
        }

        v21 = *&v1[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView];
        v22 = [v21 layer];
        [v22 bounds];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;

        v71.origin.x = v24;
        v71.origin.y = v26;
        v71.size.width = v28;
        v71.size.height = v30;
        v73.origin.x = v13;
        v73.origin.y = v14;
        v73.size.width = v15;
        v73.size.height = v16;
        if (!CGRectEqualToRect(v71, v73))
        {
          v31 = &v1[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForBackVideoProvider];
          swift_beginAccess();
          outlined init with copy of ParticipantVideoProvider?(v31, &v65);
          v32 = *(&v66 + 1);
          outlined destroy of TapInteractionHandler?(&v65, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
          if (v32)
          {
            if (*(v31 + 24))
            {
              outlined init with copy of IDSLookupManager(v31, &v65);
              v33 = v67;
              __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
              v34 = [v21 layer];
              (*(v33 + 120))();

              __swift_destroy_boxed_opaque_existential_1(&v65);
            }

            v67 = 0;
            v65 = 0u;
            v66 = 0u;
            swift_beginAccess();
            outlined assign with take of ParticipantVideoProvider?(&v65, v31);
            swift_endAccess();
          }
        }

        v35 = objc_opt_self();
        [v35 begin];
        v36 = outlined bridged method (ob) of @objc CALayer.sublayers.getter([v3 layer]);
        v37 = MEMORY[0x1E69E7CC0];
        if (v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = MEMORY[0x1E69E7CC0];
        }

        result = specialized Array.count.getter(v38);
        if (result)
        {
          v39 = result;
          if (result < 1)
          {
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v40 = 0;
          do
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x1BFB22010](v40, v38);
            }

            else
            {
              v41 = *(v38 + 8 * v40 + 32);
            }

            v42 = v41;
            ++v40;
            [v1 bounds];
            [v42 setFrame_];
          }

          while (v39 != v40);
        }

        v43 = outlined bridged method (ob) of @objc CALayer.sublayers.getter([v21 layer]);
        if (v43)
        {
          v44 = v43;
        }

        else
        {
          v44 = v37;
        }

        result = specialized Array.count.getter(v44);
        if (result)
        {
          v45 = result;
          if (result < 1)
          {
LABEL_50:
            __break(1u);
            return result;
          }

          v46 = 0;
          do
          {
            if ((v44 & 0xC000000000000001) != 0)
            {
              v47 = MEMORY[0x1BFB22010](v46, v44);
            }

            else
            {
              v47 = *(v44 + 8 * v46 + 32);
            }

            v48 = v47;
            ++v46;
            [v1 bounds];
            [v48 setFrame_];
          }

          while (v45 != v46);
        }

        [v35 commit];
      }

      v49 = [v1 subviews];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
      v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      result = specialized Array.count.getter(v50);
      if (!result)
      {
      }

      v51 = result;
      if (result >= 1)
      {
        v52 = 0;
        v53 = v50 & 0xC000000000000001;
        v54 = &selRef_isRecordingAllowed;
        do
        {
          if (v53)
          {
            v55 = MEMORY[0x1BFB22010](v52, v50);
          }

          else
          {
            v55 = *(v50 + 8 * v52 + 32);
          }

          v56 = v55;
          [v55 v54[61]];
          if (v58 == 0.0 && v57 == 0.0)
          {
            [v1 bounds];
            [v56 setFrame_];
          }

          else
          {
            v59 = [v1 layer];
            v60 = objc_opt_self();
            v61 = v50;
            v62 = v53;
            v63 = v56;
            v64 = v1;
            [v60 begin];
            [v60 setDisableActions_];
            [v64 bounds];
            [v63 setFrame_];
            [v60 commit];

            v54 = &selRef_isRecordingAllowed;
            v53 = v62;
            v50 = v61;
          }

          ++v52;
        }

        while (v51 != v52);
      }

      __break(1u);
      goto LABEL_49;
    }
  }

  return result;
}

void ParticipantVideoView.configure(with:)(_BYTE *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousViewModelHash];
  v5 = *&v1[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousViewModelHash];
  v6 = v1[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousViewModelHash + 8];
  Hasher.init(_seed:)();
  ParticipantVideoView.ViewModel.hash(into:)();
  if (v5 == Hasher._finalize()())
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  v71 = *v4;
  v70 = v4[8];
  v72 = v7;
  if (v7 == 1)
  {
    Hasher.init(_seed:)();
    ParticipantVideoView.ViewModel.hash(into:)();
    *v4 = Hasher._finalize()();
    v4[8] = 0;
    v8 = MEMORY[0x1E69E6158];
    if (v6)
    {
      goto LABEL_6;
    }

    if (a1[171] != 1)
    {
      if (a1[168] == 1)
      {
        ParticipantVideoView.freezeCurrentFrame()();
        v20 = 1;
LABEL_16:
        ParticipantVideoView.hideSnapshot(animated:)(v20);
        goto LABEL_17;
      }

LABEL_6:
      if (v1[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_isViewFrozen] != 1)
      {
        goto LABEL_17;
      }

      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1BC4BAA20;
      _typeName(_:qualified:)();
      OUTLINED_FUNCTION_11_60();
      OUTLINED_FUNCTION_5_83();
      v10 = OUTLINED_FUNCTION_10_52();
      v12 = v11;
      *(v9 + 56) = v8;
      v13 = lazy protocol witness table accessor for type String and conformance String();
      *(v9 + 64) = v13;
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      ParticipantVideoView.ViewModel.contentsRect.getter();
      v75 = v14;
      v76 = v15;
      v77 = v16;
      v78 = v17;
      type metadata accessor for CGRect(0);
      v18 = String.init<A>(reflecting:)();
      *(v9 + 96) = v8;
      *(v9 + 104) = v13;
      *(v9 + 72) = v18;
      *(v9 + 80) = v19;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v20 = 0;
      goto LABEL_16;
    }

    ParticipantVideoView.freezeCurrentFrame()();
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BC4BA940;
    _typeName(_:qualified:)();
    OUTLINED_FUNCTION_11_60();
    OUTLINED_FUNCTION_5_83();
    v22 = OUTLINED_FUNCTION_10_52();
    v24 = v23;
    *(v21 + 56) = v8;
    *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

LABEL_17:
  outlined init with copy of ParticipantVideoProvider?(a1, &v75);
  if (!v78)
  {
    outlined destroy of TapInteractionHandler?(&v75, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
  type metadata accessor for RemoteParticipantVideoProvider();
  if ((OUTLINED_FUNCTION_6_69() & 1) == 0)
  {
    goto LABEL_30;
  }

  v25 = v80;
  OUTLINED_FUNCTION_8_66();
  v27 = (*(v26 + 160))();
  if ((v27 & 0x100000000) != 0)
  {

    goto LABEL_30;
  }

  v28 = VideoAttributeOrientation.deviceOrientation.getter(v27);
  OUTLINED_FUNCTION_8_66();
  v30 = COERCE_DOUBLE((*(v29 + 240))());
  v32 = v31;
  v34 = v33;

  if (v34)
  {
LABEL_30:
    ParticipantVideoView.ViewModel.contentsRect.getter();
    v36 = 0;
    goto LABEL_31;
  }

  if (!v28)
  {
    if (v30 < v32)
    {
      goto LABEL_56;
    }

    goto LABEL_30;
  }

  if (v28 != 2 || v30 >= v32)
  {
    goto LABEL_30;
  }

LABEL_56:
  v36 = 1;
LABEL_31:
  outlined init with copy of ParticipantVideoProvider?(a1, &v75);
  v37 = v78;
  if (v78)
  {
    v38 = v79;
    __swift_project_boxed_opaque_existential_1(&v75, v78);
    v39 = COERCE_DOUBLE((*(v38 + 80))(v37, v38));
    v41 = v40;
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v75);
    v44 = (v43 & 1) != 0 || v39 == v41;
    v45 = (v43 & 1) != 0;
  }

  else
  {
    outlined destroy of TapInteractionHandler?(&v75, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    v39 = 0.0;
    v41 = 0.0;
    v44 = 1;
    v45 = 1;
  }

  outlined init with copy of ParticipantVideoProvider?(a1, &v75);
  if (v78)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
    type metadata accessor for RemoteParticipantVideoProvider();
    if (OUTLINED_FUNCTION_6_69())
    {
      v49 = v80;
      if (v44 && (v36 & 1) == 0 && ((*((*MEMORY[0x1E69E7D40] & *v80) + 0x148))() & 1) != 0)
      {
        v50 = v49;
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, static Logger.conversationKit);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v74 = v53;
          v54 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v80 = v73;
          *v54 = 136315650;
          v55 = _typeName(_:qualified:)();
          v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v80);

          *(v54 + 4) = v57;
          *(v54 + 12) = 2080;
          *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001BC505610, &v80);
          *(v54 + 22) = 2080;
          if (v45)
          {
            v58 = 0xE300000000000000;
            v59 = 7104878;
          }

          else
          {
            v75 = v39;
            v76 = v41;
            type metadata accessor for CGSize(0);
            v59 = String.init<A>(reflecting:)();
            v58 = v68;
          }

          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v58, &v80);

          *(v54 + 24) = v69;
          _os_log_impl(&dword_1BBC58000, v52, v74, "%s.%s: Skipping Attributes Update for Square Video %s", v54, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1BFB23DF0](v73, -1, -1);
          MEMORY[0x1BFB23DF0](v54, -1, -1);
        }

        *v4 = v71;
        v4[8] = v70;
        lazy protocol witness table accessor for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors();
        swift_allocError();
        swift_willThrow();

        return;
      }
    }
  }

  else
  {
    outlined destroy of TapInteractionHandler?(&v75, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  }

  if ((v72 & 1) != 0 || (ParticipantVideoView.ViewModel.contentsRect.getter(), v81.origin.x = OUTLINED_FUNCTION_7_68(), !CGRectEqualToRect(v81, v82)))
  {
    if (a1[170] == 1)
    {
      ParticipantVideoView.registerVideoLayers(with:)(a1, v46, v47, v48);
    }

    v60 = v2;
    v61 = [v60 layer];
    v62 = objc_opt_self();
    [v62 begin];
    [v62 setDisableActions_];
    v63 = OUTLINED_FUNCTION_7_68();
    closure #1 in ParticipantVideoView.configure(with:)(v64, a1, v63, v65, v66, v67);
    [v62 commit];
  }
}

Swift::Int ParticipantVideoView.ViewModel.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  ParticipantVideoView.ViewModel.hash(into:)();
  return Hasher._finalize()();
}

void ParticipantVideoView.freezeCurrentFrame()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_isViewFrozen;
  if ((v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_isViewFrozen] & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot;
    v3 = *&v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot];
    if (v3)
    {
      [v3 removeFromSuperview];
    }

    v4 = [v0 snapshotViewAfterScreenUpdates_];
    v5 = *&v0[v2];
    *&v0[v2] = v4;
    v6 = v4;

    if (v6)
    {
      [v0 addSubview_];

      v0[v1] = 1;
    }
  }
}

void ParticipantVideoView.hideSnapshot(animated:)(char a1)
{
  if (a1)
  {
    v2 = 0.5;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v14 = partial apply for closure #1 in ParticipantVideoView.hideSnapshot(animated:);
  v15 = v4;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed () -> ();
  v13 = &block_descriptor_22_0;
  v5 = _Block_copy(&v10);
  v6 = v1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v14 = partial apply for closure #2 in ParticipantVideoView.hideSnapshot(animated:);
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v13 = &block_descriptor_28_1;
  v8 = _Block_copy(&v10);
  v9 = v6;

  [v3 animateWithDuration:v5 animations:v8 completion:v2];
  _Block_release(v8);
  _Block_release(v5);
}

uint64_t ParticipantVideoView.registerVideoLayers(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(v4 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_shouldSkipTransformsForLayerHostMode) == 1)
  {
    [OUTLINED_FUNCTION_14_39() bounds];
    OUTLINED_FUNCTION_9_60();
    v7 = OUTLINED_FUNCTION_3_98();
    if (v7)
    {
      v11 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForFrontVideoProvider;
      OUTLINED_FUNCTION_12_51();
      outlined assign with copy of ParticipantVideoProvider?(a1, v5 + v11);
    }

    else
    {
      OUTLINED_FUNCTION_16_42(v7, v8, v9, v10);
      if (*(&v33 + 1))
      {
        v18 = v34;
        __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
        v19 = OUTLINED_FUNCTION_14_39();
        (*(v18 + 120))();

        __swift_destroy_boxed_opaque_existential_1(&v32);
      }

      else
      {
        outlined destroy of TapInteractionHandler?(&v32, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
      }

      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v23 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForFrontVideoProvider;
      OUTLINED_FUNCTION_13_49();
      outlined assign with take of ParticipantVideoProvider?(&v32, v5 + v23);
    }

    swift_endAccess();
    [OUTLINED_FUNCTION_14_39() bounds];
    OUTLINED_FUNCTION_9_60();
    v24 = OUTLINED_FUNCTION_3_98();
    if (v24)
    {
      v28 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForBackVideoProvider;
      OUTLINED_FUNCTION_12_51();
      outlined assign with copy of ParticipantVideoProvider?(a1, v5 + v28);
    }

    else
    {
      OUTLINED_FUNCTION_16_42(v24, v25, v26, v27);
      if (*(&v33 + 1))
      {
        v29 = v34;
        __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
        v30 = OUTLINED_FUNCTION_14_39();
        (*(v29 + 120))();

        __swift_destroy_boxed_opaque_existential_1(&v32);
      }

      else
      {
        outlined destroy of TapInteractionHandler?(&v32, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
      }

      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v31 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForBackVideoProvider;
      OUTLINED_FUNCTION_13_49();
      outlined assign with take of ParticipantVideoProvider?(&v32, v5 + v31);
    }

    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_16_42(a1, a2, a3, a4);
    if (*(&v33 + 1))
    {
      v12 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      v13 = [*(v4 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView) layer];
      (*(v12 + 120))();

      v14 = __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
      v14 = outlined destroy of TapInteractionHandler?(&v32, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    }

    OUTLINED_FUNCTION_16_42(v14, v15, v16, v17);
    if (*(&v33 + 1))
    {
      v20 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      v21 = [*(v4 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView) layer];
      (*(v20 + 120))();

      return __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
      return outlined destroy of TapInteractionHandler?(&v32, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    }
  }
}

void closure #1 in ParticipantVideoView.configure(with:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if ((*(a1 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_shouldSkipTransformsForLayerHostMode) & 1) == 0)
  {
    v12 = *(a1 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView);
    v13 = [v12 layer];
    [v13 setContentsRect_];

    v14 = *(a1 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView);
    v15 = [v14 layer];
    [v15 setContentsRect_];

    v16 = [v12 layer];
    memcpy(__dst, (a2 + 40), sizeof(__dst));
    [v16 setTransform_];

    v17 = [v14 layer];
    memcpy(__dst, (a2 + 40), sizeof(__dst));
    [v17 setTransform_];

    v18 = [v12 layer];
    v19 = MEMORY[0x1BFB209B0](0xD000000000000014, 0x80000001BC5057F0);
    v20 = [v18 valueForKeyPath_];

    if (v20)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    __dst[0] = v28;
    __dst[1] = v29;
    if (*(&v29 + 1))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      if (swift_dynamicCast())
      {
        if (one-time initialization token for participant != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.participant);
        v22 = v27;
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 134217984;
          [v22 doubleValue];
          *(v25 + 4) = v26;
          _os_log_impl(&dword_1BBC58000, v23, v24, "Apply video rotation: %f", v25, 0xCu);
          MEMORY[0x1BFB23DF0](v25, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      outlined destroy of TapInteractionHandler?(__dst, &_sypSgMd);
    }
  }
}

void ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(char a1, uint64_t a2, char a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = a3 & 1;
  *(v9 + 17) = a1;
  *(v9 + 24) = v4;
  if (a4)
  {
    v11 = &OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView;
    if (a1 != 1)
    {
      v11 = &OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView;
    }

    v12 = *&v4[*v11];
    v13 = v4;
    v14 = v12;
    [v13 bringSubviewToFront_];
    v15 = objc_opt_self();
    v24 = partial apply for closure #1 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:);
    v25 = v8;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed () -> ();
    v23 = &block_descriptor_47;
    v16 = _Block_copy(&v20);

    v17 = swift_allocObject();
    *(v17 + 16) = partial apply for closure #2 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:);
    *(v17 + 24) = v9;
    *(v17 + 32) = v10;
    v24 = partial apply for closure #3 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:);
    v25 = v17;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v23 = &block_descriptor_12_0;
    v18 = _Block_copy(&v20);

    [v15 transitionWithView:v13 duration:1048704 options:v16 animations:v18 completion:0.5];

    _Block_release(v18);
    _Block_release(v16);
  }

  else
  {
    v19 = v4;
    closure #1 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(a1, v19);
    closure #2 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(v10, a1, v19);
  }
}

id closure #1 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(char a1, char *a2)
{
  if (a1 == 1)
  {
    v3 = &OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView;
  }

  v4 = *&a2[*v3];
  [v4 setHidden_];

  return [a2 bringSubviewToFront_];
}

void closure #2 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(char a1, char a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a2 != 1;
    v5 = a2 == 1;
    v6 = *(a3 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView);
    [v6 setHidden_];
    v7 = [v6 layer];
    [v7 setHidden_];

    v8 = *(a3 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView);
    [v8 setHidden_];
    v9 = [v8 layer];
    [v9 setHidden_];
  }
}

void closure #3 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(char a1, void (*a2)(void), uint64_t a3, char a4)
{
  if (a1)
  {
    a2();
    if (a4)
    {
      v5 = [objc_opt_self() defaultCenter];
      v6 = v5;
      if (one-time initialization token for localPreviewDidFinishRotationAnimation != -1)
      {
        swift_once();
        v5 = v6;
      }

      [v5 postNotificationName:static Strings.Notifications.localPreviewDidFinishRotationAnimation object:0];
    }
  }
}

id closure #1 in ParticipantVideoView.hideSnapshot(animated:)(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void closure #2 in ParticipantVideoView.hideSnapshot(animated:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot;
  v4 = *(a2 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(a2 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(a2 + v3) = 0;

  *(a2 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_isViewFrozen) = 0;
}

id ParticipantVideoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ParticipantVideoView.ViewModel.hash(into:)()
{
  v1 = v0;
  outlined init with copy of ParticipantVideoProvider?(v0, v12);
  v2 = v12[3];
  if (!v12[3])
  {
    outlined destroy of TapInteractionHandler?(v12, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    goto LABEL_5;
  }

  v3 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (v6)
  {
LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x1BFB22640](v4);
LABEL_6:
  memcpy(v12, (v1 + 40), sizeof(v12));
  CATransform3D.hash(into:)();
  ParticipantVideoView.ViewModel.contentsRect.getter();
  return CGRect.hash(into:)(v7, v8, v9, v10);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantVideoView.ViewModel()
{
  Hasher.init(_seed:)();
  ParticipantVideoView.ViewModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t outlined assign with take of ParticipantVideoProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors()
{
  result = lazy protocol witness table cache variable for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors;
  if (!lazy protocol witness table cache variable for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors;
  if (!lazy protocol witness table cache variable for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors);
  }

  return result;
}

uint64_t outlined assign with copy of ParticipantVideoProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ParticipantVideoView.ViewModel and conformance ParticipantVideoView.ViewModel()
{
  result = lazy protocol witness table cache variable for type ParticipantVideoView.ViewModel and conformance ParticipantVideoView.ViewModel;
  if (!lazy protocol witness table cache variable for type ParticipantVideoView.ViewModel and conformance ParticipantVideoView.ViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantVideoView.ViewModel and conformance ParticipantVideoView.ViewModel);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ParticipantVideoView.Errors(_BYTE *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_15ConversationKit24ParticipantVideoProvider_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ParticipantVideoView.ViewModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 172))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticipantVideoView.ViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 168) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 172) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 172) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of ParticipantTile.updateLayerTransform(to:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 88);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a1[2];
  return v3(v6);
}

id DefaultHUDControlsRecipeGenerator.init()()
{
  v0 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v6 = static Features.shared;
  v20[4] = &type metadata for ScreeningStatusOverride;
  v20[5] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  v7 = v6;
  v20[1] = Defaults.init()();
  CallScreeningService.init(overrides:)();
  v8 = type metadata accessor for Features();
  v9 = [objc_allocWithZone(v8) init];
  type metadata accessor for SystemApertureIconFactory(0);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E6995EE0];
  v12 = (v10 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v12[3] = v0;
  v12[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(v2 + 16))(boxed_opaque_existential_1, v5, v0);
  v14 = (v10 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v14[3] = v8;
  v14[4] = &protocol witness table for Features;
  *v14 = v9;
  type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  (*(v2 + 8))(v5, v0);
  return v7;
}

void DefaultHUDControlsRecipeGenerator.defaultHUDRecipe(controlsManager:)(void *a1@<X0>, _UNKNOWN **a2@<X2>, uint64_t a3@<X8>)
{
  v159 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_1();
  v157 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_1();
  v153 = v11;
  v12 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v142[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v142[-v18];
  v20 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0);
  v160 = a1;
  v158 = v20(v17);
  if (!v158)
  {
    if (Features.sharePlayInCallsEnabled.getter())
    {
      v21 = *((*MEMORY[0x1E69E7D40] & *v160) + 0x2A0);
      v21();
      OUTLINED_FUNCTION_87();
      ObjectType = swift_getObjectType();
      (*(v3 + 152))(ObjectType, v3);
      v23 = OUTLINED_FUNCTION_28_28();
      if (v3)
      {
        (v21)(v23);
        OUTLINED_FUNCTION_87();
        v24 = swift_getObjectType();
        (*(v3 + 560))(v24, v3);
        OUTLINED_FUNCTION_28_28();
      }
    }

    v25 = [objc_opt_self() currentDevice];
    v26 = [v25 userInterfaceIdiom];

    if (v26 != 1)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v125 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v125, &static Logger.conversationControls);
      v126 = v160;
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = OUTLINED_FUNCTION_42();
        v130 = OUTLINED_FUNCTION_23();
        v163[0] = v130;
        *v129 = 136315138;
        v131 = (*((*MEMORY[0x1E69E7D40] & *v126) + 0x2A0))();
        swift_getObjectType();
        v162[0] = v131;
        v132 = String.init<A>(describing:)();
        v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v133, v163);

        *(v129 + 4) = v134;
        _os_log_impl(&dword_1BBC58000, v127, v128, "defaultHUDRecipe: No active conversation, call: %s", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v130);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      goto LABEL_58;
    }
  }

  v152 = v19;
  v161 = v12;
  v27 = v160;
  v28 = DefaultHUDControlsRecipeGenerator.defaultRecipeAttributes(controlsManager:)(v160);
  if (v29)
  {
    v32 = v28;
    v33 = v29;
    v34 = v30;
    v149 = v31;
    v151 = a3;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v35 = v34;

    v36._countAndFlagsBits = v32;
    v150 = v33;
    v36._object = v33;
    v37.super.isa = NSAttributedString.__allocating_init(string:)(v36).super.isa;
    v38 = v158;
    isa = v37.super.isa;
    if (v158)
    {
      v39 = v37.super.isa;
      v40 = [v38 remoteMembers];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
      v41 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = specialized Set.count.getter(v41);

      v43 = v161;
      if (!v42)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
        v44 = *MEMORY[0x1E69DDDC8];
        LOBYTE(v167[0]) = 0;
        v170[0] = 0x69662E6F65646976;
        v170[1] = 0xEA00000000006C6CLL;
        v170[2] = 2;
        v170[3] = v44;
        v171 = 0;
        v172 = 4;
        v173 = 0;
        v174 = 0;
        v163[0] = 0x69662E6F65646976;
        v163[1] = 0xEA00000000006C6CLL;
        v163[2] = 2;
        v163[3] = v44;
        LOWORD(v163[4]) = 0;
        v163[5] = 4;
        LOBYTE(v163[6]) = 0;
        v163[7] = 0;
        v45 = v44;
        outlined init with copy of SymbolImageDescription(v170, v162);
        outlined destroy of SymbolImageDescription(v163);
        v46 = static UIImage.symbolImage(for:)(v170);
        outlined destroy of SymbolImageDescription(v170);
        v47 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

        v48 = v47;
        [v48 setContentMode_];
        v49 = [objc_opt_self() labelColor];
        [v48 setTintColor_];

        v154 = [v48 hash];
        v155 = v48;

        goto LABEL_19;
      }
    }

    else
    {
      v59 = v37.super.isa;
      v43 = v161;
    }

    DefaultHUDControlsRecipeGenerator.defaultLeadingAccessoryView(controlsManager:)(v27);
    v154 = v61;
    v155 = v60;
LABEL_19:
    (*((*MEMORY[0x1E69E7D40] & *v27) + 0x2A0))();
    v63 = v62;
    v64 = swift_getObjectType();
    LOBYTE(v63) = (*(v63 + 352))(v64, v63);
    swift_unknownObjectRelease();
    if (v63)
    {
      v65 = 1;
    }

    else
    {
      swift_beginAccess();
      if (static ConversationControlsManager.shouldShowAVLessLeaveConfirmation)
      {
        v65 = 2;
      }

      else
      {
        v65 = 0;
      }
    }

    v146 = v65;
    v165 = 0;
    memset(v164, 0, sizeof(v164));
    v166 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1BC4BAC30;
    *(v66 + 32) = v35;
    v67 = type metadata accessor for AttributedString();
    v68 = v35;
    v69 = v157;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v67);
    swift_beginAccess();
    if (static ConversationControlsManager.shouldShowAVLessLeaveConfirmation)
    {
      v73 = 2;
    }

    else
    {
      v73 = 1;
    }

    v148 = v68;
    ConversationControlsHelper.buttonShelfActions(controlsManager:)(v160, v167);
    v145 = v167[1];
    v147 = v167[0];
    v144 = v168;
    v143 = v169;
    v74 = v43[9];
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v67);
    v78 = (v15 + v43[10]);
    v79 = v15 + v161[15];
    *(v79 + 4) = 0;
    *v79 = 0u;
    *(v79 + 1) = 0u;
    v79[40] = -2;
    *(v15 + v161[16]) = 0;
    v80 = v15 + v161[17];
    v81 = (v15 + v161[18]);
    *v81 = 1;
    OUTLINED_FUNCTION_13_7(v81, 0);
    outlined init with copy of ConversationControlsType(v164, v15);
    v83 = v154;
    v82 = v155;
    v15[6] = 0;
    v15[7] = v82;
    v15[8] = 0;
    v15[9] = v83;
    v15[10] = isa;
    v15[11] = v66;
    v78[1] = 0;
    v78[2] = 0;
    *v78 = 0;
    v12 = v161;
    outlined copy of ConversationControlsRecipe.View?(v82, 0);
    outlined assign with copy of AttributedString?(v69, v15 + v74);
    *(v15 + v12[11]) = v146;
    *(v15 + v12[12]) = 0;
    *(v15 + v12[13]) = v73;
    *(v15 + v12[14]) = 1;
    *v80 = 0;
    *(v80 + 1) = 0;
    v80[16] = -1;
    v84 = *(*&v167[0] + 16);
    v85 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
    if (v169 < 0)
    {
      v86 = v151;
      if (v84 > 5)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v102 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v102, &static Logger.conversationControls);

        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.fault.getter();
        outlined destroy of ConversationControlsRecipe.Actions(v167);
        if (os_log_type_enabled(v103, v104))
        {
          v105 = OUTLINED_FUNCTION_42();
          v106 = OUTLINED_FUNCTION_23();
          v163[0] = v106;
          *v105 = 136315138;
          v162[0] = v84;
          v107 = String.init<A>(reflecting:)();
          v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, v163);

          *(v105 + 4) = v109;
          v86 = v151;
          _os_log_impl(&dword_1BBC58000, v103, v104, "Too many buttonShelf actions (%s)", v105, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v106);
          OUTLINED_FUNCTION_27();
          v85 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
          OUTLINED_FUNCTION_27();
        }

        outlined destroy of ConversationControlsRecipe.Actions(v167);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v157, &_s10Foundation16AttributedStringVSgMd);
        outlined destroy of ConversationControlsType(v164);
        v99 = v158;
        v101 = v152;
        v100 = v153;
        goto LABEL_40;
      }
    }

    else
    {
      v86 = v151;
      if (v84 > 2)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v87 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v87, &static Logger.conversationControls);

        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.fault.getter();
        outlined destroy of ConversationControlsRecipe.Actions(v167);
        if (os_log_type_enabled(v88, v89))
        {
          v90 = OUTLINED_FUNCTION_42();
          v91 = OUTLINED_FUNCTION_23();
          v163[0] = v91;
          *v90 = 136315138;
          v162[0] = v84;
          v92 = String.init<A>(reflecting:)();
          v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v163);
          v86 = v151;

          *(v90 + 4) = v94;
          v12 = v161;
          OUTLINED_FUNCTION_24_6();
          _os_log_impl(v95, v96, v97, v98, v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v91);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        outlined destroy of ConversationControlsRecipe.Actions(v167);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v157, &_s10Foundation16AttributedStringVSgMd);
        outlined destroy of ConversationControlsType(v164);
        v99 = v158;
        v101 = v152;
        v100 = v153;
        v85 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
LABEL_40:
        outlined destroy of ConversationControlsRecipe(v15);
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v110, v111, v112, v12);
LABEL_42:
        if (__swift_getEnumTagSinglePayload(v100, 1, v12) != 1)
        {
          outlined init with take of ConversationControlsRecipe(v100, v101);
          if (SBUIIsSystemApertureEnabled())
          {
            if (v85[25] != -1)
            {
              OUTLINED_FUNCTION_0_0();
            }

            v118 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v118, &static Logger.conversationControls);
            v119 = Logger.logObject.getter();
            v120 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_18_0(v120))
            {
              *OUTLINED_FUNCTION_33() = 0;
              OUTLINED_FUNCTION_15_36(&dword_1BBC58000, v121, v120, "defaultHUD: [SystemAperture] showing content");
              OUTLINED_FUNCTION_4_4();
            }

            if (static ConversationControlsManager.shouldShowAVLessLeaveConfirmation)
            {
              v122 = 1;
            }

            else
            {
              v122 = -128;
            }

            ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v160, v122, v159, v162);
            v123 = v148;

            outlined consume of ConversationControlsRecipe.View?(v155, 0);

            v124 = v12[18];
            memcpy(v163, (v101 + v124), 0x49uLL);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v163, &_s15ConversationKit21SystemApertureElementVSgMd);
            memcpy((v101 + v124), v162, 0x49uLL);
          }

          else
          {
            v138 = v148;

            outlined consume of ConversationControlsRecipe.View?(v155, 0);
          }

          outlined init with copy of ConversationControlsRecipe(v101, v86);
          OUTLINED_FUNCTION_12();
          __swift_storeEnumTagSinglePayload(v139, v140, v141, v12);
          outlined destroy of ConversationControlsRecipe(v101);
          goto LABEL_61;
        }

        v117 = v148;

        outlined consume of ConversationControlsRecipe.View?(v155, 0);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v100, &_s15ConversationKit0A14ControlsRecipeVSgMd);
LABEL_58:
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v135, v136, v137, v12);
LABEL_61:
        OUTLINED_FUNCTION_30_0();
        return;
      }
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v157, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(v164);
    v113 = v145;
    *v79 = v147;
    *(v79 + 1) = v113;
    *(v79 + 4) = v144;
    v79[40] = v143;
    v100 = v153;
    outlined init with copy of ConversationControlsRecipe(v15, v153);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v12);
    outlined destroy of ConversationControlsRecipe(v15);
    v99 = v158;
    v101 = v152;
    goto LABEL_42;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v50 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v50, &static Logger.conversationControls);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_18_0(v52))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_15_36(&dword_1BBC58000, v53, v52, "defaultHUDRecipe: Unable to create recipe attributes.");
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
}

void DefaultHUDControlsRecipeGenerator.unauthorizedParticipantHUDRecipe(controlsManager:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_1();
  v106 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_1();
  v104 = v9;
  v10 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v94[-v16];
  v18 = MEMORY[0x1E69E7D40];
  v19 = (*MEMORY[0x1E69E7D40] & *a1) + 2344;
  v20 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x928);
  v21 = v20(v15);
  v22 = (*((*v18 & *a1) + 0x2C0))();
  v23.super.isa = ConversationControlsHelper.unauthorizedParticipantAssets(controlsMode:conversation:)(v21, v22).super.isa;
  v107 = v24;

  if (v23.super.isa)
  {
    *&v100 = v19;
    v103 = a2;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    SymbolImageDescribers.ConversationControls.symbolImageDescription.getter();
    v25 = static UIImage.symbolImage(for:)(v111);
    outlined destroy of SymbolImageDescription(v111);
    v26 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    v27 = v26;
    [v27 setContentMode_];
    v28 = [objc_opt_self() labelColor];
    v105 = v27;
    [v27 setTintColor_];

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v29, &static Logger.conversationControls);
    v30 = a1;
    v98 = v28;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    v33 = os_log_type_enabled(v31, v32);
    v102 = v17;
    v101 = v10;
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_42();
      v35 = OUTLINED_FUNCTION_23();
      __dst[0] = v35;
      *v34 = 136315138;
      LOBYTE(v112[0]) = (v20)();
      v36 = String.init<A>(describing:)();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, __dst);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1BBC58000, v31, v32, "unauthorizedParticipantHud, controlsMode: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_27();
    }

    __dst[0] = 1;
    memset(&__dst[1], 0, 32);
    LOBYTE(__dst[5]) = 7;
    v39 = v105;
    v99 = [v105 hash];
    v40 = type metadata accessor for AttributedString();
    v41 = v106;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v40);
    v45 = v23.super.isa;
    v46 = v107;

    ConversationControlsHelper.buttonShelfActions(controlsManager:)(v30, v112);
    v97 = v112[1];
    v100 = v112[0];
    v96 = v113;
    v95 = v114;
    v47 = v101;
    v48 = v101[9];
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v40);
    v52 = (v13 + v47[10]);
    v53 = v13 + v47[15];
    *(v53 + 4) = 0;
    *v53 = 0u;
    *(v53 + 1) = 0u;
    v53[40] = -2;
    *(v13 + v47[16]) = 0;
    v54 = v13 + v47[17];
    v55 = (v13 + v47[18]);
    *v55 = 1;
    OUTLINED_FUNCTION_13_7(v55, 0);
    outlined init with copy of ConversationControlsType(__dst, v13);
    v13[6] = 0;
    v13[7] = v39;
    v56 = v45;
    v57 = v99;
    v13[8] = 0;
    v13[9] = v57;
    v13[10] = v45;
    v13[11] = v46;
    v52[1] = 0;
    v52[2] = 0;
    *v52 = 0;
    outlined assign with copy of AttributedString?(v41, v13 + v48);
    *(v13 + v47[11]) = 2;
    *(v13 + v47[12]) = 0;
    *(v13 + v47[13]) = 1;
    *(v13 + v47[14]) = 1;
    *v54 = 0;
    *(v54 + 1) = 0;
    v54[16] = -1;
    v58 = *(*&v112[0] + 16);
    if (v114 < 0)
    {
      v59 = v104;
      if (v58 > 5)
      {

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.fault.getter();
        outlined destroy of ConversationControlsRecipe.Actions(v112);
        if (os_log_type_enabled(v60, v61))
        {
          v46 = OUTLINED_FUNCTION_42();
          v62 = OUTLINED_FUNCTION_23();
          v109 = v62;
          *v46 = 136315138;
          v108 = v58;
          v73 = String.init<A>(reflecting:)();
          v58 = v74;
          v75 = v56;
          v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v109);

          *(v46 + 4) = v76;
          v56 = v75;
          v67 = "Too many buttonShelf actions (%s)";
          goto LABEL_16;
        }

LABEL_17:

        outlined destroy of ConversationControlsRecipe.Actions(v112);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, &_s10Foundation16AttributedStringVSgMd);
        outlined destroy of ConversationControlsType(__dst);
        OUTLINED_FUNCTION_18_38();
        outlined destroy of ConversationControlsRecipe(v13);
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v77, v78, v79, v47);
LABEL_19:
        if (__swift_getEnumTagSinglePayload(v59, 1, v47) == 1)
        {

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v59, &_s15ConversationKit0A14ControlsRecipeVSgMd);
          OUTLINED_FUNCTION_10_0();
          __swift_storeEnumTagSinglePayload(v84, v85, v86, v47);
        }

        else
        {
          outlined init with take of ConversationControlsRecipe(v59, v58);
          if (SBUIIsSystemApertureEnabled())
          {
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_18_0(v88))
            {
              *OUTLINED_FUNCTION_33() = 0;
              OUTLINED_FUNCTION_15_36(&dword_1BBC58000, v89, v88, "unauthorizedParticipantHUD: [SystemAperture] showing content");
              OUTLINED_FUNCTION_4_4();
            }

            v90 = (v58 + v47[18]);
            memcpy(__dst, v90, 0x49uLL);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
            *v90 = 0u;
            v90[1] = 0u;
            v90[2] = 0u;
            v90[3] = 0u;
            *(v90 + 8) = 4;
            *(v90 + 72) = -2;
          }

          else
          {
          }

          outlined init with copy of ConversationControlsRecipe(v58, v46);
          OUTLINED_FUNCTION_12();
          __swift_storeEnumTagSinglePayload(v91, v92, v93, v47);
          outlined destroy of ConversationControlsRecipe(v58);
        }

        OUTLINED_FUNCTION_30_0();
        return;
      }
    }

    else
    {
      v59 = v104;
      if (v58 > 2)
      {

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.fault.getter();
        outlined destroy of ConversationControlsRecipe.Actions(v112);
        if (os_log_type_enabled(v60, v61))
        {
          v46 = OUTLINED_FUNCTION_42();
          v62 = OUTLINED_FUNCTION_23();
          v109 = v62;
          *v46 = 136315138;
          v108 = v58;
          v63 = String.init<A>(reflecting:)();
          v58 = v64;
          v65 = v56;
          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v109);

          *(v46 + 4) = v66;
          v56 = v65;
          v67 = "Too many trailing actions (%s)";
LABEL_16:
          _os_log_impl(&dword_1BBC58000, v60, v61, v67, v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v62);
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_27();
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(__dst);
    v80 = v97;
    *v53 = v100;
    *(v53 + 1) = v80;
    *(v53 + 4) = v96;
    v53[40] = v95;
    outlined init with copy of ConversationControlsRecipe(v13, v59);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v47);
    outlined destroy of ConversationControlsRecipe(v13);
    OUTLINED_FUNCTION_18_38();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
}

uint64_t DefaultHUDControlsRecipeGenerator.defaultRecipeAttributes(controlsManager:)(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0))();
  if (v4 || (Features.sharePlayInCallsEnabled.getter() & 1) != 0 && (OUTLINED_FUNCTION_5_84(), (*(v27 + 672))(), v29 = v28, v30 = swift_getObjectType(), LOBYTE(v29) = (*(v29 + 152))(v30, v29), swift_unknownObjectRelease(), (v29 & 1) != 0) || (v31 = [objc_opt_self() currentDevice], v32 = objc_msgSend(v31, sel_userInterfaceIdiom), v31, v32 == 1))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v6.super.isa = NSAttributedString.__allocating_init(string:)(v5).super.isa;
    if (!v4)
    {
      OUTLINED_FUNCTION_5_84();
      v46 += 84;
      v47 = *v46;
      (*v46)();
      OUTLINED_FUNCTION_87();
      ObjectType = swift_getObjectType();
      v97 = (*(v1 + 72))(ObjectType, v1);
      v49 = swift_unknownObjectRelease();
      (v47)(v49);
      OUTLINED_FUNCTION_87();
      v50 = swift_getObjectType();
      (*(v1 + 48))(v98, v50, v1);
      swift_unknownObjectRelease();
      v51 = ConversationControlsHelper.badge(forCall:)(v98);
      __swift_destroy_boxed_opaque_existential_1(v98);
      v52 = ConversationControlsHelper.assetsForCallHUD(controlsManager:)(a1);
      if (v52)
      {
        v53 = v52;

        v54 = one-time initialization token for conversationKit;
        v55 = v53;
        if (v54 != -1)
        {
          OUTLINED_FUNCTION_2_9();
        }

        v56 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v56, static Logger.conversationKit);
        v57 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_18_0(v21))
        {
          v58 = OUTLINED_FUNCTION_33();
          *v58 = 0;
          OUTLINED_FUNCTION_24_6();
          _os_log_impl(v59, v60, v61, v62, v58, 2u);
          OUTLINED_FUNCTION_27();
        }
      }

      else
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_2_9();
        }

        v63 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v63, static Logger.conversationKit);
        v64 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_18_0(v21))
        {
          v65 = OUTLINED_FUNCTION_33();
          *v65 = 0;
          OUTLINED_FUNCTION_24_6();
          _os_log_impl(v66, v67, v68, v69, v65, 2u);
          OUTLINED_FUNCTION_27();
        }
      }

LABEL_36:
      swift_beginAccess();
      if (static ConversationControlsManager.shouldShowAVLessLeaveConfirmation == 1)
      {

        v70 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_5_5();
        v73 = 0x80000001BC505810;
        v74 = 0xD00000000000001CLL;
      }

      else
      {
        OUTLINED_FUNCTION_5_84();
        v75 += 84;
        v76 = *v75;
        (*v75)(v77);
        OUTLINED_FUNCTION_87();
        swift_getObjectType();
        Call.isFromMessagesScreenShare.getter();
        v78 = OUTLINED_FUNCTION_28_28();
        if ((v21 & 1) == 0 || (v76(v78), OUTLINED_FUNCTION_87(), v79 = swift_getObjectType(), (*(v21 + 208))(v79, v21), v80 = OUTLINED_FUNCTION_28_28(), v21 == 1))
        {
          if (!v4)
          {
            return v97;
          }

          v81 = [v4 screenSharingRequests];
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUScreenSharingRequest);
          lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUScreenSharingRequest and conformance NSObject, &lazy cache variable for type metadata for TUScreenSharingRequest);
          v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v81) = specialized Set.isEmpty.getter(v21);

          if (v81)
          {
            goto LABEL_45;
          }
        }

        v76(v80);
        OUTLINED_FUNCTION_87();
        v82 = swift_getObjectType();
        v83 = (*(v21 + 320))(v82, v21);
        swift_unknownObjectRelease();
        if (!v83)
        {
LABEL_45:
          v45 = v97;
LABEL_52:

          return v45;
        }

        v76(v84);
        v86 = v85;
        v87 = swift_getObjectType();
        v88 = (*(v86 + 320))(v87, v86);
        swift_unknownObjectRelease();
        v70 = [objc_opt_self() conversationKit];
        if (v88 == 1)
        {
          v74 = 0x794D206572616853;
          v73 = 0xEF6E656572635320;
        }

        else
        {
          v74 = 0x535F4E4545524353;
          v73 = 0xEE00474E49524148;
        }

        v71 = 0x61737265766E6F43;
        v72 = 0xEF74694B6E6F6974;
      }

      v45 = OUTLINED_FUNCTION_48_1(v74, v73, v71, v72);

      goto LABEL_52;
    }

    v7 = v4;
    ConversationControlsHelper.assetsForDefaultHUD(controlsManager:conversation:)(a1, v7);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    if (Features.isICUIRedesignEnabled.getter() & 1) != 0 && (GondolaControlsRecipeGenerator.isPresentingFullScreenCallUI.getter())
    {
      if ((*((*MEMORY[0x1E69E7D40] & *a1) + 0x388))())
      {
        v14 = [v7 link];
        if (v14 && (v97 = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(v14), v15))
        {
        }

        else
        {
          v92 = [objc_opt_self() conversationKit];
          OUTLINED_FUNCTION_5_5();
          v97 = OUTLINED_FUNCTION_48_1(v93, v94, v95, v96);
        }

        if (!v11)
        {
          goto LABEL_12;
        }

        goto LABEL_56;
      }

      v89 = [v7 inCallDisplayName];
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11)
      {
LABEL_56:

        v97 = v9;
        goto LABEL_12;
      }

      v97 = v90;
    }

    else
    {
      v16 = [v7 displayName];
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

LABEL_12:
    v17 = one-time initialization token for conversationKit;
    v18 = v13;
    if (v17 != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v19 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v19, static Logger.conversationKit);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v21))
    {
      v22 = OUTLINED_FUNCTION_33();
      *v22 = 0;
      OUTLINED_FUNCTION_24_6();
      _os_log_impl(v23, v24, v25, v26, v22, 2u);
      OUTLINED_FUNCTION_27();
    }

    goto LABEL_36;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v33 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v33, &static Logger.conversationControls);
  v34 = a1;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_42();
    v38 = OUTLINED_FUNCTION_23();
    v98[0] = v38;
    *v37 = 136315138;
    v39 = (*((*v3 & *v34) + 0x2A0))();
    swift_getObjectType();
    v98[5] = v39;
    v40 = String.init<A>(describing:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v98);

    *(v37 + 4) = v42;
    OUTLINED_FUNCTION_26_26(&dword_1BBC58000, v43, v44, "defaultHUDRecipe: No active conversation, call: %s");
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  return 0;
}

void DefaultHUDControlsRecipeGenerator.defaultLeadingAccessoryView(controlsManager:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7D40];
  v83 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0))(v6);
  if (v83 || (Features.sharePlayInCallsEnabled.getter() & 1) != 0 && (OUTLINED_FUNCTION_25_29(), (*(v27 + 672))(), v29 = v28, v30 = swift_getObjectType(), LOBYTE(v29) = (*(v29 + 152))(v30, v29), swift_unknownObjectRelease(), (v29 & 1) != 0) || (v31 = [objc_opt_self() currentDevice], v32 = objc_msgSend(v31, sel_userInterfaceIdiom), v31, v32 == 1))
  {
    v82 = DefaultHUDControlsRecipeGenerator.defaultRecipeAttributes(controlsManager:)(a1);
    if (v10)
    {
      v13 = v10;
      v14 = v12;
      v77 = v11;
      v79 = v4;
      v80 = v2;
      OUTLINED_FUNCTION_25_29();
      v15 += 84;
      v16 = *v15;
      (*v15)();
      v18 = v17;
      ObjectType = swift_getObjectType();
      (*(v18 + 48))(v84, ObjectType, v18);
      swift_unknownObjectRelease();
      v20 = ConversationControlsHelper.badgeBackgroundColor(forCall:)(v84);
      __swift_destroy_boxed_opaque_existential_1(v84);
      v78 = v8;
      v81 = v20;
      if (v83)
      {
        type metadata accessor for ConversationControlsBadgingAvatarViewController();
        v21 = v83;
        v22 = v14;
        v23 = [v14 image];

        v24 = v20;
        v25 = v82;
        v26 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v21, v23, v82, v13, v24);
      }

      else
      {
        v49 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
        v16();
        OUTLINED_FUNCTION_87();
        v22 = v14;
        v50 = [v14 image];
        v51 = v9;
        v52 = swift_getObjectType();
        v53 = v81;
        v54 = v52;
        v9 = v51;
        v26 = specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(a1, 0, v50, v53, v49, v54, v16);
        v25 = v82;
      }

      v55 = one-time initialization token for conversationControls;
      v56 = v26;
      if (v55 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v57 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v57, &static Logger.conversationControls);
      v58 = v22;
      v59 = v56;
      swift_bridgeObjectRetain_n();
      v60 = v77;
      v82 = v58;
      v61 = v60;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = v22;
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v77 = OUTLINED_FUNCTION_23();
        v84[0] = v77;
        *v65 = 136315650;

        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v13, v84);

        *(v65 + 4) = v67;
        *(v65 + 12) = 2112;
        *(v65 + 14) = v59;
        *v66 = v59;
        LODWORD(v67) = v64 != 0;
        *(v65 + 22) = 1024;
        v68 = v59;
        v69 = v61;
        v70 = v82;

        *(v65 + 24) = v67;

        v61 = v69;

        _os_log_impl(&dword_1BBC58000, v62, v63, "defaultHUD:\n\ttitle:%s\n\tavatar:%@,\n\tbadge?:%{BOOL}d", v65, 0x1Cu);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, &_sSo8NSObjectCSgMd);
        v9 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_27();
        __swift_destroy_boxed_opaque_existential_1(v77);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      else
      {

        v71 = v82;
        swift_bridgeObjectRelease_n();
      }

      v73 = v79;
      v72 = v80;
      v74 = [v59 view];
      v75 = v78;
      (*((*v9 & *a1) + 0x2A8))(v74);
      (*((*v9 & *v59) + 0x58))(v75);

      (*(v73 + 8))(v75, v72);
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v45 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v45, &static Logger.conversationControls);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_33();
        *v48 = 0;
        _os_log_impl(&dword_1BBC58000, v46, v47, "defaultHUDRecipe: Unable to create recipe attributes.", v48, 2u);
        OUTLINED_FUNCTION_27();
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v33 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v33, &static Logger.conversationControls);
    v34 = a1;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_42();
      v38 = OUTLINED_FUNCTION_23();
      v84[0] = v38;
      *v37 = 136315138;
      v39 = (*((*v9 & *v34) + 0x2A0))();
      swift_getObjectType();
      v84[5] = v39;
      v40 = String.init<A>(describing:)();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v84);

      *(v37 + 4) = v42;
      OUTLINED_FUNCTION_26_26(&dword_1BBC58000, v43, v44, "defaultHUDRecipe: No active conversation, call: %s");
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_4_4();
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void *PickablePerson.contact.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit14PickablePerson_contact);
  v2 = v1;
  return v1;
}

uint64_t PickablePerson.address.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit14PickablePerson_address);

  return v1;
}

id PickablePerson.init(contact:handle:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC15ConversationKit14PickablePerson_contact] = a1;
  *&v2[OBJC_IVAR____TtC15ConversationKit14PickablePerson_handle] = a2;
  v4 = a1;
  v5 = a2;
  v6 = [v5 value];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = &v2[OBJC_IVAR____TtC15ConversationKit14PickablePerson_address];
  *v10 = v7;
  v10[1] = v9;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for PickablePerson();
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

id PickablePerson.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PickablePerson.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickablePerson();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int CaptionsPauseTransition.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

uint64_t static CaptionsPausedState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      return 1;
    }
  }

  else if (v3 != 4)
  {
    if (v2 == 3)
    {
      if (v3 == 3)
      {
        return 1;
      }
    }

    else if (v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

Swift::Void __swiftcall CaptionsStateController.updateCaptionsEnablement(pauseTransitionIfAllowed:)(ConversationKit::CaptionsPauseTransition pauseTransitionIfAllowed)
{
  v3 = v2;
  v4 = v1;
  v5 = *pauseTransitionIfAllowed;
  if ((*(v2 + 8))() & 1) == 0 || (v6 = OUTLINED_FUNCTION_45_1(), (v7(v6)) || (v8 = *(v3 + 16), v9 = OUTLINED_FUNCTION_45_1(), v8(v9) == 2) || ((v10 = OUTLINED_FUNCTION_45_1(), v8(v10) != 1) ? (v11 = v5 == 0) : (v11 = 1), v11))
  {
    v12 = OUTLINED_FUNCTION_45_1();
    v13(v12);
    if (v51[1] == 4)
    {
      v14 = *(v3 + 24);
      v15 = OUTLINED_FUNCTION_45_1();
      v14(v15);
      if (v50 == 3 || !v50)
      {
        v17 = 1;
      }

      else
      {
        v16 = OUTLINED_FUNCTION_45_1();
        v14(v16);
        v17 = v48;
      }

      v49 = v17;
      (*(v3 + 40))(&v49, v4, v3);
    }

    goto LABEL_15;
  }

  if (v5 != 1)
  {
    v29 = OUTLINED_FUNCTION_45_1();
    v30(v29);
    if (v47 == 4)
    {
      v31 = *(v3 + 56);
      v32 = OUTLINED_FUNCTION_45_1();
      if (v31(v32))
      {
        v33 = *(v3 + 24);
        v34 = OUTLINED_FUNCTION_45_1();
        v33(v34);
        if (v46 == 3 || !v46)
        {
          v18 = 1;
        }

        else
        {
          v35 = OUTLINED_FUNCTION_45_1();
          v33(v35);
          if (v45 == 3)
          {
            v18 = 1;
          }

          else
          {
            v18 = v45;
          }
        }
      }

      else
      {
        v18 = 0;
      }

      v38 = OUTLINED_FUNCTION_45_1();
      v19 = v31(v38);
LABEL_41:
      if (v18 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_42;
    }

LABEL_15:
    LOBYTE(v18) = 0;
    v19 = 0;
    goto LABEL_16;
  }

  v20 = OUTLINED_FUNCTION_45_1();
  v21(v20);
  v22 = v44;
  if (v44 == 4)
  {
    v23 = *(v3 + 56);
    v24 = OUTLINED_FUNCTION_45_1();
    v19 = v23(v24);
    v25 = OUTLINED_FUNCTION_45_1();
    if ((v23(v25) & 1) == 0)
    {
      LOBYTE(v18) = 0;
      goto LABEL_16;
    }

    v26 = *(v3 + 24);
    v27 = OUTLINED_FUNCTION_45_1();
    v26(v27);
    if (v42 == 3)
    {
      goto LABEL_42;
    }

    if (!v42)
    {
      goto LABEL_42;
    }

    v28 = OUTLINED_FUNCTION_45_1();
    v26(v28);
    v18 = v41;
    if (v41 == 3)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v43 = 4;
  (*(v3 + 40))(&v43, v4, v3);
  v36 = OUTLINED_FUNCTION_45_1();
  if ((v37(v36) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v22 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v22;
  }

  v19 = 1;
  if (v22 != 3)
  {
    goto LABEL_41;
  }

LABEL_42:
  v39 = OUTLINED_FUNCTION_45_1();
  if (v40(v39))
  {
    LOBYTE(v18) = 1;
  }

  else
  {
    LOBYTE(v18) = 2;
  }

LABEL_16:
  v51[0] = v18;
  (*(v3 + 80))(v51, v19 & 1, v4, v3);
}