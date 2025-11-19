uint64_t SystemUpdateNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AttributeContainer();
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  if (*(v0 + 16))
  {
    v3 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_48_1(0xD000000000000013, 0x80000001BC50D730, v4, v5);
    OUTLINED_FUNCTION_187();
  }

  AttributeContainer.init()();
  OUTLINED_FUNCTION_1_5();
  return AttributedString.init(_:attributes:)();
}

uint64_t FaceIDUnavailableNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_30();
  v0 = type metadata accessor for AttributeContainer();
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  v2 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v3 = OUTLINED_FUNCTION_261_1();
  v4.super.isa = v2;
  OUTLINED_FUNCTION_17_0(v3, v5, v6, v7, v4);
  OUTLINED_FUNCTION_98_3();

  AttributeContainer.init()();
  OUTLINED_FUNCTION_40_2();
  return AttributedString.init(_:attributes:)();
}

uint64_t FaceIDUnavailableNotice.title.getter()
{
  v0 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_5_5();
  v1 = OUTLINED_FUNCTION_261_1();
  v2.super.isa = v0;
  OUTLINED_FUNCTION_17_0(v1, v3, v4, v5, v2);
  OUTLINED_FUNCTION_18_8();

  return OUTLINED_FUNCTION_15_14();
}

uint64_t FaceIDUnavailableNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_30();
  v0 = type metadata accessor for AttributeContainer();
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  v2 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v3.super.isa = v2;
  OUTLINED_FUNCTION_17_0(v4, 0xE900000000000043, v5, v6, v3);
  OUTLINED_FUNCTION_98_3();

  AttributeContainer.init()();
  OUTLINED_FUNCTION_40_2();
  return AttributedString.init(_:attributes:)();
}

uint64_t *AppLaunchNotice.bundleIDToItemType.unsafeMutableAddressor()
{
  if (one-time initialization token for bundleIDToItemType != -1)
  {
    OUTLINED_FUNCTION_21_39();
  }

  return &static AppLaunchNotice.bundleIDToItemType;
}

uint64_t _s10Foundation16AttributedStringV15ConversationKitE29conversationControlsLocalized9includingACSSAAE17LocalizationValueV_s7KeyPathCyAA15AttributeScopesOxmGtcAA0N5ScopeRzlufCAlDE0dE10AttributesV_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v4 = type metadata accessor for AttributedString.FormattingOptions();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  (*(v9 + 16))(v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v10);
  v14[2] = "ConversationKit-SystemAperture";
  v14[1] = [objc_opt_self() conversationKit];
  v12 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
  v18 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, MEMORY[0x1E69686B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
  lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A], &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  lazy protocol witness table accessor for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes();
  AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
  return (*(v9 + 8))(v15, v8);
}

uint64_t default argument 6 of AppLaunchNotice.init(uuid:timeSinceReferenceDate:priority:app:conversation:supportsCollaboration:dismissalDuration:style:shouldTransitionToHUD:actionHandler:dismissHandler:subtitleStyle:noticeAccessory:)()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 1016))();
}

void AppLaunchNotice.init(uuid:timeSinceReferenceDate:priority:app:conversation:supportsCollaboration:dismissalDuration:style:shouldTransitionToHUD:actionHandler:dismissHandler:subtitleStyle:noticeAccessory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char *a30, uint64_t *a31)
{
  OUTLINED_FUNCTION_141_0();
  v57 = v33;
  v55 = v34;
  v56 = v35;
  v37 = v36;
  v39 = v38;
  OUTLINED_FUNCTION_0_91();
  v41 = v40;
  v43 = *v42;
  v45 = *v44;
  v46 = *a30;
  v47 = *a31;
  v54 = a31[1];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  v48 = OUTLINED_FUNCTION_244_1();
  v49(v48);
  v50 = type metadata accessor for AppLaunchNotice(0);
  *(v41 + v50[5]) = v32;
  *(v41 + v50[6]) = v43;
  *(v41 + v50[7]) = v39;
  *(v41 + v50[8]) = v37;
  *(v41 + v50[9]) = v55;
  *(v41 + v50[10]) = v31;
  *(v41 + v50[11]) = v45;
  *(v41 + v50[12]) = v56;
  v51 = (v41 + v50[13]);
  *v51 = v57;
  v51[1] = a27;
  v52 = (v41 + v50[14]);
  *v52 = a28;
  v52[1] = a29;
  *(v41 + v50[15]) = v46;
  v53 = (v41 + v50[16]);
  *v53 = v47;
  v53[1] = v54;
  OUTLINED_FUNCTION_140_2();
}

void AccountUpdateNotice.init(type:participants:uuid:timeSinceReferenceDate:priority:bundleIdentifier:shouldTransitionToHUD:actionHandler:dismissHandler:noticeAccessory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t *a30)
{
  OUTLINED_FUNCTION_141_0();
  v56 = v30;
  v55 = v31;
  v54 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v43 = *v42;
  v44 = *a30;
  v45 = a30[1];
  *v39 = *v41;
  *(v39 + 8) = v46;
  updated = type metadata accessor for AccountUpdateNotice(0);
  v48 = updated[6];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  (*(v49 + 32))(v40 + v48, v36);
  *(v40 + updated[7]) = v38;
  *(v40 + updated[8]) = v43;
  v50 = (v40 + updated[9]);
  *v50 = v34;
  v50[1] = v54;
  *(v40 + updated[10]) = v55;
  v51 = (v40 + updated[11]);
  *v51 = v56;
  v51[1] = a27;
  v52 = (v40 + updated[12]);
  *v52 = a28;
  v52[1] = a29;
  v53 = (v40 + updated[13]);
  *v53 = v44;
  v53[1] = v45;
  OUTLINED_FUNCTION_140_2();
}

uint64_t default argument 1 of SessionActivationRequestNotice.init(expirationCheck:dismissalDuration:uuid:timeSinceReferenceDate:priority:style:shouldTransitionToHUD:noticeAccessory:actionHandler:dismissHandler:bundleIdentifier:activity:)()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 1008))();
}

uint64_t ParticipantReaction.init(participant:reaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = OUTLINED_FUNCTION_39_1(a1, a2);
  v5 = MEMORY[0x1BFB209B0](v4);
  v6.value = VideoReaction.init(rawValue:)(v5).value;
  if (v6.value == ConversationKit_VideoReaction_unknownDefault)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v7 = OUTLINED_FUNCTION_13_12();
    *(v7 + 16) = xmmword_1BC4BA940;
    v8 = MEMORY[0x1E69E6158];
    v9 = String.init<A>(reflecting:)();
    v11 = v10;
    *(v7 + 56) = v8;
    *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    OUTLINED_FUNCTION_5_103();
    _s15ConversationKit11ParticipantVWOhTm_12();
    type metadata accessor for ParticipantReaction(0);
    v12 = OUTLINED_FUNCTION_57_11();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    value = v6.value;

    OUTLINED_FUNCTION_3_119();
    OUTLINED_FUNCTION_38_2();
    _s15ConversationKit11ParticipantVWObTm_4();
    v18 = type metadata accessor for ParticipantReaction(0);
    *(a3 + *(v18 + 20)) = value;

    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v18);
  }
}

uint64_t default argument 8 of ReactionNotice.init(reactions:uuid:timeSinceReferenceDate:priority:bundleIdentifier:shouldTransitionToHUD:actionHandler:dismissHandler:dismissalDuration:noticeAccessory:)()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 1096))();
}

double default argument 9 of ReactionNotice.init(reactions:uuid:timeSinceReferenceDate:priority:bundleIdentifier:shouldTransitionToHUD:actionHandler:dismissHandler:dismissalDuration:noticeAccessory:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1BC4BB7D0;
  return result;
}

void SessionActionNotice.init(type:participant:conversation:activity:triggeredLocally:deviceFamily:uuid:timeSinceReferenceDate:bundleIdentifier:shouldTransitionToHUD:actionHandler:dismissHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_218_1();
  v61 = v35;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  OUTLINED_FUNCTION_238_1();
  v53 = v52[1];
  *v51 = *v52;
  v51[1] = v53;
  v54 = type metadata accessor for SessionActionNotice(0);
  outlined init with take of Participant?(v47, v51 + v54[5], &_s15ConversationKit11ParticipantVSgMd);
  outlined init with take of TapInteractionHandler(v45, v51 + v54[6]);
  outlined init with take of TapInteractionHandler(v43, v51 + v54[7]);
  *(v51 + v54[8]) = v41;
  v55 = v51 + v54[9];
  *v55 = v39;
  v55[8] = v37 & 1;
  v56 = v54[10];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  (*(v57 + 32))(v51 + v56, v61);
  *(v51 + v54[11]) = v49;
  v58 = (v51 + v54[12]);
  *v58 = a29;
  v58[1] = a30;
  *(v51 + v54[13]) = a31;
  v59 = (v51 + v54[14]);
  *v59 = a10;
  v59[1] = a11;
  v60 = (v51 + v54[15]);
  *v60 = a34;
  v60[1] = a35;
  OUTLINED_FUNCTION_217_1();
}

void SessionActionNotice.NoticeType.init(notice:)(void *a1@<X0>, void *a2@<X8>)
{
  switch([a1 sessionEventType])
  {
    case 1uLL:

      v6 = 0;
      v7 = xmmword_1BC4D6810;
      goto LABEL_30;
    case 2uLL:

      v6 = 0;
      v7 = xmmword_1BC4B6480;
      goto LABEL_30;
    case 3uLL:

      v6 = 0;
      v7 = xmmword_1BC4D6800;
      goto LABEL_30;
    case 4uLL:

      v6 = 0;
      v7 = xmmword_1BC4D67F0;
      goto LABEL_30;
    case 7uLL:
      outlined bridged method (pb) of @objc TUConversationNotice.item.getter(a1);
      OUTLINED_FUNCTION_216_0();
      v6 = 0;
      if (v3)
      {
        v17 = v2;
      }

      else
      {
        v17 = 0;
      }

      v18 = 0xE000000000000000;
      if (v3)
      {
        v18 = v3;
      }

      *a2 = v17;
      a2[1] = v18;
      v14 = 0x8000000000000000;
      break;
    case 8uLL:
      v8 = [a1 queueItemType];
      if (v8 == 2)
      {
        v11 = 0x4000000000000001;
        outlined bridged method (pb) of @objc TUConversationNotice.item.getter(a1);
        OUTLINED_FUNCTION_216_0();
        if (v3)
        {
          v9 = v2;
        }

        else
        {
          v9 = 0;
        }

        if (v3)
        {
          v10 = v3;
        }

        else
        {
          v10 = 0xE000000000000000;
        }
      }

      else if (v8 == 1)
      {
        outlined bridged method (pb) of @objc TUConversationNotice.item.getter(a1);
        OUTLINED_FUNCTION_216_0();
        if (v3)
        {
          v9 = v2;
        }

        else
        {
          v9 = 0;
        }

        if (v3)
        {
          v10 = v3;
        }

        else
        {
          v10 = 0xE000000000000000;
        }

        v11 = 0x4000000000000000;
      }

      else
      {

        v9 = 0;
        v10 = 0;
        v11 = 0x4000000000000002;
      }

      v6 = 0;
      *a2 = v9;
      a2[1] = v10;
      a2[2] = v11;
      goto LABEL_33;
    case 0xAuLL:
      v12 = [a1 queueItemType];
      if (v12 == 2)
      {
        outlined bridged method (pb) of @objc TUConversationNotice.item.getter(a1);
        OUTLINED_FUNCTION_216_0();
        OUTLINED_FUNCTION_260_2();
        if (v16)
        {
          v15 = 0xE000000000000000;
        }

        else
        {
          v15 = v3;
        }

        v14 = 1;
      }

      else if (v12 == 1)
      {
        outlined bridged method (pb) of @objc TUConversationNotice.item.getter(a1);
        OUTLINED_FUNCTION_216_0();
        OUTLINED_FUNCTION_260_2();
        v15 = 0xE000000000000000;
        if (!v16)
        {
          v15 = v3;
        }
      }

      else
      {

        v13 = 0;
        v15 = 0;
        v14 = 2;
      }

      *a2 = v13;
      a2[1] = v15;
      v6 = 1;
      break;
    case 0xBuLL:

      v6 = 0;
      v7 = xmmword_1BC4D67E0;
      goto LABEL_30;
    case 0xCuLL:

      v6 = 0;
      *a2 = 0;
      a2[1] = 0;
      goto LABEL_31;
    case 0xDuLL:

      v6 = 0;
      v7 = xmmword_1BC4C9460;
      goto LABEL_30;
    case 0xEuLL:

      v6 = 0;
      v7 = xmmword_1BC4D67B0;
      goto LABEL_30;
    case 0xFuLL:

      v6 = 0;
      v7 = xmmword_1BC4D2F60;
LABEL_30:
      *a2 = v7;
LABEL_31:
      v14 = 0xC000000000000000;
      break;
    default:

      v6 = 0;
      *a2 = 0;
      a2[1] = 0;
      v14 = 0x3FFFFFFFCLL;
      break;
  }

  a2[2] = v14;
LABEL_33:
  a2[3] = v6;
}

uint64_t SessionActionNotice.NoticeType.isSessionChange.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v22[0] = *v0;
  v22[1] = v2;
  v22[2] = v3;
  v22[3] = v4;
  v22[4] = 0;
  v22[5] = 0;
  v23 = xmmword_1BC4CB170;
  switch(v3 >> 62)
  {
    case 2uLL:
      v17 = xmmword_1BC4CB170;

      goto LABEL_4;
    case 3uLL:
      OUTLINED_FUNCTION_124();
      if (v15 && !(v2 | v1 | v4))
      {
        v16 = v22;
LABEL_16:
        outlined destroy of IDView<AvatarStackView, [UUID]>(v16, &_s15ConversationKit19SessionActionNoticeV0E4TypeO_AEtMd);
        return 1;
      }

      v17 = v14;
      if (v1 == 1 && !v2)
      {
        OUTLINED_FUNCTION_124();
        if (v15)
        {
          if (!v4)
          {
            outlined destroy of IDView<AvatarStackView, [UUID]>(v22, &_s15ConversationKit19SessionActionNoticeV0E4TypeO_AEtMd);
            v18 = xmmword_1BC4C9460;
            v19 = v17;
            v20 = xmmword_1BC4C9460;
            v21 = v17;
            v16 = &v18;
            goto LABEL_16;
          }
        }
      }

      if (v1 != 2 || v2 || (OUTLINED_FUNCTION_124(), !v15) || v4)
      {
        if (v1 != 3 || v2 || (OUTLINED_FUNCTION_124(), !v15) || v4)
        {
          if (v1 != 4 || v2 || (OUTLINED_FUNCTION_124(), !v15) || v4)
          {
            if (v1 != 5 || v2 || (OUTLINED_FUNCTION_124(), !v15) || v4)
            {
              if (v1 != 6 || v2 || (OUTLINED_FUNCTION_124(), !v15) || v4)
              {
                if (v1 == 7 && !v2)
                {
                  OUTLINED_FUNCTION_124();
                }
              }
            }
          }
        }
      }

LABEL_4:
      OUTLINED_FUNCTION_93_1();
      outlined destroy of IDView<AvatarStackView, [UUID]>(v7, v8);
      *&v18 = v1;
      *(&v18 + 1) = v2;
      *&v19 = v3;
      *(&v19 + 1) = v4;
      v20 = xmmword_1BC4C9460;
      v21 = v17;
      v9 = OUTLINED_FUNCTION_76();
      outlined copy of SessionActionNotice.NoticeType(v9, v10, v3);
      OUTLINED_FUNCTION_93_1();
      outlined destroy of IDView<AvatarStackView, [UUID]>(v11, v12);
      return 0;
    default:
      v17 = xmmword_1BC4CB170;
      v5 = OUTLINED_FUNCTION_76();
      outlined copy of CallScreening.EndingAction(v5, v6, v3);
      goto LABEL_4;
  }
}

void SystemUpdateNotice.init(type:activity:uuid:timeSinceReferenceDate:priority:bundleIdentifier:shouldTransitionToHUD:actionHandler:dismissHandler:subtitleStyle:noticeAccessory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t *a35)
{
  OUTLINED_FUNCTION_218_1();
  v61 = v35;
  v62 = v36;
  v60 = v37;
  v39 = v38;
  v41 = v40;
  *(v40 + 24) = *v42;
  OUTLINED_FUNCTION_238_1();
  v44 = *v43;
  v45 = *a34;
  v46 = *a35;
  v47 = a35[1];
  *v41 = v48;
  *(v41 + 8) = v49;
  *(v41 + 16) = v50;
  *(v41 + 40) = v51;
  *(v41 + 56) = *(v52 + 32);
  updated = type metadata accessor for SystemUpdateNotice(0);
  v54 = updated[6];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  (*(v55 + 32))(v41 + v54, v60);
  *(v41 + updated[7]) = v39;
  *(v41 + updated[8]) = v44;
  v56 = (v41 + updated[9]);
  *v56 = v61;
  v56[1] = v62;
  *(v41 + updated[10]) = a29;
  v57 = (v41 + updated[11]);
  *v57 = a30;
  v57[1] = a31;
  v58 = (v41 + updated[12]);
  *v58 = a10;
  v58[1] = a11;
  *(v41 + updated[13]) = v45;
  v59 = (v41 + updated[14]);
  *v59 = v46;
  v59[1] = v47;
  OUTLINED_FUNCTION_217_1();
}

ConversationKit::NoticePriority_optional __swiftcall NoticePriority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NoticePriority@<X0>(uint64_t *a1@<X8>)
{
  result = NoticePriority.rawValue.getter();
  *a1 = result;
  return result;
}

ConversationKit::ConversationNoticeStyle_optional __swiftcall ConversationNoticeStyle.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_104();
  v3 = v2;
  v4._object = v1;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationNoticeStyle.init(rawValue:), v4);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t ConversationNoticeStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x6765746E696E6F6ELL;
  }

  else
  {
    return 0x7461726765746E69;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConversationNoticeStyle@<X0>(uint64_t *a1@<X8>)
{
  result = ConversationNoticeStyle.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConversationNoticeSubtitleStyle@<X0>(uint64_t *a1@<X8>)
{
  result = ConversationNoticeSubtitleStyle.rawValue.getter();
  *a1 = result;
  return result;
}

BOOL specialized Notice.isExpired.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = *(v1 + *(type metadata accessor for SessionActionNotice(0) + 44));
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return v7 - v8 > (*(*static Defaults.shared + 1032))();
}

{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = *(v1 + *(type metadata accessor for AppLaunchNotice(0) + 20));
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return v7 - v8 > (*(*static Defaults.shared + 1032))();
}

BOOL specialized Notice.isExpired.getter(uint64_t (*a1)(void))
{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_57();
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v3 = OUTLINED_FUNCTION_208();
  v4(v3);
  a1(0);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v6 = (*(v5 + 1032))();
  return OUTLINED_FUNCTION_154_0(v6);
}

{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_57();
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v3 = OUTLINED_FUNCTION_208();
  v4(v3);
  a1(0);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v6 = (*(v5 + 1032))();
  return OUTLINED_FUNCTION_154_0(v6);
}

BOOL Notice.isExpired.getter()
{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_13_57();
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v1 = OUTLINED_FUNCTION_209();
  v2(v1);
  v3 = OUTLINED_FUNCTION_1_5();
  v4(v3);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v6 = (*(v5 + 1032))();
  return OUTLINED_FUNCTION_154_0(v6);
}

uint64_t Notice.dismissalDuration.getter()
{
  return Notice.dismissalDuration.getter();
}

{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 1024))();
}

uint64_t specialized Notice.dismissalDuration.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static Defaults.shared + 1024))();
}

void specialized Notice.subtitle.getter()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  type metadata accessor for AttributedString.CharacterView();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v1();
  AttributedString.characters.getter();
  v4 = OUTLINED_FUNCTION_7_8();
  v5(v4);
  OUTLINED_FUNCTION_34_29();
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v6, v7);
  OUTLINED_FUNCTION_45_1();
  String.init<A>(_:)();
  OUTLINED_FUNCTION_49();
}

uint64_t specialized Notice.subtitle.getter()
{
  v1 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v1);
  v2 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for SessionActionNotice(0) + 32)) == 1)
  {
    SessionActionNotice.attributionDescription.getter();
  }

  else
  {
    SessionActionNotice.actionDescription.getter();
  }

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  AttributedString.characters.getter();
  (*(v4 + 8))(v6, v3);
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
  return String.init<A>(_:)();
}

{
  v0 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v0);
  v1 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppLaunchNotice.noticeContent.getter();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  AttributedString.characters.getter();
  (*(v3 + 8))(v5, v2);
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
  return String.init<A>(_:)();
}

