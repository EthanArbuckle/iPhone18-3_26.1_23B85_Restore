uint64_t specialized closure #1 in LazyMapSequence<>.map<A>(_:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *))
{
  v8 = a1;
  a5(&v7, &v8);
  a2(&v9, &v7);

  return v9;
}

uint64_t outlined bridged method (pb) of @objc IMAccount.strippedLogin.getter(void *a1)
{
  v1 = [a1 strippedLogin];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_46();
}

id outlined bridged method (mbnn) of @objc IDSService.reportSpamMessage(_:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = [a2 reportSpamMessage_];

  return v4;
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    result = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(result + 32);
    v7 = result + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 56);
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void specialized LazyMapSequence.Iterator.next()()
{
  v1 = v0;
  v2 = *v0;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    v6 = __CocoaSet.Iterator.next()();
    if (v6)
    {
      v11 = v6;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      swift_dynamicCast();
      v7 = v12;
      if (v12)
      {
LABEL_13:
        v10 = v1[5];
        v12 = v7;
        v10(&v11, &v12);
      }
    }
  }

  else
  {
    v4 = v0[3];
    v3 = v1[4];
    if (v3)
    {
      v5 = v1[3];
LABEL_11:
      v8 = (v3 - 1) & v3;
      v7 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v3)))));
      v9 = v7;
LABEL_12:
      v1[3] = v4;
      v1[4] = v8;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    else
    {
      while (1)
      {
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v5 >= ((v1[2] + 64) >> 6))
        {
          v7 = 0;
          v8 = 0;
          goto LABEL_12;
        }

        v3 = *(v1[1] + 8 * v5);
        ++v4;
        if (v3)
        {
          v4 = v5;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

uint64_t specialized closure #1 in LazyMapSequence<>.map<A>(_:)@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = specialized closure #1 in LazyMapSequence<>.map<A>(_:)(*a1, a2, a3, *a4, *(a4 + 8));
  *a5 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ReportSpamManager.IDSServiceType and conformance ReportSpamManager.IDSServiceType()
{
  result = lazy protocol witness table cache variable for type ReportSpamManager.IDSServiceType and conformance ReportSpamManager.IDSServiceType;
  if (!lazy protocol witness table cache variable for type ReportSpamManager.IDSServiceType and conformance ReportSpamManager.IDSServiceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReportSpamManager.IDSServiceType and conformance ReportSpamManager.IDSServiceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpamMessageDataModel.SpamMessageType and conformance SpamMessageDataModel.SpamMessageType()
{
  result = lazy protocol witness table cache variable for type SpamMessageDataModel.SpamMessageType and conformance SpamMessageDataModel.SpamMessageType;
  if (!lazy protocol witness table cache variable for type SpamMessageDataModel.SpamMessageType and conformance SpamMessageDataModel.SpamMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpamMessageDataModel.SpamMessageType and conformance SpamMessageDataModel.SpamMessageType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReportSpamManager.IDSServiceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ReportSpamManager.SpamDataModel(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
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

uint64_t storeEnumTagSinglePayload for ReportSpamManager.SpamDataModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpamMessageDataModel.SpamMessageType(_BYTE *result, int a2, int a3)
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

id UIColor.init(white:)(double a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithWhite:a1 alpha:1.0];
}

id Array<A>.interpolatedColor(percent:)(double a1)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_92();
  Collection.first.getter();
  if (v18)
  {
    v2 = UIColor.hslaComponents.getter();
    v4 = v3;
    v6 = v5;
    v8 = v7;

    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_92();
    BidirectionalCollection.last.getter();
    v9 = UIColor.hslaComponents.getter();
    v11 = v10;
    v13 = v12;
    v17 = v14;

    return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithHue:(1.0 - a1) * v2 + v9 * a1 saturation:(1.0 - a1) * v4 + v11 * a1 brightness:(1.0 - a1) * v6 + v13 * a1 alpha:(1.0 - a1) * v8 + v17 * a1];
  }

  else
  {
    v16 = [objc_opt_self() clearColor];

    return v16;
  }
}

id UIColor.screenBlendedColor.getter()
{
  v0 = UIColor.rgbaComponents.getter();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = -(pow(-(v0 + -1.0), 0.2) + -1.0);
  v8 = -(pow(-(v2 + -1.0), 0.2) + -1.0);
  v9 = -(pow(-(v4 + -1.0), 0.2) + -1.0);
  v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v10 initWithRed:v7 green:v8 blue:v9 alpha:v6];
}

double static UIColor.redGlyph.getter@<D0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1BC4CFAE0;
  a1[1] = xmmword_1BC4CFAF0;
  a1[2] = xmmword_1BC4CFB00;
  a1[3] = xmmword_1BC4CFB10;
  result = 0.0;
  a1[4] = xmmword_1BC4C0360;
  return result;
}

id UIColor.apply(_:)()
{
  v0 = OUTLINED_FUNCTION_38_2();
  v2 = closure #1 in UIColor.apply(_:)(v0, v1);
  v3 = OUTLINED_FUNCTION_38_2();
  v5 = closure #2 in UIColor.apply(_:)(v3, v4);
  v6 = OUTLINED_FUNCTION_38_2();
  v8 = closure #3 in UIColor.apply(_:)(v6, v7);
  v9 = OUTLINED_FUNCTION_38_2();
  v11 = closure #4 in UIColor.apply(_:)(v9, v10);
  v12 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v12 initWithRed:v2 green:v5 blue:v8 alpha:v11];
}

double UIColor.hslaComponents.getter()
{

  return UIColor.hslaComponents.getter(&selRef_getHue_saturation_brightness_alpha_);
}

double UIColor.rgbaComponents.getter()
{

  return UIColor.hslaComponents.getter(&selRef_getRed_green_blue_alpha_);
}

double UIColor.hslaComponents.getter(SEL *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  [v1 *a1];
  return *v6;
}

id static UIColor.faceTimeDarkGreen.getter()
{
  v0 = [objc_opt_self() systemDarkGreenColor];

  return v0;
}

float closure #1 in UIColor.apply(_:)(uint64_t a1, float *a2)
{
  v3 = UIColor.rgbaComponents.getter();
  v4 = *a2 * v3;
  UIColor.rgbaComponents.getter();
  v6 = v5;
  v7 = a2[1] * v6;
  UIColor.rgbaComponents.getter();
  v9 = v8;
  v10 = a2[2] * v9;
  UIColor.rgbaComponents.getter();
  v12 = v11;
  return a2[4] + (((v4 + v7) + v10) + (a2[3] * v12));
}

float closure #2 in UIColor.apply(_:)(uint64_t a1, float *a2)
{
  v3 = UIColor.rgbaComponents.getter();
  v4 = a2[5] * v3;
  UIColor.rgbaComponents.getter();
  v6 = v5;
  v7 = a2[6] * v6;
  UIColor.rgbaComponents.getter();
  v9 = v8;
  v10 = a2[7] * v9;
  UIColor.rgbaComponents.getter();
  v12 = v11;
  return a2[9] + (((v4 + v7) + v10) + (a2[8] * v12));
}

float closure #3 in UIColor.apply(_:)(uint64_t a1, float *a2)
{
  v3 = UIColor.rgbaComponents.getter();
  v4 = a2[10] * v3;
  UIColor.rgbaComponents.getter();
  v6 = v5;
  v7 = a2[11] * v6;
  UIColor.rgbaComponents.getter();
  v9 = v8;
  v10 = a2[12] * v9;
  UIColor.rgbaComponents.getter();
  v12 = v11;
  return a2[14] + (((v4 + v7) + v10) + (a2[13] * v12));
}

float closure #4 in UIColor.apply(_:)(uint64_t a1, float *a2)
{
  v3 = UIColor.rgbaComponents.getter();
  v4 = a2[15] * v3;
  UIColor.rgbaComponents.getter();
  v6 = v5;
  v7 = a2[16] * v6;
  UIColor.rgbaComponents.getter();
  v9 = v8;
  v10 = a2[17] * v9;
  UIColor.rgbaComponents.getter();
  v12 = v11;
  return a2[19] + (((v4 + v7) + v10) + (a2[18] * v12));
}

Swift::Int ColorStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ColorStyle and conformance ColorStyle()
{
  result = lazy protocol witness table cache variable for type ColorStyle and conformance ColorStyle;
  if (!lazy protocol witness table cache variable for type ColorStyle and conformance ColorStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorStyle and conformance ColorStyle);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ColorStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t key path getter for DefaultParticipantMediaProviderCreator.avcRemoteVideoClientDelegate : DefaultParticipantMediaProviderCreator@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of DefaultParticipantMediaProviderCreator(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = outlined destroy of DefaultParticipantMediaProviderCreator(v5);
  *a2 = Strong;
  return result;
}

uint64_t DefaultParticipantMediaProviderCreator.avcRemoteVideoClientDelegate.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*DefaultParticipantMediaProviderCreator.avcRemoteVideoClientDelegate.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return DefaultParticipantMediaProviderCreator.avcRemoteVideoClientDelegate.modify;
}

uint64_t DefaultParticipantMediaProviderCreator.avcRemoteVideoClientDelegate.modify()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t DefaultParticipantMediaProviderCreator.createParticipantVideoProvider(with:oneToOneModeStateProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    v10 = type metadata accessor for RemoteParticipantVideoProvider();
    v11 = objc_allocWithZone(v10);
    swift_unknownObjectRetain();
    result = RemoteParticipantVideoProvider.init(streamToken:avcRemoteVideoClientDelegate:oneToOneModeStateProvider:)(a1, Strong, a2, a3);
    a4[3] = v10;
    a4[4] = &protocol witness table for RemoteParticipantVideoProvider;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DefaultParticipantMediaProviderCreator.init(avcRemoteVideoClientDelegate:)()
{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

id Features.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t Features.isFaceTimeMyselfEnabled.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = FTServerBag.isServerFaceTimeMyselfEnabled.getter();

    if (v2)
    {
      lazy protocol witness table accessor for type Features.TelephonyUtilities and conformance Features.TelephonyUtilities();
      v3 = OUTLINED_FUNCTION_12_53();
      OUTLINED_FUNCTION_8_68(v3);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Features.hudActivityManagerEnabled.getter()
{
  if (Features.callManagerEnabled.getter() & 1) != 0 || (Features.requestToScreenShareEnabled.getter())
  {
    return 1;
  }

  else
  {
    return Features.usesModernScreenSharingFromMessages.getter() & 1;
  }
}

uint64_t Features.isiPadPostersEnabled(for:)(void *a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 1)
  {
    return 0;
  }

  v7 = &unk_1F3ADDCB8;
  lazy protocol witness table accessor for type Features.CallExperience and conformance Features.CallExperience();
  v4 = OUTLINED_FUNCTION_11_64();
  __swift_destroy_boxed_opaque_existential_1(v6);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (a1)
  {
    return [a1 isSOS] ^ 1;
  }

  return 1;
}

uint64_t Features.isICUIRedesignEnabled.getter(uint64_t a1, void (*a2)(void), char a3)
{
  a2();
  v4 = isFeatureEnabled(_:)();
  OUTLINED_FUNCTION_8_68(v4);
  return a3 & 1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Features.FaceTime2025(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

const char *Features.DockKit.feature.getter(char a1)
{
  if (a1)
  {
    return "TapToTrack";
  }

  else
  {
    return "ButtonRemoteControl";
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Features.Contacts(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

Swift::Int Features.AudioCallModernization.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

id Features.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type Features.CallScreening and conformance Features.CallScreening()
{
  result = lazy protocol witness table cache variable for type Features.CallScreening and conformance Features.CallScreening;
  if (!lazy protocol witness table cache variable for type Features.CallScreening and conformance Features.CallScreening)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.CallScreening and conformance Features.CallScreening);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Features.CallScreening and conformance Features.CallScreening;
  if (!lazy protocol witness table cache variable for type Features.CallScreening and conformance Features.CallScreening)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.CallScreening and conformance Features.CallScreening);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Features.DockKit and conformance Features.DockKit()
{
  result = lazy protocol witness table cache variable for type Features.DockKit and conformance Features.DockKit;
  if (!lazy protocol witness table cache variable for type Features.DockKit and conformance Features.DockKit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.DockKit and conformance Features.DockKit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Features.DockKit and conformance Features.DockKit;
  if (!lazy protocol witness table cache variable for type Features.DockKit and conformance Features.DockKit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.DockKit and conformance Features.DockKit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Features.Messages and conformance Features.Messages()
{
  result = lazy protocol witness table cache variable for type Features.Messages and conformance Features.Messages;
  if (!lazy protocol witness table cache variable for type Features.Messages and conformance Features.Messages)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.Messages and conformance Features.Messages);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Features.Messages and conformance Features.Messages;
  if (!lazy protocol witness table cache variable for type Features.Messages and conformance Features.Messages)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.Messages and conformance Features.Messages);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Features.AppProtection and conformance Features.AppProtection()
{
  result = lazy protocol witness table cache variable for type Features.AppProtection and conformance Features.AppProtection;
  if (!lazy protocol witness table cache variable for type Features.AppProtection and conformance Features.AppProtection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.AppProtection and conformance Features.AppProtection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Features.AppProtection and conformance Features.AppProtection;
  if (!lazy protocol witness table cache variable for type Features.AppProtection and conformance Features.AppProtection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.AppProtection and conformance Features.AppProtection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Features.AudioCallModernization and conformance Features.AudioCallModernization()
{
  result = lazy protocol witness table cache variable for type Features.AudioCallModernization and conformance Features.AudioCallModernization;
  if (!lazy protocol witness table cache variable for type Features.AudioCallModernization and conformance Features.AudioCallModernization)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.AudioCallModernization and conformance Features.AudioCallModernization);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Features.AudioCallModernization and conformance Features.AudioCallModernization;
  if (!lazy protocol witness table cache variable for type Features.AudioCallModernization and conformance Features.AudioCallModernization)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.AudioCallModernization and conformance Features.AudioCallModernization);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Features.LVM(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Features.Contacts(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_10_55(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Features.ConversationKit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Features.ConversationKit(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Features.AudioCallModernization(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return getEnumTag for CallRecordingError(a1);
}

_BYTE *storeEnumTagSinglePayload for Features.AudioCallModernization(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for Features.CallUI(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_10_55(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Features.TelephonyUtilities(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Features.TelephonyUtilities(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

uint64_t (*lazy protocol witness table accessor for type Features.SensitiveContentAnalysis and conformance Features.SensitiveContentAnalysis())(void, void)
{
  result = lazy protocol witness table cache variable for type Features.SensitiveContentAnalysis and conformance Features.SensitiveContentAnalysis;
  if (!lazy protocol witness table cache variable for type Features.SensitiveContentAnalysis and conformance Features.SensitiveContentAnalysis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.SensitiveContentAnalysis and conformance Features.SensitiveContentAnalysis);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnsweringMachineError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnsweringMachineError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for AnsweringMachineError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for AnsweringMachineError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id AudioVisualizationRingLayer.__allocating_init(layer:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id AudioVisualizationRingLayer.init(opacityMultiple:)(float a1)
{
  *&v1[OBJC_IVAR____TtC15ConversationKit27AudioVisualizationRingLayer_opacityMultiple] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AudioVisualizationRingLayer();
  v2 = objc_msgSendSuper2(&v5, sel_init);
  [v2 setAllowsGroupBlending_];
  LODWORD(v3) = 1.0;
  [v2 setOpacity_];

  return v2;
}

uint64_t AudioVisualizationRingLayer.init(layer:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v9);
  v3 = type metadata accessor for AudioVisualizationRingLayer();
  if (swift_dynamicCast())
  {
    v4 = v8;
    *&v1[OBJC_IVAR____TtC15ConversationKit27AudioVisualizationRingLayer_opacityMultiple] = *&v8[OBJC_IVAR____TtC15ConversationKit27AudioVisualizationRingLayer_opacityMultiple];
    v7.receiver = v1;
    v7.super_class = v3;
    v5 = objc_msgSendSuper2(&v7, sel_initWithLayer_, v4);

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id AudioVisualizationRingLayer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

float AudioVisualizationRingLayer.opacity.getter()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AudioVisualizationRingLayer();
  objc_msgSendSuper2(&v3, sel_opacity);
  return v1 / *&v0[OBJC_IVAR____TtC15ConversationKit27AudioVisualizationRingLayer_opacityMultiple];
}

id AudioVisualizationRingLayer.opacity.setter(float a1)
{
  v2 = *&v1[OBJC_IVAR____TtC15ConversationKit27AudioVisualizationRingLayer_opacityMultiple] * a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AudioVisualizationRingLayer();
  *&v3 = v2;
  return objc_msgSendSuper2(&v5, sel_setOpacity_, v3);
}

id AudioVisualizationRingLayer.bounds.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioVisualizationRingLayer();
  return objc_msgSendSuper2(&v2, sel_bounds);
}

id AudioVisualizationRingLayer.bounds.setter(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for AudioVisualizationRingLayer();
  objc_msgSendSuper2(&v10, sel_setBounds_, a1, a2, a3, a4);
  return AudioVisualizationRingLayer.bounds.didset();
}

id AudioVisualizationRingLayer.bounds.didset()
{
  [v0 bounds];
  [v0 setCornerRadius_];
  [v0 bounds];
  [v0 setBorderWidth_];
  [v0 bounds];
  v4 = v3 * 0.5;
  [v0 bounds];

  return [v0 setPosition_];
}

Swift::Void __swiftcall AudioVisualizationRingLayer.addBoundsSizeAnimation(_:forKey:)(CABasicAnimation _, Swift::String forKey)
{
  v3 = v2;
  v4 = *&_.super.super._flags;
  attr = _.super.super._attr;
  isa = _.super.super.super.isa;
  [(objc_class *)_.super.super.super.isa setRemovedOnCompletion:1, forKey._countAndFlagsBits, forKey._object];
  outlined bridged method (mnbgnn) of @objc CALayer.add(_:forKey:)(isa, attr, v4, v3);
  if ([(objc_class *)isa fromValue])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (*(&v29 + 1))
  {
    type metadata accessor for NSValue();
    if ((OUTLINED_FUNCTION_0_126() & 1) == 0)
    {
      return;
    }

    if ([(objc_class *)isa toValue])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30 = v28;
    v31 = v29;
    if (*(&v29 + 1))
    {
      if ((OUTLINED_FUNCTION_0_126() & 1) == 0)
      {

        return;
      }

      [v27 CGSizeValue];
      [v27 CGSizeValue];
      v7 = CABasicAnimation.animationCopy()();
      outlined bridged method (mbnn) of @objc CAPropertyAnimation.keyPath.setter(0x615272656E726F63, 0xEC00000073756964, v7);
      v8 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v7 setFromValue_];

      v9 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v7 setToValue_];

      v10 = CABasicAnimation.animationCopy()();
      outlined bridged method (mbnn) of @objc CAPropertyAnimation.keyPath.setter(0x6957726564726F62, 0xEB00000000687464, v10);
      v11 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v10 setFromValue_];

      v12 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v10 setToValue_];

      v13 = CABasicAnimation.animationCopy()();
      outlined bridged method (mbnn) of @objc CAPropertyAnimation.keyPath.setter(0x6E6F697469736F70, 0xE800000000000000, v13);
      v14 = CGPoint._bridgeToObjectiveC()().super.isa;
      [v13 setFromValue_];

      v15 = CGPoint._bridgeToObjectiveC()().super.isa;
      [v13 setToValue_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BC370;
      *(inited + 32) = v7;
      *(inited + 40) = v10;
      *(inited + 48) = v13;
      v26 = v7;
      v25 = v10;
      v24 = v13;
      for (i = 0; ; ++i)
      {
        if (i == 3)
        {

          swift_setDeallocating();
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          return;
        }

        if ((inited & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1BFB22010](i, inited);
        }

        else
        {
          if (i >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v18 = *(inited + 8 * i + 32);
        }

        v19 = v18;
        *&v30 = attr;
        *(&v30 + 1) = v4;

        MEMORY[0x1BFB20B10](45, 0xE100000000000000);
        outlined bridged method (pb) of @objc CAPropertyAnimation.keyPath.getter(v19);
        if (v20)
        {
          v21 = String.init<A>(reflecting:)();
          v23 = v22;
        }

        else
        {
          v23 = 0xE300000000000000;
          v21 = 7104878;
        }

        MEMORY[0x1BFB20B10](v21, v23);

        outlined bridged method (mnbnn) of @objc CALayer.add(_:forKey:)(v19, v30, *(&v30 + 1), v3);
      }
    }
  }

  outlined destroy of Any?(&v30);
}

id AudioVisualizationRingLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioVisualizationRingLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioVisualizationRingLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void outlined bridged method (mnbnn) of @objc CALayer.add(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1BFB209B0](a2, a3);

  [a4 addAnimation:a1 forKey:v6];
}

void outlined bridged method (mnbgnn) of @objc CALayer.add(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1BFB209B0](a2, a3);
  [a4 addAnimation:a1 forKey:v6];
}

unint64_t type metadata accessor for NSValue()
{
  result = lazy cache variable for type metadata for NSValue;
  if (!lazy cache variable for type metadata for NSValue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSValue);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc CAPropertyAnimation.keyPath.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();

  [a3 setKeyPath_];
}

uint64_t outlined bridged method (pb) of @objc CAPropertyAnimation.keyPath.getter(void *a1)
{
  v1 = [a1 keyPath];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t CallScreening.MainAnsweringMachine.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t CallScreening.MainAnsweringMachine.__allocating_init(logger:stateMachine:statusService:callServices:onCallStatusUpdate:isAnsweringMachineAvailable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a7;
  v27 = a8;
  v25 = a6;
  v16 = *(a4 + 24);
  v15 = *(a4 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = a9(a1, a2, a3, v20, a5, v25, v26, v27, v9, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v22;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CallScreening.MainAnsweringMachine.start()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  static TaskPriority.userInitiated.getter();
  v4 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  v5 = one-time initialization token for shared;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = static CKStateMachineActor.shared;
  v7 = lazy protocol witness table accessor for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType(&lazy protocol witness table cache variable for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType, type metadata accessor for CKStateMachineActor.ActorType);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v0;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in CallScreening.MainAnsweringMachine.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.MainAnsweringMachine.start(), v5, 0);
}

uint64_t closure #1 in CallScreening.MainAnsweringMachine.start()()
{
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = closure #1 in CallScreening.MainAnsweringMachine.start();

  return (specialized CKStateMachine.transition(with:reason:validation:))(1, 0, 128, 0xD00000000000001ALL, 0x80000001BC507090, closure #1 in closure #1 in CallScreening.MainAnsweringMachine.start(), 0);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t closure #1 in closure #1 in CallScreening.MainAnsweringMachine.start()(uint64_t result)
{
  if (*(result + 48) >> 61)
  {
    lazy protocol witness table accessor for type CKStateMachineError and conformance CKStateMachineError();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t CallScreening.MainAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[4] = v2;
  v1[5] = v0;
  v3 = type metadata accessor for URL();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v1[8] = *(v4 + 64);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v6 = OUTLINED_FUNCTION_12_7();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x1EEE6DFA0](CallScreening.MainAnsweringMachine.open(_:), v6, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](CallScreening.MainAnsweringMachine.open(_:), v5, v4);
}

{
  OUTLINED_FUNCTION_9();

  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t CallScreening.MainAnsweringMachine.open(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  v13 = v12[5];
  type metadata accessor for OS_os_log();
  v14 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if ((*(v13 + OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_isAnsweringMachineAvailable))())
  {
    v15 = v12[9];
    v16 = v12[10];
    v17 = v12[6];
    v18 = v12[7];
    v19 = v12[4];
    static TaskPriority.userInitiated.getter();
    v20 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v20);
    (*(v18 + 16))(v15, v19, v17);
    v21 = one-time initialization token for shared;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = v12[9];
    v23 = v12[7];
    v25 = v12[5];
    v24 = v12[6];
    v26 = static CallScreeningActor.shared;
    v27 = lazy protocol witness table accessor for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType(&lazy protocol witness table cache variable for type CallScreeningActor.ActorType and conformance CallScreeningActor.ActorType, type metadata accessor for CallScreeningActor.ActorType);
    v28 = (*(v23 + 80) + 40) & ~*(v23 + 80);
    v29 = swift_allocObject();
    *(v29 + 2) = v26;
    *(v29 + 3) = v27;
    *(v29 + 4) = v25;
    (*(v23 + 32))(&v29[v28], v22, v24);

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCAG_Tt2g5();
    v12[14] = v30;
    v31 = swift_task_alloc();
    v12[15] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    *v31 = v12;
    v31[1] = CallScreening.MainAnsweringMachine.open(_:);
    OUTLINED_FUNCTION_17_3();

    return MEMORY[0x1EEE6DA40](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
  }

  else
  {

    v40 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    OUTLINED_FUNCTION_17_3();

    return v44(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
  }
}

uint64_t closure #1 in CallScreening.MainAnsweringMachine.open(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  v6 = type metadata accessor for UUID();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static CallScreeningActor.shared;
  v5[12] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.MainAnsweringMachine.open(_:), v8, 0);
}

uint64_t closure #1 in CallScreening.MainAnsweringMachine.open(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_23_1();
  a18 = v20;
  v24 = v20[10];
  v23 = v20[11];
  v25 = v20[9];
  v26 = v20[5];
  v20[13] = OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_logger;
  (*(v24 + 16))(v23, v26, v25);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v31 = v20[10];
  v30 = v20[11];
  v32 = v20[9];
  if (v29)
  {
    v33 = OUTLINED_FUNCTION_42();
    v34 = OUTLINED_FUNCTION_23();
    a9 = v34;
    *v33 = 136315138;
    lazy protocol witness table accessor for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    (*(v31 + 8))(v30, v32);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &a9);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_1BBC58000, v27, v28, "Openning url for Screening: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    (*(v31 + 8))(v30, v32);
  }

  v39 = v20[4];
  v40 = OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_callServices;
  v20[14] = OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_callServices;
  v41 = *(v39 + v40 + 24);
  v20[15] = v41;
  v42 = *(v39 + v40 + 32);
  v20[16] = v42;
  v20[17] = __swift_project_boxed_opaque_existential_1((v39 + v40), v41);
  v20[18] = *(v42 + 96);
  v20[19] = (v42 + 96) & 0xFFFFFFFFFFFFLL | 0xF3FE000000000000;
  v20[20] = type metadata accessor for MainActor();
  v20[21] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE6DFA0](v43, v44, v45);
}

uint64_t closure #1 in CallScreening.MainAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_44();
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[15];
  v4 = v0[12];

  v0[22] = v1(v3, v2);

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.MainAnsweringMachine.open(_:), v4, 0);
}

{
  OUTLINED_FUNCTION_48();
  v34 = v0;
  v1 = v0[22];
  if (!v1)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      OUTLINED_FUNCTION_14_40();
      _os_log_impl(v25, v26, v27, v28, v24, 2u);
      OUTLINED_FUNCTION_27();
    }

    v29 = v0[3];

    *v29 = 0;
    v29[1] = 0;

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_22_6();

    __asm { BRAA            X1, X16 }
  }

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_23();
    v33 = v6;
    *v5 = 136446210;
    v0[2] = v2;
    v7 = v2;
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v33);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_14_40();
    _os_log_impl(v11, v12, v13, v14, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_27();
  }

  v15 = (v0[4] + v0[14]);
  v16 = v15[3];
  v0[23] = v16;
  v17 = v15[4];
  v0[24] = v17;
  v0[25] = __swift_project_boxed_opaque_existential_1(v15, v16);
  v0[26] = *(v17 + 48);
  v0[27] = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0xE247000000000000;
  v0[28] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_22_6();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 208);
  v2 = *(v0 + 96);

  v3 = OUTLINED_FUNCTION_206();
  v1(v3);

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.MainAnsweringMachine.open(_:), v2, 0);
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[22];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = [v1 callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = UUID.uuidString.getter();
  v9 = v8;

  (*(v3 + 8))(v2, v4);
  *v5 = v7;
  v5[1] = v9;

  OUTLINED_FUNCTION_13();

  return v10();
}

uint64_t @objc closure #1 in CallScreening.MainAnsweringMachine.open(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for URL();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in CallScreening.MainAnsweringMachine.open(_:), v6, v5);
}

uint64_t @objc closure #1 in CallScreening.MainAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];

  v0[9] = _Block_copy(v1);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = @objc closure #1 in CallScreening.MainAnsweringMachine.open(_:);

  return CallScreening.MainAnsweringMachine.open(_:)();
}

{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_23_0();
  v6 = v5;
  v7 = v5[7];
  v8 = v5[6];
  v9 = v5[5];
  v10 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);
  if (v2)
  {
    v12 = MEMORY[0x1BFB209B0](v4, v2);
  }

  else
  {
    v12 = 0;
  }

  v13 = v6[9];
  (v13)[2](v13, v12);

  _Block_release(v13);

  OUTLINED_FUNCTION_13();

  return v14();
}

uint64_t CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 169) = a4;
  *(v5 + 168) = a3;
  *(v5 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), 0, 0);
}

uint64_t CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[4];
  v2 = OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_callServices;
  v0[5] = OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_callServices;
  v3 = *(v1 + v2 + 24);
  v0[6] = v3;
  v4 = *(v1 + v2 + 32);
  v0[7] = v4;
  v0[8] = __swift_project_boxed_opaque_existential_1((v1 + v2), v3);
  v0[9] = *(v4 + 72);
  v0[10] = (v4 + 72) & 0xFFFFFFFFFFFFLL | 0xB5B8000000000000;
  v0[11] = type metadata accessor for MainActor();
  v0[12] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  v5 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  v4 = *(v0 + 168);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  *(v0 + 170) = v1(v6, v5, v4, v3, v2) & 1;

  return MEMORY[0x1EEE6DFA0](CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), 0, 0);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 170);
  *(v0 + 104) = OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_logger;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  if (v1 != 1)
  {
    if (v4)
    {
      v20 = OUTLINED_FUNCTION_42();
      v32 = OUTLINED_FUNCTION_23();
      *v20 = 136446210;
      v21 = OUTLINED_FUNCTION_206();
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v23);
      OUTLINED_FUNCTION_14_40();
      _os_log_impl(v24, v25, v26, v27, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_2_2();
    }

    OUTLINED_FUNCTION_0_23();
    OUTLINED_FUNCTION_22_6();

    __asm { BRAA            X2, X16 }
  }

  if (v4)
  {
    v5 = OUTLINED_FUNCTION_42();
    v31 = OUTLINED_FUNCTION_23();
    *v5 = 136446210;
    v6 = OUTLINED_FUNCTION_206();
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v8);
    OUTLINED_FUNCTION_14_40();
    _os_log_impl(v9, v10, v11, v12, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_2();
  }

  v13 = (*(v0 + 32) + *(v0 + 40));
  v14 = v13[3];
  *(v0 + 112) = v14;
  v15 = v13[4];
  *(v0 + 120) = v15;
  *(v0 + 128) = __swift_project_boxed_opaque_existential_1(v13, v14);
  *(v0 + 136) = *(v15 + 40);
  *(v0 + 144) = (v15 + 40) & 0xFFFFFFFFFFFFLL | 0xBCE1000000000000;
  *(v0 + 152) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_22_6();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

{
  OUTLINED_FUNCTION_23_1();
  v17 = v0;
  v1 = v0[20];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_23();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v16);
    *(v8 + 12) = 2112;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Cannot screen call with uuid as its not screenable: %{public}s error: %@", v8, 0x16u);
    outlined destroy of NSObject?(v9);
    OUTLINED_FUNCTION_27();
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_27();
  }

  else
  {
    v13 = v0[20];
  }

  OUTLINED_FUNCTION_0_23();

  return v14(0);
}

uint64_t CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  v13 = *(v12 + 136);
  v15 = *(v12 + 112);
  v14 = *(v12 + 120);
  v16 = *(v12 + 169);
  v17 = *(v12 + 168);
  v19 = *(v12 + 16);
  v18 = *(v12 + 24);

  v13(v19, v18, v16, v17, v15, v14);
  *(v12 + 160) = 0;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_17_3();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t @objc closure #1 in CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:)(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v5;

  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = @objc closure #1 in CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:);

  return CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:)();
}

