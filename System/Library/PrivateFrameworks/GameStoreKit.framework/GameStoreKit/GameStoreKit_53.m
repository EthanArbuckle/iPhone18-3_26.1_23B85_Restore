uint64_t sub_24EB6C854(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[3];
  v19 = a1[2];
  v20 = *a1;
  v4 = a1[4];
  v5 = *(a1 + 40);
  v7 = ((v4 - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0 && v5 == 2;
  swift_beginAccess();
  v8 = *(v1 + 152);
  *&v28[11] = *(v1 + 227);
  v9 = *(v1 + 200);
  v27[2] = *(v1 + 184);
  v27[3] = v9;
  *v28 = *(v1 + 216);
  v10 = *(v1 + 168);
  v27[0] = v8;
  v27[1] = v10;
  v11 = v28[26];
  if (*(&v8 + 1) == 2)
  {
    *&v22 = *&v27[0];
    *(&v22 + 1) = 2;
    v12 = *(v1 + 184);
    v13 = *(v1 + 216);
    v25 = *(v1 + 200);
    *v26 = v13;
    *&v26[10] = *(v1 + 226);
    v23 = *(v1 + 168);
    v24 = v12;
    v26[26] = v28[26];
    sub_24E60169C(v27, v21, &qword_27F229AE8);
    sub_24E601704(&v22, &qword_27F229AE8);
  }

  else
  {
    v22 = __PAIR128__(*(&v8 + 1), *&v27[0]);
    v14 = *(v1 + 184);
    v15 = *(v1 + 216);
    v25 = *(v1 + 200);
    *v26 = v15;
    *&v26[10] = *(v1 + 226);
    v23 = *(v1 + 168);
    v24 = v14;
    v26[26] = v28[26];
    sub_24E60169C(v27, v21, &qword_27F229AE8);
    result = sub_24E601704(&v22, &qword_27F229AE8);
    if (v11 & v7)
    {
      return result;
    }
  }

  v17 = *(v1 + 200);
  v24 = *(v1 + 184);
  v25 = v17;
  *v26 = *(v1 + 216);
  *&v26[11] = *(v1 + 227);
  v18 = *(v1 + 168);
  v22 = *(v1 + 152);
  v23 = v18;
  *(v1 + 152) = v20;
  *(v1 + 160) = v2;
  *(v1 + 168) = v19;
  *(v1 + 176) = v3;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  *(v1 + 200) = v20;
  *(v1 + 208) = v2;
  *(v1 + 216) = v19;
  *(v1 + 224) = v3;
  *(v1 + 232) = v4;
  *(v1 + 240) = v5;
  *(v1 + 241) = v7;
  *(v1 + 242) = 0;

  sub_24E90BCC4(v4, v5);

  sub_24E90BCC4(v4, v5);
  return sub_24E601704(&v22, &qword_27F229AE8);
}

uint64_t sub_24EB6CA7C()
{
  result = swift_beginAccess();
  v2 = *(v0 + 160);
  if (v2 != 2 && (v2 != 1 || *(v0 + 208) != 1))
  {
    v5 = sub_24EB6B1B0();
    if (*(v4 + 8) != 2)
    {
      *(v4 + 90) = 1;
    }

    return (v5)(v6, 0);
  }

  return result;
}

uint64_t sub_24EB6CB08()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  *&v20[11] = *(v0 + 227);
  v2 = *(v0 + 200);
  v19[2] = *(v0 + 184);
  v19[3] = v2;
  *v20 = *(v0 + 216);
  v3 = *(v0 + 168);
  v19[0] = v1;
  v19[1] = v3;
  v4 = v20[26];
  if (*(&v1 + 1) == 2)
  {
    *&v13 = *&v19[0];
    *(&v13 + 1) = 2;
    v5 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v5;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8);
    v6 = &v13;
  }

  else
  {
    v13 = __PAIR128__(*(&v1 + 1), *&v19[0]);
    v7 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v7;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8);
    result = sub_24E601704(&v13, &qword_27F229AE8);
    if ((v4 & 1) == 0)
    {
      return result;
    }

    v9 = *(v0 + 200);
    v11[2] = *(v0 + 184);
    v11[3] = v9;
    v12[0] = *(v0 + 216);
    *(v12 + 11) = *(v0 + 227);
    v10 = *(v0 + 168);
    v11[0] = *(v0 + 152);
    v11[1] = v10;
    *(v0 + 152) = xmmword_24F986140;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 227) = 0u;
    v6 = v11;
  }

  return sub_24E601704(v6, &qword_27F229AE8);
}

uint64_t sub_24EB6CCB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_24EB6CCF4(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  *(v2 + 144) = a1;

  a2(v5);
  *(v2 + 144) = 0;
}

uint64_t MetricsActivity.deinit()
{
  MEMORY[0x2530543E0](v0 + 16);

  sub_24E601704(v0 + 104, &qword_27F224FA0);

  sub_24EB6CE90(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240));
  return v0;
}

uint64_t MetricsActivity.__deallocating_deinit()
{
  MetricsActivity.deinit();

  return swift_deallocClassInstance();
}

id sub_24EB6CE50(id result, unsigned __int8 a2)
{
  v2 = a2 >> 6;
  if (v2 == 2)
  {
    return result;
  }

  if (v2 == 1)
  {
  }

  return result;
}

void sub_24EB6CE70(void *a1, unsigned __int8 a2)
{
  v2 = a2 >> 6;
  if (v2 == 2)
  {
  }

  else if (v2 == 1)
  {
  }
}

void sub_24EB6CE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  if (a2 != 2)
  {
    sub_24EA14B54(a1, a2, a3, a4, a5, a6);

    sub_24EA14B54(a7, a8, a9, a10, a11, a12);
  }
}

uint64_t sub_24EB6CF08@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_24EB6CFA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_24EB6CFE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 88) = v2;
  return result;
}

uint64_t sub_24EB6D02C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 96);
}

uint64_t sub_24EB6D0A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 104, a2, &qword_27F224FA0);
}

uint64_t sub_24EB6D104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 144);
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t GameCenterActivityFeedCard.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data;
  v4 = sub_24F920018();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GameCenterActivityFeedCard.__allocating_init(id:data:profileActionMetrics:profileAvatarActionMetrics:leaderboardActionMetrics:achievementActionMetrics:appActionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a2;
  v34 = a3;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  sub_24E60169C(a1, &v37, &qword_27F235830);
  if (*(&v38 + 1))
  {
    v19 = v38;
    *(v18 + 16) = v37;
    *(v18 + 32) = v19;
    *(v18 + 48) = v39;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v31 = a4;
    v32 = a5;
    v21 = a6;
    v22 = a8;
    v23 = v20;
    v24 = a7;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v35 = v23;
    v36 = v26;
    a8 = v22;
    a6 = v21;
    a7 = v24;
    a4 = v31;
    a5 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v27 = OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data;
  v28 = sub_24F920018();
  (*(*(v28 - 8) + 32))(v18 + v27, v33, v28);
  sub_24E6009C8(v34, v18 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_27F223CE8);
  sub_24E6009C8(a4, v18 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_27F223CE8);
  sub_24E6009C8(a5, v18 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_27F223CE8);
  sub_24E6009C8(a6, v18 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_27F223CE8);
  sub_24E6009C8(a7, v18 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_27F223CE8);
  sub_24E6009C8(a8, v18 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_impressionMetrics, &qword_27F213E68);
  return v18;
}

uint64_t GameCenterActivityFeedCard.init(id:data:profileActionMetrics:profileAvatarActionMetrics:leaderboardActionMetrics:achievementActionMetrics:appActionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v34 = a2;
  v35 = a3;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v38, &qword_27F235830);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v32 = a4;
    v33 = a5;
    v21 = a6;
    v22 = a8;
    v23 = v20;
    v24 = a7;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v36 = v23;
    v37 = v26;
    a8 = v22;
    a6 = v21;
    a7 = v24;
    a4 = v32;
    a5 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v27 = v42;
  *(v9 + 16) = v41;
  *(v9 + 32) = v27;
  *(v9 + 48) = v43;
  v28 = OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data;
  v29 = sub_24F920018();
  (*(*(v29 - 8) + 32))(v9 + v28, v34, v29);
  sub_24E6009C8(v35, v9 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_27F223CE8);
  sub_24E6009C8(a4, v9 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_27F223CE8);
  sub_24E6009C8(a5, v9 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_27F223CE8);
  sub_24E6009C8(a6, v9 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_27F223CE8);
  sub_24E6009C8(a7, v9 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_27F223CE8);
  sub_24E6009C8(a8, v9 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_impressionMetrics, &qword_27F213E68);
  return v9;
}

uint64_t GameCenterActivityFeedCard.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GameCenterActivityFeedCard.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t GameCenterActivityFeedCard.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v190 = a2;
  v182 = v3;
  v176 = *v3;
  v168 = sub_24F920018();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v165 = &v139 - v7;
  v183 = sub_24F9285B8();
  v181 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v164 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8);
  MEMORY[0x28223BE20](v9 - 8);
  v161 = &v139 - v10;
  v149 = sub_24F91F6B8();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF8);
  MEMORY[0x28223BE20](v12 - 8);
  v163 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v175 = &v139 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229B00);
  MEMORY[0x28223BE20](v16 - 8);
  v162 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v174 = (&v139 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v20 - 8);
  v160 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v159 = &v139 - v23;
  MEMORY[0x28223BE20](v24);
  v158 = &v139 - v25;
  MEMORY[0x28223BE20](v26);
  v173 = &v139 - v27;
  MEMORY[0x28223BE20](v28);
  v180 = &v139 - v29;
  MEMORY[0x28223BE20](v30);
  v179 = &v139 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v139 - v33;
  v35 = sub_24F92AC28();
  v177 = *(v35 - 8);
  v178 = v35;
  MEMORY[0x28223BE20](v35);
  v172 = &v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24F928388();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v157 = &v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v156 = &v139 - v41;
  MEMORY[0x28223BE20](v42);
  v154 = &v139 - v43;
  MEMORY[0x28223BE20](v44);
  v153 = &v139 - v45;
  MEMORY[0x28223BE20](v46);
  v152 = &v139 - v47;
  MEMORY[0x28223BE20](v48);
  v151 = &v139 - v49;
  MEMORY[0x28223BE20](v50);
  v150 = &v139 - v51;
  MEMORY[0x28223BE20](v52);
  v171 = &v139 - v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v139 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v139 - v58;
  v60 = 0xE400000000000000;
  v61 = a1;
  sub_24F928398();
  v170 = sub_24F928348();
  v63 = v62;
  v66 = *(v38 + 8);
  v64 = v38 + 8;
  v65 = v66;
  v66(v59, v37);
  if (!v63)
  {
    v70 = v61;
    v72 = 2036625250;
    v69 = v37;
    v71 = v182;
    goto LABEL_5;
  }

  v169 = v63;
  v60 = 0x800000024FA54470;
  sub_24F928398();
  sub_24F9282B8();
  v65(v56, v37);
  v68 = v177;
  v67 = v178;
  v69 = v37;
  if ((*(v177 + 48))(v34, 1, v178) == 1)
  {
    v70 = v61;

    sub_24E601704(v34, &qword_27F2213B0);
    v71 = v182;
    v72 = 0xD000000000000014;
LABEL_5:
    v73 = sub_24F92AC38();
    sub_24EB719A4(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v74 = v72;
    v74[1] = v60;
    v74[2] = v176;
    (*(*(v73 - 8) + 104))(v74, *MEMORY[0x277D22530], v73);
    swift_willThrow();
    (*(v181 + 8))(v190, v183);
    v65(v70, v69);
    swift_deallocPartialClassInstance();
    return v71;
  }

  (*(v68 + 32))(v172, v34, v67);
  v75 = v171;
  sub_24F928398();
  v146 = sub_24F928348();
  v145 = v76;
  v65(v75, v37);
  v140 = sub_24F91FF18();
  v77 = v155;
  v78 = sub_24F92ABB8();
  v79 = v182;
  v155 = v77;
  if (!v77)
  {
    v80 = v78;
    v81 = v61;
    v82 = v150;
    v184 = v81;
    sub_24F928398();
    sub_24F928348();
    v84 = v83;
    v65(v82, v69);
    v144 = v80;
    if (v84)
    {
      sub_24F91F488();
    }

    else
    {
      v85 = sub_24F91F4A8();
      (*(*(v85 - 8) + 56))(v179, 1, 1, v85);
    }

    v86 = v174;
    v87 = v151;
    sub_24F928398();
    sub_24F928348();
    v89 = v88;
    v65(v87, v69);
    if (v89)
    {
      sub_24F91F488();
    }

    else
    {
      v90 = sub_24F91F4A8();
      (*(*(v90 - 8) + 56))(v180, 1, 1, v90);
    }

    v91 = v152;
    sub_24F928398();
    v92 = sub_24F928348();
    v94 = v93;
    v65(v91, v69);
    if (v94)
    {
      v151 = v94;
      v152 = v92;
    }

    else
    {

      v152 = v170;
      v151 = v95;
    }

    v96 = v153;
    sub_24F928398();
    v97 = sub_24F928348();
    v99 = v98;
    v65(v96, v69);
    if (v99)
    {
      v100 = MEMORY[0x277D0C7D0];
      *v86 = v97;
      v86[1] = v99;
      v101 = v140;
      v102 = *(v140 - 8);
      (*(v102 + 104))(v86, *v100, v140);
      v103 = 0;
    }

    else
    {
      v101 = v140;
      v102 = *(v140 - 8);
      v103 = 1;
    }

    (*(v102 + 56))(v86, v103, 1, v101);
    v104 = v154;
    sub_24F928398();
    sub_24F928348();
    v106 = v105;
    v65(v104, v69);
    if (v106)
    {
      sub_24F91F488();
    }

    else
    {
      v107 = sub_24F91F4A8();
      (*(*(v107 - 8) + 56))(v173, 1, 1, v107);
    }

    v108 = v156;
    sub_24F928398();
    sub_24F928348();
    v110 = v109;
    v65(v108, v69);
    if (v110)
    {
      sub_24F9200C8();
    }

    else
    {
      v111 = sub_24F9200E8();
      (*(*(v111 - 8) + 56))(v175, 1, 1, v111);
    }

    v112 = v157;
    sub_24F928398();
    v113 = sub_24F928348();
    v143 = v64;
    v142 = v69;
    v141 = v65;
    if (v114)
    {
      v185 = v113;
      v186 = v114;
    }

    else
    {
      v115 = v147;
      sub_24F91F6A8();
      v116 = sub_24F91F668();
      v118 = v117;
      (*(v148 + 8))(v115, v149);
      v185 = v116;
      v186 = v118;
    }

    sub_24F92C7F8();
    v65(v112, v69);
    v119 = v188;
    v79[1] = v187;
    v79[2] = v119;
    *(v79 + 6) = v189;
    sub_24F928AD8();
    sub_24F928398();
    v120 = (v181 + 16);
    v176 = *(v181 + 16);
    v121 = v164;
    v122 = v183;
    v176(v164, v190, v183);
    v123 = v161;
    sub_24F929548();
    v124 = v79;
    sub_24E6009C8(v123, v79 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_27F223CE8);
    sub_24F928398();
    v125 = v190;
    v126 = v122;
    v127 = v176;
    v176(v121, v190, v126);
    sub_24F929548();
    sub_24E6009C8(v123, v124 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_27F223CE8);
    sub_24F928398();
    v128 = v125;
    v129 = v183;
    v127(v121, v128, v183);
    v157 = v120;
    sub_24F929548();
    sub_24E6009C8(v123, v124 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_27F223CE8);
    sub_24F928398();
    v127(v121, v190, v129);
    sub_24F929548();
    v130 = v182;
    sub_24E6009C8(v123, v182 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_27F223CE8);
    sub_24F928398();
    v131 = v190;
    v176(v121, v190, v129);
    sub_24F929548();
    sub_24E6009C8(v123, v130 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_27F223CE8);
    sub_24F929608();
    sub_24F928398();
    v176(v121, v131, v183);
    v132 = v165;
    sub_24F929548();
    sub_24E6009C8(v132, v130 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_impressionMetrics, &qword_27F213E68);
    sub_24E60169C(v179, v158, &qword_27F228530);
    sub_24E60169C(v180, v159, &qword_27F228530);
    v133 = v174;
    sub_24E60169C(v174, v162, &qword_27F229B00);
    v134 = v173;
    sub_24E60169C(v173, v160, &qword_27F228530);
    v135 = v175;
    sub_24E60169C(v175, v163, &qword_27F229AF8);
    v136 = v166;
    sub_24F91FFA8();
    (*(v181 + 8))(v190, v183);
    v141(v184, v142);
    v137 = v135;
    v71 = v130;
    sub_24E601704(v137, &qword_27F229AF8);
    sub_24E601704(v134, &qword_27F228530);
    sub_24E601704(v133, &qword_27F229B00);
    sub_24E601704(v180, &qword_27F228530);
    sub_24E601704(v179, &qword_27F228530);
    (*(v177 + 8))(v172, v178);
    (*(v167 + 32))(v130 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data, v136, v168);
    return v71;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_24EB6F394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F928388();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return sub_24EB6F468(v7, a2);
}

uint64_t sub_24EB6F468@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_24F928388();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = sub_24F91FF18();
  v52 = *(v15 - 8);
  v53 = v15;
  MEMORY[0x28223BE20](v15);
  v47 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = a1;
  sub_24F9281F8();
  v17 = sub_24F928E68();
  v18 = *(v17 - 8);
  v50 = *(v18 + 48);
  v19 = v50(v14, 1, v17);
  v48 = v6;
  v49 = v4;
  if (v19 == 1)
  {
    v20 = v3;
    sub_24E601704(v14, qword_27F221C40);
  }

  else
  {
    sub_24F928E78();
    (*(v18 + 8))(v14, v17);
    v21 = sub_24F928348();
    v23 = v22;
    v24 = *(v4 + 8);
    v25 = v6;
    v20 = v3;
    v24(v25, v3);
    if (v23)
    {
      v24(v51, v3);
      v26 = v47;
      *v47 = v21;
      v27 = MEMORY[0x277D0C7D0];
      v28 = 1;
      v29 = v54;
      v30 = v52;
      goto LABEL_5;
    }
  }

  v33 = v51;
  sub_24F9281F8();
  if (v50(v11, 1, v17) == 1)
  {
    (*(v49 + 8))(v33, v20);
    v34 = v11;
LABEL_11:
    sub_24E601704(v34, qword_27F221C40);
LABEL_13:
    v32 = 1;
    v31 = v53;
    v29 = v54;
    v30 = v52;
    return (*(v30 + 56))(v29, v32, 1, v31);
  }

  v35 = v48;
  sub_24F928E78();
  v45 = *(v18 + 8);
  v45(v11, v17);
  v36 = sub_24F928348();
  v38 = v37;
  v39 = *(v49 + 8);
  v39(v35, v20);
  if (!v38)
  {
    v39(v33, v20);
    goto LABEL_13;
  }

  v49 = v36;
  v40 = v46;
  sub_24F9281F8();
  if (v50(v40, 1, v17) == 1)
  {
    v39(v33, v20);

    v34 = v40;
    goto LABEL_11;
  }

  v42 = v48;
  sub_24F928E78();
  v45(v40, v17);
  v43 = sub_24F928348();
  v23 = v44;
  v39(v33, v20);
  v39(v42, v20);
  v30 = v52;
  if (!v23)
  {

    v32 = 1;
    v31 = v53;
    v29 = v54;
    return (*(v30 + 56))(v29, v32, 1, v31);
  }

  v26 = v47;
  *v47 = v49;
  v26[1] = v38;
  v26[2] = v43;
  v28 = 3;
  v27 = MEMORY[0x277D0C7D8];
  v29 = v54;
LABEL_5:
  v26[v28] = v23;
  v31 = v53;
  (*(v30 + 104))(v26, *v27, v53);
  (*(v30 + 32))(v29, v26, v31);
  v32 = 0;
  return (*(v30 + 56))(v29, v32, 1, v31);
}

