uint64_t GamesUIDeepLinkTarget.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224200);
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v72 = &v52 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224208);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v67 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224210);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224218);
  v8 = *(v7 - 8);
  v59 = v7;
  v60 = v8;
  MEMORY[0x28223BE20](v7);
  v70 = &v52 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224220);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v68 = &v52 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224228);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224230);
  v54 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224238);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - v18;
  v20 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24E9C4DDC();
  v21 = v74;
  sub_24F92D108();
  if (!v21)
  {
    v22 = v15;
    v53 = v13;
    v74 = v12;
    v24 = v70;
    v23 = v71;
    v25 = v72;
    v26 = sub_24F92CC78();
    v27 = (2 * *(v26 + 16)) | 1;
    v75 = v26;
    v76 = v26 + 32;
    v77 = 0;
    v78 = v27;
    v28 = sub_24E643444();
    if (v28 != 7 && v77 == v78 >> 1)
    {
      if (v28 > 2u)
      {
        if (v28 > 4u)
        {
          v41 = v69;
          if (v28 == 5)
          {
            v79 = 5;
            sub_24E9C4E84();
            v42 = v67;
            sub_24F92CBA8();
            (*(v63 + 8))(v42, v65);
            (*(v17 + 8))(v19, v16);
            swift_unknownObjectRelease();
            v50 = 0;
            v48 = 3;
            v51 = 3;
          }

          else
          {
            v79 = 6;
            sub_24E9C4E30();
            sub_24F92CBA8();
            v44 = v64;
            v48 = sub_24F92CC28();
            v50 = v47;
            (*(v66 + 8))(v25, v44);
            (*(v17 + 8))(v19, v16);
            swift_unknownObjectRelease();
            v51 = 2;
          }

          v34 = v73;
          goto LABEL_24;
        }

        v29 = v73;
        if (v28 == 3)
        {
          v79 = 3;
          sub_24E9C4F2C();
          sub_24F92CBA8();
          v45 = v59;
          v48 = sub_24F92CC28();
          v50 = v49;
          (*(v60 + 8))(v24, v45);
          (*(v17 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v51 = 1;
        }

        else
        {
          v79 = 4;
          sub_24E9C4ED8();
          sub_24F92CBA8();
          (*(v61 + 8))(v23, v62);
          (*(v17 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v50 = 0;
          v51 = 3;
          v48 = 2;
        }

        v34 = v29;
LABEL_23:
        v41 = v69;
LABEL_24:
        *v41 = v48;
        *(v41 + 8) = v50;
        *(v41 + 16) = v51;
        return __swift_destroy_boxed_opaque_existential_1(v34);
      }

      if (v28)
      {
        if (v28 == 1)
        {
          v79 = 1;
          sub_24E9C4FD4();
          v36 = v74;
          sub_24F92CBA8();
          v37 = v57;
          v38 = sub_24F92CC28();
          v39 = v36;
          v40 = v73;
          v48 = v38;
          v50 = v46;
          (*(v55 + 8))(v39, v37);
          (*(v17 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v51 = 0;
          v34 = v40;
          goto LABEL_23;
        }

        v79 = 2;
        sub_24E9C4F80();
        v43 = v68;
        sub_24F92CBA8();
        (*(v56 + 8))(v43, v58);
        (*(v17 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v50 = 0;
        v51 = 3;
        v48 = 1;
      }

      else
      {
        v79 = 0;
        sub_24E9C5028();
        sub_24F92CBA8();
        (*(v54 + 8))(v22, v53);
        (*(v17 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v48 = 0;
        v50 = 0;
        v51 = 3;
      }

      v34 = v73;
      goto LABEL_23;
    }

    v30 = sub_24F92C918();
    swift_allocError();
    v31 = v19;
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v33 = &type metadata for GamesUIDeepLinkTarget;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v30 - 8) + 104))(v33, *MEMORY[0x277D84160], v30);
    swift_willThrow();
    (*(v17 + 8))(v31, v16);
    swift_unknownObjectRelease();
  }

  v34 = v73;
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_24E9C4DC4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_24E9C4DDC()
{
  result = qword_27F2241C0;
  if (!qword_27F2241C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241C0);
  }

  return result;
}

unint64_t sub_24E9C4E30()
{
  result = qword_27F2241C8;
  if (!qword_27F2241C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241C8);
  }

  return result;
}

unint64_t sub_24E9C4E84()
{
  result = qword_27F2241D0;
  if (!qword_27F2241D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241D0);
  }

  return result;
}

unint64_t sub_24E9C4ED8()
{
  result = qword_27F2241D8;
  if (!qword_27F2241D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241D8);
  }

  return result;
}

unint64_t sub_24E9C4F2C()
{
  result = qword_27F2241E0;
  if (!qword_27F2241E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241E0);
  }

  return result;
}

unint64_t sub_24E9C4F80()
{
  result = qword_27F2241E8;
  if (!qword_27F2241E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241E8);
  }

  return result;
}

unint64_t sub_24E9C4FD4()
{
  result = qword_27F2241F0;
  if (!qword_27F2241F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241F0);
  }

  return result;
}

unint64_t sub_24E9C5028()
{
  result = qword_27F2241F8;
  if (!qword_27F2241F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241F8);
  }

  return result;
}

uint64_t type metadata accessor for OpenGamesUIAction()
{
  result = qword_27F224240;
  if (!qword_27F224240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit21GamesUIDeepLinkTargetO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for TodayCardArtworkSizedLayoutMetrics.LayoutSize(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TodayCardArtworkSizedLayoutMetrics.LayoutSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E9C51E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_24E9C5294()
{
  result = qword_27F224250;
  if (!qword_27F224250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224250);
  }

  return result;
}

unint64_t sub_24E9C52EC()
{
  result = qword_27F224258;
  if (!qword_27F224258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224258);
  }

  return result;
}

unint64_t sub_24E9C5344()
{
  result = qword_27F224260;
  if (!qword_27F224260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224260);
  }

  return result;
}

unint64_t sub_24E9C539C()
{
  result = qword_27F224268;
  if (!qword_27F224268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224268);
  }

  return result;
}

unint64_t sub_24E9C53F4()
{
  result = qword_27F224270;
  if (!qword_27F224270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224270);
  }

  return result;
}

unint64_t sub_24E9C544C()
{
  result = qword_27F224278;
  if (!qword_27F224278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224278);
  }

  return result;
}

unint64_t sub_24E9C54A4()
{
  result = qword_27F224280;
  if (!qword_27F224280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224280);
  }

  return result;
}

unint64_t sub_24E9C54FC()
{
  result = qword_27F224288;
  if (!qword_27F224288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224288);
  }

  return result;
}

unint64_t sub_24E9C5554()
{
  result = qword_27F224290;
  if (!qword_27F224290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224290);
  }

  return result;
}

unint64_t sub_24E9C55AC()
{
  result = qword_27F224298;
  if (!qword_27F224298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224298);
  }

  return result;
}

unint64_t sub_24E9C5604()
{
  result = qword_27F2242A0;
  if (!qword_27F2242A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242A0);
  }

  return result;
}

unint64_t sub_24E9C565C()
{
  result = qword_27F2242A8;
  if (!qword_27F2242A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242A8);
  }

  return result;
}

unint64_t sub_24E9C56B4()
{
  result = qword_27F2242B0;
  if (!qword_27F2242B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242B0);
  }

  return result;
}

unint64_t sub_24E9C570C()
{
  result = qword_27F2242B8;
  if (!qword_27F2242B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242B8);
  }

  return result;
}

unint64_t sub_24E9C5764()
{
  result = qword_27F2242C0;
  if (!qword_27F2242C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242C0);
  }

  return result;
}

unint64_t sub_24E9C57BC()
{
  result = qword_27F2242C8;
  if (!qword_27F2242C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242C8);
  }

  return result;
}

unint64_t sub_24E9C5814()
{
  result = qword_27F2242D0;
  if (!qword_27F2242D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242D0);
  }

  return result;
}

unint64_t sub_24E9C586C()
{
  result = qword_27F2242D8;
  if (!qword_27F2242D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242D8);
  }

  return result;
}

unint64_t sub_24E9C58C4()
{
  result = qword_27F2242E0;
  if (!qword_27F2242E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242E0);
  }

  return result;
}

unint64_t sub_24E9C591C()
{
  result = qword_27F2242E8;
  if (!qword_27F2242E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242E8);
  }

  return result;
}

uint64_t sub_24E9C5970(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F72506C61636F6CLL && a2 == 0xEC000000656C6966;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F4E79616C70 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676150656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73646E65697266 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4C750 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D65766569686361 && a2 == 0xEC00000073746E65)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void *TopShelfCarouselItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v65 - v6;
  v70 = sub_24F92AC28();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v65 - v9;
  v80 = sub_24F9285B8();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v73 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v65 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v71 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v67 = &v65 - v20;
  MEMORY[0x28223BE20](v21);
  v77 = &v65 - v22;
  MEMORY[0x28223BE20](v23);
  v75 = &v65 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v65 - v26;
  sub_24F928398();
  v28 = sub_24F928348();
  v30 = v29;
  v72 = v17;
  v31 = *(v17 + 8);
  v31(v27, v16);
  v32 = (v3 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_genre);
  *v32 = v28;
  v32[1] = v30;
  sub_24F928398();
  v33 = sub_24F928348();
  v35 = v34;
  v31(v27, v16);
  v36 = (v3 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_summary);
  *v36 = v33;
  v36[1] = v35;
  sub_24F928398();
  sub_24F928268();
  v31(v27, v16);
  sub_24E911D90(v15, v3 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_previewVideoUrl);
  sub_24F928398();
  sub_24F928268();
  v31(v27, v16);
  sub_24E911D90(v15, v3 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_cinemagraphUrl);
  sub_24F928398();
  v37 = sub_24F928348();
  v39 = v38;
  v31(v27, v16);
  v40 = (v3 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_bundleIdentifier);
  v41 = v3;
  *v40 = v37;
  v40[1] = v39;
  v42 = v75;
  sub_24F928398();
  v43 = sub_24F928348();
  v45 = v44;
  v31(v42, v16);
  if (v45)
  {
    v46 = v43;
  }

  else
  {
    v46 = 0;
  }

  v47 = (v41 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_adamId);
  *v47 = v46;
  v47[1] = v45;
  type metadata accessor for TopShelfAction(0);
  sub_24F928398();
  v74 = *(v78 + 16);
  v75 = (v78 + 16);
  v74(v76, v79, v80);
  sub_24E9C6534(&qword_27F2242F0, type metadata accessor for TopShelfAction);
  v48 = a1;
  v49 = v31;
  v50 = v16;
  v51 = v41;
  sub_24F929548();
  *(v41 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_installAction) = v82;
  sub_24F928398();
  sub_24E9480E0();
  sub_24F928248();
  v49(v27, v16);
  *(v41 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_remoteControllerRequirement) = v81;
  v52 = v77;
  sub_24F928398();
  v53 = sub_24F928278();
  v49(v52, v16);
  *(v41 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_isAppleArcadeGame) = v53 & 1;
  v54 = v67;
  v77 = v48;
  sub_24F928398();
  v55 = v69;
  sub_24F9282B8();
  v49(v54, v16);
  v56 = v68;
  v57 = v70;
  if ((*(v68 + 48))(v55, 1) == 1)
  {
    sub_24E601704(v55, &qword_27F2213B0);
    v58 = MEMORY[0x277D84F90];
  }

  else
  {
    v59 = v66;
    (*(v56 + 32))(v66, v55, v57);
    (*(v56 + 16))(v65, v59, v57);
    v74(v76, v79, v80);
    v69 = type metadata accessor for TopShelfNamedAttribute();
    sub_24E9C6534(&qword_27F2242F8, type metadata accessor for TopShelfNamedAttribute);
    v58 = sub_24F92B6A8();
    (*(v56 + 8))(v59, v57);
  }

  v60 = v79;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_namedAttributes) = v58;
  v61 = v71;
  (*(v72 + 16))(v71, v77, v50);
  v62 = v73;
  v74(v73, v60, v80);
  v63 = TopShelfItem.init(deserializing:using:)(v61, v62);
  (*(v78 + 8))(v60, v80);
  v49(v77, v50);
  return v63;
}

uint64_t sub_24E9C6534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TopShelfCarouselItem.genre.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_genre);

  return v1;
}

uint64_t TopShelfCarouselItem.summary.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_summary);

  return v1;
}

uint64_t TopShelfCarouselItem.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_bundleIdentifier);

  return v1;
}

uint64_t TopShelfCarouselItem.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_adamId);
  a1[1] = v2;
}

uint64_t sub_24E9C66B4()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_previewVideoUrl, &qword_27F228530);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_cinemagraphUrl, &qword_27F228530);
}

uint64_t TopShelfCarouselItem.deinit()
{
  v0 = TopShelfItem.deinit();

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_previewVideoUrl, &qword_27F228530);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_cinemagraphUrl, &qword_27F228530);

  return v0;
}

