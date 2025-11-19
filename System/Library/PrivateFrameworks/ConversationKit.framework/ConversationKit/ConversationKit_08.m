uint64_t sub_1BBCFFC24()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCFFC5C()
{
  v1 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_9_3();
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  (*(v3 + 8))(v0 + v4, v1);
  v12 = v0 + v9;
  type metadata accessor for Participant.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 5u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v13 + 8))(v0 + v9);
      break;
    case 4u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v22 + 8))(v0 + v9);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v24 = v12 + *(v23 + 48);

      if (*(v24 + 120) >= 2uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v24 + 96);
      }

      if (*(v24 + 312))
      {
        swift_unknownObjectRelease();
      }

      if (*(v12 + *(v23 + 64) + 8))
      {
      }

      break;
    default:
      break;
  }

  v14 = v7[5];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_15_1();
  (*(v15 + 8))(v12 + v14);
  v16 = (v12 + v7[7]);
  if (*v16)
  {
  }

  v17 = v12 + v7[14];
  v18 = type metadata accessor for Date();
  if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    (*(*(v18 - 8) + 8))(v17, v18);
  }

  v19 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v17 + v19, 1, v18))
  {
    (*(*(v18 - 8) + 8))(v17 + v19, v18);
  }

  v20 = (v11 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

uint64_t sub_1BBD00000()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBD00038@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  result = (*(v2 + 608))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BBD0008C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBD000CC@<X0>(uint64_t *a1@<X8>)
{
  result = DialButtonViewModel.config.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD00120()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBD00158()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD0019C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBD00218(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19MultimodalListStyleV6LayoutOGMd);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14NavigationPathVGMd);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1BBD002FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19MultimodalListStyleV6LayoutOGMd);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14NavigationPathVGMd);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1BBD003E4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesE0V_AI0l31UIOutgoingCallActionsNavigationG0VAI0lnopE0VQo__AI0l9UIPreviewqG0VAI0l7PreviewE0VQo__AI0l10UIContactsqG0VAI0ltE0VQo__AI0l9UIRecentsqG0VAI0luE0VQo_AA14_OpacityEffectVGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1BBD0044C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesE0V_AI0l31UIOutgoingCallActionsNavigationG0VAI0lnopE0VQo__AI0l9UIPreviewqG0VAI0l7PreviewE0VQo__AI0l10UIContactsqG0VAI0ltE0VQo__AI0l9UIRecentsqG0VAI0luE0VQo_AA14_OpacityEffectVGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BBD004C8()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBD00500()
{

  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

uint64_t sub_1BBD00534()
{
  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

uint64_t sub_1BBD00568()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD005C4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityVoiceOverEnabled.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_1BBD00634(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BBD00640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA16RedactionReasonsVGMd);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 40);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI23AccessibilityFocusStateVySbGMd);
      v10 = *(a3 + 44);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1BBD00724(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA16RedactionReasonsVGMd);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 40);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI23AccessibilityFocusStateVySbGMd);
      v10 = *(a4 + 44);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1BBD00804()
{
  OUTLINED_FUNCTION_3_153();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15ConversationKit22TranscriptionViewModelC7CaptionVGMd);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type [TranscriptionViewModel.Caption] and conformance <A> [A]();
  return swift_getOpaqueTypeConformance2();
}

id sub_1BBD00948@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 percentage];
  *a2 = v4;
  return result;
}

id sub_1BBD009A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 value];
  *a2 = result;
  return result;
}

uint64_t sub_1BBD00A10()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBD00A48()
{
  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1BBD00B58()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD00D0C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
    v11 = &a1[*(a3 + 32)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_1BBD00DA0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
    v8 = &v5[*(a4 + 32)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BBD00E28(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit07ShutterhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA08AnyShapeG0VSgGGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1BBD00E88()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD00ED0()
{
  v2 = *(v0 + 16);
  v21 = *(v0 + 24);
  type metadata accessor for ClarityUIActionGlyphLabel();
  OUTLINED_FUNCTION_13_77();
  v4 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  OUTLINED_FUNCTION_12_90();
  v7 = (*(v5 + 8))(v4 + v6, v2);
  v15 = OUTLINED_FUNCTION_11_101(v7, v8, v9, v10, v11, v12, v13, v14, v21);
  (*(v16 + 8))(v4 + v17, v15);
  v18 = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19MultimodalListStyleV6LayoutO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MultimodalListStyle.Layout();
    OUTLINED_FUNCTION_7_0();
    (*(v19 + 8))(v4 + v18);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BBD01084()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6SpacerV_15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVtGSgMd);
  OUTLINED_FUNCTION_7_2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  OUTLINED_FUNCTION_5_138();
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for HStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit23IconBoundsPreferenceKey33_A5A29C6D3794560EE297715D1CD250B5LLVGMd);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_6_120();
  OUTLINED_FUNCTION_2_163();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v0, v1);
  swift_getWitnessTable();
  type metadata accessor for Label();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI26_OverlayPreferenceModifierVy15ConversationKit010IconBoundsD3Key33_A5A29C6D3794560EE297715D1CD250B5LLVAA14GeometryReaderVyAA15ModifiedContentVyAKyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAOyAKyAKyAD17ActionGlyphCircleAFLLVAA13_OffsetEffectVGAA011_BackgroundE0VyAA07_ShadowY0VyAA6CircleVGGG_AQtGGtGGAA12_FrameLayoutVGAWGSgGSgGMd);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_3_155();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_143();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v2, &_s7SwiftUI26_OverlayPreferenceModifierVy15ConversationKit010IconBoundsD3Key33_A5A29C6D3794560EE297715D1CD250B5LLVAA14GeometryReaderVyAA15ModifiedContentVyAKyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAOyAKyAKyAD17ActionGlyphCircleAFLLVAA13_OffsetEffectVGAA011_BackgroundE0VyAA07_ShadowY0VyAA6CircleVGGG_AQtGGtGGAA12_FrameLayoutVGAWGSgGSgGMd);
  return swift_getWitnessTable();
}

uint64_t sub_1BBD01200()
{
  v2 = *(v0 + 16);
  v21 = *(v0 + 24);
  type metadata accessor for ClarityUIActionGlyphLabel();
  OUTLINED_FUNCTION_13_77();
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);

  OUTLINED_FUNCTION_12_90();
  v7 = (*(v5 + 8))(v0 + v4 + v6, v2);
  v15 = OUTLINED_FUNCTION_11_101(v7, v8, v9, v10, v11, v12, v13, v14, v21);
  (*(v16 + 8))(v0 + v4 + v17, v15);
  v18 = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19MultimodalListStyleV6LayoutO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MultimodalListStyle.Layout();
    OUTLINED_FUNCTION_7_0();
    (*(v19 + 8))(v0 + v4 + v18);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BBD013AC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD015C4()
{
  OUTLINED_FUNCTION_3_14();
  v1 = (*(v0 + 248))();
  return OUTLINED_FUNCTION_38_1(v1);
}

uint64_t sub_1BBD01648()
{
  OUTLINED_FUNCTION_3_14();
  v1 = (*(v0 + 528))();
  return OUTLINED_FUNCTION_38_1(v1);
}

uint64_t sub_1BBD016D4()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 688))();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD01768()
{
  OUTLINED_FUNCTION_3_14();
  v1 = (*(v0 + 728))();
  return OUTLINED_FUNCTION_38_1(v1);
}

uint64_t sub_1BBD017F4()
{
  OUTLINED_FUNCTION_3_14();
  v1 = (*(v0 + 752))();
  return OUTLINED_FUNCTION_38_1(v1);
}

uint64_t sub_1BBD01880()
{
  OUTLINED_FUNCTION_3_14();
  v1 = (*(v0 + 880))();
  return OUTLINED_FUNCTION_38_1(v1);
}

uint64_t sub_1BBD0190C()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 928))();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD01958()
{
  OUTLINED_FUNCTION_3_14();
  v1 = (*(v0 + 1128))();
  return OUTLINED_FUNCTION_38_1(v1);
}

uint64_t sub_1BBD01A44()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBD01ABC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBD01AF4()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

char *sub_1BBD01B60()
{
  OUTLINED_FUNCTION_2_5();
  result = MostActiveParticipantViewController.remoteParticipantView.getter();
  *v0 = result;
  return result;
}

char *sub_1BBD01B8C()
{
  OUTLINED_FUNCTION_2_5();
  result = MostActiveParticipantViewController.localParticipantView.getter();
  *v0 = result;
  return result;
}

id sub_1BBD01BB8()
{
  OUTLINED_FUNCTION_2_5();
  result = MostActiveParticipantViewController.flashView.getter();
  *v0 = result;
  return result;
}