JSValue __swiftcall GameCenterActivityFeedCard.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8);
  MEMORY[0x28223BE20](v4 - 8);
  v199 = v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v200 = v191 - v7;
  MEMORY[0x28223BE20](v8);
  v201 = v191 - v9;
  MEMORY[0x28223BE20](v10);
  v202 = v191 - v11;
  MEMORY[0x28223BE20](v12);
  v203 = v191 - v13;
  v210 = sub_24F928AD8();
  v206 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v15 = v191 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v196 = v191 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v191 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v191 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v191 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v27 - 8);
  v204 = v191 - v28;
  v205 = sub_24F929608();
  v207 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v198 = v191 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF8);
  MEMORY[0x28223BE20](v30 - 8);
  v209 = v191 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229B00);
  MEMORY[0x28223BE20](v32 - 8);
  v212 = v191 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v34 - 8);
  v208 = v191 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v213 = v191 - v37;
  MEMORY[0x28223BE20](v38);
  v215 = v191 - v39;
  v230 = sub_24F91FF18();
  v219 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v211 = v191 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = (v191 - v42);
  MEMORY[0x28223BE20](v44);
  v46 = v191 - v45;
  v229 = objc_opt_self();
  result.super.isa = [v229 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    goto LABEL_88;
  }

  isa = result.super.isa;
  v197 = v26;
  v195 = v23;
  v194 = v20;
  sub_24E65864C(v2 + 16, &v237);
  v49 = [v229 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v49)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v193 = v15;
  v214 = isa;
  sub_24F92C328();
  v216 = v2;
  v225 = OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data;
  v50 = sub_24F91FFB8();
  v51 = *(v50 + 16);
  if (v51)
  {
    v192 = in.super.isa;
    v234 = *(v219 + 16);
    v52 = (*(v219 + 80) + 32) & ~*(v219 + 80);
    v191[1] = v50;
    v53 = v50 + v52;
    v233 = (v219 + 88);
    v227 = (v219 + 96);
    v231 = *(v219 + 72);
    v232 = *MEMORY[0x277D0C7C8];
    v228 = *MEMORY[0x277D0C7D0];
    v218 = 0x800000024FA54590;
    v224 = *MEMORY[0x277D0C7D8];
    v222 = 0x800000024FA545B0;
    v223 = 0x800000024FA545D0;
    v235 = MEMORY[0x277D84F90];
    v54 = (v219 + 8);
    v55 = v230;
    v226 = v219 + 16;
    v217 = v46;
    while (1)
    {
      v57 = v234;
      v234(v46, v53, v55);
      v57(v43, v46, v55);
      v58 = (*v233)(v43, v55);
      if (v58 != v232)
      {
        if (v58 == v228)
        {
          (*v227)(v43, v55);
          v60 = *v43;
          v59 = v43[1];
          v61 = v223;
          v236[0] = 0xD000000000000016;
          v236[1] = v223;
          v236[2] = v60;
          v236[3] = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213638);
          v62 = sub_24F92CB58();

          result.super.isa = sub_24E76D644(0xD000000000000016, v61);
          if (v63)
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v62[(result.super.isa >> 6) + 8] |= 1 << SLOBYTE(result.super.isa);
          v64 = (v62[6] + 16 * result.super.isa);
          *v64 = 0xD000000000000016;
          v64[1] = v61;
          v65 = (v62[7] + 16 * result.super.isa);
          *v65 = v60;
          v65[1] = v59;
          v66 = v62[2];
          v67 = __OFADD__(v66, 1);
          v68 = v66 + 1;
          if (v67)
          {
            goto LABEL_83;
          }

          v62[2] = v68;

          sub_24E601704(v236, &qword_27F219F90);
          goto LABEL_18;
        }

        if (v58 == v224)
        {
          (*v227)(v43, v55);
          v70 = *v43;
          v69 = v43[1];
          v72 = v43[2];
          v71 = v43[3];
          v73 = v218;
          v236[8] = 0xD000000000000013;
          v236[9] = v218;
          v236[10] = v70;
          v236[11] = v69;
          v236[12] = 0xD000000000000016;
          v236[13] = v222;
          v236[14] = v72;
          v221 = v71;
          v236[15] = v71;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213638);
          v62 = sub_24F92CB58();

          result.super.isa = sub_24E76D644(0xD000000000000013, v73);
          if (v74)
          {
            goto LABEL_84;
          }

          v220 = v72;
          *(v62 + ((result.super.isa >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << SLOBYTE(result.super.isa);
          v75 = (v62[6] + 16 * result.super.isa);
          *v75 = 0xD000000000000013;
          v75[1] = v73;
          v76 = (v62[7] + 16 * result.super.isa);
          *v76 = v70;
          v76[1] = v69;
          v77 = v62[2];
          v67 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v67)
          {
            goto LABEL_85;
          }

          v62[2] = v78;
          v79 = v221;

          v80 = v222;
          result.super.isa = sub_24E76D644(0xD000000000000016, v222);
          if (v81)
          {
            goto LABEL_86;
          }

          *(v62 + ((result.super.isa >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << SLOBYTE(result.super.isa);
          v82 = (v62[6] + 16 * result.super.isa);
          *v82 = 0xD000000000000016;
          v82[1] = v80;
          v83 = (v62[7] + 16 * result.super.isa);
          *v83 = v220;
          v83[1] = v79;
          v84 = v62[2];
          v67 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v67)
          {
            goto LABEL_87;
          }

          v62[2] = v85;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
          swift_arrayDestroy();
          v46 = v217;
LABEL_18:
          (*v54)(v46, v230);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v86 = v235;
          }

          else
          {
            v86 = sub_24E6189A0(0, v235[2] + 1, 1, v235);
          }

          v88 = v86[2];
          v87 = v86[3];
          if (v88 >= v87 >> 1)
          {
            v86 = sub_24E6189A0((v87 > 1), v88 + 1, 1, v86);
          }

          v86[2] = v88 + 1;
          v235 = v86;
          v86[v88 + 4] = v62;
          v55 = v230;
          goto LABEL_6;
        }
      }

      v56 = *v54;
      (*v54)(v43, v55);
      v56(v46, v55);
LABEL_6:
      v53 += v231;
      if (!--v51)
      {

        in.super.isa = v192;
        v89 = v235;
        goto LABEL_26;
      }
    }
  }

  v89 = MEMORY[0x277D84F90];
LABEL_26:
  v237 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229B08);
  v90 = [v229 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  v91 = v216;
  v92.super.isa = v214;
  if (!v90)
  {
    goto LABEL_90;
  }

  sub_24F92C328();
  v93 = v215;
  sub_24F91FFD8();
  v94 = sub_24F91F4A8();
  v95 = *(v94 - 8);
  v96 = *(v95 + 48);
  v235 = (v95 + 48);
  v234 = v96;
  v97 = (v96)(v93, 1, v94);
  v233 = 0xD000000000000014;
  if (v97 == 1)
  {
    sub_24E601704(v93, &qword_27F228530);
    v98 = in.super.isa;
    v99 = 0;
  }

  else
  {
    v237 = sub_24F91F398();
    v238 = v100;
    (*(v95 + 8))(v93, v94);
    v101 = in.super.isa;
    v99 = sub_24F92CDE8();
    sub_24EB715C4(&v237);
  }

  v102 = [v229 valueWithObject:v99 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v102)
  {
    goto LABEL_91;
  }

  sub_24F92C328();
  v237 = sub_24F91FFF8();
  v238 = v103;
  v104 = [v229 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v104)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  sub_24F92C328();
  v105 = v213;
  sub_24F91FFC8();
  if ((v234)(v105, 1, v94) == 1)
  {
    sub_24E601704(v105, &qword_27F228530);
    v106 = in.super.isa;
    v107 = 0;
  }

  else
  {
    v237 = sub_24F91F398();
    v238 = v108;
    (*(v95 + 8))(v105, v94);
    v109 = in.super.isa;
    v107 = sub_24F92CDE8();
    sub_24EB715C4(&v237);
  }

  v110 = [v229 valueWithObject:v107 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v110)
  {
    goto LABEL_93;
  }

  sub_24F92C328();
  v237 = sub_24F91FFE8();
  v238 = v111;
  v112 = [v229 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v112)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  sub_24F92C328();
  v113 = v212;
  sub_24F91FF88();
  v114 = v219;
  v115 = v230;
  if ((*(v219 + 48))(v113, 1, v230) == 1)
  {
    sub_24E601704(v113, &qword_27F229B00);
  }

  else
  {
    v116 = v211;
    (*(v114 + 16))(v211, v113, v115);
    v117 = (*(v114 + 88))(v116, v115);
    if (v117 != *MEMORY[0x277D0C7C8] && v117 == *MEMORY[0x277D0C7D0])
    {
      v118 = v219;
      v119 = v95;
      v120 = v92.super.isa;
      v121 = v211;
      (*(v219 + 96))(v211, v115);
      v122 = v115;
      v124 = *v121;
      v123 = v121[1];
      v92.super.isa = v120;
      v95 = v119;
      (*(v118 + 8))(v113, v122);
      v237 = v124;
      v238 = v123;
      v125 = in.super.isa;
      v126 = sub_24F92CDE8();
      sub_24EB715C4(&v237);
      v91 = v216;
      goto LABEL_44;
    }

    v127 = *(v219 + 8);
    v127(v211, v115);
    v127(v113, v115);
    v91 = v216;
  }

  v128 = in.super.isa;
  v126 = 0;
LABEL_44:
  v129 = [v229 valueWithObject:v126 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v129)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_24F92C328();
  v130 = v208;
  sub_24F91FF98();
  if ((v234)(v130, 1, v94) == 1)
  {
    sub_24E601704(v130, &qword_27F228530);
    v131 = in.super.isa;
    v132 = 0;
  }

  else
  {
    v237 = sub_24F91F398();
    v238 = v133;
    (*(v95 + 8))(v130, v94);
    v134 = in.super.isa;
    v132 = sub_24F92CDE8();
    sub_24EB715C4(&v237);
  }

  v135 = v210;
  v136 = v209;
  v137 = [v229 valueWithObject:v132 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v137)
  {
    goto LABEL_96;
  }

  sub_24F92C328();
  sub_24F91FF78();
  v138 = sub_24F9200E8();
  v139 = *(v138 - 8);
  if ((*(v139 + 48))(v136, 1, v138) == 1)
  {
    sub_24E601704(v136, &qword_27F229AF8);
    v140 = in.super.isa;
    v141 = 0;
  }

  else
  {
    v237 = sub_24F9200D8();
    v238 = v142;
    (*(v139 + 8))(v136, v138);
    v143 = in.super.isa;
    v141 = sub_24F92CDE8();
    sub_24EB715C4(&v237);
  }

  v144 = v207;
  v145 = [v229 valueWithObject:v141 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v145)
  {
    goto LABEL_97;
  }

  sub_24F92C328();
  v146 = sub_24F920008();
  if (v147)
  {
    v237 = v146;
    v238 = v147;
    v148 = in.super.isa;
    v149 = sub_24F92CDE8();
    sub_24EB715C4(&v237);
  }

  else
  {
    v150 = in.super.isa;
    v149 = 0;
  }

  v151 = [v229 valueWithObject:v149 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v151)
  {
    goto LABEL_98;
  }

  sub_24F92C328();
  v152 = v204;
  sub_24E60169C(v91 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_impressionMetrics, v204, &qword_27F213E68);
  v153 = v205;
  if ((*(v144 + 48))(v152, 1, v205) == 1)
  {
    sub_24E601704(v152, &qword_27F213E68);
    v154 = in.super.isa;
    v155 = 0;
  }

  else
  {
    v156 = v198;
    (*(v144 + 32))(v198, v152, v153);
    v157 = in.super.isa;
    v155 = sub_24F92CDE8();
    (*(v144 + 8))(v156, v153);
  }

  v158 = v206;
  v159 = [v229 valueWithObject:v155 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v159)
  {
    goto LABEL_99;
  }

  sub_24F92C328();
  v160 = v203;
  sub_24E60169C(v91 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileActionMetrics, v203, &qword_27F223CE8);
  v161 = *(v158 + 48);
  if (v161(v160, 1, v135) == 1)
  {
    sub_24E601704(v160, &qword_27F223CE8);
    v162 = in.super.isa;
    v163 = 0;
  }

  else
  {
    v164 = v197;
    (*(v158 + 32))(v197, v160, v135);
    v165 = in.super.isa;
    v163 = sub_24F92CDE8();
    (*(v158 + 8))(v164, v135);
  }

  v166 = [v229 valueWithObject:v163 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v166)
  {
    goto LABEL_100;
  }

  sub_24F92C328();
  v167 = v202;
  sub_24E60169C(v91 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, v202, &qword_27F223CE8);
  if (v161(v167, 1, v135) == 1)
  {
    sub_24E601704(v167, &qword_27F223CE8);
    v168 = in.super.isa;
    v169 = 0;
  }

  else
  {
    v170 = v195;
    (*(v158 + 32))(v195, v167, v135);
    v171 = in.super.isa;
    v169 = sub_24F92CDE8();
    (*(v158 + 8))(v170, v135);
  }

  v172 = [v229 valueWithObject:v169 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v172)
  {
    goto LABEL_101;
  }

  sub_24F92C328();
  v173 = v201;
  sub_24E60169C(v91 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, v201, &qword_27F223CE8);
  if (v161(v173, 1, v135) == 1)
  {
    sub_24E601704(v173, &qword_27F223CE8);
    v174 = in.super.isa;
    v175 = 0;
  }

  else
  {
    v176 = v194;
    (*(v158 + 32))(v194, v173, v135);
    v177 = in.super.isa;
    v175 = sub_24F92CDE8();
    (*(v158 + 8))(v176, v135);
  }

  v178 = [v229 valueWithObject:v175 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v178)
  {
    goto LABEL_102;
  }

  sub_24F92C328();
  v179 = v200;
  sub_24E60169C(v91 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, v200, &qword_27F223CE8);
  if (v161(v179, 1, v135) == 1)
  {
    sub_24E601704(v179, &qword_27F223CE8);
    v180 = in.super.isa;
    v181 = 0;
  }

  else
  {
    v182 = v196;
    (*(v158 + 32))(v196, v179, v135);
    v183 = in.super.isa;
    v181 = sub_24F92CDE8();
    (*(v158 + 8))(v182, v135);
  }

  v184 = [v229 valueWithObject:v181 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v184)
  {
    goto LABEL_103;
  }

  sub_24F92C328();
  v185 = v199;
  sub_24E60169C(v91 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_appActionMetrics, v199, &qword_27F223CE8);
  if (v161(v185, 1, v135) == 1)
  {
    sub_24E601704(v185, &qword_27F223CE8);
    v186 = in.super.isa;
    v187 = 0;
  }

  else
  {
    v188 = v193;
    (*(v158 + 32))(v193, v185, v135);
    v189 = in.super.isa;
    v187 = sub_24F92CDE8();
    (*(v158 + 8))(v188, v135);
  }

  v190 = [v229 valueWithObject:v187 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v190)
  {
    sub_24F92C328();
    return v92;
  }

LABEL_104:
  __break(1u);
  return result;
}

uint64_t GameCenterActivityFeedCard.deinit()
{
  sub_24E6585F8(v0 + 16);
  v1 = OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data;
  v2 = sub_24F920018();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t GameCenterActivityFeedCard.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 16);
  v1 = OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data;
  v2 = sub_24F920018();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24EB71894@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = GameCenterActivityFeedCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EB719A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for GameCenterActivityFeedCard()
{
  result = qword_27F229B18;
  if (!qword_27F229B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EB71A40()
{
  sub_24F920018();
  if (v0 <= 0x3F)
  {
    sub_24EB71BE4(319, &qword_27F228DC0, MEMORY[0x277D21C88]);
    if (v1 <= 0x3F)
    {
      sub_24EB71BE4(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24EB71BE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t AppEventNotificationConfig.appEventId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppEventNotificationConfig.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AppEventNotificationConfig.detail.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_24EB71D98@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

char *AppEventNotificationConfig.__allocating_init(id:appEventId:title:detail:artworkUrl:displayTime:scheduledAction:notAuthorizedAction:failureAction:destinationUrl:scheduleClickEvent:cancelScheduleClickEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v23 = swift_allocObject();
  sub_24E601704(a1, &qword_27F235830);
  *(v23 + 2) = a2;
  *(v23 + 3) = a3;
  *(v23 + 4) = a4;
  *(v23 + 5) = a5;
  *(v23 + 6) = a6;
  *(v23 + 7) = a7;
  sub_24E6009C8(a8, &v23[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_artworkUrl], &qword_27F228530);
  v24 = OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_displayTime;
  v25 = sub_24F91F648();
  (*(*(v25 - 8) + 32))(&v23[v24], a9, v25);
  *&v23[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_scheduledAction] = a10;
  *&v23[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_notAuthorizedAction] = a11;
  *&v23[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_failureAction] = a12;
  v26 = OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_destinationUrl;
  v27 = sub_24F91F4A8();
  (*(*(v27 - 8) + 32))(&v23[v26], a13, v27);
  sub_24E6009C8(a14, &v23[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_scheduleClickEvent], &qword_27F21EB88);
  sub_24E6009C8(a15, &v23[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent], &qword_27F21EB88);
  return v23;
}

char *AppEventNotificationConfig.init(id:appEventId:title:detail:artworkUrl:displayTime:scheduledAction:notAuthorizedAction:failureAction:destinationUrl:scheduleClickEvent:cancelScheduleClickEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_24E601704(a1, &qword_27F235830);
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  *(v15 + 6) = a6;
  *(v15 + 7) = a7;
  sub_24E6009C8(a8, &v15[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_artworkUrl], &qword_27F228530);
  v23 = OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_displayTime;
  v24 = sub_24F91F648();
  (*(*(v24 - 8) + 32))(&v15[v23], a9, v24);
  *&v15[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_scheduledAction] = a10;
  *&v15[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_notAuthorizedAction] = a11;
  *&v15[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_failureAction] = a12;
  v25 = OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_destinationUrl;
  v26 = sub_24F91F4A8();
  (*(*(v26 - 8) + 32))(&v15[v25], a13, v26);
  sub_24E6009C8(a14, &v15[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_scheduleClickEvent], &qword_27F21EB88);
  sub_24E6009C8(a15, &v15[OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent], &qword_27F21EB88);
  return v15;
}

uint64_t AppEventNotificationConfig.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v164 = a2;
  v134 = sub_24F91F6B8();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v159 = *(v4 - 8);
  v160 = v4;
  MEMORY[0x28223BE20](v4);
  v140 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v6 - 8);
  v148 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v147 = &v124 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v10 - 8);
  v142 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v136 = &v124 - v13;
  MEMORY[0x28223BE20](v14);
  v149 = &v124 - v15;
  MEMORY[0x28223BE20](v16);
  v143 = (&v124 - v17);
  v18 = sub_24F91F4A8();
  v150 = *(v18 - 8);
  v151 = v18;
  MEMORY[0x28223BE20](v18);
  v146 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v145 = &v124 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v22 - 8);
  v152 = &v124 - v23;
  v24 = sub_24F91F648();
  v154 = *(v24 - 8);
  v155 = v24;
  MEMORY[0x28223BE20](v24);
  v141 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v153 = &v124 - v27;
  v28 = sub_24F928388();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v139 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v137 = &v124 - v32;
  MEMORY[0x28223BE20](v33);
  v144 = &v124 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v124 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v124 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v124 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v124 - v45;
  v47 = a1;
  sub_24F928398();
  v138 = sub_24F928348();
  v49 = v48;
  v52 = *(v29 + 8);
  v51 = v29 + 8;
  v50 = v52;
  v52(v46, v28);
  v156 = v49;
  if (!v49)
  {
    v62 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v64 = v63;
    *v63 = 0x746E657645707061;
    v65 = 0xEA00000000006449;
LABEL_7:
    v63[1] = v65;
    v63[2] = v158;
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x277D22530], v62);
    swift_willThrow();
    (*(v159 + 8))(v164, v160);
    (v50)(v47, v28);
    return v50;
  }

  v157 = v50;
  sub_24F928398();
  v53 = sub_24F928348();
  v50 = v157;
  v130 = v53;
  v55 = v54;
  v157(v43, v28);
  if (!v55)
  {

    v62 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v64 = v63;
    *v63 = 0x656C746974;
    v65 = 0xE500000000000000;
    goto LABEL_7;
  }

  sub_24F928398();
  v56 = v152;
  sub_24F928288();
  v50 = v157;
  v157(v40, v28);
  v131 = v28;
  v57 = v154;
  v58 = v155;
  v59 = (*(v154 + 48))(v56, 1, v155);
  v135 = v51;
  if (v59 == 1)
  {

    sub_24E601704(v56, &unk_27F22EC30);
    v60 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v61 = 0x5479616C70736964;
    v61[1] = 0xEB00000000656D69;
    v61[2] = v158;
    (*(*(v60 - 8) + 104))(v61, *MEMORY[0x277D22530], v60);
    swift_willThrow();
    (*(v159 + 8))(v164, v160);
    (v50)(v47, v131);
  }

  else
  {
    v67 = *(v57 + 32);
    v129 = v57 + 32;
    v128 = v67;
    v67(v153, v56, v58);
    v68 = v50;
    sub_24F928398();
    sub_24F928348();
    v70 = v69;
    v71 = v37;
    v72 = v131;
    v73 = v135;
    v68(v71, v131);
    if (v70)
    {
      v74 = v72;
      v152 = v47;
      v75 = v143;
      sub_24F91F488();

      v50 = v150;
      v76 = v151;
      v77 = *(v150 + 48);
      if (v77(v75, 1, v151) == 1)
      {

        sub_24E601704(v75, &qword_27F228530);
        v78 = sub_24F92AC38();
        sub_24E8F2E6C();
        swift_allocError();
        v79 = MEMORY[0x277D84F90];
        strcpy(v80, "destinationUrl");
        v80[15] = -18;
        *(v80 + 2) = v158;
        *(v80 + 3) = v79;
        (*(*(v78 - 8) + 104))(v80, *MEMORY[0x277D22540], v78);
        swift_willThrow();
        (*(v159 + 8))(v164, v160);
        v157(v152, v72);
        (*(v154 + 8))(v153, v155);
      }

      else
      {
        v127 = v55;
        v83 = *(v50 + 32);
        v154 = v50 + 32;
        v143 = v83;
        v83(v145, v75, v76);
        v84 = v144;
        v85 = v50;
        sub_24F928398();
        v126 = sub_24F928348();
        v125 = v86;
        v87 = v76;
        v88 = v157;
        v157(v84, v72);
        v89 = *(v85 + 56);
        v150 = v85 + 56;
        v89(v149, 1, 1, v87);
        v90 = v137;
        sub_24F928398();
        sub_24F928348();
        v92 = v91;
        v88(v90, v74);
        v93 = v164;
        v94 = v159;
        if (v92)
        {
          v95 = v136;
          sub_24F91F488();

          v96 = v151;
          if (v77(v95, 1, v151) == 1)
          {
            sub_24E601704(v95, &qword_27F228530);
          }

          else
          {
            v97 = v149;
            sub_24E601704(v149, &qword_27F228530);
            v143(v97, v95, v96);
            v89(v97, 0, 1, v96);
          }
        }

        type metadata accessor for Action();
        v98 = v144;
        v99 = v152;
        sub_24F928398();
        v150 = static Action.tryToMakeInstance(byDeserializing:using:)(v98, v93);
        v100 = v131;
        v101 = v157;
        v157(v98, v131);
        sub_24F928398();
        v137 = static Action.tryToMakeInstance(byDeserializing:using:)(v98, v164);
        v101(v98, v100);
        sub_24F928398();
        v136 = static Action.tryToMakeInstance(byDeserializing:using:)(v98, v164);
        v101(v98, v100);
        sub_24F928698();
        sub_24F928398();
        v102 = v94;
        v103 = *(v94 + 16);
        v104 = v140;
        v105 = v160;
        v103(v140, v164, v160);
        sub_24F929548();
        sub_24F928398();
        v103(v104, v164, v105);
        sub_24F929548();
        v106 = v139;
        sub_24F928398();
        v107 = sub_24F928348();
        if (v108)
        {
          v161 = v107;
          v162 = v108;
        }

        else
        {
          v109 = v132;
          sub_24F91F6A8();
          v110 = sub_24F91F668();
          v112 = v111;
          (*(v133 + 8))(v109, v134);
          v161 = v110;
          v162 = v112;
        }

        sub_24F92C7F8();
        (*(v102 + 8))(v164, v105);
        v113 = v131;
        v114 = v157;
        v157(v99, v131);
        v114(v106, v113);
        sub_24E6585F8(v163);
        v115 = v142;
        sub_24E6009C8(v149, v142, &qword_27F228530);
        v116 = v141;
        v117 = v155;
        v118 = v128;
        v128(v141, v153, v155);
        v119 = v143;
        v143(v146, v145, v151);
        v50 = swift_allocObject();
        v120 = v156;
        *(v50 + 16) = v138;
        *(v50 + 24) = v120;
        v121 = v127;
        *(v50 + 32) = v130;
        *(v50 + 40) = v121;
        v122 = v125;
        *(v50 + 48) = v126;
        *(v50 + 56) = v122;
        sub_24E6009C8(v115, v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_artworkUrl, &qword_27F228530);
        v118(v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_displayTime, v116, v117);
        v123 = v151;
        *(v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_scheduledAction) = v150;
        *(v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_notAuthorizedAction) = v137;
        *(v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_failureAction) = v136;
        v119(v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_destinationUrl, v146, v123);
        sub_24E6009C8(v147, v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_scheduleClickEvent, &qword_27F21EB88);
        sub_24E6009C8(v148, v50 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent, &qword_27F21EB88);
      }
    }

    else
    {

      v81 = sub_24F92AC38();
      sub_24E8F2E6C();
      v50 = v73;
      swift_allocError();
      strcpy(v82, "destinationUrl");
      v82[15] = -18;
      *(v82 + 2) = v158;
      (*(*(v81 - 8) + 104))(v82, *MEMORY[0x277D22530], v81);
      swift_willThrow();
      (*(v159 + 8))(v164, v160);
      v68(v47, v72);
      (*(v57 + 8))(v153, v155);
    }
  }

  return v50;
}

uint64_t AppEventNotificationConfig.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_artworkUrl, &qword_27F228530);
  v1 = OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_displayTime;
  v2 = sub_24F91F648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_destinationUrl;
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_scheduleClickEvent, &qword_27F21EB88);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent, &qword_27F21EB88);
  return v0;
}