uint64_t @objc closure #1 in CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(int a1, char a2, char a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;

  v11 = swift_task_alloc();
  v5[5] = v11;
  *v11 = v5;
  v11[1] = @objc closure #1 in CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:);

  return CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(v8, v10, a2, a3);
}

uint64_t @objc closure #1 in CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v4 = *(v3 + 24);
  v5 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;

  v4[2](v4, v2 & 1);
  _Block_release(v4);
  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t CallScreening.MainAnsweringMachine.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_observers);
  v2 = *(v1 + 16);

  v4 = 0;
  v5 = MEMORY[0x1E69E7CA8];
  v6 = MEMORY[0x1E69E73E0];
  v7 = MEMORY[0x1E69E7410];
  while (1)
  {
    if (v2 == v4)
    {

      v10 = OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_logger;
      type metadata accessor for Logger();
      OUTLINED_FUNCTION_7_0();
      (*(v11 + 8))(v0 + v10);

      __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_callServices);

      return v0;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    v8 = v4 + 1;

    MEMORY[0x1BFB21000](v9, v5 + 8, v6, v7);

    v4 = v8;
  }

  __break(1u);
  return result;
}

uint64_t CallScreening.MainAnsweringMachine.__deallocating_deinit()
{
  CallScreening.MainAnsweringMachine.deinit();

  return swift_deallocClassInstance();
}

void *specialized CallScreening.MainAnsweringMachine.__allocating_init(logger:stateMachine:statusService:callServices:onCallStatusUpdate:isAnsweringMachineAvailable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = a7;
  v25 = a8;
  v23 = a6;
  v16 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a9);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v16 + 16))(v18, a4, a10);
  v20 = specialized CallScreening.MainAnsweringMachine.init(logger:stateMachine:statusService:callServices:onCallStatusUpdate:isAnsweringMachineAvailable:)(a1, a2, a3, v18, a5, v23, v24, v25, v19, a10, a11);
  (*(v16 + 8))(a4, a10);
  return v20;
}

void *specialized CallScreening.MainAnsweringMachine.init(logger:stateMachine:statusService:callServices:onCallStatusUpdate:isAnsweringMachineAvailable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v47 = a5;
  v48 = a7;
  v49 = a3;
  v50 = a6;
  v51 = a1;
  v43 = *a9;
  v44 = type metadata accessor for CallScreening.MachineStateObserver(0) - 8;
  MEMORY[0x1EEE9AC00](v44);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CallScreening.CallStateObserver();
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[3] = a10;
  v54[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a4, a10);
  v21 = OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_logger;
  v22 = type metadata accessor for Logger();
  v45 = *(v22 - 8);
  v23 = *(v45 + 16);
  v24 = a9 + v21;
  v25 = v51;
  v23(v24, v51, v22);
  *(a9 + OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_stateMachine) = a2;
  outlined init with copy of IDSLookupManager(v54, a9 + OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_callServices);
  v26 = (a9 + OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_isAnsweringMachineAvailable);
  *v26 = v48;
  v26[1] = a8;
  v23(v19, v25, v22);
  *&v19[*(v17 + 28)] = a2;
  v27 = *(v17 + 32);
  v28 = v49;
  *&v19[v27] = v49;
  swift_retain_n();
  v48 = a8;

  CallScreening.CallStateObserver.start(onCallStatusUpdate:)(v47, v50);
  v30 = v29;
  outlined destroy of CallScreening.CallStateObserver(v19, type metadata accessor for CallScreening.CallStateObserver);
  v46 = v22;
  v23(v15, v51, v22);
  v31 = v44;
  *&v15[*(v44 + 28)] = a2;
  *&v15[*(v31 + 32)] = v28;
  v47 = a2;

  CallScreening.MachineStateObserver.start()();
  v33 = v32;
  outlined destroy of CallScreening.CallStateObserver(v15, type metadata accessor for CallScreening.MachineStateObserver);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BC4BAA20;
  *(v34 + 32) = v30;
  *(v34 + 40) = v33;
  *(a9 + OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_observers) = v34;

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v52 = a9;
    v53 = v38;
    *v37 = 136446210;

    v39 = String.init<A>(reflecting:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v53);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1BBC58000, v35, v36, "Created MainAnsweringMachine %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1BFB23DF0](v38, -1, -1);
    MEMORY[0x1BFB23DF0](v37, -1, -1);
  }

  else
  {
  }

  (*(v45 + 8))(v51, v46);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return a9;
}

uint64_t partial apply for closure #1 in CallScreening.MainAnsweringMachine.start()()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_92(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #1 in CallScreening.MainAnsweringMachine.start()(v5, v6, v7, v1);
}

uint64_t partial apply for closure #1 in CallScreening.MainAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_44();
  type metadata accessor for URL();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_92(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #1 in CallScreening.MainAnsweringMachine.open(_:)(v5, v6, v7, v1, v8);
}

uint64_t type metadata accessor for CallScreening.MainAnsweringMachine()
{
  result = type metadata singleton initialization cache for CallScreening.MainAnsweringMachine;
  if (!type metadata singleton initialization cache for CallScreening.MainAnsweringMachine)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CallScreening.MainAnsweringMachine()
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

uint64_t partial apply for @objc closure #1 in CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)()
{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_92(v6);
  *v7 = v8;
  v7[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return @objc closure #1 in CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(v1, v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:)()
{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_92(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return @objc closure #1 in CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:)(v1, v2, v4, v3);
}

uint64_t partial apply for @objc closure #1 in CallScreening.MainAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_92(v4);
  *v5 = v6;
  v5[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return @objc closure #1 in CallScreening.MainAnsweringMachine.open(_:)(v1, v2, v3);
}

uint64_t lazy protocol witness table accessor for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of CallScreening.CallStateObserver(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t *ClarityUICallHistory.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_127();
  }

  return &static ClarityUICallHistory.shared;
}

Swift::Int __swiftcall ClarityUICallHistory.badgeCount(for:)(ConversationKit::ClarityUIContact a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit20ClarityUICallHistory_callHistoryManager);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCompoundPredicate);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA930;
  CNContact.predicateForCalls()(&stru_1BC4BA000);
  *(v3 + 32) = v4;
  *(v3 + 40) = [objc_opt_self() predicateForCallsWithStatusRead_];
  v5 = @nonobjc NSCompoundPredicate.__allocating_init(andPredicateWithSubpredicates:)();
  v6 = [v2 recentCallsWithPredicate_];

  if (v6)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHRecentCall);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = specialized Array.count.getter(v7);
  }

  return v6;
}

uint64_t static ClarityUICallHistory.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_127();
  }
}

uint64_t ClarityUICallHistory.().init()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20ClarityUICallHistory_contactStore;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v2 = OBJC_IVAR____TtC15ConversationKit20ClarityUICallHistory_preferences;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v0 + v2) = static ClarityUIPreferences.shared;
  v3 = OBJC_IVAR____TtC15ConversationKit20ClarityUICallHistory_favoritesList;
  v4 = one-time initialization token for shared;

  if (v4 != -1)
  {
    swift_once();
  }

  *(v0 + v3) = static ClarityUIFavoritesList.shared;
  v5 = *(v0 + v1);
  v6 = objc_allocWithZone(MEMORY[0x1E6993580]);

  v7 = [v6 initWithContactStore_];
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ClarityUICallHistory_callHistoryManager) = v7;
  v8 = ObservableNotificationHandler.init(name:)(*MEMORY[0x1E69935F0]);
  v9 = *(v8 + OBJC_IVAR____TtC15ConversationKit20ClarityUICallHistory_callHistoryManager);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc CHManager.coalescingStrategy.setter(v10, v11, v9);
  return v8;
}

uint64_t ClarityUICallHistory.recentCalls.getter()
{
  v2 = v0;
  v3 = ClarityUIPreferences.outgoingCommunicationLimit.getter();
  swift_getKeyPath();
  v16 = v0;
  lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = [*(v0 + OBJC_IVAR____TtC15ConversationKit20ClarityUICallHistory_callHistoryManager) recentCalls];
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHRecentCall);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E6993568]) initWithDataSource_];
  v16 = v5;
  v9 = specialized Array.count.getter(v7);
  v10 = 0;
  v11 = v7 & 0xC000000000000001;
  v14 = v8;
  while (1)
  {
    if (v9 == v10)
    {

      return v16;
    }

    if (v11)
    {
      v12 = MEMORY[0x1BFB22010](v10, v7);
    }

    else
    {
      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v12 = *(v7 + 8 * v10 + 32);
    }

    v1 = v12;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v15 = v12;
    if (closure #1 in ClarityUICallHistory.recentCalls.getter(&v15, v8))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 = v14;
      v11 = v7 & 0xC000000000000001;
    }

    else
    {
    }

    ++v10;
  }

  __break(1u);
LABEL_17:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t closure #1 in ClarityUICallHistory.recentCalls.getter(void **a1, void *a2)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = outlined bridged method (pb) of @objc CHRecentCall.serviceProvider.getter(*a1);
  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v6)
  {
    if (v4 == v7 && v6 == v8)
    {
      goto LABEL_16;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v6)
  {
LABEL_46:

    goto LABEL_47;
  }

  if (v4 != v11 || v6 != v12)
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_18;
    }

LABEL_47:
    v55 = 0;
    return v55 & 1;
  }

LABEL_16:

LABEL_17:

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BC4BAC30;
  *(v15 + 32) = v3;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHRecentCall);
  v16 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  v18 = Array._bridgeToObjectiveC()().super.isa;
  v61[0] = 0;
  v19 = [a2 contactsByHandleForCalls:isa keyDescriptors:v18 error:v61];

  v20 = v61[0];
  if (v19)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = specialized Collection.first.getter(v16);
    v24 = v23;

    if (!v22)
    {
      goto LABEL_38;
    }

    if (!specialized Array.count.getter(v24))
    {

      goto LABEL_38;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v24 & 0xC000000000000001) == 0, v24);
    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1BFB22010](0, v24);
    }

    else
    {
      v25 = *(v24 + 32);
    }

    v58 = v25;

    v26 = ClarityUIFavoritesList.favorites.getter();
    v27 = (v26 + 80);
    v59 = v26;
    v57 = -*(v26 + 16);
    v28 = -1;
    while (1)
    {
      if (v57 + v28 == -1)
      {

        v55 = 1;
        return v55 & 1;
      }

      if (++v28 >= *(v59 + 16))
      {
        break;
      }

      v16 = *(v27 - 4);
      v30 = *(v27 - 3);
      v29 = *(v27 - 2);
      v31 = *(v27 - 1);
      v32 = *v27;

      v60 = v30;
      v33 = v29;

      v34 = [v58 identifier];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      if (v31 == v35 && v32 == v37)
      {

        goto LABEL_46;
      }

      v27 += 7;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {

        goto LABEL_46;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = v61[0];
    v24 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for clarityUI == -1)
    {
      goto LABEL_33;
    }
  }

  swift_once();
