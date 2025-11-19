uint64_t sub_216F6FE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F7328C(&qword_27CACED38, type metadata accessor for VideoArtwork);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F6FF24(uint64_t a1)
{
  v2 = sub_216F7328C(&qword_27CAC9C78, type metadata accessor for VideoArtwork);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F6FF94()
{
  sub_216F7328C(&qword_27CAC9C78, type metadata accessor for VideoArtwork);

  return sub_217007A34();
}

uint64_t sub_216F7003C()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22E68);
  __swift_project_value_buffer(v0, qword_27CB22E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217072BE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "motion_artist_fullscreen16x9";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "motion_artist_singular16x9";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "motion_artist_square1x1";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "motion_artist_wide16x9";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "motion_detail_square";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "motion_detail_tall";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "motion_medium_video16x9";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "motion_square_video1x1";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "motion_tall_video3x4";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "motion_wide_video21x9";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "music_fullscreen_motion16x9";
  *(v28 + 1) = 27;
  v28[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F70488()
{
  OUTLINED_FUNCTION_91_13();
  result = sub_216F7056C();
  qword_27CACEB98 = result;
  return result;
}

uint64_t sub_216F704F8()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216F7056C()
{
  v1 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistFullscreen16X9;
  v2 = type metadata accessor for VideoArtwork.Dictionary.Item(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSingular16X9, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSquare1X1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistWide16X9, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailSquare, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailTall, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionMediumVideo16X9, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionSquareVideo1X1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionTallVideo3X4, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionWideVideo21X9, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__musicFullscreenMotion16X9, 1, 1, v2);
  return v0;
}

uint64_t sub_216F706D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEBA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v6 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistFullscreen16X9;
  v7 = type metadata accessor for VideoArtwork.Dictionary.Item(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSingular16X9;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSingular16X9, 1, 1, v7);
  v9 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSquare1X1;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSquare1X1, 1, 1, v7);
  v31 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistWide16X9;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistWide16X9, 1, 1, v7);
  v32 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailSquare;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailSquare, 1, 1, v7);
  v33 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailTall;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailTall, 1, 1, v7);
  v34 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionMediumVideo16X9;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionMediumVideo16X9, 1, 1, v7);
  v35 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionSquareVideo1X1;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionSquareVideo1X1, 1, 1, v7);
  v36 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionTallVideo3X4;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionTallVideo3X4, 1, 1, v7);
  v37 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionWideVideo21X9;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionWideVideo21X9, 1, 1, v7);
  v38 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__musicFullscreenMotion16X9;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__musicFullscreenMotion16X9, 1, 1, v7);
  v10 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistFullscreen16X9;
  swift_beginAccess();
  sub_2168282D4(a1 + v10, v5, &qword_27CACEBA0);
  swift_beginAccess();
  sub_216F70CD0(v5, v1 + v6);
  swift_endAccess();
  v11 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSingular16X9;
  swift_beginAccess();
  sub_2168282D4(a1 + v11, v5, &qword_27CACEBA0);
  swift_beginAccess();
  sub_216F70CD0(v5, v1 + v8);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSquare1X1;
  swift_beginAccess();
  sub_2168282D4(a1 + v12, v5, &qword_27CACEBA0);
  swift_beginAccess();
  sub_216F70CD0(v5, v1 + v9);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistWide16X9;
  swift_beginAccess();
  sub_2168282D4(a1 + v13, v5, &qword_27CACEBA0);
  v14 = v31;
  swift_beginAccess();
  sub_216F70CD0(v5, v1 + v14);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailSquare;
  swift_beginAccess();
  sub_2168282D4(a1 + v15, v5, &qword_27CACEBA0);
  v16 = v32;
  swift_beginAccess();
  sub_216F70CD0(v5, v1 + v16);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailTall;
  swift_beginAccess();
  sub_2168282D4(a1 + v17, v5, &qword_27CACEBA0);
  v18 = v33;
  swift_beginAccess();
  sub_216F70CD0(v5, v1 + v18);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionMediumVideo16X9;
  swift_beginAccess();
  sub_2168282D4(a1 + v19, v5, &qword_27CACEBA0);
  v20 = v34;
  swift_beginAccess();
  sub_216F70CD0(v5, v1 + v20);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionSquareVideo1X1;
  swift_beginAccess();
  sub_2168282D4(a1 + v21, v5, &qword_27CACEBA0);
  v22 = v35;
  swift_beginAccess();
  sub_216F70CD0(v5, v1 + v22);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionTallVideo3X4;
  swift_beginAccess();
  sub_2168282D4(a1 + v23, v5, &qword_27CACEBA0);
  v24 = v36;
  swift_beginAccess();
  sub_216F70CD0(v5, v1 + v24);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionWideVideo21X9;
  swift_beginAccess();
  sub_2168282D4(a1 + v25, v5, &qword_27CACEBA0);
  v26 = v37;
  swift_beginAccess();
  sub_216F70CD0(v5, v1 + v26);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__musicFullscreenMotion16X9;
  swift_beginAccess();
  sub_2168282D4(a1 + v27, v5, &qword_27CACEBA0);

  v28 = v38;
  swift_beginAccess();
  sub_216F70CD0(v5, v1 + v28);
  swift_endAccess();
  return v1;
}

uint64_t sub_216F70CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEBA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216F70D40()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216F70D94()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216F70E08()
{
  sub_216697664(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistFullscreen16X9, &qword_27CACEBA0);
  sub_216697664(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSingular16X9, &qword_27CACEBA0);
  sub_216697664(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSquare1X1, &qword_27CACEBA0);
  sub_216697664(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistWide16X9, &qword_27CACEBA0);
  sub_216697664(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailSquare, &qword_27CACEBA0);
  sub_216697664(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailTall, &qword_27CACEBA0);
  sub_216697664(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionMediumVideo16X9, &qword_27CACEBA0);
  sub_216697664(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionSquareVideo1X1, &qword_27CACEBA0);
  sub_216697664(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionTallVideo3X4, &qword_27CACEBA0);
  sub_216697664(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionWideVideo21X9, &qword_27CACEBA0);
  sub_216697664(v0 + OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__musicFullscreenMotion16X9, &qword_27CACEBA0);
  return v0;
}

