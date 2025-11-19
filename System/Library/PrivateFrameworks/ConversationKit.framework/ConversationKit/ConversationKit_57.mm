void specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = a3;
  v8 = OUTLINED_FUNCTION_24_1();
  v9 = type metadata accessor for HUDActivityManager.BannerUpdate(v8);
  MEMORY[0x1EEE9AC00](v9);
  v56 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v50 - v13);
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v17 = a2 - v4;
  v18 = a2 - v4 == 0x8000000000000000 && v16 == -1;
  if (v18)
  {
    goto LABEL_61;
  }

  v19 = v55 - a2;
  if (v55 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v52 = v12;
  v21 = v17 / v16;
  v59 = v4;
  v58 = a4;
  v22 = v19 / v16;
  if (v17 / v16 >= v19 / v16)
  {
    v54 = v4;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v19 / v16, a4);
    v32 = a4 + v22 * v16;
    v33 = -v16;
    v34 = v32;
    v35 = v55;
    v53 = v33;
LABEL_37:
    v55 = a2 + v33;
    v36 = v35;
    v51 = v34;
    v37 = v34;
    while (1)
    {
      if (v32 <= a4)
      {
        v59 = a2;
        v57 = v37;
        goto LABEL_59;
      }

      if (a2 <= v54)
      {
        break;
      }

      v38 = a2;
      v39 = v36 + v53;
      v40 = v32 + v53;
      v41 = v32;
      outlined init with copy of HUDActivityManager.BannerUpdate(v32 + v53, v14);
      outlined init with copy of HUDActivityManager.BannerUpdate(v55, v56);
      v42 = *v14;
      v43 = OUTLINED_FUNCTION_84_7();
      outlined destroy of HUDActivityManager.BannerUpdate(v43);
      outlined destroy of HUDActivityManager.BannerUpdate(v14);
      if (v42 < v5)
      {
        v45 = v36 < a2 || v39 >= a2;
        v35 = v39;
        if (v45)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v39;
          v34 = v37;
          v33 = v53;
          v32 = v41;
        }

        else
        {
          v46 = v37;
          v34 = v37;
          v47 = v55;
          a2 = v55;
          v33 = v53;
          v32 = v41;
          if (v36 != v38)
          {
            v48 = v35;
            v49 = v46;
            swift_arrayInitWithTakeBackToFront();
            v32 = v41;
            v35 = v48;
            a2 = v47;
            v34 = v49;
          }
        }

        goto LABEL_37;
      }

      if (v36 < v41 || v39 >= v41)
      {
        OUTLINED_FUNCTION_57_16();
        swift_arrayInitWithTakeFrontToBack();
        v32 = v40;
        v37 = v40;
      }

      else
      {
        v37 = v40;
        v18 = v41 == v36;
        v36 = v39;
        v32 = v40;
        if (!v18)
        {
          OUTLINED_FUNCTION_57_16();
          swift_arrayInitWithTakeBackToFront();
          v32 = v40;
          v37 = v40;
        }
      }
    }

    v59 = a2;
    v57 = v51;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_38_2();
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v23, v24, a4);
    v25 = a4 + v21 * v16;
    v57 = v25;
    while (a4 < v25 && a2 < v55)
    {
      outlined init with copy of HUDActivityManager.BannerUpdate(a2, v14);
      v27 = v56;
      outlined init with copy of HUDActivityManager.BannerUpdate(a4, v56);
      v28 = *v14;
      v29 = *v27;
      outlined destroy of HUDActivityManager.BannerUpdate(v27);
      outlined destroy of HUDActivityManager.BannerUpdate(v14);
      if (v28 >= v29)
      {
        if (v4 < a4 || v4 >= a4 + v16)
        {
          OUTLINED_FUNCTION_79_11();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v4 != a4)
        {
          OUTLINED_FUNCTION_79_11();
          swift_arrayInitWithTakeBackToFront();
        }

        v58 = a4 + v16;
        a4 += v16;
      }

      else
      {
        if (v4 < a2 || v4 >= a2 + v16)
        {
          OUTLINED_FUNCTION_79_11();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v4 != a2)
        {
          OUTLINED_FUNCTION_79_11();
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      v4 += v16;
      v59 = v4;
    }
  }

LABEL_59:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v59, &v58, &v57);
}

void partial apply for closure #1 in HUDActivityManager.present(_:with:)(char a1)
{
  v3 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  OUTLINED_FUNCTION_9_0(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  closure #1 in HUDActivityManager.present(_:with:)(a1, v5, v6);
}

uint64_t partial apply for closure #1 in CoupledHUDActivity.childActivity.didset()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  OUTLINED_FUNCTION_9_0(v2);
  v5 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = partial apply for closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel;
  v8 = OUTLINED_FUNCTION_16_2();

  return closure #1 in CoupledHUDActivity.childActivity.didset(v8, v9, v10, v11, v5);
}

void InCallControlsPTTCallDetailsViewModel.init(pttCall:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 provider];
  v5 = [v4 localizedName];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter([a1 provider]);
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13 = [a1 channelDisplayName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v14;
  a2[5] = v16;
  a2[6] = a1;
}

uint64_t InCallControlsPTTCallDetailsViewModel.providerName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InCallControlsPTTCallDetailsViewModel.providerBundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InCallControlsPTTCallDetailsViewModel.channelName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t InCallControlsPTTCallDetailsViewModel.init(providerName:providerBundleIdentifier:channelName:pttCall:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  (*(v5 + 16))(v7, a1, v4, v13);
  if (__swift_getEnumTagSinglePayload(v7, 1, a2) == 1)
  {
    (*(v5 + 8))(v7, v4);
    return 7104878;
  }

  else
  {
    (*(v8 + 32))(v15, v7, a2);
    (*(v8 + 16))(v11, v15, a2);
    v16 = String.init<A>(reflecting:)();
    (*(v8 + 8))(v15, a2);
  }

  return v16;
}

uint64_t *OS_os_log.conversationKit.unsafeMutableAddressor()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  return &static OS_os_log.conversationKit;
}

uint64_t String.init(namedPropertyValues:for:)(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v5 = v28;
    v6 = a1 + 32;
    do
    {
      outlined init with copy of (name: String, value: Any?)(v6, &v25, &_sSS4name_ypSg5valuetMd);
      v23 = v25;
      v24 = v26;

      MEMORY[0x1BFB20B10](61, 0xE100000000000000);
      outlined init with copy of (name: String, value: Any?)(&v27, &v20, &_sypSgMd);
      if (v21)
      {
        outlined init with take of Any(&v20, v22);
        outlined init with copy of Any(v22, &v20);
        v7 = String.init<A>(reflecting:)();
        v9 = v8;
        __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
        outlined destroy of Any?(&v20, &_sypSgMd);
        v9 = 0xE300000000000000;
        v7 = 7104878;
      }

      MEMORY[0x1BFB20B10](v7, v9);

      MEMORY[0x1BFB20B10](41, 0xE100000000000000);
      v10 = v23;
      v11 = v24;
      outlined destroy of Any?(&v25, &_sSS4name_ypSg5valuetMd);
      v28 = v5;
      v12 = *(v5 + 16);
      if (v12 >= *(v5 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v5 = v28;
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v11;
      v6 += 48;
      --v4;
    }

    while (v4);

    v2 = a2;
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v25 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v14 = BidirectionalCollection<>.joined(separator:)();
  v16 = v15;

  v25 = 60;
  v26 = 0xE100000000000000;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  swift_getDynamicType();
  v17 = _typeName(_:qualified:)();
  MEMORY[0x1BFB20B10](v17);

  MEMORY[0x1BFB20B10](32, 0xE100000000000000);
  MEMORY[0x1BFB20B10](v14, v16);

  MEMORY[0x1BFB20B10](62, 0xE100000000000000);
  String.init<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return OUTLINED_FUNCTION_46();
}

void *OS_os_log.conversationKitOversized.unsafeMutableAddressor()
{
  if (one-time initialization token for conversationKitOversized != -1)
  {
    swift_once();
  }

  return &static OS_os_log.conversationKitOversized;
}

uint64_t one-time initialization function for recents()
{
  return OUTLINED_FUNCTION_2_144();
}

{
  return OUTLINED_FUNCTION_2_144();
}

uint64_t one-time initialization function for banners()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.banners);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_4_126();
  return OUTLINED_FUNCTION_43_18();
}

uint64_t one-time initialization function for conversationControlsGaming()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.conversationControlsGaming);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_0_179();
  return OUTLINED_FUNCTION_43_18();
}

uint64_t one-time initialization function for conversationController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.conversationController);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_0_179();
  return OUTLINED_FUNCTION_43_18();
}

uint64_t one-time initialization function for audioTap()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.audioTap);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_0_179();
  return OUTLINED_FUNCTION_43_18();
}

uint64_t one-time initialization function for answeringMachine()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.answeringMachine);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_8_91();
  return OUTLINED_FUNCTION_7_89();
}

uint64_t one-time initialization function for shareableContent()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.shareableContent);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_8_91();
  return OUTLINED_FUNCTION_7_89();
}

uint64_t one-time initialization function for audioNormalizer()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.audioNormalizer);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_4_126();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for attentionAwareness()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.attentionAwareness);
  __swift_project_value_buffer(v0, static Logger.attentionAwareness);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for peoplePicker()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.peoplePicker);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_4_126();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for peoplePickerAutocomplete()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.peoplePickerAutocomplete);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for participant()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.participant);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_4_126();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for sensitiveContentController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.sensitiveContentController);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for recordingSession()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.recordingSession);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_8_91();
  return OUTLINED_FUNCTION_7_89();
}

uint64_t one-time initialization function for appleIntelligence()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.appleIntelligence);
  __swift_project_value_buffer(v0, static Logger.appleIntelligence);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.recordingSession.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Log.default.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_2_3();
  v7 = *(v6 + 16);

  return v7(a3);
}

uint64_t outlined init with copy of (name: String, value: Any?)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_2_3();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t NSNotificationCenter.post(_:afterAnimatorCompletes:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = aBlock - v11;
  v13 = *(v6 + 16);
  v13(aBlock - v11, a1, v5, v10);
  (v13)(v8, v12, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v6 + 32))(v15 + v14, v12, v5);
  *(v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  if (a2)
  {
    v16 = *(v6 + 8);
    v17 = v2;
    swift_unknownObjectRetain();
    v16(v8, v5);
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #1 in NSNotificationCenter.post(_:afterAnimatorCompletes:);
    *(v18 + 24) = v15;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_85;
    v19 = _Block_copy(aBlock);

    [a2 addCompletion_];
    _Block_release(v19);

    return swift_unknownObjectRelease();
  }

  else
  {
    closure #1 in NSNotificationCenter.post(_:afterAnimatorCompletes:)(v8, v2);

    return (*(v6 + 8))(v8, v5);
  }
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v24 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
    v1 = OUTLINED_FUNCTION_6_98();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = v24 + 64;
  OUTLINED_FUNCTION_0_180();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  v8 = v1 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v11 = OUTLINED_FUNCTION_5_122(__rbit64(v5), v24);
    swift_unknownObjectRetain();
    swift_dynamicCast();
    outlined init with take of Any((v26 + 8), v25);
    outlined init with take of Any(v25, v26);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v12 = Hasher._finalize()();

    OUTLINED_FUNCTION_7_90();
    if (((v14 << (v12 & ~v13)) & ~*(v8 + 8 * ((v12 & ~v13) >> 6))) == 0)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v18)
        {
          if (v16)
          {
            goto LABEL_23;
          }
        }

        if (v15 == v17)
        {
          v15 = 0;
        }

        if (*(v8 + 8 * v15) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_19;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_19:
    OUTLINED_FUNCTION_9_90();
    *(v8 + v19) |= v20;
    v5 &= v21;
    *(*(v1 + 48) + 8 * v22) = v11;
    OUTLINED_FUNCTION_12_73();
    outlined init with take of Any(v26, v23);
    OUTLINED_FUNCTION_4_127();
  }

  while (v5);
LABEL_5:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v2 = OUTLINED_FUNCTION_6_98();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v10, v35);
    *&v34 = v13;
    *(&v34 + 1) = v12;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    v14 = AnyHashable._rawHashValue(seed:)(*(v2 + 40)) & ~(-1 << *(v2 + 32));
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v18)
        {
          if (v16)
          {
            goto LABEL_26;
          }
        }

        if (v15 == v17)
        {
          v15 = 0;
        }

        if (*(v7 + 8 * v15) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_22;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_22:
    v5 &= v5 - 1;
    OUTLINED_FUNCTION_8_3();
    *(v7 + v19) |= v20;
    v22 = *(v2 + 48) + 40 * v21;
    *v22 = v24;
    *(v22 + 16) = v25;
    *(v22 + 32) = v26;
    OUTLINED_FUNCTION_12_73();
    outlined init with take of Any(v32, v23);
    OUTLINED_FUNCTION_4_127();
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

{
  v20 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMd);
    v3 = OUTLINED_FUNCTION_6_98();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = v20 + 64;
  OUTLINED_FUNCTION_0_180();
  v7 = v6 & v5;
  OUTLINED_FUNCTION_13_65();

  v8 = 0;
  if (!v7)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v10 = OUTLINED_FUNCTION_5_122(__rbit64(v7), v20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo26UIFontDescriptorFeatureKeyaSiGGMd);
    swift_dynamicCast();
    outlined init with take of Any((v22 + 8), v21);
    outlined init with take of Any(v21, v22);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();

    OUTLINED_FUNCTION_7_90();
    OUTLINED_FUNCTION_8_92();
    if (v11)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v11)
        {
          if (v13)
          {
            goto LABEL_23;
          }
        }

        if (v12 == v14)
        {
          v12 = 0;
        }

        if (*(v2 + 8 * v12) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_19;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_19:
    OUTLINED_FUNCTION_9_90();
    *(v2 + v15) |= v16;
    v7 &= v17;
    *(*(v3 + 48) + 8 * v18) = v10;
    OUTLINED_FUNCTION_12_73();
    outlined init with take of Any(v22, v19);
    OUTLINED_FUNCTION_4_127();
  }

  while (v7);
LABEL_5:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v1)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v8;
    if (v7)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v4 = OUTLINED_FUNCTION_6_98();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_0_180();
  v7 = v6 & v5;
  OUTLINED_FUNCTION_13_65();

  v8 = 0;
  if (!v7)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v7)))));
    v11 = v10[1];
    *&v29[0] = *v10;
    *(&v29[0] + 1) = v11;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    swift_dynamicCast();
    v25 = v21;
    v26 = v22;
    v27 = v23;
    outlined init with take of Any(&v24, v28);
    v21 = v25;
    v22 = v26;
    v23 = v27;
    outlined init with take of Any(v28, v29);
    AnyHashable._rawHashValue(seed:)(*(v4 + 40));
    OUTLINED_FUNCTION_7_90();
    OUTLINED_FUNCTION_8_92();
    if (v12)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v12)
        {
          if (v14)
          {
            goto LABEL_23;
          }
        }

        if (v13 == v15)
        {
          v13 = 0;
        }

        if (*(v2 + 8 * v13) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_19;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_19:
    v7 &= v7 - 1;
    OUTLINED_FUNCTION_8_3();
    *(v2 + v16) |= v17;
    v19 = *(v4 + 48) + 40 * v18;
    *v19 = v21;
    *(v19 + 16) = v22;
    *(v19 + 32) = v23;
    OUTLINED_FUNCTION_12_73();
    outlined init with take of Any(v29, v20);
    OUTLINED_FUNCTION_4_127();
  }

  while (v7);
LABEL_5:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v1)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v7)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    outlined init with copy of Any(*(a1 + 56) + ((v9 << 11) | (32 * __clz(__rbit64(v5)))), v30);
    v29[0] = v30[0];
    v29[1] = v30[1];
    swift_dynamicCast();
    outlined init with take of Any(v29, v23);
    v24 = v20;
    v25 = v21;
    v26 = v22;
    outlined init with take of Any(v23, v27);
    v20 = v24;
    v21 = v25;
    v22 = v26;
    outlined init with take of Any(v27, v28);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v11 = -1 << *(v2 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*(v7 + 8 * (v12 >> 6))) == 0)
    {
      v15 = 0;
      v16 = (63 - v11) >> 6;
      while (++v13 != v16 || (v15 & 1) == 0)
      {
        v17 = v13 == v16;
        if (v13 == v16)
        {
          v13 = 0;
        }

        v15 |= v17;
        v18 = *(v7 + 8 * v13);
        if (v18 != -1)
        {
          v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*(v7 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v19 = *(v2 + 48) + 40 * v14;
    *v19 = v20;
    *(v19 + 16) = v21;
    *(v19 + 32) = v22;
    result = outlined init with take of Any(v28, (*(v2 + 56) + 32 * v14));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t static Notification.contextMenuDidDismiss(target:)(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = *a3;
  type metadata accessor for UIView();
  v6 = v5;
  v7 = a1;
  v8 = UIView.contextMenuUserInfo.getter();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);

  return Notification.init(name:object:userInfo:)();
}

uint64_t *NSNotificationName.contextMenuWillPresent.unsafeMutableAddressor()
{
  if (one-time initialization token for contextMenuWillPresent != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.contextMenuWillPresent;
}

uint64_t *NSNotificationName.contextMenuDidDismiss.unsafeMutableAddressor()
{
  if (one-time initialization token for contextMenuDidDismiss != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.contextMenuDidDismiss;
}

uint64_t one-time initialization function for contextMenuWillPresent()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000022, 0x80000001BC513910);
  static NSNotificationName.contextMenuWillPresent = result;
  return result;
}

uint64_t one-time initialization function for contextMenuDidDismiss()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000021, 0x80000001BC513940);
  static NSNotificationName.contextMenuDidDismiss = result;
  return result;
}

void closure #1 in NSNotificationCenter.post(_:afterAnimatorCompletes:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, &static Log.default);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v22 = Notification.name.getter();
    type metadata accessor for NSNotificationName(0);
    v14 = String.init<A>(reflecting:)();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1BBC58000, v9, v10, "Posting %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
    v18 = v12;
    a2 = v21;
    MEMORY[0x1BFB23DF0](v18, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  isa = Notification._bridgeToObjectiveC()().super.isa;
  [a2 postNotification_];
}

void partial apply for closure #1 in NSNotificationCenter.post(_:afterAnimatorCompletes:)()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in NSNotificationCenter.post(_:afterAnimatorCompletes:)(v0 + v2, v3);
}

uint64_t key path getter for LabeledButtonView.control : LabeledButtonView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LabeledButtonView.control : LabeledButtonView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x70);
  v4 = *a1;
  return v3(v2);
}

void *LabeledButtonView.control.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_control;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void LabeledButtonView.control.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_control;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for LabeledButtonView.label : LabeledButtonView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

id LabeledButtonView.label.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setNumberOfLines_];
    [v4 setTextAlignment_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void LabeledButtonView.label.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label);
  *(v1 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label) = a1;
}

void (*LabeledButtonView.label.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = LabeledButtonView.label.getter();
  return LabeledButtonView.label.modify;
}

void LabeledButtonView.label.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label);
  *(v1 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label) = v2;
}

uint64_t LabeledButtonView.preferredFocusEnvironments.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18UIFocusEnvironment_pSgGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  *(inited + 32) = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
  v2 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
  if (*(inited + 32))
  {
    v3 = swift_unknownObjectRetain();
    MEMORY[0x1BFB20CC0](v3);
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v5;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return v2;
}

void *LabeledButtonView.init(control:text:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_control;
  *&v3[OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_control] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_labelTopConstraint] = 0;
  swift_beginAccess();
  *&v3[v7] = a1;
  v17.receiver = v3;
  v17.super_class = type metadata accessor for LabeledButtonView();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x80))();
  if (a3)
  {

    v11 = MEMORY[0x1BFB209B0](a2, a3);
  }

  else
  {
    v11 = 0;
  }

  [v10 setText_];

  if (a1)
  {
    v12 = v8;
    if (a3)
    {
      v13 = MEMORY[0x1BFB209B0](a2, a3);
    }

    else
    {
      v13 = 0;
    }

    [v8 setAccessibilityLabel_];
  }

  else
  {
  }

  LabeledButtonView.configureAppearance()();
  if (a1)
  {
    type metadata accessor for ConversationControlsButton();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14 + OBJC_IVAR___CNKConversationControlsButton_delegate;
      swift_beginAccess();
      *(v15 + 8) = &protocol witness table for LabeledButtonView;
      swift_unknownObjectWeakAssign();
    }
  }

  return v9;
}