{
  v0 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v0);
  v1 = type metadata accessor for AttributedString();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  FaceIDUnavailableNotice.attributedSubtitle.getter();
  AttributedString.characters.getter();
  (*(v2 + 8))(v4, v1);
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
  return String.init<A>(_:)();
}

void Notice.subtitle.getter()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  v3 = v2;
  type metadata accessor for AttributedString.CharacterView();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  (*(v1 + 96))(v3, v1);
  AttributedString.characters.getter();
  v6 = OUTLINED_FUNCTION_157();
  v7(v6);
  OUTLINED_FUNCTION_34_29();
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v8, v9);
  OUTLINED_FUNCTION_45_1();
  String.init<A>(_:)();
  OUTLINED_FUNCTION_49();
}

void Notice.subtitleStyle.getter(_BYTE *a1@<X8>)
{
  Notice.subtitleStyle.getter(a1);
}

{
  OUTLINED_FUNCTION_27_0(a1);
}

BOOL specialized Notice.shouldReplace(notice:)(void *a1)
{
  v3 = *(v1 + *(type metadata accessor for ReactionNotice(0) + 28));
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 56))(&v7, v4, v5);
  return v7 >= v3;
}

BOOL specialized Notice.shouldReplace(notice:)()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v3 = *(v0 + *(v2(v1) + 32));
  OUTLINED_FUNCTION_32_21();
  v4 = OUTLINED_FUNCTION_2_14();
  v5(v4);
  return v7 >= v3;
}

BOOL Notice.shouldReplace(notice:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_39_1(a1, a2);
  v3(v2);
  OUTLINED_FUNCTION_32_21();
  v4 = OUTLINED_FUNCTION_2_14();
  v5(v4);
  return v7 >= v8;
}

uint64_t key path getter for SessionActivationRequestNotice.expirationCheck : SessionActivationRequestNotice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
  a2[1] = v5;
}

uint64_t key path setter for SessionActivationRequestNotice.expirationCheck : SessionActivationRequestNotice(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out Bool);
  a2[1] = v5;
  return result;
}

uint64_t SessionActivationRequestNotice.expirationCheck.setter()
{
  OUTLINED_FUNCTION_55();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SessionActivationRequestNotice.uuid.getter()
{
  return SessionActivationRequestNotice.uuid.getter();
}

{
  v0 = OUTLINED_FUNCTION_30();
  v1(v0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_97_6();

  return v3(v2);
}

uint64_t SessionActivationRequestNotice.uuid.setter()
{
  return SessionActivationRequestNotice.uuid.setter();
}

{
  v2 = OUTLINED_FUNCTION_17_1();
  v4 = *(v3(v2) + 24);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t SessionActivationRequestNotice.uuid.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActivationRequestNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for SessionActivationRequestNotice(v2);
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t SessionActivationRequestNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void SessionActivationRequestNotice.priority.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for SessionActivationRequestNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 32));
}

uint64_t SessionActivationRequestNotice.priority.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for SessionActivationRequestNotice(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t SessionActivationRequestNotice.priority.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void SessionActivationRequestNotice.style.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for SessionActivationRequestNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 36));
}

uint64_t SessionActivationRequestNotice.style.setter()
{
  v0 = OUTLINED_FUNCTION_105_2();
  v1 = type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_242_0(v1);
}

uint64_t SessionActivationRequestNotice.style.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActivationRequestNotice.shouldTransitionToHUD.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_207(v1);
}

uint64_t SessionActivationRequestNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActivationRequestNotice.noticeAccessory.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for SessionActivationRequestNotice(v0);
  v2 = OUTLINED_FUNCTION_153_0(*(v1 + 44));

  return outlined copy of NoticeAccessory(v2, v3);
}

uint64_t SessionActivationRequestNotice.noticeAccessory.setter()
{
  v3 = OUTLINED_FUNCTION_247_1();
  v4 = type metadata accessor for SessionActivationRequestNotice(v3);
  v5 = OUTLINED_FUNCTION_115_2(*(v4 + 44));
  result = outlined consume of NoticeAccessory(v5, v6);
  *v1 = v0;
  v1[1] = v2;
  return result;
}

uint64_t SessionActivationRequestNotice.noticeAccessory.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for SessionActivationRequestNotice.actionHandler : SessionActivationRequestNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SessionActivationRequestNotice(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for SessionActivationRequestNotice.actionHandler : SessionActivationRequestNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for SessionActivationRequestNotice(0) + 48));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SessionActivationRequestNotice.actionHandler.getter()
{
  return SessionActivationRequestNotice.actionHandler.getter();
}

{
  v0 = OUTLINED_FUNCTION_186();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_14_50(*(v2 + 48));
}

uint64_t SessionActivationRequestNotice.actionHandler.setter()
{
  return SessionActivationRequestNotice.actionHandler.setter();
}

{
  v0 = OUTLINED_FUNCTION_38_22();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_52_13(*(v2 + 48));
}

uint64_t SessionActivationRequestNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for SessionActivationRequestNotice.dismissHandler : SessionActivationRequestNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SessionActivationRequestNotice(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for SessionActivationRequestNotice.dismissHandler : SessionActivationRequestNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for SessionActivationRequestNotice(0) + 52));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SessionActivationRequestNotice.dismissHandler.getter()
{
  return SessionActivationRequestNotice.dismissHandler.getter();
}

{
  v0 = OUTLINED_FUNCTION_186();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_14_50(*(v2 + 52));
}

uint64_t SessionActivationRequestNotice.dismissHandler.setter()
{
  return SessionActivationRequestNotice.dismissHandler.setter();
}

{
  v0 = OUTLINED_FUNCTION_38_22();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_52_13(*(v2 + 52));
}

uint64_t SessionActivationRequestNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActivationRequestNotice.bundleIdentifier.getter()
{
  type metadata accessor for SessionActivationRequestNotice(0);
  OUTLINED_FUNCTION_116_2();

  return OUTLINED_FUNCTION_46();
}

uint64_t SessionActivationRequestNotice.bundleIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_38_22();
  type metadata accessor for SessionActivationRequestNotice(v3);
  result = OUTLINED_FUNCTION_269_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SessionActivationRequestNotice.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

unint64_t SessionActivationRequestNotice.description.getter()
{
  OUTLINED_FUNCTION_24_7();
  v1 = type metadata accessor for SessionActivationRequestNotice(0);
  OUTLINED_FUNCTION_63_1((v0 + *(v1 + 60)));
  v2 = OUTLINED_FUNCTION_4_38();
  v4 = v3(v2);
  MEMORY[0x1BFB20B10](v4);

  return 0xD000000000000020;
}

uint64_t SessionActivationRequestNotice.activity.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for SessionActivationRequestNotice(v0);
  OUTLINED_FUNCTION_3_20(*(v1 + 60));
  return outlined init with copy of Activity();
}

void SessionActivationRequestNotice.equalTo(notice:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit30SessionActivationRequestNoticeVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_96();
  type metadata accessor for SessionActivationRequestNotice(v5);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_10();
  outlined init with copy of Activity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_40_18();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    OUTLINED_FUNCTION_38_2();
    _s15ConversationKit11ParticipantVWObTm_4();
    __swift_project_boxed_opaque_existential_1((v0 + *(v2 + 60)), *(v0 + *(v2 + 60) + 24));
    v11 = OUTLINED_FUNCTION_0_95();
    v13 = v12(v11);
    v15 = v14;
    __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 60)), *(v1 + *(v2 + 60) + 24));
    v16 = OUTLINED_FUNCTION_2_14();
    if (v13 != v17(v16) || v15 != v18)
    {
      OUTLINED_FUNCTION_157();
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v2);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v1, &_s15ConversationKit30SessionActivationRequestNoticeVSgMd);
  }

  OUTLINED_FUNCTION_49();
}

ConversationKit::AccountUpdateNotice::NoticeType_optional __swiftcall AccountUpdateNotice.NoticeType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_104();
  v3 = v2;
  v4._object = v1;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AccountUpdateNotice.NoticeType.init(rawValue:), v4);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t AccountUpdateNotice.NoticeType.rawValue.getter()
{
  OUTLINED_FUNCTION_223_1();
  v2 = 1952867692;
  if (!v3)
  {
    v2 = 0x6E456172656D6163;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AccountUpdateNotice.NoticeType@<X0>(uint64_t *a1@<X8>)
{
  result = AccountUpdateNotice.NoticeType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t AccountUpdateNotice.description.getter()
{
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_223_1();
  v4 = 1952867692;
  if (!v5)
  {
    v4 = 0x6E456172656D6163;
    v3 = 0xED000064656C6261;
  }

  if (v0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  if (v0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v1;
  }

  MEMORY[0x1BFB20B10](v6, v7);

  return 0xD000000000000015;
}

uint64_t AccountUpdateNotice.participants.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t AccountUpdateNotice.uuid.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AccountUpdateNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for AccountUpdateNotice(v2);
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t AccountUpdateNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void AccountUpdateNotice.priority.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  updated = type metadata accessor for AccountUpdateNotice(v0);
  OUTLINED_FUNCTION_106_3(*(updated + 32));
}

uint64_t AccountUpdateNotice.priority.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for AccountUpdateNotice(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t AccountUpdateNotice.priority.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AccountUpdateNotice.bundleIdentifier.getter()
{
  return AccountUpdateNotice.bundleIdentifier.getter();
}

{
  v0 = OUTLINED_FUNCTION_186();
  v1(v0);
  OUTLINED_FUNCTION_116_2();

  return OUTLINED_FUNCTION_46();
}

uint64_t AccountUpdateNotice.bundleIdentifier.setter()
{
  return AccountUpdateNotice.bundleIdentifier.setter();
}

{
  v3 = OUTLINED_FUNCTION_38_22();
  v4(v3);
  result = OUTLINED_FUNCTION_269_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AccountUpdateNotice.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AccountUpdateNotice.shouldTransitionToHUD.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  updated = type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_207(updated);
}

uint64_t AccountUpdateNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for AccountUpdateNotice.actionHandler : AccountUpdateNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AccountUpdateNotice(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for AccountUpdateNotice.actionHandler : AccountUpdateNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for AccountUpdateNotice(0) + 44));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t AccountUpdateNotice.actionHandler.getter()
{
  return AccountUpdateNotice.actionHandler.getter();
}

{
  v0 = OUTLINED_FUNCTION_186();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_14_50(*(v2 + 44));
}

uint64_t AccountUpdateNotice.actionHandler.setter()
{
  return AccountUpdateNotice.actionHandler.setter();
}

{
  v0 = OUTLINED_FUNCTION_38_22();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_52_13(*(v2 + 44));
}

uint64_t AccountUpdateNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for AccountUpdateNotice.dismissHandler : AccountUpdateNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AccountUpdateNotice(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for AccountUpdateNotice.dismissHandler : AccountUpdateNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for AccountUpdateNotice(0) + 48));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t AccountUpdateNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AccountUpdateNotice.coalesce(with:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19AccountUpdateNoticeVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for AccountUpdateNotice(v5);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_215_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  if (!OUTLINED_FUNCTION_147())
  {
    OUTLINED_FUNCTION_77_9();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v2, &_s15ConversationKit19AccountUpdateNoticeVSgMd);
    return 0;
  }

  OUTLINED_FUNCTION_40_18();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_45_1();
  _s15ConversationKit11ParticipantVWObTm_4();
  if ((specialized == infix<A>(_:_:)(*v1, *v0) & 1) == 0)
  {
    if (AccountUpdateNotice.hasSameParticipants(as:)(v0))
    {
      v13 = *v0;
      OUTLINED_FUNCTION_19_37();
      _s15ConversationKit11ParticipantVWOhTm_12();
      *v1 = v13;
      return 1;
    }

    OUTLINED_FUNCTION_19_37();
    _s15ConversationKit11ParticipantVWOhTm_12();
    return 0;
  }

  specialized Array.append<A>(contentsOf:)(v11);
  OUTLINED_FUNCTION_19_37();
  _s15ConversationKit11ParticipantVWOhTm_12();
  return 1;
}

uint64_t AccountUpdateNotice.hasSameParticipants(as:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(*(v1 + 8) + 16) != *(v2 + 16))
  {
    return 0;
  }

  v6 = *(v1 + 8);

  specialized MutableCollection<>.sort(by:)(&v6);
  v6 = v2;

  specialized MutableCollection<>.sort(by:)(&v6);
  OUTLINED_FUNCTION_38_2();
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit11ParticipantV_Tt1g5();
  v4 = v3;

  return v4 & 1;
}

BOOL closure #1 in AccountUpdateNotice.title.getter()
{
  type metadata accessor for Participant(0);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t _sSTsE5count5whereSiSb7ElementQzqd__YKXE_tqd__YKs5ErrorRd__lFSay15ConversationKit11ParticipantVG_s5NeverOTg5(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = 0;
  v8 = 0;
  v9 = *(a3 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      return v7;
    }

    v10 = *(type metadata accessor for Participant(0) - 8);
    result = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
    if (v4)
    {
      break;
    }

    v4 = 0;
    ++v8;
    v12 = __OFADD__(v7, result & 1);
    v7 += result & 1;
    if (v12)
    {
      __break(1u);
      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t AccountUpdateNotice.noticeAccessory.getter()
{
  return AccountUpdateNotice.noticeAccessory.getter();
}

{
  v0 = OUTLINED_FUNCTION_30();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_153_0(*(v2 + 52));

  return outlined copy of NoticeAccessory(v3, v4);
}

uint64_t AccountUpdateNotice.noticeAccessory.setter()
{
  return AccountUpdateNotice.noticeAccessory.setter();
}

{
  v3 = OUTLINED_FUNCTION_247_1();
  v5 = v4(v3);
  v6 = OUTLINED_FUNCTION_115_2(*(v5 + 52));
  result = outlined consume of NoticeAccessory(v6, v7);
  *v1 = v0;
  v1[1] = v2;
  return result;
}

uint64_t AccountUpdateNotice.noticeAccessory.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AccountUpdateNotice.equalTo(notice:)()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19AccountUpdateNoticeVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for AccountUpdateNotice(v6);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_215_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  OUTLINED_FUNCTION_148_0();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_40_18();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_44_0();
    _s15ConversationKit11ParticipantVWObTm_4();
    v12 = 0;
    if (specialized == infix<A>(_:_:)(*v1, *v2))
    {
      v12 = AccountUpdateNotice.hasSameParticipants(as:)(v2);
    }

    OUTLINED_FUNCTION_19_37();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_57_11();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v3);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit19AccountUpdateNoticeVSgMd);
    v12 = 0;
  }

  return v12 & 1;
}

void SessionActionNotice.QueueItemType.init(notice:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [a1 queueItemType];
  if (v5 == 2)
  {
    outlined bridged method (pb) of @objc TUConversationNotice.item.getter(a1);
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_260_2();
    if (v9)
    {
      v8 = 0xE000000000000000;
    }

    else
    {
      v8 = v2;
    }

    v7 = 1;
  }

  else if (v5 == 1)
  {
    outlined bridged method (pb) of @objc TUConversationNotice.item.getter(a1);
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_260_2();
    v8 = 0xE000000000000000;
    if (!v9)
    {
      v8 = v2;
    }
  }

  else
  {

    v6 = 0;
    v8 = 0;
    v7 = 2;
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v7;
}

uint64_t static SessionActionNotice.QueueItemType.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_20;
    }

    v19 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v21 = OUTLINED_FUNCTION_1_5();
      outlined copy of CallScreening.EndingAction(v21, v22, 0);
      v23 = OUTLINED_FUNCTION_38_2();
      outlined copy of CallScreening.EndingAction(v23, v24, 0);
      v25 = OUTLINED_FUNCTION_38_2();
      outlined consume of CallScreening.EndingAction(v25, v26, 0);
      v16 = OUTLINED_FUNCTION_1_5();
      v18 = 0;
      goto LABEL_15;
    }

    outlined copy of CallScreening.EndingAction(v19, v2, 0);
    v51 = OUTLINED_FUNCTION_38_2();
    outlined copy of CallScreening.EndingAction(v51, v52, 0);
    v53 = OUTLINED_FUNCTION_38_2();
    outlined consume of CallScreening.EndingAction(v53, v54, 0);
    v40 = OUTLINED_FUNCTION_38_2();
    v42 = 0;
LABEL_24:
    outlined consume of CallScreening.EndingAction(v40, v41, v42);
    return 1;
  }

  if (v4 != 1)
  {
    if (v7 != 2 || (v5 | v6) != 0)
    {
      goto LABEL_20;
    }

    v38 = OUTLINED_FUNCTION_38_2();
    outlined consume of CallScreening.EndingAction(v38, v39, 2u);
    v40 = 0;
    v41 = 0;
    v42 = 2;
    goto LABEL_24;
  }

  if (v7 != 1)
  {
LABEL_20:
    v29 = OUTLINED_FUNCTION_1_5();
    outlined copy of CallScreening.EndingAction(v29, v30, v7);
    v31 = OUTLINED_FUNCTION_38_2();
    outlined copy of CallScreening.EndingAction(v31, v32, v4);
    v33 = OUTLINED_FUNCTION_38_2();
    outlined consume of CallScreening.EndingAction(v33, v34, v4);
    v35 = OUTLINED_FUNCTION_1_5();
    outlined consume of CallScreening.EndingAction(v35, v36, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    OUTLINED_FUNCTION_67_8();
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v10 = OUTLINED_FUNCTION_1_5();
    outlined copy of CallScreening.EndingAction(v10, v11, 1u);
    v12 = OUTLINED_FUNCTION_38_2();
    outlined copy of CallScreening.EndingAction(v12, v13, 1u);
    v14 = OUTLINED_FUNCTION_38_2();
    outlined consume of CallScreening.EndingAction(v14, v15, 1u);
    v16 = OUTLINED_FUNCTION_1_5();
    v18 = 1;
LABEL_15:
    outlined consume of CallScreening.EndingAction(v16, v17, v18);
    return v9 & 1;
  }

  v37 = 1;
  v43 = OUTLINED_FUNCTION_38_2();
  outlined copy of CallScreening.EndingAction(v43, v44, 1u);
  v45 = OUTLINED_FUNCTION_38_2();
  outlined copy of CallScreening.EndingAction(v45, v46, 1u);
  v47 = OUTLINED_FUNCTION_38_2();
  outlined consume of CallScreening.EndingAction(v47, v48, 1u);
  v49 = OUTLINED_FUNCTION_38_2();
  outlined consume of CallScreening.EndingAction(v49, v50, 1u);
  return v37;
}

uint64_t SessionActionNotice.QueueItemType.description.getter()
{
  if (!*(v0 + 16))
  {
    OUTLINED_FUNCTION_111_4();
    v1 = OUTLINED_FUNCTION_152_0();
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    OUTLINED_FUNCTION_51_17();
LABEL_5:
    MEMORY[0x1BFB20B10](v1);
    return v3;
  }

  return OUTLINED_FUNCTION_150_0();
}

uint64_t SessionActionNotice.type.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of SessionActionNotice.NoticeType(v2, v3, v4);
}

__n128 SessionActionNotice.type.setter(uint64_t a1)
{
  outlined consume of SessionActionNotice.NoticeType(*v1, *(v1 + 8), *(v1 + 16));
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  return result;
}

uint64_t SessionActionNotice.participant.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for SessionActionNotice(v0);
  v2 = OUTLINED_FUNCTION_3_20(*(v1 + 20));
  return _s15ConversationKit11ParticipantVSgWOcTm_0(v2, v3, v4);
}

uint64_t SessionActionNotice.participant.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = type metadata accessor for SessionActionNotice(v2);
  return _s15ConversationKit11ParticipantVSgWOdTm_0(v0, v1 + *(v3 + 20), &_s15ConversationKit11ParticipantVSgMd);
}

uint64_t SessionActionNotice.participant.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActionNotice.conversation.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for SessionActionNotice(v0);
  OUTLINED_FUNCTION_3_20(*(v1 + 24));
  return outlined init with copy of Activity();
}

uint64_t SessionActionNotice.conversation.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for SessionActionNotice(v2) + 24);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return outlined init with take of TapInteractionHandler(v0, v1 + v3);
}

uint64_t SessionActionNotice.conversation.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActionNotice.activity.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for SessionActionNotice(v0);
  OUTLINED_FUNCTION_3_20(*(v1 + 28));
  return outlined init with copy of Activity();
}

uint64_t SessionActionNotice.activity.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for SessionActionNotice(v2) + 28);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return outlined init with take of TapInteractionHandler(v0, v1 + v3);
}

