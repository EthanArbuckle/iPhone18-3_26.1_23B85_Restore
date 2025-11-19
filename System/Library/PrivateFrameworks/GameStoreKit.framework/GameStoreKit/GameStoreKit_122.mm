uint64_t sub_24F282A64@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

GameStoreKit::MetadataRibbonItemType_optional __swiftcall MetadataRibbonItemType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MetadataRibbonItemType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 6775156;
    v7 = 0x72656469766964;
    if (v1 != 8)
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    if (v1 != 5)
    {
      v8 = 0x65706F6C65766564;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6974615272657375;
    v3 = 0xD000000000000010;
    v4 = 0xD000000000000015;
    if (v1 != 3)
    {
      v4 = 0xD00000000000001FLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x736F507472616863;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24F282C8C()
{
  sub_24F92D068();
  sub_24F203BAC();
  return sub_24F92D0B8();
}

uint64_t sub_24F282CDC()
{
  sub_24F92D068();
  sub_24F203BAC();
  return sub_24F92D0B8();
}

unint64_t sub_24F282D2C@<X0>(unint64_t *a1@<X8>)
{
  result = MetadataRibbonItemType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::MetadataRibbonItemViewType_optional __swiftcall MetadataRibbonItemViewType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MetadataRibbonItemViewType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4373726F74696465;
  v3 = 0x72656469766964;
  if (v1 != 5)
  {
    v3 = 0x6867696C68676968;
  }

  v4 = 0x6974615272617473;
  if (v1 != 3)
  {
    v4 = 0x6562614C74786574;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x7469576567616D69;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F282ED4()
{
  sub_24F92B218();
}

void sub_24F283028(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006563696F68;
  v4 = 0x4373726F74696465;
  v5 = 0xE700000000000000;
  v6 = 0x72656469766964;
  if (v2 != 5)
  {
    v6 = 0x6867696C68676968;
    v5 = 0xEF74786554646574;
  }

  v7 = 0xEA0000000000676ELL;
  v8 = 0x6974615272617473;
  if (v2 != 3)
  {
    v8 = 0x6562614C74786574;
    v7 = 0xE90000000000006CLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x7469576567616D69;
    v3 = 0xEE006C6562614C68;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000024FA42DD0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t MetadataRibbonItem.__allocating_init(id:itemType:viewContainerType:labelText:artwork:borderedText:highlightedText:starRating:borderTextViewPlacement:useAdsLocale:impressionMetrics:maxCharacterCount:truncationLegibilityCharacterCountThreshold:allowsTruncation:)(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, char *a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, char a19)
{
  v23 = swift_allocObject();
  LOBYTE(a2) = *a2;
  LOBYTE(a3) = *a3;
  v24 = *a12;
  v25 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  v26 = sub_24F929608();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  v27 = v23 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_maxCharacterCount;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v23 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  *v28 = 0;
  *(v28 + 8) = 1;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation) = 2;
  v29 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v29;
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 56) = a2;
  *(v23 + 57) = a3;
  *(v23 + 64) = a4;
  *(v23 + 72) = a5;
  *(v23 + 80) = a6;
  *(v23 + 88) = a7;
  *(v23 + 96) = a8;
  *(v23 + 104) = a10;
  *(v23 + 112) = a11;
  *(v23 + 120) = a9;
  *(v23 + 124) = v24;
  *(v23 + 125) = a13;
  v30 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  sub_24F2835A0(a14, v23 + v30);
  swift_endAccess();
  v31 = v23 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_maxCharacterCount;
  swift_beginAccess();
  *v31 = a15;
  *(v31 + 8) = a16 & 1;
  v32 = v23 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  swift_beginAccess();
  *v32 = a17;
  *(v32 + 8) = a18 & 1;
  v33 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation;
  swift_beginAccess();
  *(v23 + v33) = a19;
  return v23;
}

uint64_t MetadataRibbonItem.init(id:itemType:viewContainerType:labelText:artwork:borderedText:highlightedText:starRating:borderTextViewPlacement:useAdsLocale:impressionMetrics:maxCharacterCount:truncationLegibilityCharacterCountThreshold:allowsTruncation:)(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, char *a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, char a19)
{
  v22 = *a2;
  v23 = *a3;
  v24 = *a12;
  v25 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  v26 = sub_24F929608();
  (*(*(v26 - 8) + 56))(v19 + v25, 1, 1, v26);
  v27 = v19 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_maxCharacterCount;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v19 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  *v28 = 0;
  *(v28 + 8) = 1;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation) = 2;
  v29 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v29;
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 56) = v22;
  *(v19 + 57) = v23;
  *(v19 + 64) = a4;
  *(v19 + 72) = a5;
  *(v19 + 80) = a6;
  *(v19 + 88) = a7;
  *(v19 + 96) = a8;
  *(v19 + 104) = a10;
  *(v19 + 112) = a11;
  *(v19 + 120) = a9;
  *(v19 + 124) = v24;
  *(v19 + 125) = a13;
  v30 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  sub_24F2835A0(a14, v19 + v30);
  swift_endAccess();
  v31 = v19 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_maxCharacterCount;
  swift_beginAccess();
  *v31 = a15;
  *(v31 + 8) = a16 & 1;
  v32 = v19 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  swift_beginAccess();
  *v32 = a17;
  *(v32 + 8) = a18 & 1;
  v33 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation;
  swift_beginAccess();
  *(v19 + v33) = a19;
  return v19;
}

uint64_t sub_24F2835A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MetadataRibbonItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v90 = a2;
  v80 = sub_24F91F6B8();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v64 - v8;
  MEMORY[0x28223BE20](v9);
  v87 = &v64 - v10;
  v11 = sub_24F9285B8();
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x28223BE20](v11);
  v86 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v83 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v82 = &v64 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v64 - v22;
  sub_24F928398();
  sub_24F2842F4();
  sub_24F928248();
  v24 = *(v14 + 8);
  v24(v23, v13);
  if (v93 == 7)
  {
    v25 = sub_24F92AC38();
    sub_24F284BA4(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v26 = 0x6570795477656976;
    v26[1] = 0xE800000000000000;
    v26[2] = v81;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    (*(v88 + 8))(v90, v89);
    return (v24)(a1, v13);
  }

  else
  {
    v77 = v93;
    v81 = v2;
    sub_24F928398();
    sub_24F284348();
    sub_24F928208();
    v24(v23, v13);
    v76 = v93;
    sub_24F928398();
    v75 = sub_24F928348();
    v74 = v28;
    v24(v23, v13);
    type metadata accessor for Artwork();
    sub_24F928398();
    v66 = *(v88 + 16);
    v66(v86, v90, v89);
    sub_24F284BA4(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    v73 = v93;
    sub_24F928398();
    v72 = sub_24F928348();
    v71 = v29;
    v24(v23, v13);
    sub_24F928398();
    v70 = sub_24F928348();
    v69 = v30;
    v24(v23, v13);
    sub_24F928398();
    v31 = sub_24F9282C8();
    v24(v20, v13);
    if ((v31 & 0x100000000) != 0)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = *&v31;
    }

    sub_24F928398();
    sub_24F28439C();
    sub_24F928208();
    v24(v23, v13);
    v68 = v93;
    v33 = v82;
    sub_24F928398();
    v67 = sub_24F928278();
    v24(v33, v13);
    v34 = sub_24F929608();
    sub_24F928398();
    v66(v86, v90, v89);
    sub_24F929548();
    sub_24F928398();
    v35 = sub_24F928258();
    LODWORD(v86) = v36;
    v24(v23, v13);
    sub_24F928398();
    v82 = sub_24F928258();
    LODWORD(v66) = v37;
    v24(v23, v13);
    sub_24F928398();
    v65 = sub_24F928278();
    v24(v23, v13);
    v38 = v83;
    sub_24F928398();
    v39 = sub_24F928348();
    if (v40)
    {
      v91 = v39;
      v92 = v40;
      sub_24F92C7F8();
      (*(v88 + 8))(v90, v89);
      v24(a1, v13);
      v41 = v38;
    }

    else
    {
      v42 = v78;
      sub_24F91F6A8();
      v43 = sub_24F91F668();
      v64 = v35;
      v44 = v38;
      v46 = v45;
      (*(v79 + 8))(v42, v80);
      v91 = v43;
      v92 = v46;
      sub_24F92C7F8();
      (*(v88 + 8))(v90, v89);
      v24(a1, v13);
      v41 = v44;
      v35 = v64;
    }

    v24(v41, v13);
    v47 = v84;
    sub_24E65E0D4(v87, v84);
    v48 = *(v34 - 8);
    v49 = *(v48 + 48);
    v50 = v49(v47, 1, v34);
    v51 = v85;
    if (v50 == 1)
    {
      v52 = *(v48 + 56);
      v52(v85, 1, 1, v34);
      if (v49(v47, 1, v34) != 1)
      {
        sub_24EB05BC8(v47);
      }
    }

    else
    {
      (*(v48 + 32))(v85, v47, v34);
      v52 = *(v48 + 56);
      v52(v51, 0, 1, v34);
    }

    type metadata accessor for MetadataRibbonItem();
    v53 = swift_allocObject();
    v52((v53 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics), 1, 1, v34);
    v54 = v53 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_maxCharacterCount;
    *v54 = 0;
    *(v54 + 8) = 1;
    v55 = v53 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
    *v55 = 0;
    *(v55 + 8) = 1;
    *(v53 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation) = 2;
    v56 = v94;
    *(v53 + 16) = v93;
    *(v53 + 32) = v56;
    *(v53 + 48) = v95;
    *(v53 + 56) = v76;
    *(v53 + 57) = v77;
    v57 = v74;
    *(v53 + 64) = v75;
    *(v53 + 72) = v57;
    v58 = v72;
    *(v53 + 80) = v73;
    *(v53 + 88) = v58;
    v59 = v70;
    *(v53 + 96) = v71;
    *(v53 + 104) = v59;
    *(v53 + 112) = v69;
    *(v53 + 120) = v32;
    *(v53 + 124) = v68;
    *(v53 + 125) = v67 & 1;
    v60 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
    swift_beginAccess();
    sub_24F2835A0(v51, v53 + v60);
    swift_endAccess();
    v61 = v53 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_maxCharacterCount;
    swift_beginAccess();
    *v61 = v35;
    *(v61 + 8) = v86 & 1;
    v62 = v53 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
    swift_beginAccess();
    *v62 = v82;
    *(v62 + 8) = v66 & 1;
    v63 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation;
    swift_beginAccess();
    result = v53;
    *(v53 + v63) = v65;
  }

  return result;
}

unint64_t sub_24F2842F4()
{
  result = qword_27F23D7B0;
  if (!qword_27F23D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D7B0);
  }

  return result;
}

unint64_t sub_24F284348()
{
  result = qword_27F23D7B8;
  if (!qword_27F23D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D7B8);
  }

  return result;
}

unint64_t sub_24F28439C()
{
  result = qword_27F23D7C0;
  if (!qword_27F23D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D7C0);
  }

  return result;
}

uint64_t type metadata accessor for MetadataRibbonItem()
{
  result = qword_27F23D7E8;
  if (!qword_27F23D7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MetadataRibbonItem.labelText.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t MetadataRibbonItem.borderedText.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t MetadataRibbonItem.highlightedText.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_24F284514(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24E643844(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  sub_24F2835A0(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_24F2845D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  return sub_24E643844(v1 + v3, a1);
}

uint64_t sub_24F28462C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  sub_24F2835A0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24F2846F8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_maxCharacterCount;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_24F2847C4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_24F284884()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24F2848C8(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MetadataRibbonItem.deinit()
{
  sub_24E6585F8(v0 + 16);

  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics);
  return v0;
}

uint64_t MetadataRibbonItem.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 16);

  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics);

  return swift_deallocClassInstance();
}

unint64_t sub_24F284A58()
{
  result = qword_27F23D7C8;
  if (!qword_27F23D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D7C8);
  }

  return result;
}

unint64_t sub_24F284AB0()
{
  result = qword_27F23D7D0;
  if (!qword_27F23D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D7D0);
  }

  return result;
}

unint64_t sub_24F284B08()
{
  result = qword_27F23D7D8;
  if (!qword_27F23D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D7D8);
  }

  return result;
}

uint64_t sub_24F284BA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F284BFC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MetadataRibbonItem.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F284C28@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  return sub_24E643844(v3 + v4, a1);
}

uint64_t sub_24F284C84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  return sub_24E643844(v3 + v4, a2);
}

uint64_t keypath_set_5Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

uint64_t sub_24F284D70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24F284DC8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_24F284E54()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t GamesSignInAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GamesSignInAction() + 28);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for GamesSignInAction()
{
  result = qword_27F23D810;
  if (!qword_27F23D810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F2852EC()
{
  v1 = 0x4173736563637573;
  if (*v0 != 2)
  {
    v1 = 0x654D6E6F69746361;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24F285384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F285F14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F2853AC(uint64_t a1)
{
  v2 = sub_24F2856B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2853E8(uint64_t a1)
{
  v2 = sub_24F2856B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GamesSignInAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D7F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F2856B0();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD18();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD18();
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E6419D0(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    type metadata accessor for GamesSignInAction();
    v8[12] = 3;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F2856B0()
{
  result = qword_27F23D800;
  if (!qword_27F23D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D800);
  }

  return result;
}

uint64_t GamesSignInAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_24F928AD8();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D808);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for GamesSignInAction();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 8) = 0u;
  v12 = (v11 + 8);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  *(v11 + 24) = 0u;
  *(v11 + 5) = 0;
  sub_24E61DA68(v28, (v11 + 8), qword_27F21B590);
  v13 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F2856B0();
  v25 = v8;
  v14 = v26;
  sub_24F92D108();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
    return sub_24E641EA0(v12);
  }

  else
  {
    v15 = v5;
    LOBYTE(v28[0]) = 0;
    v17 = v23;
    v16 = v24;
    *v11 = sub_24F92CC38() & 1;
    LOBYTE(v28[0]) = 1;
    v11[1] = sub_24F92CC38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v30 = 2;
    sub_24E6419D0(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(v28, v12, qword_27F24EC90);
    LOBYTE(v28[0]) = 3;
    sub_24E674184(&qword_27F254CB0);
    v18 = v25;
    sub_24F92CC68();
    (*(v17 + 8))(v18, v16);
    (*(v21 + 32))(&v11[*(v9 + 28)], v15, v3);
    sub_24F285AF4(v11, v22);
    __swift_destroy_boxed_opaque_existential_1(v27);
    return sub_24F285B58(v11);
  }
}

uint64_t sub_24F285AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesSignInAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F285B58(uint64_t a1)
{
  v2 = type metadata accessor for GamesSignInAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F285BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
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
    v9 = sub_24F928AD8();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24F285CC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F285D68()
{
  sub_24E61C8D4();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F285E10()
{
  result = qword_27F23D820;
  if (!qword_27F23D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D820);
  }

  return result;
}

unint64_t sub_24F285E68()
{
  result = qword_27F23D828;
  if (!qword_27F23D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D828);
  }

  return result;
}

unint64_t sub_24F285EC0()
{
  result = qword_27F23D830;
  if (!qword_27F23D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D830);
  }

  return result;
}

uint64_t sub_24F285F14(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA71800 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA71820 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 3;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t AdvertsSearchResult.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AdvertsSearchResult.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t AdvertsSearchResult.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v83 = a2;
  v73 = *v3;
  v77 = sub_24F9285B8();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v72 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v66 - v7;
  v68 = sub_24F91F6B8();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - v14;
  MEMORY[0x28223BE20](v16);
  v84 = &v66 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v66 - v22;
  v24 = OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_itemBackground;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_itemBackground) = 4;
  v78 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v25 = *(v10 + 8);
  v80 = v9;
  v82 = v10 + 8;
  v79 = v25;
  v25(v20, v9);
  v26 = sub_24F92AC28();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v23, 1, v26);
  v74 = v12;
  if (v28 == 1)
  {
    sub_24E601704(v23, &qword_27F2213B0);
    v29 = MEMORY[0x277D84F90];
  }

  else
  {
    MEMORY[0x28223BE20](v28);
    *(&v66 - 2) = v30;
    type metadata accessor for MixedMediaLockup();
    v31 = v81;
    v29 = sub_24F92ABB8();
    v81 = v31;
    (*(v27 + 8))(v23, v26);
  }

  *(v3 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups) = v29;

  v32 = v84;
  sub_24F928398();
  sub_24EECEFD0();
  sub_24F928248();
  v33 = v32;
  v34 = v80;
  v35 = v3;
  v36 = v79;
  v79(v33, v80);
  LOBYTE(v87) = v90;
  sub_24F286E00(&v87, v94);
  v37 = v94[0];
  swift_beginAccess();
  *(v35 + v24) = v37;
  sub_24F928398();
  v38 = sub_24F928278();
  v36(v15, v34);
  v73 = v35;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_displaysScreenshots) = v38 & 1;
  v39 = v74;
  sub_24F928398();
  v40 = sub_24F928348();
  if (v41)
  {
    *&v90 = v40;
    *(&v90 + 1) = v41;
  }

  else
  {
    v42 = v66;
    sub_24F91F6A8();
    v43 = sub_24F91F668();
    v45 = v44;
    (*(v67 + 8))(v42, v68);
    *&v90 = v43;
    *(&v90 + 1) = v45;
  }

  sub_24F92C7F8();
  v36(v39, v34);
  v46 = v84;
  sub_24F928398();
  sub_24EABA874();
  sub_24F928208();
  v36(v46, v34);
  v47 = v94[87];
  if (v29 >> 62)
  {
    result = sub_24F92C738();
  }

  else
  {
    result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  LODWORD(v74) = v47;
  if (!result)
  {

    goto LABEL_15;
  }

  if ((v29 & 0xC000000000000001) == 0)
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v49 = *(v29 + 32);

    v50 = *(v49 + 264);

    if (v50)
    {
      goto LABEL_13;
    }

LABEL_15:
    v71 = 0;
    v70 = 0;
    v69 = 0;
    goto LABEL_16;
  }

  v65 = MEMORY[0x253052270](0, v29);

  v50 = *(v65 + 264);

  swift_unknownObjectRelease();
  if (!v50)
  {
    goto LABEL_15;
  }

LABEL_13:
  v71 = v50;
  v70 = type metadata accessor for Action();
  v69 = sub_24F287648(&qword_27F216DE8, type metadata accessor for Action);
LABEL_16:
  sub_24F929608();
  sub_24F928398();
  v51 = *(v76 + 16);
  v52 = v72;
  v53 = v83;
  v54 = v77;
  v51(v72, v83, v77);
  sub_24F929548();
  type metadata accessor for SearchAdOpportunity();
  sub_24F928398();
  v51(v52, v53, v54);
  sub_24F287648(&qword_27F227228, type metadata accessor for SearchAdOpportunity);
  sub_24F929548();
  v55 = v93;
  v56 = v73;
  *(v73 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E65E064(v94, &v87);
  if (*(&v88 + 1))
  {
    v90 = v87;
    v91 = v88;
    v92 = v89;
  }

  else
  {
    v57 = v66;
    sub_24F91F6A8();
    v58 = sub_24F91F668();
    v60 = v59;
    (*(v67 + 8))(v57, v68);
    v85 = v58;
    v86 = v60;
    sub_24F92C7F8();
    sub_24E601704(&v87, &qword_27F235830);
  }

  v79(v78, v80);
  sub_24E601704(v94, &qword_27F235830);
  v61 = v91;
  *(v56 + 3) = v90;
  *(v56 + 5) = v61;
  v62 = v71;
  v56[7] = v92;
  v56[8] = v62;
  v56[9] = 0;
  v56[10] = 0;
  v63 = v69;
  v56[11] = v70;
  v56[12] = v63;
  sub_24E65E0D4(v75, v56 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v56 + 17) = 1;
  *(v56 + 16) = v74;
  v64 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v56 + v64) = v55;

  (*(v76 + 8))(v83, v77);
  return v56;
}