LABEL_33:
  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, &static Log.clarityUI);
  v41 = v16;
  v42 = v24;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412546;
    *(v45 + 4) = v41;
    *v46 = v41;
    *(v45 + 12) = 2112;
    v47 = v41;
    v48 = v24;
    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 14) = v49;
    v46[1] = v49;
    _os_log_impl(&dword_1BBC58000, v43, v44, "Unable to get contacts by handle for recent call: %@. Error: %@", v45, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v46, -1, -1);
    MEMORY[0x1BFB23DF0](v45, -1, -1);
  }

  else
  {
  }

LABEL_38:
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;
  if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
  {

    v55 = 1;
  }

  else
  {
    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v55 & 1;
}

id @nonobjc NSCompoundPredicate.__allocating_init(andPredicateWithSubpredicates:)()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSPredicate);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v1 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates_];

  return v1;
}

Swift::Void __swiftcall ClarityUICallHistory.markRecentCallsAsRead(for:)(ConversationKit::ClarityUIContact a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit20ClarityUICallHistory_callHistoryManager);
  CNContact.predicateForCalls()(*a1.cnContact.super.isa);
  v4 = v3;
  [v2 setRead:1 forCallsWithPredicate:v3];
}

uint64_t ClarityUICallHistory.__ivar_destroyer()
{
}

uint64_t ClarityUICallHistory.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit29ObservableNotificationHandler___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ClarityUICallHistory.__deallocating_deinit()
{
  ClarityUICallHistory.deinit();

  return swift_deallocClassInstance();
}

uint64_t key path getter for ObservableNotificationHandler.trackingProperty : ObservableNotificationHandler@<X0>(_BYTE *a1@<X8>)
{
  result = ObservableNotificationHandler.trackingProperty.getter();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for ClarityUICallHistory()
{
  result = type metadata singleton initialization cache for ClarityUICallHistory;
  if (!type metadata singleton initialization cache for ClarityUICallHistory)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CHHandle and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type CHHandle and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CHHandle and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for CHHandle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CHHandle and conformance NSObject);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc CHManager.coalescingStrategy.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();

  [a3 setCoalescingStrategy_];
}

id UIContextMenuConfiguration.init(provider:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized UIContextMenuConfiguration.init(provider:)(a1, v2, ObjectType, a2);
}

Swift::Int ControlShape.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ControlShape()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ControlShape.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t closure #1 in UIContextMenuConfiguration.init(provider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v5 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 16))(ObjectType, v5);
  v9 = v8;
  swift_unknownObjectRelease();
  if (!v7)
  {
    return 0;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a3 + 24);
    v11 = swift_getObjectType();
    v12 = (*(v10 + 8))(v7, v9, v11, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id specialized UIContextMenuConfiguration.init(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 8))(a3, a4))
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 24) = v7;
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 24) = a4;
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)();
    v11 = *(a4 + 24);
    v13 = v12;
    [v13 setPreferredMenuAlignment_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v13;
}

unint64_t lazy protocol witness table accessor for type ControlShape and conformance ControlShape()
{
  result = lazy protocol witness table cache variable for type ControlShape and conformance ControlShape;
  if (!lazy protocol witness table cache variable for type ControlShape and conformance ControlShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ControlShape and conformance ControlShape);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ControlShape(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ShareCardControlsView.init(shareCardViewModel:)()
{
  OUTLINED_FUNCTION_6_7();
  v3 = v2;
  *v2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  OUTLINED_FUNCTION_108_0();
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ShareCardControlsView(0);
  v5 = v3 + *(result + 20);
  *v5 = v1;
  *(v5 + 1) = v0;
  v5[16] = 0;
  return result;
}

void ShareCardViewModel.__allocating_init(didTapScreenShareButton:didTapAskToScreenShareButton:didTapCollaborateButton:didTapEndSharePlay:)()
{
  OUTLINED_FUNCTION_29();
  swift_allocObject();
  ShareCardViewModel.init(didTapScreenShareButton:didTapAskToScreenShareButton:didTapCollaborateButton:didTapEndSharePlay:)();
  OUTLINED_FUNCTION_30_0();
}

uint64_t ShareCardButton.title.setter()
{
  OUTLINED_FUNCTION_55();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ShareCardButton.subtitle.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ShareCardButton.systemImage.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t key path getter for ShareCardButton.action : ShareCardButton@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a2[1] = v5;
}

uint64_t key path setter for ShareCardButton.action : ShareCardButton(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 56) = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  *(a2 + 64) = v5;
  return result;
}

uint64_t ShareCardButton.action.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

void ShareCardButton.body.getter()
{
  OUTLINED_FUNCTION_29();
  v0 = type metadata accessor for ShareCardButton(0);
  v1 = OUTLINED_FUNCTION_9_0(v0);
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_58_9();
  outlined init with copy of ShareCardButton();
  swift_allocObject();
  outlined init with take of ShareCardButton();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGSgSg_AGyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameR0VG_AUSgtGGMd);
  OUTLINED_FUNCTION_2_16();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v4, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGSgSg_AGyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameR0VG_AUSgtGGMd);
  Button.init(action:label:)();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v5, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAGyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgSg_AIyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameS0VG_AWSgtGGGMd);
  lazy protocol witness table accessor for type ShareCardButtonStyle and conformance ShareCardButtonStyle();
  View.buttonStyle<A>(_:)();

  v6 = OUTLINED_FUNCTION_15_14();
  v7(v6);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in closure #1 in closure #2 in ShareCardButton.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for Image.Scale();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v53 = &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  MEMORY[0x1EEE9AC00](v56);
  v52 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &KeyPath - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd);
  MEMORY[0x1EEE9AC00](v57);
  v9 = &KeyPath - v8;
  v10 = type metadata accessor for DynamicTypeSize();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &KeyPath - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &KeyPath - v21;
  type metadata accessor for ShareCardButton(0);
  specialized Environment.wrappedValue.getter(v16);
  (*(v11 + 104))(v13, *MEMORY[0x1E697E6D0], v10);
  v23 = static DynamicTypeSize.< infix(_:_:)();
  v24 = *(v11 + 8);
  v24(v13, v10);
  v24(v16, v10);
  if (v23)
  {
    if (a1[5])
    {

      v50 = Image.init(systemName:)();
      v25 = v53;
      v26 = v54;
      v27 = MEMORY[0x1E69816C8];
      if (!*(a1 + 48))
      {
        v27 = MEMORY[0x1E69816C0];
      }

      v28 = v55;
      (*(v54 + 104))(v53, *v27, v55);
      KeyPath = swift_getKeyPath();
      v29 = v56;
      v30 = v52;
      v31 = &v52[*(v56 + 36)];
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
      (*(v26 + 32))(v31 + *(v32 + 28), v25, v28);
      v33 = v50;
      *v31 = KeyPath;
      *v30 = v33;
      v34 = v30;
      v35 = v51;
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v34, v51, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v35, v9, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
      v36 = 0;
    }

    else
    {
      v36 = 1;
      v29 = v56;
    }

    __swift_storeEnumTagSinglePayload(v9, v36, 1, v29);
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v9, v22, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  __swift_storeEnumTagSinglePayload(v22, v37, 1, v57);
  v38 = a1[1];
  v59 = *a1;
  v60 = v38;
  lazy protocol witness table accessor for type String and conformance String();

  v39 = Text.init<A>(_:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v22, v19, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgSgMd);
  v46 = v58;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v19, v58, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgSgMd);
  v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgSg_ACyAA4TextVAA16_FixedSizeLayoutVGtMd) + 48);
  *v47 = v39;
  *(v47 + 8) = v41;
  v43 &= 1u;
  *(v47 + 16) = v43;
  *(v47 + 24) = v45;
  *(v47 + 32) = 257;
  outlined copy of Text.Storage(v39, v41, v43);

  outlined destroy of CallControlsService?(v22, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgSgMd);
  outlined consume of Text.Storage(v39, v41, v43);

  return outlined destroy of CallControlsService?(v19, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgSgMd);
}

uint64_t ShareCardButton.init(title:subtitle:systemImage:tightLayout:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_71_6(a1, a2, a3, a4, a5, a6, a7);
  *(a8 + 56) = v9;
  *(a8 + 64) = v10;
  v11 = *(type metadata accessor for ShareCardButton(0) + 36);
  *(a8 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ShareCardMenuButton.menuItems.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t ShareCardMenuButton.participantHandles.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t key path getter for ShareCardMenuButton.action : ShareCardMenuButton@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNComposeRecipient) -> ();
  a2[1] = v5;
}

uint64_t key path setter for ShareCardMenuButton.action : ShareCardMenuButton(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 72) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNComposeRecipient) -> (@out ());
  *(a2 + 80) = v5;
  return result;
}

uint64_t ShareCardMenuButton.action.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

void ShareCardMenuButton.body.getter()
{
  OUTLINED_FUNCTION_29();
  v109 = v1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAGyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgSg_AIyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameS0VG_AWSgtGGAA7ForEachVySay15ConversationKit11ParticipantVGA11_AIyAA6ButtonVyAWGAA01_kl9TransformN0VySbGGGGMd);
  OUTLINED_FUNCTION_1();
  v96 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_1();
  v94 = v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9menuStyleyQrqd__AA04MenuE0Rd__lFQOyAA0F0VyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA6HStackVyAKyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGSgSg_AMyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameU0VG_A_SgtGGAA7ForEachVySay15ConversationKit11ParticipantVGA15_AMyAA6ButtonVyA_GAA01_mn9TransformP0VySbGGGG_A13_09ShareCardfE0VQo_Md);
  OUTLINED_FUNCTION_1();
  v98 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  v97 = v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAMyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGSgSg_ACyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameV0VG_A_SgtGGG_15ConversationKit09ShareCardiG0VQo_AA01_no9TransformQ0VySbGGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v89 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v89 - v13;
  v15 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v91 = v16;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v89 - v19;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA6VStackVyAA05TupleF0VyAA08ModifiedD0VyAA6HStackVyAOyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAU5ScaleOGGSgSg_AQyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameX0VG_A3_SgtGGG_15ConversationKit09ShareCardjH0VQo_AQyA19_AA01_pq9TransformS0VySbGGGAgAE04menuH0yQrqd__AA04MenuH0Rd__lFQOyAA4MenuVyA14_AA7ForEachVySayA16_11ParticipantVGA32_AQyAKyA3_GA22_GGG_A16_013ShareCardMenuH0VQo__GMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_1();
  v106 = v22;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA6VStackVyAA05TupleF0VyAA08ModifiedD0VyAA6HStackVyAOyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAU5ScaleOGGSgSg_AQyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameX0VG_A3_SgtGGG_15ConversationKit09ShareCardjH0VQo_AQyA19_AA01_pq9TransformS0VySbGG_GMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_1();
  v101 = v24;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyAA08ModifiedD0VyAA6HStackVyAMyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAS5ScaleOGGSgSg_AOyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameW0VG_A1_SgtGGG_15ConversationKit09ShareCardiG0VQo_AOyA17_AA01_op9TransformR0VySbGGGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_1();
  v103 = v26;
  v27 = OUTLINED_FUNCTION_4_24();
  v28 = type metadata accessor for ShareCardMenuButton(v27);
  v29 = OUTLINED_FUNCTION_9_0(v28);
  v92 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAGyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgSg_AIyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameS0VG_AWSgtGGGMd);
  OUTLINED_FUNCTION_1();
  v95 = v31;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_1();
  v93 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA6HStackVyAKyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGSgSg_AMyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameV0VG_A_SgtGGG_15ConversationKit09ShareCardgE0VQo_Md);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v0;
  v37 = *(v0 + 56);
  v38 = *(v37 + 16);
  if (v38 != 1)
  {
    if (!v38)
    {
      OUTLINED_FUNCTION_27_30();
      v90 = v39;
      v41 = v40;
      v43 = v42;
      outlined init with copy of ShareCardButton();
      OUTLINED_FUNCTION_74_6();
      swift_allocObject();
      OUTLINED_FUNCTION_24_29();
      v44 = outlined init with take of ShareCardButton();
      MEMORY[0x1EEE9AC00](v44);
      *(&v89 - 2) = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGSgSg_AGyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameR0VG_AUSgtGGMd);
      OUTLINED_FUNCTION_2_16();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v45, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGSgSg_AGyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameR0VG_AUSgtGGMd);
      v46 = v93;
      Button.init(action:label:)();
      KeyPath = swift_getKeyPath();
      LOBYTE(v111) = 0;
      OUTLINED_FUNCTION_1_9();
      v49 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v47, v48);
      v50 = lazy protocol witness table accessor for type ShareCardButtonStyle and conformance ShareCardButtonStyle();
      v51 = v99;
      View.buttonStyle<A>(_:)();

      (*(v95 + 8))(v46, v51);
      v52 = v90;
      (*(v43 + 16))(v101, v41, v90);
      swift_storeEnumTagMultiPayload();
      KeyPath = v51;
      v111 = &type metadata for ShareCardButtonStyle;
      v112 = v49;
      v113 = v50;
      OUTLINED_FUNCTION_11_65();
      swift_getOpaqueTypeConformance2();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
      v53 = v103;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v53, v106, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyAA08ModifiedD0VyAA6HStackVyAMyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAS5ScaleOGGSgSg_AOyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameW0VG_A1_SgtGGG_15ConversationKit09ShareCardiG0VQo_AOyA17_AA01_op9TransformR0VySbGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
      OUTLINED_FUNCTION_4_94();
      v56 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v54, v55);
      v57 = lazy protocol witness table accessor for type ShareCardMenuStyle and conformance ShareCardMenuStyle();
      KeyPath = v107;
      v111 = &type metadata for ShareCardMenuStyle;
      v112 = v56;
      v113 = v57;
      OUTLINED_FUNCTION_14_41();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of CallControlsService?(v53, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyAA08ModifiedD0VyAA6HStackVyAMyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAS5ScaleOGGSgSg_AOyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameW0VG_A1_SgtGGG_15ConversationKit09ShareCardiG0VQo_AOyA17_AA01_op9TransformR0VySbGGGMd);
      (*(v43 + 8))(v41, v52);
      goto LABEL_15;
    }

LABEL_6:
    MEMORY[0x1EEE9AC00](v37);
    *(&v89 - 2) = v0;
    MEMORY[0x1EEE9AC00](v58);
    *(&v89 - 2) = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGSgSg_AGyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameR0VG_AUSgtGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay15ConversationKit11ParticipantVGAfA15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGGMd);
    OUTLINED_FUNCTION_2_16();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v59, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGSgSg_AGyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameR0VG_AUSgtGGMd);
    lazy protocol witness table accessor for type ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> ForEach<A, B, C>();
    v60 = v94;
    Menu.init(content:label:)();
    KeyPath = swift_getKeyPath();
    LOBYTE(v111) = 0;
    OUTLINED_FUNCTION_4_94();
    v63 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v61, v62);
    v64 = lazy protocol witness table accessor for type ShareCardMenuStyle and conformance ShareCardMenuStyle();
    v65 = v97;
    v66 = v107;
    View.menuStyle<A>(_:)();

    (*(v96 + 8))(v60, v66);
    v67 = v98;
    v68 = v108;
    (*(v98 + 16))(v106, v65, v108);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
    KeyPath = v66;
    v111 = &type metadata for ShareCardMenuStyle;
    v112 = v63;
    v113 = v64;
    OUTLINED_FUNCTION_14_41();
    _ConditionalContent<>.init(storage:)();
    (*(v67 + 8))(v65, v68);
    goto LABEL_15;
  }

  v90 = v35;
  specialized Collection.first.getter(v37, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    v37 = outlined destroy of CallControlsService?(v14, &_s15ConversationKit11ParticipantVSgMd);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_28_31();
  v69 = v20;
  outlined init with take of ShareCardButton();
  if (Participant.isRequestToScreenShareAvailable.getter())
  {
    v70 = v10;
    v71 = Participant.screenState.getter() != 2 && (Participant.isReceivingScreenFrames.getter() & 1) != 0 || Participant.screenState.getter() != 2;
    LODWORD(v98) = v71;
  }

  else
  {
    LODWORD(v98) = 1;
    v70 = v10;
  }

  OUTLINED_FUNCTION_27_30();
  outlined init with copy of ShareCardButton();
  outlined init with copy of ShareCardButton();
  OUTLINED_FUNCTION_74_6();
  swift_allocObject();
  OUTLINED_FUNCTION_24_29();
  outlined init with take of ShareCardButton();
  OUTLINED_FUNCTION_28_31();
  v72 = outlined init with take of ShareCardButton();
  MEMORY[0x1EEE9AC00](v72);
  *(&v89 - 2) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGSgSg_AGyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameR0VG_AUSgtGGMd);
  OUTLINED_FUNCTION_2_16();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v73, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGSgSg_AGyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameR0VG_AUSgtGGMd);
  v74 = v93;
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  LOBYTE(v111) = 0;
  OUTLINED_FUNCTION_1_9();
  v77 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v75, v76);
  v78 = lazy protocol witness table accessor for type ShareCardButtonStyle and conformance ShareCardButtonStyle();
  v79 = v99;
  View.buttonStyle<A>(_:)();

  (*(v95 + 8))(v74, v79);
  v80 = swift_getKeyPath();
  v81 = swift_allocObject();
  *(v81 + 16) = v98;
  v82 = v101;
  v83 = (v70 + *(v102 + 36));
  *v83 = v80;
  v83[1] = partial apply for closure #1 in View.disabled(_:);
  v83[2] = v81;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v70, v82, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAMyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGSgSg_ACyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameV0VG_A_SgtGGG_15ConversationKit09ShareCardiG0VQo_AA01_no9TransformQ0VySbGGMd);
  swift_storeEnumTagMultiPayload();
  KeyPath = v79;
  v111 = &type metadata for ShareCardButtonStyle;
  v112 = v77;
  v113 = v78;
  OUTLINED_FUNCTION_11_65();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v84 = v103;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v84, v106, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyAA08ModifiedD0VyAA6HStackVyAMyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAS5ScaleOGGSgSg_AOyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameW0VG_A1_SgtGGG_15ConversationKit09ShareCardiG0VQo_AOyA17_AA01_op9TransformR0VySbGGGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
  OUTLINED_FUNCTION_4_94();
  v87 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v85, v86);
  v88 = lazy protocol witness table accessor for type ShareCardMenuStyle and conformance ShareCardMenuStyle();
  KeyPath = v107;
  v111 = &type metadata for ShareCardMenuStyle;
  v112 = v87;
  v113 = v88;
  OUTLINED_FUNCTION_14_41();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of CallControlsService?(v84, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyAA08ModifiedD0VyAA6HStackVyAMyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAS5ScaleOGGSgSg_AOyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameW0VG_A1_SgtGGG_15ConversationKit09ShareCardiG0VQo_AOyA17_AA01_op9TransformR0VySbGGGMd);
  outlined destroy of CallControlsService?(v70, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAMyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGSgSg_ACyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameV0VG_A_SgtGGG_15ConversationKit09ShareCardiG0VQo_AA01_no9TransformQ0VySbGGMd);
  _s15ConversationKit11ParticipantVWOhTm_8(v69, type metadata accessor for Participant);
LABEL_15:
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ShareCardMenuButton.body.getter(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 64);
  if (v2)
  {
    v2 = specialized Collection.first.getter(v2);
  }

  v3 = v2;
  v1();
}

uint64_t closure #5 in ShareCardMenuButton.body.getter()
{
  v0 = type metadata accessor for ShareCardMenuButton(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  swift_getKeyPath();
  outlined init with copy of ShareCardButton();
  swift_allocObject();
  outlined init with take of ShareCardButton();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ParticipantVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [Participant] and conformance [A], &_sSay15ConversationKit11ParticipantVGMd);
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type Participant and conformance Participant, type metadata accessor for Participant);
  lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #5 in ShareCardMenuButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for ShareCardMenuButton(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = (Participant.isRequestToScreenShareAvailable.getter() & 1) == 0 || Participant.screenState.getter() != 2 && (Participant.isReceivingScreenFrames.getter() & 1) != 0 || Participant.screenState.getter() != 2;
  outlined init with copy of ShareCardButton();
  outlined init with copy of ShareCardButton();
  swift_allocObject();
  outlined init with take of ShareCardButton();
  v7 = outlined init with take of ShareCardButton();
  MEMORY[0x1EEE9AC00](v7);
  *(&v12 - 2) = a1;
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v11 = (a2 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = closure #1 in View.disabled(_:)partial apply;
  v11[2] = v9;
  return result;
}

void closure #3 in ShareCardMenuButton.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a2 + *(type metadata accessor for Participant(0) + 28));
  v5 = v3;
  if (v3)
  {
    v4 = v3;
    v3 = v5;
  }

  v2(v3);
}

