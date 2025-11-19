void sub_216F577BC()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for AnyAction(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    v13 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_30_58(v13);
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v0, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F5BCEC();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F579AC()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for AnyAction(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    v13 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_30_58(v13);
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v0, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F5BCEC();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F57B24(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_109();
    sub_216F5BD40();
    a3(v5);
    OUTLINED_FUNCTION_108();
    sub_216F5BD94();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v7);

  free(v4);
}

uint64_t sub_216F57BFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_76();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  OUTLINED_FUNCTION_7_127();
  v13 = *a3;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(v4 + v13, v12, v5);
  v14 = a4(0);
  OUTLINED_FUNCTION_31_2(v12, 1, v14);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  sub_216697664(v12, v5);
  return v16;
}

uint64_t sub_216F57D00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_76();
  v8 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = *(type metadata accessor for SongTrackLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v17 = OUTLINED_FUNCTION_18();
    v16 = sub_216F5B3FC(v17);
    *(v8 + v14) = v16;
  }

  v18 = a3(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v18);
  v19 = *a4;
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_2166861C8(v13, v16 + v19, v5);
  return swift_endAccess();
}

uint64_t sub_216F57E0C()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13_3();
  v5 = OUTLINED_FUNCTION_36_49();
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v7 = OUTLINED_FUNCTION_18();
    v8 = sub_216F5B3FC(v7);
    OUTLINED_FUNCTION_97_0(v8);
  }

  OUTLINED_FUNCTION_3_184();
  sub_216F5BCEC();
  type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artwork;
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_2166861C8(v0, v6 + v13, &qword_27CACE100);
  return swift_endAccess();
}

void sub_216F57EFC()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  v9 = type metadata accessor for Artwork(v8);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_120_1(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v14)
  {
    sub_217007874();
    v15 = type metadata accessor for Artwork.ArtworkDictionary(0);
    OUTLINED_FUNCTION_60(v15);
    v16 = &v13[*(v9 + 24)];
    *v16 = 0;
    *(v16 + 1) = 0;
    OUTLINED_FUNCTION_6_3();
    if (!v14)
    {
      sub_216697664(v0, &qword_27CACE100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F5BCEC();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F580F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_108();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_2();
  sub_216683A80(v6, v7, v8);
  v9 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_7_6();
  if (!v10)
  {
    return OUTLINED_FUNCTION_78_17();
  }

  sub_217007874();
  v11 = type metadata accessor for Artwork.ArtworkDictionary(0);
  OUTLINED_FUNCTION_15_74(v11);
  v12 = (a1 + *(v9 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = OUTLINED_FUNCTION_7_6();
  if (!v10)
  {
    return sub_216697664(v1, &qword_27CACE100);
  }

  return result;
}

uint64_t sub_216F5820C()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13_3();
  v5 = OUTLINED_FUNCTION_36_49();
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v7 = OUTLINED_FUNCTION_18();
    v8 = sub_216F5B3FC(v7);
    OUTLINED_FUNCTION_97_0(v8);
  }

  OUTLINED_FUNCTION_3_184();
  sub_216F5BCEC();
  type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__previewArtwork;
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_2166861C8(v0, v6 + v13, &qword_27CACE100);
  return swift_endAccess();
}

void sub_216F582FC()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  v9 = type metadata accessor for Artwork(v8);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_120_1(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v14)
  {
    sub_217007874();
    v15 = type metadata accessor for Artwork.ArtworkDictionary(0);
    OUTLINED_FUNCTION_60(v15);
    v16 = &v13[*(v9 + 24)];
    *v16 = 0;
    *(v16 + 1) = 0;
    OUTLINED_FUNCTION_6_3();
    if (!v14)
    {
      sub_216697664(v0, &qword_27CACE100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F5BCEC();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F58504()
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_8_123();
  v5 = *(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__title;
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_43_36();
}

uint64_t sub_216F585C8@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_7_127();
  v6 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__contentDescriptor;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_48_30(v1 + v6);
  v7 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_6();
  if (v8)
  {
    sub_217007874();
    v9 = type metadata accessor for ContentDescriptor.ContentKind(0);
    OUTLINED_FUNCTION_15_74(v9);
    v10 = type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_15_74(v10);
    v11 = (a1 + *(v7 + 28));
    *v11 = 0;
    v11[1] = 0;
    result = OUTLINED_FUNCTION_7_6();
    if (!v8)
    {
      return sub_216697664(v2, &qword_27CACE120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_80();
    return OUTLINED_FUNCTION_78_17();
  }

  return result;
}

uint64_t sub_216F586DC()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13_3();
  v5 = OUTLINED_FUNCTION_36_49();
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v7 = OUTLINED_FUNCTION_18();
    v8 = sub_216F5B3FC(v7);
    OUTLINED_FUNCTION_97_0(v8);
  }

  OUTLINED_FUNCTION_15_80();
  sub_216F5BCEC();
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__contentDescriptor;
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_2166861C8(v0, v6 + v13, &qword_27CACE120);
  return swift_endAccess();
}

void sub_216F587CC()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  v9 = type metadata accessor for ContentDescriptor(v8);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_120_1(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v14)
  {
    sub_217007874();
    v15 = type metadata accessor for ContentDescriptor.ContentKind(0);
    OUTLINED_FUNCTION_60(v15);
    v16 = type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_60(v16);
    v17 = &v13[*(v9 + 28)];
    *v17 = 0;
    *(v17 + 1) = 0;
    OUTLINED_FUNCTION_6_3();
    if (!v14)
    {
      sub_216697664(v0, &qword_27CACE120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F5BCEC();
  }

  OUTLINED_FUNCTION_26();
}

void (*sub_216F589E4())(uint64_t *a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 72) = v0;
  OUTLINED_FUNCTION_8_123();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__showExplicitBadge;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  *(v1 + 84) = *(v4 + v5) & 1;
  return sub_216F58A6C;
}

uint64_t sub_216F58A9C()
{
  OUTLINED_FUNCTION_8_123();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F58B10(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  OUTLINED_FUNCTION_76();
  v8 = *(type metadata accessor for SongTrackLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v11 = OUTLINED_FUNCTION_18();
    v10 = sub_216F5B3FC(v11);
    *(v7 + v8) = v10;
  }

  v12 = (v10 + *a3);
  OUTLINED_FUNCTION_147();
  *v12 = v5;
  v12[1] = v3;
}

uint64_t sub_216F58BA0()
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_8_123();
  v5 = *(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__accessibilityLabel;
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_43_36();
}

BOOL sub_216F58C58(void *a1)
{
  OUTLINED_FUNCTION_8_123();
  v4 = *(v1 + v3) + *a1;
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return *(v4 + 8) != 0;
}

uint64_t sub_216F58CB4(void *a1)
{
  v5 = OUTLINED_FUNCTION_68_19();
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v7 = OUTLINED_FUNCTION_18();
    v6 = sub_216F5B3FC(v7);
    *(v2 + v3) = v6;
  }

  v8 = (v6 + *a1);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_147();
  *v8 = 0;
  v8[1] = 0;
}

uint64_t sub_216F58D38()
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_8_123();
  v5 = *(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__headline;
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_43_36();
}

void (*sub_216F58E14())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_8_123();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__subtitleLinks;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  *(v1 + 48) = *(v4 + v5);
  sub_21700DF14();
  return sub_216F58EA0;
}

uint64_t sub_216F58ECC()
{
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return sub_21700DF14();
}

uint64_t sub_216F58F18(uint64_t a1, uint64_t *a2)
{
  v5 = OUTLINED_FUNCTION_31_0();
  v6 = *(type metadata accessor for SongTrackLockup(v5) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v9 = OUTLINED_FUNCTION_18();
    v10 = sub_216F5B3FC(v9);
    OUTLINED_FUNCTION_97_0(v10);
  }

  v11 = *a2;
  OUTLINED_FUNCTION_139();
  *(v8 + v11) = v2;
}

void (*sub_216F58F98())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_8_123();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__tertiaryLinks;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  *(v1 + 48) = *(v4 + v5);
  sub_21700DF14();
  return sub_216F59024;
}

void sub_216F59044(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {
    v7 = sub_21700DF14();
    a4(v7);
  }

  else
  {
    v9 = *(v4 + 64);
    v10 = *(v4 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 64);
      v14 = *(v4 + 56);
      OUTLINED_FUNCTION_16_82();
      v15 = OUTLINED_FUNCTION_18();
      v12 = sub_216F5B3FC(v15);
      *(v14 + v13) = v12;
    }

    v16 = *a3;
    OUTLINED_FUNCTION_147();
    *(v12 + v16) = v5;
  }

  free(v4);
}

double sub_216F59108()
{
  OUTLINED_FUNCTION_8_123();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__duration;
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_216F59160(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for SongTrackLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v7 = OUTLINED_FUNCTION_18();
    v6 = sub_216F5B3FC(v7);
    *(v2 + v4) = v6;
  }

  v8 = v6 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__duration;
  OUTLINED_FUNCTION_48_0();
  result = OUTLINED_FUNCTION_147();
  *v8 = a1;
  *(v8 + 8) = 0;
  return result;
}

void (*sub_216F591E8())(uint64_t *a1)
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_8_123();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__duration;
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *(v1 + 72) = v5;
  return sub_216F5927C;
}

void sub_216F5927C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v1 + 88);
    v8 = *(v1 + 80);
    OUTLINED_FUNCTION_16_82();
    v9 = OUTLINED_FUNCTION_18();
    v6 = sub_216F5B3FC(v9);
    *(v8 + v7) = v6;
  }

  v10 = v6 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__duration;
  OUTLINED_FUNCTION_147();
  *v10 = v2;
  *(v10 + 8) = 0;

  free(v1);
}

BOOL sub_216F59330()
{
  OUTLINED_FUNCTION_8_123();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__duration;
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return (*(v2 + 8) & 1) == 0;
}

uint64_t sub_216F59380()
{
  v1 = v0;
  v2 = *(type metadata accessor for SongTrackLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v5 = OUTLINED_FUNCTION_18();
    v4 = sub_216F5B3FC(v5);
    *(v1 + v2) = v4;
  }

  v6 = v4 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__duration;
  OUTLINED_FUNCTION_48_0();
  result = OUTLINED_FUNCTION_147();
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_216F59418()
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_8_123();
  v5 = *(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__rankingText;
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_43_36();
}

void sub_216F594C4(void **a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  if (a2)
  {
    sub_21700DF14();
    v5 = OUTLINED_FUNCTION_109();
    a3(v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_109();
    a3(v6);
  }

  free(v4);
}

uint64_t sub_216F5956C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return *(v1 + a1) & 1;
}

uint64_t sub_216F595B8(char a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_36_49();
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v8 = OUTLINED_FUNCTION_18();
    v9 = sub_216F5B3FC(v8);
    OUTLINED_FUNCTION_97_0(v9);
  }

  OUTLINED_FUNCTION_22_12();
  result = OUTLINED_FUNCTION_147();
  *(v7 + a2) = a1 & 1;
  return result;
}

void (*sub_216F59624())(uint64_t *a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 72) = v0;
  OUTLINED_FUNCTION_8_123();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__isDisabled;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  *(v1 + 84) = *(v4 + v5) & 1;
  return sub_216F596AC;
}

void sub_216F596B8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 80);
    v11 = *(v4 + 72);
    OUTLINED_FUNCTION_16_82();
    v12 = OUTLINED_FUNCTION_18();
    v9 = sub_216F5B3FC(v12);
    *(v11 + v10) = v9;
  }

  v13 = *a3;
  OUTLINED_FUNCTION_147();
  *(v9 + v13) = v7;

  free(v4);
}

BOOL sub_216F59774(uint64_t a1)
{
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return *(v1 + a1) != 2;
}

uint64_t sub_216F597C4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_68_19();
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v7 = OUTLINED_FUNCTION_18();
    v6 = sub_216F5B3FC(v7);
    *(v2 + v3) = v6;
  }

  OUTLINED_FUNCTION_22_12();
  result = OUTLINED_FUNCTION_147();
  *(v6 + a1) = 2;
  return result;
}

void sub_216F5983C()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for AnyAction(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    v13 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_30_58(v13);
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v0, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F5BCEC();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F59A20()
{
  v1 = OUTLINED_FUNCTION_108();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_2();
  sub_216683A80(v4, v5, v6);
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_7_6();
  if (!v7)
  {
    return OUTLINED_FUNCTION_78_17();
  }

  type metadata accessor for AnyAction.OneOf_BaseAction(0);
  v8 = OUTLINED_FUNCTION_78_2();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_217007874();
  result = OUTLINED_FUNCTION_7_6();
  if (!v7)
  {
    return sub_216697664(v0, &qword_27CABFF98);
  }

  return result;
}

uint64_t sub_216F59B40(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for SongTrackLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v12 = OUTLINED_FUNCTION_18();
    v11 = sub_216F5B3FC(v12);
    *(v4 + v9) = v11;
  }

  OUTLINED_FUNCTION_45_0();
  sub_216F5BCEC();
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = *a2;
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_2166861C8(v8, v11 + v17, &qword_27CABFF98);
  return swift_endAccess();
}

void sub_216F59C60()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for AnyAction(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    v13 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_30_58(v13);
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v0, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F5BCEC();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F59E38@<X0>(uint64_t a1@<X8>)
{
  sub_217007874();
  v2 = *(type metadata accessor for SongTrackLockup(0) + 20);
  if (qword_27CACDC78 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27CACE8C8;
}

uint64_t sub_216F59EF8()
{
  v2 = OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_95_13(v2);
  return sub_2166861C8(v0, v1 + v3, &qword_27CAC6578);
}

uint64_t (*sub_216F59F38())(void, void, void)
{
  v0 = OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_95_13(v0);
  return nullsub_1;
}

uint64_t sub_216F59F78()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_95_13(v4);
  OUTLINED_FUNCTION_48_30(v0 + v5);
  type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(0);
  OUTLINED_FUNCTION_7_6();
  if (v6)
  {
    sub_216697664(v1, &qword_27CAC6578);
    return sub_217007874();
  }

  OUTLINED_FUNCTION_45_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_0_270();
    sub_216F5BD94();
    return sub_217007874();
  }

  OUTLINED_FUNCTION_13_89();
  return OUTLINED_FUNCTION_78_17();
}

void (*sub_216F5A078())()
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v3[1] = v7;
  v8 = type metadata accessor for Presentation.List(0);
  OUTLINED_FUNCTION_36(v8);
  v10 = *(v9 + 64);
  v3[2] = __swift_coroFrameAllocStub(v10);
  v3[3] = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_95_13(0);
  *(v3 + 10) = v11;
  sub_216683A80(v1 + v11, v7, &qword_27CAC6578);
  v12 = type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(0);
  v3[4] = v12;
  OUTLINED_FUNCTION_31_2(v7, 1, v12);
  if (v13)
  {
    sub_216697664(v7, &qword_27CAC6578);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_13_89();
      OUTLINED_FUNCTION_82();
      sub_216F5BCEC();
      return sub_216F5A1FC;
    }

    sub_216F5BD94();
  }

  sub_217007874();
  return sub_216F5A1FC;
}

uint64_t sub_216F5A22C@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_95_13(v6);
  OUTLINED_FUNCTION_48_30(v1 + v7);
  type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(0);
  OUTLINED_FUNCTION_7_6();
  if (v8)
  {
    sub_216697664(v2, &qword_27CAC6578);
  }

  else
  {
    OUTLINED_FUNCTION_45_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_12_98();
      return OUTLINED_FUNCTION_78_17();
    }

    OUTLINED_FUNCTION_0_270();
    sub_216F5BD94();
  }

  sub_217007874();
  result = type metadata accessor for Presentation.StackedShelf(0);
  v11 = a1 + *(result + 20);
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_216F5A348()
{
  v1 = type metadata accessor for SongTrackLockupCollection(0);
  sub_216697664(v0 + *(v1 + 20), &qword_27CAC6578);
  sub_216F5BCEC();
  v2 = type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
}

void (*sub_216F5A3EC())()
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Presentation.StackedShelf(0);
  OUTLINED_FUNCTION_34();
  v9 = *(v8 + 64);
  v3[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[3] = v10;
  OUTLINED_FUNCTION_95_13(0);
  *(v3 + 10) = v11;
  sub_216683A80(v1 + v11, v6, &qword_27CAC6578);
  v12 = type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(0);
  v3[4] = v12;
  OUTLINED_FUNCTION_31_2(v6, 1, v12);
  if (v13)
  {
    sub_216697664(v6, &qword_27CAC6578);
LABEL_7:
    sub_217007874();
    v15 = &v10[*(v7 + 20)];
    *v15 = 0;
    v15[4] = 1;
    return sub_216F5A590;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_216F5BD94();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_98();
  sub_216F5BCEC();
  return sub_216F5A590;
}

void sub_216F5A5C0()
{
  OUTLINED_FUNCTION_49();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = *(*v0 + 10);
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    OUTLINED_FUNCTION_45_0();
    sub_216F5BD40();
    sub_216697664(v6 + v3, &qword_27CAC6578);
    sub_216F5BCEC();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
    sub_216F5BD94();
  }

  else
  {
    sub_216697664(v6 + v3, &qword_27CAC6578);
    sub_216F5BCEC();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
  }

  free(v1);
  free(v5);
  free(v4);
  OUTLINED_FUNCTION_26();

  free(v14);
}

uint64_t sub_216F5A6E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SongTrackLockupCollection(0) + 24);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_216F5A75C()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for SongTrackLockupCollection(v2) + 24);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t (*sub_216F5A7CC())(void, void, void)
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for SongTrackLockupCollection(v0);
  return nullsub_1;
}

