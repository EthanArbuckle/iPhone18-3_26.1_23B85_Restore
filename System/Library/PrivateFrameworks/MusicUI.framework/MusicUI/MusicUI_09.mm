uint64_t sub_216761760()
{
  OUTLINED_FUNCTION_6_6();
  if (v2)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2167617D8()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_216761854()
{
  OUTLINED_FUNCTION_6_6();
  if (v1)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
  v3 = OUTLINED_FUNCTION_3_17();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_2167618C8()
{
  OUTLINED_FUNCTION_21_0();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    v3 = OUTLINED_FUNCTION_3_17();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_216761988()
{
  _s7MusicUI11CloseButtonVMa_0(0);
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v4 = *(v0 + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_34();
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + *(v0 + 32), v5);

  return swift_deallocObject();
}

uint64_t sub_216761AA4()
{
  type metadata accessor for AccessoryButtonView(0);
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 16);
  sub_216684F5C(*(v3 + 56), *(v3 + 64));
  v4 = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2170098A4();
    if (!OUTLINED_FUNCTION_23_54(v5))
    {
      (*(*(v0 - 8) + 8))(v3 + v4, v0);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216761BD8()
{
  type metadata accessor for PrimaryButtonView(0);
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 16);
  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2170098A4();
    if (!OUTLINED_FUNCTION_23_54(v5))
    {
      (*(*(v0 - 8) + 8))(v3 + v4, v0);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216761D00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008EB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216761D68()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_2170096A4();
  OUTLINED_FUNCTION_28_1();
  sub_2167D2D50(v1);
  sub_216E5A9C0(&qword_280E2A8F8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216761EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 32));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216761F78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2167620A4()
{
  v19 = sub_217008144();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  type metadata accessor for MusicUIPPT.Test();
  OUTLINED_FUNCTION_43_3();
  v8 = (v4 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = (*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = sub_217008174();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v13 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  swift_unknownObjectRelease();
  v14 = *(v3 + 8);
  v14(v0 + v4, v19);
  v15 = v0 + v8;

  v16 = *(v1 + 28);
  sub_217005EF4();
  OUTLINED_FUNCTION_9_0();
  (*(v17 + 8))(v15 + v16);
  v14(v15 + *(v1 + 36), v19);

  (*(v12 + 8))(v0 + v13, v20);

  return swift_deallocObject();
}

uint64_t sub_2167622B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0998);
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216762338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167623C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676244C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MappedSection(0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 36)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_2167624EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MappedSection(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21676269C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB138);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return a2;
}

uint64_t sub_216762720()
{

  return swift_deallocObject();
}

uint64_t sub_2167627A0()
{
  type metadata accessor for SectionHeaderView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB140);
  OUTLINED_FUNCTION_8_108();
  type metadata accessor for AlbumTrackListSection();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB148);
  OUTLINED_FUNCTION_8_108();
  type metadata accessor for ArtistDetailHeaderLockupView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB1B0);
  OUTLINED_FUNCTION_30_50(qword_280E3D9E8);
  OUTLINED_FUNCTION_17_71();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_40_30();
  type metadata accessor for SingleItemSectionViewModifier();
  OUTLINED_FUNCTION_5_135();
  sub_2170089F4();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0);
  type metadata accessor for ArtistLatestReleaseLockupView(255);
  sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0);
  OUTLINED_FUNCTION_19_58();
  sub_216E8C8F4(v0, v1);
  OUTLINED_FUNCTION_40_30();
  type metadata accessor for PaginatingGridView();
  OUTLINED_FUNCTION_8_108();
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView();
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB150);
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  OUTLINED_FUNCTION_8_108();
  type metadata accessor for CuratorDetailHeaderLockupView();
  type metadata accessor for CuratorDetailHeaderComponentModel();
  OUTLINED_FUNCTION_29_51();
  sub_216E8C8F4(v2, v3);
  OUTLINED_FUNCTION_14_78();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_40_30();
  type metadata accessor for SingleItemSectionViewModifier();
  OUTLINED_FUNCTION_5_135();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB158);
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB160);
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB168);
  OUTLINED_FUNCTION_8_108();
  type metadata accessor for TitleHeaderView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9728);
  sub_2166D9530(&qword_280E45808, &qword_27CAB9728);
  OUTLINED_FUNCTION_16_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_40_30();
  type metadata accessor for SingleItemSectionViewModifier();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_9_99();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB170);
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB178);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB180);
  OUTLINED_FUNCTION_8_108();
  type metadata accessor for PlaylistTrackListSection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB188);
  OUTLINED_FUNCTION_9_99();
  sub_217009564();
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB190);
  OUTLINED_FUNCTION_8_108();
  type metadata accessor for SocialProfileDetailHeaderLockupView();
  type metadata accessor for SocialProfileDetailHeaderLockup();
  OUTLINED_FUNCTION_28_44();
  sub_216E8C8F4(v4, v5);
  OUTLINED_FUNCTION_27_51();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_40_30();
  type metadata accessor for SingleItemSectionViewModifier();
  OUTLINED_FUNCTION_4_143();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB198);
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1A0);
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  OUTLINED_FUNCTION_9_99();
  sub_217009564();
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1B0);
  OUTLINED_FUNCTION_8_108();
  type metadata accessor for TVMovieDetailHeaderLockupView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7A8);
  sub_2166D9530(&qword_280E457C0, &qword_27CABB7A8);
  OUTLINED_FUNCTION_23_55();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_40_30();
  type metadata accessor for SingleItemSectionViewModifier();
  OUTLINED_FUNCTION_9_99();
  sub_2170089F4();
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1B8);
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1C0);
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  sub_21700AD94();
  sub_2170089F4();
  OUTLINED_FUNCTION_8_108();
  type metadata accessor for CatalogPagePresenter();
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  OUTLINED_FUNCTION_34_4();
  sub_217009B34();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1C8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_74();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_63();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_68();
  sub_2166D9530(v6, &qword_27CACB1C8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_3();
  sub_21700B084();
  OUTLINED_FUNCTION_7_1();
  return swift_getWitnessTable();
}

uint64_t sub_216762F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700C384();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216762FCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700C384();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216763070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216763120()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_2167631CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ContainerDetailHeaderView.ArtworkData(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
    v9 = a1 + *(a3 + 32);
    goto LABEL_8;
  }

  v10 = *(a1 + *(a3 + 24) + 16);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_2167632A8()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for ContainerDetailHeaderView.ArtworkData(0);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 24) + 16) = (v0 - 1);
      return;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
    v7 = v1 + *(v2 + 32);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_216763374()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB708);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_2167633D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB708);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216763454()
{
  type metadata accessor for Artwork();
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_21700C4B4();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v3);
  v5 = *(v0 + 28);
  sub_21700C444();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v3 + v5);

  return swift_deallocObject();
}

uint64_t sub_216763564()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  v11 = type metadata accessor for ContentDescriptor();
  if (!OUTLINED_FUNCTION_20_1(v1 + v9))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_20_1(v10 + v12))
    {
      OUTLINED_FUNCTION_50();
      (*(v14 + 8))(v10 + v12, v13);
    }
  }

  v15 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v15);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v18 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v15 + v17, 1, v18))
    {
      OUTLINED_FUNCTION_50();
      (*(v19 + 8))(v15 + v17, v18);
    }
  }

  OUTLINED_FUNCTION_4_2();

  v20 = v10 + *(v0 + 32);
  if (*(v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  OUTLINED_FUNCTION_4_2();

  return swift_deallocObject();
}

uint64_t sub_216763834()
{
  type metadata accessor for TVMovieDetailHeaderLockup();
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  v5 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_20_1(v1 + v3))
  {
    OUTLINED_FUNCTION_50();
    (*(v6 + 8))(v1 + v3, v5);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v4 + v0[5]);
  v7 = v4 + v0[6];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();

  v8 = v4 + v0[10];
  v9 = type metadata accessor for ModalPresentationDescriptor();
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {

    v10 = *(v9 + 40);
    sub_21700D284();
    OUTLINED_FUNCTION_9_0();
    (*(v11 + 8))(v8 + v10);
  }

  v12 = v4 + v0[11];
  v13 = type metadata accessor for Artwork();
  if (!OUTLINED_FUNCTION_20_1(v12))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v14 + 8))(v12);
    v15 = *(v13 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v12 + v15);
  }

  OUTLINED_FUNCTION_4_2();

  v17 = v4 + v0[15];
  if (!OUTLINED_FUNCTION_20_1(v17))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v17);
    v19 = *(v13 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v20 + 8))(v17 + v19);
  }

  OUTLINED_FUNCTION_4_2();
  v21 = v4 + v0[17];
  if (!OUTLINED_FUNCTION_20_1(v21))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v22 + 8))(v21);
    v23 = *(v13 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v24 + 8))(v21 + v23);
  }

  v25 = v4 + v0[18];
  v26 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v25, 1, v26))
  {

    v27 = *(v26 + 24);
    v28 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v25 + v27, 1, v28))
    {
      OUTLINED_FUNCTION_50();
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_216763C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216763C94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216763D2C()
{
  sub_217009354();
  sub_216E9A248(&qword_27CAB9D40, MEMORY[0x277CDDEE0]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7670);
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638);
  sub_2170089F4();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  sub_21700B084();
  return swift_getWitnessTable();
}

uint64_t sub_216763EB8()
{
  v1 = (type metadata accessor for GoToSongAction() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v7 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v0 + v2);
  v9 = v1[7];
  sub_21700C084();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v2 + v9);
  (*(v6 + 8))(v0 + v7, v4);

  return swift_deallocObject();
}

uint64_t sub_216764094()
{
  type metadata accessor for FavoriteAction(0);
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + v3);
  v4 = *(v0 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v1 + v3 + v4);

  return swift_deallocObject();
}

uint64_t sub_216764170()
{
  type metadata accessor for LikeAction(0);
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + v3);
  v4 = *(v0 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v1 + v3 + v4);

  return swift_deallocObject();
}

uint64_t sub_216764244(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2167642D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676438C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_2167643F4()
{
  type metadata accessor for ListItemView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 24);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216764548()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  v11 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v1 + v9, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  v18 = v10 + *(v0 + 32);
  if (*(v18 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167647F4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = type metadata accessor for ListLockup();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_216764838(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = type metadata accessor for ListLockup();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_21676488C()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2167648D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21676491C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216764968(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7878);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_216764A4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7878);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_216764B2C()
{
  v1 = _s15InlineBubbleTipVMa();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7858);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21700DA84();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(v2 + v5, 1, v6))
    {
      (*(*(v6 - 8) + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216764CD4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBF38);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216764D34()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBF38);
  sub_216EA7DD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216764D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_216764E84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216764F84(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[13];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
        v14 = a3[15];
      }
    }

    v9 = a1 + v14;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216765104(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[13];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
        v14 = a4[15];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167652C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v10 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_216765368(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216765404()
{
  v1 = type metadata accessor for ContainerDetailTitlesView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 32);
  }

  v3 = v1[8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 8);
  v6(v2 + v3, v4);
  v6(v2 + v1[9], v4);
  v6(v2 + v1[10], v4);
  sub_2168AEE00(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_2167655B0()
{
  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v6)
  {
    v8 = v5[6];
  }

  else
  {
    type metadata accessor for MappedSection.Content(0);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == v6)
    {
      v8 = v5[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
      OUTLINED_FUNCTION_17();
      if (*(v10 + 84) == v6)
      {
        v8 = v5[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18);
        v8 = v5[10];
      }
    }
  }

  v11 = OUTLINED_FUNCTION_19_1(v8);

  return __swift_getEnumTagSinglePayload(v11, v12, v13);
}

void sub_216765704()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[6];
    }

    else
    {
      type metadata accessor for MappedSection.Content(0);
      OUTLINED_FUNCTION_17();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
        OUTLINED_FUNCTION_17();
        if (*(v10 + 84) == v6)
        {
          v8 = v5[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18);
          v8 = v5[10];
        }
      }
    }

    v11 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v11, v12, v0, v13);
  }
}