uint64_t TopShelfCarouselItem.__deallocating_deinit()
{
  TopShelfCarouselItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TopShelfCarouselItem()
{
  result = qword_27F224300;
  if (!qword_27F224300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E9C691C()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PersonalizationFeedbackRequest.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PersonalizationFeedbackRequest.__allocating_init(id:description:options:hasDivider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 88) = 0;
  sub_24E65E064(a1, &v25);
  if (*(&v26 + 1))
  {
    v15 = v26;
    *(v14 + 48) = v25;
    *(v14 + 64) = v15;
    *(v14 + 80) = v27;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v24[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v11 + 8))(v13, v10);
    v24[1] = v20;
    v24[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v24[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(&v25);
  }

  sub_24E9BBAA8(a1);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5 & 1;
  return v14;
}

uint64_t PersonalizationFeedbackRequest.init(id:description:options:hasDivider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 88) = 0;
  sub_24E65E064(a1, &v26);
  if (*(&v27 + 1))
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v25[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v25[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(&v26);
  }

  sub_24E9BBAA8(a1);
  v23 = v30;
  *(v6 + 48) = v29;
  *(v6 + 64) = v23;
  *(v6 + 80) = v31;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5 & 1;
  return v6;
}

uint64_t PersonalizationFeedbackRequest.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PersonalizationFeedbackRequest.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t PersonalizationFeedbackRequest.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v45[0] = *v3;
  v5 = sub_24F9285B8();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24F928388();
  v11 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v46 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45[1] = v45 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v45 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v45 - v19;
  *(v3 + 88) = 0;
  v51 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  if (v22)
  {
    v52 = v21;
    v53 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v52 = v23;
    v53 = v25;
  }

  sub_24F92C7F8();
  v26 = *(v11 + 8);
  v27 = v57;
  v26(v20, v57);
  v28 = v55;
  *(v3 + 48) = v54;
  *(v3 + 64) = v28;
  *(v3 + 80) = v56;
  v29 = v51;
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v26(v17, v27);
  if (v32)
  {
    *(v3 + 16) = v30;
    *(v3 + 24) = v32;
    sub_24F928398();
    v34 = v48;
    v33 = v49;
    v35 = *(v48 + 16);
    v45[0] = v26;
    v36 = v50;
    v35(v47, v50, v49);
    type metadata accessor for PersonalizationFeedbackRequestOption();
    sub_24E9C7A5C(&qword_27F224310, v37, type metadata accessor for PersonalizationFeedbackRequestOption);
    *(v3 + 32) = sub_24F92B698();
    v38 = v46;
    sub_24F928398();
    v39 = sub_24F928278();
    (*(v34 + 8))(v36, v33);
    v40 = v57;
    v41 = v45[0];
    (v45[0])(v29, v57);
    v41(v38, v40);
    *(v3 + 40) = v39 & 1;
  }

  else
  {
    v42 = sub_24F92AC38();
    sub_24E9C7A5C(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v43 = 0x7470697263736564;
    v43[1] = 0xEB000000006E6F69;
    v43[2] = v45[0];
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D22530], v42);
    swift_willThrow();
    (*(v48 + 8))(v50, v49);
    v26(v29, v27);
    sub_24E6585F8(v3 + 48);

    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t PersonalizationFeedbackRequest.clickAction.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t PersonalizationFeedbackRequest.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t PersonalizationFeedbackRequest.deinit()
{

  sub_24E6585F8(v0 + 48);

  return v0;
}

uint64_t PersonalizationFeedbackRequest.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t PersonalizationFeedbackRequestOption.value.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PersonalizationFeedbackRequestOption.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PersonalizationFeedbackRequestOption.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t PersonalizationFeedbackRequestOption.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v37 = a2;
  v3 = v2;
  v35 = *v3;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v38 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v13, v5);
  if (v16)
  {
    *(v3 + 16) = v14;
    *(v3 + 24) = v16;

    sub_24F928398();
    v18 = sub_24F928348();
    v20 = v19;
    v34 = v5;
    v35 = v17;
    v17(v10, v5);
    if (v20)
    {

      v14 = v18;
      v16 = v20;
    }

    v21 = v37;
    *(v3 + 32) = v14;
    *(v3 + 40) = v16;
    type metadata accessor for Action();
    v22 = v36;
    v23 = v38;
    sub_24F928398();
    v24 = static Action.tryToMakeInstance(byDeserializing:using:)(v22, v21);
    v25 = sub_24F9285B8();
    (*(*(v25 - 8) + 8))(v21, v25);
    v27 = v34;
    v26 = v35;
    v35(v23, v34);
    v26(v22, v27);
    *(v3 + 48) = v24;
  }

  else
  {
    v28 = sub_24F92AC38();
    sub_24E9C7A5C(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v29 = 0x656C746974;
    v30 = v35;
    v29[1] = 0xE500000000000000;
    v29[2] = v30;
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    v31 = sub_24F9285B8();
    (*(*(v31 - 8) + 8))(v37, v31);
    v17(v38, v5);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t PersonalizationFeedbackRequestOption.deinit()
{

  return v0;
}

uint64_t PersonalizationFeedbackRequestOption.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24E9C7A5C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24E9C7AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  v9 = swift_allocObject();
  result = a3(a1, a2);
  if (!v4)
  {
    *a4 = v9;
  }

  return result;
}

double OverlayHomeButtonReservedNotice.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double OverlayHomeButtonReservedNotice.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  sub_24E60169C(v1 + *(v3 + 28), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t OverlayHomeButtonReservedNotice.contextMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  sub_24E60169C(v1 + *(v6 + 32), v5, &qword_27F215440);
  return sub_24E6009C8(v5, a1, &qword_27F215460);
}

uint64_t sub_24E9C7F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  sub_24E60169C(a1 + *(v7 + 32), v6, &qword_27F215440);
  return sub_24E6009C8(v6, a2, &qword_27F215460);
}

unint64_t sub_24E9C8088()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x6575676573;
  if (v1 != 3)
  {
    v4 = 0x4D747865746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E656D6167;
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

uint64_t sub_24E9C8120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E9CBC08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E9C8148(uint64_t a1)
{
  v2 = sub_24E9C84CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9C8184(uint64_t a1)
{
  v2 = sub_24E9C84CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayHomeButtonReservedNotice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224320);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9C84CC();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    type metadata accessor for OverlayHomeButtonReservedNotice(0);
    v8[13] = 2;
    sub_24F929608();
    sub_24E9C8520(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v8[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24E9C84CC()
{
  result = qword_27F224328;
  if (!qword_27F224328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224328);
  }

  return result;
}

uint64_t sub_24E9C8520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OverlayHomeButtonReservedNotice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v35);
  v36 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224330);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v11[8];
  v15 = sub_24F929608();
  v16 = *(*(v15 - 8) + 56);
  v41 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = &v13[v11[9]];
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_24E61DA68(&v44, v17, qword_27F21B590);
  v18 = v11[10];
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v42 = v18;
  v20(&v13[v18], 1, 1, v19);
  v21 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24E9C84CC();
  v39 = v9;
  v22 = v40;
  sub_24F92D108();
  if (v22)
  {
    v25 = v41;
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_24E601704(&v13[v25], &qword_27F213E68);
    sub_24E601704(v17, qword_27F24EC90);
    return sub_24E601704(&v13[v42], &qword_27F215440);
  }

  else
  {
    v23 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v47 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v24 = v38;
    sub_24F92CC68();
    v26 = v45;
    *v13 = v44;
    *(v13 + 1) = v26;
    *(v13 + 4) = v46;
    LOBYTE(v44) = 1;
    v27 = sub_24F92CC28();
    v28 = v41;
    v29 = v37;
    *(v13 + 5) = v27;
    *(v13 + 6) = v30;
    LOBYTE(v44) = 2;
    sub_24E9C8520(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E61DA68(v23, &v13[v28], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v47 = 3;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v44, v17, qword_27F24EC90);
    LOBYTE(v44) = 4;
    sub_24E65CAA0();
    v31 = v36;
    v32 = v39;
    sub_24F92CC68();
    (*(v29 + 8))(v32, v24);
    sub_24E61DA68(v31, &v13[v42], &qword_27F215440);
    sub_24E9C8B94(v13, v34);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_24E9C8BF8(v13);
  }
}

uint64_t sub_24E9C8B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9C8BF8(uint64_t a1)
{
  v2 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E9C8C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

double sub_24E9C8D8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24E9C8DE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  sub_24E60169C(a1 + *(v4 + 28), v7, qword_27F24EC90);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24E9C8EFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E9C904C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E9C9188()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C938();
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E9C9274()
{
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
  sub_24F91FD88();
}

uint64_t sub_24E9C9318@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
  sub_24F91FD88();

  *a2 = *(v3 + 16);
}

uint64_t sub_24E9C93C4(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
    sub_24F91FD78();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_24EDD4478(v3, a1);

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 16) = a1;
}

uint64_t sub_24E9C952C()
{
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
  sub_24F91FD88();

  return *(v0 + 24);
}

uint64_t sub_24E9C95CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
  sub_24F91FD88();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_24E9C9674(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24E9C9784()
{
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
  sub_24F91FD88();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_24E9C9834@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
  sub_24F91FD88();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_24E9C98E0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_24F92CE08() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
    sub_24F91FD78();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_24E9C9A50()
{
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
  sub_24F91FD88();

  swift_beginAccess();
}

uint64_t sub_24E9C9B08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_24E9C9BC8(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24EDD4930(v3, a1);

  if (v4)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
    sub_24F91FD78();
  }
}

uint64_t sub_24E9C9D10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
}

uint64_t sub_24E9C9D78()
{
  type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel(0);
  swift_allocObject();
  result = sub_24E9C9DB8();
  qword_27F39B3A8 = result;
  return result;
}

uint64_t sub_24E9C9DB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224388);
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224390);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224398);
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = objc_opt_self();
  v10 = [v9 sharedInstance];
  v11 = [v10 respondingProcessBundleIdentifiers];

  if (v11)
  {
    v12 = sub_24F92BAA8();
  }

  else
  {
    v12 = 0;
  }

  *(v1 + 16) = v12;
  v13 = [v9 sharedInstance];
  v14 = [v13 isAvailable];

  *(v1 + 24) = v14;
  v15 = [v9 sharedInstance];
  v16 = [v15 localizedName];

  if (v16)
  {
    v17 = sub_24F92B0D8();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = MEMORY[0x277D84FA0];
  *(v1 + 32) = v17;
  *(v1 + 40) = v19;
  *(v1 + 48) = v20;
  sub_24F91FDB8();
  v21 = [v9 sharedInstance];
  swift_getKeyPath();
  sub_24F91F368();

  swift_allocObject();
  v30 = v9;
  swift_weakInit();
  sub_24E602068(&qword_27F2243A0, &qword_27F224398);

  sub_24F923148();

  (*(v31 + 8))(v8, v6);
  swift_getKeyPath();
  v38 = v1;
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
  sub_24F91FD88();

  v38 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24F922F58();
  swift_endAccess();

  v38 = v1;
  swift_getKeyPath();
  sub_24F91FD98();

  v22 = [v9 sharedInstance];
  swift_getKeyPath();
  v23 = v32;
  sub_24F91F368();

  swift_allocObject();
  swift_weakInit();
  sub_24E602068(&qword_27F2243A8, &qword_27F224390);
  v24 = v34;
  sub_24F923148();

  (*(v33 + 8))(v23, v24);
  swift_getKeyPath();
  v38 = v1;
  sub_24F91FD88();

  v38 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24F922F58();
  swift_endAccess();

  v38 = v1;
  swift_getKeyPath();
  sub_24F91FD98();

  v25 = [v30 sharedInstance];
  swift_getKeyPath();
  v26 = v35;
  sub_24F91F368();

  swift_allocObject();
  swift_weakInit();

  sub_24E602068(&qword_27F2243B0, &qword_27F224388);
  v27 = v37;
  sub_24F923148();

  (*(v36 + 8))(v26, v27);
  swift_getKeyPath();
  v38 = v1;
  sub_24F91FD88();

  v38 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24F922F58();
  swift_endAccess();

  v38 = v1;
  swift_getKeyPath();
  sub_24F91FD98();

  return v1;
}

void sub_24E9CA5D4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 respondingProcessBundleIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24F92BAA8();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_24E9CA644()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_24E9C93C4(v1);
  }

  return result;
}

uint64_t sub_24E9CA6A8(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1 == *(result + 24))
    {
      *(result + 24) = v1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
      sub_24F91FD78();
    }
  }

  return result;
}

void sub_24E9CA7F0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localizedName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24F92B0D8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_24E9CA858(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_24E9C98E0(v1, v2);
  }

  return result;
}

uint64_t sub_24E9CA8D0()
{

  v1 = OBJC_IVAR____TtCV12GameStoreKit40OverlayHomeButtonReservedNoticeComponent40OverlayHomeButtonReservedNoticeViewModel___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24E9CA9AC()
{
  result = sub_24F91FDC8();
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

unint64_t sub_24E9CAA88()
{
  result = qword_27F224368;
  if (!qword_27F224368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224368);
  }

  return result;
}

unint64_t sub_24E9CAAE0()
{
  result = qword_27F224370;
  if (!qword_27F224370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224370);
  }

  return result;
}

unint64_t sub_24E9CAB38()
{
  result = qword_27F224378;
  if (!qword_27F224378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224378);
  }

  return result;
}

uint64_t sub_24E9CAB8C()
{
  v1 = v0;
  v2 = sub_24F924848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 16);
  v20 = *v1;
  v6 = v20;
  if (v21 != 1)
  {

    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v20, &qword_27F224448);
    (*(v3 + 8))(v5, v2);
    v7 = *(&v19 + 1);
    v6 = v19;
    if (*(&v19 + 1))
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = 0;
    return v14 & 1;
  }

  v7 = *(&v20 + 1);

  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  v19 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224440);
  sub_24F926F38();
  v8 = v18;
  swift_getKeyPath();
  *&v19 = v8;
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
  sub_24F91FD88();

  v9 = *(v8 + 16);

  if (v9)
  {
    v19 = *(v1 + 24);
    sub_24F926F38();
    v10 = v18;
    swift_getKeyPath();
    *&v19 = v10;
    sub_24F91FD88();

    v11 = *(v10 + 24);

    if (v11 == 1 && (v19 = *(v1 + 24), sub_24F926F38(), v12 = v18, swift_getKeyPath(), *&v19 = v12, sub_24F91FD88(), , v13 = *(v12 + 40), , , v13))
    {

      v14 = sub_24F4D36F8(v6, v7, v9);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_24E9CAEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2243C8);
  MEMORY[0x28223BE20](v4);
  v6 = &v62 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2243D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v62 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2243D8);
  MEMORY[0x28223BE20](v69);
  v11 = &v62 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2243E0);
  MEMORY[0x28223BE20](v70);
  v13 = &v62 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2243E8);
  MEMORY[0x28223BE20](v72);
  v73 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2243F0);
  MEMORY[0x28223BE20](v15);
  v71 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  if (sub_24E9CAB8C())
  {
    v63 = v19;
    v64 = v15;
    v65 = v4;
    v66 = v6;
    v67 = a2;
    *v9 = sub_24F9249A8();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224420) + 44)];
    *v20 = sub_24F924C88();
    *(v20 + 1) = 0;
    v20[16] = 0;
    v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224428) + 44)];
    v62 = sub_24F9249A8();
    v76 = 0;
    sub_24E9CB5C0(v2, &v84);
    v79 = v86;
    v80 = v87;
    v81 = v88;
    v77 = v84;
    v78 = v85;
    v82[2] = v86;
    v82[3] = v87;
    v83 = v88;
    v82[0] = v84;
    v82[1] = v85;
    sub_24E60169C(&v77, &v74, &qword_27F224430);
    sub_24E601704(v82, &qword_27F224430);
    *(&v75[1] + 7) = v78;
    *(&v75[2] + 7) = v79;
    *(&v75[3] + 7) = v80;
    *(&v75[4] + 7) = v81;
    *(v75 + 7) = v77;
    v22 = v76;
    v23 = sub_24F9251C8();
    v24 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224438) + 36)];
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v26 = *MEMORY[0x277CE13B8];
    v27 = sub_24F927748();
    (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
    *v24 = v23;
    v28 = v75[0];
    *(v21 + 33) = v75[1];
    v29 = v75[3];
    *(v21 + 49) = v75[2];
    *(v21 + 65) = v29;
    *(v21 + 74) = *(&v75[3] + 9);
    *v21 = v62;
    *(v21 + 1) = 0x402C000000000000;
    v21[16] = v22;
    *(v21 + 17) = v28;
    LOBYTE(v26) = sub_24F9257F8();
    v30 = sub_24F925848();
    sub_24F925848();
    if (sub_24F925848() != v26)
    {
      v30 = sub_24F925848();
    }

    sub_24F923318();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_24E6009C8(v9, v11, &qword_27F2243D0);
    v39 = &v11[*(v69 + 36)];
    *v39 = v30;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    v40 = sub_24F925868();
    v41 = sub_24F925848();
    sub_24F925848();
    v42 = sub_24F925848();
    v43 = v66;
    if (v42 != v40)
    {
      v41 = sub_24F925848();
    }

    sub_24F923318();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    sub_24E6009C8(v11, v13, &qword_27F2243D8);
    v52 = &v13[*(v70 + 36)];
    *v52 = v41;
    *(v52 + 1) = v45;
    *(v52 + 2) = v47;
    *(v52 + 3) = v49;
    *(v52 + 4) = v51;
    v52[40] = 0;
    sub_24F927618();
    sub_24F9242E8();
    v53 = v73;
    sub_24E6009C8(v13, v73, &qword_27F2243E0);
    v54 = (v53 + *(v72 + 36));
    v55 = v89;
    v54[4] = v88;
    v54[5] = v55;
    v54[6] = v90;
    v56 = v85;
    *v54 = v84;
    v54[1] = v56;
    v57 = v87;
    v54[2] = v86;
    v54[3] = v57;
    v58 = v71;
    sub_24E6009C8(v53, v71, &qword_27F2243E8);
    v59 = v58;
    v60 = v63;
    sub_24E6009C8(v59, v63, &qword_27F2243F0);
    sub_24E60169C(v60, v43, &qword_27F2243F0);
    swift_storeEnumTagMultiPayload();
    sub_24E9CC200();
    sub_24F924E28();
    return sub_24E601704(v60, &qword_27F2243F0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24E9CC200();
    return sub_24F924E28();
  }
}

void sub_24E9CB5C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924A78();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  *v51 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224440);
  sub_24F926F38();

  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 sfSymbolName];

  if (!v9)
  {
    goto LABEL_6;
  }

  sub_24F92B0D8();

  *v51 = *(a1 + 24);
  sub_24F926F38();
  v10 = v49;
  swift_getKeyPath();
  v51[0] = v10;
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel);
  sub_24F91FD88();

  v9 = *(v10 + 40);

  if (!v9)
  {

LABEL_6:
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0uLL;
    v35 = 0uLL;
    goto LABEL_9;
  }

  v46 = sub_24F926DF8();
  v11 = sub_24F925908();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_24F925968();
  sub_24E601704(v7, &qword_27F214698);
  sub_24F925958();
  v45 = sub_24F9259A8();

  KeyPath = swift_getKeyPath();
  sub_24E9CC490();
  v14 = v13;

  v44 = a2;
  if (v14)
  {
    sub_24F924A68();
    sub_24F924A58();
    sub_24F924A48();

    sub_24F924A58();
    sub_24F926DF8();
    sub_24F924A38();

    sub_24F924A58();
    sub_24F924A48();

    sub_24F924A58();
    sub_24F924A98();
    v15 = sub_24F925DE8();
    v17 = v16;
    v19 = v18;
    sub_24F9259E8();
    v20 = sub_24F925C98();
    v22 = v21;
    v23 = KeyPath;
    v25 = v24;
    v27 = v26;

    sub_24E600B40(v15, v17, v19 & 1);

    v28 = swift_getKeyPath();
    v29 = v25 & 1;
    KeyPath = v23;
    *&v49 = v20;
    *(&v49 + 1) = v22;
    *v50 = v29;
    *&v50[8] = v27;
    *&v50[16] = v28;
    *&v50[24] = 0;
  }

  else
  {

    v49 = 0u;
    memset(v50, 0, 25);
    v50[25] = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8);
  sub_24E62FBF4();
  sub_24F924E28();
  v9 = v51[0];
  v47 = *&v51[3];
  v48 = *&v51[1];
  v36 = v52;
  v37 = v53;
  LOBYTE(v51[0]) = v53;
  v30 = v46;

  v32 = v45;

  v38 = v48;
  v39 = KeyPath;
  v40 = BYTE8(v48);
  v41 = v47;
  sub_24E9CC56C(v9, v48, SBYTE8(v48), v47, *(&v47 + 1), v36, v37);
  v42 = v38;
  v31 = v39;
  sub_24E9CC5BC(v9, v42, v40, v41, *(&v41 + 1), v36, v37);

  v35 = v47;
  v34 = v48;
  v33 = v36 | (v37 << 8);
  a2 = v44;
LABEL_9:
  *a2 = v30;
  *(a2 + 8) = v31;
  *(a2 + 16) = v32;
  *(a2 + 24) = v9;
  *(a2 + 32) = v34;
  *(a2 + 48) = v35;
  *(a2 + 64) = v33;
}

uint64_t sub_24E9CBB84()
{
  sub_24E9CC614(*v0, *(v0 + 8), *(v0 + 16));
  sub_24E9CC0A8();

  return sub_24F9218E8();
}

uint64_t sub_24E9CBC08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24E9CBE08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24E9C98E0(v1, v2);
}

uint64_t sub_24E9CBE48()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_24E9CBEF4()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_24E9CBF30(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E9CBFA8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_24E9CBFF4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isAvailable];
  *a2 = result;
  return result;
}

unint64_t sub_24E9CC0A8()
{
  result = qword_27F2243B8;
  if (!qword_27F2243B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2243B8);
  }

  return result;
}

unint64_t sub_24E9CC100()
{
  result = qword_27F2243C0;
  if (!qword_27F2243C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2243C0);
  }

  return result;
}

unint64_t sub_24E9CC200()
{
  result = qword_27F2243F8;
  if (!qword_27F2243F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2243F0);
    sub_24E9CC2B8();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2243F8);
  }

  return result;
}

unint64_t sub_24E9CC2B8()
{
  result = qword_27F224400;
  if (!qword_27F224400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2243E8);
    sub_24E9CC344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224400);
  }

  return result;
}

unint64_t sub_24E9CC344()
{
  result = qword_27F224408;
  if (!qword_27F224408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2243E0);
    sub_24E9CC3D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224408);
  }

  return result;
}

unint64_t sub_24E9CC3D0()
{
  result = qword_27F224410;
  if (!qword_27F224410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2243D8);
    sub_24E602068(&qword_27F224418, &qword_27F2243D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224410);
  }

  return result;
}

