uint64_t sub_24E9DF610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E9DF6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v61 = sub_24F924248();
  MEMORY[0x28223BE20](v61);
  v56 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v55 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v55 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2248F0);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v11 = &v55 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2248F8);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v55 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224900);
  MEMORY[0x28223BE20](v57);
  v64 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224908);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v55 - v24;
  if ((*(a1 + 32) & 8) != 0)
  {
    sub_24F9271E8();
    v27 = sub_24F9271F8();
    (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
  }

  else
  {
    v26 = sub_24F9271F8();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  }

  v28 = sub_24F9232F8();
  (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
  swift_beginAccess();
  v29 = *(a1 + 80);
  if (v29)
  {
    v30 = type metadata accessor for Action();
    v31 = sub_24E9E0804(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v30 = 0;
    v31 = 0;
    *(&v68 + 1) = 0;
    *&v69 = 0;
  }

  *&v68 = v29;
  *(&v69 + 1) = v30;
  *&v70 = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224910);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224918);
  v33 = sub_24E9E05D8();
  v66 = v32;
  v67 = v33;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  v34 = sub_24F924258();
  *&v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v35 = *(v34 + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_24F924B38();
  (*(*(v37 - 8) + 104))(&v6[v35], v36, v37);
  __asm { FMOV            V0.2D, #12.0 }

  *v6 = _Q0;
  *&v6[*(v61 + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v43 = sub_24F926D08();

  sub_24E645844(v6, v56);
  sub_24E9E0804(&qword_27F214338, MEMORY[0x277CDFBC8]);
  v44 = sub_24F927348();
  sub_24E6458F0(v6);
  *(&v70 + 1) = v44;
  *&v71 = v43;
  sub_24E602068(&qword_27F224938, &qword_27F2248F0);
  sub_24E62A2EC();
  v45 = v59;
  v46 = v60;
  sub_24F926178();
  sub_24E64594C(&v68);
  (*(v58 + 8))(v11, v46);
  sub_24F927618();
  sub_24F9242E8();
  (*(v62 + 32))(v16, v45, v63);
  v47 = &v16[*(v57 + 36)];
  v48 = v73;
  *(v47 + 4) = v72;
  *(v47 + 5) = v48;
  *(v47 + 6) = v74;
  v49 = v69;
  *v47 = v68;
  *(v47 + 1) = v49;
  v50 = v71;
  *(v47 + 2) = v70;
  *(v47 + 3) = v50;
  sub_24E9E06BC(v16, v19);
  sub_24E60169C(v25, v22, &qword_27F224908);
  v51 = v64;
  sub_24E9E072C(v19, v64);
  v52 = v65;
  sub_24E60169C(v22, v65, &qword_27F224908);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224940);
  sub_24E9E072C(v51, v52 + *(v53 + 48));
  sub_24E9E079C(v19);
  sub_24E601704(v25, &qword_27F224908);
  sub_24E9E079C(v51);
  return sub_24E601704(v22, &qword_27F224908);
}

uint64_t sub_24E9DFED8(uint64_t a1)
{
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224918);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224948);
  sub_24E9E0094(a1, &v8[*(v9 + 44)]);
  v10 = sub_24F925898();
  KeyPath = swift_getKeyPath();
  v12 = &v8[*(v6 + 36)];
  *v12 = KeyPath;
  v12[1] = v10;
  sub_24F9248B8();
  sub_24E9E05D8();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);
  return sub_24E601704(v8, &qword_27F224918);
}

uint64_t sub_24E9E0094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224950);
  v5 = *(v4 - 8);
  v45 = v4;
  v46 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v41[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224958);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v41[-v12];
  v14 = *(a1 + 24);
  v47 = *(a1 + 16);
  v48 = v14;
  sub_24E600AEC();

  v15 = sub_24F925E18();
  v17 = v16;
  LOBYTE(v14) = v18;
  LODWORD(v47) = sub_24F9251C8();
  v43 = sub_24F925C58();
  v44 = v19;
  v21 = v20;
  v42 = v22;
  sub_24E600B40(v15, v17, v14 & 1);

  if ((*(a1 + 32) & 2) != 0)
  {
    v25 = sub_24F926DF8();
    v26 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20) + 36));
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
    v28 = *MEMORY[0x277CE1050];
    v29 = sub_24F926E78();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = swift_getKeyPath();
    *v7 = v25;
    LODWORD(v25) = sub_24F9251C8();
    *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224968) + 36)) = v25;
    LOBYTE(v25) = sub_24F925838();
    sub_24F923318();
    v30 = v45;
    v31 = v7 + *(v45 + 36);
    *v31 = v25;
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *(v31 + 3) = v34;
    *(v31 + 4) = v35;
    v31[40] = 0;
    sub_24E9E085C(v7, v13);
    v23 = 0;
    v24 = v30;
  }

  else
  {
    v23 = 1;
    v24 = v45;
  }

  (*(v46 + 56))(v13, v23, 1, v24);
  sub_24E60169C(v13, v10, &qword_27F224958);
  v37 = v43;
  v36 = v44;
  *a2 = v43;
  *(a2 + 8) = v21;
  v38 = v42 & 1;
  *(a2 + 16) = v42 & 1;
  *(a2 + 24) = v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224960);
  sub_24E60169C(v10, a2 + *(v39 + 48), &qword_27F224958);
  sub_24E5FD138(v37, v21, v38);

  sub_24E601704(v13, &qword_27F224958);
  sub_24E601704(v10, &qword_27F224958);
  sub_24E600B40(v37, v21, v38);
}

uint64_t sub_24E9E0460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2248E8);
  return sub_24E9DF6E0(v3, a2 + *(v4 + 44));
}

uint64_t sub_24E9E04B4()
{
  sub_24E66D28C();

  return sub_24F9218E8();
}

unint64_t sub_24E9E04FC()
{
  result = qword_27F2248D8;
  if (!qword_27F2248D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2248D8);
  }

  return result;
}

unint64_t sub_24E9E05D8()
{
  result = qword_27F224920;
  if (!qword_27F224920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224918);
    sub_24E602068(&qword_27F224928, &qword_27F224930);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224920);
  }

  return result;
}

uint64_t sub_24E9E06BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9E072C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9E079C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E9E0804(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E9E085C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TodayCardMediaHero.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v57 = *v2;
  v74 = sub_24F9285B8();
  v5 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v57 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v70 = sub_24F928388();
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v57 - v17;
  sub_24F929608();

  sub_24F928398();
  v69 = v5;
  v71 = *(v5 + 16);
  v63 = v11;
  v19 = v11;
  v20 = a2;
  v21 = a2;
  v22 = v74;
  v71(v19, v21, v74);
  v66 = v18;
  v64 = v15;
  sub_24F929548();
  v23 = v73;
  v68 = v20;
  v24 = v71;
  v71(v73, v20, v22);
  v72 = a1;
  sub_24F928398();
  v25 = v63;
  v24(v63, v23, v22);
  type metadata accessor for Artwork();
  sub_24E9E1210(&qword_27F219660, type metadata accessor for Artwork);
  v26 = v25;
  v27 = sub_24F92B698();
  v28 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_artworks;
  v29 = v65;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_artworks) = v27;
  sub_24F928398();
  v30 = v25;
  v31 = v74;
  v24(v30, v23, v74);
  type metadata accessor for Video();
  sub_24E9E1210(&qword_27F221590, type metadata accessor for Video);
  v32 = sub_24F92B698();
  v58 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_videos;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_videos) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224980);
  sub_24F928398();
  v59 = v5 + 16;
  v24(v26, v73, v31);
  sub_24E9E115C();
  sub_24F929548();
  *(v29 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_artworkLayoutsWithMetrics) = v75;
  v33 = *(v29 + v28);
  if (v33 >> 62)
  {
    v34 = sub_24F92C738();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v70;
  v36 = v67;
  if (v34)
  {
  }

  else
  {
    v37 = *(v29 + v58);
    if (v37 >> 62)
    {
      v38 = sub_24F92C738();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v38)
    {
      v52 = sub_24F92AC38();
      sub_24E9E1210(&qword_27F2213B8, MEMORY[0x277D22548]);
      swift_allocError();
      *v53 = 0x736B726F77747261;
      v53[1] = 0xE800000000000000;
      v53[2] = v57;
      (*(*(v52 - 8) + 104))(v53, *MEMORY[0x277D22530], v52);
      swift_willThrow();
      v54 = *(v69 + 8);
      v55 = v36;
      v56 = v74;
      v54(v68, v74);
      (*(v55 + 8))(v72, v70);
      v54(v73, v56);
      sub_24E601704(v66, &qword_27F213E68);

      return swift_deallocPartialClassInstance();
    }
  }

  v39 = *(v36 + 16);
  v40 = v36;
  v41 = v60;
  v42 = v72;
  v39(v60, v72, v35);
  v43 = v61;
  v44 = v68;
  v45 = v74;
  v71(v61, v68, v74);
  v46 = v62;
  v47 = TodayCardMedia.init(deserializing:using:)(v41, v43);
  if (v46)
  {
    v48 = *(v69 + 8);
    v48(v44, v45);
    (*(v40 + 8))(v42, v35);
    v48(v73, v45);
    return sub_24E601704(v66, &qword_27F213E68);
  }

  else
  {
    v50 = *(v69 + 8);
    v51 = v47;
    v50(v44, v45);
    (*(v40 + 8))(v42, v35);
    v50(v73, v45);
    sub_24E601704(v66, &qword_27F213E68);
    return v51;
  }
}

unint64_t sub_24E9E115C()
{
  result = qword_27F224988;
  if (!qword_27F224988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224980);
    sub_24E9E1210(&qword_27F224990, type metadata accessor for TodayCardArtworkSizedLayoutMetrics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224988);
  }

  return result;
}

uint64_t sub_24E9E1210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TodayCardMediaHero.__allocating_init(artworks:videos:artworkLayoutsWithMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_artworks) = a1;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_videos) = a2;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_artworkLayoutsWithMetrics) = a3;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_24E60169C(a4, v12 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);
  sub_24E60169C(v22, &v19, &qword_27F235830);
  if (*(&v20 + 1))
  {
    v13 = v20;
    *(v12 + 32) = v19;
    *(v12 + 48) = v13;
    *(v12 + 64) = v21;
  }

  else
  {
    sub_24F91F6A8();
    v14 = sub_24F91F668();
    v16 = v15;
    (*(v9 + 8))(v11, v8);
    v18[1] = v14;
    v18[2] = v16;
    sub_24F92C7F8();
    sub_24E601704(&v19, &qword_27F235830);
  }

  sub_24E601704(a4, &qword_27F213E68);
  sub_24E601704(v22, &qword_27F235830);
  *(v12 + 16) = 9;
  *(v12 + 24) = 1;
  return v12;
}

uint64_t TodayCardMediaHero.init(artworks:videos:artworkLayoutsWithMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v21[0] = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_artworks) = a1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_videos) = a2;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_artworkLayoutsWithMetrics) = a3;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_24E60169C(a4, v21 - v14, &qword_27F213E68);
  sub_24E60169C(v28, &v22, &qword_27F235830);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v18 = v17;
    (*(v21[0] + 8))(v12, v10);
    v21[1] = v16;
    v21[2] = v18;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830);
  }

  sub_24E601704(a4, &qword_27F213E68);
  sub_24E601704(v28, &qword_27F235830);
  v19 = v26;
  *(v5 + 32) = v25;
  *(v5 + 48) = v19;
  *(v5 + 64) = v27;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v5 + 16) = 9;
  *(v5 + 24) = 1;
  return v5;
}

uint64_t sub_24E9E1748()
{
}