uint64_t closure #2 in closure #1 in closure #5 in ShareCardMenuButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  Participant.contactDetails.getter();

  Participant.name(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void closure #2 in ShareCardButton.body.getter()
{
  OUTLINED_FUNCTION_6_7();
  v1 = v0;
  *v0 = static HorizontalAlignment.center.getter();
  v1[1] = 0;
  *(v1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGSgSg_AKyAA4TextVAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VG_AYSgtGGMd);
  OUTLINED_FUNCTION_38_2();
  closure #1 in closure #2 in ShareCardButton.body.getter();
}

void closure #1 in closure #2 in ShareCardButton.body.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v51[0] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGSgSg_AGyAA4TextVAA16_FixedSizeLayoutVGtGGMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGSgSg_ACyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameQ0VGMd);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v51 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v51 - v17;
  if (*(v3 + 48))
  {
    v19 = 0x4018000000000000;
  }

  else
  {
    v19 = 0x4022000000000000;
  }

  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = v19;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgSg_AKyAA4TextVAA010_FixedSizeG0VGtGGMd);
  v1(v3);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v8, v15, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGSgSg_AGyAA4TextVAA16_FixedSizeLayoutVGtGGMd);
  memcpy(&v15[*(v10 + 44)], v52, 0x70uLL);
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v15, v18, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGSgSg_ACyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameQ0VGMd);
  v20 = *(v3 + 24);
  if (v20)
  {
    v51[2] = *(v3 + 16);
    v51[3] = v20;
    lazy protocol witness table accessor for type String and conformance String();

    v21 = Text.init<A>(_:)();
    v23 = v22;
    v25 = v24;
    static Font.Weight.semibold.getter();
    v26 = Text.fontWeight(_:)();
    v20 = v27;
    v29 = v28;
    v31 = v30;
    outlined consume of Text.Storage(v21, v23, v25 & 1);

    v32 = v29 & 1;
    v33 = OUTLINED_FUNCTION_40_2();
    outlined copy of Text.Storage(v33, v34, v29 & 1);
  }

  else
  {
    v26 = 0;
    v32 = 0;
    v31 = 0;
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v18, v12, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGSgSg_ACyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameQ0VGMd);
  v35 = v51[0];
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v12, v51[0], &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGSgSg_ACyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameQ0VGMd);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGSgSg_ACyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameQ0VG_ASSgtMd) + 48));
  v37 = OUTLINED_FUNCTION_36_22();
  outlined copy of Text?(v37, v38, v39, v40);
  v41 = OUTLINED_FUNCTION_36_22();
  outlined consume of Text?(v41, v42, v43, v44);
  *v36 = v26;
  v36[1] = v20;
  v36[2] = v32;
  v36[3] = v31;
  outlined destroy of CallControlsService?(v18, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGSgSg_ACyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameQ0VGMd);
  v45 = OUTLINED_FUNCTION_36_22();
  outlined consume of Text?(v45, v46, v47, v48);
  v49 = OUTLINED_FUNCTION_38_2();
  outlined destroy of CallControlsService?(v49, v50);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in closure #1 in ShareCardMenuButton.buttonLabel.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for Image.Scale();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v53 = &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  MEMORY[0x1EEE9AC00](v56);
  v52 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &KeyPath - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd);
  MEMORY[0x1EEE9AC00](v57);
  v9 = &KeyPath - v8;
  v10 = type metadata accessor for DynamicTypeSize();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &KeyPath - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &KeyPath - v21;
  type metadata accessor for ShareCardMenuButton(0);
  specialized Environment.wrappedValue.getter(v16);
  (*(v11 + 104))(v13, *MEMORY[0x1E697E6D0], v10);
  v23 = static DynamicTypeSize.< infix(_:_:)();
  v24 = *(v11 + 8);
  v24(v13, v10);
  v24(v16, v10);
  if (v23)
  {
    if (a1[5])
    {

      v50 = Image.init(systemName:)();
      v25 = v53;
      v26 = v54;
      v27 = MEMORY[0x1E69816C8];
      if (!*(a1 + 48))
      {
        v27 = MEMORY[0x1E69816C0];
      }

      v28 = v55;
      (*(v54 + 104))(v53, *v27, v55);
      KeyPath = swift_getKeyPath();
      v29 = v56;
      v30 = v52;
      v31 = &v52[*(v56 + 36)];
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
      (*(v26 + 32))(v31 + *(v32 + 28), v25, v28);
      v33 = v50;
      *v31 = KeyPath;
      *v30 = v33;
      v34 = v30;
      v35 = v51;
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v34, v51, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v35, v9, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
      v36 = 0;
    }

    else
    {
      v36 = 1;
      v29 = v56;
    }

    __swift_storeEnumTagSinglePayload(v9, v36, 1, v29);
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v9, v22, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  __swift_storeEnumTagSinglePayload(v22, v37, 1, v57);
  v38 = a1[1];
  v59 = *a1;
  v60 = v38;
  lazy protocol witness table accessor for type String and conformance String();

  v39 = Text.init<A>(_:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v22, v19, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgSgMd);
  v46 = v58;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v19, v58, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgSgMd);
  v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgSg_ACyAA4TextVAA16_FixedSizeLayoutVGtMd) + 48);
  *v47 = v39;
  *(v47 + 8) = v41;
  v43 &= 1u;
  *(v47 + 16) = v43;
  *(v47 + 24) = v45;
  *(v47 + 32) = 257;
  outlined copy of Text.Storage(v39, v41, v43);

  outlined destroy of CallControlsService?(v22, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgSgMd);
  outlined consume of Text.Storage(v39, v41, v43);

  return outlined destroy of CallControlsService?(v19, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgSgMd);
}

uint64_t ShareCardMenuButton.init(title:subtitle:systemImage:tightLayout:menuItems:participantHandles:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_71_6(a1, a2, a3, a4, a5, a6, a7);
  *(a8 + 56) = v9;
  *(a8 + 64) = v10;
  *(a8 + 80) = v11;
  v12 = *(type metadata accessor for ShareCardMenuButton(0) + 44);
  *(a8 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);

  return swift_storeEnumTagMultiPayload();
}

void static NSNotificationCenter.Publisher.publisher<A>(name:updateFetcher:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  type metadata accessor for CurrentValueSubject();
  v3();
  v8 = CurrentValueSubject.__allocating_init(_:)();
  v9 = [objc_opt_self() defaultCenter];
  OUTLINED_FUNCTION_78_5(v5);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v3;
  v10[4] = v1;
  OUTLINED_FUNCTION_25_30();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(v11, v12);

  Publisher<>.sink(receiveValue:)();

  v13 = OUTLINED_FUNCTION_309();
  v14(v13);

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in static NSNotificationCenter.Publisher.publisher<A>(name:updateFetcher:)(uint64_t a1, void *a2)
{
  v2 = *(*a2 + *MEMORY[0x1E695BFA0]);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  v7(v4);
  CurrentValueSubject.send(_:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ShareCardViewModel.collaborateButtonTitle.getter()
{
  return ShareCardViewModel.collaborateButtonTitle.getter();
}

{
  OUTLINED_FUNCTION_6_7();
  v0 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_29_4();
  v1._countAndFlagsBits = OUTLINED_FUNCTION_38_2();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v4, v0, v2, *(&v6 - 1));

  return OUTLINED_FUNCTION_46();
}

unint64_t ShareCardViewModel.shareScreenButtonImage.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v0 + 168))())
  {
    return 0;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t ShareCardViewModel.requestScreenShareButtonTitle.getter()
{
  v0 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_29_4();
  v1._object = 0x80000001BC4FE020;
  v1._countAndFlagsBits = 0xD000000000000013;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v4, v0, v2, *(&v6 - 1));

  return OUTLINED_FUNCTION_15_14();
}

uint64_t ShareCardViewModel.collaborateSubtitle.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_140_0();
  v3 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = 10;
  v20 = 0u;
  v21 = 0u;
  v22 = 7;
  ConversationControlsRecipeGenerator.generate(for:type:controlsManager:)(0, &v19, v9, v0);
  outlined destroy of ConversationControlsType(&v19);
  if (__swift_getEnumTagSinglePayload(v0, 1, v3) == 1)
  {

    outlined destroy of CallControlsService?(v0, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    return 0;
  }

  OUTLINED_FUNCTION_309();
  outlined init with take of ShareCardButton();
  v10 = *(v7 + 88);
  if (!specialized Array.count.getter(v10))
  {

    OUTLINED_FUNCTION_31_24();
    return 0;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v10 & 0xC000000000000001) == 0, v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1BFB22010](0, v10);
  }

  else
  {
    v11 = *(v10 + 32);
  }

  v12 = v11;
  v13 = [v11 string];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v19 = v14;
  *&v20 = v16;
  lazy protocol witness table accessor for type String and conformance String();
  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  OUTLINED_FUNCTION_31_24();

  return v17;
}

uint64_t key path getter for ShareCardViewModel.shouldShowEndActivity : ShareCardViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result & 1;
  return result;
}

uint64_t ShareCardViewModel.shouldShowEndActivity.getter()
{
  return ShareCardViewModel.shouldShowEndActivity.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_14();
  static Published.subscript.getter();

  return v1;
}

uint64_t ShareCardViewModel.shouldShowEndActivity.setter()
{
  return ShareCardViewModel.shouldShowEndActivity.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*ShareCardViewModel.shouldShowEndActivity.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for ShareCardViewModel.$shouldShowEndActivity : ShareCardViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 312))(v7);
}

uint64_t ShareCardViewModel.$shouldShowEndActivity.setter(uint64_t a1)
{
  return ShareCardViewModel.$shouldShowEndActivity.setter(a1);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v11 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  v8 = OUTLINED_FUNCTION_44_0();
  return v9(v8);
}

uint64_t ShareCardViewModel.$shouldShowEndActivity.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for ShareCardViewModel.shouldShowCollaboration : ShareCardViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result & 1;
  return result;
}

uint64_t (*ShareCardViewModel.shouldShowCollaboration.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for ShareCardViewModel.$shouldShowCollaboration : ShareCardViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 360))(v7);
}

uint64_t ShareCardViewModel.$shouldShowCollaboration.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

void ShareCardViewModel.$shouldShowEndActivity.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t ShareCardViewModel.shareScreenEnabled.getter()
{
  OUTLINED_FUNCTION_0_1();
  if ((*(v0 + 584))())
  {
    OUTLINED_FUNCTION_0_1();
    if (((*(v1 + 632))() & 1) == 0)
    {
      return 1;
    }
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v2 + 232))() & 1;
}

uint64_t key path getter for ShareCardViewModel.isAVLess : ShareCardViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result & 1;
  return result;
}

uint64_t (*ShareCardViewModel.isAVLess.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for ShareCardViewModel.$isAVLess : ShareCardViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 416))(v7);
}

uint64_t ShareCardViewModel.$isAVLess.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for ShareCardViewModel.activeCall : ShareCardViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ShareCardViewModel.activeCall : ShareCardViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 440);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ShareCardViewModel.activeCall.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_2();
  static Published.subscript.getter();

  return v1;
}

uint64_t ShareCardViewModel.activeCall.setter()
{
  OUTLINED_FUNCTION_55();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*ShareCardViewModel.activeCall.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return LinkDetailHeaderView.invitedMemberHandles.modify;
}

uint64_t key path setter for ShareCardViewModel.$activeCall : ShareCardViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit4Call_pSg_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 464))(v7);
}

uint64_t ShareCardViewModel.$activeCall.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit4Call_pSg_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit4Call_pSgGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_44_0();
  return v5(v4);
}

uint64_t ShareCardViewModel.$activeCall.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit4Call_pSg_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit4Call_pSgGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t ShareCardViewModel.askToShareScreenEnabled.getter()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 160))(ObjectType, v4);
    v2 = swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1 | (((*(*v0 + 384))(v2) & 1) == 0);
}

uint64_t key path getter for ShareCardViewModel.remoteParticipants : ShareCardViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ShareCardViewModel.remoteParticipants : ShareCardViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 496);

  return v2(v3);
}

uint64_t ShareCardViewModel.remoteParticipants.getter()
{
  return ShareCardViewModel.remoteParticipants.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_14();
  static Published.subscript.getter();

  return v1;
}

uint64_t ShareCardViewModel.remoteParticipants.setter()
{
  return ShareCardViewModel.remoteParticipants.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*ShareCardViewModel.remoteParticipants.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for ShareCardViewModel.$remoteParticipants : ShareCardViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15ConversationKit11ParticipantVG_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 520))(v7);
}

uint64_t ShareCardViewModel.$remoteParticipants.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15ConversationKit11ParticipantVG_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15ConversationKit11ParticipantVGGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_44_0();
  return v5(v4);
}

uint64_t ShareCardViewModel.$remoteParticipants.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15ConversationKit11ParticipantVG_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15ConversationKit11ParticipantVGGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for ShareCardViewModel.remoteParticipantHandles : ShareCardViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ShareCardViewModel.remoteParticipantHandles : ShareCardViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 544);

  return v2(v3);
}

uint64_t (*ShareCardViewModel.remoteParticipantHandles.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for ShareCardViewModel.$remoteParticipantHandles : ShareCardViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCG_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 568))(v7);
}

uint64_t ShareCardViewModel.$remoteParticipantHandles.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCG_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_44_0();
  return v5(v4);
}

uint64_t ShareCardViewModel.$remoteParticipantHandles.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCG_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for ShareCardViewModel.screenSharingAvailable : ShareCardViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 584))();
  *a2 = result & 1;
  return result;
}

uint64_t (*ShareCardViewModel.screenSharingAvailable.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for ShareCardViewModel.$screenSharingAvailable : ShareCardViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 616))(v7);
}

uint64_t ShareCardViewModel.$screenSharingAvailable.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for ShareCardViewModel.screenCaptured : ShareCardViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 632))();
  *a2 = result & 1;
  return result;
}

uint64_t (*ShareCardViewModel.screenCaptured.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for ShareCardViewModel.$screenCaptured : ShareCardViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 664))(v7);
}

uint64_t ShareCardViewModel.$shouldShowEndActivity.getter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_55_2();
  return swift_endAccess();
}

uint64_t ShareCardViewModel.$screenCaptured.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

void ShareCardViewModel.init(didTapScreenShareButton:didTapAskToScreenShareButton:didTapCollaborateButton:didTapEndSharePlay:)()
{
  OUTLINED_FUNCTION_29();
  v56 = v2;
  v57 = v3;
  v54 = v4;
  v55 = v5;
  v52 = v6;
  v53 = v7;
  v50 = v8;
  v51 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGGMd);
  OUTLINED_FUNCTION_1();
  v48 = v11;
  v49 = v10;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_1();
  v47 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15ConversationKit11ParticipantVGGMd);
  OUTLINED_FUNCTION_1();
  v45 = v15;
  v46 = v14;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit4Call_pSgGMd);
  OUTLINED_FUNCTION_1();
  v20 = v19;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_140_0();
  swift_unknownObjectWeakInit();
  LOBYTE(v58) = 0;
  Published.init(initialValue:)();
  v28 = *(v26 + 32);
  v29 = OUTLINED_FUNCTION_56_9();
  v28(v29);
  OUTLINED_FUNCTION_57_9();
  Published.init(initialValue:)();
  v30 = OUTLINED_FUNCTION_56_9();
  v28(v30);
  OUTLINED_FUNCTION_57_9();
  Published.init(initialValue:)();
  v31 = OUTLINED_FUNCTION_56_9();
  v28(v31);
  v32 = OBJC_IVAR____TtC15ConversationKit18ShareCardViewModel__activeCall;
  v58 = 0;
  v59 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pSgMd);
  Published.init(initialValue:)();
  (*(v20 + 32))(&v0[v32], v23, v44);
  v33 = OBJC_IVAR____TtC15ConversationKit18ShareCardViewModel__remoteParticipants;
  v34 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ParticipantVGMd);
  Published.init(initialValue:)();
  (*(v45 + 32))(&v0[v33], v18, v46);
  if (specialized Array.count.getter(v34))
  {
    v35 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8TUHandleC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CD0];
  }

  v36 = OBJC_IVAR____TtC15ConversationKit18ShareCardViewModel__remoteParticipantHandles;
  v58 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8TUHandleCGMd);
  v37 = v47;
  Published.init(initialValue:)();
  (*(v48 + 32))(&v0[v36], v37, v49);
  v38 = OBJC_IVAR____TtC15ConversationKit18ShareCardViewModel__screenSharingAvailable;
  LOBYTE(v58) = 0;
  Published.init(initialValue:)();
  (v28)(&v0[v38], v1, v24);
  v39 = OBJC_IVAR____TtC15ConversationKit18ShareCardViewModel__screenCaptured;
  OUTLINED_FUNCTION_57_9();
  Published.init(initialValue:)();
  (v28)(&v0[v39], v1, v24);
  v40 = v51;
  *(v0 + 3) = v50;
  *(v0 + 4) = v40;
  v41 = v53;
  *(v0 + 5) = v52;
  *(v0 + 6) = v41;
  v42 = v55;
  *(v0 + 7) = v54;
  *(v0 + 8) = v42;
  v43 = v57;
  *(v0 + 9) = v56;
  *(v0 + 10) = v43;
  OUTLINED_FUNCTION_30_0();
}

void ShareCardViewModel.configure(with:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v47 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_1_80();
  v6 = OUTLINED_FUNCTION_0_95();
  v7(v6);
  OUTLINED_FUNCTION_87_0();
  (*(v8 + 288))(v9 & 1);
  OUTLINED_FUNCTION_1_80();
  v10 = OUTLINED_FUNCTION_0_95();
  v11(v10);
  OUTLINED_FUNCTION_87_0();
  (*(v12 + 336))(v13 & 1);
  OUTLINED_FUNCTION_1_80();
  v14 = OUTLINED_FUNCTION_0_95();
  v15(v14);
  OUTLINED_FUNCTION_87_0();
  (*(v16 + 496))();
  OUTLINED_FUNCTION_1_80();
  v17 = OUTLINED_FUNCTION_0_95();
  v18(v17);
  OUTLINED_FUNCTION_87_0();
  (*(v19 + 392))(v20 & 1);
  OUTLINED_FUNCTION_1_80();
  v21 = OUTLINED_FUNCTION_0_95();
  v22(v21);
  OUTLINED_FUNCTION_87_0();
  (*(v23 + 440))();
  OUTLINED_FUNCTION_1_80();
  v24 = OUTLINED_FUNCTION_0_95();
  v25(v24);
  v27 = v26;
  ObjectType = swift_getObjectType();
  v29 = (*(v27 + 192))(ObjectType, v27);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_87_0();
  (*(v30 + 544))(v29);
  OUTLINED_FUNCTION_1_80();
  v31 = OUTLINED_FUNCTION_0_95();
  v49 = v32(v31);
  v33 = (*(*v0 + 624))(v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
  Publisher<>.assign(to:)();

  v33(v48, 0);
  v34 = *MEMORY[0x1E69DE370];
  v35 = [objc_opt_self() mainScreen];
  v36 = [v35 isCaptured];

  v48[0] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  swift_allocObject();
  v37 = CurrentValueSubject.init(_:)();
  v38 = [objc_opt_self() defaultCenter];
  OUTLINED_FUNCTION_78_5(v34);
  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = closure #1 in ShareCardViewModel.configure(with:);
  v39[4] = 0;
  OUTLINED_FUNCTION_25_30();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(v40, v41);

  Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v1, v47);

  v49 = v37;
  v42 = (*(*v2 + 672))(v48);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  OUTLINED_FUNCTION_40_2();
  Publisher<>.assign(to:)();

  v42(v48, 0);
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, &static Logger.conversationControls);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 67109120;
    *(v46 + 4) = (*(*v2 + 376))() & 1;

    _os_log_impl(&dword_1BBC58000, v44, v45, "ShareCardControlsView: shareScreenEnabled: %{BOOL}d", v46, 8u);
    MEMORY[0x1BFB23DF0](v46, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ShareCardViewModel.configure(with:)(unsigned __int8 *a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  v3 = [v2 isCaptured];

  *a1 = v3;
}

uint64_t ShareCardViewModel.deinit()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  v1 = OBJC_IVAR____TtC15ConversationKit18ShareCardViewModel__shouldShowEndActivity;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v5 = OUTLINED_FUNCTION_3_20(OBJC_IVAR____TtC15ConversationKit18ShareCardViewModel__shouldShowCollaboration);
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_3_20(OBJC_IVAR____TtC15ConversationKit18ShareCardViewModel__isAVLess);
  (v4)(v6);
  v7 = OBJC_IVAR____TtC15ConversationKit18ShareCardViewModel__activeCall;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit4Call_pSgGMd);
  OUTLINED_FUNCTION_15_1();
  (*(v8 + 8))(v0 + v7);
  v9 = OBJC_IVAR____TtC15ConversationKit18ShareCardViewModel__remoteParticipants;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15ConversationKit11ParticipantVGGMd);
  OUTLINED_FUNCTION_15_1();
  (*(v10 + 8))(v0 + v9);
  v11 = OBJC_IVAR____TtC15ConversationKit18ShareCardViewModel__remoteParticipantHandles;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGGMd);
  OUTLINED_FUNCTION_15_1();
  (*(v12 + 8))(v0 + v11);
  v13 = OUTLINED_FUNCTION_3_20(OBJC_IVAR____TtC15ConversationKit18ShareCardViewModel__screenSharingAvailable);
  (v4)(v13);
  v14 = OUTLINED_FUNCTION_3_20(OBJC_IVAR____TtC15ConversationKit18ShareCardViewModel__screenCaptured);
  (v4)(v14);
  return v0;
}