uint64_t SessionActionNotice.activity.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActionNotice.triggeredLocally.setter(char a1)
{
  result = OUTLINED_FUNCTION_46_17();
  *(v1 + v4) = a1;
  return result;
}

uint64_t SessionActionNotice.deviceFamily.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SessionActionNotice(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SessionActionNotice.deviceFamily.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActionNotice.uuid.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for SessionActionNotice(v0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_97_6();

  return v2(v1);
}

uint64_t SessionActionNotice.uuid.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for SessionActionNotice(v2) + 40);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t SessionActionNotice.uuid.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActionNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for SessionActionNotice(v2);
  *(v0 + *(result + 44)) = v1;
  return result;
}

uint64_t SessionActionNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActionNotice.bundleIdentifier.getter()
{
  type metadata accessor for SessionActionNotice(0);
  OUTLINED_FUNCTION_116_2();

  return OUTLINED_FUNCTION_46();
}

uint64_t SessionActionNotice.bundleIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_38_22();
  type metadata accessor for SessionActionNotice(v3);
  result = OUTLINED_FUNCTION_269_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SessionActionNotice.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActionNotice.shouldTransitionToHUD.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_241_0(v1);
}

uint64_t SessionActionNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for SessionActionNotice.actionHandler : SessionActionNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SessionActionNotice(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for SessionActionNotice.actionHandler : SessionActionNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for SessionActionNotice(0) + 56));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SessionActionNotice.actionHandler.getter()
{
  return SessionActionNotice.actionHandler.getter();
}

{
  v0 = OUTLINED_FUNCTION_186();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_14_50(*(v2 + 56));
}

uint64_t SessionActionNotice.actionHandler.setter()
{
  return SessionActionNotice.actionHandler.setter();
}

{
  v0 = OUTLINED_FUNCTION_38_22();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_52_13(*(v2 + 56));
}

uint64_t SessionActionNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for SessionActionNotice.dismissHandler : SessionActionNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SessionActionNotice(0) + 60));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for SessionActionNotice.dismissHandler : SessionActionNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for SessionActionNotice(0) + 60));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SessionActionNotice.dismissHandler.setter()
{
  v0 = OUTLINED_FUNCTION_38_22();
  v1 = type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_52_13(*(v1 + 60));
}

uint64_t SessionActionNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void SessionActionNotice.style.getter()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_28_6();
  v8 = type metadata accessor for Collaboration(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  if (static Platform.current.getter() == 1)
  {
    v11 = *v0;
    v10 = v0[1];
    v12 = v0[3];
    if (v0[2] >> 62 == 3 && ((OUTLINED_FUNCTION_81_3(), !v13) || v10 | v11 | v12) && (v11 != 1 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 2 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 3 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 4 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 5 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 6 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 7 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 8 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 9 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12))
    {
      OUTLINED_FUNCTION_49_17();
      OUTLINED_FUNCTION_49_17();
      OUTLINED_FUNCTION_161_0();
      __swift_project_boxed_opaque_existential_1((v0 + v21), *(v0 + v21 + 24));
      v22 = OUTLINED_FUNCTION_0_95();
      v23(v22);
      OUTLINED_FUNCTION_115(v1, 1, v8);
      if (v13)
      {
        outlined destroy of IDView<AvatarStackView, [UUID]>(v1, &_s15ConversationKit13CollaborationVSgMd);
      }

      else
      {
        OUTLINED_FUNCTION_117_1();
        OUTLINED_FUNCTION_62_0();
        _s15ConversationKit11ParticipantVWObTm_4();
        v24 = *(v2 + 16);
        OUTLINED_FUNCTION_45_18();
        if (v24 != 2)
        {
          v20 = 1;
          goto LABEL_53;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_157();
      OUTLINED_FUNCTION_239_0();
      outlined copy of SessionActionNotice.NoticeType(v14, v15, v16);
      OUTLINED_FUNCTION_157();
      OUTLINED_FUNCTION_239_0();
      outlined consume of SessionActionNotice.NoticeType(v17, v18, v19);
      OUTLINED_FUNCTION_49_17();
    }
  }

  v20 = 0;
LABEL_53:
  *v4 = v20;
  OUTLINED_FUNCTION_30_0();
}

uint64_t SessionActionNotice.dismissalDuration.getter()
{
  v1 = v0[2];
  if (v1 >> 62 != 3)
  {
    goto LABEL_36;
  }

  v2 = v0[3];
  v4 = *v0;
  v3 = v0[1];
  v5 = v1 == 0xC000000000000000 && (v2 | *v0 | v3) == 0;
  if (v5)
  {
LABEL_33:
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    OUTLINED_FUNCTION_0_1();
    return (*(v13 + 1008))();
  }

  if (v2 || ((OUTLINED_FUNCTION_230_1(), v5) ? (v6 = v4 == 1) : (v6 = 0), v6 ? (v7 = v3 == 0) : (v7 = 0), !v7))
  {
    if (v2 || ((OUTLINED_FUNCTION_230_1(), v5) ? (v8 = v4 == 7) : (v8 = 0), v8 ? (v9 = v3 == 0) : (v9 = 0), !v9))
    {
      if (!v2)
      {
        v12 = v1 == 0xC000000000000000 && v4 == 10;
        if (v12 && !v3)
        {
          goto LABEL_33;
        }
      }

LABEL_36:
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0_9();
      }

      OUTLINED_FUNCTION_0_1();
      return (*(v14 + 1024))();
    }
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v10 + 1016))();
}