uint64_t TodayCardMediaHero.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t TodayCardMediaHero.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaHero()
{
  result = qword_27F224998;
  if (!qword_27F224998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E9E19FC(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213638);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_24E65864C(*(v1 + 48) + 40 * v15, v28);
    sub_24E643A9C(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_24E65864C(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_24E601704(v25, &qword_27F224A00);

      goto LABEL_22;
    }

    sub_24E643A9C(v26 + 8, v24);
    sub_24E601704(v25, &qword_27F224A00);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_24E76D644(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

unint64_t sub_24E9E1CDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B8);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_24E65864C(*(a1 + 48) + 40 * v12, v27);
        sub_24E643A9C(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_24E65864C(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_24E643A9C(v25 + 8, v20);
        sub_24E601704(v24, &qword_27F224A00);
        v21 = v18;
        sub_24E612B0C(v20, v22);
        v13 = v21;
        sub_24E612B0C(v22, v23);
        sub_24E612B0C(v23, &v21);
        result = sub_24E76D644(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_24E612B0C(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_24E612B0C(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_24E601704(v24, &qword_27F224A00);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_24E9E1FB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B0);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_24E65864C(*(a1 + 48) + 40 * v11, v24);
        sub_24E643A9C(*(a1 + 56) + 32 * v11, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_24E65864C(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_24E601704(v21, &qword_27F224A00);

          goto LABEL_23;
        }

        sub_24E643A9C(v22 + 8, v20);
        sub_24E601704(v21, &qword_27F224A00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_24E76D644(v18, v19);
        v12 = result;
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;

          *(v2[7] + 8 * v12) = v18;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24E9E2340(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_24F4578E0(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_24E643A9C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24F4578E0((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_24E9E247C(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t), uint64_t *a3)
{
  v6 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  a2(0, v6, 0);
  v7 = v14;
  if (v6)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_24E643A9C(i, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(a3);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v14 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        a2(v9 > 1, v10 + 1, 1);
        v7 = v14;
      }

      *(v7 + 16) = v10 + 1;
      *(v7 + 8 * v10 + 32) = v12;
      if (!--v6)
      {
        return v7;
      }
    }

    return 0;
  }

  return v7;
}

uint64_t sub_24E9E25A8(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_24F92C978();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x253052270](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for QuickActionButtonView();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_24F92C738();
    sub_24F92C978();
  }

  return v8;
}

uint64_t sub_24E9E270C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_24F457D24(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_24E643A9C(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24F457D24((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t ASKBagContract.language.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - v2;
  v4 = sub_24F91F7C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F758();
  v8 = sub_24F91F718();
  if (!v9)
  {
    v8 = sub_24F91F708();
  }

  v10 = v8;
  v11 = v9;
  if (qword_27F210830 != -1)
  {
    swift_once();
  }

  v12 = sub_24F92A448();
  MEMORY[0x28223BE20](v12);
  *(&v14 - 2) = v10;
  *(&v14 - 1) = v11;
  sub_24F92A408();

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t ASKBagContract.gameActivityPartyStartUrl.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  v4 = sub_24F92B098();
  sub_24F92A448();

  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t ASKBagContract.__allocating_init(_:isOfflineBag:bagOfflinePolicy:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  v7 = *a3;
  v8 = a3[1];
  LOBYTE(a3) = *(a3 + 16);
  v9 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v10 = sub_24F92A498();
  (*(*(v10 - 8) + 32))(v6 + v9, a1, v10);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = a2;
  v11 = v6 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = a3;
  return v6;
}

uint64_t ASKBagContract.init(_:isOfflineBag:bagOfflinePolicy:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  v9 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v10 = sub_24F92A498();
  (*(*(v10 - 8) + 32))(v3 + v9, a1, v10);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = a2;
  v11 = v3 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v11 = v6;
  *(v11 + 8) = v7;
  *(v11 + 16) = v8;
  return v3;
}

__n128 ASKBagContract.bagOfflinePolicy.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy + 16);
  result = *(v1 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

double ASKBagContract.fetchTimeout.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210840 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C40], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t ASKBagContract.hideableSystemApps.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  if (qword_27F210850 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  if (!v7)
  {
    return 0;
  }

  v4 = sub_24E9E247C(v7, sub_24F457900, &qword_27F251730);

  return v4;
}

uint64_t ASKBagContract.tabs.getter()
{
  if (qword_27F210868 != -1)
  {
    swift_once();
  }

  if (qword_27F210EA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v1 = ASKBagContract.tabs(withFallback:bagKey:)(v0);

  return v1;
}

uint64_t ASKBagContract.tabs(withFallback:bagKey:)(uint64_t a1)
{
  v54 = a1;
  v1 = sub_24F9285B8();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_24F928388();
  v4 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v52 - v9;
  v60 = type metadata accessor for StoreTab();
  v11 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v53 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (v52 - v14);
  MEMORY[0x28223BE20](v16);
  v59 = v52 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v52 - v20;
  sub_24F92A428();
  sub_24F92A408();
  (*(v19 + 8))(v21, v18);
  v22 = *(v67[0] + 16);
  v56 = v11;
  if (v22)
  {
    v58 = v10;
    v52[1] = v67[0];
    v23 = v67[0] + 32;
    v57 = (v4 + 16);
    v24 = (v4 + 8);
    v25 = (v11 + 48);
    v64 = MEMORY[0x277D84F90];
    v55 = v3;
    v26 = v61;
    do
    {
      sub_24E643A9C(v23, v67);
      sub_24E643A9C(v67, v66);
      sub_24F928378();
      v27 = v63;
      (*v57)(v62, v26, v63);
      sub_24F9285A8();
      sub_24E9E822C();
      v28 = v3;
      v29 = v58;
      v30 = v28;
      v31 = v60;
      sub_24F929548();
      (*v24)(v26, v27);
      __swift_destroy_boxed_opaque_existential_1(v67);
      if ((*v25)(v29, 1, v31) == 1)
      {
        sub_24E601704(v29, &qword_27F2249C0);
        v3 = v30;
      }

      else
      {
        sub_24E9E82E8(v29, v59);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v32 = v64;
        }

        else
        {
          v32 = sub_24E6181F0(0, v64[2] + 1, 1, v64);
        }

        v34 = v32[2];
        v33 = v32[3];
        if (v34 >= v33 >> 1)
        {
          v32 = sub_24E6181F0(v33 > 1, v34 + 1, 1, v32);
        }

        v32[2] = v34 + 1;
        v35 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v64 = v32;
        sub_24E9E82E8(v59, v32 + v35 + *(v56 + 72) * v34);
        v3 = v55;
      }

      v23 += 32;
      --v22;
    }

    while (v22);

    v36 = v64;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v37 = v36[2];
  v39 = v53;
  v38 = v54;
  if (v37)
  {
    v66[0] = MEMORY[0x277D84FA0];
    v40 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v41 = *(v56 + 72);
    v64 = v36;
    v42 = v36 + v40;
    v38 = MEMORY[0x277D84F90];
    do
    {
      sub_24E9E8284(v42, v15);
      v43 = v66[0];
      v44 = *v15;
      v45 = v15[1];

      LOBYTE(v44) = sub_24F4D3A40(v44, v45, v43);

      if (v44)
      {
        sub_24E9E834C(v15);
      }

      else
      {
        v46 = *v15;
        v47 = v15[1];
        sub_24E8E2880(*v15, v47);
        sub_24ED7E57C(v67, v46, v47);
        sub_24E8E29C4(v67[0], v67[1]);
        sub_24E9E82E8(v15, v39);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F458454(0, *(v38 + 16) + 1, 1);
          v38 = v65;
        }

        v50 = *(v38 + 16);
        v49 = *(v38 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_24F458454(v49 > 1, v50 + 1, 1);
          v38 = v65;
        }

        *(v38 + 16) = v50 + 1;
        sub_24E9E82E8(v39, v38 + v40 + v50 * v41);
      }

      v42 += v41;
      --v37;
    }

    while (v37);
  }

  else
  {
  }

  return v38;
}

uint64_t ASKBagContract.metricsConfiguration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - v2;
  if (qword_27F2108A0 != -1)
  {
    swift_once();
  }

  sub_24F92A358();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  return v5[1];
}

double ASKBagContract.sessionDurationPageRender.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2108B0 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C38], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

double ASKBagContract.impressionableThreshold.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2108F0 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C38], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

double sub_24E9E4050(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A438();
  sub_24F92A408();
  (*(v3 + 8))(v5, v2);
  return *&v7[1];
}

double ASKBagContract.fastImpressionsTimeout.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210900 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C38], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

unint64_t ASKBagContract.onboardingCardsMap.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  if (qword_27F210938 != -1)
  {
    swift_once();
  }

  sub_24F92A358();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  if (!v7)
  {
    return 0;
  }

  v4 = sub_24E9E19FC(v7);

  return v4;
}

double ASKBagContract.onboardingCardExpirationThreshold.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210940 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C38], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t ASKBagContract.arcadeProductFamilyId.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  if (qword_27F2109B8 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  v4 = *(v1 + 8);
  v4(v3, v0);
  if (v6[1])
  {
    return v6[0];
  }

  if (qword_27F2109D8 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  v4(v3, v0);
  return v6[0];
}

uint64_t ASKBagContract.arcadeProductId.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  if (qword_27F2109C0 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  v4 = *(v1 + 8);
  v4(v3, v0);
  if (v6[1])
  {
    return v6[0];
  }

  if (qword_27F2109E0 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  v4(v3, v0);
  return v6[0];
}

uint64_t sub_24E9E4F48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  result = (*(v5 + 8))(v7, v4);
  v9 = v12;
  if (v12)
  {
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
  a2[1] = v9;
  return result;
}

double ASKBagContract.arcadeSubscribePageDismissDelay.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2109E8 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C40], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

unint64_t ASKBagContract.challengeAttemptOptions.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  if (qword_27F210A28 != -1)
  {
    swift_once();
  }

  sub_24F92A358();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  if (!v7 || (v4 = sub_24E9E1FB8(v7), , !v4))
  {
    v4 = sub_24E60C660(&unk_2861C0368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221078);
    swift_arrayDestroy();
  }

  return v4;
}

double ASKBagContract.playTogetherPlayersGroupTimeThreshold.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210A40 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C40], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

void *ASKBagContract.resilientDeepLinkPatterns.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  if (qword_27F210A88 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v4 = sub_24E9E2340(v7);

    if (v4)
    {
      return v4;
    }
  }

  return &unk_2861C03B8;
}

uint64_t sub_24E9E5BA0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A3A8();
  sub_24F92A3F8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ASKBagContract.installAttributionTimerDelaySeconds.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  if (qword_27F210AB8 != -1)
  {
    swift_once();
  }

  sub_24F92A438();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_24E9E5F20(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  (*(v3 + 8))(v5, v2);
  return v7[1];
}

void *ASKBagContract.personalizedAdsScrollRequiredDisabledRegionCodes.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  if (qword_27F210AF8 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v4 = sub_24E9E2340(v7);

    if (v4)
    {
      return v4;
    }
  }

  return &unk_2861C03E8;
}

double ASKBagContract.productPageDownloadingOrderingTimeout.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210B20 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C40], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

GameStoreKit::ASKBagContract::AdPlacementBagValue_optional __swiftcall ASKBagContract.AdPlacementBagValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ASKBagContract.AdPlacementBagValue.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C2D686372616573;
  v3 = 0x7961646F74;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000021;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x722D686372616573;
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

uint64_t sub_24E9E6684()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E9E6780()
{
  sub_24F92B218();
}

uint64_t sub_24E9E6868()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E9E696C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00676E69646E61;
  v4 = 0x6C2D686372616573;
  v5 = 0xE500000000000000;
  v6 = 0x7961646F74;
  v7 = 0xD000000000000011;
  v8 = 0x800000024FA40510;
  if (v2 != 3)
  {
    v7 = 0xD000000000000021;
    v8 = 0x800000024FA40530;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x722D686372616573;
    v3 = 0xEE0073746C757365;
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

char *ASKBagContract.enabledAdPlacements.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  if (qword_27F210B28 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    sub_24F92A428();
    sub_24F92A3F8();
    v4 = *(v1 + 8);
    v1 += 8;
    v4(v3, v0);
    if (!v14)
    {
      return MEMORY[0x277D84F90];
    }

    v0 = sub_24E9E2340(v14);

    if (!v0)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = 0;
    v6 = *(v0 + 16);
    v7 = MEMORY[0x277D84F90];
    v3 = &unk_2861C0448;
LABEL_5:
    v8 = v0 + 40 + 16 * v5;
    while (1)
    {
      if (v6 == v5)
      {

        return v7;
      }

      if (v5 >= *(v0 + 16))
      {
        break;
      }

      ++v5;
      v9 = v8 + 16;

      v1 = sub_24F92CB88();

      v8 = v9;
      if (v1 < 5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_24E618240(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_24E618240((v10 > 1), v11 + 1, 1, v7);
        }

        *(v7 + 2) = v11 + 1;
        v7[v11 + 32] = v1;
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }
}

uint64_t ASKBagContract.downloadProgressDisplayRemainingTime.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  if (qword_27F210B40 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  (*(v5 + 8))(v7, v4);
  v8 = v18;
  if (qword_27F2100E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27F2253B8);
  (*(v1 + 16))(v3, v9, v0);
  v10 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F9479A0;
  *(v11 + 32) = @"debug";
  *(v11 + 40) = @"convergence";
  *(v11 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v12 = @"debug";
  v13 = @"convergence";
  v14 = @"internal";
  v15 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v10, v15);

  if (IsAnyOf)
  {
    sub_24F929388();
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    sub_24F928868();

    (*(v1 + 8))(v3, v0);
    if (v19 != 1)
    {
      return v18;
    }
  }

  else
  {
    (*(v1 + 8))(v3, v0);
  }

  return v8;
}

uint64_t ASKBagContract.downloadProgressDisplayWaitTime.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  if (qword_27F210B48 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  (*(v5 + 8))(v7, v4);
  v8 = v18;
  if (qword_27F2100E0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27F2253A0);
  (*(v1 + 16))(v3, v9, v0);
  v10 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F9479A0;
  *(v11 + 32) = @"debug";
  *(v11 + 40) = @"convergence";
  *(v11 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v12 = @"debug";
  v13 = @"convergence";
  v14 = @"internal";
  v15 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v10, v15);

  if (IsAnyOf)
  {
    sub_24F929388();
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    sub_24F928868();

    (*(v1 + 8))(v3, v0);
    if (v19 != 1)
    {
      return v18;
    }
  }

  else
  {
    (*(v1 + 8))(v3, v0);
  }

  return v8;
}

double ASKBagContract.arcadeDownloadPacksGetAllCTADismissDelay.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210B60 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C38], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t sub_24E9E77F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  (*(v3 + 8))(v5, v2);
  return v7;
}

void *ASKBagContract.productPageParameterAllowList.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  if (qword_27F210BA8 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v4 = sub_24E9E2340(v7);

    if (v4)
    {
      return v4;
    }
  }

  return &unk_2861C04E0;
}

uint64_t sub_24E9E7BB8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_24E9E7E68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-v4];
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v3 + 8))(v5, v2);
  return v7[15];
}

uint64_t sub_24E9E7FC8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  (*(v3 + 8))(v5, v2);
  if (v9)
  {
    v6 = sub_24E9E2340(v9);

    if (v6)
    {
      return v6;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t ASKBagContract.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v2 = sub_24F92A498();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ASKBagContract.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v2 = sub_24F92A498();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24E9E8220@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

unint64_t sub_24E9E822C()
{
  result = qword_27F2249C8;
  if (!qword_27F2249C8)
  {
    type metadata accessor for StoreTab();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2249C8);
  }

  return result;
}

uint64_t sub_24E9E8284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreTab();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9E82E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreTab();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9E834C(uint64_t a1)
{
  v2 = type metadata accessor for StoreTab();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E9E83AC()
{
  result = qword_27F2249E8;
  if (!qword_27F2249E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2249E8);
  }

  return result;
}

uint64_t type metadata accessor for ASKBagContract()
{
  result = qword_27F2249F0;
  if (!qword_27F2249F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9E8454()
{
  result = sub_24F92A498();
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

uint64_t FlowPreviewAction.__allocating_init(previewViewController:presentationContext:requiresNavigationController:actionMetrics:)(uint64_t a1, char *a2, char a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a2;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit17FlowPreviewAction_previewViewController) = a1;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit17FlowPreviewAction_presentationContext) = v13;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit17FlowPreviewAction_requiresNavigationController) = a3;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12 + v14, a4, v15);
  v17 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v18 = sub_24F929608();
  (*(*(v18 - 8) + 56))(v12 + v17, 1, 1, v18);
  v19 = (v12 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  v20 = v12 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v30, &v27);
  if (*(&v28 + 1))
  {
    v21 = v28;
    *v20 = v27;
    *(v20 + 16) = v21;
    *(v20 + 32) = v29;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v24 = v23;
    (*(v9 + 8))(v11, v8);
    v26[1] = v22;
    v26[2] = v24;
    sub_24F92C7F8();
    sub_24E601704(&v27, &qword_27F235830);
  }

  (*(v16 + 8))(a4, v15);
  sub_24E601704(v30, &qword_27F235830);
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  return v12;
}

uint64_t FlowPreviewAction.init(previewViewController:presentationContext:requiresNavigationController:actionMetrics:)(uint64_t a1, _BYTE *a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v18) = *a2;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit17FlowPreviewAction_previewViewController) = a1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit17FlowPreviewAction_presentationContext) = v18;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit17FlowPreviewAction_requiresNavigationController) = a3;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  (*(v17 + 16))(v19, a4, v16);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v5 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_24E65E064(v39, &v33);
  if (*(&v34 + 1))
  {
    v36 = v33;
    v37 = v34;
    v38 = v35;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v24 = v23;
    (*(v29 + 8))(v12, v30);
    v31 = v22;
    v32 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v33, &qword_27F235830);
  }

  (*(v17 + 8))(a4, v16);
  sub_24E601704(v39, &qword_27F235830);
  v25 = v5 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v25 + 32) = v38;
  v26 = v37;
  *v25 = v36;
  *(v25 + 16) = v26;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

uint64_t FlowPreviewAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t FlowPreviewAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FlowPreviewAction()
{
  result = qword_27F224A08;
  if (!qword_27F224A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9E8F3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280C0);
  result = swift_allocObject();
  *(result + 16) = sub_24E9E8F8C;
  *(result + 24) = 0;
  qword_27F224A20 = result;
  return result;
}

void sub_24E9E8F8C(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (sub_24F92C138())
  {

    v5 = 4.0;
    goto LABEL_12;
  }

  v6 = sub_24F92B0D8();
  v8 = v7;
  if (v6 != sub_24F92B0D8() || v8 != v9)
  {
    v11 = sub_24F92CE08();

    if (v11)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_10:
  v12 = sub_24F92C178();

  v5 = 0.0;
  if (v12)
  {
    v5 = 1.0;
  }

LABEL_12:
  *a2 = v5;
}

uint64_t static MetadataRibbonEditorsChoiceViewLayout.Metrics.standard.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F210090 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F224A20;
}

uint64_t MetadataRibbonEditorsChoiceViewLayout.init(leadingLaurelView:trailingLaurelView:textLabel:metrics:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  sub_24E612C80(a1, a5);
  sub_24E612C80(a2, a5 + 40);
  result = sub_24E612C80(a3, a5 + 80);
  *(a5 + 120) = v8;
  return result;
}

uint64_t MetadataRibbonEditorsChoiceViewLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v30 = a2;
  v27 = sub_24F92CDB8();
  v13 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
  sub_24F922288();
  v28 = v17;
  v29 = v16;
  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  v25[3] = a1;
  sub_24F922288();
  v26 = v18;
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  CGRectGetMinX(v32);
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  CGRectGetMidY(v33);
  sub_24F922228();
  v19 = v6[13];
  v25[2] = v6[14];
  __swift_project_boxed_opaque_existential_1(v6 + 10, v19);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_24F922218();
  CGRectGetMaxX(v34);
  v31 = v6[15];

  sub_24F9220E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234670);
  sub_24E9E955C();
  sub_24F9223A8();
  v20 = v13 + 8;
  v21 = *(v13 + 8);
  v25[1] = v20;
  v22 = v27;
  v21(v15, v27);

  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  CGRectGetMidY(v35);
  sub_24F922228();
  v23 = v6[8];
  v26 = v6[9];
  __swift_project_boxed_opaque_existential_1(v6 + 5, v23);
  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  sub_24F922218();
  CGRectGetMaxX(v36);
  v31 = v6[15];

  sub_24F9220E8();
  sub_24F9223A8();
  v21(v15, v22);

  v37.origin.x = a3;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  CGRectGetMidY(v37);
  sub_24F922228();
  return sub_24F922128();
}