uint64_t ShareCardViewModel.__deallocating_deinit()
{
  ShareCardViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ShareCardViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ShareCardViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id ConversationControlsManager.shouldShowEndActivity.getter()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x980))(v7);
  v1 = v8;
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v2 = OUTLINED_FUNCTION_44_0();
    v4 = v3(v2);
    if (v4)
    {
      v5 = v4;
      v1 = [v4 shouldShowEndActivity];

      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v7);
      return 0;
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v7, &_s15ConversationKit8Activity_pSgMd);
  }

  return v1;
}

uint64_t ConversationControlsManager.shouldShowCollaboration.getter()
{
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA00))(v5);
  swift_storeEnumTagMultiPayload();
  v6 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)();
  _s15ConversationKit11ParticipantVWOhTm_8(v3, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  v7 = OUTLINED_FUNCTION_40_2();
  _s15ConversationKit11ParticipantVWOhTm_8(v7, v8);
  if (v6)
  {
    v9 = ConversationControlsManager.shouldShowEndActivity.getter() ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL @objc TUConversationActivitySession.shouldShowEndActivity.getter(void *a1)
{
  v1 = a1;
  v2 = TUConversationActivitySession.shouldShowEndActivity.getter();

  return v2;
}

BOOL TUConversationActivitySession.shouldShowEndActivity.getter()
{
  if ([v0 state] != 1)
  {
    return 0;
  }

  TUConversationActivitySession.generateType.getter(&v2);
  return v2 != 6;
}

uint64_t ShareCardControlsView.shareCardViewModel.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for ShareCardControlsView(0);
  type metadata accessor for ShareCardViewModel(0);
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type ShareCardViewModel and conformance ShareCardViewModel, type metadata accessor for ShareCardViewModel);
  v1 = OUTLINED_FUNCTION_46();

  return a1(v1);
}

uint64_t closure #1 in button #1 (title:) in ShareCardControlsView.shareScreenButton(tightLayout:)()
{
  type metadata accessor for ShareCardControlsView(0);
  type metadata accessor for ShareCardViewModel(0);
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type ShareCardViewModel and conformance ShareCardViewModel, type metadata accessor for ShareCardViewModel);
  v0 = *(StateObject.wrappedValue.getter() + 24);

  v0(v1);
}

uint64_t closure #1 in ShareCardControlsView.shareScreenButton(tightLayout:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v75) = a2;
  v81 = a3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGG_ALtGMd);
  MEMORY[0x1EEE9AC00](v80);
  v71 = &v65[-v4];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA9TupleViewVyAN_ANtG_GMd);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v65[-v5];
  v6 = type metadata accessor for ShareCardControlsView(0);
  v74 = *(v6 - 8);
  v7 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v65[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
  MEMORY[0x1EEE9AC00](v85);
  v70 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v65[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v65[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65[-v14];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  LODWORD(v72) = (*(*static Defaults.shared + 168))();
  v16 = (a1 + *(v6 + 20));
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  v20 = type metadata accessor for ShareCardViewModel(0);
  v21 = _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type ShareCardViewModel and conformance ShareCardViewModel, type metadata accessor for ShareCardViewModel);
  v22 = StateObject.wrappedValue.getter();
  v73 = (*(*v22 + 240))(v22);
  v24 = v23;

  v76 = v24;

  v77 = v17;
  v84 = v18;
  v83 = v19;
  v86 = v20;
  v82 = v21;
  v25 = *StateObject.wrappedValue.getter();
  v26 = (*(v25 + 256))();
  v28 = v27;

  outlined init with copy of ShareCardButton();
  v29 = ((*(v74 + 80) + 16) & ~*(v74 + 80)) + v7;
  v30 = v75 & 1;
  if (v72)
  {
    v31 = swift_allocObject();
    outlined init with take of ShareCardButton();
    v32 = v76;
    *v15 = v73;
    *(v15 + 1) = v32;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 4) = v26;
    *(v15 + 5) = v28;
    v15[48] = v30;
    *(v15 + 7) = closure #1 in button #1 (title:) in ShareCardControlsView.shareScreenButton(tightLayout:)partial apply;
    *(v15 + 8) = v31;
    v33 = *(type metadata accessor for ShareCardButton(0) + 36);
    *&v15[v33] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
    swift_storeEnumTagMultiPayload();
    v34 = *StateObject.wrappedValue.getter();
    LOBYTE(v33) = (*(v34 + 376))();

    KeyPath = swift_getKeyPath();
    v36 = swift_allocObject();
    *(v36 + 16) = (v33 & 1) == 0;

    v37 = &v15[*(v85 + 36)];
    *v37 = KeyPath;
    v37[1] = closure #1 in View.disabled(_:)partial apply;
    v37[2] = v36;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v15, v79, &_s7SwiftUI15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGG_ALtGMd);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v72 = a1;
    v74 = v29;
    v38 = swift_allocObject();
    v75 = type metadata accessor for ShareCardControlsView;
    outlined init with take of ShareCardButton();
    v39 = v76;
    *v15 = v73;
    *(v15 + 1) = v39;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 4) = v26;
    *(v15 + 5) = v28;
    v15[48] = v30;
    *(v15 + 7) = partial apply for closure #1 in button #1 (title:) in ShareCardControlsView.shareScreenButton(tightLayout:);
    *(v15 + 8) = v38;
    v73 = type metadata accessor for ShareCardButton(0);
    v40 = *(v73 + 36);
    *&v15[v40] = swift_getKeyPath();
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
    swift_storeEnumTagMultiPayload();
    v66 = v30;
    v41 = *StateObject.wrappedValue.getter();
    v42 = (*(v41 + 376))();

    v43 = swift_getKeyPath();
    v44 = swift_allocObject();
    *(v44 + 16) = (v42 & 1) == 0;

    v45 = &v15[*(v85 + 36)];
    *v45 = v43;
    v45[1] = closure #1 in View.disabled(_:)partial apply;
    v45[2] = v44;
    v46 = StateObject.wrappedValue.getter();
    v76 = (*(*v46 + 248))(v46);
    v48 = v47;

    v49 = *StateObject.wrappedValue.getter();
    v50 = (*(v49 + 256))();
    v52 = v51;

    outlined init with copy of ShareCardButton();
    v53 = swift_allocObject();
    outlined init with take of ShareCardButton();
    v54 = v68;
    *v68 = v76;
    *(v54 + 8) = v48;
    *(v54 + 16) = 0;
    *(v54 + 24) = 0;
    *(v54 + 32) = v50;
    *(v54 + 40) = v52;
    *(v54 + 48) = v66;
    *(v54 + 56) = closure #1 in button #1 (title:) in ShareCardControlsView.shareScreenButton(tightLayout:)partial apply;
    *(v54 + 64) = v53;
    v55 = *(v73 + 36);
    *(v54 + v55) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v56 = *StateObject.wrappedValue.getter();
    LOBYTE(v55) = (*(v56 + 376))();

    v57 = swift_getKeyPath();
    v58 = swift_allocObject();
    *(v58 + 16) = (v55 & 1) == 0;

    v59 = (v54 + *(v85 + 36));
    *v59 = v57;
    v59[1] = closure #1 in View.disabled(_:)partial apply;
    v59[2] = v58;
    v60 = v69;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v15, v69, &_s7SwiftUI15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    v61 = v70;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v54, v70, &_s7SwiftUI15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    v62 = v71;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v60, v71, &_s7SwiftUI15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AJtMd);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v61, &v62[*(v63 + 48)], &_s7SwiftUI15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    outlined destroy of CallControlsService?(v61, &_s7SwiftUI15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    outlined destroy of CallControlsService?(v60, &_s7SwiftUI15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v62, v79, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGG_ALtGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGG_ALtGMd);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of CallControlsService?(v62, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGG_ALtGMd);
    outlined destroy of CallControlsService?(v54, &_s7SwiftUI15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
  }

  return outlined destroy of CallControlsService?(v15, &_s7SwiftUI15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
}

uint64_t ShareCardControlsView.askToShareScreenMenu(participants:participantHandles:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ShareCardControlsView(0);
  type metadata accessor for ShareCardViewModel(0);
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type ShareCardViewModel and conformance ShareCardViewModel, type metadata accessor for ShareCardViewModel);
  v5 = *StateObject.wrappedValue.getter();
  v6 = (*(v5 + 264))();
  v8 = v7;

  v9 = StateObject.wrappedValue.getter();
  v10 = *(v9 + 40);
  v11 = *(v9 + 48);

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 1;
  *(a3 + 56) = a1;
  *(a3 + 64) = a2;
  *(a3 + 72) = v10;
  *(a3 + 80) = v11;
  v12 = *(type metadata accessor for ShareCardMenuButton(0) + 44);
  *(a3 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  swift_storeEnumTagMultiPayload();

  v13 = *StateObject.wrappedValue.getter();
  v14 = (*(v13 + 480))();

  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = (v14 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit19ShareCardMenuButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v18 = (a3 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = closure #1 in View.disabled(_:)partial apply;
  v18[2] = v16;
  return result;
}

uint64_t closure #1 in ShareCardControlsView.topShelfButtons(tightLayout:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v94 = a3;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA0G8ThatFitsVyACyAA08ModifiedD0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAU_GMd);
  MEMORY[0x1EEE9AC00](v91);
  v93 = v74 - v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D8ThatFitsVyAA19_ConditionalContentVyAA08ModifiedH0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAP_APtGGG_AIyAJ0lm4MenuN0VAOGtGMd);
  MEMORY[0x1EEE9AC00](v92);
  v80 = v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit19ShareCardMenuButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v77 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v79 = v74 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ViewThatFitsVyAA19_ConditionalContentVyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA05TupleC0VyAN_ANtGGGMd);
  MEMORY[0x1EEE9AC00](v90);
  v81 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v82 = v74 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v76 = v74 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v75 = v74 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v78 = v74 - v18;
  v19 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v74[2] = v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v74 - v25;
  v27 = *(type metadata accessor for ShareCardControlsView(0) + 20);
  v84 = a1;
  v28 = (a1 + v27);
  v29 = *v28;
  v30 = v28[1];
  v31 = *(v28 + 16);
  v32 = type metadata accessor for ShareCardViewModel(0);
  v33 = _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type ShareCardViewModel and conformance ShareCardViewModel, type metadata accessor for ShareCardViewModel);
  v88 = v30;
  v89 = v29;
  v87 = v31;
  v86 = v32;
  v85 = v33;
  v34 = *StateObject.wrappedValue.getter();
  v35 = (*(v34 + 488))();

  v36 = 0;
  v37 = *(v35 + 16);
  v95 = MEMORY[0x1E69E7CC0];
  while (v37 != v36)
  {
    if (v36 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    outlined init with copy of ShareCardButton();
    outlined init with copy of ShareCardButton();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 4u:
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v40 = *(v39 + 48);
        outlined consume of Participant.CopresenceInfo?(*&v21[*(v39 + 64)], *&v21[*(v39 + 64) + 8]);
        outlined destroy of Participant.MediaInfo(&v21[v40]);
        v41 = type metadata accessor for Date();
        (*(*(v41 - 8) + 8))(v21, v41);
        outlined init with take of ShareCardButton();
        v42 = v95;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v96 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v42 = v96;
        }

        v44 = *(v42 + 16);
        v45 = v44 + 1;
        if (v44 >= *(v42 + 24) >> 1)
        {
          v95 = v44 + 1;
          v74[1] = v44;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v45 = v95;
          v42 = v96;
        }

        ++v36;
        *(v42 + 16) = v45;
        v95 = v42;
        outlined init with take of ShareCardButton();
        break;
      case 6u:
        goto LABEL_6;
      default:
        v38 = type metadata accessor for Date();
        (*(*(v38 - 8) + 8))(v21, v38);
LABEL_6:
        _s15ConversationKit11ParticipantVWOhTm_8(v26, type metadata accessor for Participant);
        ++v36;
        break;
    }
  }

  v46 = *StateObject.wrappedValue.getter();
  v21 = (*(v46 + 536))();

  if (one-time initialization token for shared == -1)
  {
    goto LABEL_13;
  }

LABEL_29:
  swift_once();
LABEL_13:
  v47 = (*(*static Defaults.shared + 168))();
  v48 = v95;
  if (v47 & 1) != 0 && (*(v95 + 16) || (v63 = *StateObject.wrappedValue.getter(), v64 = (*(v63 + 480))(), , (v64) && (specialized Set.isEmpty.getter(v21) & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BAA20;
    v50 = static Axis.Set.horizontal.getter();
    *(inited + 32) = v50;
    v51 = static Axis.Set.vertical.getter();
    *(inited + 33) = v51;
    v52 = Axis.Set.init(rawValue:)();
    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v50)
    {
      v52 = Axis.Set.init(rawValue:)();
    }

    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v51)
    {
      v52 = Axis.Set.init(rawValue:)();
    }

    v53 = v84;
    v54 = v75;
    *v75 = v52;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA16_SizeFittingRootVAA19_ConditionalContentVyAA08ModifiedJ0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA05TupleD0VyAR_ARtGGGMd);
    closure #1 in ShareCardControlsView.shareScreenButton(tightLayout:)(v53, 0, v54 + *(v55 + 44));
    v56 = v78;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v54, v78, &_s7SwiftUI12ViewThatFitsVyAA19_ConditionalContentVyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA05TupleC0VyAN_ANtGGGMd);
    v57 = v79;
    ShareCardControlsView.askToShareScreenMenu(participants:participantHandles:)(v48, v21, v79);

    v58 = v76;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v56, v76, &_s7SwiftUI12ViewThatFitsVyAA19_ConditionalContentVyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA05TupleC0VyAN_ANtGGGMd);
    v59 = v77;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v57, v77, &_s7SwiftUI15ModifiedContentVy15ConversationKit19ShareCardMenuButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    v60 = v80;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v58, v80, &_s7SwiftUI12ViewThatFitsVyAA19_ConditionalContentVyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA05TupleC0VyAN_ANtGGGMd);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ViewThatFitsVyAA19_ConditionalContentVyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA05TupleC0VyAN_ANtGGG_AGyAH0kl4MenuM0VAMGtMd);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v59, v60 + *(v61 + 48), &_s7SwiftUI15ModifiedContentVy15ConversationKit19ShareCardMenuButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    outlined destroy of CallControlsService?(v59, &_s7SwiftUI15ModifiedContentVy15ConversationKit19ShareCardMenuButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    outlined destroy of CallControlsService?(v58, &_s7SwiftUI12ViewThatFitsVyAA19_ConditionalContentVyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA05TupleC0VyAN_ANtGGGMd);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v60, v93, &_s7SwiftUI9TupleViewVyAA0D8ThatFitsVyAA19_ConditionalContentVyAA08ModifiedH0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAP_APtGGG_AIyAJ0lm4MenuN0VAOGtGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D8ThatFitsVyAA19_ConditionalContentVyAA08ModifiedH0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAP_APtGGG_AIyAJ0lm4MenuN0VAOGtGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>> and conformance ViewThatFits<A>, &_s7SwiftUI12ViewThatFitsVyAA19_ConditionalContentVyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA05TupleC0VyAN_ANtGGGMd);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of CallControlsService?(v60, &_s7SwiftUI9TupleViewVyAA0D8ThatFitsVyAA19_ConditionalContentVyAA08ModifiedH0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAP_APtGGG_AIyAJ0lm4MenuN0VAOGtGMd);
    outlined destroy of CallControlsService?(v57, &_s7SwiftUI15ModifiedContentVy15ConversationKit19ShareCardMenuButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    v62 = v56;
  }

  else
  {

    v65 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMd);
    v66 = swift_initStackObject();
    *(v66 + 16) = xmmword_1BC4BAA20;
    v67 = static Axis.Set.horizontal.getter();
    *(v66 + 32) = v67;
    v68 = static Axis.Set.vertical.getter();
    *(v66 + 33) = v68;
    v69 = Axis.Set.init(rawValue:)();
    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v67)
    {
      v69 = Axis.Set.init(rawValue:)();
    }

    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v68)
    {
      v69 = Axis.Set.init(rawValue:)();
    }

    v70 = v81;
    *v81 = v69;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA16_SizeFittingRootVAA19_ConditionalContentVyAA08ModifiedJ0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA05TupleD0VyAR_ARtGGGMd);
    closure #1 in ShareCardControlsView.shareScreenButton(tightLayout:)(v65, v83 & 1, v70 + *(v71 + 44));
    v72 = v82;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v70, v82, &_s7SwiftUI12ViewThatFitsVyAA19_ConditionalContentVyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA05TupleC0VyAN_ANtGGGMd);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v72, v93, &_s7SwiftUI12ViewThatFitsVyAA19_ConditionalContentVyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA05TupleC0VyAN_ANtGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D8ThatFitsVyAA19_ConditionalContentVyAA08ModifiedH0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAP_APtGGG_AIyAJ0lm4MenuN0VAOGtGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>> and conformance ViewThatFits<A>, &_s7SwiftUI12ViewThatFitsVyAA19_ConditionalContentVyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA05TupleC0VyAN_ANtGGGMd);
    _ConditionalContent<>.init(storage:)();
    v62 = v72;
  }

  return outlined destroy of CallControlsService?(v62, &_s7SwiftUI12ViewThatFitsVyAA19_ConditionalContentVyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA05TupleC0VyAN_ANtGGGMd);
}

uint64_t closure #1 in ShareCardControlsView.collaborateButton.getter()
{
  type metadata accessor for ShareCardControlsView(0);
  type metadata accessor for ShareCardViewModel(0);
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type ShareCardViewModel and conformance ShareCardViewModel, type metadata accessor for ShareCardViewModel);
  v0 = *(StateObject.wrappedValue.getter() + 56);

  v0(v1);
}

uint64_t closure #1 in ShareCardControlsView.endSharePlayButton.getter()
{
  type metadata accessor for ShareCardControlsView(0);
  type metadata accessor for ShareCardViewModel(0);
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type ShareCardViewModel and conformance ShareCardViewModel, type metadata accessor for ShareCardViewModel);
  v0 = *(StateObject.wrappedValue.getter() + 72);

  v0(v1);
}