uint64_t sub_24F286C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MixedMediaLockup();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24F287648(&qword_27F22B2C0, type metadata accessor for MixedMediaLockup);
  return sub_24F929548();
}

void sub_24F286E00(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (v3 != 4 && (sub_24F0D0260(*a1, 2u) & 1) != 0)
  {
    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      LOBYTE(v3) = 4;
    }
  }

  *a2 = v3;
}

uint64_t sub_24F286EC8@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_itemBackground;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24F286F1C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_itemBackground;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_24F286FCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = sub_24F92C738();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = *(MEMORY[0x253052270](0, v1) + 264);

    swift_unknownObjectRelease();
    return v3;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(*(v1 + 32) + 264);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F287078@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups);
  if (v3 >> 62)
  {
    result = sub_24F92C738();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x253052270](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

LABEL_6:
    result = type metadata accessor for Lockup();
    *(a1 + 24) = result;
    *a1 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t AdvertsSearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t AdvertsSearchResult.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24F28726C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = sub_24F92C738();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = *(MEMORY[0x253052270](0, v1) + 264);

    swift_unknownObjectRelease();
    return v3;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(*(v1 + 32) + 264);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F28731C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups);
  if (v3 >> 62)
  {
    result = sub_24F92C738();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x253052270](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

LABEL_6:
    result = type metadata accessor for Lockup();
    *(a1 + 24) = result;
    *a1 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F2873C8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_itemBackground;
  result = swift_beginAccess();
  *a1 = *(v3 + v4);
  return result;
}

uint64_t sub_24F287420@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_itemBackground;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24F287478(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_itemBackground;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t type metadata accessor for AdvertsSearchResult()
{
  result = qword_27F23D838;
  if (!qword_27F23D838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F287648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SelectAppAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v27 = *v3;
  v31 = sub_24F9285B8();
  v35 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v33 = a1;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v7 + 8);
  v34 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v30 + OBJC_IVAR____TtC12GameStoreKit15SelectAppAction_adamId);
    *v17 = v13;
    v17[1] = v15;
    v18 = v33;
    (*(v7 + 16))(v10, v33, v34);
    v6 = v28;
    v20 = v31;
    v19 = v32;
    (*(v35 + 16))(v28, v32, v31);
    v21 = v29;
    v22 = Action.init(deserializing:using:)(v10, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v35 + 8))(v19, v20);
    v16(v18, v34);
  }

  else
  {
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v24 = 0x64496D616461;
    v25 = v27;
    v24[1] = 0xE600000000000000;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    (*(v35 + 8))(v32, v31);
    v16(v33, v34);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t SelectAppAction.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit15SelectAppAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit15SelectAppAction_adamId);
  a1[1] = v2;
}

uint64_t SelectAppAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t SelectAppAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SelectAppAction()
{
  result = qword_27F23D848;
  if (!qword_27F23D848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F287DA8()
{
  if (*v0)
  {
    return 0x5265726975716572;
  }

  else
  {
    return 0x646E7542656D6167;
  }
}

uint64_t sub_24F287DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5265726975716572 && a2 == 0xEE00687365726665)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F287EE0(uint64_t a1)
{
  v2 = sub_24F288184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F287F1C(uint64_t a1)
{
  v2 = sub_24F288184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F287F78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24F287FAC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_24F287FAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D858);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F288184();
  sub_24F92D108();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_24F92CC28();
    v9[14] = 1;
    sub_24F92CC38();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24F288184()
{
  result = qword_27F23D860;
  if (!qword_27F23D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D860);
  }

  return result;
}

unint64_t sub_24F2881EC()
{
  result = qword_27F23D868;
  if (!qword_27F23D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D868);
  }

  return result;
}

unint64_t sub_24F288244()
{
  result = qword_27F23D870;
  if (!qword_27F23D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D870);
  }

  return result;
}

unint64_t sub_24F28829C()
{
  result = qword_27F23D878;
  if (!qword_27F23D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D878);
  }

  return result;
}

uint64_t FlowAuthorityProvider.selectedTabId.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24F2886D8();
  sub_24F91FD88();

  swift_beginAccess();
  return sub_24E65864C(v1 + 16, a1);
}

uint64_t FlowAuthorityProvider.tabs.getter()
{
  swift_getKeyPath();
  sub_24F2886D8();
  sub_24F91FD88();
}

uint64_t FlowAuthorityProvider.__allocating_init(tabsInfoProvider:objectGraph:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FlowAuthorityProvider.init(tabsInfoProvider:objectGraph:)(a1, a2);
  return v4;
}

void sub_24F28844C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  *&v7[0] = v1;
  sub_24F2886D8();
  sub_24F91FD88();

  swift_beginAccess();
  sub_24E65864C(v1 + 16, v7);
  v4 = MEMORY[0x253052150](a1, v7);
  sub_24E6585F8(v7);
  if ((v4 & 1) == 0)
  {
    v5 = [objc_opt_self() standardUserDefaults];
    swift_getKeyPath();
    *&v7[0] = v2;
    sub_24F91FD88();

    sub_24E65864C(v2 + 16, v6);
    if (swift_dynamicCast())
    {
      sub_24F92C7F8();
    }

    else
    {
      memset(v7, 0, sizeof(v7));
      v8 = 0;
    }

    sub_24ED0F474(v7);
  }
}

uint64_t sub_24F2885CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F2886D8();
  sub_24F91FD88();

  swift_beginAccess();
  return sub_24E65864C(v3 + 16, a2);
}

unint64_t sub_24F2886D8()
{
  result = qword_27F220FB8;
  if (!qword_27F220FB8)
  {
    type metadata accessor for FlowAuthorityProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220FB8);
  }

  return result;
}

uint64_t type metadata accessor for FlowAuthorityProvider()
{
  result = qword_27F23D8C0;
  if (!qword_27F23D8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FlowAuthorityProvider.selectedTabId.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_24E65864C(v1 + 16, v7);
  v3 = MEMORY[0x253052150](v7, a1);
  sub_24E6585F8(v7);
  if (v3)
  {
    sub_24E65864C(a1, v7);
    sub_24E65864C(v1 + 16, v6);
    swift_beginAccess();
    sub_24E66B73C(v7, v1 + 16);
    swift_endAccess();
    sub_24F28844C(v6);
    sub_24E6585F8(v6);
    sub_24E6585F8(v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v7[0] = v1;
    sub_24F2886D8();
    sub_24F91FD78();
  }

  return sub_24E6585F8(a1);
}

uint64_t sub_24F2888E4(uint64_t a1, uint64_t a2)
{
  sub_24E65864C(a2, v5);
  swift_beginAccess();
  sub_24E65864C(a1 + 16, v4);
  swift_beginAccess();
  sub_24E66B73C(v5, a1 + 16);
  swift_endAccess();
  sub_24F28844C(v4);
  sub_24E6585F8(v4);
  return sub_24E6585F8(v5);
}

void (*FlowAuthorityProvider.selectedTabId.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  swift_getKeyPath();
  v4[22] = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider___observationRegistrar;
  *v4 = v1;
  v4[23] = sub_24F2886D8();
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24E65864C(v1 + 16, v4);
  return sub_24F288AA0;
}

void sub_24F288AA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  if (a2)
  {
    sub_24E65864C(*a1, (v2 + 5));
    sub_24E65864C(v3 + 16, (v2 + 10));
    swift_beginAccess();
    sub_24E66B73C((v2 + 5), v3 + 16);
    swift_endAccess();
    sub_24F28844C((v2 + 10));
    sub_24E6585F8((v2 + 10));
  }

  else
  {
    sub_24E65864C(v3 + 16, (v2 + 5));
    swift_beginAccess();
    sub_24E66B73C(v2, v3 + 16);
    swift_endAccess();
    sub_24F28844C((v2 + 5));
  }

  sub_24E6585F8((v2 + 5));
  sub_24E6585F8(v2);
  *v2 = v3;
  swift_getKeyPath();
  sub_24F91FD98();

  free(v2);
}

uint64_t FlowAuthorityProvider.flowAuthority.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24F2886D8();
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  return sub_24F289ABC(v5 + v3, a1);
}

uint64_t sub_24F288C60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F2886D8();
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  return sub_24F289ABC(v3 + v4, a2);
}

uint64_t sub_24F288CF8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D898);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24F289ABC(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24F2886D8();
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F23D898);
}

uint64_t FlowAuthorityProvider.flowAuthority.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_24F2886D8();
  sub_24F91FD78();

  return sub_24E601704(a1, &qword_27F23D898);
}

uint64_t sub_24F288EC0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  sub_24F28A890(a2, a1 + v4);
  return swift_endAccess();
}

void (*FlowAuthorityProvider.flowAuthority.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F2886D8();
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F289044;
}

void sub_24F289044(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_24F91FD98();

  free(v1);
}

uint64_t sub_24F2890C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F2886D8();
  sub_24F91FD88();

  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__tabs);
}

uint64_t sub_24F2891A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__tabs;

  v5 = sub_24EA18320(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F2886D8();
    sub_24F91FD78();
  }
}

uint64_t FlowAuthorityProvider.init(tabsInfoProvider:objectGraph:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D898);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D8A0);
  v50 = v9;
  v51 = *(v9 - 8);
  v10 = v51;
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = a1[1];
  v62 = *a1;
  v63 = v13;
  v64 = a1[2];
  v65 = *(a1 + 6);
  v57[0] = 0;
  v57[1] = 0xE000000000000000;
  sub_24F92C7F8();
  v14 = v59;
  *(v3 + 16) = v58;
  *(v3 + 32) = v14;
  *(v3 + 48) = v60;
  v52 = *(v10 + 56);
  v52(v3 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__flowAuthority, 1, 1, v9);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__tabs) = MEMORY[0x277D84F90];
  sub_24F91FDB8();
  v15 = v3 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider_tabsInfoProvider;
  v16 = v62;
  v17 = v63;
  *v15 = v62;
  *(v15 + 16) = v17;
  v18 = v64;
  *(v15 + 32) = v64;
  v19 = v65;
  *(v15 + 48) = v65;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider_objectGraph) = a2;
  v58 = v16;
  v59 = v17;
  v60 = v18;
  v61 = v19;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_24F92B7F8();
  sub_24E9D3E84(&v62, v57);

  v21 = sub_24F92B7E8();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v20;

  v24 = swift_allocObject();
  swift_weakInit();

  v25 = sub_24F92B7E8();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v23;
  v27 = a2;
  v28 = v50;
  v26[4] = v24;

  v29 = v51;
  sub_24F9271A8();
  v30 = TabsInfoProvider.setupFlowAuthority(asPartOf:selectedTabId:)(v12, v27, v57);
  sub_24E601704(v57, &qword_27F23D8B8);
  v31 = *(v29 + 16);
  v32 = v53;
  v54 = v12;
  v31(v53, v12, v28);
  v52(v32, 0, 1, v28);
  swift_getKeyPath();
  v55 = v3;
  v56 = v32;
  *&v58 = v3;
  sub_24F2886D8();
  sub_24F91FD78();

  sub_24E601704(v32, &qword_27F23D898);
  sub_24F2891A8(v30);
  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  if (byte_27F39D1B1)
  {
    goto LABEL_7;
  }

  type metadata accessor for ASKBagContract();
  sub_24F928F28();
  if (qword_27F210A68 != -1)
  {
    swift_once();
  }

  v33 = v47;
  sub_24F92A3B8();
  v34 = v49;
  sub_24F92A408();

  (*(v48 + 8))(v33, v34);
  if (v57[0])
  {
LABEL_7:
    sub_24F28A530(&v62);

    (*(v29 + 8))(v54, v28);
  }

  else
  {
    v35 = v29;
    type metadata accessor for NetworkConnectionMonitor();
    sub_24F928F28();
    v36 = v57[0];
    v37 = swift_allocObject();
    swift_weakInit();

    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    v39 = v63;
    *(v38 + 24) = v62;
    *(v38 + 40) = v39;
    *(v38 + 56) = v64;
    *(v38 + 72) = v65;
    *(v38 + 80) = v27;
    swift_beginAccess();
    v40 = *(v36 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v36 + 24) = v40;
    v42 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = sub_24E618160(0, v40[2] + 1, 1, v40);
      *(v36 + 24) = v40;
    }

    v44 = v40[2];
    v43 = v40[3];
    if (v44 >= v43 >> 1)
    {
      v40 = sub_24E618160((v43 > 1), v44 + 1, 1, v40);
    }

    v40[2] = v44 + 1;
    v45 = &v40[2 * v44];
    v45[4] = sub_24F289EF8;
    v45[5] = v38;
    *(v36 + 24) = v40;
    swift_endAccess();

    (*(v35 + 8))(v54, v42);
  }

  return v3;
}

uint64_t sub_24F289ABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F289B48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F289B80@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_24F92C7F8();
  }

  v3 = Strong;
  swift_getKeyPath();
  *&v6[0] = v3;
  sub_24F2886D8();
  sub_24F91FD88();

  swift_beginAccess();
  sub_24E65864C(v3 + 16, v6);

  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_24F289CB0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E65864C(a1, v3);
    FlowAuthorityProvider.selectedTabId.setter(v3);
  }

  return result;
}

uint64_t sub_24F289D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7 - 8];
  v9 = sub_24F92B858();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_24F92B7F8();

  sub_24E9D3E84(a2, v16);

  v10 = sub_24F92B7E8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = a1;
  v13 = *(a2 + 16);
  *(v11 + 40) = *a2;
  *(v11 + 56) = v13;
  *(v11 + 72) = *(a2 + 32);
  *(v11 + 88) = *(a2 + 48);
  *(v11 + 96) = a3;
  sub_24EA998B8(0, 0, v8, &unk_24F9DD0E8, v11);
}

uint64_t sub_24F289E90()
{

  return swift_deallocObject();
}

uint64_t sub_24F289F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D898);
  v6[21] = swift_task_alloc();
  sub_24F92B7F8();
  v6[22] = sub_24F92B7E8();
  v8 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F289FDC, v8, v7);
}

uint64_t sub_24F289FDC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[19];
    v3 = v0[20];
    type metadata accessor for ASKBagContract();
    sub_24F928F28();
    v5 = ASKBagContract.tabs(withFallback:bagKey:)(*(v4 + 16));
    v6 = (*(v4 + 40))(v3, v5);

    (*(v4 + 24))(v3, v6);
    sub_24F2BA384(v6);
    v0[13] = v7;
    v0[14] = v8;
    sub_24F92C7F8();

    swift_getKeyPath();
    v0[16] = v2;
    sub_24F2886D8();
    sub_24F91FD88();

    v10 = sub_24EA18320(v9, v6);

    if (v10)
    {
      sub_24E6585F8((v0 + 2));
    }

    else
    {
      v11 = v0[21];
      swift_getKeyPath();
      v0[17] = v2;
      sub_24F91FD88();

      v12 = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__flowAuthority;
      swift_beginAccess();
      sub_24F289ABC(v2 + v12, v11);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D8A0);
      v14 = *(v13 - 8);
      result = (*(v14 + 48))(v11, 1, v13);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v16 = v0[21];

      sub_24F921868();

      (*(v14 + 8))(v16, v13);
      sub_24F2891A8(v6);

      sub_24E6585F8((v0 + 2));
    }
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t FlowAuthorityProvider.deinit()
{
  sub_24E6585F8(v0 + 16);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__flowAuthority, &qword_27F23D898);

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider_tabsInfoProvider);

  v2 = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider___observationRegistrar;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t FlowAuthorityProvider.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 16);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__flowAuthority, &qword_27F23D898);

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider_tabsInfoProvider);

  v2 = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider___observationRegistrar;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_24F28A58C()
{
  sub_24F28A6B0();
  if (v0 <= 0x3F)
  {
    sub_24F91FDC8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24F28A6B0()
{
  if (!qword_27F23D8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D8A0);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23D8D0);
    }
  }
}

uint64_t sub_24F28A714()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F28A784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[12];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F289F08(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_24F28A84C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__tabs) = *(v0 + 24);
}