id LabeledButtonView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LabeledButtonView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_control) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_labelTopConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void LabeledButtonView.configureAppearance()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
  if (v3)
  {
    v4 = v3;
    v5 = [v0 addSubview_];
    v6 = *((*v2 & *v0) + 0x80);
    v7 = (v6)(v5);
    [v1 addSubview_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v68 = v6;
    v8 = v6();
    v9 = [v8 topAnchor];

    v10 = [v4 bottomAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:5.0];

    v12 = OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_labelTopConstraint;
    v13 = *&v1[OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_labelTopConstraint];
    *&v1[OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_labelTopConstraint] = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BC4BA920;
    v15 = [v1 widthAnchor];
    v16 = [v4 widthAnchor];

    v17 = OUTLINED_FUNCTION_1_149();
    *(v14 + 32) = v17;
    v18 = [v4 topAnchor];

    v19 = [v1 topAnchor];
    v20 = OUTLINED_FUNCTION_1_149();

    *(v14 + 40) = v20;
    v21 = [v4 centerXAnchor];

    v22 = [v1 centerXAnchor];
    v23 = OUTLINED_FUNCTION_1_149();

    *(v14 + 48) = v23;
    v24 = *&v1[v12];
    if (v24)
    {
      v67 = objc_opt_self();
      *(v14 + 56) = v24;
      v25 = (v68)(v24);
      v26 = [v25 centerXAnchor];

      v27 = [v1 centerXAnchor];
      v28 = [v26 constraintEqualToAnchor_];

      *(v14 + 64) = v28;
      type metadata accessor for NSLayoutConstraint();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v67 activateConstraints_];

      v69 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
      [v69 setTranslatesAutoresizingMaskIntoConstraints_];
      [v1 addSubview_];
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1BC4CB3D0;
      v31 = v68();
      v32 = [v31 leadingAnchor];

      v33 = [v1 leadingAnchor];
      static Layout.ConversationControls.values.getter(v71);
      v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33 constant:-v71[29]];

      *(v30 + 32) = v34;
      v35 = v68();
      v36 = [v35 trailingAnchor];

      v37 = [v1 trailingAnchor];
      static Layout.ConversationControls.values.getter(v72);
      v38 = [v36 constraintLessThanOrEqualToAnchor:v37 constant:v72[29]];

      *(v30 + 40) = v38;
      v39 = v68();
      v40 = [v39 bottomAnchor];

      v41 = [v69 topAnchor];
      v42 = [v40 constraintEqualToAnchor_];

      *(v30 + 48) = v42;
      v43 = [v69 leadingAnchor];
      v44 = [v1 leadingAnchor];
      v45 = [v43 constraintEqualToAnchor_];

      *(v30 + 56) = v45;
      v46 = [v69 trailingAnchor];
      v47 = [v1 trailingAnchor];
      v48 = [v46 constraintEqualToAnchor_];

      *(v30 + 64) = v48;
      v49 = [v69 bottomAnchor];
      v50 = [v1 bottomAnchor];
      v51 = [v49 constraintEqualToAnchor_];

      *(v30 + 72) = v51;
      v52 = [v69 heightAnchor];
      v53 = [v52 constraintEqualToConstant_];

      LODWORD(v54) = 1132068864;
      [v53 setPriority_];
      *(v30 + 80) = v53;
      v55 = Array._bridgeToObjectiveC()().super.isa;

      [v67 activateConstraints_];

      LODWORD(v56) = 1144750080;
      v57 = (v68)([v4 setContentHuggingPriority:1 forAxis:v56]);
      type metadata accessor for UILayoutPriority(0);
      lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
      OUTLINED_FUNCTION_0_181();
      LODWORD(v58) = v70;
      [v57 setContentHuggingPriority:0 forAxis:v58];

      v59 = v68();
      LODWORD(v60) = 1144750080;
      [v59 setContentHuggingPriority:1 forAxis:v60];

      v61 = v68();
      OUTLINED_FUNCTION_0_181();
      LODWORD(v62) = v70;
      [v61 setContentCompressionResistancePriority:0 forAxis:v62];

      v63 = v68();
      v64 = [objc_opt_self() preferredFontForTextStyle_];
      [v63 setFont_];

      v65 = v68();
      [v65 setMaximumContentSizeCategory_];

      v66 = v68();
      [v66 setAdjustsFontForContentSizeCategory_];
    }

    else
    {
      __break(1u);
    }
  }
}

id LabeledButtonView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LabeledButtonView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabeledButtonView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void LabeledButtonView.buttonDidUpdateLocalizedName(_:)(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))();
  v4 = (a1 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;

    v7 = MEMORY[0x1BFB209B0](v6, v5);
  }

  else
  {
    v7 = 0;
  }

  [v3 setText_];
}

id ParticipantMediaPriorities.remoteIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v7 = *v1;
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;

  return v7;
}

uint64_t ParticipantMediaPriorities.remoteIdentifiers.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  return result;
}

uint64_t ParticipantMediaPriorities.init(remoteIdentifiers:audioPriority:videoPriority:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = *(result + 24);
  *(a2 + 40) = a3;
  *(a2 + 44) = a4;
  return result;
}

float ParticipantMediaPriorities.init(conversationParticipant:)@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 handle];
  v5 = [v3 identifier];
  v6 = [v3 avcIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *(a2 + 40) = [v3 audioPriority];
  v10 = [v3 videoPriority];

  result = v10;
  *(a2 + 44) = v10;
  return result;
}

BOOL static Platform.isIPad.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

uint64_t static Platform.useiPadLikeAmbientUI.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 || (swift_beginAccess(), static AmbientState.isPresented != 1))
  {
    v2 = 0;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v2 = Features.isICUIRedesignEnabled.getter();
  }

  return v2 & 1;
}

BOOL static Platform.isIPhone.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 0;
}

Swift::Int Platform.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Platform()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Platform.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Platform and conformance Platform()
{
  result = lazy protocol witness table cache variable for type Platform and conformance Platform;
  if (!lazy protocol witness table cache variable for type Platform and conformance Platform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Platform and conformance Platform);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Platform(_BYTE *result, unsigned int a2, unsigned int a3)
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

id CNKCrossFadeAnimatorFactory.makeAnimator()()
{
  v0 = objc_allocWithZone(type metadata accessor for CrossFadeAnimator());

  return [v0 init];
}

id CrossFadeAnimator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

CNKCrossFadeAnimatorFactory __swiftcall CNKCrossFadeAnimatorFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id CrossFadeAnimator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CrossFadeAnimator();
  return objc_msgSendSuper2(&v2, sel_init);
}

void CrossFadeAnimator.animateTransition(using:)(void *a1)
{
  v2 = [a1 viewForKey_];
  if (v2)
  {
    v3 = v2;
    [v2 setAlpha_];
    v4 = [a1 containerView];
    [v4 addSubview_];

    [v3 layoutIfNeeded];
    v5 = objc_opt_self();
    OUTLINED_FUNCTION_20();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    v15 = partial apply for closure #1 in MultiwayViewController.fadeInView(view:duration:);
    v16 = v6;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = thunk for @escaping @callee_guaranteed () -> ();
    v14 = &block_descriptor_86;
    v7 = _Block_copy(&v11);
    v8 = v3;

    OUTLINED_FUNCTION_20();
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v15 = partial apply for closure #2 in CrossFadeAnimator.animateTransition(using:);
    v16 = v9;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v14 = &block_descriptor_6_3;
    v10 = _Block_copy(&v11);
    swift_unknownObjectRetain();

    [v5 animateWithDuration:0 delay:v7 options:v10 animations:0.3 completion:0.0];

    _Block_release(v10);
    _Block_release(v7);
  }

  else
  {

    [a1 completeTransition_];
  }
}

id CrossFadeAnimator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CrossFadeAnimator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for CNKCrossFadeAnimatorFactory()
{
  result = lazy cache variable for type metadata for CNKCrossFadeAnimatorFactory;
  if (!lazy cache variable for type metadata for CNKCrossFadeAnimatorFactory)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNKCrossFadeAnimatorFactory);
  }

  return result;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v3 = v11;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      outlined init with copy of Any(v4, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v11 = v3;
      v5 = *(v3 + 16);
      if (v5 >= *(v3 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v11;
      }

      *(v3 + 16) = v5 + 1;
      v6 = v3 + 16 * v5;
      *(v6 + 32) = v8;
      *(v6 + 40) = v9;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void specialized _arrayConditionalCast<A, B>(_:)()
{
  OUTLINED_FUNCTION_29();
  v21[0] = v1;
  v21[1] = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_79_0();
  v8 = type metadata accessor for RecentsCallItem(v7);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  v15 = *(v4 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v16 = v23;
  v17 = v4 + 32;
  if (v15)
  {
    while (1)
    {
      outlined init with copy of IDSLookupManager(v17, &v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(v21[0]);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      __swift_storeEnumTagSinglePayload(v0, 0, 1, v8);
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v0, v14, type metadata accessor for RecentsCallItem);
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v14, v11, type metadata accessor for RecentsCallItem);
      v23 = v16;
      v18 = *(v16 + 16);
      if (v18 >= *(v16 + 24) >> 1)
      {
        OUTLINED_FUNCTION_53_15();
        v16 = v23;
      }

      *(v16 + 16) = v18 + 1;
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_0_182();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v11, v19, v20);
      v17 += 40;
      if (!--v15)
      {
        goto LABEL_8;
      }
    }

    __swift_storeEnumTagSinglePayload(v0, 1, 1, v8);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit15RecentsCallItemVSgMd);
  }

LABEL_8:
  OUTLINED_FUNCTION_30_0();
}

void specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71_11();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  a14 = MEMORY[0x1E69E7CC0];
  v28 = *(v26 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  v29 = v27 + 32;
  if (v28)
  {
    while (1)
    {
      outlined init with copy of Any(v29, &a10);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMSPIMessage);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v29 += 32;
      if (!--v28)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_70_6();
}

void RecentsCallItem.isMessage.getter()
{
  RecentsCallItem.hasAudioMessage.getter();
  if ((v0 & 1) == 0)
  {

    RecentsCallItem.hasVideoMessage.getter();
  }
}

BOOL RecentsCallItem.isMissed.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_15_43();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v1, v10, v11);
  OUTLINED_FUNCTION_316();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_4_128();
    outlined destroy of RecentsCallItemType(v10, v12);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_3_135();
    v14 = OUTLINED_FUNCTION_45_1();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v14, v15, v16);
    v17 = *(v6 + *(v2 + 24));
    if (v17)
    {
      v18 = [v17 callStatus];
      v13 = v18 == *MEMORY[0x1E69935C8];
    }

    else
    {
      v13 = 0;
    }

    OUTLINED_FUNCTION_2_145();
    outlined destroy of RecentsCallItemType(v6, v19);
  }

  return v13;
}

uint64_t key path getter for RecentsCollectionViewCollator.linkController : RecentsCollectionViewCollator@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x168))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RecentsCollectionViewCollator.linkController : RecentsCollectionViewCollator(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x170);

  return v2(v3);
}

uint64_t RecentsCollectionViewCollator.linkController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_linkController;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for RecentsCollectionViewCollator.hasFinishedFirstLoad : RecentsCollectionViewCollator@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x180))();
  *a2 = result & 1;
  return result;
}

uint64_t key path setter for RecentsCollectionViewCollator.$hasFinishedFirstLoad : RecentsCollectionViewCollator(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  return RecentsCollectionViewCollator.$hasFinishedFirstLoad.setter();
}

uint64_t RecentsCollectionViewCollator.$hasFinishedFirstLoad.getter()
{
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t RecentsCollectionViewCollator.$hasFinishedFirstLoad.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_92_0();
  v1();
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  v2 = OUTLINED_FUNCTION_44_0();
  return v3(v2);
}

uint64_t key path setter for RecentsCollectionViewCollator.currentFilterMode : RecentsCollectionViewCollator(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for FilterMenuViewModel.Action();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x218))(v7);
}

uint64_t RecentsCollectionViewCollator.currentFilterMode.didset()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI19FilterMenuViewModelC6ActionOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for FilterMenuViewModel.Action();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentFilterMode;
  swift_beginAccess();
  v13 = *(v9 + 16);
  v13(v11, &v0[v12], v8);
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type FilterMenuViewModel.Action and conformance FilterMenuViewModel.Action, MEMORY[0x1E6995AA8]);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    v42 = v2;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.conversationKit);
    v17 = v1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v20 = 136315138;
      v13(v7, &v1[v12], v8);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
      specialized >> prefix<A>(_:)(v7, v21, v22, v23, v24, v25, v26, v27, v40, v41, v42, v43, v44, v45, v46, v47, v48, aBlock[0]);
      v29 = v28;
      v31 = v30;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s16CommunicationsUI19FilterMenuViewModelC6ActionOSgMd);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, aBlock);

      *(v20 + 4) = v32;
      _os_log_impl(&dword_1BBC58000, v18, v19, "Changed filterMode to %s", v20, 0xCu);
      v33 = v41;
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1BFB23DF0](v33, -1, -1);
      MEMORY[0x1BFB23DF0](v20, -1, -1);
    }

    v34 = swift_allocObject();
    *(v34 + 16) = v17;
    aBlock[4] = partial apply for closure #1 in RecentsCollectionViewCollator.currentFilterMode.didset;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_181_0;
    v35 = _Block_copy(aBlock);
    v36 = v17;
    v37 = v43;
    static DispatchQoS.unspecified.getter();
    v48 = MEMORY[0x1E69E7CC0];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v38 = v45;
    v39 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v37, v38, v35);
    _Block_release(v35);
    (*(v47 + 8))(v38, v39);
    (*(v44 + 8))(v37, v46);
  }

  return result;
}

uint64_t closure #1 in RecentsCollectionViewCollator.currentFilterMode.didset(void *a1)
{
  v2 = type metadata accessor for FilterMenuViewModel.Action();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x210))(v4);
  RecentsCollectionViewCollator.items(for:)();
  (*(v3 + 8))(v6, v2);
  RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)();
}

uint64_t RecentsCollectionViewCollator.currentFilterMode.setter()
{
  v1 = type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentFilterMode;
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 16))(v7, v0 + v8, v1);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_92_0();
  v9();
  swift_endAccess();
  RecentsCollectionViewCollator.currentFilterMode.didset();
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_44_0();
  v10(v11);
  return (v10)(v7, v1);
}

void (*RecentsCollectionViewCollator.currentFilterMode.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = type metadata accessor for FilterMenuViewModel.Action();
  v3[4] = v4;
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v3[5] = v5;
  v8 = *(v7 + 64);
  v3[6] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[7] = v9;
  v10 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentFilterMode;
  OUTLINED_FUNCTION_4_0();
  v11 = *(v6 + 16);
  v3[8] = v11;
  v3[9] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v9, v1 + v10, v4);
  return RecentsCollectionViewCollator.currentFilterMode.modify;
}

void RecentsCollectionViewCollator.currentFilterMode.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    RecentsCollectionViewCollator.currentFilterMode.setter();
    v5 = OUTLINED_FUNCTION_316();
    v6(v5);
  }

  else
  {
    RecentsCollectionViewCollator.currentFilterMode.setter();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t RecentsCollectionViewCollator.currentFilterBadgeCountPublisher.getter()
{
  return RecentsCollectionViewCollator.currentFilterBadgeCountPublisher.getter();
}

{
  v1 = OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_101();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySis5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Int, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySis5NeverOGMd);
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Int, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySis5NeverOGGMd);
  v6 = Publisher.eraseToAnyPublisher()();
  (*(v4 + 8))(v0, v2);
  return v6;
}

void RecentsCollectionViewCollator.init(recentsController:conversationManager:linkController:sensitiveContentTipViewModel:dataSource:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v70 = v3;
  v71 = v2;
  v75 = v5;
  v76 = v4;
  v77 = v6;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v73 = v8;
  v74 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v72 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_1();
  v67 = v12;
  v68 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v66 = v63 - v14;
  v69 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v65 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v21 = type metadata accessor for DispatchQoS();
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v64 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_updateQueue;
  v63[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.userInteractive.getter();
  v79[0] = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  v23 = OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_92_0();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v24, v25);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v65 + 104))(v19, *MEMORY[0x1E69E8090], v69);
  v69 = 0x80000001BC513AC0;
  *&v0[v64] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v26 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_updateQueueKey;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A11SpecificKeyCySSGMd);
  swift_allocObject();
  *&v0[v26] = DispatchSpecificKey.init()();
  v27 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__hasFinishedFirstLoad;
  LOBYTE(v79[0]) = 0;
  v28 = v66;
  Published.init(initialValue:)();
  (*(v67 + 32))(&v1[v27], v28, v68);
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cancellables] = MEMORY[0x1E69E7CD0];
  v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isShowingRequestsTip] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_shouldPresentRequestsTip] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_shouldPresentRequestsTipOnResume] = 0;
  v29 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentFilterMode;
  v30 = *MEMORY[0x1E6995A70];
  type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_7_0();
  (*(v31 + 104))(&v1[v29], v30);
  v32 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentFilterBadgeCount;
  v79[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySis5NeverOGMd);
  swift_allocObject();
  *&v1[v32] = OUTLINED_FUNCTION_72_13();
  v33 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentRequestCount;
  OUTLINED_FUNCTION_37_28();
  *&v1[v33] = OUTLINED_FUNCTION_72_13();
  v34 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentVoicemailCount;
  OUTLINED_FUNCTION_37_28();
  *&v1[v34] = OUTLINED_FUNCTION_72_13();
  v35 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentVideomailCount;
  OUTLINED_FUNCTION_37_28();
  *&v1[v35] = OUTLINED_FUNCTION_72_13();
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentCallsDidChangeObserver] = 0;
  v36 = &v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator____lazy_storage___upcomingSectionItemLimit];
  *v36 = 0;
  v36[8] = 1;
  v37 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_featureFlags;
  *&v1[v37] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_wantsSynchronousLoad] = 1;
  v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isDataLoading] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_pendingDataLoading] = 0;
  v38 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedJunkItems] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedRequestItems] = v38;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedMissedItems] = v38;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVoicemailItems] = v38;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVideomailItems] = v38;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedDefaultItems] = v38;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__requestCount] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__voicemailCount] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__videomailCount] = 0;
  v39 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_requestsHandler;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *&v1[v39] = static RequestsHandler.shared;
  v40 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentsController;
  outlined init with copy of IDSLookupManager(v77, &v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentsController]);
  v41 = v70;
  v42 = v71;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_conversationManager] = v71;
  v43 = v75;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_linkController] = v76;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_sensitiveContentTipViewModel] = v43;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_dataSource] = v41;
  outlined init with copy of IDSLookupManager(&v1[v40], v79);
  v44 = v80;
  v45 = v81;
  __swift_project_boxed_opaque_existential_1(v79, v80);
  v46 = *(v45 + 40);

  v70 = v41;

  v47 = v42;

  v46(v44, v45);
  __swift_destroy_boxed_opaque_existential_1(v79);
  v48 = v72;
  Date.init()();
  static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)();
  v50 = v49;
  (*(v73 + 8))(v48, v74);
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_model] = v50;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_suggestionFetcher] = [objc_allocWithZone(type metadata accessor for RecentsListSuggestionFetcher()) init];
  v51 = type metadata accessor for RecentsCollectionViewCollator();
  v78.receiver = v1;
  v78.super_class = v51;
  v52 = objc_msgSendSuper2(&v78, sel_init);
  v53 = *&v52[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_updateQueue];
  v79[0] = 0xD00000000000003ELL;
  v79[1] = v69;
  v54 = v52;
  v55 = v53;

  OS_dispatch_queue.setSpecific<A>(key:value:)();

  v56 = *&v54[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_suggestionFetcher];
  v57 = *((*MEMORY[0x1E69E7D40] & *v56) + 0x118);
  v58 = v54;
  v59 = v56;
  v57(v54, &protocol witness table for RecentsCollectionViewCollator);

  type metadata accessor for ScreenAndFilterUnknownCallersTipController();
  static ScreenAndFilterUnknownCallersTipController.shared.getter();
  updated = ScreenAndFilterUnknownCallersTipController.onUpdatePublisher.getter();

  v79[0] = updated;
  OUTLINED_FUNCTION_20();
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_24();
  v62 = swift_allocObject();
  *(v62 + 16) = partial apply for closure #1 in RecentsCollectionViewCollator.init(recentsController:conversationManager:linkController:sensitiveContentTipViewModel:dataSource:);
  *(v62 + 24) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVyyts5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVyyts5NeverOGMd);
  Publisher<>.sink(receiveValue:)();

  OUTLINED_FUNCTION_30_2();
  AnyCancellable.store(in:)();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v77);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in RecentsCollectionViewCollator.init(recentsController:conversationManager:linkController:sensitiveContentTipViewModel:dataSource:)()
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
      RecentsCollectionViewCollator.shouldShowRequestsTip()();
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_shouldPresentRequestsTipOnResume] = v5 & 1;
  }
}