id sub_1BBD01BE4()
{
  OUTLINED_FUNCTION_2_5();
  result = MostActiveParticipantViewController.insulatingView.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD01CC8()
{
  OUTLINED_FUNCTION_2_5();
  result = TranscriptionViewModel.captions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD01CF4()
{
  OUTLINED_FUNCTION_2_5();
  result = TranscriptionViewModel.callerDisplayName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1BBD01D20()
{
  OUTLINED_FUNCTION_2_5();
  result = TranscriptionViewModel.hidePrivacySensitiveContent.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BBD01D74()
{
  OUTLINED_FUNCTION_2_5();
  result = TranscriptionViewModel.initialScreeningResponse.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1BBD01DA0()
{
  OUTLINED_FUNCTION_2_5();
  result = TranscriptionViewModel.isGibberish.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BBD02094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_1();
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BBD02144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BBD0221C@<X0>(uint64_t *a1@<X8>)
{
  result = ShareScreenButtonConfig.buttonConfig.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD0224C@<X0>(uint64_t *a1@<X8>)
{
  result = ShareScreenButtonConfig.menuItems.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD0228C()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD022F8()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD02330()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16CommunicationsUI8IconMenuVy15ConversationKit05ShareD11ActionStateV05SwiftB09TupleViewVyAG6ButtonVyAG4TextVG_AG19_ConditionalContentVyAG08ModifiedP0VyAnG32_EnvironmentKeyTransformModifierVySbGGAG0D0VyAmG7ForEachVySayAD11ParticipantVGA0_AVGGGtGGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconMenu<ShareMenuActionState, TupleView<(Button<Text>, _ConditionalContent<ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, Menu<Text, ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>>>>)>> and conformance IconMenu<A, B>, &_s16CommunicationsUI8IconMenuVy15ConversationKit05ShareD11ActionStateV05SwiftB09TupleViewVyAG6ButtonVyAG4TextVG_AG19_ConditionalContentVyAG08ModifiedP0VyAnG32_EnvironmentKeyTransformModifierVySbGGAG0D0VyAmG7ForEachVySayAD11ParticipantVGA0_AVGGGtGGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BBD023DC()
{
  OUTLINED_FUNCTION_2_5();
  result = CallControlsTextButtonConfiguration.accessibilityLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1BBD02408()
{
  OUTLINED_FUNCTION_2_5();
  result = CallControlsTextButtonConfiguration.accessibilityIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1BBD02434()
{
  OUTLINED_FUNCTION_2_5();
  result = CallControlsTextButtonConfiguration.text.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1BBD02460()
{
  OUTLINED_FUNCTION_2_5();
  result = CallControlsTextButtonConfiguration.enabled.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BBD024B4@<X0>(uint64_t *a1@<X8>)
{
  result = CallControlTextButton.config.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD024E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit35CallControlsTextButtonConfigurationCGMd);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1BBD02538(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit35CallControlsTextButtonConfigurationCGMd);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1BBD025A0()
{
  v0 = OUTLINED_FUNCTION_46();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  type metadata accessor for CallControlTextButtonDefaultStyle(255);
  OUTLINED_FUNCTION_1_9();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v1, &_s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMd);
  OUTLINED_FUNCTION_4_146();
  lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(v2, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BBD0265C()
{
  type metadata accessor for PrimitiveButtonStyleConfiguration();
  OUTLINED_FUNCTION_7_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1BBD02738()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBD02778()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD027BC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD02820()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1BBD02878()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1BBD028C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBD02910()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBD02988@<X0>(uint64_t *a1@<X8>)
{
  result = UIAlertController.alertWindow.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD029B4()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBD029FC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD02A34()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD02A74()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBD02AB8()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD02B04()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD02B3C()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 192))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1BBD02C04()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 240))();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD02C50()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 296))();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD02C9C()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 320))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1BBD02CE8()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 344))();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD02D34()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 368))();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD02D80()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 392))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1BBD02DCC()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 416))();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD02E18()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 440))();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD02E64()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 464))();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD02EB0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD02EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 80);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1BBD02F84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 80) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BBD0304C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_1BBD03084@<X0>(_BYTE *a1@<X8>)
{
  result = MoreMenuButtonViewModel.isAddParticipantSheetPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBD030DC@<X0>(_BYTE *a1@<X8>)
{
  result = MoreMenuButtonViewModel.shouldShowCountdown.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBD03134@<X0>(uint64_t *a1@<X8>)
{
  result = MoreMenuButtonViewModel.cancellables.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD03428()
{
  OUTLINED_FUNCTION_2_5();
  result = MultiwayViewController.isOnScreen.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BBD03478()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  if (*(v0 + 64))
  {
  }

  OUTLINED_FUNCTION_77_0();

  return swift_deallocObject();
}

uint64_t sub_1BBD034C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BBD0351C()
{
  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t sub_1BBD03554()
{
  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t sub_1BBD03598()
{
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

void *sub_1BBD03658()
{
  OUTLINED_FUNCTION_2_5();
  result = MultiwayViewController.sensitiveContentController.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD03700(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_45(a1);
  OUTLINED_FUNCTION_147_1();
  return MultiwayViewController.isInCallEndedBlockAndReportFlow.setter(v1, v2, v3);
}

uint64_t sub_1BBD037F0()
{
  OUTLINED_FUNCTION_2_5();
  result = MultiwayViewController.isCaptioningEnabled.getter();
  *v0 = result & 1;
  return result;
}

void *sub_1BBD03840()
{
  OUTLINED_FUNCTION_2_5();
  result = MultiwayViewController.effectsViewController.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD0386C()
{
  OUTLINED_FUNCTION_2_5();
  result = MultiwayViewController.effectsBrowserViewController.getter();
  *v0 = result;
  return result;
}

id sub_1BBD03918()
{
  OUTLINED_FUNCTION_2_5();
  result = MultiwayViewController.flashView.getter();
  *v0 = result;
  return result;
}

id sub_1BBD03944()
{
  OUTLINED_FUNCTION_2_5();
  result = MultiwayViewController.insulatingView.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD039DC()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD03A10()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t sub_1BBD03A44()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBD03A8C()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD03AC4()
{
  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t sub_1BBD03B08()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t sub_1BBD03B68()
{

  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t sub_1BBD03BB0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD03BE8()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD03C24()
{
  switch(*(v0 + 72))
  {
    case 1:
      __swift_destroy_boxed_opaque_existential_1(v0 + 32);
      break;
    case 2:
    case 4:

      break;
    case 3:

      break;
    case 6:
      swift_unknownObjectRelease();
      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1BBD03CE0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1BBD03D20()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1BBD03DF4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD03E28()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptioningStateManager.cancellables.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD03E5C()
{
  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t sub_1BBD03EA0()
{
  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t sub_1BBD03FAC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBD03FE4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBD04168()
{
  if (*(v0 + 16))
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  OUTLINED_FUNCTION_37_22();

  return swift_deallocObject();
}

uint64_t sub_1BBD041AC()
{

  OUTLINED_FUNCTION_8_61();

  return swift_deallocObject();
}

uint64_t sub_1BBD041E0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  OUTLINED_FUNCTION_45_26();

  return swift_deallocObject();
}

uint64_t sub_1BBD04248()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBD0429C()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t sub_1BBD042CC()
{

  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t sub_1BBD0430C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1BBD0437C()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_12();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v1 + v4, v0);

  return swift_deallocObject();
}

uint64_t sub_1BBD04430()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD04468()
{
  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t sub_1BBD044A0()
{

  OUTLINED_FUNCTION_109();

  return swift_deallocObject();
}

uint64_t sub_1BBD044E4()
{
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  OUTLINED_FUNCTION_109();

  return swift_deallocObject();
}

uint64_t sub_1BBD04530()
{
  OUTLINED_FUNCTION_8_61();

  return swift_deallocObject();
}

uint64_t sub_1BBD04564()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

id sub_1BBD045E4@<X0>(void *a1@<X8>)
{
  result = ConversationController.momentsController.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD04734@<X0>(_BYTE *a1@<X8>)
{
  result = ConversationController.captionsRecognizerShouldBeRunning.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBD04AB4()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t sub_1BBD04AE4()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_15_1();
  v0 = OUTLINED_FUNCTION_14_5();
  v1(v0);

  return swift_deallocObject();
}

uint64_t sub_1BBD04B68()
{
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD04EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1BBD04F34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BBD04FBC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD05004()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD05054()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBD0508C()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD05160()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD051B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBD051EC@<X0>(uint64_t *a1@<X8>)
{
  result = LeaveButtonViewModel.config.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD05340()
{
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD05384()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_1BBD053B4@<X0>(uint64_t *a1@<X8>)
{
  result = SidebarButtonViewModel.config.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD05448()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBD05480@<X0>(uint64_t *a1@<X8>)
{
  result = CancelButtonViewModel.config.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD054B0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD054E4()
{

  return swift_deallocObject();
}

void *sub_1BBD0551C@<X0>(void *a1@<X8>)
{
  result = ScreenShareButtonViewModel.shareButtonConfig.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD0554C@<X0>(uint64_t *a1@<X8>)
{
  result = ScreenShareButtonViewModel.iconButtonConfig.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD055B8()
{
  OUTLINED_FUNCTION_6_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA011StrokeShapeC0VyAA08_TrimmedI0VyAA4PathVGAA04TintI5StyleVAA05EmptyC0VG_12CoreGraphics7CGFloatVQo_SgMd);
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  return v0;
}

uint64_t sub_1BBD05618()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD0571C()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD05750()
{
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD05818()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD05888()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD058BC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD058FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBD05978()
{
  type metadata accessor for _ShadowView();
  OUTLINED_FUNCTION_4_153();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_172();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_10_91();
  type metadata accessor for TupleView();
  OUTLINED_FUNCTION_7_112();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ClipEffect();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_2_176();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_142();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_193();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BBD05B1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBD05B54()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_109();

  return swift_deallocObject();
}

uint64_t sub_1BBD05B98()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD05BD0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD05C24()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBD05C60()
{
  v1 = (type metadata accessor for CountdownVoucher(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;
  MEMORY[0x1BFB23F10](v3);
  v4 = v1[7];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 8))(v3 + v4);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBD05D68()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBD05DAC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD05E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      return (*a1 & 0x7FFFFFFFu) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }
}

void *sub_1BBD05F0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    result[1] = 1;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BBD05F94@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  result = (*(v2 + 144))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBD06004@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  result = (*(v2 + 192))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBD06074@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  result = (*(v2 + 240))();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD060BC@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  result = (*(v2 + 288))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BBD06314@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  result = (*(v2 + 384))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBD063B4@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  result = (*(v2 + 408))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BBD064E8()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD0651C()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t sub_1BBD06554()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();

  v0 = OUTLINED_FUNCTION_226();
  v1(v0);

  return swift_deallocObject();
}

uint64_t sub_1BBD06618()
{

  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t sub_1BBD06668()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = (*(v2 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = OUTLINED_FUNCTION_226();
  v5(v4);

  return swift_deallocObject();
}

uint64_t sub_1BBD06738()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD0676C()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1BBD06800()
{

  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t sub_1BBD06854()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBD0688C()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD06910()
{
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD06944()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD069E0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD06A18()
{
  OUTLINED_FUNCTION_29();
  v1 = *(type metadata accessor for ConversationControlsSecondaryPillButtonType(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = (v0 + v2);
  OUTLINED_FUNCTION_44_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for Participant.State(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
      case 5u:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_7_0();
        (*(v5 + 8))(v0 + v2);
        break;
      case 4u:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_7_0();
        (*(v17 + 8))(v0 + v2);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v19 = v3 + *(v18 + 48);

        if (*(v19 + 15) >= 2uLL)
        {
          __swift_destroy_boxed_opaque_existential_1((v19 + 96));
        }

        if (*(v19 + 39))
        {
          swift_unknownObjectRelease();
        }

        if (*(v3 + *(v18 + 64) + 8))
        {
        }

        break;
      default:
        break;
    }

    v6 = type metadata accessor for Participant(0);
    v7 = v6[5];
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_7_0();
    (*(v8 + 8))(v3 + v7);
    v9 = (v3 + v6[7]);
    if (*v9)
    {
    }

    v10 = v3 + v6[14];
    v11 = type metadata accessor for Date();
    if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
    {
      v12 = OUTLINED_FUNCTION_40_2();
      v13(v12);
    }

    v14 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
    if (!__swift_getEnumTagSinglePayload(v10 + v14, 1, v11))
    {
      (*(*(v11 - 8) + 8))(v10 + v14, v11);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t sub_1BBD06D74()
{
  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t sub_1BBD06DB0()
{
  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t sub_1BBD06E08()
{
  type metadata accessor for ClarityPreviewView();
  OUTLINED_FUNCTION_35_7();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd) + 32);
  type metadata accessor for NavigationPath();
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 8))(v1 + v3 + v4);
  v6 = (v1 + v3 + *(v0 + 20));

  v7 = v1 + v3 + *(v0 + 24);

  if (*(v7 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BBD06F60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBD06FC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_1BBD07018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BBD070D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BBD07184()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitle_4iconQrqd___qd_0_tSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyAGyAGyAA6ZStackVyAA05TupleC0VyAA012_ConditionalH0Vy15ConversationKit07PreviewC13Representable33_5F44B43E167BB5459C625FF70B7F8E56LLVAGyAA5ColorVAA16_OverlayModifierVyAGyAA5ImageVAA18_AspectRatioLayoutVGSgGGG_AGyAA6VStackVyAKyAN27ClarityUIButtonRowContainerVyAGyAcAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVAWGG_AN07ClaritynC0V20StartCallButtonStyleAPLLVQo_AA30_EnvironmentKeyWritingModifierVyASSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGtGGA25_GAA25_AppearanceActionModifierVGAA11_ClipEffectVyAA9RectangleVGG_SSAWQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0Vy15ConversationKit07PreviewG13Representable33_5F44B43E167BB5459C625FF70B7F8E56LLVACyAA5ColorVAA16_OverlayModifierVyACyAA5ImageVAA18_AspectRatioLayoutVGSgGGG_ACyAA6VStackVyAGyAJ27ClarityUIButtonRowContainerVyACyAA0G0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVASGG_AJ07ClaritykG0V20StartCallButtonStyleALLLVQo_AA022_EnvironmentKeyWritingX0VyAOSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGtGGA23_GAA017_AppearanceActionX0VGAA11_ClipEffectVyAA9RectangleVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>>, _AppearanceActionModifier>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BBD07318()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD07354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeViewModel();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1BBD0739C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeViewModel();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1BBD07438()
{
  OUTLINED_FUNCTION_158_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_55_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_25_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA16RedactionReasonsVGMd);
  v4 = OUTLINED_FUNCTION_3_20(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1BBD074B0()
{
  OUTLINED_FUNCTION_75_8();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA16RedactionReasonsVGMd);
    v5 = OUTLINED_FUNCTION_7_115(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1BBD07574()
{
  OUTLINED_FUNCTION_158_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_55_1(*v0);
  }

  OUTLINED_FUNCTION_25_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd);
  v4 = OUTLINED_FUNCTION_3_20(*(v1 + 56));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1BBD075EC()
{
  OUTLINED_FUNCTION_75_8();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd);
    v5 = OUTLINED_FUNCTION_7_115(*(v4 + 56));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1BBD07664()
{
  OUTLINED_FUNCTION_158_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_55_1(*(v1 + 8));
  }

  OUTLINED_FUNCTION_25_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit11ParticipantVSgGMd);
  OUTLINED_FUNCTION_29_2();
  if (*(v5 + 84) == v0)
  {
    v6 = v2[13];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA4FontV7ContextVGMd);
    OUTLINED_FUNCTION_29_2();
    if (*(v7 + 84) == v0)
    {
      v6 = v2[14];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ContentSizeCategoryOGMd);
      v6 = v2[16];
    }
  }

  v8 = OUTLINED_FUNCTION_3_20(v6);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1BBD07774()
{
  OUTLINED_FUNCTION_75_8();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_48_24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit11ParticipantVSgGMd);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v3)
    {
      v6 = v2[13];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA4FontV7ContextVGMd);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v3)
      {
        v6 = v2[14];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ContentSizeCategoryOGMd);
        v6 = v2[16];
      }
    }

    v8 = OUTLINED_FUNCTION_7_115(v6);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1BBD078C4()
{
  type metadata accessor for TranscriptView(0);
  OUTLINED_FUNCTION_25_2();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 64);
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

  OUTLINED_FUNCTION_323();

  return swift_deallocObject();
}

uint64_t sub_1BBD079EC()
{
  v1 = type metadata accessor for TranscriptSubtitle(0);
  OUTLINED_FUNCTION_9_3();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CaptionSectionerV0C0VSgMd);
  OUTLINED_FUNCTION_9_0(v6);
  v8 = *(v7 + 80);
  v10 = *(v9 + 64);
  v11 = v0 + v3;

  v12 = v0 + v3 + v1[13];
  v13 = type metadata accessor for Participant(0);
  if (!__swift_getEnumTagSinglePayload(v12, 1, v13))
  {
    v49 = v0;
    type metadata accessor for Participant.State(0);
    v48 = v5;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
      case 5u:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v14 + 8))(v12);
        break;
      case 4u:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v45 + 8))(v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        OUTLINED_FUNCTION_32_37();
        OUTLINED_FUNCTION_46_31();
        if (v46)
        {
          __swift_destroy_boxed_opaque_existential_1(v10 + 96);
        }

        if (*(v10 + 312))
        {
          swift_unknownObjectRelease();
        }

        if (*(v12 + *(v5 + 64) + 8))
        {
        }

        break;
      default:
        break;
    }

    v15 = v13[5];
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_15_1();
    (*(v16 + 8))(v12 + v15);
    v17 = (v12 + v13[7]);
    if (*v17)
    {
    }

    v18 = v12 + v13[14];
    v19 = type metadata accessor for Date();
    if (!OUTLINED_FUNCTION_20_66(v19))
    {
      OUTLINED_FUNCTION_4_158();
      v20 = OUTLINED_FUNCTION_32_2();
      v21(v20);
    }

    v22 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
    if (!OUTLINED_FUNCTION_34_41(v18 + v22))
    {
      OUTLINED_FUNCTION_4_158();
      (*(v23 + 8))(v18 + v22, v10);
    }

    v0 = v49;
    v5 = v48;
  }

  v24 = v5 + v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit11ParticipantVSgGMd);

  v25 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA4FontV7ContextV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Font.Context();
    OUTLINED_FUNCTION_15_1();
    (*(v26 + 8))(v11 + v25);
  }

  else
  {
  }

  v27 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    OUTLINED_FUNCTION_15_1();
    (*(v28 + 8))(v11 + v27);
  }

  else
  {
  }

  v29 = v0 + (v24 & ~v8);
  v30 = type metadata accessor for CaptionSectioner.Caption(0);
  if (!OUTLINED_FUNCTION_54_24(v30))
  {
    v31 = v29 + *(v25 + 20);
    type metadata accessor for Participant.State(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
      case 5u:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v32 + 8))(v31);
        break;
      case 4u:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v47 + 8))(v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        OUTLINED_FUNCTION_55_23();
        if (*(v11 + 120) >= 2uLL)
        {
          __swift_destroy_boxed_opaque_existential_1(v11 + 96);
        }

        if (*(v11 + 312))
        {
          swift_unknownObjectRelease();
        }

        if (*(v31 + *(v10 + 64) + 8))
        {
        }

        break;
      default:
        break;
    }

    v33 = v13[5];
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_15_1();
    (*(v34 + 8))(v31 + v33);
    v35 = (v31 + v13[7]);
    if (*v35)
    {
    }

    v36 = v31 + v13[14];
    v37 = type metadata accessor for Date();
    if (!OUTLINED_FUNCTION_33_46(v37))
    {
      OUTLINED_FUNCTION_4_158();
      (*(v38 + 8))(v36, v10);
    }

    v39 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
    if (!OUTLINED_FUNCTION_34_41(v36 + v39))
    {
      OUTLINED_FUNCTION_4_158();
      (*(v40 + 8))(v36 + v39, v10);
    }

    OUTLINED_FUNCTION_38_43();
    v42 = *(v41 + 8);
    v42(v29 + v43, v10);
    v42(v29 + *(v25 + 28), v10);
    OUTLINED_FUNCTION_47_22();

    OUTLINED_FUNCTION_35_36();
    OUTLINED_FUNCTION_56_22();
  }

  return swift_deallocObject();
}

uint64_t sub_1BBD08168()
{
  OUTLINED_FUNCTION_34_0();
  v3 = type metadata accessor for TranscriptSubtitle(0);
  OUTLINED_FUNCTION_9_3();
  v5 = v0 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  v6 = v5 + v3[13];
  v7 = type metadata accessor for Participant(0);
  if (!OUTLINED_FUNCTION_54_24(v7))
  {
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
        (*(v8 + 8))(v6);
        break;
      case 4u:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v23 + 8))(v6);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v2 = v6 + *(v24 + 48);

        OUTLINED_FUNCTION_46_31();
        if (v25)
        {
          __swift_destroy_boxed_opaque_existential_1(v2 + 96);
        }

        if (*(v2 + 312))
        {
          swift_unknownObjectRelease();
        }

        if (*(v6 + *(v24 + 64) + 8))
        {
        }

        break;
      default:
        break;
    }

    v9 = *(v1 + 20);
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_15_1();
    (*(v10 + 8))(v6 + v9);
    OUTLINED_FUNCTION_37_37();
    if (v11)
    {
    }

    OUTLINED_FUNCTION_47_22();

    OUTLINED_FUNCTION_35_36();
    OUTLINED_FUNCTION_56_22();

    v12 = OUTLINED_FUNCTION_44_26();
    if (!OUTLINED_FUNCTION_20_66(v12))
    {
      OUTLINED_FUNCTION_4_158();
      v13 = OUTLINED_FUNCTION_32_2();
      v14(v13);
    }

    v15 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
    if (!OUTLINED_FUNCTION_34_41(v9 + v15))
    {
      OUTLINED_FUNCTION_4_158();
      (*(v16 + 8))(v9 + v15, v2);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit11ParticipantVSgGMd);

  v17 = v3[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA4FontV7ContextV_GMd);
  if (OUTLINED_FUNCTION_57_21() == 1)
  {
    type metadata accessor for Font.Context();
    OUTLINED_FUNCTION_15_1();
    (*(v18 + 8))(v5 + v17);
  }

  else
  {
  }

  OUTLINED_FUNCTION_36_43(v3[15]);

  v19 = v3[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    OUTLINED_FUNCTION_15_1();
    (*(v20 + 8))(v5 + v19);
  }

  else
  {
  }

  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_1_3();

  return swift_deallocObject();
}

uint64_t sub_1BBD08540()
{
  OUTLINED_FUNCTION_11_41();
  result = EnvironmentValues.accessibilityReduceTransparency.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BBD0856C()
{
  v1 = type metadata accessor for TranscriptSubtitle(0);
  OUTLINED_FUNCTION_9_3();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CaptionSectionerV0C0VSgMd);
  OUTLINED_FUNCTION_9_0(v6);
  v8 = *(v7 + 80);
  v53 = *(v9 + 64);
  v10 = type metadata accessor for ScrollViewProxy();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v52 = *(v11 + 80);
  v13 = v0 + v3;

  v14 = v0 + v3 + v1[13];
  v15 = type metadata accessor for Participant(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    v49 = v5;
    type metadata accessor for Participant.State(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
      case 5u:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v16 + 8))(v14);
        break;
      case 4u:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v45 + 8))(v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        OUTLINED_FUNCTION_55_23();
        if (*(v10 + 120) >= 2uLL)
        {
          __swift_destroy_boxed_opaque_existential_1(v10 + 96);
        }

        if (*(v10 + 312))
        {
          swift_unknownObjectRelease();
        }

        if (*(v14 + *(v5 + 64) + 8))
        {
        }

        break;
      default:
        break;
    }

    v50 = v10;
    v17 = v15[5];
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_15_1();
    (*(v18 + 8))(v14 + v17);
    v19 = (v14 + v15[7]);
    if (*v19)
    {
    }

    v20 = v14 + v15[14];
    v21 = type metadata accessor for Date();
    if (!OUTLINED_FUNCTION_74_0(v20))
    {
      OUTLINED_FUNCTION_2_3();
      (*(v22 + 8))(v20, v21);
    }

    v23 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
    if (!OUTLINED_FUNCTION_74_0(v20 + v23))
    {
      OUTLINED_FUNCTION_2_3();
      (*(v24 + 8))(v20 + v23, v21);
    }

    v5 = v49;
    v10 = v50;
  }

  v25 = v5 + v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit11ParticipantVSgGMd);

  v26 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA4FontV7ContextV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Font.Context();
    OUTLINED_FUNCTION_15_1();
    (*(v27 + 8))(v13 + v26);
  }

  else
  {
  }

  v28 = v25 & ~v8;

  v29 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    OUTLINED_FUNCTION_15_1();
    (*(v30 + 8))(v13 + v29);
  }

  else
  {
  }

  v31 = v0 + v28;
  v32 = type metadata accessor for CaptionSectioner.Caption(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v28, 1, v32))
  {
    v51 = v10;
    v33 = v31 + v32[5];
    type metadata accessor for Participant.State(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
      case 5u:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v34 + 8))(v33);
        break;
      case 4u:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v46 + 8))(v33);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v48 = v33 + *(v47 + 48);

        if (*(v48 + 120) >= 2uLL)
        {
          __swift_destroy_boxed_opaque_existential_1(v48 + 96);
        }

        if (*(v48 + 312))
        {
          swift_unknownObjectRelease();
        }

        if (*(v33 + *(v47 + 64) + 8))
        {
        }

        break;
      default:
        break;
    }

    v35 = v15[5];
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_15_1();
    (*(v36 + 8))(v33 + v35);
    v37 = (v33 + v15[7]);
    if (*v37)
    {
    }

    v38 = v33 + v15[14];
    v39 = type metadata accessor for Date();
    if (!OUTLINED_FUNCTION_74_0(v38))
    {
      OUTLINED_FUNCTION_2_3();
      (*(v40 + 8))(v38, v39);
    }

    v41 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
    if (!OUTLINED_FUNCTION_74_0(v38 + v41))
    {
      OUTLINED_FUNCTION_2_3();
      (*(v42 + 8))(v38 + v41, v39);
    }

    v43 = *(*(v39 - 8) + 8);
    v43(v31 + v32[6], v39);
    v43(v31 + v32[7], v39);

    OUTLINED_FUNCTION_45_34();

    v10 = v51;
  }

  (*(v12 + 8))(v0 + ((v28 + v53 + v52) & ~v52), v10);
  OUTLINED_FUNCTION_323();

  return swift_deallocObject();
}