uint64_t AppEventNotificationConfig.__deallocating_deinit()
{
  AppEventNotificationConfig.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EB73650@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AppEventNotificationConfig.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t type metadata accessor for AppEventNotificationConfig()
{
  result = qword_27F229B28;
  if (!qword_27F229B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EB736D0()
{
  sub_24EB738E8(319, &qword_27F218378, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_24F91F648();
    if (v1 <= 0x3F)
    {
      sub_24F91F4A8();
      if (v2 <= 0x3F)
      {
        sub_24EB738E8(319, &qword_27F21EC20, MEMORY[0x277D21BB8]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24EB738E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t TodayCardTriggerIdentifier.persistantStoreKey.getter()
{
  v1 = *v0;
  sub_24F92C888();

  v2 = 0xED000065726F7453;
  v3 = 0x7070416F5477656ELL;
  v4 = 0xEF676E6972696150;
  v5 = 0x686374615777656ELL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000024FA42E60;
  }

  if (v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024FA42E30;
  }

  if (v1 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (v1 <= 1)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x253050C20](v6, v7);

  return 0xD00000000000001BLL;
}

unint64_t TodayCardTriggerIdentifier.bagKey.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000016;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_24EB73AC8()
{
  v1 = 0x7070416F5477656ELL;
  v2 = 0x686374615777656ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

GameStoreKit::TodayCardTriggerIdentifier_optional __swiftcall TodayCardTriggerIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24EB73BD0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB73CB8()
{
  sub_24F92B218();
}

uint64_t sub_24EB73D8C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EB73E7C(unint64_t *a1@<X8>)
{
  v2 = 0xED000065726F7453;
  v3 = 0x7070416F5477656ELL;
  v4 = 0xEF676E6972696150;
  v5 = 0x686374615777656ELL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000024FA42E60;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024FA42E30;
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

unint64_t sub_24EB73F60()
{
  result = qword_27F229B38;
  if (!qword_27F229B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229B38);
  }

  return result;
}

uint64_t AppStoreDeepLink.init(url:refApp:refUrl:refKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a6;
  v12 = *(a6 + 8);
  v13 = sub_24F91F4A8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a7, a1, v13);
  v15 = sub_24F91F398();
  v17 = v16;
  (*(v14 + 8))(a1, v13);
  v18 = type metadata accessor for AppStoreDeepLink();
  v19 = (a7 + v18[5]);
  *v19 = v15;
  v19[1] = v17;
  v20 = (a7 + v18[6]);
  *v20 = a2;
  v20[1] = a3;
  v21 = (a7 + v18[7]);
  *v21 = a4;
  v21[1] = a5;
  v22 = a7 + v18[8];
  *v22 = v11;
  *(v22 + 8) = v12;
  v23 = a7 + v18[9];
  *v23 = a2;
  *(v23 + 8) = a3;
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  *(v23 + 32) = v11;
  *(v23 + 40) = v12;

  return sub_24E90BCC4(v11, v12);
}

uint64_t type metadata accessor for AppStoreDeepLink()
{
  result = qword_27F229B40;
  if (!qword_27F229B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EB74210@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v64 - v7;
  v9 = sub_24F91F4A8();
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x28223BE20](v9);
  v75 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v73 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v78 = type metadata accessor for AppStoreDeepLink();
  v20 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24F928328())
  {
    (*(v12 + 8))(a1, v11);
    return (*(v20 + 56))(a2, 1, 1, v78);
  }

  v72 = a2;
  sub_24F928398();
  v23 = sub_24F928348();
  v25 = v24;
  v26 = v19;
  v27 = *(v12 + 8);
  v27(v26, v11);
  if (!v25)
  {
    v27(a1, v11);
    goto LABEL_7;
  }

  v70 = a1;
  v71 = v27;
  sub_24F91F488();
  v29 = v76;
  v28 = v77;
  if ((*(v76 + 48))(v8, 1, v77) == 1)
  {
    v71(v70, v11);

    sub_24E601704(v8, &qword_27F228530);
LABEL_7:
    a2 = v72;
    return (*(v20 + 56))(a2, 1, 1, v78);
  }

  v31 = *(v29 + 32);
  v69 = v22;
  v32 = v75;
  v31(v75, v8, v28);
  v33 = v69;
  (*(v29 + 16))(v69, v32, v28);
  v34 = v78;
  v35 = &v33[*(v78 + 20)];
  v36 = v33;
  *v35 = v23;
  v35[1] = v25;
  v37 = v70;
  sub_24F928398();
  v38 = sub_24F928348();
  v40 = v39;
  v41 = v71;
  v71(v16, v11);
  v42 = &v36[*(v34 + 24)];
  v67 = v40;
  v68 = v38;
  *v42 = v38;
  v42[1] = v40;

  sub_24F928398();
  v43 = sub_24F928348();
  v45 = v44;
  v41(v16, v11);
  v46 = &v36[*(v34 + 28)];
  v66 = v43;
  *v46 = v43;
  v46[1] = v45;

  sub_24F928398();
  v47 = sub_24F928348();
  v64 = v48;
  v65 = v47;
  v41(v16, v11);
  v49 = v73;
  sub_24F928398();
  v50 = v74;
  sub_24F9281F8();
  v41(v49, v11);
  v51 = sub_24F928E68();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_24E601704(v50, qword_27F221C40);
    v53 = 0;
  }

  else
  {
    v53 = sub_24F928E38();
    (*(v52 + 8))(v50, v51);
  }

  v54 = v72;
  ReferrerData.Kind.init(rawValue:)(v65, v64, v53, &v79);
  v71(v37, v11);
  (*(v76 + 8))(v75, v77);
  v55 = v79;
  v56 = v80;
  v57 = v78;
  v59 = v68;
  v58 = v69;
  v60 = &v69[*(v78 + 32)];
  *v60 = v79;
  v60[8] = v56;
  v61 = v58 + *(v57 + 36);
  v62 = v66;
  v63 = v67;
  *v61 = v59;
  *(v61 + 8) = v63;
  *(v61 + 16) = v62;
  *(v61 + 24) = v45;
  *(v61 + 32) = v55;
  *(v61 + 40) = v56;
  sub_24EB76568(v58, v54);
  (*(v20 + 56))(v54, 0, 1, v57);
  return sub_24E90BCC4(v55, v56);
}

uint64_t sub_24EB748FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24F928388();
  v9 = MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8, v9);
  if (swift_dynamicCast())
  {
    v12 = v16;
    v18 = v15;
    v19 = v16;
    v13 = v17;
    v20 = v17;
    *(a4 + 16) = v15;
    *(a4 + 32) = v12;
    *(a4 + 48) = v13;
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    result = sub_24E601704(&v15, &qword_27F235830);
    a1 = 0;
    a2 = 0;
    *(a4 + 48) = 0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  return result;
}

uint64_t AppStoreDeepLink.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F4A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppStoreDeepLink.urlString.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreDeepLink() + 20));

  return v1;
}

uint64_t AppStoreDeepLink.refApp.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreDeepLink() + 24));

  return v1;
}

uint64_t AppStoreDeepLink.refUrl.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreDeepLink() + 28));

  return v1;
}

uint64_t AppStoreDeepLink.refKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppStoreDeepLink() + 32);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_24E90BCC4(v4, v5);
}

uint64_t AppStoreDeepLink.referral.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppStoreDeepLink() + 36);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v3 + 40);
  *(a1 + 40) = v6;

  return sub_24E90BCC4(v5, v6);
}

unint64_t sub_24EB74C5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  v3 = type metadata accessor for AppStoreDeepLink();
  v4 = (v1 + v3[5]);
  v5 = v4[1];
  v19[0] = *v4;
  v19[1] = v5;

  sub_24F92C7F8();
  v6 = sub_24E6087F0(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F2134E0);
  v22 = v6;
  if (*(v1 + v3[6] + 8))
  {

    sub_24F92C7F8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81F808(v19, 0x707041666572, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v22 = v6;
  }

  if (*(v1 + v3[7] + 8))
  {

    sub_24F92C7F8();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81F808(v19, 0x6C7255666572, 0xE600000000000000, v8);
    v22 = v6;
  }

  v9 = (v1 + v3[8]);
  v10 = *(v9 + 8);
  v20 = *v9;
  v21 = v10;
  ReferrerData.Kind.rawValue.getter();
  v12 = v11;

  if (v12)
  {
    sub_24F92C7F8();
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81F808(v19, 0x646E694B666572, 0xE700000000000000, v13);
    v22 = v6;
  }

  else
  {
    sub_24E98FC58(0x646E694B666572, 0xE700000000000000, v19);
    sub_24E601704(v19, &qword_27F235830);
  }

  ReferrerData.Kind.rawValue.getter();
  v15 = v14;

  if (v15)
  {
    v20 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF0);
    sub_24EB765CC();
    sub_24F92C7F8();
    v16 = v22;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81F808(v19, 0x43646E694B666572, 0xEE00747865746E6FLL, v17);
    return v16;
  }

  else
  {
    sub_24E98FC58(0x43646E694B666572, 0xEE00747865746E6FLL, v19);
    sub_24E601704(v19, &qword_27F235830);
    return v22;
  }
}

uint64_t _s12GameStoreKit03AppB8DeepLinkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_24F91F418() & 1) == 0)
  {
    goto LABEL_27;
  }

  v4 = type metadata accessor for AppStoreDeepLink();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_27;
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      goto LABEL_27;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v14)
  {
    goto LABEL_27;
  }

  v16 = v4[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (!v18)
  {
    if (!v20)
    {
      goto LABEL_25;
    }

LABEL_27:
    v35 = 0;
    return v35 & 1;
  }

  if (!v20)
  {
    goto LABEL_27;
  }

  v21 = *v17 == *v19 && v18 == v20;
  if (!v21 && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_25:
  v22 = v4[8];
  v23 = *(a1 + v22 + 8);
  v46 = *(a1 + v22);
  LOBYTE(v47) = v23;
  v24 = a2 + v22;
  v25 = *(v24 + 8);
  v41 = *v24;
  LOBYTE(v42) = v25;
  sub_24E90BCC4(v46, v23);
  sub_24E90BCC4(v41, v25);
  v26 = _s12GameStoreKit12ReferrerDataV4KindO2eeoiySbAE_AEtFZ_0(&v46, &v41);
  sub_24E7B6564(v41, v42);
  sub_24E7B6564(v46, v47);
  if ((v26 & 1) == 0)
  {
    goto LABEL_27;
  }

  v27 = a1 + v4[9];
  v28 = *(v27 + 24);
  v29 = *(v27 + 32);
  v30 = *(v27 + 40);
  v46 = *v27;
  v47 = *(v27 + 8);
  v48 = v28;
  v49 = v29;
  v50 = v30;
  v31 = a2 + v4[9];
  v32 = *(v31 + 24);
  v33 = *(v31 + 32);
  v34 = *(v31 + 40);
  v41 = *v31;
  v42 = *(v31 + 8);
  v43 = v32;
  v44 = v33;
  v45 = v34;

  sub_24E90BCC4(v29, v30);

  sub_24E90BCC4(v33, v34);
  v35 = _s12GameStoreKit12ReferrerDataV2eeoiySbAC_ACtFZ_0(&v46, &v41);
  v36 = v44;
  v37 = v45;

  sub_24E7B6564(v36, v37);
  v38 = v49;
  v39 = v50;

  sub_24E7B6564(v38, v39);
  return v35 & 1;
}

uint64_t _s12GameStoreKit03AppB8DeepLinkV17trampolineMetrics4from3forSDySSs11AnyHashableVGSg10Foundation3URLVSg_SStFZ_0(uint64_t a1)
{
  v62 = a1;
  v64[4] = *MEMORY[0x277D85DE8];
  v1 = sub_24F92B138();
  v56 = *(v1 - 8);
  v57 = v1;
  MEMORY[0x28223BE20](v1);
  v55 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F91EB98();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F98);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52 - v10;
  v12 = sub_24F91EC58();
  v61 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v59 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52 - v15;
  v17 = sub_24F91F4A8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v60 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F92B358();
  result = 0;
  if (v20)
  {
    sub_24E99091C(v62, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      v22 = &qword_27F228530;
      v23 = v16;
    }

    else
    {
      v24 = v60;
      (*(v18 + 32))(v60, v16, v17);
      sub_24F91EBE8();
      v25 = v61;
      v26 = v12;
      if ((*(v61 + 48))(v11, 1, v12) != 1)
      {
        v27 = v59;
        (*(v25 + 32))(v59, v11, v26);
        v28 = sub_24F91EBC8();
        if (v28)
        {
          v29 = v28;
          v52 = v26;
          v53 = v17;
          v54 = v18;
          if (*(v28 + 16))
          {
            v30 = *(v28 + 16);
            v31 = 0;
            v62 = v4 + 16;
            while (1)
            {
              if (v31 >= *(v29 + 16))
              {
                __break(1u);
              }

              (*(v4 + 16))(v6, v29 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v31, v3);
              if (sub_24F91EB78() == 0xD000000000000011 && 0x800000024FA547C0 == v32)
              {
                break;
              }

              v33 = sub_24F92CE08();

              if (v33)
              {
                goto LABEL_20;
              }

              ++v31;
              (*(v4 + 8))(v6, v3);
              if (v30 == v31)
              {
                goto LABEL_17;
              }
            }

LABEL_20:

            v34 = v58;
            (*(v4 + 32))(v58, v6, v3);
            sub_24F91EB88();
            v36 = v35;
            (*(v4 + 8))(v34, v3);
            v37 = v54;
            v38 = v52;
            if (v36)
            {
              v39 = v55;
              sub_24F92B128();
              v40 = sub_24F92B0E8();
              v42 = v41;

              (*(v56 + 8))(v39, v57);
              v43 = v53;
              v44 = v61;
              v45 = v59;
              if (v42 >> 60 != 15)
              {
                v46 = objc_opt_self();
                v47 = sub_24F91F4C8();
                v64[0] = 0;
                v48 = [v46 JSONObjectWithData:v47 options:0 error:v64];

                if (v48)
                {
                  v49 = v64[0];
                  sub_24F92C648();
                  sub_24E71CBAC(v40, v42);
                  swift_unknownObjectRelease();
                  (*(v44 + 8))(v45, v38);
                  (*(v37 + 8))(v60, v43);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF0);
                  if (swift_dynamicCast())
                  {
                    return v63;
                  }

                  return 0;
                }

                v50 = v64[0];
                v51 = sub_24F91F278();

                swift_willThrow();
                sub_24E71CBAC(v40, v42);
              }

              (*(v44 + 8))(v45, v38);
              (*(v37 + 8))(v60, v43);
            }

            else
            {
              (*(v61 + 8))(v59, v52);
              (*(v37 + 8))(v60, v53);
            }
          }

          else
          {
LABEL_17:

            (*(v61 + 8))(v59, v52);
            (*(v54 + 8))(v60, v53);
          }
        }

        else
        {
          (*(v25 + 8))(v27, v26);
          (*(v18 + 8))(v24, v17);
        }

        return 0;
      }

      (*(v18 + 8))(v24, v17);
      v22 = &qword_27F219F98;
      v23 = v11;
    }

    sub_24E601704(v23, v22);
    return 0;
  }

  return result;
}

uint64_t _s12GameStoreKit03AppB8DeepLinkV13widgetMetrics4from3forSDySSs11AnyHashableVGSg10Foundation3URLVSg_SStFZ_0(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = sub_24F92B138();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  v63 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F91EB98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v59 - v11;
  v13 = sub_24F91EC58();
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  MEMORY[0x28223BE20](v13);
  v67 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v59 - v17;
  v19 = sub_24F91F4A8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v70 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24F92B358();
  result = 0;
  if (v22)
  {
    sub_24E99091C(a1, v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      v24 = &qword_27F228530;
      v25 = v18;
    }

    else
    {
      v26 = v70;
      (*(v20 + 32))(v70, v18, v19);
      sub_24F91EBE8();
      v27 = v68;
      v28 = v69;
      if ((*(v69 + 48))(v12, 1, v68) != 1)
      {
        v29 = v67;
        (*(v28 + 32))(v67, v12, v27);
        v30 = sub_24F91EBC8();
        if (!v30)
        {
          (*(v28 + 8))(v29, v27);
          (*(v20 + 8))(v70, v19);
          return 0;
        }

        v31 = v30;
        v60 = v19;
        v61 = v20;
        v62 = *(v30 + 16);
        if (!v62)
        {
LABEL_17:

          (*(v69 + 8))(v67, v68);
          (*(v61 + 8))(v70, v60);
          return 0;
        }

        v32 = 0;
        v33 = 0x7363697274656DLL;
        while (1)
        {
          if (v32 >= *(v31 + 16))
          {
            __break(1u);
          }

          (*(v5 + 16))(v7, v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v32, v4);
          if (sub_24F91EB78() == v33 && v34 == 0xE700000000000000)
          {
            break;
          }

          v35 = v33;
          v36 = sub_24F92CE08();

          if (v36)
          {
            goto LABEL_20;
          }

          ++v32;
          (*(v5 + 8))(v7, v4);
          v33 = v35;
          if (v62 == v32)
          {
            goto LABEL_17;
          }
        }

LABEL_20:

        v37 = v66;
        (*(v5 + 32))(v66, v7, v4);
        sub_24F91EB88();
        v39 = v38;
        (*(v5 + 8))(v37, v4);
        v41 = v60;
        v40 = v61;
        if (!v39)
        {
          (*(v69 + 8))(v67, v68);
          (*(v40 + 8))(v70, v41);
          return 0;
        }

        v42 = v63;
        sub_24F92B128();
        v43 = sub_24F92B0E8();
        v45 = v44;

        (*(v64 + 8))(v42, v65);
        v46 = v70;
        v47 = v67;
        if (v45 >> 60 != 15)
        {
          v48 = objc_opt_self();
          v49 = sub_24F91F4C8();
          *&v72[0] = 0;
          v50 = [v48 JSONObjectWithData:v49 options:0 error:v72];

          if (!v50)
          {
            v56 = *&v72[0];
            v57 = v41;
            v58 = sub_24F91F278();

            swift_willThrow();
            sub_24E71CBAC(v43, v45);

            (*(v69 + 8))(v47, v68);
            (*(v40 + 8))(v46, v57);
            return 0;
          }

          v51 = *&v72[0];
          sub_24F92C648();
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF0);
          if (swift_dynamicCast())
          {
            v52 = v71;
            v53 = v68;
            if (*(v71 + 16))
            {
              v54 = sub_24E76D644(0x6449746567646977, 0xE800000000000000);
              if (v55)
              {
                sub_24E65864C(*(v52 + 56) + 40 * v54, v72);
                sub_24E71CBAC(v43, v45);
                (*(v69 + 8))(v47, v53);
                (*(v40 + 8))(v46, v41);
                sub_24E601704(v72, &qword_27F235830);
                return v52;
              }
            }

            sub_24E71CBAC(v43, v45);

            (*(v69 + 8))(v47, v53);
            (*(v40 + 8))(v46, v41);
            v73 = 0;
            memset(v72, 0, sizeof(v72));
            v24 = &qword_27F235830;
            v25 = v72;
            goto LABEL_6;
          }

          sub_24E71CBAC(v43, v45);
        }

        (*(v69 + 8))(v47, v68);
        (*(v40 + 8))(v46, v41);
        return 0;
      }

      (*(v20 + 8))(v26, v19);
      v24 = &qword_27F219F98;
      v25 = v12;
    }

LABEL_6:
    sub_24E601704(v25, v24);
    return 0;
  }

  return result;
}

uint64_t sub_24EB76338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F4A8();
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

uint64_t sub_24EB7640C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F4A8();
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

void sub_24EB764C8()
{
  sub_24F91F4A8();
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EB76568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreDeepLink();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EB765CC()
{
  result = qword_27F229B58[0];
  if (!qword_27F229B58[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229AF0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F229B58);
  }

  return result;
}

id sub_24EB76690@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = 104;
  result = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(a1, &v4, 1, 2);
  *a2 = result;
  return result;
}

uint64_t sub_24EB76738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CompleteOnboardWelcomeAction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24EB78ACC(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24EB78C18(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F9866A0;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EB76968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_24F928AE8();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = type metadata accessor for CompleteOnboardWelcomeAction();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v6 = sub_24F920988();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v4[35] = v7;
  v4[36] = *(v7 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v8 = sub_24F921338();
  v4[41] = v8;
  v4[42] = *(v8 - 8);
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EB76BAC, 0, 0);
}

uint64_t sub_24EB76BAC()
{
  v1 = objc_opt_self();
  v0[44] = v1;
  v2 = [v1 standardUserDefaults];
  v3 = sub_24F92B098();
  [v2 setBool:0 forKey:v3];

  v4 = [objc_opt_self() shared];
  if (v4)
  {
    v7 = v4;
    [v4 setForcePrivacyNotice_];

    v8 = swift_task_alloc();
    v0[45] = v8;
    *v8 = v0;
    v8[1] = sub_24EB76CF8;
    v4 = v0[43];
    v5 = v0[41];
    v6 = v5;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x28217F228](v4, v5, v6);
}

uint64_t sub_24EB76CF8()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_24EB7822C;
  }

  else
  {
    v2 = sub_24EB76E0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB76E0C()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[47] = __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "CompleteOnboardWelcomeActionImplementation: Getting authenticated player..", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  sub_24F921318();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = swift_task_alloc();
  v0[48] = v7;
  *v7 = v0;
  v7[1] = sub_24EB76F84;

  return MEMORY[0x282165230](v5, v6);
}

uint64_t sub_24EB76F84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_24EB78304;
  }

  else
  {
    v4 = sub_24EB77098;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EB77098()
{
  v1 = v0[49];
  if (*(v1 + 16))
  {
    v3 = v0[39];
    v2 = v0[40];
    v4 = v0[35];
    v5 = v0[36];
    (*(v5 + 16))(v3, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    (*(v5 + 32))(v2, v3, v4);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    sub_24F9212E8();
    v6 = v0[10];
    v7 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
    sub_24F920978();
    v8 = swift_task_alloc();
    v0[51] = v8;
    *v8 = v0;
    v8[1] = sub_24EB77324;
    v9 = v0[40];
    v10 = v0[34];

    return MEMORY[0x282165200](v10, v9, v6, v7);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    v11 = sub_24F9220B8();
    v12 = sub_24F92BDB8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24E5DD000, v11, v12, "CompleteOnboardWelcomeActionImplementation: Unable to acknowledge Game Center GDPR because there is no signed in player.", v13, 2u);
      MEMORY[0x2530542D0](v13, -1, -1);
    }

    sub_24F921318();
    v14 = v0[15];
    v15 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v14);
    v16 = swift_task_alloc();
    v0[53] = v16;
    *v16 = v0;
    v16[1] = sub_24EB77620;

    return MEMORY[0x282165230](v14, v15);
  }
}

uint64_t sub_24EB77324()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  if (v0)
  {
    v3 = sub_24EB783FC;
  }

  else
  {
    v3 = sub_24EB7748C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EB7748C()
{
  v1 = v0[31];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  sub_24EB78ACC(v2, v1);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[31];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = *v6;
    sub_24EB78DB8(v6);
    *(v7 + 4) = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteOnboardWelcomeActionImplementation: (GC) Acknowledged Game Center GDPR (version %ld)", v7, 0xCu);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
    sub_24EB78DB8(v0[31]);
  }

  (*(v0[36] + 8))(v0[40], v0[35]);
  sub_24F921318();
  v9 = v0[15];
  v10 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v9);
  v11 = swift_task_alloc();
  v0[53] = v11;
  *v11 = v0;
  v11[1] = sub_24EB77620;

  return MEMORY[0x282165230](v9, v10);
}