void RecentsCollectionViewCollator.shouldShowRequestsTip()()
{
  v1 = type metadata accessor for RecentCallRecentItemMetadata(0);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v58 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v58 - v8;
  v70 = type metadata accessor for RecentsCallItemType(0);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v58 - v15;
  v17 = type metadata accessor for RecentsCallItem(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v65 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v58 - v21;
  if (RecentsCollectionViewCollator.isRequestsEnabled()())
  {
    return;
  }

  v69 = v1;
  v64 = type metadata accessor for ScreenAndFilterUnknownCallersTipController();
  static ScreenAndFilterUnknownCallersTipController.shared.getter();
  v23 = ScreenAndFilterUnknownCallersTipController.isFaceTimeFilteringTipAvailable.getter();

  if ((v23 & 1) == 0)
  {
    return;
  }

  v62 = v11;
  v66 = v7;
  v24 = *(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentsController + 24);
  v25 = *(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentsController + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentsController), v24);
  v26 = (*(v25 + 16))(v24, v25);
  if (!v26)
  {
    return;
  }

  v27 = v26;
  v63 = v4;
  v28 = [objc_opt_self() sharedInstance];
  if (!v28)
  {
    goto LABEL_47;
  }

  v29 = v28;
  v71 = [v28 deviceType];

  v30 = 0;
  v72 = *(v27 + 16);
  v67 = *MEMORY[0x1E69935C8];
  v60 = *MEMORY[0x1E69935E8];
  v61 = MEMORY[0x1E69E7CC0];
  v31 = v68;
  while (1)
  {
    if (v72 == v30)
    {

      static ScreenAndFilterUnknownCallersTipController.numCallsToTriggerFilteringTip.getter();
      return;
    }

    if (v30 >= *(v27 + 16))
    {
      break;
    }

    v32 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v33 = *(v18 + 72);
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v27 + v32 + v33 * v30, v22, type metadata accessor for RecentsCallItem);
    if (v71 == 4)
    {
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v22, v16, type metadata accessor for RecentsCallItemType);
      if (swift_getEnumCaseMultiPayload())
      {
        v34 = type metadata accessor for RecentsCallItemType;
        v35 = v16;
LABEL_13:
        outlined destroy of RecentsCallItemType(v35, v34);
        goto LABEL_14;
      }

      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v16, v31, type metadata accessor for RecentCallRecentItemMetadata);
      v36 = *(v31 + *(v69 + 24));
      if (!v36)
      {
        v34 = type metadata accessor for RecentCallRecentItemMetadata;
        v35 = v31;
        goto LABEL_13;
      }

      v37 = [v36 callStatus];
      outlined destroy of RecentsCallItemType(v31, type metadata accessor for RecentCallRecentItemMetadata);
      if (v37 == v67)
      {
        RecentsCallItem.isIncomingCall.getter();
        if (v38)
        {
          v39 = v62;
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v22, v62, type metadata accessor for RecentsCallItemType);
          if (swift_getEnumCaseMultiPayload())
          {
            outlined destroy of RecentsCallItemType(v39, type metadata accessor for RecentsCallItemType);
            goto LABEL_39;
          }

          v40 = v63;
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v39, v63, type metadata accessor for RecentCallRecentItemMetadata);
          v41 = *(v40 + *(v69 + 24));
          if (v41 && (v42 = [v41 serviceProvider]) != 0)
          {
            v43 = v42;
            v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v44;
          }

          else
          {
            v59 = 0;
            v45 = 0;
          }

          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!v45)
          {

            outlined destroy of RecentsCallItemType(v63, type metadata accessor for RecentCallRecentItemMetadata);
            goto LABEL_39;
          }

          if (v59 == v50 && v45 == v51)
          {

            outlined destroy of RecentsCallItemType(v63, type metadata accessor for RecentCallRecentItemMetadata);
            v31 = v68;
          }

          else
          {
            LODWORD(v59) = _stringCompareWithSmolCheck(_:_:expecting:)();

            outlined destroy of RecentsCallItemType(v63, type metadata accessor for RecentCallRecentItemMetadata);
            v31 = v68;
            if ((v59 & 1) == 0)
            {
              goto LABEL_39;
            }
          }
        }
      }

      goto LABEL_14;
    }

    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v22, v14, type metadata accessor for RecentsCallItemType);
    if (swift_getEnumCaseMultiPayload())
    {
      v34 = type metadata accessor for RecentsCallItemType;
      v35 = v14;
      goto LABEL_13;
    }

    v46 = v66;
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v14, v66, type metadata accessor for RecentCallRecentItemMetadata);
    v47 = *(v46 + *(v69 + 24));
    if (!v47)
    {
      outlined destroy of RecentsCallItemType(v46, type metadata accessor for RecentCallRecentItemMetadata);
      v31 = v68;
      goto LABEL_14;
    }

    v48 = [v47 callStatus];
    outlined destroy of RecentsCallItemType(v46, type metadata accessor for RecentCallRecentItemMetadata);
    v31 = v68;
    if (v48 == v67 && (RecentsCallItem.isIncomingCall.getter(), (v49 & 1) != 0))
    {
LABEL_39:
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v22, v65, type metadata accessor for RecentsCallItem);
      v53 = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v53;
      v73 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v55 = v73;
      }

      v56 = *(v55 + 16);
      v57 = v56 + 1;
      if (v56 >= *(v55 + 24) >> 1)
      {
        v61 = v56 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v57 = v61;
        v55 = v73;
      }

      ++v30;
      *(v55 + 16) = v57;
      v61 = v55;
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v65, v55 + v32 + v56 * v33, type metadata accessor for RecentsCallItem);
      v31 = v68;
    }

    else
    {
LABEL_14:
      outlined destroy of RecentsCallItemType(v22, type metadata accessor for RecentsCallItem);
      ++v30;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t RecentsCollectionViewCollator.isOnUpdateQueue.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v4)
  {
    if (v3 == 0xD00000000000003ELL && v4 == 0x80000001BC513AC0)
    {
      v1 = 1;
    }

    else
    {
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id RecentsCollectionViewCollator.__deallocating_deinit()
{
  RecentsCollectionViewCollator.deregisterRecentCallsDidChangeObserver()();
  v1 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_linkController;
  OUTLINED_FUNCTION_4_0();
  v2 = *(**&v0[v1] + 264);

  v2(v3);

  v4 = *(**&v0[v1] + 136);

  v5 = type metadata completion function for SyncedScreeningAlphaGradientView();
  v4(v5);

  v7.receiver = v0;
  v7.super_class = type metadata accessor for RecentsCollectionViewCollator();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void RecentsCollectionViewCollator.callItem(for:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71_11();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = *v33;
  v35 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_38_28(v35);
  v36 = *&v24[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_updateQueue];
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  *(v37 + 24) = v24;
  *(v37 + 32) = v34;
  *(v37 + 40) = v30;
  *(v37 + 48) = v28;
  OUTLINED_FUNCTION_24();
  v38 = swift_allocObject();
  *(v38 + 16) = partial apply for closure #1 in RecentsCollectionViewCollator.callItem(for:identifier:);
  *(v38 + 24) = v37;
  a13 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a14 = v38;
  OUTLINED_FUNCTION_1_25();
  a10 = 1107296256;
  OUTLINED_FUNCTION_11_0();
  a11 = v39;
  a12 = &block_descriptor_87;
  v40 = _Block_copy(&a9);
  v41 = v24;

  dispatch_sync(v36, v40);
  _Block_release(v40);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_70_6();
  }
}

uint64_t closure #1 in RecentsCollectionViewCollator.callItem(for:identifier:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v20 = *(a2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_model);
  v19 = a3;

  RecentsCollectionViewModel.sectionable(for:identifier:)(&v19, a4, a5, v21);

  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd);
    v13 = type metadata accessor for RecentsCallItem(0);
    v14 = swift_dynamicCast() ^ 1;
    v15 = v12;
    v16 = v13;
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s15ConversationKit32RecentsCollectionViewSectionable_pSgMd);
    v16 = type metadata accessor for RecentsCallItem(0);
    v15 = v12;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v14, 1, v16);
  return outlined assign with take of RecentsCallItem?(v12, a1);
}

void RecentsCollectionViewCollator.callItem(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71_11();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_38_28(v33);
  v34 = *&v24[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_updateQueue];
  OUTLINED_FUNCTION_109();
  v35 = swift_allocObject();
  v35[2] = v32;
  v35[3] = v24;
  v35[4] = v30;
  v35[5] = v28;
  OUTLINED_FUNCTION_24();
  v36 = swift_allocObject();
  *(v36 + 16) = partial apply for closure #1 in RecentsCollectionViewCollator.callItem(for:);
  *(v36 + 24) = v35;
  a13 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a14 = v36;
  OUTLINED_FUNCTION_1_25();
  a10 = 1107296256;
  OUTLINED_FUNCTION_11_0();
  a11 = v37;
  a12 = &block_descriptor_21_0;
  v38 = _Block_copy(&a9);
  v39 = v24;

  dispatch_sync(v34, v38);
  _Block_release(v38);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_70_6();
  }
}

uint64_t closure #1 in RecentsCollectionViewCollator.callItem(for:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v8 - v5;
  v8[1] = *(a2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_model);

  RecentsCollectionViewModel.sectionable(with:)();

  return outlined assign with take of RecentsCallItem?(v6, a1);
}

void RecentsCollectionViewCollator.videoMessageCallItem(withUUID:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for RecentsCallItem(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
  (*(v7 + 16))(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v5);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v0;
  (*(v7 + 32))(v13 + v12, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  OUTLINED_FUNCTION_24();
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in RecentsCollectionViewCollator.videoMessageCallItem(withUUID:);
  *(v14 + 24) = v13;
  v21[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v21[5] = v14;
  OUTLINED_FUNCTION_5_73();
  v21[1] = 1107296256;
  OUTLINED_FUNCTION_11_0();
  v21[2] = v15;
  v21[3] = &block_descriptor_31_0;
  v16 = _Block_copy(v21);
  v17 = v0;

  v18 = OUTLINED_FUNCTION_76();
  dispatch_sync(v18, v19);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
  }
}

uint64_t closure #1 in RecentsCollectionViewCollator.videoMessageCallItem(withUUID:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v8 - v5;
  v8[1] = *(a2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_model);

  RecentsCollectionViewModel.videoMessageCallItem(withUUID:)();

  return outlined assign with take of RecentsCallItem?(v6, a1);
}

BOOL RecentsCollectionViewCollator.isActive.getter()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x168))();
  OUTLINED_FUNCTION_27_15();
  v2 = (*(v1 + 128))();

  if (v2)
  {
    swift_unknownObjectRelease();
  }

  return v2 != 0;
}

Swift::Void __swiftcall RecentsCollectionViewCollator.suspend()()
{
  RecentsCollectionViewCollator.deregisterRecentCallsDidChangeObserver()();
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_conversationManager) removeDelegate_];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x168);
  v2(v1);
  OUTLINED_FUNCTION_20_8();
  (*(v3 + 264))();

  v2(v4);
  OUTLINED_FUNCTION_27_15();
  v5 = type metadata completion function for SyncedScreeningAlphaGradientView();
  v6(v5);
}

Swift::Void __swiftcall RecentsCollectionViewCollator.reloadData(contactDidChange:acceptedIntroductionsDidChange:)(Swift::Bool contactDidChange, Swift::Bool acceptedIntroductionsDidChange)
{
  OUTLINED_FUNCTION_29();
  isEscapingClosureAtFileLocation = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  v20 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isDataLoading;
  if ((*(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isDataLoading) & 1) == 0)
  {
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + v20) = 1;
    if (*(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_wantsSynchronousLoad) == 1)
    {
      *(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_wantsSynchronousLoad) = 0;
      v13 = *(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_updateQueue);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_24_43(v6);
      OUTLINED_FUNCTION_24();
      v26 = swift_allocObject();
      *(v26 + 16) = partial apply for closure #2 in RecentsCollectionViewCollator.reloadData(contactDidChange:acceptedIntroductionsDidChange:);
      *(v26 + 24) = v6;
      v40 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
      v41 = v26;
      OUTLINED_FUNCTION_5_73();
      v37[1] = 1107296256;
      OUTLINED_FUNCTION_11_0();
      v38 = v27;
      v39 = &block_descriptor_48_1;
      v15 = _Block_copy(v37);
      v12 = v41;
      v28 = isEscapingClosureAtFileLocation;

      dispatch_sync(v13, v15);

      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    v29 = swift_allocObject();
    v30 = OUTLINED_FUNCTION_24_43(v29);
    v40 = partial apply for closure #3 in RecentsCollectionViewCollator.reloadData(contactDidChange:acceptedIntroductionsDidChange:);
    v41 = v30;
    OUTLINED_FUNCTION_5_73();
    OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
    v38 = v31;
    v39 = &block_descriptor_38_2;
    v36 = _Block_copy(v37);
    v32 = isEscapingClosureAtFileLocation;

    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_9_91();
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    OUTLINED_FUNCTION_3_8();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v35, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v19, v12, v36);
    _Block_release(v36);

    (*(v8 + 8))(v12, v6);
    (*(v15 + 1))(v19, v13);

    goto LABEL_11;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.conversationKit);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1BBC58000, v22, v23, "Request reloadData while data is loading, will be processed later.", v24, 2u);
    OUTLINED_FUNCTION_27();
  }

  v25 = (isEscapingClosureAtFileLocation + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_pendingDataLoading);
  *v25 = 1;
  v25[1] = v5 & 1;
LABEL_11:
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in RecentsCollectionViewCollator.reloadData(contactDidChange:acceptedIntroductionsDidChange:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    RecentsCollectionViewCollator.hasFinishedFirstLoad.setter();
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v12[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isDataLoading] = 0;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_pendingDataLoading];

    if (v14 == 1)
    {
      v25 = v7;
      swift_beginAccess();
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_pendingDataLoading + 1];
      }

      else
      {
        v16 = 0;
      }

      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        *&v17[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_pendingDataLoading] = 0;
      }

      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v26 = v3;
      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.conversationKit);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1BBC58000, v19, v20, "Request reloadData after data loading is done.", v21, 2u);
        MEMORY[0x1BFB23DF0](v21, -1, -1);
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v22 = static OS_dispatch_queue.main.getter();
      v23 = swift_allocObject();
      *(v23 + 16) = a1;
      *(v23 + 24) = v16;
      aBlock[4] = partial apply for closure #1 in closure #1 in RecentsCollectionViewCollator.reloadData(contactDidChange:acceptedIntroductionsDidChange:);
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_171_0;
      v24 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1BFB215C0](0, v9, v5, v24);
      _Block_release(v24);

      (*(v26 + 8))(v5, v2);
      (*(v25 + 8))(v9, v6);
    }
  }
}

void closure #1 in closure #1 in RecentsCollectionViewCollator.reloadData(contactDidChange:acceptedIntroductionsDidChange:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x408))(0, a2 & 1);
  }
}

void RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v11 = *(*&v0[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_model] + 16) != 0;
  v12 = RecentsCollectionViewCollator.isRequestsEnabled()();
  v13 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_38_28(v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v0;
  *(v14 + 40) = v12 & 1;
  *(v14 + 41) = v2;
  *(v14 + 42) = v11;
  *(v14 + 48) = v8;
  *(v14 + 56) = v6;
  *(v14 + 64) = v4;
  v15 = v0;
  v16 = OUTLINED_FUNCTION_45_1();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v16);
  type metadata completion function for SyncedScreeningAlphaGradientView();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 435) = v14;
  *(v8 + 80) = a8;
  *(v8 + 88) = v13;
  *(v8 + 434) = a7;
  *(v8 + 433) = a6;
  *(v8 + 432) = a5;
  *(v8 + 72) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 96) = v9;
  *(v8 + 104) = *(v9 - 8);
  *(v8 + 112) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 120) = v10;
  *(v8 + 128) = *(v10 - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = type metadata accessor for RecentsCallItemType(0);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = type metadata accessor for RecentCallRecentItemMetadata(0);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = *(type metadata accessor for RecentsCallItem(0) - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:), 0, 0);
}

uint64_t closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentsController), *(*(v0 + 72) + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentsController + 24));
  OUTLINED_FUNCTION_92_0();
  v2 = v1();
  v10 = *(v2 + 16);
  if (!v10)
  {
    goto LABEL_102;
  }

  v11 = v2;
  v2 = *(v2 + 32);
  *(v0 + 368) = v2;
  if (v10 == 1)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  *(v0 + 376) = v11[5];
  if (v10 < 3)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v12 = v11[6];
  *(v0 + 384) = v12;
  if (v10 == 3)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  *(v0 + 392) = v11[7];
  if (v10 < 5)
  {
LABEL_106:
    __break(1u);
    return MEMORY[0x1EEE6DDE0](v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v13 = *(v0 + 432);
  *(v0 + 400) = v11[8];

  if (v13 != 1)
  {
    v56 = 0;
    v57 = *(v0 + 240);
    v197 = *(v0 + 376);
    v58 = *(v197 + 16);
    v188 = MEMORY[0x1E69E7CC0];
    while (v58 != v56)
    {
      if (v56 >= *(v197 + 16))
      {
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v59 = *(v0 + 320);
      OUTLINED_FUNCTION_14_45();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v60, v59, v61);
      RequestsHandler.isRequestItem(_:)();
      if (v62)
      {
        v2 = OUTLINED_FUNCTION_6_99(*(v0 + 320));
        ++v56;
      }

      else
      {
        OUTLINED_FUNCTION_0_182();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v63, v64, v65);
        v66 = v188;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_14_58();
          v66 = v188;
        }

        v68 = *(v66 + 16);
        v67 = *(v66 + 24);
        v69 = v68 + 1;
        if (v68 >= v67 >> 1)
        {
          OUTLINED_FUNCTION_10_69(v67);
          v192 = v73;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v69 = v192;
          v66 = v188;
        }

        ++v56;
        *(v66 + 16) = v69;
        v188 = v66;
        OUTLINED_FUNCTION_0_182();
        v2 = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v70, v71, v72);
      }
    }

    v78 = *(v0 + 392);

    v79 = 0;
    v198 = v78;
    v80 = *(v78 + 16);
    v190 = MEMORY[0x1E69E7CC0];
    while (v80 != v79)
    {
      if (v79 >= *(v198 + 16))
      {
        goto LABEL_98;
      }

      v81 = *(v0 + 304);
      OUTLINED_FUNCTION_60_13();
      OUTLINED_FUNCTION_14_45();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v82, v81, v83);
      RequestsHandler.isRequestItem(_:)();
      if (v84)
      {
        v2 = OUTLINED_FUNCTION_6_99(*(v0 + 304));
        ++v79;
      }

      else
      {
        OUTLINED_FUNCTION_0_182();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v85, v86, v87);
        v88 = v190;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_14_58();
          v88 = v190;
        }

        v90 = *(v88 + 16);
        v89 = *(v88 + 24);
        v91 = v90 + 1;
        if (v90 >= v89 >> 1)
        {
          OUTLINED_FUNCTION_10_69(v89);
          v193 = v95;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v91 = v193;
          v88 = v190;
        }

        ++v79;
        *(v88 + 16) = v91;
        v190 = v88;
        OUTLINED_FUNCTION_0_182();
        v2 = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v92, v93, v94);
      }
    }

    v96 = *(v0 + 400);

    v97 = 0;
    v194 = v96;
    v98 = *(v96 + 16);
    v99 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v199 = v99;
      if (v98 == v97)
      {
        break;
      }

      if (v97 >= *(v194 + 16))
      {
        goto LABEL_99;
      }

      v100 = *(v0 + 288);
      OUTLINED_FUNCTION_60_13();
      OUTLINED_FUNCTION_14_45();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v101, v100, v102);
      RequestsHandler.isRequestItem(_:)();
      if (v103)
      {
        v2 = OUTLINED_FUNCTION_6_99(*(v0 + 288));
        ++v97;
      }

      else
      {
        OUTLINED_FUNCTION_0_182();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v104, v105, v106);
        v107 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_14_58();
          v107 = v99;
        }

        v109 = *(v107 + 16);
        v108 = *(v107 + 24);
        v110 = v109 + 1;
        if (v109 >= v108 >> 1)
        {
          OUTLINED_FUNCTION_10_69(v108);
          v200 = v114;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v110 = v200;
          v107 = v99;
        }

        ++v97;
        *(v107 + 16) = v110;
        OUTLINED_FUNCTION_0_182();
        v2 = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v111, v112, v113);
        v99 = v107;
      }
    }

    v115 = *(v0 + 368);
    v195 = *(v0 + 192);
    v116 = *(v0 + 72);

    (*((*MEMORY[0x1E69E7D40] & *v116) + 0x168))(v117);
    OUTLINED_FUNCTION_20_8();
    (*(v118 + 272))();

    v119 = RecentsCollectionViewCollator.linkCallItems(combining:with:)();

    RecentsCollectionViewCollator.activeCallItems()();
    specialized Array.append<A>(contentsOf:)(v120);
    v121 = v119;
    *(v116 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedJunkItems) = v115;

    v122 = MEMORY[0x1E69E7CC0];
    *(v116 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedRequestItems) = MEMORY[0x1E69E7CC0];

    *(v116 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedMissedItems) = v188;

    v123 = v190;
    *(v116 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVoicemailItems) = v190;

    *(v116 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVideomailItems) = v99;
    v124 = v122;

    *(v116 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedDefaultItems) = v119;

    v189 = *(v122 + 16);

    v125 = 0;
    v126 = *(v190 + 16);
    while (v126 != v125)
    {
      if (v125 >= *(v123 + 16))
      {
        goto LABEL_100;
      }

      v127 = *(v0 + 272);
      v128 = *(v0 + 160);
      v121 = ((*(v57 + 80) + 32) & ~*(v57 + 80));
      OUTLINED_FUNCTION_14_45();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v129, v127, v130);
      OUTLINED_FUNCTION_15_43();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v127, v128, v131);
      swift_getEnumCaseMultiPayload();
      OUTLINED_FUNCTION_67_10();
      if (v132)
      {
        OUTLINED_FUNCTION_4_128();
LABEL_72:
        outlined destroy of RecentsCallItemType(v139, v140);
LABEL_73:
        OUTLINED_FUNCTION_0_182();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v141, v142, v143);
        v202 = v124;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_19_41();
        }

        v144 = v124;
        v145 = *(v124 + 16);
        v146 = *(v144 + 24);
        v122 = v145 + 1;
        if (v145 >= v146 >> 1)
        {
          OUTLINED_FUNCTION_10_69(v146);
          OUTLINED_FUNCTION_53_15();
          v144 = v202;
        }

        ++v125;
        *(v144 + 16) = v122;
        OUTLINED_FUNCTION_0_182();
        v2 = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v147, v148, v149);
        v123 = v190;
        v124 = v144;
      }

      else
      {
        v133 = *(v0 + 208);
        OUTLINED_FUNCTION_3_135();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v134, v133, v135);
        v136 = *(v133 + *(v195 + 52));
        v137 = *(v0 + 208);
        if (!v136)
        {
          OUTLINED_FUNCTION_2_145();
          v139 = v137;
          goto LABEL_72;
        }

        v122 = [v136 isRead];
        OUTLINED_FUNCTION_2_145();
        outlined destroy of RecentsCallItemType(v137, v138);
        if ((v122 & 1) == 0)
        {
          goto LABEL_73;
        }

        v2 = OUTLINED_FUNCTION_6_99(*(v0 + 272));
        ++v125;
        v123 = v190;
      }
    }

    v191 = *(v124 + 16);

    v150 = 0;
    v2 = v199;
    v151 = *(v199 + 16);
    v152 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        if (v151 == v150)
        {
          OUTLINED_FUNCTION_23_49();
          OUTLINED_FUNCTION_27_44();

          v175 = swift_allocObject();
          *(v175 + 16) = v121;
          *(v175 + 24) = v189;
          OUTLINED_FUNCTION_25_43(v175, v191);
          *(v0 + 16) = MEMORY[0x1E69E9820];
          OUTLINED_FUNCTION_26_42(COERCE_DOUBLE(1107296256));
          *(v0 + 32) = v176;
          *(v0 + 40) = &block_descriptor_160;
          v177 = _Block_copy(v151);
          v178 = v121;
          outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v57);
          static DispatchQoS.unspecified.getter();
          *(v0 + 64) = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_9_91();
          _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(v179, v180);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          OUTLINED_FUNCTION_3_8();
          lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v181, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
          OUTLINED_FUNCTION_36_30();
          OUTLINED_FUNCTION_51_18();
          _Block_release(v177);
          v182 = OUTLINED_FUNCTION_59_11();
          v183(v182);
          (*(v187 + 8))();

          OUTLINED_FUNCTION_13();
          OUTLINED_FUNCTION_69_8();

          __asm { BRAA            X1, X16 }
        }

        if (v150 >= *(v2 + 16))
        {
          goto LABEL_101;
        }

        OUTLINED_FUNCTION_64_13();
        v121 = (v154 & ~v153);
        OUTLINED_FUNCTION_14_45();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v155, v122, v156);
        OUTLINED_FUNCTION_15_43();
        v157 = OUTLINED_FUNCTION_76();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v157, v158, v159);
        swift_getEnumCaseMultiPayload();
        OUTLINED_FUNCTION_67_10();
        if (!v132)
        {
          break;
        }

        OUTLINED_FUNCTION_4_128();
LABEL_87:
        outlined destroy of RecentsCallItemType(v166, v167);