unint64_t sub_24E9E955C()
{
  result = qword_27F224A30;
  if (!qword_27F224A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224A30);
  }

  return result;
}

uint64_t MetadataRibbonEditorsChoiceViewLayout.measurements(fitting:in:)()
{
  v1 = v0;
  v2 = sub_24F92CDB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  sub_24F922288();
  v9 = v6;
  __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
  sub_24F922288();
  v10 = v0[15];

  sub_24F9220E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234670);
  sub_24E9E955C();
  sub_24F9223A8();
  v7 = *(v3 + 8);
  v7(v5, v2);

  v10 = v0[15];

  sub_24F9220E8();
  sub_24F9223A8();
  v7(v5, v2);
}

uint64_t sub_24E9E984C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_24E9E9894(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E9E9928(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E9E99F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E9E9AC8()
{
  sub_24E6C5550();
  if (v0 <= 0x3F)
  {
    sub_24E9E9C64(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24E9E9C64(319, &qword_27F224A48, type metadata accessor for TruncationState, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24E654514();
        if (v3 <= 0x3F)
        {
          sub_24E9E9C64(319, &qword_27F224A50, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E9E9C64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24E9E9CE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TextWithAffordance(0);
  sub_24E60169C(v1 + *(v10 + 24), v9, &qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24E9E9EEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v3 = type metadata accessor for TextWithAffordance(0);
  v71 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v78 = v4;
  v79 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A58);
  MEMORY[0x28223BE20](v66);
  v6 = &v57 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A60);
  MEMORY[0x28223BE20](v65);
  v69 = &v57 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A68);
  MEMORY[0x28223BE20](v70);
  v73 = &v57 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A70);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v57 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A78);
  v10 = MEMORY[0x28223BE20](v72);
  v75 = &v57 - v11;
  v61 = (*(v1 + 8))(v10);
  v60 = v12;
  v14 = v13;
  v59 = v15;
  sub_24F927628();
  sub_24F9242E8();
  v16 = v14 & 1;
  v92 = v14 & 1;
  v17 = (v2 + *(v3 + 28));
  v19 = *v17;
  v18 = v17[1];
  v64 = v19;
  v83 = v19;
  v84 = v18;
  v63 = v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A80);
  sub_24F926F38();
  v58 = v82;
  v80 = v3;
  v20 = v2 + *(v3 + 32);
  v21 = *(v20 + 1);
  v22 = *v20;
  LOBYTE(v83) = *v20;
  v84 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  if (v82)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v24 = *v2;
  }

  v68 = v22;
  LOBYTE(v83) = v22;
  v84 = v21;
  v67 = v23;
  sub_24F926F38();
  v25 = (v82 & 1) == 0;
  v26 = sub_24F927618();
  v28 = v27;
  v29 = *(v66 + 36);
  v66 = v21;
  v30 = &v6[v29];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A88);
  sub_24E9EA720(v2, v30 + *(v31 + 36));
  *v30 = v26;
  v30[1] = v28;
  v32 = v60;
  *v6 = v61;
  *(v6 + 1) = v32;
  v6[16] = v16;
  *(v6 + 3) = v59;
  v33 = v90;
  *(v6 + 6) = v89;
  *(v6 + 7) = v33;
  *(v6 + 8) = v91;
  v34 = v86;
  *(v6 + 2) = v85;
  *(v6 + 3) = v34;
  v35 = v88;
  *(v6 + 4) = v87;
  *(v6 + 5) = v35;
  *(v6 + 18) = v58;
  *(v6 + 19) = v24;
  v6[160] = v25;
  v36 = sub_24F924CA8();
  v37 = sub_24F924968();
  v38 = v69;
  v39 = &v69[*(v65 + 9)];
  sub_24E9EAE3C(v2, v39);
  v40 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A90) + 36));
  *v40 = v36;
  v40[1] = v37;
  sub_24E9EBCDC(v6, v38);
  v65 = type metadata accessor for TextWithAffordance;
  v41 = v79;
  sub_24E9ED9A0(v2, v79, type metadata accessor for TextWithAffordance);
  v42 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v43 = swift_allocObject();
  sub_24E9EBD50(v41, v43 + v42);
  v44 = v73;
  sub_24E6009C8(v38, v73, &qword_27F224A60);
  v45 = (v44 + *(v70 + 36));
  *v45 = sub_24E9EBDB4;
  v45[1] = v43;
  v45[2] = 0;
  v45[3] = 0;
  v83 = v64;
  v84 = v63;
  sub_24F926F38();
  v46 = v82;
  swift_getKeyPath();
  v83 = v46;
  sub_24E9ED864(&qword_27F224A98, type metadata accessor for TruncationState);
  sub_24F91FD88();

  LOBYTE(v43) = *(v46 + 16);

  LOBYTE(v83) = v43;
  sub_24E9ED9A0(v2, v41, v65);
  v47 = swift_allocObject();
  sub_24E9EBD50(v41, v47 + v42);
  sub_24E9EC9D8();
  v48 = v74;
  sub_24F926AB8();

  sub_24E601704(v44, &qword_27F224A68);
  KeyPath = swift_getKeyPath();
  v50 = v75;
  v51 = &v75[*(v72 + 36)];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AE0);
  sub_24E9E9CE4(v51 + *(v52 + 28));
  *v51 = KeyPath;
  (*(v76 + 32))(v50, v48, v77);
  v53 = sub_24F927718();
  LOBYTE(v83) = v68;
  v84 = v66;
  sub_24F926F38();
  LOBYTE(v43) = v82;
  v54 = v81;
  sub_24E6009C8(v50, v81, &qword_27F224A78);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AE8);
  v56 = v54 + *(result + 36);
  *v56 = v53;
  *(v56 + 8) = v43;
  return result;
}

uint64_t sub_24E9EA720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B98);
  MEMORY[0x28223BE20](v3);
  v5 = (&v48 - v4);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224BA0);
  MEMORY[0x28223BE20](v51);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224BA8);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for TextFadeOutMask(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_24E9EACF8();
  v15 = type metadata accessor for TextWithAffordance(0);
  v16 = v15;
  v53 = v8;
  if (v14)
  {
    v17 = v15[10];
    v18 = *(a1 + v15[11]);
    v19 = v15[13];
    v20 = v15[14];
    v50 = v3;
    v21 = *(a1 + v19);
    v22 = *(a1 + v20 + 8);
    v49 = *(a1 + v20);
    v23 = (a1 + v17);
    v24 = *(a1 + v17 + 16);
    v56 = *v23;
    v57 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C60);
    sub_24F926F38();
    v25 = v54;
    v26 = v55;
    *v13 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
    swift_storeEnumTagMultiPayload();
    *(v13 + v11[5]) = v18;
    *(v13 + v11[6]) = v21;
    v27 = (v13 + v11[7]);
    *v27 = v49;
    v27[1] = v22;
    v28 = (v13 + v11[8]);
    *v28 = v25;
    v28[1] = v26;
    *(v13 + v11[9]) = 0x403E000000000000;
    sub_24E9ED9A0(v13, v7, type metadata accessor for TextFadeOutMask);
    swift_storeEnumTagMultiPayload();
    sub_24E9ED864(&qword_27F224BB8, type metadata accessor for TextFadeOutMask);
    sub_24F924E28();
    sub_24E60169C(v10, v5, &qword_27F224BA8);
LABEL_3:
    swift_storeEnumTagMultiPayload();
    sub_24E9ED8EC();
    sub_24F924E28();
    sub_24E601704(v10, &qword_27F224BA8);
    return sub_24E9EDA08(v13);
  }

  v30 = (a1 + v15[8]);
  v31 = *v30;
  v32 = *(v30 + 1);
  LOBYTE(v56) = v31;
  *(&v56 + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  if (v54 == 1)
  {
    v33 = (a1 + v16[9]);
    v34 = *v33;
    v35 = *(v33 + 1);
    LOBYTE(v56) = v34;
    *(&v56 + 1) = v35;
    sub_24F926F38();
    if (v54 == 1)
    {
      v36 = v16[10];
      v37 = *(a1 + v16[11]);
      v38 = *(a1 + v16[13]);
      v39 = (a1 + v16[15]);
      v40 = v39[1];
      v50 = *v39;
      v41 = (a1 + v36);
      v42 = *(a1 + v36 + 16);
      v56 = *v41;
      v57 = v42;
      v43 = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C60);
      sub_24F926F38();
      v44 = v54;
      v45 = v55;
      *v13 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
      swift_storeEnumTagMultiPayload();
      *(v13 + v11[5]) = v43;
      *(v13 + v11[6]) = v38;
      v46 = (v13 + v11[7]);
      *v46 = v50;
      v46[1] = v40;
      v47 = (v13 + v11[8]);
      *v47 = v44;
      v47[1] = v45;
      *(v13 + v11[9]) = 0x403E000000000000;
      sub_24E9ED9A0(v13, v7, type metadata accessor for TextFadeOutMask);
      swift_storeEnumTagMultiPayload();
      sub_24E9ED864(&qword_27F224BB8, type metadata accessor for TextFadeOutMask);
      sub_24F924E28();
      sub_24E60169C(v10, v5, &qword_27F224BA8);
      goto LABEL_3;
    }
  }

  *v5 = *(a1 + v16[11]);
  swift_storeEnumTagMultiPayload();
  sub_24E9ED8EC();

  return sub_24F924E28();
}

uint64_t sub_24E9EACF8()
{
  type metadata accessor for TextWithAffordance(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A80);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24E9ED864(&qword_27F224A98, type metadata accessor for TruncationState);
  sub_24F91FD88();

  v0 = *(v3 + 16);

  if (v0 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    sub_24F926F38();
    v1 = v3 ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_24E9EAE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AF8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22[-v8];
  v10 = sub_24E9EACF8();
  v11 = type metadata accessor for TextWithAffordance(0);
  v12 = v11;
  if (v10)
  {
    sub_24E9EB0B4(*(a1 + *(v11 + 56)), *(a1 + *(v11 + 56) + 8), 1, v9);
  }

  else
  {
    v14 = (a1 + *(v11 + 32));
    v15 = *v14;
    v16 = *(v14 + 1);
    v24 = v15;
    v25 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    sub_24F926F38();
    if (v23 != 1 || (v17 = (a1 + *(v12 + 36)), v18 = *v17, v19 = *(v17 + 1), v24 = v18, v25 = v19, sub_24F926F38(), v23 != 1))
    {
      v13 = 1;
      goto LABEL_8;
    }

    sub_24E9EB0B4(*(a1 + *(v12 + 60)), *(a1 + *(v12 + 60) + 8), 0, v9);
  }

  sub_24E9ECCBC(v9, v6);
  swift_storeEnumTagMultiPayload();
  sub_24E9ECD2C();
  sub_24F924E28();
  sub_24E601704(v9, &qword_27F224AF8);
  v13 = 0;
LABEL_8:
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B00);
  return (*(*(v20 - 8) + 56))(a2, v13, 1, v20);
}

uint64_t sub_24E9EB0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for TextWithAffordance(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  v44 = a2;
  v42 = type metadata accessor for TextWithAffordance;
  sub_24E9ED9A0(v4, v13, type metadata accessor for TextWithAffordance);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = v14 + v12;
  v16 = swift_allocObject();
  sub_24E9EBD50(v13, v16 + v14);
  *(v16 + v15) = a3;
  sub_24E600AEC();

  sub_24F926FB8();
  v17 = *(v4 + *(v10 + 56));
  KeyPath = swift_getKeyPath();
  v19 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B58) + 36));
  *v19 = KeyPath;
  v19[1] = v17;
  v20 = swift_getKeyPath();
  v21 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B48) + 36);
  *v21 = v20;
  *(v21 + 8) = 1;
  *(v21 + 16) = 0;
  v22 = *(v4 + *(v10 + 60));
  v23 = swift_getKeyPath();
  v24 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B38) + 36));
  *v24 = v23;
  v24[1] = v22;

  LOBYTE(v17) = sub_24F925858();
  sub_24F923318();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B28) + 36);
  *v33 = v17;
  *(v33 + 8) = v26;
  *(v33 + 16) = v28;
  *(v33 + 24) = v30;
  *(v33 + 32) = v32;
  *(v33 + 40) = 0;
  sub_24F923918();
  sub_24F9278A8();
  sub_24F923908();
  v34 = sub_24F923928();

  *(a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B18) + 36)) = v34;
  sub_24E9ED9A0(v4, v13, v42);
  v35 = swift_allocObject();
  sub_24E9EBD50(v13, v35 + v14);
  v36 = sub_24F927618();
  v38 = v37;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AF8);
  v40 = (a4 + *(result + 36));
  *v40 = sub_24E9ED3CC;
  v40[1] = v35;
  v40[2] = v36;
  v40[3] = v38;
  return result;
}

uint64_t sub_24E9EB410()
{
  type metadata accessor for TextWithAffordance(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A80);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24E9ED864(&qword_27F224A98, type metadata accessor for TruncationState);
  sub_24F91FD88();

  v0 = *(v2 + 16);

  if (v0 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    return sub_24F926F48();
  }

  return result;
}

void sub_24E9EB54C(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    type metadata accessor for TextWithAffordance(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    sub_24F926F48();
  }
}

uint64_t sub_24E9EB5D0()
{
  type metadata accessor for TextWithAffordance(0);
  sub_24F927718();
  sub_24F923B18();
}

uint64_t sub_24E9EB658()
{
  type metadata accessor for TextWithAffordance(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

uint64_t sub_24E9EB6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v20[1] = a1;
  v5 = sub_24F9239C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TextWithAffordance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24F926C98();
  sub_24E9ED9A0(a2, v12, type metadata accessor for TextWithAffordance);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v13 + v11 + *(v6 + 80)) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_24E9EBD50(v12, v15 + v13);
  (*(v6 + 32))(v15 + v14, v8, v5);
  v26 = v21;
  v27 = sub_24E9ED694;
  v28 = v15;
  v29 = 0;
  v30 = 0;
  sub_24F923998();
  v24 = v16;
  v25 = v17;
  sub_24E9ED9A0(v22, v12, type metadata accessor for TextWithAffordance);
  v18 = swift_allocObject();
  sub_24E9EBD50(v12, v18 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B80);
  type metadata accessor for CGSize(0);
  sub_24E9ED7E0();
  sub_24E9ED864(&qword_27F224B90, type metadata accessor for CGSize);
  sub_24F926AB8();
}

uint64_t sub_24E9EB9D4()
{
  sub_24F923998();
  type metadata accessor for TextWithAffordance(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C60);
  return sub_24F926F48();
}

uint64_t sub_24E9EBA5C()
{
  type metadata accessor for TextWithAffordance(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C60);
  return sub_24F926F48();
}