uint64_t sub_24F28A890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D898);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t SearchAdRotationFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SearchAdRotationFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchAdRotationFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F210690 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078);
  __swift_project_value_buffer(v3, qword_27F22E460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080);
  sub_24F929AC8();
  if (v14)
  {
    sub_24E612E28(&v13, v15);
    v4 = v16;
    v5 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v6 = (*(v5 + 8))(v4, v5);
    v7 = MEMORY[0x277D83B88];
    v14 = MEMORY[0x277D83B88];
    *&v13 = v6;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v13);
    if (!v1)
    {
      v8 = v16;
      v9 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v10 = (*(v9 + 16))(v8, v9);
      v14 = v7;
      *&v13 = v10;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_24F929A28();
      __swift_destroy_boxed_opaque_existential_1(&v13);
    }

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_24F28AD24(&v13);
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v12 = sub_24F92AAE8();
    __swift_project_value_buffer(v12, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t sub_24F28AD24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F28ADE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F28AE60(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SearchAdRotationFieldsProvider()
{
  result = qword_27F23D8D8;
  if (!qword_27F23D8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F28AF38()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F28B034()
{
  sub_24F92B218();
}

uint64_t sub_24F28B11C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F28B214@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F28B3E4();
  *a1 = result;
  return result;
}

void sub_24F28B244(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x736572746C6F6DLL;
  v5 = 0x800000024FA43510;
  v6 = 0xD000000000000018;
  v7 = 0xD000000000000013;
  v8 = 0x800000024FA43530;
  if (v2 != 3)
  {
    v7 = 0xD00000000000001CLL;
    v8 = 0x800000024FA43550;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x7265764F656D6167;
    v3 = 0xED0000495579616CLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_24F28B300()
{
  result = qword_27F23D8E8;
  if (!qword_27F23D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D8E8);
  }

  return result;
}

const char *sub_24F28B354()
{
  if (*v0 == 3)
  {
    return "GameCenter";
  }

  else
  {
    return "gseui";
  }
}

const char *sub_24F28B384()
{
  v1 = *v0;
  v2 = "5pqn2upm";
  v3 = "ma1h52";
  if (v1 != 3)
  {
    v3 = "now_playing_feature_entry_points";
  }

  if (v1 < 2)
  {
    v2 = "de7bbd8e";
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F28B3E4()
{
  v0 = sub_24F92CB88();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t SmallStoryCardLayout.init(contentView:headingLabel:descriptionLabel:metrics:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24E612C80(a1, a5);
  sub_24E612C80(a2, a5 + 40);
  sub_24E612C80(a3, a5 + 80);
  v9 = a5 + *(type metadata accessor for SmallStoryCardLayout(0) + 28);

  return sub_24F28B528(a4, v9);
}

uint64_t sub_24F28B528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SmallStoryCardLayout.Metrics.contentAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SmallStoryCardLayout.Metrics.init(contentAspectRatio:headingPrimarySpace:descriptionPrimarySpace:headingSecondarySpace:descriptionSecondarySpace:descriptionBottomSpace:descriptionNumberOfLines:headingNumberOfLines:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_24F922348();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  sub_24E612C80(a2, a9 + v19[5]);
  sub_24E612C80(a3, a9 + v19[7]);
  sub_24E612C80(a4, a9 + v19[6]);
  sub_24E612C80(a5, a9 + v19[8]);
  result = sub_24E612C80(a6, a9 + v19[9]);
  *(a9 + v19[11]) = a7;
  *(a9 + v19[10]) = a8;
  return result;
}

uint64_t SmallStoryCardLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SmallStoryCardLayout(0) + 28);

  return sub_24F28B8C0(v3, a1);
}

uint64_t sub_24F28B8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double static SmallStoryCardLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, id a2)
{
  v3 = [a2 traitCollection];
  _s12GameStoreKit20SmallStoryCardLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(a1, v3);
  v5 = v4;

  return v5;
}

uint64_t SmallStoryCardLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v6 = v5;
  v33 = a1;
  v11 = sub_24F9221D8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  MinY = CGRectGetMinY(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  Width = CGRectGetWidth(v39);
  v18 = v5 + *(type metadata accessor for SmallStoryCardLayout(0) + 28);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  v32 = a5;
  CGRectGetWidth(v40);
  sub_24F922308();
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922228();
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  v31 = CGRectGetMinX(v41);
  v42.origin.x = MinX;
  v42.origin.y = MinY;
  v42.size.width = Width;
  v42.size.height = v20;
  MaxY = CGRectGetMaxY(v42);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  v29 = CGRectGetWidth(v43);
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  Height = CGRectGetHeight(v44);
  v45.origin.x = MinX;
  v45.origin.y = MinY;
  v45.size.width = Width;
  v45.size.height = v20;
  v22 = Height - CGRectGetHeight(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v24 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  v25 = *(v24 + 20);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  sub_24E615E00((v6 + 5), inited + 32);
  sub_24E615E00(&v18[v25], inited + 80);
  sub_24E930DFC(&v34, inited + 120);
  *(inited + 72) = 1;
  *(inited + 160) = 2;
  sub_24E930E6C(&v34);
  v26 = *(v24 + 28);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  sub_24E615E00((v6 + 10), inited + 168);
  sub_24E615E00(&v18[v26], inited + 216);
  sub_24E930DFC(&v34, inited + 256);
  *(inited + 208) = 1;
  *(inited + 296) = 8;
  sub_24E930E6C(&v34);
  LOBYTE(v34) = 0;
  *(&v34 + 1) = inited;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v14, v31, MaxY, v29, v22);
  (*(v12 + 8))(v14, v11);

  return sub_24F922128();
}

uint64_t sub_24F28BD04(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24F28C760(&qword_27F23D918);
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

double sub_24F28BD8C(uint64_t a1, id a2)
{
  v3 = [a2 traitCollection];
  _s12GameStoreKit20SmallStoryCardLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(a1, v3);
  v5 = v4;

  return v5;
}

uint64_t _s12GameStoreKit20SmallStoryCardLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = sub_24F922348();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9225E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F922618();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277D22788], v7, v13);
  sub_24F9225F8();
  (*(v4 + 16))(v6, a1, v3);
  v28 = sub_24F922768();
  v29 = MEMORY[0x277D22818];
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_24F922778();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v27);
  v16 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  sub_24E615E00(a1 + v16[5], v26);
  v17 = sub_24F9229A8();
  v18 = MEMORY[0x277D228E0];
  v28 = v17;
  v29 = MEMORY[0x277D228E0];
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v27);
  result = sub_24E615E00(a1 + v16[6], v26);
  if (__OFSUB__(*(a1 + v16[10]), 1))
  {
    __break(1u);
  }

  else
  {
    v28 = v17;
    v29 = v18;
    __swift_allocate_boxed_opaque_existential_1(v27);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_24E615E00(a1 + v16[7], v26);
    v28 = v17;
    v29 = v18;
    __swift_allocate_boxed_opaque_existential_1(v27);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v27);
    result = sub_24E615E00(a1 + v16[8], v26);
    if (!__OFSUB__(*(a1 + v16[11]), 1))
    {
      v28 = v17;
      v29 = v18;
      __swift_allocate_boxed_opaque_existential_1(v27);
      sub_24F9229B8();
      sub_24F922608();
      __swift_destroy_boxed_opaque_existential_1(v27);
      sub_24E615E00(a1 + v16[9], v26);
      v28 = v17;
      v29 = v18;
      __swift_allocate_boxed_opaque_existential_1(v27);
      sub_24F9229B8();
      sub_24F922608();
      __swift_destroy_boxed_opaque_existential_1(v27);
      sub_24F922A18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_24F941C80;
      v21 = v25;
      *(v20 + 32) = v25;
      v22 = v21;
      v23 = sub_24F922A28();
      sub_24F922288();

      return (*(v12 + 8))(v15, v11);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F28C30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F28C3CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F28C470()
{
  result = sub_24E8EFB54(319, &qword_27F237A20);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SmallStoryCardLayout.Metrics(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F28C520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922348();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F28C5F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F922348();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24F28C6B0()
{
  result = sub_24F922348();
  if (v1 <= 0x3F)
  {
    result = sub_24E8EFB54(319, &qword_27F237A40);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F28C760(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SmallStoryCardLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SponsoredSearchSession.__allocating_init(term:requestData:advertPipeline:)(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = a3[1];
  *(v8 + 32) = *a3;
  *(v8 + 48) = v9;
  v10 = a3[3];
  *(v8 + 64) = a3[2];
  *(v8 + 80) = v10;
  sub_24E612C80(a4, v8 + 96);
  return v8;
}

uint64_t SponsoredSearchSession.init(term:requestData:advertPipeline:)(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a3[1];
  *(v4 + 32) = *a3;
  *(v4 + 48) = v5;
  v6 = a3[3];
  *(v4 + 64) = a3[2];
  *(v4 + 80) = v6;
  sub_24E612C80(a4, v4 + 96);
  return v4;
}

uint64_t SponsoredSearchSession.term.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SponsoredSearchSession.requestData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v7[0] = v1[2];
  v7[1] = v2;
  v4 = v1[5];
  v8 = v1[4];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_24F28C8C0(v7, &v6);
}

uint64_t SponsoredSearchSession.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  return v0;
}

uint64_t SponsoredSearchSession.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_24F28CA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AchievementsPageIntent();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F28CB44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AchievementsPageIntent();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24F28CC1C()
{
  type metadata accessor for AchievementsPageIntent();
  if (v0 <= 0x3F)
  {
    sub_24F928FD8();
    if (v1 <= 0x3F)
    {
      sub_24F28CCB8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F28CCB8()
{
  if (!qword_27F23D930)
  {
    type metadata accessor for AchievementsByGameOptionProvider();
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23D930);
    }
  }
}

uint64_t sub_24F28CD2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AchievementsPageIntent();
  MEMORY[0x28223BE20](v4);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  MEMORY[0x28223BE20](v51);
  v50 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v41 - v8;
  v41 = sub_24F92A498();
  v45 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = type metadata accessor for AchievementsByGameView(0);
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v53 = v4;
  v57[3] = v4;
  v47 = sub_24F293354(&qword_27F21D2F8, type metadata accessor for AchievementsPageIntent);
  v57[4] = v47;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  sub_24F28EB28(v2, boxed_opaque_existential_1, type metadata accessor for AchievementsPageIntent);
  v20 = *(v2 + *(v17 + 28));
  sub_24F28EB28(v2, &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AchievementsByGameView);
  v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v22 = swift_allocObject();
  sub_24F28F9D8(&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for AchievementsByGameView);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D938);
  v24 = v23[13];
  *(a1 + v24) = swift_getKeyPath();
  v25 = v41;
  swift_storeEnumTagMultiPayload();
  v26 = a1 + v23[14];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = a1 + v23[15];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v23[16];
  *(a1 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  sub_24F91F618();
  (*(v11 + 16))(v42, v15, v10);
  sub_24F926F28();
  (*(v11 + 8))(v15, v10);
  v29 = a1 + v23[18];
  LOBYTE(v54) = 1;
  sub_24F926F28();
  v30 = v56;
  *v29 = v55;
  *(v29 + 1) = v30;
  v31 = (a1 + v23[30]);
  sub_24F929EB8();
  v54 = sub_24F929EA8();
  sub_24F926F28();
  v32 = v56;
  *v31 = v55;
  v31[1] = v32;
  v33 = v43;
  sub_24E615E00(v57, a1 + v23[19]);
  sub_24F928F28();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v34 = v46;
  sub_24F92A448();
  v35 = v49;
  sub_24F92A408();
  (*(v48 + 8))(v34, v35);
  (*(v45 + 8))(v33, v25);
  v36 = v56;
  v37 = (a1 + v23[23]);
  *v37 = v55;
  v37[1] = v36;
  sub_24F929158();
  sub_24F928F28();
  type metadata accessor for LocalPlayerProvider();
  sub_24F928EF8();
  *(a1 + v23[25]) = v55;
  v38 = (a1 + v23[27]);
  *v38 = CGSizeMake;
  v38[1] = 0;
  v39 = (a1 + v23[28]);
  *v39 = sub_24F28F67C;
  v39[1] = v22;
  *(a1 + v23[20]) = v20;
  *(a1 + v23[22]) = 1;
  *(a1 + v23[21]) = 2;
  type metadata accessor for FeedRefreshNotifier();

  sub_24F928F28();
  *(a1 + v23[26]) = v55;
  type metadata accessor for NetworkConnectionMonitor();
  sub_24F928F28();
  *(a1 + v23[31]) = v55;
  sub_24F28EB28(boxed_opaque_existential_1, v52, type metadata accessor for AchievementsPageIntent);
  type metadata accessor for Page(0);
  sub_24F9217D8();
  sub_24F926F28();

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_24F28D4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_24F92A498();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F28EB28(a1, a3, type metadata accessor for Page);
  v14 = type metadata accessor for AchievementsByGameView(0);
  sub_24F928F28();
  if (qword_27F211860 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v15 = v24;
  v16 = v25;
  v17 = (a2 + *(v14 + 24));
  v19 = *v17;
  v18 = v17[1];
  v24 = v19;
  v25 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D940);
  sub_24F926F38();
  v20 = v23[1];
  result = type metadata accessor for AchievementsByGameView.PageContent(0);
  v22 = (a3 + *(result + 20));
  *v22 = v15;
  v22[1] = v16;
  *(a3 + *(result + 24)) = v20;
  return result;
}

uint64_t sub_24F28D770@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for AchievementsByGameView.PageContent(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = v4;
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED68);
  MEMORY[0x28223BE20](v41);
  v37 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D960);
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  MEMORY[0x28223BE20](v7);
  v40 = &v28 - v9;
  v10 = *(v1 + *(type metadata accessor for Page(0) + 48));
  v39 = v1;
  v45 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED70);
  sub_24E602068(&qword_27F21ED78, &qword_27F21ED70);
  sub_24F921BA8();
  KeyPath = swift_getKeyPath();
  v38 = type metadata accessor for AchievementsByGameView.PageContent;
  v11 = v5;
  v33 = v5;
  sub_24F28EB28(v1, v5, type metadata accessor for AchievementsByGameView.PageContent);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v35 = type metadata accessor for AchievementsByGameView.PageContent;
  sub_24F28F9D8(v11, v13 + v12, type metadata accessor for AchievementsByGameView.PageContent);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24F28FA40;
  *(v14 + 24) = v13;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D968);
  v31 = sub_24E602068(&qword_27F21ED88, &qword_27F21ED68);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2315B8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D970);
  v15 = sub_24F921C98();
  v16 = sub_24F921C78();
  v17 = sub_24E602068(&qword_27F2315C8, &qword_27F2315B8);
  v18 = sub_24E602068(&qword_27F23D978, &qword_27F23D970);
  v19 = sub_24F293354(&qword_27F2315D0, MEMORY[0x277D7ECA0]);
  v20 = sub_24F293354(&qword_27F2315D8, MEMORY[0x277D7EC90]);
  v21 = sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
  v22 = sub_24F293354(&qword_27F238838, type metadata accessor for GSKShelf);
  v45 = v30;
  v46 = v29;
  v47 = v15;
  v48 = v16;
  v49 = v17;
  v50 = v18;
  v51 = v19;
  v52 = v20;
  v53 = v21;
  v54 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v40;
  sub_24F927228();
  type metadata accessor for AchievementsByGameShelfIntent();
  v24 = v33;
  sub_24F28EB28(v39, v33, v38);
  v25 = swift_allocObject();
  sub_24F28F9D8(v24, v25 + v12, v35);
  sub_24F2915D0();
  sub_24F293354(&qword_27F215158, type metadata accessor for AchievementsByGameShelfIntent);
  v26 = v42;
  sub_24F925EF8();

  return (*(v43 + 8))(v23, v26);
}

uint64_t sub_24F28DD98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a1;
  v35 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2315B8);
  v28 = v6;
  v30 = *(v6 - 8);
  v7 = v30;
  MEMORY[0x28223BE20](v6);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for AchievementsByGameView.PageContent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D988);
  v16 = *(v15 - 8);
  v33 = v15;
  v34 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - v17;
  sub_24F28EB28(a3, &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AchievementsByGameView.PageContent);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = swift_allocObject();
  sub_24F28F9D8(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for AchievementsByGameView.PageContent);
  *(v20 + ((v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v21 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v22 = MEMORY[0x28223BE20](v21);
  (*(v24 + 16))(&v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  v29 = v11;
  sub_24F928D38();
  (*(v7 + 16))(v32, v11, v6);
  v31 = sub_24F921C98();
  sub_24F921C78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D990);
  sub_24E602068(&qword_27F2315C8, &qword_27F2315B8);
  sub_24F293354(&qword_27F2315D0, MEMORY[0x277D7ECA0]);
  sub_24F293354(&qword_27F2315D8, MEMORY[0x277D7EC90]);
  sub_24E602068(&qword_27F23D998, &qword_27F23D990);
  sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
  v25 = v28;
  sub_24F9216F8();
  (*(v30 + 8))(v29, v25);
  sub_24F293354(&qword_27F238838, type metadata accessor for GSKShelf);
  v26 = v33;
  sub_24F921708();
  return (*(v34 + 8))(v18, v26);
}

uint64_t sub_24F28E330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for AchievementsByGameView.PageContent(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = type metadata accessor for GSKShelf();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a2 + *(type metadata accessor for Page(0) + 84));
  sub_24F28EB28(a1, v13, type metadata accessor for GSKShelf);
  sub_24F28EB28(a2, &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AchievementsByGameView.PageContent);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_24F28F9D8(&v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15, type metadata accessor for AchievementsByGameView.PageContent);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D990);
  v18 = &a4[v17[14]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = &a4[v17[15]];
  v27[15] = 0;
  sub_24F926F28();
  v20 = v28;
  *v19 = v27[16];
  *(v19 + 1) = v20;
  v21 = v17[16];
  *&a4[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE58);
  swift_storeEnumTagMultiPayload();
  *a4 = v14;
  sub_24E64346C(&a4[v17[9]]);
  result = sub_24F2933A4(v13, type metadata accessor for GSKShelf);
  v23 = &a4[v17[10]];
  *v23 = a3;
  v23[8] = 0;
  v24 = &a4[v17[11]];
  *v24 = sub_24F2932C0;
  v24[1] = v16;
  v25 = &a4[v17[12]];
  *v25 = 0;
  v25[1] = 0;
  v26 = &a4[v17[13]];
  *v26 = 0;
  v26[1] = 0;
  return result;
}

uint64_t sub_24F28E5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D9A0);
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  v8 = type metadata accessor for AchievementsByGameAccessoryView();
  MEMORY[0x28223BE20](v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E836C08(a1, v17);
  if (v20 == 2 && (v11 = vorrq_s8(v18, v19), !(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | v17[2] | v17[1] | v17[0])))
  {
    v13 = (a3 + *(type metadata accessor for AchievementsByGameView.PageContent(0) + 20));
    v14 = v13[1];
    *v10 = *v13;
    v10[1] = v14;
    type metadata accessor for AchievementsByGameOptionProvider();
    sub_24F293354(&qword_27F215218, type metadata accessor for AchievementsByGameOptionProvider);

    sub_24F927378();
    v15 = v10 + *(v8 + 24);
    *v15 = swift_getKeyPath();
    v15[40] = 0;
    v16 = *(v8 + 28);
    *(v10 + v16) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
    swift_storeEnumTagMultiPayload();
    sub_24F28EB28(v10, v7, type metadata accessor for AchievementsByGameAccessoryView);
    swift_storeEnumTagMultiPayload();
    sub_24F293354(qword_27F23D9A8, type metadata accessor for AchievementsByGameAccessoryView);
    sub_24F924E28();
    return sub_24F2933A4(v10, type metadata accessor for AchievementsByGameAccessoryView);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24F293354(qword_27F23D9A8, type metadata accessor for AchievementsByGameAccessoryView);
    sub_24F924E28();
    return sub_24E836C64(v17);
  }
}

uint64_t sub_24F28E900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_24F28E924, 0, 0);
}

uint64_t sub_24F28E924()
{
  v1 = v0[6];
  v0[2] = *(v1 + *(type metadata accessor for AchievementsByGameView.PageContent(0) + 24));

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_24F28E9E4;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return AchievementsByGameShelfIntentImplementation.perform(_:objectGraph:)(v5, v3, v4);
}

uint64_t sub_24F28E9E4()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F0EBF64, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24F28EB28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F28EB90()
{
  v1 = *(*(type metadata accessor for AchievementsByGameView(0) - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  v3 = type metadata accessor for Player(0);
  if (!(*(*(v3 - 1) + 48))(v2, 1, v3))
  {

    v4 = v3[6];
    v5 = sub_24F9289E8();
    v51 = (*(v5 - 8) + 8);
    v52 = *(v5 - 8);
    v50 = *v51;
    (*v51)(v2 + v4, v5);

    if (*(v2 + v3[9] + 8) != 1)
    {
    }

    v6 = v2 + v3[13];
    v7 = type metadata accessor for CallProviderConversationHandleSet();
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v48 = v5;
      v8 = type metadata accessor for CallProviderConversationHandle();
      v9 = *(*(v8 - 8) + 48);
      if (!v9(v6, 1, v8))
      {

        v10 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v52 + 48))(v6 + v10, 1, v48))
        {
          v50(v6 + v10, v48);
        }
      }

      v11 = v6 + *(v7 + 20);
      v12 = v9(v11, 1, v8);
      v5 = v48;
      if (!v12)
      {

        v13 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v52 + 48))(v11 + v13, 1, v48))
        {
          v50(v11 + v13, v48);
        }
      }
    }

    if (*(v2 + v3[15] + 8))
    {
    }

    v14 = v2 + v3[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
    {

      v16 = type metadata accessor for Game();
      v50(v14 + v16[18], v5);
      v17 = v16[19];
      if (!(*(v52 + 48))(v14 + v17, 1, v5))
      {
        v50(v14 + v17, v5);
      }

      v49 = v5;

      v18 = v16[21];
      v19 = sub_24F920818();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v14 + v18, 1, v19))
      {
        (*(v20 + 8))(v14 + v18, v19);
      }

      v5 = v49;
    }

    v21 = v2 + v3[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
    {

      v23 = type metadata accessor for Game();
      v50(v21 + v23[18], v5);
      v24 = v23[19];
      if (!(*(v52 + 48))(v21 + v24, 1, v5))
      {
        v50(v21 + v24, v5);
      }

      v25 = v23[21];
      v26 = sub_24F920818();
      v27 = *(v26 - 8);
      if (!(*(v27 + 48))(v21 + v25, 1, v26))
      {
        (*(v27 + 8))(v21 + v25, v26);
      }
    }
  }

  v28 = v2 + *(type metadata accessor for AchievementsPageIntent() + 20);
  v29 = type metadata accessor for Page.Background(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v33 = sub_24F9289E8();
          (*(*(v33 - 8) + 8))(v28, v33);
          v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v35 = sub_24F922348();
          v36 = *(v35 - 8);
          if (!(*(v36 + 48))(v28 + v34, 1, v35))
          {
            (*(v36 + 8))(v28 + v34, v35);
          }
        }
      }

      else
      {
        v47 = sub_24F9289E8();
        (*(*(v47 - 8) + 8))(v28, v47);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v37 = sub_24F9289E8();
      v38 = *(v37 - 8);
      if (!(*(v38 + 48))(v28, 1, v37))
      {
        (*(v38 + 8))(v28, v37);
      }

      v39 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v40 = type metadata accessor for GSKVideo();
      if (!(*(*(v40 - 1) + 48))(v39, 1, v40))
      {
        v41 = sub_24F91F4A8();
        (*(*(v41 - 8) + 8))(v39, v41);
        (*(v38 + 8))(v39 + v40[5], v37);
        v42 = v40[9];
        v43 = sub_24F928698();
        v44 = *(v43 - 8);
        v45 = *(v44 + 48);
        if (!v45(v39 + v42, 1, v43))
        {
          (*(v44 + 8))(v39 + v42, v43);
        }

        v46 = v40[10];
        if (!v45(v39 + v46, 1, v43))
        {
          (*(v44 + 8))(v39 + v46, v43);
        }
      }
    }

    else if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v32 = sub_24F928388();
      (*(*(v32 - 8) + 8))(v28, v32);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F28F67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AchievementsByGameView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F28D4F4(a1, v6, a2);
}