void SessionActionNotice.coalesce(with:)()
{
  OUTLINED_FUNCTION_29();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19SessionActionNoticeVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for SessionActionNotice(v5);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_10();
  outlined init with copy of Activity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  if (!OUTLINED_FUNCTION_149_1())
  {
    OUTLINED_FUNCTION_77_9();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v2, &_s15ConversationKit19SessionActionNoticeVSgMd);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_40_18();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_31_29();
  _s15ConversationKit11ParticipantVWObTm_4();
  v12 = *v1;
  v11 = v1[1];
  v14 = v1[2];
  v13 = v1[3];
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  if (v14 >> 62)
  {
    if (v14 >> 62 == 3 && (v14 == 0xC000000000000000 && !(v11 | v12 | v13) || v12 == 1 && !v11 && v14 == 0xC000000000000000 && !v13 || v12 == 7 && !v11 && v14 == 0xC000000000000000 && !v13))
    {
      v17 = OUTLINED_FUNCTION_25_37();
      outlined copy of SessionActionNotice.NoticeType(v17, v18, v19);
      v20 = OUTLINED_FUNCTION_24_37();
      outlined copy of SessionActionNotice.NoticeType(v20, v21, v22);
      v23 = OUTLINED_FUNCTION_25_37();
      outlined consume of SessionActionNotice.NoticeType(v23, v24, v25);
      v26 = OUTLINED_FUNCTION_24_37();
      outlined consume of SessionActionNotice.NoticeType(v26, v27, v28);
      OUTLINED_FUNCTION_9_74();
      _s15ConversationKit11ParticipantVWOhTm_12();
LABEL_22:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    v29 = OUTLINED_FUNCTION_25_37();
    outlined copy of SessionActionNotice.NoticeType(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_24_37();
    outlined copy of SessionActionNotice.NoticeType(v32, v33, v34);
    goto LABEL_20;
  }

  v35 = OUTLINED_FUNCTION_25_37();
  outlined copy of SessionActionNotice.NoticeType(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_24_37();
  outlined copy of SessionActionNotice.NoticeType(v38, v39, v40);
  if (v16 >> 62 || (v41 = OUTLINED_FUNCTION_25_37(), outlined copy of SessionActionNotice.NoticeType(v41, v42, v43), v44 = OUTLINED_FUNCTION_24_37(), outlined copy of SessionActionNotice.NoticeType(v44, v45, v46), v47 = OUTLINED_FUNCTION_25_37(), outlined consume of SessionActionNotice.NoticeType(v47, v48, v49), v50 = OUTLINED_FUNCTION_24_37(), outlined consume of SessionActionNotice.NoticeType(v50, v51, v52), v14))
  {
LABEL_20:
    v53 = OUTLINED_FUNCTION_25_37();
    outlined consume of SessionActionNotice.NoticeType(v53, v54, v55);
    v56 = OUTLINED_FUNCTION_24_37();
LABEL_21:
    outlined consume of SessionActionNotice.NoticeType(v56, v57, v58);
    OUTLINED_FUNCTION_46();
    outlined assign with take of SessionActionNotice();
    goto LABEL_22;
  }

  v59 = OUTLINED_FUNCTION_24_37();
  outlined consume of SessionActionNotice.NoticeType(v59, v60, v61);
  if (v16)
  {
    v56 = OUTLINED_FUNCTION_25_37();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_9_74();
  _s15ConversationKit11ParticipantVWOhTm_12();
  if (!__OFADD__(v13, v15))
  {
    outlined consume of SessionActionNotice.NoticeType(*v1, v1[1], v1[2]);
    *v1 = v12;
    v1[1] = v11;
    v1[2] = 0;
    v1[3] = v13 + v15;
    goto LABEL_22;
  }

  __break(1u);
}

void SessionActionNotice.shouldReplace(notice:)()
{
  OUTLINED_FUNCTION_29();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19SessionActionNoticeVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for SessionActionNotice(v5);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  outlined init with copy of Activity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  if ((OUTLINED_FUNCTION_149_1() & 1) == 0)
  {
    OUTLINED_FUNCTION_77_9();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v1, &_s15ConversationKit19SessionActionNoticeVSgMd);
    v13 = v0[2];
LABEL_102:
    if (v13 >> 62 == 3)
    {
      OUTLINED_FUNCTION_262_1();
      if (!v18 || v53 | v54 | v52)
      {
        if (v53 || ((OUTLINED_FUNCTION_262_1(), v18) ? (v57 = v56 == 1) : (v57 = 0), !v57 || v55))
        {
          if (!v53)
          {
            OUTLINED_FUNCTION_262_1();
          }
        }
      }
    }

    OUTLINED_FUNCTION_32_21();
    v58 = OUTLINED_FUNCTION_2_14();
    v59(v58);
    goto LABEL_120;
  }

  v7 = 1;
  OUTLINED_FUNCTION_40_18();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_31_29();
  _s15ConversationKit11ParticipantVWObTm_4();
  v12 = *v0;
  v13 = v0[2];
  v14 = v13 >> 62;
  if (v13 >> 62 == 3)
  {
    OUTLINED_FUNCTION_124();
    if (v18 && !(v16 | v12 | v15) || !v16 && ((OUTLINED_FUNCTION_124(), v18) ? (v18 = v12 == 1) : (v18 = 0), v18 && !v17) || !v16 && ((OUTLINED_FUNCTION_124(), v18) ? (v20 = v12 == 7) : (v20 = 0), v20 && !v19) || (v21 = 0, !v16) && ((OUTLINED_FUNCTION_262_1(), v18) ? (v23 = v12 == 10) : (v23 = 0), v23 && !v22))
    {
      v7 = 0;
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  v69 = v12;
  v24 = *v2;
  v25 = v2[2];
  v26 = v25 >> 62;
  if (v25 >> 62 != 3 || ((v27 = v2[3], v28 = v2[1], v25 == 0xC000000000000000) ? (v29 = (v27 | v24 | v28) == 0) : (v29 = 0), !v29 && (!v27 ? (v30 = v25 == 0xC000000000000000) : (v30 = 0), v30 ? (v31 = v24 == 1) : (v31 = 0), v31 ? (v32 = v28 == 0) : (v32 = 0), !v32 && (!v27 ? (v33 = v25 == 0xC000000000000000) : (v33 = 0), v33 ? (v34 = v24 == 7) : (v34 = 0), v34 ? (v35 = v28 == 0) : (v35 = 0), !v35 && (!v27 ? (v36 = v25 == 0xC000000000000000) : (v36 = 0), v36 ? (v37 = v24 == 10) : (v37 = 0), v37 ? (v38 = v28 == 0) : (v38 = 0), !v38)))))
  {
    if (v7)
    {
      v39 = v14;
      v28 = v2[1];
      v27 = v2[3];
      goto LABEL_70;
    }

    goto LABEL_101;
  }

  if ((v21 & 1) == 0)
  {
LABEL_101:
    OUTLINED_FUNCTION_9_74();
    _s15ConversationKit11ParticipantVWOhTm_12();
    goto LABEL_102;
  }

  v39 = v14;
LABEL_70:
  v40 = OUTLINED_FUNCTION_256_1();
  outlined copy of SessionActionNotice.NoticeType(v40, v41, v42);
  OUTLINED_FUNCTION_9_74();
  _s15ConversationKit11ParticipantVWOhTm_12();
  if (!v26)
  {
    if (!v39)
    {
      v60 = OUTLINED_FUNCTION_209();
      outlined copy of CallScreening.EndingAction(v60, v61, v13);
LABEL_119:
      v64 = OUTLINED_FUNCTION_256_1();
      outlined consume of SessionActionNotice.NoticeType(v64, v65, v66);
      v67 = OUTLINED_FUNCTION_209();
      outlined consume of SessionActionNotice.NoticeType(v67, v68, v13);
      goto LABEL_120;
    }

LABEL_118:
    v62 = OUTLINED_FUNCTION_209();
    outlined copy of SessionActionNotice.NoticeType(v62, v63, v13);
    goto LABEL_119;
  }

  if (v26 != 3 || v39 < 3 || v27 != 0 || v25 != 0xC000000000000000 || v24 != 5 || v28 != 0 || v0[3] != 0 || v13 != 0xC000000000000000 || v69 != 4 || v0[1] != 0)
  {
    goto LABEL_118;
  }

  outlined consume of SessionActionNotice.NoticeType(5, 0, 0xC000000000000000);
  outlined consume of SessionActionNotice.NoticeType(4, 0, 0xC000000000000000);
LABEL_120:
  OUTLINED_FUNCTION_30_0();
}

uint64_t SessionActionNotice.shouldPerformActionHandlerOnNoticeTap.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (v4 >> 62 != 3 || (v4 == 0xC000000000000000 ? (v5 = (v1 | v2 | v3) == 0) : (v5 = 0), v5 || (v2 == 1 ? (v6 = v1 == 0) : (v6 = 0), v6 ? (v7 = v4 == 0xC000000000000000) : (v7 = 0), v7 ? (v8 = v3 == 0) : (v8 = 0), v8 || v2 == 2 && !v1 && v4 == 0xC000000000000000 && !v3 || v2 == 3 && !v1 && v4 == 0xC000000000000000 && !v3 || v2 == 4 && !v1 && v4 == 0xC000000000000000 && !v3 || v2 == 5 && !v1 && v4 == 0xC000000000000000 && !v3 || v2 == 6 && !v1 && v4 == 0xC000000000000000 && !v3 || v2 == 7 && !v1 && v4 == 0xC000000000000000 && !v3 || v2 == 8 && !v1 && v4 == 0xC000000000000000 && !v3 || v2 == 9 && !v1 && v4 == 0xC000000000000000 && !v3)))
  {
    OUTLINED_FUNCTION_67_8();
    outlined copy of SessionActionNotice.NoticeType(v9, v10, v11);
    OUTLINED_FUNCTION_67_8();
    outlined copy of SessionActionNotice.NoticeType(v12, v13, v14);
    OUTLINED_FUNCTION_67_8();
    outlined consume of SessionActionNotice.NoticeType(v15, v16, v17);
    OUTLINED_FUNCTION_49_17();
    OUTLINED_FUNCTION_67_8();
    outlined consume of SessionActionNotice.NoticeType(v18, v19, v20);
    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_49_17();
    OUTLINED_FUNCTION_49_17();
    OUTLINED_FUNCTION_49_17();
    return 0;
  }
}

uint64_t SessionActionNotice.isSharePlayActivitySupported.getter()
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_63_1((v0 + v1));
  v2 = OUTLINED_FUNCTION_4_38();
  v4 = v3(v2);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = [v4 activity];

  v7 = [v6 isSupported];
  return v7;
}

uint64_t SessionActionNotice.actionDescription.getter()
{
  v2 = v0;
  v4 = *v0;
  v3 = v0[1];
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  switch(v6 >> 62)
  {
    case 1uLL:
      if (!*(v2 + 16))
      {
        OUTLINED_FUNCTION_33_28();
        OUTLINED_FUNCTION_175_1();
        if (v54)
        {
          v56 = v55 - 13;
        }

        else
        {
          v56 = v55 + 1;
        }

        if (v54)
        {
          v57 = "t Queued Next Song";
        }

        else
        {
          v57 = "You Updated Queue";
        }

        v49 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_5_5();
        v58.super.isa = v49;
        OUTLINED_FUNCTION_17_0(v56, v57 | 0x8000000000000000, v59, v60, v58);
        OUTLINED_FUNCTION_213_1();
        goto LABEL_91;
      }

      return OUTLINED_FUNCTION_46();
    case 2uLL:
      OUTLINED_FUNCTION_136_1();
      OUTLINED_FUNCTION_201_0();
      if (v32)
      {
        v20 = v21;
      }

      if (v20)
      {
        type metadata accessor for SessionActionNotice(0);
        OUTLINED_FUNCTION_107_2();
        v22 = objc_opt_self();
        v23 = OUTLINED_FUNCTION_199();
        outlined copy of SessionActionNotice.NoticeType(v23, v24, v25);
        v16 = [v22 conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_249_0();
        v26.super.isa = v16;
        OUTLINED_FUNCTION_17_0(v27, v28, v29, v30, v26);
        goto LABEL_15;
      }

      type metadata accessor for SessionActionNotice(0);
      OUTLINED_FUNCTION_107_2();
      OUTLINED_FUNCTION_189();
      v49 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_249_0();
      goto LABEL_90;
    case 3uLL:
      v32 = v6 == 0xC000000000000000 && (v3 | v4 | v5) == 0;
      if (v32)
      {
        v39 = (v2 + *(type metadata accessor for SessionActionNotice(0) + 28));
        v40 = OUTLINED_FUNCTION_258_0();
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v42 = OUTLINED_FUNCTION_7_26();
        v44 = v43(v42);
        if (v44)
        {
          v45 = v44;
          v46 = [v44 activity];
          v47 = [v46 isScreenSharingActivity];

          if (v47)
          {
            OUTLINED_FUNCTION_236_1();
            if (v48 != 1)
            {
              v98 = OUTLINED_FUNCTION_212_1();
              String.deviceAdjustedLocalizedKey(forDeviceFamily:)(v98, v100, 0xD000000000000028, v99 | 0x8000000000000000);
            }

            goto LABEL_106;
          }
        }

        OUTLINED_FUNCTION_236_1();
        if (v61)
        {
          v62 = 0xD000000000000015;
        }

        else
        {
          v62 = 0xD000000000000023;
        }

        if (v61)
        {
          v63 = "AccountUpdateNotice: ";
        }

        else
        {
          v63 = "You Ended Screen Sharing";
        }

LABEL_83:
        v86 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_48_1(v62, v63 | 0x8000000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974);
        OUTLINED_FUNCTION_16_6();

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v87 = OUTLINED_FUNCTION_13_12();
        *(v87 + 16) = xmmword_1BC4BA940;
        __swift_project_boxed_opaque_existential_1(v39, v39[3]);
        v88 = OUTLINED_FUNCTION_0_95();
        v90 = v89(v88);
        v92 = v91;
        *(v87 + 56) = MEMORY[0x1E69E6158];
        *(v87 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v87 + 32) = v90;
        *(v87 + 40) = v92;
        goto LABEL_84;
      }

      if (v4 == 1 && v3 == 0 && v6 == 0xC000000000000000 && v5 == 0)
      {
        v39 = (v2 + *(type metadata accessor for SessionActionNotice(0) + 28));
        v76 = OUTLINED_FUNCTION_258_0();
        __swift_project_boxed_opaque_existential_1(v76, v77);
        v78 = OUTLINED_FUNCTION_7_26();
        v80 = v79(v78);
        if (v80)
        {
          v81 = v80;
          v82 = [v80 activity];
          v83 = [v82 isScreenSharingActivity];

          if (v83)
          {
            OUTLINED_FUNCTION_236_1();
            if (v84 != 1)
            {
              v109 = OUTLINED_FUNCTION_212_1();
              String.deviceAdjustedLocalizedKey(forDeviceFamily:)(v109, v111, 0xD000000000000026, v110 | 0x8000000000000000);
            }

LABEL_106:
            v112 = [objc_opt_self() conversationKit];
            OUTLINED_FUNCTION_29_3();
            OUTLINED_FUNCTION_67_8();
            v113.super.isa = v112;
            OUTLINED_FUNCTION_17_0(v114, v115, v116, v117, v113);
            OUTLINED_FUNCTION_18_8();

            goto LABEL_107;
          }
        }

        OUTLINED_FUNCTION_236_1();
        if (v85)
        {
          v62 = 0xD000000000000013;
        }

        else
        {
          v62 = 0xD000000000000021;
        }

        if (v85)
        {
          v63 = "t Ended Quoted_%@";
        }

        else
        {
          v63 = "t Resumed Playback";
        }

        goto LABEL_83;
      }

      v38 = v4 == 2 && v3 == 0 && v6 == 0xC000000000000000 && v5 == 0;
      if (v38 || v4 == 3 && !v3 && v6 == 0xC000000000000000 && !v5)
      {
LABEL_89:
        OUTLINED_FUNCTION_33_28();
        OUTLINED_FUNCTION_189();
        v49 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_5_5();
        v50 = OUTLINED_FUNCTION_46();
LABEL_90:
        v96.super.isa = v49;
        OUTLINED_FUNCTION_17_0(v50, v51, v52, v53, v96);
        OUTLINED_FUNCTION_213_1();
LABEL_91:

        OUTLINED_FUNCTION_29_6();
        static String.localizedStringWithFormat(_:_:)();
        OUTLINED_FUNCTION_305();
        goto LABEL_92;
      }

      if (v4 == 4 && !v3 && v6 == 0xC000000000000000 && !v5)
      {
        OUTLINED_FUNCTION_33_28();
        OUTLINED_FUNCTION_175_1();
        OUTLINED_FUNCTION_157_0();
        if (v32)
        {
          v103 = v102;
        }

        else
        {
          v103 = v101;
        }

LABEL_103:
        v104 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_5_5();
        v107 = v103 | 0x8000000000000000;
        v108 = v2;
LABEL_104:
        OUTLINED_FUNCTION_48_1(v108, v107, v105, v106);
        OUTLINED_FUNCTION_16_6();

LABEL_107:
        static String.localizedStringWithFormat(_:_:)();
        OUTLINED_FUNCTION_305();
        goto LABEL_92;
      }

      if (v4 == 5 && !v3 && v6 == 0xC000000000000000 && !v5)
      {
        v118 = type metadata accessor for SessionActionNotice(0);
        OUTLINED_FUNCTION_107_2();
        OUTLINED_FUNCTION_175_1();
        v121 = v120 - 12;
        v122 = v120 | 2;
        if (v119)
        {
          v123 = v121;
        }

        else
        {
          v123 = v122;
        }

        if (v119)
        {
          v1 = "t Skipped Quoted_%@";
        }

        else
        {
          v1 = "You Added Quoted_%@";
        }

        v124 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_5_5();
        v125.super.isa = v124;
        OUTLINED_FUNCTION_17_0(v123, v1 | 0x8000000000000000, v126, v127, v125);
        OUTLINED_FUNCTION_187();

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v128 = OUTLINED_FUNCTION_13_12();
        *(v128 + 16) = xmmword_1BC4BA940;
        v129 = v118[7];
        goto LABEL_119;
      }

      if (v4 == 6 && !v3 && v6 == 0xC000000000000000 && !v5)
      {
        OUTLINED_FUNCTION_33_28();
        OUTLINED_FUNCTION_175_1();
        OUTLINED_FUNCTION_157_0();
        if (v32)
        {
          v103 = v133;
        }

        else
        {
          v103 = v132;
        }

        goto LABEL_103;
      }

      if (v4 != 7 || v3 || v6 != 0xC000000000000000 || v5)
      {
        if (v4 == 8 && !v3 && v6 == 0xC000000000000000 && !v5)
        {
          OUTLINED_FUNCTION_161_0();
          OUTLINED_FUNCTION_63_1((v2 + v137));
          v138 = OUTLINED_FUNCTION_4_38();
          v139(v138);
          OUTLINED_FUNCTION_183_0();
          MEMORY[0x1BFB20B10]();

          MEMORY[0x1BFB20B10](10322146, 0xA300000000000000);
          return OUTLINED_FUNCTION_46();
        }

        OUTLINED_FUNCTION_136_1();
        if (v4 == 9 && !v3 && v6 == v140 && !v5)
        {
          OUTLINED_FUNCTION_33_28();
          v104 = [objc_opt_self() conversationKit];
          OUTLINED_FUNCTION_29_3();
          OUTLINED_FUNCTION_249_0();
          goto LABEL_104;
        }

        v141 = type metadata accessor for SessionActionNotice(0);
        v142 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_251_0();
        OUTLINED_FUNCTION_249_0();
        v143.super.isa = v142;
        OUTLINED_FUNCTION_17_0(v144, v145, v146, v147, v143);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v148 = OUTLINED_FUNCTION_13_12();
        *(v148 + 16) = xmmword_1BC4BA940;
        OUTLINED_FUNCTION_208_1(*(v141 + 28));
        v149 = OUTLINED_FUNCTION_28_0();
        v150(v149, v1);
        OUTLINED_FUNCTION_305();
        *(v148 + 56) = MEMORY[0x1E69E6158];
        *(v148 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v148 + 32) = v2;
        *(v148 + 40) = v141;
LABEL_84:
        OUTLINED_FUNCTION_41();
        static String.localizedStringWithFormat(_:_:)();
        OUTLINED_FUNCTION_305();
        goto LABEL_85;
      }

      v118 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_48_1(v134, 0x80000001BC50D7C0, v135, v136);
      OUTLINED_FUNCTION_187();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v128 = OUTLINED_FUNCTION_13_12();
      *(v128 + 16) = xmmword_1BC4BA940;
      OUTLINED_FUNCTION_161_0();
LABEL_119:
      OUTLINED_FUNCTION_208_1(v129);
      v130 = OUTLINED_FUNCTION_28_0();
      v131(v130, v1);
      OUTLINED_FUNCTION_305();
      *(v128 + 56) = MEMORY[0x1E69E6158];
      *(v128 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v128 + 32) = v2;
      *(v128 + 40) = v118;
LABEL_88:
      static String.localizedStringWithFormat(_:_:)();
      OUTLINED_FUNCTION_305();

LABEL_92:

      return OUTLINED_FUNCTION_46();
    default:
      if (*(v2 + 16))
      {
        if (*(v2 + 16) != 1)
        {
          goto LABEL_89;
        }

        OUTLINED_FUNCTION_201_0();
        if (v32)
        {
          v7 = v8;
        }

        if (!v7)
        {
          goto LABEL_89;
        }

        OUTLINED_FUNCTION_33_28();
        OUTLINED_FUNCTION_175_1();
        OUTLINED_FUNCTION_157_0();
        if (v32)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }

        v12 = objc_opt_self();
        v13 = OUTLINED_FUNCTION_199();
        outlined copy of SessionActionNotice.NoticeType(v13, v14, v15);
        v16 = [v12 conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_5_5();
        v17.super.isa = v16;
        OUTLINED_FUNCTION_17_0(v2, v11 | 0x8000000000000000, v18, v19, v17);
      }

      else
      {
        if (v5 != 1)
        {
          if (v5 < 2)
          {
            goto LABEL_89;
          }

          OUTLINED_FUNCTION_175_1();
          String.localizedConversationControls.getter();
          OUTLINED_FUNCTION_16_6();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v93 = OUTLINED_FUNCTION_13_12();
          v94 = MEMORY[0x1E69E6530];
          *(v93 + 16) = xmmword_1BC4BA940;
          v95 = MEMORY[0x1E69E65A8];
          *(v93 + 56) = v94;
          *(v93 + 64) = v95;
          *(v93 + 32) = v5;
          goto LABEL_88;
        }

        OUTLINED_FUNCTION_201_0();
        if (v32)
        {
          v64 = v65;
        }

        if (!v64)
        {
          goto LABEL_89;
        }

        OUTLINED_FUNCTION_33_28();
        OUTLINED_FUNCTION_175_1();
        OUTLINED_FUNCTION_157_0();
        if (v32)
        {
          v68 = v67;
        }

        else
        {
          v68 = v66;
        }

        v69 = objc_opt_self();
        v70 = OUTLINED_FUNCTION_199();
        outlined copy of SessionActionNotice.NoticeType(v70, v71, v72);
        v16 = [v69 conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_5_5();
        v73.super.isa = v16;
        OUTLINED_FUNCTION_17_0(v2, v68 | 0x8000000000000000, v74, v75, v73);
      }

LABEL_15:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v31 = OUTLINED_FUNCTION_13_12();
      *(v31 + 16) = xmmword_1BC4BA940;
      *(v31 + 56) = MEMORY[0x1E69E6158];
      *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v31 + 32) = v4;
      *(v31 + 40) = v3;
      OUTLINED_FUNCTION_76();
      static String.localizedStringWithFormat(_:_:)();
      OUTLINED_FUNCTION_305();
LABEL_85:

      goto LABEL_92;
  }
}

uint64_t SessionActionNotice.attributionDescription.getter()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_96();
  v6 = type metadata accessor for Participant(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_1();
  v8 = v0[2];
  if (v8 >> 62 == 3)
  {
    v9 = v0[3];
    v11 = *v0;
    v10 = v0[1];
    if (!v9)
    {
      OUTLINED_FUNCTION_230_1();
      v12 = v12 && v11 == 7;
      if (v12 && !v10)
      {
        v13 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_5_5();
LABEL_10:
        v18.super.isa = v13;
        OUTLINED_FUNCTION_17_0(v14, v15, v16, v17, v18);
        OUTLINED_FUNCTION_18_8();

        return OUTLINED_FUNCTION_15_14();
      }
    }

    if (!v9)
    {
      OUTLINED_FUNCTION_230_1();
      v20 = v12 && v11 == 8;
      if (v20 && !v10)
      {
        v21 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_11_3();
        OUTLINED_FUNCTION_5_5();
        OUTLINED_FUNCTION_48_1(v22, 0xE700000000000000, v23, v24);
        OUTLINED_FUNCTION_187();

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v25 = OUTLINED_FUNCTION_13_12();
        *(v25 + 16) = xmmword_1BC4BA940;
        v26 = type metadata accessor for SessionActionNotice(0);
        OUTLINED_FUNCTION_208_1(*(v26 + 24));
        v27 = OUTLINED_FUNCTION_28_0();
        v28(v27, v1);
        OUTLINED_FUNCTION_305();
        *(v25 + 56) = MEMORY[0x1E69E6158];
        *(v25 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v25 + 32) = v0;
        *(v25 + 40) = v0;
        goto LABEL_33;
      }
    }

    if (!v9)
    {
      v29 = v8 == 0xC000000000000000 && v11 == 10;
      if (v29 && !v10)
      {
        OUTLINED_FUNCTION_33_28();
        if (v30 != 1)
        {
          v13 = [objc_opt_self() conversationKit];
          OUTLINED_FUNCTION_40_0();
          v15 = 0x80000001BC50DB80;
          v14 = 0xD000000000000014;
          v16 = 0x61737265766E6F43;
          v17 = 0xEF74694B6E6F6974;
          goto LABEL_10;
        }

        v31 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_40_0();
        v32.super.isa = v31;
        OUTLINED_FUNCTION_17_0(0x402520726F46, 0xE600000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v32);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v33 = OUTLINED_FUNCTION_13_12();
        *(v33 + 16) = xmmword_1BC4BA940;
        v34 = OUTLINED_FUNCTION_177_1();
        v35 = OUTLINED_FUNCTION_29_6();
        v36(v35);
        OUTLINED_FUNCTION_305();
        *(v33 + 56) = MEMORY[0x1E69E6158];
        *(v33 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v33 + 32) = v2;
        *(v33 + 40) = v34;
        goto LABEL_33;
      }
    }
  }

  v37 = type metadata accessor for SessionActionNotice(0);
  OUTLINED_FUNCTION_107_2();
  if ((v38 & 1) == 0)
  {
    _s15ConversationKit11ParticipantVSgWOcTm_0(v0 + *(v37 + 20), v0, &_s15ConversationKit11ParticipantVSgMd);
    OUTLINED_FUNCTION_115(v0, 1, v6);
    if (!v12)
    {
      OUTLINED_FUNCTION_3_119();
      OUTLINED_FUNCTION_15_14();
      _s15ConversationKit11ParticipantVWObTm_4();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        OUTLINED_FUNCTION_177_1();
        v47 = OUTLINED_FUNCTION_29_6();
        v48(v47);
        OUTLINED_FUNCTION_305();
      }

      else
      {
        Participant.contactDetails.getter();

        OUTLINED_FUNCTION_29_6();
        Participant.name(_:)();
        OUTLINED_FUNCTION_305();
      }

      _s15ConversationKit11ParticipantVWOhTm_12();
      return OUTLINED_FUNCTION_46();
    }

    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit11ParticipantVSgMd);
  }

  v39 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_48_1(v40, 0xE600000000000000, v41, v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v43 = OUTLINED_FUNCTION_13_12();
  *(v43 + 16) = xmmword_1BC4BA940;
  v44 = OUTLINED_FUNCTION_177_1();
  v45 = OUTLINED_FUNCTION_29_6();
  v46(v45);
  OUTLINED_FUNCTION_305();
  *(v43 + 56) = MEMORY[0x1E69E6158];
  *(v43 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v43 + 32) = v2;
  *(v43 + 40) = v44;
  OUTLINED_FUNCTION_206();
LABEL_33:
  String.init(format:_:)();
  OUTLINED_FUNCTION_305();

  return OUTLINED_FUNCTION_46();
}

uint64_t SessionActionNotice.fullSentence(for:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v80 = a2;
  v94 = a3;
  v6 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v91 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString.InterpolationOptions();
  v87 = *(v8 - 8);
  v88 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v86 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v89 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v84 = v78 - v13;
  v83 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AttributeContainer();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AttributedString();
  v95 = *(v19 - 8);
  v96 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v85 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v81 = v78 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v93 = v78 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v78 - v26;
  v28 = *(a1 + 8);
  v90._countAndFlagsBits = *a1;
  v90._object = v28;
  v92 = *(a1 + 16);
  v29 = type metadata accessor for SessionActionNotice(0);
  v30 = (v4 + v29[6]);
  v31 = v30[3];
  v32 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v32 + 224))(v31, v32);
  if (one-time initialization token for subjectContainer != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v15, static AttributedStrings.Notices.subjectContainer);
  v34 = *(v16 + 16);
  v34(v18, v33, v15);
  AttributedString.init(_:attributes:)();
  v35 = *(v4 + v29[8]);
  if (v35)
  {
    goto LABEL_6;
  }

  v79 = v27;
  v36 = v84;
  _s15ConversationKit11ParticipantVSgWOcTm_0(v4 + v29[5], v84, &_s15ConversationKit11ParticipantVSgMd);
  if (__swift_getEnumTagSinglePayload(v36, 1, v83) == 1)
  {
    outlined destroy of IDView<AvatarStackView, [UUID]>(v36, &_s15ConversationKit11ParticipantVSgMd);
    v27 = v79;
LABEL_6:
    v38 = v95;
    v37 = v96;
    v39 = v93;
    (*(v95 + 16))(v93, v27, v96);
    goto LABEL_8;
  }

  _s15ConversationKit11ParticipantVWObTm_4();
  v84 = v4;
  v83 = v29;
  Participant.contactDetails.getter();
  v40 = v97;
  v78[1] = v98;

  Participant.name(_:)();

  v34(v18, v33, v15);
  v39 = v93;
  v29 = v83;
  v4 = v84;
  AttributedString.init(_:attributes:)();
  _s15ConversationKit11ParticipantVWOhTm_12();
  v38 = v95;
  v37 = v96;
  v27 = v79;
LABEL_8:
  if (v92)
  {
    if (v92 == 1)
    {
      v41 = (v90._object >> 56) & 0xF;
      if ((v90._object & 0x2000000000000000) == 0)
      {
        v41 = v90._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v83 = v29;
        v84 = v4;
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        if (v35)
        {
          v42._countAndFlagsBits = 0x80E2206465646441;
          v42._object = 0xA90000000000009CLL;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v42);
          v43 = (v84 + v83[7]);
          v44 = v43[3];
          v45 = v43[4];
          __swift_project_boxed_opaque_existential_1(v43, v44);
          v46._countAndFlagsBits = (*(v45 + 80))(v44, v45);
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v46);

          v47._countAndFlagsBits = 0x20726F66209D80E2;
          v47._object = 0xA800000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v47);
          v97 = MEMORY[0x1E69E7CC0];
          lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions, MEMORY[0x1E69686F0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
          lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
          v48 = v86;
          v49 = v88;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
          (*(v87 + 8))(v48, v49);
          v50 = 0;
          v51 = 0xE000000000000000;
        }

        else
        {
          v62._countAndFlagsBits = 0;
          v62._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v62);
          v97 = MEMORY[0x1E69E7CC0];
          lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions, MEMORY[0x1E69686F0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
          lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
          v63 = v86;
          v64 = v88;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
          (*(v87 + 8))(v63, v64);
          v65._countAndFlagsBits = 0xE220646564646120;
          v65._object = 0xAA00000000009C80;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v65);
          v66 = (v84 + v83[7]);
          v67 = v66[3];
          v68 = v66[4];
          __swift_project_boxed_opaque_existential_1(v66, v67);
          v69._countAndFlagsBits = (*(v68 + 80))(v67, v68);
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v69);

          v50 = 10322146;
          v51 = 0xA300000000000000;
        }

        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v50);
        String.LocalizationValue.init(stringInterpolation:)();
        v61 = v81;
LABEL_29:
        AttributedString.init(cnkLocalized:)();
        v70 = *(v38 + 8);
        v70(v39, v37);
        v70(v27, v37);
        return (*(v38 + 32))(v94, v61, v37);
      }
    }

LABEL_23:
    if (v35)
    {
      String.LocalizationValue.init(stringLiteral:)();
    }

    else
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
      v97 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions, MEMORY[0x1E69686F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
      lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
      v58 = v86;
      v59 = v88;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
      (*(v87 + 8))(v58, v59);
      v60._countAndFlagsBits = 0x646564646120;
      v60._object = 0xE600000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v60);
      String.LocalizationValue.init(stringInterpolation:)();
    }

    v61 = v85;
    goto LABEL_29;
  }

  v52 = (v90._object >> 56) & 0xF;
  if ((v90._object & 0x2000000000000000) == 0)
  {
    v52 = v90._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v52)
  {
    goto LABEL_23;
  }

  v53 = v80;
  if (v80 > 1)
  {
    v54 = 1;
  }

  else
  {
    v54 = v35;
  }

  if (v54 == 1)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v55._countAndFlagsBits = 0x206465646441;
    v55._object = 0xE600000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v55);
    v97 = v53;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v56._countAndFlagsBits = 0x73676E6F7320;
    v56._object = 0xE600000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v56);
    String.LocalizationValue.init(stringInterpolation:)();
    AttributedString.init(conversationControlsLocalized:comment:)();
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v72);
    v97 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions, MEMORY[0x1E69686F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
    lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
    v73 = v86;
    v74 = v88;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
    (*(v87 + 8))(v73, v74);
    v75._countAndFlagsBits = 0xE220646564646120;
    v75._object = 0xAA00000000009C80;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v75);
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v90);
    v76._countAndFlagsBits = 10322146;
    v76._object = 0xA300000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v76);
    String.LocalizationValue.init(stringInterpolation:)();
    AttributedString.init(cnkLocalized:)();
  }

  v77 = *(v38 + 8);
  v77(v39, v37);
  return (v77)(v27, v37);
}