uint64_t sub_1BBD08DCC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD08E04()
{
  type metadata accessor for TranscriptLabel(0);
  OUTLINED_FUNCTION_13_77();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  type metadata accessor for GeometryProxy();
  OUTLINED_FUNCTION_1();

  v6 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  if (OUTLINED_FUNCTION_57_21() == 1)
  {
    type metadata accessor for RedactionReasons();
    OUTLINED_FUNCTION_15_1();
    (*(v7 + 8))(v0 + v3 + v6);
  }

  else
  {
  }

  v8 = OUTLINED_FUNCTION_40_29(v3 + v5);
  v9(v8);
  OUTLINED_FUNCTION_323();

  return swift_deallocObject();
}

uint64_t sub_1BBD08F74()
{
  OUTLINED_FUNCTION_11_41();
  result = EnvironmentValues.menuIndicatorVisibility.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD08FCC()
{
  OUTLINED_FUNCTION_158_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_55_1(*v1);
  }

  OUTLINED_FUNCTION_25_60();
  type metadata accessor for DynamicTypeSize();
  OUTLINED_FUNCTION_29_2();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 60);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ContentSizeCategoryOGMd);
    v6 = *(v2 + 68);
  }

  v7 = OUTLINED_FUNCTION_3_20(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1BBD09084()
{
  OUTLINED_FUNCTION_75_8();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_48_24();
    type metadata accessor for DynamicTypeSize();
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v3)
    {
      v6 = *(v2 + 60);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ContentSizeCategoryOGMd);
      v6 = *(v2 + 68);
    }

    v7 = OUTLINED_FUNCTION_7_115(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1BBD09168(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 8);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
    v5 = OUTLINED_FUNCTION_3_20(*(v2 + 20));

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void sub_1BBD091EC()
{
  OUTLINED_FUNCTION_6_7();
  if (v3 == 254)
  {
    *(v1 + 8) = -v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
    v5 = OUTLINED_FUNCTION_7_115(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1BBD092A4(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 16);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA4FontV7ContextVGMd);
    v5 = OUTLINED_FUNCTION_3_20(*(v2 + 24));

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void sub_1BBD09328()
{
  OUTLINED_FUNCTION_6_7();
  if (v3 == 254)
  {
    *(v1 + 16) = -v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA4FontV7ContextVGMd);
    v5 = OUTLINED_FUNCTION_7_115(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1BBD093A4()
{
  OUTLINED_FUNCTION_6_7();
  v3 = *(v2 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA4FontV7ContextVGMd);

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1BBD09400()
{
  OUTLINED_FUNCTION_6_7();
  v3 = *(v2 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA4FontV7ContextVGMd);

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_1BBD09460()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy15ConversationKit14TranscriptList33_28E431076EC11867EF27B9C11E6DD7B1LLVAD0G4ViewAFLLV18BackgroundModifierVGAI09ClipShapeS0VGAA16_FlexFrameLayoutVGAA010_FixedSizeX0VGAA024_EnvironmentKeyTransformS0VySbGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TranscriptList, TranscriptView.BackgroundModifier>, TranscriptView.ClipShapeModifier>, _FlexFrameLayout>, _FixedSizeLayout>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  return OUTLINED_FUNCTION_43_34();
}

uint64_t sub_1BBD09504()
{
  OUTLINED_FUNCTION_11_41();
  result = MEMORY[0x1BFB1E710]();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD09534()
{
  OUTLINED_FUNCTION_34_0();
  type metadata accessor for TranscriptList(0);
  OUTLINED_FUNCTION_13_77();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v15 = *(v4 + 64);
  v5 = type metadata accessor for GeometryProxy();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v8 = *(v6 + 80);

  v9 = v1[17];
  type metadata accessor for DynamicTypeSize();
  OUTLINED_FUNCTION_15_1();
  (*(v10 + 8))(v0 + v3 + v9);
  OUTLINED_FUNCTION_36_43(v1[18]);

  v11 = v1[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  if (OUTLINED_FUNCTION_57_21() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    OUTLINED_FUNCTION_15_1();
    (*(v12 + 8))(v0 + v3 + v11);
  }

  else
  {
  }

  (*(v7 + 8))(v0 + ((v3 + v15 + v8) & ~v8), v5);

  OUTLINED_FUNCTION_1_3();

  return swift_deallocObject();
}

uint64_t sub_1BBD09728()
{
  v2 = type metadata accessor for GeometryProxy();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for TranscriptList(0);
  OUTLINED_FUNCTION_25_2();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);

  v10 = *(v0 + 68);
  type metadata accessor for DynamicTypeSize();
  OUTLINED_FUNCTION_15_1();
  (*(v11 + 8))(v1 + v9 + v10);

  v12 = *(v0 + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    OUTLINED_FUNCTION_15_1();
    (*(v13 + 8))(v1 + v9 + v12);
  }

  else
  {
  }

  OUTLINED_FUNCTION_323();

  return swift_deallocObject();
}

uint64_t sub_1BBD0992C()
{
  v1 = (type metadata accessor for TranscriptList(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for CaptionSectioner.Caption(0);
  OUTLINED_FUNCTION_9_3();
  v6 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v35 = *(v7 + 64);
  v36 = type metadata accessor for GeometryProxy();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v34 = *(v8 + 80);
  v10 = v0 + v2;

  v11 = v1[17];
  type metadata accessor for DynamicTypeSize();
  OUTLINED_FUNCTION_15_1();
  (*(v12 + 8))(v10 + v11);

  v13 = v1[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    OUTLINED_FUNCTION_15_1();
    (*(v14 + 8))(v10 + v13);
  }

  else
  {
  }

  v15 = v0 + v6 + v4[5];
  type metadata accessor for Participant.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 5u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v16 + 8))(v15);
      break;
    case 4u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v32 + 8))(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      OUTLINED_FUNCTION_32_37();
      OUTLINED_FUNCTION_46_31();
      if (v33)
      {
        __swift_destroy_boxed_opaque_existential_1(v10 + 96);
      }

      if (*(v10 + 312))
      {
        swift_unknownObjectRelease();
      }

      if (*(v15 + *(v3 + 64) + 8))
      {
      }

      break;
    default:
      break;
  }

  v17 = type metadata accessor for Participant(0);
  v18 = v17[5];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_15_1();
  (*(v19 + 8))(v15 + v18);
  v20 = (v15 + v17[7]);
  if (*v20)
  {
  }

  OUTLINED_FUNCTION_45_34();

  v21 = v15 + v17[14];
  v22 = type metadata accessor for Date();
  if (!OUTLINED_FUNCTION_33_46(v22))
  {
    OUTLINED_FUNCTION_4_158();
    (*(v23 + 8))(v21, v20);
  }

  v24 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
  if (!OUTLINED_FUNCTION_34_41(v21 + v24))
  {
    OUTLINED_FUNCTION_4_158();
    (*(v25 + 8))(v21 + v24, v20);
  }

  OUTLINED_FUNCTION_38_43();
  v27 = *(v26 + 8);
  v29 = OUTLINED_FUNCTION_49_28(v28);
  v27(v29);
  v30 = OUTLINED_FUNCTION_49_28(v4[7]);
  v27(v30);

  OUTLINED_FUNCTION_36_43(v4[9]);

  (*(v9 + 8))(v0 + ((((v35 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v34 + 32) & ~v34), v36);
  OUTLINED_FUNCTION_50_24();

  return swift_deallocObject();
}

uint64_t sub_1BBD09E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_7();
  type metadata accessor for CaptionSectioner.Caption(0);
  OUTLINED_FUNCTION_29_2();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  type metadata accessor for GeometryProxy();
  OUTLINED_FUNCTION_29_2();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v9 = v4 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v4 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_1BBD09F78()
{
  OUTLINED_FUNCTION_48_24();
  OUTLINED_FUNCTION_6_7();
  type metadata accessor for CaptionSectioner.Caption(0);
  OUTLINED_FUNCTION_29_2();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    type metadata accessor for GeometryProxy();
    OUTLINED_FUNCTION_29_2();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = v0;
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1BBD0A05C()
{
  OUTLINED_FUNCTION_158_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_55_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_25_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA16RedactionReasonsVGMd);
  v4 = OUTLINED_FUNCTION_3_20(*(v1 + 40));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1BBD0A0D4()
{
  OUTLINED_FUNCTION_75_8();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA16RedactionReasonsVGMd);
    v5 = OUTLINED_FUNCTION_7_115(*(v4 + 40));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1BBD0A154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v6);
  OUTLINED_FUNCTION_29_2();
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_55_1(*(v3 + *(a3 + 24)));
  }

  v9 = v7;
  v10 = v3 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_1BBD0A1F0()
{
  OUTLINED_FUNCTION_48_24();
  OUTLINED_FUNCTION_6_7();
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_29_2();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_7_115(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_1BBD0A2D4()
{
  type metadata accessor for TranscriptSubtitle.BackgroundViewModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for Material();
  type metadata accessor for _BackgroundShapeModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BBD0A414()
{
  OUTLINED_FUNCTION_34_0();
  type metadata accessor for TranscriptParticipantBadge(0);
  OUTLINED_FUNCTION_9_3();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_59_19();
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
      (*(v4 + 8))(v0);
      break;
    case 4u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v16 + 8))(v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      OUTLINED_FUNCTION_53_20();
      if (*(v2 + 120) >= 2uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v2 + 96);
      }

      if (*(v2 + 312))
      {
        swift_unknownObjectRelease();
      }

      if (*(v0 + *(v1 + 64) + 8))
      {
      }

      break;
    default:
      break;
  }

  v5 = type metadata accessor for Participant(0);
  v6 = *(v5 + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_15_1();
  (*(v7 + 8))(v0 + v6);
  OUTLINED_FUNCTION_37_37();
  if (v8)
  {
  }

  OUTLINED_FUNCTION_47_22();

  OUTLINED_FUNCTION_35_36();
  OUTLINED_FUNCTION_56_22();

  v9 = OUTLINED_FUNCTION_44_26();
  if (!OUTLINED_FUNCTION_20_66(v9))
  {
    OUTLINED_FUNCTION_4_158();
    v10 = OUTLINED_FUNCTION_32_2();
    v11(v10);
  }

  v12 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
  if (!OUTLINED_FUNCTION_34_41(v6 + v12))
  {
    OUTLINED_FUNCTION_4_158();
    (*(v13 + 8))(v6 + v12, v3);
  }

  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_1_3();

  return swift_deallocObject();
}

uint64_t sub_1BBD0A6E4()
{
  OUTLINED_FUNCTION_34_0();
  type metadata accessor for TranscriptParticipantBadge(0);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_59_19();
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
      (*(v4 + 8))(v0);
      break;
    case 4u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v16 + 8))(v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      OUTLINED_FUNCTION_53_20();
      if (*(v2 + 120) >= 2uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v2 + 96);
      }

      if (*(v2 + 312))
      {
        swift_unknownObjectRelease();
      }

      if (*(v0 + *(v1 + 64) + 8))
      {
      }

      break;
    default:
      break;
  }

  v5 = type metadata accessor for Participant(0);
  v6 = *(v5 + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_15_1();
  (*(v7 + 8))(v0 + v6);
  OUTLINED_FUNCTION_37_37();
  if (v8)
  {
  }

  OUTLINED_FUNCTION_47_22();

  OUTLINED_FUNCTION_35_36();
  OUTLINED_FUNCTION_56_22();

  v9 = OUTLINED_FUNCTION_44_26();
  if (!OUTLINED_FUNCTION_20_66(v9))
  {
    OUTLINED_FUNCTION_4_158();
    v10 = OUTLINED_FUNCTION_32_2();
    v11(v10);
  }

  v12 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
  if (!OUTLINED_FUNCTION_34_41(v6 + v12))
  {
    OUTLINED_FUNCTION_4_158();
    (*(v13 + 8))(v6 + v12, v3);
  }

  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_1_3();

  return swift_deallocObject();
}

uint64_t sub_1BBD0A9BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAA15ModifiedContentVyALyALyALyALyAA6HStackVyAA05TupleC0VyALyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGAA11_ClipEffectVyAA6CircleVGG_AA4TextVSgtGGAA08_PaddingQ0VGA9_GAA24_BackgroundStyleModifierVyAA08AnyShapeY0VGGAZyAA16RoundedRectangleVGGAA08_OverlayZ0VyAA011StrokeShapeC0VyA19_AA5ColorVAA05EmptyC0VGGG_Qo_Md);
  type metadata accessor for Participant(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA11_ClipEffectVyAA6CircleVGG_AA4TextVSgtGGAA08_PaddingK0VGA0_GAA24_BackgroundStyleModifierVyAA08AnyShapeS0VGGAQyAA16RoundedRectangleVGGAA08_OverlayT0VyAA06StrokevG0VyA10_AA5ColorVAA05EmptyG0VGGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ClipEffect<Circle>>, Text?)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>> and conformance <> ModifiedContent<A, B>();
  OUTLINED_FUNCTION_43_34();
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type Participant and conformance Participant, type metadata accessor for Participant);
  return OUTLINED_FUNCTION_43_34();
}

uint64_t sub_1BBD0AAD0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBD0AB20()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD0AB58()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBD0ABA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_1BBD0AC08@<X0>(uint64_t *a1@<X8>)
{
  result = ClarityUIFavoritesList.favorites.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD0AC38()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD0AC74()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD0ACA8()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD0ADA0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD0ADE8()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_1();
  result = (*(v1 + 192))();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD0AE30()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_1();
  result = (*(v1 + 240))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

void *sub_1BBD0AE80()
{
  OUTLINED_FUNCTION_2_5();
  result = FindoViewModel.timer.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1BBD0AEAC()
{
  OUTLINED_FUNCTION_2_5();
  result = FindoViewModel.menuHostViewController.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1BBD0AF04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBD0AF3C()
{

  return swift_deallocObject();
}

uint64_t _ss9OptionSetPs7ElementQzRszrlE6update4withxSgx_tF15ConversationKit26RecentsLinkControllerModelC11UpdateStateV_Tgq5_0(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1BBD0AFFC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD0B03C()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBD0B0F8()
{
  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t sub_1BBD0B12C()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBD0B164()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BBD0B1AC()
{

  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t sub_1BBD0B288()
{

  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD0B2BC()
{

  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

uint64_t sub_1BBD0B40C()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD0B444()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD0B478()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD0B4D0()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD0B504()
{
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD0B538()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD0B578()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD0B5C0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD0B610()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD0B648()
{

  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t sub_1BBD0B67C()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD0B6F0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBD0B764()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_1BBD0B798()
{
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_35_7();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v5 + 64);

  v7 = (v1 + v4);
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_108_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 3u:
    case 4u:

      v2 = type metadata accessor for RecentCallRecentItemMetadata(0);
      v8 = type metadata accessor for Date();
      if (!OUTLINED_FUNCTION_25_21(v8))
      {
        OUTLINED_FUNCTION_16_3();
        v9 = OUTLINED_FUNCTION_53_0();
        v10(v9);
      }

      OUTLINED_FUNCTION_91_1();

      v11 = type metadata accessor for UUID();
      if (!OUTLINED_FUNCTION_25_21(v11))
      {
        OUTLINED_FUNCTION_16_3();
        v12 = OUTLINED_FUNCTION_53_0();
        v13(v12);
      }

      v14 = *(v7 + *(v2 + 44));
      if (v14)
      {
      }

      if (!OUTLINED_FUNCTION_52_7())
      {
        OUTLINED_FUNCTION_16_3();
        v15 = OUTLINED_FUNCTION_53_0();
        v16(v15);
      }

      break;
    case 1u:
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_15_1();
      (*(v17 + 8))(v1 + v4);
      v18 = type metadata accessor for RecentOngoingConversationMetadata(0);

      OUTLINED_FUNCTION_91_1();
      v2 = v7 + *(v18 + 28);
      if (*v2)
      {

        goto LABEL_14;
      }

      break;
    case 2u:

LABEL_14:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  v19 = v0[9];
  v20 = type metadata accessor for Date();
  if (!OUTLINED_FUNCTION_58(v20))
  {
    (*(*(v2 - 8) + 8))(v7 + v19, v2);
  }

  OUTLINED_FUNCTION_59_2();

  return swift_deallocObject();
}

uint64_t sub_1BBD0BAD0@<X0>(uint64_t *a1@<X8>)
{
  result = CallTranslationButtonViewModel.config.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD0BB00@<X0>(_BYTE *a1@<X8>)
{
  result = TranslationButtonView.isPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBD0BB6C()
{
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD0BBA0()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD0BC64()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBD0BC9C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t _s15ConversationKit22ReactionPickerTipStateOSYAASY8rawValue03RawH0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = ReactionsState.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BBD0BD7C()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBD0BE48@<X0>(uint64_t *a1@<X8>)
{
  result = MultiwayViewConstraintsController.accessibilityLocalParticipantState.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBD0C090()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t sub_1BBD0C0C0()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x1BFB22620](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = a1;
  v3 = specialized RawRepresentable<>._rawHashValue(seed:)(*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

uint64_t getEnumTag for TapInteraction.EventType(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_13_51(result, a3, a2);
  }

  return result;
}

unint64_t SpamModelable.messageKey.getter()
{
  SpamModelable.messageKey.getter();
  return 0xD000000000000010;
}

{
  return 0xD000000000000010;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CLFCommunicationLimit()
{
  v1 = OUTLINED_FUNCTION_4_8();
  result = CNActionType.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  return specialized Dictionary.subscript.getter(a1, a2, specialized __RawDictionaryStorage.find<A>(_:));
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_277_0(v3);
  return v2;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_146_2(v2);
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_277_0(v3);
  return v2;
}

{
  if (*(a2 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_145_4(v2);
  }

  else
  {
    OUTLINED_FUNCTION_199_1();
  }

  return OUTLINED_FUNCTION_46();
}

{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_146_2(v2);
}

{
  if (*(a2 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_145_4(v2);
  }

  else
  {
    OUTLINED_FUNCTION_199_1();
  }

  return OUTLINED_FUNCTION_46();
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_146_2(v2);
}

id ConversationKitLog()
{
  if (ConversationKitLog_onceToken != -1)
  {
    ConversationKitLog_cold_1();
  }

  v1 = ConversationKitLog_ConversationKitLog;

  return v1;
}

void __ConversationKitLog_block_invoke()
{
  v0 = os_log_create(ConversationKitLogSubsystem, "Default");
  v1 = ConversationKitLog_ConversationKitLog;
  ConversationKitLog_ConversationKitLog = v0;
}

uint64_t consumeSandboxToken(void *a1)
{
  v1 = [a1 UTF8String];

  return MEMORY[0x1EEE74400](v1);
}

uint64_t static PreCallControlsContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      goto LABEL_6;
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
LABEL_6:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    outlined copy of PreCallControlsContext(v3);
    outlined copy of PreCallControlsContext(v2);
    OUTLINED_FUNCTION_45_1();
    v5 = static NSObject.== infix(_:_:)();
    goto LABEL_7;
  }

  v4 = OUTLINED_FUNCTION_46();
  outlined copy of PreCallControlsContext(v4);
  outlined copy of PreCallControlsContext(v2);
  v5 = 0;
LABEL_7:
  outlined consume of PreCallControlsContext(v2);
  v6 = OUTLINED_FUNCTION_46();
  outlined consume of PreCallControlsContext(v6);
  return v5 & 1;
}

uint64_t PreCallContextProvider.preCallContexts.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGGMd);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - v5;
  v9[1] = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGMd);
  lazy protocol witness table accessor for type PreCallControlsContext? and conformance <A> A?();
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<PreCallControlsContext?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGGMd);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v3 + 8))(v6, v1);
  return v7;
}

void PreCallContextProvider.setPreCallContext(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  outlined copy of PreCallControlsContext(*a1);
  CurrentValueSubject.send(_:)();
  outlined consume of PreCallControlsContext?(v1, v2);
}

uint64_t PreCallContextProvider.__deallocating_deinit()
{

  OUTLINED_FUNCTION_36();

  return swift_deallocClassInstance();
}

uint64_t PreCallContextProvider.__allocating_init()()
{
  OUTLINED_FUNCTION_36();
  v0 = swift_allocObject();
  PreCallContextProvider.init()();
  return v0;
}

uint64_t PreCallContextProvider.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGMd);
  swift_allocObject();
  *(v0 + 16) = CurrentValueSubject.init(_:)();
  return v0;
}

uint64_t default argument 0 of ConversationControlsApertureHelper.init(systemApertureIconFactory:)()
{
  v0 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  OUTLINED_FUNCTION_24();
  swift_allocObject();
  Defaults.init()();
  CallScreeningService.init(overrides:)();
  v7 = type metadata accessor for Features();
  v8 = [objc_allocWithZone(v7) init];
  type metadata accessor for SystemApertureIconFactory(0);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E6995EE0];
  v11 = (v9 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v11[3] = v0;
  v11[4] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(v2 + 16))(boxed_opaque_existential_1, v6, v0);
  v13 = (v9 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v13[3] = v7;
  v13[4] = &protocol witness table for Features;
  *v13 = v8;
  v14 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
  v15 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  __swift_storeEnumTagSinglePayload(v9 + v14, 1, 1, v15);
  v16 = OUTLINED_FUNCTION_45_1();
  v17(v16);
  return v9;
}

uint64_t default argument 0 of SystemApertureIconFactory.init(callScreeningService:features:)()
{
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for CallScreeningService();
  v2 = MEMORY[0x1E6995EE0];
  v0[3] = v1;
  v0[4] = v2;
  __swift_allocate_boxed_opaque_existential_1(v0);
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  OUTLINED_FUNCTION_24();
  swift_allocObject();
  Defaults.init()();
  return CallScreeningService.init(overrides:)();
}

id default argument 1 of SystemApertureIconFactory.init(callScreeningService:features:)()
{
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for Features();
  result = [objc_allocWithZone(v1) init];
  v0[3] = v1;
  v0[4] = &protocol witness table for Features;
  *v0 = result;
  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  return OUTLINED_FUNCTION_25_5();
}

{
  OUTLINED_FUNCTION_17_9();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_35_1();

  return Hasher._finalize()();
}

{
  v0 = OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_21(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_48_3();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_17_9();
  if (!v0)
  {
    OUTLINED_FUNCTION_23_9();
  }

  OUTLINED_FUNCTION_35_1();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_17_9();
  MEMORY[0x1BFB22640]((v0 & 1u) + 1);
  return Hasher._finalize()();
}

{
  v0 = OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_21(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_48_3();
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_35_1();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  v0 = OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_21(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter();
}

{
  return OUTLINED_FUNCTION_25_5();
}

{
  OUTLINED_FUNCTION_29_1();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_17_9();
  Hasher._combine(_:)((v0 & 1) - 3);
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  v0 = OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_21(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  v0 = OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_21(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  return specialized RawRepresentable<>.hashValue.getter(a1, InCallControlsCollectionViewController.CollectionViewSection.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, VideoMessageController.State.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, ImageNames.Staging.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, ImageNames.InCall.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, ImageNames.Drawer.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, ImageNames.ParticipantView.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, ImageNames.ConversationControls.rawValue.getter);
}

{
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(double a1)
{
  OUTLINED_FUNCTION_29_1();
  specialized _SwiftNewtypeWrapper<>.hash(into:)(a1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1BFB22640](qword_1BC4BA7D0[a1]);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_29_1();
  a2(a1);
  OUTLINED_FUNCTION_42_5();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  return OUTLINED_FUNCTION_26_8();
}

{
  OUTLINED_FUNCTION_34_1();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_35_1();

  return Hasher._finalize()();
}

{
  v0 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_2_21(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_48_3();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_34_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_23_9();
  }

  OUTLINED_FUNCTION_35_1();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_34_1();
  MEMORY[0x1BFB22640]((v0 & 1u) + 1);
  return Hasher._finalize()();
}

{
  v0 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_2_21(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_48_3();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_35_1();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_35_1();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_34_1();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_34_1();
  v1 = VideoReaction.rawValue.getter(v0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  v0 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_2_21(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return OUTLINED_FUNCTION_26_8();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_34_1();
  Hasher._combine(_:)((v0 & 1) - 3);
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_35_1();

  return Hasher._finalize()();
}

{
  v0 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_2_21(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  v0 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_2_21(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_35_1();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, InCallControlsCollectionViewController.CollectionViewSection.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, VideoMessageController.State.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ImageNames.Staging.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ImageNames.InCall.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ImageNames.Drawer.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ImageNames.ParticipantView.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ImageNames.ConversationControls.rawValue.getter);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a2);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(double a1)
{
  Hasher.init(_seed:)();
  specialized _SwiftNewtypeWrapper<>.hash(into:)(a1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a2 & 1);
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](qword_1BC4BA7D0[a2]);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a3(a2);
  OUTLINED_FUNCTION_42_5();

  return Hasher._finalize()();
}

id default argument 3 of ConversationControlsBadgingAvatarViewController.init(conversation:badgeImage:displayName:badgeBackgroundColor:)()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

uint64_t default argument 0 of PushToTalkTalkButtonGestureRecognizer.init(interval:maximumVerticalVelocity:target:action:)@<X0>(void *a1@<X8>)
{
  *a1 = 300;
  type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_46();

  return v2(v1);
}

uint64_t default argument 0 of ScreeningSoundAndHapticsManager.init(with:ringerStateObserver:feedbackGenerator:)@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69D8AA0]) init];
  result = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallSoundPlayer);
  a1[3] = result;
  a1[4] = &protocol witness table for TUCallSoundPlayer;
  *a1 = v2;
  return result;
}

uint64_t default argument 1 of ScreeningSoundAndHapticsManager.init(with:ringerStateObserver:feedbackGenerator:)()
{
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for DeviceRingerStateObserver();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 20) = 0;
  v0[3] = v1;
  v0[4] = &protocol witness table for DeviceRingerStateObserver;
  *v0 = result;
  return result;
}

id default argument 2 of static Participant.transformForLocalParticipant(deviceOrientation:cameraType:currentIdiom:defaults:)()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1;
}

id default argument 1 of RecentItemContactsViewControllerDelegate.init(_:faceTimeReportSpamManager:)()
{
  type metadata accessor for ReportSpamManager();
  v1 = 1;
  return ReportSpamManager.__allocating_init(idsServiceType:unknownContactChecker:)(&v1, 0, 0);
}

uint64_t default argument 1 of IDSCapabilitiesChecker.init(participants:lookupManager:)@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedManager];
  result = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager);
  a1[3] = result;
  a1[4] = &protocol witness table for TUIDSLookupManager;
  *a1 = v2;
  return result;
}

uint64_t default argument 2 of localized(_:locale:source:value:comment:_:)()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v0 = static LocalizationSource.conversationKit;
  v1 = static LocalizationSource.conversationKit;

  return v0;
}

char *default argument 1 of ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)@<X0>(char **a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static PlaceholderCallCenter.shared;
  v4 = type metadata accessor for CallCenter();
  v5 = objc_allocWithZone(v4);
  result = CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v2, v3, 0, 0);
  a1[3] = v4;
  a1[4] = &protocol witness table for CallCenter;
  *a1 = result;
  return result;
}

uint64_t default argument 2 of ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for DefaultParticipantMediaProviderCreator;
  a1[4] = &protocol witness table for DefaultParticipantMediaProviderCreator;
  *a1 = swift_allocObject();

  return swift_unknownObjectWeakInit();
}

uint64_t default argument 3 of ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for DefaultParticipantCaptionsProviderCreator;
  a1[4] = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
  OUTLINED_FUNCTION_24();
  v2 = swift_allocObject();
  *a1 = v2;
  *(v2 + 24) = 0;

  return swift_unknownObjectWeakInit();
}

void *default argument 7 of ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)()
{
  v0 = [objc_opt_self() sharedManager];
  type metadata accessor for IDSCapabilitiesChecker();
  v1 = swift_allocObject();
  v5[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager);
  v5[4] = &protocol witness table for TUIDSLookupManager;
  v5[0] = v0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v2 = MEMORY[0x1E69E7CC0];
  v1[2] = Dictionary.init(dictionaryLiteral:)();
  v1[3] = Dictionary.init(dictionaryLiteral:)();
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  v1[6] = v2;
  outlined init with copy of IDSLookupManager(v5, (v1 + 7));
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v0];

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v1;
}