uint64_t sub_24E9EBAD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24E60169C(v2, &v14 - v9, &qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24E9EBCDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9EBD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextWithAffordance(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9EBDB4()
{
  type metadata accessor for TextWithAffordance(0);

  return sub_24E9EB410();
}

uint64_t sub_24E9EBE14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for TextFadeOutMask(0) + 20));
  v5 = sub_24F9249A8();
  v7[0] = 0;
  sub_24E9EC1D4(a1, &v28);
  v21 = *&v29[176];
  v22 = *&v29[192];
  v23 = *&v29[208];
  v17 = *&v29[112];
  v18 = *&v29[128];
  v19 = *&v29[144];
  v20 = *&v29[160];
  v13 = *&v29[48];
  v14 = *&v29[64];
  v15 = *&v29[80];
  v16 = *&v29[96];
  v9 = v28;
  v10 = *v29;
  v11 = *&v29[16];
  v12 = *&v29[32];
  v25[12] = *&v29[176];
  v25[13] = *&v29[192];
  v25[14] = *&v29[208];
  v25[8] = *&v29[112];
  v25[9] = *&v29[128];
  v25[10] = *&v29[144];
  v25[11] = *&v29[160];
  v25[4] = *&v29[48];
  v25[5] = *&v29[64];
  v25[6] = *&v29[80];
  v25[7] = *&v29[96];
  v25[0] = v28;
  v25[1] = *v29;
  v24 = v29[224];
  v26 = v29[224];
  v25[2] = *&v29[16];
  v25[3] = *&v29[32];
  sub_24E60169C(&v9, __src, &qword_27F224BF0);
  sub_24E601704(v25, &qword_27F224BF0);
  *&v8[199] = v21;
  *&v8[215] = v22;
  *&v8[231] = v23;
  *&v8[135] = v17;
  *&v8[151] = v18;
  *&v8[167] = v19;
  *&v8[183] = v20;
  *&v8[71] = v13;
  *&v8[87] = v14;
  *&v8[103] = v15;
  *&v8[119] = v16;
  *&v8[7] = v9;
  *&v8[23] = v10;
  *&v8[39] = v11;
  *&v8[55] = v12;
  *(&__src[26] + 1) = *&v8[192];
  *(&__src[28] + 1) = *&v8[208];
  *(&__src[30] + 1) = *&v8[224];
  *(&__src[18] + 1) = *&v8[128];
  *(&__src[20] + 1) = *&v8[144];
  *(&__src[22] + 1) = *&v8[160];
  *(&__src[24] + 1) = *&v8[176];
  *(&__src[10] + 1) = *&v8[64];
  *(&__src[12] + 1) = *&v8[80];
  *(&__src[14] + 1) = *&v8[96];
  *(&__src[16] + 1) = *&v8[112];
  *(&__src[2] + 1) = *v8;
  *(&__src[4] + 1) = *&v8[16];
  *(&__src[6] + 1) = *&v8[32];
  v8[247] = v24;
  __src[0] = v5;
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  *(&__src[32] + 1) = *&v8[240];
  *(&__src[8] + 1) = *&v8[48];
  *(&__src[33] + 1) = 256;
  *a2 = v4;
  memcpy(a2 + 1, __src, 0x10BuLL);
  *&v29[193] = *&v8[192];
  *&v29[209] = *&v8[208];
  v30 = *&v8[224];
  *&v29[129] = *&v8[128];
  *&v29[145] = *&v8[144];
  *&v29[161] = *&v8[160];
  *&v29[177] = *&v8[176];
  *&v29[65] = *&v8[64];
  *&v29[81] = *&v8[80];
  *&v29[97] = *&v8[96];
  *&v29[113] = *&v8[112];
  *&v29[1] = *v8;
  *&v29[17] = *&v8[16];
  *&v29[33] = *&v8[32];
  v28 = v5;
  v29[0] = 0;
  v31 = *&v8[240];
  *&v29[49] = *&v8[48];
  v32 = 256;
  swift_retain_n();
  sub_24E60169C(__src, v7, &qword_27F224BF8);
  sub_24E601704(&v28, &qword_27F224BF8);
}

uint64_t sub_24E9EC1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F923F78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v50 = type metadata accessor for TextFadeOutMask(0);
  v11 = *(a1 + *(v50 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93A400;
  *(v12 + 32) = v11;
  v51 = v11;
  swift_retain_n();
  *(v12 + 40) = sub_24F926C98();
  v49 = MEMORY[0x25304CD70](v12);
  sub_24E9EBAD8(v10);
  v13 = *(v5 + 104);
  v48 = *MEMORY[0x277CDFA90];
  v47 = v13;
  v13(v7);
  LOBYTE(v11) = sub_24F923F68();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  if (v11)
  {
    sub_24F9278C8();
  }

  else
  {
    sub_24F9278B8();
  }

  sub_24E9EBAD8(v10);
  v47(v7, v48, v4);
  v15 = sub_24F923F68();
  v14(v7, v4);
  v14(v10, v4);
  if (v15)
  {
    sub_24F9278B8();
  }

  else
  {
    sub_24F9278C8();
  }

  sub_24F923BD8();
  v16 = v50;
  sub_24F927618();
  sub_24F9238C8();
  v85 = v91;
  v86 = v92;
  *&v87 = v93;
  v17 = (a1 + *(v16 + 28));
  v18 = v17[1];
  v69 = *v17;
  v70 = v18;
  sub_24E600AEC();

  v19 = sub_24F925E18();
  v21 = v20;
  LOBYTE(v18) = v22;
  v49 = v23;
  sub_24F927618();
  sub_24F9238C8();
  LOBYTE(v18) = v18 & 1;
  v24 = *(a1 + *(v16 + 24));
  KeyPath = swift_getKeyPath();

  v26 = sub_24F925838();
  sub_24F923318();
  v27 = v87;
  v28 = v88;
  v57[2] = v87;
  v57[3] = v88;
  v29 = v89;
  v57[4] = v89;
  v30 = v85;
  v57[0] = v85;
  v57[1] = v86;
  v32 = v55;
  v31 = v56;
  v62 = v55;
  v63 = v56;
  v33 = v54;
  v61 = v54;
  *(a2 + 24) = v86;
  *(a2 + 8) = v30;
  *(a2 + 72) = v29;
  v34 = v90;
  v58 = v90;
  *&v59 = v19;
  *(&v59 + 1) = v21;
  LOBYTE(v60) = v18;
  v35 = v49;
  *(&v60 + 1) = v49;
  *&v64 = 0;
  *(&v64 + 1) = KeyPath;
  *&v65 = v24;
  BYTE8(v65) = v26;
  *&v66 = v36;
  *(&v66 + 1) = v37;
  *&v67 = v38;
  *(&v67 + 1) = v39;
  v68 = 0;
  *a2 = v51;
  *(a2 + 88) = v34;
  *(a2 + 56) = v28;
  *(a2 + 40) = v27;
  v40 = v60;
  *(a2 + 96) = v59;
  *(a2 + 112) = v40;
  v41 = v64;
  *(a2 + 160) = v63;
  *(a2 + 176) = v41;
  v42 = v62;
  *(a2 + 128) = v61;
  *(a2 + 144) = v42;
  v43 = v67;
  *(a2 + 208) = v66;
  *(a2 + 224) = v43;
  v44 = v65;
  *(a2 + 240) = 0;
  *(a2 + 192) = v44;
  v69 = v19;
  v70 = v21;
  v71 = v18;
  v73 = v33;
  v74 = v32;
  v75 = v31;
  v72 = v35;
  v76 = 0;
  v77 = KeyPath;
  v78 = v24;
  v79 = v26;
  v80 = v36;
  v81 = v37;
  v82 = v38;
  v83 = v39;
  v84 = 0;

  sub_24E60169C(v57, v52, &qword_27F2248A0);
  sub_24E60169C(&v59, v52, &qword_27F224C00);
  sub_24E601704(&v69, &qword_27F224C00);
  v52[2] = v87;
  v52[3] = v88;
  v52[4] = v89;
  v53 = v90;
  v52[0] = v85;
  v52[1] = v86;
  sub_24E601704(v52, &qword_27F2248A0);
}

void *sub_24E9EC6C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924C88();
  v9 = 0;
  sub_24E9EBE14(v1, __src);
  memcpy(__dst, __src, 0x113uLL);
  memcpy(v11, __src, 0x113uLL);
  sub_24E60169C(__dst, v6, &qword_27F224BE8);
  sub_24E601704(v11, &qword_27F224BE8);
  memcpy(&v8[7], __dst, 0x113uLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x11AuLL);
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for TextWithAffordance(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_24E9EC958(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for TextWithAffordance(0);

  sub_24E9EB54C(a1, a2);
}

unint64_t sub_24E9EC9D8()
{
  result = qword_27F224AA0;
  if (!qword_27F224AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224A68);
    sub_24E9ECA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224AA0);
  }

  return result;
}

unint64_t sub_24E9ECA64()
{
  result = qword_27F224AA8;
  if (!qword_27F224AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224A60);
    sub_24E9ECB1C();
    sub_24E602068(&qword_27F224AD8, &qword_27F224A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224AA8);
  }

  return result;
}

unint64_t sub_24E9ECB1C()
{
  result = qword_27F224AB0;
  if (!qword_27F224AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224A58);
    sub_24E9ECBD4();
    sub_24E602068(&qword_27F224AD0, &qword_27F224A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224AB0);
  }

  return result;
}

unint64_t sub_24E9ECBD4()
{
  result = qword_27F224AB8;
  if (!qword_27F224AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224AC0);
    sub_24E6312D8();
    sub_24E9ECC60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224AB8);
  }

  return result;
}

unint64_t sub_24E9ECC60()
{
  result = qword_27F224AC8;
  if (!qword_27F224AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224AC8);
  }

  return result;
}

uint64_t sub_24E9ECCBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E9ECD2C()
{
  result = qword_27F224B08;
  if (!qword_27F224B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224AF8);
    sub_24E9ECDE4();
    sub_24E602068(&qword_27F224B70, &qword_27F224B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224B08);
  }

  return result;
}

unint64_t sub_24E9ECDE4()
{
  result = qword_27F224B10;
  if (!qword_27F224B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224B18);
    sub_24E9ECE9C();
    sub_24E602068(&qword_27F224B60, &qword_27F224B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224B10);
  }

  return result;
}

unint64_t sub_24E9ECE9C()
{
  result = qword_27F224B20;
  if (!qword_27F224B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224B28);
    sub_24E9ECF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224B20);
  }

  return result;
}

unint64_t sub_24E9ECF28()
{
  result = qword_27F224B30;
  if (!qword_27F224B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224B38);
    sub_24E9ECFE0();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224B30);
  }

  return result;
}

unint64_t sub_24E9ECFE0()
{
  result = qword_27F224B40;
  if (!qword_27F224B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224B48);
    sub_24E9ED098();
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224B40);
  }

  return result;
}

unint64_t sub_24E9ED098()
{
  result = qword_27F224B50;
  if (!qword_27F224B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224B58);
    sub_24E602068(&qword_27F222D00, &qword_27F222D08);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224B50);
  }

  return result;
}