uint64_t sub_24F28F758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Page(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F28F82C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Page(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24F28F8E8()
{
  result = type metadata accessor for Page(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AchievementsByGameOptionProvider();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F28F9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F28FA40@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AchievementsByGameView.PageContent(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_24F28DD98(a1, a2, v8, a3);
}

uint64_t sub_24F28FAC8()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(*(type metadata accessor for AchievementsByGameView.PageContent(0) - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  v3 = sub_24F92A708();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for Page(0);

  v5 = v4[6];
  v6 = sub_24F928818();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = v2 + v4[20];
  v8 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    goto LABEL_55;
  }

  v9 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v10 = *(*(v9 - 1) + 48);
  if (!v10(v7, 1, v9))
  {

    v11 = v7 + v9[5];
    v12 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v85 = sub_24F9289E8();
          (*(*(v85 - 8) + 8))(v11, v85);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v13 = v7 + v9[7];
          v14 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v16 = sub_24F928388();
              (*(*(v16 - 8) + 8))(v13, v16);
            }
          }

          v17 = v7 + v9[10];
          if (*(v17 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v17);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v73 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v74 = type metadata accessor for JSColor();
        if (!(*(*(v74 - 8) + 48))(v73, 1, v74))
        {
          v75 = sub_24F928388();
          (*(*(v75 - 8) + 8))(v73, v75);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v82 = sub_24F9289E8();
        v83 = *(v82 - 8);
        if (!(*(v83 + 48))(v11, 1, v82))
        {
          (*(v83 + 8))(v11, v82);
        }

        if (*(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v18 = v7 + v8[5];
  if (v10(v18, 1, v9))
  {
    goto LABEL_32;
  }

  v19 = v18 + v9[5];
  v20 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    goto LABEL_17;
  }

  v23 = swift_getEnumCaseMultiPayload();
  if (v23 <= 2)
  {
    if (!v23)
    {

      v76 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v77 = type metadata accessor for JSColor();
      if (!(*(*(v77 - 8) + 48))(v76, 1, v77))
      {
        v78 = sub_24F928388();
        (*(*(v78 - 8) + 8))(v76, v78);
      }

      goto LABEL_17;
    }

    if (v23 == 1)
    {
      v84 = sub_24F9289E8();
      v104 = *(v84 - 8);
      if (!(*(v104 + 48))(v19, 1, v84))
      {
        (*(v104 + 8))(v19, v84);
      }

      if (*(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v23 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v23)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v87 = sub_24F9289E8();
      (*(*(v87 - 8) + 8))(v19, v87);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v21 = v18 + v9[7];
  v22 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v24 = sub_24F928388();
      (*(*(v24 - 8) + 8))(v21, v24);
    }
  }

  v25 = v18 + v9[10];
  if (*(v25 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

LABEL_32:
  v26 = v7 + v8[6];
  if (v10(v26, 1, v9))
  {
    goto LABEL_49;
  }

  v27 = v26 + v9[5];
  v28 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    goto LABEL_34;
  }

  v31 = swift_getEnumCaseMultiPayload();
  if (v31 <= 2)
  {
    if (!v31)
    {

      v79 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v80 = type metadata accessor for JSColor();
      if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
      {
        v81 = sub_24F928388();
        (*(*(v81 - 8) + 8))(v79, v81);
      }

      goto LABEL_34;
    }

    if (v31 == 1)
    {
      v86 = sub_24F9289E8();
      v105 = *(v86 - 8);
      if (!(*(v105 + 48))(v27, 1, v86))
      {
        (*(v105 + 8))(v27, v86);
      }

      if (*(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v31 != 2)
    {
      goto LABEL_34;
    }

LABEL_103:

    goto LABEL_34;
  }

  switch(v31)
  {
    case 3:
      goto LABEL_103;
    case 4:
      v88 = sub_24F9289E8();
      (*(*(v88 - 8) + 8))(v27, v88);
      break;
    case 5:
      goto LABEL_103;
  }

LABEL_34:
  v29 = v26 + v9[7];
  v30 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v32 = sub_24F928388();
      (*(*(v32 - 8) + 8))(v29, v32);
    }
  }

  v33 = v26 + v9[10];
  if (*(v33 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

LABEL_49:
  v34 = v7 + v8[7];
  if (*(v34 + 56) == 1)
  {
  }

  else if (!*(v34 + 56))
  {

    if (*(v34 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v34 + 16);
    }
  }

  v35 = v7 + v8[8];
  v36 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v50 = swift_getEnumCaseMultiPayload();
    if (v50 == 2)
    {
      goto LABEL_149;
    }

    if (v50 != 1)
    {
      if (v50)
      {
        goto LABEL_55;
      }

      v51 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v51 - 8) + 48))(v35, 1, v51))
      {
        goto LABEL_55;
      }

      v52 = swift_getEnumCaseMultiPayload();
      if (v52 > 2)
      {
        if (v52 != 3)
        {
          if (v52 == 4)
          {
            v103 = sub_24F9289E8();
            (*(*(v103 - 8) + 8))(v35, v103);
            goto LABEL_55;
          }

          if (v52 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_149;
      }

      if (v52)
      {
        if (v52 == 1)
        {
          v101 = sub_24F9289E8();
          v102 = *(v101 - 8);
          if (!(*(v102 + 48))(v35, 1, v101))
          {
            (*(v102 + 8))(v35, v101);
          }

          if (!*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v52 != 2)
        {
          goto LABEL_55;
        }

LABEL_149:

        goto LABEL_55;
      }

      v68 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v69 = type metadata accessor for JSColor();
      if ((*(*(v69 - 8) + 48))(v68, 1, v69))
      {
        goto LABEL_55;
      }

LABEL_99:
      v70 = sub_24F928388();
      (*(*(v70 - 8) + 8))(v68, v70);

      goto LABEL_55;
    }

    v64 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v65 = *(*(v64 - 8) + 48);
    if (v65(v35, 1, v64))
    {
LABEL_97:
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v67 = v35 + *(v66 + 48);
      if (v65(v67, 1, v64))
      {
        goto LABEL_98;
      }

      v72 = swift_getEnumCaseMultiPayload();
      if (v72 <= 2)
      {
        if (v72)
        {
          if (v72 != 1)
          {
            if (v72 != 2)
            {
              goto LABEL_98;
            }

LABEL_145:

            goto LABEL_98;
          }

          v97 = sub_24F9289E8();
          v98 = *(v97 - 8);
          if (!(*(v98 + 48))(v67, 1, v97))
          {
            (*(v98 + 8))(v67, v97);
          }

          if (*(v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
          }
        }

        else
        {

          v92 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
          v93 = type metadata accessor for JSColor();
          if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
          {
            v94 = sub_24F928388();
            (*(*(v94 - 8) + 8))(v92, v94);
          }
        }

LABEL_98:
        v68 = v35 + *(v66 + 80);
        v69 = type metadata accessor for JSColor();
        if ((*(*(v69 - 8) + 48))(v68, 1, v69))
        {
          goto LABEL_55;
        }

        goto LABEL_99;
      }

      if (v72 != 3)
      {
        if (v72 == 4)
        {
          v100 = sub_24F9289E8();
          (*(*(v100 - 8) + 8))(v67, v100);
          goto LABEL_98;
        }

        if (v72 != 5)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_145;
    }

    v71 = swift_getEnumCaseMultiPayload();
    if (v71 > 2)
    {
      if (v71 != 3)
      {
        if (v71 == 4)
        {
          v99 = sub_24F9289E8();
          (*(*(v99 - 8) + 8))(v35, v99);
          goto LABEL_97;
        }

        if (v71 != 5)
        {
          goto LABEL_97;
        }
      }
    }

    else
    {
      if (!v71)
      {

        v89 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v90 = type metadata accessor for JSColor();
        if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
        {
          v91 = sub_24F928388();
          (*(*(v91 - 8) + 8))(v89, v91);
        }

        goto LABEL_97;
      }

      if (v71 == 1)
      {
        v95 = sub_24F9289E8();
        v96 = *(v95 - 8);
        if (!(*(v96 + 48))(v35, 1, v95))
        {
          (*(v96 + 8))(v35, v95);
        }

        if (*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_97;
      }

      if (v71 != 2)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_97;
  }

LABEL_55:
  if (*(v2 + v4[23]))
  {
  }

  v37 = v2 + v4[24];
  v38 = type metadata accessor for Page.Background(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v44 = swift_getEnumCaseMultiPayload();
    if (v44 <= 1)
    {
      if (v44)
      {
        if (v44 == 1)
        {
          v46 = sub_24F9289E8();
          (*(*(v46 - 8) + 8))(v37, v46);
          v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v48 = sub_24F922348();
          v49 = *(v48 - 8);
          if (!(*(v49 + 48))(v37 + v47, 1, v48))
          {
            (*(v49 + 8))(v37 + v47, v48);
          }
        }
      }

      else
      {
        v63 = sub_24F9289E8();
        (*(*(v63 - 8) + 8))(v37, v63);
      }
    }

    else if (v44 == 2)
    {
      v53 = sub_24F9289E8();
      v54 = *(v53 - 8);
      if (!(*(v54 + 48))(v37, 1, v53))
      {
        (*(v54 + 8))(v37, v53);
      }

      v55 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v56 = type metadata accessor for GSKVideo();
      if (!(*(*(v56 - 1) + 48))(v55, 1, v56))
      {
        v57 = sub_24F91F4A8();
        (*(*(v57 - 8) + 8))(v55, v57);
        (*(v54 + 8))(v55 + v56[5], v53);
        v58 = v56[9];
        v59 = sub_24F928698();
        v60 = *(v59 - 8);
        v61 = *(v60 + 48);
        if (!v61(v55 + v58, 1, v59))
        {
          (*(v60 + 8))(v55 + v58, v59);
        }

        v62 = v56[10];
        if (!v61(v55 + v62, 1, v59))
        {
          (*(v60 + 8))(v55 + v62, v59);
        }
      }
    }

    else if (v44 == 3 || v44 == 4)
    {
      v45 = sub_24F928388();
      (*(*(v45 - 8) + 8))(v37, v45);
    }
  }

  v39 = v2 + v4[27];
  if (*(v39 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = v2 + v4[28];
  if (*(v40 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = v2 + v4[29];
  if (*(v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = v2 + v4[30];
  if (*(v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return swift_deallocObject();
}

uint64_t sub_24F2914DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AchievementsByGameView.PageContent(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24E614970;

  return sub_24F28E900(a1, a2, a3, v3 + v9);
}

unint64_t sub_24F2915D0()
{
  result = qword_27F23D980;
  if (!qword_27F23D980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D960);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2315B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D970);
    sub_24F921C98();
    sub_24F921C78();
    sub_24E602068(&qword_27F2315C8, &qword_27F2315B8);
    sub_24E602068(&qword_27F23D978, &qword_27F23D970);
    sub_24F293354(&qword_27F2315D0, MEMORY[0x277D7ECA0]);
    sub_24F293354(&qword_27F2315D8, MEMORY[0x277D7EC90]);
    sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
    sub_24F293354(&qword_27F238838, type metadata accessor for GSKShelf);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D980);
  }

  return result;
}

uint64_t sub_24F29182C()
{
  v1 = *(*(type metadata accessor for AchievementsByGameView.PageContent(0) - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  v3 = sub_24F92A708();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for Page(0);

  v5 = v4[6];
  v6 = sub_24F928818();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = v2 + v4[20];
  v8 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    goto LABEL_55;
  }

  v9 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v10 = *(*(v9 - 1) + 48);
  if (!v10(v7, 1, v9))
  {

    v11 = v7 + v9[5];
    v12 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v85 = sub_24F9289E8();
          (*(*(v85 - 8) + 8))(v11, v85);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v13 = v7 + v9[7];
          v14 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v16 = sub_24F928388();
              (*(*(v16 - 8) + 8))(v13, v16);
            }
          }

          v17 = v7 + v9[10];
          if (*(v17 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v17);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v73 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v74 = type metadata accessor for JSColor();
        if (!(*(*(v74 - 8) + 48))(v73, 1, v74))
        {
          v75 = sub_24F928388();
          (*(*(v75 - 8) + 8))(v73, v75);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v82 = sub_24F9289E8();
        v83 = *(v82 - 8);
        if (!(*(v83 + 48))(v11, 1, v82))
        {
          (*(v83 + 8))(v11, v82);
        }

        if (*(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v18 = v7 + v8[5];
  if (v10(v18, 1, v9))
  {
    goto LABEL_32;
  }

  v19 = v18 + v9[5];
  v20 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    goto LABEL_17;
  }

  v23 = swift_getEnumCaseMultiPayload();
  if (v23 <= 2)
  {
    if (!v23)
    {

      v76 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v77 = type metadata accessor for JSColor();
      if (!(*(*(v77 - 8) + 48))(v76, 1, v77))
      {
        v78 = sub_24F928388();
        (*(*(v78 - 8) + 8))(v76, v78);
      }

      goto LABEL_17;
    }

    if (v23 == 1)
    {
      v84 = sub_24F9289E8();
      v104 = *(v84 - 8);
      if (!(*(v104 + 48))(v19, 1, v84))
      {
        (*(v104 + 8))(v19, v84);
      }

      if (*(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v23 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v23)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v87 = sub_24F9289E8();
      (*(*(v87 - 8) + 8))(v19, v87);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v21 = v18 + v9[7];
  v22 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v24 = sub_24F928388();
      (*(*(v24 - 8) + 8))(v21, v24);
    }
  }

  v25 = v18 + v9[10];
  if (*(v25 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

LABEL_32:
  v26 = v7 + v8[6];
  if (v10(v26, 1, v9))
  {
    goto LABEL_49;
  }

  v27 = v26 + v9[5];
  v28 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    goto LABEL_34;
  }

  v31 = swift_getEnumCaseMultiPayload();
  if (v31 <= 2)
  {
    if (!v31)
    {

      v79 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v80 = type metadata accessor for JSColor();
      if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
      {
        v81 = sub_24F928388();
        (*(*(v81 - 8) + 8))(v79, v81);
      }

      goto LABEL_34;
    }

    if (v31 == 1)
    {
      v86 = sub_24F9289E8();
      v105 = *(v86 - 8);
      if (!(*(v105 + 48))(v27, 1, v86))
      {
        (*(v105 + 8))(v27, v86);
      }

      if (*(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v31 != 2)
    {
      goto LABEL_34;
    }

LABEL_103:

    goto LABEL_34;
  }

  switch(v31)
  {
    case 3:
      goto LABEL_103;
    case 4:
      v88 = sub_24F9289E8();
      (*(*(v88 - 8) + 8))(v27, v88);
      break;
    case 5:
      goto LABEL_103;
  }

LABEL_34:
  v29 = v26 + v9[7];
  v30 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v32 = sub_24F928388();
      (*(*(v32 - 8) + 8))(v29, v32);
    }
  }

  v33 = v26 + v9[10];
  if (*(v33 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

LABEL_49:
  v34 = v7 + v8[7];
  if (*(v34 + 56) == 1)
  {
  }

  else if (!*(v34 + 56))
  {

    if (*(v34 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v34 + 16);
    }
  }

  v35 = v7 + v8[8];
  v36 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v50 = swift_getEnumCaseMultiPayload();
    if (v50 == 2)
    {
      goto LABEL_149;
    }

    if (v50 != 1)
    {
      if (v50)
      {
        goto LABEL_55;
      }

      v51 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v51 - 8) + 48))(v35, 1, v51))
      {
        goto LABEL_55;
      }

      v52 = swift_getEnumCaseMultiPayload();
      if (v52 > 2)
      {
        if (v52 != 3)
        {
          if (v52 == 4)
          {
            v103 = sub_24F9289E8();
            (*(*(v103 - 8) + 8))(v35, v103);
            goto LABEL_55;
          }

          if (v52 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_149;
      }

      if (v52)
      {
        if (v52 == 1)
        {
          v101 = sub_24F9289E8();
          v102 = *(v101 - 8);
          if (!(*(v102 + 48))(v35, 1, v101))
          {
            (*(v102 + 8))(v35, v101);
          }

          if (!*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v52 != 2)
        {
          goto LABEL_55;
        }

LABEL_149:

        goto LABEL_55;
      }

      v68 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v69 = type metadata accessor for JSColor();
      if ((*(*(v69 - 8) + 48))(v68, 1, v69))
      {
        goto LABEL_55;
      }

LABEL_99:
      v70 = sub_24F928388();
      (*(*(v70 - 8) + 8))(v68, v70);

      goto LABEL_55;
    }

    v64 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v65 = *(*(v64 - 8) + 48);
    if (v65(v35, 1, v64))
    {
LABEL_97:
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v67 = v35 + *(v66 + 48);
      if (v65(v67, 1, v64))
      {
        goto LABEL_98;
      }

      v72 = swift_getEnumCaseMultiPayload();
      if (v72 <= 2)
      {
        if (v72)
        {
          if (v72 != 1)
          {
            if (v72 != 2)
            {
              goto LABEL_98;
            }

LABEL_145:

            goto LABEL_98;
          }

          v97 = sub_24F9289E8();
          v98 = *(v97 - 8);
          if (!(*(v98 + 48))(v67, 1, v97))
          {
            (*(v98 + 8))(v67, v97);
          }

          if (*(v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
          }
        }

        else
        {

          v92 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
          v93 = type metadata accessor for JSColor();
          if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
          {
            v94 = sub_24F928388();
            (*(*(v94 - 8) + 8))(v92, v94);
          }
        }

LABEL_98:
        v68 = v35 + *(v66 + 80);
        v69 = type metadata accessor for JSColor();
        if ((*(*(v69 - 8) + 48))(v68, 1, v69))
        {
          goto LABEL_55;
        }

        goto LABEL_99;
      }

      if (v72 != 3)
      {
        if (v72 == 4)
        {
          v100 = sub_24F9289E8();
          (*(*(v100 - 8) + 8))(v67, v100);
          goto LABEL_98;
        }

        if (v72 != 5)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_145;
    }

    v71 = swift_getEnumCaseMultiPayload();
    if (v71 > 2)
    {
      if (v71 != 3)
      {
        if (v71 == 4)
        {
          v99 = sub_24F9289E8();
          (*(*(v99 - 8) + 8))(v35, v99);
          goto LABEL_97;
        }

        if (v71 != 5)
        {
          goto LABEL_97;
        }
      }
    }

    else
    {
      if (!v71)
      {

        v89 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v90 = type metadata accessor for JSColor();
        if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
        {
          v91 = sub_24F928388();
          (*(*(v91 - 8) + 8))(v89, v91);
        }

        goto LABEL_97;
      }

      if (v71 == 1)
      {
        v95 = sub_24F9289E8();
        v96 = *(v95 - 8);
        if (!(*(v96 + 48))(v35, 1, v95))
        {
          (*(v96 + 8))(v35, v95);
        }

        if (*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_97;
      }

      if (v71 != 2)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_97;
  }

LABEL_55:
  if (*(v2 + v4[23]))
  {
  }

  v37 = v2 + v4[24];
  v38 = type metadata accessor for Page.Background(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v44 = swift_getEnumCaseMultiPayload();
    if (v44 <= 1)
    {
      if (v44)
      {
        if (v44 == 1)
        {
          v46 = sub_24F9289E8();
          (*(*(v46 - 8) + 8))(v37, v46);
          v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v48 = sub_24F922348();
          v49 = *(v48 - 8);
          if (!(*(v49 + 48))(v37 + v47, 1, v48))
          {
            (*(v49 + 8))(v37 + v47, v48);
          }
        }
      }

      else
      {
        v63 = sub_24F9289E8();
        (*(*(v63 - 8) + 8))(v37, v63);
      }
    }

    else if (v44 == 2)
    {
      v53 = sub_24F9289E8();
      v54 = *(v53 - 8);
      if (!(*(v54 + 48))(v37, 1, v53))
      {
        (*(v54 + 8))(v37, v53);
      }

      v55 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v56 = type metadata accessor for GSKVideo();
      if (!(*(*(v56 - 1) + 48))(v55, 1, v56))
      {
        v57 = sub_24F91F4A8();
        (*(*(v57 - 8) + 8))(v55, v57);
        (*(v54 + 8))(v55 + v56[5], v53);
        v58 = v56[9];
        v59 = sub_24F928698();
        v60 = *(v59 - 8);
        v61 = *(v60 + 48);
        if (!v61(v55 + v58, 1, v59))
        {
          (*(v60 + 8))(v55 + v58, v59);
        }

        v62 = v56[10];
        if (!v61(v55 + v62, 1, v59))
        {
          (*(v60 + 8))(v55 + v62, v59);
        }
      }
    }

    else if (v44 == 3 || v44 == 4)
    {
      v45 = sub_24F928388();
      (*(*(v45 - 8) + 8))(v37, v45);
    }
  }

  v39 = v2 + v4[27];
  if (*(v39 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = v2 + v4[28];
  if (*(v40 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = v2 + v4[29];
  if (*(v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = v2 + v4[30];
  if (*(v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return swift_deallocObject();
}

uint64_t sub_24F293214@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for AchievementsByGameView.PageContent(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24F28E330(a1, v2 + v6, v7, a2);
}

uint64_t sub_24F2932C0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AchievementsByGameView.PageContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F28E5D8(a1, a2, v6);
}

uint64_t sub_24F293354(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F2933A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F293404()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D960);
  type metadata accessor for AchievementsByGameShelfIntent();
  sub_24F2915D0();
  sub_24F293354(&qword_27F215158, type metadata accessor for AchievementsByGameShelfIntent);
  return swift_getOpaqueTypeConformance2();
}

uint64_t Box.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Box.init(value:)(a1);
  return v2;
}

uint64_t Box.value.setter(uint64_t a1)
{
  v3 = *v1;
  sub_24F294158(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t Box.write(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12 = a2;
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  v16 = v9;
  sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  v13 = a1;
  v14 = v12;
  v15 = v3;
  sub_24F92BF08();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F293848@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  swift_beginAccess();
  return (*(*(*(v4 + 80) - 8) + 16))(a2, a1 + v5);
}

uint64_t sub_24F2938FC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(a1 + v5, a2);
  return swift_endAccess();
}

void (*Box.value.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(*v2 + 80);
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  if (v4)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[4] = v10;
  sub_24F92BF18();
  return sub_24F293B0C;
}

void sub_24F293B0C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_24F294158(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_24F294158(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

char *Box.init(value:)(uint64_t a1)
{
  v11 = *v1;
  v12 = a1;
  v10 = sub_24F92BEE8();
  v2 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F92BE88();
  MEMORY[0x28223BE20](v6);
  v9[1] = sub_24E74EC40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v13 = v7;
  sub_24E9BFCB4(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v10);
  *(v1 + 2) = sub_24F92BF38();
  (*(*(*(v11 + 80) - 8) + 32))(&v1[*(*v1 + 96)], v12);
  return v1;
}

uint64_t sub_24F293F30(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - v7;
  v10 = *(v9 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v8, a3 + v10, v5);
  a1(v8);
  return (*(v6 + 8))(v8, v5);
}

id *Box.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t Box.__deallocating_deinit()
{
  Box.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F294158(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F927D88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  v13 = v8;
  sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  v11 = v2;
  v12 = a1;
  sub_24F92BF08();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24F294358()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(*v2 + 96);
  swift_beginAccess();
  v1(v2 + v3);
  return swift_endAccess();
}

uint64_t sub_24F29445C()
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

uint64_t NSUserDefaults.date(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_opt_self() standardUserDefaults];
  sub_24F92C888();

  *&v17 = 0xD00000000000001BLL;
  *(&v17 + 1) = 0x800000024FA54720;
  v5 = 0xED000065726F7453;
  v6 = 0x7070416F5477656ELL;
  v7 = 0xEF676E6972696150;
  v8 = 0x686374615777656ELL;
  if (v3 != 2)
  {
    v8 = 0xD000000000000013;
    v7 = 0x800000024FA42E60;
  }

  if (v3)
  {
    v6 = 0xD000000000000010;
    v5 = 0x800000024FA42E30;
  }

  if (v3 <= 1)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (v3 <= 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x253050C20](v9, v10);

  v11 = sub_24F92B098();

  v12 = [v4 objectForKey_];

  if (v12)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    v13 = sub_24F91F648();
    v14 = swift_dynamicCast();
    return (*(*(v13 - 8) + 56))(a2, v14 ^ 1u, 1, v13);
  }

  else
  {
    sub_24E857CC8(v19);
    v16 = sub_24F91F648();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

void _sSo14NSUserDefaultsC12GameStoreKitE3add_4withyAC26TodayCardTriggerIdentifierO_10Foundation4DateVtF_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F91F578();
  sub_24F92C888();

  v4 = 0xED000065726F7453;
  v5 = 0x7070416F5477656ELL;
  v6 = 0xEF676E6972696150;
  v7 = 0x686374615777656ELL;
  if (v1 != 2)
  {
    v7 = 0xD000000000000013;
    v6 = 0x800000024FA42E60;
  }

  if (v1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000024FA42E30;
  }

  if (v1 <= 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v1 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x253050C20](v8, v9);

  v10 = sub_24F92B098();

  [v2 setObject:v3 forKey:v10];
}

void _sSo14NSUserDefaultsC12GameStoreKitE6removeyyAC26TodayCardTriggerIdentifierOF_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  sub_24F92C888();

  v3 = 0xED000065726F7453;
  v4 = 0x7070416F5477656ELL;
  v5 = 0xEF676E6972696150;
  v6 = 0x686374615777656ELL;
  if (v1 != 2)
  {
    v6 = 0xD000000000000013;
    v5 = 0x800000024FA42E60;
  }

  if (v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000024FA42E30;
  }

  if (v1 <= 1)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v1 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x253050C20](v7, v8);

  v9 = sub_24F92B098();

  [v2 removeObjectForKey_];
}

uint64_t sub_24F294B5C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v2 = sub_24F92A9E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  sub_24F928F28();
  v3 = v15;
  ObjectType = swift_getObjectType();
  v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_adamId + 8);
  v14 = *(a1 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_adamId);
  v15 = v5;
  v6 = *(v3 + 56);

  v7 = v6(&v14, ObjectType, v3);
  v9 = v8;

  v10 = OfferStateAction.preferredAction(for:)(v7, v9);
  v16 = type metadata accessor for Action();
  v17 = sub_24F294D7C(&qword_27F216DE8, type metadata accessor for Action);
  v14 = v10;
  type metadata accessor for OfferStateActionImplementation();
  swift_getWitnessTable();
  sub_24F1489C4(&v14);
  __swift_destroy_boxed_opaque_existential_1(&v14);
  v11 = sub_24E74EC40();
  swift_retain_n();
  v12 = sub_24F92BEF8();
  v16 = v11;
  v17 = MEMORY[0x277D225C0];
  v14 = v12;
  sub_24F92A958();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v14);
  return v2;
}

uint64_t sub_24F294D7C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24F294DD0()
{
  if (qword_27F2103E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27F22B5C0;
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_24F92B0D8();
    v4 = v3;
  }

  else
  {
    v4 = 0x800000024FA44B00;
    v2 = 0xD000000000000012;
  }

  qword_27F23DAB0 = v2;
  *algn_27F23DAB8 = v4;
}

uint64_t static Signposter.subsystem.getter()
{
  if (qword_27F211058 != -1)
  {
    swift_once();
  }

  v0 = qword_27F23DAB0;

  return v0;
}

uint64_t sub_24F294F18()
{
  v0 = sub_24F922058();
  __swift_allocate_value_buffer(v0, qword_27F23DAC0);
  __swift_project_value_buffer(v0, qword_27F23DAC0);
  if (qword_27F211058 != -1)
  {
    swift_once();
  }

  return sub_24F922048();
}

uint64_t sub_24F294FF4()
{
  v0 = sub_24F922058();
  __swift_allocate_value_buffer(v0, qword_27F23DAD8);
  __swift_project_value_buffer(v0, qword_27F23DAD8);
  if (qword_27F211058 != -1)
  {
    swift_once();
  }

  return sub_24F922048();
}

uint64_t sub_24F2950D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_24F922058();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void *sub_24F29517C(void **a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = sub_24F92A8D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v60[-v13];
  v15 = sub_24F91F648();
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x28223BE20](v15);
  v63 = &v60[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = *a3;
  v4[5] = MEMORY[0x277D84F90];
  v62 = (v4 + 5);
  if (qword_27F210618 != -1)
  {
    swift_once();
  }

  v70 = qword_27F22D9A8;
  [qword_27F22D9A8 lock];
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v17 = off_27F22D9A0;
  if (off_27F22D9A0)
  {

    v18 = v63;
    sub_24F91F638();
    sub_24F91F5E8();
    v20 = v19;
    (*(v64 + 8))(v18, v65);
    swift_beginAccess();
    v17[16] = v20;
    *(v17 + 136) = 0;
  }

  v67 = v4;
  [v70 unlock];
  sub_24F92A8C8();
  v21 = ASKPerformanceProfileGetForCurrentDevice();
  v69 = a2;
  v22 = v14;
  if (v21)
  {
    v23 = v14;
    v24 = a1;
    v25 = v9;
    v26 = v8;
    v27 = ASKDeviceTypeGetCurrent();
    v28 = sub_24F92B0D8();
    v30 = v29;
    if (v28 == sub_24F92B0D8() && v30 == v31)
    {

      v8 = v26;
      v9 = v25;
      a1 = v24;
      v22 = v23;
    }

    else
    {
      v32 = sub_24F92CE08();

      v8 = v26;
      v9 = v25;
      a1 = v24;
      v22 = v23;
      if ((v32 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  sub_24F92A8B8();
LABEL_13:
  sub_24F92A918();
  v33 = *a1;
  v34 = *(v9 + 16);
  v68 = v22;
  v34(v11, v22, v8);

  v35 = v33;
  sub_24F0C63E4();
  v36 = v66;
  v37 = sub_24F92A8F8();
  if (v36)
  {
    sub_24E93E448();
    sub_24F929388();
    v38 = _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    sub_24EF9B244(v38, MEMORY[0x277D21E70], 7368801);
    v39 = v67;

    swift_willThrow();

    sub_24ED44774(a1);
    (*(v9 + 8))(v68, v8);

    type metadata accessor for JSService();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v67;
    v67[2] = v37;
    if (qword_27F20FFE8 != -1)
    {
      swift_once();
    }

    [qword_27F39B150 setValue_];
    v40 = v39[2];
    type metadata accessor for JSGarbageCollector();
    v41 = swift_allocObject();
    *(v41 + 24) = v40;
    v42 = objc_allocWithZone(MEMORY[0x277D225F0]);

    *(v41 + 32) = [v42 init];
    sub_24F928BF8();
    *(v41 + 16) = v61;
    v39[3] = v41;
    type metadata accessor for NetworkActivity();
    sub_24F928EF8();
    v39[4] = *&v71[0];
    v43 = swift_allocObject();
    swift_weakInit();

    sub_24EC61F2C(sub_24F299168, v43, v71);

    v44 = v62;
    swift_beginAccess();
    v45 = v39[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[5] = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v45 = sub_24E618554(0, *(v45 + 2) + 1, 1, v45);
      *v44 = v45;
    }

    v48 = *(v45 + 2);
    v47 = *(v45 + 3);
    if (v48 >= v47 >> 1)
    {
      v45 = sub_24E618554((v47 > 1), v48 + 1, 1, v45);
    }

    *(v45 + 2) = v48 + 1;
    sub_24E612B0C(v71, &v45[32 * v48 + 32]);
    v39[5] = v45;
    swift_endAccess();
    v49 = swift_allocObject();
    swift_weakInit();

    sub_24EC61F04(sub_24F299188, v49, v71);

    swift_beginAccess();
    v50 = v39[5];
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v39[5] = v50;
    if ((v51 & 1) == 0)
    {
      v50 = sub_24E618554(0, *(v50 + 2) + 1, 1, v50);
      *v44 = v50;
    }

    v53 = *(v50 + 2);
    v52 = *(v50 + 3);
    if (v53 >= v52 >> 1)
    {
      v50 = sub_24E618554((v52 > 1), v53 + 1, 1, v50);
    }

    *(v50 + 2) = v53 + 1;
    sub_24E612B0C(v71, &v50[32 * v53 + 32]);
    v39[5] = v50;
    swift_endAccess();
    swift_allocObject();
    swift_weakInit();

    sub_24F92A888();

    v54 = *(v39[3] + 16) == 1;

    sub_24EE948E8(v54);

    [v70 lock];
    v55 = off_27F22D9A0;
    if (off_27F22D9A0)
    {

      v56 = v63;
      sub_24F91F638();
      sub_24F91F5E8();
      v58 = v57;
      (*(v64 + 8))(v56, v65);
      swift_beginAccess();
      v55[18] = v58;
      *(v55 + 152) = 0;
    }

    [v70 unlock];

    sub_24ED44774(a1);
    (*(v9 + 8))(v68, v8);
  }

  return v39;
}

uint64_t sub_24F295AD8(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24F92A8E8();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v4 = sub_24EE946E8(a2);
    sub_24EE948E8(v4);
  }

  return result;
}

void sub_24F295BC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F92A868();
  sub_24F2991B0(&qword_27F222F70, MEMORY[0x277D22430]);
  v4 = swift_allocError();
  (*(*(v3 - 8) + 16))(v5, a2, v3);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v7 = Strong;
  if (Strong)
  {
    Strong = type metadata accessor for JSService();
  }

  else
  {
    v8[1] = 0;
    v8[2] = 0;
  }

  v8[0] = v7;
  v8[3] = Strong;
  sub_24EE93D6C(v4, v8);
  sub_24E601704(v8, &qword_27F2129B0);
}

uint64_t sub_24F295CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[63] = a7;
  v8[64] = v7;
  v8[61] = a5;
  v8[62] = a6;
  v8[59] = a3;
  v8[60] = a4;
  v8[57] = a1;
  v8[58] = a2;
  v8[65] = type metadata accessor for JSRequestIntentFetchError();
  v8[66] = swift_task_alloc();
  sub_24F928418();
  v8[67] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[68] = AssociatedTypeWitness;
  v8[69] = *(AssociatedTypeWitness - 8);
  v8[70] = swift_task_alloc();
  v11 = sub_24F928E28();
  v8[71] = v11;
  v8[72] = *(v11 - 8);
  v8[73] = swift_task_alloc();
  v12 = sub_24F929058();
  v8[74] = v12;
  v8[75] = *(v12 - 8);
  v8[76] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v8[77] = v13;
  v8[78] = *(v13 - 8);
  v8[79] = swift_task_alloc();
  v14 = sub_24F9288E8();
  v8[80] = v14;
  v8[81] = *(v14 - 8);
  v8[82] = swift_task_alloc();
  v15 = sub_24F929C38();
  v8[83] = v15;
  v8[84] = *(v15 - 8);
  v8[85] = swift_task_alloc();
  v8[86] = *(a6 - 8);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v16 = sub_24F922028();
  v8[89] = v16;
  v8[90] = *(v16 - 8);
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F2960D4, 0, 0);
}

uint64_t sub_24F2960D4()
{
  v75 = v0;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v3 = *(v0 + 496);
  v4 = *(v0 + 464);
  v5 = sub_24F922058();
  __swift_project_value_buffer(v5, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v71 = *(v2 + 16);
  v71(v1, v4, v3);
  v6 = sub_24F922038();
  v7 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v8 = *(v0 + 704);
    v9 = *(v0 + 688);
    v10 = *(v0 + 496);
    v11 = swift_slowAlloc();
    v69 = v7;
    v12 = swift_slowAlloc();
    v73 = v12;
    *v11 = 136315138;
    v13 = sub_24F29784C(v8, v10);
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_24E7620D4(v13, v15, &v73);

    *(v11 + 4) = v16;
    v17 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v6, v69, v17, "JSService.JSIntentDispatch", "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2530542D0](v12, -1, -1);
    MEMORY[0x2530542D0](v11, -1, -1);
  }

  else
  {
    v18 = *(v0 + 704);
    v19 = *(v0 + 688);
    v20 = *(v0 + 496);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 544);
  (*(*(v0 + 720) + 16))(*(v0 + 728), *(v0 + 736), *(v0 + 712));
  sub_24F922098();
  swift_allocObject();
  *(v0 + 744) = sub_24F922088();
  v22 = swift_allocObject();
  *(v0 + 752) = v22;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0xE000000000000000;
  sub_24F9284B8();
  *(v0 + 424) = v21;
  swift_getExtendedExistentialTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB00);
  if (swift_dynamicCast())
  {
    sub_24E8EA128((v0 + 64), (v0 + 16));
    sub_24F929C28();
    v23 = swift_dynamicCastClass();

    if (!v23)
    {
      sub_24F928FE8();
    }

    type metadata accessor for ASKBagContract();
    sub_24F928FD8();
    sub_24F92A758();
    *(v0 + 760) = *(v0 + 432);
    if (qword_27F210840 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 680);
    v45 = *(v0 + 672);
    v46 = *(v0 + 656);
    v47 = *(v0 + 648);
    v48 = *(v0 + 640);
    v49 = *(v0 + 632);
    v50 = *(v0 + 624);
    v65 = *(v0 + 616);
    v68 = *(v0 + 496);
    v70 = *(v0 + 696);
    v66 = *(v0 + 664);
    v67 = *(v0 + 464);
    (*(v47 + 104))(v46, *MEMORY[0x277D21C40], v48);
    sub_24F92A368();
    (*(v47 + 8))(v46, v48);
    sub_24F92A408();
    (*(v50 + 8))(v49, v65);
    *v44 = *(v0 + 440);
    v51 = *(v45 + 104);
    v51(v44, *MEMORY[0x277D220F0], v66);
    v52 = sub_24F929BE8();

    v53 = *(v45 + 8);
    v53(v44, v66);
    v71(v70, v67, v68);
    if (swift_dynamicCast())
    {
      v54 = *(v0 + 680);
      v55 = *(v0 + 664);

      v51(v54, *MEMORY[0x277D220E8], v55);
      v56 = sub_24F929BD8();

      v53(v54, v55);
      v52 = v56;
    }

    *(v0 + 768) = v52;
    v57 = *(v0 + 512);
    sub_24E8F997C(v0 + 16, v0 + 112);
    sub_24F929068();
    v58 = *(v57 + 32);
    *(v0 + 776) = v58;
    if (v58)
    {
      NetworkActivity.begin()();
    }

    *(v0 + 784) = *(*(v0 + 512) + 16);
    v59 = swift_task_alloc();
    *(v0 + 792) = v59;
    *v59 = v0;
    v59[1] = sub_24F296C54;
    v60 = *(v0 + 608);
    v61 = *(v0 + 592);
    v62 = *(v0 + 584);
    v63 = *(v0 + 488);
    v64 = MEMORY[0x277D21DD0];

    return MEMORY[0x282180628](v62, v60, v63, v61, v64);
  }

  else
  {
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 64) = 0u;
    sub_24E601704(v0 + 64, &qword_27F23DB08);
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 496);
    v72 = *(v0 + 464);
    v25 = sub_24F92AAE8();
    __swift_project_value_buffer(v25, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v26 = sub_24F9284D8();
    *(v0 + 304) = MEMORY[0x277D837D0];
    *(v0 + 280) = v26;
    *(v0 + 288) = v27;
    sub_24F9283D8();
    sub_24E601704(v0 + 280, &qword_27F2129B0);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();

    v73 = 0;
    v74 = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD000000000000011, 0x800000024FA71BD0);
    v28 = sub_24F29784C(v72, v24);
    MEMORY[0x253050C20](v28);

    MEMORY[0x253050C20](0xD000000000000022, 0x800000024FA71BA0);
    v30 = v73;
    v29 = v74;
    *(v22 + 16) = v73;
    *(v22 + 24) = v29;
    v31 = sub_24F922038();
    v32 = sub_24F92C068();
    if (sub_24F92C478())
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v73 = v34;
      *v33 = 136315138;

      v35 = sub_24E7620D4(v30, v29, &v73);

      *(v33 + 4) = v35;
      v36 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v31, v32, v36, "Error", "%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x2530542D0](v34, -1, -1);
      MEMORY[0x2530542D0](v33, -1, -1);
    }

    v37 = sub_24F929C48();
    sub_24F2991B0(&qword_27F23BEB0, MEMORY[0x277D22110]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D220F8], v37);
    swift_willThrow();
    v39 = *(v0 + 736);
    v40 = *(v0 + 720);
    v41 = *(v0 + 712);
    sub_24F297B58("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

    (*(v40 + 8))(v39, v41);

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_24F296C54()
{
  *(*v1 + 800) = v0;

  if (v0)
  {
    v2 = sub_24F297488;
  }

  else
  {
    v2 = sub_24F296D68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_24F296D68()
{
  v1 = sub_24F928E18();
  if (*(v1 + 16))
  {
    v2 = *(v0 + 512);
    v3 = v1;
    *(v0 + 368) = type metadata accessor for JSService();
    *(v0 + 344) = v2;

    sub_24EE93AC4(v3, v0 + 344);

    sub_24E601704(v0 + 344, &qword_27F2129B0);
  }

  else
  {
  }

  v4 = *(v0 + 800);
  sub_24F297EF0(*(v0 + 584), *(v0 + 472), *(v0 + 480), *(v0 + 544), *(v0 + 560));
  if (!v4)
  {
    v22 = *(v0 + 776);
    if (v22)
    {
      v23 = *(v22 + 16);
      result = [v23 lock];
      v24 = *(v22 + 80);
      v10 = __OFSUB__(v24, 1);
      v25 = v24 - 1;
      if (v10)
      {
        goto LABEL_27;
      }

      *(v22 + 80) = v25;
      if (!v25)
      {
        swift_beginAccess();
        sub_24E615E00(v22 + 40, v0 + 240);
        __swift_project_boxed_opaque_existential_1((v0 + 240), *(v0 + 264));
        v26 = swift_allocObject();
        v26[2] = v22;
        v26[3] = sub_24EF2A56C;
        v26[4] = 0;

        sub_24F928C78();

        __swift_destroy_boxed_opaque_existential_1(v0 + 240);
      }

      [v23 unlock];
    }

    v27 = *(v0 + 608);
    v28 = *(v0 + 600);
    v29 = *(v0 + 592);
    v30 = *(v0 + 584);
    v31 = *(v0 + 576);
    v32 = *(v0 + 568);
    v43 = *(v0 + 560);
    v33 = *(v0 + 552);
    v34 = *(v0 + 544);
    v35 = *(v0 + 456);

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
    (*(v33 + 32))(v35, v43, v34);
    sub_24F928EF8();
    if (*(v0 + 809))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    else
    {
      sub_24F92A8A8();

      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    v40 = *(v0 + 736);
    v41 = *(v0 + 720);
    v42 = *(v0 + 712);
    sub_24F297B58("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

    (*(v41 + 8))(v40, v42);

    v39 = *(v0 + 8);
    goto LABEL_23;
  }

  v5 = v4;
  (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
  v6 = *(v0 + 776);
  if (v6)
  {
    v7 = *(v6 + 16);
    result = [v7 lock];
    v9 = *(v6 + 80);
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (!v10)
    {
      *(v6 + 80) = v11;
      if (!v11)
      {
        swift_beginAccess();
        sub_24E615E00(v6 + 40, v0 + 200);
        __swift_project_boxed_opaque_existential_1((v0 + 200), *(v0 + 224));
        v12 = swift_allocObject();
        v12[2] = v6;
        v12[3] = sub_24EF2A56C;
        v12[4] = 0;

        sub_24F928C78();

        __swift_destroy_boxed_opaque_existential_1(v0 + 200);
      }

      [v7 unlock];
      goto LABEL_10;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

LABEL_10:
  v13 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 528);
  v17 = *(v0 + 520);
  v18 = *(v0 + 512);
  (*(v14 + 16))(v16, v13, v15);
  *(v16 + *(v17 + 20)) = v5;
  sub_24F2991B0(&qword_27F239F98, type metadata accessor for JSRequestIntentFetchError);
  v19 = swift_allocError();
  sub_24F29906C(v16, v20);
  *(v0 + 336) = type metadata accessor for JSService();
  *(v0 + 312) = v18;

  v21 = v5;
  sub_24EE93D6C(v19, v0 + 312);
  sub_24E601704(v0 + 312, &qword_27F2129B0);

  swift_willThrow();

  sub_24F2990D0(v16);
  (*(v14 + 8))(v13, v15);
  sub_24F928EF8();
  if (*(v0 + 808))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {
    sub_24F92A8A8();

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  v36 = *(v0 + 736);
  v37 = *(v0 + 720);
  v38 = *(v0 + 712);
  sub_24F297B58("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

  (*(v37 + 8))(v36, v38);

  v39 = *(v0 + 8);
LABEL_23:

  return v39();
}

id sub_24F297488()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 776);
  if (v2)
  {
    v3 = *(v2 + 16);
    result = [v3 lock];
    v5 = *(v2 + 80);
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (v6)
    {
      __break(1u);
      return result;
    }

    *(v2 + 80) = v7;
    if (!v7)
    {
      swift_beginAccess();
      sub_24E615E00(v2 + 40, v0 + 200);
      __swift_project_boxed_opaque_existential_1((v0 + 200), *(v0 + 224));
      v8 = swift_allocObject();
      v8[2] = v2;
      v8[3] = sub_24EF2A56C;
      v8[4] = 0;

      sub_24F928C78();

      __swift_destroy_boxed_opaque_existential_1(v0 + 200);
    }

    [v3 unlock];
  }

  v9 = *(v0 + 608);
  v10 = *(v0 + 600);
  v11 = *(v0 + 592);
  v12 = *(v0 + 528);
  v13 = *(v0 + 520);
  v14 = *(v0 + 512);
  (*(v10 + 16))(v12, v9, v11);
  *(v12 + *(v13 + 20)) = v1;
  sub_24F2991B0(&qword_27F239F98, type metadata accessor for JSRequestIntentFetchError);
  v15 = swift_allocError();
  sub_24F29906C(v12, v16);
  *(v0 + 336) = type metadata accessor for JSService();
  *(v0 + 312) = v14;

  v17 = v1;
  sub_24EE93D6C(v15, v0 + 312);
  sub_24E601704(v0 + 312, &qword_27F2129B0);

  swift_willThrow();

  sub_24F2990D0(v12);
  (*(v10 + 8))(v9, v11);
  sub_24F928EF8();
  if (*(v0 + 808))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {
    sub_24F92A8A8();

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  v18 = *(v0 + 736);
  v19 = *(v0 + 720);
  v20 = *(v0 + 712);
  sub_24F297B58("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

  (*(v19 + 8))(v18, v20);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24F29784C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for AnyJSIntent();
  v5 = sub_24F92C4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v25 - v15;
  (*(v17 + 16))(v11, a1, a2, v14);
  v18 = swift_dynamicCast();
  v19 = *(v12 + 56);
  if (v18)
  {
    v19(v8, 0, 1, v4);
    (*(v12 + 32))(v16, v8, v4);
    strcpy(v25, "AnyJSIntent<");
    BYTE5(v25[1]) = 0;
    HIWORD(v25[1]) = -5120;
    v20 = sub_24F7E3804();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    MEMORY[0x253050C20](v20, v22);

    MEMORY[0x253050C20](62, 0xE100000000000000);
    v23 = v25[0];
    (*(v12 + 8))(v16, v4);
    return v23;
  }

  else
  {
    v19(v8, 1, 1, v4);
    (*(v6 + 8))(v8, v5);
    return sub_24F9284D8();
  }
}

uint64_t sub_24F297B58(const char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  v7 = sub_24F922068();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_24F922028();
  v11 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v14 = sub_24F922058();
  __swift_project_value_buffer(v14, qword_27F23DAC0);

  v15 = sub_24F922038();
  sub_24F922078();
  v27 = sub_24F92C048();
  result = sub_24F92C478();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((a3 & 1) == 0)
  {

    if (!v29)
    {
      __break(1u);
LABEL_7:

      return (*(v11 + 8))(v13, v28);
    }

LABEL_12:

    sub_24F9220A8();

    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D85B00])
    {
      v17 = 0;
      v18 = 0;
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      v19 = "%s";
      v18 = 2;
      v17 = 1;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = v18;
    *(v20 + 1) = v17;
    *(v20 + 2) = 2080;
    swift_beginAccess();
    v22 = *(a5 + 16);
    v23 = *(a5 + 24);

    v24 = sub_24E7620D4(v22, v23, &v31);

    *(v20 + 4) = v24;
    v25 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v15, v27, v25, v29, v19, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x2530542D0](v21, -1, -1);
    MEMORY[0x2530542D0](v20, -1, -1);

    return (*(v11 + 8))(v13, v28);
  }

  if (v29 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v29 & 0xFFFFF800) != 0xD800)
  {
    if (v29 >> 16 <= 0x10)
    {

      v29 = &v30;
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_24F297EF0@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v109 = a2;
  v108 = a3;
  v114 = a1;
  v99 = a5;
  v6 = sub_24F928418();
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_24F922068();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v106 = *(v9 - 8);
  v107 = v9;
  MEMORY[0x28223BE20](v9);
  v105 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a4;
  v98 = *(a4 - 8);
  MEMORY[0x28223BE20](v11);
  v118 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F91EAE8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v93 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v86 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DAF0);
  v104 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v103 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v102 = &v86 - v22;
  v23 = sub_24F91F648();
  v116 = *(v23 - 8);
  v117 = v23;
  MEMORY[0x28223BE20](v23);
  v92 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v91 = &v86 - v26;
  MEMORY[0x28223BE20](v27);
  v101 = &v86 - v28;
  MEMORY[0x28223BE20](v29);
  v115 = &v86 - v30;
  v31 = sub_24F922028();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v86 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v86 - v38;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v112 = v18;
  v113 = v13;
  v121 = v14;
  v40 = sub_24F922058();
  v41 = __swift_project_value_buffer(v40, qword_27F23DAC0);
  sub_24F922018();
  v89 = v41;
  v42 = sub_24F922038();
  v43 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v44 = v32;
    v45 = v31;
    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v42, v43, v47, "JSService.parseModel", "", v46, 2u);
    v48 = v46;
    v31 = v45;
    v32 = v44;
    MEMORY[0x2530542D0](v48, -1, -1);
  }

  v95 = v31;

  (*(v32 + 16))(v36, v39, v31);
  sub_24F922098();
  swift_allocObject();
  v111 = sub_24F922088();
  v49 = *(v32 + 8);
  v94 = v32 + 8;
  v90 = v49;
  v49(v39, v31);
  v50 = v102;
  sub_24F928DF8();
  v51 = v112;
  sub_24F928B18();
  v52 = *(v104 + 8);
  v52(v50, v19);
  v53 = v115;
  sub_24F91EAD8();
  v54 = v121 + 8;
  v55 = *(v121 + 8);
  v55(v51, v113);
  v56 = v103;
  sub_24F928DF8();
  v57 = v105;
  sub_24F928B28();
  v52(v56, v19);
  v58 = v118;
  v59 = v110;
  v109(v57);
  if (v59)
  {

    (*(v106 + 8))(v57, v107);
    return (*(v116 + 8))(v53, v117);
  }

  else
  {
    v109 = v55;
    v110 = 0;
    v121 = v54;
    (*(v106 + 8))(v57, v107);
    v61 = v101;
    sub_24F91F638();
    sub_24F2991B0(&qword_27F2363D0, MEMORY[0x277CC9578]);
    v62 = v117;
    v63 = v53;
    if (sub_24F92AF78())
    {
      if (qword_27F210580 != -1)
      {
        swift_once();
      }

      v121 = sub_24F92AAE8();
      v114 = __swift_project_value_buffer(v121, qword_27F39C3E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      v113 = *(*(sub_24F928468() - 8) + 72);
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      sub_24F928408();
      sub_24F9283F8();
      sub_24F91F5E8();
      v64 = MEMORY[0x277D839F8];
      v120 = MEMORY[0x277D839F8];
      v119 = v65;
      sub_24F9283D8();
      sub_24E601704(&v119, &qword_27F2129B0);
      sub_24F9283F8();
      v61 = v101;
      sub_24F91F5E8();
      v120 = v64;
      v119 = v66;
      sub_24F9283D8();
      sub_24E601704(&v119, &qword_27F2129B0);
      sub_24F9283F8();
      sub_24F928428();
      sub_24F92A5A8();

      v67 = v100;
      v68 = v98;
      v62 = v117;
      v69 = v118;
    }

    else
    {
      v70 = *(v116 + 16);
      v70(v91, v53, v62);
      v70(v92, v61, v62);
      v71 = v112;
      sub_24F91EAC8();
      v72 = v93;
      sub_24F928E08();
      v67 = v100;
      v120 = v100;
      v73 = __swift_allocate_boxed_opaque_existential_1(&v119);
      v68 = v98;
      (*(v98 + 16))(v73, v58, v67);
      sub_24F298D80(v71, v72, &v119);
      v74 = v113;
      v75 = v109;
      (v109)(v72, v113);
      v75(v71, v74);
      __swift_destroy_boxed_opaque_existential_1(&v119);
      v76 = sub_24F922038();
      v77 = v97;
      sub_24F922078();
      v78 = sub_24F92C048();
      if (sub_24F92C478())
      {

        v79 = v86;
        sub_24F9220A8();

        v80 = v87;
        v81 = v88;
        if ((*(v87 + 88))(v79, v88) == *MEMORY[0x277D85B00])
        {
          v82 = "[Error] Interval already ended";
        }

        else
        {
          (*(v80 + 8))(v79, v81);
          v82 = "";
        }

        v77 = v97;
        v83 = swift_slowAlloc();
        *v83 = 0;
        v84 = sub_24F922008();
        _os_signpost_emit_with_name_impl(&dword_24E5DD000, v76, v78, v84, "JSService.parseModel", v82, v83, 2u);
        MEMORY[0x2530542D0](v83, -1, -1);
        v62 = v117;
        v61 = v101;
      }

      v90(v77, v95);
      v63 = v115;
      v69 = v118;
    }

    v85 = *(v116 + 8);
    v85(v61, v62);
    v85(v63, v62);
    return (*(v68 + 32))(v99, v69, v67);
  }
}

uint64_t sub_24F298BE4()
{

  return swift_deallocClassInstance();
}

uint64_t IntentDispatchOptions.withGarbageCollection()()
{
  v0 = sub_24F928188();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928178();
  v4 = sub_24F928F88();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_24F298D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E643A9C(a3, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DAF8);
  if (swift_dynamicCast())
  {
    sub_24E8EA128(v23, &v25);
    v8 = v26;
    v9 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, v26);
    v10 = (*(v9 + 8))(v8, v9);
    if (v10)
    {
      v11 = v10;
      sub_24F91EAD8();
      sub_24F91F5E8();
      v13 = v12;
      v14 = *(v5 + 8);
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 184) = v13;
      *(v11 + 192) = 0;
      sub_24F91EAB8();
      sub_24F91F5E8();
      v16 = v15;
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 200) = v16;
      *(v11 + 208) = 0;
      sub_24F91EAD8();
      sub_24F91F5E8();
      v18 = v17;
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 232) = v18;
      *(v11 + 240) = 0;
      sub_24F91EAB8();
      sub_24F91F5E8();
      v20 = v19;
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 248) = v20;
      *(v11 + 256) = 0;
    }

    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    memset(v23, 0, sizeof(v23));
    return sub_24E601704(v23, &qword_27F224F98);
  }
}

uint64_t sub_24F299034()
{

  return swift_deallocObject();
}

uint64_t sub_24F29906C(uint64_t a1, uint64_t a2)
{
  Error = type metadata accessor for JSRequestIntentFetchError();
  (*(*(Error - 8) + 16))(a2, a1, Error);
  return a2;
}

uint64_t sub_24F2990D0(uint64_t a1)
{
  Error = type metadata accessor for JSRequestIntentFetchError();
  (*(*(Error - 8) + 8))(a1, Error);
  return a1;
}

uint64_t sub_24F299130()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F2991B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F299210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F2992FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for DefaultPageHeaderView()
{
  result = qword_27F23DB18;
  if (!qword_27F23DB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F29940C()
{
  sub_24F299490();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24F299490()
{
  if (!qword_27F220EC8)
  {
    type metadata accessor for HeaderPresentation(255);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F220EC8);
    }
  }
}

uint64_t sub_24F299504@<X0>(uint64_t a1@<X8>)
{
  v139 = a1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB28);
  MEMORY[0x28223BE20](v107);
  v109 = &v105 - v1;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB30);
  MEMORY[0x28223BE20](v136);
  v108 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v110 = &v105 - v4;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB38);
  MEMORY[0x28223BE20](v134);
  v135 = &v105 - v5;
  v117 = sub_24F924258();
  MEMORY[0x28223BE20](v117);
  v119 = (&v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = sub_24F924248();
  MEMORY[0x28223BE20](v125);
  v122 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v123 = &v105 - v9;
  v131 = type metadata accessor for DefaultPageHeaderView();
  v112 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v113 = v10;
  v114 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v11 - 8);
  v115 = &v105 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB40);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v118 = &v105 - v13;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB48);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v124 = &v105 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB50);
  MEMORY[0x28223BE20](v116);
  v129 = &v105 - v15;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB58);
  MEMORY[0x28223BE20](v133);
  v128 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v130 = &v105 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138);
  MEMORY[0x28223BE20](v19 - 8);
  v106 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v111 = &v105 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v105 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v105 - v27;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB60);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v132 = &v105 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v105 - v31;
  v33 = type metadata accessor for HeaderPresentation(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v105 - v38;
  sub_24E60169C(v140, v32, qword_27F220E38);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_24E601704(v32, qword_27F220E38);
    v40 = 1;
    v41 = v139;
    return (*(v137 + 56))(v41, v40, 1, v138);
  }

  sub_24F29DDC8(v32, v39, type metadata accessor for HeaderPresentation);
  sub_24E60169C(v39, v28, &qword_27F223138);
  v42 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  v45 = v43 + 48;
  if (v44(v28, 1, v42) == 1)
  {
    sub_24E601704(v28, &qword_27F223138);
    v146 = 0u;
    v147 = 0u;
    v148 = 0;
  }

  else
  {
    sub_24E60169C(&v28[*(v42 + 40)], &v146, &qword_27F213EA8);
    sub_24F29DFB8(v28, type metadata accessor for HeaderPresentation.HeaderLabel);
    if (*(&v147 + 1))
    {
      sub_24E612C80(&v146, &v141);
      goto LABEL_12;
    }
  }

  sub_24E60169C(&v39[*(v33 + 24)], v25, &qword_27F223138);
  if (v44(v25, 1, v42) == 1)
  {
    sub_24E601704(v25, &qword_27F223138);
    v141 = 0u;
    v142 = 0u;
    v143 = 0;
    if (!*(&v147 + 1))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_24E60169C(&v25[*(v42 + 40)], &v141, &qword_27F213EA8);
  sub_24F29DFB8(v25, type metadata accessor for HeaderPresentation.HeaderLabel);
  if (*(&v147 + 1))
  {
LABEL_11:
    sub_24E601704(&v146, qword_27F21B590);
  }

LABEL_12:
  if (*(&v142 + 1))
  {
    sub_24E612C80(&v141, v149);
    v46 = sub_24F9232F8();
    (*(*(v46 - 8) + 56))(v115, 1, 1, v46);
    sub_24E615E00(v149, &v141);
    v110 = v45;
    v47 = v39;
    v48 = v114;
    sub_24F29DF50(v140, v114, type metadata accessor for DefaultPageHeaderView);
    sub_24F29DF50(v47, v36, type metadata accessor for HeaderPresentation);
    v49 = (*(v112 + 80) + 16) & ~*(v112 + 80);
    v50 = (v113 + *(v34 + 80) + v49) & ~*(v34 + 80);
    v51 = v44;
    v52 = swift_allocObject();
    sub_24F29DDC8(v48, v52 + v49, type metadata accessor for DefaultPageHeaderView);
    sub_24F29DDC8(v36, v52 + v50, type metadata accessor for HeaderPresentation);
    type metadata accessor for HeaderContentView(0);
    sub_24F29DE30(&qword_27F23DB98, type metadata accessor for HeaderContentView);
    v53 = v118;
    sub_24F921788();
    v54 = *(v33 + 20);
    v115 = v47;
    v55 = v47 + v54;
    v56 = v111;
    sub_24E60169C(v55, v111, &qword_27F223138);
    LODWORD(v49) = v51(v56, 1, v42);
    sub_24E601704(v56, &qword_27F223138);
    v57 = 12.0;
    if (v49 == 1)
    {
      v58 = &v115[*(v33 + 24)];
      v59 = v106;
      sub_24E60169C(v58, v106, &qword_27F223138);
      v60 = v51(v59, 1, v42);
      sub_24E601704(v59, &qword_27F223138);
      if (v60 == 1)
      {
        v57 = 6.0;
      }

      else
      {
        v57 = 12.0;
      }
    }

    v61 = *(v117 + 20);
    v62 = *MEMORY[0x277CE0118];
    v63 = sub_24F924B38();
    v64 = v119;
    (*(*(v63 - 8) + 104))(v119 + v61, v62, v63);
    *v64 = v57;
    v64[1] = v57;
    v65 = v123;
    sub_24F29DDC8(v64, v123, MEMORY[0x277CDFC08]);
    *(v65 + *(v125 + 20)) = 0xC024000000000000;
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v66 = sub_24F926D08();

    sub_24F29DF50(v65, v122, MEMORY[0x277CDFBC8]);
    sub_24F29DE30(&qword_27F214338, MEMORY[0x277CDFBC8]);
    v67 = sub_24F927348();
    sub_24F29DFB8(v65, MEMORY[0x277CDFBC8]);
    v144 = v67;
    v145 = v66;
    sub_24F29B450();
    sub_24E62A2EC();
    v141 = 0u;
    v142 = 0u;
    v143 = 0;
    v68 = v124;
    v69 = v121;
    sub_24F926178();
    sub_24E64594C(&v141);
    (*(v120 + 8))(v53, v69);
    v70 = v131;
    v71 = v140;
    LOBYTE(v66) = *(v140 + *(v131 + 20));
    KeyPath = swift_getKeyPath();
    v73 = swift_getKeyPath();
    v74 = v129;
    v75 = &v129[*(v116 + 36)];
    *v75 = v66;
    v75[1] = 0;
    *(v75 + 1) = 0;
    v75[16] = 1;
    *(v75 + 3) = KeyPath;
    v75[32] = 0;
    *(v75 + 5) = v73;
    v76 = type metadata accessor for PageMarginsViewModifier();
    *(v75 + 7) = 0;
    *(v75 + 8) = 0;
    *(v75 + 6) = 0;
    v75[72] = 0;
    v77 = *(v76 + 36);
    *&v75[v77] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
    swift_storeEnumTagMultiPayload();
    (*(v126 + 32))(v74, v68, v127);
    v78 = 0;
    if (*(v71 + *(v70 + 24)) == 1)
    {
      v78 = sub_24F29A8E0();
    }

    v79 = [objc_opt_self() systemBackgroundColor];
    v80 = sub_24F926BF8();
    v81 = v128;
    sub_24E6009C8(v74, v128, &qword_27F23DB50);
    v82 = (v81 + *(v133 + 36));
    *v82 = v78;
    v82[1] = 0x4059000000000000;
    v82[2] = v80;
    v83 = v81;
    v84 = v130;
    sub_24E6009C8(v83, v130, &qword_27F23DB58);
    sub_24F29DE78(v84, v135);
    swift_storeEnumTagMultiPayload();
    sub_24F29B2B0();
    sub_24F29B508();
    v85 = v132;
    sub_24F924E28();
    sub_24F29DEE8(v84);
    __swift_destroy_boxed_opaque_existential_1(v149);
    v86 = v115;
  }

  else
  {
    sub_24E601704(&v141, qword_27F21B590);
    v87 = type metadata accessor for HeaderContentView(0);
    v88 = v109;
    sub_24F29DF50(v39, &v109[v87[6]], type metadata accessor for HeaderPresentation);
    v89 = v88 + v87[7];
    *(v89 + 32) = 0;
    *v89 = 0u;
    *(v89 + 16) = 0u;
    *v88 = swift_getKeyPath();
    *(v88 + 8) = 0;
    *(v88 + 16) = swift_getKeyPath();
    *(v88 + 24) = 0;
    *(v88 + v87[8]) = 1;
    v90 = v131;
    v91 = v140;
    v92 = *(v140 + *(v131 + 20));
    v93 = swift_getKeyPath();
    v94 = swift_getKeyPath();
    v95 = v88 + *(v107 + 36);
    *v95 = v92;
    *(v95 + 1) = 0;
    *(v95 + 8) = 0;
    *(v95 + 16) = 1;
    *(v95 + 24) = v93;
    *(v95 + 32) = 0;
    *(v95 + 40) = v94;
    v96 = type metadata accessor for PageMarginsViewModifier();
    *(v95 + 56) = 0;
    *(v95 + 64) = 0;
    *(v95 + 48) = 0;
    *(v95 + 72) = 0;
    v97 = *(v96 + 36);
    *(v95 + v97) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
    swift_storeEnumTagMultiPayload();
    v98 = 0;
    if (*(v91 + *(v90 + 24)) == 1)
    {
      v98 = sub_24F29A8E0();
    }

    v99 = [objc_opt_self() systemBackgroundColor];
    v100 = sub_24F926BF8();
    v101 = v108;
    sub_24E6009C8(v88, v108, &qword_27F23DB28);
    v102 = (v101 + *(v136 + 36));
    *v102 = v98;
    v102[1] = 0x4059000000000000;
    v102[2] = v100;
    v103 = v110;
    sub_24E6009C8(v101, v110, &qword_27F23DB30);
    sub_24E60169C(v103, v135, &qword_27F23DB30);
    swift_storeEnumTagMultiPayload();
    sub_24F29B2B0();
    sub_24F29B508();
    v85 = v132;
    sub_24F924E28();
    sub_24E601704(v103, &qword_27F23DB30);
    v86 = v39;
  }

  sub_24F29DFB8(v86, type metadata accessor for HeaderPresentation);
  v41 = v139;
  sub_24E6009C8(v85, v139, &qword_27F23DB60);
  v40 = 0;
  return (*(v137 + 56))(v41, v40, 1, v138);
}

uint64_t sub_24F29A83C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeaderContentView(0);
  sub_24F29DF50(a1, a2 + v4[6], type metadata accessor for HeaderPresentation);
  v5 = a2 + v4[7];
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  result = swift_getKeyPath();
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  *(a2 + v4[8]) = 1;
  return result;
}

uint64_t sub_24F29A8E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v1 - 8);
  v59 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v58 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DBA0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v57 - v26;
  v28 = type metadata accessor for HeaderPresentation(0);
  sub_24E60169C(v0 + *(v28 + 32), v27, &qword_27F23DBA0);
  v29 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  v30 = 0;
  if ((*(*(v29 - 8) + 48))(v27, 1, v29) == 1)
  {
    goto LABEL_24;
  }

  sub_24E60169C(v27, v24, &qword_27F23DBA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24F29DFB8(v24, type metadata accessor for HeaderPresentation.HeaderStyle);
LABEL_23:
    v30 = 0;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v35 = *v24;
    if (*(*v24 + 16))
    {
      v36 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      v37 = *(v36 - 8);
      v38 = v60;
      sub_24F29DF50(v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v60, type metadata accessor for HeaderPresentation.HeaderIconType);

      (*(v37 + 56))(v38, 0, 1, v36);
      sub_24E60169C(v38, v7, &qword_27F223130);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340);
        sub_24E6E8664(*&v7[*(v39 + 48)], *&v7[*(v39 + 48) + 8], *&v7[*(v39 + 48) + 16], *&v7[*(v39 + 48) + 24]);
        v40 = v58;
        sub_24E6009C8(v7, v58, &qword_27F213FB0);
        v41 = v59;
        sub_24E60169C(v40, v59, &qword_27F213FB0);
        v42 = sub_24F9289E8();
        v43 = *(v42 - 8);
        if ((*(v43 + 48))(v41, 1, v42) == 1)
        {
          sub_24E601704(v40, &qword_27F213FB0);
          sub_24E601704(v41, &qword_27F213FB0);
          v30 = 0;
LABEL_35:
          sub_24E601704(v38, &qword_27F223130);
          goto LABEL_24;
        }

        v52 = sub_24F9289A8();
        if (v52)
        {
          if (qword_27F20FEE0 != -1)
          {
            v56 = v52;
            swift_once();
            v52 = v56;
          }

          v53 = v52;
          v54 = sub_24F926BD8();
          ColorGrouping.colorGroup(for:)(v54);
          v55 = type metadata accessor for ColorGroup();
          if ((*(*(v55 - 8) + 48))(v12, 1, v55) != 1)
          {
            v30 = *&v12[*(v55 + 28)];

            sub_24F29DFB8(v12, type metadata accessor for ColorGroup);

            goto LABEL_34;
          }

          sub_24E601704(v12, &qword_27F2190D8);
        }

        v30 = 0;
LABEL_34:
        sub_24E601704(v40, &qword_27F213FB0);
        (*(v43 + 8))(v41, v42);
        goto LABEL_35;
      }

      sub_24F29DFB8(v7, type metadata accessor for HeaderPresentation.HeaderIconType);
    }

    else
    {

      v49 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      v38 = v60;
      (*(*(v49 - 8) + 56))(v60, 1, 1, v49);
    }

    v50 = v38;
LABEL_22:
    sub_24E601704(v50, &qword_27F223130);
    goto LABEL_23;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
  v33 = *(v32 + 48);
  sub_24E6009C8(&v24[*(v32 + 80)], v21, &qword_27F21C728);
  sub_24E60169C(v21, v18, &qword_27F21C728);
  v34 = type metadata accessor for JSColor();
  if ((*(*(v34 - 8) + 48))(v18, 1, v34) == 1)
  {
    sub_24E601704(v21, &qword_27F21C728);
LABEL_21:
    sub_24E601704(v18, &qword_27F21C728);
    sub_24E601704(&v24[v33], &qword_27F223130);
    v50 = v24;
    goto LABEL_22;
  }

  v44 = *&v18[*(v34 + 24)];

  sub_24F29DFB8(v18, type metadata accessor for JSColor);
  if (!v44 || (v45 = sub_24F926BE8(), , !v45))
  {
    v18 = v21;
    goto LABEL_21;
  }

  if (qword_27F20FEE0 != -1)
  {
    swift_once();
  }

  v46 = v45;
  v47 = sub_24F926BD8();
  ColorGrouping.colorGroup(for:)(v47);
  v48 = type metadata accessor for ColorGroup();
  if ((*(*(v48 - 8) + 48))(v15, 1, v48) == 1)
  {
    sub_24E601704(v15, &qword_27F2190D8);

    v30 = 0;
  }

  else
  {
    v30 = *&v15[*(v48 + 28)];

    sub_24F29DFB8(v15, type metadata accessor for ColorGroup);
  }

  sub_24E601704(v21, &qword_27F21C728);
  sub_24E601704(&v24[v33], &qword_27F223130);
  sub_24E601704(v24, &qword_27F223130);
LABEL_24:
  sub_24E601704(v27, &qword_27F23DBA0);
  return v30;
}

unint64_t sub_24F29B2B0()
{
  result = qword_27F23DB68;
  if (!qword_27F23DB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB58);
    sub_24F29B33C();
    sub_24F29B4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DB68);
  }

  return result;
}

unint64_t sub_24F29B33C()
{
  result = qword_27F23DB70;
  if (!qword_27F23DB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB40);
    sub_24F29B450();
    sub_24E62A2EC();
    swift_getOpaqueTypeConformance2();
    sub_24F29DE30(&qword_27F222448, type metadata accessor for PageMarginsViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DB70);
  }

  return result;
}

unint64_t sub_24F29B450()
{
  result = qword_27F23DB78;
  if (!qword_27F23DB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DB78);
  }

  return result;
}

unint64_t sub_24F29B4B4()
{
  result = qword_27F23DB80;
  if (!qword_27F23DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DB80);
  }

  return result;
}

unint64_t sub_24F29B508()
{
  result = qword_27F23DB88;
  if (!qword_27F23DB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB30);
    sub_24F29B594();
    sub_24F29B4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DB88);
  }

  return result;
}

unint64_t sub_24F29B594()
{
  result = qword_27F23DB90;
  if (!qword_27F23DB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB28);
    sub_24F29DE30(&qword_27F23DB98, type metadata accessor for HeaderContentView);
    sub_24F29DE30(&qword_27F222448, type metadata accessor for PageMarginsViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DB90);
  }

  return result;
}

uint64_t sub_24F29B680()
{
  v1 = *(type metadata accessor for DefaultPageHeaderView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = type metadata accessor for HeaderPresentation(0);
  v5 = *(v4 - 1);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0 + v2;
  v159 = v6;
  if ((*(v5 + 48))(v7, 1, v4))
  {
    goto LABEL_55;
  }

  v8 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v9 = *(*(v8 - 1) + 48);
  if (!v9(v7, 1, v8))
  {

    v10 = v7 + v8[5];
    v11 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v114 = sub_24F9289E8();
          (*(*(v114 - 8) + 8))(v10, v114);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v12 = v7 + v8[7];
          v13 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v15 = sub_24F928388();
              (*(*(v15 - 8) + 8))(v12, v15);
            }
          }

          v16 = v7 + v8[10];
          if (*(v16 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v16);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v102 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v103 = type metadata accessor for JSColor();
        if (!(*(*(v103 - 8) + 48))(v102, 1, v103))
        {
          v104 = sub_24F928388();
          (*(*(v104 - 8) + 8))(v102, v104);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v111 = sub_24F9289E8();
        v112 = *(v111 - 8);
        if (!(*(v112 + 48))(v10, 1, v111))
        {
          (*(v112 + 8))(v10, v111);
        }

        v6 = v159;
        if (*(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v17 = v7 + v4[5];
  if (v9(v17, 1, v8))
  {
    goto LABEL_32;
  }

  v18 = v17 + v8[5];
  v19 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    goto LABEL_17;
  }

  v22 = swift_getEnumCaseMultiPayload();
  if (v22 <= 2)
  {
    if (!v22)
    {

      v105 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v106 = type metadata accessor for JSColor();
      if (!(*(*(v106 - 8) + 48))(v105, 1, v106))
      {
        v107 = sub_24F928388();
        (*(*(v107 - 8) + 8))(v105, v107);
      }

      goto LABEL_17;
    }

    if (v22 == 1)
    {
      v113 = sub_24F9289E8();
      v158 = *(v113 - 8);
      if (!(*(v158 + 48))(v18, 1, v113))
      {
        (*(v158 + 8))(v18, v113);
      }

      if (*(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v22 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v22)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v117 = sub_24F9289E8();
      (*(*(v117 - 8) + 8))(v18, v117);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v20 = v17 + v8[7];
  v21 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v23 = sub_24F928388();
      (*(*(v23 - 8) + 8))(v20, v23);
    }
  }

  v24 = v17 + v8[10];
  v6 = v159;
  if (*(v24 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

LABEL_32:
  v25 = v7 + v4[6];
  if (v9(v25, 1, v8))
  {
    goto LABEL_49;
  }

  v26 = v25 + v8[5];
  v27 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    goto LABEL_34;
  }

  v30 = swift_getEnumCaseMultiPayload();
  if (v30 <= 2)
  {
    if (!v30)
    {

      v108 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v109 = type metadata accessor for JSColor();
      if (!(*(*(v109 - 8) + 48))(v108, 1, v109))
      {
        v110 = sub_24F928388();
        (*(*(v110 - 8) + 8))(v108, v110);
      }

      goto LABEL_34;
    }

    if (v30 == 1)
    {
      v115 = sub_24F9289E8();
      v116 = *(v115 - 8);
      if (!(*(v116 + 48))(v26, 1, v115))
      {
        (*(v116 + 8))(v26, v115);
      }

      if (*(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v30 != 2)
    {
      goto LABEL_34;
    }

LABEL_155:

    goto LABEL_34;
  }

  switch(v30)
  {
    case 3:
      goto LABEL_155;
    case 4:
      v118 = sub_24F9289E8();
      (*(*(v118 - 8) + 8))(v26, v118);
      break;
    case 5:
      goto LABEL_155;
  }

LABEL_34:
  v28 = v25 + v8[7];
  v29 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v31 = sub_24F928388();
      (*(*(v31 - 8) + 8))(v28, v31);
    }
  }

  v32 = v25 + v8[10];
  v6 = v159;
  if (*(v32 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

LABEL_49:
  v33 = v7 + v4[7];
  if (*(v33 + 56) == 1)
  {
  }

  else if (!*(v33 + 56))
  {

    if (*(v33 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v33 + 16);
    }
  }

  v34 = v7 + v4[8];
  v35 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
  {
    v43 = swift_getEnumCaseMultiPayload();
    if (v43 == 2)
    {
      goto LABEL_232;
    }

    if (v43 != 1)
    {
      if (v43)
      {
        goto LABEL_55;
      }

      v44 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v44 - 8) + 48))(v34, 1, v44))
      {
        goto LABEL_55;
      }

      v45 = swift_getEnumCaseMultiPayload();
      if (v45 > 2)
      {
        if (v45 != 3)
        {
          if (v45 == 4)
          {
            v156 = sub_24F9289E8();
            (*(*(v156 - 8) + 8))(v34, v156);
            goto LABEL_55;
          }

          if (v45 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_232;
      }

      if (v45)
      {
        if (v45 == 1)
        {
          v154 = sub_24F9289E8();
          v155 = *(v154 - 8);
          if (!(*(v155 + 48))(v34, 1, v154))
          {
            (*(v155 + 8))(v34, v154);
          }

          if (!*(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v45 != 2)
        {
          goto LABEL_55;
        }

LABEL_232:

        goto LABEL_55;
      }

      v144 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_277:
      v150 = v34 + v144;
      v151 = type metadata accessor for JSColor();
      if (!(*(*(v151 - 8) + 48))(v150, 1, v151))
      {
        v152 = sub_24F928388();
        (*(*(v152 - 8) + 8))(v150, v152);
      }

      goto LABEL_55;
    }

    v77 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v78 = *(*(v77 - 8) + 48);
    if (v78(v34, 1, v77))
    {
LABEL_141:
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v80 = v34 + *(v79 + 48);
      v81 = v78(v80, 1, v77);
      v6 = v159;
      if (!v81)
      {
        v82 = swift_getEnumCaseMultiPayload();
        if (v82 <= 2)
        {
          switch(v82)
          {
            case 0:

              v138 = v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v139 = type metadata accessor for JSColor();
              if (!(*(*(v139 - 8) + 48))(v138, 1, v139))
              {
                v140 = sub_24F928388();
                (*(*(v140 - 8) + 8))(v138, v140);
              }

              goto LABEL_276;
            case 1:
              v145 = sub_24F9289E8();
              v146 = *(v145 - 8);
              if (!(*(v146 + 48))(v80, 1, v145))
              {
                (*(v146 + 8))(v80, v145);
              }

              v6 = v159;
              if (!*(v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
                goto LABEL_276;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_276;
          }

LABEL_270:

          goto LABEL_276;
        }

        switch(v82)
        {
          case 3:
            goto LABEL_270;
          case 4:
            v149 = sub_24F9289E8();
            (*(*(v149 - 8) + 8))(v80, v149);
            break;
          case 5:
            goto LABEL_270;
        }
      }

LABEL_276:
      v144 = *(v79 + 80);
      goto LABEL_277;
    }

    v101 = swift_getEnumCaseMultiPayload();
    if (v101 > 2)
    {
      if (v101 != 3)
      {
        if (v101 == 4)
        {
          v153 = sub_24F9289E8();
          (*(*(v153 - 8) + 8))(v34, v153);
          goto LABEL_141;
        }

        if (v101 != 5)
        {
          goto LABEL_141;
        }
      }
    }

    else
    {
      if (!v101)
      {

        v141 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v142 = type metadata accessor for JSColor();
        if (!(*(*(v142 - 8) + 48))(v141, 1, v142))
        {
          v143 = sub_24F928388();
          (*(*(v143 - 8) + 8))(v141, v143);
        }

        goto LABEL_141;
      }

      if (v101 == 1)
      {
        v147 = sub_24F9289E8();
        v148 = *(v147 - 8);
        if (!(*(v148 + 48))(v34, 1, v147))
        {
          (*(v148 + 8))(v34, v147);
        }

        if (*(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_141;
      }

      if (v101 != 2)
      {
        goto LABEL_141;
      }
    }

    goto LABEL_141;
  }

LABEL_55:
  v36 = v0 + v6;
  v37 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v38 = *(*(v37 - 1) + 48);
  if (v38(v0 + v6, 1, v37))
  {
    goto LABEL_77;
  }

  v39 = v36 + v37[5];
  v40 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40))
  {
    goto LABEL_57;
  }

  v46 = swift_getEnumCaseMultiPayload();
  if (v46 <= 2)
  {
    if (!v46)
    {

      v84 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v85 = type metadata accessor for JSColor();
      if (!(*(*(v85 - 8) + 48))(v84, 1, v85))
      {
        v86 = sub_24F928388();
        (*(*(v86 - 8) + 8))(v84, v86);
      }

      goto LABEL_57;
    }

    if (v46 == 1)
    {
      v93 = sub_24F9289E8();
      v94 = *(v93 - 8);
      if (!(*(v94 + 48))(v39, 1, v93))
      {
        (*(v94 + 8))(v39, v93);
      }

      if (*(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_57;
    }

    if (v46 != 2)
    {
      goto LABEL_57;
    }

LABEL_90:

    goto LABEL_57;
  }

  switch(v46)
  {
    case 3:
      goto LABEL_90;
    case 4:
      v96 = sub_24F9289E8();
      (*(*(v96 - 8) + 8))(v39, v96);
      break;
    case 5:
      goto LABEL_90;
  }

LABEL_57:
  v41 = v36 + v37[7];
  v42 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v47 = sub_24F928388();
      (*(*(v47 - 8) + 8))(v41, v47);
    }
  }

  v48 = v36 + v37[10];
  if (*(v48 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

LABEL_77:
  v49 = v36 + v4[5];
  if (v38(v49, 1, v37))
  {
    goto LABEL_94;
  }

  v50 = v49 + v37[5];
  v51 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v51 - 8) + 48))(v50, 1, v51))
  {
    goto LABEL_79;
  }

  v54 = swift_getEnumCaseMultiPayload();
  if (v54 <= 2)
  {
    if (!v54)
    {

      v87 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v88 = type metadata accessor for JSColor();
      if (!(*(*(v88 - 8) + 48))(v87, 1, v88))
      {
        v89 = sub_24F928388();
        (*(*(v89 - 8) + 8))(v87, v89);
      }

      goto LABEL_79;
    }

    if (v54 == 1)
    {
      v95 = sub_24F9289E8();
      v157 = *(v95 - 8);
      if (!(*(v157 + 48))(v50, 1, v95))
      {
        (*(v157 + 8))(v50, v95);
      }

      if (*(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_79;
    }

    if (v54 != 2)
    {
      goto LABEL_79;
    }

LABEL_107:

    goto LABEL_79;
  }

  switch(v54)
  {
    case 3:
      goto LABEL_107;
    case 4:
      v99 = sub_24F9289E8();
      (*(*(v99 - 8) + 8))(v50, v99);
      break;
    case 5:
      goto LABEL_107;
  }

LABEL_79:
  v52 = v49 + v37[7];
  v53 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v53 - 8) + 48))(v52, 1, v53))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v55 = sub_24F928388();
      (*(*(v55 - 8) + 8))(v52, v55);
    }
  }

  v56 = v49 + v37[10];
  if (*(v56 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

LABEL_94:
  v57 = v36 + v4[6];
  if (v38(v57, 1, v37))
  {
    goto LABEL_111;
  }

  v58 = v57 + v37[5];
  v59 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v59 - 8) + 48))(v58, 1, v59))
  {
    goto LABEL_96;
  }

  v62 = swift_getEnumCaseMultiPayload();
  if (v62 <= 2)
  {
    if (!v62)
    {

      v90 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v91 = type metadata accessor for JSColor();
      if (!(*(*(v91 - 8) + 48))(v90, 1, v91))
      {
        v92 = sub_24F928388();
        (*(*(v92 - 8) + 8))(v90, v92);
      }

      goto LABEL_96;
    }

    if (v62 == 1)
    {
      v97 = sub_24F9289E8();
      v98 = *(v97 - 8);
      if (!(*(v98 + 48))(v58, 1, v97))
      {
        (*(v98 + 8))(v58, v97);
      }

      if (*(v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_96;
    }

    if (v62 != 2)
    {
      goto LABEL_96;
    }

LABEL_139:

    goto LABEL_96;
  }

  switch(v62)
  {
    case 3:
      goto LABEL_139;
    case 4:
      v100 = sub_24F9289E8();
      (*(*(v100 - 8) + 8))(v58, v100);
      break;
    case 5:
      goto LABEL_139;
  }

LABEL_96:
  v60 = v57 + v37[7];
  v61 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v61 - 8) + 48))(v60, 1, v61))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v63 = sub_24F928388();
      (*(*(v63 - 8) + 8))(v60, v63);
    }
  }

  v64 = v57 + v37[10];
  if (*(v64 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

LABEL_111:
  v65 = v36 + v4[7];
  if (*(v65 + 56) == 1)
  {
  }

  else if (!*(v65 + 56))
  {

    if (*(v65 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v65 + 16);
    }
  }

  v66 = v36 + v4[8];
  v67 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v67 - 8) + 48))(v66, 1, v67))
  {
    v69 = swift_getEnumCaseMultiPayload();
    if (v69 == 2)
    {
      goto LABEL_191;
    }

    if (v69 != 1)
    {
      if (v69)
      {
        goto LABEL_117;
      }

      v70 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v70 - 8) + 48))(v66, 1, v70))
      {
        goto LABEL_117;
      }

      v71 = swift_getEnumCaseMultiPayload();
      if (v71 > 2)
      {
        if (v71 != 3)
        {
          if (v71 == 4)
          {
            v137 = sub_24F9289E8();
            (*(*(v137 - 8) + 8))(v66, v137);
            goto LABEL_117;
          }

          if (v71 != 5)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_191;
      }

      if (v71)
      {
        if (v71 == 1)
        {
          v135 = sub_24F9289E8();
          v136 = *(v135 - 8);
          if (!(*(v136 + 48))(v66, 1, v135))
          {
            (*(v136 + 8))(v66, v135);
          }

          if (!*(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_117;
          }
        }

        else if (v71 != 2)
        {
          goto LABEL_117;
        }

LABEL_191:

        goto LABEL_117;
      }

      v125 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_251:
      v131 = v66 + v125;
      v132 = type metadata accessor for JSColor();
      if (!(*(*(v132 - 8) + 48))(v131, 1, v132))
      {
        v133 = sub_24F928388();
        (*(*(v133 - 8) + 8))(v131, v133);
      }

      goto LABEL_117;
    }

    v72 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v73 = *(*(v72 - 8) + 48);
    if (v73(v66, 1, v72))
    {
LABEL_130:
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v75 = v66 + *(v74 + 48);
      if (!v73(v75, 1, v72))
      {
        v76 = swift_getEnumCaseMultiPayload();
        if (v76 <= 2)
        {
          switch(v76)
          {
            case 0:

              v119 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v120 = type metadata accessor for JSColor();
              if (!(*(*(v120 - 8) + 48))(v119, 1, v120))
              {
                v121 = sub_24F928388();
                (*(*(v121 - 8) + 8))(v119, v121);
              }

              goto LABEL_250;
            case 1:
              v126 = sub_24F9289E8();
              v127 = *(v126 - 8);
              if (!(*(v127 + 48))(v75, 1, v126))
              {
                (*(v127 + 8))(v75, v126);
              }

              if (!*(v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
                goto LABEL_250;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_250;
          }

LABEL_244:

          goto LABEL_250;
        }

        switch(v76)
        {
          case 3:
            goto LABEL_244;
          case 4:
            v130 = sub_24F9289E8();
            (*(*(v130 - 8) + 8))(v75, v130);
            break;
          case 5:
            goto LABEL_244;
        }
      }

LABEL_250:
      v125 = *(v74 + 80);
      goto LABEL_251;
    }

    v83 = swift_getEnumCaseMultiPayload();
    if (v83 > 2)
    {
      if (v83 != 3)
      {
        if (v83 == 4)
        {
          v134 = sub_24F9289E8();
          (*(*(v134 - 8) + 8))(v66, v134);
          goto LABEL_130;
        }

        if (v83 != 5)
        {
          goto LABEL_130;
        }
      }
    }

    else
    {
      if (!v83)
      {

        v122 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v123 = type metadata accessor for JSColor();
        if (!(*(*(v123 - 8) + 48))(v122, 1, v123))
        {
          v124 = sub_24F928388();
          (*(*(v124 - 8) + 8))(v122, v124);
        }

        goto LABEL_130;
      }

      if (v83 == 1)
      {
        v128 = sub_24F9289E8();
        v129 = *(v128 - 8);
        if (!(*(v129 + 48))(v66, 1, v128))
        {
          (*(v129 + 8))(v66, v128);
        }

        if (*(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_130;
      }

      if (v83 != 2)
      {
        goto LABEL_130;
      }
    }

    goto LABEL_130;
  }

LABEL_117:

  return swift_deallocObject();
}

uint64_t sub_24F29DCF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DefaultPageHeaderView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for HeaderPresentation(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_24F29A83C(v7, a1);
}

uint64_t sub_24F29DDC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F29DE30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F29DE78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F29DEE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F29DF50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F29DFB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F29E01C()
{
  result = qword_27F23DBA8;
  if (!qword_27F23DBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DBB0);
    sub_24F29E0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DBA8);
  }

  return result;
}

unint64_t sub_24F29E0A0()
{
  result = qword_27F23DBB8;
  if (!qword_27F23DBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB60);
    sub_24F29B2B0();
    sub_24F29B508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DBB8);
  }

  return result;
}

uint64_t sub_24F29E12C()
{
  type metadata accessor for GenericPage();
  sub_24F29F9D0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v3 == 255)
  {
    return 0;
  }

  if (v3)
  {
    v0 = 0;
  }

  else
  {
    v0 = *&v2[OBJC_IVAR____TtC12GameStoreKit11GenericPage_title];
  }

  sub_24E683B84(v2, v3);
  return v0;
}