uint64_t sub_24EB77620(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_24EB7860C;
  }

  else
  {
    v4 = sub_24EB77734;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EB77734()
{
  v1 = *(v0 + 432);
  if (!*(v1 + 16))
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 96);
LABEL_10:
    v20 = *(v0 + 192);
    if ((*(v20 + 16) & 1) == 0)
    {
      v21 = *(v20 + 8);
      v22 = [*(v0 + 352) standardUserDefaults];
      sub_24F005DA4(v21);
    }

    v23 = *(v0 + 216);
    v24 = *(v0 + 208);
    v25 = *(v0 + 176);
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
    (*(v23 + 104))(v25, *MEMORY[0x277D21CA8], v24);

    v26 = *(v0 + 8);

    return v26();
  }

  v2 = *(v0 + 440);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  (*(v6 + 16))(v3, v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  (*(v6 + 32))(v4, v3, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v7 = sub_24F920FD8();
  if (v2)
  {
    (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
    v9 = v2;
    v10 = sub_24F9220B8();
    v11 = sub_24F92BD98();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_24E5DD000, v10, v11, "CompleteOnboardWelcomeActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v12, 0xCu);
      sub_24E6D44CC(v13);
      MEMORY[0x2530542D0](v13, -1, -1);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  *(v0 + 448) = v8;
  v16 = v7;
  v17 = v8;
  v18 = swift_task_alloc();
  *(v0 + 456) = v18;
  *v18 = v0;
  v18[1] = sub_24EB77AAC;

  return sub_24EB78E14(v16, v17);
}

uint64_t sub_24EB77AAC(char a1)
{
  *(*v1 + 480) = a1;

  return MEMORY[0x2822009F8](sub_24EB77BCC, 0, 0);
}

uint64_t sub_24EB77BCC()
{
  v1 = *(v0 + 480);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  if (v1 == 1)
  {
    if (v4)
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24E5DD000, v2, v3, "CompleteOnboardWelcomeActionImplementation: The player is an adult.", v5, 2u);
      MEMORY[0x2530542D0](v5, -1, -1);
    }

    v6 = *(v0 + 232);
    v7 = *(v0 + 192);

    v8 = *(v6 + 24);
    v9 = type metadata accessor for SetContactsIntegrationConsentAction();
    *(v0 + 160) = v9;
    *(v0 + 168) = sub_24EB7910C(&qword_27F216388, type metadata accessor for SetContactsIntegrationConsentAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    v11 = *(v9 + 20);
    v12 = sub_24F928AD8();
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1 + v11, v7 + v8, v12);
    *boxed_opaque_existential_1 = 2;
    v13 = swift_task_alloc();
    *(v0 + 464) = v13;
    v14 = type metadata accessor for CompleteOnboardWelcomeActionImplementation();
    WitnessTable = swift_getWitnessTable();
    *v13 = v0;
    v13[1] = sub_24EB77F7C;
    v16 = *(v0 + 224);
    v17 = *(v0 + 184);

    return sub_24F1487B0(v16, v0 + 136, v17, v14, WitnessTable);
  }

  else
  {
    v19 = *(v0 + 304);
    v20 = *(v0 + 280);
    v21 = *(v0 + 288);
    if (v4)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24E5DD000, v2, v3, "CompleteOnboardWelcomeActionImplementation: The player is not an adult.", v22, 2u);
      MEMORY[0x2530542D0](v22, -1, -1);
    }

    (*(v21 + 8))(v19, v20);
    v23 = *(v0 + 192);
    if ((*(v23 + 16) & 1) == 0)
    {
      v24 = *(v23 + 8);
      v25 = [*(v0 + 352) standardUserDefaults];
      sub_24F005DA4(v24);
    }

    v26 = *(v0 + 216);
    v27 = *(v0 + 208);
    v28 = *(v0 + 176);
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
    (*(v26 + 104))(v28, *MEMORY[0x277D21CA8], v27);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_24EB77F7C()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_24EB7885C;
  }

  else
  {
    (*(v2[27] + 8))(v2[28], v2[26]);
    __swift_destroy_boxed_opaque_existential_1((v2 + 17));
    v3 = sub_24EB780B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EB780B0()
{
  (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
  v1 = *(v0 + 192);
  if ((*(v1 + 16) & 1) == 0)
  {
    v2 = *(v1 + 8);
    v3 = [*(v0 + 352) standardUserDefaults];
    sub_24F005DA4(v2);
  }

  v4 = *(v0 + 216);
  v5 = *(v0 + 208);
  v6 = *(v0 + 176);
  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
  (*(v4 + 104))(v6, *MEMORY[0x277D21CA8], v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24EB7822C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB78304()
{
  (*(v0[42] + 8))(v0[43], v0[41]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EB783FC()
{
  v1 = v0[52];
  v2 = v0[30];
  v3 = v0[24];
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  sub_24EB78ACC(v3, v2);
  v4 = v1;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[52];
  v9 = v0[30];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 134218242;
    v12 = *v9;
    sub_24EB78DB8(v9);
    *(v10 + 4) = v12;
    *(v10 + 12) = 2112;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_24E5DD000, v5, v6, "CompleteOnboardWelcomeActionImplementation: (GC) Failed to acknowledge Game Center GDPR (version %ld, reason: %@", v10, 0x16u);
    sub_24E6D44CC(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
    sub_24EB78DB8(v0[30]);
  }

  (*(v0[36] + 8))(v0[40], v0[35]);
  sub_24F921318();
  v15 = v0[15];
  v16 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v15);
  v17 = swift_task_alloc();
  v0[53] = v17;
  *v17 = v0;
  v17[1] = sub_24EB77620;

  return MEMORY[0x282165230](v15, v16);
}

uint64_t sub_24EB7860C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v1 = *(v0 + 440);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteOnboardWelcomeActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v5, 0xCu);
    sub_24E6D44CC(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 192);
  if ((*(v9 + 16) & 1) == 0)
  {
    v10 = *(v9 + 8);
    v11 = [*(v0 + 352) standardUserDefaults];
    sub_24F005DA4(v10);
  }

  v12 = *(v0 + 216);
  v13 = *(v0 + 208);
  v14 = *(v0 + 176);
  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
  (*(v12 + 104))(v14, *MEMORY[0x277D21CA8], v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24EB7885C()
{
  (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  v1 = *(v0 + 472);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteOnboardWelcomeActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v5, 0xCu);
    sub_24E6D44CC(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 192);
  if ((*(v9 + 16) & 1) == 0)
  {
    v10 = *(v9 + 8);
    v11 = [*(v0 + 352) standardUserDefaults];
    sub_24F005DA4(v10);
  }

  v12 = *(v0 + 216);
  v13 = *(v0 + 208);
  v14 = *(v0 + 176);
  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
  (*(v12 + 104))(v14, *MEMORY[0x277D21CA8], v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24EB78ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompleteOnboardWelcomeAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB78B30()
{
  v1 = (type metadata accessor for CompleteOnboardWelcomeAction() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v0 + v1[8];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_24EB78C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompleteOnboardWelcomeAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB78C7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for CompleteOnboardWelcomeAction() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EB76968(a1, v7, v1 + v6, v4);
}

uint64_t sub_24EB78D70()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EB78DB8(uint64_t a1)
{
  v2 = type metadata accessor for CompleteOnboardWelcomeAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EB78E14(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_24EB78E34, 0, 0);
}

uint64_t sub_24EB78E34()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 accountServicePrivate];
  v0[20] = v2;

  v3 = sub_24F92B098();
  v0[21] = v3;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_24EB78FBC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229BE0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24EBF219C;
  v0[13] = &block_descriptor_53;
  v0[14] = v4;
  [v2 getAccountAgeCategoryForPlayerID:v3 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24EB78FBC()
{

  return MEMORY[0x2822009F8](sub_24EB7909C, 0, 0);
}

uint64_t sub_24EB7909C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3(v2 == 1);
}

uint64_t sub_24EB7910C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ShareSheetAction.ShareSheetStyle.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_24F928348();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_24F92CB88();
    if (!v10)
    {
      v11 = 0;
      goto LABEL_7;
    }

    if (v10 == 1)
    {
      v11 = 1;
LABEL_7:

      v17 = sub_24F9285B8();
      (*(*(v17 - 8) + 8))(a2, v17);
      v18 = sub_24F928388();
      result = (*(*(v18 - 8) + 8))(a1, v18);
      *a3 = v11;
      return result;
    }

    v12 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v14 = v20;
    *v20 = v8;
    v20[1] = v9;
    v20[2] = &type metadata for ShareSheetAction.ShareSheetStyle;
    v16 = MEMORY[0x277D22520];
  }

  else
  {
    v12 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v14 = v13;
    v15 = MEMORY[0x277D84F90];
    *v13 = &type metadata for ShareSheetAction.ShareSheetStyle;
    v13[1] = v15;
    v16 = MEMORY[0x277D22538];
  }

  (*(*(v12 - 8) + 104))(v14, *v16, v12);
  swift_willThrow();
  v21 = sub_24F9285B8();
  (*(*(v21 - 8) + 8))(a2, v21);
  v22 = sub_24F928388();
  return (*(*(v22 - 8) + 8))(a1, v22);
}

GameStoreKit::ShareSheetAction::ShareSheetStyle_optional __swiftcall ShareSheetAction.ShareSheetStyle.init(rawValue:)(Swift::String rawValue)
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

uint64_t ShareSheetAction.ShareSheetStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x657370616C6C6F63;
  }

  else
  {
    return 0x6465646E61707865;
  }
}

uint64_t sub_24EB79548(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657370616C6C6F63;
  }

  else
  {
    v3 = 0x6465646E61707865;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x657370616C6C6F63;
  }

  else
  {
    v5 = 0x6465646E61707865;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EB795F4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB7967C()
{
  sub_24F92B218();
}

uint64_t sub_24EB796F0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB79774@<X0>(char *a1@<X8>)
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

void sub_24EB797D4(uint64_t *a1@<X8>)
{
  v2 = 0x6465646E61707865;
  if (*v1)
  {
    v2 = 0x657370616C6C6F63;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ShareSheetAction.Activity.activityType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ShareSheetAction.Activity.init(activityType:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ShareSheetAction.Activity.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = a3;
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  type metadata accessor for Action();
  v13 = a1;
  sub_24F928398();
  v14 = static Action.makeInstance(byDeserializing:using:)(v12, a2);
  if (v3)
  {
    v15 = sub_24F9285B8();
    (*(*(v15 - 8) + 8))(a2, v15);
    v16 = *(v7 + 8);
    v16(a1, v6);
    return (v16)(v12, v6);
  }

  else
  {
    v27 = a2;
    v28 = v14;
    v18 = *(v7 + 8);
    v18(v12, v6);
    sub_24F928398();
    v19 = sub_24F928348();
    v21 = v20;
    v18(v10, v6);
    if (v21)
    {
      v22 = sub_24F9285B8();
      (*(*(v22 - 8) + 8))(v27, v22);
      result = (v18)(v13, v6);
      v23 = v29;
      *v29 = v19;
      v23[1] = v21;
      v23[2] = v28;
    }

    else
    {
      v24 = sub_24F92AC38();
      sub_24E8F2E6C();
      swift_allocError();
      strcpy(v25, "activityType");
      v25[13] = 0;
      *(v25 + 7) = -5120;
      *(v25 + 2) = &type metadata for ShareSheetAction.Activity;
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D22530], v24);
      swift_willThrow();

      v26 = sub_24F9285B8();
      (*(*(v26 - 8) + 8))(v27, v26);
      return (v18)(v13, v6);
    }
  }

  return result;
}

uint64_t sub_24EB79C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = sub_24F9285B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24F928328();
  if (result)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    (*(v13 + 16))(v15, a1, v12);
    (*(v9 + 16))(v11, v21, v8);
    v17 = v26;
    result = ShareSheetAction.Activity.init(deserializing:using:)(v15, v11, &v24);
    if (v17)
    {
      sub_24F928548();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728);
      sub_24F9285D8();
      (*(v19 + 8))(v7, v20);
      sub_24E60169C(&v24, v22, &qword_27F226730);
      if (v23)
      {
        __swift_project_boxed_opaque_existential_1(v22, v23);
        sub_24F929EC8();

        sub_24E601704(&v24, &qword_27F226730);
        result = __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
        sub_24E601704(&v24, &qword_27F226730);

        result = sub_24E601704(v22, &qword_27F226730);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    else
    {
      *a3 = v24;
      *(a3 + 1) = v25;
    }
  }

  return result;
}

void *ShareSheetAction.__allocating_init(title:artwork:data:activities:shareSheetStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_data) = a4;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_activities) = a5;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_shareSheetStyle) = *a6;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v15 + v16, a7, v17);
  v19 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v15 + v19, 1, 1, v20);
  v21 = (v15 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  v22 = v15 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v37, &v34, &qword_27F235830);
  if (*(&v35 + 1))
  {
    v23 = v35;
    *v22 = v34;
    *(v22 + 1) = v23;
    *(v22 + 4) = v36;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v26 = v25;
    (*(v12 + 8))(v14, v11);
    v32 = v24;
    v33 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830);
  }

  (*(v18 + 8))(a7, v17);
  sub_24E601704(v37, &qword_27F235830);
  v27 = v30;
  v15[2] = v29;
  v15[3] = v27;
  v15[4] = v31;
  v15[5] = 0;
  return v15;
}

void *ShareSheetAction.init(title:artwork:data:activities:shareSheetStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v8 = v7;
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v32 = sub_24F91F6B8();
  v31 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - v16;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_data) = a4;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_activities) = a5;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_shareSheetStyle) = *a6;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  (*(v19 + 16))(v21, a7, v18);
  v22 = sub_24F929608();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E60169C(v44, &v38, &qword_27F235830);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v26 = v25;
    (*(v31 + 8))(v14, v32);
    v36 = v24;
    v37 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830);
  }

  (*(v19 + 8))(a7, v18);
  sub_24E601704(v44, &qword_27F235830);
  v27 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v27 + 4) = v43;
  v28 = v42;
  *v27 = v41;
  *(v27 + 1) = v28;
  sub_24E65E0D4(v17, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v29 = v34;
  v8[2] = v33;
  v8[3] = v29;
  v8[4] = v35;
  v8[5] = 0;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v21, v18);
  return v8;
}

char *ShareSheetAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v63 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v52 - v7;
  v60 = sub_24F92AC28();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9285B8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v61 = &v52 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - v15;
  v17 = sub_24F928388();
  v68 = *(v17 - 8);
  v69 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v59 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v52 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v52 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v52 - v26;
  v70 = a1;
  sub_24F928398();
  v67 = v10;
  v30 = *(v10 + 16);
  v29 = v10 + 16;
  v28 = v30;
  v71 = a2;
  v30(v16, a2, v9);
  type metadata accessor for ShareSheetData();
  swift_allocObject();
  v31 = v65;
  v32 = ShareSheetData.init(deserializing:using:)(v27, v16);
  if (v31)
  {
    (*(v68 + 8))(v70, v69);
    (*(v67 + 8))(v71, v9);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v55 = v28;
    v56 = v29;
    v63 = v22;
    v33 = v57;
    v65 = v9;
    v34 = v71;
    v35 = v66;
    *&v66[OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_data] = v32;
    sub_24F928398();
    v36 = v64;
    sub_24F9282B8();
    v53 = *(v68 + 8);
    v54 = v68 + 8;
    v53(v25, v69);
    v37 = v58;
    v38 = v60;
    if ((*(v58 + 48))(v36, 1, v60) == 1)
    {
      sub_24E601704(v64, &qword_27F2213B0);
      v39 = MEMORY[0x277D84F90];
      v40 = v61;
      v64 = 0;
    }

    else
    {
      v41 = (*(v37 + 32))(v33, v64, v38);
      MEMORY[0x28223BE20](v41);
      *(&v52 - 2) = v34;
      v39 = sub_24F92ABB8();
      v64 = 0;
      (*(v37 + 8))(v33, v38);
      v40 = v61;
    }

    v27 = v35;
    *&v35[OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_activities] = v39;
    v42 = v70;
    sub_24F928398();
    v43 = v71;
    v44 = v65;
    v45 = v55;
    v55(v40, v71, v65);
    sub_24EB7AFEC();
    sub_24F929548();
    v27[OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_shareSheetStyle] = v72 & 1;
    v46 = v69;
    v47 = v59;
    (*(v68 + 16))(v59, v42, v69);
    v48 = v62;
    v45(v62, v43, v44);
    v49 = v64;
    v50 = Action.init(deserializing:using:)(v47, v48);
    if (!v49)
    {
      v27 = v50;
    }

    v53(v42, v46);
    (*(v67 + 8))(v71, v44);
  }

  return v27;
}

uint64_t sub_24EB7AD78()
{
}

uint64_t ShareSheetAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t ShareSheetAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

unint64_t sub_24EB7AFEC()
{
  result = qword_27F229BE8;
  if (!qword_27F229BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229BE8);
  }

  return result;
}

unint64_t sub_24EB7B044()
{
  result = qword_27F229BF0;
  if (!qword_27F229BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229BF0);
  }

  return result;
}

uint64_t type metadata accessor for ShareSheetAction()
{
  result = qword_27F229BF8;
  if (!qword_27F229BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EB7B230()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229C08);
  __swift_project_value_buffer(v0, qword_27F229C08);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B2D4()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229C20);
  __swift_project_value_buffer(v0, qword_27F229C20);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B37C()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229C38);
  __swift_project_value_buffer(v0, qword_27F229C38);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B3E0()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229C50);
  __swift_project_value_buffer(v0, qword_27F229C50);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B47C()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229C68);
  __swift_project_value_buffer(v0, qword_27F229C68);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B520()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229C80);
  __swift_project_value_buffer(v0, qword_27F229C80);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B584()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229C98);
  __swift_project_value_buffer(v0, qword_27F229C98);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B624()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229CB0);
  __swift_project_value_buffer(v0, qword_27F229CB0);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B730()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229CE0);
  __swift_project_value_buffer(v0, qword_27F229CE0);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B7D8()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229CF8);
  __swift_project_value_buffer(v0, qword_27F229CF8);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B880()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229D10);
  __swift_project_value_buffer(v0, qword_27F229D10);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B91C()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229D28);
  __swift_project_value_buffer(v0, qword_27F229D28);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7B9C0()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229D40);
  __swift_project_value_buffer(v0, qword_27F229D40);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7BA5C()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229D58);
  __swift_project_value_buffer(v0, qword_27F229D58);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7BAF8()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229D70);
  __swift_project_value_buffer(v0, qword_27F229D70);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7BB94()
{
  v0 = sub_24F92A2C8();
  __swift_allocate_value_buffer(v0, qword_27F229D88);
  __swift_project_value_buffer(v0, qword_27F229D88);
  return sub_24F92A2A8();
}

uint64_t sub_24EB7BC30()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229DA0);
  __swift_project_value_buffer(v0, qword_27F229DA0);
  return sub_24F92A268();
}

uint64_t sub_24EB7BCC0()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229DB8);
  __swift_project_value_buffer(v0, qword_27F229DB8);
  return sub_24F92A268();
}

uint64_t sub_24EB7BD58()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229DD0);
  __swift_project_value_buffer(v0, qword_27F229DD0);
  return sub_24F92A268();
}

uint64_t sub_24EB7BDFC()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229DE8);
  __swift_project_value_buffer(v0, qword_27F229DE8);
  return sub_24F92A268();
}

uint64_t sub_24EB7BECC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0xD000000000000018, 0x800000024FA54890);
}

uint64_t sub_24EB7BF78()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229E18);
  __swift_project_value_buffer(v0, qword_27F229E18);
  return sub_24F92A268();
}

uint64_t sub_24EB7C01C()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229E30);
  __swift_project_value_buffer(v0, qword_27F229E30);
  return sub_24F92A268();
}

uint64_t sub_24EB7C0BC()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229E48);
  __swift_project_value_buffer(v0, qword_27F229E48);
  return sub_24F92A268();
}

uint64_t sub_24EB7C164()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229E60);
  __swift_project_value_buffer(v0, qword_27F229E60);
  return sub_24F92A268();
}

uint64_t sub_24EB7C208()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229E78);
  __swift_project_value_buffer(v0, qword_27F229E78);
  return sub_24F92A268();
}

uint64_t sub_24EB7C2A8()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229E90);
  __swift_project_value_buffer(v0, qword_27F229E90);
  return sub_24F92A268();
}

uint64_t sub_24EB7C344()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229EA8);
  __swift_project_value_buffer(v0, qword_27F229EA8);
  return sub_24F92A268();
}

uint64_t sub_24EB7C3E0()
{
  v0 = sub_24F92A278();
  __swift_allocate_value_buffer(v0, qword_27F229EC0);
  __swift_project_value_buffer(v0, qword_27F229EC0);
  return sub_24F92A268();
}

uint64_t sub_24EB7C47C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t *TodayCardMediaVideo.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v67 = a1;
  v54 = *v2;
  v69 = sub_24F9285B8();
  v4 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v58 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v53 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v53 - v10;
  v66 = sub_24F928388();
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v57 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v53 - v17;
  v53[1] = OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworks;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworks) = MEMORY[0x277D84F90];
  sub_24F929608();
  sub_24F928398();
  v65 = v4;
  v19 = *(v4 + 16);
  v20 = v11;
  v21 = v11;
  v22 = a2;
  v23 = a2;
  v24 = v69;
  v19(v21, v23, v69);
  v63 = v18;
  v25 = v20;
  sub_24F929548();
  v68 = v8;
  v64 = v22;
  v19(v8, v22, v24);
  v26 = v67;
  sub_24F928398();
  v19(v25, v8, v24);
  type metadata accessor for Video();
  sub_24EB7CCE8(&qword_27F221590, type metadata accessor for Video);
  v27 = sub_24F92B698();
  v28 = OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_videos;
  v29 = v60;
  *(v60 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_videos) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224980);
  sub_24F928398();
  v55 = v4 + 16;
  v56 = v19;
  v19(v25, v68, v69);
  sub_24E9E115C();
  sub_24F929548();
  v53[0] = OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics) = v70;
  v30 = v26;
  sub_24F928398();
  v31 = v29;
  v32 = sub_24F928348();
  v34 = v33;
  v35 = v62;
  v36 = v66;
  v61 = v62[1];
  v61(v15, v66);
  v37 = (v29 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_description);
  *v37 = v32;
  v37[1] = v34;
  v38 = *(v29 + v28);
  if (v38 >> 62)
  {
    v46 = v37;
    v47 = sub_24F92C738();
    v37 = v46;
    if (v47)
    {
      goto LABEL_3;
    }

LABEL_8:
    v62 = v37;
    v48 = sub_24F92AC38();
    sub_24EB7CCE8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v49 = 0x736F65646976;
    v49[1] = 0xE600000000000000;
    v49[2] = v54;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D22530], v48);
    swift_willThrow();
    v50 = *(v65 + 8);
    v51 = v69;
    v50(v64, v69);
    v61(v30, v66);
    v50(v68, v51);
    sub_24E601704(v63, &qword_27F213E68);

    swift_deallocPartialClassInstance();
    return v31;
  }

  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  v39 = v57;
  (v35[2])(v57, v30, v36);
  v40 = v58;
  v41 = v64;
  v42 = v69;
  v56(v58, v64, v69);
  v43 = v59;
  v44 = TodayCardMedia.init(deserializing:using:)(v39, v40);
  if (v43)
  {
    v31 = *(v65 + 8);
    (v31)(v41, v42);
    v61(v67, v36);
    (v31)(v68, v42);
  }

  else
  {
    v31 = v44;
    v45 = *(v65 + 8);
    v45(v41, v42);
    v61(v67, v36);
    v45(v68, v42);
  }

  sub_24E601704(v63, &qword_27F213E68);
  return v31;
}

uint64_t sub_24EB7CCE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TodayCardMediaVideo.__allocating_init(videos:artworkLayoutsWithMetrics:description:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworks) = MEMORY[0x277D84F90];
  *(v14 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_videos) = a1;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics) = a2;
  v15 = (v14 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_description);
  *v15 = a3;
  v15[1] = a4;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_24E60169C(a5, v14 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);
  sub_24E60169C(v25, &v22, &qword_27F235830);
  if (*(&v23 + 1))
  {
    v16 = v23;
    *(v14 + 32) = v22;
    *(v14 + 48) = v16;
    *(v14 + 64) = v24;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v19 = v18;
    (*(v11 + 8))(v13, v10);
    v21[1] = v17;
    v21[2] = v19;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830);
  }

  sub_24E601704(a5, &qword_27F213E68);
  sub_24E601704(v25, &qword_27F235830);
  *(v14 + 16) = 8;
  *(v14 + 24) = 1;
  return v14;
}

uint64_t TodayCardMediaVideo.init(videos:artworkLayoutsWithMetrics:description:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24 - v16;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworks) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_videos) = a1;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics) = a2;
  v18 = (v6 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_description);
  *v18 = a3;
  v18[1] = a4;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_24E60169C(a5, v17, &qword_27F213E68);
  sub_24E60169C(v35, &v29, &qword_27F235830);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v21 = v20;
    (*(v25 + 8))(v14, v26);
    v27 = v19;
    v28 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830);
  }

  sub_24E601704(a5, &qword_27F213E68);
  sub_24E601704(v35, &qword_27F235830);
  v22 = v33;
  *(v6 + 32) = v32;
  *(v6 + 48) = v22;
  *(v6 + 64) = v34;
  sub_24E65E0D4(v17, v6 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v6 + 16) = 8;
  *(v6 + 24) = 1;
  return v6;
}