uint64_t sub_24E9ED17C()
{
  v1 = type metadata accessor for TextWithAffordance(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E9ED334()
{
  type metadata accessor for TextWithAffordance(0);

  return sub_24E9EB5D0();
}

uint64_t sub_24E9ED3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TextWithAffordance(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E9EB6DC(a1, v6, a2);
}

uint64_t sub_24E9ED44C()
{
  v1 = type metadata accessor for TextWithAffordance(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_24F9239C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  v7 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F923F78();
    (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_24E9ED694()
{
  type metadata accessor for TextWithAffordance(0);
  sub_24F9239C8();

  return sub_24E9EB9D4();
}

uint64_t sub_24E9ED760()
{
  type metadata accessor for TextWithAffordance(0);

  return sub_24E9EBA5C();
}

unint64_t sub_24E9ED7E0()
{
  result = qword_27F224B88;
  if (!qword_27F224B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224B88);
  }

  return result;
}

uint64_t sub_24E9ED864(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E9ED8EC()
{
  result = qword_27F224BB0;
  if (!qword_27F224BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224BA8);
    sub_24E9ED864(&qword_27F224BB8, type metadata accessor for TextFadeOutMask);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224BB0);
  }

  return result;
}

uint64_t sub_24E9ED9A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E9EDA08(uint64_t a1)
{
  v2 = type metadata accessor for TextFadeOutMask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E9EDA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
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

uint64_t sub_24E9EDB54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
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

void sub_24E9EDC18()
{
  sub_24E9E9C64(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24E9EDCF4()
{
  result = qword_27F224BD0;
  if (!qword_27F224BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224AE8);
    sub_24E9EDDAC();
    sub_24E602068(&qword_27F218870, &unk_27F2364C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224BD0);
  }

  return result;
}

unint64_t sub_24E9EDDAC()
{
  result = qword_27F224BD8;
  if (!qword_27F224BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224A78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224A68);
    sub_24E9EC9D8();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F224BE0, &qword_27F224AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224BD8);
  }

  return result;
}

uint64_t Promise.pipe(to:)()
{
  swift_retain_n();
  sub_24ED90514(v1);
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

GameStoreKit::PerformanceTestType_optional __swiftcall PerformanceTestType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PerformanceTestType.rawValue.getter()
{
  if (*v0)
  {
    return 0x657A69736572;
  }

  else
  {
    return 0x6C6C6F726373;
  }
}

uint64_t sub_24E9EE074(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x657A69736572;
  }

  else
  {
    v2 = 0x6C6C6F726373;
  }

  if (*a2)
  {
    v3 = 0x657A69736572;
  }

  else
  {
    v3 = 0x6C6C6F726373;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24E9EE0F4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E9EE164()
{
  sub_24F92B218();
}

uint64_t sub_24E9EE1B8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E9EE224@<X0>(char *a1@<X8>)
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

void sub_24E9EE284(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C6F726373;
  if (*v1)
  {
    v2 = 0x657A69736572;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

unsigned __int8 *PerformanceTestCase.init(name:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v111 = a3;
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v106 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v105 = &v102 - v11;
  MEMORY[0x28223BE20](v12);
  v107 = &v102 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v102 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v102 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v102 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v102 - v24;
  v108 = a4;
  v109 = a1;
  *a4 = a1;
  a4[1] = a2;

  v26 = v111;
  sub_24F928398();
  sub_24E9EF1BC();
  v27 = v110;
  sub_24F928218();
  v110 = v27;
  if (v27)
  {

    v28 = *(v8 + 8);
    v28(v26, v7);
    v28(v25, v7);
  }

  v102 = v19;
  v103 = v16;
  v31 = *(v8 + 8);
  v30 = (v8 + 8);
  v32 = v25;
  v33 = v7;
  v104 = v31;
  v31(v32, v7);
  v34 = v108;
  *(v108 + 17) = v112[0];
  v35 = sub_24F92B358();

  if (v35)
  {
    v36 = v30;
    *(v34 + 16) = 0;
    v37 = v7;
    v38 = v34;
    v39 = v102;
  }

  else
  {
    v40 = v111;
    sub_24F928398();
    sub_24E9EF210();
    v41 = v110;
    sub_24F928218();
    v39 = v102;
    if (v41)
    {
      v42 = v33;
      v43 = v33;
      v44 = v104;
      v104(v40, v43);
      v44(v22, v42);
    }

    v110 = 0;
    v37 = v33;
    v36 = v30;
    v104(v22, v33);
    v38 = v34;
    *(v34 + 16) = v112[0];
  }

  v45 = v111;
  sub_24F928398();
  v46 = sub_24F928348();
  v48 = v47;
  v49 = v39;
  v50 = v37;
  v51 = v104;
  v104(v49, v37);
  if (v48)
  {
    v52 = v103;
    if (v46 == 5457241 && v48 == 0xE300000000000000)
    {
      v53 = 1;
    }

    else
    {
      v53 = sub_24F92CE08();
    }

    v54 = v36;
  }

  else
  {
    v53 = 0;
    v52 = v103;
    v54 = v36;
  }

  *(v38 + 18) = v53 & 1;
  sub_24F928398();
  v55 = type metadata accessor for PerformanceTestCase();
  sub_24F928268();
  v51(v52, v50);
  v56 = v107;
  sub_24F928398();
  v57 = sub_24F928348();
  v59 = v58;
  result = (v51)(v56, v50);
  if (!v59)
  {
    goto LABEL_78;
  }

  v60 = HIBYTE(v59) & 0xF;
  v61 = v57 & 0xFFFFFFFFFFFFLL;
  if ((v59 & 0x2000000000000000) != 0)
  {
    v62 = HIBYTE(v59) & 0xF;
  }

  else
  {
    v62 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {

    goto LABEL_78;
  }

  if ((v59 & 0x1000000000000000) != 0)
  {
    v64 = sub_24F2DA4C8(v57, v59, 10);

    if ((v64 & 0x100000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if ((v59 & 0x2000000000000000) != 0)
  {
    v112[0] = v57;
    v112[1] = v59 & 0xFFFFFFFFFFFFFFLL;
    if (v57 == 43)
    {
      if (v60)
      {
        if (--v60)
        {
          LODWORD(v64) = 0;
          v74 = v112 + 1;
          while (1)
          {
            v75 = *v74 - 48;
            if (v75 > 9)
            {
              break;
            }

            v76 = 10 * v64;
            if (v76 != v76)
            {
              break;
            }

            LODWORD(v64) = v76 + v75;
            if (__OFADD__(v76, v75))
            {
              break;
            }

            ++v74;
            if (!--v60)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }

LABEL_99:
      __break(1u);
      return result;
    }

    if (v57 != 45)
    {
      if (v60)
      {
        LODWORD(v64) = 0;
        v79 = v112;
        while (1)
        {
          v80 = *v79 - 48;
          if (v80 > 9)
          {
            break;
          }

          v81 = 10 * v64;
          if (v81 != v81)
          {
            break;
          }

          LODWORD(v64) = v81 + v80;
          if (__OFADD__(v81, v80))
          {
            break;
          }

          ++v79;
          if (!--v60)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    if (v60)
    {
      if (--v60)
      {
        LODWORD(v64) = 0;
        v68 = v112 + 1;
        while (1)
        {
          v69 = *v68 - 48;
          if (v69 > 9)
          {
            break;
          }

          v70 = 10 * v64;
          if (v70 != v70)
          {
            break;
          }

          LODWORD(v64) = v70 - v69;
          if (__OFSUB__(v70, v69))
          {
            break;
          }

          ++v68;
          if (!--v60)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_97;
  }

  if ((v57 & 0x1000000000000000) != 0)
  {
    result = ((v59 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_24F92C928();
  }

  v63 = *result;
  if (v63 == 43)
  {
    if (v61 >= 1)
    {
      v60 = v61 - 1;
      if (v61 != 1)
      {
        LODWORD(v64) = 0;
        if (result)
        {
          v71 = result + 1;
          while (1)
          {
            v72 = *v71 - 48;
            if (v72 > 9)
            {
              goto LABEL_76;
            }

            v73 = 10 * v64;
            if (v73 != v73)
            {
              goto LABEL_76;
            }

            LODWORD(v64) = v73 + v72;
            if (__OFADD__(v73, v72))
            {
              goto LABEL_76;
            }

            ++v71;
            if (!--v60)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_68;
      }

      goto LABEL_76;
    }

    goto LABEL_98;
  }

  if (v63 == 45)
  {
    if (v61 >= 1)
    {
      v60 = v61 - 1;
      if (v61 != 1)
      {
        LODWORD(v64) = 0;
        if (result)
        {
          v65 = result + 1;
          while (1)
          {
            v66 = *v65 - 48;
            if (v66 > 9)
            {
              goto LABEL_76;
            }

            v67 = 10 * v64;
            if (v67 != v67)
            {
              goto LABEL_76;
            }

            LODWORD(v64) = v67 - v66;
            if (__OFSUB__(v67, v66))
            {
              goto LABEL_76;
            }

            ++v65;
            if (!--v60)
            {
              goto LABEL_77;
            }
          }
        }

LABEL_68:
        LOBYTE(v60) = 0;
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v61)
  {
    LODWORD(v64) = 0;
    if (result)
    {
      while (1)
      {
        v77 = *result - 48;
        if (v77 > 9)
        {
          goto LABEL_76;
        }

        v78 = 10 * v64;
        if (v78 != v78)
        {
          goto LABEL_76;
        }

        LODWORD(v64) = v78 + v77;
        if (__OFADD__(v78, v77))
        {
          goto LABEL_76;
        }

        ++result;
        if (!--v61)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_76:
  LODWORD(v64) = 0;
  LOBYTE(v60) = 1;
LABEL_77:
  v113 = v60;
  v82 = v60;

  if (v82)
  {
LABEL_78:
    LODWORD(v64) = 0;
  }

LABEL_79:
  *(v38 + v55[9]) = v64;
  v83 = v105;
  sub_24F928398();
  v84 = sub_24F928348();
  v86 = v85;
  v87 = v104;
  v111 = v54;
  v104(v83, v50);
  v88 = v50;
  if (v86)
  {
    v89 = sub_24E9EEEE0(v84, v86);
    if ((v89 & 0x100000000) != 0)
    {
      v90 = 0;
    }

    else
    {
      v90 = v89;
    }
  }

  else
  {
    v90 = 0;
  }

  v91 = v106;
  *(v38 + v55[10]) = v90;
  v92 = v38;
  v93 = v103;
  sub_24F928398();
  v94 = sub_24F928348();
  v96 = v95;
  v87(v93, v88);
  v97 = &v92[v55[11]];
  *v97 = v94;
  v97[1] = v96;
  sub_24F928398();
  v98 = sub_24F928348();
  v100 = v99;
  v87(v91, v88);
  if (v100)
  {
    if (v98 == 5457241 && v100 == 0xE300000000000000)
    {
      v101 = 1;
    }

    else
    {
      v101 = sub_24F92CE08();
    }
  }

  else
  {
    v101 = 0;
  }

  result = (v87)(v45, v88);
  v92[v55[12]] = v101 & 1;
  return result;
}

uint64_t sub_24E9EEBE0(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24F92C928();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_24F2D9F38(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_24E9EEEE0(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_24F2DA4C8(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_24F92C928();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if (v15 != v15)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__OFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if (v20 != v20)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if (v9 != v9)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (__OFSUB__(v9, v8))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if (v23 != v23)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if (v12 != v12)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (__OFSUB__(v12, v11))
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if (v18 != v18)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

unint64_t sub_24E9EF1BC()
{
  result = qword_27F224C18;
  if (!qword_27F224C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224C18);
  }

  return result;
}

unint64_t sub_24E9EF210()
{
  result = qword_27F224C20;
  if (!qword_27F224C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224C20);
  }

  return result;
}

uint64_t type metadata accessor for PerformanceTestCase()
{
  result = qword_27F224C30;
  if (!qword_27F224C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PerformanceTestCase.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PerformanceTestCase.pushToURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PerformanceTestCase() + 32);

  return sub_24E99091C(v3, a1);
}

uint64_t PerformanceTestCase.searchTerm.getter()
{
  v1 = *(v0 + *(type metadata accessor for PerformanceTestCase() + 44));

  return v1;
}

unint64_t sub_24E9EF3F4()
{
  result = qword_27F224C28;
  if (!qword_27F224C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224C28);
  }

  return result;
}

uint64_t sub_24E9EF46C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E9EF53C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E9EF5EC()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E9EFBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24F929EE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[2] = a1;
  v11[3] = a2;
  v11[0] = 95;
  v11[1] = 0xE100000000000000;
  sub_24E600AEC();
  if (sub_24F92C5F8())
  {
    sub_24ED02030(a1, a2, a3);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer), *(v3 + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer + 24));
    (*(v8 + 104))(v10, *MEMORY[0x277D221D0], v7);
    sub_24F92ACD8();
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_24E9F0240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v24 = a1;
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224C50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_24F9293A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_24F91F648();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E728A00(a3, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24E601704(v14, &unk_27F22EC30);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);

    sub_24F929398();
    v20 = *(v9 + 48);
    if (v20(v7, 1, v8) == 1)
    {
      (*(v9 + 104))(v11, *MEMORY[0x277D21E78], v8);
      if (v20(v7, 1, v8) != 1)
      {
        sub_24E601704(v7, &qword_27F224C50);
      }
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
    }

    __swift_project_boxed_opaque_existential_1((v23 + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer), *(v23 + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer + 24));
    v21 = sub_24F92ACA8();
    (*(v9 + 8))(v11, v8);
    (*(v16 + 8))(v18, v15);
    return v21;
  }
}

uint64_t sub_24E9F0798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E728A00(a5, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(v9, &unk_27F22EC30);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer), *(v5 + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer + 24));
    v15 = sub_24F92AC98();
    (*(v11 + 8))(v13, v10);
    return v15;
  }
}

uint64_t sub_24E9F1180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E728A00(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24E601704(v7, &unk_27F22EC30);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    (*(v9 + 16))(v4, v11, v8);
    (*(v9 + 56))(v4, 0, 1, v8);
    v13 = sub_24E9F13C0(v4, 0xD000000000000013);
    sub_24E601704(v4, &unk_27F22EC30);
    (*(v9 + 8))(v11, v8);
    return v13;
  }
}

uint64_t sub_24E9F13C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  sub_24F91F638();
  sub_24E728A00(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    sub_24E601704(v9, &unk_27F22EC30);
    return 0;
  }

  (*(v11 + 32))(v13, v9, v10);
  result = sub_24F91F558();
  v19 = floor(v18 / 31536000.0);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v20 = v19;
  if (v19 >= 1)
  {
    v21 = "TimeAgo.YearsAgo";
    goto LABEL_8;
  }

  v24 = floor(v18 / 86400.0);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_32;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v24 >= 7)
  {
    (*(v11 + 16))(v6, v13, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    v25 = 0x64204D4D4DLL;
    v26 = 0xE500000000000000;
    goto LABEL_17;
  }

  if (v24 >= 1)
  {
    (*(v11 + 16))(v6, v13, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    v25 = 69;
    v26 = 0xE100000000000000;
LABEL_17:
    v23 = sub_24E9F0240(v25, v26, v6, a2);
    sub_24E601704(v6, &unk_27F22EC30);
    goto LABEL_18;
  }

  v28 = floor(v18 / 3600.0);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v20 = v28;
  if (v28 < 1)
  {

    if (sub_24ED05810() == 5)
    {
      v29 = 0xD000000000000020;
      v30 = 0x800000024FA4CFF0;
    }

    else
    {
      v29 = 0x2E6F6741656D6954;
      v30 = 0xEF776F4E7473754ALL;
    }

    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(*&v29, v31)._countAndFlagsBits;
    goto LABEL_9;
  }

  v21 = "TimeAgo.HoursAgo";
LABEL_8:
  sub_24E9EFBA8(0xD000000000000010, (v21 - 32) | 0x8000000000000000, v20);
LABEL_9:
  v23 = countAndFlagsBits;
LABEL_18:
  v27 = *(v11 + 8);
  v27(v13, v10);
  v27(v16, v10);
  return v23;
}

void sub_24E9F1BA8(uint64_t a1)
{
  v2 = 0xD000000000000011;

  v3 = sub_24ED0585C();
  v4 = "IAP_DURATION_MONTH";
  if (v3 > 2u)
  {
    if (v3 != 3)
    {
      return;
    }

    goto LABEL_14;
  }

  v5 = sub_24F92CE08();

  if (v5)
  {
LABEL_15:
    sub_24E9EFBA8(v2, v4 | 0x8000000000000000, a1);
    return;
  }

  v4 = "IAP_DURATION_WEEK";
  if (v3 > 1u)
  {
    v2 = 0xD000000000000012;
    goto LABEL_14;
  }

  v6 = sub_24F92CE08();

  if (v6)
  {
    v2 = 0xD000000000000012;
    goto LABEL_15;
  }

  v4 = "IAP_DURATION_DAY";
  if (v3 == 1)
  {
    goto LABEL_14;
  }

  v7 = sub_24F92CE08();

  if (v7)
  {
    goto LABEL_15;
  }

  v2 = 0xD000000000000010;
  v4 = "GameStoreKit.ModernLocalizer";
  if (!v3)
  {
LABEL_14:

    goto LABEL_15;
  }

  v8 = sub_24F92CE08();

  if (v8)
  {
    goto LABEL_15;
  }
}

uint64_t ShelfBasedCollectionViewController.stateStore.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 112))(v4);
  v2 = v4[0];

  sub_24E9F1FC8(v4);
  return v2;
}

uint64_t ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 112))(&v4);
  sub_24E615E00(&v5, a2);
  return sub_24E9F1FC8(&v4);
}

uint64_t ShelfBasedCollectionViewController.pageGridProvider.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 112))(v4);
  sub_24E615E00(&v5, a2);
  return sub_24E9F1FC8(v4);
}

uint64_t ShelfBasedCollectionViewController.pageGridProvider.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 128))(v7);
  __swift_assign_boxed_opaque_existential_1((v5 + 88), a1);
  v4(v7, 0);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

void (*ShelfBasedCollectionViewController.pageGridProvider.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x118uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[33] = a3;
  v7[34] = v3;
  v7[32] = a2;
  (*(a3 + 112))(a2, a3);
  sub_24E615E00(v8 + 88, v8 + 216);
  sub_24E9F1FC8(v8);
  return sub_24E9F2428;
}

void sub_24E9F2428(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[33];
  v4 = (*a1)[32];
  v5 = *a1 + 27;
  if (a2)
  {
    sub_24E615E00(v5, v2);
    ShelfBasedCollectionViewController.pageGridProvider.setter(v2, v4, v3);
    __swift_destroy_boxed_opaque_existential_1((v2 + 27));
  }

  else
  {
    ShelfBasedCollectionViewController.pageGridProvider.setter(v5, v4, v3);
  }

  free(v2);
}

uint64_t ShelfBasedCollectionViewController.shelfLayoutSpacingProvider.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 112))(v4);
  sub_24E615E00(&v5, a2);
  return sub_24E9F1FC8(v4);
}

uint64_t ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 112))(v4);
  v2 = v4[21];
  swift_unknownObjectRetain();
  sub_24E9F1FC8(v4);
  return v2;
}

uint64_t ShelfBasedCollectionViewController.itemSupplementaryProvider.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 112))(v4);
  v2 = v4[23];
  swift_unknownObjectRetain();
  sub_24E9F1FC8(v4);
  return v2;
}

uint64_t ShelfBasedCollectionViewController.collectionElementsObserver.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 112))(v4);
  v2 = v4[25];
  swift_unknownObjectRetain();
  sub_24E9F1FC8(v4);
  return v2;
}

uint64_t ShelfBasedCollectionViewController.layoutSectionProvider.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 112))(v4);
  sub_24E615E00(&v5, a2);
  return sub_24E9F1FC8(v4);
}

Swift::Void __swiftcall ShelfBasedCollectionViewController.prepareLayoutDependencies()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 160))();
  v5 = *(v2 + 128);
  v6 = v5(v46, v3, v2);
  *v7 = v4;

  v6(v46, 0);
  (*(v2 + 168))(v46, v3, v2);
  v8 = v5(v45, v3, v2);
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_1(v9 + 8);
  sub_24E612C80(v46, v10 + 8);
  v8(v45, 0);
  (*(v2 + 176))(v46, v3, v2);
  v11 = v5(v45, v3, v2);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1(v12 + 88);
  sub_24E612C80(v46, v13 + 88);
  v11(v45, 0);
  (*(v2 + 184))(v46, v3, v2);
  v14 = v5(v45, v3, v2);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1(v15 + 128);
  sub_24E612C80(v46, v16 + 128);
  v14(v45, 0);
  v17 = (*(v2 + 192))(v3, v2);
  v19 = v18;
  v20 = v5(v46, v3, v2);
  *(v21 + 168) = v17;
  *(v21 + 176) = v19;
  swift_unknownObjectRelease();
  v20(v46, 0);
  v22 = (*(v2 + 200))(v3, v2);
  v24 = v23;
  v25 = v5(v46, v3, v2);
  *(v26 + 184) = v22;
  *(v26 + 192) = v24;
  swift_unknownObjectRelease();
  v25(v46, 0);
  v27 = (*(v2 + 208))(v3, v2);
  v29 = v28;
  v30 = v5(v46, v3, v2);
  *(v31 + 200) = v27;
  *(v31 + 208) = v29;
  swift_unknownObjectRelease();
  v30(v46, 0);
  (*(v2 + 216))(v46, v3, v2);
  v32 = v5(v45, v3, v2);
  v34 = v33;
  __swift_destroy_boxed_opaque_existential_1(v33 + 48);
  sub_24E612C80(v46, v34 + 48);
  v32(v45, 0);
  v35 = (*(v2 + 136))(v3, v2);
  (*(v2 + 64))(v35, v3, v2);
  v36 = (*(v2 + 144))(v3, v2);
  (*(v2 + 88))(v36, v3, v2);
  v37 = *(v2 + 32);
  v38 = v37(v3, v2);
  if (v38)
  {
    v39 = v38;
    v40 = (*(v2 + 56))(v3, v2);
    [v39 setDataSource_];
  }

  v41 = (*(v2 + 80))(v3, v2);
  if (v41)
  {
    v42 = v41;
    v43 = v37(v3, v2);
    if (v43)
    {
      v44 = v43;
      [v43 setCollectionViewLayout_];
    }
  }
}