uint64_t sub_24E9CC490()
{
  _s12GameStoreKit0abC16LocalizedStringsO48GAME_CONTROLLER_HOME_BUTTON_RESERVED_DESCRIPTION7appName06buttonM0S2S_SStFZ_0();
  sub_24E600AEC();
  v0 = sub_24F92C4E8();

  if (*(v0 + 16) == 2)
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_24E9CC56C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_24E5FD138(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24E9CC5BC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_24E600B40(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24E9CC614(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24E9CC628()
{
  result = qword_27F224450;
  if (!qword_27F224450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224458);
    sub_24E9CC200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224450);
  }

  return result;
}

uint64_t GuidedSearchFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GuidedSearchFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F2106B0 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460);
  __swift_project_value_buffer(v3, qword_27F22E4C0);
  type metadata accessor for Action();
  sub_24F929AD8();
  if (!v11[0])
  {
    goto LABEL_13;
  }

  type metadata accessor for SearchAction();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

LABEL_13:
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v10 = sub_24F92AAE8();
    __swift_project_value_buffer(v10, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  v5 = *(v4 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens);
  if (v5 && *(v5 + 16))
  {
    v6 = v4;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v11[0] = v5;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

    sub_24F929A28();
    if (v1)
    {
LABEL_10:

      return __swift_destroy_boxed_opaque_existential_1(v11);
    }

    __swift_destroy_boxed_opaque_existential_1(v11);
    v7 = *(v6 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm + 8);
    if (v7)
    {
      v8 = *(v6 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);
      v12 = MEMORY[0x277D837D0];
      v11[0] = v8;
      v11[1] = v7;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

      sub_24F929A28();
      goto LABEL_10;
    }
  }
}

uint64_t sub_24E9CCA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E9CCB1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GuidedSearchFieldsProvider()
{
  result = qword_27F224468;
  if (!qword_27F224468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentMode a1, uint64_t a2, double a3, double a4)
{
  v6 = CGSize.fitting(_:mode:)(__PAIR128__(*&a4, *&a3), a1);
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  [v8 scale];

  v9 = floor(v6.width);
  v10 = floor(v6.height);
  sub_24E9F7608(a2, &v30);
  v11 = v30;
  v29 = v31;
  v12 = v32;
  v13 = v33;
  v15 = v4[2];
  v14 = v4[3];

  v16 = [v7 mainScreen];
  [v16 scale];
  v18 = v17;

  v20 = v4[9];
  v19 = v4[10];

  if (v13 == 1)
  {
    v21 = [v7 mainScreen];
    v22 = [v21 traitCollection];

    v23 = [v22 displayGamut];
    v24 = v23 == 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = type metadata accessor for ArtworkLoaderConfig();
  v26 = swift_allocObject();
  *(v26 + 16) = v15;
  *(v26 + 24) = v14;
  *(v26 + 32) = v9;
  *(v26 + 40) = v10;
  *(v26 + 72) = v11;
  *(v26 + 48) = v20;
  *(v26 + 56) = v19;
  *(v26 + 64) = v18;
  *(v26 + 80) = v29;
  *(v26 + 88) = v12;
  *(v26 + 89) = v24;
  v30 = v15;
  v31 = v14;
  if (!Artwork.URLTemplate.isSystemImage.getter() && (v9 <= 0.0 || v10 <= 0.0))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v27 = sub_24F92AAE8();
    __swift_project_value_buffer(v27, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v34 = v25;
    v30 = v26;

    sub_24F928458();
    sub_24E857CC8(&v30);
    sub_24F92A5B8();
  }

  return v26;
}

uint64_t Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v8 = *a1;
  v7 = a1[1];
  sub_24E9F7608(a2, &v31);
  v30 = v32;
  v28 = v31;
  v29 = v33;
  v9 = v34;
  v11 = v4[2];
  v10 = v4[3];
  v12 = objc_opt_self();

  v13 = [v12 mainScreen];
  [v13 scale];

  v14 = [v12 mainScreen];
  [v14 scale];
  v16 = v15;

  if (v7)
  {
    v17 = v7;
  }

  else
  {
    v8 = v4[9];
    v17 = v4[10];
  }

  v18 = floor(a3);
  v19 = floor(a4);

  if (v9)
  {
    v20 = [v12 mainScreen];
    v21 = [v20 traitCollection];

    v22 = [v21 displayGamut];
    v23 = v22 == 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = type metadata accessor for ArtworkLoaderConfig();
  v25 = swift_allocObject();
  *(v25 + 16) = v11;
  *(v25 + 24) = v10;
  *(v25 + 32) = v18;
  *(v25 + 40) = v19;
  *(v25 + 72) = v28;
  *(v25 + 48) = v8;
  *(v25 + 56) = v17;
  *(v25 + 64) = v16;
  *(v25 + 80) = v30;
  *(v25 + 88) = v29;
  *(v25 + 89) = v23;
  v31 = v11;
  v32 = v10;
  if (!Artwork.URLTemplate.isSystemImage.getter() && (v18 <= 0.0 || v19 <= 0.0))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v26 = sub_24F92AAE8();
    __swift_project_value_buffer(v26, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v35 = v24;
    v31 = v25;

    sub_24F928458();
    sub_24E857CC8(&v31);
    sub_24F92A5B8();
  }

  return v25;
}

BOOL Artwork.shouldUseWideGamut(for:)(uint64_t a1)
{
  if (*(a1 + 17) != 1)
  {
    return 0;
  }

  v1 = [objc_opt_self() mainScreen];
  v2 = [v1 traitCollection];

  v3 = [v2 displayGamut];
  return v3 == 1;
}

uint64_t Artwork.config(using:)(double a1, double a2)
{
  v3[0] = 0;
  v3[1] = 0;
  return Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(v3, 0, a1, a2);
}

uint64_t sub_24E9CD340(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E9CD490(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ChallengeDetailHiddenInvitedPlayerLockup()
{
  result = qword_27F224478;
  if (!qword_27F224478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E9CD618()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24E61C938();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E9CD70C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2244B0);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for ChallengeDetailHiddenInvitedPlayerLockup();
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 72) = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 13) = 0;
  v39 = v13 + 72;
  sub_24E61DA68(&v41, (v13 + 72), qword_27F21B590);
  v14 = *(v11 + 32);
  v15 = sub_24F92A6D8();
  v16 = *(*(v15 - 8) + 56);
  v38 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24E9CE78C();
  v18 = v37;
  sub_24F92D108();
  if (v18)
  {
    v19 = v38;
    v20 = v39;
    __swift_destroy_boxed_opaque_existential_1(v40);
    sub_24E601704(v20, qword_27F24EC90);
    return sub_24E601704(&v13[v19], &qword_27F215440);
  }

  else
  {
    v32 = v5;
    v37 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v44 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v21 = v42;
    *v13 = v41;
    *(v13 + 1) = v21;
    *(v13 + 4) = v43;
    LOBYTE(v41) = 1;
    v22 = sub_24F92CC28();
    v23 = v38;
    v24 = v39;
    v25 = v35;
    *(v13 + 5) = v22;
    *(v13 + 6) = v26;
    LOBYTE(v41) = 2;
    *(v13 + 7) = sub_24F92CC28();
    *(v13 + 8) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v44 = 3;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v41, v24, qword_27F24EC90);
    LOBYTE(v41) = 4;
    sub_24E65CAA0();
    v28 = v37;
    sub_24F92CC68();
    v32 = 0;
    sub_24E61DA68(v28, &v13[v23], &qword_27F215440);
    sub_24F929608();
    LOBYTE(v41) = 5;
    sub_24E9CE7E0(&qword_27F213F48, MEMORY[0x277D21F70]);
    v29 = v34;
    sub_24F92CC18();
    (*(v25 + 8))(v10, v36);
    sub_24E6009C8(v29, &v13[*(v11 + 36)], &qword_27F213E68);
    sub_24E9CE828(v13, v33);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return sub_24E9CE88C(v13);
  }
}

uint64_t sub_24E9CDD1C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  v4 = 0x4D747865746E6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x614E6C6F626D7973;
  if (v1 != 1)
  {
    v5 = 0x7470697263736564;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_24E9CDDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E9CEBD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E9CDE08(uint64_t a1)
{
  v2 = sub_24E9CE78C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9CDE44(uint64_t a1)
{
  v2 = sub_24E9CE78C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E9CDE80@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 72, v5, qword_27F24EC90);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24E9CDED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

unint64_t sub_24E9CE000()
{
  result = qword_27F224488;
  if (!qword_27F224488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224488);
  }

  return result;
}

__n128 sub_24E9CE054@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9249A8();
  v35 = 0;
  sub_24E9CE2D0(a1, &v25);
  v43 = v31;
  v44 = v32;
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v42 = v30;
  v37 = v25;
  v38 = v26;
  v46[6] = v31;
  v46[7] = v32;
  v46[2] = v27;
  v46[3] = v28;
  v46[4] = v29;
  v46[5] = v30;
  v45 = v33;
  v47 = v33;
  v46[0] = v25;
  v46[1] = v26;
  sub_24E60169C(&v37, v24, &qword_27F2244A0);
  sub_24E601704(v46, &qword_27F2244A0);
  *&v34[87] = v42;
  *&v34[103] = v43;
  *&v34[119] = v44;
  *&v34[23] = v38;
  *&v34[39] = v39;
  *&v34[55] = v40;
  *&v34[71] = v41;
  *&v34[135] = v45;
  *&v34[7] = v37;
  v5 = v35;
  LOBYTE(a1) = sub_24F925868();
  LOBYTE(v25) = 1;
  v6 = sub_24F9257F8();
  sub_24F923318();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v24[0] = 0;
  sub_24F927628();
  sub_24F9242E8();
  *&v36[55] = v28;
  *&v36[71] = v29;
  *&v36[87] = v30;
  *&v36[103] = v31;
  *&v36[7] = v25;
  *&v36[23] = v26;
  *&v36[39] = v27;
  v15 = *&v34[64];
  *(a2 + 97) = *&v34[80];
  v16 = *&v34[112];
  *(a2 + 113) = *&v34[96];
  *(a2 + 129) = v16;
  *(a2 + 144) = *&v34[127];
  v17 = *v34;
  *(a2 + 33) = *&v34[16];
  v18 = *&v34[48];
  *(a2 + 49) = *&v34[32];
  *(a2 + 65) = v18;
  *(a2 + 81) = v15;
  *a2 = v4;
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = v5;
  *(a2 + 17) = v17;
  *(a2 + 160) = a1;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 1;
  *(a2 + 208) = v6;
  *(a2 + 216) = v8;
  *(a2 + 224) = v10;
  *(a2 + 232) = v12;
  *(a2 + 240) = v14;
  *(a2 + 248) = 0;
  result = *&v36[64];
  v20 = *&v36[96];
  *(a2 + 329) = *&v36[80];
  *(a2 + 345) = v20;
  *(a2 + 360) = *&v36[111];
  v21 = *&v36[16];
  *(a2 + 249) = *v36;
  v22 = *&v36[32];
  v23 = *&v36[48];
  *(a2 + 265) = v21;
  *(a2 + 281) = v22;
  *(a2 + 297) = v23;
  *(a2 + 313) = result;
  return result;
}

uint64_t sub_24E9CE2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v25 = sub_24F926E48();
  sub_24F927618();
  sub_24F9238C8();
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v28 = sub_24F926D08();

  v27 = sub_24F927618();
  v26 = v4;
  LOBYTE(v45) = v30;
  LOBYTE(v39) = v32;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v45 = v5;
  v46 = v6;
  sub_24E600AEC();

  v7 = sub_24F925E18();
  v9 = v8;
  v11 = v10;
  sub_24F9259D8();
  v12 = sub_24F925C98();
  v14 = v13;
  v24 = v15;
  v17 = v16;

  sub_24E600B40(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v19 = sub_24F9251C8();
  *&v39 = v25;
  *(&v39 + 1) = v29;
  LOBYTE(v40) = v30;
  *(&v40 + 1) = *v38;
  DWORD1(v40) = *&v38[3];
  *(&v40 + 1) = v31;
  LOBYTE(v41) = v32;
  *(&v41 + 1) = *v37;
  DWORD1(v41) = *&v37[3];
  *(&v41 + 1) = v33;
  *&v42 = v34;
  *(&v42 + 1) = v28;
  LOWORD(v43) = 256;
  WORD3(v43) = v36;
  *(&v43 + 2) = v35;
  *(&v43 + 1) = v27;
  v44 = v26;
  v20 = v41;
  v21 = v43;
  *(a2 + 48) = v42;
  *(a2 + 64) = v21;
  v22 = v39;
  *(a2 + 16) = v40;
  *(a2 + 32) = v20;
  *a2 = v22;
  *(a2 + 80) = v26;
  *(a2 + 88) = v12;
  *(a2 + 96) = v14;
  *(a2 + 104) = v24 & 1;
  *(a2 + 112) = v17;
  *(a2 + 120) = KeyPath;
  *(a2 + 128) = 0;
  *(a2 + 132) = v19;
  sub_24E60169C(&v39, &v45, &qword_27F2244A8);
  sub_24E5FD138(v12, v14, v24 & 1);

  sub_24E600B40(v12, v14, v24 & 1);

  v45 = v25;
  v46 = v29;
  v47 = v30;
  *v48 = *v38;
  *&v48[3] = *&v38[3];
  v49 = v31;
  v50 = v32;
  *v51 = *v37;
  *&v51[3] = *&v37[3];
  v52 = v33;
  v53 = v34;
  v54 = v28;
  v55 = 256;
  v57 = v36;
  v56 = v35;
  v58 = v27;
  v59 = v26;
  return sub_24E601704(&v45, &qword_27F2244A8);
}

uint64_t sub_24E9CE5F4()
{
  sub_24E9CE000();

  return sub_24F9218E8();
}

unint64_t sub_24E9CE684()
{
  result = qword_27F224498;
  if (!qword_27F224498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224498);
  }

  return result;
}

unint64_t sub_24E9CE78C()
{
  result = qword_27F2244B8;
  if (!qword_27F2244B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2244B8);
  }

  return result;
}

uint64_t sub_24E9CE7E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E9CE828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeDetailHiddenInvitedPlayerLockup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9CE88C(uint64_t a1)
{
  v2 = type metadata accessor for ChallengeDetailHiddenInvitedPlayerLockup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E9CE8FC()
{
  result = qword_27F2244C0;
  if (!qword_27F2244C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2244C8);
    sub_24E9CE988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2244C0);
  }

  return result;
}

unint64_t sub_24E9CE988()
{
  result = qword_27F2244D0;
  if (!qword_27F2244D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2244D8);
    sub_24E9CEA14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2244D0);
  }

  return result;
}

unint64_t sub_24E9CEA14()
{
  result = qword_27F2244E0;
  if (!qword_27F2244E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2244E8);
    sub_24E602068(&qword_27F2244F0, &qword_27F2244F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2244E0);
  }

  return result;
}

unint64_t sub_24E9CEAD0()
{
  result = qword_27F224500;
  if (!qword_27F224500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224500);
  }

  return result;
}

unint64_t sub_24E9CEB28()
{
  result = qword_27F224508;
  if (!qword_27F224508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224508);
  }

  return result;
}

unint64_t sub_24E9CEB80()
{
  result = qword_27F224510;
  if (!qword_27F224510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224510);
  }

  return result;
}

uint64_t sub_24E9CEBD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t static ASDIAPHistory.hasSubscriptions()()
{
  v0 = sub_24F922028();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = aBlock - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224518);
  v7 = sub_24F92A9E8();
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v8 = sub_24F929768();
  sub_24F921FE8();

  v9 = [objc_opt_self() sharedInstance];
  (*(v1 + 16))(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = (v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v1 + 32))(v12 + v10, v3, v0);
  *(v12 + v11) = v7;
  aBlock[4] = sub_24E9CF4D0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9CF714;
  aBlock[3] = &block_descriptor_35;
  v13 = _Block_copy(aBlock);

  [v9 getAllIAPsForActiveAccountWithResultHandler_];
  _Block_release(v13);

  (*(v1 + 8))(v6, v0);
  return v7;
}

uint64_t sub_24E9CF078(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v42 = a1;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v34 - v14;
  sub_24F92C048();
  sub_24F929778();
  v16 = sub_24F929768();
  sub_24F921FE8();

  if (a2)
  {
    v44 = 1;
  }

  else
  {
    v39 = v6;
    v40 = v15;
    v41 = v12;
    v17 = MEMORY[0x277D84F90];
    v18 = v42;
    if (v42)
    {
      v45 = MEMORY[0x277D84F90];
      v19 = v42 & 0xFFFFFFFFFFFFFF8;
      if (v42 >> 62)
      {
        goto LABEL_24;
      }

      v20 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v41; v20; i = v41)
      {
        v34[1] = a4;
        v35 = v20;
        v22 = 0;
        v43 = v18 & 0xC000000000000001;
        v36 = (v7 + 8);
        v37 = (v7 + 32);
        v38 = v19;
        while (1)
        {
          if (v43)
          {
            v23 = MEMORY[0x253052270](v22, v18);
          }

          else
          {
            if (v22 >= *(v19 + 16))
            {
              goto LABEL_23;
            }

            v23 = *(v18 + 8 * v22 + 32);
          }

          v24 = v23;
          a4 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          v25 = [v23 expirationDate];
          if (v25)
          {
            v26 = v25;
            sub_24F91F608();

            v27 = v40;
            v28 = i;
            v29 = v39;
            (*v37)(v40, v28, v39);
            sub_24F91F638();
            sub_24E7C79D8();
            LOBYTE(v26) = sub_24F92AF78();
            v30 = *v36;
            v7 = v9;
            (*v36)(v9, v29);
            v30(v27, v29);
            if (v26)
            {
              v31 = [v24 type];
              v20 = v35;
              if ((v31 & 0xFE) == 2)
              {
                sub_24F92C948();
                sub_24F92C988();
                sub_24F92C998();
                sub_24F92C958();
              }

              else
              {
              }

              i = v41;
              v18 = v42;
              v19 = v38;
            }

            else
            {

              i = v41;
              v18 = v42;
              v19 = v38;
              v20 = v35;
            }
          }

          else
          {
          }

          ++v22;
          if (a4 == v20)
          {
            v17 = v45;
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        v20 = sub_24F92C738();
      }

      v17 = MEMORY[0x277D84F90];
    }

LABEL_26:
    if (v17 >> 62)
    {
      v32 = sub_24F92C738();
    }

    else
    {
      v32 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = v32 > 0;
  }

  return sub_24F92A9C8();
}

uint64_t sub_24E9CF434()
{
  v1 = sub_24F922028();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E9CF4D0(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E9CF078(a1, a2, v2 + v6, v7);
}

uint64_t ASDIAPInfo.isExpired.getter()
{
  v1 = v0;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v19 - v11;
  v13 = [v1 expirationDate];
  if (v13)
  {
    v14 = v13;
    sub_24F91F608();

    (*(v3 + 32))(v12, v8, v2);
    sub_24F91F638();
    sub_24E7C79D8();
    v15 = sub_24F92AF78();
    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v12, v2);
    v17 = v15 ^ 1;
  }

  else
  {
    v17 = 1;
  }

  return v17 & 1;
}

uint64_t sub_24E9CF714(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24E9CF7C0();
    v4 = sub_24F92B5A8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E9CF7C0()
{
  result = qword_27F21BCF8;
  if (!qword_27F21BCF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F21BCF8);
  }

  return result;
}

uint64_t sub_24E9CF86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_24F924B38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224530);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - v12;
  v14 = sub_24F9232F8();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = *(*(a1 + 16) + 56);
  if (v15)
  {
    v16 = type metadata accessor for Action();
    v17 = sub_24E9D1074(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    *(&v28 + 1) = 0;
    *&v29 = 0;
  }

  *&v28 = v15;
  *(&v29 + 1) = v16;
  v30 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224538);
  v18 = sub_24E9D0A64();
  v31[5] = &type metadata for EditorialLinkView.LinkView;
  v31[6] = v18;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  (*(v4 + 104))(v6, *MEMORY[0x277CE0118], v3);
  v19 = sub_24F924258();
  v31[3] = v19;
  v31[4] = sub_24E9D1074(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(v4 + 16))(boxed_opaque_existential_1 + *(v19 + 20), v6, v3);
  __asm { FMOV            V0.2D, #12.0 }

  *boxed_opaque_existential_1 = _Q0;
  (*(v4 + 8))(v6, v3);
  sub_24E602068(&qword_27F224548, &qword_27F224530);
  sub_24E620DE8();
  sub_24F926178();
  sub_24E6A56E8(&v28);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24E9CFC74(uint64_t a1)
{
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = v6[7];
  if (v7)
  {
    v8 = *(v7 + 32);
  }

  else
  {
    v8 = 0;
  }

  v10 = v6[4];
  v9 = v6[5];
  v12 = v6[2];
  v11 = v6[3];

  sub_24F9248B8();
  v14[1] = v8;
  v14[2] = v10;
  v14[3] = v9;
  v14[4] = v12;
  v14[5] = v11;
  sub_24E9D0A64();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);
}

double sub_24E9CFDD8@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F9249A8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224550);
  sub_24E9CFFD4(v1, a1 + *(v3 + 44));
  v4 = sub_24F925808();
  sub_24F923318();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224558) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = sub_24F925808();
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224560) + 36);
  *v15 = 1;
  *(v15 + 8) = v14;
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224568) + 36));
  v17 = *(sub_24F924258() + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_24F924B38();
  v20 = *(*(v19 - 8) + 104);
  v20(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #12.0 }

  *v16 = _Q0;
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224570) + 36);
  v27 = type metadata accessor for RoundedRectWithOutsetsModifer(0);
  v20((v26 + v27[6]), v18, v19);
  result = 0.0;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0x4028000000000000;
  *(v26 + v27[7]) = 1;
  v29 = v26 + v27[8];
  *v29 = 0;
  *(v29 + 8) = 1;
  return result;
}