double default argument 1 of View.bezelEffect(_:metrics:)@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for forCurrentDisplay != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EBCDAF60;
  result = *(&xmmword_1EBCDAF60 + 1);
  v4 = *algn_1EBCDAF50;
  *a1 = static BezelMetrics.forCurrentDisplay;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = result;
  return result;
}

void default argument 1 of ParticipantGridView.aspectRatio(for:default:)(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  OUTLINED_FUNCTION_40_7(a1);
}

id default argument 2 of ReportSpamManager.init(idsService:imAccountController:imDaemonController:unknownContactChecker:)()
{
  v0 = [objc_opt_self() sharedController];

  return v0;
}

id default argument 1 of ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)()
{
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for EntitlementsChecker();
  v2 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(v2 + 16) = result;
  v0[3] = v1;
  v0[4] = &protocol witness table for EntitlementsChecker;
  *v0 = v2;
  return result;
}

id default argument 4 of ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);

  return [v0 init];
}

id default argument 0 of ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id default argument 3 of ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695CE18]);

  return [v0 init];
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed HistoryItemProtocol) -> (@unowned Bool)(void *a1)
{
  v1 = closure #1 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(a1);
  return OUTLINED_FUNCTION_38_1(v1);
}

{
  v1 = closure #2 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(a1);
  return OUTLINED_FUNCTION_38_1(v1);
}

{
  v1 = closure #3 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(a1);
  return OUTLINED_FUNCTION_38_1(v1);
}

{
  v1 = closure #4 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(a1);
  return OUTLINED_FUNCTION_38_1(v1);
}

{
  v1 = closure #5 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(a1);
  return OUTLINED_FUNCTION_38_1(v1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreCallControlsContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type PreCallControlsContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type PreCallControlsContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit22PreCallControlsContextOSgMd);
    lazy protocol witness table accessor for type PreCallControlsContext and conformance PreCallControlsContext();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreCallControlsContext? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreCallControlsContext and conformance PreCallControlsContext()
{
  result = lazy protocol witness table cache variable for type PreCallControlsContext and conformance PreCallControlsContext;
  if (!lazy protocol witness table cache variable for type PreCallControlsContext and conformance PreCallControlsContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreCallControlsContext and conformance PreCallControlsContext);
  }

  return result;
}

void outlined consume of PreCallControlsContext?(id a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of PreCallControlsContext(a1);
  }
}

unint64_t lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride()
{
  result = lazy protocol witness table cache variable for type ScreeningStatusOverride and conformance ScreeningStatusOverride;
  if (!lazy protocol witness table cache variable for type ScreeningStatusOverride and conformance ScreeningStatusOverride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreeningStatusOverride and conformance ScreeningStatusOverride);
  }

  return result;
}

uint64_t default argument 0 of CaptionsClientParticipantCaptionsProvider.init(logger:token:usage:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.conversationController);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t default argument 0 of AnsweringMachineComposer.init(config:isEnabled:isEnabledM3:isAnsweringMachineAvailable:timeToWaitForCall:)()
{
  OUTLINED_FUNCTION_30();
  type metadata accessor for Defaults();
  OUTLINED_FUNCTION_24();
  swift_allocObject();
  Defaults.init()();
  OUTLINED_FUNCTION_20_8();
  v2 = (*(v1 + 824))();

  OUTLINED_FUNCTION_24();
  swift_allocObject();
  Defaults.init()();
  OUTLINED_FUNCTION_20_8();
  v4 = (*(v3 + 832))();

  *v0 = v2;
  v0[1] = v4;
  v0[2] = 0x4008000000000000;
  return result;
}

uint64_t default argument 0 of AnsweringMachineComposer.Config.init(defaultSecondsBeforeAnswerAsScreening:maxSecondsForScreening:activityUpdateThrottleSeconds:)()
{
  type metadata accessor for Defaults();
  OUTLINED_FUNCTION_24();
  swift_allocObject();
  Defaults.init()();
  OUTLINED_FUNCTION_20_8();
  v1 = (*(v0 + 824))();

  return v1;
}

uint64_t default argument 1 of AnsweringMachineComposer.Config.init(defaultSecondsBeforeAnswerAsScreening:maxSecondsForScreening:activityUpdateThrottleSeconds:)()
{
  type metadata accessor for Defaults();
  OUTLINED_FUNCTION_24();
  swift_allocObject();
  Defaults.init()();
  OUTLINED_FUNCTION_20_8();
  v1 = (*(v0 + 832))();

  return v1;
}

id default argument 1 of CallStatusService.init(logger:notificationCenter:callServices:callCenter:)()
{
  v0 = [objc_opt_self() defaultCenter];

  return v0;
}

id default argument 1 of AssetPackageDescriptor.init(packageName:bundle:activeState:)()
{
  v0 = [objc_opt_self() conversationKit];

  return v0;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PreferenceWritingModifier<PreferredColorSchemeKey>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PreferenceWritingModifier<PreferredColorSchemeKey>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PreferenceWritingModifier<PreferredColorSchemeKey>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOy014CommunicationsB006FTMenuE0V_AA8SolariumVAeAE0F10BackgroundyQrqd__AA10ShapeStyleRd__lFQOyAO_AA5ColorVQo_AVQo__Qo_AA26_PreferenceWritingModifierVyAA09PreferredV9SchemeKeyVGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PreferenceWritingModifier<PreferredColorSchemeKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PreferenceWritingModifier<PreferredColorSchemeKey>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PreferenceWritingModifier<PreferredColorSchemeKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PreferenceWritingModifier<PreferredColorSchemeKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PreferenceWritingModifier<PreferredColorSchemeKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOy014CommunicationsB006FTMenuE0V_AA8SolariumVAeAE0F10BackgroundyQrqd__AA10ShapeStyleRd__lFQOyAO_AA5ColorVQo_AVQo__Qo_AA26_PreferenceWritingModifierVyAA09PreferredV9SchemeKeyVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOy014CommunicationsB006FTMenuC0V_AA8SolariumVAcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyAJ_AA5ColorVQo_AQQo_Md);
    type metadata accessor for FTMenuView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOy014CommunicationsB006FTMenuC0V_AA5ColorVQo_Md);
    lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type FTMenuView and conformance FTMenuView, MEMORY[0x1E6995950]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>, &_s7SwiftUI26_PreferenceWritingModifierVyAA23PreferredColorSchemeKeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PreferenceWritingModifier<PreferredColorSchemeKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void default argument 1 of ConversationControlsRecipe.Actions.buttonShelf(_:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_1BC4B6480;
  OUTLINED_FUNCTION_40_7(a1);
}