LABEL_88:
        OUTLINED_FUNCTION_0_182();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v168, v169, v170);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_14_58();
        }

        OUTLINED_FUNCTION_45_23();
        if (v132)
        {
          OUTLINED_FUNCTION_10_69(v171);
          OUTLINED_FUNCTION_53_15();
        }

        ++v150;
        *(v152 + 16) = v122;
        OUTLINED_FUNCTION_0_182();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v172, v173, v174);
        v2 = v199;
      }

      v160 = *(v0 + 200);
      OUTLINED_FUNCTION_3_135();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v161, v160, v162);
      v163 = OUTLINED_FUNCTION_43_19();
      v122 = *(v0 + 200);
      if (!v163)
      {
        OUTLINED_FUNCTION_2_145();
        v166 = v122;
        goto LABEL_87;
      }

      v164 = [v163 isRead];
      OUTLINED_FUNCTION_2_145();
      outlined destroy of RecentsCallItemType(v122, v165);
      if ((v164 & 1) == 0)
      {
        goto LABEL_88;
      }

      OUTLINED_FUNCTION_6_99(*(v0 + 256));
      ++v150;
      v2 = v199;
    }
  }

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v16 = *(v0 + 192);
  v201 = MEMORY[0x1E69E7CC0];
  v17 = *(v12 + 16);
LABEL_8:
  v18 = v12;
  v196 = v15;
  *(v0 + 408) = v15;
  while (v17 != v14)
  {
    if (v14 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_97;
    }

    v19 = *(v0 + 360);
    v20 = *(v0 + 184);
    OUTLINED_FUNCTION_40_3();
    v12 = v21;
    OUTLINED_FUNCTION_14_45();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v22, v19, v23);
    OUTLINED_FUNCTION_15_43();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v19, v20, v24);
    OUTLINED_FUNCTION_316();
    if (swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_4_128();
      outlined destroy of RecentsCallItemType(v25, v26);
      v27 = 0;
    }

    else
    {
      v28 = *(v0 + 232);
      OUTLINED_FUNCTION_3_135();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v29, v28, v30);
      v27 = *(v28 + *(v16 + 24));
      v31 = v27;
      OUTLINED_FUNCTION_2_145();
      outlined destroy of RecentsCallItemType(v28, v32);
    }

    v33 = *(v0 + 176);
    OUTLINED_FUNCTION_15_43();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v34, v33, v35);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v36 = *(v0 + 224);
      OUTLINED_FUNCTION_3_135();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v37, v36, v38);
      v39 = *(v36 + *(v16 + 24));
      v40 = v39;
      OUTLINED_FUNCTION_2_145();
      outlined destroy of RecentsCallItemType(v36, v41);
      if (v39)
      {

        v27 = v39;
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_128();
      outlined destroy of RecentsCallItemType(v42, v43);
    }

    v44 = *(v0 + 168);
    OUTLINED_FUNCTION_15_43();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v45, v44, v46);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v47 = *(v0 + 216);
      OUTLINED_FUNCTION_3_135();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v48, v47, v49);
      v50 = *(v47 + *(v16 + 24));
      v51 = v50;
      OUTLINED_FUNCTION_2_145();
      outlined destroy of RecentsCallItemType(v47, v52);
      if (v50)
      {

        goto LABEL_24;
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_128();
      outlined destroy of RecentsCallItemType(v53, v54);
    }

    if (!v27)
    {
      goto LABEL_26;
    }

    v51 = v27;
LABEL_24:
    if (CHRecentCall.isIncoming.getter())
    {
      v55 = OUTLINED_FUNCTION_6_99(*(v0 + 360));
      MEMORY[0x1BFB20CC0](v55);
      if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v201 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v14;
      v2 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v201;
      goto LABEL_8;
    }

LABEL_26:
    v2 = OUTLINED_FUNCTION_6_99(*(v0 + 360));
    ++v14;
    v18 = v12;
  }

  v74 = *(v0 + 433);
  v75 = *(v0 + 72);
  v76 = swift_task_alloc();
  *(v0 + 416) = v76;
  *(v76 + 16) = v75;
  *(v76 + 24) = v196;
  *(v76 + 32) = v74;
  v77 = swift_task_alloc();
  *(v0 + 424) = v77;
  *v77 = v0;
  v77[1] = closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:);
  OUTLINED_FUNCTION_69_8();

  return MEMORY[0x1EEE6DDE0](v2, v3, v4, v5, v6, v7, v8, v9);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:), 0, 0);
}

void closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)()
{
  v1 = 0;
  v2 = *(v0[48] + 16);
  v156 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v3 = v0[48];
    if (v2 == v1)
    {
      v17 = 0;
      v18 = *(v3 + 16);
      v19 = MEMORY[0x1E69E7CC0];
      while (v18 != v17)
      {
        if (v17 >= *(v0[48] + 16))
        {
          goto LABEL_85;
        }

        v20 = v0[42];
        OUTLINED_FUNCTION_14_45();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v21, v20, v22);
        RequestsHandler.isRequestItem(_:)();
        if (v23)
        {
          OUTLINED_FUNCTION_6_99(v0[42]);
          ++v17;
        }

        else
        {
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v24, v25, v26);
          v166 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_19_41();
          }

          v27 = v19;
          v28 = *(v19 + 16);
          v29 = *(v27 + 24);
          if (v28 >= v29 >> 1)
          {
            OUTLINED_FUNCTION_10_69(v29);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v27 = v166;
          }

          ++v17;
          *(v27 + 16) = v28 + 1;
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v30, v31, v32);
          v19 = v27;
        }
      }

      v33 = 0;
      v34 = v0[30];
      v162 = v0[47];
      v35 = *(v162 + 16);
      v154 = MEMORY[0x1E69E7CC0];
      while (v35 != v33)
      {
        if (v33 >= *(v162 + 16))
        {
          goto LABEL_86;
        }

        v36 = v0[40];
        OUTLINED_FUNCTION_29_32();
        OUTLINED_FUNCTION_14_45();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v37, v36, v38);
        RequestsHandler.isRequestItem(_:)();
        if (v39)
        {
          OUTLINED_FUNCTION_6_99(v0[40]);
          ++v33;
        }

        else
        {
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v40, v41, v42);
          v43 = v154;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14_58();
            v43 = v154;
          }

          v45 = *(v43 + 16);
          v44 = *(v43 + 24);
          v46 = v45 + 1;
          if (v45 >= v44 >> 1)
          {
            OUTLINED_FUNCTION_10_69(v44);
            v159 = v50;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v46 = v159;
            v43 = v154;
          }

          ++v33;
          *(v43 + 16) = v46;
          v154 = v43;
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v47, v48, v49);
        }
      }

      v51 = v0[49];

      v52 = 0;
      v160 = v51;
      v163 = *(v51 + 16);
      v53 = MEMORY[0x1E69E7CC0];
      while (v163 != v52)
      {
        if (v52 >= *(v160 + 16))
        {
          goto LABEL_87;
        }

        v54 = v0[38];
        OUTLINED_FUNCTION_29_32();
        OUTLINED_FUNCTION_14_45();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v55, v54, v56);
        RequestsHandler.isRequestItem(_:)();
        if (v57)
        {
          OUTLINED_FUNCTION_6_99(v0[38]);
          ++v52;
        }

        else
        {
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v58, v59, v60);
          v61 = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14_58();
            v61 = v53;
          }

          v63 = *(v61 + 16);
          v62 = *(v61 + 24);
          if (v63 >= v62 >> 1)
          {
            OUTLINED_FUNCTION_10_69(v62);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v61 = v53;
          }

          ++v52;
          *(v61 + 16) = v63 + 1;
          OUTLINED_FUNCTION_0_182();
          v53 = v61;
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v64, v65, v66);
        }
      }

      v157 = v53;
      v67 = v0[50];

      v68 = 0;
      v161 = v67;
      v69 = *(v67 + 16);
      v70 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v164 = v70;
        if (v69 == v68)
        {
          break;
        }

        if (v68 >= *(v161 + 16))
        {
          goto LABEL_88;
        }

        v71 = v0[36];
        OUTLINED_FUNCTION_29_32();
        OUTLINED_FUNCTION_14_45();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v72, v71, v73);
        RequestsHandler.isRequestItem(_:)();
        if (v74)
        {
          OUTLINED_FUNCTION_6_99(v0[36]);
          ++v68;
        }

        else
        {
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v75, v76, v77);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14_58();
          }

          v79 = *(v70 + 16);
          v78 = *(v70 + 24);
          v80 = v79 + 1;
          if (v79 >= v78 >> 1)
          {
            OUTLINED_FUNCTION_10_69(v78);
            v165 = v84;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v80 = v165;
          }

          ++v68;
          *(v70 + 16) = v80;
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v81, v82, v83);
        }
      }

      v85 = v0[46];
      v86 = v0[9];

      (*((*MEMORY[0x1E69E7D40] & *v86) + 0x168))(v87);
      OUTLINED_FUNCTION_20_8();
      (*(v88 + 272))();

      v89 = RecentsCollectionViewCollator.linkCallItems(combining:with:)();

      RecentsCollectionViewCollator.activeCallItems()();
      specialized Array.append<A>(contentsOf:)(v90);
      *(v86 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedJunkItems) = v85;

      *(v86 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedRequestItems) = v156;

      *(v86 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedMissedItems) = v154;

      *(v86 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVoicemailItems) = v157;

      *(v86 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVideomailItems) = v70;

      *(v86 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedDefaultItems) = v89;

      v155 = *(v156 + 16);

      v91 = v157;
      v92 = 0;
      v93 = *(v157 + 16);
      v94 = MEMORY[0x1E69E7CC0];
      while (v93 != v92)
      {
        if (v92 >= *(v91 + 16))
        {
          goto LABEL_89;
        }

        v89 = v0[34];
        OUTLINED_FUNCTION_14_45();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v95, v89, v96);
        OUTLINED_FUNCTION_15_43();
        v97 = OUTLINED_FUNCTION_76();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v97, v98, v99);
        swift_getEnumCaseMultiPayload();
        OUTLINED_FUNCTION_67_10();
        if (v100)
        {
          OUTLINED_FUNCTION_4_128();
LABEL_60:
          outlined destroy of RecentsCallItemType(v107, v108);
LABEL_61:
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v109, v110, v111);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14_58();
          }

          OUTLINED_FUNCTION_45_23();
          if (v100)
          {
            OUTLINED_FUNCTION_10_69(v112);
            OUTLINED_FUNCTION_53_15();
          }

          ++v92;
          *(v94 + 16) = v89;
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v113, v114, v115);
          v91 = v157;
        }

        else
        {
          v101 = v0[26];
          OUTLINED_FUNCTION_3_135();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v102, v101, v103);
          v104 = OUTLINED_FUNCTION_43_19();
          v89 = v0[26];
          if (!v104)
          {
            OUTLINED_FUNCTION_2_145();
            v107 = v89;
            goto LABEL_60;
          }

          v105 = [v104 isRead];
          OUTLINED_FUNCTION_2_145();
          outlined destroy of RecentsCallItemType(v89, v106);
          if ((v105 & 1) == 0)
          {
            goto LABEL_61;
          }

          OUTLINED_FUNCTION_6_99(v0[34]);
          ++v92;
          v91 = v157;
        }
      }

      v158 = *(v94 + 16);

      v116 = 0;
      v117 = v164;
      v118 = *(v164 + 16);
      v119 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        while (1)
        {
          if (v118 == v116)
          {
            OUTLINED_FUNCTION_23_49();
            OUTLINED_FUNCTION_27_44();

            v142 = swift_allocObject();
            *(v142 + 16) = v118;
            *(v142 + 24) = v155;
            OUTLINED_FUNCTION_25_43(v142, v158);
            v0[2] = MEMORY[0x1E69E9820];
            OUTLINED_FUNCTION_26_42(COERCE_DOUBLE(1107296256));
            v0[4] = v143;
            v0[5] = &block_descriptor_160;
            v144 = _Block_copy(v92);
            v145 = v118;
            outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v34);
            static DispatchQoS.unspecified.getter();
            v0[8] = MEMORY[0x1E69E7CC0];
            OUTLINED_FUNCTION_9_91();
            _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(v146, v147);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
            OUTLINED_FUNCTION_3_8();
            lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v148, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
            OUTLINED_FUNCTION_36_30();
            OUTLINED_FUNCTION_51_18();
            _Block_release(v144);
            v149 = OUTLINED_FUNCTION_59_11();
            v150(v149);
            (*(v153 + 8))();

            OUTLINED_FUNCTION_13();
            OUTLINED_FUNCTION_69_8();

            __asm { BRAA            X1, X16 }
          }

          if (v116 >= *(v117 + 16))
          {
            goto LABEL_90;
          }

          OUTLINED_FUNCTION_64_13();
          v92 = (v121 & ~v120);
          OUTLINED_FUNCTION_14_45();
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v122, v89, v123);
          OUTLINED_FUNCTION_15_43();
          v124 = OUTLINED_FUNCTION_76();
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v124, v125, v126);
          swift_getEnumCaseMultiPayload();
          OUTLINED_FUNCTION_67_10();
          if (!v100)
          {
            break;
          }

          OUTLINED_FUNCTION_4_128();
LABEL_75:
          outlined destroy of RecentsCallItemType(v133, v134);
LABEL_76:
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v135, v136, v137);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14_58();
          }

          OUTLINED_FUNCTION_45_23();
          if (v100)
          {
            OUTLINED_FUNCTION_10_69(v138);
            OUTLINED_FUNCTION_53_15();
          }

          ++v116;
          *(v119 + 16) = v89;
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v139, v140, v141);
          v117 = v164;
        }

        v127 = v0[25];
        OUTLINED_FUNCTION_3_135();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v128, v127, v129);
        v130 = OUTLINED_FUNCTION_43_19();
        v89 = v0[25];
        if (!v130)
        {
          OUTLINED_FUNCTION_2_145();
          v133 = v89;
          goto LABEL_75;
        }

        v131 = [v130 isRead];
        OUTLINED_FUNCTION_2_145();
        outlined destroy of RecentsCallItemType(v89, v132);
        if ((v131 & 1) == 0)
        {
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_6_99(v0[32]);
        ++v116;
        v117 = v164;
      }
    }

    if (v1 >= *(v3 + 16))
    {
      break;
    }

    v4 = v0[44];
    OUTLINED_FUNCTION_14_45();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v5, v4, v6);
    RequestsHandler.isRequestItem(_:)();
    if (v7)
    {
      OUTLINED_FUNCTION_0_182();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v8, v9, v10);
      v11 = v156;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_14_58();
        v11 = v156;
      }

      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      if (v13 >= v12 >> 1)
      {
        OUTLINED_FUNCTION_10_69(v12);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v11 = v156;
      }

      ++v1;
      *(v11 + 16) = v13 + 1;
      v156 = v11;
      OUTLINED_FUNCTION_0_182();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v14, v15, v16);
    }

    else
    {
      OUTLINED_FUNCTION_6_99(v0[44]);
      ++v1;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
}

uint64_t closure #1 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(void *a1)
{
  OUTLINED_FUNCTION_63_1(a1);
  v1 = OUTLINED_FUNCTION_4_38();
  return v2(v1) & 1;
}

uint64_t closure #2 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = OUTLINED_FUNCTION_62_0();
  if (v2(v1))
  {
    v3 = OUTLINED_FUNCTION_44_0();
    __swift_project_boxed_opaque_existential_1(v3, v4);
    v5 = OUTLINED_FUNCTION_62_0();
    v7 = v6(v5) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL closure #3 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(void *a1)
{
  OUTLINED_FUNCTION_63_1(a1);
  v1 = OUTLINED_FUNCTION_4_38();
  return (v2(v1) & 1) == 0;
}

uint64_t closure #4 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(void *a1)
{
  OUTLINED_FUNCTION_63_1(a1);
  v1 = OUTLINED_FUNCTION_4_38();
  return v2(v1) & 1;
}

uint64_t closure #5 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(void *a1)
{
  OUTLINED_FUNCTION_63_1(a1);
  v1 = OUTLINED_FUNCTION_4_38();
  return v2(v1) & 1;
}

uint64_t closure #7 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  RequestsHandler.updateCache(with:shouldRequeryCached:_:)();
}

uint64_t RecentsCollectionViewCollator.linkCallItems(combining:with:)()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecentsCollectionViewCollator();
  specialized _arrayForceCast<A, B>(_:)();
  v5 = v4;
  specialized _arrayForceCast<A, B>(_:)();
  v7 = v6;
  static Date.now.getter();
  v12 = 0;
  static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:)(v5, v7, v3, closure #1 in RecentsCollectionViewCollator.linkCallItems(combining:with:), 0, &v12);

  (*(v1 + 8))(v3, v0);
  specialized _arrayConditionalCast<A, B>(_:)();
  v9 = v8;

  if (v9)
  {
    return v9;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t closure #15 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v18[3] = a8;
  v12 = type metadata accessor for FilterMenuViewModel.Action();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__requestCount) = a2;
  RecentsCollectionViewCollator._requestCount.didset();
  *(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__voicemailCount) = a3;
  RecentsCollectionViewCollator._requestCount.didset();
  *(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__videomailCount) = a4;
  v16 = RecentsCollectionViewCollator._requestCount.didset();
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x210))(v16);
  RecentsCollectionViewCollator.items(for:)();
  (*(v13 + 8))(v15, v12);
  RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)();
}

uint64_t RecentsCollectionViewCollator.items(for:)()
{
  type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v4 = OUTLINED_FUNCTION_62_0();
  v5(v4);
  v6 = OUTLINED_FUNCTION_45_1();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x1E6995A78])
  {
    v9 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedMissedItems;
  }

  else if (v8 == *MEMORY[0x1E6995AA0])
  {
    v9 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVoicemailItems;
  }

  else if (v8 == *MEMORY[0x1E6995A98])
  {
    v9 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVideomailItems;
  }

  else if (v8 == *MEMORY[0x1E6995A90])
  {
    v9 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedRequestItems;
  }

  else
  {
    if (v8 != *MEMORY[0x1E6995A68])
    {
      v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedDefaultItems);
      v12 = *(v2 + 8);

      v13 = OUTLINED_FUNCTION_45_1();
      v12(v13);
      return v10;
    }

    v9 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedJunkItems;
  }

  v10 = *(v0 + v9);

  return v10;
}

void RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  LODWORD(v3) = v2;
  v86 = v4;
  v88 = v5;
  v90 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v82[-v11];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit28RecentsCollectionViewSectionOAD0H8CallItemVGMd);
  OUTLINED_FUNCTION_1();
  v85 = v12;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v82[-v14];
  v95 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  *&v91 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v87 = (v18 - v17);
  v19 = type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v82[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v82[-v26];
  if (one-time initialization token for recents != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, &static Log.recents);

  v89 = v29;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v92 = v8;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v83 = v3;
    v3 = v34;
    v97 = v34;
    *v33 = 136315650;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x80000001BC513F70, &v97);
    *(v33 + 12) = 2048;
    *(v33 + 14) = *(v8 + 16);

    *(v33 + 22) = 1024;
    *(v33 + 24) = v90 & 1;
    _os_log_impl(&dword_1BBC58000, v30, v31, "%s: %ld call items, animate: %{BOOL}d", v33, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    LOBYTE(v3) = v83;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  v36 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x210))(v35);
  (*(v21 + 104))(v24, *MEMORY[0x1E6995A70], v19);
  v37 = specialized == infix<A>(_:_:)(v27, v24);
  v38 = *(v21 + 8);
  v38(v24, v19);
  v38(v27, v19);
  if (v37)
  {
    v39 = *(v1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_suggestionFetcher);
    v40 = v36;
    v41 = *((*v36 & *v39) + 0x130);
    v42 = v39;
    v43 = v41();
  }

  else
  {
    v40 = v36;
    v43 = 0;
  }

  v44 = v92;
  v45 = v43;
  specialized _arrayForceCast<A, B>(_:)();
  RecentsCollectionViewCollator.upcomingSectionItemLimit.getter();
  v46 = v87;
  Date.init()();
  static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)();
  v48 = v47;

  (*(v91 + 8))(v46, v95);
  v49 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_model;
  v96 = *(v1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_model);
  v97 = v48;

  v50 = static RecentsCollectionViewModel.== infix(_:_:)(&v97, &v96);

  if ((v50 & 1) == 0 || (v3 & 1) != 0 || (*(v1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_shouldPresentRequestsTip) & 1) != 0 || ((*((*v40 & *v1) + 0x180))(v51) & 1) == 0)
  {
    v87 = v45;

    v55 = v1;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    v58 = os_log_type_enabled(v56, v57);
    v95 = v55;
    if (v58)
    {
      v59 = swift_slowAlloc();
      *v59 = 67109376;
      *(v59 + 4) = (*((*v40 & *v95) + 0x180))() & 1;

      *(v59 + 8) = 2048;
      *(v59 + 10) = *(v44 + 16);

      _os_log_impl(&dword_1BBC58000, v56, v57, "reloadData hasFinishedFirstLoad: %{BOOL}d. call items count: %ld", v59, 0x12u);
      v55 = v95;
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }

    *(v1 + v49) = v48;

    type metadata accessor for RecentsCallItem(0);
    lazy protocol witness table accessor for type RecentsCollectionViewSection and conformance RecentsCollectionViewSection();
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type RecentsCallItem and conformance RecentsCallItem, type metadata accessor for RecentsCallItem);
    NSDiffableDataSourceSnapshot.init()();
    v60 = *(v55 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_sensitiveContentTipViewModel);
    if (v60)
    {
      v61 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v84, 1, 1, v61);
      type metadata accessor for MainActor();
      swift_retain_n();

      v62 = static MainActor.shared.getter();
      OUTLINED_FUNCTION_109();
      v63 = swift_allocObject();
      v64 = MEMORY[0x1E69E85E0];
      v63[2] = v62;
      v63[3] = v64;
      v63[4] = v60;
      v63[5] = v44;
      type metadata completion function for SyncedScreeningAlphaGradientView();
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

      NSDiffableDataSourceSnapshot.appendSections(_:)(&outlined read-only object #0 of RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:));
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    if ((Features.isFaceTimeLaunchPageEnabled.getter() & 1) == 0)
    {
      NSDiffableDataSourceSnapshot.appendSections(_:)(&outlined read-only object #1 of RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:));
    }

    if (*(v55 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_shouldPresentRequestsTip) == 1)
    {
      *(v55 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_shouldPresentRequestsTip) = 0;
      *(v55 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isShowingRequestsTip) = 1;
    }

    if (*(v55 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isShowingRequestsTip) == 1)
    {
      NSDiffableDataSourceSnapshot.appendSections(_:)(&outlined read-only object #2 of RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:));
    }

    v89 = static RecentsCollectionViewSection.callItemCases.getter();
    v65 = *(v89 + 16);
    if (v65)
    {
      v66 = (v89 + 32);
      v67 = &_s15ConversationKit32RecentsCollectionViewSectionable_pMd;
      v91 = xmmword_1BC4BA940;
      do
      {
        v69 = *v66++;
        v68 = v69;
        if (*(*(v1 + v49) + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v68);
          if (v70)
          {

            specialized _arrayConditionalCast<A, B>(_:)();
            v72 = v71;

            if (v72)
            {
              if (*(v72 + 16))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit28RecentsCollectionViewSectionOGMd);
                v73 = swift_allocObject();
                v74 = v67;
                *(v73 + 16) = v91;
                *(v73 + 32) = v68;
                NSDiffableDataSourceSnapshot.appendSections(_:)(v73);

                OUTLINED_FUNCTION_24();
                v75 = swift_allocObject();
                v76 = v95;
                *(v75 + 16) = v95;
                *(v75 + 24) = v72;
                v77 = v76;

                specialized NSDiffableDataSourceSnapshot.appendItemsRemovingDupes(_:toSection:onDupe:)(v78, v68, partial apply for closure #2 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:), v75);
                v67 = v74;
              }
            }
          }
        }

        --v65;
      }

      while (v65);
    }

    OUTLINED_FUNCTION_37_0();
    v79 = swift_allocObject();
    v80 = v88;
    v79[2] = v92;
    v79[3] = v80;
    v79[4] = v86;

    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v80);
    v81 = v93;
    RecentsCollectionViewCollator.apply(_:animatingDifferences:completion:)();

    (*(v85 + 8))(v81, v94);
  }

  else
  {

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1BBC58000, v52, v53, "Skipping reloadData because model has not changed", v54, 2u);
      OUTLINED_FUNCTION_27();
    }

    if (v88)
    {
      v88();
    }
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:), v7, v6);
}