unint64_t SessionActionNotice.description.getter()
{
  OUTLINED_FUNCTION_24_7();
  v42 = 0xD000000000000013;
  v43 = v1;
  v2 = type metadata accessor for SessionActionNotice(0);
  if (*(v0 + *(v2 + 32)))
  {
    v3 = 0x296C61636F4C28;
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + *(v2 + 32)))
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x1BFB20B10](v3, v4);

  v5 = *v0;
  v6 = v0[1];
  v7 = v0[3];
  switch(v0[2] >> 62)
  {
    case 1:
      OUTLINED_FUNCTION_189();
      v41[0] = 0xD000000000000012;
      v41[1] = v18;
      if (!v17)
      {
        OUTLINED_FUNCTION_111_4();
        v19 = OUTLINED_FUNCTION_152_0();
        goto LABEL_30;
      }

      if (v17 == 1)
      {
        OUTLINED_FUNCTION_51_17();
LABEL_30:
        MEMORY[0x1BFB20B10](v19);
        v24 = v39;
        v25 = v40;
        goto LABEL_44;
      }

      v24 = OUTLINED_FUNCTION_150_0();
      v25 = 0xE700000000000000;
      goto LABEL_44;
    case 2:
      strcpy(v41, "[react - ");
      WORD1(v41[1]) = 0;
      HIDWORD(v41[1]) = -385875968;
      MEMORY[0x1BFB20B10](v5, v6);
      goto LABEL_46;
    case 3:
      OUTLINED_FUNCTION_79_8();
      if (v13 && !(v12 | v11 | v7))
      {
        v14 = 0x74726174735BLL;
LABEL_16:
        v15 = v14 & 0xFFFFFFFFFFFFLL | 0x2D20000000000000;
        v16 = 0xE900000000000020;
        goto LABEL_41;
      }

      if (v11 == 1 && !v12)
      {
        OUTLINED_FUNCTION_79_8();
        if (v13)
        {
          if (!v7)
          {
            v20 = 1869902683;
LABEL_26:
            v21 = v20 & 0xFFFF0000FFFFFFFFLL | 0x207000000000;
LABEL_40:
            v15 = v21 & 0xFFFFFFFFFFFFLL | 0x202D000000000000;
            v16 = 0xE800000000000000;
LABEL_41:
            v41[0] = v15;
            v41[1] = v16;
            OUTLINED_FUNCTION_63_1((v0 + *(v2 + 28)));
            v27 = OUTLINED_FUNCTION_4_38();
            v28(v27);
            if (v29)
            {
              v24 = String.init<A>(reflecting:)();
              v25 = v30;
            }

            else
            {
              v24 = 7104878;
              v25 = 0xE300000000000000;
            }

            goto LABEL_44;
          }
        }
      }

      if (v11 == 2 && !v12)
      {
        OUTLINED_FUNCTION_79_8();
        if (v13)
        {
          if (!v7)
          {
            v21 = 0x2079616C705BLL;
            goto LABEL_40;
          }
        }
      }

      if (v11 == 3 && !v12)
      {
        OUTLINED_FUNCTION_79_8();
        if (v13)
        {
          if (!v7)
          {
            v14 = 0x65737561705BLL;
            goto LABEL_16;
          }
        }
      }

      if (v11 == 4 && !v12)
      {
        OUTLINED_FUNCTION_79_8();
        if (v13)
        {
          if (!v7)
          {
            v21 = 0x206B6565735BLL;
            goto LABEL_40;
          }
        }
      }

      if (v11 == 5 && !v12)
      {
        OUTLINED_FUNCTION_79_8();
        if (v13)
        {
          if (!v7)
          {
            v20 = 1768649563;
            goto LABEL_26;
          }
        }
      }

      if (v11 == 6 && !v12)
      {
        OUTLINED_FUNCTION_79_8();
        if (v13)
        {
          if (!v7)
          {
            MEMORY[0x1BFB20B10](0x646574616470755BLL, 0xEE005D6575657551);
            return v42;
          }
        }
      }

      v32 = 7104878;
      if (v11 != 7 || v12 || (OUTLINED_FUNCTION_79_8(), !v13) || v7)
      {
        if (v11 == 8 && !v12)
        {
          OUTLINED_FUNCTION_79_8();
          if (v13)
          {
            if (!v7)
            {
              strcpy(v41, "[reminder - ");
              BYTE5(v41[1]) = 0;
              HIWORD(v41[1]) = -5120;
              goto LABEL_93;
            }
          }
        }

        if (v11 == 9 && !v12)
        {
          OUTLINED_FUNCTION_79_8();
          if (v13)
          {
            if (!v7)
            {
              OUTLINED_FUNCTION_24_7();
              v41[0] = 0xD000000000000013;
              goto LABEL_92;
            }
          }
        }

        OUTLINED_FUNCTION_24_7();
        v34 = 0xD000000000000017;
      }

      else
      {
        OUTLINED_FUNCTION_24_7();
        v34 = 0xD000000000000011;
      }

      v41[0] = v34;
LABEL_92:
      v41[1] = v33;
LABEL_93:
      OUTLINED_FUNCTION_63_1((v0 + *(v2 + 28)));
      v35 = OUTLINED_FUNCTION_4_38();
      v36(v35);
      if (v37)
      {
        v32 = String.init<A>(reflecting:)();
        v25 = v38;
      }

      else
      {
        v25 = 0xE300000000000000;
      }

      v24 = v32;
LABEL_44:
      v26 = v25;
      goto LABEL_45;
    default:
      OUTLINED_FUNCTION_189();
      v41[0] = 0xD000000000000015;
      v41[1] = v9;
      if (!v8)
      {
        OUTLINED_FUNCTION_111_4();
        v10 = OUTLINED_FUNCTION_152_0();
        goto LABEL_28;
      }

      if (v8 == 1)
      {
        OUTLINED_FUNCTION_51_17();
LABEL_28:
        MEMORY[0x1BFB20B10](v10);
        v22 = v39;
        v23 = v40;
        goto LABEL_32;
      }

      v22 = OUTLINED_FUNCTION_150_0();
      v23 = 0xE700000000000000;
LABEL_32:
      MEMORY[0x1BFB20B10](v22, v23);

      MEMORY[0x1BFB20B10](0x3A746E756F63202CLL, 0xE800000000000000);
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_183_0();
LABEL_45:
      MEMORY[0x1BFB20B10](v24, v26);

LABEL_46:
      MEMORY[0x1BFB20B10](93, 0xE100000000000000);
      MEMORY[0x1BFB20B10](v41[0], v41[1]);

      return v42;
  }
}

void SessionActionNotice.noticeAccessory.getter()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_101();
  v8 = type metadata accessor for Collaboration(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  v11 = *v0;
  v10 = v0[1];
  v12 = *(v3 + 24);
  if (*(v3 + 16) >> 62 == 3 && ((OUTLINED_FUNCTION_81_3(), !v13) || v10 | v11 | v12) && (v11 != 1 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 2 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 3 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 4 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 5 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 6 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 7 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 8 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 9 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12))
  {
    OUTLINED_FUNCTION_49_17();
    OUTLINED_FUNCTION_49_17();
    OUTLINED_FUNCTION_161_0();
    __swift_project_boxed_opaque_existential_1((v3 + v20), *(v3 + v20 + 24));
    v21 = OUTLINED_FUNCTION_7_26();
    v22(v21);
    OUTLINED_FUNCTION_115(v2, 1, v8);
    if (v13)
    {
      outlined destroy of IDView<AvatarStackView, [UUID]>(v2, &_s15ConversationKit13CollaborationVSgMd);
    }

    else
    {
      OUTLINED_FUNCTION_117_1();
      _s15ConversationKit11ParticipantVWObTm_4();
      if (*(v1 + 16) != 2 && (*(v1 + *(v8 + 48)) & 1) == 0)
      {
        v23 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_5_5();
        v24.super.isa = v23;
        OUTLINED_FUNCTION_17_0(1852141647, 0xE400000000000000, v25, v26, v24);
        OUTLINED_FUNCTION_18_8();

        OUTLINED_FUNCTION_45_18();
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_45_18();
    }
  }

  else
  {
    OUTLINED_FUNCTION_239_0();
    outlined copy of SessionActionNotice.NoticeType(v14, v15, v16);
    OUTLINED_FUNCTION_239_0();
    outlined consume of SessionActionNotice.NoticeType(v17, v18, v19);
    OUTLINED_FUNCTION_49_17();
  }

  v10 = 0;
  v3 = *(v3 + *(type metadata accessor for SessionActionNotice(0) + 56)) != 0;
LABEL_52:
  *v5 = v10;
  v5[1] = v3;
  OUTLINED_FUNCTION_30_0();
}

void SessionActionNotice.equalTo(notice:)()
{
  OUTLINED_FUNCTION_29();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19SessionActionNoticeVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for SessionActionNotice(v5);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_10();
  outlined init with copy of Activity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  if (OUTLINED_FUNCTION_149_1())
  {
    OUTLINED_FUNCTION_40_18();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    OUTLINED_FUNCTION_31_29();
    _s15ConversationKit11ParticipantVWObTm_4();
    v11 = v1[1];
    v12 = v1[2];
    v13 = v1[3];
    v30[0] = *v1;
    v30[1] = v11;
    v30[2] = v12;
    v30[3] = v13;
    v14 = v0[1];
    v15 = v0[2];
    v16 = v0[3];
    v27.i64[0] = *v0;
    v27.i64[1] = v14;
    v28 = v15;
    v29 = v16;
    v17 = OUTLINED_FUNCTION_62_0();
    outlined copy of SessionActionNotice.NoticeType(v17, v18, v12);
    OUTLINED_FUNCTION_240_1();
    outlined copy of SessionActionNotice.NoticeType(v19, v20, v21);
    static SessionActionNotice.NoticeType.== infix(_:_:)(v30, &v27);
    OUTLINED_FUNCTION_240_1();
    outlined consume of SessionActionNotice.NoticeType(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_62_0();
    outlined consume of SessionActionNotice.NoticeType(v25, v26, v12);
    OUTLINED_FUNCTION_9_74();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  else
  {
    OUTLINED_FUNCTION_77_9();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v2, &_s15ConversationKit19SessionActionNoticeVSgMd);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t AppLaunchNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for AppLaunchNotice(v2);
  *(v0 + *(result + 20)) = v1;
  return result;
}

uint64_t AppLaunchNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void AppLaunchNotice.priority.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AppLaunchNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 24));
}

uint64_t AppLaunchNotice.priority.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for AppLaunchNotice(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t AppLaunchNotice.priority.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

id AppLaunchNotice.app.getter()
{
  OUTLINED_FUNCTION_214_1();
  v2 = *(v0 + v1);

  return v2;
}

void AppLaunchNotice.app.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for AppLaunchNotice(v2) + 28);

  *(v1 + v3) = v0;
}

uint64_t AppLaunchNotice.app.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void *AppLaunchNotice.conversation.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppLaunchNotice(0) + 32));
  v2 = v1;
  return v1;
}

void AppLaunchNotice.conversation.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for AppLaunchNotice(v2) + 32);

  *(v1 + v3) = v0;
}

uint64_t AppLaunchNotice.conversation.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AppLaunchNotice.supportsCollaboration.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_242_0(v1);
}

uint64_t AppLaunchNotice.supportsCollaboration.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AppLaunchNotice.dismissalDuration.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for AppLaunchNotice(v2);
  *(v0 + *(result + 40)) = v1;
  return result;
}

uint64_t AppLaunchNotice.dismissalDuration.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

unint64_t AppLaunchNotice.description.getter()
{
  OUTLINED_FUNCTION_24_7();
  v1 = OUTLINED_FUNCTION_214_1();
  v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + v2)) + 0x68))(v1);
  MEMORY[0x1BFB20B10](v3);

  MEMORY[0x1BFB20B10](2108704, 0xE300000000000000);
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_183_0();
  MEMORY[0x1BFB20B10]();

  MEMORY[0x1BFB20B10](93, 0xE100000000000000);
  return 0xD000000000000010;
}

void AppLaunchNotice.style.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AppLaunchNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 44));
}

uint64_t AppLaunchNotice.style.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for AppLaunchNotice(v2);
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t AppLaunchNotice.style.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AppLaunchNotice.shouldTransitionToHUD.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  result = type metadata accessor for AppLaunchNotice(v2);
  *(v1 + *(result + 48)) = v0;
  return result;
}

uint64_t AppLaunchNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for AppLaunchNotice.actionHandler : AppLaunchNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AppLaunchNotice(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for AppLaunchNotice.actionHandler : AppLaunchNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for AppLaunchNotice(0) + 52));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t AppLaunchNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for AppLaunchNotice.dismissHandler : AppLaunchNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AppLaunchNotice(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for AppLaunchNotice.dismissHandler : AppLaunchNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for AppLaunchNotice(0) + 56));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t AppLaunchNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void AppLaunchNotice.shouldReplace(notice:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15AppLaunchNoticeVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_79_0();
  v6 = type metadata accessor for AppLaunchNotice(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  outlined init with copy of Activity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  if (OUTLINED_FUNCTION_85_3())
  {
    OUTLINED_FUNCTION_5_8();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_40_2();
    _s15ConversationKit11ParticipantVWObTm_4();
    v12 = *(v6 + 24);
    v13 = *(v0 + v12);
    v14 = *(v2 + v12);
    OUTLINED_FUNCTION_118_0();
    _s15ConversationKit11ParticipantVWOhTm_12();
    if (v13 == v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v6);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v1, &_s15ConversationKit15AppLaunchNoticeVSgMd);
  }

  OUTLINED_FUNCTION_32_21();
  v18 = OUTLINED_FUNCTION_2_14();
  v19(v18);
LABEL_6:
  OUTLINED_FUNCTION_49();
}

uint64_t one-time initialization function for bundleIDToItemType()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static AppLaunchNotice.bundleIDToItemType = result;
  return result;
}

uint64_t static AppLaunchNotice.bundleIDToItemType.getter()
{
  if (one-time initialization token for bundleIDToItemType != -1)
  {
    OUTLINED_FUNCTION_21_39();
  }

  swift_beginAccess();
}

uint64_t static AppLaunchNotice.bundleIDToItemType.setter(uint64_t a1)
{
  if (one-time initialization token for bundleIDToItemType != -1)
  {
    OUTLINED_FUNCTION_21_39();
  }

  swift_beginAccess();
  static AppLaunchNotice.bundleIDToItemType = a1;
}

uint64_t (*static AppLaunchNotice.bundleIDToItemType.modify())()
{
  if (one-time initialization token for bundleIDToItemType != -1)
  {
    OUTLINED_FUNCTION_21_39();
  }

  OUTLINED_FUNCTION_38_2();
  swift_beginAccess();
  return CallRecordingPillViewController.cancellable.modify;
}

uint64_t key path getter for static AppLaunchNotice.bundleIDToItemType : AppLaunchNotice.Type@<X0>(void *a1@<X8>)
{
  AppLaunchNotice.bundleIDToItemType.unsafeMutableAddressor();
  swift_beginAccess();
  *a1 = static AppLaunchNotice.bundleIDToItemType;
}

uint64_t key path setter for static AppLaunchNotice.bundleIDToItemType : AppLaunchNotice.Type(uint64_t *a1)
{
  v1 = *a1;

  AppLaunchNotice.bundleIDToItemType.unsafeMutableAddressor();
  swift_beginAccess();
  static AppLaunchNotice.bundleIDToItemType = v1;
}

uint64_t AppLaunchNotice.appItemTypeString.getter()
{
  OUTLINED_FUNCTION_214_1();
  if (one-time initialization token for bundleIDToItemType != -1)
  {
    OUTLINED_FUNCTION_21_39();
  }

  swift_beginAccess();
  if (*(static AppLaunchNotice.bundleIDToItemType + 16) && (v0 = OUTLINED_FUNCTION_44_0(), specialized __RawDictionaryStorage.find<A>(_:)(v0, v1), (v2 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  return OUTLINED_FUNCTION_38_2();
}

uint64_t AppLaunchNotice.noticeContent.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AppLaunchNotice(0);
  v3 = *(v0 + *(v2 + 28));
  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x68))();
  OUTLINED_FUNCTION_183_0();
  MEMORY[0x1BFB20B10]();

  v5 = MEMORY[0x1BFB20B10](10322146, 0xA300000000000000);
  v6 = *(v3 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_type);
  v7 = (*((*v4 & *v3) + 0x70))(v5);
  v8 = *(v1 + *(v2 + 36));
  v9 = static Platform.current.getter();
  if (!v6)
  {
    if (v9 == 2)
    {
      v10 = "COLLABORATE_ON_ITEM";
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_7_12();
      }

      OUTLINED_FUNCTION_143_2();
      OUTLINED_FUNCTION_251_0();
      v14 = v15 + 16;
      goto LABEL_11;
    }

    if (v7)
    {
      OUTLINED_FUNCTION_227_1();
      if (!v21)
      {
        OUTLINED_FUNCTION_7_12();
      }

      OUTLINED_FUNCTION_143_2();
      OUTLINED_FUNCTION_229_1();
      v25 = v26 + 25;
    }

    else
    {
      OUTLINED_FUNCTION_227_1();
      if (!v21)
      {
        OUTLINED_FUNCTION_7_12();
      }

      OUTLINED_FUNCTION_143_2();
      OUTLINED_FUNCTION_229_1();
      v25 = v33 + 26;
    }

LABEL_32:
    OUTLINED_FUNCTION_17_0(v25, 0xA300000000000000, v22, v23, v24);
    String.splitForTitleAndSubtitle()();

    return OUTLINED_FUNCTION_45_1();
  }

  if (v6 == 1)
  {
    if (v9 == 2)
    {
      v10 = "Y_TITLE_LINEBREAK";
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_7_12();
      }

      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_29_3();
      v14 = 0xD00000000000002ALL;
LABEL_11:
      OUTLINED_FUNCTION_17_0(v14, v10 | 0x8000000000000000, v11, v12, v13);
      OUTLINED_FUNCTION_175_0();
      return OUTLINED_FUNCTION_45_1();
    }

    if (v7)
    {
      OUTLINED_FUNCTION_227_1();
      if (!v21)
      {
        OUTLINED_FUNCTION_7_12();
      }

      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_229_1();
      v25 = 0xD000000000000031;
    }

    else
    {
      OUTLINED_FUNCTION_227_1();
      if (!v21)
      {
        OUTLINED_FUNCTION_7_12();
      }

      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_229_1();
      v25 = 0xD000000000000034;
    }

    goto LABEL_32;
  }

  if (v8)
  {
    if (v9 == 2)
    {
      _StringGuts.grow(_:)(30);

      v16 = AppLaunchNotice.appItemTypeString.getter();
      MEMORY[0x1BFB20B10](v16);

      OUTLINED_FUNCTION_11();
      MEMORY[0x1BFB20B10](0xD000000000000015);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_7_12();
      }

      OUTLINED_FUNCTION_165_1();
      v17 = OUTLINED_FUNCTION_209();
      OUTLINED_FUNCTION_17_0(v17, v18, v19, v20, v39);
      OUTLINED_FUNCTION_175_0();
    }

    else
    {

      _StringGuts.grow(_:)(40);

      AppLaunchNotice.appItemTypeString.getter();
      OUTLINED_FUNCTION_183_0();
      MEMORY[0x1BFB20B10]();

      MEMORY[0x1BFB20B10](0xD00000000000001FLL, 0x80000001BC50DF00);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_7_12();
      }

      OUTLINED_FUNCTION_165_1();
      v35 = OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_17_0(v35, v36, v37, v38, v40);
      OUTLINED_FUNCTION_175_0();

      OUTLINED_FUNCTION_208();
      String.splitForTitleAndSubtitle()();
    }
  }

  else
  {
    v27 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_5_5();
    v28.super.isa = v27;
    OUTLINED_FUNCTION_17_0(v29, v30, v31, v32, v28);
    OUTLINED_FUNCTION_175_0();
  }

  return OUTLINED_FUNCTION_45_1();
}

uint64_t AppLaunchNotice.attributedCollaborationTitle()()
{
  v0 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v0 - 8);
  _StringGuts.grow(_:)(30);

  v1 = AppLaunchNotice.appItemTypeString.getter();
  MEMORY[0x1BFB20B10](v1);

  MEMORY[0x1BFB20B10](0xD000000000000015, 0x80000001BC50DF20);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v5._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x5F45534F4F4843;
  v2._object = 0xE700000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v3, v5);

  AttributeContainer.init()();
  return AttributedString.init(_:attributes:)();
}

void AppLaunchNotice.subtitleStyle.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AppLaunchNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 60));
}

uint64_t AppLaunchNotice.subtitleStyle.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for AppLaunchNotice(v2);
  *(v1 + *(result + 60)) = v0;
  return result;
}

uint64_t AppLaunchNotice.subtitleStyle.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AppLaunchNotice.noticeAccessory.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AppLaunchNotice(v0);
  v2 = OUTLINED_FUNCTION_153_0(*(v1 + 64));

  return outlined copy of NoticeAccessory(v2, v3);
}

uint64_t AppLaunchNotice.noticeAccessory.setter()
{
  v3 = OUTLINED_FUNCTION_247_1();
  v4 = type metadata accessor for AppLaunchNotice(v3);
  v5 = OUTLINED_FUNCTION_115_2(*(v4 + 64));
  result = outlined consume of NoticeAccessory(v5, v6);
  *v1 = v0;
  v1[1] = v2;
  return result;
}