uint64_t sub_24E9F2B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v4 = *(a3 + a4 - 8);
  sub_24E615E00(a1, v7);
  return ShelfBasedCollectionViewController.pageGridProvider.setter(v7, v5, v4);
}

__n128 sub_24E9F2BB0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_24E9F2BBC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E9F2C00@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerStyle;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24E9F2C54(char *a1, double a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerRadius;
  swift_beginAccess();
  *(v3 + v6) = a2;
  v7 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerStyle;
  swift_beginAccess();
  *(v3 + v7) = v5;
  v8 = CornerStyle.apply(withRadius:to:)(v3, a2);
  return (*((*MEMORY[0x277D85000] & *v3) + 0xE8))(v8);
}

uint64_t sub_24E9F2D20()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E9F2D64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) != 0)
    {
      v4 = 2;
      if ((a1 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v4 = 0;
    if ((a1 & 8) != 0)
    {
LABEL_12:
      v4 |= 8uLL;
      goto LABEL_13;
    }

LABEL_7:
    if ((a1 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((a1 & 2) == 0)
  {
    v4 = 1;
    if ((a1 & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = 3;
  if ((a1 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((a1 & 4) != 0 && (v4 & 4) == 0)
  {
LABEL_15:
    v4 |= 4uLL;
  }

LABEL_16:
  v5 = [v1 layer];
  [v5 setMaskedCorners_];

  return (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();
}

void (*sub_24E9F2E64(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_24E9F2EEC;
}

void sub_24E9F2EEC(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 24);
    v5 = *(v4 + *(v3 + 32));
    if (v5)
    {
      if ((v5 & 2) != 0)
      {
        v6 = 3;
        if ((v5 & 8) == 0)
        {
LABEL_14:
          if ((v5 & 4) == 0 || (v6 & 4) != 0)
          {
            goto LABEL_17;
          }

LABEL_16:
          v6 |= 4uLL;
LABEL_17:
          v7 = [*(v3 + 24) layer];
          [v7 setMaskedCorners_];

          (*((*MEMORY[0x277D85000] & *v4) + 0xE8))();
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      v6 = 1;
      if ((v5 & 8) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((v5 & 2) != 0)
      {
        v6 = 2;
        if ((v5 & 8) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v6 = 0;
      if ((v5 & 8) != 0)
      {
LABEL_13:
        v6 |= 8uLL;
        goto LABEL_14;
      }
    }

    if ((v5 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:

  free(v3);
}

void *sub_24E9F2FF0()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24E9F303C(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 addSubview_];
  }
}

void (*sub_24E9F30D4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_24E9F3170;
}

void sub_24E9F3170(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v3;
    sub_24E9F303C(v3);
    v5 = *(v2 + 24);
  }

  else
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v7 + v6);
    if (v8)
    {
      [v8 removeFromSuperview];
      v9 = *(v7 + v6);
      v7 = *(v2 + 32);
      v6 = *(v2 + 40);
    }

    else
    {
      v9 = 0;
    }

    *(v7 + v6) = v3;
    v5 = v3;

    if (!v3)
    {
      goto LABEL_9;
    }

    [*(v2 + 32) addSubview_];
  }

LABEL_9:

  free(v2);
}

void sub_24E9F322C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderView;
  if (*(v0 + v1) >= COERCE_DOUBLE(1))
  {
    swift_beginAccess();
    v5 = *(v0 + v2);
    if (v5)
    {
      v6 = *(v0 + v2);
    }

    else
    {
      type metadata accessor for BorderView();
      v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v8 = *(v0 + v2);
      v9 = v7;
      if (v8)
      {
        [v8 removeFromSuperview];
        v8 = *(v0 + v2);
      }

      *(v0 + v2) = v7;
      v6 = v7;

      [v0 addSubview_];
      v5 = 0;
    }

    v10 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
    swift_beginAccess();
    v11 = *(v0 + v10);
    v12 = v5;
    v13 = v11;
    v14 = v6;
    v15 = [v14 layer];
    v16 = [v13 CGColor];
    [v15 setBorderColor_];

    v17 = *(v0 + v1);
    v18 = [v14 layer];
    [v18 setBorderWidth_];

    v19 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();
    v20 = [v14 layer];
    v21 = v20;
    if (v19)
    {
      if ((v19 & 2) != 0)
      {
        v22 = 3;
        if ((v19 & 8) == 0)
        {
LABEL_23:
          if ((v19 & 4) == 0 || (v22 & 4) != 0)
          {
            goto LABEL_26;
          }

LABEL_25:
          v22 |= 4uLL;
LABEL_26:
          [v20 setMaskedCorners_];

          swift_beginAccess();
          v23 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerRadius;
          swift_beginAccess();
          CornerStyle.apply(withRadius:to:)(v14, *(v0 + v23));

          return;
        }

        goto LABEL_22;
      }

      v22 = 1;
      if ((v19 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v19 & 2) != 0)
      {
        v22 = 2;
        if ((v19 & 8) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v22 = 0;
      if ((v19 & 8) != 0)
      {
LABEL_22:
        v22 |= 8uLL;
        goto LABEL_23;
      }
    }

    if ((v19 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;
}

uint64_t sub_24E9F3540(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();
}

id sub_24E9F35D4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_24E9F3628(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();
}

uint64_t (*sub_24E9F36C0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24E9F3724;
}

double sub_24E9F3728()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E9F376C(double a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x277D85000] & *v1) + 0xE8))(v4);
}

uint64_t (*sub_24E9F37F0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24E9F46BC;
}

uint64_t sub_24E9F3854(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0xE8))(result);
  }

  return result;
}

id RoundedCornerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id RoundedCornerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerRadius] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerStyle] = 1;
  *&v4[OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners] = -1;
  *&v4[OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderView] = 0;
  v9 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
  *&v4[v9] = [objc_opt_self() clearColor];
  *&v4[OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for RoundedCornerView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setClipsToBounds_];
  return v10;
}

id RoundedCornerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void *RoundedCornerView.__allocating_init(radius:style:)(char *a1, double a2)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(v2) initWithFrame_];
  v9 = v4;
  v6 = *((*MEMORY[0x277D85000] & *v5) + 0xB0);
  v7 = v5;
  v6(&v9, a2);

  return v7;
}

BOOL sub_24E9F3CE4(char *a1, double a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = [v2 superview];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for RoundedCornerView();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v11[0] = v5;
      (*((*MEMORY[0x277D85000] & *v8) + 0xB0))(v11, a2);
      v9 = [v2 superview];
      [v9 setNeedsLayout];
    }
  }

  v11[1] = v5;
  return CornerStyle.apply(withRadius:to:)(v3, a2);
}

id RoundedCornerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedCornerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s12GameStoreKit17RoundedCornerViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerRadius) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerStyle) = 1;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners) = -1;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderView) = 0;
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
  *(v0 + v1) = [objc_opt_self() clearColor];
  *(v0 + OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth) = 0;
  sub_24F92CA88();
  __break(1u);
}

uint64_t sub_24E9F3F68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerRadius;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24E9F3FBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24E9F4014(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerStyle;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24E9F4068@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

id sub_24E9F411C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_24E9F4184(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24E9F303C(v1);
}

id sub_24E9F41B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

double keypath_getTm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t sub_24E9F4280(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth;
  v5 = swift_beginAccess();
  *(v3 + v4) = v2;
  return (*((*MEMORY[0x277D85000] & *v3) + 0xE8))(v5);
}

char *ArcadeSubscriptionStateAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x28223BE20](v4);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v32 = *(v7 - 8);
  v8 = v32;
  v9 = MEMORY[0x28223BE20](v7);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  type metadata accessor for Action();
  sub_24F928398();
  v13 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, a2);
  v14 = *(v8 + 8);
  v14(v12, v7);
  v15 = v27;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_notSubscribedAction) = v13;
  sub_24F928398();
  v16 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, a2);
  v14(v12, v7);
  *(v15 + OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_purchasingAction) = v16;
  sub_24F928398();
  v17 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, a2);
  v14(v12, v7);
  *(v15 + OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_subscribedAction) = v17;
  sub_24F928398();
  v18 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, a2);
  v19 = v12;
  v20 = v30;
  v14(v19, v7);
  *(v15 + OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_unknownAction) = v18;
  v21 = *(v32 + 16);
  v22 = v28;
  v32 = a1;
  v21(v28, a1, v7);
  v23 = v31;
  v24 = v29;
  (*(v31 + 16))(v29, a2, v20);
  v25 = Action.init(deserializing:using:)(v22, v24);
  (*(v23 + 8))(a2, v20);
  v14(v32, v7);
  return v25;
}

void *ArcadeSubscriptionStateAction.__allocating_init(notSubscribedAction:purchasingAction:subscribedAction:unknownAction:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v9 = sub_24F91F6B8();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_notSubscribedAction) = a1;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_purchasingAction) = a2;
  v20 = a5;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_subscribedAction) = a3;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_unknownAction) = v31;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  (*(v16 + 16))(v18, a5, v15);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  v22 = (v19 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  v23 = v19 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v37, &v34);
  if (*(&v35 + 1))
  {
    v24 = v35;
    *v23 = v34;
    *(v23 + 1) = v24;
    *(v23 + 4) = v36;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v29 + 8))(v11, v30);
    v32 = v25;
    v33 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830);
  }

  (*(v16 + 8))(v20, v15);
  sub_24E601704(v37, &qword_27F235830);
  sub_24E65E0D4(v14, v19 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v19[2] = 0xD000000000000020;
  v19[3] = 0x800000024FA4D170;
  v19[4] = 0;
  v19[5] = 0;
  (*(v16 + 32))(v19 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v18, v15);
  return v19;
}