uint64_t sub_24E9CFFD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224578);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224580);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v25 - v15;
  *v16 = sub_24F924978();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224588);
  sub_24E9D02C8(a1, &v16[*(v17 + 44)]);
  v25[1] = sub_24F926DF8();
  sub_24F9268B8();

  LODWORD(a1) = sub_24F9251B8();
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224590) + 36)] = a1;
  v18 = &v10[*(v5 + 44)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v20 = *MEMORY[0x277CE1058];
  v21 = sub_24F926E78();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  sub_24E60169C(v16, v13, &qword_27F224580);
  sub_24E9D0C50(v10, v7);
  sub_24E60169C(v13, a2, &qword_27F224580);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224598);
  v23 = a2 + *(v22 + 48);
  *v23 = 0x402C000000000000;
  *(v23 + 8) = 0;
  sub_24E9D0C50(v7, a2 + *(v22 + 64));
  sub_24E9D0CC0(v10);
  sub_24E601704(v16, &qword_27F224580);
  sub_24E9D0CC0(v7);
  return sub_24E601704(v13, &qword_27F224580);
}

uint64_t sub_24E9D02C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for SwiftUIArtworkView(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2245A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v10);
  v12 = &v34[-v11 - 8];
  v44 = *a1;
  v13 = v44;
  if (v44)
  {
    v14 = v9;
    v15 = v3[6];
    v16 = &v34[-v11 - 8];
    v17 = a1;
    v18 = *MEMORY[0x277CE1010];
    v19 = sub_24F926E68();
    v20 = &v6[v15];
    v9 = v14;
    v21 = v18;
    a1 = v17;
    v12 = v16;
    (*(*(v19 - 8) + 104))(v20, v21, v19);
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    *v6 = v13;
    v6[24] = 1;
    v22 = &v6[v3[7]];
    *v22 = 0;
    *(v22 + 1) = 0;
    v22[16] = 1;
    v6[v3[8]] = 2;
    v6[v3[9]] = 0;
    sub_24E9D0D28(v6, v16);
    (*(v4 + 56))(v16, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(&v34[-v11 - 8], 1, 1, v3);
  }

  sub_24E60169C(&v44, v38, &qword_27F2245A8);
  v23 = sub_24F924C98();
  LOBYTE(v38[0]) = 0;
  sub_24E9D066C(a1, v35);
  *&v34[7] = v35[0];
  *&v34[23] = v35[1];
  *&v34[39] = v35[2];
  *&v34[55] = v35[3];
  v24 = v38[0];
  sub_24E60169C(v12, v9, &qword_27F2245A0);
  v25 = v33;
  sub_24E60169C(v9, v33, &qword_27F2245A0);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2245B0) + 48);
  *&v36 = v23;
  *(&v36 + 1) = 0x4010000000000000;
  v37[0] = v24;
  *&v37[1] = *v34;
  *&v37[17] = *&v34[16];
  *&v37[33] = *&v34[32];
  *&v37[49] = *&v34[48];
  v27 = *&v34[63];
  *&v37[64] = *&v34[63];
  v28 = *v37;
  *v26 = v36;
  *(v26 + 16) = v28;
  v29 = *&v37[16];
  v30 = *&v37[32];
  v31 = *&v37[48];
  *(v26 + 80) = v27;
  *(v26 + 48) = v30;
  *(v26 + 64) = v31;
  *(v26 + 32) = v29;
  sub_24E60169C(&v36, v38, &qword_27F2245B8);
  sub_24E601704(v12, &qword_27F2245A0);
  v38[0] = v23;
  v38[1] = 0x4010000000000000;
  v39 = v24;
  v41 = *&v34[16];
  v42 = *&v34[32];
  *v43 = *&v34[48];
  *&v43[15] = *&v34[63];
  v40 = *v34;
  sub_24E601704(v38, &qword_27F2245B8);
  return sub_24E601704(v9, &qword_27F2245A0);
}

uint64_t sub_24E9D066C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v6 = 0;
    v10 = 0;
    v8 = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = 0;
    v31 = 0;
    v27 = 0;
    goto LABEL_6;
  }

  sub_24E600AEC();

  v4 = sub_24F925E18();
  v6 = v5;
  v8 = v7;
  v10 = v9 & 1;
  sub_24E5FD138(v4, v5, v9 & 1);

  v11 = *(a1 + 16);
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24E600AEC();

  v12 = sub_24F925E18();
  v14 = v13;
  v16 = v15;
  sub_24F925A18();
  v34 = v6;
  v35 = v4;
  v17 = sub_24F925C98();
  v19 = v18;
  v33 = v8;
  v21 = v20;

  sub_24E600B40(v12, v14, v16 & 1);

  sub_24F9251C8();
  v22 = sub_24F925C58();
  v11 = v23;
  v25 = v24;
  v27 = v26;
  v28 = v21 & 1;
  v29 = v17;
  v4 = v35;
  v30 = v19;
  v8 = v33;
  v6 = v34;
  sub_24E600B40(v29, v30, v28);

  v31 = v25 & 1;
  sub_24E5FD138(v22, v11, v31);

LABEL_6:
  sub_24E65D2B4(v4, v6, v10, v8);
  sub_24E65D2B4(v22, v11, v31, v27);
  sub_24E65D2F8(v4, v6, v10, v8);
  sub_24E65D2F8(v22, v11, v31, v27);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v10;
  a2[3] = v8;
  a2[4] = v22;
  a2[5] = v11;
  a2[6] = v31;
  a2[7] = v27;
  sub_24E65D2F8(v22, v11, v31, v27);
  return sub_24E65D2F8(v4, v6, v10, v8);
}

uint64_t sub_24E9D0914()
{
  sub_24E66D618();

  return sub_24F9218E8();
}

unint64_t sub_24E9D095C()
{
  result = qword_27F224520;
  if (!qword_27F224520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224520);
  }

  return result;
}

unint64_t sub_24E9D0A64()
{
  result = qword_27F224540;
  if (!qword_27F224540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224540);
  }

  return result;
}

uint64_t sub_24E9D0AB8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24E9D0B14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24E9D0B80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224530);
  sub_24E602068(&qword_27F224548, &qword_27F224530);
  sub_24E620DE8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E9D0C50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9D0CC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E9D0D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwiftUIArtworkView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E9D0D90()
{
  result = qword_27F2245C0;
  if (!qword_27F2245C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224570);
    sub_24E9D0E4C();
    sub_24E9D1074(&qword_27F2245F0, type metadata accessor for RoundedRectWithOutsetsModifer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2245C0);
  }

  return result;
}

unint64_t sub_24E9D0E4C()
{
  result = qword_27F2245C8;
  if (!qword_27F2245C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224568);
    sub_24E9D0F04();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2245C8);
  }

  return result;
}

unint64_t sub_24E9D0F04()
{
  result = qword_27F2245D0;
  if (!qword_27F2245D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224560);
    sub_24E9D0FBC();
    sub_24E602068(&qword_27F218BC8, &qword_27F218BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2245D0);
  }

  return result;
}

unint64_t sub_24E9D0FBC()
{
  result = qword_27F2245D8;
  if (!qword_27F2245D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224558);
    sub_24E602068(&qword_27F2245E0, &qword_27F2245E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2245D8);
  }

  return result;
}

uint64_t sub_24E9D1074(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 AppView.init(bootstrapResult:tabsInfoProvider:customDependencies:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  v7 = *(a2 + 16);
  *(a7 + 24) = *a2;
  v8 = *(a2 + 48);
  *(a7 + 16) = *(a1 + 16);
  *(a7 + 40) = v7;
  result = *(a2 + 32);
  *(a7 + 56) = result;
  *(a7 + 72) = v8;
  *(a7 + 80) = a3;
  *(a7 + 88) = a4;
  *(a7 + 96) = a5;
  *(a7 + 104) = a6;
  return result;
}

uint64_t AppView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v40 = sub_24F9216D8();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for AppView.LoadedView();
  v9 = sub_24F9216A8();
  v10 = sub_24F921688();
  v42 = v8;
  WitnessTable = swift_getWitnessTable();
  v41 = WitnessTable;
  v12 = sub_24E9D39BC(&qword_27F2245F8, MEMORY[0x277D7EAA0]);
  v13 = sub_24E9D39BC(qword_27F224600, MEMORY[0x277D7EA90]);
  *&v45 = v8;
  *(&v45 + 1) = v9;
  *&v46 = v10;
  *(&v46 + 1) = WitnessTable;
  *&v47 = v12;
  *(&v47 + 1) = v13;
  v14 = sub_24F9216C8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  v21 = v2[5];
  v49 = v2[4];
  v50 = v21;
  v51 = v2[6];
  v22 = v2[1];
  v45 = *v2;
  v46 = v22;
  v23 = v2[3];
  v47 = v2[2];
  v48 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB70);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_24F93DE60;
  *(v24 + 32) = sub_24F92A498();
  v25 = v39;
  *v39 = v24;
  (*(v4 + 104))(v25, *MEMORY[0x277D7EAB0], v40);
  v26 = swift_allocObject();
  *(v26 + 16) = v6;
  *(v26 + 24) = v7;
  v27 = v50;
  *(v26 + 96) = v49;
  *(v26 + 112) = v27;
  *(v26 + 128) = v51;
  v28 = v46;
  *(v26 + 32) = v45;
  *(v26 + 48) = v28;
  v29 = v48;
  *(v26 + 64) = v47;
  *(v26 + 80) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v6;
  *(v30 + 24) = v7;
  v31 = v50;
  *(v30 + 96) = v49;
  *(v30 + 112) = v31;
  *(v30 + 128) = v51;
  v32 = v46;
  *(v30 + 32) = v45;
  *(v30 + 48) = v32;
  v33 = v48;
  *(v30 + 64) = v47;
  *(v30 + 80) = v33;
  v34 = *(*(a1 - 8) + 16);
  v34(v44, &v45, a1);
  v34(v44, &v45, a1);
  sub_24F923678();
  sub_24E9D1BC8(v25, sub_24E9D1750, v26, sub_24E9D1A38, v30, v17);
  v35 = swift_getWitnessTable();
  sub_24E7896B8(v17, v14, v35);
  v36 = *(v15 + 8);
  v36(v17, v14);
  sub_24E7896B8(v20, v14, v35);
  return (v36)(v20, v14);
}

uint64_t sub_24E9D1574(void (**a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = sub_24F928188();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for FlowAuthorityProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = *(a1 + 5);
  *(v10 + 96) = *(a1 + 4);
  *(v10 + 112) = v11;
  *(v10 + 128) = *(a1 + 6);
  v12 = *(a1 + 1);
  *(v10 + 32) = *a1;
  *(v10 + 48) = v12;
  v13 = *(a1 + 3);
  *(v10 + 64) = *(a1 + 2);
  *(v10 + 80) = v13;
  v14 = type metadata accessor for AppView();
  (*(*(v14 - 8) + 16))(v18, a1, v14);
  v15 = sub_24F928158();
  a1[10](v15);
  sub_24F928F88();
  v16 = sub_24F928FA8();

  (*(v7 + 8))(v9, v6);
  return v16;
}

uint64_t sub_24E9D175C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10[0] = *(a1 + 24);
  v3 = *(a1 + 56);
  v10[1] = *(a1 + 40);
  v10[2] = v3;
  v11 = *(a1 + 72);
  v4 = *(a1 + 40);
  v8[0] = *(a1 + 24);
  v8[1] = v4;
  v8[2] = *(a1 + 56);
  v9 = *(a1 + 72);
  sub_24F928FD8();
  sub_24E9D3E84(v10, v7);
  v5 = sub_24F928FB8();
  type metadata accessor for FlowAuthorityProvider();
  swift_allocObject();
  result = FlowAuthorityProvider.init(tabsInfoProvider:objectGraph:)(v8, v5);
  *a2 = result;
  return result;
}

uint64_t sub_24E9D180C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19 = a1;
  v20 = a3;
  v22 = a4;
  v6 = type metadata accessor for AppView.LoadedView();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  sub_24E9D1A44(a2, a1, &v23);
  v12 = *(a2 + 104);
  v18 = *(a2 + 96);
  v13 = *(a2 + 8);
  type metadata accessor for FlowAuthorityProvider();

  sub_24F928F28();
  sub_24E9D1AB4(&v23, v18, v12, v13, v8);

  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v8, v6, WitnessTable);
  v15 = *(v21 + 8);
  v15(v8, v6);
  sub_24E7896B8(v11, v6, WitnessTable);
  return (v15)(v11, v6);
}

uint64_t sub_24E9D1A44@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v5 = v9;
  *a3 = v8;
  *(a3 + 16) = v5;
  sub_24E9D3D9C(&v8, v7);

  *a3 = a2;
  return result;
}

uint64_t sub_24E9D1AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  v7 = type metadata accessor for AppView.LoadedView();
  sub_24E9D39BC(&qword_27F220FB8, type metadata accessor for FlowAuthorityProvider);
  sub_24F927378();
  v8 = *(v7 + 48);
  *(a5 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224748);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24E9D1BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12[1] = a5;
  v12[2] = a4;
  v12[4] = a2;
  v12[5] = a3;
  v12[3] = a6;
  v7 = sub_24F9216D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  (*(v8 + 16))(v10, a1, v7);
  sub_24F923678();
  sub_24F9216A8();
  sub_24F921688();
  sub_24E9D39BC(&qword_27F2245F8, MEMORY[0x277D7EAA0]);
  sub_24E9D39BC(qword_27F224600, MEMORY[0x277D7EA90]);
  sub_24F9216B8();
  return (*(v8 + 8))(a1, v7);
}

uint64_t sub_24E9D1E18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224688);
  sub_24F927358();
  swift_getKeyPath();
  sub_24E9D39BC(&qword_27F220FB8, type metadata accessor for FlowAuthorityProvider);
  sub_24F91FD88();

  swift_beginAccess();
  sub_24E65864C(v2[0] + 16, v2);

  v0 = sub_24E9D1F20();
  sub_24E6585F8(v2);
  return v0;
}

uint64_t sub_24E9D1F20()
{
  sub_24E65864C(v0, &v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  StoreTab.Identifier.init(rawValue:)(v9, v10, &v11);
  v1 = v12;
  if (v12 == 11)
  {
    return 0;
  }

  v3 = v11;
  if (StoreTab.Identifier.rawValue.getter() == 0x776F6E2D79616C70 && v4 == 0xE800000000000000)
  {

LABEL_8:
    sub_24E955DF8(v3, v1);
    return 1701670728;
  }

  v5 = sub_24F92CE08();

  if (v5)
  {
    goto LABEL_8;
  }

  v11 = v3;
  v12 = v1;
  if (StoreTab.Identifier.rawValue.getter() == 0x676F742D79616C70 && v6 == 0xED00007265687465)
  {

    sub_24E955DF8(v3, v1);
    return 0x73646E65697246;
  }

  else
  {
    v7 = sub_24F92CE08();

    if (v7)
    {
      sub_24E955DF8(v3, v1);
      return 0x73646E65697246;
    }

    else
    {
      v11 = v3;
      v12 = v1;
      StoreTab.Identifier.rawValue.getter();
      sub_24E955DF8(v3, v1);
      sub_24E600AEC();
      v8 = sub_24F92C4F8();

      return v8;
    }
  }
}

uint64_t sub_24E9D2144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = sub_24F92C0E8();
  v95 = v3;
  v105 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v104 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = *(a1 - 8);
  v109 = *(v114 + 64);
  MEMORY[0x28223BE20](v5);
  v79 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = *(a1 + 16);
  v80 = *(v108 - 8);
  MEMORY[0x28223BE20](v7);
  v78 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F924038();
  v100 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v10 = *(a1 + 24);
  v111 = &v74 - v11;
  v112 = v10;
  v121 = v10;
  v122 = MEMORY[0x277CE0790];
  WitnessTable = swift_getWitnessTable();
  v13 = MEMORY[0x277D84030];
  v115 = v9;
  v116 = MEMORY[0x277D84030];
  v81 = v9;
  v14 = MEMORY[0x277D84040];
  v117 = WitnessTable;
  v118 = MEMORY[0x277D84040];
  v82 = WitnessTable;
  v15 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = OpaqueTypeMetadata2;
  v103 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v110 = &v74 - v17;
  v18 = sub_24E9D39BC(&qword_27F21F480, MEMORY[0x277CC9DB0]);
  v96 = v18;
  v115 = v9;
  v116 = v13;
  v117 = WitnessTable;
  v118 = v14;
  v97 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v115 = v3;
  v116 = OpaqueTypeMetadata2;
  v117 = v18;
  v118 = OpaqueTypeConformance2;
  v19 = sub_24F924288();
  v101 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v85 = &v74 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224730);
  v86 = v19;
  v21 = sub_24F924038();
  v92 = v21;
  v102 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v88 = &v74 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
  v91 = v23;
  v24 = swift_getWitnessTable();
  v84 = v24;
  v25 = sub_24E9D384C();
  v119 = v24;
  v120 = v25;
  v26 = swift_getWitnessTable();
  v90 = v26;
  v89 = sub_24E9D38B0();
  v115 = v21;
  v116 = v23;
  v117 = v26;
  v118 = v89;
  v98 = swift_getOpaqueTypeMetadata2();
  v99 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v83 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v87 = &v74 - v29;
  v30 = v113;
  v31 = v113[3];
  v32 = v113[1];
  v33 = v113[2];
  v115 = *v113;
  v116 = v32;
  v117 = v33;

  v34 = v78;
  v31(&v115);

  v35 = v114;
  v36 = *(v114 + 16);
  v77 = v114 + 16;
  v107 = v36;
  v37 = v79;
  v36(v79, v30, a1);
  v76 = *(v35 + 80);
  v38 = (v76 + 32) & ~v76;
  v39 = swift_allocObject();
  v40 = v108;
  v41 = v112;
  *(v39 + 16) = v108;
  *(v39 + 24) = v41;
  v75 = *(v35 + 32);
  v114 = v35 + 32;
  v42 = v37;
  v75(v39 + v38, v37, a1);
  sub_24F926AA8();

  (*(v80 + 8))(v34, v40);
  v43 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224688);
  v44 = v113;
  sub_24F927358();
  v45 = v115;
  swift_getKeyPath();
  v115 = v45;
  sub_24E9D39BC(&qword_27F220FB8, type metadata accessor for FlowAuthorityProvider);
  sub_24F91FD88();

  swift_beginAccess();
  sub_24E65864C(v45 + 16, &v115);

  v74 = v43;
  v107(v42, v44, v43);
  v46 = swift_allocObject();
  v47 = v112;
  *(v46 + 16) = v40;
  *(v46 + 24) = v47;
  v48 = v75;
  v75(v46 + v38, v42, v43);
  v49 = v111;
  v50 = v81;
  sub_24F926AB8();

  sub_24E6585F8(&v115);
  (*(v100 + 8))(v49, v50);
  v51 = [objc_opt_self() defaultCenter];
  v52 = v104;
  sub_24F92C0F8();

  v53 = v74;
  v107(v42, v113, v74);
  v54 = swift_allocObject();
  v55 = v112;
  *(v54 + 16) = v108;
  *(v54 + 24) = v55;
  v48(v54 + v38, v42, v53);
  v56 = v85;
  v57 = v93;
  v58 = v95;
  v59 = v110;
  sub_24F926BC8();

  (*(v105 + 8))(v52, v58);
  (*(v103 + 8))(v59, v57);
  swift_getKeyPath();
  v115 = sub_24E9D1E18();
  v116 = v60;
  v61 = v88;
  v62 = v86;
  sub_24F9261B8();

  (*(v101 + 8))(v56, v62);
  v115 = sub_24E9D1E18();
  v116 = v63;
  v64 = v83;
  v65 = v92;
  v66 = v91;
  v67 = v90;
  v68 = v89;
  sub_24F926AB8();

  (*(v102 + 8))(v61, v65);
  v115 = v65;
  v116 = v66;
  v117 = v67;
  v118 = v68;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v87;
  v71 = v98;
  sub_24E7896B8(v64, v98, v69);
  v72 = *(v99 + 8);
  v72(v64, v71);
  sub_24E7896B8(v70, v71, v69);
  return (v72)(v70, v71);
}