uint64_t sub_21676585C()
{
  OUTLINED_FUNCTION_6_6();
  if (v2)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 24));
  }

  v4 = v1;
  sub_21700D194();
  v5 = OUTLINED_FUNCTION_19_1(*(v4 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2167658CC()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_21700D194();
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_21676593C()
{
  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 24));
  }

  v5 = v2;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v6)
  {
    v8 = *(v5 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0);
    v8 = *(v5 + 24);
  }

  v9 = OUTLINED_FUNCTION_19_1(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_216765A04()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0);
      v8 = *(v5 + 24);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_216765AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216765B74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216765C00()
{

  return swift_deallocObject();
}

uint64_t sub_216765C38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC120);
  sub_216EB3858();
  sub_216EB3AA4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216765CB0()
{

  return swift_deallocObject();
}

uint64_t sub_216765CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D9A4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216765D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D9A4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2167660C4()
{
  type metadata accessor for SocialProfileFollowRequestsPageView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + v4;
  v6 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v6))
  {
    (*(*(v2 - 8) + 8))(v1 + v4, v2);
  }

  v7 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
  __swift_destroy_boxed_opaque_existential_1Tm(v5 + *(v7 + 20));

  return swift_deallocObject();
}

uint64_t sub_2167661EC()
{

  return swift_deallocObject();
}

uint64_t sub_216766254()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC218);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC250);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC210);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC208);
  sub_2170086D4();
  OUTLINED_FUNCTION_9_92();
  sub_2166D9530(v0, &qword_27CACC208);
  OUTLINED_FUNCTION_5_140();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_57_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC258);
  OUTLINED_FUNCTION_6_122();
  sub_2166D9530(v1, &qword_27CACC258);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_57_0();
  return OUTLINED_FUNCTION_57_0();
}

uint64_t sub_2167663A8()
{
  type metadata accessor for FollowRequestView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + v4;
  v6 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v6))
  {
    (*(*(v2 - 8) + 8))(v1 + v4, v2);
  }

  v7 = type metadata accessor for SocialProfileFollowRequestLockup();
  __swift_destroy_boxed_opaque_existential_1Tm(v5 + v7[5]);
  v8 = v5 + v7[6];

  v9 = *(type metadata accessor for ContentDescriptor() + 24);
  v10 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v8 + v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  v11 = v5 + v7[11];
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  v12 = v5 + v7[12];
  if (*(v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  v13 = v5 + v7[13];
  if (*(v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  v14 = v5 + v7[14];
  v15 = type metadata accessor for Artwork();
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v16 + 8))(v14);
    v17 = *(v15 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v18 + 8))(v14 + v17);
  }

  return swift_deallocObject();
}

uint64_t sub_216766680()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216766714()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216766748@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216EBCFA8();
  *a1 = result;
  return result;
}

__n128 sub_2167668A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_2167668C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for ArtistPageToolbarContent(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v9 = type metadata accessor for ToolbarProperties(0);
    v10 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_21676695C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  type metadata accessor for ArtistPageToolbarContent(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v11 = type metadata accessor for ToolbarProperties(0);
    v12 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2167669F8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_21700C384();
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  sub_21700DFD4();
  OUTLINED_FUNCTION_17();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_216766B40(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_21700C384();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_21700DFD4();
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[7] + 8) = a2;
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216766C88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216766CC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216EBA01C();
  *a1 = result;
  return result;
}

__n128 sub_216766CF4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_216766D44()
{
  type metadata accessor for ArtistPageToolbarContent(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v1 + v4;
  v6 = type metadata accessor for ContentDescriptor();
  if (!OUTLINED_FUNCTION_9_1(v6))
  {

    v7 = *(v2 + 24);
    v8 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_30_44(v8))
    {
      (*(*(v2 - 8) + 8))(v5 + v7, v2);
    }
  }

  v9 = *(v0 + 20);
  sub_21700C384();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v5 + v9);
  v11 = *(v0 + 24);
  sub_21700DFD4();
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(v5 + v11);

  OUTLINED_FUNCTION_11_91();

  return swift_deallocObject();
}

uint64_t sub_216766EF8()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_3_14();
  sub_2166D9530(v1, &qword_27CACC478);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216766F88()
{
  OUTLINED_FUNCTION_4_3();
  if (v0 == v2)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    v5 = v1;
    if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40) - 8) + 84) == v0)
    {
      v6 = *(v5 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58);
      v6 = *(v5 + 32);
    }

    v7 = OUTLINED_FUNCTION_19_1(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_21676705C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40) - 8) + 84) == v4)
    {
      v8 = *(v7 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58);
      v8 = *(v7 + 32);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }
}

uint64_t sub_216767134()
{
  OUTLINED_FUNCTION_4_3();
  if (v1 == v2)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    v5 = v0;
    sub_21700D7A4();
    v6 = OUTLINED_FUNCTION_19_1(*(v5 + 36));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_2167671AC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v5 == v6)
  {
    *(v2 + 24) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_21700D7A4();
    v8 = OUTLINED_FUNCTION_19_1(*(v7 + 36));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_216767224(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_11_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_21700D194();
    v7 = OUTLINED_FUNCTION_19_1(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_2167672AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_21700D194();
    v6 = OUTLINED_FUNCTION_19_1(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_216767350(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217009124();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2167673D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 80) = (a2 - 1);
  }

  else
  {
    v7 = sub_217009124();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216767480()
{
  sub_2167CC288();
  OUTLINED_FUNCTION_2_2();
  return OUTLINED_FUNCTION_57_0();
}

uint64_t sub_2167674B4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21676752C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  if (*(v0 + 128))
  {
    if (*(v0 + 112))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2167675C8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  if (*(v0 + 144))
  {
    if (*(v0 + 128))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216767644(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC768);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return a2;
}

uint64_t sub_2167676A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC700);
  sub_2170091D4();
  sub_216ECB7E8();
  OUTLINED_FUNCTION_6_125();
  sub_216ECB978(v0, v1);
  return OUTLINED_FUNCTION_57_0();
}

uint64_t sub_216767744()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC758);
  sub_2166D9530(&qword_27CACC760, &qword_27CACC750);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC768);
  sub_216ECBA78();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_57_0();
  return OUTLINED_FUNCTION_57_0();
}

uint64_t sub_216767868()
{

  return swift_deallocObject();
}

uint64_t sub_2167679C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216ECD970();
  *a1 = result;
  return result;
}

uint64_t sub_216767A08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216ECD918();
  *a1 = result;
  return result;
}

uint64_t sub_216767A58()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_216767A8C()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_216767AC8()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_216767B3C()
{

  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

uint64_t sub_216767B80()
{
  v1 = type metadata accessor for HideFromProfileIntent();
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = *(type metadata accessor for ContentDescriptor() + 24);
  v5 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v0 + v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_216767D14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216767D9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216767E1C()
{

  return swift_deallocObject();
}

uint64_t sub_216767EB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216922164();
  *a1 = result;
  return result;
}

uint64_t sub_216767EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7938);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 40));
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

void sub_216767FEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7938);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MappedSection(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 36);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216768108()
{
  v2 = type metadata accessor for AlbumTrackListSection();
  v283 = *(*(v2 - 8) + 80);
  v3 = v0 + ((v283 + 32) & ~v283);
  v4 = sub_21700C1E4();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 8);
  v7 = v5 + 8;
  v6(v3, v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7938);

  v284 = v2;
  v282 = v3;
  v9 = v3 + *(v2 + 36);

  v10 = type metadata accessor for MappedSection(0);
  v11 = (v9 + *(v10 + 24));
  v12 = _s7SectionV6HeaderVMa(0);
  if (!OUTLINED_FUNCTION_4_16(v12))
  {
    v13 = OUTLINED_FUNCTION_20_11();
    v14 = _s7SectionV6HeaderV12HeaderLockupOMa(v13);
    v15 = OUTLINED_FUNCTION_88_0();
    if (!__swift_getEnumTagSinglePayload(v15, v16, v14))
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          goto LABEL_19;
        case 1u:
          v281 = v9;
          OUTLINED_FUNCTION_9_12();
          v26 = type metadata accessor for ComposerSectionHeader();
          v27 = v26[5];
          v28 = sub_21700D7A4();
          if (!__swift_getEnumTagSinglePayload(&v11[v27], 1, v28))
          {
            OUTLINED_FUNCTION_50();
            (*(v29 + 8))(&v11[v27], v28);
          }

          OUTLINED_FUNCTION_8_9(v26[6]);

          OUTLINED_FUNCTION_8_9(v26[10]);

          v30 = OUTLINED_FUNCTION_13_4(v26[11]);
          v9 = v281;
          if (v31)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v30);
          }

          OUTLINED_FUNCTION_20_11();
          v32 = type metadata accessor for ContentDescriptor();
          v33 = OUTLINED_FUNCTION_88_0();
          if (!__swift_getEnumTagSinglePayload(v33, v34, v32))
          {

            v35 = *(v32 + 24);
            v36 = sub_217005EF4();
            if (!__swift_getEnumTagSinglePayload(&v11[v35], 1, v36))
            {
              OUTLINED_FUNCTION_50();
              (*(v37 + 8))(&v11[v35], v36);
            }
          }

          break;
        case 2u:
          if (*(v11 + 1))
          {

            if (*(v11 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v11 + 32));
            }
          }

          if (*(v11 + 10))
          {

            if (*(v11 + 16))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v11 + 104));
            }
          }

          type metadata accessor for DefaultSectionHeader();
          OUTLINED_FUNCTION_20_11();
          v19 = type metadata accessor for Artwork();
          v20 = OUTLINED_FUNCTION_88_0();
          if (!__swift_getEnumTagSinglePayload(v20, v21, v19))
          {
            sub_21700C4B4();
            OUTLINED_FUNCTION_9_0();
            (*(v22 + 8))(v11);
            v23 = *(v19 + 20);
            sub_21700C444();
            OUTLINED_FUNCTION_9_0();
            (*(v24 + 8))(&v11[v23], v25);
          }

          break;
        case 3u:
          if (*(v11 + 1))
          {

            if (*(v11 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v11 + 32));
            }
          }

LABEL_19:

          break;
        default:
          break;
      }
    }
  }

  v17 = v10;
  v18 = v9 + *(v10 + 28);
  type metadata accessor for MappedSection.Content(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:
    case 5u:
    case 0xDu:
    case 0x17u:
    case 0x35u:
    case 0x3Au:
    case 0x3Bu:
      goto LABEL_6;
    case 1u:
      v6(v18, v4);
      goto LABEL_177;
    case 2u:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for AnimatedTextListItem();
      goto LABEL_81;
    case 3u:
    case 7u:
    case 0xBu:
    case 0xEu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x24u:
    case 0x2Du:
    case 0x33u:
    case 0x34u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Du:
      goto LABEL_177;
    case 6u:
      v169 = OUTLINED_FUNCTION_9_12();
      v170 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs(v169);
      OUTLINED_FUNCTION_24_46();
      v171 = sub_21700D7A4();
      v172 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v172, v173, v171))
      {
        OUTLINED_FUNCTION_50();
        (*(v174 + 8))(v18 + v7, v171);
      }

      v175 = v18 + *(v170 + 24);
      if (!__swift_getEnumTagSinglePayload(v175, 1, v1))
      {
        v176 = (v175 + v1[5]);
        v177 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!OUTLINED_FUNCTION_28_9(v177))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_209;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v176);
              v263 = type metadata accessor for ComposerSectionHeader();
              v264 = v263[5];
              if (!OUTLINED_FUNCTION_21_2(&v176[v264]))
              {
                OUTLINED_FUNCTION_50();
                (*(v265 + 8))(&v176[v264], v171);
              }

              v266 = &v176[v263[11]];
              if (*(v266 + 24))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v266);
              }

              v267 = &v176[v263[12]];
              v268 = type metadata accessor for ContentDescriptor();
              if (!OUTLINED_FUNCTION_28_9(v268))
              {

                v269 = *(v264 + 24);
                v270 = sub_217005EF4();
                if (!__swift_getEnumTagSinglePayload(&v267[v269], 1, v270))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v271 + 8))(&v267[v269], v270);
                }
              }

              break;
            case 2u:
              if (*(v176 + 1))
              {

                if (*(v176 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v176 + 32));
                }
              }

              if (*(v176 + 10))
              {

                if (*(v176 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v176 + 104));
                }
              }

              v253 = &v176[*(type metadata accessor for DefaultSectionHeader() + 32)];
              v254 = type metadata accessor for Artwork();
              if (!OUTLINED_FUNCTION_28_9(v254))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v255 + 8))(v253);
                v256 = *(v7 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v257 + 8))(&v253[v256], v258);
              }

              break;
            case 3u:
              if (*(v176 + 1))
              {

                if (*(v176 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v176 + 32));
                }
              }