uint64_t AppLaunchNotice.noticeAccessory.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AppLaunchNotice.equalTo(notice:)()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15AppLaunchNoticeVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for AppLaunchNotice(v6);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_215_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  if (OUTLINED_FUNCTION_147())
  {
    v8 = 1;
    OUTLINED_FUNCTION_40_18();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_45_1();
    _s15ConversationKit11ParticipantVWObTm_4();
    v13 = *(v3 + 28);
    v14 = (*(v1 + v13) + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier);
    v15 = (*(v0 + v13) + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier);
    if (*v14 != *v15 || v14[1] != v15[1])
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    OUTLINED_FUNCTION_118_0();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  else
  {
    OUTLINED_FUNCTION_77_9();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v2, &_s15ConversationKit15AppLaunchNoticeVSgMd);
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t protocol witness for Notice.noticeAccessory.getter in conformance AppLaunchNotice@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 64));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return outlined copy of NoticeAccessory(v4, v5);
}

uint64_t protocol witness for Notice.actionHandler.getter in conformance AppLaunchNotice(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v2);
  return v2;
}

uint64_t protocol witness for Notice.actionHandler.setter in conformance AppLaunchNotice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 52));
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t protocol witness for Notice.dismissHandler.getter in conformance AppLaunchNotice(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v2);
  return v2;
}

uint64_t protocol witness for Notice.dismissHandler.setter in conformance AppLaunchNotice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 56));
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

void static PushToTalkNotice.NoticeType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v128 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_40();
  v121 = v3;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v123 = v5 - v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  v125 = &v120 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v120 = v11 - v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v126 = v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v122 = v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v124 = v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  v129 = &v120 - v21;
  v22 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for PushToTalkNotice.NoticeType(v22);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v120 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16PushToTalkNoticeV0F4TypeO_AEtMd);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v120 - v32;
  v35 = (&v120 + *(v34 + 56) - v32);
  outlined init with copy of ParticipantReaction();
  outlined init with copy of ParticipantReaction();
  OUTLINED_FUNCTION_76();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_110();
    OUTLINED_FUNCTION_29_6();
    outlined init with copy of ParticipantReaction();
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSb7enabled_10Foundation3URLVSg5imagetMd) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *v26;
      v38 = *v35;
      OUTLINED_FUNCTION_289();
      outlined init with take of Participant?(v39, v40, v41);
      OUTLINED_FUNCTION_289();
      outlined init with take of Participant?(v42, v43, v44);
      if (v37 != v38)
      {
        OUTLINED_FUNCTION_30_20();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v45, v46);
        OUTLINED_FUNCTION_30_20();
LABEL_34:
        outlined destroy of IDView<AvatarStackView, [UUID]>(v47, v48);
        goto LABEL_35;
      }

      v68 = *(v127 + 48);
      v69 = v123;
      OUTLINED_FUNCTION_289();
      _s15ConversationKit11ParticipantVSgWOcTm_0(v70, v71, v72);
      OUTLINED_FUNCTION_289();
      _s15ConversationKit11ParticipantVSgWOcTm_0(v73, v74, v75);
      v76 = v128;
      OUTLINED_FUNCTION_115(v69, 1, v128);
      if (v61)
      {
        OUTLINED_FUNCTION_30_20();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v77, v78);
        OUTLINED_FUNCTION_30_20();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v79, v80);
        OUTLINED_FUNCTION_115(v69 + v68, 1, v76);
        if (v61)
        {
          v48 = &_s10Foundation3URLVSgMd;
          v47 = v69;
          goto LABEL_34;
        }
      }

      else
      {
        v93 = v120;
        _s15ConversationKit11ParticipantVSgWOcTm_0(v69, v120, &_s10Foundation3URLVSgMd);
        OUTLINED_FUNCTION_115(v69 + v68, 1, v76);
        if (!v94)
        {
          (*(v1 + 32))(v121, v69 + v68, v76);
          OUTLINED_FUNCTION_129_0();
          lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v110, v111);
          OUTLINED_FUNCTION_206();
          dispatch thunk of static Equatable.== infix(_:_:)();
          v112 = *(v1 + 8);
          v113 = OUTLINED_FUNCTION_244_1();
          v112(v113);
          OUTLINED_FUNCTION_41();
          outlined destroy of IDView<AvatarStackView, [UUID]>(v114, v115);
          OUTLINED_FUNCTION_41();
          outlined destroy of IDView<AvatarStackView, [UUID]>(v116, v117);
          (v112)(v93, v76);
          OUTLINED_FUNCTION_41();
          outlined destroy of IDView<AvatarStackView, [UUID]>(v118, v119);
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_30_20();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v95, v96);
        OUTLINED_FUNCTION_30_20();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v97, v98);
        v99 = OUTLINED_FUNCTION_258_0();
        v100(v99);
      }

      v48 = &_s10Foundation3URLVSg_ADtMd;
      v47 = v69;
      goto LABEL_34;
    }

    outlined destroy of IDView<AvatarStackView, [UUID]>(&v26[v36], &_s10Foundation3URLVSgMd);
  }

  else
  {
    v126 = v1;
    OUTLINED_FUNCTION_4_110();
    outlined init with copy of ParticipantReaction();
    v50 = *v29;
    v49 = v29[1];
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7speaker_10Foundation3URLVSg5imagetMd) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v53 = *v35;
      v52 = v35[1];
      OUTLINED_FUNCTION_240_1();
      outlined init with take of Participant?(v54, v55, v56);
      v57 = v124;
      OUTLINED_FUNCTION_240_1();
      outlined init with take of Participant?(v58, v59, v60);
      v61 = v50 == v53 && v49 == v52;
      if (v61)
      {

        v63 = v128;
        v65 = v125;
        v64 = v126;
      }

      else
      {
        OUTLINED_FUNCTION_93_1();
        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v63 = v128;
        v65 = v125;
        v64 = v126;
        if ((v62 & 1) == 0)
        {
          OUTLINED_FUNCTION_134();
          outlined destroy of IDView<AvatarStackView, [UUID]>(v66, v67);
          OUTLINED_FUNCTION_134();
          goto LABEL_34;
        }
      }

      v81 = *(v127 + 48);
      _s15ConversationKit11ParticipantVSgWOcTm_0(v129, v65, &_s10Foundation3URLVSgMd);
      _s15ConversationKit11ParticipantVSgWOcTm_0(v57, v65 + v81, &_s10Foundation3URLVSgMd);
      OUTLINED_FUNCTION_115(v65, 1, v63);
      if (v61)
      {
        OUTLINED_FUNCTION_134();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v82, v83);
        OUTLINED_FUNCTION_134();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v84, v85);
        OUTLINED_FUNCTION_115(v65 + v81, 1, v63);
        if (v61)
        {
          v48 = &_s10Foundation3URLVSgMd;
          v47 = v65;
          goto LABEL_34;
        }
      }

      else
      {
        _s15ConversationKit11ParticipantVSgWOcTm_0(v65, v122, &_s10Foundation3URLVSgMd);
        OUTLINED_FUNCTION_115(v65 + v81, 1, v63);
        if (!v86)
        {
          v101 = v121;
          (*(v64 + 32))(v121, v65 + v81, v63);
          OUTLINED_FUNCTION_129_0();
          lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v102, v103);
          LODWORD(v128) = dispatch thunk of static Equatable.== infix(_:_:)();
          v104 = *(v64 + 8);
          v104(v101, v63);
          v105 = OUTLINED_FUNCTION_208();
          outlined destroy of IDView<AvatarStackView, [UUID]>(v105, v106);
          v107 = OUTLINED_FUNCTION_11_36();
          outlined destroy of IDView<AvatarStackView, [UUID]>(v107, v108);
          v109 = OUTLINED_FUNCTION_173_1();
          (v104)(v109);
          outlined destroy of IDView<AvatarStackView, [UUID]>(v65, &_s10Foundation3URLVSgMd);
LABEL_35:
          OUTLINED_FUNCTION_139_2();
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_134();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v87, v88);
        OUTLINED_FUNCTION_134();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v89, v90);
        v91 = OUTLINED_FUNCTION_173_1();
        v92(v91);
      }

      v48 = &_s10Foundation3URLVSg_ADtMd;
      v47 = v65;
      goto LABEL_34;
    }

    outlined destroy of IDView<AvatarStackView, [UUID]>(v29 + v51, &_s10Foundation3URLVSgMd);
  }

  outlined destroy of IDView<AvatarStackView, [UUID]>(v33, &_s15ConversationKit16PushToTalkNoticeV0F4TypeO_AEtMd);
LABEL_36:
  OUTLINED_FUNCTION_30_0();
}

uint64_t AppLaunchNotice.uuid.getter()
{
  OUTLINED_FUNCTION_30();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

uint64_t AppLaunchNotice.uuid.setter()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_38_2();

  return v1(v0);
}

uint64_t PushToTalkNotice.type.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for PushToTalkNotice(v0);
  OUTLINED_FUNCTION_4_110();
  OUTLINED_FUNCTION_3_20(v1);
  return outlined init with copy of ParticipantReaction();
}

uint64_t PushToTalkNotice.type.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return outlined assign with take of SessionActionNotice();
}

uint64_t PushToTalkNotice.type.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t PushToTalkNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for PushToTalkNotice(v2);
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t PushToTalkNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void PushToTalkNotice.priority.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for PushToTalkNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 28));
}

uint64_t PushToTalkNotice.priority.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for PushToTalkNotice(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t PushToTalkNotice.priority.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t PushToTalkNotice.bundleIdentifier.getter()
{
  return PushToTalkNotice.bundleIdentifier.getter();
}

{
  v0 = OUTLINED_FUNCTION_186();
  v1(v0);
  OUTLINED_FUNCTION_116_2();

  return OUTLINED_FUNCTION_46();
}

uint64_t PushToTalkNotice.bundleIdentifier.setter()
{
  return PushToTalkNotice.bundleIdentifier.setter();
}

{
  v3 = OUTLINED_FUNCTION_38_22();
  v4(v3);
  result = OUTLINED_FUNCTION_269_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PushToTalkNotice.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

unint64_t PushToTalkNotice.description.getter()
{
  v1 = 0xD000000000000025;
  type metadata accessor for PushToTalkNotice.NoticeType(0);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_4_110();
  outlined init with copy of ParticipantReaction();
  OUTLINED_FUNCTION_62_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb7enabled_10Foundation3URLVSg5imagetMd);
    v1 = 0xD000000000000026;
  }

  else
  {

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7speaker_10Foundation3URLVSg5imagetMd);
  }

  outlined destroy of IDView<AvatarStackView, [UUID]>(v0 + *(v3 + 48), &_s10Foundation3URLVSgMd);
  return v1;
}

uint64_t PushToTalkNotice.dismissalDuration.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for PushToTalkNotice(v2);
  *(v0 + *(result + 36)) = v1;
  return result;
}

uint64_t PushToTalkNotice.dismissalDuration.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t PushToTalkNotice.shouldTransitionToHUD.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_207(v1);
}

uint64_t PushToTalkNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for PushToTalkNotice.actionHandler : PushToTalkNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PushToTalkNotice(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for PushToTalkNotice.actionHandler : PushToTalkNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for PushToTalkNotice(0) + 44));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t PushToTalkNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for PushToTalkNotice.dismissHandler : PushToTalkNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PushToTalkNotice(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for PushToTalkNotice.dismissHandler : PushToTalkNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for PushToTalkNotice(0) + 48));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t PushToTalkNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t PushToTalkNotice.title.getter()
{
  type metadata accessor for PushToTalkNotice.NoticeType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_4_110();
  OUTLINED_FUNCTION_3_20(v2);
  outlined init with copy of ParticipantReaction();
  OUTLINED_FUNCTION_44_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSb7enabled_10Foundation3URLVSg5imagetMd) + 48);
    v4 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v5.super.isa = v4;
    OUTLINED_FUNCTION_17_0(0xD00000000000002BLL, 0x80000001BC50DCC0, v6, v7, v5);
    OUTLINED_FUNCTION_18_8();
  }

  else
  {
    v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7speaker_10Foundation3URLVSg5imagetMd) + 48);
  }

  outlined destroy of IDView<AvatarStackView, [UUID]>(v0 + v3, &_s10Foundation3URLVSgMd);
  return OUTLINED_FUNCTION_15_14();
}

void PushToTalkNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_50_2();
  v2 = type metadata accessor for AttributeContainer();
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v4 = OUTLINED_FUNCTION_82();
  type metadata accessor for PushToTalkNotice.NoticeType(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_4_110();
  outlined init with copy of ParticipantReaction();
  OUTLINED_FUNCTION_244_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v1;
    v7 = [objc_opt_self() conversationKit];
    v8 = "ESSORIES_BUTTON_EVENT_TITLE";
    if (v6)
    {
      v8 = "ESSORIES_DISABLED";
      v9 = 0xD000000000000020;
    }

    else
    {
      v9 = 0xD000000000000021;
    }

    OUTLINED_FUNCTION_48_1(v9, v8 | 0x8000000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974);
    OUTLINED_FUNCTION_98_3();

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSb7enabled_10Foundation3URLVSg5imagetMd) + 48);
  }

  else
  {

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7speaker_10Foundation3URLVSg5imagetMd) + 48);
    v11 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_48_1(0x676E696B61657053, 0xE800000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974);
    OUTLINED_FUNCTION_98_3();
  }

  outlined destroy of IDView<AvatarStackView, [UUID]>(&v1[v10], &_s10Foundation3URLVSgMd);
  AttributeContainer.init()();
  OUTLINED_FUNCTION_40_2();
  AttributedString.init(_:attributes:)();
  OUTLINED_FUNCTION_49();
}

void PushToTalkNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for AttributedString.AttributeMergePolicy();
  OUTLINED_FUNCTION_1();
  v24 = v2;
  v25 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_40();
  v23 = v3;
  OUTLINED_FUNCTION_4_24();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  type metadata accessor for AttributedString.CharacterView();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_49_3();
  v7 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_1();
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = PushToTalkNotice.title.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  PushToTalkNotice.attributedSubtitle.getter();
  AttributedString.characters.getter();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_34_29();
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v16, v17);
  v18._countAndFlagsBits = String.init<A>(_:)();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);

  v19._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  String.LocalizationValue.init(stringInterpolation:)();
  AttributedString.init(cnkLocalized:)();
  if (one-time initialization token for foregroundContainer != -1)
  {
    OUTLINED_FUNCTION_22_39();
  }

  v20 = type metadata accessor for AttributeContainer();
  __swift_project_value_buffer(v20, static AttributedStrings.Notices.foregroundContainer);
  (*(v24 + 104))(v23, *MEMORY[0x1E69686E0], v25);
  OUTLINED_FUNCTION_29_6();
  AttributedString.mergeAttributes(_:mergePolicy:)();
  v21 = OUTLINED_FUNCTION_1_5();
  v22(v21);
  OUTLINED_FUNCTION_30_0();
}

uint64_t PushToTalkNotice.image.getter()
{
  v2 = OUTLINED_FUNCTION_30();
  type metadata accessor for PushToTalkNotice.NoticeType(v2);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_4_110();
  outlined init with copy of ParticipantReaction();
  OUTLINED_FUNCTION_62_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &_sSb7enabled_10Foundation3URLVSg5imagetMd;
  }

  else
  {

    v4 = &_sSS7speaker_10Foundation3URLVSg5imagetMd;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  return outlined init with take of Participant?(v1 + *(v5 + 48), v0, &_s10Foundation3URLVSgMd);
}

void PushToTalkNotice.subtitleStyle.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for PushToTalkNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 52));
}

uint64_t PushToTalkNotice.subtitleStyle.setter()
{
  v0 = OUTLINED_FUNCTION_105_2();
  v1 = type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_241_0(v1);
}

uint64_t PushToTalkNotice.subtitleStyle.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t PushToTalkNotice.noticeAccessory.getter()
{
  return PushToTalkNotice.noticeAccessory.getter();
}

{
  v0 = OUTLINED_FUNCTION_30();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_153_0(*(v2 + 56));

  return outlined copy of NoticeAccessory(v3, v4);
}

uint64_t PushToTalkNotice.noticeAccessory.setter()
{
  return PushToTalkNotice.noticeAccessory.setter();
}

{
  v3 = OUTLINED_FUNCTION_247_1();
  v5 = v4(v3);
  v6 = OUTLINED_FUNCTION_115_2(*(v5 + 56));
  result = outlined consume of NoticeAccessory(v6, v7);
  *v1 = v0;
  v1[1] = v2;
  return result;
}

uint64_t PushToTalkNotice.noticeAccessory.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void PushToTalkNotice.shouldReplace(notice:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16PushToTalkNoticeVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_79_0();
  v6 = type metadata accessor for PushToTalkNotice(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  outlined init with copy of Activity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  if (OUTLINED_FUNCTION_85_3())
  {
    OUTLINED_FUNCTION_5_8();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_128_1();
    OUTLINED_FUNCTION_40_2();
    _s15ConversationKit11ParticipantVWObTm_4();
    v12 = *(v6 + 28);
    v13 = *(v0 + v12);
    v14 = *(v2 + v12);
    OUTLINED_FUNCTION_35_20();
    _s15ConversationKit11ParticipantVWOhTm_12();
    if (v13 == v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v6);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v1, &_s15ConversationKit16PushToTalkNoticeVSgMd);
  }

  OUTLINED_FUNCTION_32_21();
  v18 = OUTLINED_FUNCTION_2_14();
  v19(v18);
LABEL_6:
  OUTLINED_FUNCTION_49();
}

uint64_t PushToTalkNotice.equalTo(notice:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16PushToTalkNoticeVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for PushToTalkNotice(v4);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_215_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  if (!OUTLINED_FUNCTION_147())
  {
    OUTLINED_FUNCTION_77_9();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit16PushToTalkNoticeVSgMd);
LABEL_10:
    v13 = 0;
    return v13 & 1;
  }

  OUTLINED_FUNCTION_40_18();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_45_1();
  _s15ConversationKit11ParticipantVWObTm_4();
  static PushToTalkNotice.NoticeType.== infix(_:_:)();
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_20();
    _s15ConversationKit11ParticipantVWOhTm_12();
    goto LABEL_10;
  }

  PushToTalkNotice.title.getter();
  OUTLINED_FUNCTION_187();
  if (v1 == PushToTalkNotice.title.getter() && v0 == v11)
  {
    v13 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  OUTLINED_FUNCTION_35_20();
  _s15ConversationKit11ParticipantVWOhTm_12();
  return v13 & 1;
}

void static SystemUpdateNotice.NoticeType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_2();
  v6 = v5;
  if (!v2 || !v5)
  {
    goto LABEL_34;
  }

  v7 = v4;
  v8 = v2;
  v9 = v1;
  v10 = 1852403562;
  v11 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v12 = 1702260589;
    }

    else
    {
      v12 = 0x50646E416E696F6ALL;
    }

    if (v11 == 1)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xEB0000000079616CLL;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    v12 = 1852403562;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v10 = 1702260589;
    }

    else
    {
      v10 = 0x50646E416E696F6ALL;
    }

    if (v3 == 1)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xEB0000000079616CLL;
    }
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  if (v12 == v10 && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
LABEL_34:
      OUTLINED_FUNCTION_49();
      return;
    }
  }

  if (v9 == v7 && v8 == v6)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_23_40();
  OUTLINED_FUNCTION_49();

  _stringCompareWithSmolCheck(_:_:expecting:)();
}

ConversationKit::SystemUpdateNotice::HandoffType_optional __swiftcall SystemUpdateNotice.HandoffType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_104();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SystemUpdateNotice.HandoffType.init(rawValue:), v3);
  OUTLINED_FUNCTION_28_0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t SystemUpdateNotice.HandoffType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1852403562;
  }

  if (a1 == 1)
  {
    return 1702260589;
  }

  return 0x50646E416E696F6ALL;
}

ConversationKit::SystemUpdateNotice::HandoffType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SystemUpdateNotice.HandoffType@<W0>(Swift::String *a1@<X0>, ConversationKit::SystemUpdateNotice::HandoffType_optional *a2@<X8>)
{
  result.value = SystemUpdateNotice.HandoffType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SystemUpdateNotice.HandoffType@<X0>(uint64_t *a1@<X8>)
{
  result = SystemUpdateNotice.HandoffType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SystemUpdateNotice.type.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

unint64_t SystemUpdateNotice.description.getter()
{
  v1 = 0xD00000000000001DLL;
  if (*(v0 + 2))
  {
    v2 = *v0;
    _StringGuts.grow(_:)(23);

    OUTLINED_FUNCTION_24_7();
    v3 = 0xE400000000000000;
    v4 = 1702260589;
    if (v2 != 1)
    {
      v4 = 0x50646E416E696F6ALL;
      v3 = 0xEB0000000079616CLL;
    }

    if (v2)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1852403562;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    MEMORY[0x1BFB20B10](v5, v6);

    v7 = OUTLINED_FUNCTION_152_0();
    MEMORY[0x1BFB20B10](v7);
    return 0xD000000000000024;
  }

  else
  {
    OUTLINED_FUNCTION_11();
  }

  return v1;
}

uint64_t SystemUpdateNotice.uuid.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SystemUpdateNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for SystemUpdateNotice(v2);
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t SystemUpdateNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void SystemUpdateNotice.priority.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  updated = type metadata accessor for SystemUpdateNotice(v0);
  OUTLINED_FUNCTION_106_3(*(updated + 32));
}

uint64_t SystemUpdateNotice.priority.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for SystemUpdateNotice(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t SystemUpdateNotice.priority.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SystemUpdateNotice.dismissalDuration.getter()
{
  if (*(v0 + 16))
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    OUTLINED_FUNCTION_0_1();
    return (*(v1 + 976))();
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    OUTLINED_FUNCTION_0_1();
    return (*(v3 + 1024))();
  }
}

uint64_t SystemUpdateNotice.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SystemUpdateNotice.shouldTransitionToHUD.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  updated = type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_207(updated);
}