void sub_24E9D2D98()
{
  type metadata accessor for AppView.LoadedView();
  type metadata accessor for CommerceDialogHandler();

  sub_24F928EF8();

  if (v0)
  {
    CommerceDialogHandler.isActive.setter(1);
  }
}

void sub_24E9D2E0C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for AppView.LoadedView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224688);
  sub_24F927358();
  swift_getKeyPath();
  sub_24E9D39BC(&qword_27F220FB8, type metadata accessor for FlowAuthorityProvider);
  sub_24F91FD88();

  swift_beginAccess();
  sub_24E65864C(*&v2[0] + 16, v1);

  if (swift_dynamicCast())
  {
    sub_24F92C7F8();
  }

  else
  {
    memset(v2, 0, sizeof(v2));
    v3 = 0;
  }

  sub_24ED0F474(v2);
}

uint64_t sub_24E9D2F9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F928C38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 40);
  sub_24EA00DB0();
  sub_24F928C28();
  v8 = OBJC_IVAR____TtC12GameStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  (*(v4 + 40))(v7 + v8, v6, v3);
  return swift_endAccess();
}

uint64_t sub_24E9D30A0(uint64_t result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *a2;
    if (qword_27F210278 != -1)
    {
      result = swift_once();
    }

    v4 = off_27F229AB8;
    v7[0] = v3;
    v7[1] = v2;
    MEMORY[0x28223BE20](result);
    v6[2] = v7;
    v5 = sub_24E6159B8(sub_24E7FA94C, v6, &unk_2861C0298);
    result = swift_arrayDestroy();
    if ((v5 & 1) == 0)
    {
      v4[3] = v3;
      v4[4] = v2;
    }
  }

  return result;
}

uint64_t sub_24E9D31B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_24E9D3210(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E9D3258(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E9D32CC()
{
  type metadata accessor for AppView.LoadedView();
  sub_24F9216A8();
  sub_24F921688();
  swift_getWitnessTable();
  sub_24E9D39BC(&qword_27F2245F8, MEMORY[0x277D7EAA0]);
  sub_24E9D39BC(qword_27F224600, MEMORY[0x277D7EA90]);
  sub_24F9216C8();
  return swift_getWitnessTable();
}

void sub_24E9D33E8()
{
  sub_24E6C5550();
  if (v0 <= 0x3F)
  {
    type metadata accessor for JSFreshnessWatchdog(319);
    if (v1 <= 0x3F)
    {
      sub_24E9D374C();
      if (v2 <= 0x3F)
      {
        sub_24E9D37A4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E9D34C0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224688);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F224690);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24E9D3610(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224688);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F224690);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E9D374C()
{
  if (!qword_27F224718)
  {
    type metadata accessor for FlowAuthorityProvider();
    v0 = sub_24F927398();
    if (!v1)
    {
      atomic_store(v0, &qword_27F224718);
    }
  }
}

void sub_24E9D37A4()
{
  if (!qword_27F224720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224728);
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F224720);
    }
  }
}

unint64_t sub_24E9D384C()
{
  result = qword_27F224738;
  if (!qword_27F224738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224738);
  }

  return result;
}

unint64_t sub_24E9D38B0()
{
  result = qword_27F224740;
  if (!qword_27F224740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224740);
  }

  return result;
}

void sub_24E9D3930()
{
  type metadata accessor for AppView.LoadedView();

  sub_24E9D2D98();
}

uint64_t sub_24E9D39BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E9D3A04()
{
  type metadata accessor for AppView.LoadedView();

  sub_24E9D2E0C();
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = (type metadata accessor for AppView.LoadedView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));

  v3 = v1[13];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224688);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224748);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F9219C8();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E9D3C80(uint64_t a1)
{
  v3 = *(type metadata accessor for AppView.LoadedView() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_24E9D2F9C(a1, v4);
}

uint64_t sub_24E9D3D18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;

  return MEMORY[0x2821E78F0](a1, a2, a3);
}

uint64_t objectdestroyTm_18()
{

  return swift_deallocObject();
}

uint64_t sub_24E9D3EE0()
{
  sub_24F92C0E8();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24E9D39BC(&qword_27F21F480, MEMORY[0x277CC9DB0]);
  swift_getOpaqueTypeConformance2();
  sub_24F924288();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224730);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
  swift_getWitnessTable();
  sub_24E9D384C();
  swift_getWitnessTable();
  sub_24E9D38B0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E9D40D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E9D411C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E9D4174()
{
  result = qword_27F224750;
  if (!qword_27F224750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224750);
  }

  return result;
}

char *sub_24E9D41C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  v6 = sub_24F769B44(v3, v4, v5);
  v8 = v7;
  v9 = objc_allocWithZone(type metadata accessor for MarketingItemViewController());

  return sub_24F7423F0(v2, 0, 0, v6, v8, v1);
}

uint64_t sub_24E9D426C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E9D435C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24E9D42D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E9D435C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24E9D4334()
{
  sub_24E9D435C();
  sub_24F925628();
  __break(1u);
}

unint64_t sub_24E9D435C()
{
  result = qword_27F224758;
  if (!qword_27F224758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224758);
  }

  return result;
}

double sub_24E9D43B0(double a1)
{
  v3 = sub_24F92CDB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E9D6764(v1, v11);
  if (v12)
  {
    if (v12 == 1)
    {
      return *v11 * a1;
    }

    else
    {
      sub_24E9D679C(v11);
    }
  }

  else
  {
    sub_24E612C80(v11, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    a1 = v7;
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return a1;
}

uint64_t BreakoutDetailsLayout.init(metrics:titleLabel:descriptionLabel:badgeText:badgeWordmark:callToActionButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_24E9D4A40(a1, a7, type metadata accessor for BreakoutDetailsLayout.Metrics);
  v14 = type metadata accessor for BreakoutDetailsLayout(0);
  sub_24E60169C(a4, a7 + v14[5], &unk_27F22B200);
  sub_24E60169C(a5, a7 + v14[6], &qword_27F229780);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F9224C8();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_24F9224C8();
  sub_24E601704(a5, &qword_27F229780);
  sub_24E601704(a4, &unk_27F22B200);
  sub_24E9D67CC(a1, type metadata accessor for BreakoutDetailsLayout.Metrics);
  v15 = a7 + v14[9];
  v16 = *(a6 + 16);
  *v15 = *a6;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(a6 + 32);
  __swift_destroy_boxed_opaque_existential_1(a3);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior.init(lineCountThreshold:standardUseCase:compressedUseCase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(0);
  v8 = *(v7 + 20);
  v9 = sub_24F922378();
  v12 = *(*(v9 - 8) + 32);
  (v12)((v9 - 8), &a4[v8], a2, v9);
  v10 = &a4[*(v7 + 24)];

  return v12(v10, a3, v9);
}

uint64_t BreakoutDetailsLayout.Metrics.init(titleSpace:titleBehavior:descriptionSpace:badgeTextSpace:badgeWordmarkSpace:callToActionSpace:layoutMargins:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  sub_24E612C80(a1, a7);
  v21 = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  sub_24E9D4FE4(a2, a7 + v21[5], type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior);
  sub_24E612C80(a3, a7 + v21[6]);
  sub_24E612C80(a4, a7 + v21[7]);
  sub_24E612C80(a5, a7 + v21[8]);
  result = sub_24E612C80(a6, a7 + v21[9]);
  v23 = (a7 + v21[10]);
  *v23 = a8;
  v23[1] = a9;
  v23[2] = a10;
  v23[3] = a11;
  return result;
}

uint64_t BreakoutDetailsLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t sub_24E9D4A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E9D4AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t BreakoutDetailsLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 24);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t BreakoutDetailsLayout.Metrics.badgeTextSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 28);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t BreakoutDetailsLayout.Metrics.badgeWordmarkSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 32);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t BreakoutDetailsLayout.Metrics.callToActionSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 36);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t BreakoutDetailsLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  v10 = (v4 + *(result + 40));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t sub_24E9D4FE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double BreakoutDetailsLayout.measurements(fitting:in:)(void *a1, double a2)
{
  type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  sub_24F92C228();
  v5 = v4;
  sub_24E9D5160(a1, v7);
  _VerticalFlowLayout.measurements(fitting:in:)(v5);

  return a2;
}

uint64_t sub_24E9D5160@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v104 = a2;
  v105 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(0);
  v101 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v5 = v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = 1;
  v9 = type metadata accessor for BreakoutDetailsLayout(0);
  sub_24E60169C(v2 + v9[6], &v123, &qword_27F229780);
  v103 = v5;
  v100 = a1;
  if (v124)
  {
    sub_24E612C80(&v123, &v107);
    v10 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 32);
    v129 = 0;
    v128 = 0u;
    v127 = 0u;
    sub_24E615E00(&v107, &v123);
    v11 = v2;
    sub_24E615E00(v2 + v10, v126);
    v125 = 1;
    v130 = 11;
    sub_24E9D682C(&v123, &v116);
    v12 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_24E617A24((v13 > 1), v14 + 1, 1, v12);
    }

    v15 = v105;
    sub_24E9D6888(&v123);
    __swift_destroy_boxed_opaque_existential_1(&v107);
    *(v12 + 2) = v14 + 1;
    v16 = &v12[136 * v14];
    *(v16 + 2) = v116;
    v17 = v117;
    v18 = v118;
    v19 = v120;
    *(v16 + 5) = v119;
    *(v16 + 6) = v19;
    *(v16 + 3) = v17;
    *(v16 + 4) = v18;
    v20 = v121[0];
    v21 = v121[1];
    v22 = v121[2];
    *(v16 + 20) = v122;
    *(v16 + 8) = v21;
    *(v16 + 9) = v22;
    *(v16 + 7) = v20;
  }

  else
  {
    sub_24E601704(&v123, &qword_27F229780);
    sub_24E60169C(v2 + v9[5], &v123, &unk_27F22B200);
    if (v124)
    {
      sub_24E612C80(&v123, &v107);
      v23 = *(&v108 + 1);
      v24 = v109;
      v25 = __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
      *(&v117 + 1) = v23;
      *&v118 = *(v24 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v116);
      (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v25, v23);
      v27 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 28);
      v129 = 0;
      v128 = 0u;
      v127 = 0u;
      sub_24E615E00(&v116, &v123);
      v11 = v2;
      sub_24E615E00(v2 + v27, v126);
      v125 = 1;
      v130 = 11;
      __swift_destroy_boxed_opaque_existential_1(&v116);
      sub_24E9D682C(&v123, &v116);
      v12 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
      v29 = *(v12 + 2);
      v28 = *(v12 + 3);
      if (v29 >= v28 >> 1)
      {
        v12 = sub_24E617A24((v28 > 1), v29 + 1, 1, v12);
      }

      v15 = v105;
      sub_24E9D6888(&v123);
      *(v12 + 2) = v29 + 1;
      v30 = &v12[136 * v29];
      v31 = v120;
      v33 = v117;
      v32 = v118;
      *(v30 + 5) = v119;
      *(v30 + 6) = v31;
      *(v30 + 3) = v33;
      *(v30 + 4) = v32;
      v35 = v121[1];
      v34 = v121[2];
      v36 = v121[0];
      *(v30 + 20) = v122;
      *(v30 + 8) = v35;
      *(v30 + 9) = v34;
      *(v30 + 7) = v36;
      *(v30 + 2) = v116;
      __swift_destroy_boxed_opaque_existential_1(&v107);
    }

    else
    {
      v11 = v2;
      sub_24E601704(&v123, &unk_27F22B200);
      v12 = MEMORY[0x277D84F90];
      v15 = v105;
    }
  }

  v102 = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  sub_24E9D4A40(v11 + *(v102 + 20), v8, type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior);
  if ((*(v101 + 6))(v8, 1, v15) == 1)
  {
    v37 = (v11 + v9[7]);
    v38 = v37[3];
    v39 = v37[4];
    v40 = __swift_project_boxed_opaque_existential_1(v37, v38);
    *(&v117 + 1) = v38;
    *&v118 = *(v39 + 8);
    v41 = __swift_allocate_boxed_opaque_existential_1(&v116);
    (*(*(v38 - 8) + 16))(v41, v40, v38);
    v127 = 0u;
    v128 = 0u;
    v129 = 0;
    sub_24E615E00(&v116, &v123);
    sub_24E615E00(v11, v126);
    v125 = 1;
    v130 = 11;
    __swift_destroy_boxed_opaque_existential_1(&v116);
  }

  else
  {
    v42 = v8;
    v43 = v103;
    sub_24E9D4FE4(v42, v103, type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior);
    v101 = v9;
    v44 = (v11 + v9[7]);
    v45 = v44[3];
    v98[2] = v44[4];
    v99 = v11;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v46 = sub_24E6C065C();
    v47 = *(v15 + 20);
    v48 = v100;
    v49 = [v100 traitCollection];
    v98[1] = v46;
    MEMORY[0x253051BF0](v43 + v47, v49);

    sub_24F9224A8();
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    v50 = sub_24F9224B8();
    v51 = *v43;
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    if (v50 >= v51)
    {
      v52 = *(v105 + 24);
      v53 = [v48 traitCollection];
      v54 = v103;
      MEMORY[0x253051BF0](v103 + v52, v53);

      sub_24F9224A8();
      v55 = v44[3];
      v56 = v44[4];
      v57 = __swift_project_boxed_opaque_existential_1(v44, v55);
      *(&v117 + 1) = v55;
      *&v118 = *(v56 + 8);
      v58 = __swift_allocate_boxed_opaque_existential_1(&v116);
      (*(*(v55 - 8) + 16))(v58, v57, v55);
      sub_24E9D67CC(v54, type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior);
      v127 = 0u;
      v128 = 0u;
      v129 = 0;
      sub_24E615E00(&v116, &v123);
      v11 = v99;
      sub_24E615E00(v99, v126);
      v125 = 1;
      v130 = 11;
      __swift_destroy_boxed_opaque_existential_1(&v116);
    }

    else
    {
      sub_24F922278();
      sub_24E9D67CC(v103, type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior);
      v127 = 0u;
      v128 = 0u;
      v129 = 0;
      v11 = v99;
      sub_24E615E00(v99, v126);
      v125 = 1;
      v130 = 11;
    }

    v9 = v101;
  }

  sub_24E9D682C(&v123, &v116);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v102;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_24E617A24(0, *(v12 + 2) + 1, 1, v12);
  }

  v62 = *(v12 + 2);
  v61 = *(v12 + 3);
  if (v62 >= v61 >> 1)
  {
    v12 = sub_24E617A24((v61 > 1), v62 + 1, 1, v12);
  }

  *(v12 + 2) = v62 + 1;
  v63 = &v12[136 * v62];
  *(v63 + 2) = v116;
  v64 = v117;
  v65 = v118;
  v66 = v120;
  *(v63 + 5) = v119;
  *(v63 + 6) = v66;
  *(v63 + 3) = v64;
  *(v63 + 4) = v65;
  v67 = v121[0];
  v68 = v121[1];
  v69 = v121[2];
  *(v63 + 20) = v122;
  *(v63 + 8) = v68;
  *(v63 + 9) = v69;
  *(v63 + 7) = v67;
  v70 = (v11 + v9[8]);
  v71 = v70[3];
  v72 = v70[4];
  v73 = __swift_project_boxed_opaque_existential_1(v70, v71);
  *(&v108 + 1) = v71;
  *&v109 = *(v72 + 8);
  v74 = __swift_allocate_boxed_opaque_existential_1(&v107);
  (*(*(v71 - 8) + 16))(v74, v73, v71);
  v75 = *(v60 + 24);
  *(&v121[2] + 1) = 0;
  *(v121 + 8) = 0u;
  *(&v121[1] + 8) = 0u;
  sub_24E615E00(&v107, &v116);
  sub_24E615E00(v11 + v75, &v119);
  WORD4(v118) = 1;
  v122 = 11;
  __swift_destroy_boxed_opaque_existential_1(&v107);
  sub_24E9D682C(&v116, &v107);
  v77 = *(v12 + 2);
  v76 = *(v12 + 3);
  v78 = v77 + 1;
  if (v77 >= v76 >> 1)
  {
    v12 = sub_24E617A24((v76 > 1), v77 + 1, 1, v12);
  }

  sub_24E9D6888(&v116);
  *(v12 + 2) = v78;
  v79 = &v12[136 * v77];
  v80 = v111;
  v81 = v109;
  v82 = v108;
  *(v79 + 5) = v110;
  *(v79 + 6) = v80;
  *(v79 + 3) = v82;
  *(v79 + 4) = v81;
  v83 = v113;
  v84 = v114;
  v85 = v112;
  *(v79 + 20) = v115;
  *(v79 + 8) = v83;
  *(v79 + 9) = v84;
  *(v79 + 7) = v85;
  *(v79 + 2) = v107;
  sub_24E60169C(v11 + v9[9], &v116, &qword_27F229780);
  if (*(&v117 + 1))
  {
    sub_24E612C80(&v116, v106);
    v86 = *(v60 + 36);
    *(&v121[2] + 1) = 0;
    *(v121 + 8) = 0u;
    *(&v121[1] + 8) = 0u;
    sub_24E615E00(v106, &v116);
    sub_24E615E00(v11 + v86, &v119);
    WORD4(v118) = 1;
    v122 = 11;
    sub_24E9D682C(&v116, &v107);
    v87 = *(v12 + 3);
    v88 = v77 + 2;
    if (v88 > (v87 >> 1))
    {
      v12 = sub_24E617A24((v87 > 1), v88, 1, v12);
    }

    sub_24E9D6888(&v116);
    __swift_destroy_boxed_opaque_existential_1(v106);
    result = sub_24E9D6888(&v123);
    *(v12 + 2) = v88;
    v90 = &v12[136 * v78];
    *(v90 + 2) = v107;
    v91 = v111;
    v92 = v109;
    v93 = v108;
    *(v90 + 5) = v110;
    *(v90 + 6) = v91;
    *(v90 + 3) = v93;
    *(v90 + 4) = v92;
    v94 = v113;
    v95 = v114;
    v96 = v112;
    *(v90 + 20) = v115;
    *(v90 + 8) = v94;
    *(v90 + 9) = v95;
    *(v90 + 7) = v96;
  }

  else
  {
    sub_24E9D6888(&v123);
    result = sub_24E601704(&v116, &qword_27F229780);
  }

  v97 = v104;
  *v104 = v131;
  *(v97 + 1) = v12;
  return result;
}