LABEL_209:

              break;
            default:
              break;
          }
        }
      }

      v178 = v18 + *(v170 + 32);
      v17 = v10;
      if (!__swift_getEnumTagSinglePayload(v178, 1, v1))
      {
        v179 = (v178 + v1[5]);
        v180 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!__swift_getEnumTagSinglePayload(v179, 1, v180))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_214;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v179);
              v272 = type metadata accessor for ComposerSectionHeader();
              v273 = v272[5];
              if (!OUTLINED_FUNCTION_21_2(&v179[v273]))
              {
                OUTLINED_FUNCTION_50();
                (*(v274 + 8))(&v179[v273], v171);
              }

              v275 = &v179[v272[11]];
              if (*(v275 + 24))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v275);
              }

              v276 = &v179[v272[12]];
              v277 = type metadata accessor for ContentDescriptor();
              if (!OUTLINED_FUNCTION_21_2(v276))
              {

                v278 = *(v277 + 24);
                v279 = sub_217005EF4();
                if (!OUTLINED_FUNCTION_21_2(v276 + v278))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v280 + 8))(v276 + v278, v279);
                }
              }

              break;
            case 2u:
              if (*(v179 + 1))
              {

                if (*(v179 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v179 + 32));
                }
              }

              if (*(v179 + 10))
              {

                if (*(v179 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v179 + 104));
                }
              }

              v259 = &v179[*(type metadata accessor for DefaultSectionHeader() + 32)];
              type metadata accessor for Artwork();
              if (!OUTLINED_FUNCTION_21_2(v259))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v260 + 8))(v259);
                OUTLINED_FUNCTION_36_16();
                OUTLINED_FUNCTION_9_0();
                (*(v261 + 8))(v259 + v180, v262);
              }

              break;
            case 3u:
              if (*(v179 + 1))
              {

                if (*(v179 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v179 + 32));
                }
              }

LABEL_214:

              break;
            default:
              break;
          }
        }
      }

LABEL_6:

      goto LABEL_178;
    case 8u:
      v83 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v83))
      {
        OUTLINED_FUNCTION_2_11();
        v84 = OUTLINED_FUNCTION_108();
        v85(v84);
      }

      v86 = type metadata accessor for ContainerDetailTracklistFooterLockup();
      OUTLINED_FUNCTION_1_15(v86);
      OUTLINED_FUNCTION_25_5();
      v87 = type metadata accessor for ContentDescriptor();
      if (!OUTLINED_FUNCTION_19_3(v87))
      {

        v88 = *(v8 + 24);
        v89 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_21_2(v4 + v88))
        {
          OUTLINED_FUNCTION_50();
          (*(v90 + 8))(v4 + v88, v89);
        }
      }

      OUTLINED_FUNCTION_8_9(v1[8]);

      if (*(v18 + v1[9] + 8))
      {
      }

      goto LABEL_177;
    case 9u:
      v91 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v91))
      {
        OUTLINED_FUNCTION_2_11();
        v92 = OUTLINED_FUNCTION_108();
        v93(v92);
      }

      v94 = type metadata accessor for CuratorDetailHeaderComponentModel();
      __swift_destroy_boxed_opaque_existential_1Tm(v18 + v94[5]);
      OUTLINED_FUNCTION_8_9(v94[6]);

      v95 = v94[7];
      v96 = sub_217005EF4();
      v97 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v97, v98, v96))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v99 + 8))(v18 + v95, v96);
      }

      v100 = v18 + v94[8];
      type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_21_2(v100))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v101 + 8))(v100);
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_9_0();
        (*(v102 + 8))(v100 + v95);
      }

      v103 = v18 + v94[10];
      if (!OUTLINED_FUNCTION_21_2(v103))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v104 + 8))(v103);
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_9_0();
        (*(v105 + 8))(v103 + v95);
      }

      v106 = v18 + v94[11];
      v107 = type metadata accessor for VideoArtwork();
      if (!__swift_getEnumTagSinglePayload(v106, 1, v107))
      {

        v108 = *(v107 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v109 + 8))(v106 + v108);
      }

      OUTLINED_FUNCTION_20_11();
      v110 = type metadata accessor for ContentDescriptor();
      v111 = OUTLINED_FUNCTION_88_0();
      if (__swift_getEnumTagSinglePayload(v111, v112, v110))
      {
        goto LABEL_178;
      }

      v113 = *(v110 + 24);
      goto LABEL_171;
    case 0xAu:
      OUTLINED_FUNCTION_9_12();
      v144 = type metadata accessor for EmptyStateLockup();
      OUTLINED_FUNCTION_24_46();
      v145 = sub_21700D7A4();
      v146 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v146, v147, v145))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v148 + 8))(v18 + v7, v145);
      }

      OUTLINED_FUNCTION_8_9(v144[7]);

      OUTLINED_FUNCTION_8_9(v144[8]);

      OUTLINED_FUNCTION_8_9(v144[9]);

      v149 = v18 + v144[10];
      v150 = type metadata accessor for Artwork();
      if (!__swift_getEnumTagSinglePayload(v149, 1, v150))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v151 + 8))(v149);
        v152 = *(v150 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v153 + 8))(v149 + v152);
      }

      OUTLINED_FUNCTION_20_11();
      v154 = type metadata accessor for ColorSchemeArtwork();
      v155 = OUTLINED_FUNCTION_88_0();
      if (__swift_getEnumTagSinglePayload(v155, v156, v154))
      {
        goto LABEL_178;
      }

      v157 = OUTLINED_FUNCTION_88_0();
      if (!__swift_getEnumTagSinglePayload(v157, v158, v150))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v159 + 8))(v18);
        v160 = *(v150 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v161 + 8))(v18 + v160);
      }

      v18 += *(v154 + 20);
      goto LABEL_158;
    case 0xCu:
      v72 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v72))
      {
        OUTLINED_FUNCTION_2_11();
        v73 = OUTLINED_FUNCTION_108();
        v74(v73);
      }

      v75 = type metadata accessor for GroupedTextListLockup();
      OUTLINED_FUNCTION_1_15(v75);
      OUTLINED_FUNCTION_25_5();
      v76 = type metadata accessor for ModalPresentationDescriptor();
      if (!OUTLINED_FUNCTION_19_3(v76))
      {

        v77 = *(v8 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v78 + 8))(v4 + v77);
      }

      goto LABEL_177;
    case 0x10u:
      OUTLINED_FUNCTION_9_12();
      v121 = type metadata accessor for InlineUpsell();
      OUTLINED_FUNCTION_24_46();
      v122 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v122))
      {
        OUTLINED_FUNCTION_3_10();
        v123 = OUTLINED_FUNCTION_26_6();
        v124(v123);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_8_9(v121[7]);

      OUTLINED_FUNCTION_8_9(v121[8]);

      v125 = OUTLINED_FUNCTION_13_4(v121[9]);
      if (v126)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v125);
      }

      v127 = OUTLINED_FUNCTION_13_4(v121[10]);
      if (v128)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v127);
      }

      v129 = v121[11];
      goto LABEL_137;
    case 0x11u:
      OUTLINED_FUNCTION_9_12();
      v53 = type metadata accessor for LandingUpsell();
      OUTLINED_FUNCTION_24_46();
      v54 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v54))
      {
        OUTLINED_FUNCTION_3_10();
        v55 = OUTLINED_FUNCTION_26_6();
        v56(v55);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_8_9(v53[7]);

      OUTLINED_FUNCTION_8_9(v53[8]);

      OUTLINED_FUNCTION_8_9(v53[9]);

      v57 = OUTLINED_FUNCTION_13_4(v53[10]);
      if (v58)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
      }

      v59 = OUTLINED_FUNCTION_13_4(v53[11]);
      if (v60)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
      }

      v61 = OUTLINED_FUNCTION_13_4(v53[12]);
      if (v62)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
      }

      v63 = v18 + v53[13];
      v64 = type metadata accessor for Artwork();
      if (!__swift_getEnumTagSinglePayload(v63, 1, v64))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v65 + 8))(v63);
        v66 = *(v64 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v67 + 8))(v63 + v66);
      }

      v18 += v53[14];
      v68 = OUTLINED_FUNCTION_88_0();
      if (__swift_getEnumTagSinglePayload(v68, v69, v64))
      {
        goto LABEL_178;
      }

      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v70 + 8))(v18);
      v71 = *(v64 + 20);
      goto LABEL_160;
    case 0x14u:
      v134 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v134))
      {
        OUTLINED_FUNCTION_2_11();
        v135 = OUTLINED_FUNCTION_108();
        v136(v135);
      }

      v137 = type metadata accessor for ListSection();
      OUTLINED_FUNCTION_1_15(v137);
      OUTLINED_FUNCTION_8_9(v138);

      OUTLINED_FUNCTION_8_9(v1[7]);

      goto LABEL_177;
    case 0x15u:

      __swift_destroy_boxed_opaque_existential_1Tm(v18 + 8);
      v162 = type metadata accessor for GradientListRowModel();
      v163 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v163))
      {
        OUTLINED_FUNCTION_3_10();
        v164 = OUTLINED_FUNCTION_26_6();
        v165(v164);
      }

      v166 = OUTLINED_FUNCTION_13_4(*(v162 + 28));
      if (v167)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v166);
      }

      v168 = v18 + *(v162 + 32);
      if (*(v168 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v168 + 8);
      }

      goto LABEL_120;
    case 0x16u:
      v208 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v208))
      {
        OUTLINED_FUNCTION_2_11();
        v209 = OUTLINED_FUNCTION_108();
        v210(v209);
      }

      v211 = type metadata accessor for ParagraphComponentModel();
      OUTLINED_FUNCTION_1_15(v211);
      OUTLINED_FUNCTION_8_9(v212);
      goto LABEL_151;
    case 0x18u:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v139 + 8))(v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940);
      goto LABEL_177;
    case 0x19u:
      v140 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v140))
      {
        OUTLINED_FUNCTION_2_11();
        v141 = OUTLINED_FUNCTION_108();
        v142(v141);
      }

      v143 = type metadata accessor for PopoverSelector();
      OUTLINED_FUNCTION_1_15(v143);
LABEL_151:

      goto LABEL_175;
    case 0x1Du:
      v195 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v195))
      {
        OUTLINED_FUNCTION_2_11();
        v196 = OUTLINED_FUNCTION_108();
        v197(v196);
      }

      ContextLockup = type metadata accessor for SearchQueryContextLockup();
      OUTLINED_FUNCTION_1_15(ContextLockup);
      OUTLINED_FUNCTION_8_9(v199);

      OUTLINED_FUNCTION_8_9(v1[8]);

      OUTLINED_FUNCTION_8_9(v1[9]);

      OUTLINED_FUNCTION_8_9(v1[10]);

      goto LABEL_177;
    case 0x1Eu:
      __swift_destroy_boxed_opaque_existential_1Tm(v18);

      v71 = *(type metadata accessor for MappedSearchResultsList(0) + 24);
      sub_21700D194();
      goto LABEL_161;
    case 0x22u:
      OUTLINED_FUNCTION_9_12();
      v1 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
      OUTLINED_FUNCTION_24_46();
      v117 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v117))
      {
        OUTLINED_FUNCTION_3_10();
        v118 = OUTLINED_FUNCTION_26_6();
        v119(v118);
      }

      goto LABEL_87;
    case 0x23u:
      __swift_destroy_boxed_opaque_existential_1Tm(v18);

      v113 = *(type metadata accessor for SocialOnboardingPrivacySettingsPageLockup() + 48);
      goto LABEL_170;
    case 0x25u:

      __swift_destroy_boxed_opaque_existential_1Tm(v18 + 16);
      v1 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
      v242 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v242))
      {
        OUTLINED_FUNCTION_3_10();
        v243 = OUTLINED_FUNCTION_26_6();
        v244(v243);
      }

LABEL_175:
      v120 = v1[7];
      goto LABEL_176;
    case 0x26u:
      v45 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_4_16(v45))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v46 + 8))(v18);
        v47 = v1[5];
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v48 + 8))(v18 + v47);
      }

      v49 = type metadata accessor for SocialOnboardingWelcomePageLockup();
      OUTLINED_FUNCTION_11_13(v49);
      v50 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v50))
      {
        OUTLINED_FUNCTION_3_10();
        v51 = OUTLINED_FUNCTION_26_6();
        v52(v51);
      }

      OUTLINED_FUNCTION_8_9(v1[7]);