uint64_t closure #1 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)()
{
  v1._rawValue = *(v0 + 24);

  SensitiveContentRecentsTipViewModel.update(with:)(v1);
  OUTLINED_FUNCTION_13();

  return v2();
}

void closure #2 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationKit);
  v6 = a2;

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 138412546;
    *(v8 + 4) = v6;
    *v9 = v6;
    *(v8 + 12) = 2080;
    v11 = type metadata accessor for RecentsCallItem(0);
    v12 = v6;
    v13 = MEMORY[0x1BFB20D10](a3, v11);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1BBC58000, oslog, v7, "When updating %@ found dupes in items %s", v8, 0x16u);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_sSo8NSObjectCSgMd);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFB23DF0](v10, -1, -1);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }
}

void closure #3 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)(uint64_t a1, void (*a2)(void))
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationKit);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v5, v6))
  {

    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

  v7 = swift_slowAlloc();
  *v7 = 134217984;
  *(v7 + 4) = *(a1 + 16);

  _os_log_impl(&dword_1BBC58000, v5, v6, "reloadData done. call items count: %ld", v7, 0xCu);
  MEMORY[0x1BFB23DF0](v7, -1, -1);

  if (a2)
  {
LABEL_7:
    a2();
  }
}

void RecentsCollectionViewCollator.deleteCallItems(_:completion:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_79_0();
  v24 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_109();
  v16 = swift_allocObject();
  v16[2] = v0;
  v16[3] = v8;
  v16[4] = v6;
  v16[5] = v4;
  v25[4] = partial apply for closure #1 in RecentsCollectionViewCollator.deleteCallItems(_:completion:);
  v25[5] = v16;
  OUTLINED_FUNCTION_5_73();
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v25[2] = v17;
  v25[3] = &block_descriptor_54_0;
  v18 = _Block_copy(v25);
  v19 = v0;

  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v6);
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_9_91();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v22, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v23);
  _Block_release(v18);
  (*(v11 + 8))(v1, v9);
  (*(v14 + 8))(v2, v24);

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsCollectionViewCollator.deleteCallItems(_:completion:)(uint64_t a1, Swift::OpaquePointer a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit28RecentsCollectionViewSectionOAD0H8CallItemVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  NSDiffableDataSourceSnapshot.deleteItems(_:)(a2);
  RecentsCollectionViewCollator.apply(_:animatingDifferences:completion:)();
  return (*(v4 + 8))(v6, v3);
}

void RecentsCollectionViewCollator.deleteCallFilteringTip(completion:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_79_0();
  v22 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_37_0();
  v14 = swift_allocObject();
  v14[2] = v0;
  v14[3] = v6;
  v14[4] = v4;
  v23[4] = partial apply for closure #1 in RecentsCollectionViewCollator.deleteCallFilteringTip(completion:);
  v23[5] = v14;
  OUTLINED_FUNCTION_5_73();
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v23[2] = v15;
  v23[3] = &block_descriptor_60;
  v16 = _Block_copy(v23);
  v17 = v0;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v6);
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_9_91();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v20, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_68_6();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v21);
  _Block_release(v16);
  (*(v9 + 8))(v1, v7);
  (*(v12 + 8))(v2, v22);

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsCollectionViewCollator.deleteCallFilteringTip(completion:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit28RecentsCollectionViewSectionOAD0H8CallItemVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  NSDiffableDataSourceSnapshot.deleteSections(_:)(&outlined read-only object #0 of closure #1 in RecentsCollectionViewCollator.deleteCallFilteringTip(completion:));
  *(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isShowingRequestsTip) = 0;
  RecentsCollectionViewCollator.apply(_:animatingDifferences:completion:)();
  return (*(v3 + 8))(v5, v2);
}

void RecentsCollectionViewCollator.activeCallItems()()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  v5 = [*(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_conversationManager) activeConversations];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversation and conformance NSObject, &lazy cache variable for type metadata for TUConversation);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = MEMORY[0x1E69E7CC0];
  if ((v6 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v7 = v36;
    v8 = v37;
    v9 = v38;
    v10 = v39;
    v11 = v40;
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
    v7 = v6;
  }

  v15 = (v9 + 64) >> 6;
  while (1)
  {
    if (v7 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v19 = v34, v18 = v11, !v34))
      {
LABEL_29:
        outlined consume of Set<TUHandle>.Iterator._Variant();
        v24 = specialized Array.count.getter(v35);
        v25 = 0;
        v26 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v24 == v25)
          {

            OUTLINED_FUNCTION_30_0();
            return;
          }

          if ((v35 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1BFB22010](v25, v35);
          }

          else
          {
            if (v25 >= *(v35 + 16))
            {
              goto LABEL_44;
            }

            v27 = *(v35 + 8 * v25 + 32);
          }

          if (__OFADD__(v25, 1))
          {
            break;
          }

          RecentsCallItem.init(conversation:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v26 = v31;
          }

          v28 = *(v26 + 16);
          if (v28 >= *(v26 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v26 = v32;
          }

          *(v26 + 16) = v28 + 1;
          OUTLINED_FUNCTION_40_3();
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v4, v29, v30);
          ++v25;
        }

        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      goto LABEL_17;
    }

    v16 = v10;
    v17 = v11;
    if (!v11)
    {
      break;
    }

LABEL_13:
    v18 = (v17 - 1) & v17;
    v19 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v19)
    {
      goto LABEL_29;
    }

LABEL_17:
    if ([v19 state] || objc_msgSend(v19, sel_isOneToOneModeEnabled))
    {

      v11 = v18;
    }

    else
    {
      v33 = v7;
      v20 = [v19 link];
      if (v20)
      {

LABEL_26:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_27;
      }

      v21 = [v19 mergedRemoteMembers];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
      v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = __CocoaSet.count.getter();
      }

      else
      {
        v23 = *(v22 + 16);
      }

      if (v23 > 0)
      {
        goto LABEL_26;
      }

LABEL_27:
      v11 = v18;
      v7 = v33;
    }
  }

  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_29;
    }

    v17 = *(v8 + 8 * v10);
    ++v16;
    if (v17)
    {
      goto LABEL_13;
    }
  }

LABEL_45:
  __break(1u);
}

void closure #1 in RecentsCollectionViewCollator.registerRecentCallsDidChangeObserver()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x408))(0, 0);
  }
}

void RecentsCollectionViewCollator.deregisterRecentCallsDidChangeObserver()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentCallsDidChangeObserver;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentCallsDidChangeObserver);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];

    swift_unknownObjectRelease();
    *(v0 + v1) = 0;

    swift_unknownObjectRelease();
  }
}

id RecentsCollectionViewCollator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Int CombiningType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

uint64_t closure #1 in RecentsCollectionViewCollator.linkCallItems(combining:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30[-v9 - 8];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30[-v12 - 8];
  v14 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30[-v18 - 8];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30[-v21 - 8];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30[-v24 - 8];
  outlined init with copy of IDSLookupManager(a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15GroupCombinable_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    v27 = v13;
LABEL_7:
    result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s15ConversationKit15RecentsCallItemVSgMd);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v13, v25, type metadata accessor for RecentsCallItem);
  outlined init with copy of IDSLookupManager(v29, v30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
    outlined destroy of RecentsCallItemType(v25, type metadata accessor for RecentsCallItem);
    v27 = v10;
    goto LABEL_7;
  }

  __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v10, v22, type metadata accessor for RecentsCallItem);
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v25, v19, type metadata accessor for RecentsCallItem);
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v22, v16, type metadata accessor for RecentsCallItem);
  RecentsCallItem.init(recentItem:linkItem:)();
  if (__swift_getEnumTagSinglePayload(v7, 1, v14) == 1)
  {
    outlined destroy of RecentsCallItemType(v22, type metadata accessor for RecentsCallItem);
    outlined destroy of RecentsCallItemType(v25, type metadata accessor for RecentsCallItem);
    result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit15RecentsCallItemVSgMd);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
  }

  else
  {
    *(a3 + 24) = v14;
    *(a3 + 32) = &protocol witness table for RecentsCallItem;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v7, boxed_opaque_existential_1, type metadata accessor for RecentsCallItem);
    outlined destroy of RecentsCallItemType(v22, type metadata accessor for RecentsCallItem);
    return outlined destroy of RecentsCallItemType(v25, type metadata accessor for RecentsCallItem);
  }

  return result;
}

uint64_t closure #2 in static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:)(void *a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a4;
  v27 = a6;
  v28 = a7;
  v26 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  LOBYTE(v31) = a2 & 1;
  (*(v17 + 16))(&v31, v18, v17);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s10Foundation4UUIDVSgMd);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = *(*a3 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v19);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v20 = v29;
    v21 = specialized Dictionary.subscript.getter(v16);
    if (v21)
    {
      v22 = v21;
      if (*(v21 + 16))
      {
        v31 = MEMORY[0x1E69E7CC0];
        MEMORY[0x1EEE9AC00](v21);
        v23 = v27;
        *(&v26 - 6) = v26;
        *(&v26 - 5) = v23;
        *(&v26 - 4) = a1;
        *(&v26 - 3) = a3;
        *(&v26 - 2) = &v31;
        *(&v26 - 1) = v28;
        specialized Sequence.forEach(_:)(partial apply for closure #1 in closure #2 in static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:), (&v26 - 8), v22);

        swift_isUniquelyReferenced_nonNull_native();
        v30 = *v20;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
        *v20 = v30;
        (*(v14 + 8))(v16, v13);
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = *(*a3 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v19);
    (*(v14 + 8))(v16, v13);
  }

  v25 = *a3;
  *(v25 + 16) = v19 + 1;
  return outlined init with copy of IDSLookupManager(a1, v25 + 40 * v19 + 32);
}

uint64_t closure #1 in closure #2 in static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:)(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t, void *), uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  a2(v26, a1, a4);
  if (v26[3])
  {
    outlined init with take of ImageName(v26, v27);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v12 = *(*a6 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v12);
    v13 = *a6;
    *(v13 + 16) = v12 + 1;
    outlined init with copy of IDSLookupManager(v27, v13 + 40 * v12 + 32);
    v14 = a4[3];
    v15 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v14);
    v16 = (*(v15 + 24))(a7, v14, v15);
    if ((v16 & 1) == 0)
    {
      return __swift_destroy_boxed_opaque_existential_1(v27);
    }

    MEMORY[0x1EEE9AC00](v16);

    v17 = specialized Sequence.contains(where:)();

    if (v17)
    {
      return __swift_destroy_boxed_opaque_existential_1(v27);
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v24 = *(*a5 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v24);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v25 = *a5;
    *(v25 + 16) = v24 + 1;
    v23 = v25 + 40 * v24;
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s15ConversationKit15GroupCombinable_pSgMd);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = *(*a5 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v19);
    v20 = *a5;
    *(v20 + 16) = v19 + 1;
    outlined init with copy of IDSLookupManager(a1, v20 + 40 * v19 + 32);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v21 = *(*a5 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v21);
    v22 = *a5;
    *(v22 + 16) = v21 + 1;
    v23 = v22 + 40 * v21;
  }

  return outlined init with copy of IDSLookupManager(a4, v23 + 32);
}

uint64_t closure #1 in implicit closure #1 in closure #1 in closure #2 in static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 8))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Void __swiftcall RecentsCollectionViewCollator.suggestionFetcherDidFetchSuggestion()()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if (Features.isFaceTimeLaunchPageEnabled.getter())
  {
    v0 = OUTLINED_FUNCTION_66_9();

    v1(v0);
  }
}

uint64_t RecentsCollectionViewCollator.conversationManager(_:addedActiveConversation:)()
{
  return RecentsCollectionViewCollator.conversationManager(_:addedActiveConversation:)();
}

{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_45_1();
  os_log(_:dso:log:type:_:)();
  v0 = OUTLINED_FUNCTION_66_9();

  return v1(v0);
}

uint64_t RecentsCollectionViewCollator.conversationManager(_:didChangeActivatedLinks:)(uint64_t a1, uint64_t a2)
{
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x168))();
  OUTLINED_FUNCTION_20_8();
  (*(v4 + 336))(a2);
}

uint64_t RecentsCollectionViewCollator.conversationManager(_:linkChangedFor:)()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.default.getter();
  v1 = os_log(_:dso:log:type:_:)();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x168))(v1);
  OUTLINED_FUNCTION_20_8();
  (*(v2 + 344))();
}

void RecentsCollectionViewCollator.recentsLinkControllerRefreshedLinks(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29();
  v14 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_79_0();
  v18 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.default.getter();
  v22 = MEMORY[0x1E69E7CC0];
  os_log(_:dso:log:type:_:)();
  if ([objc_opt_self() isMainThread])
  {
    OUTLINED_FUNCTION_66_9();
    OUTLINED_FUNCTION_30_0();

    v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v37 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_20();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38[4] = partial apply for closure #1 in RecentsCollectionViewCollator.recentsLinkControllerRefreshedLinks(_:);
    v38[5] = v31;
    OUTLINED_FUNCTION_5_73();
    v38[1] = 1107296256;
    v38[2] = thunk for @escaping @callee_guaranteed () -> ();
    v38[3] = &block_descriptor_64;
    v32 = _Block_copy(v38);

    static DispatchQoS.unspecified.getter();
    v38[0] = v22;
    OUTLINED_FUNCTION_9_91();
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    OUTLINED_FUNCTION_3_8();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v35, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    OUTLINED_FUNCTION_68_6();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v36 = OUTLINED_FUNCTION_117();
    MEMORY[0x1BFB215C0](v36);
    _Block_release(v32);

    (*(v16 + 8))(v12, v14);
    (*(v20 + 8))(v13, v18);
    OUTLINED_FUNCTION_30_0();
  }
}

void closure #1 in RecentsCollectionViewCollator.recentsLinkControllerRefreshedLinks(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x408))(0, 0);
  }
}

uint64_t partial apply for closure #1 in RecentsCollectionViewCollator.videoMessageCallItem(withUUID:)()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_40_3();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return closure #1 in RecentsCollectionViewCollator.videoMessageCallItem(withUUID:)(v2, v3);
}

uint64_t objectdestroy_34Tm()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type CombiningType and conformance CombiningType()
{
  result = lazy protocol witness table cache variable for type CombiningType and conformance CombiningType;
  if (!lazy protocol witness table cache variable for type CombiningType and conformance CombiningType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CombiningType and conformance CombiningType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CombiningType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for closure #1 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in HUDActivityService.startActivity(with:);

  return closure #1 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(uint64_t a1)
{
  v4 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 41);
  v8 = *(v1 + 42);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in HUDActivityService.stopActivity(reason:);

  return closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in closure #7 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  OUTLINED_FUNCTION_22(v0);

  return closure #1 in closure #1 in closure #1 in RecentsListViewController.observeTip<A>(_:)();
}

uint64_t outlined assign with take of RecentsCallItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PlaceholderCall and conformance PlaceholderCall()
{
  result = lazy protocol witness table cache variable for type PlaceholderCall and conformance PlaceholderCall;
  if (!lazy protocol witness table cache variable for type PlaceholderCall and conformance PlaceholderCall)
  {
    type metadata accessor for PlaceholderCall();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaceholderCall and conformance PlaceholderCall);
  }

  return result;
}

uint64_t PlaceholderBasicCall.uniqueProxyIdentifierUUID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC15ConversationKit15PlaceholderCall_conversationUUID;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t PlaceholderBasicCall.status.getter(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  v2 = lazy protocol witness table accessor for type PlaceholderCall and conformance PlaceholderCall();

  return a2(v3, v2);
}

uint64_t PlaceholderBasicCall.activeRemoteParticipant.getter@<X0>(uint64_t a1@<X8>)
{
  Participant.init()();
  v2 = type metadata accessor for Participant();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t PlaceholderBasicCall.underlyingObject.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for PlaceholderCall();
  *a2 = a1;
}

unint64_t PlaceholderBasicCall.provider.getter@<X0>(void *a1@<X8>)
{
  v2 = PlaceholderCall.provider.getter();
  a1[3] = &type metadata for CallCenterCallProvider;
  result = lazy protocol witness table accessor for type CallCenterCallProvider and conformance CallCenterCallProvider();
  a1[4] = result;
  *a1 = v2;
  return result;
}

uint64_t PlaceholderBasicCall.localSenderIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SenderIdentity();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

id PlaceholderBasicCall.contactStoreConfiguration.getter()
{
  v0 = objc_opt_self();
  v1 = PlaceholderCall.conversation.getter();
  v2 = [v0 tu:v1 contactStoreConfigurationForConversation:?];

  return v2;
}

uint64_t ConversationControlsMoreMenuHandle.__allocating_init()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69D42A0]);
  v1 = @nonobjc SBSRemoteAlertDefinition.init(serviceName:viewControllerClassName:)(0xD000000000000017, 0x80000001BC506380, 0xD00000000000002DLL, 0x80000001BC514040);
  v2 = [objc_opt_self() newHandleWithDefinition:v1 configurationContext:0];

  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t ConversationControlsMoreMenuHandle.__allocating_init(handle:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ConversationControlsMoreMenuHandle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id @nonobjc SBSRemoteAlertDefinition.init(serviceName:viewControllerClassName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1BFB209B0]();

  v8 = MEMORY[0x1BFB209B0](a3, a4);

  v9 = [v4 initWithServiceName:v7 viewControllerClassName:v8];

  return v9;
}

id TULinkShareItem.linkMetadata.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *&v2 = MEMORY[0x1EEE9AC00](v1 - 8).n128_u64[0];
  v4 = &v13 - v3;
  v5 = [v0 tuConversationLink];
  v6 = [v5 URL];

  if (v6)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = type metadata accessor for URL();
    v8 = 0;
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v8, 1, v7);
  v9 = outlined bridged method (pb) of @objc SWCollaborationHighlight.title.getter(v0);
  v11 = TULinkShareItem.linkMetadata(forURL:withTitle:)(v4, v9, v10);

  outlined destroy of URL?(v4);
  return v11;
}

void TULinkShareItem.activityViewControllerPlaceholderItem(_:)(uint64_t *a1@<X8>)
{
  v3 = [v1 placeholder];
  a1[3] = type metadata accessor for URL();
  __swift_allocate_boxed_opaque_existential_1(a1);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

id @objc TULinkShareItem.activityViewControllerPlaceholderItem(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  TULinkShareItem.activityViewControllerPlaceholderItem(_:)(v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v8);

  return v6;
}

uint64_t TULinkShareItem.activityViewController(_:itemForActivityType:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v17 - v9;
  v11 = [v2 tuConversationLink];
  v12 = [v11 URL];

  if (v12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for URL();
    v14 = 0;
  }

  else
  {
    v13 = type metadata accessor for URL();
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v14, 1, v13);
  outlined init with take of URL?(v6, v10);
  type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
  {
    result = outlined destroy of URL?(v10);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(*(v13 - 8) + 32))(boxed_opaque_existential_1, v10, v13);
  }

  return result;
}

id @objc TULinkShareItem.activityViewController(_:itemForActivityType:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  TULinkShareItem.activityViewController(_:itemForActivityType:)(v17);

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

Swift::String __swiftcall TULinkShareItem.activityViewController(_:subjectForActivityType:)(UIActivityViewController *_, UIActivityType_optional subjectForActivityType)
{
  v3 = outlined bridged method (ob) of @objc TUConversationLink.linkName.getter([v2 tuConversationLink]);
  if (!v4)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id @objc TULinkShareItem.activityViewController(_:subjectForActivityType:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v10 = TULinkShareItem.activityViewController(_:subjectForActivityType:)(v8, v9);

  v11 = MEMORY[0x1BFB209B0](v10._countAndFlagsBits, v10._object);

  return v11;
}

id @objc TULinkShareItem.activityViewControllerLinkMetadata(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = TULinkShareItem.activityViewControllerLinkMetadata(_:)(v5);

  return v6;
}

id TULinkShareItem.linkMetadata(forURL:withTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  outlined init with copy of URL?(a1, v11);
  v13 = type metadata accessor for URL();
  v15 = 0;
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) != 1)
  {
    URL._bridgeToObjectiveC()(v14);
    v15 = v16;
    (*(*(v13 - 8) + 8))(v11, v13);
  }

  [v12 setOriginalURL_];

  outlined init with copy of URL?(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    v18 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v17);
    v18 = v19;
    (*(*(v13 - 8) + 8))(v8, v13);
  }

  [v12 setURL_];

  v20 = [objc_allocWithZone(MEMORY[0x1E696EC50]) init];
  if (a3)
  {
    outlined bridged method (mbgnn) of @objc LPFaceTimeInviteMetadata.title.setter(a2, a3, v20);
  }

  [v12 setSpecialization_];

  return v12;
}