uint64_t BreakoutDetailsLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  v4 = [a1 traitCollection];
  [v4 layoutDirection];

  sub_24F92C1C8();
  sub_24F92C1D8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_24E9D5160(a1, v14);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, v6, v8, v10, v12);
}

double sub_24E9D5DE8(void *a1, double a2)
{
  type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  sub_24F92C228();
  v5 = v4;
  sub_24E9D5160(a1, v7);
  _VerticalFlowLayout.measurements(fitting:in:)(v5);

  return a2;
}

uint64_t sub_24E9D5EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E9D5FB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

void sub_24E9D6070()
{
  type metadata accessor for BreakoutDetailsLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_24E8EF898(319, &qword_27F221208, &qword_27F221210);
    if (v1 <= 0x3F)
    {
      sub_24E8EF898(319, &qword_27F2297B0, &unk_27F235730);
      if (v2 <= 0x3F)
      {
        sub_24E8EFB54(319, &qword_27F2297C0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit21BreakoutDetailsLayoutV15DetailDimensionO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_24E9D618C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E9D61C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E9D6238(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E9D62F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E9D639C()
{
  sub_24E8EFB54(319, &qword_27F237A40);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NSDirectionalEdgeInsets(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E9D646C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E9D64EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24E9D656C()
{
  v0 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_24E9D65D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922378();
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_24E9D6668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24F922378();
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_24E9D66E8()
{
  result = sub_24F922378();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E9D67CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *ArcadeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v5 = sub_24F9285B8();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v49 - v8;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v51 = &v49 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  sub_24F928398();
  v20 = sub_24F928348();
  v22 = v21;
  v52 = v10;
  v23 = *(v10 + 8);
  v23(v19, v9);
  v24 = (v3 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_productId);
  *v24 = v20;
  v24[1] = v22;
  sub_24F928398();
  v25 = sub_24F928348();
  v27 = v26;
  v23(v17, v9);
  if (v27)
  {
    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v29 = (v3 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_appAdamId);
  *v29 = v28;
  v29[1] = v27;
  type metadata accessor for Action();
  sub_24F928398();
  v30 = v50;
  v31 = static Action.tryToMakeInstance(byDeserializing:using:)(v19, v60);
  v23(v19, v9);
  v32 = v3;
  v33 = v23;
  v34 = v9;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_postSubscribeAction) = v31;
  sub_24F928398();
  sub_24F928368();
  v33(v19, v9);
  v55 = v32;
  v35 = (v32 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_subscriptionToken);
  v36 = v59;
  *v35 = v58;
  v35[1] = v36;
  v37 = v51;
  v38 = a1;
  sub_24F928398();
  sub_24F9281F8();
  v33(v37, v34);
  v39 = sub_24F928E68();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v30, 1, v39) == 1)
  {
    sub_24E601704(v30, qword_27F221C40);
    v41 = 0;
  }

  else
  {
    v41 = sub_24F928E48();
    (*(v40 + 8))(v30, v39);
  }

  *(v55 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_paymentMetricsOverlay) = v41;
  v42 = v53;
  v43 = v38;
  (*(v52 + 16))(v53, v38, v34);
  v45 = v56;
  v44 = v57;
  v46 = v54;
  (*(v56 + 16))(v54, v60, v57);
  v47 = Action.init(deserializing:using:)(v42, v46);
  (*(v45 + 8))(v60, v44);
  v33(v43, v34);
  return v47;
}

uint64_t ArcadeAction.__allocating_init(appAdamId:productId:postSubscribeAction:paymentMetricsOverlay:actionMetrics:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v38 = a5;
  v36 = sub_24F91F6B8();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = a1[1];
  v21 = (v19 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_appAdamId);
  *v21 = *a1;
  v21[1] = v20;
  v22 = (v19 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_productId);
  *v22 = a2;
  v22[1] = a3;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_postSubscribeAction) = a4;
  v24 = v37;
  v23 = v38;
  v25 = (v19 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_subscriptionToken);
  *v25 = 0u;
  v25[1] = 0u;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_paymentMetricsOverlay) = v23;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  (*(v16 + 16))(v18, v24, v15);
  v26 = sub_24F929608();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = (v19 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v27 = 0u;
  v27[1] = 0u;
  sub_24E60169C(v47, &v41, &qword_27F235830);
  if (*(&v42 + 1))
  {
    v44 = v41;
    v45 = v42;
    v46 = v43;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v30 = v29;
    (*(v35 + 8))(v11, v36);
    v39 = v28;
    v40 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830);
  }

  (*(v16 + 8))(v24, v15);
  sub_24E601704(v47, &qword_27F235830);
  v31 = v19 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v32 = v45;
  *v31 = v44;
  *(v31 + 16) = v32;
  *(v31 + 32) = v46;
  sub_24E65E0D4(v14, v19 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v19 + 16) = xmmword_24F972530;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  (*(v16 + 32))(v19 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v18, v15);
  return v19;
}

uint64_t ArcadeAction.init(appAdamId:productId:postSubscribeAction:paymentMetricsOverlay:actionMetrics:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v38 = a6;
  v39 = a5;
  v37 = sub_24F91F6B8();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[1];
  v22 = (v7 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_appAdamId);
  *v22 = *a1;
  v22[1] = v21;
  v23 = (v7 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_productId);
  *v23 = a2;
  v23[1] = a3;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_postSubscribeAction) = a4;
  v25 = v38;
  v24 = v39;
  v26 = (v7 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_subscriptionToken);
  *v26 = 0u;
  v26[1] = 0u;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_paymentMetricsOverlay) = v24;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  (*(v18 + 16))(v20, v25, v17);
  v27 = sub_24F929608();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  v28 = (v7 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v28 = 0u;
  v28[1] = 0u;
  sub_24E60169C(v48, &v42, &qword_27F235830);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v31 = v30;
    (*(v36 + 8))(v13, v37);
    v40 = v29;
    v41 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v42, &qword_27F235830);
  }

  (*(v18 + 8))(v25, v17);
  sub_24E601704(v48, &qword_27F235830);
  v32 = v7 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v32 + 32) = v47;
  v33 = v46;
  *v32 = v45;
  *(v32 + 16) = v33;
  sub_24E65E0D4(v16, v7 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v7 + 16) = xmmword_24F972530;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  (*(v18 + 32))(v7 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v20, v17);
  return v7;
}

uint64_t ArcadeAction.productId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_productId);

  return v1;
}

uint64_t ArcadeAction.appAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_appAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_appAdamId);
  a1[1] = v2;
}

uint64_t sub_24E9D76E4()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_subscriptionToken, &qword_27F2129B0);
}

uint64_t ArcadeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_subscriptionToken, &qword_27F2129B0);

  return v0;
}

uint64_t ArcadeAction.__deallocating_deinit()
{
  ArcadeAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeAction()
{
  result = qword_27F2247A0;
  if (!qword_27F2247A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9D7A04(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E9D7B54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for LockupCollectionSearchItem()
{
  result = qword_27F2247B0;
  if (!qword_27F2247B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E9D7CDC()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24E61C938();
        if (v3 <= 0x3F)
        {
          sub_24E6BCB04();
          if (v4 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F21F938, &qword_27F21BE90);
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

uint64_t sub_24E9D7E2C()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24E9D7E88()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24E9D7ED0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_24E9D7F9C()
{
  result = qword_27F2247C0;
  if (!qword_27F2247C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2247C0);
  }

  return result;
}

unint64_t sub_24E9D7FF0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x4D747865746E6F63;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x6575676573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0x736D657469;
    if (a1 != 7)
    {
      v2 = 0x63416C6961746564;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x676E6964616568;
    if (a1 != 4)
    {
      v3 = 0x656C746974;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24E9D8110@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v33 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v36);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2247D0);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for LockupCollectionSearchItem();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 40) = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 9) = 0;
  v39 = v13 + 40;
  sub_24E61DA68(&v43, (v13 + 40), qword_27F21B590);
  v14 = *(v11 + 24);
  v15 = sub_24F92A6D8();
  v16 = *(*(v15 - 8) + 56);
  v42 = v14;
  v16(&v13[v14], 1, 1, v15);
  v40 = v11;
  v17 = &v13[*(v11 + 48)];
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_24E61DA68(&v43, v17, qword_27F21B590);
  v18 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24E9D8B54();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_24E601704(v39, qword_27F24EC90);
    sub_24E601704(&v13[v42], &qword_27F215440);
    return sub_24E601704(v17, qword_27F24EC90);
  }

  else
  {
    v19 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v46 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v20 = v10;
    sub_24F92CC68();
    v21 = v44;
    *v13 = v43;
    *(v13 + 1) = v21;
    *(v13 + 4) = v45;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v46 = 1;
    v23 = sub_24E61D970();
    sub_24F92CC68();
    v33 = v23;
    sub_24E61DA68(&v43, v39, qword_27F24EC90);
    LOBYTE(v43) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    v36 = v22;
    sub_24E61DA68(v7, &v13[v42], &qword_27F215440);
    sub_24F929608();
    LOBYTE(v43) = 3;
    sub_24E9D8BA8(&qword_27F213F48, MEMORY[0x277D21F70]);
    v24 = v35;
    sub_24F92CC18();
    v25 = v40;
    sub_24E6009C8(v24, &v13[v40[7]], &qword_27F213E68);
    LOBYTE(v43) = 4;
    v26 = sub_24F92CBC8();
    v27 = &v13[v25[8]];
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v43) = 5;
    v29 = sub_24F92CBC8();
    v30 = &v13[v25[9]];
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v43) = 6;
    sub_24E9D8BF0();
    sub_24F92CC68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0);
    v46 = 7;
    sub_24E9D8C44();
    sub_24F92CC68();
    *&v13[v25[11]] = v43;
    v46 = 8;
    sub_24F92CC68();
    (*(v19 + 8))(v20, v38);
    sub_24E61DA68(&v43, v17, qword_27F24EC90);
    sub_24E9D8CF4(v13, v34);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_24E9D8D58(v13);
  }
}

uint64_t sub_24E9D8994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E9D942C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E9D89BC(uint64_t a1)
{
  v2 = sub_24E9D8B54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9D89F8(uint64_t a1)
{
  v2 = sub_24E9D8B54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E9D8A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

unint64_t sub_24E9D8B54()
{
  result = qword_27F2247D8;
  if (!qword_27F2247D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2247D8);
  }

  return result;
}

uint64_t sub_24E9D8BA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E9D8BF0()
{
  result = qword_27F2247E0;
  if (!qword_27F2247E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2247E0);
  }

  return result;
}

unint64_t sub_24E9D8C44()
{
  result = qword_27F21F8D0;
  if (!qword_27F21F8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F8A0);
    sub_24E602068(&qword_27F21F8D8, &qword_27F21BE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F8D0);
  }

  return result;
}

uint64_t sub_24E9D8CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupCollectionSearchItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9D8D58(uint64_t a1)
{
  v2 = type metadata accessor for LockupCollectionSearchItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E9D8DB4()
{
  result = qword_27F2247E8;
  if (!qword_27F2247E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2247E8);
  }

  return result;
}

unint64_t sub_24E9D8E1C()
{
  result = qword_27F2247F0;
  if (!qword_27F2247F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2247F0);
  }

  return result;
}

unint64_t sub_24E9D8E74()
{
  result = qword_27F2247F8;
  if (!qword_27F2247F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2247F8);
  }

  return result;
}

unint64_t sub_24E9D8ECC()
{
  result = qword_27F224800;
  if (!qword_27F224800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224800);
  }

  return result;
}

uint64_t sub_24E9D8F20@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v35 - v4;
  v6 = type metadata accessor for LockupCollectionSearchItem();
  v7 = (v1 + *(v6 + 36));
  v8 = v7[1];
  if (v8)
  {
    v9 = v6;
    v10 = *v7;
    v11 = (v1 + *(v6 + 32));
    v12 = v11[1];
    if (v12)
    {
      v13 = *v11;
      v14 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
      v15 = v14[5];
      v16 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
      v17 = v14[7];
      v18 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
      (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      *v5 = v13;
      *(v5 + 1) = v12;
      v5[v14[6]] = 0;
      v5[v14[8]] = 2;
      v19 = &v5[v14[9]];
      *v19 = 0;
      *(v19 + 4) = 256;
      v20 = &v5[v14[10]];
      *(v20 + 32) = 0;
      *v20 = 0u;
      *(v20 + 16) = 0u;

      sub_24E61DA68(v35, v20, qword_27F21B590);
      (*(*(v14 - 1) + 56))(v5, 0, 1, v14);
    }

    else
    {
      v14 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
      (*(*(v14 - 1) + 56))(v5, 1, 1, v14);
    }

    type metadata accessor for HeaderPresentation.HeaderLabel(0);
    v24 = v14[5];
    v25 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    (*(*(v25 - 8) + 56))(&a1[v24], 1, 1, v25);
    v26 = v14[7];
    v27 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
    (*(*(v27 - 8) + 56))(&a1[v26], 1, 1, v27);
    sub_24E60169C(v1 + *(v9 + 48), v35, qword_27F24EC90);
    *a1 = v10;
    *(a1 + 1) = v8;
    a1[v14[6]] = 2;
    a1[v14[8]] = 2;
    v28 = &a1[v14[9]];
    *v28 = 0;
    *(v28 + 4) = 256;
    v29 = &a1[v14[10]];
    *(v29 + 32) = 0;
    *v29 = 0u;
    *(v29 + 16) = 0u;
    sub_24E61DA68(v35, v29, qword_27F21B590);
    v30 = *(*(v14 - 1) + 56);
    v30(a1, 0, 1, v14);
    v31 = type metadata accessor for HeaderPresentation(0);
    sub_24E6009C8(v5, &a1[v31[5]], &qword_27F223138);
    v30(&a1[v31[6]], 1, 1, v14);
    v32 = &a1[v31[7]];
    *(v32 + 6) = 0;
    *(v32 + 1) = 0u;
    *(v32 + 2) = 0u;
    *v32 = 0u;
    v32[56] = -1;
    v33 = v31[8];
    v34 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
    (*(*(v34 - 8) + 56))(&a1[v33], 1, 1, v34);
    a1[v31[9]] = 7;
    a1[v31[10]] = 2;
    a1[v31[11]] = 2;
    a1[v31[12]] = 2;
    return (*(*(v31 - 1) + 56))(a1, 0, 1, v31);
  }

  else
  {
    v21 = type metadata accessor for HeaderPresentation(0);
    v22 = *(*(v21 - 8) + 56);

    return v22(a1, 1, 1, v21);
  }
}

uint64_t sub_24E9D942C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E6964616568 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4CBF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x63416C6961746564 && a2 == 0xEC0000006E6F6974)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void sub_24E9D9724(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v21 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = [objc_opt_self() proxyForLocalPlayer];
  v22 = [v15 gameStatService];

  v16 = [a2 gameDescriptor];
  v17 = [a3 internal];
  if (a4)
  {
    a4 = sub_24F92BA98();
  }

  if (a6)
  {
    a6 = sub_24F92B098();
  }

  (*(v12 + 16))(v14, a1, v11);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v18, v14, v11);
  aBlock[4] = sub_24E9DB128;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F3A0F4C;
  aBlock[3] = &block_descriptor_36;
  v20 = _Block_copy(aBlock);

  [v22 getLeaderboardsForGameDescriptor:v16 player:v17 leaderboardIDs:a4 setIdentifier:a6 handler:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();
}