uint64_t SystemUpdateNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for SystemUpdateNotice.actionHandler : SystemUpdateNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SystemUpdateNotice(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for SystemUpdateNotice.actionHandler : SystemUpdateNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for SystemUpdateNotice(0) + 44));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SystemUpdateNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for SystemUpdateNotice.dismissHandler : SystemUpdateNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SystemUpdateNotice(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for SystemUpdateNotice.dismissHandler : SystemUpdateNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for SystemUpdateNotice(0) + 48));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SystemUpdateNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void SystemUpdateNotice.subtitleStyle.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  updated = type metadata accessor for SystemUpdateNotice(v0);
  OUTLINED_FUNCTION_106_3(*(updated + 52));
}

uint64_t SystemUpdateNotice.subtitleStyle.setter()
{
  v0 = OUTLINED_FUNCTION_105_2();
  updated = type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_241_0(updated);
}

uint64_t SystemUpdateNotice.subtitleStyle.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SystemUpdateNotice.noticeAccessory.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void SystemUpdateNotice.equalTo(notice:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemUpdateNoticeVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_79_0();
  updated = type metadata accessor for SystemUpdateNotice(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_10();
  outlined init with copy of Activity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  if (OUTLINED_FUNCTION_85_3())
  {
    OUTLINED_FUNCTION_5_8();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    _s15ConversationKit11ParticipantVWObTm_4();
    v12 = *(v1 + 2);
    v13 = v0[2];
    if (v12)
    {
      if (v13)
      {
        v14 = *(v1 + 1);
        v15 = v0[1];
        if (specialized == infix<A>(_:_:)(*v1, *v0))
        {
          v16 = v14 == v15 && v12 == v13;
          if (v16 || (OUTLINED_FUNCTION_7_8(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
LABEL_10:
            v17 = *(updated + 36);
            v18 = &v1[v17];
            v19 = *&v1[v17 + 8];
            v20 = (v0 + v17);
            v21 = v20[1];
            if (v19 && v21 && (*v18 != *v20 || v19 != v21))
            {
              _stringCompareWithSmolCheck(_:_:expecting:)();
            }
          }
        }
      }
    }

    else if (!v13)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_138_1();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, updated);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v2, &_s15ConversationKit18SystemUpdateNoticeVSgMd);
LABEL_20:
  OUTLINED_FUNCTION_49();
}

uint64_t protocol witness for Notice.uuid.getter in conformance SystemUpdateNotice()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_97_6();

  return v1(v0);
}

uint64_t protocol witness for Notice.uuid.setter in conformance SystemUpdateNotice(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Notice.bundleIdentifier.getter in conformance SystemUpdateNotice(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t ReactionNotice.description.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit19ParticipantReactionVGMd);
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_183_0();
  MEMORY[0x1BFB20B10]();

  return 0x6E6F697463616552;
}

uint64_t ReactionNotice.reactions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ReactionNotice.uuid.getter()
{
  return ReactionNotice.uuid.getter();
}

{
  v0 = OUTLINED_FUNCTION_30();
  v1(v0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_97_6();

  return v3(v2);
}

uint64_t ReactionNotice.uuid.setter()
{
  return ReactionNotice.uuid.setter();
}

{
  v2 = OUTLINED_FUNCTION_17_1();
  v4 = *(v3(v2) + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t ReactionNotice.uuid.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ReactionNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for ReactionNotice(v2);
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t ReactionNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void ReactionNotice.priority.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for ReactionNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 28));
}

uint64_t ReactionNotice.priority.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for ReactionNotice(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t ReactionNotice.priority.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ReactionNotice.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ReactionNotice.shouldTransitionToHUD.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_242_0(v1);
}

uint64_t ReactionNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for ReactionNotice.actionHandler : ReactionNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ReactionNotice(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for ReactionNotice.actionHandler : ReactionNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for ReactionNotice(0) + 40));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ReactionNotice.actionHandler.setter()
{
  v0 = OUTLINED_FUNCTION_38_22();
  v1 = type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_52_13(*(v1 + 40));
}

uint64_t ReactionNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for ReactionNotice.dismissHandler : ReactionNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ReactionNotice(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for ReactionNotice.dismissHandler : ReactionNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for ReactionNotice(0) + 44));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ReactionNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ReactionNotice.dismissalDuration.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for ReactionNotice(v2);
  *(v0 + *(result + 48)) = v1;
  return result;
}

uint64_t ReactionNotice.dismissalDuration.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ReactionNotice.coalesce(with:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14ReactionNoticeVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  v6 = type metadata accessor for ReactionNotice(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_215_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  OUTLINED_FUNCTION_148_0();
  v8 = swift_dynamicCast();
  if (v8)
  {
    OUTLINED_FUNCTION_5_8();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    OUTLINED_FUNCTION_29_6();
    _s15ConversationKit11ParticipantVWObTm_4();
    v13 = *(v6 + 24);
    v14 = *(v2 + v13);
    v15 = *(v1 + v13);
    if (v15 < v14)
    {
      *(v1 + v13) = v14;
    }

    specialized Sequence.forEach(_:)(*v2, v15 < v14, v1);
    OUTLINED_FUNCTION_125();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_57_11();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v6);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit14ReactionNoticeVSgMd);
  }

  return v8;
}

id ReactionNotice.reactionSymbols.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AttributedString.AttributeMergePolicy();
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18AttributeContainerV7BuilderVy_AA0B6ScopesO5UIKitE0F10AttributesV010AttachmentB0OGMd);
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v28 - v5;
  v42 = type metadata accessor for AttributeContainer();
  v7 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v28 - v10;
  v37 = type metadata accessor for AttributedString();
  v11 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  AttributedString.init()();
  ReactionNotice.uniqueReactions.getter();
  v15 = v14;
  v36 = *(v14 + 16);
  if (v36)
  {
    v29 = v2;
    v16 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v2 = 0;
    v34 = (v7 + 8);
    v35 = v16;
    v32 = (v11 + 8);
    v33 = (v4 + 8);
    while (1)
    {
      if (v2 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_11;
      }

      v17 = v15;
      v18 = *(v15 + v2 + 32);
      v43 = 12369903;
      v7 = static String._uncheckedFromUTF8(_:)();
      v19 = v40;
      AttributeContainer.init()();
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v28 - 2) = v21;
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.AttachmentAttribute and conformance AttributeScopes.UIKitAttributes.AttachmentAttribute();
      AttributeContainer.subscript.getter();
      (*v34)(v19, v42);
      v22 = **(&unk_1E7FE5B38 + v18);
      v23 = AVCaptureReactionSystemImageNameForType(v22);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      result = @nonobjc UIImage.__allocating_init(systemName:)();
      if (!result)
      {
        break;
      }

      v25 = result;
      ++v2;

      v26 = [objc_opt_self() textAttachmentWithImage_];

      v43 = v26;
      v27 = v39;
      AttributeContainer.Builder.callAsFunction(_:)();

      (*v33)(v6, v27);
      AttributedString.init(_:attributes:)();
      lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
      v4 = v37;
      AttributedString.append<A>(_:)();
      (*v32)(v13, v4);
      v15 = v17;
      if (v36 == v2)
      {

        v2 = v29;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_8:
    v7 = v30;
    v4 = v31;
    if (one-time initialization token for subjectContainer != -1)
    {
LABEL_11:
      swift_once();
    }

    __swift_project_value_buffer(v42, static AttributedStrings.Notices.subjectContainer);
    (*(v4 + 104))(v7, *MEMORY[0x1E69686E0], v2);
    AttributedString.mergeAttributes(_:mergePolicy:)();
    return (*(v4 + 8))(v7, v2);
  }

  return result;
}

uint64_t ReactionNotice.noticeAccessory.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ReactionNotice.equalTo(notice:)()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14ReactionNoticeVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for ReactionNotice(v6);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_215_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  OUTLINED_FUNCTION_148_0();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_40_18();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_44_0();
    _s15ConversationKit11ParticipantVWObTm_4();
    v12 = 0;
    if (*(*v1 + 16) == *(*v2 + 16))
    {
      _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit19ParticipantReactionV_Tt1g5();
      v12 = v13;
    }

    OUTLINED_FUNCTION_125();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_57_11();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v3);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit14ReactionNoticeVSgMd);
    v12 = 0;
  }

  return v12 & 1;
}

void ReactionNotice.uniqueReactions.getter()
{
  v1 = 0;
  v12 = MEMORY[0x1E69E7CD0];
  v2 = *v0;
  v3 = *(*v0 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v3 == v1)
    {

      return;
    }

    if (v1 >= v3)
    {
      break;
    }

    v5 = type metadata accessor for ParticipantReaction(0);
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v7 = *(v2 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 72) * v1++ + *(v5 + 20));
    if (specialized Set._Variant.insert(_:)(&v11, v7))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v4 = v9;
      }

      v8 = *(v4 + 16);
      if (v8 >= *(v4 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v4 = v10;
      }

      *(v4 + 16) = v8 + 1;
      *(v4 + v8 + 32) = v7;
      v1 = v6;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void key path getter for AttributeDynamicLookup.subscript<A>(dynamicMember:) : AttributeDynamicLookupAttributeScopes.UIKitAttributes.AttachmentAttribute()
{
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.AttachmentAttribute and conformance AttributeScopes.UIKitAttributes.AttachmentAttribute();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t ParticipantReaction.init(participant:videoReaction:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_3_119();
  _s15ConversationKit11ParticipantVWObTm_4();
  result = OUTLINED_FUNCTION_271_1();
  *(a2 + v5) = a1;
  return result;
}

uint64_t ParticipantReaction.description.getter()
{
  Participant.contactDetails.getter();

  OUTLINED_FUNCTION_15_14();
  Participant.name(_:)();

  v0 = OUTLINED_FUNCTION_40_2();
  MEMORY[0x1BFB20B10](v0);

  MEMORY[0x1BFB20B10](8250, 0xE200000000000000);
  OUTLINED_FUNCTION_271_1();
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t static ParticipantReaction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v4);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_271_1();
  v6 = *(a2 + v5);
  v7 = *(v2 + v5);

  return specialized == infix<A>(_:_:)(v7, v6);
}

uint64_t FaceIDUnavailableNotice.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_55();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t FaceIDUnavailableNotice.uuid.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t FaceIDUnavailableNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for FaceIDUnavailableNotice(v2);
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t FaceIDUnavailableNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void FaceIDUnavailableNotice.priority.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for FaceIDUnavailableNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 28));
}

uint64_t FaceIDUnavailableNotice.priority.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for FaceIDUnavailableNotice(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t FaceIDUnavailableNotice.priority.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t FaceIDUnavailableNotice.dismissalDuration.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for FaceIDUnavailableNotice(v2);
  *(v0 + *(result + 32)) = v1;
  return result;
}

uint64_t FaceIDUnavailableNotice.dismissalDuration.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void FaceIDUnavailableNotice.style.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for FaceIDUnavailableNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 36));
}

uint64_t FaceIDUnavailableNotice.style.setter()
{
  v0 = OUTLINED_FUNCTION_105_2();
  v1 = type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_242_0(v1);
}

uint64_t FaceIDUnavailableNotice.style.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t FaceIDUnavailableNotice.shouldTransitionToHUD.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_207(v1);
}

uint64_t FaceIDUnavailableNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for FaceIDUnavailableNotice.actionHandler : FaceIDUnavailableNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FaceIDUnavailableNotice(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for FaceIDUnavailableNotice.actionHandler : FaceIDUnavailableNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for FaceIDUnavailableNotice(0) + 44));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t FaceIDUnavailableNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for FaceIDUnavailableNotice.dismissHandler : FaceIDUnavailableNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FaceIDUnavailableNotice(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for FaceIDUnavailableNotice.dismissHandler : FaceIDUnavailableNotice(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for FaceIDUnavailableNotice(0) + 48));
  v8 = *v7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t FaceIDUnavailableNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void FaceIDUnavailableNotice.shouldReplace(notice:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23FaceIDUnavailableNoticeVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_79_0();
  v6 = type metadata accessor for FaceIDUnavailableNotice(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  outlined init with copy of Activity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  if (OUTLINED_FUNCTION_85_3())
  {
    OUTLINED_FUNCTION_5_8();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_40_2();
    _s15ConversationKit11ParticipantVWObTm_4();
    v12 = *(v6 + 28);
    v13 = *(v0 + v12);
    v14 = *(v2 + v12);
    OUTLINED_FUNCTION_122_0();
    _s15ConversationKit11ParticipantVWOhTm_12();
    if (v13 == v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v6);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v1, &_s15ConversationKit23FaceIDUnavailableNoticeVSgMd);
  }

  OUTLINED_FUNCTION_32_21();
  v18 = OUTLINED_FUNCTION_2_14();
  v19(v18);
LABEL_6:
  OUTLINED_FUNCTION_49();
}

void FaceIDUnavailableNotice.subtitleStyle.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for FaceIDUnavailableNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 52));
}

uint64_t FaceIDUnavailableNotice.subtitleStyle.setter()
{
  v0 = OUTLINED_FUNCTION_105_2();
  v1 = type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_241_0(v1);
}

uint64_t FaceIDUnavailableNotice.subtitleStyle.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t FaceIDUnavailableNotice.noticeAccessory.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t FaceIDUnavailableNotice.equalTo(notice:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23FaceIDUnavailableNoticeVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_8_9();
  v4 = type metadata accessor for FaceIDUnavailableNotice(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_215_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  OUTLINED_FUNCTION_148_0();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_5_8();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_29_6();
    _s15ConversationKit11ParticipantVWObTm_4();
    v10 = static UUID.== infix(_:_:)();
    OUTLINED_FUNCTION_122_0();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_57_11();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit23FaceIDUnavailableNoticeVSgMd);
    v10 = 0;
  }

  return v10 & 1;
}

void FaceIDUnavailableNotice.init()()
{
  OUTLINED_FUNCTION_30();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  v2 = type metadata accessor for FaceIDUnavailableNotice(0);
  *v0 = 0;
  v0[1] = 0;
  UUID.init()();
  v3 = v2[6];
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_208();
  v7(v6);
  *(v0 + v3) = v5;
  *(v0 + v2[7]) = 0;
  v8 = v2[8];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  *(v0 + v8) = (*(v9 + 1024))();
  *(v0 + v2[9]) = 1;
  *(v0 + v2[10]) = 1;
  v10 = (v0 + v2[11]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + v2[12]);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + v2[13]) = 0;
  v12 = (v0 + v2[14]);
  *v12 = 0;
  v12[1] = 0;
}

double default argument 1 of AppLaunchNotice.init(uuid:timeSinceReferenceDate:priority:app:conversation:supportsCollaboration:dismissalDuration:style:shouldTransitionToHUD:actionHandler:dismissHandler:subtitleStyle:noticeAccessory:)()
{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_13_57();
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_38_2();
  v4(v3);
  return v2;
}

uint64_t default argument 5 of PushToTalkNotice.init(uuid:type:timeSinceReferenceDate:priority:bundleIdentifier:dismissalDuration:shouldTransitionToHUD:actionHandler:dismissHandler:subtitleStyle:noticeAccessory:)()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 1024))();
}

uint64_t protocol witness for Notice.uuid.getter in conformance FaceIDUnavailableNotice()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_97_6();

  return v1(v0);
}

uint64_t protocol witness for Notice.uuid.setter in conformance FaceIDUnavailableNotice(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Notice.noticeAccessory.getter in conformance PushToTalkNotice@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 56));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return outlined copy of NoticeAccessory(v4, v5);
}