uint64_t TodayCardMediaVideo.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaVideo_description);

  return v1;
}

uint64_t sub_24EB7D294()
{
}

uint64_t TodayCardMediaVideo.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t TodayCardMediaVideo.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaVideo()
{
  result = qword_27F229ED8;
  if (!qword_27F229ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EB7D58C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_24F92BBC8();
  if (!v19)
  {
    return sub_24F92B608();
  }

  v41 = v19;
  v45 = sub_24F92C9B8();
  v32 = sub_24F92C9C8();
  sub_24F92C968();
  result = sub_24F92BB88();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_24F92BC88();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_24F92C9A8();
      result = sub_24F92BC18();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EB7D9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_24EB7DA04(a1, a2, a3);
  return v6;
}

uint64_t *sub_24EB7DA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v7 = sub_24E60D5CC(MEMORY[0x277D84F90]);
  v3[18] = a3;
  v3[19] = v7;
  v3[17] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 14);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, a1, a2);
  return v3;
}

uint64_t sub_24EB7DA8C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_24F91F648();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EB7DB50, v2, 0);
}

uint64_t sub_24EB7DB50()
{
  v25 = v0;
  if (qword_27F2113D0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E7C0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BDA8();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    v21 = v0[6];
    v22 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315394;
    sub_24F91F638();
    sub_24EB92828(&qword_27F229EE8, MEMORY[0x277CC9578]);
    v9 = sub_24F92CD88();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_24E7620D4(v9, v11, &v24);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v0[4] = v21;
    v0[5] = v22;
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    sub_24F92CA38();
    MEMORY[0x253050C20](3943982, 0xE300000000000000);
    sub_24F92CA38();
    v13 = sub_24E7620D4(v0[2], v0[3], &v24);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_24E5DD000, v2, v3, "%s fetching items in range %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v14 = v0[8];
  v15 = v14[17];
  v0[12] = v15;
  v16 = v14[18];
  v0[13] = v16;
  __swift_project_boxed_opaque_existential_1(v14 + 14, v15);
  v23 = (*(v16 + 112) + **(v16 + 112));
  v17 = swift_task_alloc();
  v0[14] = v17;
  *v17 = v0;
  v17[1] = sub_24EB7DEC8;
  v19 = v0[6];
  v18 = v0[7];

  return v23(v19, v18, v15, v16);
}

uint64_t sub_24EB7DEC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 64);
    *(v4 + 120) = a1;

    return MEMORY[0x2822009F8](sub_24EB7E01C, v8, 0);
  }
}

uint64_t sub_24EB7E01C()
{
  swift_getAssociatedTypeWitness();
  v1 = sub_24F92CA28();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24EB7E0D4(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v4 = sub_24F91F938();
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229EF0);
  v3[48] = swift_task_alloc();
  v5 = sub_24F91F968();
  v3[49] = v5;
  v3[50] = *(v5 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = sub_24F92B7F8();
  v3[53] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EB7E2DC, v7, v6);
}

unint64_t sub_24EB7E2DC()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);

  result = sub_24F91F958();
  if (v2 != v1)
  {
    v15 = *(v0 + 280);
    v14 = *(v0 + 288);
    if (v14 < v15)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v15 >= v14)
    {
LABEL_64:
      __break(1u);
      return result;
    }

    v16 = *(v0 + 296);
    swift_beginAccess();
    v17 = *(v0 + 280);
    do
    {
      v18 = *(v16 + 152);
      if (*(v18 + 16) && (v19 = sub_24E7728CC(v17), (v20 & 1) != 0))
      {
        sub_24E8B9530(*(v18 + 56) + 40 * v19, v0 + 16);
        sub_24E601704(v0 + 16, &qword_27F223238);
      }

      else
      {
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        *(v0 + 48) = -1;
        sub_24E601704(v0 + 16, &qword_27F223238);
        sub_24F91F8F8();
      }

      ++v17;
    }

    while (v17 != *(v0 + 288));
  }

  v4 = *(v0 + 376);
  v5 = *(v0 + 384);
  v7 = *(v0 + 360);
  v6 = *(v0 + 368);
  v8 = *(v0 + 352);
  v88 = *(v0 + 296);
  sub_24F91F948();
  sub_24F91F928();
  (*(v7 + 8))(v6, v8);
  v9 = *(v4 + 36);
  sub_24EB92828(qword_27F229EF8, MEMORY[0x277CC9A18]);
  sub_24F92BC08();
  if (*(v5 + v9) == *(v0 + 272))
  {
LABEL_3:
    v11 = *(v0 + 400);
    v10 = *(v0 + 408);
    v12 = *(v0 + 392);
    sub_24E601704(*(v0 + 384), &qword_27F229EF0);
    (*(v11 + 8))(v10, v12);

    v13 = *(v0 + 8);

    return v13();
  }

  v76 = (v0 + 128);
  v81 = (v0 + 160);
  v82 = v0;
  v79 = v0 + 96;
  v80 = (v0 + 192);
  v77 = v9;
  v78 = v5;
  while (1)
  {
    v84 = *(v0 + 344);
    v90 = *(v0 + 336);
    v21 = *(v0 + 296);
    v22 = sub_24F92BC88();
    v24 = *v23;
    v25 = v23[1];
    v22(v79, 0);
    sub_24F92BC18();
    v26 = sub_24F92B858();
    v27 = *(v26 - 8);
    v91 = *(v27 + 56);
    v91(v84, 1, 1, v26);

    v28 = sub_24F92B7E8();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = MEMORY[0x277D85700];
    v29[4] = v21;
    v86 = v25;
    v87 = v24;
    v29[5] = v24;
    v29[6] = v25;
    sub_24E60169C(v84, v90, &unk_27F21B570);
    v89 = *(v27 + 48);
    LODWORD(v24) = v89(v90, 1, v26);

    v30 = *(v0 + 336);
    if (v24 == 1)
    {
      sub_24E601704(*(v0 + 336), &unk_27F21B570);
    }

    else
    {
      sub_24F92B848();
      (*(v27 + 8))(v30, v26);
    }

    v31 = v29[2];
    swift_unknownObjectRetain();

    if (v31)
    {
      swift_getObjectType();
      v32 = sub_24F92B778();
      v34 = v33;
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    sub_24E601704(*(v0 + 344), &unk_27F21B570);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8);
    if (v34 | v32)
    {
      *v76 = 0;
      v76[1] = 0;
      *(v0 + 144) = v32;
      *(v0 + 152) = v34;
    }

    result = swift_task_create();
    v85 = result;
    v35 = v86;
    v36 = v87;
    if (v87 != v86)
    {
      break;
    }

LABEL_15:

    sub_24F92BC08();
    if (*(v78 + v77) == *(v0 + 272))
    {
      goto LABEL_3;
    }
  }

  if (v86 < v87)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v83 = (v27 + 8);
  v37 = v87;
  while (1)
  {
    if (v35 == v37)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v39 = *(v0 + 320);
    v38 = *(v0 + 328);
    v40 = v26;
    v41 = v26;
    v42 = v35;
    v91(v38, 1, 1, v40);

    v43 = sub_24F92B7E8();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = MEMORY[0x277D85700];
    v44[4] = v85;
    v44[5] = v37;
    v44[6] = v36;
    v44[7] = v42;
    v26 = v41;
    v0 = v82;
    sub_24E60169C(v38, v39, &unk_27F21B570);
    LODWORD(v38) = v89(v39, 1, v41);

    v45 = *(v82 + 320);
    if (v38 == 1)
    {
      sub_24E601704(*(v82 + 320), &unk_27F21B570);
    }

    else
    {
      sub_24F92B848();
      (*v83)(v45, v41);
    }

    v46 = v44[2];
    swift_unknownObjectRetain();

    if (v46)
    {
      swift_getObjectType();
      v47 = sub_24F92B778();
      v49 = v48;
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0;
      v49 = 0;
    }

    sub_24E601704(*(v82 + 328), &unk_27F21B570);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
    if (v49 | v47)
    {
      *v81 = 0;
      v81[1] = 0;
      *(v82 + 176) = v47;
      *(v82 + 184) = v49;
    }

    v50 = swift_task_create();
    swift_beginAccess();
    *(v82 + 56) = v50;
    *(v82 + 88) = 0;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v88 + 152);
    *(v88 + 152) = 0x8000000000000000;
    result = sub_24E7728CC(v37);
    v54 = v52[2];
    v55 = (v53 & 1) == 0;
    v56 = __OFADD__(v54, v55);
    v57 = v54 + v55;
    if (v56)
    {
      goto LABEL_60;
    }

    v58 = v53;
    if (v52[3] < v57)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_43;
    }

    v60 = result;
    sub_24E8B2790();
    result = v60;
    if (v58)
    {
LABEL_44:
      sub_24E824334(v82 + 56, v52[7] + 40 * result);
      goto LABEL_48;
    }

LABEL_46:
    v52[(result >> 6) + 8] |= 1 << result;
    *(v52[6] + 8 * result) = v37;
    v61 = v52[7] + 40 * result;
    v62 = *(v82 + 56);
    v63 = *(v82 + 72);
    *(v61 + 32) = *(v82 + 88);
    *v61 = v62;
    *(v61 + 16) = v63;
    v64 = v52[2];
    v56 = __OFADD__(v64, 1);
    v65 = v64 + 1;
    if (v56)
    {
      goto LABEL_61;
    }

    v52[2] = v65;
LABEL_48:
    v67 = *(v82 + 304);
    v66 = *(v82 + 312);
    v68 = *(v82 + 296);
    *(v88 + 152) = v52;
    swift_endAccess();
    v91(v66, 1, 1, v26);

    v69 = sub_24F92B7E8();
    v70 = swift_allocObject();
    v70[2] = v69;
    v70[3] = MEMORY[0x277D85700];
    v70[4] = v50;
    v70[5] = v68;
    v70[6] = v37;
    sub_24E60169C(v66, v67, &unk_27F21B570);
    LODWORD(v68) = v89(v67, 1, v26);

    v71 = *(v82 + 304);
    if (v68 == 1)
    {
      sub_24E601704(*(v82 + 304), &unk_27F21B570);
    }

    else
    {
      sub_24F92B848();
      (*v83)(v71, v26);
    }

    v72 = v70[2];
    swift_unknownObjectRetain();

    if (v72)
    {
      swift_getObjectType();
      v73 = sub_24F92B778();
      v75 = v74;
      swift_unknownObjectRelease();
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    sub_24E601704(*(v82 + 312), &unk_27F21B570);
    if (v75 | v73)
    {
      *v80 = 0;
      v80[1] = 0;
      *(v82 + 208) = v73;
      *(v82 + 216) = v75;
    }

    ++v37;
    swift_task_create();

    v35 = v86;
    v36 = v87;
    if (v86 == v37)
    {
      goto LABEL_15;
    }
  }

  sub_24E8A1B18(v57, isUniquelyReferenced_nonNull_native);
  result = sub_24E7728CC(v37);
  if ((v58 & 1) == (v59 & 1))
  {
LABEL_43:
    if (v58)
    {
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  return sub_24F92CF88();
}

uint64_t sub_24EB7EDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = sub_24F92B7F8();
  v6[4] = sub_24F92B7E8();
  v9 = swift_task_alloc();
  v6[5] = v9;
  *v9 = v6;
  v9[1] = sub_24EB7EE74;

  return sub_24EB7DA8C(a5, a6);
}

uint64_t sub_24EB7EE74(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_24F92B778();
    v7 = v6;
    v8 = sub_24EB7F064;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_24F92B778();
    v7 = v9;
    v8 = sub_24EB7EFF4;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_24EB7EFF4()
{
  v1 = v0[7];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_24EB7F064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB7F0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a1;
  v6[6] = sub_24F92B7F8();
  v6[7] = sub_24F92B7E8();
  v8 = swift_task_alloc();
  v6[8] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  *v8 = v6;
  v8[1] = sub_24EB7F1CC;
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v6 + 2, a4, v9, v10, v11);
}

uint64_t sub_24EB7F1CC()
{
  *(*v1 + 72) = v0;

  v3 = sub_24F92B778();
  if (v0)
  {
    v4 = sub_24EB7F3E0;
  }

  else
  {
    v4 = sub_24EB7F328;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24EB7F328()
{
  v1 = v0[4];
  v2 = v0[5];

  v4 = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    if ((v4 & 0x8000000000000000) != 0 || v4 >= *(v5 + 16))
    {

      v6 = v0[3];
      *v6 = 0u;
      v6[1] = 0u;
    }

    else
    {
      sub_24E643A9C(v5 + 32 * v4 + 32, v0[3]);
    }

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_24EB7F3E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB7F444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[23] = sub_24F92B7F8();
  v6[24] = sub_24F92B7E8();
  v8 = swift_task_alloc();
  v6[25] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  *v8 = v6;
  v8[1] = sub_24EB7F544;
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v6 + 11, a4, v9, v10, v11);
}

uint64_t sub_24EB7F544()
{
  *(*v1 + 208) = v0;

  v3 = sub_24F92B778();
  if (v0)
  {
    v4 = sub_24EB7F7C8;
  }

  else
  {
    v4 = sub_24EB7F6A0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24EB7F6A0()
{
  v6 = v0;

  v1 = *(v0 + 176);
  if (*(v0 + 112))
  {
    sub_24E612B0C((v0 + 88), (v0 + 56));
    sub_24E643A9C(v0 + 56, v0 + 16);
    *(v0 + 48) = 1;
    swift_beginAccess();
    sub_24E98A214(v0 + 16, v1);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  }

  else
  {
    sub_24E601704(v0 + 88, &qword_27F2129B0);
    memset(v4, 0, sizeof(v4));
    v5 = -1;
    swift_beginAccess();
    sub_24E98A214(v4, v1);
    swift_endAccess();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EB7F7C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB7F82C(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v3[44] = swift_task_alloc();
  v4 = sub_24F91F648();
  v3[45] = v4;
  v3[46] = *(v4 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = sub_24F92B7F8();
  v3[49] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v3[50] = v6;
  v3[51] = v5;

  return MEMORY[0x2822009F8](sub_24EB7F960, v6, v5);
}

uint64_t sub_24EB7F960()
{
  v44 = v0;
  v1 = *(v0 + 344);
  swift_beginAccess();
  v2 = *(v1 + 152);
  if (*(v2 + 16))
  {
    v3 = sub_24E7728CC(*(v0 + 336));
    if (v4)
    {
      sub_24E8B9530(*(v2 + 56) + 40 * v3, v0 + 16);
      if (*(v0 + 48))
      {
        v5 = *(v0 + 328);

        sub_24E612B0C((v0 + 16), (v0 + 136));
        sub_24E612B0C((v0 + 136), v5);

        v6 = *(v0 + 8);

        return v6();
      }

      sub_24EB8DD8C(v0 + 16);
    }
  }

  v8 = *(v1 + 152);
  if (!*(v8 + 16))
  {
    goto LABEL_12;
  }

  v9 = sub_24E7728CC(*(v0 + 336));
  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_24E8B9530(*(v8 + 56) + 40 * v9, v0 + 56);
  if (*(v0 + 88) == 1)
  {
    sub_24EB8DD8C(v0 + 56);
LABEL_12:
    if (qword_27F2113D0 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E7C0);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BDA8();
    if (os_log_type_enabled(v12, v13))
    {
      v15 = *(v0 + 368);
      v14 = *(v0 + 376);
      v16 = *(v0 + 360);
      v41 = *(v0 + 336);
      v17 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42[0] = v40;
      *v17 = 136315394;
      sub_24F91F638();
      sub_24EB92828(&qword_27F229EE8, MEMORY[0x277CC9578]);
      v18 = sub_24F92CD88();
      v20 = v19;
      (*(v15 + 8))(v14, v16);
      v21 = sub_24E7620D4(v18, v20, v42);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2048;
      *(v17 + 14) = v41;
      _os_log_impl(&dword_24E5DD000, v12, v13, "%s requesting item at index %ld", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x2530542D0](v40, -1, -1);
      MEMORY[0x2530542D0](v17, -1, -1);
    }

    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v24 = *(v0 + 336);
    v25 = sub_24F92B858();
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);

    v26 = sub_24F92B7E8();
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = v23;
    v27[5] = v24;
    v29 = sub_24F1D4064(0, 0, v22, &unk_24F986A80, v27);
    *(v0 + 432) = v29;
    v42[0] = v29;
    v43 = 0;
    swift_beginAccess();

    sub_24E98A214(v42, v24);
    swift_endAccess();
    v30 = swift_task_alloc();
    *(v0 + 440) = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    *v30 = v0;
    v30[1] = sub_24EB80024;
    v33 = MEMORY[0x277D84950];
    v34 = v0 + 200;
    v35 = v29;
    v36 = v31;
    goto LABEL_17;
  }

  v37 = *(v0 + 56);
  *(v0 + 416) = v37;
  v38 = swift_task_alloc();
  *(v0 + 424) = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  *v38 = v0;
  v38[1] = sub_24EB7FE80;
  v34 = *(v0 + 328);
  v33 = MEMORY[0x277D84950];
  v35 = v37;
  v36 = v39;
LABEL_17:

  return MEMORY[0x282200430](v34, v35, v36, v32, v33);
}

uint64_t sub_24EB7FE80()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_24EB802CC;
  }

  else
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_24EB7FFA4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24EB7FFA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB80024()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);
  if (v0)
  {
    v5 = sub_24EB80358;
  }

  else
  {
    v5 = sub_24EB80160;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24EB80160()
{
  v7 = v0;

  v1 = *(v0 + 336);
  v2 = *(v0 + 328);
  if (*(v0 + 224))
  {
    sub_24E612B0C((v0 + 200), (v0 + 168));
    sub_24E643A9C(v0 + 168, v0 + 96);
    *(v0 + 128) = 1;
    swift_beginAccess();
    sub_24E98A214(v0 + 96, v1);
    swift_endAccess();

    sub_24E612B0C((v0 + 168), v2);
  }

  else
  {
    sub_24E601704(v0 + 200, &qword_27F2129B0);
    memset(v5, 0, sizeof(v5));
    v6 = -1;
    swift_beginAccess();
    sub_24E98A214(v5, v1);
    swift_endAccess();

    *v2 = 0u;
    v2[1] = 0u;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24EB802CC()
{
  v1 = *(v0 + 328);

  *v1 = 0u;
  v1[1] = 0u;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EB80358()
{
  v1 = v0[56];
  v2 = v0[41];

  *v2 = 0u;
  v2[1] = 0u;

  v3 = v0[1];

  return v3();
}

uint64_t sub_24EB803F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_24F92B7F8();
  v5[5] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_24EB80494, v7, v6);
}

void sub_24EB80494()
{
  v1 = *(v0 + 32);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < v1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_24EB80548;
  v4 = *(v0 + 32);

  sub_24EB7DA8C(v4, v2);
}

uint64_t sub_24EB80548(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v5 = *(v3 + 56);
  v6 = *(v3 + 48);
  if (v1)
  {
    v7 = sub_24EB8072C;
  }

  else
  {
    v7 = sub_24EB8068C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24EB8068C()
{
  v1 = v0[9];

  v2 = *(v1 + 16);
  v3 = v0[2];
  if (v2)
  {
    sub_24E643A9C(v0[9] + 32, v0[2]);
  }

  else
  {

    *v3 = 0u;
    v3[1] = 0u;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EB8072C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB80790()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_24EB80800(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EB8083C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_24EB80888(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_24EB808BC(uint64_t a1)
{
  sub_24E60169C(a1, &v3, &qword_27F2129B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A238);
  sub_24F926F48();
  return sub_24E601704(a1, &qword_27F2129B0);
}

uint64_t sub_24EB80940(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_24F91F648();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  sub_24F92B7F8();
  v2[20] = sub_24F92B7E8();
  v5 = sub_24F92B778();
  v2[21] = v5;
  v2[22] = v4;

  return MEMORY[0x2822009F8](sub_24EB80A34, v5, v4);
}

uint64_t sub_24EB80A34()
{
  v1 = *(*(v0 + 128) + 8);
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_24EB80AD4;

  return sub_24EB7F82C(v0 + 88, v1);
}

uint64_t sub_24EB80AD4()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_24EB80BF4, v3, v2);
}

uint64_t sub_24EB80BF4()
{
  v21 = v0;

  sub_24EB808BC((v0 + 11));
  if (qword_27F2113D0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E7C0);
  v4 = *(v1 - 8);
  (*(v4 + 16))(v0 + 2, v2, v1);
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDA8();
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[18];
    v7 = v0[19];
    v9 = v0[17];
    v19 = v0[15];
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v10 = 136315394;
    sub_24F91F638();
    sub_24EB92828(&qword_27F229EE8, MEMORY[0x277CC9578]);
    v11 = sub_24F92CD88();
    v13 = v12;
    (*(v8 + 8))(v7, v9);
    v14 = sub_24E7620D4(v11, v13, &v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    v15 = v0[3];
    (*(v4 + 8))(v0 + 2, v19);
    *(v10 + 14) = v15;
    _os_log_impl(&dword_24E5DD000, v5, v6, "%s loaded %ld", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2530542D0](v18, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
    (*(v4 + 8))(v0 + 2, v0[15]);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_24EB80EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A448);
  MEMORY[0x28223BE20](v4);
  v6 = (&v30 - v5);
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v30 = v15;
  v16 = sub_24F924E38();
  v31 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A238);
  sub_24F926F38();
  if (v38)
  {
    sub_24E612B0C(&v37, v35);
    (*(v2 + 56))(v35);
    v19 = *(a1 + 24);
    sub_24E7896B8(v11, v7, v19);
    v20 = *(v8 + 8);
    v20(v11, v7);
    sub_24E7896B8(v14, v7, v19);
    sub_24EB91A0C();
    sub_24ECCCBA0(v11, v7);
    v20(v11, v7);
    v20(v14, v7);
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_24E601704(&v37, &qword_27F2129B0);
    v21 = sub_24F926C98();
    v22 = v30;
    v23 = (v6 + *(v30 + 36));
    sub_24F923AD8();
    sub_24F92B818();
    (*(*(a1 - 8) + 16))(v35, v2, a1);
    v24 = swift_allocObject();
    v19 = *(a1 + 24);
    *(v24 + 16) = v7;
    *(v24 + 24) = v19;
    v25 = v35[3];
    *(v24 + 64) = v35[2];
    *(v24 + 80) = v25;
    *(v24 + 96) = v36;
    v26 = v35[1];
    *(v24 + 32) = v35[0];
    *(v24 + 48) = v26;
    *v23 = &unk_24F987268;
    v23[1] = v24;
    *v6 = v21;
    sub_24EB91A0C();
    sub_24ECCCC98(v6, v7, v22);
    sub_24E601704(v6, &qword_27F22A448);
  }

  v27 = sub_24EB91A0C();
  v33 = v19;
  v34 = v27;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v18, v16, WitnessTable);
  return (*(v31 + 8))(v18, v16);
}

uint64_t sub_24EB81288()
{
  v0[2] = sub_24F92B7F8();
  v0[3] = sub_24F92B7E8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = type metadata accessor for IndexedSectionListAsyncRowView();
  *v1 = v0;
  v1[1] = sub_24E8FAC50;

  return sub_24EB80940(v2);
}

uint64_t sub_24EB8135C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v21 = a8;
  v19 = a6;
  v20 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(a11 + 96))(a1, a2, a3, a4, a5 & 1, v19, v20, v21, v17, a9 & 1, a10, a11);
  swift_getAssociatedConformanceWitness();
  return sub_24F927158();
}

uint64_t sub_24EB8149C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v32 = a8;
  v31 = a7;
  v28 = a4;
  v29 = a6;
  v25 = a5;
  v26 = a2;
  v27 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_24F92C4A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24[-v15];
  v17 = *(v12 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v24[-v19];
  sub_24E643A9C(a1, &v35);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if (v21)
  {
    v22(v16, 0, 1, v12);
    (*(v17 + 32))(v20, v16, v12);
    (*(a11 + 104))(v20, v26, v27, v28, v25 & 1, v29, v31, v32, a9 & 1, a10, a11);
    swift_getAssociatedConformanceWitness();
    v33 = sub_24F927158();
    v34 = 0;
    sub_24F924E28();
    (*(v17 + 8))(v20, v12);
  }

  else
  {
    v22(v16, 1, 1, v12);
    (*(v14 + 8))(v16, v13);
    v33 = 0;
    v34 = 1;
    sub_24F924E28();
  }

  return v35;
}

uint64_t sub_24EB81828(double a1, double a2)
{
  if (a1 != a2)
  {
    return 0;
  }

  type metadata accessor for IndexedSectionListView.PinnedSection();
  swift_getWitnessTable();

  return sub_24F92B718();
}

uint64_t sub_24EB818EC()
{
  type metadata accessor for IndexedSectionListView.PinnedSections();
  sub_24F92C4A8();
  sub_24F926F28();
  return v1;
}

uint64_t sub_24EB81940()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
  sub_24F926F28();
  return v1;
}

uint64_t sub_24EB8198C(uint64_t a1)
{
  v2 = sub_24F923CE8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_24F926F28();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_24EB81A84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    a2 = -1;
  }

  if (a6)
  {
    a5 = -1;
  }

  v8 = a2 < a5;
  if (a4 < a1)
  {
    v8 = 0;
  }

  return a1 < a4 || v8;
}

uint64_t sub_24EB81AB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24EB81AE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x253052A00](a2);
  if (a4)
  {
    return sub_24F92D088();
  }

  sub_24F92D088();
  return MEMORY[0x253052A00](a3);
}

uint64_t sub_24EB81B40(uint64_t a1, uint64_t a2, char a3)
{
  sub_24F92D068();
  sub_24EB81AE8(v7, a1, a2, a3 & 1);
  return sub_24F92D0B8();
}

uint64_t sub_24EB81BDC()
{
  sub_24F92D068();
  sub_24EB81AE8(v2, *v0, *(v0 + 8), *(v0 + 16));
  return sub_24F92D0B8();
}

uint64_t sub_24EB81C5C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 96);
  if (*(v4 + 16) <= a1)
  {
    return 0;
  }

  result = sub_24EB81CC8(a1, a2, a3 & 1);
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(v4 + 8 * a1 + 32);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = __OFSUB__(result, v9);
  result -= v9;
  if (v8)
  {
    __break(1u);
    return 0;
  }

  return result;
}