uint64_t closure #1 in ShareCardControlsView.buttons.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA9TupleViewVyAA5GroupVyACyAGyAA0G8ThatFitsVyACyAA08ModifiedD0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAT_ATtGGG_AMyAN0no4MenuP0VASGtGAWGG_APtGA2_GA1__GMd);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v51 - v3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA5GroupVyACyAGyAA0G8ThatFitsVyACyAA08ModifiedD0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAT_ATtGGG_AMyAN0no4MenuP0VASGtGAWGG_APtGA2__GMd);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v51 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA5GroupVyACyAEyAA0F8ThatFitsVyACyAA08ModifiedD0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAEyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGG_ANtGA0_GMd);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v51 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA5GroupVyAA19_ConditionalContentVyACyAA0D8ThatFitsVyAGyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGG_ANtGMd);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v51 - v6;
  v7 = type metadata accessor for ShareCardControlsView(0);
  v53 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = v8;
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ShareCardButton(0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA0G8ThatFitsVyAEyAA08ModifiedE0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGGMd);
  MEMORY[0x1EEE9AC00](v64);
  v57 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  type metadata accessor for ShareCardViewModel(0);
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type ShareCardViewModel and conformance ShareCardViewModel, type metadata accessor for ShareCardViewModel);
  v17 = *StateObject.wrappedValue.getter();
  v18 = (*(v17 + 280))();

  if (v18)
  {
    v69 = v16;
    closure #1 in ShareCardControlsView.topShelfButtons(tightLayout:)(a1, 1, v16);
    v19 = StateObject.wrappedValue.getter();
    v20 = (*(*v19 + 224))(v19);
    v22 = v21;

    v23 = StateObject.wrappedValue.getter();
    v24 = (*(*v23 + 232))(v23);
    v26 = v25;

    outlined init with copy of ShareCardButton();
    v27 = swift_allocObject();
    outlined init with take of ShareCardButton();
    *v12 = v20;
    *(v12 + 1) = v22;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 4) = v24;
    *(v12 + 5) = v26;
    v12[48] = 1;
    *(v12 + 7) = partial apply for closure #1 in ShareCardControlsView.endSharePlayButton.getter;
    *(v12 + 8) = v27;
    v28 = *(v56 + 36);
    *&v12[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
    swift_storeEnumTagMultiPayload();
    v29 = v57;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v69, v57, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA0G8ThatFitsVyAEyAA08ModifiedE0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGGMd);
    v30 = v58;
    outlined init with copy of ShareCardButton();
    v31 = v62;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v29, v62, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA0G8ThatFitsVyAEyAA08ModifiedE0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA0G8ThatFitsVyAEyAA08ModifiedE0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGG_ANtMd);
    outlined init with copy of ShareCardButton();
    _s15ConversationKit11ParticipantVWOhTm_8(v30, type metadata accessor for ShareCardButton);
    outlined destroy of CallControlsService?(v29, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA0G8ThatFitsVyAEyAA08ModifiedE0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGGMd);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v31, v61, &_s7SwiftUI9TupleViewVyAA5GroupVyAA19_ConditionalContentVyACyAA0D8ThatFitsVyAGyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGG_ANtGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>>>, ShareCardButton)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA5GroupVyAA19_ConditionalContentVyACyAA0D8ThatFitsVyAGyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGG_ANtGMd);
    v32 = v63;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v32, v68, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA5GroupVyACyAEyAA0F8ThatFitsVyACyAA08ModifiedD0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAEyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGG_ANtGA0_GMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>>>, ShareCardButton)>, TupleView<(Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardBut();
    lazy protocol witness table accessor for type Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>>> and conformance <A> Group<A>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of CallControlsService?(v32, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA5GroupVyACyAEyAA0F8ThatFitsVyACyAA08ModifiedD0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAEyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGG_ANtGA0_GMd);
    outlined destroy of CallControlsService?(v31, &_s7SwiftUI9TupleViewVyAA5GroupVyAA19_ConditionalContentVyACyAA0D8ThatFitsVyAGyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGG_ANtGMd);
    _s15ConversationKit11ParticipantVWOhTm_8(v12, type metadata accessor for ShareCardButton);
    v33 = v69;
  }

  else
  {
    v34 = *StateObject.wrappedValue.getter();
    v35 = (*(v34 + 328))();

    if (v35)
    {
      v69 = v16;
      closure #1 in ShareCardControlsView.topShelfButtons(tightLayout:)(a1, 1, v16);
      v36 = StateObject.wrappedValue.getter();
      v37 = (*(*v36 + 208))(v36);
      v51 = v38;
      v52 = v37;

      v39 = StateObject.wrappedValue.getter();
      v40 = (*(*v39 + 216))(v39);
      v42 = v41;

      outlined init with copy of ShareCardButton();
      v43 = swift_allocObject();
      outlined init with take of ShareCardButton();
      v44 = v51;
      *v12 = v52;
      *(v12 + 1) = v44;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 4) = v40;
      *(v12 + 5) = v42;
      v12[48] = 1;
      *(v12 + 7) = partial apply for closure #1 in ShareCardControlsView.collaborateButton.getter;
      *(v12 + 8) = v43;
      v45 = *(v56 + 36);
      *&v12[v45] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
      swift_storeEnumTagMultiPayload();
      v46 = v57;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v69, v57, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA0G8ThatFitsVyAEyAA08ModifiedE0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGGMd);
      v47 = v58;
      outlined init with copy of ShareCardButton();
      v48 = v62;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v46, v62, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA0G8ThatFitsVyAEyAA08ModifiedE0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA0G8ThatFitsVyAEyAA08ModifiedE0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGG_ANtMd);
      outlined init with copy of ShareCardButton();
      _s15ConversationKit11ParticipantVWOhTm_8(v47, type metadata accessor for ShareCardButton);
      outlined destroy of CallControlsService?(v46, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA0G8ThatFitsVyAEyAA08ModifiedE0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGGMd);
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v48, v61, &_s7SwiftUI9TupleViewVyAA5GroupVyAA19_ConditionalContentVyACyAA0D8ThatFitsVyAGyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGG_ANtGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>>>, ShareCardButton)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA5GroupVyAA19_ConditionalContentVyACyAA0D8ThatFitsVyAGyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGG_ANtGMd);
      v49 = v63;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v49, v68, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA5GroupVyACyAEyAA0F8ThatFitsVyACyAA08ModifiedD0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAEyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGG_ANtGA0_GMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<TupleView<(Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>>>, ShareCardButton)>, TupleView<(Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardBut();
      lazy protocol witness table accessor for type Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>>> and conformance <A> Group<A>();
      v33 = v69;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of CallControlsService?(v49, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA5GroupVyACyAEyAA0F8ThatFitsVyACyAA08ModifiedD0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAEyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGG_ANtGA0_GMd);
      outlined destroy of CallControlsService?(v48, &_s7SwiftUI9TupleViewVyAA5GroupVyAA19_ConditionalContentVyACyAA0D8ThatFitsVyAGyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGG_ANtGMd);
      _s15ConversationKit11ParticipantVWOhTm_8(v12, type metadata accessor for ShareCardButton);
    }

    else
    {
      v33 = v16;
      closure #1 in ShareCardControlsView.topShelfButtons(tightLayout:)(a1, 0, v16);
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v16, v68, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA0G8ThatFitsVyAEyAA08ModifiedE0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<TupleView<(Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>>>, ShareCardButton)>, TupleView<(Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardBut();
      lazy protocol witness table accessor for type Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>>> and conformance <A> Group<A>();
      _ConditionalContent<>.init(storage:)();
    }
  }

  return outlined destroy of CallControlsService?(v33, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA0G8ThatFitsVyAEyAA08ModifiedE0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGGMd);
}

uint64_t ShareCardControlsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D8ThatFitsVyAIyAEy_AA01_G4RootVy15ConversationKit11SplitHStackVGAA5GroupVyAA19_ConditionalContentVyAUyAIyASyAUyAIyAKyAUyAA08ModifiedR0VyAN15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAIyA1__A1_tGGG_AWyAN0tu4MenuV0VA0_GtGA4_GG_AYtGA11_GA10_GGG_AA0F0VyA14_GtGG_AWyAA4TextVAA08_PaddingG0VGSgtGGMd);
  return closure #1 in ShareCardControlsView.body.getter(v1, a1 + *(v3 + 44));
}

uint64_t closure #1 in ShareCardControlsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v53 = type metadata accessor for Font.Leading();
  v3 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy15ConversationKit11SplitHStackVGAA5GroupVyAA19_ConditionalContentVyASyAEyAQyASyAEyACyASyAA08ModifiedQ0VyAL15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAEyA__A_tGGG_AUyAL0st4MenuU0VAZGtGA2_GG_AWtGA9_GA8_GGG_AA6VStackVyA12_GtGGMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  *v10 = static Axis.Set.horizontal.getter();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA16_SizeFittingRootVAA05TupleD0VyAEy_AA07_LayoutH0Vy15ConversationKit11SplitHStackVGAA5GroupVyAA19_ConditionalContentVyASyAIyAQyASyAIyAA0D8ThatFitsVyASyAA08ModifiedQ0VyAL15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAIyA1__A1_tGGG_AWyAL0uv4MenuW0VA0_GtGA4_GG_AYtGA11_GA10_GGG_AA6VStackVyA14_GtGGMd) + 44);
  v54 = v10;
  closure #1 in closure #1 in ShareCardControlsView.body.getter(a1, &v10[v11]);
  type metadata accessor for ShareCardControlsView(0);
  type metadata accessor for ShareCardViewModel(0);
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type ShareCardViewModel and conformance ShareCardViewModel, type metadata accessor for ShareCardViewModel);
  v12 = *StateObject.wrappedValue.getter();
  v13 = (*(v12 + 272))();
  v15 = v14;

  v16 = 0;
  if (!v15)
  {
    goto LABEL_7;
  }

  v17 = *StateObject.wrappedValue.getter();
  v18 = (*(v17 + 328))();

  if ((v18 & 1) == 0)
  {

LABEL_7:
    v30 = 0;
    v32 = 0;
    v36 = 0;
    v46 = 0;
    v45 = 0;
    v40 = 0;
    v42 = 0;
    v44 = 0;
    goto LABEL_8;
  }

  v58 = v13;
  v59 = v15;
  lazy protocol witness table accessor for type String and conformance String();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Font.caption.getter();
  v24 = v53;
  (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v53);
  Font.leading(_:)();

  (*(v3 + 8))(v5, v24);
  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;

  outlined consume of Text.Storage(v19, v21, v23 & 1);

  static Color.secondary.getter();
  v30 = Text.foregroundColor(_:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  outlined consume of Text.Storage(v25, v27, v29 & 1);

  v37 = static Edge.Set.top.getter();
  if (one-time initialization token for collaborateSubtitleBuffer != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v16 = v38;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  LOBYTE(v58) = v34 & 1;
  LOBYTE(__src[0]) = 0;
  v45 = v34 & 1;
  v46 = v37;
LABEL_8:
  v47 = v54;
  v48 = v55;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v54, v55, &_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy15ConversationKit11SplitHStackVGAA5GroupVyAA19_ConditionalContentVyASyAEyAQyASyAEyACyASyAA08ModifiedQ0VyAL15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAEyA__A_tGGG_AUyAL0st4MenuU0VAZGtGA2_GG_AWtGA9_GA8_GGG_AA6VStackVyA12_GtGGMd);
  v49 = v56;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v48, v56, &_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy15ConversationKit11SplitHStackVGAA5GroupVyAA19_ConditionalContentVyASyAEyAQyASyAEyACyASyAA08ModifiedQ0VyAL15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAEyA__A_tGGG_AUyAL0st4MenuU0VAZGtGA2_GG_AWtGA9_GA8_GGG_AA6VStackVyA12_GtGGMd);
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy15ConversationKit11SplitHStackVGAA5GroupVyAA19_ConditionalContentVyASyAEyAQyASyAEyACyASyAA08ModifiedQ0VyAL15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAEyA__A_tGGG_AUyAL0st4MenuU0VAZGtGA2_GG_AWtGA9_GA8_GGG_AA6VStackVyA12_GtGG_AUyAA4TextVAA08_PaddingI0VGSgtMd) + 48);
  __src[0] = v30;
  __src[1] = v32;
  __src[2] = v45;
  __src[3] = v36;
  __src[4] = v46;
  __src[5] = v16;
  __src[6] = v40;
  __src[7] = v42;
  __src[8] = v44;
  LOBYTE(__src[9]) = 0;
  memcpy((v49 + v50), __src, 0x49uLL);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(__src, &v58, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGSgMd);
  outlined destroy of CallControlsService?(v47, &_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy15ConversationKit11SplitHStackVGAA5GroupVyAA19_ConditionalContentVyASyAEyAQyASyAEyACyASyAA08ModifiedQ0VyAL15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAEyA__A_tGGG_AUyAL0st4MenuU0VAZGtGA2_GG_AWtGA9_GA8_GGG_AA6VStackVyA12_GtGGMd);
  v58 = v30;
  v59 = v32;
  v60 = v45;
  v61 = v36;
  v62 = v46;
  v63 = v16;
  v64 = v40;
  v65 = v42;
  v66 = v44;
  v67 = 0;
  outlined destroy of CallControlsService?(&v58, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGSgMd);
  return outlined destroy of CallControlsService?(v48, &_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy15ConversationKit11SplitHStackVGAA5GroupVyAA19_ConditionalContentVyASyAEyAQyASyAEyACyASyAA08ModifiedQ0VyAL15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAEyA__A_tGGG_AUyAL0st4MenuU0VAZGtGA2_GG_AWtGA9_GA8_GGG_AA6VStackVyA12_GtGGMd);
}

uint64_t closure #1 in closure #1 in ShareCardControlsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA5GroupVyAA19_ConditionalContentVyAGyAA9TupleViewVyAEyAGyAIyAA0H8ThatFitsVyAGyAA08ModifiedF0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAIyAT_ATtGGG_AMyAN0no4MenuP0VASGtGAWGG_APtGA2_GA1_GGGMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy15ConversationKit11SplitHStackVGAA5GroupVyAA19_ConditionalContentVyAOyAA05TupleD0VyAMyAOyAQyAA0D8ThatFitsVyAOyAA08ModifiedN0VyAH15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAQyA__A_tGGG_AUyAH0st4MenuU0VAZGtGA2_GG_AWtGA9_GA8_GGGMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  closure #1 in ShareCardControlsView.buttons.getter(a1, &v19 - v14);
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA5GroupVyAA19_ConditionalContentVyAKyAA05TupleD0VyAIyAKyAMyAA0D8ThatFitsVyAKyAA08ModifiedJ0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAMyAX_AXtGGG_AQyAR0qr4MenuS0VAWGtGA_GG_ATtGA6_GA5_GGGMd);
  closure #1 in ShareCardControlsView.buttons.getter(a1, &v9[*(v16 + 44)]);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v15, v12, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy15ConversationKit11SplitHStackVGAA5GroupVyAA19_ConditionalContentVyAOyAA05TupleD0VyAMyAOyAQyAA0D8ThatFitsVyAOyAA08ModifiedN0VyAH15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAQyA__A_tGGG_AUyAH0st4MenuU0VAZGtGA2_GG_AWtGA9_GA8_GGGMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v9, v6, &_s7SwiftUI6VStackVyAA5GroupVyAA19_ConditionalContentVyAGyAA9TupleViewVyAEyAGyAIyAA0H8ThatFitsVyAGyAA08ModifiedF0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAIyAT_ATtGGG_AMyAN0no4MenuP0VASGtGAWGG_APtGA2_GA1_GGGMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v12, a2, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy15ConversationKit11SplitHStackVGAA5GroupVyAA19_ConditionalContentVyAOyAA05TupleD0VyAMyAOyAQyAA0D8ThatFitsVyAOyAA08ModifiedN0VyAH15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAQyA__A_tGGG_AUyAH0st4MenuU0VAZGtGA2_GG_AWtGA9_GA8_GGGMd);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy15ConversationKit11SplitHStackVGAA5GroupVyAA19_ConditionalContentVyAOyAA05TupleD0VyAMyAOyAQyAA0D8ThatFitsVyAOyAA08ModifiedN0VyAH15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAQyA__A_tGGG_AUyAH0st4MenuU0VAZGtGA2_GG_AWtGA9_GA8_GGG_AA6VStackVyA12_GtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v6, a2 + *(v17 + 48), &_s7SwiftUI6VStackVyAA5GroupVyAA19_ConditionalContentVyAGyAA9TupleViewVyAEyAGyAIyAA0H8ThatFitsVyAGyAA08ModifiedF0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAIyAT_ATtGGG_AMyAN0no4MenuP0VASGtGAWGG_APtGA2_GA1_GGGMd);
  outlined destroy of CallControlsService?(v9, &_s7SwiftUI6VStackVyAA5GroupVyAA19_ConditionalContentVyAGyAA9TupleViewVyAEyAGyAIyAA0H8ThatFitsVyAGyAA08ModifiedF0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAIyAT_ATtGGG_AMyAN0no4MenuP0VASGtGAWGG_APtGA2_GA1_GGGMd);
  outlined destroy of CallControlsService?(v15, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy15ConversationKit11SplitHStackVGAA5GroupVyAA19_ConditionalContentVyAOyAA05TupleD0VyAMyAOyAQyAA0D8ThatFitsVyAOyAA08ModifiedN0VyAH15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAQyA__A_tGGG_AUyAH0st4MenuU0VAZGtGA2_GG_AWtGA9_GA8_GGGMd);
  outlined destroy of CallControlsService?(v6, &_s7SwiftUI6VStackVyAA5GroupVyAA19_ConditionalContentVyAGyAA9TupleViewVyAEyAGyAIyAA0H8ThatFitsVyAGyAA08ModifiedF0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAIyAT_ATtGGG_AMyAN0no4MenuP0VASGtGAWGG_APtGA2_GA1_GGGMd);
  return outlined destroy of CallControlsService?(v12, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy15ConversationKit11SplitHStackVGAA5GroupVyAA19_ConditionalContentVyAOyAA05TupleD0VyAMyAOyAQyAA0D8ThatFitsVyAOyAA08ModifiedN0VyAH15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAQyA__A_tGGG_AUyAH0st4MenuU0VAZGtGA2_GG_AWtGA9_GA8_GGGMd);
}

uint64_t partial apply for closure #1 in ShareCardButton.body.getter()
{
  v1 = type metadata accessor for ShareCardButton(0);
  v2 = OUTLINED_FUNCTION_22(v1);
  return (*(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 56))(v2);
}

void ShareCardButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_79_6(v2, v3, v4, v5);
  OUTLINED_FUNCTION_1();
  v44 = v7;
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v43 = v9 - v8;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for Font.Leading();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_24();
  v11 = type metadata accessor for BorderedProminentButtonStyle();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for PrimitiveButtonStyleConfiguration();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_58_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA0hiG13ConfigurationV5LabelVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGASyAA4FontVSgGGASySiSgGGASyAA08AnyShapeG0VSgGGMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_45_14();
  v19(v18);
  Button<>.init(_:)();
  BorderedProminentButtonStyle.init()();
  OUTLINED_FUNCTION_1_9();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v20, &_s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMd);
  OUTLINED_FUNCTION_26_28();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(v21, v22);
  OUTLINED_FUNCTION_309();
  View.buttonStyle<A>(_:)();
  (*(v13 + 8))(v0, v11);
  v23 = OUTLINED_FUNCTION_38_2();
  v24(v23);
  v25 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA0hiG13ConfigurationV5LabelVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd) + 36));
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd) + 28);
  v27 = *MEMORY[0x1E697DC10];
  type metadata accessor for ControlSize();
  OUTLINED_FUNCTION_7_0();
  (*(v28 + 104))(v25 + v26, v27);
  *v25 = swift_getKeyPath();
  static Font.body.getter();
  v29 = OUTLINED_FUNCTION_53_11();
  v30(v29);
  v31 = Font.leading(_:)();

  v32 = OUTLINED_FUNCTION_76_5();
  v33(v32);
  KeyPath = swift_getKeyPath();
  v35 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA0hiG13ConfigurationV5LabelVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGASyAA4FontVSgGGMd) + 36));
  *v35 = KeyPath;
  v35[1] = v31;
  swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA0hiG13ConfigurationV5LabelVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGASyAA4FontVSgGGASySiSgGGMd);
  OUTLINED_FUNCTION_62_7(v36);
  v37 = [objc_opt_self() labelColor];
  v38 = [v37 colorWithAlphaComponent_];

  Color.init(uiColor:)();
  swift_getKeyPath();
  v39 = AnyShapeStyle.init<A>(_:)();
  OUTLINED_FUNCTION_65_7(v39);
  if ((v40 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    OUTLINED_FUNCTION_77_7();

    EnvironmentValues.init()();
    OUTLINED_FUNCTION_44_0();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v46);
    (*(v44 + 8))(v43, v45);
    if (v48 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    static Color.black.getter();
    goto LABEL_6;
  }

  if (v46)
  {
    goto LABEL_5;
  }

LABEL_3:
  static Color.secondary.getter();
LABEL_6:
  swift_getKeyPath();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v1, v47, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA0hiG13ConfigurationV5LabelVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGASyAA4FontVSgGGASySiSgGGASyAA08AnyShapeG0VSgGGMd);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA0hiG13ConfigurationV5LabelVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGASyAA4FontVSgGGASySiSgGGASyAA08AnyShapeG0VSgGGASyAA5ColorVSgGGMd);
  OUTLINED_FUNCTION_73_6(v42);
  OUTLINED_FUNCTION_30_0();
}

void ShareCardMenuStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_79_6(v2, v3, v4, v5);
  OUTLINED_FUNCTION_1();
  v44 = v7;
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v43 = v9 - v8;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for Font.Leading();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_24();
  v11 = type metadata accessor for BorderedProminentButtonStyle();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for MenuStyleConfiguration();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA0C18StyleConfigurationV5LabelVAE7ContentVGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_58_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA4MenuVyAA0jG13ConfigurationV5LabelVAK0D0VG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAUyAA4FontVSgGGAUySiSgGGAUyAA08AnyShapeG0VSgGGMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_45_14();
  v19(v18);
  Menu<>.init(_:)();
  BorderedProminentButtonStyle.init()();
  OUTLINED_FUNCTION_4_94();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v20, &_s7SwiftUI4MenuVyAA0C18StyleConfigurationV5LabelVAE7ContentVGMd);
  OUTLINED_FUNCTION_26_28();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(v21, v22);
  OUTLINED_FUNCTION_309();
  View.buttonStyle<A>(_:)();
  (*(v13 + 8))(v0, v11);
  v23 = OUTLINED_FUNCTION_38_2();
  v24(v23);
  v25 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA4MenuVyAA0jG13ConfigurationV5LabelVAK0D0VG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd) + 36));
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd) + 28);
  v27 = *MEMORY[0x1E697DC10];
  type metadata accessor for ControlSize();
  OUTLINED_FUNCTION_7_0();
  (*(v28 + 104))(v25 + v26, v27);
  *v25 = swift_getKeyPath();
  static Font.body.getter();
  v29 = OUTLINED_FUNCTION_53_11();
  v30(v29);
  v31 = Font.leading(_:)();

  v32 = OUTLINED_FUNCTION_76_5();
  v33(v32);
  KeyPath = swift_getKeyPath();
  v35 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA4MenuVyAA0jG13ConfigurationV5LabelVAK0D0VG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAUyAA4FontVSgGGMd) + 36));
  *v35 = KeyPath;
  v35[1] = v31;
  swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA4MenuVyAA0jG13ConfigurationV5LabelVAK0D0VG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAUyAA4FontVSgGGAUySiSgGGMd);
  OUTLINED_FUNCTION_62_7(v36);
  v37 = [objc_opt_self() labelColor];
  v38 = [v37 colorWithAlphaComponent_];

  Color.init(uiColor:)();
  swift_getKeyPath();
  v39 = AnyShapeStyle.init<A>(_:)();
  OUTLINED_FUNCTION_65_7(v39);
  if ((v40 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    OUTLINED_FUNCTION_77_7();

    EnvironmentValues.init()();
    OUTLINED_FUNCTION_44_0();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v46);
    (*(v44 + 8))(v43, v45);
    if (v48 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    static Color.black.getter();
    goto LABEL_6;
  }

  if (v46)
  {
    goto LABEL_5;
  }

LABEL_3:
  static Color.secondary.getter();
LABEL_6:
  swift_getKeyPath();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v1, v47, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA4MenuVyAA0jG13ConfigurationV5LabelVAK0D0VG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAUyAA4FontVSgGGAUySiSgGGAUyAA08AnyShapeG0VSgGGMd);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA4MenuVyAA0jG13ConfigurationV5LabelVAK0D0VG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAUyAA4FontVSgGGAUySiSgGGAUyAA08AnyShapeG0VSgGGAUyAA5ColorVSgGGMd);
  OUTLINED_FUNCTION_73_6(v42);
  OUTLINED_FUNCTION_30_0();
}