LABEL_87:
      v120 = v1[8];
      goto LABEL_176;
    case 0x27u:
      v213 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v213))
      {
        OUTLINED_FUNCTION_2_11();
        v214 = OUTLINED_FUNCTION_108();
        v215(v214);
      }

      v216 = type metadata accessor for SocialProfileDetailHeaderLockup();
      OUTLINED_FUNCTION_1_15(v216);
      v218 = v18 + v217;

      v219 = *(type metadata accessor for ContentDescriptor() + 24);
      v220 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_35_19(v220))
      {
        OUTLINED_FUNCTION_3_10();
        (*(v221 + 8))(v218 + v219, v4);
      }

      OUTLINED_FUNCTION_8_9(v1[7]);

      OUTLINED_FUNCTION_8_9(v1[8]);

      OUTLINED_FUNCTION_20_11();
      v150 = type metadata accessor for Artwork();
LABEL_158:
      v222 = OUTLINED_FUNCTION_88_0();
      if (!__swift_getEnumTagSinglePayload(v222, v223, v150))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v224 + 8))(v18);
        v71 = *(v150 + 20);
LABEL_160:
        sub_21700C444();
LABEL_161:
        OUTLINED_FUNCTION_9_0();
        (*(v225 + 8))(v18 + v71, v226);
      }

      goto LABEL_178;
    case 0x28u:
      v227 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v227))
      {
        OUTLINED_FUNCTION_2_11();
        v228 = OUTLINED_FUNCTION_108();
        v229(v228);
      }

      v230 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
      OUTLINED_FUNCTION_1_15(v230);
      v232 = v18 + v231;

      v233 = *(type metadata accessor for ContentDescriptor() + 24);
      v234 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_35_19(v234))
      {
        OUTLINED_FUNCTION_3_10();
        (*(v235 + 8))(v232 + v233, v4);
      }

      OUTLINED_FUNCTION_8_9(v1[7]);

      OUTLINED_FUNCTION_8_9(v1[8]);

      OUTLINED_FUNCTION_8_9(v1[11]);

      OUTLINED_FUNCTION_8_9(v1[12]);

      OUTLINED_FUNCTION_8_9(v1[13]);

      OUTLINED_FUNCTION_8_9(v1[14]);

      OUTLINED_FUNCTION_25_5();
      v236 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_19_3(v236))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v237 + 8))(v4);
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_9_0();
        (*(v238 + 8))(v4 + v232);
      }

      v120 = v1[17];
      goto LABEL_176;
    case 0x29u:
      v181 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v181))
      {
        OUTLINED_FUNCTION_2_11();
        v182 = OUTLINED_FUNCTION_108();
        v183(v182);
      }

      FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
      OUTLINED_FUNCTION_1_15(FriendsButtonComponentModel);
      OUTLINED_FUNCTION_8_9(v185);

      v129 = v1[7];
      goto LABEL_137;
    case 0x2Au:
      v130 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v130))
      {
        OUTLINED_FUNCTION_2_11();
        v131 = OUTLINED_FUNCTION_108();
        v132(v131);
      }

      v133 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
      OUTLINED_FUNCTION_11_13(v133);
      goto LABEL_177;
    case 0x2Bu:
      v186 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v186))
      {
        OUTLINED_FUNCTION_2_11();
        v187 = OUTLINED_FUNCTION_108();
        v188(v187);
      }

      v189 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
      OUTLINED_FUNCTION_1_15(v189);
      OUTLINED_FUNCTION_8_9(v190);

      OUTLINED_FUNCTION_8_9(v1[7]);

      v191 = OUTLINED_FUNCTION_13_4(v1[8]);
      if (v192)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v191);
      }

      v129 = v1[9];
LABEL_137:
      v193 = OUTLINED_FUNCTION_13_4(v129);
      if (v194)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v193);
      }

      goto LABEL_178;
    case 0x2Cu:
      v79 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v79))
      {
        OUTLINED_FUNCTION_2_11();
        v80 = OUTLINED_FUNCTION_108();
        v81(v80);
      }

      v82 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
      OUTLINED_FUNCTION_11_13(v82);
      goto LABEL_177;
    case 0x2Eu:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
LABEL_81:
      OUTLINED_FUNCTION_24_46();
      v114 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v114))
      {
        OUTLINED_FUNCTION_3_10();
        v115 = OUTLINED_FUNCTION_26_6();
        v116(v115);
      }

      goto LABEL_177;
    case 0x2Fu:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
      OUTLINED_FUNCTION_24_46();
      v38 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v38))
      {
        OUTLINED_FUNCTION_3_10();
        v39 = OUTLINED_FUNCTION_26_6();
        v40(v39);
      }

LABEL_120:

      goto LABEL_177;
    case 0x30u:
      v41 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v41))
      {
        OUTLINED_FUNCTION_2_11();
        v42 = OUTLINED_FUNCTION_108();
        v43(v42);
      }

      v44 = type metadata accessor for SocialProfileHorizontalLockupSection();
      OUTLINED_FUNCTION_1_15(v44);

      if (*(v18 + v1[7]) == 1)
      {
        goto LABEL_178;
      }

LABEL_177:

LABEL_178:
      v245 = *(v17 + 36);
      v246 = sub_21700D7A4();
      if (!__swift_getEnumTagSinglePayload(v9 + v245, 1, v246))
      {
        OUTLINED_FUNCTION_50();
        (*(v247 + 8))(v9 + v245, v246);
      }

      v248 = v9 + *(v17 + 40);
      v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948);
      if (!__swift_getEnumTagSinglePayload(v248, 1, v249))
      {

        v250 = *(v249 + 36);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v251 + 8))(v248 + v250);
      }

      sub_216684F5C(*(v282 + *(v284 + 44)), *(v282 + *(v284 + 44) + 8));

      return swift_deallocObject();
    case 0x31u:
      __swift_destroy_boxed_opaque_existential_1Tm(v18);

      goto LABEL_177;
    case 0x32u:
      OUTLINED_FUNCTION_9_12();
      v113 = *(type metadata accessor for Spacer() + 20);
LABEL_170:
      v96 = sub_21700D7A4();
LABEL_171:
      v239 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v239, v240, v96))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v241 + 8))(v18 + v113, v96);
      }

      goto LABEL_178;
    case 0x3Cu:
      OUTLINED_FUNCTION_9_12();
      v200 = type metadata accessor for VerticalArtworkListItem();
      OUTLINED_FUNCTION_24_46();
      v201 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v201))
      {
        OUTLINED_FUNCTION_3_10();
        v202 = OUTLINED_FUNCTION_26_6();
        v203(v202);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_25_5();
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v204 + 8))(v4);
      type metadata accessor for Artwork();
      OUTLINED_FUNCTION_24_46();
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v205 + 8))(v4 + v7);
      v206 = OUTLINED_FUNCTION_13_4(*(v200 + 32));
      if (v207)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v206);
      }

      v120 = *(v200 + 36);
LABEL_176:
      OUTLINED_FUNCTION_8_9(v120);
      goto LABEL_177;
    default:
      goto LABEL_178;
  }
}

uint64_t sub_216769F90(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v11 = &a1[*(a3 + 40)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_21676A024(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v8 = &v5[*(a4 + 40)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676A0AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC28);
  v0 = OUTLINED_FUNCTION_108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  type metadata accessor for AlbumTrackLockupView();
  type metadata accessor for AlbumTrackListSection.DividerOverlay();
  OUTLINED_FUNCTION_18_73();
  swift_getWitnessTable();
  sub_217008BC4();
  sub_2170089F4();
  OUTLINED_FUNCTION_16_7();
  sub_2166D9530(v1, &unk_27CABF8B0);
  OUTLINED_FUNCTION_15_75();
  sub_2166D28B0(v2, v3);
  OUTLINED_FUNCTION_21_69();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  type metadata accessor for PaginatingGridView();
  sub_21700B1D4();
  sub_21695ED20();
  OUTLINED_FUNCTION_25_35();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_74();
  return swift_getWitnessTable();
}

uint64_t sub_21676A294()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v7 = v6;
  v8 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v7 + 8))(v0 + v8, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_21676A430(uint64_t a1, uint64_t a2)
{
  ContextLockup = type metadata accessor for SearchQueryContextLockup();

  return __swift_getEnumTagSinglePayload(a1, a2, ContextLockup);
}

uint64_t sub_21676A478(uint64_t a1, uint64_t a2)
{
  ContextLockup = type metadata accessor for SearchQueryContextLockup();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, ContextLockup);
}

uint64_t sub_21676A4C8(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_110();
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_5:
    v9 = v3 + v12;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
    OUTLINED_FUNCTION_17();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
      OUTLINED_FUNCTION_17();
      if (*(v18 + 84) == a2)
      {
        v8 = v17;
        v12 = a3[9];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
        v12 = a3[11];
      }
    }

    goto LABEL_5;
  }

  v14 = *(v3 + a3[6] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_21676A678(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_110();
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for FlowAction.Destination(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v4 + a4[6] + 8) = (a2 - 1);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[9];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
          v14 = a4[11];
        }
      }
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21676A824(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      sub_217007064();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[7];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_21676A944(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_217007064();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_21676AAE8()
{
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_33_1();
  type metadata accessor for ReplayMonthSelectorView();
  OUTLINED_FUNCTION_43_3();
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  v5 = v4 + *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CACC940);
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC9D0);

  v7 = v4 + *(v1 + 60);

  OUTLINED_FUNCTION_33_1();
  sub_21700B104();
  OUTLINED_FUNCTION_2_183();
  (*(v8 + 8))(v7 + v9, v2);

  return swift_deallocObject();
}

uint64_t sub_21676AC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = sub_217008934();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_21676ACB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 40);
  v7 = sub_217008934();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_21676AD48()
{
  OUTLINED_FUNCTION_37_15();
  type metadata accessor for ReplayMonthSelectorView.PickerButtonsWithHighlight();
  sub_2170089F4();
  OUTLINED_FUNCTION_5_143();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_3();
  sub_217008044();
  OUTLINED_FUNCTION_12_90();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_37_15();
  type metadata accessor for ReplayMonthSelectorView.FadingView();
  OUTLINED_FUNCTION_9_108();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170085A4();
  sub_2170089F4();
  sub_217008BA4();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_21_5();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_217008BC4();
  OUTLINED_FUNCTION_23_60();
  sub_2170089F4();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_16_76();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_37_15();
  sub_21700E984();
  OUTLINED_FUNCTION_25_55();
  OUTLINED_FUNCTION_14_86();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_48();
  OUTLINED_FUNCTION_25_55();
  sub_216EE525C();
  OUTLINED_FUNCTION_24_48();
  OUTLINED_FUNCTION_25_55();
  OUTLINED_FUNCTION_2_3();
  sub_217008B64();
  OUTLINED_FUNCTION_11_27();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCA08);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_10_105();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_150();
  sub_2166D9530(v0, v1);
  return swift_getWitnessTable();
}

uint64_t sub_21676B0B8()
{
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_33_1();
  type metadata accessor for ReplayMonthSelectorView.PickerButtonsWithHighlight();
  OUTLINED_FUNCTION_43_3();
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  v5 = v4 + *(v1 + 48);

  OUTLINED_FUNCTION_33_1();
  sub_21700B104();
  OUTLINED_FUNCTION_2_183();
  (*(v6 + 8))(v5 + v7, v2);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_21676B23C()
{
  OUTLINED_FUNCTION_37_15();
  type metadata accessor for ReplayMonthSelectorView.PickerButtons();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_37_15();
  sub_21700E984();
  OUTLINED_FUNCTION_37_15();
  type metadata accessor for ReplayMonthSelectorView.PickerButton();
  OUTLINED_FUNCTION_5_104();
  swift_getWitnessTable();
  sub_21700B174();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_7_121();
  sub_216EE73FC(v0, v1);
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_126();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21676B3F0()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_27_54();
  v2 = type metadata accessor for ReplayMonthSelectorView.PickerButton();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));

  OUTLINED_FUNCTION_27_54();
  v4 = sub_21700B104();
  v5 = *(*(v1 - 8) + 8);
  v5(v3 + *(v4 + 32), v1);
  v5(v3 + v2[9], v1);
  v6 = v3 + v2[10];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  v7 = v2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v3 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_21676B59C()
{
  OUTLINED_FUNCTION_11_27();
  sub_21700E984();
  OUTLINED_FUNCTION_11_27();
  type metadata accessor for ReplayMonthSelectorView.PickerButton();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCC40);
  OUTLINED_FUNCTION_11_27();
  type metadata accessor for ReplayMonthSelectorView.FadingView();
  sub_2170089F4();
  sub_2170089F4();
  sub_217008BA4();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_2_3();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_3();
  sub_21700B0A4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_3();
  sub_217009534();
  sub_2170089F4();
  OUTLINED_FUNCTION_5_104();
  swift_getWitnessTable();
  sub_21700B174();
  OUTLINED_FUNCTION_6_126();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21700B174();
  sub_21700B1D4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_217007FE4();
  return swift_getWitnessTable();
}