void sub_216F5A810()
{
  OUTLINED_FUNCTION_49();
  v1 = type metadata accessor for Presentation.StackedShelf(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v23 = v4 - v3;
  v5 = type metadata accessor for Presentation.List(0);
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE950);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_13_3();
  sub_216F5BD40();
  sub_216F5BD40();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_14_90();
    sub_216F5BD40();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_12_98();
      sub_216F5BCEC();
      v14 = *(v1 + 20);
      v15 = (v10 + v14);
      v16 = *(v10 + v14 + 4);
      v17 = (v23 + v14);
      v18 = *(v23 + v14 + 4);
      if (v16)
      {
        if (!v18)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (*v15 != *v17)
        {
          LOBYTE(v18) = 1;
        }

        if (v18)
        {
          goto LABEL_13;
        }
      }

      sub_217007884();
      OUTLINED_FUNCTION_4_159();
      sub_216F5EBB0(v21, v22);
      OUTLINED_FUNCTION_45_0();
      sub_21700E494();
LABEL_13:
      OUTLINED_FUNCTION_39_34();
      sub_216F5BD94();
      sub_216F5BD94();
      OUTLINED_FUNCTION_0_270();
      sub_216F5BD94();
      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_90();
    sub_216F5BD40();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_13_89();
      sub_216F5BCEC();
      sub_217007884();
      OUTLINED_FUNCTION_4_159();
      sub_216F5EBB0(v19, v20);
      sub_21700E494();
      sub_216F5BD94();
      sub_216F5BD94();
      OUTLINED_FUNCTION_0_270();
      sub_216F5BD94();
      goto LABEL_14;
    }
  }

  sub_216F5BD94();
  sub_216697664(v0, &qword_27CACE950);
LABEL_14:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F5ABC8@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = *(type metadata accessor for SongTrackLockupCollection(0) + 20);
  v3 = type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(0);
  __swift_storeEnumTagSinglePayload(a1 + v2, 1, 1, v3);
  return sub_217007874();
}

uint64_t sub_216F5AC64()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22DA8);
  __swift_project_value_buffer(v0, qword_27CB22DA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2170587F0;
  v4 = v40 + v3 + v1[14];
  *(v40 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_217007B14();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v40 + v3 + v2 + v1[14];
  *(v40 + v3 + v2) = 2;
  *v8 = "segue";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v40 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "play_action";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v40 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "artwork";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v40 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "preview_artwork";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v40 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "title";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v40 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "content_descriptor";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  v19 = (v40 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "show_explicit_badge";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v7();
  v21 = (v40 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "accessibility_label";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  v23 = (v40 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "headline";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v7();
  v25 = (v40 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "subtitle_links";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v40 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "tertiary_links";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v40 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "duration";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v7();
  v31 = (v40 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "rankingText";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v7();
  v33 = (v40 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "is_disabled";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v7();
  v35 = (v40 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "artwork_button_action_when_playing";
  *(v36 + 1) = 34;
  v36[16] = 2;
  v7();
  v37 = (v40 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "artwork_button_action_when_paused";
  *(v38 + 1) = 33;
  v38[16] = 2;
  v7();
  return sub_217007B24();
}

uint64_t sub_216F5B220()
{
  OUTLINED_FUNCTION_16_82();
  result = sub_216F5B250();
  qword_27CACE8C8 = result;
  return result;
}

uint64_t sub_216F5B250()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__segue;
  v2 = type metadata accessor for AnyAction(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__playAction, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artwork;
  v4 = type metadata accessor for Artwork(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__previewArtwork, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__title);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__contentDescriptor;
  v7 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__showExplicitBadge) = 2;
  v8 = (v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__accessibilityLabel);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__headline);
  *v9 = 0;
  v9[1] = 0;
  v10 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__subtitleLinks) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__tertiaryLinks) = v10;
  v11 = v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__duration;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__rankingText);
  *v12 = 0;
  v12[1] = 0;
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__isDisabled) = 2;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPlaying, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPaused, 1, 1, v2);
  return v0;
}

uint64_t sub_216F5B3FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  MEMORY[0x28223BE20](v7 - 8);
  v87 = &v71 - v8;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__segue;
  v10 = type metadata accessor for AnyAction(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v72 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__playAction;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__playAction, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artwork;
  v73 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artwork;
  v12 = type metadata accessor for Artwork(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v75 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__previewArtwork;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__previewArtwork, 1, 1, v12);
  v13 = (v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__title);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__contentDescriptor;
  v77 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__contentDescriptor;
  v15 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v78 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__showExplicitBadge;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__showExplicitBadge) = 2;
  v16 = (v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__accessibilityLabel);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__headline);
  v74 = (v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__headline);
  *v17 = 0;
  v17[1] = 0;
  v79 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__subtitleLinks;
  v18 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__subtitleLinks) = MEMORY[0x277D84F90];
  v19 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__tertiaryLinks;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__tertiaryLinks) = v18;
  v20 = v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__duration;
  v81 = v19;
  v82 = v20;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__rankingText);
  v83 = (v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__rankingText);
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__isDisabled;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__isDisabled) = 2;
  v84 = v22;
  v85 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPlaying;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPlaying, 1, 1, v10);
  v86 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPaused;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPaused, 1, 1, v10);
  swift_beginAccess();
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v23;
  *(v1 + 24) = v24;
  v25 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__segue;
  swift_beginAccess();
  v26 = a1 + v25;
  v27 = v87;
  sub_216683A80(v26, v87, &qword_27CABFF98);
  swift_beginAccess();
  sub_21700DF14();
  sub_2166861C8(v27, v1 + v9, &qword_27CABFF98);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__playAction;
  swift_beginAccess();
  sub_216683A80(a1 + v28, v27, &qword_27CABFF98);
  v29 = v72;
  swift_beginAccess();
  sub_2166861C8(v27, v1 + v29, &qword_27CABFF98);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artwork;
  swift_beginAccess();
  v31 = v76;
  sub_216683A80(a1 + v30, v76, &qword_27CACE100);
  v32 = v73;
  swift_beginAccess();
  sub_2166861C8(v31, v1 + v32, &qword_27CACE100);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__previewArtwork;
  swift_beginAccess();
  sub_216683A80(a1 + v33, v31, &qword_27CACE100);
  v34 = v75;
  swift_beginAccess();
  sub_2166861C8(v31, v1 + v34, &qword_27CACE100);
  swift_endAccess();
  v35 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__title);
  swift_beginAccess();
  v37 = *v35;
  v36 = v35[1];
  swift_beginAccess();
  *v13 = v37;
  v13[1] = v36;
  sub_21700DF14();

  v38 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__contentDescriptor;
  swift_beginAccess();
  v39 = v80;
  sub_216683A80(a1 + v38, v80, &qword_27CACE120);
  v40 = v77;
  swift_beginAccess();
  sub_2166861C8(v39, v1 + v40, &qword_27CACE120);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__showExplicitBadge;
  swift_beginAccess();
  LOBYTE(v41) = *(a1 + v41);
  v42 = v78;
  swift_beginAccess();
  *(v1 + v42) = v41;
  v43 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__accessibilityLabel);
  swift_beginAccess();
  v45 = *v43;
  v44 = v43[1];
  swift_beginAccess();
  *v16 = v45;
  v16[1] = v44;
  sub_21700DF14();

  v46 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__headline);
  swift_beginAccess();
  v48 = *v46;
  v47 = v46[1];
  v49 = v74;
  swift_beginAccess();
  *v49 = v48;
  v49[1] = v47;
  sub_21700DF14();

  v50 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__subtitleLinks;
  swift_beginAccess();
  v51 = *(a1 + v50);
  v52 = v79;
  swift_beginAccess();
  *(v1 + v52) = v51;
  sub_21700DF14();

  v53 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__tertiaryLinks;
  swift_beginAccess();
  v54 = *(a1 + v53);
  v55 = v81;
  swift_beginAccess();
  *(v1 + v55) = v54;
  sub_21700DF14();

  v56 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__duration);
  swift_beginAccess();
  v57 = *v56;
  LOBYTE(v56) = *(v56 + 8);
  v58 = v82;
  swift_beginAccess();
  *v58 = v57;
  *(v58 + 8) = v56;
  v59 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__rankingText);
  swift_beginAccess();
  v61 = *v59;
  v60 = v59[1];
  v62 = v83;
  swift_beginAccess();
  *v62 = v61;
  v62[1] = v60;
  sub_21700DF14();

  v63 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__isDisabled;
  swift_beginAccess();
  LOBYTE(v63) = *(a1 + v63);
  v64 = v84;
  swift_beginAccess();
  *(v1 + v64) = v63;
  v65 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPlaying;
  swift_beginAccess();
  v66 = v87;
  sub_216683A80(a1 + v65, v87, &qword_27CABFF98);
  v67 = v85;
  swift_beginAccess();
  sub_2166861C8(v66, v1 + v67, &qword_27CABFF98);
  swift_endAccess();
  v68 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPaused;
  swift_beginAccess();
  sub_216683A80(a1 + v68, v66, &qword_27CABFF98);

  v69 = v86;
  swift_beginAccess();
  sub_2166861C8(v66, v1 + v69, &qword_27CABFF98);
  swift_endAccess();
  return v1;
}

uint64_t sub_216F5BCEC()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216F5BD40()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216F5BD94()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216F5BE28()
{

  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__segue, &qword_27CABFF98);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__playAction, &qword_27CABFF98);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artwork, &qword_27CACE100);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__previewArtwork, &qword_27CACE100);

  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__contentDescriptor, &qword_27CACE120);

  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPlaying, &qword_27CABFF98);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPaused, &qword_27CABFF98);
  return v0;
}

uint64_t sub_216F5BFA0()
{
  v0 = sub_216F5BE28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_216F5BFF4()
{
  v1 = *(type metadata accessor for SongTrackLockup(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for SongTrackLockup._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_18();
    *(v0 + v1) = sub_216F5B3FC(v2);
  }

  OUTLINED_FUNCTION_615();
  sub_216F5C090();
}

void sub_216F5C090()
{
  while (1)
  {
    v1 = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_216F2EFD8();
        break;
      case 2:
      case 3:
      case 16:
      case 17:
        sub_216F5C6E8();
        break;
      case 4:
        sub_216F5C328();
        break;
      case 5:
        sub_216F5C404();
        break;
      case 6:
      case 9:
      case 10:
      case 14:
        sub_216F53E68();
        break;
      case 7:
        sub_216F5C4E0();
        break;
      case 8:
      case 15:
        sub_216F53F6C();
        break;
      case 11:
      case 12:
        sub_216F5C5BC();
        break;
      case 13:
        sub_216F5C65C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F5C328()
{
  swift_beginAccess();
  type metadata accessor for Artwork(0);
  sub_216F5EBB0(qword_27CAC77F0, type metadata accessor for Artwork);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F5C404()
{
  swift_beginAccess();
  type metadata accessor for Artwork(0);
  sub_216F5EBB0(qword_27CAC77F0, type metadata accessor for Artwork);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F5C4E0()
{
  swift_beginAccess();
  type metadata accessor for ContentDescriptor(0);
  sub_216F5EBB0(&qword_27CACE3E0, type metadata accessor for ContentDescriptor);
  sub_2170079D4();
  return swift_endAccess();
}

void sub_216F5C5BC()
{
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_12_97();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  type metadata accessor for Link(0);
  sub_216F5EBB0(&qword_27CABE100, type metadata accessor for Link);
  OUTLINED_FUNCTION_38_1();
  sub_2170079C4();
  OUTLINED_FUNCTION_87_14();
  OUTLINED_FUNCTION_83_16();
}

uint64_t sub_216F5C65C()
{
  swift_beginAccess();
  sub_217007994();
  return swift_endAccess();
}

void sub_216F5C6E8()
{
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_12_97();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_40_35();
  sub_216F5EBB0(v0, v1);
  OUTLINED_FUNCTION_38_1();
  sub_2170079D4();
  OUTLINED_FUNCTION_87_14();
  OUTLINED_FUNCTION_83_16();
}

uint64_t sub_216F5C778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SongTrackLockup(0);
  OUTLINED_FUNCTION_47_2();
  result = sub_216F5C7DC(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_109();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F5C7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_216F2F980(a1);
  if (!v4)
  {
    sub_216F5D218(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__segue, 2);
    sub_216F5D218(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__playAction, 3);
    sub_216F5CBB0(a1, a2, a3, a4);
    sub_216F5CDA4(a1, a2, a3, a4);
    sub_216F54AF8();
    sub_216F5CF98(a1, a2, a3, a4);
    sub_216F54B78();
    sub_216F54AF8();
    sub_216F54AF8();
    v10 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__subtitleLinks;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for Link(0);
      sub_216F5EBB0(&qword_27CABE100, type metadata accessor for Link);
      sub_21700DF14();
      sub_217007AF4();
    }

    v11 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__tertiaryLinks;
    swift_beginAccess();
    if (*(*(a1 + v11) + 16))
    {
      type metadata accessor for Link(0);
      sub_216F5EBB0(&qword_27CABE100, type metadata accessor for Link);
      sub_21700DF14();
      sub_217007AF4();
    }

    sub_216F5D18C(a1);
    sub_216F54AF8();
    sub_216F54B78();
    sub_216F5D218(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPlaying, 16);
    return sub_216F5D218(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPaused, 17);
  }

  return result;
}

uint64_t sub_216F5CBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artwork;
  swift_beginAccess();
  sub_216683A80(a1 + v9, v7, &qword_27CACE100);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE100);
  }

  sub_216F5BCEC();
  sub_216F5EBB0(qword_27CAC77F0, type metadata accessor for Artwork);
  sub_217007B04();
  return sub_216F5BD94();
}

uint64_t sub_216F5CDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__previewArtwork;
  swift_beginAccess();
  sub_216683A80(a1 + v9, v7, &qword_27CACE100);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE100);
  }

  sub_216F5BCEC();
  sub_216F5EBB0(qword_27CAC77F0, type metadata accessor for Artwork);
  sub_217007B04();
  return sub_216F5BD94();
}

uint64_t sub_216F5CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__contentDescriptor;
  swift_beginAccess();
  sub_216683A80(a1 + v9, v7, &qword_27CACE120);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE120);
  }

  sub_216F5BCEC();
  sub_216F5EBB0(&qword_27CACE3E0, type metadata accessor for ContentDescriptor);
  sub_217007B04();
  return sub_216F5BD94();
}

uint64_t sub_216F5D18C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__duration;
  result = swift_beginAccess();
  if ((*(v1 + 8) & 1) == 0)
  {
    return sub_217007AC4();
  }

  return result;
}

uint64_t sub_216F5D218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v18[1] = a6;
  v18[2] = a3;
  v18[7] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  v12 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v14 = *a5;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(a1 + v14, v11, &qword_27CABFF98);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_216697664(v11, &qword_27CABFF98);
  }

  sub_216F5BCEC();
  OUTLINED_FUNCTION_40_35();
  sub_216F5EBB0(v16, v17);
  OUTLINED_FUNCTION_45_36();
  sub_217007B04();
  OUTLINED_FUNCTION_1_231();
  return sub_216F5BD94();
}