id default argument 0 of ScreenSharingInteraction.init(interactionController:)(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

id default argument 1 of ConversationStateManager.init(call:callCenter:defaults:)()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

uint64_t default argument 4 of CaptionsViewModel.init(presentationStateProvider:remoteParticipantsStateProvider:allowsMinimization:layoutIdiom:defaults:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(unint64_t *a1, void (*a2)(uint64_t))
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

id default argument 1 of ScreenSharingInteractionController.init(featureFlags:deviceRestrictionController:callsFeatureManager:)()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {

    return DeviceRestrictionController.init(profileConnection:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t default argument 2 of ScreenSharingInteractionController.init(featureFlags:deviceRestrictionController:callsFeatureManager:)()
{
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for CallsFeatureManager();
  result = CallsFeatureManager.__allocating_init()();
  v3 = MEMORY[0x1E699BEC8];
  v0[3] = v1;
  v0[4] = v3;
  *v0 = result;
  return result;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE016_forceBridgeFromD1C_6resultyAD_01_D5CTypeQZ_xSgztFZSo16UILayoutPrioritya_Tt1gq5(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1BFB210C0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

void _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE016_forceBridgeFromD1C_6resultyAD_01_D5CTypeQZ_xSgztFZSo26UIBackgroundTaskIdentifiera_Tt1gq5Tm()
{
  OUTLINED_FUNCTION_39_7();
  v1 = v0();
  OUTLINED_FUNCTION_33_7(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE024_conditionallyBridgeFromD1C_6resultSbAD_01_D5CTypeQZ_xSgztFZSo16UILayoutPrioritya_Tt1gq5(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1BFB210D0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE024_conditionallyBridgeFromD1C_6resultSbAD_01_D5CTypeQZ_xSgztFZSo26UIBackgroundTaskIdentifiera_Tt1gq5Tm()
{
  OUTLINED_FUNCTION_39_7();
  v1 = v0();
  OUTLINED_FUNCTION_33_7(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  return v9 & 1;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TUCallRecordingAvailability()
{
  v1 = OUTLINED_FUNCTION_9_9();
  result = TPNumberPadCharacter.rawValue.getter(v1);
  *v0 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UIGestureRecognizerState()
{
  v1 = OUTLINED_FUNCTION_4_8();
  result = TPNumberPadCharacter.rawValue.getter(v1);
  *v0 = result;
  return result;
}

uint64_t specialized _SwiftNewtypeWrapper<>.hashValue.getter()
{
  return MEMORY[0x1EEE697E0]();
}

{
  return MEMORY[0x1EEE69630]();
}

{
  return MEMORY[0x1EEE695D0]();
}

{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1BFB20BA0](v0);

  return v1;
}

void specialized _SwiftNewtypeWrapper<>.hash(into:)(float a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(a1));
}

uint64_t specialized _SwiftNewtypeWrapper<>.hash(into:)(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  return MEMORY[0x1BFB22680](*&a1);
}

void specialized _SwiftNewtypeWrapper<>._rawHashValue(seed:)()
{
  JUMPOUT(0x1BFB22610);
}

{
  JUMPOUT(0x1BFB22620);
}

uint64_t protocol witness for SetAlgebra.init() in conformance TUConversationBroadcastingAttributes@<X0>(uint64_t *a1@<X8>)
{
  result = protocol witness for TapInteractionHandler.handleTapInteractionOverrideView(_:) in conformance MultiwayViewController();
  *a1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance TUConversationBroadcastingAttributes@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.union(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance TUConversationBroadcastingAttributes(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_14(a1);
  result = specialized OptionSet.intersection(_:)(v2, v3);
  *v1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance TUConversationBroadcastingAttributes(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_14(a1);
  result = specialized OptionSet.symmetricDifference(_:)(v2, v3);
  *v1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.remove(_:) in conformance TUConversationBroadcastingAttributes@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized OptionSet<>.remove(_:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t protocol witness for SetAlgebra.update(with:) in conformance TUConversationBroadcastingAttributes@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized OptionSet<>.update(with:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t protocol witness for SetAlgebra.subtracting(_:) in conformance TUConversationBroadcastingAttributes@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized SetAlgebra.subtracting(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIBackgroundTaskIdentifier@<X0>(uint64_t *a1@<X8>)
{
  result = _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo26UIBackgroundTaskIdentifiera_Tt1gq5();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFUserNotificationRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for SetAlgebra.init() in conformance UIFontDescriptorSymbolicTraits@<X0>(_DWORD *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance UIFontDescriptorSymbolicTraits@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = specialized OptionSet.union(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance UIFontDescriptorSymbolicTraits(unsigned int *a1)
{
  v2 = OUTLINED_FUNCTION_18_14(a1);
  result = specialized OptionSet.intersection(_:)(v2, v3);
  *v1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance UIFontDescriptorSymbolicTraits(unsigned int *a1)
{
  v2 = OUTLINED_FUNCTION_18_14(a1);
  result = specialized OptionSet.symmetricDifference(_:)(v2, v3);
  *v1 = result;
  return result;
}

unint64_t protocol witness for SetAlgebra.remove(_:) in conformance UIFontDescriptorSymbolicTraits@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized OptionSet<>.remove(_:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t protocol witness for SetAlgebra.update(with:) in conformance UIFontDescriptorSymbolicTraits@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized OptionSet<>.update(with:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t protocol witness for SetAlgebra.subtracting(_:) in conformance UIFontDescriptorSymbolicTraits@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = specialized SetAlgebra.subtracting(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AVCCaptionsUsage@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AVCCaptionsUsage.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AVCCaptionsUsage@<X0>(_BYTE *a1@<X8>)
{
  result = TPNumberPadCharacter.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance TUConversationBroadcastingAttributes@<X0>(uint64_t *a1@<X8>)
{
  result = specialized SetAlgebra<>.init(arrayLiteral:)();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _TaskModifier2 and conformance _TaskModifier2()
{
  result = lazy protocol witness table cache variable for type _TaskModifier2 and conformance _TaskModifier2;
  if (!lazy protocol witness table cache variable for type _TaskModifier2 and conformance _TaskModifier2)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TaskModifier2 and conformance _TaskModifier2);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PreCallControlsContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PreCallControlsContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CAFrameRateRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CAFrameRateRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioQueueBuffer(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 56))
    {
      if (*(a1 + 8))
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioQueueBuffer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CMTime(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CMTime(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CATransform3D(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CATransform3D(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
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

  *(result + 128) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CGAffineTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGAffineTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSNotificationName()
{
  v1 = OUTLINED_FUNCTION_4_8();
  result = NSNotificationName.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSNotificationName()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance UIFontDescriptorSymbolicTraits@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = specialized SetAlgebra<>.init(arrayLiteral:)(a1);
  *a2 = result;
  return result;
}

float protocol witness for RawRepresentable.rawValue.getter in conformance UILayoutPriority@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UILayoutPriority()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CLFCommunicationLimit()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type CLFCommunicationLimit and conformance CLFCommunicationLimit, type metadata accessor for CLFCommunicationLimit);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type CLFCommunicationLimit and conformance CLFCommunicationLimit, type metadata accessor for CLFCommunicationLimit);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontTextStyle()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIFontTextStyle and conformance UIFontTextStyle, type metadata accessor for UIFontTextStyle);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIFontTextStyle and conformance UIFontTextStyle, type metadata accessor for UIFontTextStyle);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIActionIdentifier()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIActionIdentifier and conformance UIActionIdentifier, type metadata accessor for UIActionIdentifier);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIActionIdentifier and conformance UIActionIdentifier, type metadata accessor for UIActionIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVCaptureDeviceType()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type AVCaptureDeviceType and conformance AVCaptureDeviceType, type metadata accessor for AVCaptureDeviceType);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type AVCaptureDeviceType and conformance AVCaptureDeviceType, type metadata accessor for AVCaptureDeviceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorFeatureKey()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorAttributeName()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSRunLoopMode()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type NSRunLoopMode and conformance NSRunLoopMode, type metadata accessor for NSRunLoopMode);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type NSRunLoopMode and conformance NSRunLoopMode, type metadata accessor for NSRunLoopMode);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationOpenExternalURLOptionsKey()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance BNBannerRevocationReason()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type BNBannerRevocationReason and conformance BNBannerRevocationReason, type metadata accessor for BNBannerRevocationReason);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type BNBannerRevocationReason and conformance BNBannerRevocationReason, type metadata accessor for BNBannerRevocationReason);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVCaptureReactionType()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type AVCaptureReactionType and conformance AVCaptureReactionType, type metadata accessor for AVCaptureReactionType);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type AVCaptureReactionType and conformance AVCaptureReactionType, type metadata accessor for AVCaptureReactionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance SBUISystemApertureElementIdentifier()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type SBUISystemApertureElementIdentifier and conformance SBUISystemApertureElementIdentifier, type metadata accessor for SBUISystemApertureElementIdentifier);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type SBUISystemApertureElementIdentifier and conformance SBUISystemApertureElementIdentifier, type metadata accessor for SBUISystemApertureElementIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance STBackgroundActivityIdentifier()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type STBackgroundActivityIdentifier and conformance STBackgroundActivityIdentifier, type metadata accessor for STBackgroundActivityIdentifier);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type STBackgroundActivityIdentifier and conformance STBackgroundActivityIdentifier, type metadata accessor for STBackgroundActivityIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIActivityType()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIActivityType and conformance UIActivityType, type metadata accessor for UIActivityType);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIActivityType and conformance UIActivityType, type metadata accessor for UIActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIBackgroundTaskIdentifier()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIBackgroundTaskIdentifier and conformance UIBackgroundTaskIdentifier, type metadata accessor for UIBackgroundTaskIdentifier);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIBackgroundTaskIdentifier and conformance UIBackgroundTaskIdentifier, type metadata accessor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFUserNotificationRef()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLFCommunicationLimit@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1BFB209B0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSKeyValueChangeKey()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CNActionType()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type CNActionType and conformance CNActionType, type metadata accessor for CNActionType);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type CNActionType and conformance CNActionType, type metadata accessor for CNActionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double protocol witness for RawRepresentable.rawValue.getter in conformance UIWindowLevel@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIWindowLevel()
{
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIWindowLevel and conformance UIWindowLevel, type metadata accessor for UIWindowLevel);
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIWindowLevel and conformance UIWindowLevel, type metadata accessor for UIWindowLevel);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t base witness table accessor for Equatable in UIControlState()
{
  return lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type UIControlState and conformance UIControlState, type metadata accessor for UIControlState);
}

{
  return lazy protocol witness table accessor for type UIControlState and conformance UIControlState(&lazy protocol witness table cache variable for type UIControlState and conformance UIControlState, type metadata accessor for UIControlState);
}

uint64_t specialized == infix<A>(_:_:)()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_45_1();
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_35_10();
  }

  return v5 & 1;
}

{
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_28_23();
  v4 = v3 & 0xFFFFFFFFFFFFLL | 0x655F000000000000;
  v6 = v5;
  v7 = v4;
  v8 = v0;
  switch(v6)
  {
    case 1:
      v8 = 0x80000001BC4F19F0;
      v7 = v2 + 2;
      break;
    case 2:
      break;
    case 3:
      v9 = "drawer_toggle-video";
      goto LABEL_6;
    case 4:
      v8 = 0x80000001BC4F1A30;
      v7 = v2 + 3;
      break;
    default:
      v9 = "conversationkit-info";
LABEL_6:
      v8 = v9 | 0x8000000000000000;
      v7 = 0xD000000000000011;
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x80000001BC4F19F0;
      v4 = v2 + 2;
      break;
    case 2:
      break;
    case 3:
      v10 = "drawer_toggle-video";
      goto LABEL_12;
    case 4:
      v0 = 0x80000001BC4F1A30;
      v4 = v2 + 3;
      break;
    default:
      v10 = "conversationkit-info";
LABEL_12:
      v0 = v10 | 0x8000000000000000;
      v4 = 0xD000000000000011;
      break;
  }

  if (v7 == v4 && v8 == v0)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_42_16();
  }

  return v12 & 1;
}

{
  v0 = 0xED0000676F64746FLL;
  OUTLINED_FUNCTION_28_23();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0x685F000000000000;
  v5 = v4;
  v6 = "drawer_ring-background";
  v7 = v3;
  v8 = 0xED0000676F64746FLL;
  v9 = "drawer_effects-selected";
  switch(v5)
  {
    case 1:
      v7 = OUTLINED_FUNCTION_45_12() & 0xFFFFFFFFFFFFLL | 0x655F000000000000;
      v8 = 0xEE00737463656666;
      break;
    case 2:
      v8 = 0x80000001BC4F1940;
      v7 = 0xD000000000000017;
      break;
    case 3:
      v7 = OUTLINED_FUNCTION_45_12() & 0xFFFFFFFFFFFFLL | 0x655F000000000000;
      v8 = 0xED0000646E617078;
      break;
    case 4:
      v7 = 0xD000000000000016;
      v8 = 0x80000001BC4F1970;
      break;
    case 5:
      v7 = OUTLINED_FUNCTION_45_12() & 0xFFFFFFFFFFFFLL | 0x615F000000000000;
      v10 = 1869177973;
      goto LABEL_8;
    case 6:
      v7 = OUTLINED_FUNCTION_45_12() & 0xFFFFFFFFFFFFLL | 0x675F000000000000;
      v8 = 0xEB00000000776F6CLL;
      break;
    case 7:
      v7 = 0x6C6C61632D646E65;
      v10 = 1667329375;
LABEL_8:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_28_23();
      v3 = v11 & 0xFFFFFFFFFFFFLL | 0x655F000000000000;
      v0 = 0xEE00737463656666;
      break;
    case 2:
      v0 = (v9 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000017;
      break;
    case 3:
      OUTLINED_FUNCTION_28_23();
      OUTLINED_FUNCTION_65_0();
      break;
    case 4:
      v3 = 0xD000000000000016;
      v0 = (v6 - 32) | 0x8000000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_28_23();
      v3 = v13 & 0xFFFFFFFFFFFFLL | 0x615F000000000000;
      v12 = 1869177973;
      goto LABEL_17;
    case 6:
      OUTLINED_FUNCTION_28_23();
      v3 = v14 & 0xFFFFFFFFFFFFLL | 0x675F000000000000;
      v0 = 0xEB00000000776F6CLL;
      break;
    case 7:
      v3 = 0x6C6C61632D646E65;
      v12 = 1667329375;
LABEL_17:
      v0 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v7 == v3 && v8 == v0)
  {
    v16 = 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_42_16();
  }

  return v16 & 1;
}

{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int specialized _SwiftNewtypeWrapper<>._rawHashValue(seed:)()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t specialized _SwiftNewtypeWrapper<>.hash(into:)()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE024_conditionallyBridgeFromD1C_6resultSbAD_01_D5CTypeQZ_xSgztFZSo38UIApplicationOpenExternalURLOptionsKeya_Tt1gq5Tm(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE016_forceBridgeFromD1C_6resultyAD_01_D5CTypeQZ_xSgztFZSo38UIApplicationOpenExternalURLOptionsKeya_Tt1gq5Tm(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo38UIApplicationOpenExternalURLOptionsKeya_Tt1gq5Tm()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1BFB209B0](v0);

  return v1;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

Swift::Bool __swiftcall CFXEffect.isAnimoji()()
{
  v1 = objc_opt_self();
  v2 = [objc_opt_self() effectTypeWithIdentifier_];
  v3 = [v1 effectIdentifiersForEffectType_];

  if (v3)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = [v0 identifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v13[0] = v6;
    v13[1] = v8;
    MEMORY[0x1EEE9AC00](v9);
    v12[2] = v13;
    v10 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v12, v4);
  }

  else
  {
    return 0;
  }

  return v10;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  return specialized Sequence.contains(where:)(a1, a2, a3, type metadata accessor for ConversationControlsAction);
}

{
  return specialized Sequence.contains(where:)(a1, a2, a3, type metadata accessor for ParticipantGridView.IdentifiableParticipantTile);
}

{
  return specialized Sequence.contains(where:)(a1, a2, a3, MEMORY[0x1E69695A8]);
}

{
  return specialized Sequence.contains(where:)(a1, a2, a3, MEMORY[0x1E6969C28]);
}

{
  return specialized Sequence.contains(where:)(a1, a2, a3, MEMORY[0x1E6995AA8]);
}

{
  return specialized Sequence.contains(where:)(a1, a2, a3, MEMORY[0x1E6995C98]);
}

{
  return specialized Sequence.contains(where:)(a1, a2, a3, type metadata accessor for HUDActivityManager.BannerUpdate);
}

BOOL specialized Sequence.contains(where:)()
{
  OUTLINED_FUNCTION_0_15();
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v0(v2);
    if (v1)
    {
      break;
    }

    v2 += 48;
  }

  while ((v4 & 1) == 0);
  return v3 != 0;
}

{
  OUTLINED_FUNCTION_0_15();
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v0(v2);
    if (v1)
    {
      break;
    }

    v2 += 40;
  }

  while ((v4 & 1) == 0);
  return v3 != 0;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v19 = a1;
  v6 = type metadata accessor for Participant(0);
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
LABEL_9:
    outlined init with copy of Participant(*(a3 + 48) + *(v18 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v8);
    v16 = v19(v8);
    result = outlined destroy of Participant(v8);
    if (v3)
    {
      goto LABEL_13;
    }

    v11 &= v11 - 1;
    if (v16)
    {
      a2 = 1;
LABEL_13:

      return a2 & 1;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      a2 = 0;
      goto LABEL_13;
    }

    v11 = *(a3 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *(a4(0) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

void specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB22010](v7, a3);
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t outlined destroy of Participant(uint64_t a1)
{
  v2 = type metadata accessor for Participant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *CallRecordingButtonViewController.callRecordingController.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController_callRecordingController;
  OUTLINED_FUNCTION_4_5();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id CallRecordingButtonViewController.button.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController____lazy_storage___button;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController____lazy_storage___button);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController____lazy_storage___button);
  }

  else
  {
    v4 = closure #1 in CallRecordingButtonViewController.button.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in CallRecordingButtonViewController.button.getter(uint64_t a1)
{
  type metadata accessor for CallRecordingButton();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = String.localizedCallRecording.getter();
  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v3, v4, v2);

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 addTarget:a1 action:sel_buttonTapped forControlEvents:64];
  swift_beginAccess();
  CallRecordingButton.isEnabled.setter();
  return v2;
}

char *CallRecordingButtonViewController.__allocating_init(_:_:_:_:_:recordingIndicatorViewModel:presenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  OUTLINED_FUNCTION_2_22();
  v12 = objc_allocWithZone(v8);
  v13 = OUTLINED_FUNCTION_0_16();
  return CallRecordingButtonViewController.init(_:_:_:_:_:recordingIndicatorViewModel:presenter:)(v13, v14, v15, v16, v17, a6, a7, a8);
}

char *CallRecordingButtonViewController.init(_:_:_:_:_:recordingIndicatorViewModel:presenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  OUTLINED_FUNCTION_2_22();
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController_callRecordingController] = 0;
  *&v8[OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController____lazy_storage___button] = 0;
  type metadata accessor for CallRecordingButtonViewModel();
  swift_allocObject();
  OUTLINED_FUNCTION_0_16();
  *&v8[OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController_viewModel] = CallRecordingButtonViewModel.init(_:_:_:_:_:)();
  v21.receiver = v8;
  v21.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  v13 = v12;
  v14 = *&v12[OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController_viewModel];
  if (!a8)
  {
    v15 = v12;
    a8 = v13;
  }

  objc_allocWithZone(type metadata accessor for CallRecordingController());
  v16 = v13;

  v17 = CallRecordingController.init(call:entryPointViewModel:recordingIndicatorViewModel:presenter:)(0, 0, v14, a7, a8);
  v18 = OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController_callRecordingController;
  swift_beginAccess();
  v19 = *&v16[v18];
  *&v16[v18] = v17;

  return v16;
}

id CallRecordingButtonViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CallRecordingButtonViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController_callRecordingController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController____lazy_storage___button) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CallRecordingButtonViewController.viewDidLoad()()
{
  v33.receiver = v0;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController_viewModel];
  swift_beginAccess();
  *(v2 + 24) = &protocol witness table for CallRecordingButtonViewController;
  swift_unknownObjectWeakAssign();
  v3 = CallRecordingButtonViewController.button.getter();
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController____lazy_storage___button;
  [v4 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA7F0;
  v8 = [*&v0[v6] topAnchor];
  v9 = OUTLINED_FUNCTION_1_29();
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 topAnchor];

  v12 = OUTLINED_FUNCTION_3_17();
  *(v7 + 32) = v12;
  v13 = [*&v0[v6] leadingAnchor];
  v14 = OUTLINED_FUNCTION_1_29();
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = OUTLINED_FUNCTION_3_17();
  *(v7 + 40) = v17;
  v18 = [*&v0[v6] trailingAnchor];
  v19 = OUTLINED_FUNCTION_1_29();
  if (!v19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = OUTLINED_FUNCTION_3_17();
  *(v7 + 48) = v22;
  v23 = [*&v0[v6] bottomAnchor];
  v24 = OUTLINED_FUNCTION_1_29();
  if (!v24)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v27 = [v25 bottomAnchor];

  v28 = [v1 constraintEqualToAnchor_];
  *(v7 + 56) = v28;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints_];

  *(v2 + 24) = &protocol witness table for CallRecordingButtonViewController;
  swift_unknownObjectWeakAssign();
  v30 = [v0 view];
  if (v30)
  {
    v31 = v30;
    v32 = [objc_opt_self() callDetailsButtonMaxSize];
    [v31 setMaximumContentSizeCategory_];

    return;
  }

LABEL_13:
  __break(1u);
}

Swift::Void __swiftcall CallRecordingButtonViewController.buttonTapped()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController_callRecordingController;
  OUTLINED_FUNCTION_4_5();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x100);
    v4 = v2;
    v3();
  }
}

Swift::Void __swiftcall CallRecordingButtonViewController.invertColor(_:)(Swift::Bool a1)
{
  v2 = CallRecordingButtonViewController.button.getter();
  CallRecordingButton.overrideTintColor(_:)(a1);
}

Swift::Void __swiftcall CallRecordingButtonViewController.textSizeDidChange()()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsDisplay];
  }

  else
  {
    __break(1u);
  }
}

id CallRecordingButtonViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id CallRecordingButtonViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CallRecordingButtonViewController.configureButton(_:)(ConversationKit::CallRecordingButtonConfiguration a1)
{
  v2 = v1;
  v3 = *(*&a1.isEnabled + 1);
  v4 = CallRecordingButtonViewController.button.getter();
  [v4 setHidden_];

  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;
    [v5 setHidden_];

    v7 = OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController____lazy_storage___button;
    v8 = *&v2[OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController____lazy_storage___button];
    CallRecordingButton.isEnabled.setter();

    v9 = *&v2[v7];

    [v9 updateConfiguration];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CallRecordingButtonViewController.presentEducationScreen()()
{
  v1 = v0;
  if (one-time initialization token for recordingSession != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.recordingSession);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Presenting education screen", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController_callRecordingController;
  OUTLINED_FUNCTION_4_5();
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xF8);
    v9 = v7;
    v8();
  }
}

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

id CallCenterCall.underlyingObject.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for TUCall();
  *a2 = a1;

  return a1;
}

uint64_t CallCenterCall.status.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type TUCall and conformance TUCall();
  v5 = a1;

  return CallStatus.init(_:)(v4, a2);
}

unint64_t lazy protocol witness table accessor for type TUCall and conformance TUCall()
{
  result = lazy protocol witness table cache variable for type TUCall and conformance TUCall;
  if (!lazy protocol witness table cache variable for type TUCall and conformance TUCall)
  {
    type metadata accessor for TUCall();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUCall and conformance TUCall);
  }

  return result;
}

uint64_t CallStatus.init(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getObjectType();
  switch((*(a1 + 216))())
  {
    case 0u:
      swift_unknownObjectRelease();
      v4 = MEMORY[0x1E6995D50];
      goto LABEL_11;
    case 1u:
      v5 = OUTLINED_FUNCTION_1_5();
      v7 = v6(v5);
      swift_unknownObjectRelease();
      type metadata accessor for CallStatus();
      OUTLINED_FUNCTION_7_0();
      v10 = *(v9 + 104);
      if (v7)
      {
        v11 = MEMORY[0x1E6995D70];
      }

      else
      {
        v11 = MEMORY[0x1E6995D58];
      }

      v16 = *v11;
      v15 = a2;
      goto LABEL_12;
    case 2u:
      swift_unknownObjectRelease();
      v4 = MEMORY[0x1E6995D48];
      goto LABEL_11;
    case 3u:
      swift_unknownObjectRelease();
      v4 = MEMORY[0x1E6995D68];
      goto LABEL_11;
    case 4u:
      swift_unknownObjectRelease();
      v4 = MEMORY[0x1E6995D60];
      goto LABEL_11;
    case 5u:
      swift_unknownObjectRelease();
      v4 = MEMORY[0x1E6995D40];
      goto LABEL_11;
    case 6u:
      swift_unknownObjectRelease();
      v4 = MEMORY[0x1E6995D38];
      goto LABEL_11;
    default:
      swift_unknownObjectRelease();
      v4 = MEMORY[0x1E6995D58];
LABEL_11:
      v12 = *v4;
      type metadata accessor for CallStatus();
      OUTLINED_FUNCTION_7_0();
      v10 = *(v13 + 104);
      v8 = v14;
      v15 = a2;
      v16 = v12;
LABEL_12:

      return v10(v15, v16, v8);
  }
}

void CallCenterCall.uniqueProxyIdentifierUUID.getter(void *a1)
{
  v1 = [a1 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t CallCenterCall.pushToTalkChannelState.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type TUCall and conformance TUCall();
  v5 = a1;

  return PushToTalkChannelState.init(_:)(v4, a2);
}

uint64_t PushToTalkChannelState.init(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getObjectType();
  v4 = (*(a1 + 208))();
  if (v4 == 2)
  {
LABEL_4:
    swift_unknownObjectRelease();
    v5 = MEMORY[0x1E6995F38];
    goto LABEL_11;
  }

  if (v4 != 1)
  {
    if (v4)
    {
      swift_unknownObjectRelease();
      v5 = MEMORY[0x1E6995F20];
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v6 = *(a1 + 472);
  v7 = OUTLINED_FUNCTION_1_5();
  if (v6(v7) & 1) != 0 && (v8 = OUTLINED_FUNCTION_1_5(), (v9(v8)))
  {
    swift_unknownObjectRelease();
    v5 = MEMORY[0x1E6995F30];
  }

  else
  {
    v10 = OUTLINED_FUNCTION_1_5();
    if ((v6(v10) & 1) == 0)
    {
      v19 = OUTLINED_FUNCTION_1_5();
      v21 = v20(v19);
      swift_unknownObjectRelease();
      type metadata accessor for PushToTalkChannelState();
      OUTLINED_FUNCTION_7_0();
      v13 = *(v22 + 104);
      if (v21)
      {
        v23 = MEMORY[0x1E6995F28];
      }

      else
      {
        v23 = MEMORY[0x1E6995F38];
      }

      v17 = *v23;
      v16 = a2;
      goto LABEL_12;
    }

    swift_unknownObjectRelease();
    v5 = MEMORY[0x1E6995F40];
  }

LABEL_11:
  v11 = *v5;
  type metadata accessor for PushToTalkChannelState();
  OUTLINED_FUNCTION_7_0();
  v13 = *(v12 + 104);
  v15 = v14;
  v16 = a2;
  v17 = v11;
LABEL_12:

  return v13(v16, v17, v15);
}

uint64_t CallCenterCall.activeRemoteParticipant.getter(void *a1)
{
  v1 = [a1 activeRemoteParticipant];
  if (v1)
  {

    Participant.init()();
  }

  type metadata accessor for Participant();
  v2 = OUTLINED_FUNCTION_2_23();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

unint64_t CallCenterCall.provider.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 provider];
  a2[3] = &type metadata for CallCenterCallProvider;
  result = lazy protocol witness table accessor for type CallCenterCallProvider and conformance CallCenterCallProvider();
  a2[4] = result;
  *a2 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type CallCenterCallProvider and conformance CallCenterCallProvider()
{
  result = lazy protocol witness table cache variable for type CallCenterCallProvider and conformance CallCenterCallProvider;
  if (!lazy protocol witness table cache variable for type CallCenterCallProvider and conformance CallCenterCallProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallCenterCallProvider and conformance CallCenterCallProvider);
  }

  return result;
}

uint64_t CallCenterCall.localSenderIdentity.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 localSenderIdentity];
  if (v3)
  {
    SenderIdentity.init(_:)(v3, a2);
  }

  type metadata accessor for SenderIdentity();
  v4 = OUTLINED_FUNCTION_2_23();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void SenderIdentity.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = [a1 accountUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = [a1 ISOCountryCode];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [a1 localizedName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [a1 localizedShortName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = [a1 localizedServiceName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  SenderIdentity.init(accountUUID:isoCountryCode:localizedName:localizedShortName:localizedServiceName:)();
}

id CallCenterCall.contactStoreConfiguration.getter(uint64_t a1)
{
  v1 = [objc_opt_self() tu:a1 contactStoreConfigurationForCall:?];

  return v1;
}

uint64_t CallCenterCall.callUUID.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

BOOL static CallRecordingPillViewController.DisplayStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void CallRecordingPillViewController.displayStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_displayStyle + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_displayStyle);
  *(a1 + 8) = v2;
}

uint64_t CallRecordingPillViewController.cancellable.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
}

uint64_t CallRecordingPillViewController.cancellable.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_cancellable;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *CallRecordingPillViewController.init(displayStyle:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22CallRecordingViewModelC09PresentedH0OSg_GMd);
  OUTLINED_FUNCTION_2_12();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_viewModel;
  v13 = [objc_opt_self() sharedInstance];
  type metadata accessor for CallRecordingService();
  v14 = OUTLINED_FUNCTION_5_3();
  *(v14 + 16) = v13;
  v15 = objc_allocWithZone(type metadata accessor for CallRecordingViewModel());
  *(v2 + v12) = specialized CallRecordingViewModel.init(service:)(v14, v15);
  *(v2 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_cancellable) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_usesGlass) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController____lazy_storage___countdownView) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController____lazy_storage___recordingView) = 0;
  v16 = v2 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_displayStyle;
  *v16 = v10;
  *(v16 + 8) = v11;
  v29 = v2;
  v30 = ObjectType;
  OUTLINED_FUNCTION_3_0();
  v19 = objc_msgSendSuper2(v17, v18);
  v20 = OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_viewModel;
  v21 = *&v19[OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_viewModel];
  swift_beginAccess();
  v22 = v19;
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22CallRecordingViewModelC09PresentedG0OSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  OUTLINED_FUNCTION_5_3();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type Published<CallRecordingViewModel.PresentedView?>.Publisher and conformance Published<A>.Publisher();
  v24 = OUTLINED_FUNCTION_9_10();

  (*(v6 + 8))(v9, v1);
  v25 = OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_cancellable;
  OUTLINED_FUNCTION_7_20();
  *&v22[v25] = v24;

  v26 = *&v19[v20];
  LOBYTE(v25) = CallRecordingViewModel.presentedView.getter();

  CallRecordingPillViewController.update(with:)(v25);
  return v22;
}

void CallRecordingPillViewController.update(with:)(char a1)
{
  v2 = v1;
  if (one-time initialization token for recordingSession != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.recordingSession);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v80 = v8;
    *v7 = 136315138;
    if (a1 == 3)
    {
      v9 = 0xE300000000000000;
      v10 = 7104878;
    }

    else
    {
      v10 = String.init<A>(reflecting:)();
      v9 = v11;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v80);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1BBC58000, v5, v6, "Updating CallRecordingPillViewController with presented view: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  if (a1 == 3)
  {
    v79 = CallRecordingPillViewController.countdownView.getter();
    [v79 removeFromSuperview];

    v78.super.isa = CallRecordingPillViewController.recordingView.getter();
    [(objc_class *)v78.super.isa removeFromSuperview];
    goto LABEL_27;
  }

  if (a1 != 2)
  {
    if (a1 == 1)
    {
      v13 = CallRecordingPillViewController.countdownView.getter();
      CallRecordingCountdownView.transitionToDisclosingRecording()();
    }

    v14 = CallRecordingPillViewController.recordingView.getter();
    [v14 setAlpha_];

    v15 = CallRecordingPillViewController.countdownView.getter();
    [v15 setAlpha_];

    [*&v2[OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController____lazy_storage___recordingView] removeFromSuperview];
    v16 = [v2 view];
    if (v16)
    {
      v17 = v16;
      v18 = OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController____lazy_storage___countdownView;
      [v16 addSubview_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BC4BA920;
      v20 = [*&v2[v18] leadingAnchor];
      v21 = [v2 view];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 layoutMarginsGuide];

        v24 = [v23 leadingAnchor];
        v25 = [v20 constraintEqualToAnchor_];

        *(v19 + 32) = v25;
        v26 = [*&v2[v18] trailingAnchor];
        v27 = [v2 view];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 layoutMarginsGuide];

          v30 = [v29 trailingAnchor];
          v31 = [v26 constraintEqualToAnchor_];

          *(v19 + 40) = v31;
          v32 = [*&v2[v18] bottomAnchor];
          v33 = [v2 view];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 layoutMarginsGuide];

            v36 = [v35 bottomAnchor];
            v37 = [v32 constraintEqualToAnchor_];

            *(v19 + 48) = v37;
            v38 = [*&v2[v18] topAnchor];
            v39 = [v2 view];
            if (v39)
            {
              v40 = v39;
              v41 = [v39 layoutMarginsGuide];

              v42 = [v41 topAnchor];
              v43 = [v38 constraintEqualToAnchor_];

              *(v19 + 56) = v43;
              v44 = [v2 view];
              if (v44)
              {
                goto LABEL_25;
              }

              goto LABEL_33;
            }

LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v45 = CallRecordingPillViewController.countdownView.getter();
  [v45 setAlpha_];

  v46 = CallRecordingPillViewController.recordingView.getter();
  [v46 setAlpha_];

  [*&v2[OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController____lazy_storage___countdownView] removeFromSuperview];
  v47 = [v2 view];
  if (!v47)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v48 = v47;
  v18 = OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController____lazy_storage___recordingView;
  [v47 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC4BA920;
  v49 = [*&v2[v18] leadingAnchor];
  v50 = [v2 view];
  if (!v50)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v51 = v50;
  v52 = [v50 layoutMarginsGuide];

  v53 = [v52 leadingAnchor];
  v54 = [v49 constraintEqualToAnchor_];

  *(v19 + 32) = v54;
  v55 = [*&v2[v18] trailingAnchor];
  v56 = [v2 view];
  if (!v56)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v57 = v56;
  v58 = [v56 layoutMarginsGuide];

  v59 = [v58 trailingAnchor];
  v60 = [v55 constraintEqualToAnchor_];

  *(v19 + 40) = v60;
  v61 = [*&v2[v18] bottomAnchor];
  v62 = [v2 view];
  if (!v62)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v63 = v62;
  v64 = [v62 layoutMarginsGuide];

  v65 = [v64 bottomAnchor];
  v66 = [v61 constraintEqualToAnchor_];

  *(v19 + 48) = v66;
  v67 = [*&v2[v18] topAnchor];
  v68 = [v2 view];
  if (!v68)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v69 = v68;
  v70 = [v68 layoutMarginsGuide];

  v71 = [v70 topAnchor];
  v72 = [v67 constraintEqualToAnchor_];

  *(v19 + 56) = v72;
  v44 = [v2 view];
  if (v44)
  {
LABEL_25:
    v73 = v44;
    v74 = objc_opt_self();
    v75 = [v73 heightAnchor];

    v76 = [*&v2[v18] heightAnchor];
    v77 = [v75 constraintEqualToAnchor_];

    *(v19 + 64) = v77;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v78.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v74 activateConstraints_];
LABEL_27:

    return;
  }

LABEL_39:
  __break(1u);
}