uint64_t TULinkShareItem.dataRepresentation.getter()
{
  v0 = TULinkShareItem.linkMetadata.getter();
  v1 = [v0 dataRepresentation];

  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

void outlined bridged method (mbgnn) of @objc LPFaceTimeInviteMetadata.title.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();
  [a3 setTitle_];
}

uint64_t outlined bridged method (ob) of @objc TUConversationLink.linkName.getter(void *a1)
{
  v2 = [a1 linkName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t View.screenSharingTouchShield(isActive:isCapturingTouch:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5Error_pGSgMd);
  State.init(wrappedValue:)();
  *v13 = a1;
  *&v13[8] = xmmword_1BC4DF1A0;
  *&v13[24] = v14[0];
  *&v13[40] = a2;
  *&v13[48] = a3;
  v13[56] = a4;

  MEMORY[0x1BFB1FAD0](v13, a5, &type metadata for ScreenSharingTouchShield, a6);
  v14[0] = *v13;
  v14[1] = *&v13[16];
  v15[0] = *&v13[32];
  *(v15 + 9) = *&v13[41];
  return outlined destroy of ScreenSharingTouchShield(v14);
}

uint64_t ScreenSharingTouchShield.isCapturingTouch.getter()
{
  OUTLINED_FUNCTION_2_19();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x1BFB20050](&v2, v0);
  return v2;
}

uint64_t ScreenSharingTouchShield.isCapturingTouch.setter()
{
  OUTLINED_FUNCTION_2_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  return Binding.wrappedValue.setter();
}

void (*ScreenSharingTouchShield.isCapturingTouch.modify(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v3[7] = v4;
  v3[8] = v5;
  v6 = *(v1 + 56);
  *(v3 + 19) = v6;
  v3[6] = v4;
  *v3 = v4;
  v3[1] = v5;
  *(v3 + 16) = v6;
  outlined init with copy of Transaction((v3 + 6), (v3 + 3));

  v3[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x1BFB20050]();
  return ClarityUIDialerView.isPresented.modify;
}

uint64_t ScreenSharingTouchShield.$isCapturingTouch.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t ScreenSharingTouchShield.gesture.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocalCoordinateSpace();
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for DragGesture();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-v9];
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v11 = swift_allocObject();
  v12 = v1[1];
  v11[1] = *v1;
  v11[2] = v12;
  v11[3] = v1[2];
  *(v11 + 57) = *(v1 + 41);
  outlined init with copy of ScreenSharingTouchShield(v1, v16);
  lazy protocol witness table accessor for type DragGesture and conformance DragGesture(&lazy protocol witness table cache variable for type DragGesture and conformance DragGesture, MEMORY[0x1E697BEA8]);
  lazy protocol witness table accessor for type DragGesture and conformance DragGesture(&lazy protocol witness table cache variable for type DragGesture.Value and conformance DragGesture.Value, MEMORY[0x1E697BE90]);
  Gesture<>.onChanged(_:)();

  (*(v4 + 8))(v6, v3);
  v13 = swift_allocObject();
  v14 = v1[1];
  v13[1] = *v1;
  v13[2] = v14;
  v13[3] = v1[2];
  *(v13 + 57) = *(v1 + 41);
  outlined init with copy of ScreenSharingTouchShield(v1, v16);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ChangedGesture<DragGesture> and conformance _ChangedGesture<A>, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd);
  Gesture.onEnded(_:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #1 in ScreenSharingTouchShield.gesture.getter(uint64_t a1, uint64_t a2)
{
  v9 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyScTyyts5Error_pGSgGMd);
  State.wrappedValue.getter();
  if (v11)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    MEMORY[0x1BFB21000](v11, MEMORY[0x1E69E7CA8] + 8, v3, MEMORY[0x1E69E7288]);
  }

  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  v6 = *(a2 + 56);
  v11 = v5;
  *&v9 = v5;
  *(&v9 + 1) = v4;
  v10 = v6;
  outlined init with copy of Transaction(&v11, &v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x1BFB20050](&v8);
  if ((v8 & 1) == 0)
  {
    *&v9 = v5;
    *(&v9 + 1) = v4;
    v10 = v6;
    LOBYTE(v8) = 1;
    Binding.wrappedValue.setter();
  }

  outlined destroy of Transaction(&v11);
}

uint64_t closure #2 in ScreenSharingTouchShield.gesture.getter(uint64_t a1, _OWORD *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  outlined init with copy of ScreenSharingTouchShield(a2, v14);
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = a2[1];
  *(v8 + 32) = *a2;
  *(v8 + 48) = v10;
  *(v8 + 64) = a2[2];
  *(v8 + 73) = *(a2 + 41);
  v11 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  v14[0] = *(a2 + 24);
  v13[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyScTyyts5Error_pGSgGMd);
  return State.wrappedValue.setter();
}

uint64_t closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter, v7, v6);
}

uint64_t closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter;

  return specialized Clock.sleep(for:tolerance:)();
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter;
  }

  else
  {
    v8 = closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  v1 = *(v0 + 40);

  v2 = *(v1 + 40);
  *(v0 + 32) = *(v1 + 56);
  *(v0 + 16) = v2;
  *(v0 + 33) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.wrappedValue.setter();

  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ScreenSharingTouchShield.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v32 = type metadata accessor for SensoryFeedback();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit24ScreenSharingTouchShieldVGAA08_OverlayF0VyAA0E0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0P0Rd__lFQOyACyAA5ColorVAA01_d5ShapeF0VyAA9RectangleVGG_AA06_EndedP0VyAA08_ChangedP0VyAA04DragP0VGGQo_SgGGMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15sensoryFeedback_7trigger9conditionQrAA07SensoryE0V_qd__Sbqd___qd__tctSQRd__lFQOyAA15ModifiedContentVyAA01_c9Modifier_J0Vy15ConversationKit24ScreenSharingTouchShieldVGAA08_OverlayK0VyAcAE7gesture_9includingQrqd___AA11GestureMaskVtAA0U0Rd__lFQOyAJyAA5ColorVAA01_j5ShapeK0VyAA9RectangleVGG_AA06_EndedU0VyAA08_ChangedU0VyAA04DragU0VGGQo_SgGG_SbQo_Md);
  OUTLINED_FUNCTION_1();
  v33 = v14;
  v34 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v18 = static Alignment.center.getter();
  v20 = v19;
  v21 = &v13[*(v10 + 36)];
  closure #1 in ScreenSharingTouchShield.body(content:)(v3, v21);
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0H0Rd__lFQOyAA15ModifiedContentVyAA5ColorVAA01_k5ShapeD0VyAA9RectangleVGG_AA06_EndedH0VyAA08_ChangedH0VyAA04DragH0VGGQo_SgGMd) + 36));
  *v22 = v18;
  v22[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit24ScreenSharingTouchShieldVGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v23 + 16))(v13, a1);
  static SensoryFeedback.error.getter();
  v36 = *(v3 + 40);
  LOBYTE(v37) = *(v3 + 56);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x1BFB20050](&v39, v24);
  LOBYTE(v36) = v39;
  v25 = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ScreenSharingTouchShield>, _OverlayModifier<(<<opaque return type of View.gesture<A>(_:including:)>>.0)?>> and conformance <> ModifiedContent<A, B>();
  v26 = MEMORY[0x1E69E6370];
  v27 = MEMORY[0x1E69E6388];
  View.sensoryFeedback<A>(_:trigger:condition:)();
  (*(v6 + 8))(v9, v32);
  sub_1BBCFB080(v13);
  LOBYTE(v39) = *v3;
  v28 = swift_allocObject();
  v29 = *(v3 + 16);
  v28[1] = *v3;
  v28[2] = v29;
  v28[3] = *(v3 + 32);
  *(v28 + 57) = *(v3 + 41);
  outlined init with copy of ScreenSharingTouchShield(v3, &v36);
  *&v36 = v10;
  *(&v36 + 1) = v26;
  v37 = v25;
  v38 = v27;
  OUTLINED_FUNCTION_0_183();
  swift_getOpaqueTypeConformance2();
  v30 = v33;
  View.onChange<A>(of:initial:_:)();

  return (*(v34 + 8))(v17, v30);
}

uint64_t closure #1 in ScreenSharingTouchShield.body(content:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_EndedGestureVyAA08_ChangedD0VyAA04DragD0VGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0F0Rd__lFQOyAA15ModifiedContentVyAA5ColorVAA01_I13ShapeModifierVyAA9RectangleVGG_AA06_EndedF0VyAA08_ChangedF0VyAA04DragF0VGGQo_Md);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  if (*a1)
  {
    v12 = static Color.clear.getter();
    v16 = a2;
    v17 = v12;
    v18 = 0;
    ScreenSharingTouchShield.gesture.getter();
    v15[1] = static GestureMask.all.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA01_D13ShapeModifierVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EndedGesture<_ChangedGesture<DragGesture>> and conformance _EndedGesture<A>, &_s7SwiftUI13_EndedGestureVyAA08_ChangedD0VyAA04DragD0VGGMd);
    View.gesture<A>(_:including:)();
    (*(v5 + 8))(v7, v4);

    v13 = v16;
    (*(v9 + 32))(v16, v11, v8);
    return __swift_storeEnumTagSinglePayload(v13, 0, 1, v8);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
  }
}

_BYTE *closure #3 in ScreenSharingTouchShield.body(content:)(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyScTyyts5Error_pGSgGMd);
    State.wrappedValue.getter();
    if (v2)
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      MEMORY[0x1BFB21000](v2, MEMORY[0x1E69E7CA8] + 8, v1, MEMORY[0x1E69E7288]);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
    return Binding.wrappedValue.setter();
  }

  return result;
}

__n128 ScreenSharingTouchShield.init(isActive:isCapturingTouch:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5Error_pGSgMd);
  State.init(wrappedValue:)();
  result = v11;
  *a5 = a1;
  *(a5 + 8) = xmmword_1BC4DF1A0;
  *(a5 + 24) = v11;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ScreenSharingTouchShield>, _OverlayModifier<(<<opaque return type of View.gesture<A>(_:including:)>>.0)?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScreenSharingTouchShield>, _OverlayModifier<(<<opaque return type of View.gesture<A>(_:including:)>>.0)?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScreenSharingTouchShield>, _OverlayModifier<(<<opaque return type of View.gesture<A>(_:including:)>>.0)?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit24ScreenSharingTouchShieldVGAA08_OverlayF0VyAA0E0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0P0Rd__lFQOyACyAA5ColorVAA01_d5ShapeF0VyAA9RectangleVGG_AA06_EndedP0VyAA08_ChangedP0VyAA04DragP0VGGQo_SgGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ScreenSharingTouchShield> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit24ScreenSharingTouchShieldVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<(<<opaque return type of View.gesture<A>(_:including:)>>.0)?> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0H0Rd__lFQOyAA15ModifiedContentVyAA5ColorVAA01_k5ShapeD0VyAA9RectangleVGG_AA06_EndedH0VyAA08_ChangedH0VyAA04DragH0VGGQo_SgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScreenSharingTouchShield>, _OverlayModifier<(<<opaque return type of View.gesture<A>(_:including:)>>.0)?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSharingTouchShield(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ScreenSharingTouchShield(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA01_D13ShapeModifierVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DragGesture and conformance DragGesture(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter(a1, v4, v5, v1 + 32);
}

void *static CallParticipantLabelDescriptor.labelDescriptor(for:callCount:alertAvailable:allowsDuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  swift_unknownObjectRetain();
  v10 = static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:alertAvailable:allowsDuration:)(v9, a3, a4 & 1, a5 & 1);
  swift_unknownObjectRelease();
  return v10;
}

id thunk for @escaping @callee_guaranteed (@guaranteed TUCall) -> (@owned String?)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();
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

uint64_t thunk for @escaping @callee_unowned @convention(block) (@unowned TUCall) -> (@autoreleased NSString?)(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t key path getter for CNKCallParticipantLabelDescriptorFactory.organizationNameProvider : CNKCallParticipantLabelDescriptorFactory@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 organizationNameProvider];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = thunk for @escaping @callee_unowned @convention(block) (@unowned TUCall) -> (@autoreleased NSString?)partial apply;
  *(result + 24) = v4;
  *a2 = thunk for @escaping @callee_guaranteed (@guaranteed TUCall) -> (@owned String?)partial apply;
  a2[1] = result;
  return result;
}

void key path setter for CNKCallParticipantLabelDescriptorFactory.organizationNameProvider : CNKCallParticipantLabelDescriptorFactory(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v8[4] = thunk for @escaping @callee_guaranteed (@in_guaranteed TUCall) -> (@out String?)partial apply;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed TUCall) -> (@owned String?);
  v8[3] = &block_descriptor_41_1;
  v7 = _Block_copy(v8);

  [v6 setOrganizationNameProvider_];
  _Block_release(v7);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed TUCall) -> (@out String?)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t CallParticipantLabelDescriptor.__allocating_init(string:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BA940;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
    OUTLINED_FUNCTION_11_89();
  }

  else
  {
    v12 = *(v2 + 336);
    v6 = MEMORY[0x1E69E7CC0];
    v7 = a1;
    v8 = 0;
    v9 = a1;
    v10 = 0;
    v11 = a1;
  }

  return v12(v6, v7, v8, v9, v10, v11, 0, 0);
}

uint64_t CNKCallParticipantLabelDescriptorFactory.makeLabel(using:)()
{
  type metadata accessor for CallParticipantLabelDescriptor();

  v0 = OUTLINED_FUNCTION_38_2();
  return CallParticipantLabelDescriptor.__allocating_init(string:)(v0, v1);
}

id CNKCallParticipantLabelDescriptorFactory.makeLabel(using:secondaryString:layoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v11 = MEMORY[0x1E69E7CC0];
  v12 = *(inited + 40);
  if (v12)
  {
    v13 = *(inited + 32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_43();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v11 = v17;
    }

    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      OUTLINED_FUNCTION_8_93(v14);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v11 = v18;
    }

    *(v11 + 16) = v15 + 1;
    v16 = v11 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v12;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v19 = objc_allocWithZone(type metadata accessor for CallParticipantLabelDescriptor());

  return CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v11, a3, a4, 0, 0, 0, 0, a5);
}

id CallParticipantLabelDescriptor.__allocating_init(strings:secondaryString:sourceString:durationString:layoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_14_59();
  v17 = v16;
  v18 = objc_allocWithZone(v8);
  return CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v17, v14, v13, v12, v11, v10, v9, a8);
}

void *CNKCallParticipantLabelDescriptorFactory.labelDescriptor(call:callCount:callCenter:alertAvailable:allowsDuration:)(void *a1, uint64_t a2, void *a3, char a4, char a5)
{
  v10 = type metadata accessor for CallParticipantLabelDescriptor();
  if (one-time initialization token for featureFlags != -1)
  {
    OUTLINED_FUNCTION_1_150();
  }

  v11 = static CallParticipantLabelDescriptor.featureFlags;
  v12 = specialized static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(a1, a2, a3, a4 & 1, a5 & 1, v11, v10);

  return v12;
}

void *static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(void *a1, uint64_t a2, void *a3, char a4, int a5, void *a6)
{
  swift_getObjectType();

  return specialized static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(a1, a2, a3, a4, a5, a6, v6);
}

id CNKCallParticipantLabelDescriptorFactory.callScreeningLabelDescriptor(call:callCount:)()
{
  if (one-time initialization token for featureFlags != -1)
  {
    OUTLINED_FUNCTION_1_150();
  }

  v0 = static CallParticipantLabelDescriptor.featureFlags;
  v1 = OUTLINED_FUNCTION_38_2();
  v3 = _s15ConversationKit30CallParticipantLabelDescriptorC013callScreeningeF03for0G5Count12featureFlagsACSgSo6TUCallC_SiSo09TUFeatureL0_ptFZTf4nnen_nSoAKC_Tt2g5(v1, v2, v0);

  return v3;
}

id static CallParticipantLabelDescriptor.callScreeningLabelDescriptor(for:callCount:featureFlags:)(void *a1, uint64_t a2, void *a3)
{
  swift_getObjectType();

  return specialized static CallParticipantLabelDescriptor.callScreeningLabelDescriptor(for:callCount:featureFlags:)(a1, a2, a3);
}

CNKCallParticipantLabelDescriptorFactory __swiftcall CNKCallParticipantLabelDescriptorFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t CallParticipantLabelDescriptor.strings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_strings;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
}

uint64_t key path getter for CallParticipantLabelDescriptor.strings : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CallParticipantLabelDescriptor.strings : CallParticipantLabelDescriptor(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x98);

  return v2(v3);
}

uint64_t key path getter for CallParticipantLabelDescriptor.secondaryString : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for CallParticipantLabelDescriptor.secondaryString : CallParticipantLabelDescriptor(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);

  return v4(v2, v3);
}

void @objc CallParticipantLabelDescriptor.secondaryString.setter(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t key path getter for CallParticipantLabelDescriptor.sourceString : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for CallParticipantLabelDescriptor.sourceString : CallParticipantLabelDescriptor(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC8);

  return v4(v2, v3);
}

uint64_t key path getter for CallParticipantLabelDescriptor.durationString : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for CallParticipantLabelDescriptor.durationString : CallParticipantLabelDescriptor(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE0);

  return v4(v2, v3);
}

uint64_t CallParticipantLabelDescriptor.layoutState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_layoutState;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for CallParticipantLabelDescriptor.layoutState : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t key path getter for CallParticipantLabelDescriptor.isDynamic : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x108))();
  *a2 = result & 1;
  return result;
}

uint64_t CallParticipantLabelDescriptor.isCallIdentification.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_isCallIdentification;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t CallParticipantLabelDescriptor.isCallIdentification.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_isCallIdentification;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for CallParticipantLabelDescriptor.isCallIdentification : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  *a2 = result & 1;
  return result;
}

uint64_t CallParticipantLabelDescriptor.secondaryString.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_3_5();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t key path getter for CallParticipantLabelDescriptor.localizedSenderIdentity : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for CallParticipantLabelDescriptor.localizedSenderIdentity : CallParticipantLabelDescriptor(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x140);

  return v4(v2, v3);
}

id CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_14_59();
  v15 = &v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_secondaryString];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_sourceString];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_durationString];
  *v17 = 0;
  v17[1] = 0;
  v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_isDynamic] = 0;
  v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_isCallIdentification] = 0;
  v18 = &v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_localizedSenderIdentity];
  *v18 = 0;
  v18[1] = 0;
  *&v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_strings] = v19;
  OUTLINED_FUNCTION_3_5();
  *v15 = v14;
  v15[1] = v13;
  OUTLINED_FUNCTION_3_5();
  *v16 = v12;
  v16[1] = v11;
  OUTLINED_FUNCTION_3_5();
  *v17 = v10;
  v17[1] = v9;

  *&v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_layoutState] = a8;
  v22.receiver = v8;
  v22.super_class = type metadata accessor for CallParticipantLabelDescriptor();
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t *CallParticipantLabelDescriptor.featureFlags.unsafeMutableAddressor()
{
  if (one-time initialization token for featureFlags != -1)
  {
    OUTLINED_FUNCTION_1_150();
  }

  return &static CallParticipantLabelDescriptor.featureFlags;
}

id static CallParticipantLabelDescriptor.featureFlags.getter()
{
  if (one-time initialization token for featureFlags != -1)
  {
    OUTLINED_FUNCTION_1_150();
  }

  v1 = static CallParticipantLabelDescriptor.featureFlags;

  return v1;
}

uint64_t specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(void *a1, _BYTE *a2)
{
  v3 = outlined bridged method (pb) of @objc TUCall.callDurationString.getter(a1);
  if (v4)
  {
    v5 = v3;
    swift_beginAccess();
    *a2 = 1;
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString);
    v6 = NSString.init(stringLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BAA20;
    v8 = MEMORY[0x1E69E6530];
    v9 = MEMORY[0x1E69E65A8];
    *(v7 + 56) = MEMORY[0x1E69E6530];
    *(v7 + 64) = v9;
    *(v7 + 32) = 0;
    *(v7 + 96) = v8;
    *(v7 + 104) = v9;
    *(v7 + 72) = 0;
    v10 = static NSString.localizedStringWithFormat(_:_:)();

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v5;
}

void static CallParticipantLabelDescriptor.ringingStateAudioCallLabels(_:callProvider:)(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X8>)
{
  v7 = 0xD000000000000032;
  v8 = 0x746174536C6C6143;
  if ([a1 isFaceTimeProvider])
  {
    v9 = "NAME_VIDEO_CALLING";
    v10 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_12_74();
    v11.super.isa = v10;
    OUTLINED_FUNCTION_17_0(v12, v13, v14, v15, v11);
    OUTLINED_FUNCTION_19_42();
  }

  else
  {
    v16 = [a2 isThirdPartyVideo];
    v17 = [objc_opt_self() conversationKit];
    if (v16)
    {
      v7 = OUTLINED_FUNCTION_5_123("CALL_PROVIDER_NAME_%@_CALL_TYPE_NAME_VIDEO_CALLING", v61);
    }

    else
    {
      v7 = OUTLINED_FUNCTION_5_123("CALL_PROVIDER_NAME_%@_CALL_TYPE_NAME_AUDIO_CALLING", v61);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1BC4BA940;
    v9 = [a1 localizedName];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v3 + 32) = v8;
    *(v3 + 40) = v19;
    String.init(format:_:)();
    OUTLINED_FUNCTION_19_42();
  }

  v20 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(a2);
  if (v20)
  {
    v21 = *(v20 + 16);

    if (v21)
    {
      goto LABEL_21;
    }
  }

  v8 = &selRef_displayString;
  v22 = [a2 displayContext];
  if (!v22 || (v23 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v22), !v24))
  {
LABEL_17:
    v48 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(a2);
    if (v49)
    {
      v50 = v48;
      v51 = v49;

      OUTLINED_FUNCTION_13_66();
      a2 = v52;
      v53 = v52[2];
      if (v53 >= v52[3] >> 1)
      {
        OUTLINED_FUNCTION_17_57();
        a2 = v59;
      }

      v47 = 0;
      v43 = 0;
      v45 = 0;
      a2[2] = v53 + 1;
      v54 = &a2[2 * v53];
      v54[4] = v50;
      v54[5] = v51;
LABEL_24:
      v46 = 1;
      goto LABEL_25;
    }

LABEL_21:
    OUTLINED_FUNCTION_13_66();
    OUTLINED_FUNCTION_20_51();
    if (v56)
    {
      OUTLINED_FUNCTION_8_93(v55);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      a2 = v58;
    }

    v47 = 0;
    v43 = 0;
    v45 = 0;
    a2[2] = v3;
    v57 = &a2[2 * v8];
    v57[4] = v7;
    v57[5] = v9;
    goto LABEL_24;
  }

  v3 = v23;
  v25 = v24;
  v26 = [a2 displayContext];
  if (!v26 || (v27 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v26, &selRef_callDirectoryLocalizedExtensionContainingAppName), !v28))
  {

    goto LABEL_17;
  }

  v29 = v28;
  v62 = v27;
  OUTLINED_FUNCTION_13_66();
  a2 = v30;
  v31 = v30[2];
  v32 = v31 + 1;
  if (v31 >= v30[3] >> 1)
  {
    OUTLINED_FUNCTION_17_57();
    v32 = v31 + 1;
    a2 = v60;
  }

  a2[2] = v32;
  v33 = &a2[2 * v31];
  v33[4] = v7;
  v33[5] = v9;
  v34 = [objc_opt_self() &off_1E7FE9588];
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_12_74();
  v35.super.isa = v34;
  OUTLINED_FUNCTION_17_0(v36, v37, v38, v39, v35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1BC4BAA20;
  v41 = MEMORY[0x1E69E6158];
  *(v40 + 56) = MEMORY[0x1E69E6158];
  v42 = lazy protocol witness table accessor for type String and conformance String();
  *(v40 + 32) = v62;
  *(v40 + 40) = v29;
  *(v40 + 96) = v41;
  *(v40 + 104) = v42;
  *(v40 + 64) = v42;
  *(v40 + 72) = v3;
  *(v40 + 80) = v25;
  v43 = String.init(format:_:)();
  v45 = v44;

  v46 = 0;
  v47 = 1;
LABEL_25:
  *a3 = a2;
  *(a3 + 8) = v43;
  *(a3 + 16) = v45;
  *(a3 + 24) = v47;
  *(a3 + 32) = v46;
}