uint64_t sub_216F5D3CC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_123();
  if (*(a1 + v4) != *(a2 + v4))
  {

    v5 = OUTLINED_FUNCTION_82();
    v7 = sub_216F5D498(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_217007884();
  OUTLINED_FUNCTION_4_159();
  sub_216F5EBB0(v8, v9);
  return sub_21700E494() & 1;
}

BOOL sub_216F5D498(uint64_t a1, uint64_t a2)
{
  v204 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v201 = v6 - v5;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3C0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v205 = &v193[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  v202 = v11 - v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  v209 = &v193[-v14];
  v212 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v207 = v17 - v16;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3D0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77();
  v208 = (v19 - v20);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  v211 = &v193[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  v24 = OUTLINED_FUNCTION_36(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77();
  v206 = v25 - v26;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_4();
  v213 = v28;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_4();
  v210 = v30;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v31);
  v218 = &v193[-v32];
  v219 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7();
  v216 = v35 - v34;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE090);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_77();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_4();
  v200 = v41;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_4();
  v217 = v43;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v44);
  v46 = &v193[-v45];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  v48 = OUTLINED_FUNCTION_36(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_77();
  v196 = v49 - v50;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_4();
  v197 = v52;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_6_4();
  v198 = v54;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_4();
  v199 = v56;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_4();
  v214 = v58;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v59);
  v61 = &v193[-v60];
  MEMORY[0x28223BE20](v62);
  v64 = &v193[-v63];
  MEMORY[0x28223BE20](v65);
  v67 = &v193[-v66];
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v69 = *(a1 + 16);
  v68 = *(a1 + 24);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v70 = *(a2 + 24);
  if (v68)
  {
    if (!v70)
    {
      return 0;
    }

    v71 = v69 == *(a2 + 16) && v68 == v70;
    if (!v71 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v70)
  {
    return 0;
  }

  v195 = v39;
  v221 = a2;
  v72 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__segue;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(a1 + v72, v67, &qword_27CABFF98);
  OUTLINED_FUNCTION_81_12();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v73 = *(v220 + 48);
  v74 = OUTLINED_FUNCTION_82();
  sub_216683A80(v74, v75, &qword_27CABFF98);
  v76 = OUTLINED_FUNCTION_81_12();
  sub_216683A80(v76, &v46[v73], &qword_27CABFF98);
  OUTLINED_FUNCTION_31_2(v46, 1, v219);
  if (v71)
  {

    sub_216697664(v67, &qword_27CABFF98);
    OUTLINED_FUNCTION_15_6(&v46[v73]);
    if (v71)
    {
      sub_216697664(v46, &qword_27CABFF98);
      goto LABEL_20;
    }

LABEL_18:
    v78 = v46;
LABEL_29:
    sub_216697664(v78, &qword_27CACE090);
    goto LABEL_30;
  }

  sub_216683A80(v46, v64, &qword_27CABFF98);
  OUTLINED_FUNCTION_15_6(&v46[v73]);
  if (v77)
  {

    sub_216697664(v67, &qword_27CABFF98);
    OUTLINED_FUNCTION_1_231();
    sub_216F5BD94();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_5_151();
  sub_216F5BCEC();

  v79 = sub_216F82038();
  sub_216F5BD94();
  sub_216697664(v67, &qword_27CABFF98);
  sub_216F5BD94();
  v80 = OUTLINED_FUNCTION_45_0();
  sub_216697664(v80, v81);
  if ((v79 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  v82 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__playAction;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(a1 + v82, v61, &qword_27CABFF98);
  OUTLINED_FUNCTION_81_12();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v83 = *(v220 + 48);
  v84 = v217;
  sub_216683A80(v61, v217, &qword_27CABFF98);
  v85 = OUTLINED_FUNCTION_81_12();
  v86 = v221;
  sub_216683A80(v85, v84 + v83, &qword_27CABFF98);
  OUTLINED_FUNCTION_15_6(v84);
  if (v71)
  {
    sub_216697664(v61, &qword_27CABFF98);
    OUTLINED_FUNCTION_15_6(v84 + v83);
    v87 = v218;
    if (v71)
    {
      sub_216697664(v84, &qword_27CABFF98);
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  sub_216683A80(v84, v214, &qword_27CABFF98);
  OUTLINED_FUNCTION_15_6(v84 + v83);
  v87 = v218;
  if (v88)
  {
    sub_216697664(v61, &qword_27CABFF98);
    OUTLINED_FUNCTION_1_231();
    sub_216F5BD94();
LABEL_28:
    v78 = v84;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_5_151();
  sub_216F5BCEC();
  v194 = sub_216F82038();
  sub_216F5BD94();
  v90 = OUTLINED_FUNCTION_108();
  sub_216697664(v90, v91);
  OUTLINED_FUNCTION_82();
  sub_216F5BD94();
  sub_216697664(v84, &qword_27CABFF98);
  if ((v194 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_33:
  v92 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artwork;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_64_2(a1 + v92, v87);
  v93 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artwork;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v94 = *(v215 + 48);
  v95 = v211;
  OUTLINED_FUNCTION_64_2(v87, v211);
  OUTLINED_FUNCTION_64_2(v86 + v93, &v95[v94]);
  OUTLINED_FUNCTION_31_2(v95, 1, v212);
  if (v71)
  {
    sub_216697664(v87, &qword_27CACE100);
    OUTLINED_FUNCTION_15_6(&v95[v94]);
    v96 = v213;
    if (!v71)
    {
      goto LABEL_51;
    }

    sub_216697664(v95, &qword_27CACE100);
  }

  else
  {
    v97 = v210;
    sub_216683A80(v95, v210, &qword_27CACE100);
    OUTLINED_FUNCTION_15_6(&v95[v94]);
    v96 = v213;
    if (v98)
    {
      sub_216697664(v87, &qword_27CACE100);
      OUTLINED_FUNCTION_37_50();
LABEL_50:
      sub_216F5BD94();
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_3_184();
    v99 = v207;
    sub_216F5BCEC();
    LODWORD(v218) = sub_216F848D8(v97, v99);
    sub_216F5BD94();
    OUTLINED_FUNCTION_82_2();
    sub_216697664(v100, v101);
    OUTLINED_FUNCTION_7_4();
    sub_216F5BD94();
    OUTLINED_FUNCTION_82_2();
    sub_216697664(v102, v103);
    if ((v218 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v104 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__previewArtwork;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_64_2(a1 + v104, v96);
  v105 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__previewArtwork;
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v106 = *(v215 + 48);
  v95 = v208;
  OUTLINED_FUNCTION_64_2(v96, v208);
  OUTLINED_FUNCTION_64_2(v96 + v105, &v95[v106]);
  OUTLINED_FUNCTION_15_6(v95);
  if (v71)
  {
    sub_216697664(v96, &qword_27CACE100);
    OUTLINED_FUNCTION_15_6(&v95[v106]);
    v107 = v209;
    if (v71)
    {
      sub_216697664(v95, &qword_27CACE100);
      goto LABEL_55;
    }

LABEL_51:
    v109 = &qword_27CACE3D0;
    v110 = v95;
LABEL_52:
    sub_216697664(v110, v109);
    goto LABEL_30;
  }

  sub_216683A80(v95, v206, &qword_27CACE100);
  OUTLINED_FUNCTION_15_6(&v95[v106]);
  v107 = v209;
  if (v108)
  {
    sub_216697664(v213, &qword_27CACE100);
    OUTLINED_FUNCTION_37_50();
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_3_184();
  sub_216F5BCEC();
  v111 = OUTLINED_FUNCTION_82();
  v113 = sub_216F848D8(v111, v112);
  sub_216F5BD94();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v114, v115);
  sub_216F5BD94();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v116, v117);
  if ((v113 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_55:
  v118 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__title;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v119 = *(v118 + 8);
  OUTLINED_FUNCTION_89_15();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v119)
  {
    if (!qword_27CACE008)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_88_12();
    if (!v71 || v119 != v120)
    {
      OUTLINED_FUNCTION_7_4();
      if ((sub_21700F7D4() & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  else if (qword_27CACE008)
  {
    goto LABEL_30;
  }

  v122 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__contentDescriptor;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_64_2(a1 + v122, v107);
  v123 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__contentDescriptor;
  v124 = v107;
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v125 = *(v203 + 48);
  v126 = v205;
  OUTLINED_FUNCTION_64_2(v107, v205);
  v127 = &v107[v123];
  v128 = v126;
  OUTLINED_FUNCTION_64_2(v127, &v126[v125]);
  v129 = v204;
  OUTLINED_FUNCTION_31_2(v126, 1, v204);
  if (v71)
  {
    sub_216697664(v124, &qword_27CACE120);
    OUTLINED_FUNCTION_31_2(&v126[v125], 1, v129);
    if (v71)
    {
      sub_216697664(v126, &qword_27CACE120);
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  sub_216683A80(v126, v202, &qword_27CACE120);
  OUTLINED_FUNCTION_31_2(&v126[v125], 1, v129);
  if (v130)
  {
    sub_216697664(v209, &qword_27CACE120);
    sub_216F5BD94();
LABEL_72:
    v109 = &qword_27CACE3C0;
    v110 = v126;
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_15_80();
  sub_216F5BCEC();
  sub_216FE1ABC();
  v132 = v131;
  sub_216F5BD94();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v133, v134);
  sub_216F5BD94();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v135, v136);
  if ((v132 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_74:
  v137 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__showExplicitBadge;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v138 = *(a1 + v137);
  v139 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__showExplicitBadge;
  v140 = v221;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v141 = *(v140 + v139);
  if (v138 == 2)
  {
    if (v141 != 2)
    {
      goto LABEL_30;
    }
  }

  else if (v141 == 2 || ((v138 ^ v141) & 1) != 0)
  {
    goto LABEL_30;
  }

  v142 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__accessibilityLabel;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v143 = *(v142 + 8);
  OUTLINED_FUNCTION_89_15();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v143)
  {
    if (!qword_27CACE008)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_88_12();
    if (!v71 || v143 != v144)
    {
      OUTLINED_FUNCTION_7_4();
      if ((sub_21700F7D4() & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  else if (qword_27CACE008)
  {
    goto LABEL_30;
  }

  v146 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__headline;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v147 = *(v146 + 8);
  OUTLINED_FUNCTION_89_15();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (!v147)
  {
    if (!qword_27CACE008)
    {
      goto LABEL_97;
    }

LABEL_30:

    return 0;
  }

  if (!qword_27CACE008)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_88_12();
  if (!v71 || v147 != v148)
  {
    OUTLINED_FUNCTION_7_4();
    if ((sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_97:
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  sub_21700DF14();
  OUTLINED_FUNCTION_7_4();
  sub_216F26500();
  v151 = v150;

  if ((v151 & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  sub_21700DF14();
  OUTLINED_FUNCTION_7_4();
  sub_216F26500();
  v153 = v152;

  if ((v153 & 1) == 0)
  {
    goto LABEL_30;
  }

  v154 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__duration;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v155 = *v154;
  v156 = *(v154 + 8);
  v157 = v221 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__duration;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v156)
  {
    if ((*(v157 + 8) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if ((*(v157 + 8) & 1) != 0 || v155 != *v157)
  {
    goto LABEL_30;
  }

  v158 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__rankingText;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v159 = *(v158 + 8);
  OUTLINED_FUNCTION_89_15();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v159)
  {
    if (!qword_27CACE008)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_88_12();
    if (!v71 || v159 != v160)
    {
      OUTLINED_FUNCTION_7_4();
      if ((sub_21700F7D4() & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  else if (qword_27CACE008)
  {
    goto LABEL_30;
  }

  v162 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__isDisabled;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v163 = *(a1 + v162);
  v164 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__isDisabled;
  v165 = v221;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v166 = *(v165 + v164);
  if (v163 == 2)
  {
    if (v166 != 2)
    {
      goto LABEL_30;
    }
  }

  else if (v166 == 2 || ((v163 ^ v166) & 1) != 0)
  {
    goto LABEL_30;
  }

  v167 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPlaying;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v168 = v199;
  OUTLINED_FUNCTION_64_2(a1 + v167, v199);
  v169 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPlaying;
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v170 = *(v220 + 48);
  v171 = v168;
  v172 = v200;
  OUTLINED_FUNCTION_64_2(v171, v200);
  OUTLINED_FUNCTION_64_2(&v126[v169], v172 + v170);
  OUTLINED_FUNCTION_31_2(v172, 1, v219);
  if (v71)
  {
    sub_216697664(v199, &qword_27CABFF98);
    OUTLINED_FUNCTION_31_2(v200 + v170, 1, v219);
    if (v71)
    {
      sub_216697664(v200, &qword_27CABFF98);
      goto LABEL_130;
    }

LABEL_127:
    sub_216697664(v200, &qword_27CACE090);
    goto LABEL_30;
  }

  v173 = v200;
  sub_216683A80(v200, v198, &qword_27CABFF98);
  OUTLINED_FUNCTION_31_2(v173 + v170, 1, v219);
  if (v174)
  {
    sub_216697664(v199, &qword_27CABFF98);
    OUTLINED_FUNCTION_1_231();
    sub_216F5BD94();
    goto LABEL_127;
  }

  OUTLINED_FUNCTION_5_151();
  v128 = v200;
  sub_216F5BCEC();
  v175 = sub_216F82038();
  OUTLINED_FUNCTION_38_45();
  sub_216F5BD94();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v176, v177);
  sub_216F5BD94();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v178, v179);
  if ((v175 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_130:
  v180 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPaused;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v181 = v197;
  OUTLINED_FUNCTION_64_2(a1 + v180, v197);
  v182 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artworkButtonActionWhenPaused;
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v183 = *(v220 + 48);
  v184 = v181;
  v185 = v195;
  OUTLINED_FUNCTION_64_2(v184, v195);
  OUTLINED_FUNCTION_64_2(v128 + v182, v185 + v183);
  OUTLINED_FUNCTION_31_2(v185, 1, v219);
  if (v71)
  {

    sub_216697664(v197, &qword_27CABFF98);
    OUTLINED_FUNCTION_31_2(v195 + v183, 1, v219);
    if (v71)
    {
      sub_216697664(v195, &qword_27CABFF98);
      return 1;
    }

LABEL_138:
    sub_216697664(v195, &qword_27CACE090);
    return 0;
  }

  v186 = v195;
  sub_216683A80(v195, v196, &qword_27CABFF98);
  OUTLINED_FUNCTION_31_2(v186 + v183, 1, v219);
  if (v187)
  {

    sub_216697664(v197, &qword_27CABFF98);
    OUTLINED_FUNCTION_1_231();
    sub_216F5BD94();
    goto LABEL_138;
  }

  OUTLINED_FUNCTION_5_151();
  sub_216F5BCEC();
  v188 = sub_216F82038();

  OUTLINED_FUNCTION_38_45();
  sub_216F5BD94();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v189, v190);
  sub_216F5BD94();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v191, v192);
  return (v188 & 1) != 0;
}

uint64_t sub_216F5EA30(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F5EBB0(&qword_27CACE9F0, type metadata accessor for SongTrackLockup);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F5EAC4(uint64_t a1)
{
  v2 = sub_216F5EBB0(&qword_27CAC80D8, type metadata accessor for SongTrackLockup);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F5EB34()
{
  sub_216F5EBB0(&qword_27CAC80D8, type metadata accessor for SongTrackLockup);

  return sub_217007A34();
}

uint64_t sub_216F5EBB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216F5EC24()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22DC0);
  __swift_project_value_buffer(v0, qword_27CB22DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015230;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tracks";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 101;
  *v10 = "list";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 102;
  *v12 = "stacked_shelf";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F5EE88()
{
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 102:
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_615();
        sub_216F5F4C4(v7, v8, v9, v10);
        break;
      case 101:
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_615();
        sub_216F5EFC0(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_615();
        sub_216F5EF20();
        break;
    }
  }

  return result;
}

uint64_t sub_216F5EF20()
{
  type metadata accessor for SongTrackLockup(0);
  sub_216F5EBB0(&qword_27CAC80D8, type metadata accessor for SongTrackLockup);
  return sub_2170079C4();
}

uint64_t sub_216F5EFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Presentation.List(0);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEA00);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for SongTrackLockupCollection(0) + 20);
  v26 = a1;
  sub_216683A80(a1 + v25, v10, &qword_27CAC6578);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v10, &qword_27CAC6578);
  }

  else
  {
    sub_216F5BCEC();
    sub_216F5BCEC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_216F5BD94();
    }

    else
    {
      sub_216697664(v18, &qword_27CACEA00);
      sub_216F5BCEC();
      sub_216F5BCEC();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_216F5EBB0(&qword_27CACE9F8, type metadata accessor for Presentation.List);
  v19 = v30;
  sub_2170079D4();
  if (v19)
  {
    v20 = v18;
    return sub_216697664(v20, &qword_27CACEA00);
  }

  sub_216683A80(v18, v15, &qword_27CACEA00);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_216697664(v18, &qword_27CACEA00);
    v20 = v15;
    return sub_216697664(v20, &qword_27CACEA00);
  }

  sub_216F5BCEC();
  if (EnumTagSinglePayload != 1)
  {
    sub_217007924();
  }

  v22 = v28;
  sub_216697664(v18, &qword_27CACEA00);
  v24 = v25;
  v23 = v26;
  sub_216697664(v26 + v25, &qword_27CAC6578);
  sub_216F5BCEC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_216F5F4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Presentation.StackedShelf(0);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE588);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for SongTrackLockupCollection(0) + 20);
  v26 = a1;
  sub_216683A80(a1 + v25, v10, &qword_27CAC6578);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v10, &qword_27CAC6578);
  }

  else
  {
    sub_216F5BCEC();
    sub_216F5BCEC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_216697664(v18, &qword_27CACE588);
      sub_216F5BCEC();
      sub_216F5BCEC();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_216F5BD94();
    }
  }

  sub_216F5EBB0(&qword_27CACE570, type metadata accessor for Presentation.StackedShelf);
  v19 = v30;
  sub_2170079D4();
  if (v19)
  {
    v20 = v18;
    return sub_216697664(v20, &qword_27CACE588);
  }

  sub_216683A80(v18, v15, &qword_27CACE588);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_216697664(v18, &qword_27CACE588);
    v20 = v15;
    return sub_216697664(v20, &qword_27CACE588);
  }

  sub_216F5BCEC();
  if (EnumTagSinglePayload != 1)
  {
    sub_217007924();
  }

  v22 = v28;
  sub_216697664(v18, &qword_27CACE588);
  v24 = v25;
  v23 = v26;
  sub_216697664(v26 + v25, &qword_27CAC6578);
  sub_216F5BCEC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_216F5F9C8()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  if (!*(*v0 + 16) || (type metadata accessor for SongTrackLockup(0), sub_216F5EBB0(&qword_27CAC80D8, type metadata accessor for SongTrackLockup), result = sub_217007AF4(), !v1))
  {
    v8 = type metadata accessor for SongTrackLockupCollection(0);
    sub_216683A80(v2 + *(v8 + 20), v6, &qword_27CAC6578);
    v9 = type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
    {
      goto LABEL_8;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_615();
      sub_216F5FDAC(v10, v11, v12, v13);
    }

    else
    {
      OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_615();
      sub_216F5FB8C(v14, v15, v16, v17);
    }

    OUTLINED_FUNCTION_0_270();
    result = sub_216F5BD94();
    if (!v1)
    {
LABEL_8:
      OUTLINED_FUNCTION_47_2();
      return sub_217007864();
    }
  }

  return result;
}

uint64_t sub_216F5FB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Presentation.List(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for SongTrackLockupCollection(0);
  sub_216683A80(a1 + *(v9 + 20), v7, &qword_27CAC6578);
  v10 = type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_216697664(v7, &qword_27CAC6578);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_216F5BCEC();
      sub_216F5EBB0(&qword_27CACE9F8, type metadata accessor for Presentation.List);
      sub_217007B04();
      return sub_216F5BD94();
    }

    result = sub_216F5BD94();
  }

  __break(1u);
  return result;
}

uint64_t sub_216F5FDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Presentation.StackedShelf(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for SongTrackLockupCollection(0);
  sub_216683A80(a1 + *(v9 + 20), v7, &qword_27CAC6578);
  v10 = type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_216697664(v7, &qword_27CAC6578);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_216F5BCEC();
      sub_216F5EBB0(&qword_27CACE570, type metadata accessor for Presentation.StackedShelf);
      sub_217007B04();
      return sub_216F5BD94();
    }

    result = sub_216F5BD94();
  }

  __break(1u);
  return result;
}

void sub_216F5FFCC()
{
  OUTLINED_FUNCTION_49();
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(v3);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE960);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_2();
  sub_216F2618C();
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

  v21 = type metadata accessor for SongTrackLockupCollection(0);
  v13 = *(v21 + 20);
  v14 = *(v10 + 48);
  sub_216683A80(v1 + v13, v2, &qword_27CAC6578);
  sub_216683A80(v0 + v13, v2 + v14, &qword_27CAC6578);
  OUTLINED_FUNCTION_31_2(v2, 1, v4);
  if (v15)
  {
    OUTLINED_FUNCTION_31_2(v2 + v14, 1, v4);
    if (v15)
    {
      sub_216697664(v2, &qword_27CAC6578);
LABEL_13:
      sub_217007884();
      OUTLINED_FUNCTION_4_159();
      sub_216F5EBB0(v18, v19);
      sub_21700E494();
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_216683A80(v2, v9, &qword_27CAC6578);
  OUTLINED_FUNCTION_31_2(v2 + v14, 1, v4);
  if (v15)
  {
    OUTLINED_FUNCTION_0_270();
    sub_216F5BD94();
LABEL_10:
    sub_216697664(v2, &qword_27CACE960);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_90();
  sub_216F5BCEC();
  OUTLINED_FUNCTION_98();
  sub_216F5A810();
  v17 = v16;
  sub_216F5BD94();
  sub_216F5BD94();
  sub_216697664(v2, &qword_27CAC6578);
  if (v17)
  {
    goto LABEL_13;
  }

LABEL_11:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F602BC(void (*a1)(void))
{
  sub_21700F8F4();
  a1(0);
  v2 = OUTLINED_FUNCTION_45_0();
  sub_216F5EBB0(v2, v3);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F60374(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F5EBB0(&qword_27CACE9E8, type metadata accessor for SongTrackLockupCollection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F60408(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();

  return v4(v3);
}

uint64_t sub_216F60470(uint64_t a1)
{
  v2 = sub_216F5EBB0(&qword_27CACE988, type metadata accessor for SongTrackLockupCollection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F604E0()
{
  sub_216F5EBB0(&qword_27CACE988, type metadata accessor for SongTrackLockupCollection);

  return sub_217007A34();
}

uint64_t sub_216F607C8()
{
  result = sub_217007884();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SongTrackLockup._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_216F60874()
{
  sub_216F60970(319, &qword_27CACE9B8, type metadata accessor for SongTrackLockup, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_216F60970(319, &qword_27CACE9C0, type metadata accessor for SongTrackLockupCollection.OneOf_Presentation, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_217007884();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216F60970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_216F609D4()
{
  result = type metadata accessor for Presentation.List(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Presentation.StackedShelf(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_216F60A50()
{
  sub_216F60970(319, qword_280E48698, type metadata accessor for AnyAction, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_216F60970(319, &qword_27CACE350, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_216F60970(319, qword_280E49D78, type metadata accessor for ContentDescriptor, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_216F60C44()
{
  OUTLINED_FUNCTION_8_124();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (!*(v2 + 24))
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F60CC0()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_34_42();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v6 = OUTLINED_FUNCTION_18();
    v7 = sub_216F647AC(v6);
    OUTLINED_FUNCTION_97_0(v7);
  }

  OUTLINED_FUNCTION_139();
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
}

void (*sub_216F60D4C())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 40) = v0;
  OUTLINED_FUNCTION_6_134();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  sub_21700DF14();
  return sub_216F60DDC;
}

BOOL sub_216F60DF4()
{
  OUTLINED_FUNCTION_8_124();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return OUTLINED_FUNCTION_93_1(*(v2 + 24));
}

uint64_t sub_216F60E38()
{
  v2 = OUTLINED_FUNCTION_69_16();
  v3 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v3 = sub_216F647AC(v3);
    *(v0 + v1) = v3;
  }

  OUTLINED_FUNCTION_139();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
}

void sub_216F60EB8()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for AnyAction(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_6_134();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    v13 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_30_58(v13);
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v0, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F61084()
{
  v1 = OUTLINED_FUNCTION_108();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_6_134();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_2();
  sub_216683A80(v4, v5, v6);
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_7_6();
  if (v7)
  {
    type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_78_2();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    sub_217007874();
    result = OUTLINED_FUNCTION_7_6();
    if (!v7)
    {
      return sub_216697664(v0, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    return sub_216F535D8();
  }

  return result;
}

uint64_t sub_216F611A8(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for AlbumTrackLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v12 = OUTLINED_FUNCTION_18();
    v11 = sub_216F647AC(v12);
    *(v4 + v9) = v11;
  }

  sub_216F535D8();
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = *a2;
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_2166861C8(v8, v11 + v17, &qword_27CABFF98);
  return swift_endAccess();
}

void sub_216F612CC()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for AnyAction(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_6_134();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    v13 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_30_58(v13);
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v0, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F6145C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_76();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  OUTLINED_FUNCTION_6_134();
  v13 = *a3;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(v4 + v13, v12, v5);
  v14 = a4(0);
  OUTLINED_FUNCTION_31_2(v12, 1, v14);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  sub_216697664(v12, v5);
  return v16;
}

uint64_t sub_216F61560(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_76();
  v8 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for AlbumTrackLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v17 = OUTLINED_FUNCTION_18();
    v16 = sub_216F647AC(v17);
    *(v8 + v14) = v16;
  }

  a3(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = *a4;
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_2166861C8(v13, v16 + v22, v5);
  return swift_endAccess();
}

uint64_t sub_216F6165C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_6_134();
  v4 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artwork;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(v0 + v4, v1, &qword_27CACE100);
  v5 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_7_6();
  if (v6)
  {
    sub_217007874();
    type metadata accessor for Artwork.ArtworkDictionary(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    OUTLINED_FUNCTION_30_3(*(v5 + 24));
    result = OUTLINED_FUNCTION_7_6();
    if (!v6)
    {
      return sub_216697664(v1, &qword_27CACE100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_42();
    OUTLINED_FUNCTION_92_0();
    return sub_216F535D8();
  }

  return result;
}

uint64_t sub_216F6177C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  if ((OUTLINED_FUNCTION_34_42() & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F647AC(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_35_42();
  sub_216F535D8();
  type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  v8 = OUTLINED_FUNCTION_95_0();
  sub_2166861C8(v8, v9, v10);
  return swift_endAccess();
}

void sub_216F61870()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  v9 = type metadata accessor for Artwork(v8);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_120_1(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_6_134();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v14)
  {
    sub_217007874();
    v15 = OUTLINED_FUNCTION_79_2();
    v16 = type metadata accessor for Artwork.ArtworkDictionary(v15);
    OUTLINED_FUNCTION_60(v16);
    v17 = &v13[*(v9 + 24)];
    *v17 = 0;
    *(v17 + 1) = 0;
    OUTLINED_FUNCTION_6_3();
    if (!v14)
    {
      sub_216697664(v0, &qword_27CACE100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F61A44()
{
  OUTLINED_FUNCTION_8_124();
  OUTLINED_FUNCTION_68();
  if (!*(v0 + 8))
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F61A9C()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_34_42();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v6 = OUTLINED_FUNCTION_18();
    v7 = sub_216F647AC(v6);
    OUTLINED_FUNCTION_97_0(v7);
  }

  v8 = (v5 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__title);
  OUTLINED_FUNCTION_147();
  *v8 = v2;
  v8[1] = v0;
}

void (*sub_216F61B18(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_8_124();
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__title);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return sub_216F61BBC;
}

void sub_216F61BD4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_91_3();
  if (v5)
  {
    sub_21700DF14();
    v6 = OUTLINED_FUNCTION_109();
    a3(v6);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_109();
    a3(v7);
  }

  free(v3);
}

BOOL sub_216F61C54()
{
  OUTLINED_FUNCTION_8_124();
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_93_1(*(v0 + 8));
}

uint64_t sub_216F61C94()
{
  v2 = OUTLINED_FUNCTION_68_20();
  v3 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v4 = OUTLINED_FUNCTION_18();
    v5 = sub_216F647AC(v4);
    OUTLINED_FUNCTION_96_8(v5);
  }

  v6 = (v3 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__title);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_147();
  *v6 = 0;
  v6[1] = 0;
}

uint64_t sub_216F61D0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  if ((OUTLINED_FUNCTION_34_42() & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F647AC(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_0_269();
  sub_216F535D8();
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  v8 = OUTLINED_FUNCTION_95_0();
  sub_2166861C8(v8, v9, v10);
  return swift_endAccess();
}

void sub_216F61E00()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  v9 = type metadata accessor for ContentDescriptor(v8);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_120_1(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_6_134();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v14)
  {
    sub_217007874();
    v15 = OUTLINED_FUNCTION_79_2();
    v16 = type metadata accessor for ContentDescriptor.ContentKind(v15);
    OUTLINED_FUNCTION_60(v16);
    v17 = type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_60(v17);
    v18 = &v13[*(v9 + 28)];
    *v18 = 0;
    *(v18 + 1) = 0;
    OUTLINED_FUNCTION_6_3();
    if (!v14)
    {
      sub_216697664(v0, &qword_27CACE120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F61FFC()
{
  v0 = OUTLINED_FUNCTION_49_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_4_160(v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_16_4();
  return OUTLINED_FUNCTION_103();
}

uint64_t sub_216F62088()
{
  OUTLINED_FUNCTION_8_124();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return sub_21700DF14();
}

uint64_t sub_216F620D4()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_31_0();
  v4 = *(type metadata accessor for AlbumTrackLockup(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v7 = OUTLINED_FUNCTION_18();
    v6 = sub_216F647AC(v7);
    *(v2 + v4) = v6;
  }

  v8 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__subtitleLinks;
  OUTLINED_FUNCTION_139();
  *(v6 + v8) = v0;
}

uint64_t sub_216F62150()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_8_124();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__subtitleLinks;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  *(v1 + 48) = *(v4 + v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

void sub_216F621D8()
{
  OUTLINED_FUNCTION_91_3();
  v2 = *(v1 + 48);
  if (v3)
  {
    sub_21700DF14();
    sub_216F620D4();
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v0 + 64);
      v9 = *(v0 + 56);
      OUTLINED_FUNCTION_11_97();
      v10 = OUTLINED_FUNCTION_18();
      v7 = sub_216F647AC(v10);
      *(v9 + v8) = v7;
    }

    v11 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__subtitleLinks;
    OUTLINED_FUNCTION_147();
    *(v7 + v11) = v2;
  }

  free(v0);
}

uint64_t sub_216F62290()
{
  OUTLINED_FUNCTION_8_124();
  OUTLINED_FUNCTION_68();
  if (v0[4])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_216F622D8(int a1)
{
  v3 = v1;
  v5 = OUTLINED_FUNCTION_69_16();
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v7 = OUTLINED_FUNCTION_18();
    v6 = sub_216F647AC(v7);
    *(v3 + v2) = v6;
  }

  v8 = v6 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__trackNumber;
  result = OUTLINED_FUNCTION_147();
  *v8 = a1;
  *(v8 + 4) = 0;
  return result;
}

uint64_t sub_216F6234C()
{
  v2 = OUTLINED_FUNCTION_49_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_54_0(v3) + 72) = v0;
  OUTLINED_FUNCTION_8_124();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__trackNumber;
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v6 = *v5;
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  *(v1 + 80) = v6;
  return OUTLINED_FUNCTION_103();
}

void sub_216F623D4()
{
  OUTLINED_FUNCTION_91_3();
  v2 = *(v1 + 80);
  v3 = *(v0 + 84);
  v4 = *(v0 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v0 + 84);
    v8 = *(v0 + 72);
    OUTLINED_FUNCTION_11_97();
    v9 = OUTLINED_FUNCTION_18();
    v6 = sub_216F647AC(v9);
    *(v8 + v7) = v6;
  }

  v10 = v6 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__trackNumber;
  OUTLINED_FUNCTION_147();
  *v10 = v2;
  *(v10 + 4) = 0;

  free(v0);
}

BOOL sub_216F62484()
{
  OUTLINED_FUNCTION_8_124();
  OUTLINED_FUNCTION_68();
  return (*(v0 + 4) & 1) == 0;
}

uint64_t sub_216F624C8()
{
  v2 = OUTLINED_FUNCTION_68_20();
  v3 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v4 = OUTLINED_FUNCTION_18();
    v5 = sub_216F647AC(v4);
    OUTLINED_FUNCTION_96_8(v5);
  }

  v6 = v3 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__trackNumber;
  OUTLINED_FUNCTION_48_0();
  result = OUTLINED_FUNCTION_147();
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

double sub_216F62534()
{
  OUTLINED_FUNCTION_8_124();
  OUTLINED_FUNCTION_68();
  result = *v0;
  if (*(v0 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_216F62580(double a1)
{
  v4 = OUTLINED_FUNCTION_68_20();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v6 = OUTLINED_FUNCTION_18();
    v7 = sub_216F647AC(v6);
    OUTLINED_FUNCTION_96_8(v7);
  }

  v8 = v5 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__duration;
  OUTLINED_FUNCTION_48_0();
  result = OUTLINED_FUNCTION_147();
  *v8 = a1;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_216F625F4()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_8_124();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__duration;
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *(v1 + 72) = v5;
  return OUTLINED_FUNCTION_103();
}

void sub_216F62684()
{
  OUTLINED_FUNCTION_91_3();
  v2 = *(v1 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v0 + 88);
    v8 = *(v0 + 80);
    OUTLINED_FUNCTION_11_97();
    v9 = OUTLINED_FUNCTION_18();
    v6 = sub_216F647AC(v9);
    *(v8 + v7) = v6;
  }

  v10 = v6 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__duration;
  OUTLINED_FUNCTION_147();
  *v10 = v2;
  *(v10 + 8) = 0;

  free(v0);
}

BOOL sub_216F62734()
{
  OUTLINED_FUNCTION_8_124();
  OUTLINED_FUNCTION_68();
  return (*(v0 + 8) & 1) == 0;
}

uint64_t sub_216F62778()
{
  v2 = OUTLINED_FUNCTION_68_20();
  v3 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v4 = OUTLINED_FUNCTION_18();
    v5 = sub_216F647AC(v4);
    OUTLINED_FUNCTION_96_8(v5);
  }

  v6 = v3 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__duration;
  OUTLINED_FUNCTION_48_0();
  result = OUTLINED_FUNCTION_147();
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_216F627F0(uint64_t a1)
{
  OUTLINED_FUNCTION_6_134();
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return *(v1 + a1) & 1;
}

uint64_t sub_216F6283C(char a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_34_42();
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v8 = OUTLINED_FUNCTION_18();
    v9 = sub_216F647AC(v8);
    OUTLINED_FUNCTION_97_0(v9);
  }

  OUTLINED_FUNCTION_22_12();
  result = OUTLINED_FUNCTION_147();
  *(v7 + a2) = a1 & 1;
  return result;
}

uint64_t sub_216F628A8()
{
  v0 = OUTLINED_FUNCTION_49_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_4_160(v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_16_4();
  return OUTLINED_FUNCTION_103();
}

void sub_216F6291C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 80);
    v11 = *(v4 + 72);
    OUTLINED_FUNCTION_11_97();
    v12 = OUTLINED_FUNCTION_18();
    v9 = sub_216F647AC(v12);
    *(v11 + v10) = v9;
  }

  v13 = *a3;
  OUTLINED_FUNCTION_147();
  *(v9 + v13) = v7;

  free(v4);
}

BOOL sub_216F629D8(uint64_t a1)
{
  OUTLINED_FUNCTION_6_134();
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return *(v1 + a1) != 2;
}

uint64_t sub_216F62A28(uint64_t a1)
{
  v4 = v1;
  v5 = OUTLINED_FUNCTION_69_16();
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v7 = OUTLINED_FUNCTION_18();
    v6 = sub_216F647AC(v7);
    *(v4 + v2) = v6;
  }

  OUTLINED_FUNCTION_22_12();
  result = OUTLINED_FUNCTION_147();
  *(v6 + a1) = 2;
  return result;
}

uint64_t sub_216F62AA4()
{
  v0 = OUTLINED_FUNCTION_49_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_4_160(v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_16_4();
  return OUTLINED_FUNCTION_103();
}

uint64_t sub_216F62B48()
{
  v0 = OUTLINED_FUNCTION_49_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_4_160(v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_16_4();
  return OUTLINED_FUNCTION_103();
}

uint64_t sub_216F62BEC()
{
  v0 = OUTLINED_FUNCTION_49_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_4_160(v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_16_4();
  return OUTLINED_FUNCTION_103();
}

uint64_t sub_216F62C90()
{
  v0 = OUTLINED_FUNCTION_49_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_4_160(v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_16_4();
  return OUTLINED_FUNCTION_103();
}

uint64_t sub_216F62D28()
{
  v1 = OUTLINED_FUNCTION_108();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_6_134();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_2();
  sub_216683A80(v4, v5, v6);
  v7 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_6();
  if (v8)
  {
    sub_217007874();
    type metadata accessor for ContentDescriptor.ContentKind(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_30_3(*(v7 + 28));
    result = OUTLINED_FUNCTION_7_6();
    if (!v8)
    {
      return sub_216697664(v0, &qword_27CACE120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    return sub_216F535D8();
  }

  return result;
}

uint64_t sub_216F62E68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  if ((OUTLINED_FUNCTION_34_42() & 1) == 0)
  {
    OUTLINED_FUNCTION_11_97();
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_216F647AC(v2);
    OUTLINED_FUNCTION_97_0(v3);
  }

  OUTLINED_FUNCTION_0_269();
  sub_216F535D8();
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  v8 = OUTLINED_FUNCTION_95_0();
  sub_2166861C8(v8, v9, v10);
  return swift_endAccess();
}

void sub_216F62F5C()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  v9 = type metadata accessor for ContentDescriptor(v8);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_120_1(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_6_134();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v14)
  {
    sub_217007874();
    v15 = OUTLINED_FUNCTION_79_2();
    v16 = type metadata accessor for ContentDescriptor.ContentKind(v15);
    OUTLINED_FUNCTION_60(v16);
    v17 = type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_60(v17);
    v18 = &v13[*(v9 + 28)];
    *v18 = 0;
    *(v18 + 1) = 0;
    OUTLINED_FUNCTION_6_3();
    if (!v14)
    {
      sub_216697664(v0, &qword_27CACE120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F63158()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for AnyAction(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_6_134();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    v13 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_30_58(v13);
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v0, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F63330()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for AnyAction(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_120_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_6_134();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    v13 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_30_58(v13);
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v0, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F63490(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_109();
    sub_216F5362C();
    a3(v5);
    OUTLINED_FUNCTION_108();
    sub_216F53680();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v7);

  free(v4);
}

uint64_t sub_216F63598@<X0>(uint64_t a1@<X8>)
{
  sub_217007874();
  v2 = *(type metadata accessor for AlbumTrackLockup(0) + 20);
  if (qword_27CACDC90 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27CACEA08;
}

uint64_t sub_216F63614()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  v5 = type metadata accessor for AlbumTrackLockupCollection(v4);
  sub_216683A80(v0 + *(v5 + 24), v1, &qword_27CACE120);
  v6 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_6();
  if (v7)
  {
    sub_217007874();
    type metadata accessor for ContentDescriptor.ContentKind(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    OUTLINED_FUNCTION_30_3(*(v6 + 28));
    result = OUTLINED_FUNCTION_7_6();
    if (!v7)
    {
      return sub_216697664(v1, &qword_27CACE120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_269();
    OUTLINED_FUNCTION_92_0();
    return sub_216F535D8();
  }

  return result;
}

uint64_t sub_216F63734()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for AlbumTrackLockupCollection(v1);
  sub_216697664(v0 + *(v2 + 24), &qword_27CACE120);
  OUTLINED_FUNCTION_0_269();
  OUTLINED_FUNCTION_95_0();
  sub_216F535D8();
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*sub_216F637AC(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for ContentDescriptor(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_34();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for AlbumTrackLockupCollection(0) + 24);
  *(v3 + 10) = v11;
  sub_216683A80(v1 + v11, v6, &qword_27CACE120);
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    sub_217007874();
    v13 = OUTLINED_FUNCTION_79_2();
    v14 = type metadata accessor for ContentDescriptor.ContentKind(v13);
    OUTLINED_FUNCTION_60(v14);
    v15 = type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_60(v15);
    v16 = &v10[*(v7 + 28)];
    *v16 = 0;
    *(v16 + 1) = 0;
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v6, &qword_27CACE120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_269();
    OUTLINED_FUNCTION_70_1();
  }

  return sub_216F52238;
}

uint64_t sub_216F63920()
{
  v2 = OUTLINED_FUNCTION_116();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17_0();
  v6 = type metadata accessor for AlbumTrackLockupCollection(v5);
  sub_216683A80(v0 + *(v6 + 24), v1, &qword_27CACE120);
  v7 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_31_2(v1, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_92_0();
  sub_216697664(v10, v11);
  return v9;
}

uint64_t sub_216F639D0()
{
  v1 = type metadata accessor for AlbumTrackLockupCollection(0);
  sub_216697664(v0 + *(v1 + 24), &qword_27CACE120);
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216F63A34()
{
  OUTLINED_FUNCTION_78_18();
  if (!OUTLINED_FUNCTION_35_0(v0))
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F63A74()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_78_18();
  v4 = (v1 + v3);

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t sub_216F63AB0()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 16) = v0;
  OUTLINED_FUNCTION_78_18();
  *(v1 + 32) = v3;
  v4 = OUTLINED_FUNCTION_35_0(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  *(v1 + 24) = v4;
  *v1 = v6;
  *(v1 + 8) = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F63B58()
{
  OUTLINED_FUNCTION_78_18();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_216F63B88()
{
  OUTLINED_FUNCTION_77_12();
  if (!OUTLINED_FUNCTION_35_0(v0))
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F63BC8()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_77_12();
  v4 = (v1 + v3);

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t sub_216F63C04()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 16) = v0;
  OUTLINED_FUNCTION_77_12();
  *(v1 + 32) = v3;
  v4 = OUTLINED_FUNCTION_35_0(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  *(v1 + 24) = v4;
  *v1 = v6;
  *(v1 + 8) = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F63CAC()
{
  OUTLINED_FUNCTION_77_12();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_216F63CDC()
{
  OUTLINED_FUNCTION_67_16();
  if (v0[4])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_216F63D04(int a1)
{
  result = OUTLINED_FUNCTION_67_16();
  *v3 = a1;
  *(v3 + 4) = 0;
  return result;
}

uint64_t (*sub_216F63D30(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for AlbumTrackLockupCollection(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_216F63D98;
}

uint64_t sub_216F63D98(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

uint64_t sub_216F63DD8()
{
  result = OUTLINED_FUNCTION_67_16();
  *v1 = 0;
  *(v1 + 4) = 1;
  return result;
}

uint64_t sub_216F63DFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlbumTrackLockupCollection(0) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_216F63E70()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for AlbumTrackLockupCollection(v2) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t (*sub_216F63EE0())(void, void, void)
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for AlbumTrackLockupCollection(v0);
  return nullsub_1;
}

void sub_216F63F24(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for AlbumTrackLockupCollection(0);
  sub_217007874();
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_30_3(v2[7]);
  OUTLINED_FUNCTION_30_3(v2[8]);
  v7 = a1 + v2[9];
  *v7 = 0;
  v7[4] = 1;
}

uint64_t sub_216F63FD8()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22DD8);
  __swift_project_value_buffer(v0, qword_27CB22DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_217075490;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_217007B14();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "segue";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "play_action";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "artwork";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "title";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "content_descriptor";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "show_explicit_badge";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "subtitle_links";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "track_number";
  *(v23 + 1) = 12;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "duration";
  *(v25 + 1) = 8;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "show_popularity_indicator";
  *(v27 + 1) = 25;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "is_prominent";
  *(v29 + 1) = 12;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "is_disabled";
  *(v31 + 1) = 11;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "is_music_video";
  *(v33 + 1) = 14;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "is_preview_mode";
  *(v35 + 1) = 15;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "social_profile_content_descriptor";
  *(v37 + 1) = 33;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "artwork_button_action_when_playing";
  *(v39 + 1) = 34;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "artwork_button_action_when_paused";
  *(v41 + 1) = 33;
  v41[16] = 2;
  v8();
  return sub_217007B24();
}

uint64_t sub_216F645C8()
{
  OUTLINED_FUNCTION_11_97();
  result = sub_216F645F8();
  qword_27CACEA08 = result;
  return result;
}

uint64_t sub_216F645F8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__segue;
  v2 = type metadata accessor for AnyAction(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__playAction, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artwork;
  v4 = type metadata accessor for Artwork(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__title);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__contentDescriptor;
  v7 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__showExplicitBadge) = 2;
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__subtitleLinks) = MEMORY[0x277D84F90];
  v8 = v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__trackNumber;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__duration;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__showPopularityIndicator) = 2;
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isProminent) = 2;
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isDisabled) = 2;
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isMusicVideo) = 2;
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isPreviewMode) = 2;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__socialProfileContentDescriptor, 1, 1, v7);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artworkButtonActionWhenPlaying, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artworkButtonActionWhenPaused, 1, 1, v2);
  return v0;
}

uint64_t sub_216F647AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v64 - v8;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__segue;
  v10 = type metadata accessor for AnyAction(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__playAction;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__playAction, 1, 1, v10);
  v12 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artwork;
  v64 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artwork;
  v13 = type metadata accessor for Artwork(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__title);
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__contentDescriptor;
  v66 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__contentDescriptor;
  v16 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v68 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__showExplicitBadge;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__showExplicitBadge) = 2;
  v69 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__subtitleLinks;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__subtitleLinks) = MEMORY[0x277D84F90];
  v17 = v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__trackNumber;
  v65 = v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__trackNumber;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__duration;
  v70 = v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__duration;
  *v18 = 0;
  *(v18 + 8) = 1;
  v72 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__showPopularityIndicator;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__showPopularityIndicator) = 2;
  v73 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isProminent;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isProminent) = 2;
  v74 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isDisabled;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isDisabled) = 2;
  v75 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isMusicVideo;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isMusicVideo) = 2;
  v19 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isPreviewMode;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isPreviewMode) = 2;
  v76 = v19;
  v77 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__socialProfileContentDescriptor;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__socialProfileContentDescriptor, 1, 1, v16);
  v78 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artworkButtonActionWhenPlaying;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artworkButtonActionWhenPlaying, 1, 1, v10);
  v79 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artworkButtonActionWhenPaused;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artworkButtonActionWhenPaused, 1, 1, v10);
  swift_beginAccess();
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v21;
  *(v1 + 24) = v20;
  v22 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__segue;
  swift_beginAccess();
  v23 = a1 + v22;
  v24 = v80;
  sub_216683A80(v23, v80, &qword_27CABFF98);
  swift_beginAccess();
  sub_21700DF14();
  v25 = v24;
  sub_2166861C8(v24, v1 + v9, &qword_27CABFF98);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__playAction;
  swift_beginAccess();
  sub_216683A80(a1 + v26, v25, &qword_27CABFF98);
  swift_beginAccess();
  sub_2166861C8(v25, v1 + v11, &qword_27CABFF98);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artwork;
  swift_beginAccess();
  v28 = v67;
  sub_216683A80(a1 + v27, v67, &qword_27CACE100);
  v29 = v64;
  swift_beginAccess();
  sub_2166861C8(v28, v1 + v29, &qword_27CACE100);
  swift_endAccess();
  v30 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__title);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];
  swift_beginAccess();
  *v14 = v32;
  v14[1] = v31;
  sub_21700DF14();

  v33 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__contentDescriptor;
  swift_beginAccess();
  v34 = v71;
  sub_216683A80(a1 + v33, v71, &qword_27CACE120);
  v35 = v66;
  swift_beginAccess();
  sub_2166861C8(v34, v1 + v35, &qword_27CACE120);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__showExplicitBadge;
  swift_beginAccess();
  LOBYTE(v36) = *(a1 + v36);
  v37 = v68;
  swift_beginAccess();
  *(v1 + v37) = v36;
  v38 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__subtitleLinks;
  swift_beginAccess();
  v39 = *(a1 + v38);
  v40 = v69;
  swift_beginAccess();
  *(v1 + v40) = v39;
  sub_21700DF14();

  v41 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__trackNumber;
  swift_beginAccess();
  LODWORD(v37) = *v41;
  LOBYTE(v41) = *(v41 + 4);
  v42 = v65;
  swift_beginAccess();
  *v42 = v37;
  *(v42 + 4) = v41;
  v43 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__duration);
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  v45 = v70;
  swift_beginAccess();
  *v45 = v44;
  *(v45 + 8) = v43;
  v46 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__showPopularityIndicator;
  swift_beginAccess();
  LOBYTE(v46) = *(a1 + v46);
  v47 = v72;
  swift_beginAccess();
  *(v1 + v47) = v46;
  v48 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isProminent;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + v48);
  v49 = v73;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isDisabled;
  swift_beginAccess();
  LOBYTE(v50) = *(a1 + v50);
  v51 = v74;
  swift_beginAccess();
  *(v1 + v51) = v50;
  v52 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isMusicVideo;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + v52);
  v53 = v75;
  swift_beginAccess();
  *(v1 + v53) = v52;
  v54 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isPreviewMode;
  swift_beginAccess();
  LOBYTE(v54) = *(a1 + v54);
  v55 = v76;
  swift_beginAccess();
  *(v1 + v55) = v54;
  v56 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__socialProfileContentDescriptor;
  swift_beginAccess();
  sub_216683A80(a1 + v56, v34, &qword_27CACE120);
  v57 = v77;
  swift_beginAccess();
  sub_2166861C8(v34, v1 + v57, &qword_27CACE120);
  swift_endAccess();
  v58 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artworkButtonActionWhenPlaying;
  swift_beginAccess();
  v59 = v80;
  sub_216683A80(a1 + v58, v80, &qword_27CABFF98);
  v60 = v78;
  swift_beginAccess();
  sub_2166861C8(v59, v1 + v60, &qword_27CABFF98);
  swift_endAccess();
  v61 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artworkButtonActionWhenPaused;
  swift_beginAccess();
  sub_216683A80(a1 + v61, v59, &qword_27CABFF98);

  v62 = v79;
  swift_beginAccess();
  sub_2166861C8(v59, v1 + v62, &qword_27CABFF98);
  swift_endAccess();
  return v1;
}

uint64_t sub_216F650B8()
{

  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__segue, &qword_27CABFF98);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__playAction, &qword_27CABFF98);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artwork, &qword_27CACE100);

  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__contentDescriptor, &qword_27CACE120);

  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__socialProfileContentDescriptor, &qword_27CACE120);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artworkButtonActionWhenPlaying, &qword_27CABFF98);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artworkButtonActionWhenPaused, &qword_27CABFF98);
  return v0;
}

uint64_t sub_216F651E4()
{
  v0 = sub_216F650B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216F65238()
{
  v1 = *(type metadata accessor for AlbumTrackLockup(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for AlbumTrackLockup._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_18();
    *(v0 + v1) = sub_216F647AC(v2);
  }

  return sub_216F652D8();
}

uint64_t sub_216F652D8()
{
  while (1)
  {
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_216F2EFD8();
        break;
      case 2:
      case 3:
      case 17:
      case 18:
        sub_216F65B04();
        break;
      case 4:
        sub_216F6557C();
        break;
      case 5:
        sub_216F65658();
        break;
      case 6:
        sub_216F656E4();
        break;
      case 7:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
        sub_216F659B4();
        break;
      case 8:
        sub_216F657C0();
        break;
      case 9:
        sub_216F6589C();
        break;
      case 10:
        sub_216F65928();
        break;
      case 16:
        sub_216F65A28();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F6557C()
{
  swift_beginAccess();
  type metadata accessor for Artwork(0);
  sub_216F680DC(qword_27CAC77F0, type metadata accessor for Artwork);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F65658()
{
  swift_beginAccess();
  sub_2170079A4();
  return swift_endAccess();
}

uint64_t sub_216F656E4()
{
  swift_beginAccess();
  type metadata accessor for ContentDescriptor(0);
  sub_216F680DC(&qword_27CACE3E0, type metadata accessor for ContentDescriptor);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F657C0()
{
  swift_beginAccess();
  type metadata accessor for Link(0);
  sub_216F680DC(&qword_27CABE100, type metadata accessor for Link);
  sub_2170079C4();
  return swift_endAccess();
}

uint64_t sub_216F6589C()
{
  swift_beginAccess();
  sub_217007964();
  return swift_endAccess();
}

uint64_t sub_216F65928()
{
  swift_beginAccess();
  sub_217007994();
  return swift_endAccess();
}

uint64_t sub_216F659B4()
{
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_45_36();
  OUTLINED_FUNCTION_47_2();
  sub_217007944();
  return swift_endAccess();
}

uint64_t sub_216F65A28()
{
  swift_beginAccess();
  type metadata accessor for ContentDescriptor(0);
  sub_216F680DC(&qword_27CACE3E0, type metadata accessor for ContentDescriptor);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F65B04()
{
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_39_35();
  sub_216F680DC(v0, v1);
  OUTLINED_FUNCTION_45_36();
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F65BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AlbumTrackLockup(0);
  OUTLINED_FUNCTION_47_2();
  result = sub_216F65C20(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_109();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F65C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_216F2F980(a1);
  if (!v4)
  {
    sub_216F66794(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__segue, 2);
    sub_216F66794(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__playAction, 3);
    sub_216F65F94(a1, a2, a3, a4);
    sub_216F6617C(a1);
    sub_216F66220(a1, a2, a3, a4);
    sub_216F66520();
    v10 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__subtitleLinks;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for Link(0);
      sub_216F680DC(&qword_27CABE100, type metadata accessor for Link);
      sub_21700DF14();
      sub_217007AF4();
    }

    sub_216F66408(a1);
    sub_216F66494(a1);
    sub_216F66520();
    sub_216F66520();
    sub_216F66520();
    sub_216F66520();
    sub_216F66520();
    sub_216F665AC(a1, a2, a3, a4);
    sub_216F66794(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artworkButtonActionWhenPlaying, 17);
    return sub_216F66794(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artworkButtonActionWhenPaused, 18);
  }

  return result;
}

uint64_t sub_216F65F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artwork;
  swift_beginAccess();
  sub_216683A80(a1 + v9, v7, &qword_27CACE100);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE100);
  }

  sub_216F535D8();
  sub_216F680DC(qword_27CAC77F0, type metadata accessor for Artwork);
  sub_217007B04();
  return sub_216F53680();
}

uint64_t sub_216F6617C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__title;
  result = swift_beginAccess();
  if (*(v1 + 8))
  {
    sub_21700DF14();
    sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F66220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__contentDescriptor;
  swift_beginAccess();
  sub_216683A80(a1 + v9, v7, &qword_27CACE120);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE120);
  }

  sub_216F535D8();
  sub_216F680DC(&qword_27CACE3E0, type metadata accessor for ContentDescriptor);
  sub_217007B04();
  return sub_216F53680();
}

uint64_t sub_216F66408(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__trackNumber;
  result = swift_beginAccess();
  if ((*(v1 + 4) & 1) == 0)
  {
    return sub_217007A94();
  }

  return result;
}

uint64_t sub_216F66494(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__duration;
  result = swift_beginAccess();
  if ((*(v1 + 8) & 1) == 0)
  {
    return sub_217007AC4();
  }

  return result;
}

uint64_t sub_216F66520()
{
  OUTLINED_FUNCTION_71_3();
  v1 = v0;
  v3 = *v2;
  OUTLINED_FUNCTION_37();
  result = swift_beginAccess();
  if (*(v1 + v3) != 2)
  {
    OUTLINED_FUNCTION_45_36();
    return sub_217007A74();
  }

  return result;
}

uint64_t sub_216F665AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__socialProfileContentDescriptor;
  swift_beginAccess();
  sub_216683A80(a1 + v9, v7, &qword_27CACE120);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE120);
  }

  sub_216F535D8();
  sub_216F680DC(&qword_27CACE3E0, type metadata accessor for ContentDescriptor);
  sub_217007B04();
  return sub_216F53680();
}

uint64_t sub_216F66794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v18[1] = a6;
  v18[2] = a3;
  v18[7] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  v12 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v14 = *a5;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(a1 + v14, v11, &qword_27CABFF98);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_216697664(v11, &qword_27CABFF98);
  }

  sub_216F535D8();
  OUTLINED_FUNCTION_39_35();
  sub_216F680DC(v16, v17);
  OUTLINED_FUNCTION_45_36();
  sub_217007B04();
  return sub_216F53680();
}

uint64_t sub_216F6694C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_124();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_216F66A1C(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_217007884();
  OUTLINED_FUNCTION_35_43();
  sub_216F680DC(v8, v9);
  return sub_21700E494() & 1;
}

BOOL sub_216F66A1C(uint64_t a1, uint64_t a2)
{
  v201 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v197 = v6 - v5;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3C0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v196 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  v199 = &v186[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v193 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_4();
  v195 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  v198 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v207 = &v186[-v19];
  v205 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v202 = v22 - v21;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3D0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v206 = &v186[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100);
  v26 = OUTLINED_FUNCTION_36(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  v203 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  v211 = &v186[-v29];
  v213 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  v209 = v32 - v31;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE090);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v33);
  v35 = &v186[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  v194 = v37;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  v210 = v39;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v40);
  v42 = &v186[-v41];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  v44 = OUTLINED_FUNCTION_36(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_0();
  v189 = v45;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_4();
  v190 = v47;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_4();
  v191 = v49;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_4();
  v192 = v51;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_4();
  v208 = v53;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v54);
  v56 = &v186[-v55];
  MEMORY[0x28223BE20](v57);
  MEMORY[0x28223BE20](v58);
  v60 = &v186[-v59];
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v62 = *(a1 + 16);
  v61 = *(a1 + 24);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v63 = *(a2 + 24);
  if (v61)
  {
    if (!v63)
    {
      return 0;
    }

    v64 = v62 == *(a2 + 16) && v61 == v63;
    if (!v64 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v63)
  {
    return 0;
  }

  v188 = v35;
  v214 = a2;
  v65 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__segue;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(a1 + v65, v60, &qword_27CABFF98);
  OUTLINED_FUNCTION_81_12();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v66 = *(v212 + 48);
  OUTLINED_FUNCTION_47_2();
  sub_216683A80(v67, v68, v69);
  v70 = OUTLINED_FUNCTION_81_12();
  sub_216683A80(v70, &v42[v66], &qword_27CABFF98);
  OUTLINED_FUNCTION_31_2(v42, 1, v213);
  if (v64)
  {

    sub_216697664(v60, &qword_27CABFF98);
    OUTLINED_FUNCTION_24_3(&v42[v66]);
    if (v64)
    {
      sub_216697664(v42, &qword_27CABFF98);
      goto LABEL_20;
    }

LABEL_18:
    v75 = v42;
LABEL_29:
    sub_216697664(v75, &qword_27CACE090);
    goto LABEL_30;
  }

  v71 = OUTLINED_FUNCTION_108();
  sub_216683A80(v71, v72, v73);
  OUTLINED_FUNCTION_24_3(&v42[v66]);
  if (v74)
  {

    sub_216697664(v60, &qword_27CABFF98);
    OUTLINED_FUNCTION_31_6();
    sub_216F53680();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38_46();
  sub_216F535D8();

  v76 = sub_216F82038();
  sub_216F53680();
  sub_216697664(v60, &qword_27CABFF98);
  sub_216F53680();
  sub_216697664(v42, &qword_27CABFF98);
  if ((v76 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  v77 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__playAction;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(a1 + v77, v56, &qword_27CABFF98);
  OUTLINED_FUNCTION_81_12();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v78 = *(v212 + 48);
  v79 = v210;
  sub_216683A80(v56, v210, &qword_27CABFF98);
  v80 = OUTLINED_FUNCTION_81_12();
  v81 = v214;
  sub_216683A80(v80, v79 + v78, &qword_27CABFF98);
  OUTLINED_FUNCTION_31_2(v79, 1, v213);
  if (v64)
  {
    sub_216697664(v56, &qword_27CABFF98);
    OUTLINED_FUNCTION_24_3(v79 + v78);
    v82 = v211;
    if (v64)
    {
      sub_216697664(v79, &qword_27CABFF98);
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  sub_216683A80(v79, v208, &qword_27CABFF98);
  OUTLINED_FUNCTION_24_3(v79 + v78);
  v82 = v211;
  if (v83)
  {
    sub_216697664(v56, &qword_27CABFF98);
    OUTLINED_FUNCTION_31_6();
    sub_216F53680();
LABEL_28:
    v75 = v79;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_38_46();
  sub_216F535D8();
  OUTLINED_FUNCTION_108();
  v187 = sub_216F82038();
  sub_216F53680();
  sub_216697664(v56, &qword_27CABFF98);
  OUTLINED_FUNCTION_109();
  sub_216F53680();
  sub_216697664(v79, &qword_27CABFF98);
  if ((v187 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_33:
  v85 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artwork;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_64_2(a1 + v85, v82);
  v86 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artwork;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v87 = *(v204 + 48);
  v88 = v206;
  OUTLINED_FUNCTION_64_2(v82, v206);
  v89 = v88;
  OUTLINED_FUNCTION_64_2(v81 + v86, &v88[v87]);
  v90 = v205;
  OUTLINED_FUNCTION_31_2(v88, 1, v205);
  if (v64)
  {
    sub_216697664(v82, &qword_27CACE100);
    OUTLINED_FUNCTION_31_2(&v88[v87], 1, v90);
    v91 = v207;
    if (v64)
    {
      sub_216697664(v89, &qword_27CACE100);
      goto LABEL_45;
    }

LABEL_41:
    v94 = &qword_27CACE3D0;
LABEL_42:
    sub_216697664(v89, v94);
    goto LABEL_30;
  }

  v92 = v203;
  sub_216683A80(v88, v203, &qword_27CACE100);
  OUTLINED_FUNCTION_31_2(&v88[v87], 1, v90);
  v91 = v207;
  if (v93)
  {
    sub_216697664(v82, &qword_27CACE100);
    sub_216F53680();
    goto LABEL_41;
  }

  v95 = v202;
  sub_216F535D8();
  sub_216F848D8(v92, v95);
  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v96, v97);
  sub_216F53680();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v98, v99);
  if ((&unk_21707B640 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_45:
  v100 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__title);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v101 = *v100;
  v102 = v100[1];
  v103 = (v214 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__title);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v104 = v103[1];
  if (v102)
  {
    if (!v104)
    {
      goto LABEL_30;
    }

    if (v101 != *v103 || v102 != v104)
    {
      OUTLINED_FUNCTION_7_4();
      if ((sub_21700F7D4() & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v104)
  {
    goto LABEL_30;
  }

  v106 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__contentDescriptor;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_64_2(a1 + v106, v91);
  v107 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__contentDescriptor;
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v108 = *(v200 + 48);
  v109 = v91;
  v110 = v91;
  v111 = v199;
  OUTLINED_FUNCTION_64_2(v109, v199);
  v112 = v89 + v107;
  v89 = v111;
  OUTLINED_FUNCTION_64_2(v112, &v111[v108]);
  v113 = v201;
  OUTLINED_FUNCTION_31_2(v111, 1, v201);
  if (v64)
  {
    sub_216697664(v110, &qword_27CACE120);
    OUTLINED_FUNCTION_31_2(&v111[v108], 1, v113);
    if (v64)
    {
      sub_216697664(v111, &qword_27CACE120);
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  sub_216683A80(v111, v198, &qword_27CACE120);
  OUTLINED_FUNCTION_31_2(&v111[v108], 1, v113);
  if (v114)
  {
    sub_216697664(v207, &qword_27CACE120);
    OUTLINED_FUNCTION_8_122();
    sub_216F53680();
LABEL_62:
    v94 = &qword_27CACE3C0;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_33_3();
  sub_216F535D8();
  sub_216FE1ABC();
  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v115, v116);
  sub_216F53680();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v117, v118);
  if ((&unk_217074850 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_64:
  v119 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__showExplicitBadge;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v120 = *(a1 + v119);
  OUTLINED_FUNCTION_70_13();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_71_4();
  if (v64)
  {
    if (v121 != 2)
    {
      goto LABEL_30;
    }
  }

  else if (v121 == 2 || ((v120 ^ v121) & 1) != 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v122 = v214;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  sub_21700DF14();
  OUTLINED_FUNCTION_7_4();
  sub_216F26500();
  v124 = v123;

  if ((v124 & 1) == 0)
  {
    goto LABEL_30;
  }

  v125 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__trackNumber);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v126 = *v125;
  v127 = *(v125 + 4);
  v128 = v122 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__trackNumber;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v127)
  {
    if ((*(v128 + 4) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if ((*(v128 + 4) & 1) != 0 || v126 != *v128)
  {
    goto LABEL_30;
  }

  v129 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__duration;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v130 = *v129;
  v131 = *(v129 + 8);
  v132 = v214 + OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__duration;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v131)
  {
    if ((*(v132 + 8) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if ((*(v132 + 8) & 1) != 0 || v130 != *v132)
  {
    goto LABEL_30;
  }

  v133 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__showPopularityIndicator;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v134 = a1;
  v135 = *(a1 + v133);
  OUTLINED_FUNCTION_70_13();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_71_4();
  if (v64)
  {
    if (v136 != 2)
    {
      goto LABEL_30;
    }
  }

  else if (v136 == 2 || ((v135 ^ v136) & 1) != 0)
  {
    goto LABEL_30;
  }

  v137 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isProminent;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v138 = *(a1 + v137);
  OUTLINED_FUNCTION_70_13();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_71_4();
  if (v64)
  {
    if (v139 != 2)
    {
      goto LABEL_30;
    }
  }

  else if (v139 == 2 || ((v138 ^ v139) & 1) != 0)
  {
    goto LABEL_30;
  }

  v140 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isDisabled;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v141 = *(a1 + v140);
  OUTLINED_FUNCTION_70_13();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_71_4();
  if (v64)
  {
    if (v142 != 2)
    {
      goto LABEL_30;
    }
  }

  else if (v142 == 2 || ((v141 ^ v142) & 1) != 0)
  {
    goto LABEL_30;
  }

  v143 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isMusicVideo;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v144 = *(a1 + v143);
  OUTLINED_FUNCTION_70_13();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_71_4();
  if (v64)
  {
    if (v145 != 2)
    {
      goto LABEL_30;
    }
  }

  else if (v145 == 2 || ((v144 ^ v145) & 1) != 0)
  {
    goto LABEL_30;
  }

  v146 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__isPreviewMode;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v147 = *(a1 + v146);
  OUTLINED_FUNCTION_70_13();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_71_4();
  if (v64)
  {
    if (v148 == 2)
    {
      goto LABEL_112;
    }

LABEL_30:

    return 0;
  }

  if (v148 == 2 || ((v147 ^ v148) & 1) != 0)
  {
    goto LABEL_30;
  }

LABEL_112:
  v149 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__socialProfileContentDescriptor;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v150 = a1 + v149;
  v151 = v195;
  OUTLINED_FUNCTION_47_38(v150);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v152 = *(v200 + 48);
  v153 = v151;
  v154 = v196;
  OUTLINED_FUNCTION_47_38(v153);
  OUTLINED_FUNCTION_56_23();
  OUTLINED_FUNCTION_31_2(v154, 1, v201);
  if (v64)
  {
    sub_216697664(v195, &qword_27CACE120);
    OUTLINED_FUNCTION_31_2(v196 + v152, 1, v201);
    if (v64)
    {
      sub_216697664(v196, &qword_27CACE120);
      goto LABEL_122;
    }

LABEL_120:
    v157 = &qword_27CACE3C0;
    v158 = v196;
LABEL_131:
    sub_216697664(v158, v157);
    goto LABEL_30;
  }

  v155 = v196;
  sub_216683A80(v196, v193, &qword_27CACE120);
  OUTLINED_FUNCTION_31_2(v155 + v152, 1, v201);
  if (v156)
  {
    sub_216697664(v195, &qword_27CACE120);
    OUTLINED_FUNCTION_8_122();
    sub_216F53680();
    goto LABEL_120;
  }

  OUTLINED_FUNCTION_33_3();
  sub_216F535D8();
  OUTLINED_FUNCTION_27_0();
  sub_216FE1ABC();
  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v159, v160);
  sub_216F53680();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v161, v162);
  if ((&unk_217074850 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_122:
  v163 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artworkButtonActionWhenPlaying;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v164 = v192;
  OUTLINED_FUNCTION_47_38(v134 + v163);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v165 = *(v212 + 48);
  v166 = v164;
  v167 = v194;
  OUTLINED_FUNCTION_47_38(v166);
  OUTLINED_FUNCTION_56_23();
  OUTLINED_FUNCTION_31_2(v167, 1, v213);
  if (v64)
  {
    sub_216697664(v192, &qword_27CABFF98);
    OUTLINED_FUNCTION_31_2(v194 + v165, 1, v213);
    if (v64)
    {
      sub_216697664(v194, &qword_27CABFF98);
      goto LABEL_134;
    }

    goto LABEL_130;
  }

  v168 = v194;
  sub_216683A80(v194, v191, &qword_27CABFF98);
  OUTLINED_FUNCTION_31_2(v168 + v165, 1, v213);
  if (v169)
  {
    sub_216697664(v192, &qword_27CABFF98);
    OUTLINED_FUNCTION_31_6();
    sub_216F53680();
LABEL_130:
    v157 = &qword_27CACE090;
    v158 = v194;
    goto LABEL_131;
  }

  OUTLINED_FUNCTION_30_57();
  sub_216F535D8();
  OUTLINED_FUNCTION_27_0();
  sub_216F82038();
  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v170, v171);
  sub_216F53680();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v172, v173);
  if ((&unk_217049930 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_134:
  v174 = OBJC_IVAR____TtCV18SwiftMusicProtocol16AlbumTrackLockupP33_07B27F8E0874ECBF0618E4AB3132016613_StorageClass__artworkButtonActionWhenPaused;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v175 = v190;
  OUTLINED_FUNCTION_47_38(v134 + v174);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v176 = *(v212 + 48);
  v177 = v175;
  v178 = v188;
  OUTLINED_FUNCTION_47_38(v177);
  OUTLINED_FUNCTION_56_23();
  OUTLINED_FUNCTION_31_2(v178, 1, v213);
  if (!v64)
  {
    v179 = v188;
    sub_216683A80(v188, v189, &qword_27CABFF98);
    OUTLINED_FUNCTION_31_2(v179 + v176, 1, v213);
    if (!v180)
    {
      OUTLINED_FUNCTION_30_57();
      sub_216F535D8();
      OUTLINED_FUNCTION_27_0();
      v181 = sub_216F82038();

      sub_216F53680();
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v182, v183);
      sub_216F53680();
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v184, v185);
      return (v181 & 1) != 0;
    }

    sub_216697664(v190, &qword_27CABFF98);
    OUTLINED_FUNCTION_31_6();
    sub_216F53680();
LABEL_142:
    sub_216697664(v188, &qword_27CACE090);
    return 0;
  }

  sub_216697664(v190, &qword_27CABFF98);
  OUTLINED_FUNCTION_31_2(&v188[v176], 1, v213);
  if (!v64)
  {
    goto LABEL_142;
  }

  sub_216697664(v188, &qword_27CABFF98);
  return 1;
}

uint64_t sub_216F67F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F680DC(&qword_27CACEB10, type metadata accessor for AlbumTrackLockup);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F67FF0(uint64_t a1)
{
  v2 = sub_216F680DC(&qword_27CAC28C8, type metadata accessor for AlbumTrackLockup);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F68060()
{
  sub_216F680DC(&qword_27CAC28C8, type metadata accessor for AlbumTrackLockup);

  return sub_217007A34();
}

uint64_t sub_216F680DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216F68150()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22DF0);
  __swift_project_value_buffer(v0, qword_27CB22DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015240;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tracks";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "container_content_descriptor";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "work_name";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "composer";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "disk_number";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F68430()
{
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_7_2();
        sub_216F684EC();
        break;
      case 2:
        OUTLINED_FUNCTION_7_2();
        sub_216F6858C();
        break;
      case 3:
        OUTLINED_FUNCTION_7_2();
        sub_216F68640();
        break;
      case 4:
        OUTLINED_FUNCTION_7_2();
        sub_216F686A4();
        break;
      case 5:
        OUTLINED_FUNCTION_7_2();
        sub_216F68708();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F684EC()
{
  type metadata accessor for AlbumTrackLockup(0);
  sub_216F680DC(&qword_27CAC28C8, type metadata accessor for AlbumTrackLockup);
  return sub_2170079C4();
}

uint64_t sub_216F6858C()
{
  type metadata accessor for AlbumTrackLockupCollection(0);
  type metadata accessor for ContentDescriptor(0);
  sub_216F680DC(&qword_27CACE3E0, type metadata accessor for ContentDescriptor);
  return sub_2170079D4();
}

uint64_t sub_216F6876C()
{
  if (!*(*v0 + 16) || (type metadata accessor for AlbumTrackLockup(0), sub_216F680DC(&qword_27CAC28C8, type metadata accessor for AlbumTrackLockup), result = sub_217007AF4(), !v1))
  {
    v3 = OUTLINED_FUNCTION_4_0();
    result = sub_216F68894(v3, v4, v5, v6);
    if (!v1)
    {
      v7 = OUTLINED_FUNCTION_4_0();
      sub_216F68A68(v7);
      v8 = OUTLINED_FUNCTION_4_0();
      sub_216F68AE0(v8);
      v9 = OUTLINED_FUNCTION_4_0();
      sub_216F68B58(v9);
      type metadata accessor for AlbumTrackLockupCollection(0);
      OUTLINED_FUNCTION_47_2();
      return sub_217007864();
    }
  }

  return result;
}

uint64_t sub_216F68894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for AlbumTrackLockupCollection(0);
  sub_216683A80(a1 + *(v9 + 24), v7, &qword_27CACE120);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE120);
  }

  sub_216F535D8();
  sub_216F680DC(&qword_27CACE3E0, type metadata accessor for ContentDescriptor);
  sub_217007B04();
  return sub_216F53680();
}

uint64_t sub_216F68A68(uint64_t a1)
{
  result = type metadata accessor for AlbumTrackLockupCollection(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F68AE0(uint64_t a1)
{
  result = type metadata accessor for AlbumTrackLockupCollection(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F68B58(uint64_t a1)
{
  result = type metadata accessor for AlbumTrackLockupCollection(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return sub_217007A94();
  }

  return result;
}

void sub_216F68BD0()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_102();
  v3 = type metadata accessor for ContentDescriptor(v2);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3C0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  sub_216F26138();
  if ((v13 & 1) == 0)
  {
    goto LABEL_11;
  }

  v38 = type metadata accessor for AlbumTrackLockupCollection(0);
  v14 = *(v38 + 24);
  v15 = *(v9 + 48);
  sub_216683A80(v1 + v14, v12, &qword_27CACE120);
  sub_216683A80(v0 + v14, &v12[v15], &qword_27CACE120);
  OUTLINED_FUNCTION_31_2(v12, 1, v3);
  if (v16)
  {
    OUTLINED_FUNCTION_31_2(&v12[v15], 1, v3);
    if (v16)
    {
      sub_216697664(v12, &qword_27CACE120);
      goto LABEL_13;
    }

LABEL_10:
    sub_216697664(v12, &qword_27CACE3C0);
    goto LABEL_11;
  }

  sub_216683A80(v12, v8, &qword_27CACE120);
  OUTLINED_FUNCTION_31_2(&v12[v15], 1, v3);
  if (v16)
  {
    OUTLINED_FUNCTION_8_122();
    sub_216F53680();
    goto LABEL_10;
  }

  sub_216F535D8();
  OUTLINED_FUNCTION_27_0();
  sub_216FE1ABC();
  v18 = v17;
  sub_216F53680();
  sub_216F53680();
  sub_216697664(v12, &qword_27CACE120);
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v19 = v38;
  OUTLINED_FUNCTION_24();
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_11;
    }

    v24 = *v22 == *v23 && v20 == v21;
    if (!v24 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v21)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24();
  if (v25)
  {
    if (!v26)
    {
      goto LABEL_11;
    }

    v29 = *v27 == *v28 && v25 == v26;
    if (!v29 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v26)
  {
    goto LABEL_11;
  }

  v30 = *(v19 + 36);
  v31 = (v1 + v30);
  v32 = *(v1 + v30 + 4);
  v33 = (v0 + v30);
  v34 = *(v0 + v30 + 4);
  if (v32)
  {
    if (v34)
    {
LABEL_37:
      sub_217007884();
      OUTLINED_FUNCTION_35_43();
      sub_216F680DC(v35, v36);
      sub_21700E494();
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if ((v34 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F68F68(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21700F8F4();
  a1(0);
  sub_216F680DC(a2, a3);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F69024(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F680DC(&qword_27CACEB08, type metadata accessor for AlbumTrackLockupCollection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F690B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();

  return v4(v3);
}

uint64_t sub_216F69120(uint64_t a1)
{
  v2 = sub_216F680DC(&qword_27CACEAC0, type metadata accessor for AlbumTrackLockupCollection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F69190()
{
  sub_216F680DC(&qword_27CACEAC0, type metadata accessor for AlbumTrackLockupCollection);

  return sub_217007A34();
}

uint64_t sub_216F69478()
{
  result = sub_217007884();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AlbumTrackLockup._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_216F69524()
{
  sub_216F69670(319, &qword_27CACEAF0, type metadata accessor for AlbumTrackLockup, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_217007884();
    if (v1 <= 0x3F)
    {
      sub_216F69670(319, qword_280E49D78, type metadata accessor for ContentDescriptor, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_216688560(319, &qword_280E2A070);
        if (v3 <= 0x3F)
        {
          sub_216688560(319, &qword_280E29AC8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216F69670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216F696DC()
{
  sub_216F69670(319, qword_280E48698, type metadata accessor for AnyAction, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_216F69670(319, &qword_27CACE350, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_216F69670(319, qword_280E49D78, type metadata accessor for ContentDescriptor, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_216F698D4()
{
  OUTLINED_FUNCTION_4_161();
  OUTLINED_FUNCTION_35_0(v0);
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F69938(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_161();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*sub_216F69978(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_4_161();
  *(v3 + 8) = v4;
  v5 = OUTLINED_FUNCTION_35_0(v4);
  if (v5)
  {
    v7 = *v6;
    v8 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v5;
  *v3 = v7;
  v3[1] = v8;
  sub_21700DF14();
  return sub_216F2230C;
}

uint64_t sub_216F69A24()
{
  OUTLINED_FUNCTION_4_161();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_216F69A54()
{
  OUTLINED_FUNCTION_7_128();
  OUTLINED_FUNCTION_35_0(v0);
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F69A98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_128();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*sub_216F69AD8(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_7_128();
  *(v3 + 8) = v4;
  v5 = OUTLINED_FUNCTION_35_0(v4);
  if (v5)
  {
    v7 = *v6;
    v8 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v5;
  *v3 = v7;
  v3[1] = v8;
  sub_21700DF14();
  return sub_216F27AA8;
}

uint64_t sub_216F69B84()
{
  OUTLINED_FUNCTION_7_128();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_216F69BB4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Link(0);
  sub_216A19AB0(v1 + *(v7 + 28), v6);
  v8 = type metadata accessor for AnyAction(0);
  v9 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v9, v10, v8);
  if (!v11)
  {
    return sub_216F69CB4(v6, a1);
  }

  type metadata accessor for AnyAction.OneOf_BaseAction(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  sub_217007874();
  v16 = OUTLINED_FUNCTION_16_1();
  result = OUTLINED_FUNCTION_31_2(v16, v17, v8);
  if (!v11)
  {
    return sub_216697664(v6, &qword_27CABFF98);
  }

  return result;
}

uint64_t sub_216F69CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216F69D18()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for Link(v2) + 28);
  sub_216697664(v1 + v3, &qword_27CABFF98);
  sub_216F69CB4(v0, v1 + v3);
  v4 = type metadata accessor for AnyAction(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*sub_216F69D94(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for AnyAction(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_34();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Link(0) + 28);
  *(v3 + 10) = v11;
  sub_216A19AB0(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v12, v13, v7);
  if (v14)
  {
    type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    sub_217007874();
    v19 = OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_31_2(v19, v20, v7);
    if (!v14)
    {
      sub_216697664(v6, &qword_27CABFF98);
    }
  }

  else
  {
    sub_216F69CB4(v6, v10);
  }

  return sub_216F69EF8;
}

void sub_216F69EF8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_216F69FD8((*a1)[4], v4);
    sub_216697664(v7 + v3, &qword_27CABFF98);
    sub_216F69CB4(v4, v7 + v3);
    OUTLINED_FUNCTION_64();
    sub_216F6A03C(v5);
  }

  else
  {
    sub_216697664(v7 + v3, &qword_27CABFF98);
    sub_216F69CB4(v5, v7 + v3);
    OUTLINED_FUNCTION_64();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_216F69FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216F6A03C(uint64_t a1)
{
  v2 = type metadata accessor for AnyAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216F6A098()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - v3;
  v5 = type metadata accessor for Link(0);
  sub_216A19AB0(v0 + *(v5 + 28), v4);
  type metadata accessor for AnyAction(0);
  v6 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  sub_216697664(v4, &qword_27CABFF98);
  return v10;
}

uint64_t sub_216F6A150()
{
  v1 = type metadata accessor for Link(0);
  sub_216697664(v0 + *(v1 + 28), &qword_27CABFF98);
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216F6A1B4@<X0>(uint64_t a1@<X8>)
{
  sub_217007874();
  v2 = OUTLINED_FUNCTION_4_161();
  v4 = (a1 + v3);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + *(v2 + 24));
  *v5 = 0;
  v5[1] = 0;
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_216F6A218()
{
  OUTLINED_FUNCTION_5_152();
  OUTLINED_FUNCTION_41_14();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216F6A260(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  result = OUTLINED_FUNCTION_5_152();
  *v5 = a1;
  *(v5 + 8) = v3;
  *(v5 + 9) = 0;
  return result;
}

uint64_t (*sub_216F6A29C(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *(a1 + 12) = *(type metadata accessor for AttributedLinkList(0) + 24);
  OUTLINED_FUNCTION_41_14();
  if (!v6)
  {
    v4 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = (v3 | v5) & 1;
  return sub_216F226B0;
}

uint64_t sub_216F6A32C()
{
  result = OUTLINED_FUNCTION_5_152();
  *v1 = 0;
  *(v1 + 8) = 256;
  return result;
}

uint64_t sub_216F6A350@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributedLinkList(0) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_216F6A3C4()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for AttributedLinkList(v2) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t (*sub_216F6A434())(void, void, void)
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for AttributedLinkList(v0);
  return nullsub_1;
}

void sub_216F6A4A4(uint64_t a1@<X8>)
{
  sub_216F6A478();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_216F6A4E8(uint64_t a1@<X8>)
{
  sub_216F6A478();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_216F6A52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_216CC05F0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_216F6A584@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for AttributedLinkList(0);
  result = sub_217007874();
  v4 = a1 + *(v2 + 24);
  *v4 = 0;
  *(v4 + 4) = 256;
  return result;
}

uint64_t sub_216F6A5F8()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22E08);
  __swift_project_value_buffer(v0, qword_27CB22E08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015230;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "primary_action";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F6A854()
{
  OUTLINED_FUNCTION_21_3();
  while (1)
  {
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_7_2();
        sub_216F6A99C();
        break;
      case 2:
        OUTLINED_FUNCTION_7_2();
        sub_216F6A938();
        break;
      case 1:
        OUTLINED_FUNCTION_7_2();
        sub_216F6A8D4();
        break;
    }
  }

  return result;
}

uint64_t sub_216F6A99C()
{
  type metadata accessor for Link(0);
  type metadata accessor for AnyAction(0);
  sub_216F6BDF0(&qword_27CACE3E8, type metadata accessor for AnyAction);
  return sub_2170079D4();
}

uint64_t sub_216F6AA50()
{
  v1 = OUTLINED_FUNCTION_22_2();
  result = sub_216F6AAB4(v1);
  if (!v0)
  {
    v3 = OUTLINED_FUNCTION_22_2();
    sub_216F6AB2C(v3);
    v4 = OUTLINED_FUNCTION_22_2();
    sub_216F6ABA4(v4);
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F6AAB4(uint64_t a1)
{
  result = type metadata accessor for Link(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F6AB2C(uint64_t a1)
{
  result = type metadata accessor for Link(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F6ABA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for AnyAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Link(0);
  sub_216A19AB0(a1 + *(v8 + 28), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_216697664(v4, &qword_27CABFF98);
  }

  sub_216F69CB4(v4, v7);
  sub_216F6BDF0(&qword_27CACE3E8, type metadata accessor for AnyAction);
  sub_217007B04();
  return sub_216F6A03C(v7);
}

uint64_t sub_216F6AD44(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5 = type metadata accessor for AnyAction(v4);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE090);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = type metadata accessor for Link(0);
  OUTLINED_FUNCTION_24();
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_28;
    }

    v22 = *v20 == *v21 && v18 == v19;
    if (!v22 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v19)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_24();
  if (v23)
  {
    if (!v24)
    {
      goto LABEL_28;
    }

    v27 = *v25 == *v26 && v23 == v24;
    if (!v27 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v24)
  {
    goto LABEL_28;
  }

  v28 = *(v17 + 28);
  v29 = *(v13 + 48);
  sub_216A19AB0(v2 + v28, v16);
  sub_216A19AB0(a2 + v28, &v16[v29]);
  OUTLINED_FUNCTION_31_2(v16, 1, v5);
  if (v22)
  {
    OUTLINED_FUNCTION_31_2(&v16[v29], 1, v5);
    if (v22)
    {
      sub_216697664(v16, &qword_27CABFF98);
LABEL_31:
      sub_217007884();
      OUTLINED_FUNCTION_2_194();
      sub_216F6BDF0(v34, v35);
      v31 = sub_21700E494();
      return v31 & 1;
    }

    goto LABEL_27;
  }

  sub_216A19AB0(v16, v12);
  OUTLINED_FUNCTION_31_2(&v16[v29], 1, v5);
  if (v30)
  {
    sub_216F6A03C(v12);
LABEL_27:
    sub_216697664(v16, &qword_27CACE090);
    goto LABEL_28;
  }

  sub_216F69CB4(&v16[v29], v8);
  v33 = sub_216F82038();
  sub_216F6A03C(v8);
  sub_216F6A03C(v12);
  sub_216697664(v16, &qword_27CABFF98);
  if (v33)
  {
    goto LABEL_31;
  }

LABEL_28:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_216F6B088(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F6BDF0(&qword_27CACEB90, type metadata accessor for Link);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F6B11C(uint64_t a1)
{
  v2 = sub_216F6BDF0(&qword_27CABE100, type metadata accessor for Link);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F6B18C()
{
  sub_216F6BDF0(&qword_27CABE100, type metadata accessor for Link);

  return sub_217007A34();
}

uint64_t sub_216F6B234()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22E20);
  __swift_project_value_buffer(v0, qword_27CB22E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217013D90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "links";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "separator";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F6B44C()
{
  OUTLINED_FUNCTION_21_3();
  while (1)
  {
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_7_2();
      sub_216F6B554();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_7_2();
      sub_216F6B4B4();
    }
  }

  return result;
}

uint64_t sub_216F6B4B4()
{
  type metadata accessor for Link(0);
  sub_216F6BDF0(&qword_27CABE100, type metadata accessor for Link);
  return sub_2170079C4();
}

uint64_t sub_216F6B554()
{
  type metadata accessor for AttributedLinkList(0);
  sub_216CC05F0();
  return sub_217007954();
}

uint64_t sub_216F6B5C8()
{
  if (!*(*v0 + 16) || (type metadata accessor for Link(0), sub_216F6BDF0(&qword_27CABE100, type metadata accessor for Link), result = sub_217007AF4(), !v1))
  {
    result = sub_216F6B6D4(v0);
    if (!v1)
    {
      type metadata accessor for AttributedLinkList(0);
      return sub_217007864();
    }
  }

  return result;
}

uint64_t sub_216F6B6D4(uint64_t a1)
{
  result = type metadata accessor for AttributedLinkList(0);
  if ((*(a1 + *(result + 24) + 9) & 1) == 0)
  {
    sub_216CC05F0();
    return sub_217007A84();
  }

  return result;
}

uint64_t sub_216F6B778(uint64_t a1, uint64_t a2)
{
  sub_216F26500();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for AttributedLinkList(0) + 24);
  v6 = a1 + v5;
  v7 = *(a1 + v5 + 9);
  v8 = a2 + v5;
  if ((v7 & 1) == 0)
  {
    if ((*(v8 + 9) & 1) != 0 || !sub_216F27A88(*v6, *(v6 + 8) & 1, *v8))
    {
      return 0;
    }

LABEL_7:
    sub_217007884();
    OUTLINED_FUNCTION_2_194();
    sub_216F6BDF0(v9, v10);
    return sub_21700E494() & 1;
  }

  if (*(v8 + 9))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_216F6B8A4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21700F8F4();
  a1(0);
  sub_216F6BDF0(a2, a3);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F6B960(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F6BDF0(&qword_27CACEB88, type metadata accessor for AttributedLinkList);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F6B9F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_110();
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();

  return v4(v3);
}

uint64_t sub_216F6BA58(uint64_t a1)
{
  v2 = sub_216F6BDF0(&qword_27CAC8938, type metadata accessor for AttributedLinkList);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F6BAC8()
{
  sub_216F6BDF0(&qword_27CAC8938, type metadata accessor for AttributedLinkList);

  return sub_217007A34();
}

uint64_t sub_216F6BB48()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22E38);
  __swift_project_value_buffer(v0, qword_27CB22E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217018C90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SEPARATOR_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SEPARATOR_COMMAS_ONLY";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SEPARATOR_COMMAS_WITH_AND";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SEPARATOR_COMMAS_WITH_AMPERSAND";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F6BDF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216F6BE3C()
{
  result = qword_27CACEB28;
  if (!qword_27CACEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACEB28);
  }

  return result;
}

unint64_t sub_216F6BE94()
{
  result = qword_27CACEB30;
  if (!qword_27CACEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACEB30);
  }

  return result;
}

unint64_t sub_216F6BEEC()
{
  result = qword_27CACEB38;
  if (!qword_27CACEB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACEB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACEB38);
  }

  return result;
}

unint64_t sub_216F6BF54()
{
  result = qword_27CACEB48;
  if (!qword_27CACEB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACEB48);
  }

  return result;
}

void sub_216F6C210()
{
  sub_217007884();
  if (v0 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    if (v1 <= 0x3F)
    {
      sub_216F6C3F0(319, qword_280E48698, type metadata accessor for AnyAction, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216F6C314()
{
  sub_216F6C3F0(319, &qword_280E2A038, type metadata accessor for Link, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_217007884();
    if (v1 <= 0x3F)
    {
      sub_216688560(319, &qword_27CACEB80);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216F6C3F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216F6C464()
{
  sub_217007874();
  v0 = type metadata accessor for VideoArtwork(0);
  type metadata accessor for VideoArtwork.Dictionary(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  OUTLINED_FUNCTION_30_3(*(v0 + 24));
}

uint64_t sub_216F6C500@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C80);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17_0();
  v6 = type metadata accessor for VideoArtwork(v5);
  v7 = OUTLINED_FUNCTION_20_4(*(v6 + 20));
  sub_2168282D4(v7, v8, &qword_27CAC9C80);
  v9 = type metadata accessor for VideoArtwork.Dictionary(0);
  OUTLINED_FUNCTION_7_6();
  if (v10)
  {
    sub_217007874();
    v11 = *(v9 + 20);
    if (qword_27CACDCC8 != -1)
    {
      OUTLINED_FUNCTION_27_59();
    }

    *(a1 + v11) = qword_27CACEB98;
    v12 = OUTLINED_FUNCTION_16_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v9);

    if (EnumTagSinglePayload != 1)
    {
      return sub_216697664(v1, &qword_27CAC9C80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_98();
    OUTLINED_FUNCTION_92_0();
    return sub_216F704F8();
  }

  return result;
}

uint64_t sub_216F6C624@<X0>(uint64_t a1@<X8>)
{
  sub_217007874();
  v2 = *(type metadata accessor for VideoArtwork.Dictionary(0) + 20);
  if (qword_27CACDCC8 != -1)
  {
    OUTLINED_FUNCTION_27_59();
  }

  *(a1 + v2) = qword_27CACEB98;
}

uint64_t sub_216F6C690()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for VideoArtwork(v1);
  sub_216697664(v0 + *(v2 + 20), &qword_27CAC9C80);
  OUTLINED_FUNCTION_11_98();
  sub_216F704F8();
  type metadata accessor for VideoArtwork.Dictionary(0);
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*sub_216F6C70C(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C80);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for VideoArtwork.Dictionary(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_34();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for VideoArtwork(0);
  OUTLINED_FUNCTION_18_1(*(v11 + 20));
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    sub_217007874();
    v13 = *(v7 + 20);
    if (qword_27CACDCC8 != -1)
    {
      OUTLINED_FUNCTION_27_59();
    }

    *&v10[v13] = qword_27CACEB98;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_216697664(v6, &qword_27CAC9C80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_98();
    OUTLINED_FUNCTION_74_18();
  }

  return sub_216F6C890;
}

uint64_t sub_216F6C8B8()
{
  v0 = OUTLINED_FUNCTION_116();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_17_0();
  v4 = type metadata accessor for VideoArtwork(v3);
  v5 = OUTLINED_FUNCTION_20_4(*(v4 + 20));
  sub_2168282D4(v5, v6, &qword_27CAC9C80);
  type metadata accessor for VideoArtwork.Dictionary(0);
  v7 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_92_0();
  sub_216697664(v12, v13);
  return v11;
}

uint64_t sub_216F6C960()
{
  v1 = type metadata accessor for VideoArtwork(0);
  sub_216697664(v0 + *(v1 + 20), &qword_27CAC9C80);
  type metadata accessor for VideoArtwork.Dictionary(0);
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216F6C9C4()
{
  v0 = type metadata accessor for VideoArtwork(0);
  if (OUTLINED_FUNCTION_35_0(*(v0 + 24)))
  {
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F6CA08()
{
  v3 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for VideoArtwork(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F6CA40()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for VideoArtwork(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F6CAD8()
{
  type metadata accessor for VideoArtwork(0);
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

void sub_216F6CB14(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = type metadata accessor for VideoArtwork.Dictionary.Item(0);
  sub_217007874();
  OUTLINED_FUNCTION_23_64();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_30_3(*(v1 + 28));
}

void sub_216F6CB88()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_124();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47_0(v2);
  v3 = OUTLINED_FUNCTION_119();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_1_232(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_120_1(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_6_135(v10);
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_25_61();
  OUTLINED_FUNCTION_6_3();
  if (v11)
  {
    OUTLINED_FUNCTION_43_37(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_0_271();
    if (!v11)
    {
      sub_216697664(v0, &qword_27CACEBA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_74_18();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F6CCE4()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_124();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47_0(v2);
  v3 = OUTLINED_FUNCTION_119();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_1_232(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_120_1(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_6_135(v10);
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_25_61();
  OUTLINED_FUNCTION_6_3();
  if (v11)
  {
    OUTLINED_FUNCTION_43_37(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_0_271();
    if (!v11)
    {
      sub_216697664(v0, &qword_27CACEBA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_74_18();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F6CE10(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 32);
  if (a2)
  {
    sub_216F70D40();
    a3(v5);
    sub_216F70D94();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v7);

  free(v4);
}

uint64_t sub_216F6CEDC(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEBA0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_95_14();
  type metadata accessor for VideoArtwork.Dictionary(v6);
  OUTLINED_FUNCTION_75_15();
  sub_2168282D4(v1 + a1, v2, &qword_27CACEBA0);
  v7 = type metadata accessor for VideoArtwork.Dictionary.Item(0);
  OUTLINED_FUNCTION_31_2(v2, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_216697664(v2, &qword_27CACEBA0);
  return v9;
}

uint64_t sub_216F6CFB0(uint64_t a1)
{
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEBA0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = *(OUTLINED_FUNCTION_98_14() + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_91_13();
    v10 = OUTLINED_FUNCTION_18();
    v9 = sub_216F706D4(v10);
    *(v4 + v7) = v9;
  }

  type metadata accessor for VideoArtwork.Dictionary.Item(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_89_16();
  sub_216F70CD0(v2, v9 + a1);
  return swift_endAccess();
}

void sub_216F6D098()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_124();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47_0(v2);
  v3 = OUTLINED_FUNCTION_119();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_1_232(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_120_1(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_6_135(v10);
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_25_61();
  OUTLINED_FUNCTION_6_3();
  if (v11)
  {
    OUTLINED_FUNCTION_43_37(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_0_271();
    if (!v11)
    {
      sub_216697664(v0, &qword_27CACEBA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_74_18();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F6D1F4()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_124();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47_0(v2);
  v3 = OUTLINED_FUNCTION_119();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_1_232(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_120_1(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_6_135(v10);
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_25_61();
  OUTLINED_FUNCTION_6_3();
  if (v11)
  {
    OUTLINED_FUNCTION_43_37(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_0_271();
    if (!v11)
    {
      sub_216697664(v0, &qword_27CACEBA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_74_18();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F6D350()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_124();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47_0(v2);
  v3 = OUTLINED_FUNCTION_119();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_1_232(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_120_1(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_6_135(v10);
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_25_61();
  OUTLINED_FUNCTION_6_3();
  if (v11)
  {
    OUTLINED_FUNCTION_43_37(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_0_271();
    if (!v11)
    {
      sub_216697664(v0, &qword_27CACEBA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_74_18();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F6D4AC()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_124();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47_0(v2);
  v3 = OUTLINED_FUNCTION_119();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_1_232(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_120_1(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_6_135(v10);
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_25_61();
  OUTLINED_FUNCTION_6_3();
  if (v11)
  {
    OUTLINED_FUNCTION_43_37(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_0_271();
    if (!v11)
    {
      sub_216697664(v0, &qword_27CACEBA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_74_18();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F6D608()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_124();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47_0(v2);
  v3 = OUTLINED_FUNCTION_119();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_1_232(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_120_1(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_6_135(v10);
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_25_61();
  OUTLINED_FUNCTION_6_3();
  if (v11)
  {
    OUTLINED_FUNCTION_43_37(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_0_271();
    if (!v11)
    {
      sub_216697664(v0, &qword_27CACEBA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_74_18();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F6D764()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_124();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47_0(v2);
  v3 = OUTLINED_FUNCTION_119();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_1_232(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_120_1(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_6_135(v10);
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_25_61();
  OUTLINED_FUNCTION_6_3();
  if (v11)
  {
    OUTLINED_FUNCTION_43_37(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_0_271();
    if (!v11)
    {
      sub_216697664(v0, &qword_27CACEBA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_74_18();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F6D8C0()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_124();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47_0(v2);
  v3 = OUTLINED_FUNCTION_119();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_1_232(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_120_1(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_6_135(v10);
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_25_61();
  OUTLINED_FUNCTION_6_3();
  if (v11)
  {
    OUTLINED_FUNCTION_43_37(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_0_271();
    if (!v11)
    {
      sub_216697664(v0, &qword_27CACEBA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_74_18();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F6DA1C()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_124();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47_0(v2);
  v3 = OUTLINED_FUNCTION_119();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_1_232(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_120_1(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_6_135(v10);
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_25_61();
  OUTLINED_FUNCTION_6_3();
  if (v11)
  {
    OUTLINED_FUNCTION_43_37(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_0_271();
    if (!v11)
    {
      sub_216697664(v0, &qword_27CACEBA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_74_18();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F6DB6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEBA0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17_0();
  type metadata accessor for VideoArtwork.Dictionary(v8);
  OUTLINED_FUNCTION_75_15();
  sub_2168282D4(v2 + a1, v3, &qword_27CACEBA0);
  v9 = type metadata accessor for VideoArtwork.Dictionary.Item(0);
  OUTLINED_FUNCTION_7_6();
  if (v10)
  {
    *a2 = MEMORY[0x277D84F90];
    sub_217007874();
    OUTLINED_FUNCTION_23_64();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    OUTLINED_FUNCTION_30_3(*(v9 + 28));
    result = OUTLINED_FUNCTION_7_6();
    if (!v10)
    {
      return sub_216697664(v3, &qword_27CACEBA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    return sub_216F704F8();
  }

  return result;
}

uint64_t sub_216F6DC9C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEBA0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = *(OUTLINED_FUNCTION_98_14() + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_91_13();
    v11 = OUTLINED_FUNCTION_18();
    v10 = sub_216F706D4(v11);
    *(v5 + v8) = v10;
  }

  sub_216F704F8();
  type metadata accessor for VideoArtwork.Dictionary.Item(0);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_89_16();
  sub_216F70CD0(v3, v10 + a2);
  return swift_endAccess();
}

void sub_216F6DD90()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_124();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47_0(v2);
  v3 = OUTLINED_FUNCTION_119();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_1_232(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_120_1(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_6_135(v10);
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_25_61();
  OUTLINED_FUNCTION_6_3();
  if (v11)
  {
    OUTLINED_FUNCTION_43_37(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_0_271();
    if (!v11)
    {
      sub_216697664(v0, &qword_27CACEBA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_74_18();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F6DED4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C90);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_17_0();
  v4 = type metadata accessor for VideoArtwork.Dictionary.Item(v3);
  v5 = OUTLINED_FUNCTION_20_4(*(v4 + 24));
  sub_2168282D4(v5, v6, &qword_27CAC9C90);
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  OUTLINED_FUNCTION_7_6();
  if (v7)
  {
    sub_216F6DFB0();
    result = OUTLINED_FUNCTION_7_6();
    if (!v7)
    {
      return sub_216697664(v0, &qword_27CAC9C90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_26();
    OUTLINED_FUNCTION_92_0();
    return sub_216F704F8();
  }

  return result;
}

void sub_216F6DFB0()
{
  sub_217007874();
  v0 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  v1 = OUTLINED_FUNCTION_48_31(v0);
  *v2 = 0;
  v2[1] = 0;
  OUTLINED_FUNCTION_30_3(v1[9]);
  OUTLINED_FUNCTION_30_3(*(v3 + 40));
  OUTLINED_FUNCTION_30_3(*(v4 + 44));
  OUTLINED_FUNCTION_30_3(*(v5 + 48));
}

uint64_t sub_216F6E004()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for VideoArtwork.Dictionary.Item(v1);
  sub_216697664(v0 + *(v2 + 24), &qword_27CAC9C90);
  OUTLINED_FUNCTION_54_26();
  sub_216F704F8();
  OUTLINED_FUNCTION_23_64();
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*sub_216F6E078(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C90);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_34();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for VideoArtwork.Dictionary.Item(0);
  OUTLINED_FUNCTION_18_1(*(v11 + 24));
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    sub_217007874();
    OUTLINED_FUNCTION_94_1(v7[5]);
    v13 = &v10[v7[6]];
    *v13 = 0;
    v13[4] = 1;
    v14 = &v10[v7[7]];
    *v14 = 0;
    v14[4] = 1;
    OUTLINED_FUNCTION_94_1(v7[8]);
    OUTLINED_FUNCTION_94_1(v7[9]);
    OUTLINED_FUNCTION_94_1(v7[10]);
    OUTLINED_FUNCTION_94_1(v7[11]);
    OUTLINED_FUNCTION_94_1(v7[12]);
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v6, &qword_27CAC9C90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_74_18();
  }

  return sub_216F6E214;
}

void sub_216F6E23C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = *(*v2 + 10);
  v4 = (*v2)[3];
  v5 = (*v2)[4];
  v6 = (*v2)[1];
  v7 = (*v2)[2];
  v8 = **v2;
  if (v9)
  {
    sub_216F70D40();
    sub_216697664(v8 + v3, v1);
    sub_216F704F8();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
    sub_216F70D94();
  }

  else
  {
    sub_216697664(v8 + v3, v0);
    sub_216F704F8();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v7);
  }

  free(v5);
  free(v4);
  free(v6);
  OUTLINED_FUNCTION_26();

  free(v16);
}

uint64_t sub_216F6E338()
{
  v0 = OUTLINED_FUNCTION_116();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_17_0();
  v4 = type metadata accessor for VideoArtwork.Dictionary.Item(v3);
  v5 = OUTLINED_FUNCTION_20_4(*(v4 + 24));
  sub_2168282D4(v5, v6, &qword_27CAC9C90);
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  v7 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_92_0();
  sub_216697664(v12, v13);
  return v11;
}

uint64_t sub_216F6E3E0()
{
  v1 = type metadata accessor for VideoArtwork.Dictionary.Item(0);
  sub_216697664(v0 + *(v1 + 24), &qword_27CAC9C90);
  OUTLINED_FUNCTION_23_64();
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216F6E43C()
{
  v0 = type metadata accessor for VideoArtwork.Dictionary.Item(0);
  if (OUTLINED_FUNCTION_35_0(*(v0 + 28)))
  {
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F6E480()
{
  v3 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for VideoArtwork.Dictionary.Item(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F6E4B8()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for VideoArtwork.Dictionary.Item(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 28)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F6E550()
{
  type metadata accessor for VideoArtwork.Dictionary.Item(0);
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F6E580@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoArtwork.Dictionary.Item(0) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_216F6E5F4()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for VideoArtwork.Dictionary.Item(v2) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t (*sub_216F6E664())(void, void, void)
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for VideoArtwork.Dictionary.Item(v0);
  return nullsub_1;
}

uint64_t sub_216F6E6D8()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

void sub_216F6E7A0()
{
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v0);
  OUTLINED_FUNCTION_46_34(*(v1 + 24));
}

uint64_t (*sub_216F6E7CC(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_102_1(a1);
  v2 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v1);
  OUTLINED_FUNCTION_9_116(*(v2 + 24));
  return sub_216F769C0;
}

void sub_216F6E870()
{
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v0);
  OUTLINED_FUNCTION_46_34(*(v1 + 28));
}

uint64_t (*sub_216F6E89C(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_102_1(a1);
  v2 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v1);
  OUTLINED_FUNCTION_9_116(*(v2 + 28));
  return sub_216F769C0;
}

uint64_t sub_216F6E928()
{
  v0 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  if (OUTLINED_FUNCTION_35_0(*(v0 + 32)))
  {
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F6E96C()
{
  v3 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F6E9A4()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 32)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F6EA3C()
{
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F6EA6C()
{
  v0 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  if (OUTLINED_FUNCTION_35_0(*(v0 + 36)))
  {
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F6EAB0()
{
  v3 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F6EAE8()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 36)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F6EB80()
{
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F6EBB0()
{
  v0 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  if (OUTLINED_FUNCTION_35_0(*(v0 + 40)))
  {
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F6EBF4()
{
  v3 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F6EC2C()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 40)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F6ECC4()
{
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F6ECF4()
{
  v0 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  if (OUTLINED_FUNCTION_35_0(*(v0 + 44)))
  {
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F6ED38()
{
  v3 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F6ED70()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 44)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F6EE08()
{
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F6EE38()
{
  v0 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  if (OUTLINED_FUNCTION_35_0(*(v0 + 48)))
  {
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F6EE7C()
{
  v3 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F6EEB4()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 48)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F6EF4C()
{
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F6EF94()
{
  v0 = OUTLINED_FUNCTION_58_16();
  v2 = v1(v0);
  if (OUTLINED_FUNCTION_35_0(*(v2 + 20)))
  {
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_138_0();
  }

  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F6EFF4()
{
  v3 = OUTLINED_FUNCTION_37_0();
  v4(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F6F030()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v4, v5);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F6F0E0()
{
  v1 = OUTLINED_FUNCTION_58_16();
  v2(v1);
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F6F12C()
{
  v0 = OUTLINED_FUNCTION_58_16();
  v1(v0);
  OUTLINED_FUNCTION_15_81();
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void sub_216F6F158()
{
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(v0);
  OUTLINED_FUNCTION_46_34(*(v1 + 24));
}

uint64_t (*sub_216F6F184(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_102_1(a1);
  v2 = type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(v1);
  OUTLINED_FUNCTION_9_116(*(v2 + 24));
  return sub_216F769C0;
}

uint64_t sub_216F6F228()
{
  v0 = OUTLINED_FUNCTION_58_16();
  v1(v0);
  OUTLINED_FUNCTION_15_81();
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void sub_216F6F254()
{
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(v0);
  OUTLINED_FUNCTION_46_34(*(v1 + 28));
}

uint64_t (*sub_216F6F280(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_102_1(a1);
  v2 = type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(v1);
  OUTLINED_FUNCTION_9_116(*(v2 + 28));
  return sub_216F769C0;
}

uint64_t sub_216F6F30C()
{
  type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(0);
  OUTLINED_FUNCTION_15_81();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void sub_216F6F334()
{
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(v0);
  OUTLINED_FUNCTION_46_34(*(v1 + 32));
}

uint64_t (*sub_216F6F360(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_102_1(a1);
  v2 = type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(v1);
  OUTLINED_FUNCTION_9_116(*(v2 + 32));
  return sub_216F63D98;
}

int *sub_216F6F3EC()
{
  sub_217007874();
  v0 = type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(0);
  result = OUTLINED_FUNCTION_48_31(v0);
  *v2 = 0;
  *(v2 + 4) = v3;
  return result;
}

uint64_t sub_216F6F450()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22E50);
  __swift_project_value_buffer(v0, qword_27CB22E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217013D90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dictionary";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "crop_style";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F6F670()
{
  OUTLINED_FUNCTION_21_3();
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_7_2();
      sub_216F6F788();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_7_2();
      sub_216F6F6D4();
    }
  }

  return result;
}

uint64_t sub_216F6F6D4()
{
  type metadata accessor for VideoArtwork(0);
  type metadata accessor for VideoArtwork.Dictionary(0);
  sub_216F7328C(&qword_27CACEC50, type metadata accessor for VideoArtwork.Dictionary);
  return sub_2170079D4();
}

uint64_t sub_216F6F7EC()
{
  OUTLINED_FUNCTION_107_2();
  v1 = OUTLINED_FUNCTION_22_2();
  result = sub_216F6F838(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_22_2();
    sub_216F6FA0C(v6);
    OUTLINED_FUNCTION_109();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F6F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for VideoArtwork.Dictionary(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for VideoArtwork(0);
  sub_2168282D4(a1 + *(v9 + 20), v7, &qword_27CAC9C80);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CAC9C80);
  }

  sub_216F704F8();
  sub_216F7328C(&qword_27CACEC50, type metadata accessor for VideoArtwork.Dictionary);
  sub_217007B04();
  return sub_216F70D94();
}

uint64_t sub_216F6FA0C(uint64_t a1)
{
  result = type metadata accessor for VideoArtwork(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

void sub_216F6FA84()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for VideoArtwork.Dictionary(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C80);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEC00) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_17_0();
  v37 = type metadata accessor for VideoArtwork(v16);
  v38 = v4;
  v17 = *(v37 + 20);
  v18 = *(v14 + 56);
  OUTLINED_FUNCTION_100_13(v4 + v17, v0);
  OUTLINED_FUNCTION_100_13(v2 + v17, v0 + v18);
  v19 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v19, v20, v5);
  if (!v21)
  {
    sub_2168282D4(v0, v13, &qword_27CAC9C80);
    OUTLINED_FUNCTION_31_2(v0 + v18, 1, v5);
    if (!v21)
    {
      OUTLINED_FUNCTION_11_98();
      sub_216F704F8();
      v23 = *(v5 + 20);
      v24 = *&v13[v23];
      v25 = *(v9 + v23);
      if (v24 == v25 || (, , v26 = sub_216F71758(v24, v25), , , v26))
      {
        sub_217007884();
        OUTLINED_FUNCTION_5_153();
        sub_216F7328C(v27, v28);
        v29 = sub_21700E494();
        sub_216F70D94();
        sub_216F70D94();
        sub_216697664(v0, &qword_27CAC9C80);
        if ((v29 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

      sub_216F70D94();
      sub_216F70D94();
      v22 = &qword_27CAC9C80;
LABEL_10:
      sub_216697664(v0, v22);
      goto LABEL_11;
    }

    sub_216F70D94();
LABEL_9:
    v22 = &qword_27CACEC00;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_2(v0 + v18, 1, v5);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_216697664(v0, &qword_27CAC9C80);
LABEL_15:
  v30 = *(v37 + 24);
  v31 = *(v2 + v30 + 8);
  if (*(v38 + v30 + 8))
  {
    if (v31)
    {
      OUTLINED_FUNCTION_5_78(v38 + v30);
      v34 = v21 && v32 == v33;
      if (v34 || (sub_21700F7D4() & 1) != 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v31)
  {
LABEL_24:
    sub_217007884();
    OUTLINED_FUNCTION_5_153();
    sub_216F7328C(v35, v36);
    sub_21700E494();
  }

LABEL_11:
  OUTLINED_FUNCTION_26();
}