uint64_t sub_21676B868()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCC90);
  sub_2166D9530(&qword_27CACCC98, &qword_27CACCC90);
  sub_21700AFA4();
  sub_217008AD4();
  swift_getWitnessTable();
  sub_216EE73FC(&qword_280E2AD60, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCCA0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009584();
  swift_getOpaqueTypeConformance2();
  sub_2166D9530(&qword_27CACCCA8, &qword_27CACCCA0);
  swift_getWitnessTable();
  sub_216EE73FC(&qword_27CACCCB0, MEMORY[0x277CDDFF8]);
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_7_121();
  sub_216EE73FC(v0, v1);
  return swift_getWitnessTable();
}

uint64_t sub_21676BB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      v9 = ((v8 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v9 = -2;
    }

    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21676BC00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_21676BD0C()
{
  sub_217008674();
  type metadata accessor for FlowActionPageView();
  type metadata accessor for NavigationDestinationsModifier();
  sub_2170089F4();
  OUTLINED_FUNCTION_1_218();
  sub_2166B4C18(v0, v1);
  OUTLINED_FUNCTION_0_258();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_217008A24();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A88);
  sub_2170089F4();
  OUTLINED_FUNCTION_3_176();
  swift_getWitnessTable();
  sub_216A528D0();
  return swift_getWitnessTable();
}

uint64_t sub_21676BF34()
{

  return swift_deallocObject();
}

uint64_t sub_21676BFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_21676C08C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContentDescriptor();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20) + 8) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21676C168(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21676C1F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676C334@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008D64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21676C3B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDC8);
  sub_216EF6E30();
  sub_216DE8638();
  OUTLINED_FUNCTION_13_85();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21676C424(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_21676C4AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676C538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7878);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 24)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_21676C5E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7878);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21676C6A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCEC0);
  sub_216EF8CAC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21676C750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 32);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21676C7FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SocialProfileFollowRequestResponseHeader();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = -a2;
  }

  return result;
}

uint64_t sub_21676C8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21676C8F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21676C964(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700C4B4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21676C9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700C4B4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21676C9FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217006224();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21676CA84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_217006224();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676CB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21676CBAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21676CC5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21676CCE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676CD64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700CDF4();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21676CDEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700CDF4();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676CE6C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[11];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v9 = a3[13];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[8] + 24);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_21676CFA0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[8] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[11];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v11 = a4[13];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_21676D0D0(uint64_t a1)
{
  result = sub_2166D5234(qword_280E3DB38, type metadata accessor for LiveRadioGridLockup);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_21676D134(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21676D15C()
{

  return swift_deallocObject();
}

uint64_t sub_21676D1A0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  v7 = type metadata accessor for CompositeLibraryCatalogView.Section();
  v8 = a1 + *(a3 + 60);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_21676D224(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CompositeLibraryCatalogView.Section();
    v8 = v5 + *(a4 + 60);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676D2AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MappedSection(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21676D2F4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MappedSection(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_21676D350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 44)));
  }

  v7 = v6;
  v8 = a1 + *(a3 + 36);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21676D400(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

void sub_21676D4B8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_34_38(v52, *v0, *v0);
  type metadata accessor for CompositeLibraryCatalogView.Section();
  v1 = sub_21700E984();
  v2 = &v93;
  v101.val[0] = v52[0];
  v101.val[1] = v52[1];
  vst2q_f64(v2, v101);
  v3 = type metadata accessor for CompositeLibraryCatalogView.SectionView();
  OUTLINED_FUNCTION_5_104();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_69();
  v5 = swift_getWitnessTable();
  OUTLINED_FUNCTION_19_63();
  v6 = swift_getWitnessTable();
  v93 = v1;
  v94 = v3;
  v95 = MEMORY[0x277CE1428];
  v96 = WitnessTable;
  v97 = v5;
  v98 = MEMORY[0x277CE1410];
  v99 = &off_2816C2F28;
  v100 = v6;
  type metadata accessor for ShelfCollection();
  OUTLINED_FUNCTION_0_228();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_3();
  sub_217008B64();
  OUTLINED_FUNCTION_10_105();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_3();
  sub_21700B0A4();
  v7 = OUTLINED_FUNCTION_46_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA00);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA18);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA20);
  OUTLINED_FUNCTION_19_0();
  v8 = sub_2170089F4();
  v9 = type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_10_56();
  v10 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_5();
  v12 = v11;
  v14 = sub_2166D9530(v13, &qword_27CABB9F8);
  v91 = v10;
  v92 = v14;
  OUTLINED_FUNCTION_8_72();
  v15 = swift_getWitnessTable();
  v52[0].n128_u64[0] = v12;
  v16 = sub_2166D9530(&qword_280E2A7D8, &qword_27CABBA00);
  v89 = v15;
  v90 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_2166D9530(&qword_280E2A7E8, &qword_27CABBA18);
  v87 = v17;
  v88 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_2166D9530(&qword_280E2A7A8, &qword_27CABBA20);
  v85 = v19;
  v86 = v20;
  v21 = swift_getWitnessTable();
  v93 = v8;
  v94 = v9;
  v95 = v21;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD1A0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA68);
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA70);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA78);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA80);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009564();
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9278);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E70);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9290);
  sub_2170089F4();
  v22 = sub_2170089F4();
  v93 = v8;
  v94 = v9;
  v95 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_22_62();
  v25 = sub_2166D9530(v24, &qword_27CACD1A0);
  v83 = OpaqueTypeConformance2;
  v84 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_2166D9530(&qword_280E2A7B0, &qword_27CABBA68);
  v81 = v26;
  v82 = v27;
  v79 = swift_getWitnessTable();
  v80 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_2166D9530(&qword_280E2AC10, &qword_27CABBA70);
  v77 = v28;
  v78 = v29;
  OUTLINED_FUNCTION_46_1();
  v30 = swift_getWitnessTable();
  v75 = v28;
  v76 = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78);
  v73 = v28;
  v74 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80);
  v71 = v28;
  v72 = v34;
  v35 = swift_getWitnessTable();
  v69 = v33;
  v70 = v35;
  v36 = swift_getWitnessTable();
  v67 = v31;
  v68 = v36;
  v65 = swift_getWitnessTable();
  v66 = v28;
  v37 = swift_getWitnessTable();
  v38 = sub_2166D9530(&qword_280E2A738, &qword_27CAB9278);
  v63 = v37;
  v64 = v38;
  v39 = swift_getWitnessTable();
  v40 = sub_2166D9530(&qword_27CAC6E68, &qword_27CAC6E70);
  v61 = v39;
  v62 = v40;
  v41 = swift_getWitnessTable();
  v42 = sub_2166D9530(&qword_280E2A768, &qword_27CAB9290);
  v59 = v41;
  v60 = v42;
  v57 = swift_getWitnessTable();
  v58 = v42;
  v43 = swift_getWitnessTable();
  v93 = v22;
  v94 = v43;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = v22;
  v94 = v43;
  v45 = OUTLINED_FUNCTION_30_53();
  v93 = OpaqueTypeMetadata2;
  v94 = v45;
  OUTLINED_FUNCTION_12_91();
  v46 = swift_getOpaqueTypeMetadata2();
  v93 = OpaqueTypeMetadata2;
  v94 = v45;
  v47 = OUTLINED_FUNCTION_30_53();
  v93 = v46;
  v94 = v47;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9298);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92A0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  v93 = v46;
  v94 = v47;
  v48 = OUTLINED_FUNCTION_30_53();
  v49 = sub_2166D9530(&qword_280E2A778, &qword_27CAB9298);
  v55 = v48;
  v56 = v49;
  v50 = swift_getWitnessTable();
  v51 = sub_2166D9530(&qword_280E2A7B8, &qword_27CAB92A0);
  v53 = v50;
  v54 = v51;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21676DD30()
{
  v0 = OUTLINED_FUNCTION_7_4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  OUTLINED_FUNCTION_2_186();
  sub_2166D9530(v1, &qword_27CAC6F08);
  OUTLINED_FUNCTION_6_1();
  return swift_getWitnessTable();
}

uint64_t sub_21676DE38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216F08C30();
  *a1 = result;
  return result;
}

uint64_t sub_21676DE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LinkComponentModel();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24) + 32);
      if (v13 > 1)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21676DF88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for LinkComponentModel();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 32) = -a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21676E088()
{
  v1 = type metadata accessor for LinkView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = type metadata accessor for LinkComponentModel();
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + *(v5 + 20));
  v6 = v3 + *(v5 + 24);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v3 + v7);
  v9 = v3 + *(v1 + 24);
  sub_21680E444(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));

  return swift_deallocObject();
}

uint64_t sub_21676E22C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2169936D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21676E29C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  v7 = type metadata accessor for SearchResultsPageIntent();
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_21676E318(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SearchResultsPageIntent();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676E398()
{
  OUTLINED_FUNCTION_29_26();
  v1 = type metadata accessor for SearchResultsViewModel.Data(0);
  OUTLINED_FUNCTION_43_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SearchResultsViewModel(0);
  OUTLINED_FUNCTION_43_0();
  v8 = *(v7 + 80);
  v9 = v3 + v5 + v8;
  swift_unknownObjectRelease();
  v10 = v0 + v3;
  Context = type metadata accessor for JSSearchResultsPage.QueryContext(0);
  if (!OUTLINED_FUNCTION_15_10(Context))
  {

    v12 = *(v5 + 36);
    sub_21700D7A4();
    OUTLINED_FUNCTION_34();
    (*(v13 + 8))(v10 + v12);
  }

  v14 = v9 & ~v8;
  v15 = v10 + *(v1 + 20);
  v16 = type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
  if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
  {

    v16 = *(v16 + 20);
    sub_21700D194();
    OUTLINED_FUNCTION_34();
    (*(v17 + 8))(v15 + v16);
  }

  v18 = v0 + v14 + *(v6 + 24);

  v19 = v18 + *(type metadata accessor for SearchResultsPageIntent() + 20);
  v20 = type metadata accessor for ReferrerInfo();
  if (!OUTLINED_FUNCTION_15_10(v20))
  {
    v21 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_9_110(v21))
    {
      OUTLINED_FUNCTION_2_11();
      (*(v22 + 8))(v19, v16);
    }

    OUTLINED_FUNCTION_12_92();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_28_5();

  return swift_deallocObject();
}

uint64_t sub_21676E624()
{
  OUTLINED_FUNCTION_29_26();
  type metadata accessor for SearchResultsViewModel(0);
  OUTLINED_FUNCTION_43_0();
  v2 = *(v1 + 64);
  swift_unknownObjectRelease();

  type metadata accessor for SearchResultsPageIntent();
  v3 = OUTLINED_FUNCTION_19_64();
  if (!OUTLINED_FUNCTION_15_10(v3))
  {
    v4 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_9_110(v4))
    {
      OUTLINED_FUNCTION_2_11();
      (*(v5 + 8))(v0, v2);
    }

    OUTLINED_FUNCTION_12_92();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_28_5();

  return swift_deallocObject();
}

uint64_t sub_21676E768()
{
  OUTLINED_FUNCTION_29_26();
  type metadata accessor for SearchResultsViewModel(0);
  OUTLINED_FUNCTION_43_0();
  v2 = *(v1 + 64);

  type metadata accessor for SearchResultsPageIntent();
  v3 = OUTLINED_FUNCTION_19_64();
  if (!OUTLINED_FUNCTION_15_10(v3))
  {
    v4 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_9_110(v4))
    {
      OUTLINED_FUNCTION_2_11();
      (*(v5 + 8))(v0, v2);
    }

    OUTLINED_FUNCTION_12_92();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_28_5();

  return swift_deallocObject();
}

uint64_t sub_21676E8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 32)));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21676E99C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21676EAA4()
{

  return swift_deallocObject();
}