uint64_t sub_24EB81CC8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = *(v3 + 96);
    if (*(v4 + 16) <= result)
    {
      return 0;
    }

    if ((result & 0x8000000000000000) == 0)
    {
      return *(v4 + 8 * result + 32);
    }

    goto LABEL_11;
  }

  v5 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = v5 + a2;
  if (__OFADD__(v5, a2))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_24EB81D14(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + 96);
  if (*(v4 + 16) > result)
  {
    if (result < 0)
    {
      goto LABEL_11;
    }

    if (!__OFSUB__(*(v4 + 8 * result + 32), result))
    {
      return result;
    }

    __break(1u);
LABEL_7:
    if (!__OFADD__(result++, 1))
    {
      return result;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

unint64_t sub_24EB81D98(double a1)
{
  v2 = *(v1 + 104);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  if (v3 != 1)
  {
    result = 0;
    v5 = *(v2 + 16);
    while (!__OFSUB__(v5, result))
    {
      v6 = result + (v5 - result) / 2;
      if (__OFADD__(result, (v5 - result) / 2))
      {
        goto LABEL_30;
      }

      if (v6 >= v3)
      {
        goto LABEL_31;
      }

      v7 = *(v2 + 32 + 8 * v6);
      if (v7 + -2.22044605e-16 <= a1)
      {
        if (v7 + 2.22044605e-16 >= a1)
        {
          result += (v5 - result) / 2;
          return result;
        }

        result += (v5 - result) / 2;
        v9 = __OFADD__(v6, 1);
        v8 = v6 + 1;
        if (v9)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v5 = result + (v5 - result) / 2;
        v8 = result + 1;
        if (__OFADD__(result, 1))
        {
          goto LABEL_32;
        }
      }

      if (v5 == v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_14:
  if (result >= v3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v10 = a1 - *(v2 + 8 * result + 32);
  if (*(v1 + 72) == 1)
  {
    v11 = *(v1 + 56);
    if (v11 >= v10)
    {
      return result;
    }
  }

  else
  {
    v11 = 0.0;
    if (v10 <= 0.0)
    {
      return result;
    }
  }

  v12 = *(v1 + 96);
  if (result >= *(v12 + 16))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v13 = *(v12 + 8 * result + 32);
  v9 = __OFSUB__(v13, result);
  v14 = v13 - result;
  if (v9)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v15 = (v10 - v11) / *(v1 + 64);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (__OFADD__(v14, v15))
  {
LABEL_39:
    __break(1u);
  }

  return result;
}

uint64_t sub_24EB81F2C(uint64_t a1)
{
  v2 = *(v1 + 96);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  if (v3 != 1)
  {
    result = 0;
    v7 = v2 + 32;
    v8 = v3;
    while (!__OFSUB__(v8, result))
    {
      v9 = result + (v8 - result) / 2;
      if (__OFADD__(result, (v8 - result) / 2))
      {
        goto LABEL_25;
      }

      if (v9 >= v3)
      {
        goto LABEL_26;
      }

      v10 = *(v7 + 8 * v9);
      if (v10 <= a1)
      {
        if (v10 >= a1)
        {
          result += (v8 - result) / 2;
          return result;
        }

        result += (v8 - result) / 2;
        v12 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v12)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v8 = result + (v8 - result) / 2;
        v11 = result + 1;
        if (__OFADD__(result, 1))
        {
          goto LABEL_27;
        }
      }

      if (v8 == v11)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  result = 0;
LABEL_21:
  v12 = __OFSUB__(a1, result);
  v13 = a1 - result;
  if (v12)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (__OFSUB__(v13, 1))
  {
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_24EB82000@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a4;
  v77 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v71 - v7;
  v9 = sub_24F923CE8();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IndexedSectionListView();
  v74 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v14 = v71 - v13;
  *(&v71[14] - v13) = vdupq_n_s64(5uLL);
  *&v78 = 0;
  sub_24F926F28();
  v15 = *(&v80 + 1);
  *(v14 + 18) = v80;
  *(v14 + 19) = v15;
  v78 = 0u;
  v79 = 0u;
  sub_24F926F28();
  v16 = v82;
  v17 = v81;
  *(v14 + 10) = v80;
  *(v14 + 11) = v17;
  *(v14 + 24) = v16;
  LOBYTE(v78) = 0;
  sub_24F926F28();
  v18 = *(&v80 + 1);
  v14[200] = v80;
  *(v14 + 26) = v18;
  *(v14 + 27) = sub_24EB818EC();
  *(v14 + 28) = v19;
  *(v14 + 29) = v20;
  *(v14 + 30) = sub_24EB81940();
  *(v14 + 31) = v21;
  *(v14 + 32) = v22;
  sub_24F923CD8();
  sub_24EB8198C(v11);
  v23 = &v14[v12[27]];
  *&v78 = 0;
  sub_24F926F28();
  v24 = *(&v80 + 1);
  *v23 = v80;
  *(v23 + 1) = v24;
  v25 = &v14[v12[28]];
  *&v78 = 0;
  sub_24F926F28();
  v26 = *(&v80 + 1);
  *v25 = v80;
  *(v25 + 1) = v26;
  *&v14[v12[29]] = 0x4032000000000000;
  *&v14[v12[30]] = 0x4008000000000000;
  v14[v12[31]] = 1;
  v27 = &v14[v12[32]];
  sub_24F9233A8();
  v28 = BYTE8(v80);
  v29 = v82;
  v30 = v81;
  *v27 = v80;
  v27[8] = v28;
  *(v27 + 1) = v30;
  v27[32] = v29;
  v75 = v12;
  v31 = sub_24F91F648();
  (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
  sub_24EB826F8(v8);
  v32 = v77;
  *(v14 + 16) = a1;
  *(v14 + 17) = v32;
  sub_24E615E00(a3, v14);
  v33 = a3[3];
  v34 = a3[4];
  v35 = __swift_project_boxed_opaque_existential_1(a3, v33);
  v36 = type metadata accessor for IndexedSectionListItemCache();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = v71 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v39, v35, v33, v37);
  v41 = swift_allocObject();
  sub_24EB7DA04(v39, v33, v34);
  v73 = v14;
  *(v14 + 5) = v41;
  v42 = a3[3];
  v43 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v42);
  v44 = (*(v43 + 72))(v42, v43);
  v45 = a3[3];
  v46 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v45);
  v47 = (*(v46 + 80))(v45, v46);
  v48 = a3[3];
  v49 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v48);
  v50 = (*(v49 + 88))(v48, v49);
  v51 = a3[3];
  v52 = a3[4];
  v77 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v51);
  result = (*(v52 + 64))(v51, v52);
  v54 = *(result + 16);
  v72 = v50;
  v71[1] = result;
  if (v54)
  {
    v55 = 0;
    v56 = 0;
    v57 = result + 32;
    if (v50)
    {
      v58 = v44;
    }

    else
    {
      v58 = 0.0;
    }

    v59 = MEMORY[0x277D84F90];
    v60 = MEMORY[0x277D84F90];
    while (!__OFADD__(v55, v56))
    {
      v61 = *(v57 + 8 * v55);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_24E615EC4(0, *(v59 + 2) + 1, 1, v59);
      }

      v63 = *(v59 + 2);
      v62 = *(v59 + 3);
      if (v63 >= v62 >> 1)
      {
        v59 = sub_24E615EC4((v62 > 1), v63 + 1, 1, v59);
      }

      *(v59 + 2) = v63 + 1;
      *&v59[8 * v63 + 32] = v55 + v56;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E617688(0, *(v60 + 16) + 1, 1, v60);
        v60 = result;
      }

      v65 = *(v60 + 16);
      v64 = *(v60 + 24);
      if (v65 >= v64 >> 1)
      {
        result = sub_24E617688((v64 > 1), v65 + 1, 1, v60);
        v60 = result;
      }

      *(v60 + 16) = v65 + 1;
      *(v60 + 8 * v65 + 32) = v58 * v55 + v47 * v56;
      v66 = __OFADD__(v56, v61);
      v56 += v61;
      if (v66)
      {
        goto LABEL_21;
      }

      if (v54 == ++v55)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v56 = 0;
    v59 = MEMORY[0x277D84F90];
    v60 = MEMORY[0x277D84F90];
LABEL_19:

    v67 = v73;
    v73[7] = v44;
    v67[8] = v47;
    v68 = v77;
    v69 = v77[3];
    v70 = v77[4];
    __swift_project_boxed_opaque_existential_1(v77, v69);
    *(v67 + 6) = (*(v70 + 56))(v69, v70);
    *(v67 + 72) = v72 & 1;
    *(v67 + 10) = v54;
    *(v67 + 11) = v56;
    *(v67 + 12) = v59;
    *(v67 + 13) = v60;
    (*(v74 + 32))(v76, v67, v75);
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  return result;
}

uint64_t sub_24EB826F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v2);
  sub_24E60169C(a1, &v5 - v3, &unk_27F22EC30);
  sub_24F926F28();
  return sub_24E601704(a1, &unk_27F22EC30);
}

double sub_24EB827C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A210);
  sub_24F926F38();
  v0 = sub_24EB81F2C(v4);
  sub_24EB81D14(v0, v2, v1 & 1);
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_24EB82838()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A210);
  sub_24F926F38();
  v0 = sub_24EB81F2C(v4);
  return sub_24EB81D14(v0, v2, v1 & 1);
}

uint64_t sub_24EB82978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218088);
  sub_24F923348();
  return v1;
}