void static CallParticipantLabelDescriptor.ringingStateUnknownContactLabels(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = outlined bridged method (pb) of @objc TUCall.supplementalInCallString.getter(a1);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    OUTLINED_FUNCTION_13_66();
    OUTLINED_FUNCTION_20_51();
    if (v13)
    {
      OUTLINED_FUNCTION_8_93(v12);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = v27;
    }

    *(v3 + 16) = v4;
    v14 = v3 + 16 * v5;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v15 = (*(v2 + 344))(a1);
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_43();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = v28;
    }

    v19 = *(v3 + 16);
    if (v19 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_17_57();
      v3 = v29;
    }

    *(v3 + 16) = v19 + 1;
    v20 = v3 + 16 * v19;
    *(v20 + 32) = v17;
    *(v20 + 40) = v18;
  }

  v21 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(a1);
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_43();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = v30;
    }

    v25 = *(v3 + 16);
    if (v25 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_17_57();
      v3 = v31;
    }

    *(v3 + 16) = v25 + 1;
    v26 = v3 + 16 * v25;
    *(v26 + 32) = v23;
    *(v26 + 40) = v24;
  }

  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
}

uint64_t static CallParticipantLabelDescriptor.organizationName(for:)(void *a1)
{
  swift_beginAccess();
  v2 = static CallParticipantLabelDescriptor.organizationNameProvider;

  v3 = v2(a1);

  return v3;
}

void *static CallParticipantLabelDescriptor.callerIdentificationString(for:callCount:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *&v6 = MEMORY[0x1EEE9AC00](v5 - 8).n128_u64[0];
  v8 = &v36 - v7;
  v9 = [a1 displayContext];
  if (v9)
  {
    v10 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v9);
    if (v11)
    {
      v2 = v10;
      v12 = v11;
      v13 = [a1 displayContext];
      if (v13)
      {
        v14 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v13, &selRef_callDirectoryLocalizedExtensionContainingAppName);
        if (v15)
        {
          v16 = v14;
          v17 = v15;
          v18 = [objc_opt_self() conversationKit];
          OUTLINED_FUNCTION_2_146();
          OUTLINED_FUNCTION_12_74();
          v19.super.isa = v18;
          OUTLINED_FUNCTION_17_0(v20, v21, v22, v23, v19);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1BC4BAA20;
          v25 = MEMORY[0x1E69E6158];
          *(v24 + 56) = MEMORY[0x1E69E6158];
          v26 = lazy protocol witness table accessor for type String and conformance String();
          *(v24 + 32) = v16;
          *(v24 + 40) = v17;
          *(v24 + 96) = v25;
          *(v24 + 104) = v26;
          *(v24 + 64) = v26;
          *(v24 + 72) = v2;
          *(v24 + 80) = v12;
          String.init(format:_:)();
          OUTLINED_FUNCTION_19_42();

          return v2;
        }
      }
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isHeroImageEnabled.getter())
  {
    v27 = [a1 imageURL];
    if (v27)
    {
      v2 = v27;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = type metadata accessor for URL();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v28);
      outlined destroy of URL?(v8);
      v29 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(a1);
      if (v30)
      {
        if (a2 == 1)
        {
          return v29;
        }
      }
    }

    else
    {
      v31 = type metadata accessor for URL();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v31);
      outlined destroy of URL?(v8);
    }
  }

  if (!Features.isHeroImageEnabled.getter() || (v32 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(a1), !v33))
  {
LABEL_23:
    outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(a1);
    OUTLINED_FUNCTION_19_42();
    return v2;
  }

  if (a2 != 1)
  {
    goto LABEL_22;
  }

  v2 = v32;
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
LABEL_22:

    goto LABEL_23;
  }

  return v2;
}

uint64_t static CallParticipantLabelDescriptor.identificationCategoryDisplayString(for:)(void *a1)
{
  switch([a1 identificationCategory])
  {
    case 4uLL:
    case 7uLL:
    case 9uLL:
    case 0xDuLL:
    case 0x12uLL:
      v1 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_2_146();
      break;
    default:
      v2 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_0_184();
      OUTLINED_FUNCTION_2_146();
      break;
  }

  OUTLINED_FUNCTION_12_74();
  v3.super.isa = v1;
  v8 = OUTLINED_FUNCTION_17_0(v4, v5, v6, v7, v3);

  return v8;
}

uint64_t closure #1 in variable initialization expression of static CallParticipantLabelDescriptor.organizationNameProvider(void *a1)
{
  v50[3] = *MEMORY[0x1E69E9840];
  v2 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(a1);
  if (!v2)
  {
    return 0;
  }

  if (!v2[2])
  {

    return 0;
  }

  v4 = v2[4];
  v3 = v2[5];

  v5 = [objc_opt_self() tu:a1 contactStoreConfigurationForCall:?];
  v6 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA7F0;
  v8 = *MEMORY[0x1E695C240];
  v9 = *MEMORY[0x1E695C2F0];
  *(v7 + 32) = *MEMORY[0x1E695C240];
  *(v7 + 40) = v9;
  v10 = *MEMORY[0x1E695C230];
  v11 = *MEMORY[0x1E695C328];
  *(v7 + 48) = *MEMORY[0x1E695C230];
  *(v7 + 56) = v11;
  v12 = v8;
  v13 = v9;
  v49 = v10;
  v14 = v11;
  v15 = MEMORY[0x1BFB209B0](v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v50[0] = 0;
  v17 = [v6 unifiedContactWithIdentifier:v15 keysToFetch:isa error:v50];

  if (!v17)
  {
    v41 = v50[0];
    v42 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1BC4BA940;
    v50[0] = v4;
    v50[1] = v3;
    v44 = MEMORY[0x1E69E6158];
    v45 = String.init<A>(reflecting:)();
    v47 = v46;
    *(v43 + 56) = v44;
    *(v43 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v43 + 32) = v45;
    *(v43 + 40) = v47;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    goto LABEL_26;
  }

  v18 = v50[0];

  if (![v17 isKeyAvailable_])
  {
    goto LABEL_22;
  }

  v19 = [v17 organizationName];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
LABEL_22:

LABEL_26:
    return 0;
  }

  if (![v17 isKeyAvailable_])
  {
    goto LABEL_19;
  }

  v24 = [v17 givenName];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
LABEL_19:
    if (![v17 isKeyAvailable_])
    {
      goto LABEL_32;
    }

    v29 = [v17 middleName];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (!v33)
    {
LABEL_32:
      if (![v17 isKeyAvailable_])
      {
        goto LABEL_29;
      }

      v34 = [v17 familyName];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v38 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (!v38)
      {
LABEL_29:

        return 0;
      }
    }
  }

  v39 = [v17 organizationName];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v40;
}

uint64_t CNKCallParticipantLabelDescriptorFactory.organizationNameProvider.getter()
{
  OUTLINED_FUNCTION_22_2();

  return OUTLINED_FUNCTION_38_2();
}

uint64_t CNKCallParticipantLabelDescriptorFactory.organizationNameProvider.setter(uint64_t (*a1)(), uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  static CallParticipantLabelDescriptor.organizationNameProvider = a1;
  qword_1EE94DEF8 = a2;
}

uint64_t (*static CallParticipantLabelDescriptor.organizationNameProvider.modify())()
{
  OUTLINED_FUNCTION_38_2();
  swift_beginAccess();
  return CaptionsViewController.captionVisibilityDuringCapture.modify;
}

uint64_t key path getter for static CallParticipantLabelDescriptor.organizationNameProvider : CallParticipantLabelDescriptor.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static CallParticipantLabelDescriptor.organizationNameProvider;
  v2 = qword_1EE94DEF8;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed TUCall) -> (@owned String?);
  a1[1] = v4;
}

uint64_t key path setter for static CallParticipantLabelDescriptor.organizationNameProvider : CallParticipantLabelDescriptor.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static CallParticipantLabelDescriptor.organizationNameProvider = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUCall) -> (@out String?);
  qword_1EE94DEF8 = v3;
}

id CallParticipantLabelDescriptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallParticipantLabelDescriptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallParticipantLabelDescriptor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined bridged method (pb) of @objc TUCall.supplementalInCallString.getter(void *a1)
{
  v1 = [a1 supplementalInCallString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id _s15ConversationKit30CallParticipantLabelDescriptorC013callScreeningeF03for0G5Count12featureFlagsACSgSo6TUCallC_SiSo09TUFeatureL0_ptFZTf4nnen_nSoAKC_Tt2g5(void *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v57 - v7;
  v9 = [a1 smartHoldingSession];
  v10 = v9;
  if (v9)
  {
  }

  v11 = [a1 isScreening];
  result = 0;
  if (!v10 && v11)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isHeroImageEnabled.getter())
    {
      v13 = [a1 imageURL];
      if (v13)
      {
        v14 = v13;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = type metadata accessor for URL();
        __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
        outlined destroy of URL?(v8);
        if (a2 == 1)
        {
          v16 = [a1 provider];
          v17 = [v16 isTelephonyProvider];

          if (v17)
          {
            outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(a1);
            if (v18)
            {

              v19 = 1;
LABEL_15:
              if ([a3 receptionistEnabled] && objc_msgSend(a1, sel_receptionistState))
              {
                v21 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(a1);
                if (v22)
                {
                  v23 = v21;
                  v24 = v22;
                  if (String.count.getter() > 0)
                  {
                    v25 = [objc_opt_self() conversationKit];
                    v58._object = 0xE000000000000000;
                    v26.value._countAndFlagsBits = 0x746174536C6C6143;
                    v27._countAndFlagsBits = 0xD000000000000014;
                    v27._object = 0x80000001BC514560;
                    v26.value._object = 0xEA00000000007375;
                    v28._countAndFlagsBits = 0;
                    v28._object = 0xE000000000000000;
                    v58._countAndFlagsBits = 0;
                    NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, v25, v28, v58);

                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
                    v29 = swift_allocObject();
                    *(v29 + 16) = xmmword_1BC4BA940;
                    *(v29 + 56) = MEMORY[0x1E69E6158];
                    *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
                    *(v29 + 32) = v23;
                    *(v29 + 40) = v24;
                    countAndFlagsBits = String.init(format:_:)();
                    object = v31;

                    if (!v19)
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_23;
                  }
                }

                if (([a1 isScreeningDueToUserInteraction] & 1) == 0)
                {
                  if ((v19 & 1) == 0)
                  {
                    v47 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(a1);
                    if (v48)
                    {
                      countAndFlagsBits = v47;
                      object = v48;
                    }

                    else
                    {
                      v49 = [objc_opt_self() conversationKit];
                      v59._object = 0xE000000000000000;
                      v50.value._countAndFlagsBits = 0x746174536C6C6143;
                      v51._object = 0x80000001BC4F9C10;
                      v51._countAndFlagsBits = 0xD000000000000011;
                      v50.value._object = 0xEA00000000007375;
                      v52._countAndFlagsBits = 0;
                      v52._object = 0xE000000000000000;
                      v59._countAndFlagsBits = 0;
                      v53 = NSLocalizedString(_:tableName:bundle:value:comment:)(v51, v50, v49, v52, v59);
                      countAndFlagsBits = v53._countAndFlagsBits;
                      object = v53._object;
                    }

                    goto LABEL_34;
                  }

                  v44 = [a1 handle];
                  if (v44)
                  {
                    v45 = v44;
                    countAndFlagsBits = TUHandle.formattedValue.getter();
                    object = v46;
                  }

                  else
                  {
                    countAndFlagsBits = 0;
                    object = 0xE000000000000000;
                  }

                  goto LABEL_23;
                }

                v33 = [objc_opt_self() conversationKit];
                v56 = 0xE000000000000000;
                v36 = 0x4E495F594C504552;
                v35 = 0xED00004C4C41435FLL;
                v34 = 0x746174536C6C6143;
              }

              else
              {
                v33 = [objc_opt_self() conversationKit];
                v56 = 0xE000000000000000;
                v34 = 0x746174536C6C6143;
                v35 = 0x80000001BC4F9C10;
                v36 = 0xD000000000000011;
              }

              v37 = 0xEA00000000007375;
              v38._countAndFlagsBits = 0;
              v38._object = 0xE000000000000000;
              v39 = 0;
              v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v36, *&v34, v33, v38, *(&v56 - 1));
              countAndFlagsBits = v40._countAndFlagsBits;
              object = v40._object;

              if (!v19)
              {
LABEL_34:
                v41 = 0;
                v43 = 0;
                goto LABEL_35;
              }

LABEL_23:
              v41 = outlined bridged method (pb) of @objc TUCall.companyDepartment.getter(a1);
              v43 = v42;
LABEL_35:
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
              v54 = swift_allocObject();
              *(v54 + 16) = xmmword_1BC4BA940;
              *(v54 + 32) = countAndFlagsBits;
              *(v54 + 40) = object;
              v55 = objc_allocWithZone(type metadata accessor for CallParticipantLabelDescriptor());
              return CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v54, v41, v43, 0, 0, 0, 0, 1);
            }
          }
        }
      }

      else
      {
        v20 = type metadata accessor for URL();
        __swift_storeEnumTagSinglePayload(v8, 1, 1, v20);
        outlined destroy of URL?(v8);
      }
    }

    v19 = 0;
    goto LABEL_15;
  }

  return result;
}

id specialized static CallParticipantLabelDescriptor.callScreeningLabelDescriptor(for:callCount:featureFlags:)(void *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *&v7 = MEMORY[0x1EEE9AC00](v6 - 8).n128_u64[0];
  v9 = &v58 - v8;
  v10 = [a1 smartHoldingSession];
  v11 = v10;
  if (v10)
  {
  }

  v12 = [a1 isScreening];
  result = 0;
  if (!v11 && v12)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isHeroImageEnabled.getter())
    {
      v14 = [a1 imageURL];
      if (v14)
      {
        v15 = v14;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v16 = type metadata accessor for URL();
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
        outlined destroy of URL?(v9);
        if (a2 == 1)
        {
          v17 = [a1 provider];
          v18 = [v17 isTelephonyProvider];

          if (v18)
          {
            outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(a1);
            if (v19)
            {

              v20 = 1;
LABEL_15:
              if ([a3 receptionistEnabled] && objc_msgSend(a1, sel_receptionistState))
              {
                v22 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(a1);
                if (v23)
                {
                  v24 = v22;
                  v25 = v23;
                  if (String.count.getter() > 0)
                  {
                    v26 = [objc_opt_self() conversationKit];
                    v59._object = 0xE000000000000000;
                    v27.value._countAndFlagsBits = 0x746174536C6C6143;
                    v28._countAndFlagsBits = 0xD000000000000014;
                    v28._object = 0x80000001BC514560;
                    v27.value._object = 0xEA00000000007375;
                    v29._countAndFlagsBits = 0;
                    v29._object = 0xE000000000000000;
                    v59._countAndFlagsBits = 0;
                    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v27, v26, v29, v59);

                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
                    v30 = swift_allocObject();
                    *(v30 + 16) = xmmword_1BC4BA940;
                    *(v30 + 56) = MEMORY[0x1E69E6158];
                    *(v30 + 64) = lazy protocol witness table accessor for type String and conformance String();
                    *(v30 + 32) = v24;
                    *(v30 + 40) = v25;
                    countAndFlagsBits = String.init(format:_:)();
                    object = v32;

                    if (!v20)
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_23;
                  }
                }

                if (![a1 isScreeningDueToUserInteraction])
                {
                  if (!v20)
                  {
                    v48 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(a1);
                    if (v49)
                    {
                      countAndFlagsBits = v48;
                      object = v49;
                    }

                    else
                    {
                      v50 = [objc_opt_self() conversationKit];
                      v60._object = 0xE000000000000000;
                      v51.value._countAndFlagsBits = 0x746174536C6C6143;
                      v52._object = 0x80000001BC4F9C10;
                      v52._countAndFlagsBits = 0xD000000000000011;
                      v51.value._object = 0xEA00000000007375;
                      v53._countAndFlagsBits = 0;
                      v53._object = 0xE000000000000000;
                      v60._countAndFlagsBits = 0;
                      v54 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v51, v50, v53, v60);
                      countAndFlagsBits = v54._countAndFlagsBits;
                      object = v54._object;
                    }

                    goto LABEL_34;
                  }

                  v45 = [a1 handle];
                  if (v45)
                  {
                    v46 = v45;
                    countAndFlagsBits = TUHandle.formattedValue.getter();
                    object = v47;
                  }

                  else
                  {
                    countAndFlagsBits = 0;
                    object = 0xE000000000000000;
                  }

                  goto LABEL_23;
                }

                v34 = [objc_opt_self() conversationKit];
                v57 = 0xE000000000000000;
                v37 = 0x4E495F594C504552;
                v36 = 0xED00004C4C41435FLL;
                v35 = 0x746174536C6C6143;
              }

              else
              {
                v34 = [objc_opt_self() conversationKit];
                v57 = 0xE000000000000000;
                v35 = 0x746174536C6C6143;
                v36 = 0x80000001BC4F9C10;
                v37 = 0xD000000000000011;
              }

              v38 = 0xEA00000000007375;
              v39._countAndFlagsBits = 0;
              v39._object = 0xE000000000000000;
              v40 = 0;
              v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v37, *&v35, v34, v39, *(&v57 - 1));
              countAndFlagsBits = v41._countAndFlagsBits;
              object = v41._object;

              if (!v20)
              {
LABEL_34:
                v42 = 0;
                v44 = 0;
                goto LABEL_35;
              }

LABEL_23:
              v42 = outlined bridged method (pb) of @objc TUCall.companyDepartment.getter(a1);
              v44 = v43;
LABEL_35:
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
              v55 = swift_allocObject();
              *(v55 + 16) = xmmword_1BC4BA940;
              *(v55 + 32) = countAndFlagsBits;
              *(v55 + 40) = object;
              v56 = objc_allocWithZone(type metadata accessor for CallParticipantLabelDescriptor());
              return CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v55, v42, v44, 0, 0, 0, 0, 1);
            }
          }
        }
      }

      else
      {
        v21 = type metadata accessor for URL();
        __swift_storeEnumTagSinglePayload(v9, 1, 1, v21);
        outlined destroy of URL?(v9);
      }
    }

    v20 = 0;
    goto LABEL_15;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed TUCall) -> (@owned String?)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t CallScreening.MachineStateObserver.init(logger:stateMachine:statusService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v8 + 32))(a4, a1);
  result = type metadata accessor for CallScreening.MachineStateObserver(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

void CallScreening.MachineStateObserver.start()()
{
  v1 = v0;
  v2 = type metadata accessor for CallScreening.MachineStateObserver(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  static TaskPriority.userInitiated.getter();
  v8 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  OUTLINED_FUNCTION_9_92();
  outlined init with copy of CallScreening.MachineStateObserver(v1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static CKStateMachineActor.shared;
  v11 = lazy protocol witness table accessor for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  outlined init with take of CallScreening.MachineStateObserver(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t BackgroundTask.init(onExpire:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_logger;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = __swift_project_value_buffer(v7, static Logger.conversationKit);
  (*(*(v7 - 8) + 16))(v3 + v6, v8, v7);
  *(v3 + OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_backgroundTask) = *MEMORY[0x1E69DDBE8];
  v9 = (v3 + OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_onExpire);
  *v9 = a1;
  v9[1] = a2;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446210;
    v14 = _typeName(_:qualified:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1BBC58000, v10, v11, "%{public}s created", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
    MEMORY[0x1BFB23DF0](v12, -1, -1);
  }

  return v3;
}

void BackgroundTask.end()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_backgroundTask);
  v3 = *MEMORY[0x1E69DDBE8];
  oslog = Logger.logObject.getter();
  if (v2 == v3)
  {
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      v7 = _typeName(_:qualified:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v19);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1BBC58000, oslog, v4, "%{public}s end failed", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1BFB23DF0](v6, -1, -1);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446210;
      v13 = _typeName(_:qualified:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1BBC58000, oslog, v10, "%{public}s endBackgroundTask", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }

    v16 = [objc_opt_self() sharedApplication];
    v17 = OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_backgroundTask;
    [v16 endBackgroundTask_];

    *(v1 + v17) = v3;
  }
}

void BackgroundTask.start()()
{
  v1 = v0;
  v2 = *v0;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_backgroundTask) == *MEMORY[0x1E69DDBE8])
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      aBlock[0] = v6;
      *v5 = 136446466;
      v7 = _typeName(_:qualified:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, aBlock);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2082;
      *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001BC5137D0, aBlock);
      _os_log_impl(&dword_1BBC58000, v3, v4, "%{public}s beginBackgroundTask %{public}s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v6, -1, -1);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    v10 = [objc_opt_self() sharedApplication];
    v11 = MEMORY[0x1BFB209B0](0xD000000000000010, 0x80000001BC5137D0);
    v12 = swift_allocObject();
    v12[2] = v1;
    v12[3] = 0xD000000000000010;
    v12[4] = 0x80000001BC5137D0;
    v12[5] = v2;
    aBlock[4] = partial apply for closure #1 in BackgroundTask.start();
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_89;
    v13 = _Block_copy(aBlock);

    v14 = [v10 beginBackgroundTaskWithName:v11 expirationHandler:v13];
    _Block_release(v13);

    *(v1 + OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_backgroundTask) = v14;
  }

  else
  {
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136446210;
      v18 = _typeName(_:qualified:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1BBC58000, oslog, v15, "%{public}s start failed", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFB23DF0](v17, -1, -1);
      MEMORY[0x1BFB23DF0](v16, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in BackgroundTask.start()(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446466;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v16);
    _os_log_impl(&dword_1BBC58000, v6, v7, "%{public}s backgroundTask %{public}s expired", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v9, -1, -1);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }

  v13 = *(a1 + OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_onExpire);

  v13(v14);
}

