uint64_t type metadata accessor for Bootstrap()
{
  result = qword_280E2B728;
  if (!qword_280E2B728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void __swiftcall MusicConfiguration.init(bagProfileName:bagProfileVersion:mediaAPIClientIdentifier:privacyDisclaimerPolicy:)(MusicUI::MusicConfiguration *__return_ptr retstr, Swift::String bagProfileName, Swift::String bagProfileVersion, Swift::String mediaAPIClientIdentifier, MusicUI::MusicConfiguration::PrivacyDisclaimerPolicy privacyDisclaimerPolicy)
{
  v5 = *privacyDisclaimerPolicy;
  retstr->bagProfileName = bagProfileName;
  retstr->bagProfileVersion = bagProfileVersion;
  retstr->mediaAPIClientIdentifier = mediaAPIClientIdentifier;
  retstr->privacyDisclaimerPolicy = v5;
}

uint64_t sub_21667C424()
{
  result = sub_217007CA4();
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

uint64_t Bootstrap.init(configuration:)(__int128 *a1)
{
  v2 = v1;
  v9 = a1[1];
  v10 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7E0);
  *(v1 + 96) = sub_21700E244();
  sub_217007C94();
  *(v1 + OBJC_IVAR____TtC7MusicUI9Bootstrap_hasStartedLoading) = 0;
  *(v1 + 16) = v10;
  *(v1 + 32) = v9;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  v6 = [objc_opt_self() standardUserDefaults];
  *(v2 + 72) = v6;
  v11 = *(v2 + 64);
  type metadata accessor for PrivacyDisclaimerAcknowledgement();
  swift_allocObject();
  v7 = v6;
  *(v2 + 80) = sub_21667C638(v7, &v11);
  *(v2 + 88) = v7;
  return v2;
}

uint64_t sub_21667C638(void *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  *(v2 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0898);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_217006224();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD90);
  OUTLINED_FUNCTION_0_121();
  sub_21667E92C(v6, v7);
  *(v5 + 112) = sub_21700E384();
  *(v2 + 32) = v5;
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  *(v2 + 48) = v8;
  *(v2 + 16) = a1;
  *(v2 + 40) = v4;
  if (v4)
  {
    v10 = objc_opt_self();
    v11 = a1;
    v12 = [v10 sharedPrivacyInfo];
    if (qword_280E2F858 != -1)
    {
      OUTLINED_FUNCTION_11_45();
    }

    v13 = qword_280E73B70;
    v14 = swift_allocObject();
    swift_weakInit();
    v18[4] = sub_216A52260;
    v18[5] = v14;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_216A4FD0C;
    v18[3] = &block_descriptor_16;
    v15 = _Block_copy(v18);

    v16 = [v12 beginObservingPrivacyAcknowledgementForIdentifier:v13 handler:v15];

    _Block_release(v15);
    *(v2 + 24) = v16;
    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_21667C874()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

__n128 OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __int128 a11, char a12)
{
  result = a10;
  *v12 = a10;
  *(v12 + 16) = a11;
  *(v12 + 32) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_1()
{
}

void OUTLINED_FUNCTION_6()
{

  JUMPOUT(0x21CEA1440);
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return sub_216783900(v0, type metadata accessor for ReplayPage);
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_80()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_22_1@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_1_20()
{

  return sub_2167EE72C(v0, type metadata accessor for ModalActionModelDestinations.Destination);
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_30()
{

  return sub_21681D394(v0, type metadata accessor for AccessoryButton.OneOf_BaseAccessoryButton);
}

uint64_t OUTLINED_FUNCTION_12()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_1_35()
{

  sub_21693776C();
}

uint64_t OUTLINED_FUNCTION_1_36(uint64_t a1)
{

  return nullsub_1(v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_38()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_40()
{

  return sub_216880FD4(v0, type metadata accessor for MappedReplayModel);
}

unint64_t OUTLINED_FUNCTION_1_46()
{
  v3 = *(v2 - 120);
  *(v3 + 16) = v1;
  return v3 + ((*(*(v2 - 136) + 80) + 32) & ~*(*(v2 - 136) + 80)) + *(*(v2 - 136) + 72) * v0;
}

uint64_t OUTLINED_FUNCTION_1_48()
{

  return sub_21700F7D4();
}

uint64_t OUTLINED_FUNCTION_1_49()
{

  return sub_2168D21D0(v0, type metadata accessor for ShareableMusicItem);
}

uint64_t OUTLINED_FUNCTION_1_52()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_54()
{
}

uint64_t OUTLINED_FUNCTION_1_57()
{

  return sub_216915310(v0, type metadata accessor for PresentSheetAction);
}

void OUTLINED_FUNCTION_1_68(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 - 104) = v2;
  *(v1 - 96) = v3;
  *(v1 - 88) = v4;
}

uint64_t OUTLINED_FUNCTION_1_69()
{

  return sub_217005CA4();
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return sub_21700F7D4();
}

id OUTLINED_FUNCTION_1_80()
{

  return [v0 (v1 + 2808)];
}

__n128 OUTLINED_FUNCTION_1_88(uint64_t a1)
{
  result = *(v1 - 168);
  v3 = *(v1 - 152);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 - 136);
  *(v1 - 168) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_98()
{

  return sub_21700CE04();
}

void OUTLINED_FUNCTION_1_99(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_1_101()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_104()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_107()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_109()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_1_110(uint64_t a1)
{

  return sub_216A8AD70(v2, a1 + v1);
}

uint64_t OUTLINED_FUNCTION_1_114()
{

  return sub_216AC14C8(v0, type metadata accessor for MusicAppDestination);
}

uint64_t OUTLINED_FUNCTION_1_124()
{

  return sub_216AF9344(v0, type metadata accessor for AlbumTrackLockup);
}

uint64_t OUTLINED_FUNCTION_1_129()
{

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_1_130()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

double OUTLINED_FUNCTION_1_133()
{
  *(v0 - 256) = 0;
  result = 0.0;
  *(v0 - 272) = 0u;
  *(v0 - 288) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_136(uint64_t result)
{
  *(result + 48) = 0x4C746E65746E6F43;
  *(result + 56) = 0xEF6D657449747369;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_137()
{
}

uint64_t OUTLINED_FUNCTION_1_139()
{
}

uint64_t OUTLINED_FUNCTION_1_140()
{

  return sub_21700E494();
}

uint64_t OUTLINED_FUNCTION_1_147()
{

  return sub_21700D734();
}

uint64_t OUTLINED_FUNCTION_1_153()
{

  return sub_216B7DCF0(v0, type metadata accessor for GoToArtistContext);
}

uint64_t OUTLINED_FUNCTION_1_155()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_1_158()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_161()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_163()
{
}

uint64_t OUTLINED_FUNCTION_1_164()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_165()
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_1_167()
{

  return sub_216BEEB60(v0, type metadata accessor for Artwork);
}

uint64_t OUTLINED_FUNCTION_1_170()
{

  return sub_21700D734();
}

uint64_t OUTLINED_FUNCTION_1_171()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_175()
{

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_1_182()
{

  return sub_21700BA64();
}

uint64_t OUTLINED_FUNCTION_1_195()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_201()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_206@<X0>(char a1@<W8>)
{
  *(v1 - 224) = a1;

  return sub_21700F664();
}

uint64_t OUTLINED_FUNCTION_1_208()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_212()
{

  return sub_21700E094();
}

void OUTLINED_FUNCTION_1_220()
{
  *v2 = v0;
  v2[1] = v4;
  v5 = v3 + *(v1 + 28);
  *v5 = 4;
  *(v5 + 8) = 1;
  v6 = v3 + *(v1 + 40);
  *v6 = 2;
  *(v6 + 4) = 0;
}

uint64_t OUTLINED_FUNCTION_1_224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_1_225()
{

  return sub_216F20984(v0, type metadata accessor for SocialProfileEditorPlaylistLockup);
}

uint64_t sub_21667E91C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21667E92C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21667E974(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_148()
{

  return sub_2166C2CB0();
}

__n128 OUTLINED_FUNCTION_148_2(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(a1 + 16) = v1;
  result = *(v2 + 16);
  v4 = *(v2 + 32);
  *(a1 + 24) = result;
  *(a1 + 40) = v4;
  *(a1 + 56) = *(v2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_2()
{
  *(v2 - 168) = v1;
  *(v2 - 160) = v0;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return sub_21700E4D4();
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return sub_2167B7E20();
}

uint64_t OUTLINED_FUNCTION_14_9(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_4_2()
{
}

uint64_t OUTLINED_FUNCTION_14_10()
{
  v4 = *(v0 + 584);

  return sub_216683A80(v2, v4, v1);
}

uint64_t OUTLINED_FUNCTION_14_11()
{

  return sub_21700A154();
}

uint64_t OUTLINED_FUNCTION_14_12()
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_14_14()
{

  return sub_21700F914();
}

uint64_t OUTLINED_FUNCTION_14_16(uint64_t a1)
{

  return sub_216860D3C(a1, sub_216A8D714, 0, (v1 + 16));
}

uint64_t OUTLINED_FUNCTION_14_19@<X0>(uint64_t a1@<X8>)
{

  return sub_216697664(v1 + a1, v2);
}

uint64_t OUTLINED_FUNCTION_14_21()
{

  return sub_217006224();
}

double OUTLINED_FUNCTION_48@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_32()
{

  return sub_217009234();
}

uint64_t OUTLINED_FUNCTION_14_35()
{

  return sub_2166997CC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_14_36(uint64_t a1)
{
  *(v1 + 192) = a1;
  result = type metadata accessor for LibraryPinActionImplementation();
  *(v1 + 200) = result;
  return result;
}

void OUTLINED_FUNCTION_14_43(uint64_t a1@<X8>)
{
  v4 = (v3 + a1);
  *v4 = v1;
  v4[1] = v2;
}

uint64_t OUTLINED_FUNCTION_14_44()
{

  return sub_21700E2C4();
}

uint64_t OUTLINED_FUNCTION_14_48()
{

  return sub_216AF657C(v0, type metadata accessor for FlowAction);
}

uint64_t OUTLINED_FUNCTION_14_50()
{

  return sub_216697664(v1, v0);
}

uint64_t OUTLINED_FUNCTION_14_51()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_14_56()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_60()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_14_68()
{
}

uint64_t OUTLINED_FUNCTION_14_69()
{

  return sub_21700F7D4();
}

uint64_t OUTLINED_FUNCTION_14_71()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_14_72()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_14_80(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_81@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_83@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return sub_2166A6E54(a1, v4, v2);
}

uint64_t OUTLINED_FUNCTION_14_84()
{

  return sub_2166997CC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_47_0(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_55()
{

  return sub_2166A6EA4();
}

uint64_t OUTLINED_FUNCTION_68()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_60(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_2166A6DF8(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_2166A6DF8(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_15_1()
{
  *(v2 - 168) = v1;
  *(v2 - 160) = v0;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return sub_21700E4D4();
}

void OUTLINED_FUNCTION_121(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = a1;
  *(v2 - 288) = a1;

  return swift_getOpaqueTypeMetadata2();
}

void *OUTLINED_FUNCTION_15_5()
{
  v2 = *(v0 - 64);

  return __swift_project_boxed_opaque_existential_1((v0 - 88), v2);
}

uint64_t OUTLINED_FUNCTION_15_9()
{

  return sub_2170083C4();
}

uint64_t OUTLINED_FUNCTION_15_10(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_15_13()
{

  return sub_21700D7A4();
}

uint64_t OUTLINED_FUNCTION_15_14()
{

  return sub_21700F914();
}

uint64_t OUTLINED_FUNCTION_122()
{

  return swift_once();
}

void OUTLINED_FUNCTION_15_19()
{
  v4 = (v0 + *(v3 + 36));
  *v4 = v1;
  v4[1] = v2;
}

void OUTLINED_FUNCTION_15_20()
{

  JUMPOUT(0x21CEA1440);
}

uint64_t OUTLINED_FUNCTION_15_21(uint64_t a1, void (*a2)(void))
{

  return sub_2168CBAB0(v2, a2);
}

uint64_t OUTLINED_FUNCTION_15_38()
{

  return sub_217006C34();
}

uint64_t OUTLINED_FUNCTION_15_43()
{

  return sub_21700CEF4();
}

uint64_t OUTLINED_FUNCTION_15_48()
{

  return sub_216AF657C(v0, type metadata accessor for FlowAction.Destination);
}

void OUTLINED_FUNCTION_15_49(uint64_t a1@<X8>)
{
  v4 = v1 + a1;
  *v4 = v2;
  *(v4 + 8) = v3 & 1;
}

double OUTLINED_FUNCTION_15_55()
{
  *v0 = 14;
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  return result;
}

void OUTLINED_FUNCTION_15_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  *(v12 - 88) = a1;
  *v11 = a11;

  JUMPOUT(0x21CE9F660);
}

uint64_t OUTLINED_FUNCTION_15_60(uint64_t a1)
{

  return sub_216697664(a1, v1);
}

uint64_t OUTLINED_FUNCTION_15_64()
{

  return sub_216DDA050();
}

uint64_t OUTLINED_FUNCTION_15_69()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_71()
{
}

uint64_t OUTLINED_FUNCTION_15_74(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

double OUTLINED_FUNCTION_15_78()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_94(uint64_t result, __int16 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 9) = HIBYTE(a2) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1)
{
  *(v3 + 24) = a1;

  return sub_2168282D4(v2, v1, v4);
}

uint64_t OUTLINED_FUNCTION_15_85()
{

  return swift_once();
}

size_t OUTLINED_FUNCTION_47_3@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;

  return sub_216AB97C8(0, v1, 0);
}

double OUTLINED_FUNCTION_47_6@<D0>(char a1@<W8>)
{
  *v3 = a1;
  result = 0.0;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = v2;
  *(v3 + 96) = v1;
  *(v3 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_7()
{

  return sub_2170081B4();
}

double OUTLINED_FUNCTION_47_9()
{

  return sub_216934F28();
}

uint64_t OUTLINED_FUNCTION_47_12()
{
}

unint64_t OUTLINED_FUNCTION_47_14()
{

  return sub_2167A74D4();
}

uint64_t OUTLINED_FUNCTION_47_15()
{

  return sub_217007DE4();
}

uint64_t OUTLINED_FUNCTION_47_19()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_47_20()
{
}

uint64_t OUTLINED_FUNCTION_47_21(uint64_t a1)
{

  return sub_216697664(a1, v1);
}

uint64_t OUTLINED_FUNCTION_47_26()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_47_27()
{
}

uint64_t OUTLINED_FUNCTION_47_28()
{

  return sub_216C7775C(v2, v0 + v1);
}

uint64_t OUTLINED_FUNCTION_47_31()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_47_32()
{

  return swift_getOpaqueTypeConformance2();
}

id OUTLINED_FUNCTION_47_33(void *a1)
{
  *(v1 + 512) = a1;

  return [a1 setPaused_];
}

uint64_t OUTLINED_FUNCTION_47_35@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{

  return sub_216683A80(v3 + a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_47_37()
{

  return type metadata accessor for AttributedDateRange();
}

void *OUTLINED_FUNCTION_74(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

void OUTLINED_FUNCTION_94_1(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_47_38(uint64_t a1)
{

  return sub_216683A80(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_47_39()
{

  return swift_once();
}

_OWORD *OUTLINED_FUNCTION_30_0()
{

  return sub_2166EF9D4();
}

void OUTLINED_FUNCTION_30_3(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_30_13@<X0>(uint64_t a1@<X8>)
{

  return sub_2166A6F60(v1 + a1, v3 - 208, v2);
}

void OUTLINED_FUNCTION_30_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t *OUTLINED_FUNCTION_30_18()
{
  v2 = *(v0 - 400);
  v3 = *(v0 - 568);
  v2[3] = *(v0 - 560);
  v2[4] = v3;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

uint64_t OUTLINED_FUNCTION_30_19()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_30_21()
{

  return sub_21700D3B4();
}

uint64_t OUTLINED_FUNCTION_30_22()
{
  *(v0 + 24) = v1;

  return sub_21700A2D4();
}

void *OUTLINED_FUNCTION_30_23@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  *v2 = v1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_30_24()
{
  v4 = *(v2 - 208);

  return sub_216681B04(v0, v4, v1);
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_33()
{

  return sub_216B042D4(v0, type metadata accessor for ContentDescriptor);
}

uint64_t OUTLINED_FUNCTION_30_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23)
{

  return sub_2169C7090(v23, &a22, &a23, v24, a1);
}

uint64_t OUTLINED_FUNCTION_30_38()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_30_44(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_30_46(uint64_t a1)
{

  return sub_216697664(a1, v1);
}

uint64_t OUTLINED_FUNCTION_30_50(unint64_t *a1)
{

  return sub_2166D9530(a1, v1);
}

uint64_t OUTLINED_FUNCTION_30_52(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_216A12228(va, v1);
}

uint64_t OUTLINED_FUNCTION_30_53()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_30_54()
{

  return sub_21700F8F4();
}

uint64_t OUTLINED_FUNCTION_30_55(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;

  return type metadata accessor for AttributedDateRange();
}

uint64_t OUTLINED_FUNCTION_30_58(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_217007874();
}

uint64_t OUTLINED_FUNCTION_78()
{
}

uint64_t OUTLINED_FUNCTION_79()
{
}

uint64_t OUTLINED_FUNCTION_30_59()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_30_63()
{

  return sub_216FD9C9C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_36_1(uint64_t a1)
{

  return sub_2167AC040(a1, v4, v3, v5, v2, v1, v6);
}

uint64_t OUTLINED_FUNCTION_84()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_36_2()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_36_6(uint64_t a1)
{

  return sub_216699778(a1, v1);
}

uint64_t OUTLINED_FUNCTION_36_8()
{

  return sub_2166C2718();
}

uint64_t OUTLINED_FUNCTION_36_9()
{
}

__n128 OUTLINED_FUNCTION_36_11@<Q0>(uint64_t a1@<X8>)
{
  result = v1[3];
  v3 = *v1;
  v4 = v1[1];
  *(a1 + 32) = v1[2];
  *(a1 + 48) = result;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36_13()
{
  sub_2166EF9C4((v0 - 248), (v0 - 280));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_36_15()
{
  v2 = *(v0 - 264);

  return sub_21695BD2C(v2, type metadata accessor for ContextAccessoryButton);
}

uint64_t OUTLINED_FUNCTION_36_16()
{

  return sub_21700C444();
}

void *OUTLINED_FUNCTION_36_17()
{
  v2 = *(v0 - 120);

  return __swift_project_boxed_opaque_existential_1((v0 - 144), v2);
}

uint64_t OUTLINED_FUNCTION_36_19@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return sub_216681B04(a1, v4, v2);
}

void OUTLINED_FUNCTION_36_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

__n128 *OUTLINED_FUNCTION_36_23(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1684957547;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_36_25()
{
  *(v1 - 216) = v0;

  return sub_21700CD74();
}

uint64_t OUTLINED_FUNCTION_36_26(uint64_t result)
{
  v4 = (v2 + *(v3 + 36));
  *v4 = v1;
  v4[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_27()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;

  return sub_217005EF4();
}

void OUTLINED_FUNCTION_36_28()
{
  *(v1 - 192) = v0;

  sub_216939F54(v1 - 184, v1 - 152);
}

uint64_t OUTLINED_FUNCTION_36_35(uint64_t a1)
{

  return sub_21669987C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_36_38()
{

  return sub_2170066D4();
}

unint64_t OUTLINED_FUNCTION_36_40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t a5, uint64_t a6)
{

  return sub_2166ABFE0(v6, a2, a3, a4, v7, a6);
}

uint64_t OUTLINED_FUNCTION_36_43(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_216A12718(va, v1);
}

uint64_t OUTLINED_FUNCTION_36_44()
{

  return sub_216EF6B5C(v0 - 176, v0 - 248);
}

uint64_t OUTLINED_FUNCTION_36_47(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_56_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return sub_216683A80(v0 + v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_36_49()
{
  type metadata accessor for SongTrackLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_36_51(uint64_t a1)
{
  *(a1 + 16) = v1;

  return type metadata accessor for ItemMetricsData();
}

uint64_t OUTLINED_FUNCTION_36_53(uint64_t a1)
{
  *(v1 + 8) = a1;

  return type metadata accessor for Empty();
}

uint64_t OUTLINED_FUNCTION_36_54(uint64_t a1)
{
  *(v3 + 24) = a1;

  return sub_216683A80(v2, v1, v4);
}

uint64_t OUTLINED_FUNCTION_88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void *OUTLINED_FUNCTION_75_1()
{
  v2 = *(v0 + 40);

  return __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
}

void *OUTLINED_FUNCTION_75_3(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  result[2] = v13;
  result[3] = a13;
  result[4] = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_75_7()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_75_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_75_13(uint64_t result)
{
  v2 = *(v1 + 840);
  *(result + 16) = *(v1 + 848);
  *(result + 24) = v2;
  return result;
}

void OUTLINED_FUNCTION_42_1(char a1@<W8>)
{
  if (!v1)
  {
    v2 = 0;
  }

  *v4 = v2;
  *(v4 + 8) = (a1 | v3) & 1;
}

uint64_t OUTLINED_FUNCTION_75_15()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_75_16()
{
  type metadata accessor for Section._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_75_17()
{

  return sub_216FB1A68();
}

uint64_t OUTLINED_FUNCTION_75_18()
{

  return sub_216FCEA94();
}

uint64_t sub_2166819CC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_216681AA4(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_50();
  (*v3)(a2);
  return a2;
}

uint64_t sub_216681B04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216681B64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_25()
{

  return __isPlatformVersionAtLeast(2, 26, 0, 0);
}

BOOL OUTLINED_FUNCTION_9_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_25_3()
{
  v4 = *(v2 - 248);
  v5 = *(v2 - 240);
  v6 = *(v2 - 232);

  return sub_2166C64F0(v0, v1, v5, v6, v4);
}

uint64_t OUTLINED_FUNCTION_19_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_28_0()
{
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_9_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_25_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_115_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_10(uint64_t result, __n128 a2)
{
  *(result + 16) = a2;
  *(result + 32) = v2;

  return sub_2167A2998(result);
}

uint64_t OUTLINED_FUNCTION_25_13(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_25_14(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_22()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_25_23()
{

  return sub_21700D7A4();
}

uint64_t OUTLINED_FUNCTION_25_25(uint64_t a1)
{
  v4 = *(v2 - 152);

  return sub_216681B04(a1, v4, v1);
}

uint64_t OUTLINED_FUNCTION_25_27()
{

  return sub_21677A3F0(v1, v0);
}

uint64_t OUTLINED_FUNCTION_25_30()
{

  return sub_21700CF44();
}

uint64_t OUTLINED_FUNCTION_25_33()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_2_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_25_37()
{

  return sub_21700CE04();
}

uint64_t OUTLINED_FUNCTION_25_41()
{

  return sub_2166B8588();
}

uint64_t OUTLINED_FUNCTION_25_42()
{
  *(v1 + 872) = *(v6 + *(v5 + 44));
  *(v1 + 216) = v7;
  *(v1 + 224) = v4;
  *(v1 + 232) = v3;
  *(v1 + 240) = v2;
  return v0 + 24;
}

uint64_t OUTLINED_FUNCTION_25_43(uint64_t result)
{
  v4 = v1 + *(result + 36);
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_44()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_25_47()
{
}

uint64_t OUTLINED_FUNCTION_25_48()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_50()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_25_51()
{
}

uint64_t OUTLINED_FUNCTION_25_52()
{
  *(v0 + 24) = sub_216E665A0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_25_53(unint64_t *a1)
{

  return sub_2166D9530(a1, v1);
}

uint64_t OUTLINED_FUNCTION_25_55()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_25_58(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;

  return type metadata accessor for ReplayPage();
}

uint64_t OUTLINED_FUNCTION_25_59()
{
  type metadata accessor for CircleLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_25_61()
{

  return sub_2168282D4(v0 + v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_25_63(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  *v2 = 0;
  v2[1] = 0;
  return 0;
}

uint64_t OUTLINED_FUNCTION_25_65()
{
  type metadata accessor for SquareLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

__n128 OUTLINED_FUNCTION_85(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 - 320) = *a1;
  *(v1 - 336) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return sub_2170067A4();
}

unint64_t OUTLINED_FUNCTION_85_4()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 80);

  return sub_2166A85FC(v2, v3, (v0 - 72));
}

uint64_t OUTLINED_FUNCTION_85_5()
{

  return sub_21700F8F4();
}

__n128 OUTLINED_FUNCTION_85_6@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = result;
  *(a1 + 24) = v4;
  *(a1 + 40) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_85_7(unint64_t *a1)
{

  return sub_2168CB86C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_85_10(uint64_t a1)
{
  *(v1 + 208) = a1;
}

void *OUTLINED_FUNCTION_85_11(void *a1)
{

  return memcpy(a1, (v1 - 200), 0x69uLL);
}

void OUTLINED_FUNCTION_85_12()
{

  sub_216CD3374();
}

void OUTLINED_FUNCTION_190_0()
{
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return sub_2166997CC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_7_20()
{

  return sub_21681D394(v0, type metadata accessor for ContextAccessoryButton);
}

uint64_t OUTLINED_FUNCTION_7_21(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_7_22()
{
}

uint64_t OUTLINED_FUNCTION_7_26()
{
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return sub_2170068C4();
}

uint64_t OUTLINED_FUNCTION_7_30()
{
}

uint64_t OUTLINED_FUNCTION_7_33()
{

  return sub_21700CE04();
}

uint64_t OUTLINED_FUNCTION_7_34()
{
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;

  return sub_21700D854();
}

uint64_t OUTLINED_FUNCTION_7_36()
{
}

uint64_t OUTLINED_FUNCTION_7_38()
{

  return sub_216948150(v0, type metadata accessor for MusicAppDestination.SharePageDescriptor);
}

id OUTLINED_FUNCTION_7_39(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_7_42()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_43()
{
  v2 = *(v0 + *(v1 + 20) + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_7_45(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_7_48()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_49()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_50()
{

  return sub_21700CC54();
}

void OUTLINED_FUNCTION_7_51()
{

  sub_216AB9CD0();
}

uint64_t OUTLINED_FUNCTION_7_52()
{

  return sub_21700D284();
}

uint64_t OUTLINED_FUNCTION_7_53(uint64_t a1)
{

  return sub_216AB9A60(a1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_7_57()
{

  return sub_217006AC4();
}

uint64_t OUTLINED_FUNCTION_7_58()
{

  return sub_2166A6EA4();
}

void OUTLINED_FUNCTION_7_60(unint64_t a1@<X8>)
{

  sub_21693843C(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_7_61()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_7_62()
{
}

uint64_t OUTLINED_FUNCTION_7_65()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_66()
{
}

uint64_t OUTLINED_FUNCTION_7_69()
{

  return sub_216ACB1D0(v0, type metadata accessor for Page);
}

uint64_t OUTLINED_FUNCTION_7_73(uint64_t result)
{
  *(result + 8) = sub_216B101C4;
  *(v2 + 16) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_1(unint64_t *a1, uint64_t *a2)
{

  return sub_2166D9530(a1, a2);
}

id OUTLINED_FUNCTION_7_78(uint64_t a1)
{

  return [v1 (v3 + 3192)];
}

uint64_t OUTLINED_FUNCTION_7_80()
{

  return sub_216B7BC64();
}

uint64_t OUTLINED_FUNCTION_7_83()
{
  *(v1 + 168) = *(v2 + 8);
  *(v1 + 176) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t OUTLINED_FUNCTION_7_84()
{

  return type metadata accessor for SocialFindFriendsController.Friend(0);
}

uint64_t OUTLINED_FUNCTION_7_85()
{
  sub_2166B8588();
}

unint64_t OUTLINED_FUNCTION_7_89(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v4 + 4) = v5;
  *(v4 + 12) = 2082;

  return sub_2166A85FC(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_7_90()
{
}

uint64_t OUTLINED_FUNCTION_7_91()
{

  return swift_once();
}

id OUTLINED_FUNCTION_7_93(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_2166F1E10(va, v10);
}

uint64_t OUTLINED_FUNCTION_7_96()
{

  return sub_216C7E188(v0, type metadata accessor for Artwork);
}

uint64_t OUTLINED_FUNCTION_7_98()
{

  return sub_2170081B4();
}

uint64_t OUTLINED_FUNCTION_7_99()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_101()
{
  v2 = *(v0 + 136);

  return sub_216CC31A8(v2, type metadata accessor for PresentSheetAction);
}

uint64_t OUTLINED_FUNCTION_7_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v5;

  return sub_216DDA0F4(a1, v7);
}

uint64_t OUTLINED_FUNCTION_561()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_106()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_7_109(const char *a1, uint64_t a2, int a3)
{

  return sub_216BD7948(v4, a1, a2, a3, v3);
}

uint64_t OUTLINED_FUNCTION_7_114()
{

  return sub_21700CE04();
}

uint64_t OUTLINED_FUNCTION_7_116()
{

  return type metadata accessor for ObjectGraph();
}

uint64_t OUTLINED_FUNCTION_7_122()
{
  v3 = *(v1 - 100) & 1;

  return sub_216BE5AD4(v3, v0);
}

uint64_t OUTLINED_FUNCTION_7_123()
{

  return sub_217007A44();
}

uint64_t OUTLINED_FUNCTION_7_126()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_131(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;

  return type metadata accessor for ItemMetricsData();
}

uint64_t OUTLINED_FUNCTION_7_136()
{
  type metadata accessor for SocialCardLockup._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_137()
{

  return swift_beginAccess();
}

uint64_t type metadata accessor for BootstrapState()
{
  result = qword_280E43818;
  if (!qword_280E43818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216683870()
{
  sub_216683900();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_216683900()
{
  if (!qword_280E48460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5390);
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E48460);
    }
  }
}

uint64_t sub_216683974()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - v3;
  v5 = OBJC_IVAR____TtC7MusicUI14BootstrapState__state;
  v7[2] = 0;
  v7[3] = 0;
  v7[1] = 0xF000000000000007;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5390);
  sub_217007DA4();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t sub_216683A80(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_20(a1, a2, a3);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return v3;
}

uint64_t OUTLINED_FUNCTION_4_6()
{
  v2 = v0[15];
  v3 = v0[16];
  v4 = *(v0[14] + *(v0[32] + 28));

  return sub_2167A8FCC(v2, 0, v4, 0, v3);
}

uint64_t OUTLINED_FUNCTION_120_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return sub_21678823C(v0, type metadata accessor for ContentDescriptor);
}

uint64_t OUTLINED_FUNCTION_4_12(uint64_t a1)
{
  v4 = *(v1 - 184);

  return sub_2167A6654(v4, a1, type metadata accessor for StartSocialOnboardingActionIntent);
}

uint64_t OUTLINED_FUNCTION_4_13()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_4_14()
{
  v4 = *(v2 - 280);
  v5 = *(v2 - 272);
  v6 = *(v2 - 264);

  return sub_2166C64F0(v0, v1, v5, v6, v4);
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_4_22()
{

  return sub_21700F364();
}

uint64_t OUTLINED_FUNCTION_34_1(unint64_t *a1, uint64_t *a2)
{

  return sub_2166D9530(a1, a2);
}

void OUTLINED_FUNCTION_50_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_26()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_4_28()
{
  *(v0 - 96) = 0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return 0;
}

uint64_t OUTLINED_FUNCTION_94_2()
{

  return sub_2170066D4();
}

uint64_t OUTLINED_FUNCTION_4_30(uint64_t result)
{
  v2 = *(v1 - 136) + 32;
  *(v1 - 152) = result;
  *(v1 - 144) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_11@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_4_34()
{

  return sub_21691A0E4(v0, type metadata accessor for ContentDescriptor);
}

uint64_t OUTLINED_FUNCTION_4_36(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_4_37()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_52()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_4_54(uint64_t a1)
{
  *(v1 - 168) = a1;

  return sub_21700CC54();
}

void OUTLINED_FUNCTION_4_58(uint64_t a1@<X8>)
{
  v1[3] = v3;
  v1[4] = a1;
  *v1 = v2;
}

uint64_t OUTLINED_FUNCTION_4_60()
{
  *(v0 + 16) = v3;
  sub_2166A0F18((v6 - 128), v0 + v2 * v5 + 32);

  return sub_2169FB890(v1, v4);
}

__n128 OUTLINED_FUNCTION_4_61(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  *v13 = a13.n128_u32[0];
  *(v14 - 88) = 46;
  *(v14 - 80) = 0xE100000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_62()
{

  return sub_21700CE04();
}

uint64_t OUTLINED_FUNCTION_4_63()
{

  return sub_216A12EBC(v0, type metadata accessor for FlowAction.Destination);
}

uint64_t OUTLINED_FUNCTION_4_68()
{
}

uint64_t OUTLINED_FUNCTION_4_69()
{
  *(v1 - 144) = v0;

  return sub_21700E2E4();
}

uint64_t OUTLINED_FUNCTION_4_70(unint64_t *a1)
{

  return sub_216A5C758(a1, v1, v2, sub_216A5C55C);
}

uint64_t OUTLINED_FUNCTION_4_71()
{

  return sub_21700CCA4();
}

uint64_t OUTLINED_FUNCTION_4_72()
{

  return sub_21700D1D4();
}

uint64_t OUTLINED_FUNCTION_245()
{
}

uint64_t OUTLINED_FUNCTION_4_76()
{
}

uint64_t OUTLINED_FUNCTION_4_80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  sub_2167759F4(a1);
  sub_21667E91C(v4);
  return v3;
}

uint64_t OUTLINED_FUNCTION_4_85()
{

  return sub_2170082B4();
}

uint64_t OUTLINED_FUNCTION_4_87()
{

  return sub_216B32ED8(v2, v1, v0, (v4 - 81), v3);
}

uint64_t OUTLINED_FUNCTION_4_90()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_4_91()
{
  sub_21678817C(v2, v1, v0 & 1);
}

uint64_t OUTLINED_FUNCTION_4_93()
{

  return sub_216B61AA4(v0, type metadata accessor for ReplayYearPeriodList);
}

uint64_t OUTLINED_FUNCTION_4_95()
{

  return sub_21700D9F4();
}

uint64_t OUTLINED_FUNCTION_4_99(uint64_t result, uint64_t a2)
{
  *(v2 - 288) = result;
  *(v2 - 296) = a2;
  return result;
}

void OUTLINED_FUNCTION_4_101(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

void OUTLINED_FUNCTION_4_102()
{

  JUMPOUT(0x21CEA1440);
}

uint64_t OUTLINED_FUNCTION_4_103()
{

  return sub_216BAC0D4(v0, type metadata accessor for FlowAction);
}

__n128 OUTLINED_FUNCTION_4_114()
{
  result = *(v0[2].n128_u64[1] + *(v0[4].n128_u64[0] + 40));
  v0[1] = result;
  v0[2].n128_u64[0] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_115(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_216E46F18(v11, a10, v10);
}

uint64_t OUTLINED_FUNCTION_4_116()
{
}

uint64_t OUTLINED_FUNCTION_4_119()
{
}

uint64_t OUTLINED_FUNCTION_4_125()
{

  return sub_21700E094();
}

uint64_t OUTLINED_FUNCTION_4_127()
{

  return sub_216CA1614(v0, type metadata accessor for SongTrackLockup);
}

uint64_t OUTLINED_FUNCTION_4_128@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_216684F5C(v4, v5);
}

uint64_t OUTLINED_FUNCTION_4_129(uint64_t a1)
{

  return sub_216CBE418(v2, a1 + v1, type metadata accessor for HorizontalLockupView);
}

void OUTLINED_FUNCTION_4_130()
{
  *(v4 - 216) = v2;
  *(v4 - 208) = v1;
  *(v4 - 200) = v0;
  *(v4 - 88) = v3;

  sub_2166F4258();
}

uint64_t OUTLINED_FUNCTION_4_136()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_4_140()
{
  sub_21677A3F0(v1, v0);
  sub_21677A3F0(v3, v2);
  return v1;
}

__n128 OUTLINED_FUNCTION_4_141(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __int128 a10, char a11)
{
  result = a9;
  *v11 = a9;
  *(v11 + 16) = a10;
  *(v11 + 32) = a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_146()
{

  return sub_216EAA7E4(v0, type metadata accessor for ContentDescriptor);
}

uint64_t OUTLINED_FUNCTION_4_152()
{

  return sub_21700F7D4();
}

uint64_t OUTLINED_FUNCTION_4_153()
{
  v5 = *(v3 - 152);

  return sub_21680E444(v1, v5, v0, v2, 0);
}

uint64_t OUTLINED_FUNCTION_4_155()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_4_160(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for AlbumTrackLockup(0);
  *(a1 + 80) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_170()
{

  return swift_once();
}

uint64_t sub_216684F5C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_5()
{
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return sub_217007C94();
}

_OWORD *OUTLINED_FUNCTION_65_1()
{

  return sub_2166EF9C4((v0 - 296), (v0 - 328));
}

uint64_t OUTLINED_FUNCTION_8_8(uint64_t a1)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = a1;

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_8_13()
{
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return sub_21700F7D4();
}

uint64_t OUTLINED_FUNCTION_8_20()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_22()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 936);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 976);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1016);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1056);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1096);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1176);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1216);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1256);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1296);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1376);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1416);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1496);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1576);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1816);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1776);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1736);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1696);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1656);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1616);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1536);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1456);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 896);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 856);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 776);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 736);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 696);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 656);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 616);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 536);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 496);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 456);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 416);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1336);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + 816);
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_8_28()
{
}

uint64_t OUTLINED_FUNCTION_8_32()
{
  sub_21677A510(v0, v1);
}

uint64_t OUTLINED_FUNCTION_33_4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_8_33()
{

  return sub_21691E7C4(v0, type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom);
}

unint64_t OUTLINED_FUNCTION_8_34(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_36()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_39()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_8_43()
{

  sub_216AB9CD0();
}

void OUTLINED_FUNCTION_19_6()
{

  JUMPOUT(0x21CEA1440);
}

uint64_t OUTLINED_FUNCTION_8_46()
{

  return sub_21700F764();
}

uint64_t OUTLINED_FUNCTION_8_51()
{

  return sub_21700DF24();
}

BOOL OUTLINED_FUNCTION_8_64(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_8_65()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_8_69()
{

  return sub_21700DF14();
}

uint64_t OUTLINED_FUNCTION_8_71()
{

  return swift_getEnumCaseMultiPayload();
}

__n128 OUTLINED_FUNCTION_8_76()
{
  result = *(v1 - 120);
  v3 = *(v1 - 104);
  *(v0 + 16) = result;
  *(v0 + 32) = v3;
  *(v0 + 48) = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_77()
{
  *(v0 + 104) = 0;

  return sub_217007DA4();
}

unint64_t OUTLINED_FUNCTION_8_79()
{

  return sub_2166A85FC(0x292874696E69, 0xE600000000000000, (v0 - 88));
}

uint64_t OUTLINED_FUNCTION_8_81()
{

  return swift_getEnumCaseMultiPayload();
}

double OUTLINED_FUNCTION_8_82(double a1)
{
  result = v2 + a1;
  *(v1 - 288) = *(v1 - 288) + result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_83()
{
  v2 = *(v0 + 368);

  return sub_216BD7CD0(v2, type metadata accessor for SocialProfileHorizontalLockupSection);
}

uint64_t OUTLINED_FUNCTION_8_85()
{

  return type metadata accessor for SocialFindFriendsController.Friend(0);
}

uint64_t OUTLINED_FUNCTION_8_88()
{

  return sub_21700CCC4();
}

uint64_t OUTLINED_FUNCTION_8_89()
{

  return type metadata accessor for SocialCardLockup();
}

uint64_t OUTLINED_FUNCTION_8_94(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 40) = 0;
  *(result + 48) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_96()
{

  return sub_216C876C8(v0, type metadata accessor for Section.Header.ContainerPlayableItemsHeader);
}

uint64_t OUTLINED_FUNCTION_8_99()
{

  return sub_216DEDB6C(v3 + v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_8_104(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_106()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_110(unint64_t *a1)
{

  return sub_2166D9530(a1, v1);
}

uint64_t OUTLINED_FUNCTION_8_112()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_8_115()
{

  return sub_216683A80(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_8_120()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_2168282D4(v2, &a2 - a1, v3);
}

uint64_t OUTLINED_FUNCTION_8_131()
{
  type metadata accessor for SquareLockup._StorageClass(0);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_8_132(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v3 = (v2 + a1);
  if (*(v3 + 8))
  {
    v4 = 0;
  }

  else
  {
    v4 = *v3;
  }

  *v1 = v4;
}

uint64_t OUTLINED_FUNCTION_8_133()
{
  type metadata accessor for Page.Header._StorageClass(0);

  return swift_allocObject();
}

uint64_t sub_216685F4C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_216685F8C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    sub_216685F4C(255, v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_81_1()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_81_2()
{

  return sub_21700E094();
}

uint64_t OUTLINED_FUNCTION_81_4()
{

  return sub_2168CBAB0(v0, _s6LockupVMa);
}

uint64_t OUTLINED_FUNCTION_81_5()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_6()
{
  v4 = *(v2 - 208);

  return sub_216681B04(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_81_8()
{
}

uint64_t OUTLINED_FUNCTION_81_9()
{

  return swift_getEnumCaseMultiPayload();
}

unint64_t sub_216686174(uint64_t a1)
{
  result = sub_216685F8C(&unk_280E29BB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2166861C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_20(a1, a2, a3);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return v3;
}

uint64_t sub_216686254()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_216686344()
{
  OUTLINED_FUNCTION_5_6();
  (*(*(*(v2 + 120) - 8) + 32))(v0 + *(v1 + 136));
  return v0;
}

uint64_t sub_2166863B0()
{
  v0 = swift_allocObject();
  sub_216686344();
  return v0;
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{
  *(v2 - 168) = v1;
  *(v2 - 160) = a1;

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return sub_21678823C(v0, type metadata accessor for Artwork);
}

char *OUTLINED_FUNCTION_5_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v25 = *(v23 + 160);
  *v25 = *(v24 - 104);
  *(a21 + 8) = a23;
  return v25 + *(a19 + 28);
}

uint64_t OUTLINED_FUNCTION_5_14(uint64_t a1)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = a1;
  *(v2 - 272) = v1;
  *(v2 - 264) = a1;

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_5_17(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

__n128 OUTLINED_FUNCTION_5_18@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 136);
  *a1 = *(v1 - 152);
  *(a1 + 16) = v2;
  result = *(v1 - 120);
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_21()
{
  v1 = *(v0 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_206()
{
}

uint64_t OUTLINED_FUNCTION_241()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_31()
{
}

uint64_t OUTLINED_FUNCTION_5_37()
{
}

uint64_t OUTLINED_FUNCTION_5_41()
{
}

uint64_t OUTLINED_FUNCTION_5_44()
{
}

id OUTLINED_FUNCTION_5_47()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_5_48()
{

  return sub_216980254(v0, type metadata accessor for LinkComponentModel);
}

void OUTLINED_FUNCTION_5_51(uint64_t a1@<X8>)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_5_52()
{

  return sub_21700CC54();
}

id OUTLINED_FUNCTION_5_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2166F1E10(&a9, v9);
}

uint64_t OUTLINED_FUNCTION_5_56()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_5_58()
{

  return sub_21700F6A4();
}

void *OUTLINED_FUNCTION_5_61(void *result)
{
  result[4] = v7;
  result[5] = v5;
  result[6] = v3;
  result[7] = v1;
  result[8] = v6;
  result[9] = v4;
  result[10] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_62()
{
}

uint64_t OUTLINED_FUNCTION_5_65(unint64_t *a1, uint64_t *a2)
{

  return sub_2166D9530(a1, a2);
}

uint64_t OUTLINED_FUNCTION_5_66()
{

  return sub_216A7ECD0(v0, type metadata accessor for SuperHeroLockup);
}

uint64_t OUTLINED_FUNCTION_5_69()
{
  *(v2 + 192) = *(v0 + 8);
  *(v2 + 200) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_5_77()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_82()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_5_85()
{

  sub_21693B048(v1, v3, v2, v0);
}

uint64_t OUTLINED_FUNCTION_5_88()
{

  return type metadata accessor for GoToArtistContext(0);
}

uint64_t OUTLINED_FUNCTION_5_90()
{

  return sub_216BAC0D4(v0, type metadata accessor for Artwork);
}

uint64_t OUTLINED_FUNCTION_5_91@<X0>(uint64_t a1@<X8>)
{

  return sub_21691775C(v2, v1 - a1);
}

double OUTLINED_FUNCTION_5_92@<D0>(uint64_t a1@<X8>, double result@<D0>)
{
  *(a1 + 48) = v2;
  *(a1 + 56) = 0;
  *(a1 + 64) = v4;
  *(a1 + 72) = result;
  *(a1 + 80) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_97(uint64_t a1)
{

  return sub_2166C24DC(v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_5_98(unint64_t *a1, uint64_t a2)
{

  return sub_21669E098(a1, a2);
}

uint64_t OUTLINED_FUNCTION_5_103()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_59_2()
{

  return sub_21700F7D4();
}

__n128 OUTLINED_FUNCTION_5_109()
{
  v1 = v0[2].n128_u64[1];
  result = *(v1 + *(type metadata accessor for LoadablePageView() + 40));
  v0[1] = result;
  v0[2].n128_u64[0] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_111(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *v9 = a1;

  return sub_21698F234(&a9, a1 + 16);
}

void OUTLINED_FUNCTION_5_119()
{
  *(v4 + 16) = v2;
  v5 = v4 + 16 * v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v0;
}

uint64_t OUTLINED_FUNCTION_5_124()
{

  return sub_21700D734();
}

void OUTLINED_FUNCTION_5_126()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x21CEA1440);
}

uint64_t OUTLINED_FUNCTION_5_144()
{

  return sub_21700A1C4();
}

void OUTLINED_FUNCTION_5_147()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

void OUTLINED_FUNCTION_5_154()
{

  JUMPOUT(0x21CE9F490);
}

uint64_t OUTLINED_FUNCTION_46_2()
{
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_46_3()
{
  *(v1 - 360) = *(v1 + 56);
  *(v1 - 624) = *(v1 + 48);
  *(v1 - 632) = v0;

  return sub_21700B934();
}

uint64_t OUTLINED_FUNCTION_96()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return type metadata accessor for JSIntentDispatcher();
}

uint64_t OUTLINED_FUNCTION_46_8@<X0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  return sub_216684F5C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_46_9()
{
}

uint64_t OUTLINED_FUNCTION_46_11()
{

  return sub_216697664(v0, v1);
}

uint64_t OUTLINED_FUNCTION_46_12()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_46_13()
{
}

uint64_t OUTLINED_FUNCTION_46_14()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_46_15(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_216681B04(v3 + v4, v5 - 128, a3);
}

uint64_t OUTLINED_FUNCTION_46_19()
{
}

uint64_t OUTLINED_FUNCTION_46_20()
{

  return sub_217007F04();
}

id OUTLINED_FUNCTION_46_26@<X0>(uint64_t a1@<X8>)
{
  v2[101] = v1;
  v2[100] = a1;
  v2[35] = v3;

  return v3;
}

char *OUTLINED_FUNCTION_46_30()
{

  return sub_216E672A4();
}

void OUTLINED_FUNCTION_46_34(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = v1;
  *(v3 + 4) = 0;
}

uint64_t OUTLINED_FUNCTION_46_35(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

void OUTLINED_FUNCTION_183()
{
  v4 = (v3 + *(v0 + 24));
  *v4 = v2;
  v4[1] = v1;
  *(v3 + *(v0 + 28)) = 0;
}

uint64_t OUTLINED_FUNCTION_183_0()
{

  return sub_216687978();
}

uint64_t OUTLINED_FUNCTION_183_1()
{
}

uint64_t sub_2166879CC()
{
  type metadata accessor for PresentationItem();
  sub_21700F164();
  result = sub_217007E14();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_216687AB4()
{
  result = type metadata accessor for PresentationItem.Destination();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MusicAppDestinationContext(319);
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_216687B8C()
{
  sub_216687D10();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      if (v2 <= 0x3F)
      {
        sub_216AF6304(319, qword_280E3C660, type metadata accessor for CommerceWebViewModel);
        if (v3 <= 0x3F)
        {
          type metadata accessor for FlowAction(319);
          if (v4 <= 0x3F)
          {
            sub_216AF6304(319, qword_280E3D8B8, type metadata accessor for MarketingSheetModel);
            if (v5 <= 0x3F)
            {
              type metadata accessor for SubscriptionPurchaseViewModel();
              if (v6 <= 0x3F)
              {
                sub_216AF6304(319, &qword_280E485D0, MEMORY[0x277CEE810]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_216687D10()
{
  if (!qword_280E2A6B0)
  {
    type metadata accessor for ObjectGraph();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E2A6B0);
    }
  }
}

uint64_t type metadata accessor for ObjectGraph()
{
  result = qword_280E450C8;
  if (!qword_280E450C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PlaylistAddableItem()
{
  result = qword_280E3D738;
  if (!qword_280E3D738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216687E64()
{
  result = sub_21700C924();
  if (v1 <= 0x3F)
  {
    result = sub_21700C084();
    if (v2 <= 0x3F)
    {
      result = sub_21700BA44();
      if (v3 <= 0x3F)
      {
        result = sub_21700C1E4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for ReportableMusicItem()
{
  result = qword_280E48358;
  if (!qword_280E48358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216687F4C()
{
  result = sub_21700C924();
  if (v1 <= 0x3F)
  {
    result = sub_217006E94();
    if (v2 <= 0x3F)
    {
      result = sub_21700C084();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for SocialProfileDescriptor(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_216688010(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216688048()
{
  sub_2166880FC();
  if (v0 <= 0x3F)
  {
    sub_216688154();
    if (v1 <= 0x3F)
    {
      sub_217005EF4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2166880FC()
{
  if (!qword_280E2A390)
  {
    sub_21700C4B4();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A390);
    }
  }
}

void sub_216688154()
{
  if (!qword_280E2A070)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A070);
    }
  }
}

uint64_t sub_2166881C4()
{
  result = sub_21700C1E4();
  if (v1 <= 0x3F)
  {
    result = sub_21700C384();
    if (v2 <= 0x3F)
    {
      result = sub_2170072A4();
      if (v3 <= 0x3F)
      {
        result = sub_21700C554();
        if (v4 <= 0x3F)
        {
          result = sub_217006F54();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for MusicFriendsInviteDescriptor(319);
            if (v6 <= 0x3F)
            {
              result = sub_21700C254();
              if (v7 <= 0x3F)
              {
                result = sub_217006B84();
                if (v8 <= 0x3F)
                {
                  result = sub_21700BA44();
                  if (v9 <= 0x3F)
                  {
                    result = sub_21700C924();
                    if (v10 <= 0x3F)
                    {
                      result = sub_21700C994();
                      if (v11 <= 0x3F)
                      {
                        result = sub_21700BEA4();
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for ShareURLDescriptor(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for SocialProfileDescriptor(319);
                            if (v14 <= 0x3F)
                            {
                              result = sub_21700C084();
                              if (v15 <= 0x3F)
                              {
                                result = sub_21700C644();
                                if (v16 <= 0x3F)
                                {
                                  result = sub_21700C2F4();
                                  if (v17 <= 0x3F)
                                  {
                                    result = sub_2170073D4();
                                    if (v18 <= 0x3F)
                                    {
                                      result = sub_217007324();
                                      if (v19 <= 0x3F)
                                      {
                                        result = sub_217007264();
                                        if (v20 <= 0x3F)
                                        {
                                          result = sub_217007064();
                                          if (v21 <= 0x3F)
                                          {
                                            result = sub_2170070F4();
                                            if (v22 <= 0x3F)
                                            {
                                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                              return 0;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2166883E8()
{
  type metadata accessor for SocialProfileDescriptor(319);
  if (v0 <= 0x3F)
  {
    sub_216688154();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21668848C()
{
  sub_2166880FC();
  if (v0 <= 0x3F)
  {
    sub_216688560(319, &qword_280E452C8);
    if (v1 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2A070);
      if (v2 <= 0x3F)
      {
        sub_217005EF4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216688560(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21700F164();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2166885CC()
{
  sub_216E260F4(319, &qword_280E4A510, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_216688680()
{
  if (!qword_280E4A510)
  {
    sub_217005EF4();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E4A510);
    }
  }
}

uint64_t type metadata accessor for CommerceWebViewModel()
{
  result = qword_280E3C768;
  if (!qword_280E3C768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216688724()
{
  result = sub_217005EF4();
  if (v1 <= 0x3F)
  {
    result = sub_217006714();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_21668883C()
{
  sub_21700D284();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FlowAction.Destination(319);
    if (v1 <= 0x3F)
    {
      sub_216692684(319, &qword_280E4A510, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_216692684(319, &qword_280E44870, type metadata accessor for ReferrerInfo, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2166928C4();
          if (v4 <= 0x3F)
          {
            sub_216692684(319, qword_280E2C858, type metadata accessor for Page.Header, MEMORY[0x277D83D88]);
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

uint64_t sub_2166889E8()
{
  sub_216688C54();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216ED9548();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v1 = type metadata accessor for ContentDescriptor();
      if (v5 <= 0x3F)
      {
        v6 = type metadata accessor for GoToArtistContext(319);
        if (v7 > 0x3F)
        {
          return v6;
        }

        sub_216ED95C8();
        if (v8 > 0x3F)
        {
          return v6;
        }

        v6 = sub_21700C084();
        if (v9 > 0x3F)
        {
          return v6;
        }

        v6 = sub_2170073D4();
        if (v10 > 0x3F)
        {
          return v6;
        }

        v6 = sub_217007324();
        if (v11 > 0x3F)
        {
          return v6;
        }

        v6 = sub_21700C384();
        if (v12 > 0x3F)
        {
          return v6;
        }

        v6 = sub_2170072A4();
        if (v13 > 0x3F)
        {
          return v6;
        }

        v6 = sub_217006F54();
        if (v14 > 0x3F)
        {
          return v6;
        }

        sub_216ED9648();
        if (v15 > 0x3F)
        {
          return v6;
        }

        sub_216ED96C8();
        if (v16 > 0x3F)
        {
          return v6;
        }

        sub_2166924BC();
        if (v17 > 0x3F)
        {
          return v6;
        }

        sub_216781FA0();
        if (v18 > 0x3F)
        {
          return v6;
        }

        sub_216782020();
        if (v19 > 0x3F)
        {
          return v6;
        }

        v6 = sub_21700C734();
        if (v20 > 0x3F)
        {
          return v6;
        }

        sub_216692530();
        if (v21 > 0x3F)
        {
          return v6;
        }

        v6 = type metadata accessor for ReportableMusicItem();
        if (v22 > 0x3F)
        {
          return v6;
        }

        else
        {
          sub_2166925B8();
          v1 = v23;
          if (v24 <= 0x3F)
          {
            sub_2166926E8();
            v1 = v25;
            if (v26 <= 0x3F)
            {
              sub_216692760();
              v1 = v27;
              if (v28 <= 0x3F)
              {
                v1 = sub_2166927CC();
                if (v29 <= 0x3F)
                {
                  v1 = sub_2170077F4();
                  if (v30 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_216688C54()
{
  if (!qword_280E2FA78)
  {
    type metadata accessor for Page(255);
    sub_216692380(&qword_280E2C550, type metadata accessor for Page);
    v0 = type metadata accessor for AnyProtoRequestConvertibleIntent();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2FA78);
    }
  }
}

uint64_t type metadata accessor for Page(uint64_t a1)
{
  return sub_216688010(a1, &unk_280E2C538);
}

{
  return sub_216688010(a1, qword_280E48898);
}

void sub_216688D08()
{
  sub_21700D194();
  if (v0 <= 0x3F)
  {
    sub_216689450(319, qword_280E2C858, type metadata accessor for Page.Header, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_216689450(319, qword_280E2C950, type metadata accessor for Page.Footer, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_216689450(319, &qword_280E29E68, _s7SectionVMa, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_21668FAC0(319, &qword_27CAC1D00, &qword_27CAC1D08);
          if (v4 <= 0x3F)
          {
            sub_21668FAC0(319, &qword_27CABFCF0, &qword_27CABFCF8);
            if (v5 <= 0x3F)
            {
              sub_21668FAC0(319, &qword_280E2A0B8, &qword_27CAC1D10);
              if (v6 <= 0x3F)
              {
                sub_21668FAC0(319, &qword_280E29F50, &qword_27CAB8E18);
                if (v7 <= 0x3F)
                {
                  sub_21668FAC0(319, &qword_280E2A2A8, &qword_27CAB6D68);
                  if (v8 <= 0x3F)
                  {
                    sub_216688560(319, &qword_280E2A070);
                    if (v9 <= 0x3F)
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
    }
  }
}

uint64_t type metadata accessor for Page.Header(uint64_t a1)
{
  return sub_216688010(a1, &unk_280E2C8B0);
}

{
  return sub_216688010(a1, qword_280E48930);
}

void sub_216688F94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216688FE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21668904C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166890A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_42_0();
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166890F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216689144(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_42_0();
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216689194(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166891E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21668923C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216689290(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2166892F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216689348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2166893AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216689400(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_42_0();
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216689450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2166894B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216689508(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_42_0();
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216689558(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166895AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216689600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216689664(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166896B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_42_0();
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216689708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21668976C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166897C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_42_0();
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216689810(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216689864(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166898B8()
{
  sub_216689450(319, &qword_280E2A1B8, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    if (v1 <= 0x3F)
    {
      sub_21668FAC0(319, &qword_280E29F88, &qword_27CAC02C8);
      if (v2 <= 0x3F)
      {
        sub_216688560(319, &qword_280E2C8E8);
        if (v3 <= 0x3F)
        {
          sub_216688560(319, &qword_280E44FC8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for Page.Footer(uint64_t a1)
{
  return sub_216688010(a1, &unk_280E2C988);
}

{
  return sub_216688010(a1, qword_280E48B70);
}

void sub_216689A40()
{
  sub_216688560(319, &qword_280E2A070);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LinkComponentModel();
    if (v1 <= 0x3F)
    {
      sub_216689450(319, &qword_280E3EC00, type metadata accessor for LinkComponentModel, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for LinkComponentModel()
{
  result = qword_280E3EC38;
  if (!qword_280E3EC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216689B68()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    sub_216689C64();
    if (v1 <= 0x3F)
    {
      sub_216688154();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216689C0C()
{
  if (!qword_280E2A1B8)
  {
    sub_21700D7A4();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A1B8);
    }
  }
}

void sub_216689C64()
{
  if (!qword_280E2A2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D68);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A2A8);
    }
  }
}

void sub_216689CE8()
{
  sub_2166896B8(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  if (v0 <= 0x3F)
  {
    sub_2166896B8(319, qword_280E2C6D0, _s7SectionV6HeaderVMa);
    if (v1 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2C640);
      if (v2 <= 0x3F)
      {
        sub_216688560(319, &qword_280E2C7D8);
        if (v3 <= 0x3F)
        {
          sub_216688560(319, &qword_280E2C7C8);
          if (v4 <= 0x3F)
          {
            sub_21668EDA4();
            if (v5 <= 0x3F)
            {
              type metadata accessor for SectionContent();
              if (v6 <= 0x3F)
              {
                sub_216688560(319, &qword_280E36030);
                if (v7 <= 0x3F)
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
}

void sub_216689E94()
{
  sub_2166896B8(319, qword_280E2C788, _s7SectionV6HeaderV12HeaderLockupOMa);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_216689F2C()
{
  result = type metadata accessor for ComposerSectionHeader();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DefaultSectionHeader();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216689FB4()
{
  sub_21668904C(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688560(319, qword_280E3F450);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_216688560(319, &qword_280E29DB8);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_216689C64();
        v1 = v8;
        if (v9 <= 0x3F)
        {
          sub_21668904C(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_21668A148()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for ComposerSectionHeader()
{
  result = qword_280E3AB08;
  if (!qword_280E3AB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668A268()
{
  sub_216688680();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata accessor for DefaultSectionHeader()
{
  result = qword_280E3C590;
  if (!qword_280E3C590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668A338(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21668A38C()
{
  if (!qword_280E2BF20)
  {
    type metadata accessor for Artwork();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2BF20);
    }
  }
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_38_3()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_38_4()
{

  return type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
}

uint64_t OUTLINED_FUNCTION_38_5(uint64_t a1)
{

  return sub_2167E70B8(v1, a1);
}

uint64_t OUTLINED_FUNCTION_38_7()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_38_9()
{

  return sub_216697664(v1 - 208, v0);
}

uint64_t OUTLINED_FUNCTION_38_11()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_38_16()
{

  return sub_2166A6EA4();
}

void OUTLINED_FUNCTION_40_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_38_20()
{

  return sub_216A8C1D4();
}

_OWORD *OUTLINED_FUNCTION_38_23@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 328) = a1;
  *(v2 - 320) = v1;

  return sub_2166EF9C4((v2 - 328), (v2 - 200));
}

uint64_t OUTLINED_FUNCTION_38_24()
{
}

uint64_t OUTLINED_FUNCTION_38_31(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

void OUTLINED_FUNCTION_38_34(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

unint64_t OUTLINED_FUNCTION_38_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_2166A85FC(v4, v5, va);
}

uint64_t OUTLINED_FUNCTION_38_39(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_38_41(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_216683A80(v4, v3, a3);
}

uint64_t OUTLINED_FUNCTION_38_42()
{

  return sub_21700F574();
}

uint64_t OUTLINED_FUNCTION_57_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_38_44()
{

  return sub_21700F7D4();
}

uint64_t OUTLINED_FUNCTION_38_48(uint64_t a1)
{
  *(v1 + 24) = a1;

  return sub_2166A6EA4();
}

uint64_t OUTLINED_FUNCTION_38_49()
{

  return sub_216FCEA94();
}

uint64_t OUTLINED_FUNCTION_38_50()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_38_51()
{
  type metadata accessor for ContextAccessoryButton._StorageClass(0);

  return swift_allocObject();
}

void sub_21668A970()
{
  type metadata accessor for SectionChangeInstruction.Instruction(319);
  if (v0 <= 0x3F)
  {
    sub_216688560(319, &qword_280E36198);
    if (v1 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2A070);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21668AA2C()
{
  result = _s7SectionVMa(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SectionContent();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21668AAA0()
{
  result = sub_21700CDF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SectionContent()
{
  result = qword_280E42B80;
  if (!qword_280E42B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668AB68()
{
  sub_216689400(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_21668FAC0(319, &qword_280E29E70, &qword_27CAB8968);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_216689400(319, qword_280E33788, type metadata accessor for ModalPresentationDescriptor);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_21668FAC0(319, &qword_280E2A030, &qword_27CAB8950);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_216688560(319, qword_280E33BC8);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_216689400(319, &qword_280E2BF20, type metadata accessor for Artwork);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_216689400(319, qword_280E44408, type metadata accessor for VideoArtwork);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  sub_216689400(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
                  v1 = v17;
                  if (v18 <= 0x3F)
                  {
                    sub_216689400(319, &qword_280E3EC00, type metadata accessor for LinkComponentModel);
                    v1 = v19;
                    if (v20 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for VideoArtwork()
{
  result = qword_280E44438;
  if (!qword_280E44438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668AE60()
{
  if (!qword_280E2A0E0)
  {
    sub_2170071B4();
    sub_217006EC4();
    sub_21668AF0C(&qword_280E4A408, MEMORY[0x277D2ACB0]);
    v0 = sub_21700E3F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A0E0);
    }
  }
}

uint64_t sub_21668AF0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AnimatedTextListItem()
{
  result = qword_280E3CCA0;
  if (!qword_280E3CCA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668AFA0()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    sub_216B13A70();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21668B034(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700E984();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for AppsWithAccessComponentModel()
{
  result = qword_280E32780;
  if (!qword_280E32780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668B0D4()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    sub_21668B174();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21668B174()
{
  result = qword_280E2A2B0;
  if (!qword_280E2A2B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E2A2B0);
  }

  return result;
}

uint64_t type metadata accessor for ArtistDetailHeaderLockup()
{
  result = qword_280E36D60;
  if (!qword_280E36D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668B21C()
{
  sub_2166894B4(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2166894B4(319, &qword_280E2BF20, type metadata accessor for Artwork);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_216688560(319, &qword_280E29DE0);
        if (v8 > 0x3F)
        {
          return v7;
        }

        v7 = sub_2170061E4();
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_216689C64();
        if (v10 > 0x3F)
        {
          return v7;
        }

        sub_2166894B4(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
        if (v11 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_2166894B4(319, qword_280E44408, type metadata accessor for VideoArtwork);
          v1 = v12;
          if (v13 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for ArtistLatestReleaseLockup()
{
  result = qword_280E35C00;
  if (!qword_280E35C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668B434()
{
  sub_216688F94(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688154();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216689C64();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_216688F94(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_216688F94(319, &qword_280E2BF20, type metadata accessor for Artwork);
        if (v9 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for ArtistLatestReleaseAndTopSongsLockup()
{
  result = qword_280E2E330;
  if (!qword_280E2E330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668B5F4()
{
  sub_2166895AC(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2166895AC(319, qword_280E35BA8, type metadata accessor for ArtistLatestReleaseLockup);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2166895AC(319, qword_280E2C6D0, _s7SectionV6HeaderVMa);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_21668B720();
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_21668B720()
{
  if (!qword_280E29FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5648);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29FE8);
    }
  }
}

uint64_t type metadata accessor for TrackLockup()
{
  result = qword_280E44F78;
  if (!qword_280E44F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668B7D0()
{
  sub_2166890A0(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_21668FAC0(319, &qword_280E2A2A8, &qword_27CAB6D68);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2A070);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_21668FAC0(319, &qword_280E29E70, &qword_27CAB8968);
        v8 = v7;
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_216688560(319, qword_280E3D440);
        if (v11 > 0x3F)
        {
          return v10;
        }

        sub_216688560(319, &qword_280E29DA0);
        if (v12 > 0x3F)
        {
          return v10;
        }

        sub_216688560(319, &qword_280E29DB8);
        if (v13 > 0x3F)
        {
          return v10;
        }

        sub_2166890A0(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
        v8 = v14;
        if (v15 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_2166890A0(319, &qword_280E2BF20, type metadata accessor for Artwork);
          v1 = v16;
          if (v17 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for BubbleLockup()
{
  result = qword_280E44D98;
  if (!qword_280E44D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668BAA4()
{
  sub_216689864(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216689C64();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688154();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_216689864(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_216689864(319, qword_280E3F390, type metadata accessor for ColorSchemeArtwork);
        if (v9 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_216689864(319, &qword_280E2BF20, type metadata accessor for Artwork);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for ContainerDetailTracklistFooterLockup()
{
  result = qword_280E2E270;
  if (!qword_280E2E270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668BC84()
{
  sub_21668904C(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  if (v0 <= 0x3F)
  {
    sub_21668904C(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
    if (v1 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2A070);
      if (v2 <= 0x3F)
      {
        sub_216688560(319, qword_280E2E298);
        if (v3 <= 0x3F)
        {
          sub_21668BDB8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21668BDB8()
{
  if (!qword_280E2A030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8950);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A030);
    }
  }
}

uint64_t type metadata accessor for CuratorDetailHeaderComponentModel()
{
  result = qword_280E2F338;
  if (!qword_280E2F338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668BE68()
{
  sub_2166892F4(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  if (v0 <= 0x3F)
  {
    sub_216688154();
    if (v1 <= 0x3F)
    {
      sub_2166892F4(319, &qword_280E4A510, MEMORY[0x277CC9260]);
      if (v2 <= 0x3F)
      {
        sub_2166892F4(319, &qword_280E2BF20, type metadata accessor for Artwork);
        if (v3 <= 0x3F)
        {
          sub_2166892F4(319, qword_280E44408, type metadata accessor for VideoArtwork);
          if (v4 <= 0x3F)
          {
            sub_2166892F4(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
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

uint64_t type metadata accessor for EmptyStateLockup()
{
  result = qword_280E41360;
  if (!qword_280E41360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668C03C()
{
  sub_2166890F0(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  if (v0 <= 0x3F)
  {
    sub_216688560(319, qword_280E41388);
    if (v1 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2A070);
      if (v2 <= 0x3F)
      {
        sub_2166890F0(319, &qword_280E2BF20, type metadata accessor for Artwork);
        if (v3 <= 0x3F)
        {
          sub_2166890F0(319, qword_280E3F390, type metadata accessor for ColorSchemeArtwork);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for FlowcaseLockup()
{
  result = qword_280E435F8;
  if (!qword_280E435F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668C1E0()
{
  sub_21668923C(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216689C64();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688154();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_21668923C(319, &qword_280E2BF20, type metadata accessor for Artwork);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_21668923C(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for GradientListRowModel()
{
  result = qword_280E3C448;
  if (!qword_280E3C448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668C3B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21668C400()
{
  sub_21668C3B0(319, &qword_280E29EE8, &type metadata for GradientListRowModel.Component, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_216689C0C();
    if (v1 <= 0x3F)
    {
      sub_216689C64();
      if (v2 <= 0x3F)
      {
        sub_21668C3B0(319, &qword_280E42958, &type metadata for AccessoryButton, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for GroupedTextListLockup()
{
  result = qword_280E3A868;
  if (!qword_280E3A868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668C558()
{
  sub_216689810(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  if (v0 <= 0x3F)
  {
    sub_216689810(319, qword_280E33788, type metadata accessor for ModalPresentationDescriptor);
    if (v1 <= 0x3F)
    {
      sub_21668C634();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21668C634()
{
  if (!qword_280E29F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE2A0);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29F40);
    }
  }
}

uint64_t type metadata accessor for HeaderComponentModel()
{
  result = qword_280E3C388;
  if (!qword_280E3C388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668C6F4()
{
  sub_21668904C(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  if (v0 <= 0x3F)
  {
    sub_21668904C(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for HorizontalLockup()
{
  result = qword_280E410C0;
  if (!qword_280E410C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668C82C()
{
  sub_216688F94(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688560(319, qword_280E3F6C8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2A070);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_216689C64();
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_216688560(319, &qword_280E29DE0);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_216688F94(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
          if (v11 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_216688F94(319, &qword_280E2BF20, type metadata accessor for Artwork);
            v1 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for HorizontalPosterLockup()
{
  result = qword_280E39348;
  if (!qword_280E39348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668CA7C()
{
  sub_21668976C(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216689C64();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688560(319, qword_280E3F6C8);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_216688560(319, &qword_280E2A070);
      if (v8 > 0x3F)
      {
        return v7;
      }

      sub_21668976C(319, qword_280E3F390, type metadata accessor for ColorSchemeArtwork);
      if (v9 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_21668976C(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
        v1 = v10;
        if (v11 <= 0x3F)
        {
          sub_21668976C(319, &qword_280E2BF20, type metadata accessor for Artwork);
          v1 = v12;
          if (v13 <= 0x3F)
          {
            sub_21668976C(319, qword_280E44408, type metadata accessor for VideoArtwork);
            v1 = v14;
            if (v15 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for InlineUpsell()
{
  result = qword_280E44CC0;
  if (!qword_280E44CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668CCEC()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    if (v1 <= 0x3F)
    {
      sub_216689C64();
      if (v2 <= 0x3F)
      {
        sub_216688560(319, qword_280E44CE8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for LandingUpsell()
{
  result = qword_280E43E98;
  if (!qword_280E43E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668CE2C()
{
  sub_2166891E8(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  if (v0 <= 0x3F)
  {
    sub_216688154();
    if (v1 <= 0x3F)
    {
      sub_216689C64();
      if (v2 <= 0x3F)
      {
        sub_2166891E8(319, &qword_280E2BF20, type metadata accessor for Artwork);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for LiveRadioGridLockup()
{
  result = qword_280E3DB10;
  if (!qword_280E3DB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668CF80()
{
  sub_216689C64();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688154();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_216688F94(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_216688F94(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_216688F94(319, &qword_280E2BF20, type metadata accessor for Artwork);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for SearchResultsListSection()
{
  result = qword_280E36230;
  if (!qword_280E36230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668D13C()
{
  if (!qword_280E29F80)
  {
    type metadata accessor for TopSearchLockup();
    v0 = sub_21700E984();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29F80);
    }
  }
}

void sub_21668D194()
{
  sub_21668D13C();
  if (v0 <= 0x3F)
  {
    sub_21700D194();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for TopSearchLockup()
{
  result = qword_280E41CD0;
  if (!qword_280E41CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668D274()
{
  sub_2166893AC(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216689C64();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688154();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2166893AC(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2166893AC(319, qword_280E43D18, type metadata accessor for LockupArtwork);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for LockupArtwork()
{
  result = qword_280E43D48;
  if (!qword_280E43D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668D448()
{
  result = type metadata accessor for Artwork();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21668D4B0()
{
  sub_216689290(319, &qword_280E2A1B8, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_216688154();
    if (v1 <= 0x3F)
    {
      sub_216689290(319, &qword_280E2A028, type metadata accessor for ListLockup, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for ListLockup()
{
  result = qword_280E45A38;
  if (!qword_280E45A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668D600()
{
  sub_216688F94(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688560(319, qword_280E45C68);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_216688F94(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
      if (v8 > 0x3F)
      {
        return v7;
      }

      sub_216689C64();
      if (v9 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_216688560(319, qword_280E45A48);
        v1 = v10;
        if (v11 <= 0x3F)
        {
          sub_216688F94(319, &qword_280E2BF20, type metadata accessor for Artwork);
          v1 = v12;
          if (v13 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for SongDetailList()
{
  result = qword_280E42AC0;
  if (!qword_280E42AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668D820()
{
  sub_216689348(319, &qword_280E2A1B8, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_216689348(319, qword_280E33DE0, type metadata accessor for SongDetailListHeaderLockup, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_216689348(319, &qword_280E2A010, type metadata accessor for ListSection, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_216689348(319, &qword_280E40340, type metadata accessor for ContentDescriptor, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for SongDetailListHeaderLockup()
{
  result = qword_280E33E28;
  if (!qword_280E33E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668D9E8()
{
  sub_216688F94(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  if (v0 <= 0x3F)
  {
    sub_216688154();
    if (v1 <= 0x3F)
    {
      sub_216689C64();
      if (v2 <= 0x3F)
      {
        sub_216688F94(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
        if (v3 <= 0x3F)
        {
          sub_216688F94(319, &qword_280E2BF20, type metadata accessor for Artwork);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for ParagraphComponentModel()
{
  result = qword_280E37B20;
  if (!qword_280E37B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668DB5C()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    sub_216688154();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for PlaylistDetailHeaderLockup()
{
  result = qword_280E343D8;
  if (!qword_280E343D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668DC44()
{
  sub_216689664(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_21668DE84();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_216689664(319, qword_280E33788, type metadata accessor for ModalPresentationDescriptor);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_216688560(319, qword_280E33BC8);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_216689664(319, &qword_280E2BF20, type metadata accessor for Artwork);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_216689664(319, qword_280E44408, type metadata accessor for VideoArtwork);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_216689664(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  sub_216689664(319, &qword_280E3EC00, type metadata accessor for LinkComponentModel);
                  v1 = v17;
                  if (v18 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_21668DE84()
{
  if (!qword_280E29E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8968);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29E70);
    }
  }
}

uint64_t type metadata accessor for PlaylistTrackLockup()
{
  result = qword_280E3D5B8;
  if (!qword_280E3D5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PosterLockup()
{
  result = qword_280E44968;
  if (!qword_280E44968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RecentSearchLockup()
{
  result = qword_280E3E938;
  if (!qword_280E3E938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SearchQueryContextLockup()
{
  result = qword_280E362E8;
  if (!qword_280E362E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668E018()
{
  if (!qword_280E2A0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABFBE0);
    v0 = sub_21700E3F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A0A8);
    }
  }
}

uint64_t sub_21668E08C()
{
  sub_2166890A0(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216689C64();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_216688560(319, &qword_280E29DE0);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_2166890A0(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
        if (v9 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_2166890A0(319, &qword_280E2BF20, type metadata accessor for Artwork);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for SocialOnboardingFindFriendsPageLockup()
{
  result = qword_280E2DC08;
  if (!qword_280E2DC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668E278()
{
  sub_216690D40(319, &qword_280E2BF20, type metadata accessor for Artwork);
  if (v0 <= 0x3F)
  {
    sub_216690D40(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
    if (v1 <= 0x3F)
    {
      sub_216688154();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for SocialOnboardingPrivacySettingsPageLockup()
{
  result = qword_280E2D260;
  if (!qword_280E2D260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SocialOnboardingUserNameHandlePageLockup()
{
  result = qword_280E2D5D8;
  if (!qword_280E2D5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668E408()
{
  sub_2166891E8(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContentDescriptor();
    if (v1 <= 0x3F)
    {
      sub_216688154();
      if (v2 <= 0x3F)
      {
        sub_2166891E8(319, &qword_280E2BF20, type metadata accessor for Artwork);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21668E528()
{
  sub_2166891E8(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContentDescriptor();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21668E5E0()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    sub_216689C64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for SocialProfileDetailViewFollowRequestsHeader()
{
  result = qword_280E2CFA8;
  if (!qword_280E2CFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668E6C8()
{
  sub_216688FE8(319, &qword_280E2A1B8, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_216688FE8(319, &qword_280E29F58, type metadata accessor for ContentDescriptor, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for SocialProfileFollowRequestResponseHeader()
{
  result = qword_280E2D520;
  if (!qword_280E2D520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668E810()
{
  sub_216689600(319, &qword_280E2A1B8, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_216689600(319, &qword_280E29EB0, type metadata accessor for SocialProfileFollowRequestLockup, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for SocialProfileFollowRequestLockup()
{
  result = qword_280E2F6B8;
  if (!qword_280E2F6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SocialOnboardingSharedPlaylistPageLockup()
{
  result = qword_280E2D688;
  if (!qword_280E2D688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668E994()
{
  if (!qword_280E29E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3D98);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29E90);
    }
  }
}

uint64_t type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup()
{
  result = qword_280E2CE60;
  if (!qword_280E2CE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668EA44()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    sub_2166A7694();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for Spacer()
{
  result = qword_280E2C248;
  if (!qword_280E2C248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SuperHeroLockup()
{
  result = qword_280E41E60;
  if (!qword_280E41E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668EB90()
{
  sub_216688560(319, &qword_280E2C9A8);
  if (v0 <= 0x3F)
  {
    sub_21668A338(319, &qword_280E29E28, &qword_27CAB74F8);
    if (v1 <= 0x3F)
    {
      sub_21668A338(319, &qword_280E29F88, &qword_27CAC02C8);
      if (v2 <= 0x3F)
      {
        sub_21668A38C();
        if (v3 <= 0x3F)
        {
          sub_216688560(319, &qword_280E3C5B0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for Artwork()
{
  result = qword_280E2BF50;
  if (!qword_280E2BF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668ED20()
{
  result = sub_21700C4B4();
  if (v1 <= 0x3F)
  {
    result = sub_21700C444();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21668EDA4()
{
  if (!qword_27CAC6540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7948);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAC6540);
    }
  }
}

uint64_t type metadata accessor for PaginationSectionResult()
{
  result = qword_280E37BD0;
  if (!qword_280E37BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668EE74()
{
  type metadata accessor for SectionChangeInstruction(319);
  if (v0 <= 0x3F)
  {
    sub_21668EDA4();
    if (v1 <= 0x3F)
    {
      sub_216688154();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21668EF30(uint64_t a1)
{
  result = sub_21668F1C8(qword_280E37BE0, type metadata accessor for PaginationSectionResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21668EF88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21668EFD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21668F018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21668F060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21668F0A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21668F0F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21668F138(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21668F180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21668F1C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21668F210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21668F258(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21668F2B8()
{
  type metadata accessor for AlbumDetailHeaderLockup();
  if (v0 <= 0x3F)
  {
    sub_21668FD80(319, &qword_280E29F78, &qword_27CABEB40);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AnimatedTextListItem();
      if (v2 <= 0x3F)
      {
        sub_21668B034(319, &qword_280E29EC0, type metadata accessor for AppsWithAccessComponentModel);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ArtistDetailHeaderLockup();
          if (v4 <= 0x3F)
          {
            type metadata accessor for ArtistLatestReleaseLockup();
            if (v5 <= 0x3F)
            {
              type metadata accessor for ArtistLatestReleaseAndTopSongsLockup();
              if (v6 <= 0x3F)
              {
                sub_21668B034(319, &qword_280E29FE0, type metadata accessor for BubbleLockup);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for ContainerDetailTracklistFooterLockup();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for CuratorDetailHeaderComponentModel();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for EmptyStateLockup();
                      if (v10 <= 0x3F)
                      {
                        sub_21668B034(319, &qword_280E29FB0, type metadata accessor for FlowcaseLockup);
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for GradientListRowModel();
                          if (v12 <= 0x3F)
                          {
                            type metadata accessor for GroupedTextListLockup();
                            if (v13 <= 0x3F)
                            {
                              type metadata accessor for HeaderComponentModel();
                              if (v14 <= 0x3F)
                              {
                                sub_21668B034(319, &qword_280E29F70, type metadata accessor for HorizontalLockup);
                                if (v15 <= 0x3F)
                                {
                                  sub_21668B034(319, &qword_280E29EE0, type metadata accessor for HorizontalPosterLockup);
                                  if (v16 <= 0x3F)
                                  {
                                    type metadata accessor for InlineUpsell();
                                    if (v17 <= 0x3F)
                                    {
                                      type metadata accessor for LandingUpsell();
                                      if (v18 <= 0x3F)
                                      {
                                        sub_21668B034(319, &qword_280E29F30, type metadata accessor for LinkComponentModel);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_21668B034(319, &qword_280E29F20, type metadata accessor for LiveRadioGridLockup);
                                          if (v20 <= 0x3F)
                                          {
                                            type metadata accessor for SearchResultsListSection();
                                            if (v21 <= 0x3F)
                                            {
                                              type metadata accessor for ListSection();
                                              if (v22 <= 0x3F)
                                              {
                                                type metadata accessor for SongDetailList();
                                                if (v23 <= 0x3F)
                                                {
                                                  type metadata accessor for ParagraphComponentModel();
                                                  if (v24 <= 0x3F)
                                                  {
                                                    type metadata accessor for PlaylistDetailHeaderLockup();
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_21668FD80(319, &unk_280E29F00, &qword_27CABEB48);
                                                      if (v26 <= 0x3F)
                                                      {
                                                        type metadata accessor for PopoverSelector();
                                                        if (v27 <= 0x3F)
                                                        {
                                                          sub_21668B034(319, &qword_280E29FD8, type metadata accessor for PosterLockup);
                                                          if (v28 <= 0x3F)
                                                          {
                                                            sub_21668B034(319, &qword_280E29F28, type metadata accessor for RecentSearchLockup);
                                                            if (v29 <= 0x3F)
                                                            {
                                                              sub_21668B034(319, &qword_280E29ED0, type metadata accessor for SearchLandingBrickLockup);
                                                              if (v30 <= 0x3F)
                                                              {
                                                                type metadata accessor for SearchQueryContextLockup();
                                                                if (v31 <= 0x3F)
                                                                {
                                                                  sub_21668B034(319, &qword_280E29FB8, _s6LockupVMa);
                                                                  if (v32 <= 0x3F)
                                                                  {
                                                                    sub_21668B034(319, &qword_280E29F60, type metadata accessor for SocialCardLockup);
                                                                    if (v33 <= 0x3F)
                                                                    {
                                                                      sub_21668B034(319, &qword_280E29E88, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
                                                                      if (v34 <= 0x3F)
                                                                      {
                                                                        type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
                                                                        if (v35 <= 0x3F)
                                                                        {
                                                                          type metadata accessor for SocialOnboardingPrivacySettingsPageLockup();
                                                                          if (v36 <= 0x3F)
                                                                          {
                                                                            sub_21668B034(319, &qword_280E29E98, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
                                                                            if (v37 <= 0x3F)
                                                                            {
                                                                              type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
                                                                              if (v38 <= 0x3F)
                                                                              {
                                                                                type metadata accessor for SocialOnboardingWelcomePageLockup();
                                                                                if (v39 <= 0x3F)
                                                                                {
                                                                                  type metadata accessor for SocialProfileDetailHeaderLockup();
                                                                                  if (v40 <= 0x3F)
                                                                                  {
                                                                                    type metadata accessor for SocialProfileEditorHeaderLockup(319);
                                                                                    if (v41 <= 0x3F)
                                                                                    {
                                                                                      type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
                                                                                      if (v42 <= 0x3F)
                                                                                      {
                                                                                        type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
                                                                                        if (v43 <= 0x3F)
                                                                                        {
                                                                                          type metadata accessor for SocialProfileFollowRequestResponseHeader();
                                                                                          if (v44 <= 0x3F)
                                                                                          {
                                                                                            type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
                                                                                            if (v45 <= 0x3F)
                                                                                            {
                                                                                              type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
                                                                                              if (v46 <= 0x3F)
                                                                                              {
                                                                                                type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
                                                                                                if (v47 <= 0x3F)
                                                                                                {
                                                                                                  sub_21668B034(319, &qword_280E29EB8, type metadata accessor for SocialProfileHorizontalLockup);
                                                                                                  if (v48 <= 0x3F)
                                                                                                  {
                                                                                                    type metadata accessor for SocialProfileHorizontalLockupSection();
                                                                                                    if (v49 <= 0x3F)
                                                                                                    {
                                                                                                      type metadata accessor for Spacer();
                                                                                                      if (v50 <= 0x3F)
                                                                                                      {
                                                                                                        sub_21668B034(319, &qword_280E29F38, type metadata accessor for SplitPosterLockup);
                                                                                                        if (v51 <= 0x3F)
                                                                                                        {
                                                                                                          sub_21668B034(319, &qword_280E29FD0, type metadata accessor for SquareLockup);
                                                                                                          if (v52 <= 0x3F)
                                                                                                          {
                                                                                                            type metadata accessor for SuperHeroLockup();
                                                                                                            if (v53 <= 0x3F)
                                                                                                            {
                                                                                                              sub_21668B034(319, &qword_280E29FA0, type metadata accessor for SuggestionItem);
                                                                                                              if (v54 <= 0x3F)
                                                                                                              {
                                                                                                                sub_21668B034(319, &qword_280E29ED8, type metadata accessor for TextListComponentModel);
                                                                                                                if (v55 <= 0x3F)
                                                                                                                {
                                                                                                                  sub_21668B034(319, &qword_280E29F80, type metadata accessor for TopSearchLockup);
                                                                                                                  if (v56 <= 0x3F)
                                                                                                                  {
                                                                                                                    sub_21668B034(319, &qword_280E29FF0, type metadata accessor for TrackLockup);
                                                                                                                    if (v57 <= 0x3F)
                                                                                                                    {
                                                                                                                      type metadata accessor for TVMovieDescription();
                                                                                                                      if (v58 <= 0x3F)
                                                                                                                      {
                                                                                                                        type metadata accessor for TVMovieDetailHeaderLockup();
                                                                                                                        if (v59 <= 0x3F)
                                                                                                                        {
                                                                                                                          type metadata accessor for VerticalArtworkListItem();
                                                                                                                          if (v60 <= 0x3F)
                                                                                                                          {
                                                                                                                            sub_21668B034(319, &qword_280E29EF8, type metadata accessor for VerticalVideoLockup);
                                                                                                                            if (v61 <= 0x3F)
                                                                                                                            {
                                                                                                                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for AlbumDetailHeaderLockup()
{
  result = qword_280E38948;
  if (!qword_280E38948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668FAC0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    OUTLINED_FUNCTION_42_0();
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for ModalPresentationDescriptor()
{
  result = qword_280E337D0;
  if (!qword_280E337D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21668FB5C()
{
  sub_216688560(319, &qword_280E2A070);
  if (v0 <= 0x3F)
  {
    sub_216688560(319, qword_280E45E50);
    if (v1 <= 0x3F)
    {
      sub_21668FC60();
      if (v2 <= 0x3F)
      {
        sub_216688560(319, qword_280E43850);
        if (v3 <= 0x3F)
        {
          sub_21700D284();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21668FC60()
{
  if (!qword_280E29CC0)
  {
    sub_21668FCB8();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29CC0);
    }
  }
}

unint64_t sub_21668FCB8()
{
  result = qword_280E29CC8;
  if (!qword_280E29CC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29CC8);
  }

  return result;
}

void sub_21668FCFC()
{
  sub_21668AE60();
  if (v0 <= 0x3F)
  {
    sub_21700C444();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21668FD80(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    type metadata accessor for ContentDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata accessor for AlbumTrackLockup()
{
  result = qword_280E41510;
  if (!qword_280E41510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21668FE40()
{
  sub_2166890A0(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_21668FAC0(319, &qword_280E2A2A8, &qword_27CAB6D68);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2A070);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_21668FAC0(319, &qword_280E29E70, &qword_27CAB8968);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_216688560(319, &qword_280E29DA0);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_216688560(319, &qword_280E29DB8);
        if (v10 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_2166890A0(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
          if (v12 > 0x3F)
          {
            return v11;
          }

          else
          {
            sub_2166890A0(319, &qword_280E2BF20, type metadata accessor for Artwork);
            v1 = v13;
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for ListSection()
{
  result = qword_280E452B8;
  if (!qword_280E452B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166900E0()
{
  sub_2166890A0(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_21668FAC0(319, &qword_280E2A2A8, &qword_27CAB6D68);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2A070);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_21668FAC0(319, &qword_280E29E70, &qword_27CAB8968);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_216688560(319, &qword_280E29DB8);
        if (v9 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_2166890A0(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
          if (v11 > 0x3F)
          {
            return v10;
          }

          else
          {
            sub_2166890A0(319, &qword_280E2BF20, type metadata accessor for Artwork);
            v1 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for PopoverSelector()
{
  result = qword_280E42198;
  if (!qword_280E42198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21669035C()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    sub_2166903F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2166903F0()
{
  if (!qword_280E29E78)
  {
    v0 = sub_21700E984();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29E78);
    }
  }
}

uint64_t sub_216690440()
{
  sub_216689194(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688560(319, &qword_280E43840);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_216689194(319, &qword_280E2BF20, type metadata accessor for Artwork);
      if (v8 > 0x3F)
      {
        return v7;
      }

      sub_216689C64();
      if (v9 > 0x3F)
      {
        return v5;
      }

      sub_216689194(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
      if (v10 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_216689194(319, qword_280E44408, type metadata accessor for VideoArtwork);
        v1 = v11;
        if (v12 <= 0x3F)
        {
          sub_216689194(319, qword_280E3F390, type metadata accessor for ColorSchemeArtwork);
          v1 = v13;
          if (v14 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_216690670()
{
  sub_216689C64();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688154();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_216688F94(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_216688F94(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
      v1 = v6;
      if (v7 <= 0x3F)
      {
        sub_216688F94(319, &qword_280E2BF20, type metadata accessor for Artwork);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for SearchLandingBrickLockup()
{
  result = qword_280E363A8;
  if (!qword_280E363A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21669082C()
{
  sub_216688F94(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  if (v0 <= 0x3F)
  {
    sub_216689C64();
    if (v1 <= 0x3F)
    {
      sub_216688154();
      if (v2 <= 0x3F)
      {
        sub_216688F94(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
        if (v3 <= 0x3F)
        {
          sub_216688F94(319, &qword_280E2BF20, type metadata accessor for Artwork);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216690954()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    sub_216688560(319, &qword_280E29DE0);
    if (v1 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2A070);
      if (v2 <= 0x3F)
      {
        sub_21668E018();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t _s6LockupVMa()
{
  result = qword_280E439C0;
  if (!qword_280E439C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SocialCardLockup()
{
  result = qword_280E407D0;
  if (!qword_280E407D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216690AE0()
{
  sub_216689144(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  if (v0 <= 0x3F)
  {
    sub_216689C64();
    if (v1 <= 0x3F)
    {
      sub_216688154();
      if (v2 <= 0x3F)
      {
        sub_216689144(319, &qword_280E2BF20, type metadata accessor for Artwork);
        if (v3 <= 0x3F)
        {
          sub_216689144(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216690C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216690C88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216690CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216690D40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216690D94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216690DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216690E4C()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    sub_216688154();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for ContentDescriptor()
{
  result = qword_280E40380;
  if (!qword_280E40380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SocialOnboardingNotificationSettingsPageLockup()
{
  result = qword_280E2CAA0;
  if (!qword_280E2CAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216690F88()
{
  sub_2166891E8(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = type metadata accessor for ContentDescriptor();
    if (v3 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2A070);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_216688560(319, &qword_280E29DE0);
        if (v7 > 0x3F)
        {
          return v6;
        }

        sub_216691104();
        if (v8 > 0x3F)
        {
          return v6;
        }

        sub_2166891E8(319, &qword_280E2BF20, type metadata accessor for Artwork);
        if (v9 > 0x3F)
        {
          return v6;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_216691104()
{
  if (!qword_280E29EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDBE8);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29EA8);
    }
  }
}

uint64_t sub_216691168()
{
  sub_216689558(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216689C64();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2A070);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_216689558(319, &qword_280E2BF20, type metadata accessor for Artwork);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_216689558(319, qword_280E44408, type metadata accessor for VideoArtwork);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_216688560(319, &qword_280E43840);
        if (v10 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_216689558(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
          v1 = v11;
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for SuggestionItem()
{
  result = qword_280E42A00;
  if (!qword_280E42A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166913C0()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    sub_216689C64();
    if (v1 <= 0x3F)
    {
      sub_216688154();
      if (v2 <= 0x3F)
      {
        type metadata accessor for LockupArtwork();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for TextListComponentModel()
{
  result = qword_280E38AB8;
  if (!qword_280E38AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166914D8()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    sub_21669157C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21669157C()
{
  if (!qword_280E29F48)
  {
    v0 = sub_21700E984();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29F48);
    }
  }
}

uint64_t type metadata accessor for TVMovieDescription()
{
  result = qword_280E3E560;
  if (!qword_280E3E560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216691618()
{
  sub_2166897C0(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688154();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_21668FAC0(319, &qword_280E2A2A8, &qword_27CAB6D68);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_21668FAC0(319, &qword_280E29E28, &qword_27CAB74F8);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_2166897C0(319, qword_280E37AE0, type metadata accessor for ParagraphComponentModel);
      if (v8 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2166897C0(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
        v1 = v9;
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for TVMovieDetailHeaderLockup()
{
  result = qword_280E34CC0;
  if (!qword_280E34CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166917F8()
{
  sub_216689508(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_21668FAC0(319, &qword_280E2A2A8, &qword_27CAB6D68);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688154();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_21668FAC0(319, &qword_280E29E70, &qword_27CAB8968);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_216689508(319, qword_280E33788, type metadata accessor for ModalPresentationDescriptor);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_216689508(319, &qword_280E2BF20, type metadata accessor for Artwork);
        if (v11 > 0x3F)
        {
          return v10;
        }

        sub_21668FAC0(319, &qword_280E29E28, &qword_27CAB74F8);
        if (v12 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_216689508(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
          v1 = v13;
          if (v14 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for VerticalArtworkListItem()
{
  result = qword_280E37308;
  if (!qword_280E37308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216691A64()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Artwork();
    if (v1 <= 0x3F)
    {
      sub_216689C64();
      if (v2 <= 0x3F)
      {
        sub_216688154();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for VerticalVideoLockup()
{
  result = qword_280E3CD68;
  if (!qword_280E3CD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216691B7C()
{
  sub_2166890A0(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_21668FAC0(319, &qword_280E2A2A8, &qword_27CAB6D68);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_21668FAC0(319, &qword_280E29E70, &qword_27CAB8968);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_216688154();
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_2166890A0(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_2166890A0(319, &qword_280E2BF20, type metadata accessor for Artwork);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_216691D48(void *a1)
{
  a1[1] = sub_216691E3C(&qword_280E2C568, type metadata accessor for Page);
  a1[2] = sub_216691E3C(&qword_280E2C560, type metadata accessor for Page);
  result = sub_216691E3C(&qword_280E2C550, type metadata accessor for Page);
  a1[3] = result;
  return result;
}

uint64_t sub_216691DF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216691E3C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216691E80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216691EC8(uint64_t a1)
{
  result = sub_216691E3C(&qword_280E2C558, type metadata accessor for Page);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216691F20(uint64_t a1)
{
  result = sub_216691E3C(&qword_280E2C570, type metadata accessor for Page);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216691F78(uint64_t a1)
{
  result = sub_216691E3C(qword_280E2C578, type metadata accessor for Page);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216691FE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_216692044()
{
  type metadata accessor for PageChangeInstruction();
  if (v0 <= 0x3F)
  {
    swift_getWitnessTable();
    type metadata accessor for OpaqueProtoRequestConvertibleIntent();
    sub_21700F164();
    if (v1 <= 0x3F)
    {
      sub_216688154();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216692144(float64x2_t *a1)
{
  v8 = a1[1];
  v1 = type metadata accessor for PageChangeInstruction.Instruction();
  if (v2 <= 0x3F)
  {
    v9[37] = 0;
    v10 = v1;
    v13.val[0] = v8;
    v13.val[1] = v8;
    v3 = v9;
    vst2q_f64(v3, v13);
    type metadata accessor for PageChangeInstruction.InvalidationRulesChange();
    v4 = sub_21700F164();
    if (v5 <= 0x3F)
    {
      v9[38] = 0;
      v11 = v4;
      sub_216688154();
      if (v7 <= 0x3F)
      {
        v9[39] = 0;
        v12 = v6;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21669221C()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v2 = _s7SectionVMa(319);
    if (v3 > 0x3F)
    {
      return v2;
    }

    sub_21682D344();
    if (v4 > 0x3F)
    {
      return v2;
    }

    type metadata accessor for PageChangeInstruction.Instruction.ItemUpdateDescriptor();
    v2 = sub_21700E984();
    if (v5 > 0x3F)
    {
      return v2;
    }

    else
    {
      type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor();
      v0 = sub_21700E984();
      if (v6 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_21669231C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216692380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2166923C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216692424()
{
  result = sub_21700C084();
  if (v1 <= 0x3F)
  {
    result = sub_21700BA44();
    if (v2 <= 0x3F)
    {
      result = sub_21700C1E4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_2166924BC()
{
  if (!qword_280E402D8)
  {
    type metadata accessor for ContentDescriptor();
    sub_217005EF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E402D8);
    }
  }
}

void sub_216692530()
{
  if (!qword_280E37C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA578);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E37C80);
    }
  }
}

void sub_2166925B8()
{
  if (!qword_280E2A080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABAA40);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E2A080);
    }
  }
}

void sub_216692630(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216692684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2166926E8()
{
  if (!qword_280E2A068)
  {
    sub_216692684(0, &qword_280E2A060, MEMORY[0x277CC9260], MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A068);
    }
  }
}

void sub_216692760()
{
  if (!qword_280E2A418)
  {
    sub_217005EF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E2A418);
    }
  }
}

ValueMetadata *sub_2166927CC()
{
  result = qword_280E37F20;
  if (!qword_280E37F20)
  {
    result = &type metadata for LibraryImportParameters;
    atomic_store(&type metadata for LibraryImportParameters, &qword_280E37F20);
  }

  return result;
}

uint64_t type metadata accessor for ReferrerInfo()
{
  result = qword_280E448A0;
  if (!qword_280E448A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216692840()
{
  sub_216688680();
  if (v0 <= 0x3F)
  {
    sub_216688154();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2166928C4()
{
  if (!qword_280E29AF0)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29AF0);
    }
  }
}

uint64_t type metadata accessor for MarketingSheetModel()
{
  result = qword_280E3D998;
  if (!qword_280E3D998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216692960()
{
  result = sub_217005EF4();
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

uint64_t type metadata accessor for SubscriptionPurchaseViewModel()
{
  result = qword_280E30FF0;
  if (!qword_280E30FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216692A64()
{
  sub_216692B6C();
  if (v0 <= 0x3F)
  {
    sub_216692BBC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_216692B6C()
{
  if (!qword_280E48420)
  {
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E48420);
    }
  }
}

void sub_216692BBC()
{
  if (!qword_280E2A1F0)
  {
    type metadata accessor for ObjectGraph();
    v0 = sub_21700D604();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A1F0);
    }
  }
}

void sub_216692C34()
{
  sub_2166928C4();
  if (v0 <= 0x3F)
  {
    sub_216E260F4(319, &qword_280E4A510, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216692CE8()
{
  v0 = swift_allocObject();
  sub_216692F28();
  return v0;
}

void sub_216692D28()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for PresentationItem();
  sub_21700F164();
  sub_217007E14();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10_58();
  v4 = *(v2 + 32);
  v5 = OUTLINED_FUNCTION_9_63();
  v4(v5);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10_58();
  v6 = OUTLINED_FUNCTION_9_63();
  v4(v6);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10_58();
  v7 = OUTLINED_FUNCTION_9_63();
  v4(v7);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10_58();
  v8 = OUTLINED_FUNCTION_9_63();
  v4(v8);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10_58();
  v9 = OUTLINED_FUNCTION_9_63();
  v4(v9);
  OUTLINED_FUNCTION_0_1();
  *(v0 + *(v10 + 136)) = 0;
  OUTLINED_FUNCTION_0_1();
  swift_weakInit();
  OUTLINED_FUNCTION_0_1();
  v12 = (v0 + *(v11 + 152));
  *v12 = 0;
  v12[1] = 0;
  swift_weakAssign();

  OUTLINED_FUNCTION_26();
}

void sub_216692F28()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (v0 + *(v1 + 520));
  *v2 = 0;
  v2[1] = 0;
  OUTLINED_FUNCTION_0_1();
  v4 = (v0 + *(v3 + 528));
  *v4 = 0;
  v4[1] = 0;
  OUTLINED_FUNCTION_0_1();
  v6 = (v0 + *(v5 + 536));
  *v6 = 0;
  v6[1] = 0;
  OUTLINED_FUNCTION_0_1();
  v8 = (v0 + *(v7 + 544));
  *v8 = 0;
  v8[1] = 0;
  OUTLINED_FUNCTION_0_1();
  v10 = (v0 + *(v9 + 552));
  *v10 = 0;
  v10[1] = 0;
  OUTLINED_FUNCTION_0_1();
  v12 = (v0 + *(v11 + 560));
  *v12 = 0;
  v12[1] = 0;
  sub_216692D28();
}

void OUTLINED_FUNCTION_0_14()
{
  v2 = *(v0 + 96);
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1)
{
  *(v2 - 168) = v1;
  *(v2 - 160) = a1;
  return 255;
}

uint64_t OUTLINED_FUNCTION_0_18()
{

  return sub_21678823C(v0, type metadata accessor for HorizontalLockup);
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return sub_2167ADEA8(v0, type metadata accessor for PlayGenericMusicItemAction);
}

uint64_t OUTLINED_FUNCTION_0_25()
{

  return sub_21700F7D4();
}

double OUTLINED_FUNCTION_0_30()
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;

  *&result = CGRectInset(*&v6, v1, v1);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_36()
{

  return sub_216E47F84();
}

uint64_t OUTLINED_FUNCTION_0_39(uint64_t result)
{
  v7 = v1 + *(result + 36);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_41()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_46()
{
}

uint64_t OUTLINED_FUNCTION_0_47()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_0_49()
{

  sub_21693776C();
}

uint64_t OUTLINED_FUNCTION_20_2(unint64_t *a1)
{

  return sub_2166D9530(a1, v1);
}

uint64_t OUTLINED_FUNCTION_0_53()
{

  return sub_21700D734();
}

uint64_t OUTLINED_FUNCTION_0_59()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_62()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_69()
{

  return sub_216915310(v0, type metadata accessor for MusicAppDestination);
}

uint64_t OUTLINED_FUNCTION_0_73()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_74()
{

  return sub_21691A0E4(v0, type metadata accessor for SocialCardLockup);
}

uint64_t OUTLINED_FUNCTION_0_79()
{

  return sub_21693E734(v0, type metadata accessor for ReplayYear);
}

uint64_t OUTLINED_FUNCTION_0_81()
{

  return sub_21700F584();
}

uint64_t OUTLINED_FUNCTION_0_84()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_90()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_99()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_110()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_115()
{

  return sub_21700CE04();
}

uint64_t OUTLINED_FUNCTION_0_116()
{

  return swift_getWitnessTable();
}