uint64_t sub_24EB829F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v110 = a1;
  v109 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v106 = v3;
  v108 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 32);
  v114 = *(v4 + 24);
  v107 = v5;
  v6 = type metadata accessor for IndexedSectionListView.Indices();
  sub_24F92B6E8();
  swift_getWitnessTable();
  v7 = sub_24F92CAF8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A050);
  WitnessTable = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  *&v119 = v7;
  *(&v119 + 1) = v6;
  v103 = v6;
  *&v120 = v8;
  *(&v120 + 1) = v9;
  v121 = v10;
  v11 = sub_24F927248();
  v118 = sub_24EB8F0C4(&qword_27F22A058, &qword_27F22A050, &unk_24F986C78, sub_24EB8E9C0);
  v12 = swift_getWitnessTable();
  v97 = v11;
  v94 = v12;
  v13 = sub_24F927108();
  v104 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v102 = &v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D0);
  v16 = swift_getWitnessTable();
  v17 = sub_24E602068(&qword_27F22A0F0, &qword_27F2143D0);
  v105 = v13;
  *&v119 = v13;
  *(&v119 + 1) = v15;
  v113 = v15;
  v99 = v16;
  *&v120 = v16;
  *(&v120 + 1) = v17;
  v98 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v100 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v95 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v96 = &v88 - v20;
  v22 = v2[31];
  v23 = v2[32];
  *&v119 = v2[30];
  v21 = v119;
  *(&v119 + 1) = v22;
  *&v120 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A210);
  sub_24F926F38();
  v25 = *&v116[0];
  v26 = sub_24EB81F2C(*&v116[0]);
  v28 = v27;
  v30 = v29;
  v93 = v21;
  *&v119 = v21;
  *(&v119 + 1) = v22;
  v92 = v22;
  v91 = v23;
  *&v120 = v23;
  v90 = v24;
  v31 = v2;
  sub_24F926F38();
  v32 = *(&v116[0] + 1);
  result = sub_24EB81F2C(*(&v116[0] + 1));
  v36 = v35;
  if (v30)
  {
    v37 = v2[12];
    if (*(v37 + 16) <= v26)
    {
      v28 = 0;
      if ((v34 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (v26 < 0)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v38 = *(v37 + 8 * v26 + 32);
    v28 = v38 - v26;
    if (__OFSUB__(v38, v26))
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }
  }

  if ((v34 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v39 = v2[12];
  if (*(v39 + 16) > result)
  {
    if (result < 0)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v40 = *(v39 + 8 * result + 32);
    v36 = v40 - result;
    if (!__OFSUB__(v40, result))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v36 = 0;
LABEL_14:
  if (v36 < v28)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v41 = v2[15];
  result = v25 - v41;
  if (__OFSUB__(v25, v41))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v44 = sub_24EB81F2C(result);
  result = v32 + v41;
  if (__OFADD__(v32, v41))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v45 = v42;
  v46 = v43;
  result = sub_24EB81F2C(result);
  if ((v46 & 1) == 0)
  {
    goto LABEL_21;
  }

  v49 = v2[12];
  if (*(v49 + 16) <= v44)
  {
    v45 = 0;
    if ((v48 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (v44 < 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v50 = *(v49 + 8 * v44 + 32);
  v45 = v50 - v44;
  if (!__OFSUB__(v50, v44))
  {
LABEL_21:
    if ((v48 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_24:
    v51 = v2[12];
    if (*(v51 + 16) > result)
    {
      if (result < 0)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v52 = *(v51 + 8 * result + 32);
      v47 = v52 - result;
      if (!__OFSUB__(v52, result))
      {
LABEL_30:
        if (v47 < v45)
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v53 = v36 - v28;
        if (__OFSUB__(v36, v28))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        if (v53 < 0)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v88 = v47;
        v54 = v2[5];
        v89 = v45;
        if (v53)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
          result = sub_24F92B618();
          v112 = result;
          *(result + 16) = v53;
          v55 = v28 < v36;
          if (v28 != v36)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v112 = MEMORY[0x277D84F90];
          v55 = v28 < v36;
          if (v28 != v36)
          {
LABEL_38:
            if (!v55)
            {
              goto LABEL_57;
            }

            v83 = v112 + 32;
            result = swift_beginAccess();
            v84 = v28;
            while (!__OFSUB__(v84, v28))
            {
              v85 = *(v54 + 152);
              v86 = (v83 + 32 * (v84 - v28));
              if (*(v85 + 16) && (result = sub_24E7728CC(v84), (v87 & 1) != 0))
              {
                sub_24E8B9530(*(v85 + 56) + 40 * result, v116);
                v119 = v116[0];
                v120 = v116[1];
                LOBYTE(v121) = v117;
                sub_24E8B9530(&v119, v116);
                if (v117 == 1)
                {
                  sub_24E612B0C(v116, v115);
                  sub_24E643A9C(v115, v86);
                  __swift_destroy_boxed_opaque_existential_1(v115);
                }

                else
                {
                  sub_24EB8DD8C(v116);
                  *v86 = 0u;
                  v86[1] = 0u;
                }

                result = sub_24EB8DD8C(&v119);
              }

              else
              {
                *v86 = 0u;
                v86[1] = 0u;
              }

              if (v36 == ++v84)
              {
                goto LABEL_37;
              }
            }

            __break(1u);
            goto LABEL_51;
          }
        }

LABEL_37:
        v56 = v112;
        *(v112 + 16) = v53;
        *&v119 = v93;
        *(&v119 + 1) = v92;
        *&v120 = v91;
        v57 = sub_24F926F38();
        v119 = v116[0];
        MEMORY[0x28223BE20](v57);
        v58 = v114;
        *(&v88 - 4) = v114;
        v59 = v58;
        v60 = v107;
        *(&v88 - 3) = v107;
        *(&v88 - 2) = v31;
        v61 = sub_24EB8FDCC();
        v63 = sub_24EB7D58C(sub_24EB8FD84, (&v88 - 6), v113, v103, MEMORY[0x277D84A98], v61, MEMORY[0x277D84AC0], v62);
        MEMORY[0x28223BE20](v63);
        *(&v88 - 6) = v59;
        *(&v88 - 5) = v60;
        *(&v88 - 4) = v64;
        *(&v88 - 3) = v56;
        *(&v88 - 2) = v28;
        *(&v88 - 1) = v31;
        sub_24F924C88();
        v65 = v102;
        sub_24F9270F8();

        *&v119 = v89;
        *(&v119 + 1) = v88;
        v66 = v109;
        v67 = v108;
        v68 = v31;
        v69 = v110;
        (*(v109 + 16))(v108, v68, v110);
        v70 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v71 = (v106 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
        v72 = swift_allocObject();
        *(v72 + 16) = v114;
        *(v72 + 24) = v60;
        (*(v66 + 32))(v72 + v70, v67, v69);
        v73 = (v72 + v71);
        *v73 = v28;
        v73[1] = v36;
        v74 = v95;
        v75 = v105;
        v76 = v113;
        v77 = v99;
        v78 = v98;
        sub_24F926AB8();

        (*(v104 + 8))(v65, v75);
        *&v119 = v75;
        *(&v119 + 1) = v76;
        *&v120 = v77;
        *(&v120 + 1) = v78;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v80 = v96;
        v81 = OpaqueTypeMetadata2;
        sub_24E7896B8(v74, OpaqueTypeMetadata2, OpaqueTypeConformance2);
        v82 = *(v100 + 8);
        v82(v74, v81);
        sub_24E7896B8(v80, v81, OpaqueTypeConformance2);
        return (v82)(v80, v81);
      }

      __break(1u);
    }

    v47 = 0;
    goto LABEL_30;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_24EB83478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a4;
  v50 = a2;
  v51 = a3;
  v38[0] = a1;
  v52 = a7;
  v40 = a5;
  v47 = type metadata accessor for IndexedSectionListView();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = v38 - v11;
  v12 = type metadata accessor for IndexedSectionListView.Indices();
  v13 = sub_24F92B6E8();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_24F92CAF8();
  v46 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A050);
  v45 = v16;
  v57[5] = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v44 = v17;
  v43 = swift_getWitnessTable();
  v57[0] = v15;
  v57[1] = v12;
  v57[2] = v16;
  v57[3] = v17;
  v57[4] = v43;
  v18 = sub_24F927248();
  v48 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v39 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v41 = v38 - v22;
  v56 = a1;
  MEMORY[0x253050DD0](v57, v13, WitnessTable, v21);
  v56 = v57[0];
  v23 = v40;
  v53 = v40;
  v54 = a6;
  v24 = a6;
  v38[1] = swift_getKeyPath();
  v25 = v42;
  v26 = v47;
  (*(v9 + 16))(v42, v49, v47);
  v27 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v28 = (v10 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 2) = v23;
  *(v29 + 3) = v24;
  v30 = v51;
  *(v29 + 4) = v50;
  *(v29 + 5) = v30;
  (*(v9 + 32))(&v29[v27], v25, v26);
  *&v29[v28] = v38[0];
  v31 = swift_allocObject();
  v31[2] = v23;
  v31[3] = v24;
  v31[4] = sub_24EB9077C;
  v31[5] = v29;
  v32 = sub_24EB8F0C4(&qword_27F22A058, &qword_27F22A050, &unk_24F986C78, sub_24EB8E9C0);

  v33 = v39;
  sub_24F927228();
  v55 = v32;
  v34 = swift_getWitnessTable();
  v35 = v41;
  sub_24E7896B8(v33, v18, v34);
  v36 = *(v48 + 8);
  v36(v33, v18);
  sub_24E7896B8(v35, v18, v34);
  return (v36)(v35, v18);
}

void sub_24EB8391C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v57 = a8;
  v58 = a1;
  LOBYTE(v14) = a4;
  v61 = a2;
  v62 = a9;
  v59 = a11;
  v60 = type metadata accessor for IndexedSectionListView();
  v16 = *(v60 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v60);
  v19 = v54 - v18;
  if ((v14 & 1) == 0)
  {
    v23 = a3 - a6;
    if (__OFSUB__(a3, a6))
    {
      __break(1u);
    }

    else if ((v23 & 0x8000000000000000) == 0)
    {
      if (v23 < *(a5 + 16))
      {
        sub_24E60169C(a5 + 32 * v23 + 32, v87, &qword_27F2129B0);
        if (!*&v87[24])
        {
          sub_24E601704(v87, &qword_27F2129B0);
          v54[1] = a7;
          v56 = *(a7 + 40);
          v28 = v60;
          (*(v16 + 16))(v19, a7, v60);
          v29 = (*(v16 + 80) + 32) & ~*(v16 + 80);
          v55 = a3;
          v30 = (v17 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
          v54[0] = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
          v31 = (v30 + 39) & 0xFFFFFFFFFFFFFFF8;
          v32 = swift_allocObject();
          v33 = v59;
          *(v32 + 16) = a10;
          *(v32 + 24) = v33;
          (*(v16 + 32))(v32 + v29, v19, v28);
          v34 = v55;
          *(v32 + v30) = v55;
          v35 = v32 + v54[0];
          *v35 = v61;
          *(v35 + 8) = v34;
          v36 = v34;
          *(v35 + 16) = 0;
          v37 = v57;
          *(v32 + v31) = v58;
          *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
          memset(v87, 0, 32);
          sub_24E60169C(v87, &v65, &qword_27F2129B0);
          v38 = v56;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
          sub_24F926F28();
          sub_24E601704(v87, &qword_27F2129B0);
          *&v78 = v38;
          *(&v78 + 1) = v36;
          memset(v87, 0, 32);
          sub_24E601704(v79, qword_27F22A238);
          sub_24E60169C(v87, &v65, &qword_27F2129B0);
          sub_24F926F28();
          sub_24E601704(v87, &qword_27F2129B0);
          *(&v80 + 1) = sub_24EB90B40;
          *&v81 = v32;
          sub_24F927618();
          sub_24F9242E8();
          sub_24E60169C(&v78, v87, &qword_27F22A0B8);
          *&v87[120] = v93;
          *&v87[136] = v94;
          *&v87[152] = v95;
          *&v87[168] = v96;
          *&v87[72] = v90;
          *&v87[88] = v91;
          *&v87[104] = v92;
          sub_24E601704(&v78, &qword_27F22A0B8);
          v73 = *&v87[128];
          v74 = *&v87[144];
          v75 = *&v87[160];
          v76 = *&v87[176];
          v69 = *&v87[64];
          v70 = *&v87[80];
          v71 = *&v87[96];
          v72 = *&v87[112];
          v65 = *v87;
          v66 = *&v87[16];
          v67 = *&v87[32];
          v68 = *&v87[48];
          sub_24E60169C(&v65, v87, &qword_27F22A0A8);
          v88 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A088);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0A8);
          sub_24EB8EFB0(&qword_27F22A080, &qword_27F22A088, &unk_24F986C90, sub_24EB8EB04);
          sub_24EB8EB88();
          sub_24F924E28();
          sub_24E601704(&v65, &qword_27F22A0A8);
LABEL_22:
          sub_24E60169C(&v78, v87, &qword_27F22A078);
          v89 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A078);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0C8);
          sub_24EB8EA4C();
          sub_24EB8EC40();
          sub_24F924E28();
          sub_24E601704(&v78, &qword_27F22A078);
          return;
        }

        sub_24E612B0C(v87, v77);
        sub_24E615E00(a7, &v90);
        v22 = *(&v91 + 1);
        v55 = v92;
        v56 = __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
        v14 = a3;
        v24 = sub_24EB81C5C(v61, a3, 0);
        if (v58 >= 1)
        {
          type metadata accessor for IndexedSectionListView.Indices();
          sub_24F92B758();
          v25 = *&v87[8];
          v26 = v87[16];
LABEL_20:
          v43 = sub_24EB82978();
          a5 = sub_24EB8149C(v77, v14, v24, v25, v26, v43, v45, v46, v44 & 1, v22, v55);
          LOBYTE(v14) = v47;

          sub_24F927618();
LABEL_21:
          sub_24F9242E8();
          *&v63[55] = v68;
          *&v63[71] = v69;
          *&v63[87] = v70;
          *&v63[103] = v71;
          *&v63[7] = v65;
          *&v63[23] = v66;
          v64 = v14 & 1;
          *&v63[39] = v67;
          __swift_destroy_boxed_opaque_existential_1(&v90);
          *&v87[73] = *&v63[64];
          *&v87[89] = *&v63[80];
          *&v87[105] = *&v63[96];
          *&v87[9] = *v63;
          *&v87[25] = *&v63[16];
          *&v87[41] = *&v63[32];
          *v87 = a5;
          v87[8] = v64;
          *&v87[120] = *&v63[111];
          *&v87[57] = *&v63[48];
          v88 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A088);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0A8);
          sub_24EB8EFB0(&qword_27F22A080, &qword_27F22A088, &unk_24F986C90, sub_24EB8EB04);
          sub_24EB8EB88();
          sub_24F924E28();
          __swift_destroy_boxed_opaque_existential_1(v77);
          goto LABEL_22;
        }

LABEL_19:
        v25 = 0;
        v26 = 1;
        goto LABEL_20;
      }

      goto LABEL_28;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((*(a7 + 72) & 1) == 0)
  {
    v27 = v62;
    *(v62 + 176) = 0;
    *(v27 + 144) = 0u;
    *(v27 + 160) = 0u;
    *(v27 + 112) = 0u;
    *(v27 + 128) = 0u;
    *(v27 + 80) = 0u;
    *(v27 + 96) = 0u;
    *(v27 + 48) = 0u;
    *(v27 + 64) = 0u;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
    *v27 = 0u;
    *(v27 + 184) = -256;
    return;
  }

  v20 = *(a7 + 232);
  *v87 = *(a7 + 216);
  *&v87[16] = v20;
  type metadata accessor for IndexedSectionListView.PinnedSections();
  sub_24F92C4A8();
  sub_24F926F68();
  a5 = v87;
  v21 = sub_24F926F38();
  v22 = v61;
  if (!*(&v78 + 1) || (*v87 = *(&v78 + 1), MEMORY[0x28223BE20](v21), type metadata accessor for IndexedSectionListView.PinnedSection(), sub_24F92B6E8(), swift_getWitnessTable(), a5 = sub_24F92B4B8(), , (a5 & 1) == 0))
  {
    v39 = *(a7 + 24);
    v40 = *(a7 + 32);
    v14 = __swift_project_boxed_opaque_existential_1(a7, v39);
    v41 = *(a7 + 96);
    if (*(v41 + 16) <= v22)
    {
      v24 = 0;
LABEL_24:
      v48 = sub_24EB82978();
      v52 = sub_24EB8135C(v22, v22, 0, v24, 0, v48, v50, v51, v49 & 1, v39, v40);

      sub_24F927618();
      sub_24F9242E8();
      *v87 = v52;
      sub_24E6E1384(v87);
      v71 = *&v87[96];
      v72 = *&v87[112];
      LOBYTE(v73) = v87[128];
      v67 = *&v87[32];
      v68 = *&v87[48];
      v69 = *&v87[64];
      v70 = *&v87[80];
      v65 = *v87;
      v66 = *&v87[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0E8);
      sub_24EB8ECCC();
      sub_24EB8ED50();
      sub_24F924E28();
      goto LABEL_25;
    }

    if ((v22 & 0x8000000000000000) == 0)
    {
      v42 = *(v41 + 8 * v22 + 32);
      v24 = v42 - v22;
      if (!__OFSUB__(v42, v22))
      {
        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_29:
    __break(1u);
    sub_24F92BDC8();
    v53 = sub_24F9257A8();
    sub_24F921FD8();

    goto LABEL_21;
  }

  sub_24F927618();
  sub_24F9242E8();
  LOBYTE(v77[0]) = 1;
  *(&v86[3] + 7) = v93;
  *(&v86[4] + 7) = v94;
  *(&v86[5] + 7) = v95;
  *(&v86[6] + 7) = v96;
  *(v86 + 7) = v90;
  *(&v86[1] + 7) = v91;
  *(&v86[2] + 7) = v92;
  *v87 = 0;
  v87[8] = 1;
  *&v87[57] = v86[3];
  *&v87[41] = v86[2];
  *&v87[25] = v86[1];
  *&v87[9] = v86[0];
  *&v87[120] = *(&v96 + 1);
  *&v87[105] = v86[6];
  *&v87[89] = v86[5];
  *&v87[73] = v86[4];
  sub_24E6E15DC(v87);
  v71 = *&v87[96];
  v72 = *&v87[112];
  LOBYTE(v73) = v87[128];
  v67 = *&v87[32];
  v68 = *&v87[48];
  v69 = *&v87[64];
  v70 = *&v87[80];
  v65 = *v87;
  v66 = *&v87[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0E8);
  sub_24EB8ECCC();
  sub_24EB8ED50();
  sub_24F924E28();
LABEL_25:
  *&v87[96] = v83;
  *&v87[112] = v84;
  v87[128] = v85;
  *&v87[32] = v79[1];
  *&v87[48] = v80;
  *&v87[64] = v81;
  *&v87[80] = v82;
  *v87 = v78;
  *&v87[16] = v79[0];
  v89 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0C8);
  sub_24EB8EA4C();
  sub_24EB8EC40();
  sub_24F924E28();
}

uint64_t sub_24EB846E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_24E615E00(a2, v30);
  v13 = v31;
  v25 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  type metadata accessor for IndexedSectionListView();
  v14 = sub_24EB81C5C(a4, a5, a6 & 1);
  if (a7 < 1)
  {
    v15 = 0;
    v16 = 1;
  }

  else
  {
    type metadata accessor for IndexedSectionListView.Indices();
    sub_24F92B758();
    v15 = v28;
    v16 = v29;
  }

  v17 = sub_24EB82978();
  v21 = sub_24EB8149C(a1, a3, v14, v15, v16, v17, v19, v20, v18 & 1, v13, v25);
  v23 = v22;

  result = __swift_destroy_boxed_opaque_existential_1(v30);
  *a8 = v21;
  *(a8 + 8) = v23 & 1;
  return result;
}

uint64_t sub_24EB84844(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a4;
  v32 = a5;
  v12 = type metadata accessor for IndexedSectionListView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - v18;
  v30 = *a1;
  v29 = *a2;
  v20 = sub_24F92B858();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(v16, a3, v12);
  sub_24F92B7F8();
  v21 = sub_24F92B7E8();
  v22 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v21;
  *(v23 + 24) = v24;
  *(v23 + 32) = a6;
  *(v23 + 40) = a7;
  v25 = v29;
  *(v23 + 48) = v30;
  *(v23 + 64) = v25;
  (*(v13 + 32))(v23 + v22, v16, v12);
  v26 = (v23 + ((v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v32;
  *v26 = v31;
  v26[1] = v27;
  sub_24EA998B8(0, 0, v19, &unk_24F986DD0, v23);
}

uint64_t sub_24EB84A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = v13;
  v8[24] = v14;
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  v8[25] = sub_24F92B7F8();
  v8[26] = sub_24F92B7E8();
  v10 = sub_24F92B778();
  v8[27] = v10;
  v8[28] = v9;

  return MEMORY[0x2822009F8](sub_24EB84B4C, v10, v9);
}

uint64_t sub_24EB84B4C()
{
  if (v0[18] < v0[20])
  {
    v0[29] = *(v0[22] + 40);
    v0[30] = sub_24F92B7E8();
    v1 = sub_24F92B778();
    v3 = v2;
    v4 = sub_24EB84CC0;
LABEL_5:

    return MEMORY[0x2822009F8](v4, v1, v3);
  }

  if (v0[21] < v0[19])
  {
    v0[31] = *(v0[22] + 40);
    v0[32] = sub_24F92B7E8();
    v1 = sub_24F92B778();
    v3 = v5;
    v4 = sub_24EB84F30;
    goto LABEL_5;
  }

  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_24EB85120;
  v8 = v0[23];
  v7 = v0[24];

  return sub_24EB7E0D4(v8, v7);
}

uint64_t sub_24EB84CC0()
{
  v1 = *(v0 + 232);

  swift_beginAccess();
  v2 = *(v0 + 144);
  do
  {
    v3 = *(v1 + 152);
    if (*(v3 + 16))
    {
      v4 = sub_24E7728CC(v2);
      if (v5)
      {
        sub_24E8B9530(*(v3 + 56) + 40 * v4, v0 + 56);
        if (*(v0 + 88) == 1)
        {
          sub_24EB8DD8C(v0 + 56);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
          sub_24F92B958();
        }
      }
    }

    ++v2;
  }

  while (v2 != *(v0 + 160));
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_24EB84E14, v6, v7);
}

uint64_t sub_24EB84E14()
{
  if (v0[21] >= v0[19])
  {
    v3 = swift_task_alloc();
    v0[33] = v3;
    *v3 = v0;
    v3[1] = sub_24EB85120;
    v5 = v0[23];
    v4 = v0[24];

    return sub_24EB7E0D4(v5, v4);
  }

  else
  {
    v0[31] = *(v0[22] + 40);
    v0[32] = sub_24F92B7E8();
    v2 = sub_24F92B778();

    return MEMORY[0x2822009F8](sub_24EB84F30, v2, v1);
  }
}

uint64_t sub_24EB84F30()
{
  v1 = *(v0 + 248);

  swift_beginAccess();
  v2 = *(v0 + 168);
  do
  {
    v3 = *(v1 + 152);
    if (*(v3 + 16))
    {
      v4 = sub_24E7728CC(v2);
      if (v5)
      {
        sub_24E8B9530(*(v3 + 56) + 40 * v4, v0 + 16);
        if (*(v0 + 48) == 1)
        {
          sub_24EB8DD8C(v0 + 16);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
          sub_24F92B958();
        }
      }
    }

    ++v2;
  }

  while (v2 != *(v0 + 152));
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_24EB85084, v6, v7);
}

uint64_t sub_24EB85084()
{
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_24EB85120;
  v3 = v0[23];
  v2 = v0[24];

  return sub_24EB7E0D4(v3, v2);
}

uint64_t sub_24EB85120()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_24EB85240, v3, v2);
}

uint64_t sub_24EB85240()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB852A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a1;
  v118 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A1C8);
  MEMORY[0x28223BE20](v3 - 8);
  v117 = &v82 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F40);
  MEMORY[0x28223BE20](v5 - 8);
  v116 = &v82 - v6;
  v113 = *(a1 - 8);
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v7);
  v112 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A048);
  sub_24F924038();
  v119 = *(a1 + 24);
  v10 = v9;
  v11 = type metadata accessor for IndexedSectionListView.Indices();
  sub_24F92B6E8();
  swift_getWitnessTable();
  v12 = sub_24F92CAF8();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A050);
  v99 = MEMORY[0x277D83980];
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v151 = v12;
  v152 = v11;
  v153 = v13;
  v154 = v14;
  v155 = v15;
  sub_24F927248();
  v150 = sub_24EB8F0C4(&qword_27F22A058, &qword_27F22A050, &unk_24F986C78, sub_24EB8E9C0);
  v98 = MEMORY[0x277CE1290];
  swift_getWitnessTable();
  v16 = sub_24F927108();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D0);
  v97 = MEMORY[0x277CE1198];
  v18 = swift_getWitnessTable();
  v19 = sub_24E602068(&qword_27F22A0F0, &qword_27F2143D0);
  v151 = v16;
  v152 = v17;
  v153 = v18;
  v154 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v151 = v16;
  v152 = v17;
  v153 = v18;
  v154 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v151 = OpaqueTypeMetadata2;
  v152 = MEMORY[0x277D837D0];
  v153 = OpaqueTypeConformance2;
  v154 = MEMORY[0x277D837E0];
  sub_24F927028();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v107 = sub_24F927108();
  v106 = swift_getWitnessTable();
  v22 = sub_24F923428();
  v110 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v123 = &v82 - v23;
  v100 = v10;
  v24 = type metadata accessor for IndexedSectionListView.VisibleScrollRect();
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v151 = v22;
  v152 = v24;
  v103 = v22;
  v104 = v25;
  v91 = v24;
  v153 = v25;
  v154 = v26;
  v27 = v25;
  v28 = v26;
  v101 = v26;
  v29 = swift_getOpaqueTypeMetadata2();
  v121 = v29;
  v109 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v105 = &v82 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A0F8);
  v122 = v31;
  v151 = v22;
  v152 = v24;
  v153 = v27;
  v154 = v28;
  v32 = swift_getOpaqueTypeConformance2();
  v120 = sub_24EB8EDEC();
  v151 = v29;
  v152 = v31;
  v153 = v32;
  v154 = v120;
  v82 = v32;
  v92 = swift_getOpaqueTypeMetadata2();
  v108 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v102 = &v82 - v33;
  type metadata accessor for IndexedSectionListView.PinnedSection();
  v34 = sub_24F92B6E8();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A128);
  v36 = swift_getWitnessTable();
  v151 = v34;
  v152 = MEMORY[0x277D83B88];
  v153 = v35;
  v154 = v36;
  v155 = MEMORY[0x277D83B98];
  sub_24F927248();
  v149 = sub_24EB8EFB0(&qword_27F22A130, &qword_27F22A128, &unk_24F986CE8, sub_24EB8F034);
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  v37 = sub_24F924038();
  v147 = swift_getWitnessTable();
  v148 = MEMORY[0x277CDF748];
  v38 = swift_getWitnessTable();
  v39 = MEMORY[0x277CDF918];
  v145 = v38;
  v146 = MEMORY[0x277CDF918];
  v143 = swift_getWitnessTable();
  v144 = v39;
  v141 = swift_getWitnessTable();
  v142 = v39;
  v40 = swift_getWitnessTable();
  v151 = v37;
  v152 = v40;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  v41 = sub_24F92C4A8();
  v151 = v37;
  v152 = v40;
  v139 = swift_getOpaqueTypeConformance2();
  v140 = MEMORY[0x277CE0880];
  v138 = swift_getWitnessTable();
  v93 = v41;
  v94 = swift_getWitnessTable();
  sub_24F9242F8();
  v42 = sub_24F924038();
  v99 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v88 = &v82 - v43;
  v151 = v121;
  v152 = v122;
  v153 = v32;
  v154 = v120;
  v44 = swift_getOpaqueTypeConformance2();
  v87 = v44;
  v45 = swift_getWitnessTable();
  v136 = v44;
  v137 = v45;
  v46 = swift_getWitnessTable();
  v151 = v42;
  v152 = v46;
  v47 = v42;
  v85 = v42;
  v86 = v46;
  v48 = v46;
  v49 = swift_getOpaqueTypeMetadata2();
  v89 = v49;
  v96 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v84 = &v82 - v50;
  v151 = v47;
  v152 = v48;
  v90 = swift_getOpaqueTypeConformance2();
  v151 = v49;
  v152 = v90;
  v95 = MEMORY[0x277CDE830];
  v51 = swift_getOpaqueTypeMetadata2();
  v52 = *(v51 - 8);
  v97 = v51;
  v98 = v52;
  MEMORY[0x28223BE20](v51);
  v83 = &v82 - v53;
  v54 = v100;
  v55 = v119;
  v133 = v100;
  v134 = v119;
  v56 = v115;
  v135 = v115;
  sub_24F9257D8();
  sub_24E8D514C();
  v107 = swift_checkMetadataState();
  v57 = swift_allocObject();
  *(v57 + 16) = v54;
  *(v57 + 24) = v55;
  v58 = v112;
  v59 = v113;
  v60 = v111;
  (*(v113 + 16))(v112, v56, v111);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = v54;
  *(v62 + 24) = v55;
  (*(v59 + 32))(v62 + v61, v58, v60);
  v63 = v105;
  v64 = v103;
  v65 = v123;
  sub_24F926738();

  (*(v110 + 8))(v65, v64);
  v130 = v54;
  v131 = v55;
  v66 = v56;
  v132 = v56;
  sub_24F924C88();
  v67 = v102;
  v68 = v121;
  sub_24F926218();
  (*(v109 + 8))(v63, v68);
  sub_24F9275F8();
  v127 = v54;
  v128 = v55;
  v129 = v66;
  v69 = v88;
  v70 = v92;
  sub_24F926A08();
  (*(v108 + 8))(v67, v70);
  v71 = v116;
  sub_24F925078();
  v72 = sub_24F925088();
  (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
  v73 = sub_24F925868();
  v75 = v84;
  v74 = v85;
  MEMORY[0x25304C060](v71, v73, v85, v86);
  sub_24E601704(v71, &qword_27F228F40);
  (*(v99 + 8))(v69, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F229F80);
  v76 = v117;
  sub_24F926F58();
  v77 = v83;
  v78 = v89;
  v79 = v90;
  sub_24F9263A8();
  sub_24E601704(v76, &qword_27F22A1C8);
  (*(v96 + 8))(v75, v78);
  v124 = v54;
  v125 = v55;
  v126 = v66;
  sub_24F924C88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A1D0);
  v151 = v78;
  v152 = v79;
  swift_getOpaqueTypeConformance2();
  sub_24EB8F6B8();
  v80 = v97;
  sub_24F926308();
  return (*(v98 + 8))(v77, v80);
}

uint64_t sub_24EB8622C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a1;
  v18[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A048);
  sub_24F924038();
  type metadata accessor for IndexedSectionListView.Indices();
  sub_24F92B6E8();
  swift_getWitnessTable();
  sub_24F92CAF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A050);
  v18[13] = swift_getWitnessTable();
  swift_getWitnessTable();
  v18[12] = swift_getWitnessTable();
  sub_24F927248();
  v18[7] = sub_24EB8F0C4(&qword_27F22A058, &qword_27F22A050, &unk_24F986C78, sub_24EB8E9C0);
  swift_getWitnessTable();
  sub_24F927108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D0);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F22A0F0, &qword_27F2143D0);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18[8] = OpaqueTypeMetadata2;
  v18[9] = MEMORY[0x277D837D0];
  v18[10] = OpaqueTypeConformance2;
  v18[11] = MEMORY[0x277D837E0];
  sub_24F927028();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v8 = sub_24F927108();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v18 - v13;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = v18[0];
  sub_24F924C88();
  sub_24F9270F8();
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v11, v8, WitnessTable);
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_24E7896B8(v14, v8, WitnessTable);
  return (v16)(v14, v8);
}

uint64_t sub_24EB86674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v79 = a4;
  type metadata accessor for IndexedSectionListView.Indices();
  sub_24F92B6E8();
  swift_getWitnessTable();
  sub_24F92CAF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A050);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v89 = swift_getWitnessTable();
  sub_24F927248();
  v84[6] = sub_24EB8F0C4(&qword_27F22A058, &qword_27F22A050, &unk_24F986C78, sub_24EB8E9C0);
  swift_getWitnessTable();
  v85 = sub_24F927108();
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D0);
  v87 = swift_getWitnessTable();
  v88 = sub_24E602068(&qword_27F22A0F0, &qword_27F2143D0);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = OpaqueTypeMetadata2;
  v72 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v68 = &v62 - v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v85 = OpaqueTypeMetadata2;
  v86 = MEMORY[0x277D837D0];
  v87 = OpaqueTypeConformance2;
  v88 = MEMORY[0x277D837E0];
  v9 = sub_24F927028();
  v73 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v65 = &v62 - v10;
  v74 = v11;
  v78 = sub_24F924038();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = &v62 - v14;
  MEMORY[0x28223BE20](v15);
  v75 = &v62 - v16;
  v17 = a3;
  v66 = a3;
  v80 = type metadata accessor for IndexedSectionListView();
  v18 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v20 = &v62 - v19;
  v67 = *(a2 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A048);
  v24 = sub_24F924038();
  v63 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v81 = &v62 - v29;
  v30 = *(a1 + 128);
  v62 = a1;
  v30(v28);
  v31 = a1;
  v32 = v80;
  (*(v18 + 16))(v20, v31, v80);
  v33 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = a2;
  *(v34 + 24) = v17;
  (*(v18 + 32))(v34 + v33, v20, v32);
  v85 = sub_24EB8FCBC;
  v86 = v34;
  sub_24F927618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A218);
  sub_24E602068(&qword_27F22A220, &qword_27F22A218);
  v35 = v66;
  sub_24F9260A8();
  v36 = v65;

  (*(v67 + 8))(v23, a2);
  v37 = sub_24E602068(&qword_27F22A228, &qword_27F22A048);
  v84[4] = v35;
  v84[5] = v37;
  v64 = swift_getWitnessTable();
  sub_24E7896B8(v26, v24, v64);
  v38 = v63;
  v39 = *(v63 + 8);
  v40 = v26;
  v41 = v24;
  v67 = v63 + 8;
  v66 = v39;
  v39(v26, v24);
  v42 = v68;
  v43 = v62;
  sub_24EB829F0(v80, v68);
  v44 = v43[3];
  v45 = v43[4];
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v85 = (*(v45 + 48))(v44, v45);
  v86 = v46;
  MEMORY[0x253050C20](0x73776F722DLL, 0xE500000000000000);
  v47 = v70;
  sub_24F926878();

  (*(v72 + 8))(v42, v47);
  sub_24EB827C0();
  sub_24EB82838();
  v48 = v74;
  v49 = swift_getWitnessTable();
  v50 = v71;
  sub_24F926A38();
  (*(v73 + 8))(v36, v48);
  v84[2] = v49;
  v84[3] = MEMORY[0x277CDF918];
  v51 = v78;
  v52 = swift_getWitnessTable();
  v53 = v75;
  sub_24E7896B8(v50, v51, v52);
  v54 = v76;
  v55 = *(v76 + 8);
  v55(v50, v51);
  v56 = *(v38 + 16);
  v57 = v81;
  v56(v40, v81, v41);
  v85 = v40;
  v58 = v77;
  (*(v54 + 16))(v77, v53, v51);
  v86 = v58;
  v84[0] = v41;
  v84[1] = v51;
  v82 = v64;
  v83 = v52;
  sub_24F57BA64(&v85, 2uLL, v84);
  v55(v53, v51);
  v59 = v57;
  v60 = v66;
  v66(v59, v41);
  v55(v58, v51);
  return v60(v40, v41);
}