uint64_t sub_21676EAE4()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216F1173C();
  *v0 = result;
  return result;
}

uint64_t sub_21676EB10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21676EBA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676EC30()
{
  v1 = (type metadata accessor for SearchScopeBar(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21676ED80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21676EE14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676EEFC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD568);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD560);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD558);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD5A0);
  OUTLINED_FUNCTION_9_112();
  sub_21669E098(v0, &qword_27CACD558);
  OUTLINED_FUNCTION_8_118();
  sub_21669E098(v1, &qword_27CACD5A0);
  OUTLINED_FUNCTION_4_97();
  OUTLINED_FUNCTION_57_0();
  sub_2167B2E14();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_57_0();
  return OUTLINED_FUNCTION_57_0();
}

uint64_t sub_21676F040@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x21CE99BE0]();
  *a1 = result;
  return result;
}

uint64_t sub_21676F070()
{

  OUTLINED_FUNCTION_19_5();

  return swift_deallocObject();
}

uint64_t sub_21676F0A0()
{

  OUTLINED_FUNCTION_19_5();

  return swift_deallocObject();
}

uint64_t sub_21676F10C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD848);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD840);
  sub_2170086D4();
  OUTLINED_FUNCTION_9_92();
  sub_21669E098(v0, &qword_27CACD840);
  OUTLINED_FUNCTION_5_140();
  OUTLINED_FUNCTION_57_0();
  return OUTLINED_FUNCTION_57_0();
}

uint64_t sub_21676F204()
{

  return swift_deallocObject();
}

uint64_t sub_21676F2D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDA98);
  sub_2167B2E14();
  sub_21669E098(&qword_27CACDAA0, &qword_27CACDA98);
  OUTLINED_FUNCTION_7_125();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDAA8);
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDAB0);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_130();
  sub_21669E098(v0, &qword_27CACDAA8);
  swift_getWitnessTable();
  sub_21669E098(&qword_27CACDAC0, &qword_27CACDAB0);
  sub_217009F14();
  sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_38_28();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21676F540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21700D284();
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_21676F5D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_21676F668(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21676F674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JSReplayPage();
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

uint64_t sub_21676F720(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for JSReplayPage();
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

uint64_t sub_21676F810(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217007884();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21676F898(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_217007884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676F978(uint64_t a1, uint64_t a2)
{
  v4 = sub_217007884();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21676F9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_217007884();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21676FA90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == a2)
  {
    v4 = OUTLINED_FUNCTION_126_3();

    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    return (v7 + 1);
  }
}

void sub_21676FB28()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_21676FBB8()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC8);
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    sub_217007884();
    v5 = OUTLINED_FUNCTION_20_44();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v4);
}

uint64_t sub_21676FC54()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC8);
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_20_44();
  }

  OUTLINED_FUNCTION_32_4();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_21676FCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD8);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD0);
      v12 = *(a3 + 24);
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_21676FDD4()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD8);
    OUTLINED_FUNCTION_17();
    if (*(v2 + 84) != v0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD0);
    }
  }

  OUTLINED_FUNCTION_32_4();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_21676FEB8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == a2)
  {
    v4 = OUTLINED_FUNCTION_126_3();

    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  else
  {
    OUTLINED_FUNCTION_122_8();
    OUTLINED_FUNCTION_11_1();
    v8 = v7 - 1;
    if (v8 < 0)
    {
      v8 = -1;
    }

    return (v8 + 1);
  }
}

void sub_21676FF5C()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_21676FFF8()
{
  OUTLINED_FUNCTION_92();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBE8);
    v5 = OUTLINED_FUNCTION_20_44();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v4);
}

uint64_t sub_216770094()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBE8);
    OUTLINED_FUNCTION_20_44();
  }

  OUTLINED_FUNCTION_32_4();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216770174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_21677020C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t _s18SwiftMusicProtocol16HorizontalLockupV13HeadlineColorOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_23_0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167702C8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_23_0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167702DC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = sub_217007884();
    v10 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void *sub_2167703A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = sub_217007884();
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_21677048C(uint64_t *a1, uint64_t a2, int *a3)
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
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5A8);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5B0);
        v11 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_2167705AC(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5A8);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5B0);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2167706D8()
{
  OUTLINED_FUNCTION_4_3();
  if (v1 == v2)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    v5 = v0;
    sub_217007884();
    v6 = OUTLINED_FUNCTION_19_1(*(v5 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_216770750(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_217007884();
    v8 = OUTLINED_FUNCTION_19_1(*(v7 + 24));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_2167707C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v15 = *(a3 + 28);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE618);
      v15 = *(a3 + 32);
    }

    v9 = v3 + v15;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_11_1();
  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_2167708F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + a4[5] + 8) = a2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE618);
      v14 = a4[8];
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216770A10()
{
  OUTLINED_FUNCTION_4_3();
  if (v1 == v2)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    v5 = v0;
    sub_217007884();
    v6 = OUTLINED_FUNCTION_19_1(*(v5 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_216770A88(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_217007884();
    v8 = OUTLINED_FUNCTION_19_1(*(v7 + 20));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_216770B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  v6 = sub_217007884();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_216770BBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217007884();
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

uint64_t sub_216770C64(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  v7 = sub_217007884();
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_216770CE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_217007884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216770DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_216770E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_216770EE0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
    v10 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void *sub_216770FA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2167710BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_216771154(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_2167711F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = sub_217007884();
    v10 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void *sub_2167712C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = sub_217007884();
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2167713EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_216771484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_216771528(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
    v10 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void *sub_2167715F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2167716C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  v6 = sub_217007884();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
    v8 = v3 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(v3 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_2167717A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  result = sub_217007884();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + *(a4 + 20) + 8) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
    v10 = v4 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216771880(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217007884();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216771908(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_217007884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167719E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C80);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      OUTLINED_FUNCTION_11_1();
      return OUTLINED_FUNCTION_96_9(v13);
    }

    v8 = v10;
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_216771AD4()
{
  OUTLINED_FUNCTION_18_46();
  v4 = v3;
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v2)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C80);
    OUTLINED_FUNCTION_17();
    if (*(v6 + 84) != v2)
    {
      *(v0 + *(v1 + 24) + 8) = v4;
      return;
    }
  }

  OUTLINED_FUNCTION_32_4();

  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_216771BBC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v2, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    return (v7 + 1);
  }
}

void sub_216771C58()
{
  OUTLINED_FUNCTION_18_46();
  v4 = v3;
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v2)
  {
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v0 + *(v1 + 20)) = (v4 - 1);
  }
}

uint64_t sub_216771CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v4 + 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C90);
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_216771DB8(void *result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_18_46();
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v4 + 84) != v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C90);
    }

    OUTLINED_FUNCTION_32_4();

    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  return result;
}

uint64_t sub_216771E90(uint64_t a1)
{
  result = sub_216F77B10(&qword_27CAB79F8, type metadata accessor for Empty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216771EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Empty();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for BaseURLRequest();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216771F84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Empty();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for BaseURLRequest();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216772044(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = sub_217007884();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_216772088(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = sub_217007884();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_2167720FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
    v9 = v3 + *(a3 + 28);
    goto LABEL_10;
  }

  v10 = *(v3 + *(a3 + 20) + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_2167721E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_86_1();
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + *(a4 + 20) + 8) = a2;
      return;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
    v9 = v4 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v9, a2, a2, v10);
}

uint64_t sub_2167722B0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217007884();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216772338(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_217007884();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167723B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEED0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A8);
      v12 = *(a3 + 24);
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2167724A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_86_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEED0);
    OUTLINED_FUNCTION_17();
    if (*(v12 + 84) == a3)
    {
      v10 = v11;
      v13 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A8);
      v13 = *(a4 + 24);
    }

    v9 = v4 + v13;
  }

  return __swift_storeEnumTagSinglePayload(v9, a2, a2, v10);
}

uint64_t sub_2167725D4()
{
  OUTLINED_FUNCTION_92();
  v2 = sub_217007884();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_216772618()
{
  OUTLINED_FUNCTION_92();
  v2 = sub_217007884();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_216772660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = sub_217007884();
    v8 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_216772704(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = sub_217007884();
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t sub_2167727E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF040);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a2)
  {
    v9 = OUTLINED_FUNCTION_20_44();
    goto LABEL_5;
  }

  v12 = *(v3 + *(a3 + 24) + 8);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  v13 = v12 - 1;
  if (v13 < 0)
  {
    v13 = -1;
  }

  return (v13 + 1);
}

void sub_2167728E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF040);
    OUTLINED_FUNCTION_17();
    if (*(v12 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = a2;
      return;
    }

    v11 = OUTLINED_FUNCTION_20_44();
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167729D4(uint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_217007884();
    v5 = OUTLINED_FUNCTION_20_44();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

void *sub_216772A58(void *result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_217007884();
    v4 = OUTLINED_FUNCTION_20_44();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_216772AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217007884();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_216772BB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217007884();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_216772CA4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217007884();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216772D2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_217007884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216772EB8()
{
  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    OUTLINED_FUNCTION_11_1();
    return (v4 + 1);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_223_1();
    v7 = v1 + *(v2 + 24);

    return __swift_getEnumTagSinglePayload(v7, v0, v6);
  }
}

void sub_216772F24()
{
  OUTLINED_FUNCTION_92();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_216772F9C()
{
  OUTLINED_FUNCTION_6_6();
  if (v1)
  {
    OUTLINED_FUNCTION_11_1();
    return (v2 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_223_1();
    v4 = OUTLINED_FUNCTION_20_44();

    return __swift_getEnumTagSinglePayload(v4, v0, v5);
  }
}

void sub_216773004()
{
  OUTLINED_FUNCTION_92();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_20_44();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_2167730D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v2, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_122_8();
    OUTLINED_FUNCTION_11_1();
    return OUTLINED_FUNCTION_96_9(v7);
  }
}

void sub_21677316C()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_147_0();
    *(v7 + 8) = v0;
  }
}

uint64_t sub_2167731FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 2147483646)
    {
      OUTLINED_FUNCTION_147_0();
      OUTLINED_FUNCTION_11_1();
      return OUTLINED_FUNCTION_96_9(v10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6538);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == v3)
    {
      v8 = v12;
      v14 = *(a3 + 24);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
      v14 = *(a3 + 40);
    }

    v9 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_216773314()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    if (v1 == 2147483646)
    {
      OUTLINED_FUNCTION_147_0();
      *(v3 + 8) = v0;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6538);
    OUTLINED_FUNCTION_17();
    if (*(v4 + 84) != v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
    }
  }

  OUTLINED_FUNCTION_32_4();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_216773420()
{
  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    OUTLINED_FUNCTION_11_1();
    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_223_1();
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v0)
    {
      v8 = v6;
      v9 = *(v2 + 24);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7C88);
      v9 = *(v2 + 28);
    }

    return __swift_getEnumTagSinglePayload(v1 + v9, v0, v8);
  }
}

void sub_2167734D8()
{
  OUTLINED_FUNCTION_92();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v3 = v2;
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v4 + 84) != v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7C88);
    }

    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_2167735A0()
{
  OUTLINED_FUNCTION_92();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7C88);
    v5 = OUTLINED_FUNCTION_20_44();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v4);
}

uint64_t sub_21677363C()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7C88);
    OUTLINED_FUNCTION_20_44();
  }

  OUTLINED_FUNCTION_32_4();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216773708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_2167737A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_216773844(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF688);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = sub_217007884();
    v10 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void *sub_21677390C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF688);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = sub_217007884();
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2167739E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = sub_217007884();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_216773A24(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  v3 = OUTLINED_FUNCTION_86_1();

  return __swift_storeEnumTagSinglePayload(v3, a2, a2, v4);
}

uint64_t sub_216773BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  v6 = sub_217007884();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_216773C4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217007884();
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

uint64_t sub_216773CF4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  v7 = sub_217007884();
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_216773D70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_217007884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216773DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217007884();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_216773EAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217007884();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_216774014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_2167740B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v4, a2, a2, v8);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_216774158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE08);
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2167741F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE08);
    v11 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167743B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_61_21(v3 + *(a3 + 20));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_216774448(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }
}