void *ArcadeSubscriptionStateAction.init(notSubscribedAction:purchasingAction:subscribedAction:unknownAction:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v32 = a4;
  v11 = sub_24F91F6B8();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_notSubscribedAction) = a1;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_purchasingAction) = a2;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_subscribedAction) = a3;
  v21 = a5;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_unknownAction) = v32;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v18 + 16))(v20, a5, v17);
  v22 = sub_24F929608();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v23 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E65E064(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v26 = v25;
    (*(v30 + 8))(v13, v31);
    v33 = v24;
    v34 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v18 + 8))(v21, v17);
  sub_24E601704(v41, &qword_27F235830);
  v27 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v27 + 4) = v40;
  v28 = v39;
  *v27 = v38;
  *(v27 + 1) = v28;
  sub_24E65E0D4(v16, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v6[2] = 0xD000000000000020;
  v6[3] = 0x800000024FA4D170;
  v6[4] = 0;
  v6[5] = 0;
  (*(v18 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v20, v17);
  return v6;
}

uint64_t sub_24E9F5248()
{
}

uint64_t ArcadeSubscriptionStateAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t ArcadeSubscriptionStateAction.__deallocating_deinit()
{
  ArcadeSubscriptionStateAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeSubscriptionStateAction()
{
  result = qword_27F224C88;
  if (!qword_27F224C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9F54FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E9F55BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RematchChallengeAction()
{
  result = qword_27F224C98;
  if (!qword_27F224C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9F56AC()
{
  result = sub_24F928AD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E9F5728(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224CB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9F5DBC();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for RematchChallengeAction();
    v8[14] = 1;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E9F58CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_24F928AD8();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224CA8);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for RematchChallengeAction();
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9F5DBC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v21 = 1;
  sub_24E674184(&qword_27F254CB0);
  sub_24F92CC68();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_24E9F5E10(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E9F5E74(v10);
}

uint64_t sub_24E9F5BDC()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0x676E656C6C616863;
  }
}

uint64_t sub_24E9F5C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t sub_24E9F5D14(uint64_t a1)
{
  v2 = sub_24E9F5DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9F5D50(uint64_t a1)
{
  v2 = sub_24E9F5DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E9F5DBC()
{
  result = qword_27F224CB0;
  if (!qword_27F224CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224CB0);
  }

  return result;
}

uint64_t sub_24E9F5E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RematchChallengeAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9F5E74(uint64_t a1)
{
  v2 = type metadata accessor for RematchChallengeAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E9F5EE4()
{
  result = qword_27F224CC0;
  if (!qword_27F224CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224CC0);
  }

  return result;
}

unint64_t sub_24E9F5F3C()
{
  result = qword_27F224CC8;
  if (!qword_27F224CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224CC8);
  }

  return result;
}

unint64_t sub_24E9F5F94()
{
  result = qword_27F224CD0;
  if (!qword_27F224CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224CD0);
  }

  return result;
}

uint64_t sub_24E9F5FE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280C0);
  result = swift_allocObject();
  *(result + 16) = sub_24E9F6038;
  *(result + 24) = 0;
  qword_27F224CE0 = result;
  return result;
}

void sub_24E9F6038(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = *MEMORY[0x277D76808];
  v6 = *MEMORY[0x277D76800];
  v7 = v4;
  v8 = v5;
  v9 = v6;
  if (sub_24F92C178())
  {
    if (sub_24F92C168())
    {
      v10 = sub_24F92C178();

      if (v10)
      {

        v11 = 16.0;
LABEL_12:
        *a2 = v11;
        return;
      }
    }

    else
    {
    }

    v12 = sub_24F92B0D8();
    v14 = v13;
    if (v12 == sub_24F92B0D8() && v14 == v15)
    {

      goto LABEL_10;
    }

    v16 = sub_24F92CE08();

    if (v16)
    {
LABEL_10:
      v17 = sub_24F92C178();

      v11 = 33.0;
      if ((v17 & 1) == 0)
      {
        v11 = 13.0;
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t static StandardSearchResultContentViewMetrics.bottomMargin.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F210098 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F224CE0;
}

uint64_t Artwork.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v89 = a2;
  v3 = 0x6574616C706D6574;
  v4 = sub_24F91F6B8();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x28223BE20](v4);
  v71 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = &v59 - v7;
  v8 = sub_24F9285B8();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x28223BE20](v8);
  v78 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v77 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v76 = &v59 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v75 = &v59 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v74 = &v59 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v59 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v59 - v26;
  sub_24F928398();
  sub_24E9F70F4();
  sub_24F928248();
  v28 = *(v11 + 8);
  v28(v27, v10);
  if (!*(&v86 + 1))
  {
    v32 = v28;
    v33 = 0xE800000000000000;
    v31 = v10;
    goto LABEL_7;
  }

  v80 = *(&v86 + 1);
  v70 = v86;
  v3 = 0x6874646977;
  sub_24F928398();
  v69 = sub_24F928308();
  v30 = v29;
  v28(v25, v10);
  v31 = v10;
  if (v30)
  {
    v32 = v28;

    v33 = 0xE500000000000000;
LABEL_7:
    v37 = sub_24F92AC38();
    sub_24E9F8A54(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v38 = v3;
    v38[1] = v33;
    v38[2] = v81;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    (*(v82 + 8))(v89, v83);
    (v32)(a1, v31);
    return v32;
  }

  v3 = 0x746867696568;
  sub_24F928398();
  v34 = sub_24F928308();
  v36 = v35;
  v28(v22, v31);
  if (v36)
  {
    v32 = v28;

    v33 = 0xE600000000000000;
    goto LABEL_7;
  }

  v68 = v34;
  sub_24F928398();
  sub_24E9F7148();
  sub_24F928208();
  v28(v27, v31);
  v67 = v86;
  sub_24F928398();
  sub_24E9F71AC();
  sub_24F928208();
  v28(v27, v31);
  v40 = v86;
  v41 = v74;
  sub_24F928398();
  v81 = sub_24F928258();
  v43 = v42;
  v28(v41, v31);
  v65 = *(&v40 + 1);
  v66 = v40;
  if (v43)
  {
    v86 = v40;
    v81 = Artwork.Crop.preferredContentMode.getter();
  }

  sub_24F928398();
  sub_24E9F7200();
  sub_24F928248();
  v28(v27, v31);
  LODWORD(v74) = v86;
  sub_24F928398();
  v62 = *(v82 + 16);
  v44 = v78;
  v62(v78, v89, v83);
  sub_24E9F7254();
  v64 = sub_24F92B698();
  v45 = v75;
  sub_24F928398();
  v60 = sub_24F928348();
  v61 = v46;
  v28(v45, v31);
  v47 = v76;
  sub_24F928398();
  v75 = JSONObject.appStoreColor.getter();
  v28(v47, v31);
  v48 = v77;
  sub_24F928398();
  v63 = JSONObject.appStoreColor.getter();
  v76 = v28;
  v28(v48, v31);
  sub_24F929608();
  v77 = a1;
  sub_24F928398();
  v62(v44, v89, v83);
  v49 = v79;
  v50 = v61;
  sub_24F929548();
  type metadata accessor for Artwork();
  v32 = swift_allocObject();
  *(v32 + 152) = 0u;
  *(v32 + 168) = 0u;
  *(v32 + 184) = 0;
  if (v50)
  {
    v51 = v65;
    v52 = v60;
  }

  else
  {
    v53 = v71;
    sub_24F91F6A8();
    v52 = sub_24F91F668();
    v50 = v54;
    (*(v72 + 8))(v53, v73);
    v51 = v65;
  }

  v84 = v52;
  v85 = v50;
  sub_24F92C7F8();
  v55 = v87;
  *(v32 + 112) = v86;
  *(v32 + 128) = v55;
  *(v32 + 144) = v88;
  sub_24E60169C(v49, v32 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68);
  v56 = v80;
  *(v32 + 16) = v70;
  *(v32 + 24) = v56;
  v57 = v68;
  *(v32 + 32) = v69;
  *(v32 + 40) = v57;
  v58 = v63;
  *(v32 + 48) = v75;
  *(v32 + 56) = v58;
  *(v32 + 72) = v66;
  *(v32 + 80) = v51;
  *(v32 + 64) = v67;
  *(v32 + 104) = v64;
  (*(v82 + 8))(v89, v83);
  (v76)(v77, v31);
  sub_24E601704(v49, &qword_27F213E68);
  *(v32 + 88) = v81;
  *(v32 + 96) = v74;
  return v32;
}

uint64_t Artwork.__allocating_init(id:template:size:backgroundColor:backgroundGradientColor:style:crop:contentMode:imageScale:variants:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t *a7, uint64_t a8, double a9, double a10, unsigned __int8 a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14)
{
  v38 = a8;
  v44 = a4;
  v45 = a5;
  v46 = a14;
  v43 = a11;
  v42 = a13;
  v21 = sub_24F91F6B8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  v26 = *a3;
  v39 = a3[1];
  v40 = v26;
  v27 = *a6;
  v28 = *a7;
  v29 = a7[1];
  v41 = *a12;
  *(v25 + 152) = 0u;
  *(v25 + 168) = 0u;
  *(v25 + 184) = 0;
  if (!a2)
  {
    sub_24F91F6A8();
    a1 = sub_24F91F668();
    a2 = v30;
    (*(v22 + 8))(v24, v21);
  }

  v47 = a1;
  v48 = a2;
  sub_24F92C7F8();
  v31 = v50;
  *(v25 + 112) = v49;
  *(v25 + 128) = v31;
  *(v25 + 144) = v51;
  v32 = v46;
  sub_24E60169C(v46, v25 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68);
  v33 = v39;
  *(v25 + 16) = v40;
  *(v25 + 24) = v33;
  *(v25 + 32) = a9;
  *(v25 + 40) = a10;
  v34 = v45;
  *(v25 + 48) = v44;
  *(v25 + 56) = v34;
  *(v25 + 72) = v28;
  *(v25 + 80) = v29;
  *(v25 + 64) = v27;
  *(v25 + 104) = v42;
  if (v43)
  {
    *&v49 = v28;
    *(&v49 + 1) = v29;
    v35 = Artwork.Crop.preferredContentMode.getter();
    sub_24E601704(v32, &qword_27F213E68);
  }

  else
  {
    sub_24E601704(v32, &qword_27F213E68);
    v35 = v38;
  }

  *(v25 + 88) = v35;
  *(v25 + 96) = v41;
  return v25;
}

uint64_t Artwork.init(id:template:size:backgroundColor:backgroundGradientColor:style:crop:contentMode:imageScale:variants:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t *a7, uint64_t a8, double a9, double a10, unsigned __int8 a11, char *a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v39 = a8;
  v44 = a4;
  v45 = a5;
  v46 = a14;
  v43 = a11;
  v42 = a13;
  v23 = sub_24F91F6B8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a3;
  v40 = a3[1];
  v41 = v27;
  v28 = *a6;
  v29 = *a7;
  v30 = a7[1];
  v31 = *a12;
  *(v15 + 152) = 0u;
  *(v15 + 168) = 0u;
  *(v15 + 184) = 0;
  if (!a2)
  {
    sub_24F91F6A8();
    a1 = sub_24F91F668();
    a2 = v32;
    (*(v24 + 8))(v26, v23);
  }

  v47 = a1;
  v48 = a2;
  sub_24F92C7F8();
  v33 = v50;
  *(v15 + 112) = v49;
  *(v15 + 128) = v33;
  *(v15 + 144) = v51;
  v34 = v46;
  sub_24E60169C(v46, v15 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68);
  v35 = v40;
  *(v15 + 16) = v41;
  *(v15 + 24) = v35;
  *(v15 + 32) = a9;
  *(v15 + 40) = a10;
  v36 = v45;
  *(v15 + 48) = v44;
  *(v15 + 56) = v36;
  *(v15 + 72) = v29;
  *(v15 + 80) = v30;
  *(v15 + 64) = v28;
  *(v15 + 104) = v42;
  if (v43)
  {
    *&v49 = v29;
    *(&v49 + 1) = v30;
    v37 = Artwork.Crop.preferredContentMode.getter();
    sub_24E601704(v34, &qword_27F213E68);
  }

  else
  {
    sub_24E601704(v34, &qword_27F213E68);
    v37 = v39;
  }

  *(v15 + 88) = v37;
  *(v15 + 96) = v31;
  return v15;
}

unint64_t sub_24E9F70F4()
{
  result = qword_27F224CE8;
  if (!qword_27F224CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224CE8);
  }

  return result;
}

unint64_t sub_24E9F7148()
{
  result = qword_27F224CF0;
  if (!qword_27F224CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224CF0);
  }

  return result;
}

unint64_t sub_24E9F71AC()
{
  result = qword_27F224CF8;
  if (!qword_27F224CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224CF8);
  }

  return result;
}

unint64_t sub_24E9F7200()
{
  result = qword_27F224D00;
  if (!qword_27F224D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224D00);
  }

  return result;
}

unint64_t sub_24E9F7254()
{
  result = qword_27F224D08;
  if (!qword_27F224D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224D08);
  }

  return result;
}

uint64_t type metadata accessor for Artwork()
{
  result = qword_27F224D38;
  if (!qword_27F224D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Artwork.template.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void *Artwork.backgroundColor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *Artwork.backgroundGradientColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t Artwork.crop.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  a1[1] = v2;
}

uint64_t sub_24E9F738C()
{
  v25 = sub_24F91F6B8();
  v1 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v23 = *(v0 + 16);
  v24 = v11;
  v26 = *(v0 + 96);
  v13 = *(v0 + 104);
  v14 = sub_24F929608();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  type metadata accessor for Artwork();
  v15 = swift_allocObject();
  *(v15 + 152) = 0u;
  *(v15 + 168) = 0u;
  *(v15 + 184) = 0;
  v16 = v10;

  sub_24F91F6A8();
  v17 = sub_24F91F668();
  v19 = v18;
  (*(v1 + 8))(v3, v25);
  v27 = v17;
  v28 = v19;
  sub_24F92C7F8();
  sub_24E60169C(v6, v15 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68);
  v20 = v24;
  *(v15 + 16) = v23;
  *(v15 + 24) = v7;
  *(v15 + 32) = v8;
  *(v15 + 40) = v9;
  *(v15 + 48) = v10;
  *(v15 + 56) = 0;
  *(v15 + 72) = v20;
  *(v15 + 80) = v12;
  *(v15 + 64) = 0;
  *(v15 + 104) = v13;
  v27 = v20;
  v28 = v12;
  v21 = Artwork.Crop.preferredContentMode.getter();

  sub_24E601704(v6, &qword_27F213E68);
  *(v15 + 88) = v21;
  *(v15 + 96) = v26;
  return v15;
}

uint64_t sub_24E9F7608@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 104);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 49);
    while (1)
    {
      v6 = *(v5 - 17);
      if ((v6 == 3) == (result & 1))
      {
        break;
      }

      v5 += 24;
      if (!--v4)
      {
        LOBYTE(v6) = *(v3 + 32);
        v7 = (v3 + 40);
        v8 = (v3 + 48);
        v5 = (v3 + 49);
        goto LABEL_8;
      }
    }

    v7 = (v5 - 9);
    v8 = v5 - 1;
LABEL_8:
    v11 = *v8;
    v9 = *v7;
    v10 = *v5;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    LOBYTE(v6) = 2;
  }

  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  *(a2 + 17) = v10;
  return result;
}

void sub_24E9F76AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v39 = v7;
  v40 = v6;
  if (Artwork.URLTemplate.isSystemImage.getter())
  {
    v33 = a1;
    v34 = v5;
    v8 = sub_24E60B4B0(MEMORY[0x277D84F90]);
    v9 = v8;
    v10 = v8 + 64;
    v11 = 1 << *(v8 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v8 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    if (v13)
    {
      while (1)
      {
        v16 = v15;
LABEL_10:
        v17 = __clz(__rbit64(v13)) | (v16 << 6);
        v18 = *(*(v9 + 48) + v17);
        v13 &= v13 - 1;
        v19 = (*(v9 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v39 = v7;
        v40 = v6;
        v37 = qword_24F973DB8[v18];
        v38 = 0xE300000000000000;
        v35 = v20;
        v36 = v21;
        sub_24E600AEC();

        v7 = sub_24F92C568();
        v23 = v22;

        v6 = v23;
        if (!v13)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return;
      }

      if (v16 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_10;
      }
    }

    v24 = v34;
    sub_24F91F488();

    v25 = sub_24F91F4A8();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_24E601704(v24, &qword_27F228530);
    }

    else
    {
      sub_24F91F438();
      v28 = v27;
      (*(v26 + 8))(v24, v25);
      if (v28)
      {
        if (v33)
        {
          v29 = v33;
          v30 = sub_24F92B098();

          v31 = [objc_opt_self() _systemImageNamed_withConfiguration_];
        }

        else
        {
          v29 = sub_24F92B098();

          v31 = [objc_opt_self() _systemImageNamed_withConfiguration_];
        }

        if (v31)
        {
          v32 = v31;
          [v32 size];
          [v32 size];
          [v32 size];
          sub_24F92C3C8();
          sub_24F92C3C8();
        }
      }
    }
  }
}

uint64_t sub_24E9F7B34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27 - v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v33 = v5;
  v34 = v4;
  if (!Artwork.URLTemplate.isSystemImage.getter())
  {
    return 0;
  }

  v28 = v3;
  v6 = sub_24E60B4B0(MEMORY[0x277D84F90]);
  v7 = v6;
  v8 = v6 + 64;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v11)) | (v15 << 6);
      v17 = *(*(v7 + 48) + v16);
      v11 &= v11 - 1;
      v18 = (*(v7 + 56) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      v33 = v5;
      v34 = v4;
      v31 = qword_24F973DB8[v17];
      v32 = 0xE300000000000000;
      v29 = v19;
      v30 = v20;
      sub_24E600AEC();

      v5 = sub_24F92C568();
      v22 = v21;

      v4 = v22;
      if (!v11)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  v23 = v28;
  sub_24F91F488();

  v24 = sub_24F91F4A8();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_24E601704(v23, &qword_27F228530);
    return 0;
  }

  v26 = sub_24F91F438();
  (*(v25 + 8))(v23, v24);
  return v26;
}

uint64_t sub_24E9F7EC4()
{
  sub_24F92B218();
  v1 = *(v0 + 32);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x253052A30](*&v1);
  v2 = *(v0 + 40);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x253052A30](*&v2);

  return sub_24F92B218();
}

uint64_t sub_24E9F7F40(void *a1)
{
  v35 = MEMORY[0x277D84F90];
  v3 = *(v1 + 104);
  v33 = *(v3 + 16);
  if (v33)
  {
    result = objc_opt_self();
    v34 = result;
    v5 = 0;
    v6 = v3 + 49;
    v31 = v3;
    while (v5 < *(v3 + 16))
    {
      v7 = *(v6 - 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224D10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F9479A0;
      *(inited + 32) = 0x74616D726F66;
      *(inited + 40) = 0xE600000000000000;
      v9 = [v34 valueWithObject:sub_24F92CF68() inContext:a1];
      swift_unknownObjectRelease();
      *(inited + 48) = v9;
      *(inited + 56) = 0x7974696C617571;
      *(inited + 64) = 0xE700000000000000;
      v10 = a1;
      if (v7)
      {
        v11 = 0;
      }

      else
      {
        v11 = sub_24F92CDE8();
      }

      v12 = [v34 valueWithObject:v11 inContext:a1];
      swift_unknownObjectRelease();

      *(inited + 72) = v12;
      *(inited + 80) = 0xD000000000000011;
      *(inited + 88) = 0x800000024FA4D220;
      v13 = [v34 valueWithObject:sub_24F92CF68() inContext:a1];
      swift_unknownObjectRelease();
      *(inited + 96) = v13;
      sub_24E60C674(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224D18);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224D20);
      v14 = [v34 valueWithObject:sub_24F92CF68() inContext:a1];
      result = swift_unknownObjectRelease();
      if (!v14)
      {
        goto LABEL_25;
      }

      MEMORY[0x253050F00](result);
      v3 = v31;
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      ++v5;
      result = sub_24F92B638();
      v6 += 24;
      if (v33 == v5)
      {
        goto LABEL_11;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224D10);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_24F93FC20;
    *(v15 + 32) = 0x6574616C706D6574;
    v32 = v15;
    *(v15 + 40) = 0xE800000000000000;
    v16 = sub_24E60B4B0(MEMORY[0x277D84F90]);
    v17 = v16 + 64;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v16 + 64);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    if (v20)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v23 >= v21)
      {
        break;
      }

      v20 = *(v17 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        do
        {
LABEL_19:
          v20 &= v20 - 1;
          sub_24E600AEC();

          sub_24F92C568();
        }

        while (v20);
        continue;
      }
    }

    v24 = sub_24F92CF68();
    v25 = objc_opt_self();
    v26 = [v25 valueWithObject:v24 inContext:a1];
    swift_unknownObjectRelease();
    v32[6] = v26;
    v32[7] = 0x6874646977;
    v32[8] = 0xE500000000000000;
    v27 = [v25 valueWithObject:sub_24F92CF68() inContext:a1];
    swift_unknownObjectRelease();
    v32[9] = v27;
    v32[10] = 0x746867696568;
    v32[11] = 0xE600000000000000;
    v28 = [v25 valueWithObject:sub_24F92CF68() inContext:a1];
    swift_unknownObjectRelease();
    v32[12] = v28;
    v32[13] = 0x73746E6169726176;
    v32[14] = 0xE800000000000000;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8);
    v29 = [v25 valueWithObject:sub_24F92CF68() inContext:a1];
    swift_unknownObjectRelease();
    v32[15] = v29;
    sub_24E60C674(v32);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224D18);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224D20);
    v30 = [v25 valueWithObject:sub_24F92CF68() inContext:a1];
    result = swift_unknownObjectRelease();
    if (!v30)
    {
      goto LABEL_26;
    }

    return v30;
  }

  return result;
}