uint64_t SplitHStack.SizeInfo.spacing.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

double SplitHStack.SizeInfo.totalSpacing.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (a1 + 32);
  result = 0.0;
  do
  {
    v4 = *v2++;
    result = result + v4;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t SplitHStack.SizeInfo.init(subviews:proposal:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = specialized RandomAccessCollection<>.indices.getter();
  v20[2] = a1;
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_12CoreGraphics7CGFloatVs5NeverOTg5(partial apply for closure #1 in SplitHStack.SizeInfo.spacing(subviews:), v20, v10, v11);
  v13 = v12;
  v14 = 10.0;
  if (a3)
  {
    v15 = 10.0;
  }

  else
  {
    v15 = *&a2;
  }

  v16 = SplitHStack.SizeInfo.totalSpacing.getter(v12);
  if ((a5 & 1) == 0)
  {
    v14 = *&a4;
  }

  v17 = v15 - v16;

  SplitHStack.SizeInfo.maxSize(subviews:proposal:)(a1, v17, v14);

  type metadata accessor for LayoutSubviews();
  OUTLINED_FUNCTION_15_1();
  (*(v18 + 8))(a1);
  return v13;
}

uint64_t SplitHStack.SizeInfo.maxSize(subviews:proposal:)(uint64_t a1, double a2, double a3)
{
  v30 = type metadata accessor for LayoutSubview();
  v6 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a2;
  v32 = a3;
  v33 = a1;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI14LayoutSubviewsV_12CoreGraphics7CGFloatVs5NeverOTg5(partial apply for closure #1 in SplitHStack.SizeInfo.maxSize(subviews:proposal:));
  v9 = specialized Sequence<>.max()(v8);
  v11 = v10;

  type metadata accessor for LayoutSubviews();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x1E697E3C0]);
  v12 = dispatch thunk of Collection.count.getter();
  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
LABEL_7:
    specialized Sequence<>.max()(v13);
  }

  v14 = v12;
  v36 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v13 = v36;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v27[1] = v11;
    v28 = v9;
    v16 = (v6 + 16);
    v17 = (v6 + 8);
    do
    {
      v18 = dispatch thunk of Collection.subscript.read();
      v20 = v29;
      v19 = v30;
      (*v16)(v29);
      v18(v35, 0);
      static ProposedViewSize.unspecified.getter();
      v35[0] = v21 & 1;
      v34 = v22 & 1;
      LayoutSubview.sizeThatFits(_:)();
      v24 = v23;
      (*v17)(v20, v19);
      v36 = v13;
      v25 = a1;
      v26 = *(v13 + 16);
      if (v26 >= *(v13 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v36;
      }

      *(v13 + 16) = v26 + 1;
      *(v13 + 8 * v26 + 32) = v24;
      dispatch thunk of Collection.formIndex(after:)();
      --v14;
      a1 = v25;
    }

    while (v14);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in SplitHStack.SizeInfo.maxSize(subviews:proposal:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for LayoutSubviews();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x1E697E3C0]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  dispatch thunk of Collection.distance(from:to:)();
  result = LayoutSubview.sizeThatFits(_:)();
  *a1 = v3;
  return result;
}

uint64_t specialized RandomAccessCollection<>.indices.getter()
{
  type metadata accessor for LayoutSubviews();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x1E697E3C0]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  result = v2;
  if (v1 < v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in SplitHStack.SizeInfo.spacing(subviews:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for ViewSpacing();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v24 = type metadata accessor for LayoutSubview();
  v8 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = *a1;
  type metadata accessor for LayoutSubviews();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x1E697E3C0]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of Collection.distance(from:to:)();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = 0;
    if (v14 < result - 1)
    {
      LayoutSubviews.subscript.getter();
      LayoutSubview.spacing.getter();
      v17 = *(v8 + 8);
      v18 = v13;
      v19 = v24;
      v17(v18, v24);
      LayoutSubviews.subscript.getter();
      v20 = v25;
      LayoutSubview.spacing.getter();
      v17(v10, v19);
      ViewSpacing.distance(to:along:)();
      v16 = v21;
      v22 = v27;
      v23 = *(v26 + 8);
      v23(v20, v27);
      result = (v23)(v7, v22);
    }

    *v28 = v16;
  }

  return result;
}

double SplitHStack.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = type metadata accessor for LayoutSubviews();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12, a5, v10);
  SplitHStack.SizeInfo.init(subviews:proposal:)(v14, a1, a2 & 1, a3, a4 & 1);
  v17 = v16;

  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x1E697E3C0]);
  OUTLINED_FUNCTION_44_0();
  dispatch thunk of Collection.startIndex.getter();
  OUTLINED_FUNCTION_44_0();
  dispatch thunk of Collection.endIndex.getter();
  return v17 * dispatch thunk of Collection.distance(from:to:)();
}

uint64_t SplitHStack.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  type metadata accessor for LayoutSubviews();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  (*(v22 + 16))(v20 - v19, a5);
  v48 = a4 & 1;
  v23 = SplitHStack.SizeInfo.init(subviews:proposal:)(v21, a1, a2 & 1, a3, a4 & 1);
  v25 = v24;
  v27 = v26;
  v28 = v23;
  v47 = a6;
  v29 = specialized RandomAccessCollection<>.indices.getter();
  v33 = a5;
  v34 = &v47;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v38 = a9;
  v39 = v25;
  v40 = 0;
  v41 = v27;
  v42 = 0;
  v43 = v25;
  v44 = v25;
  v45 = v27;
  v46 = v28;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in SplitHStack.placeSubviews(in:proposal:subviews:cache:), v32, v29, v30);
}

uint64_t closure #1 in SplitHStack.placeSubviews(in:proposal:subviews:cache:)(unint64_t *a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, double *a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13)
{
  v26[2] = a9;
  v26[3] = a11;
  v19 = type metadata accessor for LayoutSubview();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  LayoutSubviews.subscript.getter();
  static UnitPoint.topLeading.getter();
  v28 = a10 & 1;
  v27 = a12 & 1;
  result = LayoutSubview.place(at:anchor:proposal:)();
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v23 < *(a13 + 16))
  {
    v25 = *(a13 + 8 * v23 + 32);
    result = (*(v20 + 8))(v22, v19);
    *a8 = v25 + a6 + *a8;
    return result;
  }

  __break(1u);
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance SplitHStack(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

unint64_t lazy protocol witness table accessor for type ShareCardButtonStyle and conformance ShareCardButtonStyle()
{
  result = lazy protocol witness table cache variable for type ShareCardButtonStyle and conformance ShareCardButtonStyle;
  if (!lazy protocol witness table cache variable for type ShareCardButtonStyle and conformance ShareCardButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareCardButtonStyle and conformance ShareCardButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay15ConversationKit11ParticipantVGAfA15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShareCardMenuStyle and conformance ShareCardMenuStyle()
{
  result = lazy protocol witness table cache variable for type ShareCardMenuStyle and conformance ShareCardMenuStyle;
  if (!lazy protocol witness table cache variable for type ShareCardMenuStyle and conformance ShareCardMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareCardMenuStyle and conformance ShareCardMenuStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyAA08ModifiedD0VyAA6HStackVyAMyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAS5ScaleOGGSgSg_AOyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameW0VG_A1_SgtGGG_15ConversationKit09ShareCardiG0VQo_AOyA17_AA01_op9TransformR0VySbGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAGyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgSg_AIyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameS0VG_AWSgtGGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>??, ModifiedContent<Text, _FixedSizeLayout>)>>, _FlexFrameLayout>, Text?)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAGyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgSg_AIyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameS0VG_AWSgtGGGMd);
    lazy protocol witness table accessor for type ShareCardButtonStyle and conformance ShareCardButtonStyle();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ShareCardButton()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t outlined init with copy of ShareCardButton()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t objectdestroy_26Tm()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type SplitHStack and conformance SplitHStack()
{
  result = lazy protocol witness table cache variable for type SplitHStack and conformance SplitHStack;
  if (!lazy protocol witness table cache variable for type SplitHStack and conformance SplitHStack)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SplitHStack and conformance SplitHStack);
  }

  return result;
}

void type metadata completion function for ShareCardButton()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ()();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<DynamicTypeSize>(319, &lazy cache variable for type metadata for Environment<DynamicTypeSize>, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for ShareCardMenuButton()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<DynamicTypeSize>(319, &lazy cache variable for type metadata for [Participant], type metadata accessor for Participant, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Set<TUHandle>?(319, &lazy cache variable for type metadata for Set<TUHandle>?, &_sShySo8TUHandleCGMd, &_sShySo8TUHandleCGMR, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ()();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Environment<DynamicTypeSize>(319, &lazy cache variable for type metadata for Environment<DynamicTypeSize>, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for ShareCardViewModel()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Set<TUHandle>?(319, &lazy cache variable for type metadata for Published<Call?>, &_s15ConversationKit4Call_pSgMd, &_s15ConversationKit4Call_pSgMR, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Set<TUHandle>?(319, &lazy cache variable for type metadata for Published<[Participant]>, &_sSay15ConversationKit11ParticipantVGMd, &_sSay15ConversationKit11ParticipantVGMR, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Set<TUHandle>?(319, &lazy cache variable for type metadata for Published<Set<TUHandle>>, &_sShySo8TUHandleCGMd, &_sShySo8TUHandleCGMR, MEMORY[0x1E695C070]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void _sSSSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for Set<TUHandle>?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v7 = OUTLINED_FUNCTION_108_0();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata completion function for ShareCardControlsView()
{
  type metadata accessor for Environment<DynamicTypeSize>(319, &lazy cache variable for type metadata for Environment<DismissAction>, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for StateObject<ShareCardViewModel>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<DynamicTypeSize>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_108_0();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for StateObject<ShareCardViewModel>()
{
  if (!lazy cache variable for type metadata for StateObject<ShareCardViewModel>)
  {
    type metadata accessor for ShareCardViewModel(255);
    _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type ShareCardViewModel and conformance ShareCardViewModel, type metadata accessor for ShareCardViewModel);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StateObject<ShareCardViewModel>);
    }
  }
}

uint64_t getEnumTagSinglePayload for SplitHStack.SizeInfo(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for SplitHStack.SizeInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, <<opaque return type of View.menuStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, <<opaque return type of View.menuStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, <<opaque return type of View.menuStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyAA08ModifiedD0VyAA6HStackVyAMyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAS5ScaleOGGSgSg_AOyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameW0VG_A1_SgtGGG_15ConversationKit09ShareCardiG0VQo_AOyA17_AA01_op9TransformR0VySbGGGAeAE04menuG0yQrqd__AA04MenuG0Rd__lFQOyAA4MenuVyA12_AA7ForEachVySayA14_11ParticipantVGA30_AOyAIyA1_GA20_GGG_A14_013ShareCardMenuG0VQo_GMd);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4MenuVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAGyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgSg_AIyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameS0VG_AWSgtGGAA7ForEachVySay15ConversationKit11ParticipantVGA11_AIyAA6ButtonVyAWGAA01_kl9TransformN0VySbGGGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Menu<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>??, ModifiedContent<Text, _FixedSizeLayout>)>>, _FlexFrameLayout>, Text?)>>, ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAGyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgSg_AIyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameS0VG_AWSgtGGAA7ForEachVySay15ConversationKit11ParticipantVGA11_AIyAA6ButtonVyAWGAA01_kl9TransformN0VySbGGGGMd);
    lazy protocol witness table accessor for type ShareCardMenuStyle and conformance ShareCardMenuStyle();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, <<opaque return type of View.menuStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA0hiG13ConfigurationV5LabelVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGASyAA4FontVSgGGASySiSgGGASyAA08AnyShapeG0VSgGGASyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA4MenuVyAA0jG13ConfigurationV5LabelVAK0D0VG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAUyAA4FontVSgGGAUySiSgGGAUyAA08AnyShapeG0VSgGGAUyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA0hiG13ConfigurationV5LabelVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGASyAA4FontVSgGGASySiSgGGASyAA08AnyShapeG0VSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA4MenuVyAA0jG13ConfigurationV5LabelVAK0D0VG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAUyAA4FontVSgGGAUySiSgGGAUyAA08AnyShapeG0VSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA0hiG13ConfigurationV5LabelVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGASyAA4FontVSgGGASySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA4MenuVyAA0jG13ConfigurationV5LabelVAK0D0VG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAUyAA4FontVSgGGAUySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA0hiG13ConfigurationV5LabelVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGASyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA4MenuVyAA0jG13ConfigurationV5LabelVAK0D0VG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAUyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA0hiG13ConfigurationV5LabelVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMd);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMd);
    _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA4MenuVyAA0jG13ConfigurationV5LabelVAK0D0VG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4MenuVyAA0C18StyleConfigurationV5LabelVAE7ContentVGMd);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA0C18StyleConfigurationV5LabelVAE7ContentVGMd);
    _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA0G8ThatFitsVyAEyAA08ModifiedE0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAR_ARtGGG_AKyAL0mn4MenuO0VAQGtGAUGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA0F8ThatFitsVyACyAA08ModifiedD0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAEyAP_APtGGG_AIyAJ0lm4MenuN0VAOGtGASGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D8ThatFitsVyAA19_ConditionalContentVyAA08ModifiedH0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAP_APtGGG_AIyAJ0lm4MenuN0VAOGtGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>> and conformance ViewThatFits<A>, &_s7SwiftUI12ViewThatFitsVyAA19_ConditionalContentVyAA08ModifiedG0Vy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA05TupleC0VyAN_ANtGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>, ModifiedContent<ShareCardMenuButton, _EnvironmentKeyTransformModifier<Bool>>)>, ViewThatFits<_ConditionalContent<ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, TupleView<(ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>>)>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in ShareCardMenuButton.body.getter(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_22(v3);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(v5);
}

uint64_t objectdestroy_185Tm()
{
  type metadata accessor for ShareCardControlsView(0);
  OUTLINED_FUNCTION_35_7();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  OUTLINED_FUNCTION_108_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DismissAction();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  outlined consume of StateObject<SyncedScreeningAlphaGradientView<A>.AnimatedState>.Storage<A>();

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit15ShareCardButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(&lazy protocol witness table cache variable for type ShareCardButton and conformance ShareCardButton, type metadata accessor for ShareCardButton);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ShareCardButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{
  type metadata accessor for ShareCardMenuButton(0);
  OUTLINED_FUNCTION_25_2();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    OUTLINED_FUNCTION_15_1();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #5 in ShareCardMenuButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ShareCardMenuButton(0);
  OUTLINED_FUNCTION_22(v4);

  return closure #1 in closure #5 in ShareCardMenuButton.body.getter(a1, a2);
}

uint64_t objectdestroy_13Tm()
{
  OUTLINED_FUNCTION_29();
  v2 = (type metadata accessor for ShareCardMenuButton(0) - 8);
  v3 = (*(*v2 + 80) + 16) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_35_7();
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v1 + v3;

  v8 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    OUTLINED_FUNCTION_15_1();
    (*(v9 + 8))(v7 + v8);
  }

  else
  {
  }

  v10 = v1 + v6;
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_108_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 5u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v11 + 8))(v1 + v6);
      break;
    case 4u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v22 + 8))(v1 + v6);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v24 = v10 + *(v23 + 48);

      if (*(v24 + 120) >= 2uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v24 + 96);
      }

      if (*(v24 + 312))
      {
        swift_unknownObjectRelease();
      }

      if (*(v10 + *(v23 + 64) + 8))
      {
      }

      break;
    default:
      break;
  }

  v12 = v0[5];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_15_1();
  (*(v13 + 8))(v10 + v12);
  v14 = (v10 + v0[7]);
  if (*v14)
  {
  }

  v15 = v10 + v0[14];
  v16 = type metadata accessor for Date();
  if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
  {
    v17 = OUTLINED_FUNCTION_40_2();
    v18(v17);
  }

  v19 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v15 + v19, 1, v16))
  {
    (*(*(v16 - 8) + 8))(v15 + v19, v16);
  }

  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

void partial apply for closure #3 in ShareCardMenuButton.body.getter()
{
  v1 = type metadata accessor for ShareCardMenuButton(0);
  OUTLINED_FUNCTION_9_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_22(v6);
  closure #3 in ShareCardMenuButton.body.getter(v0 + v3, v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80)));
}

uint64_t key path getter for InCallControlsToggleCaptionsCell.delegate : InCallControlsToggleCaptionsCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for InCallControlsToggleCaptionsCell.delegate : InCallControlsToggleCaptionsCell(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t InCallControlsToggleCaptionsCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit32InCallControlsToggleCaptionsCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InCallControlsToggleCaptionsCell.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit32InCallControlsToggleCaptionsCell_delegate;
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

id InCallControlsToggleCaptionsCell.toggleCaptionsSwitch.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit32InCallControlsToggleCaptionsCell____lazy_storage___toggleCaptionsSwitch;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit32InCallControlsToggleCaptionsCell____lazy_storage___toggleCaptionsSwitch);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit32InCallControlsToggleCaptionsCell____lazy_storage___toggleCaptionsSwitch);
  }

  else
  {
    v4 = closure #1 in InCallControlsToggleCaptionsCell.toggleCaptionsSwitch.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in InCallControlsToggleCaptionsCell.toggleCaptionsSwitch.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
  [v2 addTarget:a1 action:sel_didToggleCaptions forControlEvents:4096];
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD00000000000001CLL, 0x80000001BC5073D0, v2);
  return v2;
}

uint64_t InCallControlsToggleCaptionsCell.accessoryView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14[-v5];
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_142();
  outlined init with copy of Participant?(v7, v8, v9);
  v10 = type metadata accessor for UICellAccessory();
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s5UIKit15UICellAccessoryVSgMd);
    closure #1 in InCallControlsToggleCaptionsCell.accessoryView.getter(a1);
    OUTLINED_FUNCTION_71();
    (*(v11 + 16))(v1, a1, v10);
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_10_35();
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_142();
    return v13();
  }
}

uint64_t closure #1 in InCallControlsToggleCaptionsCell.accessoryView.getter@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v19 - v2;
  v4 = type metadata accessor for UICellAccessory.Placement();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = InCallControlsToggleCaptionsCell.toggleCaptionsSwitch.getter();
  v13 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48)];
  v14 = *MEMORY[0x1E69DBF28];
  v15 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v15 - 8) + 104))(v7, v14, v15);
  *v13 = OUTLINED_FUNCTION_14_0;
  v13[1] = 0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69DBF60], v4);
  v16 = type metadata accessor for UICellAccessory.LayoutDimension();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v16);
  v17 = v12;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();

  return (*(v9 + 8))(v11, v8);
}

uint64_t InCallControlsToggleCaptionsCell.cellContentConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-v6];
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_142();
  outlined init with copy of Participant?(v8, v9, v10);
  v11 = type metadata accessor for UIListContentConfiguration();
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s5UIKit26UIListContentConfigurationVSgMd);
    closure #1 in InCallControlsToggleCaptionsCell.cellContentConfiguration.getter(v1);
    OUTLINED_FUNCTION_71();
    (*(v12 + 16))(v2, a1, v11);
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_10_35();
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_142();
    return v14();
  }
}

uint64_t closure #1 in InCallControlsToggleCaptionsCell.cellContentConfiguration.getter(void *a1)
{
  MEMORY[0x1BFB21750]();
  v2 = [objc_opt_self() conversationKit];
  v17._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC5073B0;
  v4._countAndFlagsBits = 0xD000000000000016;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v17);

  UIListContentConfiguration.text.setter();
  if (one-time initialization token for tableViewCellTitleLabel != -1)
  {
    swift_once();
  }

  v6 = static Colors.InCallControls.tableViewCellTitleLabel;
  v7 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v7(v16, 0);
  v8 = objc_opt_self();
  v9 = *MEMORY[0x1E69DDCF8];
  v10 = [v8 preferredFontForTextStyle_];
  UIFont.caseSensitive()();

  v11 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v11(v16, 0);
  [a1 effectiveUserInterfaceLayoutDirection];
  v12 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter();
  v12(v16, 0);
  v13 = [v8 preferredFontForTextStyle_];
  isa = UIFont.caseSensitive()().super.isa;

  InCallControlsToggleCaptionsCell.verticalInset(_:scaledToFont:)(isa, 18.5);
  return UIListContentConfiguration.directionalLayoutMargins.setter();
}

id InCallControlsToggleCaptionsCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsToggleCaptionsCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  *(v0 + OBJC_IVAR____TtC15ConversationKit32InCallControlsToggleCaptionsCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit32InCallControlsToggleCaptionsCell____lazy_storage___toggleCaptionsSwitch) = 0;
  v1 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_0_11(v1);
  v2 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit32InCallControlsToggleCaptionsCell_featureFlags;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  swift_weakInit();
  v9 = type metadata accessor for InCallControlsToggleCaptionsCell();
  v4 = OUTLINED_FUNCTION_18_1();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, v9);
  InCallControlsToggleCaptionsCell.configureContent()();

  return v7;
}