uint64_t sub_2167744E4(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACFD98);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACFDA0);
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) != a2)
      {
        return OUTLINED_FUNCTION_61_21(v3 + a3[7]);
      }

      v8 = v13;
      v12 = a3[6];
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_216774618(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACFD98);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACFDA0);
      OUTLINED_FUNCTION_17();
      if (*(v10 + 84) != a3)
      {
        *(v4 + *(a4 + 28) + 8) = a2;
        return;
      }
    }
  }

  OUTLINED_FUNCTION_32_4();

  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_216774750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACC8);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = sub_217007884();
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2167747F4(uint64_t a1, uint64_t a2, int a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACC8);
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == a3)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    sub_217007884();
  }

  OUTLINED_FUNCTION_32_4();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_216774898(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = sub_217007884();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_2167748DC()
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_32_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21677491C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F50);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F48);
      v12 = *(a3 + 24);
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216774A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F50);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F48);
      v14 = *(a4 + 24);
    }

    v11 = v4 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216774B74()
{
  OUTLINED_FUNCTION_44_35();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_13_94(*(v2 + 20));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v3);
}

void sub_216774BFC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }
}

uint64_t sub_216774C94()
{
  OUTLINED_FUNCTION_44_35();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_13_94(*(v2 + 24));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v3);
}

void sub_216774D1C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 24) + 8) = a2;
  }
}

uint64_t sub_216774E00(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = sub_217007884();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_216774E44(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = sub_217007884();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_216774E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD180);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = sub_217007884();
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216774F30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD180);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    v10 = sub_217007884();
    v11 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216774FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD170);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD178);
      v12 = *(a3 + 24);
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2167750C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD170);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD178);
      v14 = *(a4 + 24);
    }

    v11 = v4 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216775234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
    v9 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_11_1();
  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_216775310()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    if (v1 == 2147483646)
    {
      OUTLINED_FUNCTION_147_0();
      *(v3 + 8) = v0;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  }

  OUTLINED_FUNCTION_32_4();

  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_2167753D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v4 + 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
      v11 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_21677549C(void *result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v4 + 84) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
    }

    OUTLINED_FUNCTION_32_4();

    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  return result;
}

uint64_t sub_216775568(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v2, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    return (v7 + 1);
  }
}

void sub_216775604()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_216775694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F18);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = sub_217007884();
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216775738()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F18);
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    sub_217007884();
  }

  OUTLINED_FUNCTION_32_4();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216775820(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

char *sub_21677587C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_77(a3, result);
  }

  return result;
}

char *sub_21677589C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_77(a3, result);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AttributedDateRange.Style(uint64_t result, int a2, int a3)
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

uint64_t sub_21677592C(uint64_t result, int a2)
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

uint64_t sub_2167759F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_216775A7C@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*v2, *(v2 + 8), a1);
  *a2 = result;
  return result;
}

void sub_216775F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 112), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getFACircleStateControllerClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary();
  result = objc_getClass("FACircleStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFACircleStateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFACircleStateControllerClass_block_invoke_cold_1();
    return FamilyCircleUILibrary();
  }

  return result;
}

uint64_t FamilyCircleUILibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __FamilyCircleUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278225A28;
    v5 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FamilyCircleUILibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!FamilyCircleUILibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __FamilyCircleUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFACircleContextClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary();
  result = objc_getClass("FACircleContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFACircleContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFACircleContextClass_block_invoke_cold_1();
    return __getFACircleEventTypeInitiateSymbolLoc_block_invoke();
  }

  return result;
}

void *__getFACircleEventTypeInitiateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FamilyCircleUILibrary();
  result = dlsym(v2, "FACircleEventTypeInitiate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFACircleEventTypeInitiateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2167762B8()
{
  if (OUTLINED_FUNCTION_2_15())
  {
    OUTLINED_FUNCTION_22_14();
    OUTLINED_FUNCTION_1();
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_7();
    if (!v5)
    {
      OUTLINED_FUNCTION_18_2();

      OUTLINED_FUNCTION_6_12();
      MEMORY[0x21CE9F490](58, 0xE100000000000000);
      v10 = sub_21700F784();
      MEMORY[0x21CE9F490](v10);
    }

    sub_21700EA74();
    OUTLINED_FUNCTION_1();
    MEMORY[0x28223BE20](v11);
    v13 = OUTLINED_FUNCTION_3_18(v12, v18);
    v14(v13);
    sub_21700DF14();
    OUTLINED_FUNCTION_11_7();
    sub_216776E04(v19, v0, &qword_27CAB62D8);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62E0);
    v16 = OUTLINED_FUNCTION_12_8(v15);
    v17(v16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62E8);
    v8 = *(OUTLINED_FUNCTION_21_8() + 20);
    sub_21700EA74();
    OUTLINED_FUNCTION_9();
    (*(v9 + 16))(&v2[v8], v4);
    *v2 = v6;
    *(v2 + 1) = v3;
    sub_216776E04(v1, v0, &qword_27CAB62D8);
  }

  OUTLINED_FUNCTION_26();
}

void sub_2167764F0()
{
  if (OUTLINED_FUNCTION_2_15())
  {
    OUTLINED_FUNCTION_22_14();
    OUTLINED_FUNCTION_1();
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_7();
    if (!v4)
    {
      OUTLINED_FUNCTION_18_2();

      OUTLINED_FUNCTION_6_12();
      MEMORY[0x21CE9F490](58, 0xE100000000000000);
      v12 = sub_21700F784();
      MEMORY[0x21CE9F490](v12);
    }

    sub_21700EA74();
    OUTLINED_FUNCTION_1();
    MEMORY[0x28223BE20](v13);
    v15 = OUTLINED_FUNCTION_3_18(v14, v20);
    v16(v15);
    sub_21700DF14();
    OUTLINED_FUNCTION_11_7();
    sub_216776DA0(v21, v0);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62F0);
    v18 = OUTLINED_FUNCTION_12_8(v17);
    v19(v18);
    OUTLINED_FUNCTION_26();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62F8);
    v7 = *(OUTLINED_FUNCTION_21_8() + 20);
    sub_21700EA74();
    OUTLINED_FUNCTION_9();
    (*(v8 + 16))(&v1[v7], v3);
    *v1 = v5;
    *(v1 + 1) = v2;
    OUTLINED_FUNCTION_26();

    sub_216776DA0(v9, v10);
  }
}

void sub_216776728()
{
  if (OUTLINED_FUNCTION_2_15())
  {
    OUTLINED_FUNCTION_22_14();
    OUTLINED_FUNCTION_1();
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_7();
    if (!v5)
    {
      OUTLINED_FUNCTION_18_2();

      OUTLINED_FUNCTION_6_12();
      MEMORY[0x21CE9F490](58, 0xE100000000000000);
      v10 = sub_21700F784();
      MEMORY[0x21CE9F490](v10);
    }

    sub_21700EA74();
    OUTLINED_FUNCTION_1();
    MEMORY[0x28223BE20](v11);
    v13 = OUTLINED_FUNCTION_3_18(v12, v18);
    v14(v13);
    sub_21700DF14();
    OUTLINED_FUNCTION_11_7();
    sub_216776E04(v19, v0, &qword_27CAB6300);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6308);
    v16 = OUTLINED_FUNCTION_12_8(v15);
    v17(v16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6310);
    v8 = *(OUTLINED_FUNCTION_21_8() + 20);
    sub_21700EA74();
    OUTLINED_FUNCTION_9();
    (*(v9 + 16))(&v2[v8], v4);
    *v2 = v6;
    *(v2 + 1) = v3;
    sub_216776E04(v1, v0, &qword_27CAB6300);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216776960@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_21700AEF4();
  v2 = *MEMORY[0x277CDE248];
  v3 = sub_2170098F4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2167769DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 4)
  {
    MEMORY[0x21CE9AB10](a5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6318);
  sub_216776E60();
  sub_216777054(&qword_27CAB6328, &qword_27CAB6318);
  return sub_21700A434();
}

uint64_t sub_216776AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 4)
  {
    MEMORY[0x21CE9AB10](a5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6338);
  sub_216776EFC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6358);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6360);
  sub_216777054(&qword_27CAB6368, &qword_27CAB6360);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21700A434();
}

double sub_216776C4C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_3(a1, a2);
  v2.n128_f64[0] = sub_2169974F0();
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v12, v2, v13, v14).n128_u64[0];
  return result;
}

double sub_216776C7C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_3(a1, a2);
  v2.n128_f64[0] = sub_2169976FC();
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v12, v2, v13, v14).n128_u64[0];
  return result;
}

double sub_216776CAC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_3(a1, a2);
  v2.n128_f64[0] = sub_2169978DC();
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v12, v2, v13, v14).n128_u64[0];
  return result;
}

double sub_216776CDC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_3(a1, a2);
  v2.n128_f64[0] = sub_216997AAC();
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v12, v2, v13, v14).n128_u64[0];
  return result;
}

unint64_t sub_216776D0C()
{
  result = qword_27CAB62C8;
  if (!qword_27CAB62C8)
  {
    sub_2170087B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB62C8);
  }

  return result;
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

uint64_t sub_216776DA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchPageContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216776E04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_216776E60()
{
  result = qword_27CAB6320;
  if (!qword_27CAB6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6320);
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

unint64_t sub_216776EFC()
{
  result = qword_27CAB6340;
  if (!qword_27CAB6340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6330);
    sub_216776FB8();
    sub_21677700C(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6340);
  }

  return result;
}

unint64_t sub_216776FB8()
{
  result = qword_27CAB6348;
  if (!qword_27CAB6348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6348);
  }

  return result;
}

uint64_t sub_21677700C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216777054(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2167770A8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1 & 1;
  *(a7 + 33) = a2;
  return sub_2167770D0(a3, a4, a5, a6);
}

uint64_t sub_2167770D0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_216777114(result, a2, a3 & 1);

    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_216777114(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_21700DF14();
  }
}