uint64_t sub_24F29E2B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F29E320(char **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24F9230A8();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24F9230A8();
    *(v1 + *(*v1 + 200)) = 0;
  }

  else
  {
    sub_24F29EDB0(*a1, v1[13], v1);
    *(v1 + *(*v1 + 200)) = *&v2[OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction];
  }

  return sub_24F404120(v2, v3, v4, v5);
}

uint64_t sub_24F29E498()
{
  v1 = qword_27F23DBC0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C660);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_27F23DBC8, v2);
  v4 = qword_27F23DBD0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C658);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + qword_27F23DBD8, v5);
}

uint64_t sub_24F29E5C8()
{
  v0 = sub_24F404544();
  v1 = qword_27F23DBC0;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C660);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_27F23DBC8, v2);
  v4 = qword_27F23DBD0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C658);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + qword_27F23DBD8, v5);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GenericPageViewModel()
{
  result = qword_27F23DBE0;
  if (!qword_27F23DBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F29E790()
{
  sub_24EEFCB4C(319, &qword_27F23DBF0, &qword_27F22C668);
  if (v0 <= 0x3F)
  {
    sub_24EEFCB4C(319, &qword_27F23DBF8, &qword_27F215390);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_24F29E8D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F29E954()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F29E9E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F29EA68()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F29EAE0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_24F29EB8C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F29ED24(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, void, uint64_t, _UNKNOWN **))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = type metadata accessor for GenericPageViewModel();
    a3(v4, 0, v6, &off_286215270);
  }

  return result;
}

uint64_t sub_24F29EDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC00);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v23 = &v21 - v7;
  v8 = sub_24F923F78();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 104);
  v13(v12, *MEMORY[0x277CDFA88], v8, v10);
  sub_24F29F21C(a1, v12, a2);
  v14 = *(v9 + 8);
  v14(v12, v8);
  sub_24F29E8A8();
  (v13)(v12, *MEMORY[0x277CDFA90], v8);
  sub_24F29F21C(a1, v12, v22);
  v14(v12, v8);
  sub_24F29E940();
  if (sub_24F29E894())
  {

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC08);
    v15 = v23;
    sub_24F923068();
    swift_endAccess();

    swift_allocObject();
    swift_weakInit();
    sub_24F29F914();
    v16 = v25;
    v17 = sub_24F923148();

    v18 = v24;
    (*(v24 + 8))(v15, v16);
  }

  else
  {
    v17 = 0;
    v18 = v24;
    v16 = v25;
    v15 = v23;
  }

  *(a3 + qword_27F39E160) = v17;

  if (sub_24F29E8BC())
  {

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC08);
    sub_24F923068();
    swift_endAccess();

    swift_allocObject();
    swift_weakInit();
    sub_24F29F914();
    v19 = sub_24F923148();

    (*(v18 + 8))(v15, v16);
  }

  else
  {
    v19 = 0;
  }

  *(a3 + qword_27F39E168) = v19;
}