char *CallRecordingPillViewController.__allocating_init(displayStyle:usesGlass:)(uint64_t a1, int a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = OUTLINED_FUNCTION_6_4();
  return CallRecordingPillViewController.init(displayStyle:usesGlass:)(v5, a2);
}

char *CallRecordingPillViewController.init(displayStyle:usesGlass:)(uint64_t *a1, int a2)
{
  HIDWORD(v30) = a2;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22CallRecordingViewModelC09PresentedH0OSg_GMd);
  OUTLINED_FUNCTION_2_12();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_viewModel;
  v14 = [objc_opt_self() sharedInstance];
  type metadata accessor for CallRecordingService();
  v15 = OUTLINED_FUNCTION_5_3();
  *(v15 + 16) = v14;
  v16 = objc_allocWithZone(type metadata accessor for CallRecordingViewModel());
  *(v3 + v13) = specialized CallRecordingViewModel.init(service:)(v15, v16);
  *(v3 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_cancellable) = 0;
  v17 = OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_usesGlass;
  *(v3 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_usesGlass) = 0;
  *(v3 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController____lazy_storage___countdownView) = 0;
  *(v3 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController____lazy_storage___recordingView) = 0;
  v18 = v3 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_displayStyle;
  *v18 = v11;
  *(v18 + 8) = v12;
  *(v3 + v17) = BYTE4(v30);
  v31 = v3;
  v32 = ObjectType;
  OUTLINED_FUNCTION_3_0();
  v21 = objc_msgSendSuper2(v19, v20);
  v22 = OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_viewModel;
  v23 = *&v21[OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_viewModel];
  swift_beginAccess();
  v24 = v21;
  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22CallRecordingViewModelC09PresentedG0OSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  OUTLINED_FUNCTION_5_3();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type Published<CallRecordingViewModel.PresentedView?>.Publisher and conformance Published<A>.Publisher();
  v26 = OUTLINED_FUNCTION_9_10();

  (*(v7 + 8))(v10, v2);
  v27 = OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_cancellable;
  OUTLINED_FUNCTION_7_20();
  *&v24[v27] = v26;

  v28 = *&v21[v22];
  LOBYTE(v27) = CallRecordingViewModel.presentedView.getter();

  CallRecordingPillViewController.update(with:)(v27);
  return v24;
}

void closure #1 in CallRecordingPillViewController.init(displayStyle:)(char *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    CallRecordingPillViewController.update(with:)(v1);
  }
}

id CallRecordingPillViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CallRecordingPillViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_viewModel;
  v2 = [objc_opt_self() sharedInstance];
  type metadata accessor for CallRecordingService();
  v3 = OUTLINED_FUNCTION_5_3();
  *(v3 + 16) = v2;
  v4 = objc_allocWithZone(type metadata accessor for CallRecordingViewModel());
  *(v0 + v1) = specialized CallRecordingViewModel.init(service:)(v3, v4);
  *(v0 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_cancellable) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_usesGlass) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController____lazy_storage___countdownView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController____lazy_storage___recordingView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id closure #1 in CallRecordingPillViewController.countdownView.getter(uint64_t a1)
{
  v16 = a1;
  v1 = type metadata accessor for CallRecordingRecordingView.Options();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = type metadata accessor for CallRecordingViewConfig();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  CallRecordingPillViewController.screenSize.getter(v17);
  static CallRecordingRecordingView.Options.none.getter();
  CallRecordingPillViewController.screenSize.getter(v17);
  CallRecordingPillViewController.screenSize.getter(v17);
  v6 = *MEMORY[0x1E69DDC38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA930;
  v8 = objc_opt_self();
  v9 = v6;
  result = [v8 effectWithBlurRadius_];
  if (result)
  {
    v11 = result;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIVisualEffect);
    *(v7 + 32) = v11;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColorEffect);
    *(v7 + 40) = static UIColorEffect.inCallControls.getter();
    result = @nonobjc UIVisualEffect.init(combiningEffects:)(v7);
    if (result)
    {
      CallRecordingViewConfig.init(inset:options:interComponentSpacing:maxAXContentSize:backgroundEffect:)();
      v17[3] = v2;
      v17[4] = MEMORY[0x1E6995B90];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
      v13 = objc_allocWithZone(type metadata accessor for CallRecordingCountdownView());
      v14 = CallRecordingCountdownView.init(config:usesGlass:)();
      v15.value._countAndFlagsBits = String.localizedCallRecording.getter();
      CallRecordingCountdownView.setAXLabelForCloseButton(_:)(v15);

      (*(v3 + 8))(v5, v2);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void CallRecordingPillViewController.screenSize.getter(BOOL *a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11.origin.x = v4;
  v11.origin.y = v6;
  v11.size.width = v8;
  v11.size.height = v10;
  *a1 = CGRectGetWidth(v11) > 374.0;
}

void (*CallRecordingPillViewController.countdownView.modify(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = CallRecordingPillViewController.countdownView.getter();
  return CallRecordingPillViewController.countdownView.modify;
}

id CallRecordingPillViewController.countdownView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in CallRecordingPillViewController.recordingView.getter(uint64_t a1)
{
  v2 = type metadata accessor for CallRecordingRecordingView.Options();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for CallRecordingViewConfig();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_displayStyle + 8) == 1)
  {
    CallRecordingPillViewController.screenSize.getter(v24);
    static CallRecordingRecordingView.Options.all.getter();
    CallRecordingPillViewController.screenSize.getter(v24);
    CallRecordingPillViewController.screenSize.getter(v24);
    v8 = *MEMORY[0x1E69DDC38];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BC4BA930;
    v10 = objc_opt_self();
    v11 = v8;
    result = [v10 effectWithBlurRadius_];
    if (result)
    {
      v13 = result;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIVisualEffect);
      *(v9 + 32) = v13;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColorEffect);
      *(v9 + 40) = static UIColorEffect.inCallControls.getter();
      result = @nonobjc UIVisualEffect.init(combiningEffects:)(v9);
      if (result)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  CallRecordingPillViewController.screenSize.getter(v24);
  static CallRecordingRecordingView.Options.stopButton.getter();
  CallRecordingPillViewController.screenSize.getter(v24);
  CallRecordingPillViewController.screenSize.getter(v24);
  v14 = *MEMORY[0x1E69DDC38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BC4BA930;
  v16 = objc_opt_self();
  v17 = v14;
  result = [v16 effectWithBlurRadius_];
  if (!result)
  {
    goto LABEL_9;
  }

  v18 = result;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIVisualEffect);
  *(v15 + 32) = v18;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColorEffect);
  *(v15 + 40) = static UIColorEffect.inCallControls.getter();
  result = @nonobjc UIVisualEffect.init(combiningEffects:)(v15);
  if (result)
  {
LABEL_7:
    CallRecordingViewConfig.init(inset:options:interComponentSpacing:maxAXContentSize:backgroundEffect:)();
    v24[3] = v4;
    v24[4] = MEMORY[0x1E6995B90];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    (*(v5 + 16))(boxed_opaque_existential_1, v7, v4);
    v20 = objc_allocWithZone(type metadata accessor for CallRecordingRecordingView());
    v21 = CallRecordingRecordingView.init(config:usesGlass:)();
    v22.value._countAndFlagsBits = String.localizedCallRecording.getter();
    CallRecordingRecordingView.setAXLabelForStopButton(_:)(v22);

    (*(v5 + 8))(v7, v4);
    return v21;
  }

LABEL_11:
  __break(1u);
  return result;
}

void (*CallRecordingPillViewController.recordingView.modify(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = CallRecordingPillViewController.recordingView.getter();
  return CallRecordingPillViewController.recordingView.modify;
}

Swift::Void __swiftcall CallRecordingPillViewController.updateBackgroundMaterial(material:)(ConversationKit::CallRecordingViewMaterialType material)
{
  CallRecordingViewMaterialType.effect.getter();
  v2 = objc_allocWithZone(type metadata accessor for AudioMiddleStackBackgroundView());
  v3 = AudioMiddleStackBackgroundView.init(effect:usesGlass:)();
  CallRecordingPillViewController.countdownView.getter();
  OUTLINED_FUNCTION_6_4();
  CallRecordingCountdownView.updateBackground(_:)();

  v4 = CallRecordingPillViewController.recordingView.getter();
  CallRecordingRecordingView.updateBackground(_:)();
}

Swift::Void __swiftcall CallRecordingPillViewController.viewDidLoad()()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];

    v4 = *&v1[OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController_viewModel];
    v5 = CallRecordingPillViewController.countdownView.getter();
    CallRecordingViewModel.countdownDelegate.setter(v5, &protocol witness table for CallRecordingCountdownView);
    v6 = CallRecordingPillViewController.recordingView.getter();
    v7 = &v4[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingDelegate];
    swift_beginAccess();
    *(v7 + 1) = &protocol witness table for CallRecordingRecordingView;
    swift_unknownObjectWeakAssign();

    v8 = *&v1[OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController____lazy_storage___countdownView];
    lazy protocol witness table accessor for type CallRecordingViewModel and conformance CallRecordingViewModel(&lazy protocol witness table cache variable for type CallRecordingViewModel and conformance CallRecordingViewModel);
    v9 = v4;
    v10 = v8;
    CallRecordingCountdownView.delegate.setter();

    v11 = *&v1[OBJC_IVAR____TtC15ConversationKit31CallRecordingPillViewController____lazy_storage___recordingView];
    lazy protocol witness table accessor for type CallRecordingViewModel and conformance CallRecordingViewModel(&lazy protocol witness table cache variable for type CallRecordingViewModel and conformance CallRecordingViewModel);
    v12 = v11;
    OUTLINED_FUNCTION_6_4();
    CallRecordingRecordingView.delegate.setter();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CallRecordingCountdownView.transitionToDisclosingRecording()()
{
  OUTLINED_FUNCTION_8_16();
  String.init(format:_:)();

  OUTLINED_FUNCTION_3_0();

  MEMORY[0x1EEDF6A78]();
}

id CallRecordingPillViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id CallRecordingPillViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CallRecordingCountdownView.updateText(_:)(Swift::Int_optional a1)
{
  is_nil = a1.is_nil;
  value = a1.value;
  OUTLINED_FUNCTION_8_16();
  v3 = String.init(format:_:)();
  v5 = v4;

  if (is_nil)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    String.localizedCallRecording.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E6530];
    *(v8 + 16) = xmmword_1BC4BA940;
    v10 = MEMORY[0x1E69E65A8];
    *(v8 + 56) = v9;
    *(v8 + 64) = v10;
    *(v8 + 32) = value;
    v6 = String.init(format:_:)();
    v7 = v11;
  }

  MEMORY[0x1EEDF6A78](v3, v5, v6, v7);
}

Swift::Void __swiftcall CallRecordingRecordingView.updateRecordingTimeLabel(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for recordingSession != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.recordingSession);
  OUTLINED_FUNCTION_6_4();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v8);
    _os_log_impl(&dword_1BBC58000, v4, v5, "Update recording time label: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  MEMORY[0x1EEDF62E8](countAndFlagsBits, object);
}

Swift::Void __swiftcall CallRecordingRecordingView.updatePowerLevels(latestRemoteSpectrum:latestLocalSpectrum:)(Swift::OpaquePointer latestRemoteSpectrum, Swift::OpaquePointer latestLocalSpectrum)
{

  MEMORY[0x1EEDF62F0](latestLocalSpectrum._rawValue, latestRemoteSpectrum._rawValue);
}

char *specialized CallRecordingViewModel.init(service:)(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22CallRecordingViewModelC09PresentedG0OSgGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-v7];
  v9 = type metadata accessor for CallRecordingService();
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_cancellables] = MEMORY[0x1E69E7CD0];
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_timeSink] = 0;
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownValue] = 3;
  v21[3] = v9;
  v21[4] = &protocol witness table for CallRecordingService;
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_avAudioPlayer] = 0;
  v21[0] = a1;
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingState];
  *v10 = 0;
  v11 = 1;
  v10[4] = 1;
  v12 = OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel__presentedView;
  v19[0] = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22CallRecordingViewModelC09PresentedE0OSgMd);
  Published.init(initialValue:)();
  (*(v6 + 32))(&a2[v12], v8, v5);
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_stopwatchValue] = 0;
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_waveformViewModel] = 0;
  outlined init with copy of IDSLookupManager(v21, &a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_service]);
  v20.receiver = a2;
  v20.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v20, sel_init);
  CallRecordingViewModel.observeCountdownNotifications()();
  CallRecordingViewModel.observeRecordingStateNotifications()();
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 frontmostCall];

  if (v15)
  {
    v16 = [v15 recordingSession];

    if (v16)
    {
      LODWORD(v15) = [v16 recordingState];

      v11 = 0;
    }

    else
    {
      LODWORD(v15) = 0;
    }
  }

  v17 = &v13[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingState];
  swift_beginAccess();
  *v17 = v15;
  v17[4] = v11;
  CallRecordingViewModel.update()();

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v13;
}

unint64_t lazy protocol witness table accessor for type Published<CallRecordingViewModel.PresentedView?>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<CallRecordingViewModel.PresentedView?>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<CallRecordingViewModel.PresentedView?>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22CallRecordingViewModelC09PresentedH0OSg_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<CallRecordingViewModel.PresentedView?>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CallRecordingViewModel and conformance CallRecordingViewModel(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CallRecordingViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallRecordingPillViewController.DisplayStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CallRecordingPillViewController.DisplayStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for CallRecordingPillViewController.DisplayStyle(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for CallRecordingPillViewController.DisplayStyle(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t CallRecordingService.__allocating_init(callCenter:)(uint64_t a1)
{
  OUTLINED_FUNCTION_36();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void CallRecordingError.alertStrings.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  if (*v0 == 2)
  {
    String.localizedCallRecording.getter();
    v3 = String.init(format:_:)();
    v5 = v4;

    String.localizedCallRecording.getter();
    v6 = String.init(format:_:)();
    v8 = v7;

    String.localizedCallRecording.getter();
    v9 = String.init(format:_:)();
    v11 = v10;

    String.localizedCallRecording.getter();
    v12 = String.init(format:_:)();
    v14 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    OUTLINED_FUNCTION_53_3();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BC4BAA20;
    *(v15 + 32) = v9;
    *(v15 + 40) = v11;
    *(v15 + 48) = v12;
    *(v15 + 56) = v14;
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v6 = 0;
    v8 = 0;
    v15 = 0;
  }

  *v2 = v3;
  v2[1] = v5;
  v2[2] = v6;
  v2[3] = v8;
  v2[4] = v15;
  OUTLINED_FUNCTION_30_0();
}

Swift::Int CallRecordingError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CallRecordingError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

void CallRecordingService.startRecording(call:completion:)()
{
  OUTLINED_FUNCTION_47_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  if ([v1 isRecordingAllowed])
  {
    if (one-time initialization token for recordingSession != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v5, static Logger.recordingSession);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_42_1(v7))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_25_6(&dword_1BBC58000, v8, v9, "Requesting to start a recording session.");
      OUTLINED_FUNCTION_27();
    }

    v10 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_57_2(v10);
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();
    OUTLINED_FUNCTION_34_2();

    v11 = v1;
    static MainActor.shared.getter();
    OUTLINED_FUNCTION_53_3();
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_56_1(v12, MEMORY[0x1E69E85E0]);
    OUTLINED_FUNCTION_40_8();
  }

  else
  {
    (*(*v2 + 128))();
    lazy protocol witness table accessor for type CallRecordingError and conformance CallRecordingError();
    v13 = swift_allocError();
    *v14 = 0;
    v0();
  }
}

unint64_t lazy protocol witness table accessor for type CallRecordingError and conformance CallRecordingError()
{
  result = lazy protocol witness table cache variable for type CallRecordingError and conformance CallRecordingError;
  if (!lazy protocol witness table cache variable for type CallRecordingError and conformance CallRecordingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallRecordingError and conformance CallRecordingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallRecordingError and conformance CallRecordingError;
  if (!lazy protocol witness table cache variable for type CallRecordingError and conformance CallRecordingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallRecordingError and conformance CallRecordingError);
  }

  return result;
}

uint64_t closure #1 in CallRecordingService.startRecording(call:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  type metadata accessor for MainActor();
  v7[29] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[30] = v9;
  v7[31] = v8;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallRecordingService.startRecording(call:completion:), v9, v8);
}