uint64_t Artwork.deinit()
{

  sub_24E6585F8(v0 + 112);
  sub_24E601704(v0 + 152, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t Artwork.__deallocating_deinit()
{
  Artwork.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24E9F8748()
{
  sub_24F92D068();
  sub_24E9F7EC4();
  return sub_24F92D0B8();
}

uint64_t sub_24E9F87CC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Artwork.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24E9F881C()
{
  sub_24F92D068();
  sub_24E9F7EC4();
  return sub_24F92D0B8();
}

uint64_t sub_24E9F8884()
{
  sub_24F92D068();
  sub_24E9F7EC4();
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v5 || (sub_24F0C97AC(*(a1 + 64), *(a2 + 64)) & 1) == 0 || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 104);
  v7 = *(a2 + 104);

  return sub_24EA16B7C(v6, v7);
}

uint64_t sub_24E9F8A54(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E9F8AA4()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24E9F8DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Game();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

  else
  {
    v12 = type metadata accessor for Player(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24E9F8F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Game();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = type metadata accessor for Player(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardsWithActivityDataIntent()
{
  result = qword_27F224D48;
  if (!qword_27F224D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E9F90AC()
{
  type metadata accessor for Game();
  if (v0 <= 0x3F)
  {
    sub_24E7EC99C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Player(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24E9F9148@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 1701667175;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = type metadata accessor for Game();
  *(inited + 80) = sub_24E81A5FC(&qword_27F217960, type metadata accessor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  v19 = v1;
  sub_24E9F9D60(v1, boxed_opaque_existential_1, type metadata accessor for Game);
  strcpy((inited + 88), "leaderboardSet");
  *(inited + 103) = -18;
  v4 = type metadata accessor for LeaderboardsWithActivityDataIntent();
  v5 = (v1 + *(v4 + 20));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v12 = v5[6];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E2E0);
  *(inited + 136) = sub_24E7EDA90();
  v13 = swift_allocObject();
  *(inited + 104) = v13;
  v13[2] = v6;
  v13[3] = v7;
  v13[4] = v8;
  v13[5] = v9;
  v13[6] = v10;
  v13[7] = v11;
  v13[8] = v12;
  *(inited + 144) = 0x726579616C70;
  *(inited + 152) = 0xE600000000000000;
  v14 = *(v4 + 24);
  *(inited + 184) = type metadata accessor for Player(0);
  *(inited + 192) = sub_24E81A5FC(&qword_27F215388, type metadata accessor for Player);
  v15 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E9F9D60(v19 + v14, v15, type metadata accessor for Player);
  sub_24E7ED984(v6, v7);
  v16 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v17 = sub_24E80FFAC(v16);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v17;
  return result;
}

uint64_t sub_24E9F93FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224D68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9F9C60();
  sub_24F92D128();
  LOBYTE(v18) = 0;
  type metadata accessor for Game();
  sub_24E81A5FC(&qword_27F214950, type metadata accessor for Game);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for LeaderboardsWithActivityDataIntent() + 20));
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    v13 = v9[4];
    v14 = v9[5];
    v15 = v9[6];
    v18 = *v9;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v17[7] = 1;
    sub_24E7ED984(v18, v10);
    sub_24E7ED9D4();
    sub_24F92CCF8();
    sub_24E687F7C(v18, v19);
    LOBYTE(v18) = 2;
    type metadata accessor for Player(0);
    sub_24E81A5FC(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E9F9678@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v6);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224D58);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v24 - v8;
  v10 = type metadata accessor for LeaderboardsWithActivityDataIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24E9F9C60();
  v29 = v9;
  v14 = v30;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v15 = v26;
  v30 = v3;
  v16 = v12;
  v24 = v5;
  LOBYTE(v32) = 0;
  sub_24E81A5FC(&qword_27F214968, type metadata accessor for Game);
  v18 = v27;
  v17 = v28;
  sub_24F92CC68();
  sub_24E691974(v18, v16, type metadata accessor for Game);
  v36 = 1;
  sub_24E7ED8D0();
  sub_24F92CC18();
  v19 = v35;
  v20 = v16 + *(v10 + 20);
  v21 = v33;
  *v20 = v32;
  *(v20 + 16) = v21;
  *(v20 + 32) = v34;
  *(v20 + 48) = v19;
  LOBYTE(v32) = 2;
  sub_24E81A5FC(&qword_27F213E38, type metadata accessor for Player);
  v22 = v24;
  sub_24F92CC68();
  (*(v15 + 8))(v29, v17);
  sub_24E691974(v22, v16 + *(v10 + 24), type metadata accessor for Player);
  sub_24E9F9D60(v16, v25, type metadata accessor for LeaderboardsWithActivityDataIntent);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_24E9F9CB4(v16, type metadata accessor for LeaderboardsWithActivityDataIntent);
}

uint64_t sub_24E9F9AFC()
{
  v1 = 0x6F6272656461656CLL;
  if (*v0 != 1)
  {
    v1 = 0x726579616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_24E9F9B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E9F9EE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E9F9B80(uint64_t a1)
{
  v2 = sub_24E9F9C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9F9BBC(uint64_t a1)
{
  v2 = sub_24E9F9C60();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E9F9C60()
{
  result = qword_27F224D60;
  if (!qword_27F224D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224D60);
  }

  return result;
}

uint64_t sub_24E9F9CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E9F9D14()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E9F9D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E9F9DDC()
{
  result = qword_27F224D70;
  if (!qword_27F224D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224D70);
  }

  return result;
}

unint64_t sub_24E9F9E34()
{
  result = qword_27F224D78;
  if (!qword_27F224D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224D78);
  }

  return result;
}

unint64_t sub_24E9F9E8C()
{
  result = qword_27F224D80[0];
  if (!qword_27F224D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F224D80);
  }

  return result;
}

uint64_t sub_24E9F9EE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEE00746553647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_24E9F9FFC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void trackArcadeLaunchAttribution(_:)(uint64_t a1)
{
  v2 = [objc_opt_self() defaultService];
  v3 = sub_24F92B098();
  v4 = sub_24F92AE28();
  v6[4] = sub_24E9FA674;
  v6[5] = a1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24E9F9FFC;
  v6[3] = &block_descriptor_37;
  v5 = _Block_copy(v6);

  [v2 recordAppLaunchForBundleID:v3 additionalMetrics:v4 replyHandler:v5];
  _Block_release(v5);
}

void sub_24E9FA1E0(int a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_27F2105E0 != -1)
    {
      swift_once();
    }

    v6 = sub_24F92AAE8();
    __swift_project_value_buffer(v6, qword_27F39C4A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v8 = *(a3 + OBJC_IVAR____TtC12GameStoreKit29ArcadeLaunchAttributionAction_bundleIdentifier);
    v7 = *(a3 + OBJC_IVAR____TtC12GameStoreKit29ArcadeLaunchAttributionAction_bundleIdentifier + 8);
    v16 = MEMORY[0x277D837D0];
    v14 = v8;
    v15 = v7;

    sub_24F928438();
    sub_24E857CC8(&v14);
    sub_24F9283A8();
    swift_getErrorValue();
    v16 = v13;
    v9 = __swift_allocate_boxed_opaque_existential_1(&v14);
    (*(*(v13 - 8) + 16))(v9);
    sub_24F928458();
    sub_24E857CC8(&v14);
    sub_24F92A5A8();
  }

  else
  {
    if (qword_27F2105E0 != -1)
    {
      swift_once();
    }

    v10 = sub_24F92AAE8();
    __swift_project_value_buffer(v10, qword_27F39C4A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v12 = *(a3 + OBJC_IVAR____TtC12GameStoreKit29ArcadeLaunchAttributionAction_bundleIdentifier);
    v11 = *(a3 + OBJC_IVAR____TtC12GameStoreKit29ArcadeLaunchAttributionAction_bundleIdentifier + 8);
    v16 = MEMORY[0x277D837D0];
    v14 = v12;
    v15 = v11;

    sub_24F928438();
    sub_24E857CC8(&v14);
    sub_24F92A588();
  }
}

uint64_t sub_24E9FA580(uint64_t a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  trackArcadeLaunchAttribution(_:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  return sub_24F92A988();
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E9FA698()
{
  result = qword_27F216218;
  if (!qword_27F216218)
  {
    type metadata accessor for ArcadeLaunchAttributionAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216218);
  }

  return result;
}

uint64_t sub_24E9FA708()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  v1 = *MEMORY[0x277D54710];
  *(inited + 32) = *MEMORY[0x277D54710];
  v2 = *MEMORY[0x277D54720];
  v3 = *MEMORY[0x277D54738];
  *(inited + 40) = *MEMORY[0x277D54720];
  *(inited + 48) = v3;
  v4 = *MEMORY[0x277D54748];
  v5 = *MEMORY[0x277D54760];
  *(inited + 56) = *MEMORY[0x277D54748];
  *(inited + 64) = v5;
  v6 = *MEMORY[0x277D54770];
  *(inited + 72) = *MEMORY[0x277D54770];
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = sub_24E803B44(inited);
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_27F224E08 = v13;
  return result;
}

id sub_24E9FAA70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double static MainScreen.scale.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

void sub_24E9FABA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_24E9FAC0C()
{
  v0 = sub_24F922028();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = aBlock - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277CEC3B8]) init];
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v8 = sub_24F929768();
  sub_24F921FE8();

  if (v7)
  {
    (*(v1 + 16))(v3, v6, v0);
    v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v10 = swift_allocObject();
    (*(v1 + 32))(v10 + v9, v3, v0);
    aBlock[4] = sub_24E9FB05C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E9FABA0;
    aBlock[3] = &block_descriptor_38;
    v11 = _Block_copy(aBlock);
    v12 = v7;

    [v12 startWithCompletionBlock_];
    _Block_release(v11);
  }

  return (*(v1 + 8))(v6, v0);
}

void sub_24E9FAE6C(void *a1)
{
  sub_24F92C048();
  sub_24F929778();
  v2 = sub_24F929768();
  sub_24F921FE8();

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_24F93DE60;
    v4 = a1;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001FLL, 0x800000024FA4D4C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    sub_24F92CA38();
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    sub_24F92D038();
  }
}

uint64_t sub_24E9FAFD4()
{
  v1 = sub_24F922028();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24E9FB05C(void *a1)
{
  sub_24F922028();

  sub_24E9FAE6C(a1);
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E9FB0E4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t))
{
  sub_24F92C048();
  sub_24F929778();
  v7 = sub_24F929768();
  sub_24F921FE8();

  if (a1)
  {
    v8 = [a1 iaps];
    sub_24E69A5C4(0, &qword_27F22BD50);
    sub_24E69A5C4(0, &qword_27F21BCF8);
    sub_24E9FB6C0();
    v9 = sub_24F92AE38();
  }

  else
  {
    v9 = sub_24E60C780(MEMORY[0x277D84F90]);
  }

  a4(v9, a2);
}

uint64_t sub_24E9FB290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = objc_allocWithZone(MEMORY[0x277CEC3B0]);
  sub_24E69A5C4(0, &qword_27F22BD50);
  v12 = sub_24F92B588();
  v13 = [v11 initWithAdamIds_];

  v14 = [objc_allocWithZone(MEMORY[0x277CEC3A8]) initWithOptions_];
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v15 = sub_24F929768();
  sub_24F921FE8();

  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v23;
  *v18 = a2;
  v18[1] = v19;
  aBlock[4] = sub_24E9FB610;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6251C8;
  aBlock[3] = &block_descriptor_12_1;
  v20 = _Block_copy(aBlock);

  [v14 startWithCompletionBlock_];
  _Block_release(v20);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_24E9FB570()
{
  v1 = sub_24F922028();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E9FB610(void *a1, uint64_t a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E9FB0E4(a1, a2, v2 + v6, v7);
}

unint64_t sub_24E9FB6C0()
{
  result = qword_27F224E28;
  if (!qword_27F224E28)
  {
    sub_24E69A5C4(255, &qword_27F22BD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224E28);
  }

  return result;
}

uint64_t sub_24E9FB744(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_24E9FB7FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SetContactsIntegrationConsentAction()
{
  result = qword_27F224E30;
  if (!qword_27F224E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9FB8E8()
{
  result = sub_24F928AD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E9FB974(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9FC3C8();
  sub_24F92D128();
  v10[15] = *v3;
  v10[14] = 0;
  sub_24E9FC4D4();
  sub_24F92CD48();
  if (!v2)
  {
    type metadata accessor for SetContactsIntegrationConsentAction();
    v10[13] = 1;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E9FBB30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_24F928AD8();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E48);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for SetContactsIntegrationConsentAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9FC3C8();
  sub_24F92D108();
  if (!v2)
  {
    v11 = v10;
    v19 = v8;
    v12 = v22;
    v13 = v23;
    v26 = 0;
    sub_24E9FC41C();
    v14 = v24;
    sub_24F92CC68();
    v18 = v11;
    *v11 = v27;
    v25 = 1;
    sub_24E674184(&qword_27F254CB0);
    v17 = v5;
    sub_24F92CC68();
    (*(v12 + 8))(v7, v14);
    v15 = v18;
    (*(v20 + 32))(&v18[*(v19 + 20)], v17, v13);
    sub_24E9FC470(v15, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E9FBE38()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E9FBEF0()
{
  sub_24F92B218();
}

uint64_t sub_24E9FBF94()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E9FC048@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E9FC528();
  *a1 = result;
  return result;
}

void sub_24E9FC078(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x746553746F6ELL;
  v4 = 0xE500000000000000;
  v5 = 0x6E4974706FLL;
  if (*v1 != 2)
  {
    v5 = 0x64696C61766E69;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x74754F74706FLL;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24E9FC1A0()
{
  result = qword_27F224E40;
  if (!qword_27F224E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224E40);
  }

  return result;
}

uint64_t sub_24E9FC1F4()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0x746E65736E6F63;
  }
}

uint64_t sub_24E9FC23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65736E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t sub_24E9FC320(uint64_t a1)
{
  v2 = sub_24E9FC3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9FC35C(uint64_t a1)
{
  v2 = sub_24E9FC3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E9FC3C8()
{
  result = qword_27F224E50;
  if (!qword_27F224E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224E50);
  }

  return result;
}

unint64_t sub_24E9FC41C()
{
  result = qword_27F224E58;
  if (!qword_27F224E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224E58);
  }

  return result;
}

uint64_t sub_24E9FC470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetContactsIntegrationConsentAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E9FC4D4()
{
  result = qword_27F224E68;
  if (!qword_27F224E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224E68);
  }

  return result;
}

uint64_t sub_24E9FC528()
{
  v0 = sub_24F92CB88();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24E9FC574()
{
  result = qword_27F224E70;
  if (!qword_27F224E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224E70);
  }

  return result;
}

unint64_t sub_24E9FC5DC()
{
  result = qword_27F224E78;
  if (!qword_27F224E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224E78);
  }

  return result;
}

unint64_t sub_24E9FC634()
{
  result = qword_27F224E80;
  if (!qword_27F224E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224E80);
  }

  return result;
}

unint64_t sub_24E9FC68C()
{
  result = qword_27F224E88;
  if (!qword_27F224E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224E88);
  }

  return result;
}

uint64_t sub_24E9FC6F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224EA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9FCC58();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_24F92CD08();
  v8[13] = 2;
  sub_24F92CD08();
  return (*(v4 + 8))(v6, v3);
}