uint64_t sub_216777128(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x21CE9FA10](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21677717C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21700EC04();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_2167771D8()
{
  v1 = OUTLINED_FUNCTION_10_2();
  result = sub_216775984(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_216777200()
{
  v1 = OUTLINED_FUNCTION_10_2();
  result = nullsub_1(v1, v2, v3);
  *v0 = result;
  return result;
}

uint64_t sub_216777228@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0_28();
  *a1 = result;
  return result;
}

uint64_t sub_216777250(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_5(a1);
  result = sub_2167C8B34(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_216777300@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167771D4();
  *a1 = result;
  return result;
}

uint64_t sub_216777340@<X0>(_DWORD *a1@<X8>)
{
  result = OUTLINED_FUNCTION_10_4();
  *a1 = result;
  return result;
}

uint64_t sub_216777368()
{
  swift_getWitnessTable();

  return sub_217006754();
}

uint64_t sub_2167773EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216775984(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216777418()
{
  sub_21677700C(&qword_27CAB66D0, type metadata accessor for Name);
  sub_21677700C(&qword_27CAB66D8, type metadata accessor for Name);

  return sub_21700F5D4();
}

uint64_t sub_2167774D4()
{
  v1 = OUTLINED_FUNCTION_10_2();
  result = sub_216E6953C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2167774FC()
{
  sub_21677700C(&qword_27CAB6800, type metadata accessor for InfoKey);
  sub_21677700C(&qword_27CAB6808, type metadata accessor for InfoKey);

  return sub_21700F5D4();
}

void *sub_2167775B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2167775C8()
{
  sub_21677700C(&qword_27CAB6830, type metadata accessor for ICURLResponseStatusCode);
  sub_21677700C(&qword_27CAB6838, type metadata accessor for ICURLResponseStatusCode);
  return sub_21700F5D4();
}

uint64_t sub_216777684()
{
  sub_21677700C(&qword_27CAB6820, type metadata accessor for Key);
  sub_21677700C(&qword_27CAB6828, type metadata accessor for Key);

  return sub_21700F5D4();
}

uint64_t sub_216777740()
{
  sub_21677700C(&qword_27CAB6810, type metadata accessor for ICSubscriptionStatusOfferType);
  sub_21677700C(&qword_27CAB6818, type metadata accessor for ICSubscriptionStatusOfferType);

  return sub_21700F5D4();
}

uint64_t sub_2167777FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21700E4D4();

  *a1 = v2;
  return result;
}

uint64_t sub_216777844()
{
  sub_21677700C(&qword_27CAB6868, type metadata accessor for OpenExternalURLOptionsKey);
  sub_21677700C(&unk_27CAB6870, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_21700F5D4();
}

uint64_t sub_2167779A4()
{
  sub_21700F8F4();
  swift_getWitnessTable();
  sub_217006764();
  return sub_21700F944();
}

uint64_t sub_216777A44(uint64_t a1, int a2)
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

uint64_t sub_216777A64(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_216777C10()
{
  sub_21700E514();
  sub_21700E614();
}

uint64_t sub_216777C64()
{
  sub_21700E514();
  sub_21700F8F4();
  sub_21700E614();
  v0 = sub_21700F944();

  return v0;
}

uint64_t sub_216777CD8()
{
  v0 = sub_21700E514();
  v2 = v1;
  if (v0 == sub_21700E514() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21700F7D4();
  }

  return v5 & 1;
}

uint64_t sub_216777D5C()
{
  v0 = sub_21700E514();
  v1 = MEMORY[0x21CE9F510](v0);

  return v1;
}

uint64_t sub_216777D94(uint64_t a1, id *a2)
{
  v3 = sub_21700E504();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_216777E14()
{
  sub_21700E514();
  v0 = sub_21700E4D4();

  return v0;
}

uint64_t type metadata accessor for GetInfoAction()
{
  result = qword_280E43F40;
  if (!qword_280E43F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2167784A8()
{
  sub_21700D284();
  if (v0 <= 0x3F)
  {
    sub_2166D90EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21677852C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v29 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v32 = v14;
  v33 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v28 = v15;
  MEMORY[0x28223BE20](v16);
  v17 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v27 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  sub_21700CE04();
  v34 = v7;
  v35 = v5;
  v22 = *(v7 + 16);
  v22(v12, a2, v5);
  v23 = v31;
  sub_21700D224();
  if (v23)
  {
    (*(v34 + 8))(a2, v35);
  }

  else
  {
    (*(v27 + 32))(v30, v21, v17);
    type metadata accessor for ContentDescriptor();
    sub_21700CE04();
    v24 = v35;
    v22(v29, a2, v35);
    type metadata accessor for GetInfoAction();
    sub_2167788C4();
    sub_21700D734();
    (*(v34 + 8))(a2, v24);
  }

  return (*(v32 + 8))(v36, v33);
}

uint64_t sub_216778844@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21700D284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_2167788C4()
{
  result = qword_280E40390[0];
  if (!qword_280E40390[0])
  {
    type metadata accessor for ContentDescriptor();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E40390);
  }

  return result;
}

uint64_t sub_21677891C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_216778970(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2167789D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_217006DE4();
  v4[17] = v5;
  OUTLINED_FUNCTION_2(v5);
  v4[18] = v6;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = sub_217006E04();
  v4[21] = v7;
  OUTLINED_FUNCTION_2(v7);
  v4[22] = v8;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v9 = sub_217006E24();
  v4[26] = v9;
  OUTLINED_FUNCTION_2(v9);
  v4[27] = v10;
  v4[28] = swift_task_alloc();
  v11 = sub_217006BF4();
  v4[29] = v11;
  OUTLINED_FUNCTION_2(v11);
  v4[30] = v12;
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for PlayGenericMusicItemCollectionAction();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  sub_21700EA34();
  v4[35] = sub_21700EA24();
  v14 = sub_21700E9B4();
  v4[36] = v14;
  v4[37] = v13;

  return MEMORY[0x2822009F8](sub_216778C1C, v14, v13);
}

uint64_t sub_216778C1C()
{
  v37 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30);
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_216EAE764();
  v30 = v34;
  v32 = v33;
  v1 = v35;
  v2 = v36;
  *(v0 + 304) = v34;
  *(v0 + 312) = v1;
  v3 = v1;
  v4 = v2;
  *(v0 + 320) = v2;
  if (qword_27CAB5880 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 272);
  v6 = *(v0 + 112);
  v7 = sub_217007CA4();
  *(v0 + 328) = __swift_project_value_buffer(v7, qword_27CAB6A08);
  sub_21677A330(v6, v5);
  v8 = sub_217007C84();
  v9 = sub_21700EDA4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 272);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136446210;
    v14 = *v11;
    v15 = sub_2170067A4();
    v16 = MEMORY[0x21CE9F660](v14, v15);
    v18 = v17;
    sub_21677A394(v11);
    v19 = sub_2166A85FC(v16, v18, &v33);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_216679000, v8, v9, "Playing collection %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    sub_21677A394(v11);
  }

  v20 = *(v0 + 256);
  v21 = *(v0 + 112);
  v22 = *(v0 + 40);
  v23 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v22);
  v24 = *v21;
  *(v0 + 336) = *v21;
  *(v0 + 88) = v24;
  *(v0 + 408) = *(v21 + *(v20 + 24));
  *(v0 + 56) = v32;
  *(v0 + 64) = v30;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  v25 = *(v23 + 64);
  sub_21700DF14();
  sub_21700DF14();
  sub_21677A3F0(v3, v4);
  v31 = (v25 + *v25);
  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A38);
  v28 = sub_21677A45C();
  *v26 = v0;
  v26[1] = sub_216778F9C;

  return v31(v0 + 88, v0 + 408, v0 + 56, v27, v28, v22, v23);
}

uint64_t sub_216778F9C()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  v3[44] = v0;

  sub_21677A4C0(v3[7], v2[8], v2[9], v2[10]);

  v5 = v3[36];
  v6 = v3[37];
  if (v0)
  {
    v7 = sub_216779328;
  }

  else
  {
    v7 = sub_216779120;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_216779120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15();
  a23 = v28;
  a24 = v29;
  a22 = v25;

  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_5();
  if (v30())
  {
    sub_21677A330(*(v25 + 112), *(v25 + 264));
    v31 = sub_217007C84();
    v32 = sub_21700EDA4();
    v33 = OUTLINED_FUNCTION_9_3(v32);
    v34 = *(v25 + 264);
    if (v33)
    {
      v24 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      a13 = v26;
      *v24 = 136446210;
      v35 = *v34;
      v36 = sub_2170067A4();
      v27 = MEMORY[0x21CE9F660](v35, v36);
      v38 = v37;
      sub_21677A394(v34);
      v39 = sub_2166A85FC(v27, v38, &a13);

      *(v24 + 4) = v39;
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      sub_21677A394(v34);
    }

    OUTLINED_FUNCTION_4_6();
  }

  OUTLINED_FUNCTION_1_1();
  sub_21677A510(v27, v26);
  v45 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  (*(v46 + 104))(v24, v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v25 + 16);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216779328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v13 = *(v12 + 352);
  *(v12 + 96) = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_8();
  if (swift_dynamicCast())
  {
    if ((*(*(v12 + 240) + 88))(*(v12 + 248), *(v12 + 232)) == *MEMORY[0x277D2A8C8])
    {
      v16 = *(v12 + 240);
      v15 = *(v12 + 248);
      v18 = *(v12 + 224);
      v17 = *(v12 + 232);
      v19 = *(v12 + 208);
      v20 = *(v12 + 216);

      (*(v16 + 96))(v15, v17);
      (*(v20 + 32))(v18, v15, v19);
      v21 = sub_217007C84();
      v22 = sub_21700EDA4();
      if (OUTLINED_FUNCTION_9_3(v22))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_5_7();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        OUTLINED_FUNCTION_6();
      }

      v28 = swift_task_alloc();
      *(v12 + 360) = v28;
      *v28 = v12;
      v28[1] = sub_2167795DC;
      OUTLINED_FUNCTION_7_3();

      return v32(v29, v30, v31, v32, v33, v34, v35, v36, sub_2167A82C0, a10, a11, a12);
    }

    v41 = *(v12 + 240);
    v40 = *(v12 + 248);
    v42 = *(v12 + 232);

    v43 = OUTLINED_FUNCTION_8();
    sub_21677A510(v43, v44);

    (*(v41 + 8))(v40, v42);
  }

  else
  {

    v38 = OUTLINED_FUNCTION_8();
    sub_21677A510(v38, v39);
  }

  OUTLINED_FUNCTION_0_14();
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 16);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
}

uint64_t sub_2167795DC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 368) = v0;

  v5 = *(v2 + 296);
  v6 = *(v2 + 288);
  if (v0)
  {
    v7 = sub_216779DEC;
  }

  else
  {
    v7 = sub_216779714;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216779714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 200);
  v28 = *(v24 + 184);
  v29 = *(v24 + 168);
  v30 = *(*(v24 + 176) + 16);
  v30(*(v24 + 192), v27, v29);
  v30(v28, v27, v29);
  v31 = sub_217007C84();
  v32 = sub_21700EDA4();
  v33 = os_log_type_enabled(v31, v32);
  v35 = *(v24 + 184);
  v34 = *(v24 + 192);
  v37 = *(v24 + 168);
  v36 = *(v24 + 176);
  if (v33)
  {
    a9 = *(v24 + 160);
    a10 = *(v24 + 136);
    HIDWORD(a11) = v32;
    v38 = swift_slowAlloc();
    a12 = swift_slowAlloc();
    a13 = a12;
    *v38 = 136446466;
    v39 = sub_217006DC4();
    v41 = v40;
    v42 = *(v36 + 8);
    v42(v34, v37);
    v43 = sub_2166A85FC(v39, v41, &a13);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2082;
    sub_217006DF4();
    v44 = sub_21700E594();
    v46 = v45;
    v42(v35, v37);
    v47 = sub_2166A85FC(v44, v46, &a13);

    *(v38 + 14) = v47;
    _os_log_impl(&dword_216679000, v31, BYTE4(a11), "Performing dialog action %{public}s with kind %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v42 = *(v36 + 8);
    v42(v35, v37);
    v42(v34, v37);
  }

  *(v24 + 376) = v42;
  v49 = *(v24 + 152);
  v48 = *(v24 + 160);
  v50 = *(v24 + 136);
  v51 = *(v24 + 144);
  sub_217006DF4();
  (*(v51 + 104))(v49, *MEMORY[0x277D2A928], v50);
  *(v24 + 409) = sub_217006DD4() & 1;
  v52 = *(v51 + 8);
  v52(v49, v50);
  v52(v48, v50);
  v53 = *(v24 + 40);
  v54 = *(v24 + 48);
  __swift_project_boxed_opaque_existential_1((v24 + 16), v53);
  *(v24 + 384) = (*(v54 + 112))(v53, v54);
  v55 = swift_task_alloc();
  *(v24 + 392) = v55;
  *v55 = v24;
  v55[1] = sub_216779A40;
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x282189CE0](v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216779A40()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 400) = v0;

  v5 = *(v2 + 296);
  v6 = *(v2 + 288);
  if (v0)
  {
    v7 = sub_216779EE4;
  }

  else
  {
    v7 = sub_216779B94;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216779B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 376);
  v29 = *(v24 + 216);
  v28 = *(v24 + 224);
  v31 = *(v24 + 200);
  v30 = *(v24 + 208);
  v32 = *(v24 + 168);

  v27(v31, v32);
  v34 = *(v29 + 8);
  v33 = v29 + 8;
  v34(v28, v30);

  v35 = *(v24 + 409);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_5();
  if ((v36() & 1) != 0 && (v35 & 1) == 0)
  {
    sub_21677A330(*(v24 + 112), *(v24 + 264));
    v37 = sub_217007C84();
    v38 = sub_21700EDA4();
    v39 = OUTLINED_FUNCTION_9_3(v38);
    v40 = *(v24 + 264);
    if (v39)
    {
      v31 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      a13 = v27;
      *v31 = 136446210;
      v41 = *v40;
      v42 = sub_2170067A4();
      v33 = MEMORY[0x21CE9F660](v41, v42);
      v44 = v43;
      sub_21677A394(v40);
      v45 = sub_2166A85FC(v33, v44, &a13);

      *(v31 + 4) = v45;
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      sub_21677A394(v40);
    }

    OUTLINED_FUNCTION_4_6();
  }

  OUTLINED_FUNCTION_1_1();
  sub_21677A510(v33, v27);
  v51 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  (*(v52 + 104))(v31, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v24 + 16);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16);
}