uint64_t type metadata accessor for InCallControlsToggleCaptionsCell()
{
  result = type metadata singleton initialization cache for InCallControlsToggleCaptionsCell;
  if (!type metadata singleton initialization cache for InCallControlsToggleCaptionsCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id InCallControlsToggleCaptionsCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsToggleCaptionsCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit32InCallControlsToggleCaptionsCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit32InCallControlsToggleCaptionsCell____lazy_storage___toggleCaptionsSwitch) = 0;
  v1 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_0_11(v1);
  v2 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit32InCallControlsToggleCaptionsCell_featureFlags;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t InCallControlsToggleCaptionsCell.configureContent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-1] - v2;
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v4 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  MEMORY[0x1BFB216F0](v3);
  [v0 setAutomaticallyUpdatesBackgroundConfiguration_];
  v11[3] = type metadata accessor for UIListContentConfiguration();
  v11[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  InCallControlsToggleCaptionsCell.cellContentConfiguration.getter(boxed_opaque_existential_1);
  MEMORY[0x1BFB216E0](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
  v6 = *(type metadata accessor for UICellAccessory() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA940;
  InCallControlsToggleCaptionsCell.accessoryView.getter(v8 + v7);
  return UICollectionViewListCell.accessories.setter();
}

Swift::Void __swiftcall InCallControlsToggleCaptionsCell.configure(with:)(ConversationKit::InCallControlsToggleCaptionsCell::ViewModel with)
{
  v2 = v1;
  value = with.isVideo.value;
  v5 = InCallControlsToggleCaptionsCell.toggleCaptionsSwitch.getter();
  [v5 setOn:with.isCaptioned animated:0];

  if ([*(v2 + OBJC_IVAR____TtC15ConversationKit32InCallControlsToggleCaptionsCell_featureFlags) videoCallTranslationEnabled])
  {
    v6 = value == 2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && (*&with & 0x100) != 0)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    VideoCallTranslationController.hudViewModel.getter();
    swift_weakAssign();

    InCallControlsToggleCaptionsCell.observeTranslationState()();
  }
}

uint64_t InCallControlsToggleCaptionsCell.observeTranslationState()()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_allocObject();
    v1 = swift_unknownObjectWeakInit();
    MEMORY[0x1EEE9AC00](v1);
    MEMORY[0x1EEE9AC00](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
    withObservationTracking<A>(_:onChange:)();
  }

  return result;
}

void closure #1 in InCallControlsToggleCaptionsCell.observeTranslationState()(BOOL *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = InCallControlsToggleCaptionsCell.toggleCaptionsSwitch.getter();

    [v3 setEnabled_];
  }

  *a1 = Strong == 0;
}

uint64_t (*implicit closure #1 in InCallControlsToggleCaptionsCell.observeTranslationState()(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return partial apply for closure #2 in implicit closure #1 in InCallControlsToggleCaptionsCell.observeTranslationState();
}

uint64_t closure #2 in implicit closure #1 in InCallControlsToggleCaptionsCell.observeTranslationState()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();
}

uint64_t closure #1 in closure #2 in implicit closure #1 in InCallControlsToggleCaptionsCell.observeTranslationState()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in implicit closure #1 in InCallControlsToggleCaptionsCell.observeTranslationState(), v6, v5);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in InCallControlsToggleCaptionsCell.observeTranslationState()()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    InCallControlsToggleCaptionsCell.observeTranslationState()();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

double InCallControlsToggleCaptionsCell.verticalInset(_:scaledToFont:)(void *a1, double a2)
{
  v3 = [a1 fontDescriptor];
  v4 = [v3 objectForKey_];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    type metadata accessor for UIFontTextStyle(0);
    if (swift_dynamicCast())
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      [v5 scaledValueForValue_];
      a2 = v6;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sypSgMd);
  }

  return a2;
}

Swift::Void __swiftcall InCallControlsToggleCaptionsCell.didToggleCaptions()()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

id InCallControlsToggleCaptionsCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsToggleCaptionsCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for InCallControlsToggleCaptionsCell()
{
  type metadata accessor for UICellAccessory?(319, &lazy cache variable for type metadata for UICellAccessory?, MEMORY[0x1E69DBF68]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UICellAccessory?(319, &lazy cache variable for type metadata for UIListContentConfiguration?, MEMORY[0x1E69DC118]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t storeEnumTagSinglePayload for InCallControlsToggleCaptionsCell.ViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in InCallControlsToggleCaptionsCell.observeTranslationState()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in closure #2 in implicit closure #1 in InCallControlsToggleCaptionsCell.observeTranslationState()(a1, v4, v5, v6);
}

uint64_t CollaborationInitiationManager.__allocating_init(conversationManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:initiator:itemTitle:alertHostWindow:viewController:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v1[19] = v5;
  v1[20] = v6;
  v1[18] = v7;
  v1[25] = type metadata accessor for MainActor();
  v1[26] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[27] = v9;
  v1[28] = v8;

  return MEMORY[0x1EEE6DFA0](CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:initiator:itemTitle:alertHostWindow:viewController:), v9, v8);
}

{
  v1 = v0[19];
  v2 = *(v0[24] + 16);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[29] = isa;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:initiator:itemTitle:alertHostWindow:viewController:);
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
  v0[13] = &block_descriptor_50;
  v0[14] = v4;
  [v2 getNeedsDisclosureOfCollaborationInitiator:v1 forConversationUUID:isa completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 240) = v4;
  v5 = v3[28];
  v6 = v3[27];
  if (v4)
  {
    v7 = CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:initiator:itemTitle:alertHostWindow:viewController:);
  }

  else
  {
    v7 = CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:initiator:itemTitle:alertHostWindow:viewController:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  v1 = *(v0 + 272);

  if (v1 == 1)
  {
    v2 = *(v0 + 168);
    v10 = *(v0 + 152);
    v11 = *(v0 + 176);
    v3 = static MainActor.shared.getter();
    *(v0 + 248) = v3;
    v4 = swift_task_alloc();
    *(v0 + 256) = v4;
    *(v4 + 16) = v11;
    *(v4 + 32) = v10;
    *(v4 + 48) = v2;
    v5 = swift_task_alloc();
    *(v0 + 264) = v5;
    *v5 = v0;
    v5[1] = CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:initiator:itemTitle:alertHostWindow:viewController:);
    v6 = MEMORY[0x1E69E85E0];
    v7 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v0 + 273, v3, v6, 0xD000000000000061, 0x80000001BC5073F0, partial apply for closure #1 in CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:initiator:itemTitle:alertHostWindow:viewController:), v4, v7);
  }

  else
  {

    OUTLINED_FUNCTION_0_23();

    return v8(1);
  }
}

{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;

  v4 = *(v1 + 224);
  v5 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:initiator:itemTitle:alertHostWindow:viewController:), v5, v4);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 273);
  if (v1 == 1)
  {
    CollaborationInitiationManager.addDisclosedInitiator(_:toConversationUUID:)(*(v0 + 152));
  }

  OUTLINED_FUNCTION_0_23();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 232);

  swift_willThrow();

  OUTLINED_FUNCTION_0_23();

  return v2(0);
}

uint64_t CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:itemProvider:itemTitle:alertHostWindow:viewController:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v1[10] = v7;
  *v7 = v1;
  v7[1] = CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:itemProvider:itemTitle:alertHostWindow:viewController:);

  return NSItemProvider.collaborationInitiator.getter();
}

{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v7 = v6;
  v4[11] = v3;
  v4[12] = v0;

  if (v0)
  {
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:itemProvider:itemTitle:alertHostWindow:viewController:), v9, v8);
  }

  else
  {
    v10 = swift_task_alloc();
    v4[13] = v10;
    *v10 = v6;
    v10[1] = CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:itemProvider:itemTitle:alertHostWindow:viewController:);

    return CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:initiator:itemTitle:alertHostWindow:viewController:)();
  }
}

{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v7 = v6;
  *(v4 + 112) = v0;

  if (v0)
  {
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    v11 = CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:itemProvider:itemTitle:alertHostWindow:viewController:);
  }

  else
  {

    *(v4 + 120) = v3 & 1;
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v12;
    v11 = CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:itemProvider:itemTitle:alertHostWindow:viewController:);
  }

  return MEMORY[0x1EEE6DFA0](v11, v8, v10);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_23();
  v2 = *(v0 + 120);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_23();

  return v0(0);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_23();

  return v1(0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v6, v7);
  }

  else
  {
    v9 = *v5;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v9, a2);
  }
}

void CollaborationInitiationManager.addDisclosedInitiator(_:toConversationUUID:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v3 addDisclosedCollaborationInitiator:a1 toConversationUUID:isa];
}

uint64_t partial apply for closure #1 in closure #1 in CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:initiator:itemTitle:alertHostWindow:viewController:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);

  return closure #1 in closure #1 in CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:initiator:itemTitle:alertHostWindow:viewController:)();
}

ConversationKit::ImageNames::Drawer_optional __swiftcall ImageNames.Drawer.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_104();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ImageNames.Drawer.init(rawValue:), v3);
  OUTLINED_FUNCTION_5_90();
  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

void ImageNames.Drawer.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 4:
      OUTLINED_FUNCTION_11();
      break;
    default:
      return;
  }
}

ConversationKit::ImageNames::Drawer_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ImageNames.Drawer@<W0>(Swift::String *a1@<X0>, ConversationKit::ImageNames::Drawer_optional *a2@<X8>)
{
  result.value = ImageNames.Drawer.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ImageNames.Drawer()
{
  v1 = OUTLINED_FUNCTION_4_95();
  ImageNames.Drawer.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

ConversationKit::ImageNames::Staging_optional __swiftcall ImageNames.Staging.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_104();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ImageNames.Staging.init(rawValue:), v3);
  OUTLINED_FUNCTION_5_90();
  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

void ImageNames.Staging.rawValue.getter()
{
  OUTLINED_FUNCTION_6_75();
  switch(v0)
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_11();
      break;
    case 2:
      OUTLINED_FUNCTION_2_109(17);
      break;
    default:
      return;
  }
}

ConversationKit::ImageNames::Staging_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ImageNames.Staging@<W0>(Swift::String *a1@<X0>, ConversationKit::ImageNames::Staging_optional *a2@<X8>)
{
  result.value = ImageNames.Staging.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ImageNames.Staging()
{
  OUTLINED_FUNCTION_4_95();
  ImageNames.Staging.rawValue.getter();
  *v0 = v1;
  v0[1] = v2;
}

ConversationKit::ImageNames::InCall_optional __swiftcall ImageNames.InCall.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_104();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ImageNames.InCall.init(rawValue:), v3);
  OUTLINED_FUNCTION_5_90();
  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

void ImageNames.InCall.rawValue.getter()
{
  OUTLINED_FUNCTION_6_75();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_2_109(17);
      break;
    case 2:
    case 4:
      return;
    default:
      OUTLINED_FUNCTION_11();
      break;
  }
}

ConversationKit::ImageNames::InCall_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ImageNames.InCall@<W0>(Swift::String *a1@<X0>, ConversationKit::ImageNames::InCall_optional *a2@<X8>)
{
  result.value = ImageNames.InCall.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ImageNames.InCall()
{
  OUTLINED_FUNCTION_4_95();
  ImageNames.InCall.rawValue.getter();
  *v0 = v1;
  v0[1] = v2;
}

ConversationKit::ImageNames::ConversationControls_optional __swiftcall ImageNames.ConversationControls.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_104();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ImageNames.ConversationControls.init(rawValue:), v3);
  OUTLINED_FUNCTION_5_90();
  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

void ImageNames.ConversationControls.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_11();
      break;
    case 3:
      OUTLINED_FUNCTION_2_109(21);
      break;
    default:
      return;
  }
}

ConversationKit::ImageNames::ConversationControls_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ImageNames.ConversationControls@<W0>(Swift::String *a1@<X0>, ConversationKit::ImageNames::ConversationControls_optional *a2@<X8>)
{
  result.value = ImageNames.ConversationControls.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ImageNames.ConversationControls()
{
  v1 = OUTLINED_FUNCTION_4_95();
  ImageNames.ConversationControls.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

BOOL ImageNames.Roster.init(rawValue:)()
{
  OUTLINED_FUNCTION_3_104();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ImageNames.Roster.init(rawValue:), v2);
  OUTLINED_FUNCTION_5_90();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ImageNames.Roster@<W0>(_BYTE *a1@<X8>)
{
  result = ImageNames.Roster.init(rawValue:)();
  *a1 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ImageNames.Roster@<X0>(void *a1@<X8>)
{
  result = ImageNames.Roster.rawValue.getter();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

ConversationKit::ImageNames::ParticipantView_optional __swiftcall ImageNames.ParticipantView.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_104();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ImageNames.ParticipantView.init(rawValue:), v3);
  OUTLINED_FUNCTION_5_90();
  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t ImageNames.ParticipantView.rawValue.getter(char a1)
{
  result = 0x656D614370696C66;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6C6C61632D646E65;
      break;
    case 5:
      result = 0x5F746361746E6F63;
      break;
    case 7:
      result = 0x735F646573756170;
      break;
    case 8:
      result = 0x6C5F646573756170;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

ConversationKit::ImageNames::ParticipantView_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ImageNames.ParticipantView@<W0>(Swift::String *a1@<X0>, ConversationKit::ImageNames::ParticipantView_optional *a2@<X8>)
{
  result.value = ImageNames.ParticipantView.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ImageNames.ParticipantView()
{
  v1 = OUTLINED_FUNCTION_4_95();
  result = ImageNames.ParticipantView.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL ImageNames.CallRecording.init(rawValue:)()
{
  OUTLINED_FUNCTION_3_104();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ImageNames.CallRecording.init(rawValue:), v2);
  OUTLINED_FUNCTION_5_90();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ImageNames.CallRecording@<W0>(_BYTE *a1@<X8>)
{
  result = ImageNames.CallRecording.init(rawValue:)();
  *a1 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ImageNames.CallRecording@<X0>(void *a1@<X8>)
{
  result = ImageNames.CallRecording.rawValue.getter();
  *a1 = 0xD00000000000001FLL;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ImageNames.Drawer and conformance ImageNames.Drawer()
{
  result = lazy protocol witness table cache variable for type ImageNames.Drawer and conformance ImageNames.Drawer;
  if (!lazy protocol witness table cache variable for type ImageNames.Drawer and conformance ImageNames.Drawer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageNames.Drawer and conformance ImageNames.Drawer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageNames.Staging and conformance ImageNames.Staging()
{
  result = lazy protocol witness table cache variable for type ImageNames.Staging and conformance ImageNames.Staging;
  if (!lazy protocol witness table cache variable for type ImageNames.Staging and conformance ImageNames.Staging)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageNames.Staging and conformance ImageNames.Staging);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageNames.InCall and conformance ImageNames.InCall()
{
  result = lazy protocol witness table cache variable for type ImageNames.InCall and conformance ImageNames.InCall;
  if (!lazy protocol witness table cache variable for type ImageNames.InCall and conformance ImageNames.InCall)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageNames.InCall and conformance ImageNames.InCall);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageNames.ConversationControls and conformance ImageNames.ConversationControls()
{
  result = lazy protocol witness table cache variable for type ImageNames.ConversationControls and conformance ImageNames.ConversationControls;
  if (!lazy protocol witness table cache variable for type ImageNames.ConversationControls and conformance ImageNames.ConversationControls)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageNames.ConversationControls and conformance ImageNames.ConversationControls);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageNames.Roster and conformance ImageNames.Roster()
{
  result = lazy protocol witness table cache variable for type ImageNames.Roster and conformance ImageNames.Roster;
  if (!lazy protocol witness table cache variable for type ImageNames.Roster and conformance ImageNames.Roster)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageNames.Roster and conformance ImageNames.Roster);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageNames.ParticipantView and conformance ImageNames.ParticipantView()
{
  result = lazy protocol witness table cache variable for type ImageNames.ParticipantView and conformance ImageNames.ParticipantView;
  if (!lazy protocol witness table cache variable for type ImageNames.ParticipantView and conformance ImageNames.ParticipantView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageNames.ParticipantView and conformance ImageNames.ParticipantView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageNames.CallRecording and conformance ImageNames.CallRecording()
{
  result = lazy protocol witness table cache variable for type ImageNames.CallRecording and conformance ImageNames.CallRecording;
  if (!lazy protocol witness table cache variable for type ImageNames.CallRecording and conformance ImageNames.CallRecording)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageNames.CallRecording and conformance ImageNames.CallRecording);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ImageNames.Drawer(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ImageNames.Staging(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ImageNames.InCall(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageNames.ParticipantView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ImageNames.ParticipantView(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ImageNames.Roster(_BYTE *result, int a2, int a3)
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

uint64_t key path getter for EffectsBrowserContainerViewController.effectsBrowserViewController : EffectsBrowserContainerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t key path setter for EffectsBrowserContainerViewController.effectsBrowserViewController : EffectsBrowserContainerViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

void EffectsBrowserContainerViewController.effectsBrowserViewController.didset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserViewController;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController), v6 = v5, v7 = a1, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8 & 1) == 0))
  {
LABEL_6:
    EffectsBrowserContainerViewController.removeEmbeddedBrowserViewController(_:)(a1);
    v9 = *(v2 + v4);
    v10 = v9;
    EffectsBrowserContainerViewController.embedBrowserViewController(_:)(v9);
  }
}

void *EffectsBrowserContainerViewController.effectsBrowserViewController.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserViewController;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void EffectsBrowserContainerViewController.effectsBrowserViewController.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserViewController;
  OUTLINED_FUNCTION_6_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  EffectsBrowserContainerViewController.effectsBrowserViewController.didset(v4);
}

void (*EffectsBrowserContainerViewController.effectsBrowserViewController.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserViewController;
  OUTLINED_FUNCTION_12_1();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return EffectsBrowserContainerViewController.effectsBrowserViewController.modify;
}

void EffectsBrowserContainerViewController.effectsBrowserViewController.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    EffectsBrowserContainerViewController.effectsBrowserViewController.setter(v3);
  }

  else
  {
    EffectsBrowserContainerViewController.effectsBrowserViewController.setter(*(*a1 + 24));
  }

  free(v2);
}

uint64_t key path getter for EffectsBrowserContainerViewController.effectsEnabled : EffectsBrowserContainerViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result & 1;
  return result;
}

uint64_t EffectsBrowserContainerViewController.effectsEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsEnabled;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t EffectsBrowserContainerViewController.effectsEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsEnabled;
  result = OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
  return result;
}

void EffectsBrowserContainerViewController.effectsBrowserHeight.didset(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserHeight;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    EffectsBrowserContainerViewController.updateViews()();
  }
}

double EffectsBrowserContainerViewController.effectsBrowserHeight.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserHeight;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

void EffectsBrowserContainerViewController.effectsBrowserHeight.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserHeight;
  OUTLINED_FUNCTION_6_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  EffectsBrowserContainerViewController.effectsBrowserHeight.didset(v4);
}

void (*EffectsBrowserContainerViewController.effectsBrowserHeight.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserHeight;
  OUTLINED_FUNCTION_12_1();
  v3[3] = *(v1 + v4);
  return EffectsBrowserContainerViewController.effectsBrowserHeight.modify;
}

void EffectsBrowserContainerViewController.effectsBrowserHeight.modify(uint64_t a1)
{
  v1 = *a1;
  EffectsBrowserContainerViewController.effectsBrowserHeight.setter(*(*a1 + 24));

  free(v1);
}

char *EffectsBrowserContainerViewController.__allocating_init(delegate:)()
{
  v1 = objc_allocWithZone(v0);
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_3_105();

  return specialized EffectsBrowserContainerViewController.init(delegate:)(v2, v3, v4, v5);
}

char *EffectsBrowserContainerViewController.init(delegate:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_3_105();

  return specialized EffectsBrowserContainerViewController.init(delegate:)(v0, v1, v2, v3);
}

id EffectsBrowserContainerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void EffectsBrowserContainerViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserHeight) = 0x404D000000000000;
  *(v0 + OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_constraintsToUpdate) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void EffectsBrowserContainerViewController.setupViews()()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 setUserInteractionEnabled_];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  EffectsBrowserContainerViewController.updateViews()();
}

void EffectsBrowserContainerViewController.updateViews()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_constraintsToUpdate;
  swift_beginAccess();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deactivateConstraints_];

  *(v1 + v3) = MEMORY[0x1E69E7CC0];

  v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))(v5);
  v7 = [v6 view];

  if (!v7)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BC370;
  v9 = [v7 centerYAnchor];
  v10 = OUTLINED_FUNCTION_2_110();
  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v10 centerYAnchor];

  v13 = [v6 constraintEqualToAnchor_];
  *(inited + 32) = v13;
  v14 = [v7 leadingAnchor];
  v15 = OUTLINED_FUNCTION_2_110();
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v6 constraintEqualToAnchor_];
  *(inited + 40) = v18;
  v19 = [v7 trailingAnchor];
  v20 = OUTLINED_FUNCTION_2_110();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 trailingAnchor];

    v23 = [v6 constraintEqualToAnchor_];
    *(inited + 48) = v23;
    swift_beginAccess();
    specialized Array.append<A>(contentsOf:)(inited);
    swift_endAccess();

LABEL_6:

    v24 = Array._bridgeToObjectiveC()().super.isa;

    [v2 activateConstraints_];

    return;
  }

LABEL_9:
  __break(1u);
}