id sub_24E9D99C4(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Leaderboard(0);
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x277D84F90];
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = v9;
  v46 = v9 >> 62;
  if (v9 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v41)
  {
    v50 = v9;
    v45 = a2;
    if (i)
    {
      v51 = v8;
      v8 = i & ~(i >> 63);

      sub_24F4578E0(0, v8, 0);
      if ((i & 0x8000000000000000) == 0)
      {
        v12 = v51;
        v43 = a1;
        v44 = a3;
        if (v46)
        {
          v47 = v10 & 0xFFFFFFFFFFFFFF8;
          v14 = sub_24F92C738();
          v13 = v10;
        }

        else
        {
          v13 = v10;
          v47 = v10 & 0xFFFFFFFFFFFFFF8;
          v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v8 = 0;
        a3 = v13 & 0xC000000000000001;
        a1 = v14 & ~(v14 >> 63);
        while (a1 != v8)
        {
          if (a3)
          {
            v15 = MEMORY[0x253052270](v8);
          }

          else
          {
            if (v8 >= *(v47 + 16))
            {
              goto LABEL_52;
            }

            v15 = *(v13 + 8 * v8 + 32);
          }

          v16 = v15;
          v17 = sub_24E9D9FE4(v8, v15);
          v19 = v18;

          v51 = v12;
          v10 = *(v12 + 16);
          v20 = *(v12 + 24);
          a2 = v10 + 1;
          if (v10 >= v20 >> 1)
          {
            sub_24F4578E0((v20 > 1), v10 + 1, 1);
            v12 = v51;
          }

          ++v8;
          *(v12 + 16) = a2;
          v21 = v12 + 16 * v10;
          *(v21 + 32) = v17;
          *(v21 + 40) = v19;
          v13 = v50;
          if (i == v8)
          {
            v10 = v50;

            a1 = v43;
            a3 = v44;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      __break(1u);
    }

    else
    {

      v12 = MEMORY[0x277D84F90];
LABEL_22:
      v51 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      sub_24E907170();
      v22 = sub_24F92AF68();
      v24 = v23;

      if (qword_27F211410 != -1)
      {
        swift_once();
      }

      v25 = sub_24F9220D8();
      __swift_project_value_buffer(v25, qword_27F39E880);

      v26 = sub_24F9220B8();
      v8 = sub_24F92BD98();

      if (os_log_type_enabled(v26, v8))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v51 = v28;
        *v27 = 136446722;
        *(v27 + 4) = sub_24E7620D4(0xD000000000000024, 0x800000024F972850, &v51);
        *(v27 + 12) = 2048;
        if (a1)
        {
          if (a1 >> 62)
          {
            v29 = sub_24F92C738();
          }

          else
          {
            v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        else
        {
          v29 = 0;
        }

        *(v27 + 14) = v29;

        *(v27 + 22) = 2080;
        v33 = sub_24E7620D4(v22, v24, &v51);

        *(v27 + 24) = v33;
        _os_log_impl(&dword_24E5DD000, v26, v8, "%{public}s: getLeaderboards finished with %ld leaderboards\n%s", v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2530542D0](v28, -1, -1);
        MEMORY[0x2530542D0](v27, -1, -1);

        v30 = v45;
        if (v45)
        {
LABEL_29:
          v51 = v30;
          v31 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808);
          return sub_24F92B788();
        }
      }

      else
      {

        v30 = v45;
        if (v45)
        {
          goto LABEL_29;
        }
      }

      if (!v46)
      {
        v34 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_34;
      }
    }

    v34 = sub_24F92C738();
LABEL_34:

    if (!v34)
    {
      break;
    }

    a2 = 0;
    v35 = v10 & 0xC000000000000001;
    v36 = v10 & 0xFFFFFFFFFFFFFF8;
    v37 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v35)
      {
        v38 = MEMORY[0x253052270](a2, v10);
      }

      else
      {
        if (a2 >= *(v36 + 16))
        {
          goto LABEL_54;
        }

        v38 = *(v10 + 8 * a2 + 32);
      }

      v8 = v38;
      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      result = [objc_allocWithZone(MEMORY[0x277D0C0A0]) initWithInternalRepresentation_];
      if (!result)
      {
        __break(1u);
        return result;
      }

      sub_24F6BA118(result, v49);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_24E618218(0, v37[2] + 1, 1, v37);
      }

      a1 = v37[2];
      v39 = v37[3];
      v8 = a1 + 1;
      if (a1 >= v39 >> 1)
      {
        v37 = sub_24E618218(v39 > 1, a1 + 1, 1, v37);
      }

      v37[2] = v8;
      sub_24E90FDA8(v49, v37 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * a1);
      ++a2;
      v40 = v10 == v34;
      v10 = v50;
      if (v40)
      {
        goto LABEL_50;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v41 = sub_24F92C738();
    v9 = v10;
  }

  v37 = MEMORY[0x277D84F90];
LABEL_50:

  v51 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808);
  return sub_24F92B798();
}

uint64_t sub_24E9D9FE4(uint64_t a1, void *a2)
{
  sub_24F92C888();
  v3 = sub_24F92CD88();

  v17 = v3;
  MEMORY[0x253050C20](0x3D656C746974203ALL, 0xE800000000000000);
  v4 = [a2 title];
  v5 = sub_24F92B0D8();
  v7 = v6;

  MEMORY[0x253050C20](v5, v7);

  MEMORY[0x253050C20](0xD000000000000013, 0x800000024FA4CC50);
  v8 = [a2 baseLeaderboardID];
  v9 = sub_24F92B0D8();
  v11 = v10;

  MEMORY[0x253050C20](v9, v11);

  MEMORY[0x253050C20](0x6669746E65646920, 0xEC0000003D726569);
  v12 = [a2 identifier];
  v13 = sub_24F92B0D8();
  v15 = v14;

  MEMORY[0x253050C20](v13, v15);

  return v17;
}

uint64_t sub_24E9DA190(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  v4 = *(a2 + 32);
  *(v2 + 64) = *(a2 + 48);
  *(v2 + 72) = a1;
  *(v2 + 48) = v4;
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *v5 = v2;
  v5[1] = sub_24E9DA250;

  return sub_24E9DA8EC(v2 + 16);
}

uint64_t sub_24E9DA250(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 72) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_24E9DA360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_24E9DA388, 0, 0);
}

uint64_t sub_24E9DA388()
{
  v36 = v0;
  if (qword_27F211410 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E880);

  v5 = v2;

  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[6];
    v33 = v0[5];
    v9 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v9 = 136446978;
    *(v9 + 4) = sub_24E7620D4(0xD000000000000024, 0x800000024F972850, &v35);
    *(v9 + 12) = 2080;
    v10 = [v8 gameDescriptor];
    v11 = [v10 bundleIdentifier];

    v12 = sub_24F92B0D8();
    v14 = v13;

    v15 = sub_24E7620D4(v12, v14, &v35);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    if (v33)
    {
      v16 = MEMORY[0x253050F40](v1, MEMORY[0x277D837D0]);
      v18 = v17;
    }

    else
    {
      v16 = 7104878;
      v18 = 0xE300000000000000;
    }

    v21 = v0[3];
    v22 = v0[4];
    v23 = sub_24E7620D4(v16, v18, &v35);

    *(v9 + 24) = v23;
    *(v9 + 32) = 2080;
    if (v22)
    {
      v24 = v21;
    }

    else
    {
      v24 = 7104878;
    }

    if (v22)
    {
      v25 = v3;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = sub_24E7620D4(v24, v25, &v35);

    *(v9 + 34) = v26;
    _os_log_impl(&dword_24E5DD000, v6, v7, "%{public}s: getLeaderboards game=%s leaderboardIDs=%s leaderboardSetID=%s start", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v34, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);

    if (!v0[5])
    {
      goto LABEL_16;
    }

LABEL_7:

    v20 = sub_24F45D828(v19);

    goto LABEL_17;
  }

  if (v0[5])
  {
    goto LABEL_7;
  }

LABEL_16:
  v20 = 0;
LABEL_17:
  v0[8] = v20;
  v28 = v0[3];
  v27 = v0[4];
  v29 = swift_task_alloc();
  v0[9] = v29;
  *(v29 + 16) = *(v0 + 3);
  *(v29 + 32) = v20;
  *(v29 + 40) = v28;
  *(v29 + 48) = v27;
  v30 = swift_task_alloc();
  v0[10] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B440);
  *v30 = v0;
  v30[1] = sub_24E9DA75C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000003ALL, 0x800000024FA4CC10, sub_24E9DB084, v29, v31);
}

uint64_t sub_24E9DA75C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24E9DA880;
  }

  else
  {

    v2 = sub_24E7F6F18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E9DA880()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E9DA8EC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v1[4] = a1;
  v1[5] = v2;
  v1[6] = v3;
  return MEMORY[0x2822009F8](sub_24E9DA914, 0, 0);
}

uint64_t sub_24E9DA914()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_24E69A5C4(0, &qword_27F216FC8);
  *v4 = v0;
  v4[1] = sub_24E9DAA20;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000024FA45A60, sub_24E69A5A8, v3, v5);
}

uint64_t sub_24E9DAA20()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24E699570;
  }

  else
  {

    v2 = sub_24E9DAB3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E9DAB3C()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[10] = v2;
  v3 = [v2 internal];
  v0[11] = [objc_allocWithZone(MEMORY[0x277D0C138]) initWithInternalRepresentation_];

  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = sub_24E69A5C4(0, &qword_27F21C808);
  *v7 = v0;
  v7[1] = sub_24E9DAC98;

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0x6E7562286D6F7266, 0xEF293A4449656C64, sub_24E7980E0, v6, v8);
}

uint64_t sub_24E9DAC98()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E795F7C;
  }

  else
  {

    v2 = sub_24E9DADB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E9DADB4()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[15] = v2;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_24E9DAE6C;
  v7 = v0[11];

  return sub_24E9DA360(v3, v4, v5, v2, v7);
}

uint64_t sub_24E9DAE6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_24E9DB014;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_24E9DAF94;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24E9DAF94()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_24E9DB014()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24E9DB094()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_24E9DB128(unint64_t a1, unint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E9D99C4(a1, a2, v6);
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t PrivacyHeader.__allocating_init(id:bodyText:supplementaryItems:isDetailHeader:bodyActions:seeDetailsAction:learnMoreAction:privacyTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v19 = a4;
  v18 = a3;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = swift_allocObject();
  sub_24E65E064(a1, &v22);
  if (*(&v23 + 1))
  {
    v11 = v23;
    *(v10 + 40) = v22;
    *(v10 + 56) = v11;
    *(v10 + 72) = v24;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    v20 = v12;
    v21 = v14;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v15 = v18;
  *(v10 + 16) = a2;
  *(v10 + 24) = v15;
  *(v10 + 32) = v19 & 1;
  return v10;
}

uint64_t PrivacyHeader.init(id:bodyText:supplementaryItems:isDetailHeader:bodyActions:seeDetailsAction:learnMoreAction:privacyTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v20 = a4;
  v19 = a3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_24E65E064(a1, &v23);
  if (*(&v24 + 1))
  {
    v26 = v23;
    v27 = v24;
    v28 = v25;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v21 = v12;
    v22 = v14;
    sub_24F92C7F8();
    sub_24E601704(&v23, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v15 = v27;
  *(v5 + 40) = v26;
  *(v5 + 56) = v15;
  *(v5 + 72) = v28;
  v16 = v19;
  *(v5 + 16) = a2;
  *(v5 + 24) = v16;
  *(v5 + 32) = v20 & 1;
  return v5;
}

char *PrivacyHeader.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v121 = a2;
  v95 = sub_24F91F6B8();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v4 - 8);
  v104 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v84 - v7;
  MEMORY[0x28223BE20](v8);
  v112 = &v84 - v9;
  v99 = sub_24F92AC28();
  v110 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v92 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v84 - v12;
  MEMORY[0x28223BE20](v13);
  v102 = &v84 - v14;
  MEMORY[0x28223BE20](v15);
  v90 = &v84 - v16;
  v17 = sub_24F9285B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_24F928388();
  v21 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v105 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = &v84 - v24;
  MEMORY[0x28223BE20](v25);
  v98 = &v84 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v84 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v84 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v84 - v34;
  type metadata accessor for LinkableText();
  v114 = a1;
  sub_24F928398();
  v108 = v18;
  v36 = *(v18 + 16);
  v97 = v18 + 16;
  v96 = v36;
  v36(v20, v121, v17);
  sub_24E9DC440(&qword_27F21C360, 255, type metadata accessor for LinkableText);
  v100 = v20;
  sub_24F929548();
  if (v120)
  {
    v89 = v120;
    v107 = v17;
    sub_24F928398();
    v88 = sub_24F928278();
    v39 = *(v21 + 8);
    v37 = (v21 + 8);
    v38 = v39;
    v40 = v113;
    v39(v32, v113);
    v41 = type metadata accessor for Action();
    sub_24F928398();
    v42 = v121;
    v87 = static Action.tryToMakeInstance(byDeserializing:using:)(v35, v121);
    v39(v35, v40);
    sub_24F928398();
    v85 = v41;
    v86 = static Action.tryToMakeInstance(byDeserializing:using:)(v35, v42);
    v39(v35, v40);
    sub_24F928398();
    v43 = v112;
    sub_24F9282B8();
    v39(v29, v40);
    v44 = v110;
    v45 = v99;
    v106 = *(v110 + 48);
    if (v106(v43, 1, v99) == 1)
    {
      v46 = v40;
      sub_24E601704(v43, &qword_27F2213B0);
    }

    else
    {
      v50 = *(v44 + 32);
      v84 = v38;
      v51 = v90;
      v50(v90, v43, v45);
      (*(v44 + 16))(v102, v51, v45);
      v96(v100, v42, v107);
      type metadata accessor for PrivacyType();
      sub_24E9DC440(&qword_27F224818, 255, type metadata accessor for PrivacyType);
      v46 = v113;
      sub_24F92B6A8();

      v52 = v51;
      v38 = v84;
      (*(v44 + 8))(v52, v45);
    }

    v53 = v98;
    sub_24F928398();
    v54 = v103;
    sub_24F9282B8();
    v112 = v37;
    v38(v53, v46);
    if (v106(v54, 1, v45) == 1)
    {
      sub_24E601704(v54, &qword_27F2213B0);
      v103 = MEMORY[0x277D84F90];
    }

    else
    {
      v55 = v110;
      v56 = v54;
      v57 = v91;
      (*(v110 + 32))(v91, v56, v45);
      (*(v55 + 16))(v102, v57, v45);
      v96(v100, v121, v107);
      type metadata accessor for PrivacyHeaderSupplementaryItem();
      sub_24E9DC440(&qword_27F224810, 255, type metadata accessor for PrivacyHeaderSupplementaryItem);
      v46 = v113;
      v103 = sub_24F92B6A8();
      (*(v55 + 8))(v57, v45);
    }

    v58 = v101;
    v59 = v114;
    sub_24F928398();
    v60 = v104;
    sub_24F9282B8();
    v61 = v60;
    v38(v58, v46);
    if (v106(v60, 1, v45) == 1)
    {
      sub_24E601704(v60, &qword_27F2213B0);
    }

    else
    {
      v62 = v110;
      v63 = v92;
      v64 = (*(v110 + 32))(v92, v61, v45);
      MEMORY[0x28223BE20](v64);
      v65 = v121;
      *(&v84 - 2) = v85;
      *(&v84 - 1) = v65;
      v66 = v111;
      sub_24F92ABB8();
      v111 = v66;

      (*(v62 + 8))(v63, v45);
    }

    v67 = v108;
    v68 = v105;
    sub_24F928398();
    v69 = sub_24F928348();
    if (v70)
    {
      *&v117 = v69;
      *(&v117 + 1) = v70;
    }

    else
    {
      v71 = v93;
      sub_24F91F6A8();
      v72 = sub_24F91F668();
      v74 = v73;
      (*(v94 + 8))(v71, v95);
      *&v117 = v72;
      *(&v117 + 1) = v74;
      v46 = v113;
    }

    sub_24F92C7F8();
    v38(v68, v46);
    v29 = swift_allocObject();
    sub_24E65E064(&v120, &v117);
    if (*(&v118 + 1))
    {
      v75 = v118;
      *(v29 + 40) = v117;
      *(v29 + 56) = v75;
      *(v29 + 9) = v119;
      v76 = v107;
    }

    else
    {
      v77 = v93;
      sub_24F91F6A8();
      v78 = sub_24F91F668();
      v80 = v79;
      v81 = v77;
      v46 = v113;
      (*(v94 + 8))(v81, v95);
      v115 = v78;
      v116 = v80;
      v76 = v107;
      sub_24F92C7F8();
      sub_24E601704(&v117, &qword_27F235830);
    }

    v38(v59, v46);
    sub_24E601704(&v120, &qword_27F235830);
    v82 = v103;
    *(v29 + 2) = v89;
    *(v29 + 3) = v82;
    v29[32] = v88 & 1;
    (*(v67 + 8))(v121, v76);
  }

  else
  {
    v47 = sub_24F92AC38();
    sub_24E9DC440(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v48 = 0x7478655479646F62;
    v49 = v109;
    v48[1] = 0xE800000000000000;
    v48[2] = v49;
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D22530], v47);
    swift_willThrow();
    (*(v21 + 8))(v114, v113);
    (*(v108 + 8))(v121, v17);
  }

  return v29;
}

uint64_t PrivacyHeader.deinit()
{

  sub_24E6585F8(v0 + 40);
  return v0;
}

uint64_t PrivacyHeader.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 40);

  return swift_deallocClassInstance();
}

char *sub_24E9DC3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = PrivacyHeader.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24E9DC440(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t JSONObject.requiredString(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v10 = sub_24F928348();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (!v12)
  {
    v10 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v13 = a1;
    v13[1] = a2;
    v13[2] = a3;
    (*(*(v10 - 8) + 104))(v13, *MEMORY[0x277D22530], v10);
    swift_willThrow();
  }

  return v10;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24E9DC6BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E9DC704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E9DC788@<X0>(uint64_t a1@<X8>)
{
  sub_24E9DCBF4();
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 16);

  sub_24E9DD2A4(v6, &v73);
  v58 = v73;
  v7 = v74;
  v8 = BYTE8(v74);
  sub_24F925828();
  v9 = sub_24EA91914(v4);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_24E608A90(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D80);
  sub_24F926F28();
  v16 = *(&v80 + 1);
  *(a1 + 88) = v80;
  *(a1 + 96) = v16;
  v60 = 0;
  v61 = 0;
  LOBYTE(v62) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D88);
  sub_24F926F28();
  v17 = v81;
  v18 = *(&v81 + 1);
  *(a1 + 104) = v80;
  *(a1 + 120) = v17;
  *(a1 + 128) = v18;
  v19 = type metadata accessor for ChallengesSlashHeaderView(0);
  v20 = v19[10];
  *(a1 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  *(a1 + v19[11]) = 0x4031000000000000;
  *(a1 + v19[12]) = 0x4020000000000000;
  v21 = (a1 + v19[13]);
  *v21 = 0xD000000000000017;
  v21[1] = 0x800000024FA453F0;
  *a1 = v5;
  *(a1 + 8) = v58;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(v1 + 8);
  *(a1 + 48) = *(v1 + 16);
  *(a1 + 56) = v9;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v15;
  LOBYTE(v5) = sub_24F9257F8();
  sub_24E9DD870();
  sub_24F923318();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224828) + 36);
  *v30 = v5;
  *(v30 + 8) = v23;
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  v31 = sub_24F9275B8();
  v33 = v32;
  sub_24E9DDB30(v1, &v68, v4);
  v75 = *v70;
  v76 = *&v70[16];
  v77 = v71;
  v73 = v68;
  v74 = v69;
  *&v78 = v72;
  *(&v78 + 1) = v31;
  v79 = v33;
  v34 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224830) + 36);
  v35 = v76;
  v36 = v78;
  *(v34 + 64) = v77;
  *(v34 + 80) = v36;
  *(v34 + 96) = v79;
  v37 = v74;
  *v34 = v73;
  *(v34 + 16) = v37;
  *(v34 + 32) = v75;
  *(v34 + 48) = v35;
  v81 = v69;
  v80 = v68;
  v83 = *&v70[16];
  v84 = v71;
  v82 = *v70;
  v85 = v72;
  v86 = v31;
  v87 = v33;
  sub_24E60169C(&v73, &v60, &qword_27F224838);
  sub_24E601704(&v80, &qword_27F224838);
  LOBYTE(v31) = sub_24F925828();
  sub_24F923318();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224840) + 36);
  *v46 = v31;
  *(v46 + 8) = v39;
  *(v46 + 16) = v41;
  *(v46 + 24) = v43;
  *(v46 + 32) = v45;
  *(v46 + 40) = 0;
  v47 = sub_24F927618();
  v49 = v48;
  v50 = *(v1 + 24);
  v51 = *(v1 + 32);
  v52 = *(v1 + 40);
  v53 = *(v1 + 48);
  KeyPath = swift_getKeyPath();
  v59[64] = 0;
  *&v68 = v47;
  *(&v68 + 1) = v49;
  *&v69 = v50;
  *(&v69 + 1) = v51;
  *v70 = v52;
  *&v70[8] = v53;
  *&v70[16] = KeyPath;
  v70[24] = 0;
  v55 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224848) + 36));
  v56 = v69;
  *v55 = v68;
  v55[1] = v56;
  v55[2] = *v70;
  *(v55 + 41) = *&v70[9];
  v60 = v47;
  v61 = v49;
  v62 = v50;
  v63 = v51;
  v64 = v52;
  v65 = v53;
  v66 = KeyPath;
  v67 = 0;
  sub_24E60169C(&v68, v59, &qword_27F224850);
  return sub_24E601704(&v60, &qword_27F224850);
}