uint64_t sub_24EB87170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a3;
  v55 = a4;
  v49 = a2;
  v50 = a5;
  v51 = a1;
  v6 = sub_24F9239C8();
  v40 = v6;
  v7 = *(v6 - 8);
  v52 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexedSectionListView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v53 = sub_24F926C98();
  v15 = *(v11 + 16);
  v44 = v11 + 16;
  v48 = v15;
  v16 = v10;
  v15(v14, a2, v10);
  v17 = v7;
  v47 = *(v7 + 16);
  v47(v9, v51, v6);
  v18 = *(v11 + 80);
  v19 = *(v7 + 80);
  v20 = v12 + v19 + ((v18 + 32) & ~v18);
  v21 = (v18 + 32) & ~v18;
  v42 = v21;
  v22 = v20 & ~v19;
  v45 = v18 | v19;
  v23 = swift_allocObject();
  v24 = v55;
  *(v23 + 16) = v54;
  *(v23 + 24) = v24;
  v41 = *(v11 + 32);
  v43 = v11 + 32;
  v25 = v23 + v21;
  v26 = v23;
  v46 = v23;
  v27 = v14;
  v28 = v14;
  v29 = v16;
  v41(v25, v27, v16);
  v30 = *(v17 + 32);
  v31 = v40;
  v30(v26 + v22, v9, v40);
  v58 = v53;
  v59 = sub_24EB92F78;
  v60 = v26;
  v61 = 0;
  v62 = 0;
  v32 = v51;
  sub_24F923998();
  v56 = v33;
  v57 = v34;
  v48(v28, v49, v29);
  v35 = v32;
  v36 = v31;
  v47(v9, v35, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v54;
  *(v37 + 24) = v38;
  v41(v37 + v42, v28, v29);
  v30(v37 + v22, v9, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B80);
  type metadata accessor for CGSize(0);
  sub_24E9ED7E0();
  sub_24EB92828(&qword_27F224B90, type metadata accessor for CGSize);
  sub_24F926AC8();
}

uint64_t sub_24EB8755C()
{
  sub_24F923998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  return sub_24F926F48();
}

double sub_24EB875C0@<D0>(uint64_t a1@<X8>)
{
  sub_24F923CA8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_24F923CB8();
  v11 = v10;
  sub_24F923C98();
  v13 = v12;
  sub_24F923C88();
  v15 = v14;
  sub_24F923C98();
  v17 = v16;
  sub_24F923C88();
  result = v17 - v18;
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = result;
  return result;
}

uint64_t sub_24EB87650(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for IndexedSectionListView();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v108 - v14;
  v16 = *a2;
  v17 = a2[2];
  v19 = a2[4];
  v18 = a2[5];
  v20 = a2[7];
  v22 = (a3 + *(v21 + 108));
  v23 = *v22;
  v24 = v22[1];
  v122 = *v22;
  v123 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F38();
  if (v20 != v120)
  {
    v122 = v23;
    v123 = v24;
    v120 = v20;
    sub_24F926F48();
  }

  v118 = v15;
  v119 = v12;
  v25 = v16;
  v111 = a4;
  v112 = a5;
  v26 = v9;
  v27 = (a3 + *(v9 + 112));
  v28 = *v27;
  v29 = v27[1];
  v122 = *v27;
  v123 = v29;
  sub_24F926F38();
  if (v18 != v120)
  {
    v122 = v28;
    v123 = v29;
    v120 = v18;
    sub_24F926F48();
  }

  v30 = *(a3 + 152);
  v122 = *(a3 + 144);
  v123 = v30;
  sub_24F926F38();
  v115 = v19;
  v31 = v120;
  v32 = v19 - v120;
  v33 = *(a3 + 168);
  v34 = *(a3 + 176);
  v35 = *(a3 + 184);
  v36 = *(a3 + 192);
  v117 = *(a3 + 160);
  v122 = v117;
  v123 = v33;
  v124 = v34;
  v125 = v35;
  v114 = v36;
  v126 = v36;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A200);
  sub_24F926F38();
  v37 = sub_24EB81D98(v32 - v120);
  v39 = v38;
  v41 = v40;
  v42 = sub_24EB81D98(v17 + v25 + v18 + v32);
  v44 = v43;
  v46 = v45;
  v47 = sub_24EB81CC8(v37, v39, v41 & 1);
  v48 = *(a3 + 112);
  v49 = v47 - v48;
  if (__OFSUB__(v47, v48))
  {
    __break(1u);
    goto LABEL_56;
  }

  v116 = v10;
  v51 = *(a3 + 80);
  v50 = *(a3 + 88);
  v52 = v51 + v50;
  if (__OFADD__(v51, v50))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v53 = sub_24EB81CC8(v42, v44, v46 & 1);
  v54 = v53 + 1;
  if (__OFADD__(v53, 1))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v55 = __OFADD__(v54, v48);
  v56 = v54 + v48;
  if (v55)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v48 = v49 & ~(v49 >> 63);
  if (v56 < v52)
  {
    v52 = v56;
  }

  v57 = *(a3 + 240);
  v58 = *(a3 + 248);
  v59 = *(a3 + 256);
  v122 = v57;
  v123 = v58;
  v124 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A210);
  sub_24F926F38();
  v18 = v31;
  if (v48 < *&v120 || (v122 = v57, v123 = v58, v124 = v59, sub_24F926F38(), v121 < v52))
  {
    if (v52 >= v48)
    {
      v110 = v51;
      v122 = v57;
      v123 = v58;
      v124 = v59;
      v120 = *&v48;
      v121 = v52;
      v109 = v52;
      sub_24F926F48();
      if (qword_27F2113D0 == -1)
      {
LABEL_15:
        v60 = sub_24F9220D8();
        __swift_project_value_buffer(v60, qword_27F39E7C0);
        v61 = v116;
        v62 = *(v116 + 16);
        v63 = v118;
        v64 = v26;
        v62(v118, a3, v26);
        v65 = v119;
        v62(v119, a3, v64);
        v66 = sub_24F9220B8();
        v67 = sub_24F92BDA8();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 134218752;
          *(v68 + 4) = *&v48;
          *(v68 + 12) = 2048;
          *(v68 + 14) = v109;
          *(v68 + 22) = 2048;
          v69 = sub_24EB827C0();
          v70 = *(v61 + 8);
          v70(v63, v64);
          *(v68 + 24) = v69;
          *(v68 + 32) = 2048;
          sub_24EB82838();
          v72 = v71;
          v70(v65, v64);
          *(v68 + 34) = v72;
          _os_log_impl(&dword_24E5DD000, v66, v67, "contentOffset is now %ld, %ld – %f, %f", v68, 0x2Au);
          MEMORY[0x2530542D0](v68, -1, -1);
        }

        else
        {

          v73 = *(v61 + 8);
          v73(v65, v64);
          v73(v63, v64);
        }

        v51 = v110;
        goto LABEL_19;
      }

LABEL_60:
      swift_once();
      goto LABEL_15;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_19:
  v74 = *(a3 + 208);
  LOBYTE(v122) = *(a3 + 200);
  v123 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  *&result = COERCE_DOUBLE(sub_24F926F38());
  if (LOBYTE(v120) != 1)
  {
    return result;
  }

  v76 = v117;
  v122 = v117;
  v123 = v33;
  v124 = v34;
  v125 = v35;
  v77 = v114;
  v126 = v114;
  sub_24F926F38();
  v78 = v120 + *(a3 + 56);
  if (v25 > v78)
  {
    v78 = v25;
  }

  v79 = v115 + v78;
  v122 = v76;
  v123 = v33;
  v124 = v34;
  v125 = v35;
  v126 = v77;
  sub_24F926F38();
  v80 = v79 + v120;
  v81 = v79 + v120 - v18;
  v122 = v76;
  v123 = v33;
  v124 = v34;
  v125 = v35;
  v126 = v77;
  sub_24F926F38();
  v82 = sub_24EB81D98(v81 - v120 - *(a3 + 56));
  v122 = v76;
  v123 = v33;
  v124 = v34;
  v125 = v35;
  v126 = v77;
  sub_24F926F38();
  v83 = v120;
  *&result = COERCE_DOUBLE(sub_24EB81D14(v82, 0, 1));
  if (__OFSUB__(v51, 1))
  {
    __break(1u);
    goto LABEL_62;
  }

  v85 = v18 + v83 + v84;
  if (v82 >= v51 - 1)
  {
    v89 = *(a3 + 56);
    v91 = v80 - (v85 - v89) - v89;
    if (v91 >= v89)
    {
      v91 = *(a3 + 56);
    }
  }

  else
  {
    v122 = v117;
    v123 = v33;
    v124 = v34;
    v125 = v35;
    v126 = v77;
    sub_24F926F38();
    v86 = v18 + v120;
    sub_24EB81D14(v82 + 1, 0, 1);
    v88 = v86 + v87;
    v89 = *(a3 + 56);
    v90 = v80 - (v85 - v89) - v89;
    if (v90 >= v89)
    {
      v90 = *(a3 + 56);
    }

    v91 = v80 - (v88 - v89);
    if (v90 > v91)
    {
      v91 = v90;
    }
  }

  if (v91 < 0.0)
  {
    v92 = 0.0;
  }

  else
  {
    v92 = v91;
  }

  if (v85 <= v80)
  {
    if (*(a3 + 72) != 1)
    {
      type metadata accessor for IndexedSectionListView.PinnedSection();
      sub_24F92CD98();
      swift_allocObject();
      v102 = sub_24F92B5C8();
      *v103 = v82;
      v103[1] = 0x3FF0000000000000;
      sub_24EEB6DF8();
      v101 = *&v102;
      v92 = *(a3 + 56);
      goto LABEL_48;
    }

    type metadata accessor for IndexedSectionListView.PinnedSection();
    sub_24F92CD98();
    swift_allocObject();
    *&result = COERCE_DOUBLE(sub_24F92B5C8());
    v97 = (v92 - *(a3 + 56)) / v89;
    if (v97 < 0.0)
    {
      v98 = 0.0;
    }

    else
    {
      v98 = (v92 - *(a3 + 56)) / v89;
    }

    v99 = 1.0 - v98;
    if (v97 >= 1.0)
    {
      v100 = 0.0;
    }

    else
    {
      v100 = v99;
    }

    *v96 = v82;
    *(v96 + 8) = v100;
    sub_24EEB6DF8();
    v101 = *&result;
    v120 = *&result;
    if (*(a3 + 56) >= v92)
    {
      goto LABEL_48;
    }

    if (!__OFADD__(v82, 1))
    {
      v122 = v82 + 1;
      v123 = 0x3FF0000000000000;
      sub_24F92B6E8();
      sub_24F92B658();
      v101 = v120;
LABEL_48:

      v104 = *(a3 + 216);
      v105 = *(a3 + 224);
      v106 = *(a3 + 232);
      v122 = v104;
      v123 = v105;
      v124 = v106;
      type metadata accessor for IndexedSectionListView.PinnedSections();
      sub_24F92C4A8();
      sub_24F926F68();
      sub_24F926F38();
      if (*&v121 == 0.0)
      {
      }

      else
      {
        v107 = sub_24EB81828(v120, v92);

        if (v107)
        {
          *&result = COERCE_DOUBLE();
          return result;
        }
      }

      v122 = v104;
      v123 = v105;
      v124 = v106;
      v120 = v92;
      *&v121 = v101;
      goto LABEL_53;
    }

LABEL_62:
    __break(1u);
    return result;
  }

  v93 = *(a3 + 216);
  v94 = *(a3 + 224);
  v95 = *(a3 + 232);
  v122 = v93;
  v123 = v94;
  v124 = v95;
  type metadata accessor for IndexedSectionListView.PinnedSections();
  sub_24F92C4A8();
  sub_24F926F68();
  sub_24F926F38();
  result = v121;
  if (*&v121 == 0.0)
  {
    return result;
  }

  v122 = v93;
  v123 = v94;
  v124 = v95;
  v120 = 0.0;
  *&v121 = 0.0;
LABEL_53:
  *&result = COERCE_DOUBLE(sub_24F926F48());
  return result;
}

uint64_t sub_24EB87FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_24F924C18();
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A208);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  if (*(a1 + *(type metadata accessor for IndexedSectionListView() + 124)) == 1)
  {
    v10 = *(a1 + 232);
    v20 = *(a1 + 216);
    *&v21 = v10;
    type metadata accessor for IndexedSectionListView.PinnedSections();
    sub_24F92C4A8();
    sub_24F926F68();
    sub_24F926F38();
    if (!*(&v19[0] + 1))
    {
      return (*(v7 + 56))(v18, 1, 1, v6);
    }

    *&v20 = *(&v19[0] + 1);
    type metadata accessor for IndexedSectionListView.PinnedSection();
    sub_24F92B6E8();
    swift_getWitnessTable();
    v11 = sub_24F92BC58();

    if (v11)
    {
      return (*(v7 + 56))(v18, 1, 1, v6);
    }
  }

  sub_24F926C38();
  v13 = sub_24F926D08();

  sub_24F927618();
  sub_24F9242E8();
  *(&v28[12] + 7) = v29;
  *(&v28[10] + 7) = *&v28[25];
  *(&v28[8] + 7) = *&v28[23];
  *(&v28[6] + 7) = *&v28[21];
  *(&v28[4] + 7) = *&v28[19];
  *(&v28[2] + 7) = *&v28[17];
  *(v28 + 7) = *&v28[15];
  *(&v19[4] + 9) = *&v28[8];
  *(&v19[5] + 9) = *&v28[10];
  *(&v19[6] + 9) = *&v28[12];
  *(v19 + 9) = *v28;
  *(&v19[1] + 9) = *&v28[2];
  *(&v19[2] + 9) = *&v28[4];
  *&v19[0] = v13;
  BYTE8(v19[0]) = 0;
  *(&v19[7] + 1) = *(&v29 + 1);
  *(&v19[3] + 9) = *&v28[6];
  sub_24F924BF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A108);
  sub_24EB8EFB0(&qword_27F22A110, &qword_27F22A108, &unk_24F986CD0, sub_24EB8EEE0);
  sub_24F9265B8();
  (*(v16 + 8))(v5, v17);
  v24 = v19[4];
  v25 = v19[5];
  v26 = v19[6];
  v27 = v19[7];
  v20 = v19[0];
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];
  sub_24E601704(&v20, &qword_27F22A108);
  v14 = v18;
  (*(v7 + 32))(v18, v9, v6);
  return (*(v7 + 56))(v14, 0, 1, v6);
}

uint64_t sub_24EB88404@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v105 = a2;
  v103 = a4;
  v99 = sub_24F924C18();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexedSectionListView.PinnedSection();
  v7 = sub_24F92B6E8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A128);
  WitnessTable = swift_getWitnessTable();
  *&v124 = v7;
  *(&v124 + 1) = MEMORY[0x277D83B88];
  *&v125 = v8;
  *(&v125 + 1) = WitnessTable;
  v126 = MEMORY[0x277D83B98];
  v10 = sub_24F927248();
  v123 = sub_24EB8EFB0(&qword_27F22A130, &qword_27F22A128, &unk_24F986CE8, sub_24EB8F034);
  v11 = swift_getWitnessTable();
  v90 = v10;
  v82 = v11;
  v12 = sub_24F927108();
  v86 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v81 = &v70 - v13;
  v14 = sub_24F924038();
  v92 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v89 = &v70 - v15;
  v16 = sub_24F924038();
  v91 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v88 = &v70 - v17;
  v18 = sub_24F924038();
  v95 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v84 = &v70 - v19;
  v20 = sub_24F924038();
  v94 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v93 = &v70 - v21;
  v73 = swift_getWitnessTable();
  v121 = v73;
  v122 = MEMORY[0x277CDF748];
  v87 = v14;
  v22 = swift_getWitnessTable();
  v23 = MEMORY[0x277CDF918];
  v74 = v22;
  v119 = v22;
  v120 = MEMORY[0x277CDF918];
  v75 = swift_getWitnessTable();
  v117 = v75;
  v118 = v23;
  v96 = v18;
  v76 = swift_getWitnessTable();
  v115 = v76;
  v116 = v23;
  v24 = swift_getWitnessTable();
  *&v124 = v20;
  *(&v124 + 1) = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v78 = &v70 - v26;
  v83 = v27;
  v28 = sub_24F924038();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v85 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v77 = &v70 - v32;
  MEMORY[0x28223BE20](v33);
  v79 = &v70 - v34;
  v102 = sub_24F92C4A8();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v36 = &v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v100 = &v70 - v38;
  v39 = *(a1 + 232);
  v124 = *(a1 + 216);
  *&v125 = v39;
  v104 = a3;
  type metadata accessor for IndexedSectionListView.PinnedSections();
  sub_24F92C4A8();
  sub_24F926F68();
  v40 = sub_24F926F38();
  v41 = v109;
  v42 = MEMORY[0x277CE0880];
  if (v109)
  {
    v70 = v36;
    v71 = v24;
    v72 = v20;
    v43 = v108;
    MEMORY[0x28223BE20](v40);
    v44 = v104;
    *(&v70 - 6) = v105;
    *(&v70 - 5) = v44;
    *(&v70 - 4) = v43;
    *(&v70 - 3) = v41;
    *(&v70 - 2) = a1;
    sub_24F924C88();
    v45 = v81;
    sub_24F9270F8();

    v46 = v89;
    sub_24F926978();
    (*(v86 + 8))(v45, v12);
    sub_24F925818();
    v47 = *(a1 + 192);
    v48 = *(a1 + 176);
    v124 = *(a1 + 160);
    v125 = v48;
    v126 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A200);
    sub_24F926F38();
    v49 = v88;
    v50 = v87;
    sub_24F926A48();
    (*(v92 + 8))(v46, v50);
    sub_24F925828();
    v51 = v84;
    sub_24F926A48();
    (*(v91 + 8))(v49, v16);
    sub_24F925858();
    if (*(*(a1 + 48) + 16))
    {
      type metadata accessor for IndexedSectionListView();
    }

    v24 = v71;
    v42 = MEMORY[0x277CE0880];
    v53 = v93;
    v54 = v96;
    sub_24F926A48();
    (*(v95 + 8))(v51, v54);
    v55 = v97;
    sub_24F924BF8();
    v56 = v78;
    v52 = v72;
    sub_24F9265B8();
    (*(v98 + 8))(v55, v99);
    (*(v94 + 8))(v53, v52);
    sub_24F925818();
    sub_24F924058();
    *&v124 = v52;
    *(&v124 + 1) = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v58 = v77;
    v59 = v83;
    sub_24F926438();
    (*(v80 + 8))(v56, v59);
    v106 = OpaqueTypeConformance2;
    v107 = v42;
    v60 = swift_getWitnessTable();
    v61 = v79;
    sub_24E7896B8(v58, v28, v60);
    v62 = *(v29 + 8);
    v62(v58, v28);
    v63 = v85;
    sub_24E7896B8(v61, v28, v60);
    v62(v61, v28);
    v36 = v70;
    (*(v29 + 32))(v70, v63, v28);
    (*(v29 + 56))(v36, 0, 1, v28);
  }

  else
  {
    (*(v29 + 56))(v36, 1, 1, v28);
    *&v124 = v20;
    *(&v124 + 1) = v24;
    v113 = swift_getOpaqueTypeConformance2();
    v114 = v42;
    swift_getWitnessTable();
    v52 = v20;
  }

  v64 = v100;
  sub_24E8D5004(v36, v100);
  v65 = v36;
  v66 = *(v101 + 8);
  v67 = v102;
  v66(v65, v102);
  *&v124 = v52;
  *(&v124 + 1) = v24;
  v111 = swift_getOpaqueTypeConformance2();
  v112 = v42;
  v110 = swift_getWitnessTable();
  v68 = swift_getWitnessTable();
  sub_24E7896B8(v64, v67, v68);
  return (v66)(v64, v67);
}

uint64_t sub_24EB891AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a2;
  v28[1] = a1;
  v35 = a5;
  v29 = type metadata accessor for IndexedSectionListView();
  v8 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = v28 - v9;
  type metadata accessor for IndexedSectionListView.PinnedSection();
  v11 = sub_24F92B6E8();
  v32 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A128);
  v31 = v12;
  WitnessTable = swift_getWitnessTable();
  v39 = v11;
  v40 = MEMORY[0x277D83B88];
  v41 = v12;
  v42 = WitnessTable;
  v43 = MEMORY[0x277D83B98];
  v13 = sub_24F927248();
  v34 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v28 - v17;
  v39 = a1;
  v36 = a3;
  v37 = a4;
  v28[2] = swift_getKeyPath();
  v19 = v10;
  v20 = v10;
  v21 = v29;
  (*(v8 + 16))(v20, v33, v29);
  v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  (*(v8 + 32))(v23 + v22, v19, v21);
  v24 = sub_24EB8EFB0(&qword_27F22A130, &qword_27F22A128, &unk_24F986CE8, sub_24EB8F034);

  sub_24F927228();
  v38 = v24;
  v25 = swift_getWitnessTable();
  sub_24E7896B8(v15, v13, v25);
  v26 = *(v34 + 8);
  v26(v15, v13);
  sub_24E7896B8(v18, v13, v25);
  return (v26)(v18, v13);
}

__n128 sub_24EB89524@<Q0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  type metadata accessor for IndexedSectionListView();
  v11 = 0;
  v12 = a2[12];
  if (*(v12 + 16) <= v7)
  {
    goto LABEL_4;
  }

  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = *(v12 + 8 * v7 + 32);
  v11 = v13 - v7;
  if (__OFSUB__(v13, v7))
  {
LABEL_7:
    __break(1u);
    sub_24F92BDC8();
    v19 = sub_24F9257A8();
    sub_24F921FD8();

    goto LABEL_5;
  }

LABEL_4:
  v14 = sub_24EB82978();
  a3 = sub_24EB8135C(v7, v7, 1, v11, 0, v14, v16, v17, v15 & 1, v9, v10);

  sub_24F927618();
LABEL_5:
  sub_24F9242E8();
  *a4 = a3;
  *(a4 + 8) = v8;
  *(a4 + 80) = v24;
  *(a4 + 96) = v25;
  *(a4 + 112) = v26;
  *(a4 + 16) = v20;
  *(a4 + 32) = v21;
  result = v23;
  *(a4 + 48) = v22;
  *(a4 + 64) = v23;
  return result;
}

uint64_t sub_24EB89708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v7 = type metadata accessor for IndexedSectionListView();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v25 = sub_24F926CF8();
  sub_24F927618();
  sub_24F9238C8();
  v11 = v28;
  v23 = v29;
  v24 = v27;
  v12 = v30;
  v21 = v32;
  v22 = v31;
  (*(v8 + 16))(v10, a1, v7);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v15 = v26;
  *(v14 + 16) = a2;
  *(v14 + 24) = v15;
  (*(v8 + 32))(v14 + v13, v10, v7);
  result = sub_24F927618();
  v17 = v24;
  *a4 = v25;
  *(a4 + 8) = v17;
  *(a4 + 16) = v11;
  v18 = v22;
  *(a4 + 24) = v23;
  *(a4 + 32) = v12;
  v19 = v21;
  *(a4 + 40) = v18;
  *(a4 + 48) = v19;
  *(a4 + 56) = sub_24EB8F7F4;
  *(a4 + 64) = v14;
  *(a4 + 72) = result;
  *(a4 + 80) = v20;
  return result;
}