uint64_t sub_216F70F48()
{
  v0 = sub_216F70E08();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216F70F9C()
{
  v1 = *(type metadata accessor for VideoArtwork.Dictionary(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for VideoArtwork.Dictionary._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_18();
    *(v0 + v1) = sub_216F706D4(v2);
  }

  OUTLINED_FUNCTION_615();
  return sub_216F71038();
}

uint64_t sub_216F71038()
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
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        sub_216F71210();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F71210()
{
  swift_beginAccess();
  type metadata accessor for VideoArtwork.Dictionary.Item(0);
  OUTLINED_FUNCTION_55_21();
  sub_216F7328C(v0, v1);
  OUTLINED_FUNCTION_45_36();
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F712D4()
{
  OUTLINED_FUNCTION_107_2();
  type metadata accessor for VideoArtwork.Dictionary(0);
  OUTLINED_FUNCTION_17_77();
  result = sub_216F7132C(v1, v2, v3, v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_109();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F7132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_216F714D8(a1, a2, a3, a4, &OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistFullscreen16X9, 1);
  if (!v4)
  {
    sub_216F714D8(a1, a2, a3, a4, &OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSingular16X9, 2);
    sub_216F714D8(a1, a2, a3, a4, &OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSquare1X1, 3);
    sub_216F714D8(a1, a2, a3, a4, &OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistWide16X9, 4);
    sub_216F714D8(a1, a2, a3, a4, &OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailSquare, 5);
    sub_216F714D8(a1, a2, a3, a4, &OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailTall, 6);
    sub_216F714D8(a1, a2, a3, a4, &OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionMediumVideo16X9, 7);
    sub_216F714D8(a1, a2, a3, a4, &OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionSquareVideo1X1, 8);
    sub_216F714D8(a1, a2, a3, a4, &OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionTallVideo3X4, 9);
    sub_216F714D8(a1, a2, a3, a4, &OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionWideVideo21X9, 10);
    return sub_216F714D8(a1, a2, a3, a4, &OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__musicFullscreenMotion16X9, 11);
  }

  return result;
}

uint64_t sub_216F714D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v18[1] = a6;
  v18[2] = a3;
  v18[7] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEBA0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  v12 = type metadata accessor for VideoArtwork.Dictionary.Item(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v14 = *a5;
  swift_beginAccess();
  sub_2168282D4(a1 + v14, v11, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_216697664(v11, &qword_27CACEBA0);
  }

  sub_216F704F8();
  OUTLINED_FUNCTION_55_21();
  sub_216F7328C(v16, v17);
  OUTLINED_FUNCTION_45_36();
  sub_217007B04();
  return sub_216F70D94();
}

uint64_t sub_216F71694()
{
  v2 = OUTLINED_FUNCTION_102();
  v3 = *(type metadata accessor for VideoArtwork.Dictionary(v2) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
  if (v4 != v5)
  {

    v6 = sub_216F71758(v4, v5);

    if (!v6)
    {
      return 0;
    }
  }

  sub_217007884();
  OUTLINED_FUNCTION_5_153();
  sub_216F7328C(v7, v8);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_99_2() & 1;
}

BOOL sub_216F71758(uint64_t a1, uint64_t a2)
{
  v194 = a2;
  v192 = type metadata accessor for VideoArtwork.Dictionary.Item(0);
  MEMORY[0x28223BE20](v192);
  v191 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACED40);
  MEMORY[0x28223BE20](v193);
  v164 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v166 = &v160 - v7;
  MEMORY[0x28223BE20](v8);
  v168 = &v160 - v9;
  MEMORY[0x28223BE20](v10);
  v171 = &v160 - v11;
  MEMORY[0x28223BE20](v12);
  v174 = &v160 - v13;
  MEMORY[0x28223BE20](v14);
  v177 = &v160 - v15;
  MEMORY[0x28223BE20](v16);
  v180 = &v160 - v17;
  MEMORY[0x28223BE20](v18);
  v183 = &v160 - v19;
  MEMORY[0x28223BE20](v20);
  v186 = &v160 - v21;
  MEMORY[0x28223BE20](v22);
  v190 = &v160 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v160 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEBA0);
  MEMORY[0x28223BE20](v27 - 8);
  v161 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v163 = &v160 - v30;
  MEMORY[0x28223BE20](v31);
  v162 = &v160 - v32;
  MEMORY[0x28223BE20](v33);
  v167 = &v160 - v34;
  MEMORY[0x28223BE20](v35);
  v165 = &v160 - v36;
  MEMORY[0x28223BE20](v37);
  v170 = &v160 - v38;
  MEMORY[0x28223BE20](v39);
  v169 = &v160 - v40;
  MEMORY[0x28223BE20](v41);
  v173 = &v160 - v42;
  MEMORY[0x28223BE20](v43);
  v172 = &v160 - v44;
  MEMORY[0x28223BE20](v45);
  v176 = &v160 - v46;
  MEMORY[0x28223BE20](v47);
  v175 = &v160 - v48;
  MEMORY[0x28223BE20](v49);
  v179 = &v160 - v50;
  MEMORY[0x28223BE20](v51);
  v178 = &v160 - v52;
  MEMORY[0x28223BE20](v53);
  v182 = &v160 - v54;
  MEMORY[0x28223BE20](v55);
  v181 = &v160 - v56;
  MEMORY[0x28223BE20](v57);
  v185 = &v160 - v58;
  MEMORY[0x28223BE20](v59);
  v184 = &v160 - v60;
  MEMORY[0x28223BE20](v61);
  v188 = &v160 - v62;
  MEMORY[0x28223BE20](v63);
  v187 = &v160 - v64;
  MEMORY[0x28223BE20](v65);
  v189 = &v160 - v66;
  MEMORY[0x28223BE20](v67);
  v69 = &v160 - v68;
  MEMORY[0x28223BE20](v70);
  v72 = &v160 - v71;
  v73 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistFullscreen16X9;
  swift_beginAccess();
  v74 = a1;
  sub_2168282D4(a1 + v73, v72, &qword_27CACEBA0);
  v75 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistFullscreen16X9;
  swift_beginAccess();
  v76 = *(v193 + 48);
  sub_2168282D4(v72, v26, &qword_27CACEBA0);
  v77 = v192;
  sub_2168282D4(a2 + v75, &v26[v76], &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v26, 1, v77) == 1)
  {

    sub_216697664(v72, &qword_27CACEBA0);
    v78 = v74;
    if (__swift_getEnumTagSinglePayload(&v26[v76], 1, v77) == 1)
    {
      sub_216697664(v26, &qword_27CACEBA0);
      goto LABEL_8;
    }

LABEL_6:
    v79 = v26;
LABEL_59:
    sub_216697664(v79, &qword_27CACED40);
    goto LABEL_60;
  }

  v78 = v74;
  sub_2168282D4(v26, v69, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(&v26[v76], 1, v77) == 1)
  {

    sub_216697664(v72, &qword_27CACEBA0);
    sub_216F70D94();
    goto LABEL_6;
  }

  sub_216F704F8();

  sub_216F73DF0();
  v81 = v80;
  sub_216F70D94();
  sub_216697664(v72, &qword_27CACEBA0);
  sub_216F70D94();
  sub_216697664(v26, &qword_27CACEBA0);
  if ((v81 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_8:
  v82 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSingular16X9;
  swift_beginAccess();
  v83 = v189;
  sub_2168282D4(v78 + v82, v189, &qword_27CACEBA0);
  v84 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSingular16X9;
  v85 = v194;
  swift_beginAccess();
  v86 = *(v193 + 48);
  v87 = v190;
  sub_2168282D4(v83, v190, &qword_27CACEBA0);
  sub_2168282D4(v85 + v84, v87 + v86, &qword_27CACEBA0);
  v88 = v192;
  if (__swift_getEnumTagSinglePayload(v87, 1, v192) == 1)
  {
    sub_216697664(v83, &qword_27CACEBA0);
    if (__swift_getEnumTagSinglePayload(v87 + v86, 1, v88) == 1)
    {
      sub_216697664(v87, &qword_27CACEBA0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  sub_2168282D4(v87, v187, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v87 + v86, 1, v88) == 1)
  {
    sub_216697664(v83, &qword_27CACEBA0);
    sub_216F70D94();
LABEL_13:
    v79 = v87;
    goto LABEL_59;
  }

  v160 = v78;
  sub_216F704F8();
  sub_216F73DF0();
  v90 = v89;
  sub_216F70D94();
  sub_216697664(v83, &qword_27CACEBA0);
  sub_216F70D94();
  v78 = v160;
  sub_216697664(v87, &qword_27CACEBA0);
  if ((v90 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_15:
  v91 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSquare1X1;
  swift_beginAccess();
  v92 = v188;
  sub_2168282D4(v78 + v91, v188, &qword_27CACEBA0);
  v93 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistSquare1X1;
  v94 = v194;
  swift_beginAccess();
  v95 = *(v193 + 48);
  v96 = v186;
  sub_2168282D4(v92, v186, &qword_27CACEBA0);
  sub_2168282D4(v94 + v93, v96 + v95, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v96, 1, v88) == 1)
  {
    sub_216697664(v92, &qword_27CACEBA0);
    if (__swift_getEnumTagSinglePayload(v96 + v95, 1, v88) != 1)
    {
      goto LABEL_58;
    }

    sub_216697664(v96, &qword_27CACEBA0);
  }

  else
  {
    sub_2168282D4(v96, v184, &qword_27CACEBA0);
    if (__swift_getEnumTagSinglePayload(v96 + v95, 1, v88) == 1)
    {
      sub_216697664(v188, &qword_27CACEBA0);
LABEL_57:
      sub_216F70D94();
      goto LABEL_58;
    }

    sub_216F704F8();
    sub_216F73DF0();
    v98 = v97;
    sub_216F70D94();
    sub_216697664(v188, &qword_27CACEBA0);
    sub_216F70D94();
    sub_216697664(v96, &qword_27CACEBA0);
    if ((v98 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  v99 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistWide16X9;
  swift_beginAccess();
  v100 = v185;
  sub_2168282D4(v78 + v99, v185, &qword_27CACEBA0);
  v101 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionArtistWide16X9;
  v102 = v194;
  swift_beginAccess();
  v103 = *(v193 + 48);
  v96 = v183;
  sub_2168282D4(v100, v183, &qword_27CACEBA0);
  sub_2168282D4(v102 + v101, v96 + v103, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v96, 1, v88) == 1)
  {
    sub_216697664(v100, &qword_27CACEBA0);
    if (__swift_getEnumTagSinglePayload(v96 + v103, 1, v88) != 1)
    {
      goto LABEL_58;
    }

    sub_216697664(v96, &qword_27CACEBA0);
  }

  else
  {
    sub_2168282D4(v96, v181, &qword_27CACEBA0);
    if (__swift_getEnumTagSinglePayload(v96 + v103, 1, v88) == 1)
    {
      v104 = v185;
LABEL_56:
      sub_216697664(v104, &qword_27CACEBA0);
      goto LABEL_57;
    }

    sub_216F704F8();
    sub_216F73DF0();
    v106 = v105;
    sub_216F70D94();
    sub_216697664(v185, &qword_27CACEBA0);
    sub_216F70D94();
    sub_216697664(v96, &qword_27CACEBA0);
    if ((v106 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  v107 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailSquare;
  swift_beginAccess();
  v108 = v182;
  sub_2168282D4(v78 + v107, v182, &qword_27CACEBA0);
  v109 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailSquare;
  v110 = v194;
  swift_beginAccess();
  v111 = *(v193 + 48);
  v96 = v180;
  sub_2168282D4(v108, v180, &qword_27CACEBA0);
  sub_2168282D4(v110 + v109, v96 + v111, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v96, 1, v88) == 1)
  {
    sub_216697664(v108, &qword_27CACEBA0);
    if (__swift_getEnumTagSinglePayload(v96 + v111, 1, v88) != 1)
    {
      goto LABEL_58;
    }

    sub_216697664(v96, &qword_27CACEBA0);
    goto LABEL_33;
  }

  sub_2168282D4(v96, v178, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v96 + v111, 1, v88) == 1)
  {
    v104 = v182;
    goto LABEL_56;
  }

  sub_216F704F8();
  sub_216F73DF0();
  v113 = v112;
  sub_216F70D94();
  sub_216697664(v182, &qword_27CACEBA0);
  sub_216F70D94();
  sub_216697664(v96, &qword_27CACEBA0);
  if ((v113 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_33:
  v114 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailTall;
  swift_beginAccess();
  v115 = v179;
  sub_2168282D4(v78 + v114, v179, &qword_27CACEBA0);
  v116 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionDetailTall;
  v117 = v194;
  swift_beginAccess();
  v118 = *(v193 + 48);
  v96 = v177;
  sub_2168282D4(v115, v177, &qword_27CACEBA0);
  sub_2168282D4(v117 + v116, v96 + v118, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v96, 1, v88) == 1)
  {
    sub_216697664(v115, &qword_27CACEBA0);
    if (__swift_getEnumTagSinglePayload(v96 + v118, 1, v88) != 1)
    {
      goto LABEL_58;
    }

    sub_216697664(v96, &qword_27CACEBA0);
    goto LABEL_39;
  }

  sub_2168282D4(v96, v175, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v96 + v118, 1, v88) == 1)
  {
    v104 = v179;
    goto LABEL_56;
  }

  sub_216F704F8();
  sub_216F73DF0();
  v120 = v119;
  sub_216F70D94();
  sub_216697664(v179, &qword_27CACEBA0);
  sub_216F70D94();
  sub_216697664(v96, &qword_27CACEBA0);
  if ((v120 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_39:
  v121 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionMediumVideo16X9;
  swift_beginAccess();
  v122 = v176;
  sub_2168282D4(v78 + v121, v176, &qword_27CACEBA0);
  v123 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionMediumVideo16X9;
  v124 = v194;
  swift_beginAccess();
  v125 = *(v193 + 48);
  v96 = v174;
  sub_2168282D4(v122, v174, &qword_27CACEBA0);
  sub_2168282D4(v124 + v123, v96 + v125, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v96, 1, v88) == 1)
  {
    sub_216697664(v122, &qword_27CACEBA0);
    if (__swift_getEnumTagSinglePayload(v96 + v125, 1, v88) != 1)
    {
      goto LABEL_58;
    }

    sub_216697664(v96, &qword_27CACEBA0);
    goto LABEL_45;
  }

  sub_2168282D4(v96, v172, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v96 + v125, 1, v88) == 1)
  {
    v104 = v176;
    goto LABEL_56;
  }

  sub_216F704F8();
  sub_216F73DF0();
  v127 = v126;
  sub_216F70D94();
  sub_216697664(v176, &qword_27CACEBA0);
  sub_216F70D94();
  sub_216697664(v96, &qword_27CACEBA0);
  if ((v127 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_45:
  v128 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionSquareVideo1X1;
  swift_beginAccess();
  v129 = v173;
  sub_2168282D4(v78 + v128, v173, &qword_27CACEBA0);
  v130 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionSquareVideo1X1;
  v131 = v194;
  swift_beginAccess();
  v132 = *(v193 + 48);
  v96 = v171;
  sub_2168282D4(v129, v171, &qword_27CACEBA0);
  sub_2168282D4(v131 + v130, v96 + v132, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v96, 1, v88) != 1)
  {
    sub_2168282D4(v96, v169, &qword_27CACEBA0);
    if (__swift_getEnumTagSinglePayload(v96 + v132, 1, v88) == 1)
    {
      v104 = v173;
      goto LABEL_56;
    }

    sub_216F704F8();
    sub_216F73DF0();
    v134 = v133;
    sub_216F70D94();
    sub_216697664(v173, &qword_27CACEBA0);
    sub_216F70D94();
    sub_216697664(v96, &qword_27CACEBA0);
    if (v134)
    {
      goto LABEL_51;
    }

LABEL_60:

    return 0;
  }

  sub_216697664(v129, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v96 + v132, 1, v88) != 1)
  {
    goto LABEL_58;
  }

  sub_216697664(v96, &qword_27CACEBA0);
LABEL_51:
  v135 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionTallVideo3X4;
  swift_beginAccess();
  v136 = v170;
  sub_2168282D4(v78 + v135, v170, &qword_27CACEBA0);
  v137 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionTallVideo3X4;
  v138 = v194;
  swift_beginAccess();
  v139 = *(v193 + 48);
  v96 = v168;
  sub_2168282D4(v136, v168, &qword_27CACEBA0);
  sub_2168282D4(v138 + v137, v96 + v139, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v96, 1, v88) == 1)
  {
    sub_216697664(v136, &qword_27CACEBA0);
    if (__swift_getEnumTagSinglePayload(v96 + v139, 1, v88) == 1)
    {
      sub_216697664(v96, &qword_27CACEBA0);
      v96 = v166;
      goto LABEL_63;
    }

LABEL_58:
    v79 = v96;
    goto LABEL_59;
  }

  sub_2168282D4(v96, v165, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v96 + v139, 1, v88) == 1)
  {
    v104 = v170;
    goto LABEL_56;
  }

  sub_216F704F8();
  sub_216F73DF0();
  v142 = v141;
  sub_216F70D94();
  sub_216697664(v170, &qword_27CACEBA0);
  sub_216F70D94();
  sub_216697664(v96, &qword_27CACEBA0);
  v96 = v166;
  if ((v142 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_63:
  v143 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionWideVideo21X9;
  swift_beginAccess();
  v144 = v167;
  sub_2168282D4(v78 + v143, v167, &qword_27CACEBA0);
  v145 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__motionWideVideo21X9;
  v146 = v194;
  swift_beginAccess();
  v147 = *(v193 + 48);
  sub_2168282D4(v144, v96, &qword_27CACEBA0);
  sub_2168282D4(v146 + v145, v96 + v147, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v96, 1, v88) == 1)
  {
    sub_216697664(v167, &qword_27CACEBA0);
    if (__swift_getEnumTagSinglePayload(v96 + v147, 1, v88) == 1)
    {
      v148 = v194;
      sub_216697664(v96, &qword_27CACEBA0);
      goto LABEL_69;
    }

    goto LABEL_58;
  }

  v148 = v194;
  sub_2168282D4(v96, v162, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v96 + v147, 1, v88) == 1)
  {
    sub_216697664(v167, &qword_27CACEBA0);
    goto LABEL_57;
  }

  sub_216F704F8();
  sub_216F73DF0();
  v150 = v149;
  sub_216F70D94();
  sub_216697664(v167, &qword_27CACEBA0);
  sub_216F70D94();
  sub_216697664(v96, &qword_27CACEBA0);
  if ((v150 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_69:
  v151 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__musicFullscreenMotion16X9;
  swift_beginAccess();
  v152 = v163;
  sub_2168282D4(v78 + v151, v163, &qword_27CACEBA0);
  v153 = OBJC_IVAR____TtCVV18SwiftMusicProtocol12VideoArtwork10DictionaryP33_FC901248819A163465FB6ABCAC5A1BFE13_StorageClass__musicFullscreenMotion16X9;
  swift_beginAccess();
  v154 = *(v193 + 48);
  v155 = v164;
  sub_2168282D4(v152, v164, &qword_27CACEBA0);
  sub_2168282D4(v148 + v153, v155 + v154, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v155, 1, v192) != 1)
  {
    v156 = v164;
    sub_2168282D4(v164, v161, &qword_27CACEBA0);
    if (__swift_getEnumTagSinglePayload(v156 + v154, 1, v192) == 1)
    {

      sub_216697664(v163, &qword_27CACEBA0);
      sub_216F70D94();
      goto LABEL_74;
    }

    v157 = v164;
    sub_216F704F8();
    sub_216F73DF0();
    v159 = v158;

    sub_216F70D94();
    sub_216697664(v163, &qword_27CACEBA0);
    sub_216F70D94();
    sub_216697664(v157, &qword_27CACEBA0);
    return (v159 & 1) != 0;
  }

  sub_216697664(v163, &qword_27CACEBA0);
  if (__swift_getEnumTagSinglePayload(v164 + v154, 1, v192) != 1)
  {
LABEL_74:
    sub_216697664(v164, &qword_27CACED40);
    return 0;
  }

  sub_216697664(v164, &qword_27CACEBA0);
  return 1;
}

uint64_t sub_216F7328C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216F73350(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F7328C(&qword_27CACED30, type metadata accessor for VideoArtwork.Dictionary);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F733E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_110();
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();

  return v4(v3);
}

uint64_t sub_216F73448(uint64_t a1)
{
  v2 = sub_216F7328C(&qword_27CACEC50, type metadata accessor for VideoArtwork.Dictionary);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F734B8()
{
  sub_216F7328C(&qword_27CACEC50, type metadata accessor for VideoArtwork.Dictionary);

  return sub_217007A34();
}

uint64_t sub_216F73538()
{
  result = MEMORY[0x21CE9F490](0x6D6574492ELL, 0xE500000000000000);
  qword_27CB22E80 = 0xD000000000000017;
  *algn_27CB22E88 = 0x8000000217091A40;
  return result;
}

uint64_t *sub_216F735A0()
{
  if (qword_27CACDCD0 != -1)
  {
    OUTLINED_FUNCTION_59_16();
  }

  return &qword_27CB22E80;
}

uint64_t sub_216F73600()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22E90);
  __swift_project_value_buffer(v0, qword_27CB22E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015230;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "preview_frame";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "video";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "video_files";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F73860()
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

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_7_2();
        sub_216F739F4();
        break;
      case 2:
        OUTLINED_FUNCTION_7_2();
        sub_216F73990();
        break;
      case 1:
        OUTLINED_FUNCTION_7_2();
        sub_216F738DC();
        break;
    }
  }

  return result;
}

uint64_t sub_216F738DC()
{
  type metadata accessor for VideoArtwork.Dictionary.Item(0);
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  sub_216F7328C(&qword_27CAC9CA0, type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame);
  return sub_2170079D4();
}

uint64_t sub_216F739F4()
{
  type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(0);
  sub_216F7328C(&qword_27CAC9CA8, type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile);
  return sub_2170079C4();
}

uint64_t sub_216F73A94()
{
  OUTLINED_FUNCTION_615();
  result = sub_216F73BA4(v2, v3, v4, v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_615();
    sub_216F73D78(v7);
    if (*(*v0 + 16))
    {
      type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(0);
      sub_216F7328C(&qword_27CAC9CA8, type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile);
      OUTLINED_FUNCTION_86_1();
      sub_217007AF4();
    }

    type metadata accessor for VideoArtwork.Dictionary.Item(0);
    OUTLINED_FUNCTION_47_2();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F73BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for VideoArtwork.Dictionary.Item(0);
  sub_2168282D4(a1 + *(v9 + 24), v7, &qword_27CAC9C90);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CAC9C90);
  }

  sub_216F704F8();
  sub_216F7328C(&qword_27CAC9CA0, type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame);
  sub_217007B04();
  return sub_216F70D94();
}

uint64_t sub_216F73D78(uint64_t a1)
{
  result = type metadata accessor for VideoArtwork.Dictionary.Item(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

void sub_216F73DF0()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C90);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEC18) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_95_14();
  v26 = type metadata accessor for VideoArtwork.Dictionary.Item(v13);
  v27 = v4;
  v14 = *(v26 + 24);
  v15 = *(v11 + 56);
  OUTLINED_FUNCTION_100_13(v4 + v14, v0);
  OUTLINED_FUNCTION_100_13(v2 + v14, v0 + v15);
  OUTLINED_FUNCTION_31_2(v0, 1, v5);
  if (v16)
  {
    OUTLINED_FUNCTION_31_2(v0 + v15, 1, v5);
    if (v16)
    {
      sub_216697664(v0, &qword_27CAC9C90);
      goto LABEL_12;
    }

LABEL_9:
    sub_216697664(v0, &qword_27CACEC18);
    goto LABEL_10;
  }

  sub_2168282D4(v0, v10, &qword_27CAC9C90);
  OUTLINED_FUNCTION_31_2(v0 + v15, 1, v5);
  if (v16)
  {
    sub_216F70D94();
    goto LABEL_9;
  }

  sub_216F704F8();
  v17 = sub_216F74CF8();
  sub_216F70D94();
  sub_216F70D94();
  sub_216697664(v0, &qword_27CAC9C90);
  if ((v17 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v18 = *(v26 + 28);
  v19 = *(v2 + v18 + 8);
  if (!*(v27 + v18 + 8))
  {
    if (v19)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  if (v19)
  {
    OUTLINED_FUNCTION_5_78(v27 + v18);
    v22 = v16 && v20 == v21;
    if (v22 || (sub_21700F7D4() & 1) != 0)
    {
LABEL_21:
      sub_216F26730();
      if (v23)
      {
        sub_217007884();
        OUTLINED_FUNCTION_5_153();
        sub_216F7328C(v24, v25);
        OUTLINED_FUNCTION_99_2();
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F74170(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F7328C(&qword_27CACED28, type metadata accessor for VideoArtwork.Dictionary.Item);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F74204(uint64_t a1)
{
  v2 = sub_216F7328C(&qword_27CACEC68, type metadata accessor for VideoArtwork.Dictionary.Item);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F74274()
{
  sub_216F7328C(&qword_27CACEC68, type metadata accessor for VideoArtwork.Dictionary.Item);

  return sub_217007A34();
}

uint64_t *sub_216F74324()
{
  if (qword_27CACDCE0 != -1)
  {
    swift_once();
  }

  return &qword_27CB22EA8;
}

uint64_t sub_216F74394()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22EB8);
  __swift_project_value_buffer(v0, qword_27CB22EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21705BDD0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "url";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_217007B14();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "width";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "height";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "bg_color";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "text_color1";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "text_color2";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "text_color3";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "text_color4";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return sub_217007B24();
}

uint64_t sub_216F74720()
{
  OUTLINED_FUNCTION_21_3();
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
        OUTLINED_FUNCTION_3_185();
        OUTLINED_FUNCTION_16_83();
        sub_216F7556C();
        break;
      case 2:
        OUTLINED_FUNCTION_3_185();
        OUTLINED_FUNCTION_16_83();
        sub_216F755B8();
        break;
      case 3:
        OUTLINED_FUNCTION_3_185();
        OUTLINED_FUNCTION_16_83();
        sub_216F75604();
        break;
      case 4:
        OUTLINED_FUNCTION_7_2();
        sub_216F7480C();
        break;
      case 5:
        OUTLINED_FUNCTION_7_2();
        sub_216F74870();
        break;
      case 6:
        OUTLINED_FUNCTION_7_2();
        sub_216F748D4();
        break;
      case 7:
        OUTLINED_FUNCTION_7_2();
        sub_216F74938();
        break;
      case 8:
        OUTLINED_FUNCTION_7_2();
        sub_216F7499C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F74A00()
{
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_3_185();
  OUTLINED_FUNCTION_17_77();
  result = sub_216F75724();
  if (!v0)
  {
    OUTLINED_FUNCTION_3_185();
    OUTLINED_FUNCTION_17_77();
    sub_216F7578C();
    OUTLINED_FUNCTION_3_185();
    OUTLINED_FUNCTION_17_77();
    sub_216F757F0();
    v2 = OUTLINED_FUNCTION_22_2();
    sub_216F74AA0(v2);
    v3 = OUTLINED_FUNCTION_22_2();
    sub_216F74B18(v3);
    v4 = OUTLINED_FUNCTION_22_2();
    sub_216F74B90(v4);
    v5 = OUTLINED_FUNCTION_22_2();
    sub_216F74C08(v5);
    v6 = OUTLINED_FUNCTION_22_2();
    sub_216F74C80(v6);
    OUTLINED_FUNCTION_109();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F74AA0(uint64_t a1)
{
  result = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F74B18(uint64_t a1)
{
  result = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F74B90(uint64_t a1)
{
  result = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F74C08(uint64_t a1)
{
  result = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F74C80(uint64_t a1)
{
  result = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F74CF8()
{
  v0 = OUTLINED_FUNCTION_102();
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v0);
  OUTLINED_FUNCTION_24();
  if (v3)
  {
    if (!v1)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v2);
    v6 = v6 && v4 == v5;
    if (!v6 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_29_1();
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_56();
    if (v9)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_29_1();
  if (v11)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_56();
    if (v12)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_24();
  if (v15)
  {
    if (!v13)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v14);
    v18 = v6 && v16 == v17;
    if (!v18 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v21)
  {
    if (!v19)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v20);
    v24 = v6 && v22 == v23;
    if (!v24 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v27)
  {
    if (!v25)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v26);
    v30 = v6 && v28 == v29;
    if (!v30 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v33)
  {
    if (!v31)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v32);
    v36 = v6 && v34 == v35;
    if (!v36 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v39)
  {
    if (!v37)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v38);
    v42 = v6 && v40 == v41;
    if (!v42 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }

LABEL_61:
    sub_217007884();
    OUTLINED_FUNCTION_5_153();
    sub_216F7328C(v43, v44);
    OUTLINED_FUNCTION_38();
    return OUTLINED_FUNCTION_99_2() & 1;
  }

  if (!v37)
  {
    goto LABEL_61;
  }

  return 0;
}

uint64_t sub_216F74F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F7328C(&qword_27CACED20, type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F74FF8(uint64_t a1)
{
  v2 = sub_216F7328C(&qword_27CAC9CA0, type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F75068()
{
  sub_216F7328C(&qword_27CAC9CA0, type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame);

  return sub_217007A34();
}

uint64_t sub_216F75110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (qword_27CACDCD0 != -1)
  {
    OUTLINED_FUNCTION_59_16();
  }

  v9 = qword_27CB22E80;
  v10 = *algn_27CB22E88;
  swift_bridgeObjectRetain_n();
  v7 = OUTLINED_FUNCTION_109();
  MEMORY[0x21CE9F490](v7);

  *a4 = v9;
  *a5 = v10;
  return result;
}

uint64_t *sub_216F751B0()
{
  if (qword_27CACDCF0 != -1)
  {
    swift_once();
  }

  return &qword_27CB22ED0;
}

uint64_t sub_216F75220()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22EE0);
  __swift_project_value_buffer(v0, qword_27CB22EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217018C90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "asset_url";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "duration_millis";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F754C0()
{
  OUTLINED_FUNCTION_21_3();
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
        OUTLINED_FUNCTION_2_195();
        OUTLINED_FUNCTION_16_83();
        sub_216F7556C();
        break;
      case 2:
        OUTLINED_FUNCTION_2_195();
        OUTLINED_FUNCTION_16_83();
        sub_216F755B8();
        break;
      case 3:
        OUTLINED_FUNCTION_2_195();
        OUTLINED_FUNCTION_16_83();
        sub_216F75604();
        break;
      case 4:
        OUTLINED_FUNCTION_7_2();
        sub_216F75650();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F7556C()
{
  v0 = OUTLINED_FUNCTION_10_0();
  v1(v0);
  OUTLINED_FUNCTION_45_36();
  OUTLINED_FUNCTION_47_2();
  return sub_2170079A4();
}

uint64_t sub_216F755B8()
{
  v0 = OUTLINED_FUNCTION_10_0();
  v1(v0);
  OUTLINED_FUNCTION_45_36();
  OUTLINED_FUNCTION_47_2();
  return sub_217007964();
}

uint64_t sub_216F75604()
{
  v0 = OUTLINED_FUNCTION_10_0();
  v1(v0);
  OUTLINED_FUNCTION_45_36();
  OUTLINED_FUNCTION_47_2();
  return sub_217007964();
}

uint64_t sub_216F756B4()
{
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_2_195();
  OUTLINED_FUNCTION_17_77();
  result = sub_216F75724();
  if (!v0)
  {
    OUTLINED_FUNCTION_2_195();
    OUTLINED_FUNCTION_17_77();
    sub_216F7578C();
    OUTLINED_FUNCTION_2_195();
    OUTLINED_FUNCTION_17_77();
    sub_216F757F0();
    v2 = OUTLINED_FUNCTION_22_2();
    sub_216F75854(v2);
    OUTLINED_FUNCTION_109();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F75724()
{
  v1 = OUTLINED_FUNCTION_10_0();
  result = v2(v1);
  if (*(v0 + *(result + 20) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F7578C()
{
  v1 = OUTLINED_FUNCTION_10_0();
  result = v2(v1);
  if ((*(v0 + *(result + 24) + 4) & 1) == 0)
  {
    OUTLINED_FUNCTION_615();
    return sub_217007A94();
  }

  return result;
}

uint64_t sub_216F757F0()
{
  v1 = OUTLINED_FUNCTION_10_0();
  result = v2(v1);
  if ((*(v0 + *(result + 28) + 4) & 1) == 0)
  {
    OUTLINED_FUNCTION_615();
    return sub_217007A94();
  }

  return result;
}

uint64_t sub_216F75854(uint64_t a1)
{
  result = type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(0);
  if ((*(a1 + *(result + 32) + 4) & 1) == 0)
  {
    return sub_217007A94();
  }

  return result;
}

uint64_t sub_216F758CC()
{
  v0 = OUTLINED_FUNCTION_102();
  type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(v0);
  OUTLINED_FUNCTION_24();
  if (v3)
  {
    if (!v1)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v2);
    v6 = v6 && v4 == v5;
    if (!v6 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_29_1();
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_56();
    if (v9)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_29_1();
  if ((v11 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_56();
    if ((v12 & 1) == 0)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

LABEL_18:
  OUTLINED_FUNCTION_29_1();
  if (v14)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_56();
    if (v16)
    {
      return 0;
    }
  }

  sub_217007884();
  OUTLINED_FUNCTION_5_153();
  sub_216F7328C(v17, v18);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_99_2() & 1;
}

uint64_t sub_216F75A0C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21700F8F4();
  a1(0);
  sub_216F7328C(a2, a3);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F75ABC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_21700DF14();
  return OUTLINED_FUNCTION_38();
}

uint64_t sub_216F75B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F7328C(&qword_27CACED18, type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F75BC0(uint64_t a1)
{
  v2 = sub_216F7328C(&qword_27CAC9CA8, type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F75C30()
{
  sub_216F7328C(&qword_27CAC9CA8, type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile);

  return sub_217007A34();
}

void sub_216F76278()
{
  sub_217007884();
  if (v0 <= 0x3F)
  {
    sub_216F7654C(319, &qword_27CACECA8, type metadata accessor for VideoArtwork.Dictionary, MEMORY[0x277D83D88]);
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

uint64_t sub_216F7637C()
{
  result = sub_217007884();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for VideoArtwork.Dictionary._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_216F76428()
{
  sub_216F7654C(319, &qword_27CACECD0, type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_217007884();
    if (v1 <= 0x3F)
    {
      sub_216F7654C(319, &qword_27CACECD8, type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_216688560(319, &qword_280E2A070);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216F7654C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_216F765D8()
{
  v0 = sub_217007884();
  if (v1 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_216688560(319, &qword_280E29AC8);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t __swift_get_extra_inhabitant_index_44Tm(uint64_t a1, uint64_t a2)
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
    return OUTLINED_FUNCTION_96_9(v7);
  }
}

void __swift_store_extra_inhabitant_index_45Tm()
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
    *(v0 + *(v1 + 20) + 8) = v4;
  }
}

void sub_216F76820()
{
  sub_217007884();
  if (v0 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    if (v1 <= 0x3F)
    {
      sub_216688560(319, &qword_280E29AC8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216F768EC()
{
  sub_216F7654C(319, &qword_27CACED10, type metadata accessor for VideoArtwork.Dictionary.Item, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_89_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_98_14()
{

  return type metadata accessor for VideoArtwork.Dictionary(0);
}

uint64_t OUTLINED_FUNCTION_100_13(uint64_t a1, uint64_t a2)
{

  return sub_2168282D4(a1, a2, v2);
}

uint64_t sub_216F76A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  (*(v7 + 16))(v13 - v10, a1, AssociatedTypeWitness, v9);
  (*(a3 + 32))(v11);
  return (*(v7 + 8))(a1, AssociatedTypeWitness);
}

uint64_t sub_216F76B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a2;
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v20 = *(v16 + 16);
  v33 = a1;
  v20(&v27 - v18, a1, v14);
  v21 = *(v10 + 16);
  v22 = v30;
  v32 = AssociatedTypeWitness;
  v21(v13);
  v23 = *(a4 + 32);
  v28 = a5;
  v24 = v29;
  v25 = v31;
  v23(v19, v13, v29, a4);
  (*(v10 + 8))(v22, v32);
  if (v25)
  {
    return (*(v16 + 8))(v33, v14);
  }

  (*(v16 + 8))(v33, v14);
  return __swift_storeEnumTagSinglePayload(v28, 0, 1, v24);
}

uint64_t *sub_216F76E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v9 = sub_21700E8D4();
  if (v9 < 1)
  {
    OUTLINED_FUNCTION_2_196();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(a2);

    return 0;
  }

  else
  {
    v19[1] = v19;
    v22 = a1;
    MEMORY[0x28223BE20](v9);
    v18[2] = a3;
    v18[3] = a4;
    v20 = a2;
    v18[4] = a2;
    v10 = sub_21700E984();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
    WitnessTable = swift_getWitnessTable();
    v13 = &v22;
    v14 = sub_216F00D7C(sub_216F771F4, v18, v10, a3, v11, WitnessTable, MEMORY[0x277D84950], &v21);
    if (!v4)
    {
      v13 = v14;
    }

    OUTLINED_FUNCTION_2_196();
    OUTLINED_FUNCTION_9_0();
    (*(v15 + 8))(v20);
  }

  return v13;
}

uint64_t sub_216F77010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v19 - v11;
  v13 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  (*(v16 + 16))(&v19 - v14, a1);
  (*(v10 + 16))(v12, a2, AssociatedTypeWitness);
  v17 = v21;
  result = (*(a4 + 32))(v15, v12, a3, a4);
  if (v17)
  {
    *v20 = v17;
  }

  return result;
}

uint64_t sub_216F77218(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!(a3 >> 62))
  {
    OUTLINED_FUNCTION_4_162();
    sub_21700F3B4();

    OUTLINED_FUNCTION_1_233();
    OUTLINED_FUNCTION_5_154();
    v4 = 0x707974206E692027;
    v5 = 0xEB00000000272065;
LABEL_6:
    MEMORY[0x21CE9F490](v4, v5);
    goto LABEL_7;
  }

  if (a3 >> 62 != 1)
  {
    OUTLINED_FUNCTION_4_162();
    sub_21700F3B4();

    OUTLINED_FUNCTION_1_233();
    OUTLINED_FUNCTION_5_154();
    v4 = 0x797420726F662027;
    v5 = 0xEC00000027206570;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_4_162();
  sub_21700F3B4();

  OUTLINED_FUNCTION_1_233();
  v8 = v3 | 8;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACED48);
  v6 = sub_21700E594();
  MEMORY[0x21CE9F490](v6);

  MEMORY[0x21CE9F490](39, 0xE100000000000000);
  return v8;
}

uint64_t sub_216F773B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_216F7740C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_216F77518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_216F77580(uint64_t a1)
{
  result = sub_216F77B10(&qword_27CAC1D28, type metadata accessor for Page);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216F775D8(uint64_t a1)
{
  result = sub_216F77B10(&qword_27CAB6F40, type metadata accessor for Replay);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216F77630(uint64_t a1)
{
  result = sub_216F77B10(&qword_27CABD490, type metadata accessor for ReplayYear);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216F77688(uint64_t a1)
{
  result = sub_216F77B10(&qword_27CAB6C60, type metadata accessor for ReplayPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216F77728(uint64_t a1)
{
  result = sub_216F77B10(&qword_27CAC8E18, type metadata accessor for AnyPageRequestBody);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216F77810(uint64_t a1)
{
  result = sub_216F77B10(&qword_27CAC92C0, type metadata accessor for AnyReplayRequestBody);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216F778F8(uint64_t a1)
{
  result = sub_216F77B10(&qword_27CAC9938, type metadata accessor for AnyReplayYearRequestBody);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216F779E0(uint64_t a1)
{
  result = sub_216F77B10(&qword_27CAC9628, type metadata accessor for AnyReplayPageRequestBody);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216F77B10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216F77BB8()
{
  result = type metadata accessor for Empty();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BaseURLRequest();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216F77C40@<X0>(uint64_t a1@<X8>)
{
  sub_217007874();
  result = OUTLINED_FUNCTION_2_197();
  v4 = a1 + v3;
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t sub_216F77C98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_197();
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  sub_217007884();
  OUTLINED_FUNCTION_1_234();
  sub_216F78160(v10, v11);
  OUTLINED_FUNCTION_38();
  return sub_21700E494() & 1;
}

uint64_t sub_216F77D44()
{
  OUTLINED_FUNCTION_2_197();
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

uint64_t sub_216F77D64(int a1)
{
  result = OUTLINED_FUNCTION_2_197();
  v5 = v1 + v4;
  *v5 = a1;
  *(v5 + 4) = 0;
  return result;
}

uint64_t (*sub_216F77D94(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_2_197();
  *(a1 + 12) = v3;
  OUTLINED_FUNCTION_15_81();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8) = v6;
  return sub_216F63D98;
}

uint64_t sub_216F77E10()
{
  result = OUTLINED_FUNCTION_2_197();
  v3 = v0 + v2;
  *v3 = 0;
  *(v3 + 4) = 1;
  return result;
}

uint64_t sub_216F77E38()
{
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_73();

  return v1(v0);
}

uint64_t sub_216F77E90()
{
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_38();

  return v1(v0);
}

uint64_t sub_216F77FC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F78160(&qword_27CACEEC8, type metadata accessor for Presentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F78054(uint64_t a1)
{
  v2 = sub_216F78160(&qword_27CACEDD8, type metadata accessor for Presentation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F780C4()
{
  sub_216F78160(&qword_27CACEDD8, type metadata accessor for Presentation);

  return sub_217007A34();
}

uint64_t sub_216F78160(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216F782A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F78160(&qword_27CACEEC0, type metadata accessor for Presentation.Grid);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F78338(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_110();
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_73();

  return v4(v3);
}

uint64_t sub_216F78398(uint64_t a1)
{
  v2 = sub_216F78160(&qword_27CACE578, type metadata accessor for Presentation.Grid);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F78408()
{
  sub_216F78160(&qword_27CACE578, type metadata accessor for Presentation.Grid);

  return sub_217007A34();
}

uint64_t sub_216F78588(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F78160(&qword_27CACEEB8, type metadata accessor for Presentation.List);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F7861C(uint64_t a1)
{
  v2 = sub_216F78160(&qword_27CACE9F8, type metadata accessor for Presentation.List);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F7868C()
{
  sub_216F78160(&qword_27CACE9F8, type metadata accessor for Presentation.List);

  return sub_217007A34();
}

uint64_t sub_216F787A8()
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_1_234();
  sub_216F78160(v0, v1);
  OUTLINED_FUNCTION_38();
  return sub_21700E494() & 1;
}

uint64_t sub_216F7887C(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F78160(&qword_27CACEEB0, type metadata accessor for Presentation.Shelf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F78910(uint64_t a1)
{
  v2 = sub_216F78160(&qword_27CACEE10, type metadata accessor for Presentation.Shelf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F78980()
{
  sub_216F78160(&qword_27CACEE10, type metadata accessor for Presentation.Shelf);

  return sub_217007A34();
}

uint64_t sub_216F78A40()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22F58);
  __swift_project_value_buffer(v0, qword_27CB22F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_217013DA0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "number_of_rows";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_217007B14();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_217007B24();
}

uint64_t sub_216F78BFC()
{
  while (1)
  {
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_38();
      sub_216F78C60();
    }
  }

  return result;
}

uint64_t sub_216F78CC4()
{
  result = sub_216F78D1C(v0);
  if (!v1)
  {
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F78D1C(uint64_t a1)
{
  result = type metadata accessor for Presentation.StackedShelf(0);
  if ((*(a1 + *(result + 20) + 4) & 1) == 0)
  {
    return sub_217007A94();
  }

  return result;
}

uint64_t sub_216F78E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F78160(&qword_27CACEEA8, type metadata accessor for Presentation.StackedShelf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F78EC0(uint64_t a1)
{
  v2 = sub_216F78160(&qword_27CACE570, type metadata accessor for Presentation.StackedShelf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F78F30()
{
  sub_216F78160(&qword_27CACE570, type metadata accessor for Presentation.StackedShelf);

  return sub_217007A34();
}

uint64_t sub_216F78FE0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_217007B44();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_38();
  __swift_project_value_buffer(v4, v5);
  return sub_217007B34();
}

uint64_t sub_216F790BC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21700F8F4();
  a1(0);
  sub_216F78160(a2, a3);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F79160(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F78160(&qword_27CACEEA0, type metadata accessor for Presentation.Single);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F791F4(uint64_t a1)
{
  v2 = sub_216F78160(&qword_27CACE580, type metadata accessor for Presentation.Single);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F79264()
{
  sub_216F78160(&qword_27CACE580, type metadata accessor for Presentation.Single);

  return sub_217007A34();
}

void sub_216F79A88()
{
  sub_217007884();
  if (v0 <= 0x3F)
  {
    sub_216F79B0C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216F79B0C()
{
  if (!qword_280E29AC8)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29AC8);
    }
  }
}

uint64_t sub_216F79BC8()
{
  OUTLINED_FUNCTION_25_62();
  OUTLINED_FUNCTION_35_0(v0);
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F79C2C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_25_62();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_216F79C6C()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = *(type metadata accessor for ReplayPeriodItem(v2) + 20);
  *(v0 + 32) = v3;
  v4 = OUTLINED_FUNCTION_35_0(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v0 + 24) = v4;
  *v0 = v6;
  *(v0 + 8) = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F79D10()
{
  OUTLINED_FUNCTION_25_62();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_216F79D40()
{
  OUTLINED_FUNCTION_36_50();
  OUTLINED_FUNCTION_35_0(v0);
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F79D84(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_36_50();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_216F79DC4()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = *(type metadata accessor for ReplayPeriodItem(v2) + 24);
  *(v0 + 32) = v3;
  v4 = OUTLINED_FUNCTION_35_0(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v0 + 24) = v4;
  *v0 = v6;
  *(v0 + 8) = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F79E68()
{
  OUTLINED_FUNCTION_36_50();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_216F79E98@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_115();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17_0();
  v7 = type metadata accessor for ReplayPeriodItem(v6);
  v8 = OUTLINED_FUNCTION_20_4(*(v7 + 28));
  sub_2168282D4(v8, v9, &qword_27CABFF98);
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_7_6();
  if (v10)
  {
    type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    sub_217007874();
    result = OUTLINED_FUNCTION_7_6();
    if (!v10)
    {
      return sub_216697664(v1, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_186();
    return sub_216F7A6D0(v1, a1);
  }

  return result;
}

uint64_t sub_216F79F90()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for ReplayPeriodItem(v2) + 28);
  sub_216697664(v1 + v3, &qword_27CABFF98);
  OUTLINED_FUNCTION_3_186();
  sub_216F7A6D0(v0, v1 + v3);
  type metadata accessor for AnyAction(0);
  v4 = OUTLINED_FUNCTION_16_2();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*sub_216F7A004())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_74(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  *(v0 + 16) = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_149_0(v7);
  v9 = *(type metadata accessor for ReplayPeriodItem(v8) + 28);
  *(v0 + 40) = v9;
  v10 = OUTLINED_FUNCTION_20_4(v9);
  OUTLINED_FUNCTION_42_4(v10, v11);
  OUTLINED_FUNCTION_19_4(v4);
  if (v12)
  {
    type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    sub_217007874();
    OUTLINED_FUNCTION_19_4(v4);
    if (!v12)
    {
      sub_216697664(v4, &qword_27CABFF98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_186();
    sub_216F7A6D0(v4, v6);
  }

  return sub_216F7A160;
}

uint64_t sub_216F7A188()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  v5 = type metadata accessor for ReplayPeriodItem(v4);
  v6 = OUTLINED_FUNCTION_20_4(*(v5 + 28));
  sub_2168282D4(v6, v7, &qword_27CABFF98);
  v8 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_10_114(v8);
  return v0;
}

uint64_t sub_216F7A218()
{
  v1 = type metadata accessor for ReplayPeriodItem(0);
  sub_216697664(v0 + *(v1 + 28), &qword_27CABFF98);
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216F7A27C()
{
  sub_217007874();
  OUTLINED_FUNCTION_25_62();
  OUTLINED_FUNCTION_30_3(v0);
  OUTLINED_FUNCTION_30_3(*(v1 + 24));
  type metadata accessor for AnyAction(0);
  v2 = OUTLINED_FUNCTION_17_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216F7A2D0()
{
  OUTLINED_FUNCTION_37_51();
  OUTLINED_FUNCTION_35_0(v0);
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F7A334(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_37_51();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_216F7A374()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = *(type metadata accessor for ReplayYearPeriodList(v2) + 28);
  *(v0 + 32) = v3;
  v4 = OUTLINED_FUNCTION_35_0(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v0 + 24) = v4;
  *v0 = v6;
  *(v0 + 8) = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F7A418()
{
  OUTLINED_FUNCTION_37_51();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_216F7A448@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplayYearPeriodList(0) + 24);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_216F7A4BC()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for ReplayYearPeriodList(v2) + 24);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t (*sub_216F7A52C())(void, void, void)
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ReplayYearPeriodList(v0);
  return nullsub_1;
}

void sub_216F7A570(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for ReplayYearPeriodList(0);
  sub_217007874();
  OUTLINED_FUNCTION_30_3(*(v3 + 28));
}

uint64_t sub_216F7A5BC@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_115();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17_0();
  v7 = type metadata accessor for ReplayYear(v6);
  v8 = OUTLINED_FUNCTION_20_4(*(v7 + 20));
  sub_2168282D4(v8, v9, &qword_27CACEED0);
  v10 = type metadata accessor for ReplayYearPeriodList(0);
  OUTLINED_FUNCTION_7_6();
  if (v11)
  {
    v12 = MEMORY[0x277D84F90];
    *a1 = MEMORY[0x277D84F90];
    a1[1] = v12;
    sub_217007874();
    OUTLINED_FUNCTION_30_3(*(v10 + 28));
    result = OUTLINED_FUNCTION_7_6();
    if (!v11)
    {
      return sub_216697664(v1, &qword_27CACEED0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_155();
    return sub_216F7A6D0(v1, a1);
  }

  return result;
}

uint64_t sub_216F7A6D0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216F7A728()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for ReplayYear(v2) + 20);
  sub_216697664(v1 + v3, &qword_27CACEED0);
  OUTLINED_FUNCTION_5_155();
  sub_216F7A6D0(v0, v1 + v3);
  type metadata accessor for ReplayYearPeriodList(0);
  v4 = OUTLINED_FUNCTION_16_2();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*sub_216F7A79C())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_74(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEED0);
  OUTLINED_FUNCTION_36(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  v5 = type metadata accessor for ReplayYearPeriodList(0);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_34();
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_149_0(v8);
  v10 = *(type metadata accessor for ReplayYear(v9) + 20);
  *(v0 + 40) = v10;
  v11 = OUTLINED_FUNCTION_20_4(v10);
  OUTLINED_FUNCTION_42_4(v11, v12);
  OUTLINED_FUNCTION_19_4(v4);
  if (v13)
  {
    v14 = MEMORY[0x277D84F90];
    *v7 = MEMORY[0x277D84F90];
    v7[1] = v14;
    sub_217007874();
    v15 = (v7 + *(v5 + 28));
    *v15 = 0;
    v15[1] = 0;
    OUTLINED_FUNCTION_19_4(v4);
    if (!v13)
    {
      sub_216697664(v4, &qword_27CACEED0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_155();
    sub_216F7A6D0(v4, v7);
  }

  return sub_216F7A8F8;
}

uint64_t sub_216F7A920(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216F7A978()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216F7A9CC()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  v5 = type metadata accessor for ReplayYear(v4);
  v6 = OUTLINED_FUNCTION_20_4(*(v5 + 20));
  sub_2168282D4(v6, v7, &qword_27CACEED0);
  v8 = type metadata accessor for ReplayYearPeriodList(0);
  OUTLINED_FUNCTION_10_114(v8);
  return v0;
}

uint64_t sub_216F7AA5C()
{
  v1 = type metadata accessor for ReplayYear(0);
  sub_216697664(v0 + *(v1 + 20), &qword_27CACEED0);
  type metadata accessor for ReplayYearPeriodList(0);
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216F7AAC0@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_115();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17_0();
  v7 = type metadata accessor for ReplayYear(v6);
  v8 = OUTLINED_FUNCTION_20_4(*(v7 + 24));
  sub_2168282D4(v8, v9, &qword_27CABD4A8);
  v10 = type metadata accessor for ReplayPage();
  OUTLINED_FUNCTION_7_6();
  if (v11)
  {
    *a1 = MEMORY[0x277D84F90];
    sub_217007874();
    OUTLINED_FUNCTION_30_3(*(v10 + 24));
    type metadata accessor for Page.Header(0);
    v12 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    type metadata accessor for PageMetricsFields(0);
    v16 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_30_3(*(v10 + 36));
    result = OUTLINED_FUNCTION_7_6();
    if (!v11)
    {
      return sub_216697664(v1, &qword_27CABD4A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_198();
    return sub_216F7A6D0(v1, a1);
  }

  return result;
}

uint64_t sub_216F7ABE4()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for ReplayYear(v2) + 24);
  sub_216697664(v1 + v3, &qword_27CABD4A8);
  OUTLINED_FUNCTION_2_198();
  sub_216F7A6D0(v0, v1 + v3);
  type metadata accessor for ReplayPage();
  v4 = OUTLINED_FUNCTION_16_2();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*sub_216F7AC58())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_74(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A8);
  OUTLINED_FUNCTION_36(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v1 + 8) = v5;
  v6 = type metadata accessor for ReplayPage();
  *(v1 + 16) = v6;
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_149_0(v9);
  v11 = *(type metadata accessor for ReplayYear(v10) + 24);
  *(v1 + 40) = v11;
  OUTLINED_FUNCTION_42_4(v0 + v11, v5);
  OUTLINED_FUNCTION_31_2(v5, 1, v6);
  if (v12)
  {
    *v8 = MEMORY[0x277D84F90];
    sub_217007874();
    v13 = (v8 + *(v6 + 24));
    *v13 = 0;
    v13[1] = 0;
    type metadata accessor for Page.Header(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    type metadata accessor for PageMetricsFields(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = (v8 + *(v6 + 36));
    *v22 = 0;
    v22[1] = 0;
    OUTLINED_FUNCTION_31_2(v5, 1, v6);
    if (!v12)
    {
      sub_216697664(v5, &qword_27CABD4A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_198();
    sub_216F7A6D0(v5, v8);
  }

  return sub_216F7AE0C;
}

void sub_216F7AE34(uint64_t **a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 10);
  v6 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = (*a1)[1];
  v9 = **a1;
  if (a2)
  {
    sub_216F7A920((*a1)[4], v6);
    sub_216697664(v9 + v5, a3);
    sub_216F7A6D0(v6, v9 + v5);
    OUTLINED_FUNCTION_44_2();
    sub_216F7A978();
  }

  else
  {
    sub_216697664(v9 + v5, a3);
    sub_216F7A6D0(v7, v9 + v5);
    OUTLINED_FUNCTION_44_2();
  }

  free(v7);
  free(v6);
  free(v8);

  free(v4);
}

uint64_t sub_216F7AF28()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  v5 = type metadata accessor for ReplayYear(v4);
  v6 = OUTLINED_FUNCTION_20_4(*(v5 + 24));
  sub_2168282D4(v6, v7, &qword_27CABD4A8);
  v8 = type metadata accessor for ReplayPage();
  OUTLINED_FUNCTION_10_114(v8);
  return v0;
}

uint64_t sub_216F7AFB8()
{
  v1 = type metadata accessor for ReplayYear(0);
  sub_216697664(v0 + *(v1 + 24), &qword_27CABD4A8);
  type metadata accessor for ReplayPage();
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216F7B01C()
{
  sub_217007874();
  type metadata accessor for ReplayYear(0);
  type metadata accessor for ReplayYearPeriodList(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  type metadata accessor for ReplayPage();
  v4 = OUTLINED_FUNCTION_17_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_216F7B0B8()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22F88);
  __swift_project_value_buffer(v0, qword_27CB22F88);
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
  *v12 = "action";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F7B428()
{
  type metadata accessor for ReplayPeriodItem(0);
  type metadata accessor for AnyAction(0);
  sub_216F7D6B4(&qword_27CACE3E8, type metadata accessor for AnyAction);
  return sub_2170079D4();
}

uint64_t sub_216F7B4DC()
{
  v1 = OUTLINED_FUNCTION_22_2();
  result = sub_216F7B540(v1);
  if (!v0)
  {
    v3 = OUTLINED_FUNCTION_22_2();
    sub_216F7B5B8(v3);
    v4 = OUTLINED_FUNCTION_22_2();
    sub_216F7B630(v4, v5, v6, v7);
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F7B540(uint64_t a1)
{
  result = type metadata accessor for ReplayPeriodItem(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F7B5B8(uint64_t a1)
{
  result = type metadata accessor for ReplayPeriodItem(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F7B630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AnyAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplayPeriodItem(0);
  sub_2168282D4(a1 + *(v11 + 28), v7, &qword_27CABFF98);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CABFF98);
  }

  sub_216F7A6D0(v7, v10);
  sub_216F7D6B4(&qword_27CACE3E8, type metadata accessor for AnyAction);
  sub_217007B04();
  return sub_216F7A978();
}

uint64_t sub_216F7B804(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_110();
  type metadata accessor for AnyAction(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE090);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_17_0();
  v17 = type metadata accessor for ReplayPeriodItem(v16);
  OUTLINED_FUNCTION_24();
  if (v20)
  {
    if (!v18)
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_5_78(v19);
    v23 = v23 && v21 == v22;
    if (!v23 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v18)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_24();
  if (v26)
  {
    if (!v24)
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_5_78(v25);
    v29 = v23 && v27 == v28;
    if (!v29 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v24)
  {
    goto LABEL_28;
  }

  v30 = *(v17 + 28);
  v31 = *(v14 + 48);
  OUTLINED_FUNCTION_42_4(v2 + v30, v3);
  OUTLINED_FUNCTION_42_4(a2 + v30, v3 + v31);
  OUTLINED_FUNCTION_19_4(v3);
  if (v23)
  {
    OUTLINED_FUNCTION_19_4(v3 + v31);
    if (v23)
    {
      sub_216697664(v3, &qword_27CABFF98);
LABEL_31:
      sub_217007884();
      OUTLINED_FUNCTION_4_163();
      sub_216F7D6B4(v36, v37);
      OUTLINED_FUNCTION_38();
      v33 = sub_21700E494();
      return v33 & 1;
    }

    goto LABEL_27;
  }

  sub_2168282D4(v3, v13, &qword_27CABFF98);
  OUTLINED_FUNCTION_19_4(v3 + v31);
  if (v32)
  {
    sub_216F7A978();
LABEL_27:
    sub_216697664(v3, &qword_27CACE090);
    goto LABEL_28;
  }

  sub_216F7A6D0(v3 + v31, v9);
  v35 = sub_216F82038();
  OUTLINED_FUNCTION_115();
  sub_216F7A978();
  sub_216F7A978();
  sub_216697664(v3, &qword_27CABFF98);
  if (v35)
  {
    goto LABEL_31;
  }

LABEL_28:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_216F7BB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F7D6B4(&qword_27CACEF90, type metadata accessor for ReplayPeriodItem);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F7BBF4(uint64_t a1)
{
  v2 = sub_216F7D6B4(&qword_27CAC3A50, type metadata accessor for ReplayPeriodItem);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F7BC64()
{
  sub_216F7D6B4(&qword_27CAC3A50, type metadata accessor for ReplayPeriodItem);

  return sub_217007A34();
}

uint64_t sub_216F7BD0C()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22FA0);
  __swift_project_value_buffer(v0, qword_27CB22FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015230;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "periods";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prominent_periods";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "selected_period_id";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F7BFC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_217007914();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v14 = OUTLINED_FUNCTION_20_71();
        a6(v14);
        break;
      case 2:
        v13 = OUTLINED_FUNCTION_20_71();
        a5(v13);
        break;
      case 1:
        v12 = OUTLINED_FUNCTION_20_71();
        a4(v12);
        break;
    }
  }

  return result;
}

uint64_t sub_216F7C078()
{
  type metadata accessor for ReplayPeriodItem(0);
  sub_216F7D6B4(&qword_27CAC3A50, type metadata accessor for ReplayPeriodItem);
  return sub_2170079C4();
}

uint64_t sub_216F7C118()
{
  type metadata accessor for ReplayPeriodItem(0);
  sub_216F7D6B4(&qword_27CAC3A50, type metadata accessor for ReplayPeriodItem);
  return sub_2170079C4();
}

uint64_t sub_216F7C21C()
{
  v2 = v1;
  if (!*(*v0 + 16) || (type metadata accessor for ReplayPeriodItem(0), OUTLINED_FUNCTION_15_82(), sub_216F7D6B4(v3, v4), OUTLINED_FUNCTION_86_1(), result = OUTLINED_FUNCTION_108_1(), (v2 = v1) == 0))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for ReplayPeriodItem(0), OUTLINED_FUNCTION_15_82(), sub_216F7D6B4(v6, v7), OUTLINED_FUNCTION_86_1(), result = OUTLINED_FUNCTION_108_1(), (v2 = v1) == 0))
    {
      result = sub_216F7C350(v0);
      if (!v2)
      {
        type metadata accessor for ReplayYearPeriodList(0);
        return sub_217007864();
      }
    }
  }

  return result;
}

uint64_t sub_216F7C350(uint64_t a1)
{
  result = type metadata accessor for ReplayYearPeriodList(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F7C3C8()
{
  sub_216F26990();
  if (v0)
  {
    sub_216F26990();
    if (v1)
    {
      type metadata accessor for ReplayYearPeriodList(0);
      OUTLINED_FUNCTION_24();
      if (v4)
      {
        if (v2)
        {
          OUTLINED_FUNCTION_5_78(v3);
          v7 = v7 && v5 == v6;
          if (v7 || (sub_21700F7D4() & 1) != 0)
          {
            goto LABEL_10;
          }
        }
      }

      else if (!v2)
      {
LABEL_10:
        sub_217007884();
        OUTLINED_FUNCTION_4_163();
        sub_216F7D6B4(v8, v9);
        return sub_21700E494() & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_216F7C520(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F7D6B4(&qword_27CACEF88, type metadata accessor for ReplayYearPeriodList);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F7C5B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_110();
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();

  return v4(v3);
}

uint64_t sub_216F7C618(uint64_t a1)
{
  v2 = sub_216F7D6B4(&qword_27CACEF18, type metadata accessor for ReplayYearPeriodList);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F7C688()
{
  sub_216F7D6B4(&qword_27CACEF18, type metadata accessor for ReplayYearPeriodList);

  return sub_217007A34();
}

uint64_t sub_216F7C730()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22FB8);
  __swift_project_value_buffer(v0, qword_27CB22FB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217013D90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "period_list";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "replay_page";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F7C948()
{
  while (1)
  {
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_38();
      sub_216F7CA80();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_38();
      sub_216F7C9CC();
    }
  }

  return result;
}

uint64_t sub_216F7C9CC()
{
  type metadata accessor for ReplayYear(0);
  type metadata accessor for ReplayYearPeriodList(0);
  sub_216F7D6B4(&qword_27CACEF18, type metadata accessor for ReplayYearPeriodList);
  return sub_2170079D4();
}

uint64_t sub_216F7CA80()
{
  type metadata accessor for ReplayYear(0);
  type metadata accessor for ReplayPage();
  sub_216F7D6B4(&qword_27CAB6C60, type metadata accessor for ReplayPage);
  return sub_2170079D4();
}

uint64_t sub_216F7CB34()
{
  v1 = OUTLINED_FUNCTION_22_2();
  result = sub_216F7CB8C(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_22_2();
    sub_216F7CD60(v6, v7, v8, v9);
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F7CB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEED0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ReplayYearPeriodList(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplayYear(0);
  sub_2168282D4(a1 + *(v11 + 20), v7, &qword_27CACEED0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACEED0);
  }

  sub_216F7A6D0(v7, v10);
  sub_216F7D6B4(&qword_27CACEF18, type metadata accessor for ReplayYearPeriodList);
  sub_217007B04();
  return sub_216F7A978();
}

uint64_t sub_216F7CD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ReplayPage();
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplayYear(0);
  sub_2168282D4(a1 + *(v11 + 24), v7, &qword_27CABD4A8);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CABD4A8);
  }

  sub_216F7A6D0(v7, v10);
  sub_216F7D6B4(&qword_27CAB6C60, type metadata accessor for ReplayPage);
  sub_217007B04();
  return sub_216F7A978();
}

uint64_t sub_216F7CF34(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for ReplayPage();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v45 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A8);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v46 = &v44 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEEE8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v50 = &v44 - v11;
  v12 = type metadata accessor for ReplayYearPeriodList(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEED0);
  OUTLINED_FUNCTION_36(v17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEEF0) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = &v44 - v23;
  v47 = type metadata accessor for ReplayYear(0);
  v25 = *(v47 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  sub_2168282D4(a1 + v25, v24, &qword_27CACEED0);
  sub_2168282D4(a2 + v25, &v24[v26], &qword_27CACEED0);
  OUTLINED_FUNCTION_31_2(v24, 1, v12);
  if (v27)
  {
    OUTLINED_FUNCTION_31_2(&v24[v26], 1, v12);
    if (v27)
    {
      sub_216697664(v24, &qword_27CACEED0);
      goto LABEL_11;
    }

LABEL_9:
    v28 = &qword_27CACEEF0;
    v29 = v24;
LABEL_20:
    sub_216697664(v29, v28);
    goto LABEL_21;
  }

  sub_2168282D4(v24, v20, &qword_27CACEED0);
  OUTLINED_FUNCTION_31_2(&v24[v26], 1, v12);
  if (v27)
  {
    sub_216F7A978();
    goto LABEL_9;
  }

  sub_216F7A6D0(&v24[v26], v16);
  v30 = sub_216F7C3C8();
  sub_216F7A978();
  OUTLINED_FUNCTION_38();
  sub_216F7A978();
  sub_216697664(v24, &qword_27CACEED0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v31 = *(v47 + 24);
  v32 = *(v48 + 48);
  v33 = v50;
  sub_2168282D4(v51 + v31, v50, &qword_27CABD4A8);
  sub_2168282D4(a2 + v31, v33 + v32, &qword_27CABD4A8);
  v34 = v49;
  OUTLINED_FUNCTION_31_2(v33, 1, v49);
  if (v27)
  {
    OUTLINED_FUNCTION_31_2(v33 + v32, 1, v34);
    if (v27)
    {
      sub_216697664(v33, &qword_27CABD4A8);
LABEL_24:
      sub_217007884();
      OUTLINED_FUNCTION_4_163();
      sub_216F7D6B4(v42, v43);
      v37 = sub_21700E494();
      return v37 & 1;
    }

    goto LABEL_19;
  }

  v35 = v46;
  sub_2168282D4(v33, v46, &qword_27CABD4A8);
  OUTLINED_FUNCTION_31_2(v33 + v32, 1, v34);
  if (v36)
  {
    sub_216F7A978();
LABEL_19:
    v28 = &qword_27CACEEE8;
    v29 = v33;
    goto LABEL_20;
  }

  v39 = v33 + v32;
  v40 = v45;
  sub_216F7A6D0(v39, v45);
  v41 = sub_216F45BB0(v35, v40);
  sub_216F7A978();
  sub_216F7A978();
  sub_216697664(v33, &qword_27CABD4A8);
  if (v41)
  {
    goto LABEL_24;
  }

LABEL_21:
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_216F7D474(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21700F8F4();
  a1(0);
  sub_216F7D6B4(a2, a3);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F7D530(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F7D6B4(&qword_27CACEF80, type metadata accessor for ReplayYear);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F7D5C4(uint64_t a1)
{
  v2 = sub_216F7D6B4(&qword_27CABD490, type metadata accessor for ReplayYear);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F7D634()
{
  sub_216F7D6B4(&qword_27CABD490, type metadata accessor for ReplayYear);

  return sub_217007A34();
}

uint64_t sub_216F7D6B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_216F7DA84()
{
  sub_217007884();
  if (v0 <= 0x3F)
  {
    sub_216688154();
    if (v1 <= 0x3F)
    {
      sub_216F7DC44(319, qword_280E48698, type metadata accessor for AnyAction, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216F7DB78()
{
  sub_216F7DC44(319, &qword_27CACEF58, type metadata accessor for ReplayPeriodItem, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_217007884();
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

void sub_216F7DC44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216F7DCD0()
{
  sub_217007884();
  if (v0 <= 0x3F)
  {
    sub_216F7DC44(319, &qword_27CACEF70, type metadata accessor for ReplayYearPeriodList, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_216F7DC44(319, &qword_27CACEF78, type metadata accessor for ReplayPage, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216F7DDCC()
{
  v1 = OUTLINED_FUNCTION_8_1();
  v2 = type metadata accessor for AnyAction.OneOf_BaseAction(v1);
  OUTLINED_FUNCTION_88(v0, v3, v4, v2);
  type metadata accessor for AnyAction(0);
  return sub_217007874();
}

uint64_t sub_216F7DE88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216F7DEF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  v3 = (&v10 - v2);
  v4 = OUTLINED_FUNCTION_38();
  sub_2168282D4(v4, v5, &qword_27CAC33D0);
  v6 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  OUTLINED_FUNCTION_31_2(v3, 1, v6);
  if (v7)
  {
    sub_216697664(v3, &qword_27CAC33D0);
  }

  else
  {
    OUTLINED_FUNCTION_8();
    if (!swift_getEnumCaseMultiPayload())
    {
      return *v3;
    }

    sub_216F7E4A4();
  }

  return 0;
}

uint64_t sub_216F7DFEC(int a1)
{
  sub_216697664(v1, &qword_27CAC33D0);
  *v1 = a1;
  v3 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  OUTLINED_FUNCTION_38();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
}

void (*sub_216F7E05C(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v1;
  v4 = OUTLINED_FUNCTION_22_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(a1 + 8) = v7;
  sub_2168282D4(v2, v7, &qword_27CAC33D0);
  v8 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  *(a1 + 16) = v8;
  OUTLINED_FUNCTION_31_2(v7, 1, v8);
  if (v9)
  {
    sub_216697664(v7, &qword_27CAC33D0);
  }

  else
  {
    OUTLINED_FUNCTION_7_4();
    if (!swift_getEnumCaseMultiPayload())
    {
      v11 = *v7;
      goto LABEL_7;
    }

    sub_216F7E4A4();
  }

  v11 = 0;
LABEL_7:
  *(a1 + 24) = v11;
  return sub_216F7E174;
}

void sub_216F7E174(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 24);
  sub_216697664(*a1, &qword_27CAC33D0);
  *v3 = v4;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);

  free(v2);
}

uint64_t sub_216F7E1F4()
{
  OUTLINED_FUNCTION_89_0();
  v1 = OUTLINED_FUNCTION_22_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_8(v4, v8);
  OUTLINED_FUNCTION_10_115();
  if (v5)
  {
    sub_216697664(v0, &qword_27CAC33D0);
  }

  else
  {
    OUTLINED_FUNCTION_7_4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_4_164();
      OUTLINED_FUNCTION_38();
      return sub_216F7E5D4();
    }

    sub_216F7E4A4();
  }

  return sub_217007874();
}

void (*sub_216F7E30C())(uint64_t **a1, char a2)
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_35_44(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  OUTLINED_FUNCTION_36(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v1[1] = v4;
  v5 = type metadata accessor for PlayAction(0);
  OUTLINED_FUNCTION_36(v5);
  v7 = *(v6 + 64);
  v1[2] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_22_5(v8);
  v9 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  v1[4] = v9;
  OUTLINED_FUNCTION_31_2(v4, 1, v9);
  if (v10)
  {
    sub_216697664(v4, &qword_27CAC33D0);
LABEL_7:
    sub_217007874();
    return sub_216F7E474;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_216F7E4A4();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_164();
  sub_216F7E5D4();
  return sub_216F7E474;
}

uint64_t sub_216F7E4A4()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216F7E4F8()
{
  OUTLINED_FUNCTION_89_0();
  v1 = OUTLINED_FUNCTION_22_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_8(v4, v8);
  OUTLINED_FUNCTION_10_115();
  if (v5)
  {
    sub_216697664(v0, &qword_27CAC33D0);
  }

  else
  {
    OUTLINED_FUNCTION_7_4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_6_136();
      OUTLINED_FUNCTION_38();
      return sub_216F7E5D4();
    }

    sub_216F7E4A4();
  }

  return sub_217007874();
}

uint64_t sub_216F7E5D4()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

void (*sub_216F7E664())(uint64_t **a1, char a2)
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_35_44(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  OUTLINED_FUNCTION_36(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v1[1] = v4;
  v5 = type metadata accessor for SegueAction(0);
  OUTLINED_FUNCTION_36(v5);
  v7 = *(v6 + 64);
  v1[2] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_22_5(v8);
  v9 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  v1[4] = v9;
  OUTLINED_FUNCTION_31_2(v4, 1, v9);
  if (v10)
  {
    sub_216697664(v4, &qword_27CAC33D0);
LABEL_7:
    sub_217007874();
    return sub_216F7E7CC;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_216F7E4A4();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_136();
  sub_216F7E5D4();
  return sub_216F7E7CC;
}

uint64_t sub_216F7E7FC()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216F7E850()
{
  OUTLINED_FUNCTION_89_0();
  v2 = OUTLINED_FUNCTION_22_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_8(v5, v14);
  OUTLINED_FUNCTION_10_115();
  if (v6)
  {
    sub_216697664(v1, &qword_27CAC33D0);
  }

  else
  {
    OUTLINED_FUNCTION_7_4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_5_156();
      OUTLINED_FUNCTION_38();
      return sub_216F7E5D4();
    }

    sub_216F7E4A4();
  }

  sub_217007874();
  v9 = type metadata accessor for SelectReplayYearAction(0);
  v10 = OUTLINED_FUNCTION_25_63(v9);
  v11 = type metadata accessor for AnyReplayYearRequest(v10);
  return OUTLINED_FUNCTION_88(v0 + v1, v12, v13, v11);
}

void (*sub_216F7E964())(uint64_t **a1, char a2)
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_35_44(v1);
  v2 = OUTLINED_FUNCTION_54_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v1[1] = v5;
  v6 = type metadata accessor for SelectReplayYearAction(0);
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 64);
  v1[2] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_21_74(v9);
  v10 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  v1[4] = v10;
  OUTLINED_FUNCTION_31_2(v5, 1, v10);
  if (v11)
  {
    sub_216697664(v5, &qword_27CAC33D0);
LABEL_7:
    sub_217007874();
    v13 = OUTLINED_FUNCTION_26_57();
    v14 = type metadata accessor for AnyReplayYearRequest(v13);
    OUTLINED_FUNCTION_88(v8 + v6, v15, v16, v14);
    return sub_216F7EADC;
  }

  OUTLINED_FUNCTION_22_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_216F7E4A4();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_156();
  sub_216F7E5D4();
  return sub_216F7EADC;
}

uint64_t sub_216F7EB0C()
{
  OUTLINED_FUNCTION_89_0();
  v2 = OUTLINED_FUNCTION_22_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_8(v5, v14);
  OUTLINED_FUNCTION_10_115();
  if (v6)
  {
    sub_216697664(v1, &qword_27CAC33D0);
  }

  else
  {
    OUTLINED_FUNCTION_7_4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_7_130();
      OUTLINED_FUNCTION_38();
      return sub_216F7E5D4();
    }

    sub_216F7E4A4();
  }

  sub_217007874();
  v9 = type metadata accessor for SelectReplayPeriodAction(0);
  v10 = OUTLINED_FUNCTION_25_63(v9);
  v11 = type metadata accessor for AnyReplayPageRequest(v10);
  return OUTLINED_FUNCTION_88(v0 + v1, v12, v13, v11);
}

uint64_t sub_216F7EC20()
{
  sub_216697664(v0, &qword_27CAC33D0);
  sub_216F7E5D4();
  v1 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  OUTLINED_FUNCTION_7_4();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void (*sub_216F7ECAC())(uint64_t **a1, char a2)
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_35_44(v1);
  v2 = OUTLINED_FUNCTION_54_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v1[1] = v5;
  v6 = type metadata accessor for SelectReplayPeriodAction(0);
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 64);
  v1[2] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_21_74(v9);
  v10 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  v1[4] = v10;
  OUTLINED_FUNCTION_31_2(v5, 1, v10);
  if (v11)
  {
    sub_216697664(v5, &qword_27CAC33D0);
LABEL_7:
    sub_217007874();
    v13 = OUTLINED_FUNCTION_26_57();
    v14 = type metadata accessor for AnyReplayPageRequest(v13);
    OUTLINED_FUNCTION_88(v8 + v6, v15, v16, v14);
    return sub_216F7EE24;
  }

  OUTLINED_FUNCTION_22_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_216F7E4A4();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_130();
  sub_216F7E5D4();
  return sub_216F7EE24;
}

void sub_216F7EE54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    sub_216F7E7FC();
    sub_216697664(v7, &qword_27CAC33D0);
    sub_216F7E5D4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
    sub_216F7E4A4();
  }

  else
  {
    sub_216697664(**a1, &qword_27CAC33D0);
    sub_216F7E5D4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_216F7EF8C()
{
  v2 = OUTLINED_FUNCTION_8_1();
  v3 = *(type metadata accessor for AnyAction(v2) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t sub_216F7EFFC()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for AnyAction(v2) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t (*sub_216F7F06C())(void, void, void)
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for AnyAction(v0);
  return nullsub_1;
}

uint64_t sub_216F7F0B0(uint64_t a1, uint64_t a2)
{
  v35[4] = a1;
  v35[5] = a2;
  v2 = type metadata accessor for SelectReplayPeriodAction(0);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v35[3] = v5 - v4;
  v6 = type metadata accessor for SelectReplayYearAction(0);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v35[1] = v9 - v8;
  v10 = type metadata accessor for SegueAction(0);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v35[2] = v13 - v12;
  v14 = type metadata accessor for PlayAction(0);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  type metadata accessor for AnyAction.OneOf_BaseAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v22 = (v35 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEF98);
  OUTLINED_FUNCTION_36(v23);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v26 = v35 - v25;
  v28 = *(v27 + 56);
  sub_216F7E7FC();
  sub_216F7E7FC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_272();
      sub_216F7E7FC();
      if (OUTLINED_FUNCTION_30_59() != 1)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_4_164();
      sub_216F7E5D4();
      sub_217007884();
      OUTLINED_FUNCTION_1_235();
      sub_216F7F8EC(v32, v33);
      v29 = sub_21700E494();
      sub_216F7E4A4();
      goto LABEL_12;
    case 2u:
      OUTLINED_FUNCTION_0_272();
      sub_216F7E7FC();
      if (OUTLINED_FUNCTION_30_59() != 2)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_6_136();
      sub_216F7E5D4();
      sub_217007884();
      OUTLINED_FUNCTION_1_235();
      sub_216F7F8EC(v30, v31);
      v29 = sub_21700E494();
      sub_216F7E4A4();
      goto LABEL_12;
    case 3u:
      OUTLINED_FUNCTION_0_272();
      OUTLINED_FUNCTION_8();
      sub_216F7E7FC();
      if (OUTLINED_FUNCTION_30_59() != 3)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_5_156();
      sub_216F7E5D4();
      v29 = sub_216FF9C70();
      sub_216F7E4A4();
      OUTLINED_FUNCTION_7_4();
      goto LABEL_12;
    case 4u:
      OUTLINED_FUNCTION_0_272();
      sub_216F7E7FC();
      if (OUTLINED_FUNCTION_30_59() == 4)
      {
        OUTLINED_FUNCTION_7_130();
        sub_216F7E5D4();
        v29 = sub_216FF9EFC();
        sub_216F7E4A4();
LABEL_12:
        sub_216F7E4A4();
LABEL_13:
        OUTLINED_FUNCTION_8_127();
        sub_216F7E4A4();
      }

      else
      {
LABEL_14:
        sub_216F7E4A4();
LABEL_15:
        sub_216697664(v26, &qword_27CACEF98);
        v29 = 0;
      }

      return v29 & 1;
    default:
      OUTLINED_FUNCTION_0_272();
      sub_216F7E7FC();
      if (OUTLINED_FUNCTION_30_59())
      {
        goto LABEL_15;
      }

      v29 = *v22 == *&v26[v28];
      goto LABEL_13;
  }
}

uint64_t sub_216F7F630()
{
  OUTLINED_FUNCTION_102();
  sub_217007884();
  OUTLINED_FUNCTION_1_235();
  sub_216F7F8EC(v0, v1);
  OUTLINED_FUNCTION_38();
  return sub_21700E494() & 1;
}

uint64_t sub_216F7F76C(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F7F8EC(&qword_27CACF008, type metadata accessor for PlayAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F7F800(uint64_t a1)
{
  v2 = sub_216F7F8EC(&qword_27CACEFC0, type metadata accessor for PlayAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F7F870()
{
  sub_216F7F8EC(&qword_27CACEFC0, type metadata accessor for PlayAction);

  return sub_217007A34();
}

uint64_t sub_216F7F8EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216F7FA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F7F8EC(&qword_27CACF000, type metadata accessor for SegueAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F7FA98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();

  return v4(v3);
}

uint64_t sub_216F7FB00(uint64_t a1)
{
  v2 = sub_216F7F8EC(&qword_27CACEFD8, type metadata accessor for SegueAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F7FB70()
{
  sub_216F7F8EC(&qword_27CACEFD8, type metadata accessor for SegueAction);

  return sub_217007A34();
}

uint64_t sub_216F7FC14()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB23000);
  __swift_project_value_buffer(v0, qword_27CB23000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015240;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "empty";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "play_action";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "segue_action";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "select_replay_year_action";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "select_replay_period_action";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F7FEF4()
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
        v3 = OUTLINED_FUNCTION_38();
        sub_216F7FFBC(v3, v4);
        break;
      case 2:
        v17 = OUTLINED_FUNCTION_11_5();
        sub_216F80154(v17, v18, v19, v20);
        break;
      case 3:
        v9 = OUTLINED_FUNCTION_11_5();
        sub_216F8064C(v9, v10, v11, v12);
        break;
      case 4:
        v13 = OUTLINED_FUNCTION_11_5();
        sub_216F80B44(v13, v14, v15, v16);
        break;
      case 5:
        v5 = OUTLINED_FUNCTION_11_5();
        sub_216F8103C(v5, v6, v7, v8);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F7FFBC(uint64_t a1, _DWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v12 = 0;
  v13 = 1;
  result = sub_217007964();
  if (!v2 && (v13 & 1) == 0)
  {
    v11 = v12;
    sub_2168282D4(a2, v6, &qword_27CAC33D0);
    v8 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v8);
    sub_216697664(v6, &qword_27CAC33D0);
    if (EnumTagSinglePayload != 1)
    {
      sub_217007924();
    }

    sub_216697664(a2, &qword_27CAC33D0);
    *a2 = v11;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v8);
  }

  return result;
}

uint64_t sub_216F80154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for PlayAction(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_2168282D4(a1, v10, &qword_27CAC33D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v10, &qword_27CAC33D0);
  }

  else
  {
    sub_216F7E5D4();
    sub_216F7E5D4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_216697664(v18, &qword_27CACF020);
      sub_216F7E5D4();
      sub_216F7E5D4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_216F7E4A4();
    }
  }

  sub_216F7F8EC(&qword_27CACEFC0, type metadata accessor for PlayAction);
  v19 = v29;
  sub_2170079D4();
  if (v19)
  {
    v20 = v18;
    return sub_216697664(v20, &qword_27CACF020);
  }

  sub_2168282D4(v18, v15, &qword_27CACF020);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_216697664(v18, &qword_27CACF020);
    v20 = v15;
    return sub_216697664(v20, &qword_27CACF020);
  }

  sub_216F7E5D4();
  if (EnumTagSinglePayload != 1)
  {
    sub_217007924();
  }

  v22 = v27;
  sub_216697664(v18, &qword_27CACF020);
  v23 = v25;
  sub_216697664(v25, &qword_27CAC33D0);
  sub_216F7E5D4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_216F8064C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for SegueAction(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF028);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_2168282D4(a1, v10, &qword_27CAC33D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v10, &qword_27CAC33D0);
  }

  else
  {
    sub_216F7E5D4();
    sub_216F7E5D4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_216697664(v18, &qword_27CACF028);
      sub_216F7E5D4();
      sub_216F7E5D4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_216F7E4A4();
    }
  }

  sub_216F7F8EC(&qword_27CACEFD8, type metadata accessor for SegueAction);
  v19 = v29;
  sub_2170079D4();
  if (v19)
  {
    v20 = v18;
    return sub_216697664(v20, &qword_27CACF028);
  }

  sub_2168282D4(v18, v15, &qword_27CACF028);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_216697664(v18, &qword_27CACF028);
    v20 = v15;
    return sub_216697664(v20, &qword_27CACF028);
  }

  sub_216F7E5D4();
  if (EnumTagSinglePayload != 1)
  {
    sub_217007924();
  }

  v22 = v27;
  sub_216697664(v18, &qword_27CACF028);
  v23 = v25;
  sub_216697664(v25, &qword_27CAC33D0);
  sub_216F7E5D4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_216F80B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for SelectReplayYearAction(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF030);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_2168282D4(a1, v10, &qword_27CAC33D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v10, &qword_27CAC33D0);
  }

  else
  {
    sub_216F7E5D4();
    sub_216F7E5D4();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_216697664(v18, &qword_27CACF030);
      sub_216F7E5D4();
      sub_216F7E5D4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_216F7E4A4();
    }
  }

  sub_216F7F8EC(&qword_27CACF010, type metadata accessor for SelectReplayYearAction);
  v19 = v29;
  sub_2170079D4();
  if (v19)
  {
    v20 = v18;
    return sub_216697664(v20, &qword_27CACF030);
  }

  sub_2168282D4(v18, v15, &qword_27CACF030);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_216697664(v18, &qword_27CACF030);
    v20 = v15;
    return sub_216697664(v20, &qword_27CACF030);
  }

  sub_216F7E5D4();
  if (EnumTagSinglePayload != 1)
  {
    sub_217007924();
  }

  v22 = v27;
  sub_216697664(v18, &qword_27CACF030);
  v23 = v25;
  sub_216697664(v25, &qword_27CAC33D0);
  sub_216F7E5D4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_216F8103C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for SelectReplayPeriodAction(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF038);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_2168282D4(a1, v10, &qword_27CAC33D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v10, &qword_27CAC33D0);
  }

  else
  {
    sub_216F7E5D4();
    sub_216F7E5D4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_216697664(v18, &qword_27CACF038);
      sub_216F7E5D4();
      sub_216F7E5D4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_216F7E4A4();
    }
  }

  sub_216F7F8EC(&qword_27CACF018, type metadata accessor for SelectReplayPeriodAction);
  v19 = v29;
  sub_2170079D4();
  if (v19)
  {
    v20 = v18;
    return sub_216697664(v20, &qword_27CACF038);
  }

  sub_2168282D4(v18, v15, &qword_27CACF038);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_216697664(v18, &qword_27CACF038);
    v20 = v15;
    return sub_216697664(v20, &qword_27CACF038);
  }

  sub_216F7E5D4();
  if (EnumTagSinglePayload != 1)
  {
    sub_217007924();
  }

  v22 = v27;
  sub_216697664(v18, &qword_27CACF038);
  v23 = v25;
  sub_216697664(v25, &qword_27CAC33D0);
  sub_216F7E5D4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_216F81534()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  sub_2168282D4(v0, &v25 - v4, &qword_27CAC33D0);
  v6 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    OUTLINED_FUNCTION_54_3();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v21 = OUTLINED_FUNCTION_3_7();
        sub_216F817E8(v21, v22, v23, v24);
        goto LABEL_9;
      case 2u:
        v13 = OUTLINED_FUNCTION_3_7();
        sub_216F819FC(v13, v14, v15, v16);
        goto LABEL_9;
      case 3u:
        v17 = OUTLINED_FUNCTION_3_7();
        sub_216F81C10(v17, v18, v19, v20);
        goto LABEL_9;
      case 4u:
        v9 = OUTLINED_FUNCTION_3_7();
        sub_216F81E24(v9, v10, v11, v12);
LABEL_9:
        OUTLINED_FUNCTION_8_127();
        result = sub_216F7E4A4();
        if (!v1)
        {
          break;
        }

        return result;
      default:
        v7 = OUTLINED_FUNCTION_3_7();
        result = sub_216F816AC(v7);
        if (!v1)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for AnyAction(0);
  return sub_217007864();
}

uint64_t sub_216F816AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_2168282D4(a1, &v7 - v3, &qword_27CAC33D0);
  v5 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    result = sub_216697664(v4, &qword_27CAC33D0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_217007A94();
    }

    result = sub_216F7E4A4();
  }

  __break(1u);
  return result;
}

uint64_t sub_216F817E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for PlayAction(0);
  MEMORY[0x28223BE20](v8);
  sub_2168282D4(a1, v7, &qword_27CAC33D0);
  v9 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_216697664(v7, &qword_27CAC33D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_216F7E5D4();
      sub_216F7F8EC(&qword_27CACEFC0, type metadata accessor for PlayAction);
      sub_217007B04();
      return sub_216F7E4A4();
    }

    result = sub_216F7E4A4();
  }

  __break(1u);
  return result;
}

uint64_t sub_216F819FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for SegueAction(0);
  MEMORY[0x28223BE20](v8);
  sub_2168282D4(a1, v7, &qword_27CAC33D0);
  v9 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_216697664(v7, &qword_27CAC33D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_216F7E5D4();
      sub_216F7F8EC(&qword_27CACEFD8, type metadata accessor for SegueAction);
      sub_217007B04();
      return sub_216F7E4A4();
    }

    result = sub_216F7E4A4();
  }

  __break(1u);
  return result;
}

uint64_t sub_216F81C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for SelectReplayYearAction(0);
  MEMORY[0x28223BE20](v8);
  sub_2168282D4(a1, v7, &qword_27CAC33D0);
  v9 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_216697664(v7, &qword_27CAC33D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_216F7E5D4();
      sub_216F7F8EC(&qword_27CACF010, type metadata accessor for SelectReplayYearAction);
      sub_217007B04();
      return sub_216F7E4A4();
    }

    result = sub_216F7E4A4();
  }

  __break(1u);
  return result;
}

uint64_t sub_216F81E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for SelectReplayPeriodAction(0);
  MEMORY[0x28223BE20](v8);
  sub_2168282D4(a1, v7, &qword_27CAC33D0);
  v9 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_216697664(v7, &qword_27CAC33D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_216F7E5D4();
      sub_216F7F8EC(&qword_27CACF018, type metadata accessor for SelectReplayPeriodAction);
      sub_217007B04();
      return sub_216F7E4A4();
    }

    result = sub_216F7E4A4();
  }

  __break(1u);
  return result;
}

uint64_t sub_216F82038()
{
  v2 = OUTLINED_FUNCTION_102();
  v3 = type metadata accessor for AnyAction.OneOf_BaseAction(v2);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_54_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE088);
  OUTLINED_FUNCTION_36(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v18 = *(v17 + 56);
  sub_2168282D4(v1, &v28 - v15, &qword_27CAC33D0);
  sub_2168282D4(v0, &v16[v18], &qword_27CAC33D0);
  OUTLINED_FUNCTION_31_2(v16, 1, v3);
  if (v22)
  {
    OUTLINED_FUNCTION_31_2(&v16[v18], 1, v3);
    if (v22)
    {
      sub_216697664(v16, &qword_27CAC33D0);
LABEL_12:
      type metadata accessor for AnyAction(0);
      sub_217007884();
      OUTLINED_FUNCTION_1_235();
      sub_216F7F8EC(v25, v26);
      v23 = sub_21700E494();
      return v23 & 1;
    }

    goto LABEL_9;
  }

  v19 = OUTLINED_FUNCTION_22_4();
  sub_2168282D4(v19, v20, v21);
  OUTLINED_FUNCTION_31_2(&v16[v18], 1, v3);
  if (v22)
  {
    OUTLINED_FUNCTION_8_127();
    sub_216F7E4A4();
LABEL_9:
    sub_216697664(v16, &qword_27CACE088);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_272();
  sub_216F7E5D4();
  v24 = sub_216F7F0B0(v12, v7);
  sub_216F7E4A4();
  sub_216F7E4A4();
  sub_216697664(v16, &qword_27CAC33D0);
  if (v24)
  {
    goto LABEL_12;
  }

LABEL_10:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_216F82310(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21700F8F4();
  a1(0);
  sub_216F7F8EC(a2, a3);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F823CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F7F8EC(&qword_27CACEFF8, type metadata accessor for AnyAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F82460(uint64_t a1)
{
  v2 = sub_216F7F8EC(&qword_27CACE3E8, type metadata accessor for AnyAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F824D0()
{
  sub_216F7F8EC(&qword_27CACE3E8, type metadata accessor for AnyAction);

  return sub_217007A34();
}

void sub_216F82928()
{
  sub_216F829AC();
  if (v0 <= 0x3F)
  {
    sub_217007884();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216F829AC()
{
  if (!qword_280E48748[0])
  {
    type metadata accessor for AnyAction.OneOf_BaseAction(255);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, qword_280E48748);
    }
  }
}

uint64_t sub_216F82A04()
{
  result = type metadata accessor for PlayAction(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SegueAction(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for SelectReplayYearAction(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for SelectReplayPeriodAction(319);
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

void sub_216F82AB0(uint64_t a1@<X8>)
{
  sub_217007874();
  v2 = type metadata accessor for Artwork(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Artwork.ArtworkDictionary(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  OUTLINED_FUNCTION_30_3(*(v2 + 24));
}

uint64_t sub_216F82B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_21678724C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_216F82BDC@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF040);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Artwork(0);
  sub_216F82CD0(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Artwork.ArtworkDictionary(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    return sub_216F82DE4(v6, a1);
  }

  sub_216F82D40(a1);
  result = __swift_getEnumTagSinglePayload(v6, 1, v8);
  if (result != 1)
  {
    return sub_216697664(v6, &qword_27CACF040);
  }

  return result;
}

uint64_t sub_216F82CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_216F82D40(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Artwork.ArtworkDictionary(0);
  sub_217007874();
  OUTLINED_FUNCTION_30_3(v2[6]);
  OUTLINED_FUNCTION_26_58(a1 + v2[7]);
  v3 = a1 + v2[8];
  *v3 = 0;
  v3[4] = v4;
  OUTLINED_FUNCTION_30_3(v2[9]);
  OUTLINED_FUNCTION_30_3(v2[10]);
  OUTLINED_FUNCTION_30_3(v2[11]);
  OUTLINED_FUNCTION_30_3(v2[12]);
  OUTLINED_FUNCTION_30_3(v2[13]);
  OUTLINED_FUNCTION_30_3(v2[14]);
  *(a1 + v2[15]) = 2;
}

uint64_t sub_216F82DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.ArtworkDictionary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216F82E48()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for Artwork(v2) + 20);
  sub_216697664(v1 + v3, &qword_27CACF040);
  sub_216F82DE4(v0, v1 + v3);
  v4 = type metadata accessor for Artwork.ArtworkDictionary(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*sub_216F82EC4(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF040);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Artwork.ArtworkDictionary(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_34();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Artwork(0) + 20);
  *(v3 + 10) = v11;
  sub_216F82CD0(v1 + v11, v6);
  OUTLINED_FUNCTION_24_3(v6);
  if (v12)
  {
    *v10 = MEMORY[0x277D84F90];
    sub_217007874();
    OUTLINED_FUNCTION_94_1(v7[6]);
    v13 = v10 + v7[7];
    *v13 = 0;
    v13[4] = 1;
    v14 = v10 + v7[8];
    *v14 = 0;
    v14[4] = 1;
    OUTLINED_FUNCTION_94_1(v7[9]);
    OUTLINED_FUNCTION_94_1(v7[10]);
    OUTLINED_FUNCTION_94_1(v7[11]);
    OUTLINED_FUNCTION_94_1(v7[12]);
    OUTLINED_FUNCTION_94_1(v7[13]);
    OUTLINED_FUNCTION_94_1(v7[14]);
    *(v10 + v7[15]) = 2;
    OUTLINED_FUNCTION_24_3(v6);
    if (!v12)
    {
      sub_216697664(v6, &qword_27CACF040);
    }
  }

  else
  {
    sub_216F82DE4(v6, v10);
  }

  return sub_216F8307C;
}

void sub_216F8307C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_216C7E124((*a1)[4], v4);
    sub_216697664(v7 + v3, &qword_27CACF040);
    sub_216F82DE4(v4, v7 + v3);
    OUTLINED_FUNCTION_64();
    sub_216F8315C(v5);
  }

  else
  {
    sub_216697664(v7 + v3, &qword_27CACF040);
    sub_216F82DE4(v5, v7 + v3);
    OUTLINED_FUNCTION_64();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_216F8315C(uint64_t a1)
{
  v2 = type metadata accessor for Artwork.ArtworkDictionary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_216F831B8()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Artwork(0);
  sub_216F82CD0(v0 + *(v6 + 20), v5);
  v7 = type metadata accessor for Artwork.ArtworkDictionary(0);
  v8 = __swift_getEnumTagSinglePayload(v5, 1, v7) != 1;
  sub_216697664(v5, &qword_27CACF040);
  return v8;
}

uint64_t sub_216F83274()
{
  v1 = *(type metadata accessor for Artwork(0) + 20);
  sub_216697664(v0 + v1, &qword_27CACF040);
  v2 = type metadata accessor for Artwork.ArtworkDictionary(0);

  return __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t sub_216F8330C()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for Artwork(v2);
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

uint64_t sub_216F833D4(uint64_t (*a1)(void))
{
  v1 = a1(0);
  if (OUTLINED_FUNCTION_35_0(*(v1 + 24)))
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

uint64_t sub_216F83438()
{
  v3 = OUTLINED_FUNCTION_37_0();
  v4(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F83474()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for Artwork.ArtworkDictionary(v2);
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

uint64_t sub_216F83524(void (*a1)(void))
{
  a1(0);
  result = OUTLINED_FUNCTION_78();
  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_216F8355C()
{
  type metadata accessor for Artwork.ArtworkDictionary(0);
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

uint64_t sub_216F83584(int a1)
{
  result = OUTLINED_FUNCTION_25_64();
  *v3 = a1;
  *(v3 + 4) = 0;
  return result;
}

uint64_t (*sub_216F835B0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 12) = *(type metadata accessor for Artwork.ArtworkDictionary(0) + 28);
  OUTLINED_FUNCTION_15_81();
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;
  return sub_216F63D98;
}

uint64_t sub_216F8364C()
{
  type metadata accessor for Artwork.ArtworkDictionary(0);
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

uint64_t sub_216F83674(int a1)
{
  result = OUTLINED_FUNCTION_24_53();
  *v3 = a1;
  *(v3 + 4) = 0;
  return result;
}

uint64_t (*sub_216F836A0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 12) = *(type metadata accessor for Artwork.ArtworkDictionary(0) + 32);
  OUTLINED_FUNCTION_15_81();
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;
  return sub_216F769C0;
}

uint64_t sub_216F8373C()
{
  v0 = type metadata accessor for Artwork.ArtworkDictionary(0);
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

uint64_t sub_216F83780()
{
  v3 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for Artwork.ArtworkDictionary(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F837B8()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for Artwork.ArtworkDictionary(v2);
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

uint64_t sub_216F83850()
{
  type metadata accessor for Artwork.ArtworkDictionary(0);
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F83880()
{
  v0 = type metadata accessor for Artwork.ArtworkDictionary(0);
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

uint64_t sub_216F838C4()
{
  v3 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for Artwork.ArtworkDictionary(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F838FC()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for Artwork.ArtworkDictionary(v2);
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

uint64_t sub_216F83994()
{
  type metadata accessor for Artwork.ArtworkDictionary(0);
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F839C4()
{
  v0 = type metadata accessor for Artwork.ArtworkDictionary(0);
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

uint64_t sub_216F83A08()
{
  v3 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for Artwork.ArtworkDictionary(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F83A40()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for Artwork.ArtworkDictionary(v2);
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

uint64_t sub_216F83AD8()
{
  type metadata accessor for Artwork.ArtworkDictionary(0);
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F83B08()
{
  v0 = type metadata accessor for Artwork.ArtworkDictionary(0);
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

uint64_t sub_216F83B4C()
{
  v3 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for Artwork.ArtworkDictionary(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F83B84()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for Artwork.ArtworkDictionary(v2);
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

uint64_t sub_216F83C1C()
{
  type metadata accessor for Artwork.ArtworkDictionary(0);
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F83C4C()
{
  v0 = type metadata accessor for Artwork.ArtworkDictionary(0);
  if (OUTLINED_FUNCTION_35_0(*(v0 + 52)))
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

uint64_t sub_216F83C90()
{
  v3 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for Artwork.ArtworkDictionary(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F83CC8()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for Artwork.ArtworkDictionary(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 52)))
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

uint64_t sub_216F83D60()
{
  type metadata accessor for Artwork.ArtworkDictionary(0);
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F83D90()
{
  v0 = type metadata accessor for Artwork.ArtworkDictionary(0);
  if (OUTLINED_FUNCTION_35_0(*(v0 + 56)))
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

uint64_t sub_216F83DD4()
{
  v3 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for Artwork.ArtworkDictionary(v3);
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F83E0C()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for Artwork.ArtworkDictionary(v2);
  if (OUTLINED_FUNCTION_59_1(*(v3 + 56)))
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

uint64_t sub_216F83EA4()
{
  type metadata accessor for Artwork.ArtworkDictionary(0);
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F83EF4(char a1)
{
  result = OUTLINED_FUNCTION_28_51();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*sub_216F83F1C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_28_51();
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_216F2C6D4;
}

uint64_t sub_216F83F94()
{
  result = OUTLINED_FUNCTION_28_51();
  *(v0 + v2) = 2;
  return result;
}

uint64_t sub_216F83FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Artwork.ArtworkDictionary(0) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_216F84028()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for Artwork.ArtworkDictionary(v2) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t (*sub_216F84098())(void, void, void)
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for Artwork.ArtworkDictionary(v0);
  return nullsub_1;
}

uint64_t sub_216F840DC()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB23018);
  __swift_project_value_buffer(v0, qword_27CB23018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015230;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ARTWORK_SHAPE_UNSPECIFIED";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ARTWORK_SHAPE_SQUARE";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ARTWORK_SHAPE_CIRCLE";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F84368()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB23030);
  __swift_project_value_buffer(v0, qword_27CB23030);
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

uint64_t sub_216F84588()
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
      v3 = OUTLINED_FUNCTION_7_2();
      sub_216F8535C(v3, v4, v5, v6, v7);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_7_2();
      sub_216F84604();
    }
  }

  return result;
}

uint64_t sub_216F84604()
{
  type metadata accessor for Artwork(0);
  type metadata accessor for Artwork.ArtworkDictionary(0);
  sub_216F85F80(&qword_27CACF0A0, type metadata accessor for Artwork.ArtworkDictionary);
  return sub_2170079D4();
}

uint64_t sub_216F846B8()
{
  OUTLINED_FUNCTION_11_100();
  result = sub_216F84738(v1);
  if (!v0)
  {
    OUTLINED_FUNCTION_11_100();
    sub_216F85870(v3, v4, v5, v6, v7);
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F84738(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF040);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for Artwork.ArtworkDictionary(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Artwork(0);
  sub_216F82CD0(a1 + *(v8 + 20), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_216697664(v4, &qword_27CACF040);
  }

  sub_216F82DE4(v4, v7);
  sub_216F85F80(&qword_27CACF0A0, type metadata accessor for Artwork.ArtworkDictionary);
  sub_217007B04();
  return sub_216F8315C(v7);
}

uint64_t sub_216F848D8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  type metadata accessor for Artwork.ArtworkDictionary(v4);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF040);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF048) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = *(type metadata accessor for Artwork(0) + 20);
  v17 = *(v12 + 56);
  sub_216F82CD0(v2 + v16, v15);
  sub_216F82CD0(a2 + v16, &v15[v17]);
  OUTLINED_FUNCTION_24_3(v15);
  if (!v18)
  {
    sub_216F82CD0(v15, v11);
    OUTLINED_FUNCTION_24_3(&v15[v17]);
    if (!v18)
    {
      sub_216F82DE4(&v15[v17], v7);
      v21 = sub_216F85D2C(v11, v7);
      sub_216F8315C(v7);
      sub_216F8315C(v11);
      sub_216697664(v15, &qword_27CACF040);
      if ((v21 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_216F8315C(v11);
LABEL_9:
    sub_216697664(v15, &qword_27CACF048);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_3(&v15[v17]);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_216697664(v15, &qword_27CACF040);
LABEL_13:
  OUTLINED_FUNCTION_24();
  if (v24)
  {
    if (v22)
    {
      OUTLINED_FUNCTION_5_78(v23);
      v27 = v18 && v25 == v26;
      if (v27 || (sub_21700F7D4() & 1) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (!v22)
  {
LABEL_22:
    sub_217007884();
    OUTLINED_FUNCTION_12_100();
    sub_216F85F80(v28, v29);
    v19 = sub_21700E494();
    return v19 & 1;
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_216F84BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F85F80(&qword_27CACF0E0, type metadata accessor for Artwork);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F84C64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_110();
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();

  return v4(v3);
}

uint64_t sub_216F84CC8(uint64_t a1)
{
  v2 = sub_216F85F80(qword_27CAC77F0, type metadata accessor for Artwork);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F84D38()
{
  sub_216F85F80(qword_27CAC77F0, type metadata accessor for Artwork);

  return sub_217007A34();
}

uint64_t sub_216F84DE0()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB23048);
  __swift_project_value_buffer(v0, qword_27CB23048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_217072BE0;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "url";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_217007B14();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "width";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "height";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "bg_color";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "text_color1";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "text_color2";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "text_color3";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "text_color4";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "alt";
  *(v23 + 1) = 3;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "recommended_crop_codes";
  *(v25 + 1) = 22;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "has_p3";
  *(v27 + 1) = 6;
  v27[16] = 2;
  v8();
  return sub_217007B24();
}

uint64_t sub_216F8522C()
{
  OUTLINED_FUNCTION_21_3();
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
        v3 = OUTLINED_FUNCTION_7_2();
        sub_216F8535C(v3, v4, v5, v6, v7);
        break;
      case 2:
        OUTLINED_FUNCTION_7_2();
        sub_216F853C4();
        break;
      case 3:
        OUTLINED_FUNCTION_7_2();
        sub_216F85428();
        break;
      case 4:
        OUTLINED_FUNCTION_7_2();
        sub_216F8548C();
        break;
      case 5:
        OUTLINED_FUNCTION_7_2();
        sub_216F854F0();
        break;
      case 6:
        OUTLINED_FUNCTION_7_2();
        sub_216F85554();
        break;
      case 7:
        OUTLINED_FUNCTION_7_2();
        sub_216F855B8();
        break;
      case 8:
        OUTLINED_FUNCTION_7_2();
        sub_216F8561C();
        break;
      case 9:
        OUTLINED_FUNCTION_7_2();
        sub_216F85680();
        break;
      case 10:
        sub_217007984();
        break;
      case 11:
        OUTLINED_FUNCTION_7_2();
        sub_216F856E4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F85748()
{
  OUTLINED_FUNCTION_11_100();
  result = sub_216F85870(v2, v3, v4, v5, v6);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_1_236();
    sub_216F858F4(v8);
    v9 = OUTLINED_FUNCTION_1_236();
    sub_216F8596C(v9);
    v10 = OUTLINED_FUNCTION_1_236();
    sub_216F859E4(v10);
    v11 = OUTLINED_FUNCTION_1_236();
    sub_216F85A5C(v11);
    v12 = OUTLINED_FUNCTION_1_236();
    sub_216F85AD4(v12);
    v13 = OUTLINED_FUNCTION_1_236();
    sub_216F85B4C(v13);
    v14 = OUTLINED_FUNCTION_1_236();
    sub_216F85BC4(v14);
    v15 = OUTLINED_FUNCTION_1_236();
    sub_216F85C3C(v15);
    if (*(*v0 + 16))
    {
      OUTLINED_FUNCTION_11_100();
      sub_217007AB4();
    }

    v16 = OUTLINED_FUNCTION_1_236();
    sub_216F85CB4(v16);
    type metadata accessor for Artwork.ArtworkDictionary(0);
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F85870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F858F4(uint64_t a1)
{
  result = type metadata accessor for Artwork.ArtworkDictionary(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return sub_217007A94();
  }

  return result;
}

uint64_t sub_216F8596C(uint64_t a1)
{
  result = type metadata accessor for Artwork.ArtworkDictionary(0);
  if ((*(a1 + *(result + 32) + 4) & 1) == 0)
  {
    return sub_217007A94();
  }

  return result;
}

uint64_t sub_216F859E4(uint64_t a1)
{
  result = type metadata accessor for Artwork.ArtworkDictionary(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F85A5C(uint64_t a1)
{
  result = type metadata accessor for Artwork.ArtworkDictionary(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F85AD4(uint64_t a1)
{
  result = type metadata accessor for Artwork.ArtworkDictionary(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F85B4C(uint64_t a1)
{
  result = type metadata accessor for Artwork.ArtworkDictionary(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F85BC4(uint64_t a1)
{
  result = type metadata accessor for Artwork.ArtworkDictionary(0);
  if (*(a1 + *(result + 52) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F85C3C(uint64_t a1)
{
  result = type metadata accessor for Artwork.ArtworkDictionary(0);
  if (*(a1 + *(result + 56) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F85CB4(uint64_t a1)
{
  result = type metadata accessor for Artwork.ArtworkDictionary(0);
  if (*(a1 + *(result + 60)) != 2)
  {
    return sub_217007A74();
  }

  return result;
}

uint64_t sub_216F85D2C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5 = type metadata accessor for Artwork.ArtworkDictionary(v4);
  OUTLINED_FUNCTION_24();
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v7);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_29_1();
  if (v13)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_56();
    if (v14)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_29_1();
  if (v16)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_56();
    if (v17)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_24();
  if (v20)
  {
    if (!v18)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v19);
    v23 = v11 && v21 == v22;
    if (!v23 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v26)
  {
    if (!v24)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v25);
    v29 = v11 && v27 == v28;
    if (!v29 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v32)
  {
    if (!v30)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v31);
    v35 = v11 && v33 == v34;
    if (!v35 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v38)
  {
    if (!v36)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v37);
    v41 = v11 && v39 == v40;
    if (!v41 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v44)
  {
    if (!v42)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v43);
    v47 = v11 && v45 == v46;
    if (!v47 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v50)
  {
    if (!v48)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v49);
    v53 = v11 && v51 == v52;
    if (!v53 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  sub_216E20CEC();
  if ((v54 & 1) == 0)
  {
    return 0;
  }

  v55 = *(v5 + 60);
  v56 = *(v2 + v55);
  v57 = *(a2 + v55);
  if (v56 == 2)
  {
    if (v57 == 2)
    {
      goto LABEL_79;
    }

    return 0;
  }

  if (v57 == 2 || ((v56 ^ v57) & 1) != 0)
  {
    return 0;
  }

LABEL_79:
  sub_217007884();
  OUTLINED_FUNCTION_12_100();
  sub_216F85F80(v59, v60);
  return sub_21700E494() & 1;
}

uint64_t sub_216F85F80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216F86010(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21700F8F4();
  a1(0);
  sub_216F85F80(a2, a3);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F860CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F85F80(&qword_27CACF0D8, type metadata accessor for Artwork.ArtworkDictionary);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F86160(uint64_t a1)
{
  v2 = sub_216F85F80(&qword_27CACF0A0, type metadata accessor for Artwork.ArtworkDictionary);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F861D0()
{
  sub_216F85F80(&qword_27CACF0A0, type metadata accessor for Artwork.ArtworkDictionary);

  return sub_217007A34();
}

unint64_t sub_216F86254()
{
  result = qword_27CACF060;
  if (!qword_27CACF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF060);
  }

  return result;
}

unint64_t sub_216F862AC()
{
  result = qword_27CACF068;
  if (!qword_27CACF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF068);
  }

  return result;
}

unint64_t sub_216F86304()
{
  result = qword_27CACF070;
  if (!qword_27CACF070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACF078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF070);
  }

  return result;
}

unint64_t sub_216F8636C()
{
  result = qword_27CACF080;
  if (!qword_27CACF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF080);
  }

  return result;
}

void sub_216F86638()
{
  sub_217007884();
  if (v0 <= 0x3F)
  {
    sub_216F866F8();
    if (v1 <= 0x3F)
    {
      sub_2166DAB10(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216F866F8()
{
  if (!qword_27CACF0C0)
  {
    type metadata accessor for Artwork.ArtworkDictionary(255);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_27CACF0C0);
    }
  }
}

uint64_t sub_216F86778()
{
  sub_2166DAB10(319, &qword_280E29E40, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_217007884();
    if (v3 <= 0x3F)
    {
      sub_2166DAB10(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_2166DAB10(319, &qword_280E29AC8, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          sub_2166DAB10(319, &qword_280E29DE0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          v1 = v8;
          if (v9 <= 0x3F)
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

uint64_t sub_216F86904()
{
  v0 = type metadata accessor for ItemMetricsData();
  if (OUTLINED_FUNCTION_35_0(*(v0 + 20)))
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

uint64_t type metadata accessor for ItemMetricsData()
{
  result = qword_27CACF180;
  if (!qword_27CACF180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216F86994()
{
  OUTLINED_FUNCTION_11_101();
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F869C8()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_7_131(v1);
  if (OUTLINED_FUNCTION_59_1(*(v2 + 20)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v3, v4);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F86A5C()
{
  type metadata accessor for ItemMetricsData();
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F86A8C()
{
  type metadata accessor for ItemMetricsData();
  OUTLINED_FUNCTION_12_1();
  return OUTLINED_FUNCTION_28_52();
}

uint64_t (*sub_216F86AE4(uint64_t a1))(uint64_t result)
{
  *(v1 + 12) = *(OUTLINED_FUNCTION_36_51(a1) + 24);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_42_1(v2);
  return sub_216F22598;
}

uint64_t sub_216F86B7C()
{
  v0 = type metadata accessor for ItemMetricsData();
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

uint64_t sub_216F86BC0()
{
  OUTLINED_FUNCTION_11_101();
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F86BF4()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_7_131(v1);
  if (OUTLINED_FUNCTION_59_1(*(v2 + 28)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v3, v4);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F86C88()
{
  type metadata accessor for ItemMetricsData();
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F86CB8()
{
  v0 = type metadata accessor for ItemMetricsData();
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

uint64_t sub_216F86CFC()
{
  OUTLINED_FUNCTION_11_101();
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F86D30()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_7_131(v1);
  if (OUTLINED_FUNCTION_59_1(*(v2 + 32)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v3, v4);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F86DC4()
{
  type metadata accessor for ItemMetricsData();
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F86DF4()
{
  v0 = type metadata accessor for ItemMetricsData();
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

uint64_t sub_216F86E38()
{
  OUTLINED_FUNCTION_11_101();
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F86E6C()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_7_131(v1);
  if (OUTLINED_FUNCTION_59_1(*(v2 + 36)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v3, v4);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F86F00()
{
  type metadata accessor for ItemMetricsData();
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F86F30()
{
  v0 = type metadata accessor for ItemMetricsData();
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

uint64_t sub_216F86F74()
{
  OUTLINED_FUNCTION_11_101();
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F86FA8()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_7_131(v1);
  if (OUTLINED_FUNCTION_59_1(*(v2 + 40)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v3, v4);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F8703C()
{
  type metadata accessor for ItemMetricsData();
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F8706C()
{
  v0 = type metadata accessor for ItemMetricsData();
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

uint64_t sub_216F870B0()
{
  OUTLINED_FUNCTION_11_101();
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F870E4()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_7_131(v1);
  if (OUTLINED_FUNCTION_59_1(*(v2 + 44)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v3, v4);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F87178()
{
  type metadata accessor for ItemMetricsData();
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F871A8()
{
  v0 = type metadata accessor for ItemMetricsData();
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

uint64_t sub_216F871EC()
{
  OUTLINED_FUNCTION_11_101();
  result = OUTLINED_FUNCTION_79();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_216F87220()
{
  v0 = OUTLINED_FUNCTION_112();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_7_131(v1);
  if (OUTLINED_FUNCTION_59_1(*(v2 + 48)))
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  OUTLINED_FUNCTION_134(v3, v4);
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F872B4()
{
  type metadata accessor for ItemMetricsData();
  result = OUTLINED_FUNCTION_78();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_216F872E4()
{
  type metadata accessor for ItemMetricsData();
  OUTLINED_FUNCTION_12_1();
  return OUTLINED_FUNCTION_28_52();
}

uint64_t (*sub_216F8733C(uint64_t a1))(uint64_t result)
{
  *(v1 + 12) = *(OUTLINED_FUNCTION_36_51(a1) + 52);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_42_1(v2);
  return sub_216F27AAC;
}

uint64_t sub_216F873D4()
{
  type metadata accessor for ItemMetricsData();
  OUTLINED_FUNCTION_12_1();
  return OUTLINED_FUNCTION_28_52();
}

uint64_t (*sub_216F8742C(uint64_t a1))(uint64_t result)
{
  *(v1 + 12) = *(OUTLINED_FUNCTION_36_51(a1) + 56);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_42_1(v2);
  return sub_216F27AAC;
}

uint64_t sub_216F874C4(uint64_t a1)
{
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t sub_216F87594(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F89FB8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_216F8765C(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F89F64();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_216F87774(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F89F10();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void sub_216F877CC(uint64_t a1@<X8>)
{
  sub_217007874();
  v2 = type metadata accessor for ItemMetricsData();
  OUTLINED_FUNCTION_30_3(*(v2 + 20));
  OUTLINED_FUNCTION_40_1(a1 + *(v3 + 24));
  OUTLINED_FUNCTION_30_3(*(v4 + 28));
  OUTLINED_FUNCTION_30_3(*(v5 + 32));
  OUTLINED_FUNCTION_30_3(*(v6 + 36));
  OUTLINED_FUNCTION_30_3(*(v7 + 40));
  OUTLINED_FUNCTION_30_3(*(v8 + 44));
  OUTLINED_FUNCTION_30_3(*(v9 + 48));
  v11 = a1 + *(v10 + 52);
  *v11 = 0;
  *(v11 + 8) = v12;
  v13 = a1 + *(v10 + 56);
  *v13 = 0;
  *(v13 + 8) = v12;
}

uint64_t sub_216F8788C()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB23060);
  __swift_project_value_buffer(v0, qword_27CB23060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_217078060;
  v4 = v27 + v3;
  v5 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_217007B14();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "target_type";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "feature_name_override";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "action_url";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "click_target_id_override";
  *(v15 + 1) = 24;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "heading";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "artist_name";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "name";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "impression_type_override";
  *(v23 + 1) = 24;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "display_style";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v8();
  return sub_217007B24();
}

uint64_t sub_216F87CC0()
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
        OUTLINED_FUNCTION_7_2();
        sub_216F87DD0();
        break;
      case 2:
        OUTLINED_FUNCTION_7_2();
        sub_216F87E34();
        break;
      case 3:
        OUTLINED_FUNCTION_7_2();
        sub_216F87EA8();
        break;
      case 4:
        OUTLINED_FUNCTION_7_2();
        sub_216F87F0C();
        break;
      case 5:
        OUTLINED_FUNCTION_7_2();
        sub_216F87F70();
        break;
      case 6:
        OUTLINED_FUNCTION_7_2();
        sub_216F87FD4();
        break;
      case 7:
        OUTLINED_FUNCTION_7_2();
        sub_216F88038();
        break;
      case 8:
        OUTLINED_FUNCTION_7_2();
        sub_216F8809C();
        break;
      case 9:
        OUTLINED_FUNCTION_7_2();
        sub_216F88100();
        break;
      case 10:
        OUTLINED_FUNCTION_7_2();
        sub_216F88174();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F87E34()
{
  type metadata accessor for ItemMetricsData();
  sub_216F89FB8();
  return sub_217007954();
}

uint64_t sub_216F88100()
{
  type metadata accessor for ItemMetricsData();
  sub_216F89F64();
  return sub_217007954();
}

uint64_t sub_216F88174()
{
  type metadata accessor for ItemMetricsData();
  sub_216F89F10();
  return sub_217007954();
}

uint64_t sub_216F881E8()
{
  v1 = OUTLINED_FUNCTION_22_2();
  result = sub_216F882A0(v1);
  if (!v0)
  {
    v3 = OUTLINED_FUNCTION_22_2();
    sub_216F88318(v3);
    v4 = OUTLINED_FUNCTION_22_2();
    sub_216F883BC(v4);
    v5 = OUTLINED_FUNCTION_22_2();
    sub_216F88434(v5);
    v6 = OUTLINED_FUNCTION_22_2();
    sub_216F884AC(v6);
    v7 = OUTLINED_FUNCTION_22_2();
    sub_216F88524(v7);
    v8 = OUTLINED_FUNCTION_22_2();
    sub_216F8859C(v8);
    v9 = OUTLINED_FUNCTION_22_2();
    sub_216F88614(v9);
    v10 = OUTLINED_FUNCTION_22_2();
    sub_216F8868C(v10);
    v11 = OUTLINED_FUNCTION_22_2();
    sub_216F88730(v11);
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F882A0(uint64_t a1)
{
  result = type metadata accessor for ItemMetricsData();
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F88318(uint64_t a1)
{
  result = type metadata accessor for ItemMetricsData();
  if ((*(a1 + *(result + 24) + 9) & 1) == 0)
  {
    sub_216F89FB8();
    return sub_217007A84();
  }

  return result;
}

uint64_t sub_216F883BC(uint64_t a1)
{
  result = type metadata accessor for ItemMetricsData();
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F88434(uint64_t a1)
{
  result = type metadata accessor for ItemMetricsData();
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F884AC(uint64_t a1)
{
  result = type metadata accessor for ItemMetricsData();
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F88524(uint64_t a1)
{
  result = type metadata accessor for ItemMetricsData();
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F8859C(uint64_t a1)
{
  result = type metadata accessor for ItemMetricsData();
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F88614(uint64_t a1)
{
  result = type metadata accessor for ItemMetricsData();
  if (*(a1 + *(result + 48) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F8868C(uint64_t a1)
{
  result = type metadata accessor for ItemMetricsData();
  if ((*(a1 + *(result + 52) + 9) & 1) == 0)
  {
    sub_216F89F64();
    return sub_217007A84();
  }

  return result;
}

uint64_t sub_216F88730(uint64_t a1)
{
  result = type metadata accessor for ItemMetricsData();
  if ((*(a1 + *(result + 56) + 9) & 1) == 0)
  {
    sub_216F89F10();
    return sub_217007A84();
  }

  return result;
}

uint64_t sub_216F887D4()
{
  type metadata accessor for ItemMetricsData();
  OUTLINED_FUNCTION_24();
  if (v2)
  {
    if (!v0)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v1);
    v5 = v5 && v3 == v4;
    if (!v5 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_56();
  if (v7)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6)
    {
      return 0;
    }

    v8 = OUTLINED_FUNCTION_8_128();
    if (!sub_216F27A88(v8, v9, v10))
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_24();
  if (v13)
  {
    if (!v11)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v12);
    v16 = v5 && v14 == v15;
    if (!v16 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v19)
  {
    if (!v17)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v18);
    v22 = v5 && v20 == v21;
    if (!v22 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v25)
  {
    if (!v23)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v24);
    v28 = v5 && v26 == v27;
    if (!v28 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v31)
  {
    if (!v29)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v30);
    v34 = v5 && v32 == v33;
    if (!v34 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v37)
  {
    if (!v35)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v36);
    v40 = v5 && v38 == v39;
    if (!v40 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v43)
  {
    if (!v41)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v42);
    v46 = v5 && v44 == v45;
    if (!v46 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }

LABEL_69:
    OUTLINED_FUNCTION_56();
    if (v48)
    {
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v47)
      {
        return 0;
      }

      v49 = OUTLINED_FUNCTION_8_128();
      if (!sub_216F27A88(v49, v50, v51))
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_56();
    if (v53)
    {
      if ((v52 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v52)
      {
        return 0;
      }

      v54 = OUTLINED_FUNCTION_8_128();
      if (!sub_216F27A88(v54, v55, v56))
      {
        return 0;
      }
    }

    sub_217007884();
    sub_216F89EC8(&qword_27CACE018, MEMORY[0x277D216C8]);
    return sub_21700E494() & 1;
  }

  if (!v41)
  {
    goto LABEL_69;
  }

  return 0;
}

uint64_t sub_216F88A2C()
{
  sub_21700F8F4();
  type metadata accessor for ItemMetricsData();
  sub_216F89EC8(&qword_27CACF0E8, type metadata accessor for ItemMetricsData);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F88AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F89EC8(&qword_27CACF1A8, type metadata accessor for ItemMetricsData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F88B7C(uint64_t a1)
{
  v2 = sub_216F89EC8(&qword_27CACF170, type metadata accessor for ItemMetricsData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F88BEC()
{
  sub_216F89EC8(&qword_27CACF170, type metadata accessor for ItemMetricsData);

  return sub_217007A34();
}

uint64_t sub_216F88C6C()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB23078);
  __swift_project_value_buffer(v0, qword_27CB23078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217078070;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CLICK_TARGET_TYPE_UNSPECIFIED";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CLICK_TARGET_TYPE_BANNER";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CLICK_TARGET_TYPE_BRICK_ITEM";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CLICK_TARGET_TYPE_CARD";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CLICK_TARGET_TYPE_CATEGORY";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "CLICK_TARGET_TYPE_CONTENT_LIST_ITEM";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "CLICK_TARGET_TYPE_HINT_LIST_ITEM";
  *(v20 + 1) = 32;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "CLICK_TARGET_TYPE_FLOWCASE_ITEM";
  *(v22 + 1) = 31;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "CLICK_TARGET_TYPE_GRID_ITEM";
  *(v24 + 1) = 27;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "CLICK_TARGET_TYPE_POSTER_ITEM";
  *(v26 + 1) = 29;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "CLICK_TARGET_TYPE_PLATTER";
  *(v28 + 1) = 25;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "CLICK_TARGET_TYPE_SEARCH_QUERY_CONTEXT";
  *(v30 + 1) = 38;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "CLICK_TARGET_TYPE_SHELF_ITEM";
  *(v32 + 1) = 28;
  v32[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F89140(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();

  return v4(v3);
}

uint64_t sub_216F891A8()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB23090);
  __swift_project_value_buffer(v0, qword_27CB23090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217072BE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "IMPRESSION_TYPE_UNSPECIFIED";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IMPRESSION_TYPE_BANNER";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "IMPRESSION_TYPE_CONTAINER_DETAIL";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "IMPRESSION_TYPE_FOOTER";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "IMPRESSION_TYPE_GRID";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "IMPRESSION_TYPE_HEADER";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "IMPRESSION_TYPE_IMAGE";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "IMPRESSION_TYPE_NOTES";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "IMPRESSION_TYPE_SHELF";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "IMPRESSION_TYPE_TRACKS";
  *(v26 + 1) = 22;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "IMPRESSION_TYPE_SEARCH_QUERY_CONTEXT";
  *(v28 + 1) = 36;
  v28[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F89600()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB230A8);
  __swift_project_value_buffer(v0, qword_27CB230A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015230;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "IMPRESSION_DISPLAY_STYLE_UNSPECIFIED";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IMPRESSION_DISPLAY_STYLE_SMALL";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "IMPRESSION_DISPLAY_STYLE_LARGE";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  return sub_217007B24();
}

unint64_t sub_216F89854()
{
  result = qword_27CACF0F0;
  if (!qword_27CACF0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF0F0);
  }

  return result;
}

unint64_t sub_216F898AC()
{
  result = qword_27CACF0F8;
  if (!qword_27CACF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF0F8);
  }

  return result;
}

unint64_t sub_216F89934()
{
  result = qword_27CACF110;
  if (!qword_27CACF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF110);
  }

  return result;
}

unint64_t sub_216F8998C()
{
  result = qword_27CACF118;
  if (!qword_27CACF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF118);
  }

  return result;
}

unint64_t sub_216F899E4()
{
  result = qword_27CACF120;
  if (!qword_27CACF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF120);
  }

  return result;
}

unint64_t sub_216F89A6C()
{
  result = qword_27CACF138;
  if (!qword_27CACF138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF138);
  }

  return result;
}

unint64_t sub_216F89AC4()
{
  result = qword_27CACF140;
  if (!qword_27CACF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF140);
  }

  return result;
}

unint64_t sub_216F89B1C()
{
  result = qword_27CACF148;
  if (!qword_27CACF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF148);
  }

  return result;
}

unint64_t sub_216F89BA4()
{
  result = qword_27CACF160;
  if (!qword_27CACF160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF160);
  }

  return result;
}

uint64_t sub_216F89D58()
{
  v0 = sub_217007884();
  if (v1 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_216688560(319, &qword_27CACF190);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_216688560(319, &qword_27CACF198);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          sub_216688560(319, &qword_27CACF1A0);
          v0 = v8;
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_216F89EC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216F89F10()
{
  result = qword_27CACF1B0;
  if (!qword_27CACF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF1B0);
  }

  return result;
}

unint64_t sub_216F89F64()
{
  result = qword_27CACF1B8;
  if (!qword_27CACF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF1B8);
  }

  return result;
}

unint64_t sub_216F89FB8()
{
  result = qword_27CACF1C0;
  if (!qword_27CACF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACF1C0);
  }

  return result;
}

uint64_t sub_216F8A00C()
{
  v1 = (v0 + *(type metadata accessor for BaseURLRequest() + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  sub_21700DF14();
  return v2;
}

uint64_t type metadata accessor for BaseURLRequest()
{
  result = qword_280E4A218;
  if (!qword_280E4A218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216F8A0AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BaseURLRequest() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*sub_216F8A0F4(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for BaseURLRequest() + 24);
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;
  sub_21700DF14();
  return sub_216F22838;
}

uint64_t sub_216F8A1C0()
{
  v1 = (v0 + *(type metadata accessor for BaseURLRequest() + 24));

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_216F8A1F8()
{
  type metadata accessor for BaseURLRequest();
  OUTLINED_FUNCTION_12_1();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t (*sub_216F8A264(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *(a1 + 12) = *(type metadata accessor for BaseURLRequest() + 28);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_42_1(v2);
  return sub_216F27AAC;
}

uint64_t sub_216F8A310()
{
  type metadata accessor for BaseURLRequest();
  OUTLINED_FUNCTION_12_1();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t (*sub_216F8A37C(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *(a1 + 12) = *(type metadata accessor for BaseURLRequest() + 32);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_42_1(v2);
  return sub_216F22598;
}

double sub_216F8A428()
{
  v0 = type metadata accessor for BaseURLRequest();
  result = OUTLINED_FUNCTION_11_94(*(v0 + 36));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t sub_216F8A450(double a1)
{
  result = type metadata accessor for BaseURLRequest();
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_216F8A488(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for BaseURLRequest() + 36);
  *(a1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_11_94(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *a1 = v4;
  return sub_216F22190;
}

uint64_t sub_216F8A510()
{
  result = type metadata accessor for BaseURLRequest();
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_216F8A540()
{
  type metadata accessor for BaseURLRequest();
  OUTLINED_FUNCTION_13_90();
  if (v0[4])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void sub_216F8A570(int a1)
{
  type metadata accessor for BaseURLRequest();
  OUTLINED_FUNCTION_13_90();
  *v2 = a1;
  *(v2 + 4) = 0;
}

uint64_t (*sub_216F8A5A4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for BaseURLRequest() + 40);
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

BOOL sub_216F8A60C()
{
  type metadata accessor for BaseURLRequest();
  OUTLINED_FUNCTION_13_90();
  return OUTLINED_FUNCTION_52_0(*(v0 + 4));
}

void sub_216F8A634()
{
  type metadata accessor for BaseURLRequest();
  OUTLINED_FUNCTION_13_90();
  *v0 = 0;
  *(v0 + 4) = 1;
}

uint64_t sub_216F8A660@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BaseURLRequest() + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_216F8A6D4(uint64_t a1)
{
  v3 = *(type metadata accessor for BaseURLRequest() + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t sub_216F8A800(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F8C8D4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_216F8A924(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F8C880();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void sub_216F8A97C(uint64_t *a1@<X8>)
{
  *a1 = sub_21700E384();
  v2 = type metadata accessor for BaseURLRequest();
  sub_217007874();
  v3 = (a1 + v2[6]);
  *v3 = 0;
  v3[1] = 0;
  OUTLINED_FUNCTION_40_1(a1 + v2[7]);
  v4 = a1 + v2[8];
  *v4 = 0;
  *(v4 + 4) = v5;
  v6 = a1 + v2[9];
  *v6 = 0;
  v6[8] = 1;
  v7 = a1 + v2[10];
  *v7 = 0;
  v7[4] = 1;
}

uint64_t sub_216F8AA54()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB230C0);
  __swift_project_value_buffer(v0, qword_27CB230C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015220;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "url";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "method";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cachePolicy";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "timeoutInterval";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "retryCount";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "headers";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F8AD64()
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
        OUTLINED_FUNCTION_7_2();
        sub_216F8AE34();
        break;
      case 2:
        OUTLINED_FUNCTION_7_2();
        sub_216F8AE98();
        break;
      case 3:
        OUTLINED_FUNCTION_7_2();
        sub_216F8AF0C();
        break;
      case 4:
        OUTLINED_FUNCTION_7_2();
        sub_216F8AF80();
        break;
      case 5:
        OUTLINED_FUNCTION_7_2();
        sub_216F8AFE4();
        break;
      case 6:
        OUTLINED_FUNCTION_7_2();
        sub_216F8B048();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F8AE98()
{
  type metadata accessor for BaseURLRequest();
  sub_216F8C8D4();
  return sub_217007954();
}

uint64_t sub_216F8AF0C()
{
  type metadata accessor for BaseURLRequest();
  sub_216F8C880();
  return sub_217007954();
}

uint64_t sub_216F8B0C0()
{
  result = sub_216F8B1D4(v0);
  if (!v1)
  {
    v3 = OUTLINED_FUNCTION_4_0();
    sub_216F8B24C(v3);
    v4 = OUTLINED_FUNCTION_4_0();
    sub_216F8B2F0(v4);
    v5 = OUTLINED_FUNCTION_4_0();
    sub_216F8B394(v5);
    v6 = OUTLINED_FUNCTION_4_0();
    sub_216F8B40C(v6);
    if (*(*v0 + 16))
    {
      sub_217007854();
      sub_217007A54();
    }

    type metadata accessor for BaseURLRequest();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F8B1D4(uint64_t a1)
{
  result = type metadata accessor for BaseURLRequest();
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F8B24C(uint64_t a1)
{
  result = type metadata accessor for BaseURLRequest();
  if ((*(a1 + *(result + 28) + 9) & 1) == 0)
  {
    sub_216F8C8D4();
    return sub_217007A84();
  }

  return result;
}

uint64_t sub_216F8B2F0(uint64_t a1)
{
  result = type metadata accessor for BaseURLRequest();
  if ((*(a1 + *(result + 32) + 9) & 1) == 0)
  {
    sub_216F8C880();
    return sub_217007A84();
  }

  return result;
}

uint64_t sub_216F8B394(uint64_t a1)
{
  result = type metadata accessor for BaseURLRequest();
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_217007AC4();
  }

  return result;
}

uint64_t sub_216F8B40C(uint64_t a1)
{
  result = type metadata accessor for BaseURLRequest();
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return sub_217007A94();
  }

  return result;
}

uint64_t sub_216F8B484(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for BaseURLRequest();
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 9);
  v14 = a2 + v11;
  if (v13)
  {
    if ((v14[9] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v14[9])
    {
      return 0;
    }

    v19 = *v12;
    v20 = *v14;
    if (v14[8])
    {
      switch(v20)
      {
        case 1:
          if (v19 != 1)
          {
            return 0;
          }

          goto LABEL_12;
        case 2:
          if (v19 != 2)
          {
            return 0;
          }

          goto LABEL_12;
        case 3:
          if (v19 != 3)
          {
            return 0;
          }

          goto LABEL_12;
        case 4:
          if (v19 != 4)
          {
            return 0;
          }

          goto LABEL_12;
        case 5:
          if (v19 != 5)
          {
            return 0;
          }

          goto LABEL_12;
        case 6:
          if (v19 != 6)
          {
            return 0;
          }

          goto LABEL_12;
        case 7:
          if (v19 != 7)
          {
            return 0;
          }

          goto LABEL_12;
        case 8:
          if (v19 != 8)
          {
            return 0;
          }

          goto LABEL_12;
        case 9:
          if (v19 != 9)
          {
            return 0;
          }

          goto LABEL_12;
        default:
          if (!v19)
          {
            goto LABEL_12;
          }

          return 0;
      }
    }

    if (v19 != v20)
    {
      return 0;
    }
  }

LABEL_12:
  v15 = v4[8];
  v16 = a1 + v15;
  v17 = *(a1 + v15 + 9);
  v18 = a2 + v15;
  if (v17)
  {
    if ((v18[9] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v18[9] & 1) != 0 || !sub_216F27A88(*v16, v16[8] & 1, *v18))
  {
    return 0;
  }

  v21 = v4[9];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v4[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  if (sub_216F8C118(*a1, *a2))
  {
    sub_217007884();
    sub_216F8C838(&qword_27CACE018, MEMORY[0x277D216C8]);
    return sub_21700E494() & 1;
  }

  return 0;
}

uint64_t sub_216F8B6F0()
{
  sub_21700F8F4();
  type metadata accessor for BaseURLRequest();
  sub_216F8C838(&qword_27CACF1C8, type metadata accessor for BaseURLRequest);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F8B7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F8C838(&qword_27CACF238, type metadata accessor for BaseURLRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F8B840(uint64_t a1)
{
  v2 = sub_216F8C838(&qword_27CACF228, type metadata accessor for BaseURLRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F8B8B0()
{
  sub_216F8C838(&qword_27CACF228, type metadata accessor for BaseURLRequest);

  return sub_217007A34();
}

uint64_t sub_216F8B930()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB230D8);
  __swift_project_value_buffer(v0, qword_27CB230D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217078060;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "METHOD_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "METHOD_GET";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "METHOD_HEAD";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "METHOD_PATCH";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "METHOD_POST";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "METHOD_PUT";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "METHOD_DELETE";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "METHOD_CONNECT";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "METHOD_OPTIONS";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "METHOD_TRACE";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v9();
  return sub_217007B24();
}