void sub_24E9DCBF4()
{
  v1 = v0;
  v2 = sub_24F924848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v0 + 64);
  v6 = *(v0 + 56);
  v29 = v6;
  if (v30 == 1)
  {
    if (v6 != 1)
    {
      return;
    }
  }

  else
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v29, &qword_27F21B1E0);
    (*(v3 + 8))(v5, v2);
    if (v27 != 1)
    {
      return;
    }
  }

  v28 = *(v1 + 80);
  v27 = *(v1 + 72);
  v8 = v27;
  v9 = v28;

  v10 = v8;
  if ((v9 & 1) == 0)
  {
    sub_24F92BDC8();
    v11 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v27, &qword_27F224858);
    (*(v3 + 8))(v5, v2);
    v10 = v26;
  }

  swift_getKeyPath();
  v26 = v10;
  sub_24E9DEA18(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  v12 = *(v10 + 80);
  v13 = *(v10 + 88);
  v14 = *(v10 + 96);
  v15 = *(v10 + 104);
  v16 = *(v10 + 112);

  if ((v16 & 1) == 0)
  {

    v17 = v8;
    if ((v9 & 1) == 0)
    {
      sub_24F92BDC8();
      v18 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E601704(&v27, &qword_27F224858);
      (*(v3 + 8))(v5, v2);
      v17 = v26;
    }

    swift_getKeyPath();
    v26 = v17;
    sub_24F91FD88();

    v19 = *(v17 + 136);

    if ((v19 & 1) == 0)
    {

      v20 = v8;
      if ((v9 & 1) == 0)
      {
        sub_24F92BDC8();
        v21 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E601704(&v27, &qword_27F224858);
        (*(v3 + 8))(v5, v2);
        v20 = v26;
      }

      swift_getKeyPath();
      v26 = v20;
      sub_24F91FD88();

      v22 = v8;
      if ((v9 & 1) == 0)
      {
        sub_24F92BDC8();
        v23 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E601704(&v27, &qword_27F224858);
        (*(v3 + 8))(v5, v2);
        v22 = v26;
      }

      swift_getKeyPath();
      v26 = v22;
      sub_24F91FD88();

      v31.origin.x = v12;
      v31.origin.y = v13;
      v31.size.width = v14;
      v31.size.height = v15;
      CGRectGetMinY(v31);

      if ((v9 & 1) == 0)
      {
        sub_24F92BDC8();
        v24 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E601704(&v27, &qword_27F224858);
        (*(v3 + 8))(v5, v2);
        v8 = v26;
      }

      swift_getKeyPath();
      v26 = v8;
      sub_24F91FD88();
    }
  }
}

void sub_24E9DD2A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v2 + 64);
  v9 = *(v2 + 56);
  v39 = v9;
  v10 = v40;
  if (v40 == 1)
  {
    v11 = v9;
  }

  else
  {

    sub_24F92BDC8();
    v12 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v39, &qword_27F21B1E0);
    (*(v6 + 8))(v8, v5);
    v11 = v37;
  }

  if (v11 <= 1u)
  {
    if (!v11)
    {
      if (a1 <= 3)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.75;
      }

      goto LABEL_13;
    }

LABEL_10:
    if (a1 <= 3)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.85;
    }

    goto LABEL_13;
  }

  v13 = 1.0;
  if (v11 == 2)
  {
    goto LABEL_10;
  }

LABEL_13:
  if (v10)
  {
    v14 = v9;
  }

  else
  {

    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v39, &qword_27F21B1E0);
    (*(v6 + 8))(v8, v5);
    v14 = v37;
  }

  if (v14 <= 1u)
  {
    if (v14)
    {
      v16 = v13 * 156.0;
      v17 = 91.0;
LABEL_21:
      v18 = v13 * v17;
      v19 = v13 * 42.0;
      goto LABEL_23;
    }

LABEL_20:
    v16 = v13 * 120.0;
    v17 = 80.0;
    goto LABEL_21;
  }

  if (v14 == 2)
  {
    goto LABEL_20;
  }

  v16 = 156.0;
  v18 = 91.0;
  v19 = 42.0;
LABEL_23:
  v35 = a1;
  v38 = *(v2 + 80);
  v20 = *(v2 + 72);
  v37 = v20;
  v21 = v38;

  if ((v21 & 1) == 0)
  {
    sub_24F92BDC8();
    v22 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v37, &qword_27F224858);
    (*(v6 + 8))(v8, v5);
    v20 = v36;
  }

  swift_getKeyPath();
  v36 = v20;
  sub_24E9DEA18(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  v23 = *(v20 + 128);
  v24 = *(v20 + 136);

  if ((v24 & 1) == 0)
  {
    sub_24E9DCBF4();
    v26 = v25;
    v28 = v23 - v27;
    if (!v10)
    {

      sub_24F92BDC8();
      v29 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E601704(&v39, &qword_27F21B1E0);
      (*(v6 + 8))(v8, v5);
      LOBYTE(v9) = v36;
    }

    v30 = v28 - v26;
    if (v9 > 1u)
    {
      v33 = 1.0;
      if (v9 == 2)
      {
LABEL_41:
        v16 = v16 * v33;
        v18 = v18 * v33;
        goto LABEL_42;
      }

      v31 = v30 * 177.0 / 452.0;
    }

    else
    {
      if (v9)
      {
        v34 = v16 + 32.0;
        if (v30 > v16 + 32.0)
        {
          v30 = v30 * 225.0 / 350.0;
          if (v30 <= v34)
          {
            v30 = v16 + 32.0;
          }
        }

        v33 = v30 / v34;
        goto LABEL_41;
      }

      v31 = v30 * 225.0 / 408.0;
      if (v31 >= v16)
      {
        v32 = (v16 + (v31 - v16) / v35) / v16;
        v33 = 1.5;
        if (v32 <= 1.5)
        {
          v33 = v32;
        }

        goto LABEL_41;
      }
    }

    v33 = v31 / v16;
    goto LABEL_41;
  }

LABEL_42:
  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = 0;
}

double sub_24E9DD870()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + 64);
  v5 = *(v0 + 56);
  v19 = v5;
  if (v20 == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v19, &qword_27F21B1E0);
    (*(v2 + 8))(v4, v1);
    v6 = v17;
  }

  v8 = 0.0;
  if (v6 == 1)
  {
    v18 = *(v0 + 80);
    v9 = *(v0 + 72);
    v17 = v9;
    v10 = v18;

    if ((v10 & 1) == 0)
    {
      sub_24F92BDC8();
      v11 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E601704(&v17, &qword_27F224858);
      (*(v2 + 8))(v4, v1);
      v9 = v16;
    }

    swift_getKeyPath();
    v16 = v9;
    sub_24E9DEA18(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
    sub_24F91FD88();

    v12 = *(v9 + 120);
    v13 = *(v9 + 136);

    if ((v13 & 1) == 0)
    {
      return v12 * 0.12;
    }
  }

  return v8;
}

uint64_t sub_24E9DDB30@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*(result + 17))
  {
    v5 = sub_24F926C38();
    v6 = sub_24F927618();
    v8 = v7;
    sub_24E9DDC14(a3);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    result = sub_24F925808();
    v17 = result;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v8 = 0;
    v17 = 0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = v17;
  *(a2 + 48) = v10;
  *(a2 + 56) = v12;
  *(a2 + 64) = v14;
  *(a2 + 72) = v16;
  *(a2 + 80) = 0;
  return result;
}

void sub_24E9DDC14(double a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v1 + 64);
  v7 = *(v1 + 56);
  v14 = v7;
  if (v15 != 1)
  {

    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v14, &qword_27F21B1E0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v7) = v13[79];
  }

  if (v7 - 2 >= 2)
  {
    if (v7)
    {
      sub_24F925808();
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    v10 = sub_24F925828();
    *(inited + 32) = v10;
    v11 = sub_24F9257F8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    v10 = sub_24F925828();
    *(inited + 32) = v10;
    v11 = sub_24F925858();
  }

  v12 = v11;
  *(inited + 33) = v11;
  sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v10)
  {
    sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v12)
  {
    sub_24F925848();
  }

LABEL_12:
  sub_24EA91914(a1);
}

uint64_t sub_24E9DDEF4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v52 = *(a1 + 32);
  }

  else
  {

    sub_24F92BDC8();
    v9 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E9DEA7C(a1);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v8) = v52;
  }

  if (v8 > 1u)
  {
    if (v8 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_24F93FC20;
      sub_24F926C98();
      *(v13 + 32) = sub_24F9273C8();
      *(v13 + 40) = v14;
      sub_24F926C98();
      *(v13 + 48) = sub_24F9273C8();
      *(v13 + 56) = v15;
      sub_24F926C88();
      sub_24F926D08();

      *(v13 + 64) = sub_24F9273C8();
      *(v13 + 72) = v16;
      sub_24F926C88();
      *(v13 + 80) = sub_24F9273C8();
      *(v13 + 88) = v17;
      sub_24F927878();
      sub_24F927898();
      sub_24F9273D8();
      sub_24F923BD8();
      sub_24F927618();
      sub_24F9238C8();
      v35 = 1;
      v49 = v31;
      v50 = v32;
      *v51 = v33;
      *&v51[16] = v34;
      v47 = v29;
      v48 = v30;
      v51[24] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2248A0);
      sub_24E9DEB30();
      sub_24F924E28();
      v44 = v39;
      v45 = v40;
      v11 = v41[0];
      goto LABEL_10;
    }
  }

  else if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24F93A400;
    *(v10 + 32) = sub_24F926C98();
    *(v10 + 40) = sub_24F926C88();
    sub_24F927878();
    sub_24F927898();
    MEMORY[0x25304CD70](v10);
    sub_24F923BD8();
    sub_24F927618();
    sub_24F9238C8();
    v35 = 0;
    v49 = v25;
    v50 = v26;
    *v51 = v27;
    *&v51[16] = v28;
    v47 = *&v23[8];
    v48 = v24;
    v51[24] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2248A0);
    sub_24E9DEB30();
    sub_24F924E28();
    v44 = v39;
    v45 = v40;
    v11 = v41[0];
LABEL_10:
    *v46 = v11;
    *(&v46[1] + 1) = *(v41 + 9);
    v42 = v37;
    v43 = v38;
    v36[0] = 0;
    BYTE1(v46[3]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224898);
    sub_24E9DEAAC();
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93A400;
  *(v12 + 32) = sub_24F926C98();
  *(v12 + 40) = sub_24F926C88();
  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v12);
  sub_24F923BD8();
  sub_24F927618();
  sub_24F9238C8();
  v44 = *&v46[9];
  v45 = *&v46[11];
  *v46 = *&v46[13];
  v46[2] = v46[15];
  v42 = *&v46[5];
  v43 = *&v46[7];
  LOBYTE(v37) = 1;
  BYTE1(v46[3]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2248A0);
  sub_24E9DEAAC();
  sub_24E9DEB30();
LABEL_11:
  sub_24F924E28();
  v44 = v49;
  v45 = v50;
  *v46 = *v51;
  *(&v46[1] + 2) = *&v51[10];
  v42 = v47;
  v43 = v48;
  v39 = v49;
  v40 = v50;
  v41[0] = *v51;
  *(v41 + 10) = *&v51[10];
  v37 = v47;
  v38 = v48;
  v18 = v48;
  v19 = v49;
  v20 = v50;
  *a2 = v47;
  a2[1] = v18;
  *(a2 + 74) = *&v51[10];
  v21 = *v51;
  a2[3] = v20;
  a2[4] = v21;
  a2[2] = v19;
  sub_24E60169C(&v37, v36, &qword_27F2248B8);
  return sub_24E601704(&v42, &qword_27F2248B8);
}

double sub_24E9DE558@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v18 = *v1;
  v19[0] = v3;
  *(v19 + 9) = *(v1 + 25);
  v4 = sub_24F924C88();
  v17 = 0;
  sub_24E9DDEF4(&v18, &v11);
  v22 = v13;
  v23 = v14;
  v24[0] = v15[0];
  *(v24 + 10) = *(v15 + 10);
  v20 = v11;
  v21 = v12;
  *(v26 + 10) = *(v15 + 10);
  v25[2] = v13;
  v25[3] = v14;
  v26[0] = v15[0];
  v25[0] = v11;
  v25[1] = v12;
  sub_24E60169C(&v20, &v10, &qword_27F224890);
  sub_24E601704(v25, &qword_27F224890);
  *&v16[39] = v22;
  *&v16[55] = v23;
  *&v16[71] = v24[0];
  *&v16[81] = *(v24 + 10);
  *&v16[7] = v20;
  *&v16[23] = v21;
  v5 = *&v16[32];
  *(a1 + 65) = *&v16[48];
  v6 = *&v16[80];
  *(a1 + 81) = *&v16[64];
  *(a1 + 97) = v6;
  v8 = *v16;
  result = *&v16[16];
  *(a1 + 33) = *&v16[16];
  *(a1 + 49) = v5;
  v9 = v17;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 113) = v16[96];
  *(a1 + 17) = v8;
  return result;
}

uint64_t sub_24E9DE6B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24E9DE6FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_24E9DE760()
{
  result = qword_27F224860;
  if (!qword_27F224860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224848);
    sub_24E9DE818();
    sub_24E602068(&qword_27F224888, &qword_27F224850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224860);
  }

  return result;
}

unint64_t sub_24E9DE818()
{
  result = qword_27F224868;
  if (!qword_27F224868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224840);
    sub_24E9DE8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224868);
  }

  return result;
}

unint64_t sub_24E9DE8A4()
{
  result = qword_27F224870;
  if (!qword_27F224870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224830);
    sub_24E9DE95C();
    sub_24E602068(&qword_27F224880, &qword_27F224838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224870);
  }

  return result;
}

unint64_t sub_24E9DE95C()
{
  result = qword_27F224878;
  if (!qword_27F224878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224828);
    sub_24E9DEA18(&qword_27F214DC8, type metadata accessor for ChallengesSlashHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224878);
  }

  return result;
}

uint64_t sub_24E9DEA18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E9DEAAC()
{
  result = qword_27F2248A8;
  if (!qword_27F2248A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224898);
    sub_24E9DEB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2248A8);
  }

  return result;
}

unint64_t sub_24E9DEB30()
{
  result = qword_27F2248B0;
  if (!qword_27F2248B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2248A0);
    sub_24E86BC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2248B0);
  }

  return result;
}

uint64_t ProductPageLinkLayout.init(metrics:iconView:titleText:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_24E9DEC9C(a1, a4 + 80);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F922268();
  sub_24E9DECD4(a1);
  sub_24E612C80(a3, a4 + 40);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t ProductPageLinkLayout.Metrics.init(iconSize:iconMargin:titleSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  a4[1] = a6;
  sub_24E612C80(a1, (a4 + 2));
  sub_24E612C80(a2, (a4 + 7));

  return sub_24E612C80(a3, (a4 + 12));
}

uint64_t ProductPageLinkLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v27 = a1;
  v10 = sub_24F92CDB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
  sub_24F922288();
  v26[2] = v14;
  v16 = v15;
  v28.origin.x = a1;
  v28.origin.y = a2;
  v17 = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  MinY = CGRectGetMinY(v28);
  __swift_project_boxed_opaque_existential_1(v5 + 17, v5[20]);
  v26[1] = v16;
  sub_24F9223C8();
  v20 = MinY + v19;
  v26[0] = MinY + v19;
  v21 = *(v4 + 88);
  v22 = ceil(floor(v16 * 0.5) + v20 - v21 * 0.5);
  v29.origin.x = v27;
  v29.origin.y = v17;
  v29.size.width = a3;
  v29.size.height = a4;
  MinX = CGRectGetMinX(v29);
  v24 = *(v4 + 80);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24F92C1D8();
  sub_24F922228();
  v30.origin.x = MinX;
  v30.origin.y = v22;
  v30.size.width = v24;
  v30.size.height = v21;
  CGRectGetMaxX(v30);
  __swift_project_boxed_opaque_existential_1(v5 + 12, v5[15]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v11 + 8))(v13, v10);
  __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  sub_24F92C1D8();
  sub_24F922228();
  return sub_24F922128();
}

double _s12GameStoreKit21ProductPageLinkLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, void *a2)
{
  v4 = sub_24F9225E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F922618();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D22788], v4, v10);
  sub_24F9225F8();
  v13 = [a2 traitCollection];
  v14 = sub_24F92BF98();
  v15 = MEMORY[0x277D228E0];
  if (v14)
  {
    v16 = *(a1 + 8);
    v22[3] = MEMORY[0x277D85048];
    v22[4] = MEMORY[0x277D225F8];
    v22[0] = v16;
    v17 = sub_24F9229A8();
    v24 = v17;
    v25 = v15;
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_24E615E00(a1 + 16, v22);
    v24 = v17;
    v25 = v15;
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  sub_24E615E00(a1 + 56, v22);
  v18 = sub_24F9229A8();
  v24 = v18;
  v25 = v15;
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_24E615E00(a1 + 96, v22);
  v24 = v18;
  v25 = v15;
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_24F9225D8();
  v20 = v19;

  (*(v9 + 8))(v12, v8);
  return v20;
}

unint64_t sub_24E9DF464()
{
  result = qword_27F2248D0;
  if (!qword_27F2248D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2248D0);
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_24E9DF4FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E9DF544(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E9DF5C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}