uint64_t sub_24F29F21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v41 = a2;
  v40 = sub_24F923F78();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v44 = v5;
  v6 = *(a1 + v5);
  v7 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    v12 = v7;
    goto LABEL_14;
  }

  v10 = 0;
  v11 = v6 + 32;
  v37 = v8 - 1;
  v12 = MEMORY[0x277D84F90];
  v38 = v6 + 32;
  do
  {
    v13 = v11 + 40 * v10;
    v14 = v10;
    while (1)
    {
      if (v14 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_24E65864C(v13, v45);
      if (*(*(a1 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v14;
      sub_24E6585F8(v45);
      v13 += 40;
      if (v8 == v14)
      {
        goto LABEL_14;
      }
    }

    sub_24E76D934(v45);
    if ((v15 & 1) == 0)
    {

      goto LABEL_4;
    }

    v16 = sub_24E6585F8(v45);
    MEMORY[0x253050F00](v16);
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v10 = v14 + 1;
    sub_24F92B638();
    v12 = v46;
    v11 = v38;
  }

  while (v37 != v14);
LABEL_14:

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_24:
  if (!sub_24F92C738())
  {
    goto LABEL_25;
  }

LABEL_16:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x253052270](0, v12);
    goto LABEL_19;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_56;
  }

  v17 = *(v12 + 32);

LABEL_19:

  v18 = *(v17 + 24);

  if (!*(v18 + 16))
  {
    goto LABEL_25;
  }

  sub_24E615E00(v18 + 32, v47);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  type metadata accessor for HeroCarousel();
  if (swift_dynamicCast())
  {
    v19 = v45[0];
    v20 = v42;
    (*(v39 + 16))(v42, v41, v40);
    type metadata accessor for HeroCarouselViewModel();
    swift_allocObject();
    v21 = v43;

    return sub_24ECB8008(v19, v20, v21);
  }

LABEL_26:
  v23 = *(a1 + v44);
  v46 = v7;
  v24 = *(v23 + 16);

  swift_beginAccess();
  if (!v24)
  {
    goto LABEL_37;
  }

  v25 = 0;
  v44 = v24 - 1;
  v7 = MEMORY[0x277D84F90];
  while (2)
  {
    v26 = v23 + 32 + 40 * v25;
    v27 = v25;
    while (2)
    {
      if (v27 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      sub_24E65864C(v26, v47);
      if (!*(*(a1 + v9) + 16))
      {
LABEL_30:
        ++v27;
        sub_24E6585F8(v47);
        v26 += 40;
        if (v24 == v27)
        {
          goto LABEL_37;
        }

        continue;
      }

      break;
    }

    sub_24E76D934(v47);
    if ((v28 & 1) == 0)
    {

      goto LABEL_30;
    }

    v29 = sub_24E6585F8(v47);
    MEMORY[0x253050F00](v29);
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v25 = v27 + 1;
    sub_24F92B638();
    v7 = v46;
    if (v44 != v27)
    {
      continue;
    }

    break;
  }

LABEL_37:

  if (v7 >> 62)
  {
LABEL_51:
    result = sub_24F92C738();
    if (!result)
    {
      goto LABEL_52;
    }

LABEL_39:
    if ((v7 & 0xC000000000000001) == 0)
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v30 = *(v7 + 32);

LABEL_42:

      v47[0] = *(v30 + 16);
      if (Shelf.ContentType.rawValue.getter() == 0x72426C6C65737075 && v31 == 0xEE0074756F6B6165)
      {
      }

      else
      {
        v32 = sub_24F92CE08();

        if ((v32 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      v33 = *(v30 + 24);
      if (*(v33 + 16))
      {
        sub_24E615E00(v33 + 32, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
        type metadata accessor for UpsellBreakout();
        if (swift_dynamicCast())
        {
          v34 = v46;
          type metadata accessor for HeroCarouselViewModel();
          swift_allocObject();
          v35 = v43;

          v36 = sub_24ECB8660(v34, v35);

          return v36;
        }
      }

LABEL_49:

      return 0;
    }

LABEL_56:
    v30 = MEMORY[0x253052270](0, v7);
    goto LABEL_42;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_39;
  }

LABEL_52:

  return 0;
}

uint64_t sub_24F29F8AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_24F29F914()
{
  result = qword_27F23DC10;
  if (!qword_27F23DC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DC10);
  }

  return result;
}