uint64_t specialized closure #1 in Array<A>.sorted()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant(0);
  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  if (v6)
  {
    v7 = [v6 value];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v5 = *(v4 + 28);
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = *(a2 + v5);
  if (v11)
  {
    v12 = [v11 value];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  if (v13 == v8 && v15 == v10)
  {
    v17 = 0;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

uint64_t outlined init with copy of ParticipantReaction()
{
  v1 = OUTLINED_FUNCTION_16_23();
  v2(v1);
  OUTLINED_FUNCTION_20_3();
  v3 = OUTLINED_FUNCTION_46();
  v4(v3);
  return v0;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Participant(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Participant(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Participant.Caption(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Participant.Caption(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v146 = a1;
  v6 = type metadata accessor for Participant(0);
  v153 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v149 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v160 = &v140 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v140 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v163 = &v140 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v157 = &v140 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v155 = &v140 - v18;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v154 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_124:
    v26 = *v146;
    if (!*v146)
    {
      goto LABEL_167;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_126;
    }

    goto LABEL_161;
  }

  v143 = v22;
  v144 = &v140 - v21;
  v142 = a4;
  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v161 = v6;
  v162 = v12;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    if (v24 + 1 < v23)
    {
      v152 = v23;
      v28 = *v154;
      v29 = *(v153 + 72);
      v30 = v24;
      v31 = *v154 + v29 * v27;
      v159 = type metadata accessor for Participant;
      v32 = v144;
      outlined init with copy of ParticipantReaction();
      v158 = v28;
      v33 = v143;
      outlined init with copy of ParticipantReaction();
      v34 = v156;
      LODWORD(v151) = specialized closure #1 in Array<A>.sorted()(v32, v33);
      v156 = v34;
      if (v34)
      {
        _s15ConversationKit11ParticipantVWOhTm_12();
        _s15ConversationKit11ParticipantVWOhTm_12();
LABEL_136:

        return;
      }

      _s15ConversationKit11ParticipantVWOhTm_12();
      _s15ConversationKit11ParticipantVWOhTm_12();
      v145 = v30;
      v35 = v30 + 2;
      v36 = v158 + v29 * (v30 + 2);
      v37 = v29;
      v159 = v29;
      v38 = v152;
      while (1)
      {
        v39 = v35;
        if (v27 + 1 >= v38)
        {
          break;
        }

        v158 = v27;
        v40 = v155;
        outlined init with copy of ParticipantReaction();
        outlined init with copy of ParticipantReaction();
        v41 = *(v6 + 28);
        v42 = *&v40[v41];
        if (v42)
        {
          v43 = [v42 value];
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;

          v41 = *(v6 + 28);
        }

        else
        {
          v44 = 0;
          v46 = 0xE000000000000000;
        }

        v47 = *&v157[v41];
        if (v47)
        {
          v48 = [v47 value];
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;
        }

        else
        {
          v49 = 0;
          v51 = 0xE000000000000000;
        }

        if (v49 == v44 && v51 == v46)
        {
          v53 = 0;
        }

        else
        {
          v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v6 = v161;
        v12 = v162;

        _s15ConversationKit11ParticipantVWOhTm_12();
        _s15ConversationKit11ParticipantVWOhTm_12();
        v54 = v151 ^ v53;
        v37 = v159;
        v36 += v159;
        v31 += v159;
        v27 = v158 + 1;
        v35 = v39 + 1;
        v38 = v152;
        if (v54)
        {
          goto LABEL_22;
        }
      }

      v27 = v38;
LABEL_22:
      if ((v151 & 1) == 0)
      {
        goto LABEL_42;
      }

      v26 = v145;
      if (v27 < v145)
      {
        goto LABEL_160;
      }

      if (v145 < v27)
      {
        v141 = v25;
        if (v38 >= v39)
        {
          v55 = v39;
        }

        else
        {
          v55 = v38;
        }

        v56 = v145;
        v57 = v37 * (v55 - 1);
        v58 = v37 * v55;
        v59 = v145 * v37;
        v60 = v27;
        do
        {
          if (v56 != --v60)
          {
            v61 = *v154;
            if (!*v154)
            {
              goto LABEL_165;
            }

            _s15ConversationKit11ParticipantVWObTm_4();
            v62 = v59 < v57 || v61 + v59 >= v61 + v58;
            if (v62)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v57)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            _s15ConversationKit11ParticipantVWObTm_4();
            v6 = v161;
            v37 = v159;
          }

          ++v56;
          v57 -= v37;
          v58 -= v37;
          v59 += v37;
        }

        while (v56 < v60);
        v25 = v141;
LABEL_42:
        v26 = v145;
      }
    }

    v63 = v154[1];
    if (v27 < v63)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_157;
      }

      if (v27 - v26 < v142)
      {
        break;
      }
    }

LABEL_71:
    if (v27 < v26)
    {
      goto LABEL_156;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v158 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v25 = v130;
    }

    v87 = *(v25 + 2);
    v88 = v87 + 1;
    if (v87 >= *(v25 + 3) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v25 = v131;
    }

    *(v25 + 2) = v88;
    v89 = v25 + 32;
    v90 = &v25[16 * v87 + 32];
    v91 = v158;
    *v90 = v26;
    v90[1] = v91;
    v159 = *v146;
    if (!v159)
    {
      goto LABEL_166;
    }

    if (v87)
    {
      while (1)
      {
        v92 = v88 - 1;
        v93 = &v89[16 * v88 - 16];
        v94 = &v25[16 * v88];
        if (v88 >= 4)
        {
          break;
        }

        if (v88 == 3)
        {
          v95 = *(v25 + 4);
          v96 = *(v25 + 5);
          v105 = __OFSUB__(v96, v95);
          v97 = v96 - v95;
          v98 = v105;
LABEL_91:
          if (v98)
          {
            goto LABEL_143;
          }

          v110 = *v94;
          v109 = *(v94 + 1);
          v111 = __OFSUB__(v109, v110);
          v112 = v109 - v110;
          v113 = v111;
          if (v111)
          {
            goto LABEL_146;
          }

          v114 = *(v93 + 1);
          v115 = v114 - *v93;
          if (__OFSUB__(v114, *v93))
          {
            goto LABEL_149;
          }

          if (__OFADD__(v112, v115))
          {
            goto LABEL_151;
          }

          if (v112 + v115 >= v97)
          {
            if (v97 < v115)
            {
              v92 = v88 - 2;
            }

            goto LABEL_113;
          }

          goto LABEL_106;
        }

        if (v88 < 2)
        {
          goto LABEL_145;
        }

        v117 = *v94;
        v116 = *(v94 + 1);
        v105 = __OFSUB__(v116, v117);
        v112 = v116 - v117;
        v113 = v105;
LABEL_106:
        if (v113)
        {
          goto LABEL_148;
        }

        v119 = *v93;
        v118 = *(v93 + 1);
        v105 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v105)
        {
          goto LABEL_150;
        }

        if (v120 < v112)
        {
          goto LABEL_120;
        }

LABEL_113:
        if (v92 - 1 >= v88)
        {
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
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
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
          goto LABEL_159;
        }

        if (!*v154)
        {
          goto LABEL_163;
        }

        v26 = v25;
        v124 = &v89[16 * v92 - 16];
        v25 = *v124;
        v125 = &v89[16 * v92];
        v126 = *(v125 + 1);
        v127 = v156;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v154 + *(v153 + 72) * *v124, *v154 + *(v153 + 72) * *v125, *v154 + *(v153 + 72) * v126, v159);
        v156 = v127;
        if (v127)
        {
          goto LABEL_136;
        }

        if (v126 < v25)
        {
          goto LABEL_138;
        }

        v128 = *(v26 + 16);
        if (v92 > v128)
        {
          goto LABEL_139;
        }

        *v124 = v25;
        *(v124 + 1) = v126;
        if (v92 >= v128)
        {
          goto LABEL_140;
        }

        v88 = v128 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v125 + 16, v128 - 1 - v92, &v89[16 * v92]);
        v25 = v26;
        *(v26 + 16) = v128 - 1;
        v129 = v128 > 2;
        v6 = v161;
        v12 = v162;
        if (!v129)
        {
          goto LABEL_120;
        }
      }

      v99 = &v89[16 * v88];
      v100 = *(v99 - 8);
      v101 = *(v99 - 7);
      v105 = __OFSUB__(v101, v100);
      v102 = v101 - v100;
      if (v105)
      {
        goto LABEL_141;
      }

      v104 = *(v99 - 6);
      v103 = *(v99 - 5);
      v105 = __OFSUB__(v103, v104);
      v97 = v103 - v104;
      v98 = v105;
      if (v105)
      {
        goto LABEL_142;
      }

      v106 = *(v94 + 1);
      v107 = v106 - *v94;
      if (__OFSUB__(v106, *v94))
      {
        goto LABEL_144;
      }

      v105 = __OFADD__(v97, v107);
      v108 = v97 + v107;
      if (v105)
      {
        goto LABEL_147;
      }

      if (v108 >= v102)
      {
        v122 = *v93;
        v121 = *(v93 + 1);
        v105 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v105)
        {
          goto LABEL_155;
        }

        if (v97 < v123)
        {
          v92 = v88 - 2;
        }

        goto LABEL_113;
      }

      goto LABEL_91;
    }

LABEL_120:
    v23 = v154[1];
    v24 = v158;
    if (v158 >= v23)
    {
      goto LABEL_124;
    }
  }

  v64 = v26 + v142;
  if (__OFADD__(v26, v142))
  {
    goto LABEL_158;
  }

  if (v64 >= v63)
  {
    v64 = v154[1];
  }

  if (v64 < v26)
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
LABEL_126:
    v132 = v25 + 16;
    v133 = *(v25 + 2);
    while (v133 >= 2)
    {
      if (!*v154)
      {
        goto LABEL_164;
      }

      v134 = v25;
      v25 += 16 * v133;
      v135 = *v25;
      v136 = &v132[2 * v133];
      v137 = *(v136 + 1);
      v138 = v156;
      specialized _merge<A>(low:mid:high:buffer:by:)(*v154 + *(v153 + 72) * *v25, *v154 + *(v153 + 72) * *v136, *v154 + *(v153 + 72) * v137, v26);
      v156 = v138;
      if (v138)
      {
        break;
      }

      if (v137 < v135)
      {
        goto LABEL_152;
      }

      if (v133 - 2 >= *v132)
      {
        goto LABEL_153;
      }

      *v25 = v135;
      *(v25 + 1) = v137;
      v139 = *v132 - v133;
      if (*v132 < v133)
      {
        goto LABEL_154;
      }

      v133 = *v132 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v136 + 16, v139, v136);
      *v132 = v133;
      v25 = v134;
    }

    goto LABEL_136;
  }

  if (v27 == v64)
  {
    goto LABEL_71;
  }

  v141 = v25;
  v65 = *v154;
  v66 = *(v153 + 72);
  v67 = *v154 + v66 * (v27 - 1);
  v68 = -v66;
  v145 = v26;
  v69 = v26 - v27;
  v159 = v65;
  v147 = v66;
  v148 = v64;
  v70 = v65 + v27 * v66;
LABEL_52:
  v158 = v27;
  v150 = v70;
  v151 = v69;
  v152 = v67;
  v71 = v67;
  while (1)
  {
    v72 = v163;
    outlined init with copy of ParticipantReaction();
    outlined init with copy of ParticipantReaction();
    v73 = *(v6 + 28);
    v74 = *&v72[v73];
    if (v74)
    {
      v75 = [v74 value];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v73 = *(v6 + 28);
    }

    else
    {
      v76 = 0;
      v78 = 0xE000000000000000;
    }

    v79 = *&v12[v73];
    if (v79)
    {
      v80 = [v79 value];
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      v6 = v161;
    }

    else
    {
      v81 = 0;
      v83 = 0xE000000000000000;
    }

    if (v81 == v76 && v83 == v78)
    {

      v12 = v162;
      _s15ConversationKit11ParticipantVWOhTm_12();
      _s15ConversationKit11ParticipantVWOhTm_12();
LABEL_69:
      v27 = v158 + 1;
      v67 = v152 + v147;
      v69 = v151 - 1;
      v70 = v150 + v147;
      if (v158 + 1 == v148)
      {
        v27 = v148;
        v25 = v141;
        v26 = v145;
        goto LABEL_71;
      }

      goto LABEL_52;
    }

    v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v12 = v162;
    _s15ConversationKit11ParticipantVWOhTm_12();
    _s15ConversationKit11ParticipantVWOhTm_12();
    if ((v85 & 1) == 0)
    {
      goto LABEL_69;
    }

    if (!v159)
    {
      break;
    }

    _s15ConversationKit11ParticipantVWObTm_4();
    swift_arrayInitWithTakeFrontToBack();
    _s15ConversationKit11ParticipantVWObTm_4();
    v71 += v68;
    v70 += v68;
    v62 = __CFADD__(v69++, 1);
    if (v62)
    {
      goto LABEL_69;
    }
  }

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
}

uint64_t outlined bridged method (pb) of @objc TUConversationNotice.item.getter(void *a1)
{
  v1 = [a1 item];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined copy of NoticeAccessory(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t outlined init with copy of Activity()
{
  OUTLINED_FUNCTION_3_104();
  v2 = *(v1 + 24);
  *(v0 + 24) = v2;
  *(v0 + 32) = *(v1 + 32);
  (**(v2 - 8))(v0);
  return v0;
}

uint64_t outlined init with take of Participant?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3);
  OUTLINED_FUNCTION_20_3();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return v3;
}

uint64_t _s15ConversationKit11ParticipantVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3);
  OUTLINED_FUNCTION_20_3();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return v3;
}

uint64_t outlined assign with take of SessionActionNotice()
{
  v1 = OUTLINED_FUNCTION_16_23();
  v2(v1);
  OUTLINED_FUNCTION_20_3();
  v3 = OUTLINED_FUNCTION_46();
  v4(v3);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVSgWOdTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3);
  OUTLINED_FUNCTION_20_3();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return v3;
}

unint64_t lazy protocol witness table accessor for type NoticePriority and conformance NoticePriority()
{
  result = lazy protocol witness table cache variable for type NoticePriority and conformance NoticePriority;
  if (!lazy protocol witness table cache variable for type NoticePriority and conformance NoticePriority)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoticePriority and conformance NoticePriority);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NoticePriority and conformance NoticePriority;
  if (!lazy protocol witness table cache variable for type NoticePriority and conformance NoticePriority)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoticePriority and conformance NoticePriority);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationNoticeStyle and conformance ConversationNoticeStyle()
{
  result = lazy protocol witness table cache variable for type ConversationNoticeStyle and conformance ConversationNoticeStyle;
  if (!lazy protocol witness table cache variable for type ConversationNoticeStyle and conformance ConversationNoticeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationNoticeStyle and conformance ConversationNoticeStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationNoticeSubtitleStyle and conformance ConversationNoticeSubtitleStyle()
{
  result = lazy protocol witness table cache variable for type ConversationNoticeSubtitleStyle and conformance ConversationNoticeSubtitleStyle;
  if (!lazy protocol witness table cache variable for type ConversationNoticeSubtitleStyle and conformance ConversationNoticeSubtitleStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationNoticeSubtitleStyle and conformance ConversationNoticeSubtitleStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccountUpdateNotice.NoticeType and conformance AccountUpdateNotice.NoticeType()
{
  result = lazy protocol witness table cache variable for type AccountUpdateNotice.NoticeType and conformance AccountUpdateNotice.NoticeType;
  if (!lazy protocol witness table cache variable for type AccountUpdateNotice.NoticeType and conformance AccountUpdateNotice.NoticeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccountUpdateNotice.NoticeType and conformance AccountUpdateNotice.NoticeType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemUpdateNotice.HandoffType and conformance SystemUpdateNotice.HandoffType()
{
  result = lazy protocol witness table cache variable for type SystemUpdateNotice.HandoffType and conformance SystemUpdateNotice.HandoffType;
  if (!lazy protocol witness table cache variable for type SystemUpdateNotice.HandoffType and conformance SystemUpdateNotice.HandoffType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemUpdateNotice.HandoffType and conformance SystemUpdateNotice.HandoffType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NoticePriority(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ConversationNoticeStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_15ConversationKit15NoticeAccessoryO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for NoticeAccessory(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NoticeAccessory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void type metadata completion function for SessionActivationRequestNotice()
{
  type metadata accessor for ()();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Activity(319, &lazy cache variable for type metadata for Activity);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

void type metadata completion function for AccountUpdateNotice()
{
  type metadata accessor for [Participant](319, &lazy cache variable for type metadata for [Participant], type metadata accessor for Participant, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for SessionActionNotice()
{
  type metadata accessor for [Participant](319, &lazy cache variable for type metadata for Participant?, type metadata accessor for Participant, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Activity(319, &lazy cache variable for type metadata for Conversation);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Activity(319, &lazy cache variable for type metadata for Activity);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [Participant](319, &lazy cache variable for type metadata for TUScreenShareDeviceFamily?, type metadata accessor for TUScreenShareDeviceFamily, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UUID();
          if (v4 <= 0x3F)
          {
            type metadata accessor for String?();
            if (v5 <= 0x3F)
            {
              type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [Participant](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for Activity(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit19SessionActionNoticeV13QueueItemTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit19SessionActionNoticeV0E4TypeO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for SessionActionNotice.NoticeType(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 2;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionActionNotice.NoticeType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SessionActionNotice.NoticeType(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = xmmword_1BC4D59F0;
    *(result + 24) = 0;
  }

  return result;
}

void type metadata completion function for AppLaunchNotice()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ForegroundApp();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TUConversation?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for TUConversation?()
{
  if (!lazy cache variable for type metadata for TUConversation?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUConversation);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TUConversation?);
    }
  }
}

void type metadata completion function for PushToTalkNotice()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PushToTalkNotice.NoticeType(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for PushToTalkNotice.NoticeType()
{
  type metadata accessor for (speaker: String, image: URL?)(319, &lazy cache variable for type metadata for (speaker: String, image: URL?));
  if (v0 <= 0x3F)
  {
    type metadata accessor for (speaker: String, image: URL?)(319, &lazy cache variable for type metadata for (enabled: Bool, image: URL?));
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (speaker: String, image: URL?)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd);
    OUTLINED_FUNCTION_1_5();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata completion function for SystemUpdateNotice()
{
  type metadata accessor for (())?(319, &lazy cache variable for type metadata for Activity?, &_s15ConversationKit8Activity_pMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (())?(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SystemUpdateNotice.NoticeType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for SystemUpdateNotice.NoticeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for SystemUpdateNotice.NoticeType(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for SystemUpdateNotice.NoticeType(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationNoticeSubtitleStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for ReactionNotice()
{
  type metadata accessor for [Participant](319, &lazy cache variable for type metadata for [ParticipantReaction], type metadata accessor for ParticipantReaction, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for ParticipantReaction()
{
  result = type metadata accessor for Participant(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for FaceIDUnavailableNotice()
{
  type metadata accessor for String?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_39_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.AttachmentAttribute and conformance AttributeScopes.UIKitAttributes.AttachmentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.AttachmentAttribute and conformance AttributeScopes.UIKitAttributes.AttachmentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.AttachmentAttribute and conformance AttributeScopes.UIKitAttributes.AttachmentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.AttachmentAttribute and conformance AttributeScopes.UIKitAttributes.AttachmentAttribute);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_131_0()
{

  return String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
}

uint64_t OUTLINED_FUNCTION_138_1()
{

  return _s15ConversationKit11ParticipantVWOhTm_12();
}

uint64_t OUTLINED_FUNCTION_139_2()
{

  return _s15ConversationKit11ParticipantVWOhTm_12();
}

uint64_t OUTLINED_FUNCTION_149_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_169_0()
{

  return String.LocalizationValue.init(stringInterpolation:)();
}

void OUTLINED_FUNCTION_180_2()
{
  v1 = 0x20646E6120;
  v2 = 0xE500000000000000;

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v1);
}

uint64_t OUTLINED_FUNCTION_215_0()
{

  return outlined init with copy of Activity();
}

uint64_t OUTLINED_FUNCTION_219_0()
{

  return String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

void OUTLINED_FUNCTION_225_0(Swift::String a1)
{

  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(a1);
}

uint64_t OUTLINED_FUNCTION_264_0()
{

  return String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
}

void OUTLINED_FUNCTION_265_0()
{

  AttributedString.init(conversationControlsLocalized:comment:)();
}

uint64_t OUTLINED_FUNCTION_266_0()
{

  return String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t OUTLINED_FUNCTION_270_1()
{

  return String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

void specialized GameControllerEvent.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GameControllerPressAction() - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      outlined init with copy of GameControllerPressAction(v8, v6);
      type metadata accessor for GCButtonElementName();
      lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName();
      dispatch thunk of Hashable.hash(into:)();
      outlined destroy of GameControllerPressAction(v6);
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

uint64_t GameControllerEvent.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameControllerPressAction();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_6_1();
  v8 = (*(a3 + 16))(a2, a3);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v11 = *(v7 + 72);
    do
    {
      outlined init with copy of GameControllerPressAction(v10, v3);
      type metadata accessor for GCButtonElementName();
      lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName();
      dispatch thunk of Hashable.hash(into:)();
      outlined destroy of GameControllerPressAction(v3);
      v10 += v11;
      --v9;
    }

    while (v9);
  }
}

uint64_t GameControllerFocusEvent.init(focusAction:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit25GameControllerPressActionVGMd);
  v4 = (type metadata accessor for GameControllerPressAction() - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA940;
  static GCButtonElementName.x.getter();
  v7 = (v6 + v5 + v4[7]);
  *v7 = a1;
  v7[1] = a2;
  return v6;
}

Swift::Int GameControllerFocusEvent.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  specialized GameControllerEvent.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GameControllerFocusEvent()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized GameControllerEvent.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for GameControllerFocusEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GameControllerFocusEvent and conformance GameControllerFocusEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GameControllerFocusEvent and conformance GameControllerFocusEvent()
{
  result = lazy protocol witness table cache variable for type GameControllerFocusEvent and conformance GameControllerFocusEvent;
  if (!lazy protocol witness table cache variable for type GameControllerFocusEvent and conformance GameControllerFocusEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerFocusEvent and conformance GameControllerFocusEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameControllerFocusEvent and conformance GameControllerFocusEvent;
  if (!lazy protocol witness table cache variable for type GameControllerFocusEvent and conformance GameControllerFocusEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerFocusEvent and conformance GameControllerFocusEvent);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GameControllerIncomingCallEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent();
  *(a1 + 8) = result;
  return result;
}

uint64_t SystemApertureElement.init(leadingView:trailingView:minimalView:detachedMinimalView:maximumLayoutMode:alertingStyle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t SystemApertureElement.AlertingStyle.debugDescription.getter(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    return 0x676E697472656C61;
  }

  if (a1 >> 6 != 1)
  {
    return 6583656;
  }

  _StringGuts.grow(_:)(20);

  v1 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v1);

  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t static SystemApertureElement.AlertingStyle.== infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) != 0x40)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    if (a2 == 128)
    {
      v2 = 1;
      return v2 & 1;
    }

LABEL_9:
    v2 = 0;
    return v2 & 1;
  }

  if (a2 >= 0x40u)
  {
    goto LABEL_9;
  }

LABEL_6:
  v2 = a2 ^ a1 ^ 1;
  return v2 & 1;
}

double SystemApertureElement.copyWithoutViews()@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = v2;
  *(a1 + 72) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemApertureElement(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SystemApertureElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemApertureElement.AlertingStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7E)
  {
    if (a2 + 130 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 130) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 131;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v5 >= 0x7D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for SystemApertureElement.AlertingStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7D)
  {
    v6 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for SystemApertureElement.AlertingStyle(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *destructiveInjectEnumTag for SystemApertureElement.AlertingStyle(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 1 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 1 | 0x80;
  }

  *result = v2;
  return result;
}

uint64_t CallRecordingViewModel.$presentedView.getter()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22CallRecordingViewModelC09PresentedG0OSgGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CallRecordingViewModel.presentedView.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CallRecordingViewModel.countdownDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownDelegate;
  OUTLINED_FUNCTION_3_5();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  CallRecordingViewModel.countdownDelegate.didset();
  return swift_unknownObjectRelease();
}

uint64_t CallRecordingViewModel.service.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_service;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_4_0();
  return outlined init with copy of IDSLookupManager(v1 + v3, a1);
}

uint64_t CallRecordingViewModel.service.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_service;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_30_2();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  outlined init with take of TapInteractionHandler(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for CallRecordingViewModel.countdownDelegate : CallRecordingViewModel(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return CallRecordingViewModel.countdownDelegate.setter(v2, v1);
}

uint64_t CallRecordingViewModel.countdownDelegate.didset()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(0, 1, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}