uint64_t BackgroundTask.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t CallScreening.MachineStateObserver.logger.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t CallScreening.MachineStateObserver.stateMachine.getter()
{
  type metadata accessor for CallScreening.MachineStateObserver(0);
}

uint64_t CallScreening.MachineStateObserver.statusService.getter()
{
  type metadata accessor for CallScreening.MachineStateObserver(0);
}

uint64_t closure #1 in CallScreening.MachineStateObserver.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[48] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAF13CallScreeningO0K0O_Gs5NeverOGGMd);
  v4[49] = v5;
  v4[50] = *(v5 - 8);
  v4[51] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMd);
  v4[52] = v6;
  v4[53] = *(v6 - 8);
  v4[54] = swift_task_alloc();
  v7 = type metadata accessor for CallScreening.MachineStateObserver(0);
  v4[55] = v7;
  v8 = *(v7 - 8);
  v4[56] = v8;
  v4[57] = *(v8 + 64);
  v4[58] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static CKStateMachineActor.shared;
  v4[59] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.MachineStateObserver.start(), v9, 0);
}

uint64_t closure #1 in CallScreening.MachineStateObserver.start()()
{
  v1 = v0[58];
  v2 = v0[56];
  v0[39] = 0;
  v0[40] = 0;
  OUTLINED_FUNCTION_9_92();
  outlined init with copy of CallScreening.MachineStateObserver(v3, v1, v4);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[60] = v6;
  outlined init with take of CallScreening.MachineStateObserver(v1, v6 + v5);
  type metadata accessor for MainActor();
  v0[61] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_12_7();
  v7 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[60];
  v2 = v0[59];

  type metadata accessor for BackgroundTask(0);
  swift_allocObject();
  v0[62] = BackgroundTask.init(onExpire:)(partial apply for closure #1 in closure #1 in CallScreening.MachineStateObserver.start(), v1);

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.MachineStateObserver.start(), v2, 0);
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v3, v4, "Started listening to StateMachine changes for StateMachine");
    OUTLINED_FUNCTION_27();
  }

  v5 = v0[55];
  v7 = v0[50];
  v6 = v0[51];
  v9 = v0[48];
  v8 = v0[49];

  v10 = *(v9 + *(v5 + 20));
  v0[45] = *(v10 + *(*v10 + 120));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAD13CallScreeningO0I0O_Gs5NeverOGMd);
  v12 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<CKStateMachine<CallScreening.State>.StateUpdate, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAD13CallScreeningO0I0O_Gs5NeverOGMd);
  MEMORY[0x1BFB1DE80](v11, v12);
  AsyncPublisher.makeAsyncIterator()();
  (*(v7 + 8))(v6, v8);
  v0[63] = lazy protocol witness table accessor for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<CKStateMachine<CallScreening.State>.StateUpdate, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMd);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_14_60(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_0_185(v14);

  return MEMORY[0x1EEE6D8C8](v0 + 2);
}

{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 520) = v0;

  v5 = *(v2 + 472);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = closure #1 in CallScreening.MachineStateObserver.start();
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v9;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = closure #1 in CallScreening.MachineStateObserver.start();
  }

  return MEMORY[0x1EEE6DFA0](v10, v6, v8);
}

{
  v1 = *(v0 + 472);
  v2 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v2;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.MachineStateObserver.start(), v1, 0);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 136);
  if (v2 == 255)
  {
    (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_22_0(v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v13, v14, "stopped listening to changes for StateMachine");
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_23_50();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 104);
  v39 = *(v0 + 120);
  v40 = *(v0 + 112);
  v38 = *(v0 + 128);
  outlined copy of CKStateMachine<CallScreening.State>.StateUpdate(*(v0 + 80), v4, v3, v5, v40, v39, v38, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 80, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GSgMd);
  if (os_log_type_enabled(v6, v7))
  {
    v36 = v5;
    v37 = v3;
    v8 = OUTLINED_FUNCTION_42();
    v9 = swift_slowAlloc();
    *(v0 + 376) = v9;
    *v8 = 136446210;
    v35 = v4;
    if (v2)
    {
      if (v2 != 1)
      {
        v26 = 0xE700000000000000;
        v25 = 0x65756C61566F6ELL;
LABEL_19:
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, (v0 + 376));

        *(v8 + 4) = v27;
        _os_log_impl(&dword_1BBC58000, v6, v7, "StateMachine Reported statemachine update %{public}s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();

        v4 = v35;
        v5 = v36;
        v3 = v37;
        if (!v2)
        {
          goto LABEL_20;
        }

        goto LABEL_12;
      }

      v33 = v1;
      v34 = (v0 + 328);
      v10 = (v0 + 336);
      *(v0 + 144) = v1;
      *(v0 + 152) = v4;
      *(v0 + 160) = v37;
      *(v0 + 168) = v36;
      *(v0 + 176) = v40;
      *(v0 + 184) = v39;
      *(v0 + 192) = v38;
      *(v0 + 328) = 0x2064657265746E45;
    }

    else
    {
      v33 = v1;
      v34 = (v0 + 344);
      v10 = (v0 + 352);
      *(v0 + 200) = v1;
      *(v0 + 208) = v4;
      *(v0 + 216) = v37;
      *(v0 + 224) = v36;
      *(v0 + 232) = v40;
      *(v0 + 240) = v39;
      *(v0 + 248) = v38;
      *(v0 + 344) = 0x20676E6974697845;
    }

    *v10 = 0xE800000000000000;
    v23 = v10;
    v24 = CallScreening.State.description.getter();
    MEMORY[0x1BFB20B10](v24);

    v25 = *v34;
    v26 = *v23;
    v1 = v33;
    goto LABEL_19;
  }

  if (!v2)
  {
LABEL_20:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 80, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GSgMd);
    goto LABEL_21;
  }

LABEL_12:
  if (v2 != 1)
  {
LABEL_21:
    OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<CKStateMachine<CallScreening.State>.StateUpdate, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMd);
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_14_60(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_23_50();

    return MEMORY[0x1EEE6D8C8](v31);
  }

  *(v0 + 256) = v1;
  *(v0 + 264) = v4;
  *(v0 + 272) = v3;
  *(v0 + 280) = v5;
  *(v0 + 288) = v40;
  *(v0 + 296) = v39;
  *(v0 + 304) = v38;
  outlined copy of CKStateMachine<CallScreening.State>.StateUpdate(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  v17 = swift_task_alloc();
  *(v0 + 528) = v17;
  *v17 = v0;
  v17[1] = closure #1 in CallScreening.MachineStateObserver.start();
  OUTLINED_FUNCTION_23_50();

  return CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:)(v18, v19, v20);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 368) = *(v0 + 520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 472);
  v3 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.MachineStateObserver.start(), v2, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 80, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 80, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GSgMd);
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<CKStateMachine<CallScreening.State>.StateUpdate, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMd);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_14_60(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_0_185();

  return MEMORY[0x1EEE6D8C8](v0 + 16);
}

void closure #1 in closure #1 in CallScreening.MachineStateObserver.start()()
{
  oslog = Logger.logObject.getter();
  v0 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_1BBC58000, oslog, v0, "MainAnsweringMachine: Recieved expiration notice for background task.", v1, 2u);
    MEMORY[0x1BFB23DF0](v1, -1, -1);
  }
}

uint64_t CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = *(type metadata accessor for AnsweringMachineCallStatus() - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:), 0, 0);
}

uint64_t CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:)()
{
  v28 = v0;
  v1 = *(v0 + 64);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  switch(v1[6] >> 61)
  {
    case 2uLL:
      v16 = *(v0 + 72);
      v2 = v1[3];
      *v16 = v4;
      v16[1] = v2;

      goto LABEL_9;
    case 3uLL:
    case 4uLL:
      v15 = *(v0 + 72);
      *v15 = v3;
      v15[1] = v2;

      goto LABEL_7;
    case 5uLL:
      *(v0 + 16) = v3;
      *(v0 + 24) = v2;
      *(v0 + 32) = v4;
      v24 = *(v0 + 72);
      if (v4 > 1u)
      {
        *v24 = 0;
        v24[1] = 0;
LABEL_18:
        v25 = type metadata accessor for CallScreening.MachineStateObserver(0);
        OUTLINED_FUNCTION_19_43(v25);
        *(v0 + 208) = OUTLINED_FUNCTION_79_1();
        OUTLINED_FUNCTION_12_7();
        OUTLINED_FUNCTION_7_91();
      }

      else
      {
        *v24 = v3;
        v24[1] = v2;
        outlined init with copy of CallScreening.EndingAction(v0 + 16, v0 + 40);
LABEL_7:
        v4 = v3;
LABEL_9:
        *(v0 + 128) = v4;
        *(v0 + 136) = v2;
        if (*(v0 + 80))
        {
          swift_bridgeObjectRetain_n();

          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v17, v18))
          {
            v19 = OUTLINED_FUNCTION_42();
            v20 = swift_slowAlloc();
            v27 = v20;
            *v19 = 136446210;
            v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v2, &v27);

            *(v19 + 4) = v21;
            _os_log_impl(&dword_1BBC58000, v17, v18, "MainAnsweringMachine: Starting background task due to tracked call %{public}s", v19, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v20);
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_27();
          }

          else
          {
          }

          type metadata accessor for MainActor();
          *(v0 + 144) = OUTLINED_FUNCTION_79_1();
          v11 = OUTLINED_FUNCTION_12_7();
          v13 = v23;
          v14 = CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:);
        }

        else
        {
          v22 = type metadata accessor for CallScreening.MachineStateObserver(0);
          OUTLINED_FUNCTION_20_52(v22);
          *(v0 + 168) = OUTLINED_FUNCTION_79_1();
          OUTLINED_FUNCTION_12_7();
          OUTLINED_FUNCTION_6_100();
        }
      }

      break;
    default:
      v6 = *(v0 + 72);
      v5 = *(v0 + 80);
      *v6 = 0;
      v6[1] = 0;
      if (!v5)
      {
        goto LABEL_18;
      }

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_22_0(v8))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v9, v10, "Ending background task.");
        OUTLINED_FUNCTION_27();
      }

      type metadata accessor for MainActor();
      *(v0 + 120) = OUTLINED_FUNCTION_79_1();
      v11 = OUTLINED_FUNCTION_12_7();
      v13 = v12;
      v14 = CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:);
      break;
  }

  return MEMORY[0x1EEE6DFA0](v14, v11, v13);
}

{
  OUTLINED_FUNCTION_24_0();

  BackgroundTask.end()();
  v0 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = type metadata accessor for CallScreening.MachineStateObserver(0);
  OUTLINED_FUNCTION_19_43(v1);
  *(v0 + 208) = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_7_91();
  v2 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_24_0();

  BackgroundTask.start()();
  v0 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = type metadata accessor for CallScreening.MachineStateObserver(0);
  OUTLINED_FUNCTION_20_52(v1);
  *(v0 + 168) = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_6_100();
  v2 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);

  CallStatusService.currentStatus(updateSource:for:)(0x6168436574617453, 0xEB0000000065676ELL, v2, v1);
  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:);

  return CKStateMachine<>.update(with:)();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  *(v4 + 184) = v0;

  if (v0)
  {
    v5 = CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:);
  }

  else
  {
    v5 = CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  outlined destroy of AnsweringMachineCallStatus(*(v0 + 112));

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_24_0();

  CallStatusService.currentStatusForAllCalls()();
  *(v0 + 216) = v1;
  v2 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  result = v0[27];
  v2 = *(result + 16);
  v0[28] = v2;
  v0[29] = 0;
  if (v2)
  {
    if (*(result + 16))
    {
      OUTLINED_FUNCTION_8_94();
      outlined init with copy of CallScreening.MachineStateObserver(v3 + v4, v5, v6);
      v7 = swift_task_alloc();
      v0[30] = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_5_124(v7);

      return CKStateMachine<>.update(with:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v8();
  }

  return result;
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v3 + 248) = v0;

  outlined destroy of AnsweringMachineCallStatus(*(v3 + 104));
  if (v0)
  {

    v6 = CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:);
  }

  else
  {
    v6 = CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  outlined destroy of AnsweringMachineCallStatus(*(v0 + 112));
  v1 = *(v0 + 184);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v9, v10, "Failed to update stateMachine with callstatus error: %{public}@");
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v11();
}

{
  v1 = *(v0 + 248);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v9, v10, "Failed to update stateMachine with callstatus error: %{public}@");
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v11();
}

void CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[28];
  v2 = v0[29] + 1;
  v0[29] = v2;
  if (v2 == v1)
  {

    OUTLINED_FUNCTION_13();

    v3();
  }

  else if (v2 >= *(v0[27] + 16))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_94();
    outlined init with copy of CallScreening.MachineStateObserver(v4, v5, v6);
    v7 = swift_task_alloc();
    v0[30] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_5_124();

    CKStateMachine<>.update(with:)();
  }
}

uint64_t outlined init with take of CallScreening.MachineStateObserver(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallScreening.MachineStateObserver(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in CallScreening.MachineStateObserver.start()(uint64_t a1)
{
  v4 = *(type metadata accessor for CallScreening.MachineStateObserver(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return closure #1 in CallScreening.MachineStateObserver.start()(a1, v6, v7, v1 + v5);
}

uint64_t type metadata completion function for BackgroundTask()
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

void partial apply for closure #1 in closure #1 in CallScreening.MachineStateObserver.start()()
{
  type metadata accessor for CallScreening.MachineStateObserver(0);

  closure #1 in closure #1 in CallScreening.MachineStateObserver.start()();
}

uint64_t outlined copy of CKStateMachine<CallScreening.State>.StateUpdate(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned __int8 a8)
{
  if (a8 <= 1u)
  {
    return outlined copy of CallScreening.State(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t outlined init with copy of CallScreening.MachineStateObserver(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

id TUConversation.joinConversationRequest()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69D8C10]) initWithConversation:v0 originatingUIType:20];
  [v1 setWantsStagingArea_];
  [v1 setAvMode_];
  [v1 setVideoEnabled_];
  return v1;
}

uint64_t default argument 5 of SystemApertureIcon.init(asset:accessibilityLabel:wantsPillForDetachedAppearance:leadingOffsetForConcentricWhenCompact:wantsIntelligenceGradient:animation:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995E08];
  type metadata accessor for ActivitySymbol.Animation();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t SystemApertureIcon.init(asset:accessibilityLabel:wantsPillForDetachedAppearance:leadingOffsetForConcentricWhenCompact:wantsIntelligenceGradient:animation:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v11 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v11;
  *(a7 + 25) = *(a1 + 25);
  *(a7 + 48) = a2;
  *(a7 + 56) = a3;
  *(a7 + 64) = a4;
  *(a7 + 72) = a8;
  *(a7 + 80) = a5;
  OUTLINED_FUNCTION_26_43();
  OUTLINED_FUNCTION_7_0();
  v13 = *(v12 + 32);

  return v13(a7 + v8, a6);
}

void SystemApertureIconView.__allocating_init(icon:isDetached:)()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_6_4();
  SystemApertureIconView.init(icon:isDetached:)();
}

BOOL static SystemApertureIconAsset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a2 + 8);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v2)
  {
    if (!v5)
    {
      return 0;
    }

    v8 = *a1 == *a2 && v2 == v5;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v6)
    {
      v10 = v4 == v7 && v3 == v6;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v6;
}

uint64_t SystemApertureIcon.accessibilityLabel.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SystemApertureIcon.animation.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_26_43();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v2, v4);
}

uint64_t SystemApertureIcon.animation.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_26_43();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 40);

  return v5(v1 + v2, a1);
}

void static SystemApertureIcon.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = v0;
  v4 = *v1;
  if ((*(v0 + 40) & 1) == 0)
  {
    if ((v1[5] & 1) == 0)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      if (static NSObject.== infix(_:_:)())
      {
        goto LABEL_13;
      }
    }

    goto LABEL_35;
  }

  if ((v1[5] & 1) == 0)
  {
    goto LABEL_35;
  }

  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = v1[1];
  v9 = v1[3];
  v8 = v1[4];
  v10 = *(v0 + 8);
  if (v10)
  {
    if (!v7)
    {
      goto LABEL_35;
    }

    v11 = *v0 == v4 && v10 == v7;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v7)
  {
    goto LABEL_35;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_35;
  }

  if (!v5)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_35:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (!v8)
  {
    goto LABEL_35;
  }

  v14 = v6 == v9 && v5 == v8;
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_13:
  v12 = *(v3 + 48) == *(v2 + 6) && *(v3 + 56) == *(v2 + 7);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v3 + 64) != *(v2 + 64) || *(v3 + 72) != v2[9] || *(v3 + 80) != *(v2 + 80))
  {
    goto LABEL_35;
  }

  type metadata accessor for SystemApertureIcon(0);
  OUTLINED_FUNCTION_30_0();

  static ActivitySymbol.Animation.== infix(_:_:)();
}

uint64_t key path setter for SystemApertureIconView.icon : SystemApertureIconView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for SystemApertureIcon(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SystemApertureIcon(a1, v6, type metadata accessor for SystemApertureIcon);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x70))(v6);
}

void SystemApertureIconView.icon.didset()
{
  v1 = type metadata accessor for SystemApertureIcon(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_icon;
  swift_beginAccess();
  outlined init with copy of SystemApertureIcon(v0 + v4, v3, type metadata accessor for SystemApertureIcon);
  static SystemApertureIcon.== infix(_:_:)();
  v6 = v5;
  outlined destroy of SystemApertureIcon(v3, type metadata accessor for SystemApertureIcon);
  if ((v6 & 1) == 0)
  {
    SystemApertureIconView.updateIconView()();
  }
}

uint64_t SystemApertureIconView.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_icon;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7_92();
  return outlined init with copy of SystemApertureIcon(v1 + v3, a1, v4);
}

uint64_t SystemApertureIconView.icon.setter(uint64_t a1)
{
  v4 = type metadata accessor for SystemApertureIcon(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_icon;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_12_75();
  outlined init with copy of SystemApertureIcon(v1 + v9, v8, v10);
  OUTLINED_FUNCTION_30_2();
  outlined assign with copy of SystemApertureIcon(a1, v1 + v9);
  swift_endAccess();
  SystemApertureIconView.icon.didset();
  outlined destroy of SystemApertureIcon(a1, v2);
  return outlined destroy of SystemApertureIcon(v8, v2);
}

void (*SystemApertureIconView.icon.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = type metadata accessor for SystemApertureIcon(0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[5] = v7;
  v8 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_icon;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7_92();
  outlined init with copy of SystemApertureIcon(v1 + v8, v7, v9);
  return SystemApertureIconView.icon.modify;
}

void SystemApertureIconView.icon.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of SystemApertureIcon(*(*a1 + 40), v3, type metadata accessor for SystemApertureIcon);
    SystemApertureIconView.icon.setter(v3);
    outlined destroy of SystemApertureIcon(v4, type metadata accessor for SystemApertureIcon);
  }

  else
  {
    SystemApertureIconView.icon.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

id SystemApertureIconView.IconView.view.getter()
{
  v1 = type metadata accessor for SystemApertureIconView.IconView(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of SystemApertureIcon(v0, v3, type metadata accessor for SystemApertureIconView.IconView);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  switch(EnumCaseMultiPayload)
  {
    case 1:

      break;
    case 2:
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11UIImageViewC_20CommunicationsUICore14ActivitySymbolV9AnimationOtMd) + 48);
      v7 = type metadata accessor for ActivitySymbol.Animation();
      (*(*(v7 - 8) + 8))(v3 + v6, v7);
      break;
    default:
      return v5;
  }

  return v5;
}

void SystemApertureIconView.init(icon:isDetached:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  type metadata accessor for SystemApertureIconView.IconView(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = (v8 - v7);
  v10 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
  *&v0[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_7_92();
  outlined init with copy of SystemApertureIcon(v4, &v0[v11], v12);
  if (v2 & 1) != 0 && (*(v4 + 64))
  {
    v13 = 45.0;
  }

  else
  {
    v13 = 1.0;
  }

  *&v0[OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_minimumWidth] = v13;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for SystemApertureIconView(0);
  v14 = objc_msgSendSuper2(&v34, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = one-time initialization token for conversationControls;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, &static Logger.conversationControls);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33 = v21;
    *v20 = 136446210;
    v22 = _typeName(_:qualified:)();
    ObjectType = v23;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v33);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_1BBC58000, v18, v19, "[SystemAperture] %{public}s created", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1BFB23DF0](v21, -1, -1);
    MEMORY[0x1BFB23DF0](v20, -1, -1);
  }

  SystemApertureIconView.updateIconView()();
  v25 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_11_90();
  outlined init with copy of SystemApertureIcon(v16 + v25, v9, v26);
  SystemApertureIconView.IconView.view.getter();
  v27 = OUTLINED_FUNCTION_6_4();
  outlined destroy of SystemApertureIcon(v27, ObjectType);
  [v16 addSubview_];

  v28 = *(v4 + 48);
  v29 = *(v4 + 56);
  v30 = v16;
  v31 = MEMORY[0x1BFB209B0](v28, v29);
  [v30 setAccessibilityLabel_];

  OUTLINED_FUNCTION_0_186();
  outlined destroy of SystemApertureIcon(v4, v32);
  OUTLINED_FUNCTION_30_0();
}