uint64_t closure #1 in CallRecordingService.startRecording(call:completion:)()
{
  OUTLINED_FUNCTION_41_2();
  Strong = swift_weakLoadStrong();
  v3[32] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_36_5(Strong);
    v6 = objc_allocWithZone(MEMORY[0x1E69D8AB0]);
    v7 = v2;
    v8 = [v6 initWithCall:v4 mode:0 isInitiatedLocally:1];
    v3[34] = v8;
    v3[2] = v3;
    v3[3] = closure #1 in CallRecordingService.startRecording(call:completion:);
    swift_continuation_init();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
    OUTLINED_FUNCTION_11_6(v9);
    v3[11] = 1107296256;
    OUTLINED_FUNCTION_10_3();
    [v7 performRecordingRequest:v8 completion:v0];

    return MEMORY[0x1EEE6DEC8](v1);
  }

  else
  {

    if (one-time initialization token for recordingSession != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v10, static Logger.recordingSession);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_28_8(v12))
    {
      v13 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v13);
      OUTLINED_FUNCTION_16_14(&dword_1BBC58000, v14, v15, "self released, cant request start recording");
      OUTLINED_FUNCTION_26();
    }

    v16 = v3[26];

    v16(0);
    OUTLINED_FUNCTION_13();

    return v17();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 280) = v4;
  v5 = v3[31];
  v6 = v3[30];
  if (v4)
  {
    v7 = closure #1 in CallRecordingService.startRecording(call:completion:);
  }

  else
  {
    v7 = closure #1 in CallRecordingService.startRecording(call:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[33];
  v2 = v0[34];

  if (one-time initialization token for recordingSession != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, static Logger.recordingSession);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_28_8(v5))
  {
    v6 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v6);
    OUTLINED_FUNCTION_16_14(&dword_1BBC58000, v7, v8, "Successfully started recording");
    OUTLINED_FUNCTION_26();
  }

  v9 = v0[26];

  v9(0);

  OUTLINED_FUNCTION_13();

  return v10();
}

{
  OUTLINED_FUNCTION_48();
  v22 = v0;
  v1 = v0[34];
  v2 = v0[33];

  swift_willThrow();

  if (one-time initialization token for recordingSession != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v3 = v0[35];
  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v4, static Logger.recordingSession);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    OUTLINED_FUNCTION_54_0(4.8149e-34);
    v10 = Error.localizedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v21);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v13, v14, "Unable to start recording: %s");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 128))(0);
  }

  v16 = v0[35];
  v17 = v0[26];
  v18 = v16;
  v17(v16);

  OUTLINED_FUNCTION_13();

  return v19();
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5()
{
  OUTLINED_FUNCTION_29();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_6_14();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_18(v12, v18);
  v13 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_46_2(v13);
  if (v4 == 1)
  {
    outlined destroy of TaskPriority?(v0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_49_1();
    (*(v14 + 8))(v0, v3);
  }

  OUTLINED_FUNCTION_45_3();

  if (v5)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_20_9();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_35_2();
      OUTLINED_FUNCTION_24();
      v15 = swift_allocObject();
      OUTLINED_FUNCTION_55_4(v15);
      if (v9)
      {
        OUTLINED_FUNCTION_5_4();
      }

      else
      {
        v16 = 0;
      }

      OUTLINED_FUNCTION_7_21(v16);
      swift_task_create();
      OUTLINED_FUNCTION_34_2();

      outlined destroy of TaskPriority?(v2);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39_8();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(v2);
  OUTLINED_FUNCTION_24();
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v7;
  if (v4 | v0)
  {
    OUTLINED_FUNCTION_8_17();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5()
{
  OUTLINED_FUNCTION_29();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_6_14();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_18(v12, v19);
  v13 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_17_10(v13);
  if (v4 == 1)
  {
    outlined destroy of TaskPriority?(v0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_18_15();
    (*(v14 + 8))(v0, v3);
  }

  OUTLINED_FUNCTION_45_3();

  if (v5)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_20_9();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_35_2();
      OUTLINED_FUNCTION_24();
      v15 = swift_allocObject();
      *(v15 + 16) = v9;
      *(v15 + 24) = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
      OUTLINED_FUNCTION_37_5();
      if (v16)
      {
        OUTLINED_FUNCTION_5_4();
      }

      OUTLINED_FUNCTION_7_21(v16);
      OUTLINED_FUNCTION_31_3();
      swift_task_create();

      outlined destroy of TaskPriority?(v2);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39_8();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(v2);
  OUTLINED_FUNCTION_24();
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  OUTLINED_FUNCTION_37_5();
  if (v18)
  {
    OUTLINED_FUNCTION_8_17();
  }

  swift_task_create();
LABEL_13:
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5()
{
  OUTLINED_FUNCTION_29();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_6_14();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_18(v12, v18);
  v13 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_46_2(v13);
  if (v4 == 1)
  {
    outlined destroy of TaskPriority?(v0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_49_1();
    (*(v14 + 8))(v0, v3);
  }

  OUTLINED_FUNCTION_45_3();

  if (v5)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_20_9();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_35_2();
      OUTLINED_FUNCTION_24();
      v15 = swift_allocObject();
      OUTLINED_FUNCTION_55_4(v15);
      if (v9)
      {
        OUTLINED_FUNCTION_5_4();
      }

      else
      {
        v16 = 0;
      }

      OUTLINED_FUNCTION_7_21(v16);
      swift_task_create();
      OUTLINED_FUNCTION_34_2();

      outlined destroy of TaskPriority?(v2);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39_8();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(v2);
  OUTLINED_FUNCTION_24();
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v7;
  if (v4 | v0)
  {
    OUTLINED_FUNCTION_8_17();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC16CommunicationsUI21ApertureElementHandleC_Tt2g5()
{
  OUTLINED_FUNCTION_29();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_6_14();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_18(v12, v19);
  v13 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_17_10(v13);
  if (v4 == 1)
  {
    outlined destroy of TaskPriority?(v0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_18_15();
    (*(v14 + 8))(v0, v3);
  }

  OUTLINED_FUNCTION_45_3();

  if (v5)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_20_9();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_35_2();
      OUTLINED_FUNCTION_24();
      v15 = swift_allocObject();
      *(v15 + 16) = v9;
      *(v15 + 24) = v7;
      type metadata accessor for ApertureElementHandle();

      if (v4 | v0)
      {
        OUTLINED_FUNCTION_5_4();
      }

      else
      {
        v16 = 0;
      }

      OUTLINED_FUNCTION_7_21(v16);
      OUTLINED_FUNCTION_31_3();
      swift_task_create();
      OUTLINED_FUNCTION_34_2();

      outlined destroy of TaskPriority?(v2);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39_8();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(v2);
  OUTLINED_FUNCTION_24();
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v7;
  type metadata accessor for ApertureElementHandle();
  OUTLINED_FUNCTION_37_5();
  if (v18)
  {
    OUTLINED_FUNCTION_8_17();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCAG_Tt2g5()
{
  OUTLINED_FUNCTION_29();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_6_14();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_18(v12, v19);
  v13 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_17_10(v13);
  if (v4 == 1)
  {
    outlined destroy of TaskPriority?(v0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_18_15();
    (*(v14 + 8))(v0, v3);
  }

  OUTLINED_FUNCTION_45_3();

  if (v5)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_20_9();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_35_2();
      OUTLINED_FUNCTION_24();
      v15 = swift_allocObject();
      *(v15 + 16) = v9;
      *(v15 + 24) = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      OUTLINED_FUNCTION_37_5();
      if (v16)
      {
        OUTLINED_FUNCTION_5_4();
      }

      OUTLINED_FUNCTION_7_21(v16);
      OUTLINED_FUNCTION_31_3();
      swift_task_create();

      outlined destroy of TaskPriority?(v2);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39_8();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(v2);
  OUTLINED_FUNCTION_24();
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  OUTLINED_FUNCTION_37_5();
  if (v18)
  {
    OUTLINED_FUNCTION_8_17();
  }

  swift_task_create();
LABEL_13:
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
}

void CallRecordingService.stopRecording(call:completion:)()
{
  OUTLINED_FUNCTION_47_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  if ([v1 isRecordingAllowed])
  {
    if (one-time initialization token for recordingSession != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v4, static Logger.recordingSession);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_42_1(v6))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_25_6(&dword_1BBC58000, v7, v8, "Requesting to stop a recording session.");
      OUTLINED_FUNCTION_27();
    }

    v9 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_57_2(v9);
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();
    OUTLINED_FUNCTION_34_2();

    v10 = v1;
    static MainActor.shared.getter();
    OUTLINED_FUNCTION_53_3();
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_56_1(v11, MEMORY[0x1E69E85E0]);
    OUTLINED_FUNCTION_40_8();
  }

  else
  {
    lazy protocol witness table accessor for type CallRecordingError and conformance CallRecordingError();
    v12 = swift_allocError();
    *v13 = 0;
    v0();
  }
}

uint64_t closure #1 in CallRecordingService.stopRecording(call:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  type metadata accessor for MainActor();
  v7[29] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[30] = v9;
  v7[31] = v8;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallRecordingService.stopRecording(call:completion:), v9, v8);
}

uint64_t closure #1 in CallRecordingService.stopRecording(call:completion:)()
{
  OUTLINED_FUNCTION_41_2();
  Strong = swift_weakLoadStrong();
  v3[32] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_36_5(Strong);
    v6 = objc_allocWithZone(MEMORY[0x1E69D8AB8]);
    v7 = v2;
    v8 = [v6 initWithCall_];
    v3[34] = v8;
    v3[2] = v3;
    v3[3] = closure #1 in CallRecordingService.stopRecording(call:completion:);
    swift_continuation_init();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
    OUTLINED_FUNCTION_11_6(v9);
    v3[11] = 1107296256;
    OUTLINED_FUNCTION_10_3();
    [v7 performRecordingRequest:v8 completion:v0];

    return MEMORY[0x1EEE6DEC8](v1);
  }

  else
  {

    if (one-time initialization token for recordingSession != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v10, static Logger.recordingSession);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_28_8(v12))
    {
      v13 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v13);
      OUTLINED_FUNCTION_16_14(&dword_1BBC58000, v14, v15, "self released, cant request stop recording");
      OUTLINED_FUNCTION_26();
    }

    v16 = v3[26];

    v16(0);
    OUTLINED_FUNCTION_13();

    return v17();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 280) = v4;
  v5 = v3[31];
  v6 = v3[30];
  if (v4)
  {
    v7 = closure #1 in CallRecordingService.stopRecording(call:completion:);
  }

  else
  {
    v7 = closure #1 in CallRecordingService.stopRecording(call:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[33];
  v2 = v0[34];

  if (one-time initialization token for recordingSession != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, static Logger.recordingSession);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_28_8(v5))
  {
    v6 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v6);
    OUTLINED_FUNCTION_16_14(&dword_1BBC58000, v7, v8, "Successfully stopped recording");
    OUTLINED_FUNCTION_26();
  }

  v9 = v0[26];

  v9(0);

  OUTLINED_FUNCTION_13();

  return v10();
}

{
  OUTLINED_FUNCTION_48();
  v21 = v0;
  v1 = v0[34];
  v2 = v0[33];

  swift_willThrow();

  if (one-time initialization token for recordingSession != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v3 = v0[35];
  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v4, static Logger.recordingSession);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    OUTLINED_FUNCTION_54_0(4.8149e-34);
    v10 = Error.localizedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v20);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v13, v14, "Unable to stop recording: %s");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v15 = v0[35];
  v16 = v0[26];
  v17 = v15;
  v16(v15);

  OUTLINED_FUNCTION_13();

  return v18();
}

Swift::Void __swiftcall CallRecordingService.updateConversationControlsRecipe()()
{
  OUTLINED_FUNCTION_29();
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for recordingSession != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.recordingSession);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_42_1(v9))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_25_6(&dword_1BBC58000, v10, v11, "Updating conversation controls recipe.");
    OUTLINED_FUNCTION_27();
  }

  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v20 = 7;
  UUID.init()();
  v12 = &v6[v4[11]];
  *(v12 + 1) = 0;
  swift_unknownObjectWeakInit();
  *v6 = 0x4082C00000000000;
  outlined init with copy of ConversationControlsType(v18, (v6 + 8));
  *(v6 + 7) = 0;
  v6[64] = 1;
  *(v12 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v6[65] = 1;
  (*(v1 + 16))(&v6[v4[8]], v3, v0);
  static Date.now.getter();
  (*(v1 + 8))(v3, v0);
  outlined destroy of ConversationControlsType(v18);
  *&v6[v4[10]] = 0;
  v6[v4[12]] = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = (*((*MEMORY[0x1E69E7D40] & *static HUDActivityManager.shared) + 0x118))(v6);
  if (v13)
  {
    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_33();
      *v17 = 0;
      _os_log_impl(&dword_1BBC58000, v15, v16, "Error with HUDActivityManager.shared updateWith(_:)", v17, 2u);
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }

    outlined destroy of HUDActivityManager.BannerUpdate(v6);
  }

  else
  {
    outlined destroy of HUDActivityManager.BannerUpdate(v6);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t CallRecordingService.url(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() openNoteURLForRecordingSession_];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

Swift::Void __swiftcall CallRecordingService.postStartRecordingStateNotification(success:)(Swift::Bool success)
{
  if (!success)
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = v2;
    if (one-time initialization token for startCallRecordingStateFailedNotification != -1)
    {
      swift_once();
      v2 = v3;
    }

    [v2 postNotificationName:static NSNotificationName.startCallRecordingStateFailedNotification object:0];
  }
}

uint64_t CallRecordingService.__deallocating_deinit()
{
  OUTLINED_FUNCTION_36();

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in CallRecordingService.startRecording(call:completion:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_19_0(v1);

  return closure #1 in CallRecordingService.startRecording(call:completion:)(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t outlined destroy of HUDActivityManager.BannerUpdate(uint64_t a1)
{
  v2 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for CallRecordingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CallRecordingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_17(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR16CommunicationsUI21ApertureElementHandleC_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR16CommunicationsUI21ApertureElementHandleC_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR16CommunicationsUI21ApertureElementHandleC_TG5TQ0_()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR16CommunicationsUI21ApertureElementHandleC_TG5TA()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_17(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR16CommunicationsUI21ApertureElementHandleC_TG5TA_33()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_17(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TQ0_()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v7 = v6;

  *v5 = *(v2 + 16);
  OUTLINED_FUNCTION_13();

  return v8();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TA()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_17(v1);

  return v4(v3);
}

id CNMutableContact.init(conversationMember:)(void *a1)
{
  return CNMutableContact.init(conversationMember:)(a1, &selRef__initWithConversationMember_);
}

{
  v3 = [a1 handle];
  v4 = [v1 _initWithHandle_];

  return v4;
}

id CNMutableContact.init(conversationMember:)(void *a1, SEL *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a2];

  return v3;
}

uint64_t CNMutableContact.init(handle:)(void *a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  switch([a1 type])
  {
    case 0uLL:

      return 0;
    case 1uLL:
      v11 = [a1 value];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = objc_allocWithZone(MEMORY[0x1E695CFA0]);
      v8.super.isa = OUTLINED_FUNCTION_1_30(0, 0, v12);
      v9 = &selRef_setSocialProfiles_;
      goto LABEL_7;
    case 2uLL:
      type metadata accessor for CNPhoneNumber();
      v4 = [a1 value];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = v6;

      v7._countAndFlagsBits = v5;
      v7._object = v1;
      v8.super.isa = CNPhoneNumber.__allocating_init(stringValue:)(v7).super.isa;
      v9 = &selRef_setPhoneNumbers_;
      goto LABEL_7;
    case 3uLL:
      v10 = [a1 value];
      if (v10)
      {
        v8.super.isa = v10;
        v9 = &selRef_setEmailAddresses_;
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v14 = OUTLINED_FUNCTION_3_2();
        *(v14 + 16) = xmmword_1BC4BAC30;
        v15 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
        *(v14 + 32) = OUTLINED_FUNCTION_0_18(v8.super.isa);
        __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v3 *v9];

        return v3;
      }

      else
      {
        __break(1u);
LABEL_10:
        _StringGuts.grow(_:)(23);
        MEMORY[0x1BFB20B10](0xD000000000000015, 0x80000001BC4F2C10);
        [a1 type];
        type metadata accessor for CHHandleType(0);
        _print_unlocked<A, B>(_:_:)();
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      return result;
    default:
      goto LABEL_10;
  }
}

CNPhoneNumber __swiftcall CNPhoneNumber.__allocating_init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);

  v5 = [v3 initWithStringValue_];

  return v5;
}